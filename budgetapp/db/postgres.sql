--
-- PostgreSQL database dump
--

-- Dumped from database version 12.11 (Ubuntu 12.11-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.11 (Ubuntu 12.11-0ubuntu0.20.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: sdd
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO sdd;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: sdd
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO sdd;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sdd
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: sdd
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO sdd;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: sdd
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO sdd;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sdd
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: sdd
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO sdd;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: sdd
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO sdd;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sdd
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: sdd
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO sdd;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: sdd
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO sdd;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: sdd
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO sdd;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sdd
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: sdd
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO sdd;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sdd
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: sdd
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO sdd;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: sdd
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO sdd;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sdd
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: authtoken_token; Type: TABLE; Schema: public; Owner: sdd
--

CREATE TABLE public.authtoken_token (
    key character varying(40) NOT NULL,
    created timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.authtoken_token OWNER TO sdd;

--
-- Name: budget_budget; Type: TABLE; Schema: public; Owner: sdd
--

CREATE TABLE public.budget_budget (
    id integer NOT NULL,
    month character varying(100) NOT NULL,
    year integer NOT NULL,
    owner_id integer NOT NULL
);


ALTER TABLE public.budget_budget OWNER TO sdd;

--
-- Name: budget_budget_id_seq; Type: SEQUENCE; Schema: public; Owner: sdd
--

CREATE SEQUENCE public.budget_budget_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.budget_budget_id_seq OWNER TO sdd;

--
-- Name: budget_budget_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sdd
--

ALTER SEQUENCE public.budget_budget_id_seq OWNED BY public.budget_budget.id;


--
-- Name: budget_budgetcategory; Type: TABLE; Schema: public; Owner: sdd
--

CREATE TABLE public.budget_budgetcategory (
    id integer NOT NULL,
    category character varying(100) NOT NULL,
    "limit" numeric(20,2) NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.budget_budgetcategory OWNER TO sdd;

--
-- Name: budget_budgetcategory_id_seq; Type: SEQUENCE; Schema: public; Owner: sdd
--

CREATE SEQUENCE public.budget_budgetcategory_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.budget_budgetcategory_id_seq OWNER TO sdd;

--
-- Name: budget_budgetcategory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sdd
--

ALTER SEQUENCE public.budget_budgetcategory_id_seq OWNED BY public.budget_budgetcategory.id;


--
-- Name: budget_budgetcategorygroup; Type: TABLE; Schema: public; Owner: sdd
--

CREATE TABLE public.budget_budgetcategorygroup (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    budget_id integer NOT NULL
);


ALTER TABLE public.budget_budgetcategorygroup OWNER TO sdd;

--
-- Name: budget_budgetcategorygroup_id_seq; Type: SEQUENCE; Schema: public; Owner: sdd
--

CREATE SEQUENCE public.budget_budgetcategorygroup_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.budget_budgetcategorygroup_id_seq OWNER TO sdd;

--
-- Name: budget_budgetcategorygroup_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sdd
--

ALTER SEQUENCE public.budget_budgetcategorygroup_id_seq OWNED BY public.budget_budgetcategorygroup.id;


--
-- Name: budget_payee; Type: TABLE; Schema: public; Owner: sdd
--

CREATE TABLE public.budget_payee (
    id integer NOT NULL,
    name character varying(30) NOT NULL,
    owner_id integer NOT NULL
);


ALTER TABLE public.budget_payee OWNER TO sdd;

--
-- Name: budget_payee_id_seq; Type: SEQUENCE; Schema: public; Owner: sdd
--

CREATE SEQUENCE public.budget_payee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.budget_payee_id_seq OWNER TO sdd;

--
-- Name: budget_payee_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sdd
--

ALTER SEQUENCE public.budget_payee_id_seq OWNED BY public.budget_payee.id;


--
-- Name: budget_transaction; Type: TABLE; Schema: public; Owner: sdd
--

CREATE TABLE public.budget_transaction (
    id integer NOT NULL,
    amount numeric(20,2) NOT NULL,
    date date NOT NULL,
    budget_category_id integer NOT NULL,
    payee_id integer NOT NULL
);


ALTER TABLE public.budget_transaction OWNER TO sdd;

--
-- Name: budget_transaction_id_seq; Type: SEQUENCE; Schema: public; Owner: sdd
--

CREATE SEQUENCE public.budget_transaction_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.budget_transaction_id_seq OWNER TO sdd;

--
-- Name: budget_transaction_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sdd
--

ALTER SEQUENCE public.budget_transaction_id_seq OWNED BY public.budget_transaction.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: sdd
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO sdd;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: sdd
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO sdd;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sdd
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: sdd
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO sdd;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: sdd
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO sdd;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sdd
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: sdd
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO sdd;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: sdd
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO sdd;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sdd
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: sdd
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO sdd;

--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: sdd
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: sdd
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: sdd
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: sdd
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: sdd
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: sdd
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: budget_budget id; Type: DEFAULT; Schema: public; Owner: sdd
--

ALTER TABLE ONLY public.budget_budget ALTER COLUMN id SET DEFAULT nextval('public.budget_budget_id_seq'::regclass);


--
-- Name: budget_budgetcategory id; Type: DEFAULT; Schema: public; Owner: sdd
--

ALTER TABLE ONLY public.budget_budgetcategory ALTER COLUMN id SET DEFAULT nextval('public.budget_budgetcategory_id_seq'::regclass);


--
-- Name: budget_budgetcategorygroup id; Type: DEFAULT; Schema: public; Owner: sdd
--

ALTER TABLE ONLY public.budget_budgetcategorygroup ALTER COLUMN id SET DEFAULT nextval('public.budget_budgetcategorygroup_id_seq'::regclass);


--
-- Name: budget_payee id; Type: DEFAULT; Schema: public; Owner: sdd
--

ALTER TABLE ONLY public.budget_payee ALTER COLUMN id SET DEFAULT nextval('public.budget_payee_id_seq'::regclass);


--
-- Name: budget_transaction id; Type: DEFAULT; Schema: public; Owner: sdd
--

ALTER TABLE ONLY public.budget_transaction ALTER COLUMN id SET DEFAULT nextval('public.budget_transaction_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: sdd
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: sdd
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: sdd
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: sdd
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: sdd
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: sdd
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add Token	7	add_token
26	Can change Token	7	change_token
27	Can delete Token	7	delete_token
28	Can view Token	7	view_token
29	Can add budget	8	add_budget
30	Can change budget	8	change_budget
31	Can delete budget	8	delete_budget
32	Can view budget	8	view_budget
33	Can add budget category	9	add_budgetcategory
34	Can change budget category	9	change_budgetcategory
35	Can delete budget category	9	delete_budgetcategory
36	Can view budget category	9	view_budgetcategory
37	Can add budget category group	10	add_budgetcategorygroup
38	Can change budget category group	10	change_budgetcategorygroup
39	Can delete budget category group	10	delete_budgetcategorygroup
40	Can view budget category group	10	view_budgetcategorygroup
41	Can add payee	11	add_payee
42	Can change payee	11	change_payee
43	Can delete payee	11	delete_payee
44	Can view payee	11	view_payee
45	Can add transaction	12	add_transaction
46	Can change transaction	12	change_transaction
47	Can delete transaction	12	delete_transaction
48	Can view transaction	12	view_transaction
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: sdd
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
2	pbkdf2_sha256$120000$KPzelgphEkFQ$QDanGF9mJomUGRGR7m90WUqTgvEk31x+nQYnLf3x+08=	\N	t	sumit			ddwivedisumit1523@gmail.com	t	t	2022-07-30 11:10:53.080783+05:30
1	pbkdf2_sha256$120000$GQHkEZ0uOLJK$pITDvY/Yz6TaRLECHVMWU+T3qes2TZMlFBezbdk6Fdw=	\N	f	sdd			ddwivedisumit1523@gmail.com	f	t	2022-07-30 11:09:33.330329+05:30
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: sdd
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: sdd
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: authtoken_token; Type: TABLE DATA; Schema: public; Owner: sdd
--

COPY public.authtoken_token (key, created, user_id) FROM stdin;
d0f0b0d4bca4c55d7aadf410e52061c33346704f	2022-07-30 11:15:53.589608+05:30	2
\.


--
-- Data for Name: budget_budget; Type: TABLE DATA; Schema: public; Owner: sdd
--

COPY public.budget_budget (id, month, year, owner_id) FROM stdin;
1	JAN	2022	2
\.


--
-- Data for Name: budget_budgetcategory; Type: TABLE DATA; Schema: public; Owner: sdd
--

COPY public.budget_budgetcategory (id, category, "limit", group_id) FROM stdin;
1	grocery	56.00	1
\.


--
-- Data for Name: budget_budgetcategorygroup; Type: TABLE DATA; Schema: public; Owner: sdd
--

COPY public.budget_budgetcategorygroup (id, name, budget_id) FROM stdin;
1	home	1
\.


--
-- Data for Name: budget_payee; Type: TABLE DATA; Schema: public; Owner: sdd
--

COPY public.budget_payee (id, name, owner_id) FROM stdin;
1	sumit	2
\.


--
-- Data for Name: budget_transaction; Type: TABLE DATA; Schema: public; Owner: sdd
--

COPY public.budget_transaction (id, amount, date, budget_category_id, payee_id) FROM stdin;
3	3.00	2022-07-30	1	1
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: sdd
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: sdd
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	authtoken	token
8	budget	budget
9	budget	budgetcategory
10	budget	budgetcategorygroup
11	budget	payee
12	budget	transaction
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: sdd
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2022-07-30 10:54:31.568043+05:30
2	auth	0001_initial	2022-07-30 10:54:31.654508+05:30
3	admin	0001_initial	2022-07-30 10:54:31.678109+05:30
4	admin	0002_logentry_remove_auto_add	2022-07-30 10:54:31.685649+05:30
5	admin	0003_logentry_add_action_flag_choices	2022-07-30 10:54:31.69424+05:30
6	contenttypes	0002_remove_content_type_name	2022-07-30 10:54:31.710541+05:30
7	auth	0002_alter_permission_name_max_length	2022-07-30 10:54:31.717166+05:30
8	auth	0003_alter_user_email_max_length	2022-07-30 10:54:31.725378+05:30
9	auth	0004_alter_user_username_opts	2022-07-30 10:54:31.732635+05:30
10	auth	0005_alter_user_last_login_null	2022-07-30 10:54:31.742582+05:30
11	auth	0006_require_contenttypes_0002	2022-07-30 10:54:31.74469+05:30
12	auth	0007_alter_validators_add_error_messages	2022-07-30 10:54:31.753299+05:30
13	auth	0008_alter_user_username_max_length	2022-07-30 10:54:31.766022+05:30
14	auth	0009_alter_user_last_name_max_length	2022-07-30 10:54:31.775279+05:30
15	authtoken	0001_initial	2022-07-30 10:54:31.798561+05:30
16	authtoken	0002_auto_20160226_1747	2022-07-30 10:54:31.881351+05:30
17	budget	0001_initial	2022-07-30 10:54:31.980811+05:30
18	sessions	0001_initial	2022-07-30 10:54:31.995761+05:30
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: sdd
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sdd
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sdd
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sdd
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 48, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sdd
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sdd
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 2, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sdd
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: budget_budget_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sdd
--

SELECT pg_catalog.setval('public.budget_budget_id_seq', 1, true);


--
-- Name: budget_budgetcategory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sdd
--

SELECT pg_catalog.setval('public.budget_budgetcategory_id_seq', 1, true);


--
-- Name: budget_budgetcategorygroup_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sdd
--

SELECT pg_catalog.setval('public.budget_budgetcategorygroup_id_seq', 1, true);


--
-- Name: budget_payee_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sdd
--

SELECT pg_catalog.setval('public.budget_payee_id_seq', 1, true);


--
-- Name: budget_transaction_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sdd
--

SELECT pg_catalog.setval('public.budget_transaction_id_seq', 3, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sdd
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sdd
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 12, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sdd
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 18, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: sdd
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: sdd
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: sdd
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: sdd
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: sdd
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: sdd
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: sdd
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: sdd
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: sdd
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: sdd
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: sdd
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: sdd
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: authtoken_token authtoken_token_pkey; Type: CONSTRAINT; Schema: public; Owner: sdd
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_pkey PRIMARY KEY (key);


--
-- Name: authtoken_token authtoken_token_user_id_key; Type: CONSTRAINT; Schema: public; Owner: sdd
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_key UNIQUE (user_id);


--
-- Name: budget_budget budget_budget_owner_id_month_year_2c6fdbf2_uniq; Type: CONSTRAINT; Schema: public; Owner: sdd
--

ALTER TABLE ONLY public.budget_budget
    ADD CONSTRAINT budget_budget_owner_id_month_year_2c6fdbf2_uniq UNIQUE (owner_id, month, year);


--
-- Name: budget_budget budget_budget_pkey; Type: CONSTRAINT; Schema: public; Owner: sdd
--

ALTER TABLE ONLY public.budget_budget
    ADD CONSTRAINT budget_budget_pkey PRIMARY KEY (id);


--
-- Name: budget_budgetcategory budget_budgetcategory_pkey; Type: CONSTRAINT; Schema: public; Owner: sdd
--

ALTER TABLE ONLY public.budget_budgetcategory
    ADD CONSTRAINT budget_budgetcategory_pkey PRIMARY KEY (id);


--
-- Name: budget_budgetcategorygroup budget_budgetcategorygroup_name_budget_id_c93d7a33_uniq; Type: CONSTRAINT; Schema: public; Owner: sdd
--

ALTER TABLE ONLY public.budget_budgetcategorygroup
    ADD CONSTRAINT budget_budgetcategorygroup_name_budget_id_c93d7a33_uniq UNIQUE (name, budget_id);


--
-- Name: budget_budgetcategorygroup budget_budgetcategorygroup_pkey; Type: CONSTRAINT; Schema: public; Owner: sdd
--

ALTER TABLE ONLY public.budget_budgetcategorygroup
    ADD CONSTRAINT budget_budgetcategorygroup_pkey PRIMARY KEY (id);


--
-- Name: budget_payee budget_payee_name_owner_id_3d919854_uniq; Type: CONSTRAINT; Schema: public; Owner: sdd
--

ALTER TABLE ONLY public.budget_payee
    ADD CONSTRAINT budget_payee_name_owner_id_3d919854_uniq UNIQUE (name, owner_id);


--
-- Name: budget_payee budget_payee_pkey; Type: CONSTRAINT; Schema: public; Owner: sdd
--

ALTER TABLE ONLY public.budget_payee
    ADD CONSTRAINT budget_payee_pkey PRIMARY KEY (id);


--
-- Name: budget_transaction budget_transaction_pkey; Type: CONSTRAINT; Schema: public; Owner: sdd
--

ALTER TABLE ONLY public.budget_transaction
    ADD CONSTRAINT budget_transaction_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: sdd
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: sdd
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: sdd
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: sdd
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: sdd
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: sdd
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: sdd
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: sdd
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: sdd
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: sdd
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: sdd
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: sdd
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: sdd
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: sdd
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: authtoken_token_key_10f0b77e_like; Type: INDEX; Schema: public; Owner: sdd
--

CREATE INDEX authtoken_token_key_10f0b77e_like ON public.authtoken_token USING btree (key varchar_pattern_ops);


--
-- Name: budget_budget_owner_id_213d082b; Type: INDEX; Schema: public; Owner: sdd
--

CREATE INDEX budget_budget_owner_id_213d082b ON public.budget_budget USING btree (owner_id);


--
-- Name: budget_budgetcategory_group_id_60f71925; Type: INDEX; Schema: public; Owner: sdd
--

CREATE INDEX budget_budgetcategory_group_id_60f71925 ON public.budget_budgetcategory USING btree (group_id);


--
-- Name: budget_budgetcategorygroup_budget_id_e9204913; Type: INDEX; Schema: public; Owner: sdd
--

CREATE INDEX budget_budgetcategorygroup_budget_id_e9204913 ON public.budget_budgetcategorygroup USING btree (budget_id);


--
-- Name: budget_payee_owner_id_15f711ae; Type: INDEX; Schema: public; Owner: sdd
--

CREATE INDEX budget_payee_owner_id_15f711ae ON public.budget_payee USING btree (owner_id);


--
-- Name: budget_transaction_budget_category_id_52e658e6; Type: INDEX; Schema: public; Owner: sdd
--

CREATE INDEX budget_transaction_budget_category_id_52e658e6 ON public.budget_transaction USING btree (budget_category_id);


--
-- Name: budget_transaction_payee_id_24a4ba96; Type: INDEX; Schema: public; Owner: sdd
--

CREATE INDEX budget_transaction_payee_id_24a4ba96 ON public.budget_transaction USING btree (payee_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: sdd
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: sdd
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: sdd
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: sdd
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: sdd
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: sdd
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: sdd
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: sdd
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: sdd
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: sdd
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: sdd
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: authtoken_token authtoken_token_user_id_35299eff_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: sdd
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_35299eff_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: budget_budget budget_budget_owner_id_213d082b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: sdd
--

ALTER TABLE ONLY public.budget_budget
    ADD CONSTRAINT budget_budget_owner_id_213d082b_fk_auth_user_id FOREIGN KEY (owner_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: budget_budgetcategorygroup budget_budgetcategor_budget_id_e9204913_fk_budget_bu; Type: FK CONSTRAINT; Schema: public; Owner: sdd
--

ALTER TABLE ONLY public.budget_budgetcategorygroup
    ADD CONSTRAINT budget_budgetcategor_budget_id_e9204913_fk_budget_bu FOREIGN KEY (budget_id) REFERENCES public.budget_budget(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: budget_budgetcategory budget_budgetcategor_group_id_60f71925_fk_budget_bu; Type: FK CONSTRAINT; Schema: public; Owner: sdd
--

ALTER TABLE ONLY public.budget_budgetcategory
    ADD CONSTRAINT budget_budgetcategor_group_id_60f71925_fk_budget_bu FOREIGN KEY (group_id) REFERENCES public.budget_budgetcategorygroup(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: budget_payee budget_payee_owner_id_15f711ae_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: sdd
--

ALTER TABLE ONLY public.budget_payee
    ADD CONSTRAINT budget_payee_owner_id_15f711ae_fk_auth_user_id FOREIGN KEY (owner_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: budget_transaction budget_transaction_budget_category_id_52e658e6_fk_budget_bu; Type: FK CONSTRAINT; Schema: public; Owner: sdd
--

ALTER TABLE ONLY public.budget_transaction
    ADD CONSTRAINT budget_transaction_budget_category_id_52e658e6_fk_budget_bu FOREIGN KEY (budget_category_id) REFERENCES public.budget_budgetcategory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: budget_transaction budget_transaction_payee_id_24a4ba96_fk_budget_payee_id; Type: FK CONSTRAINT; Schema: public; Owner: sdd
--

ALTER TABLE ONLY public.budget_transaction
    ADD CONSTRAINT budget_transaction_payee_id_24a4ba96_fk_budget_payee_id FOREIGN KEY (payee_id) REFERENCES public.budget_payee(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: sdd
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: sdd
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

