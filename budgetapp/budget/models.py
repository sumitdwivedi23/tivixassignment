from datetime import datetime
from decimal import Decimal

from django.db import models
from django.db.models import Sum
from django.db.models.functions import Coalesce


class Budget(models.Model):
    related_name = 'budgets'

    MONTH_CHOICES = (
        ('JAN', 'January'),
        ('FEB', 'February'),
        ('MAR', 'March'),
        ('APR', 'April'),
        ('MAY', 'May'),
        ('JUN', 'June'),
        ('JUL', 'July'),
        ('AUG', 'August'),
        ('SEP', 'September'),
        ('OCT', 'October'),
        ('NOV', 'November'),
        ('DEC', 'December')
    )
    MONTH_LOOKUP = {
        choice[0]: index for index, choice in enumerate(MONTH_CHOICES)
    }

    month = models.CharField(
        max_length=100,
        choices=MONTH_CHOICES,
        default='JAN',
    )
    year = models.IntegerField(default=datetime.now().year)
    owner = models.ForeignKey(
        'auth.User', related_name=related_name, on_delete=models.CASCADE
    )

    def copy_categories(self, budget):
        """
        Removes all categories from budget and copies ones
        from the given budget.
        """
        # Remove existing groups/categories.
        self.delete_categories()

        # Make copies of groups.
        for group in budget.budget_category_groups.iterator():
            categories = group.budget_categories.all()
            group.pk = None
            group.budget = self
            group.save()

            # Make copies of categories.
            for category in categories:
                category.pk = None
                category.group = group
                category.save()

    def delete_categories(self):
        self.budget_category_groups.all().delete()

    @property
    def previous(self):
        """
        The previous month's budget, if one exists.
        """
        year = self.year
        month_idx = self.MONTH_LOOKUP[self.month] - 1
        if month_idx < 0:
            month_idx = 11
            year -= 1

        try:
            return Budget.objects.get(
                owner=self.owner,
                year=year,
                month=self.MONTH_CHOICES[month_idx][0],
            )
        except Budget.DoesNotExist:
            return None

    class Meta:
        unique_together = ('owner', 'month', 'year')

    def __str__(self):  # pragma: no cover
        return self.owner.username + \
               '\'s ' + \
               str(self.month) + \
               ' ' + \
               str(self.year) + \
               ' Budget'


class BudgetCategoryGroup(models.Model):
    related_name = 'budget_category_groups'
    name = models.CharField(max_length=100)
    budget = models.ForeignKey(
        Budget, on_delete=models.CASCADE, related_name=related_name
    )

    @property
    def owner(self):
        return self.budget.owner

    class Meta:
        unique_together = ('name', 'budget',)

    def __str__(self):  # pragma: no cover
        return self.name + ' [owner=' + self.budget.owner.username + ']'


class BudgetCategory(models.Model):
    related_name = 'budget_categories'
    category = models.CharField(max_length=100)
    group = models.ForeignKey(
        BudgetCategoryGroup,
        on_delete=models.CASCADE,
        related_name=related_name
    )
    limit = models.DecimalField(
        max_digits=20, decimal_places=2, default=0
    )

    @property
    def spent(self):
        return Decimal(
            Transaction.objects
            .filter(budget_category_id=self.pk)
            .aggregate(spent=Coalesce(Sum('amount'), Decimal(0)))['spent']
        )

    @property
    def owner(self):
        return self.group.budget.owner

    def __str__(self):  # pragma: no cover
        return str(self.category) + ' ' + \
               self.group.budget.month + ' ' + \
               str(self.group.budget.year) + \
               ' [owner=' + self.group.budget.owner.username + ']'


class Transaction(models.Model):
    amount = models.DecimalField(
        max_digits=20, decimal_places=2
    )
    payee = models.ForeignKey('Payee', on_delete=models.CASCADE)
    budget_category = models.ForeignKey(
        'BudgetCategory', on_delete=models.CASCADE
    )
    date = models.DateField()

    @property
    def owner(self):
        return self.budget_category.group.budget.owner

    def __str__(self):  # pragma: no cover
        return str(self.amount) + ' ' \
               + self.payee.name + ' ' \
               + str(self.budget_category) + ' ' \
               + str(self.date) + ' ' \
               + self.budget_category.group.budget.owner.username + ' '


class Payee(models.Model):
    name = models.CharField(max_length=30)
    owner = models.ForeignKey('auth.User', on_delete=models.CASCADE)

    class Meta:
        unique_together = ('name', 'owner',)

    def __str__(self):
        return self.name