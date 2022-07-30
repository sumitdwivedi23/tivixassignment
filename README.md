# tivixassignment


# Budget App REST API

Django REST API for creating managing a personal budget.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. 
### Prerequisites

* [Install Docker]
* [Install Docker Compose]

### Development Setup

Clone this repository.

```
git clone https://github.com/sumitdwivedi23/tivixassignment
```

Start the development server with Docker Compose.

```
docker-compose up
```

Access the browsable API in your browser at [http://localhost:8000](http://localhost:8000).

## Usage

Most endpoints require authentication. To create a user via the browsable API, use the `/users/register/` endpoint. You can log in with the credentials you create there. If log in via the browsable API, you will need to clear your browser's cookies before you will be able to log in via the React app.

## Built With

* [Python]
* [Django]
* [Django REST]
* [PostgreSQL]
* [Docker]
* [Docker Compose]
