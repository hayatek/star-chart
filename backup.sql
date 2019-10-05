--
-- PostgreSQL database dump
--

-- Dumped from database version 10.9
-- Dumped by pg_dump version 10.9

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

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
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


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: combination; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.combination (
    id integer NOT NULL,
    database_id1 integer NOT NULL,
    database_id2 integer,
    database_id3 integer,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    access_count integer NOT NULL,
    avatar_url1 character varying(255),
    avatar_url2 character varying(255),
    avatar_url3 character varying(255),
    name_owner1 character varying(100),
    name_owner2 character varying(100),
    name_owner3 character varying(100)
);


ALTER TABLE public.combination OWNER TO postgres;

--
-- Name: combination_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.combination_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.combination_id_seq OWNER TO postgres;

--
-- Name: combination_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.combination_id_seq OWNED BY public.combination.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
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


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_celery_beat_clockedschedule; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_celery_beat_clockedschedule (
    id integer NOT NULL,
    clocked_time timestamp with time zone NOT NULL,
    enabled boolean NOT NULL
);


ALTER TABLE public.django_celery_beat_clockedschedule OWNER TO postgres;

--
-- Name: django_celery_beat_clockedschedule_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_celery_beat_clockedschedule_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_celery_beat_clockedschedule_id_seq OWNER TO postgres;

--
-- Name: django_celery_beat_clockedschedule_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_celery_beat_clockedschedule_id_seq OWNED BY public.django_celery_beat_clockedschedule.id;


--
-- Name: django_celery_beat_crontabschedule; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_celery_beat_crontabschedule (
    id integer NOT NULL,
    minute character varying(240) NOT NULL,
    hour character varying(96) NOT NULL,
    day_of_week character varying(64) NOT NULL,
    day_of_month character varying(124) NOT NULL,
    month_of_year character varying(64) NOT NULL,
    timezone character varying(63) NOT NULL
);


ALTER TABLE public.django_celery_beat_crontabschedule OWNER TO postgres;

--
-- Name: django_celery_beat_crontabschedule_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_celery_beat_crontabschedule_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_celery_beat_crontabschedule_id_seq OWNER TO postgres;

--
-- Name: django_celery_beat_crontabschedule_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_celery_beat_crontabschedule_id_seq OWNED BY public.django_celery_beat_crontabschedule.id;


--
-- Name: django_celery_beat_intervalschedule; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_celery_beat_intervalschedule (
    id integer NOT NULL,
    every integer NOT NULL,
    period character varying(24) NOT NULL
);


ALTER TABLE public.django_celery_beat_intervalschedule OWNER TO postgres;

--
-- Name: django_celery_beat_intervalschedule_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_celery_beat_intervalschedule_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_celery_beat_intervalschedule_id_seq OWNER TO postgres;

--
-- Name: django_celery_beat_intervalschedule_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_celery_beat_intervalschedule_id_seq OWNED BY public.django_celery_beat_intervalschedule.id;


--
-- Name: django_celery_beat_periodictask; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_celery_beat_periodictask (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    task character varying(200) NOT NULL,
    args text NOT NULL,
    kwargs text NOT NULL,
    queue character varying(200),
    exchange character varying(200),
    routing_key character varying(200),
    expires timestamp with time zone,
    enabled boolean NOT NULL,
    last_run_at timestamp with time zone,
    total_run_count integer NOT NULL,
    date_changed timestamp with time zone NOT NULL,
    description text NOT NULL,
    crontab_id integer,
    interval_id integer,
    solar_id integer,
    one_off boolean NOT NULL,
    start_time timestamp with time zone,
    priority integer,
    headers text NOT NULL,
    clocked_id integer,
    CONSTRAINT django_celery_beat_periodictask_priority_check CHECK ((priority >= 0)),
    CONSTRAINT django_celery_beat_periodictask_total_run_count_check CHECK ((total_run_count >= 0))
);


ALTER TABLE public.django_celery_beat_periodictask OWNER TO postgres;

--
-- Name: django_celery_beat_periodictask_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_celery_beat_periodictask_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_celery_beat_periodictask_id_seq OWNER TO postgres;

--
-- Name: django_celery_beat_periodictask_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_celery_beat_periodictask_id_seq OWNED BY public.django_celery_beat_periodictask.id;


--
-- Name: django_celery_beat_periodictasks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_celery_beat_periodictasks (
    ident smallint NOT NULL,
    last_update timestamp with time zone NOT NULL
);


ALTER TABLE public.django_celery_beat_periodictasks OWNER TO postgres;

--
-- Name: django_celery_beat_solarschedule; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_celery_beat_solarschedule (
    id integer NOT NULL,
    event character varying(24) NOT NULL,
    latitude numeric(9,6) NOT NULL,
    longitude numeric(9,6) NOT NULL
);


ALTER TABLE public.django_celery_beat_solarschedule OWNER TO postgres;

--
-- Name: django_celery_beat_solarschedule_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_celery_beat_solarschedule_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_celery_beat_solarschedule_id_seq OWNER TO postgres;

--
-- Name: django_celery_beat_solarschedule_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_celery_beat_solarschedule_id_seq OWNED BY public.django_celery_beat_solarschedule.id;


--
-- Name: django_celery_results_taskresult; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_celery_results_taskresult (
    id integer NOT NULL,
    task_id character varying(255) NOT NULL,
    status character varying(50) NOT NULL,
    content_type character varying(128) NOT NULL,
    content_encoding character varying(64) NOT NULL,
    result text,
    date_done timestamp with time zone NOT NULL,
    traceback text,
    hidden boolean NOT NULL,
    meta text,
    task_args text,
    task_kwargs text,
    task_name character varying(255)
);


ALTER TABLE public.django_celery_results_taskresult OWNER TO postgres;

--
-- Name: django_celery_results_taskresult_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_celery_results_taskresult_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_celery_results_taskresult_id_seq OWNER TO postgres;

--
-- Name: django_celery_results_taskresult_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_celery_results_taskresult_id_seq OWNED BY public.django_celery_results_taskresult.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: repository; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.repository (
    id integer NOT NULL,
    database_id integer NOT NULL,
    name_owner character varying(100) NOT NULL,
    avatar_url character varying(255),
    resource_path character varying(255),
    created_at_github timestamp with time zone,
    updated_at_github timestamp with time zone,
    fetched_at timestamp with time zone NOT NULL,
    language character varying(50),
    star_count integer NOT NULL
);


ALTER TABLE public.repository OWNER TO postgres;

--
-- Name: repository_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.repository_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.repository_id_seq OWNER TO postgres;

--
-- Name: repository_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.repository_id_seq OWNED BY public.repository.id;


--
-- Name: star_history; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.star_history (
    id integer NOT NULL,
    monthly_date date,
    star_count_monthly integer NOT NULL,
    last_updated_at timestamp with time zone,
    repository_id_id integer NOT NULL
);


ALTER TABLE public.star_history OWNER TO postgres;

--
-- Name: star_history_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.star_history_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_history_id_seq OWNER TO postgres;

--
-- Name: star_history_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.star_history_id_seq OWNED BY public.star_history.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: combination id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.combination ALTER COLUMN id SET DEFAULT nextval('public.combination_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_celery_beat_clockedschedule id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_celery_beat_clockedschedule ALTER COLUMN id SET DEFAULT nextval('public.django_celery_beat_clockedschedule_id_seq'::regclass);


--
-- Name: django_celery_beat_crontabschedule id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_celery_beat_crontabschedule ALTER COLUMN id SET DEFAULT nextval('public.django_celery_beat_crontabschedule_id_seq'::regclass);


--
-- Name: django_celery_beat_intervalschedule id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_celery_beat_intervalschedule ALTER COLUMN id SET DEFAULT nextval('public.django_celery_beat_intervalschedule_id_seq'::regclass);


--
-- Name: django_celery_beat_periodictask id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_celery_beat_periodictask ALTER COLUMN id SET DEFAULT nextval('public.django_celery_beat_periodictask_id_seq'::regclass);


--
-- Name: django_celery_beat_solarschedule id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_celery_beat_solarschedule ALTER COLUMN id SET DEFAULT nextval('public.django_celery_beat_solarschedule_id_seq'::regclass);


--
-- Name: django_celery_results_taskresult id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_celery_results_taskresult ALTER COLUMN id SET DEFAULT nextval('public.django_celery_results_taskresult_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: repository id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.repository ALTER COLUMN id SET DEFAULT nextval('public.repository_id_seq'::regclass);


--
-- Name: star_history id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.star_history ALTER COLUMN id SET DEFAULT nextval('public.star_history_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
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
25	Can add repository	7	add_repository
26	Can change repository	7	change_repository
27	Can delete repository	7	delete_repository
28	Can view repository	7	view_repository
29	Can add combination	8	add_combination
30	Can change combination	8	change_combination
31	Can delete combination	8	delete_combination
32	Can view combination	8	view_combination
33	Can add combination	9	add_combination
34	Can change combination	9	change_combination
35	Can delete combination	9	delete_combination
36	Can view combination	9	view_combination
37	Can add crontab	10	add_crontabschedule
38	Can change crontab	10	change_crontabschedule
39	Can delete crontab	10	delete_crontabschedule
40	Can view crontab	10	view_crontabschedule
41	Can add interval	11	add_intervalschedule
42	Can change interval	11	change_intervalschedule
43	Can delete interval	11	delete_intervalschedule
44	Can view interval	11	view_intervalschedule
45	Can add periodic task	12	add_periodictask
46	Can change periodic task	12	change_periodictask
47	Can delete periodic task	12	delete_periodictask
48	Can view periodic task	12	view_periodictask
49	Can add periodic tasks	13	add_periodictasks
50	Can change periodic tasks	13	change_periodictasks
51	Can delete periodic tasks	13	delete_periodictasks
52	Can view periodic tasks	13	view_periodictasks
53	Can add solar event	14	add_solarschedule
54	Can change solar event	14	change_solarschedule
55	Can delete solar event	14	delete_solarschedule
56	Can view solar event	14	view_solarschedule
57	Can add clocked	15	add_clockedschedule
58	Can change clocked	15	change_clockedschedule
59	Can delete clocked	15	delete_clockedschedule
60	Can view clocked	15	view_clockedschedule
61	Can add task result	16	add_taskresult
62	Can change task result	16	change_taskresult
63	Can delete task result	16	delete_taskresult
64	Can view task result	16	view_taskresult
65	Can add star history	17	add_starhistory
66	Can change star history	17	change_starhistory
67	Can delete star history	17	delete_starhistory
68	Can view star history	17	view_starhistory
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$150000$ZD5WDpoU7CqS$B0DKiU28dZdByEKdKbUIkm2jJup2DXWzrNP/Pdn89i0=	2019-09-08 01:26:15.919878+00	t	hayatek			motivationhack@gmail.com	t	t	2019-06-30 12:57:08.419171+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: combination; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.combination (id, database_id1, database_id2, database_id3, created_at, updated_at, access_count, avatar_url1, avatar_url2, avatar_url3, name_owner1, name_owner2, name_owner3) FROM stdin;
113	4164482	8514	8514	2019-09-14 04:36:53.470119+00	2019-09-14 04:36:53.537069+00	2	https://avatars2.githubusercontent.com/u/27804?v=4	https://avatars1.githubusercontent.com/u/4223?v=4	https://avatars1.githubusercontent.com/u/4223?v=4	django/django	rails/rails	rails/rails
110	4164482	4164482	0	2019-08-27 13:11:58.763622+00	2019-08-27 13:11:58.825964+00	2	https://avatars2.githubusercontent.com/u/27804?v=4	https://avatars2.githubusercontent.com/u/27804?v=4		django/django	django/django	
114	10270250	4164482	4164482	2019-09-14 04:37:26.558887+00	2019-09-14 04:37:26.595696+00	2	https://avatars3.githubusercontent.com/u/69631?v=4	https://avatars2.githubusercontent.com/u/27804?v=4	https://avatars2.githubusercontent.com/u/27804?v=4	facebook/react	django/django	django/django
105	81598961	23096959	0	2019-08-20 16:04:57.114881+00	2019-09-18 14:18:24.88829+00	11	https://avatars3.githubusercontent.com/u/1525981?v=4	https://avatars3.githubusercontent.com/u/4314092?v=4		python/cpython	golang/go	
116	84703916	4164482	0	2019-09-18 14:05:39.478829+00	2019-09-18 14:05:39.526305+00	2	https://avatars0.githubusercontent.com/u/1067743?v=4	https://avatars2.githubusercontent.com/u/27804?v=4		chaozh/awesome-blockchain-cn	django/django	
104	23096959	21289110	724712	2019-08-20 16:04:00.56596+00	2019-09-18 14:05:51.014967+00	10	https://avatars3.githubusercontent.com/u/4314092?v=4	https://avatars2.githubusercontent.com/u/652070?v=4	https://avatars1.githubusercontent.com/u/5430905?v=4	golang/go	vinta/awesome-python	rust-lang/rust
108	28457823	28457823	0	2019-08-20 16:42:42.961559+00	2019-09-18 14:18:29.847368+00	7	https://avatars0.githubusercontent.com/u/9892522?v=4	https://avatars0.githubusercontent.com/u/9892522?v=4		freeCodeCamp/freeCodeCamp	freeCodeCamp/freeCodeCamp	
111	4164482	184460	0	2019-08-27 13:38:31.232457+00	2019-08-27 13:38:31.299595+00	2	https://avatars2.githubusercontent.com/u/27804?v=4	https://avatars2.githubusercontent.com/u/319983?v=4		django/django	celery/celery	
115	23096959	724712	0	2019-09-14 04:41:34.875112+00	2019-09-14 04:41:34.916745+00	2	https://avatars3.githubusercontent.com/u/4314092?v=4	https://avatars1.githubusercontent.com/u/5430905?v=4		golang/go	rust-lang/rust	
109	11730342	8514	0	2019-08-24 23:01:35.78873+00	2019-09-18 14:16:20.436135+00	58	https://avatars1.githubusercontent.com/u/6128107?v=4	https://avatars1.githubusercontent.com/u/4223?v=4		vuejs/vue	rails/rails	
112	10270250	4164482	0	2019-09-13 23:16:12.692593+00	2019-09-21 14:26:29.107974+00	4	https://avatars3.githubusercontent.com/u/69631?v=4	https://avatars2.githubusercontent.com/u/27804?v=4		facebook/react	django/django	
100	4164482	8514	0	2019-08-20 14:46:52.036056+00	2019-09-21 23:25:39.816362+00	167	https://avatars2.githubusercontent.com/u/27804?v=4	https://avatars1.githubusercontent.com/u/4223?v=4		django/django	rails/rails	
103	4164482	596892	0	2019-08-20 14:58:31.61638+00	2019-09-21 23:27:02.167117+00	65	https://avatars2.githubusercontent.com/u/27804?v=4	https://avatars3.githubusercontent.com/u/16748505?v=4		django/django	pallets/flask	
101	11730342	10270250	460078	2019-08-20 14:47:43.024587+00	2019-09-21 23:27:42.009792+00	43	https://avatars1.githubusercontent.com/u/6128107?v=4	https://avatars3.githubusercontent.com/u/69631?v=4	https://avatars3.githubusercontent.com/u/139426?v=4	vuejs/vue	facebook/react	angular/angular.js
102	23096959	4164482	724712	2019-08-20 14:48:20.524247+00	2019-09-18 14:18:06.34839+00	30	https://avatars3.githubusercontent.com/u/4314092?v=4	https://avatars2.githubusercontent.com/u/27804?v=4	https://avatars1.githubusercontent.com/u/5430905?v=4	golang/go	django/django	rust-lang/rust
107	11730342	10270250	0	2019-08-20 16:37:31.453951+00	2019-09-18 14:18:11.003737+00	16	https://avatars1.githubusercontent.com/u/6128107?v=4	https://avatars3.githubusercontent.com/u/69631?v=4		vuejs/vue	facebook/react	
106	71995937	70107786	0	2019-08-20 16:12:31.951956+00	2019-09-18 14:18:15.568176+00	14	https://avatars2.githubusercontent.com/u/23360933?v=4	https://avatars0.githubusercontent.com/u/14985020?v=4		nuxt/nuxt.js	zeit/next.js	
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2019-06-30 13:22:17.592794+00	2	freeCodeCamp/freeCodeCamp	3		7	1
2	2019-06-30 13:22:17.597604+00	1	freeCodeCamp/freeCodeCamp	3		7	1
3	2019-06-30 13:24:49.616182+00	3	freeCodeCamp/freeCodeCamp	3		7	1
4	2019-06-30 13:25:08.040687+00	6	vuejs/vue	3		7	1
5	2019-06-30 13:25:08.043237+00	5	996icu/996.ICU	3		7	1
6	2019-06-30 13:25:08.045148+00	4	freeCodeCamp/freeCodeCamp	3		7	1
7	2019-06-30 13:27:35.338268+00	15	vuejs/vue	3		7	1
8	2019-06-30 13:27:35.341213+00	14	996icu/996.ICU	3		7	1
9	2019-06-30 13:27:35.343455+00	13	freeCodeCamp/freeCodeCamp	3		7	1
10	2019-06-30 13:27:35.34539+00	12	vuejs/vue	3		7	1
11	2019-06-30 13:27:35.347278+00	11	996icu/996.ICU	3		7	1
12	2019-06-30 13:27:35.349187+00	10	freeCodeCamp/freeCodeCamp	3		7	1
13	2019-06-30 13:27:35.351019+00	9	vuejs/vue	3		7	1
14	2019-06-30 13:27:35.353816+00	8	996icu/996.ICU	3		7	1
15	2019-06-30 13:27:35.357426+00	7	freeCodeCamp/freeCodeCamp	3		7	1
16	2019-06-30 13:32:01.541147+00	27	vuejs/vue	3		7	1
17	2019-06-30 13:32:01.546471+00	26	996icu/996.ICU	3		7	1
18	2019-06-30 13:32:01.549259+00	25	freeCodeCamp/freeCodeCamp	3		7	1
19	2019-06-30 13:32:01.551367+00	24	vuejs/vue	3		7	1
20	2019-06-30 13:32:01.553402+00	23	996icu/996.ICU	3		7	1
21	2019-06-30 13:32:01.555581+00	22	freeCodeCamp/freeCodeCamp	3		7	1
22	2019-06-30 13:32:01.557949+00	21	vuejs/vue	3		7	1
23	2019-06-30 13:32:01.559916+00	20	996icu/996.ICU	3		7	1
24	2019-06-30 13:32:01.561885+00	19	freeCodeCamp/freeCodeCamp	3		7	1
25	2019-06-30 13:32:01.563912+00	18	vuejs/vue	3		7	1
26	2019-06-30 13:32:01.565932+00	17	996icu/996.ICU	3		7	1
27	2019-06-30 13:32:01.567845+00	16	freeCodeCamp/freeCodeCamp	3		7	1
28	2019-07-03 18:31:34.267711+00	70	twbs/bootstrap	3		7	1
29	2019-07-03 18:31:34.271381+00	69	vuejs/vue	3		7	1
30	2019-07-03 18:31:34.274018+00	68	996icu/996.ICU	3		7	1
31	2019-07-03 18:31:34.276184+00	67	freeCodeCamp/freeCodeCamp	3		7	1
32	2019-07-03 18:31:34.278208+00	66	twbs/bootstrap	3		7	1
33	2019-07-03 18:31:34.280426+00	65	vuejs/vue	3		7	1
34	2019-07-03 18:31:34.282279+00	64	996icu/996.ICU	3		7	1
35	2019-07-03 18:31:34.283901+00	63	freeCodeCamp/freeCodeCamp	3		7	1
36	2019-07-03 18:31:34.285756+00	62	twbs/bootstrap	3		7	1
37	2019-07-03 18:31:34.288234+00	61	vuejs/vue	3		7	1
38	2019-07-03 18:31:34.290266+00	60	996icu/996.ICU	3		7	1
39	2019-07-03 18:31:34.294053+00	59	freeCodeCamp/freeCodeCamp	3		7	1
40	2019-07-03 18:31:34.296296+00	58	twbs/bootstrap	3		7	1
41	2019-07-03 18:31:34.298147+00	57	vuejs/vue	3		7	1
42	2019-07-03 18:31:34.300071+00	56	996icu/996.ICU	3		7	1
43	2019-07-03 18:31:34.303529+00	55	freeCodeCamp/freeCodeCamp	3		7	1
44	2019-07-03 18:31:34.305796+00	54	twbs/bootstrap	3		7	1
45	2019-07-03 18:31:34.308311+00	53	vuejs/vue	3		7	1
46	2019-07-03 18:31:34.310345+00	52	996icu/996.ICU	3		7	1
47	2019-07-03 18:31:34.313148+00	51	freeCodeCamp/freeCodeCamp	3		7	1
48	2019-07-03 18:31:34.315912+00	50	twbs/bootstrap	3		7	1
49	2019-07-03 18:31:34.318801+00	49	vuejs/vue	3		7	1
50	2019-07-03 18:31:34.320878+00	48	996icu/996.ICU	3		7	1
51	2019-07-03 18:31:34.323939+00	47	freeCodeCamp/freeCodeCamp	3		7	1
52	2019-07-03 18:31:34.327267+00	45	vuejs/vue	3		7	1
53	2019-07-03 18:31:34.329253+00	44	996icu/996.ICU	3		7	1
54	2019-07-03 18:31:34.331272+00	43	freeCodeCamp/freeCodeCamp	3		7	1
55	2019-07-03 18:31:34.333692+00	42	vuejs/vue	3		7	1
56	2019-07-03 18:31:34.335845+00	41	996icu/996.ICU	3		7	1
57	2019-07-03 18:31:34.337854+00	40	freeCodeCamp/freeCodeCamp	3		7	1
58	2019-07-03 18:31:34.340313+00	39	vuejs/vue	3		7	1
59	2019-07-03 18:31:34.342389+00	38	996icu/996.ICU	3		7	1
60	2019-07-03 18:31:34.344429+00	37	freeCodeCamp/freeCodeCamp	3		7	1
61	2019-07-03 18:31:34.346481+00	36	vuejs/vue	3		7	1
62	2019-07-03 18:31:34.348509+00	35	996icu/996.ICU	3		7	1
63	2019-07-03 18:31:34.350509+00	34	freeCodeCamp/freeCodeCamp	3		7	1
64	2019-07-03 18:31:34.352337+00	33	vuejs/vue	3		7	1
65	2019-07-03 18:31:34.35494+00	32	996icu/996.ICU	3		7	1
66	2019-07-03 18:31:34.357537+00	31	freeCodeCamp/freeCodeCamp	3		7	1
67	2019-07-03 18:31:34.3593+00	30	vuejs/vue	3		7	1
68	2019-07-03 18:31:34.361162+00	29	996icu/996.ICU	3		7	1
69	2019-07-03 18:31:34.36286+00	28	freeCodeCamp/freeCodeCamp	3		7	1
70	2019-07-03 18:33:11.03494+00	78	twbs/bootstrap	3		7	1
71	2019-07-03 18:33:11.03751+00	77	vuejs/vue	3		7	1
72	2019-07-03 18:33:11.039527+00	76	996icu/996.ICU	3		7	1
73	2019-07-03 18:33:11.041896+00	75	freeCodeCamp/freeCodeCamp	3		7	1
74	2019-07-03 18:33:11.043629+00	74	twbs/bootstrap	3		7	1
75	2019-07-03 18:33:11.045268+00	73	vuejs/vue	3		7	1
76	2019-07-03 18:33:11.046824+00	72	996icu/996.ICU	3		7	1
77	2019-07-03 18:33:11.048778+00	71	freeCodeCamp/freeCodeCamp	3		7	1
78	2019-07-03 18:37:05.881156+00	90	twbs/bootstrap	3		7	1
79	2019-07-03 18:37:05.88488+00	89	vuejs/vue	3		7	1
80	2019-07-03 18:37:05.887565+00	88	996icu/996.ICU	3		7	1
81	2019-07-03 18:37:05.889472+00	87	freeCodeCamp/freeCodeCamp	3		7	1
82	2019-07-03 18:37:05.89123+00	86	twbs/bootstrap	3		7	1
83	2019-07-03 18:37:05.892988+00	85	vuejs/vue	3		7	1
84	2019-07-03 18:37:05.895228+00	84	996icu/996.ICU	3		7	1
85	2019-07-03 18:37:05.897769+00	83	freeCodeCamp/freeCodeCamp	3		7	1
86	2019-07-03 18:37:05.899524+00	82	twbs/bootstrap	3		7	1
87	2019-07-03 18:37:05.901207+00	81	vuejs/vue	3		7	1
88	2019-07-03 18:37:05.902947+00	80	996icu/996.ICU	3		7	1
89	2019-07-03 18:37:05.904496+00	79	freeCodeCamp/freeCodeCamp	3		7	1
90	2019-07-03 18:37:44.087754+00	99	facebook/react	3		7	1
91	2019-07-03 18:37:44.090222+00	98	twbs/bootstrap	3		7	1
92	2019-07-03 18:37:44.092464+00	97	vuejs/vue	3		7	1
93	2019-07-03 18:37:44.0941+00	96	996icu/996.ICU	3		7	1
94	2019-07-03 18:37:44.095718+00	95	freeCodeCamp/freeCodeCamp	3		7	1
95	2019-07-03 18:37:44.097896+00	94	twbs/bootstrap	3		7	1
96	2019-07-03 18:37:44.100372+00	93	vuejs/vue	3		7	1
97	2019-07-03 18:37:44.102034+00	92	996icu/996.ICU	3		7	1
98	2019-07-03 18:37:44.1037+00	91	freeCodeCamp/freeCodeCamp	3		7	1
99	2019-07-06 03:59:30.216348+00	109	facebook/react	3		7	1
100	2019-07-06 03:59:30.22127+00	108	twbs/bootstrap	3		7	1
101	2019-07-06 03:59:30.223426+00	107	vuejs/vue	3		7	1
102	2019-07-06 03:59:30.225726+00	106	996icu/996.ICU	3		7	1
103	2019-07-06 03:59:30.228092+00	105	freeCodeCamp/freeCodeCamp	3		7	1
104	2019-07-06 03:59:30.230153+00	104	facebook/react	3		7	1
105	2019-07-06 03:59:30.232992+00	103	twbs/bootstrap	3		7	1
106	2019-07-06 03:59:30.235557+00	102	vuejs/vue	3		7	1
107	2019-07-06 03:59:30.238149+00	101	996icu/996.ICU	3		7	1
108	2019-07-06 03:59:30.241301+00	100	freeCodeCamp/freeCodeCamp	3		7	1
109	2019-07-06 03:59:51.858658+00	195	facebook/react	3		7	1
110	2019-07-06 03:59:51.862031+00	194	twbs/bootstrap	3		7	1
111	2019-07-06 03:59:51.864799+00	193	vuejs/vue	3		7	1
112	2019-07-06 03:59:51.86694+00	192	996icu/996.ICU	3		7	1
113	2019-07-06 03:59:51.869074+00	191	freeCodeCamp/freeCodeCamp	3		7	1
114	2019-07-06 03:59:51.871182+00	190	facebook/react	3		7	1
115	2019-07-06 03:59:51.874312+00	189	twbs/bootstrap	3		7	1
116	2019-07-06 03:59:51.876351+00	188	vuejs/vue	3		7	1
117	2019-07-06 03:59:51.878259+00	187	996icu/996.ICU	3		7	1
118	2019-07-06 03:59:51.880177+00	186	freeCodeCamp/freeCodeCamp	3		7	1
119	2019-07-06 03:59:51.882274+00	185	facebook/react	3		7	1
120	2019-07-06 03:59:51.884263+00	184	twbs/bootstrap	3		7	1
121	2019-07-06 03:59:51.886576+00	183	vuejs/vue	3		7	1
122	2019-07-06 03:59:51.888509+00	182	996icu/996.ICU	3		7	1
123	2019-07-06 03:59:51.890417+00	181	freeCodeCamp/freeCodeCamp	3		7	1
124	2019-07-06 03:59:51.892815+00	180	facebook/react	3		7	1
125	2019-07-06 03:59:51.894774+00	179	twbs/bootstrap	3		7	1
126	2019-07-06 03:59:51.896731+00	178	vuejs/vue	3		7	1
127	2019-07-06 03:59:51.898833+00	177	996icu/996.ICU	3		7	1
128	2019-07-06 03:59:51.900681+00	176	freeCodeCamp/freeCodeCamp	3		7	1
129	2019-07-06 03:59:51.903268+00	175	facebook/react	3		7	1
130	2019-07-06 03:59:51.905182+00	174	twbs/bootstrap	3		7	1
131	2019-07-06 03:59:51.907034+00	173	vuejs/vue	3		7	1
132	2019-07-06 03:59:51.90894+00	172	996icu/996.ICU	3		7	1
133	2019-07-06 03:59:51.910989+00	171	freeCodeCamp/freeCodeCamp	3		7	1
134	2019-07-06 03:59:51.913081+00	170	facebook/react	3		7	1
135	2019-07-06 03:59:51.91522+00	169	twbs/bootstrap	3		7	1
136	2019-07-06 03:59:51.916997+00	168	vuejs/vue	3		7	1
137	2019-07-06 03:59:51.918982+00	167	996icu/996.ICU	3		7	1
138	2019-07-06 03:59:51.921531+00	166	freeCodeCamp/freeCodeCamp	3		7	1
139	2019-07-06 03:59:51.924001+00	165	facebook/react	3		7	1
140	2019-07-06 03:59:51.926273+00	164	twbs/bootstrap	3		7	1
141	2019-07-06 03:59:51.928165+00	163	vuejs/vue	3		7	1
142	2019-07-06 03:59:51.930093+00	162	996icu/996.ICU	3		7	1
143	2019-07-06 03:59:51.932408+00	161	freeCodeCamp/freeCodeCamp	3		7	1
144	2019-07-06 03:59:51.93442+00	160	facebook/react	3		7	1
145	2019-07-06 03:59:51.936459+00	159	twbs/bootstrap	3		7	1
146	2019-07-06 03:59:51.938702+00	158	vuejs/vue	3		7	1
147	2019-07-06 03:59:51.940737+00	157	996icu/996.ICU	3		7	1
148	2019-07-06 03:59:51.942756+00	156	freeCodeCamp/freeCodeCamp	3		7	1
149	2019-07-06 03:59:51.944661+00	155	facebook/react	3		7	1
150	2019-07-06 03:59:51.946481+00	154	twbs/bootstrap	3		7	1
151	2019-07-06 03:59:51.94851+00	153	vuejs/vue	3		7	1
152	2019-07-06 03:59:51.950475+00	152	996icu/996.ICU	3		7	1
153	2019-07-06 03:59:51.952505+00	151	freeCodeCamp/freeCodeCamp	3		7	1
154	2019-07-06 03:59:51.954895+00	150	facebook/react	3		7	1
155	2019-07-06 03:59:51.95685+00	149	twbs/bootstrap	3		7	1
156	2019-07-06 03:59:51.958759+00	148	vuejs/vue	3		7	1
157	2019-07-06 03:59:51.960873+00	147	996icu/996.ICU	3		7	1
158	2019-07-06 03:59:51.962862+00	146	freeCodeCamp/freeCodeCamp	3		7	1
159	2019-07-06 03:59:51.964731+00	145	facebook/react	3		7	1
160	2019-07-06 03:59:51.966652+00	144	twbs/bootstrap	3		7	1
161	2019-07-06 03:59:51.968658+00	143	vuejs/vue	3		7	1
162	2019-07-06 03:59:51.971044+00	142	996icu/996.ICU	3		7	1
163	2019-07-06 03:59:51.973235+00	141	freeCodeCamp/freeCodeCamp	3		7	1
164	2019-07-06 03:59:51.975203+00	140	facebook/react	3		7	1
165	2019-07-06 03:59:51.977242+00	139	twbs/bootstrap	3		7	1
166	2019-07-06 03:59:51.979368+00	138	vuejs/vue	3		7	1
167	2019-07-06 03:59:51.981305+00	137	996icu/996.ICU	3		7	1
168	2019-07-06 03:59:51.983614+00	136	freeCodeCamp/freeCodeCamp	3		7	1
169	2019-07-06 03:59:51.986307+00	135	facebook/react	3		7	1
170	2019-07-06 03:59:51.98852+00	134	twbs/bootstrap	3		7	1
171	2019-07-06 03:59:51.990652+00	133	vuejs/vue	3		7	1
172	2019-07-06 03:59:51.992434+00	132	996icu/996.ICU	3		7	1
173	2019-07-06 03:59:51.994239+00	131	freeCodeCamp/freeCodeCamp	3		7	1
174	2019-07-06 03:59:51.996398+00	129	facebook/react	3		7	1
175	2019-07-06 03:59:51.998279+00	128	twbs/bootstrap	3		7	1
176	2019-07-06 03:59:52.000093+00	127	vuejs/vue	3		7	1
177	2019-07-06 03:59:52.002053+00	126	996icu/996.ICU	3		7	1
178	2019-07-06 03:59:52.004001+00	125	freeCodeCamp/freeCodeCamp	3		7	1
179	2019-07-06 03:59:52.006053+00	124	facebook/react	3		7	1
180	2019-07-06 03:59:52.007871+00	123	twbs/bootstrap	3		7	1
181	2019-07-06 03:59:52.009708+00	122	vuejs/vue	3		7	1
182	2019-07-06 03:59:52.011641+00	121	996icu/996.ICU	3		7	1
183	2019-07-06 03:59:52.014115+00	120	freeCodeCamp/freeCodeCamp	3		7	1
184	2019-07-06 03:59:52.016636+00	119	facebook/react	3		7	1
185	2019-07-06 03:59:52.019635+00	118	twbs/bootstrap	3		7	1
186	2019-07-06 03:59:52.022019+00	117	vuejs/vue	3		7	1
187	2019-07-06 03:59:52.024555+00	116	996icu/996.ICU	3		7	1
188	2019-07-06 03:59:52.026514+00	115	freeCodeCamp/freeCodeCamp	3		7	1
189	2019-07-06 03:59:52.028809+00	114	facebook/react	3		7	1
190	2019-07-06 03:59:52.030667+00	113	twbs/bootstrap	3		7	1
191	2019-07-06 03:59:52.032514+00	112	vuejs/vue	3		7	1
192	2019-07-06 03:59:52.034925+00	111	996icu/996.ICU	3		7	1
193	2019-07-06 03:59:52.037597+00	110	freeCodeCamp/freeCodeCamp	3		7	1
194	2019-07-06 06:31:19.087282+00	255	getify/You-Dont-Know-JS	3		7	1
195	2019-07-06 06:31:19.098074+00	254	sindresorhus/awesome	3		7	1
196	2019-07-06 06:31:19.099922+00	253	EbookFoundation/free-programming-books	3		7	1
197	2019-07-06 06:31:19.101636+00	252	tensorflow/tensorflow	3		7	1
198	2019-07-06 06:31:19.103327+00	251	facebook/react	3		7	1
199	2019-07-06 06:31:19.105012+00	250	twbs/bootstrap	3		7	1
200	2019-07-06 06:31:19.106688+00	249	vuejs/vue	3		7	1
201	2019-07-06 06:31:19.108281+00	248	996icu/996.ICU	3		7	1
202	2019-07-06 06:31:19.110359+00	247	freeCodeCamp/freeCodeCamp	3		7	1
203	2019-07-06 06:31:19.11215+00	246	getify/You-Dont-Know-JS	3		7	1
204	2019-07-06 06:31:19.113909+00	245	sindresorhus/awesome	3		7	1
205	2019-07-06 06:31:19.117359+00	244	EbookFoundation/free-programming-books	3		7	1
206	2019-07-06 06:31:19.119072+00	243	tensorflow/tensorflow	3		7	1
207	2019-07-06 06:31:19.120623+00	242	facebook/react	3		7	1
208	2019-07-06 06:31:19.122164+00	241	twbs/bootstrap	3		7	1
209	2019-07-06 06:31:19.123831+00	240	vuejs/vue	3		7	1
210	2019-07-06 06:31:19.125412+00	239	996icu/996.ICU	3		7	1
211	2019-07-06 06:31:19.127049+00	238	freeCodeCamp/freeCodeCamp	3		7	1
212	2019-07-06 06:31:19.129424+00	237	getify/You-Dont-Know-JS	3		7	1
213	2019-07-06 06:31:19.131006+00	236	sindresorhus/awesome	3		7	1
214	2019-07-06 06:31:19.132545+00	235	EbookFoundation/free-programming-books	3		7	1
215	2019-07-06 06:31:19.134098+00	234	tensorflow/tensorflow	3		7	1
216	2019-07-06 06:31:19.135641+00	233	facebook/react	3		7	1
217	2019-07-06 06:31:19.137182+00	232	twbs/bootstrap	3		7	1
218	2019-07-06 06:31:19.138827+00	231	vuejs/vue	3		7	1
219	2019-07-06 06:31:19.140385+00	230	996icu/996.ICU	3		7	1
220	2019-07-06 06:31:19.141946+00	229	freeCodeCamp/freeCodeCamp	3		7	1
221	2019-07-06 06:31:19.143972+00	228	getify/You-Dont-Know-JS	3		7	1
222	2019-07-06 06:31:19.146472+00	227	sindresorhus/awesome	3		7	1
223	2019-07-06 06:31:19.148168+00	226	EbookFoundation/free-programming-books	3		7	1
224	2019-07-06 06:31:19.149786+00	225	tensorflow/tensorflow	3		7	1
225	2019-07-06 06:31:19.151367+00	224	facebook/react	3		7	1
226	2019-07-06 06:31:19.152918+00	223	twbs/bootstrap	3		7	1
227	2019-07-06 06:31:19.15446+00	222	vuejs/vue	3		7	1
228	2019-07-06 06:31:19.156001+00	221	996icu/996.ICU	3		7	1
229	2019-07-06 06:31:19.157542+00	220	freeCodeCamp/freeCodeCamp	3		7	1
230	2019-07-06 06:31:19.159224+00	219	getify/You-Dont-Know-JS	3		7	1
231	2019-07-06 06:31:19.161365+00	218	sindresorhus/awesome	3		7	1
232	2019-07-06 06:31:19.16314+00	217	EbookFoundation/free-programming-books	3		7	1
233	2019-07-06 06:31:19.164779+00	216	tensorflow/tensorflow	3		7	1
234	2019-07-06 06:31:19.166423+00	215	facebook/react	3		7	1
235	2019-07-06 06:31:19.168213+00	214	twbs/bootstrap	3		7	1
236	2019-07-06 06:31:19.169807+00	213	vuejs/vue	3		7	1
237	2019-07-06 06:31:19.17141+00	212	996icu/996.ICU	3		7	1
238	2019-07-06 06:31:19.173007+00	211	freeCodeCamp/freeCodeCamp	3		7	1
239	2019-07-06 06:31:19.175+00	210	facebook/react	3		7	1
240	2019-07-06 06:31:19.177131+00	209	twbs/bootstrap	3		7	1
241	2019-07-06 06:31:19.179349+00	208	vuejs/vue	3		7	1
242	2019-07-06 06:31:19.181042+00	207	996icu/996.ICU	3		7	1
243	2019-07-06 06:31:19.182662+00	206	freeCodeCamp/freeCodeCamp	3		7	1
244	2019-07-06 06:31:19.184292+00	205	facebook/react	3		7	1
245	2019-07-06 06:31:19.185964+00	204	twbs/bootstrap	3		7	1
246	2019-07-06 06:31:19.187554+00	203	vuejs/vue	3		7	1
247	2019-07-06 06:31:19.189246+00	202	996icu/996.ICU	3		7	1
248	2019-07-06 06:31:19.190848+00	201	freeCodeCamp/freeCodeCamp	3		7	1
249	2019-07-06 06:31:19.192753+00	200	facebook/react	3		7	1
250	2019-07-06 06:31:19.19481+00	199	twbs/bootstrap	3		7	1
251	2019-07-06 06:31:19.196508+00	198	vuejs/vue	3		7	1
252	2019-07-06 06:31:19.198127+00	197	996icu/996.ICU	3		7	1
253	2019-07-06 06:31:19.199784+00	196	freeCodeCamp/freeCodeCamp	3		7	1
254	2019-07-06 07:55:31.647539+00	282	getify/You-Dont-Know-JS	3		7	1
255	2019-07-06 07:55:31.651781+00	281	sindresorhus/awesome	3		7	1
256	2019-07-06 07:55:31.653777+00	280	EbookFoundation/free-programming-books	3		7	1
257	2019-07-06 07:55:31.656552+00	279	tensorflow/tensorflow	3		7	1
258	2019-07-06 07:55:31.65858+00	278	facebook/react	3		7	1
259	2019-07-06 07:55:31.660504+00	277	twbs/bootstrap	3		7	1
260	2019-07-06 07:55:31.662369+00	276	vuejs/vue	3		7	1
261	2019-07-06 07:55:31.664236+00	275	996icu/996.ICU	3		7	1
262	2019-07-06 07:55:31.665926+00	274	freeCodeCamp/freeCodeCamp	3		7	1
263	2019-07-06 07:55:31.667669+00	273	getify/You-Dont-Know-JS	3		7	1
264	2019-07-06 07:55:31.669409+00	272	sindresorhus/awesome	3		7	1
265	2019-07-06 07:55:31.6714+00	271	EbookFoundation/free-programming-books	3		7	1
266	2019-07-06 07:55:31.673431+00	270	tensorflow/tensorflow	3		7	1
267	2019-07-06 07:55:31.675144+00	269	facebook/react	3		7	1
268	2019-07-06 07:55:31.677055+00	268	twbs/bootstrap	3		7	1
269	2019-07-06 07:55:31.678798+00	267	vuejs/vue	3		7	1
270	2019-07-06 07:55:31.680509+00	266	996icu/996.ICU	3		7	1
271	2019-07-06 07:55:31.68281+00	265	freeCodeCamp/freeCodeCamp	3		7	1
272	2019-07-06 07:55:31.684623+00	264	getify/You-Dont-Know-JS	3		7	1
273	2019-07-06 07:55:31.686471+00	263	sindresorhus/awesome	3		7	1
274	2019-07-06 07:55:31.688531+00	262	EbookFoundation/free-programming-books	3		7	1
275	2019-07-06 07:55:31.690744+00	261	tensorflow/tensorflow	3		7	1
276	2019-07-06 07:55:31.692447+00	260	facebook/react	3		7	1
277	2019-07-06 07:55:31.694398+00	259	twbs/bootstrap	3		7	1
278	2019-07-06 07:55:31.696187+00	258	vuejs/vue	3		7	1
279	2019-07-06 07:55:31.697973+00	257	996icu/996.ICU	3		7	1
280	2019-07-06 07:55:31.699717+00	256	freeCodeCamp/freeCodeCamp	3		7	1
281	2019-07-06 07:57:14.645821+00	291	getify/You-Dont-Know-JS	3		7	1
282	2019-07-06 07:57:14.649968+00	290	sindresorhus/awesome	3		7	1
283	2019-07-06 07:57:14.652098+00	289	EbookFoundation/free-programming-books	3		7	1
284	2019-07-06 07:57:14.654128+00	288	tensorflow/tensorflow	3		7	1
285	2019-07-06 07:57:14.655836+00	287	facebook/react	3		7	1
286	2019-07-06 07:57:14.657811+00	286	twbs/bootstrap	3		7	1
287	2019-07-06 07:57:14.660162+00	285	vuejs/vue	3		7	1
288	2019-07-06 07:57:14.661937+00	284	996icu/996.ICU	3		7	1
289	2019-07-06 07:57:14.663918+00	283	freeCodeCamp/freeCodeCamp	3		7	1
290	2019-07-06 07:58:54.100035+00	309	getify/You-Dont-Know-JS	3		7	1
291	2019-07-06 07:58:54.103773+00	308	sindresorhus/awesome	3		7	1
292	2019-07-06 07:58:54.105612+00	307	EbookFoundation/free-programming-books	3		7	1
293	2019-07-06 07:58:54.107389+00	306	tensorflow/tensorflow	3		7	1
294	2019-07-06 07:58:54.109223+00	305	facebook/react	3		7	1
295	2019-07-06 07:58:54.111323+00	304	twbs/bootstrap	3		7	1
296	2019-07-06 07:58:54.115001+00	303	vuejs/vue	3		7	1
297	2019-07-06 07:58:54.116818+00	302	996icu/996.ICU	3		7	1
298	2019-07-06 07:58:54.118474+00	301	freeCodeCamp/freeCodeCamp	3		7	1
299	2019-07-06 07:58:54.120057+00	300	getify/You-Dont-Know-JS	3		7	1
300	2019-07-06 07:58:54.121652+00	299	sindresorhus/awesome	3		7	1
301	2019-07-06 07:58:54.123246+00	298	EbookFoundation/free-programming-books	3		7	1
302	2019-07-06 07:58:54.124824+00	297	tensorflow/tensorflow	3		7	1
303	2019-07-06 07:58:54.12673+00	296	facebook/react	3		7	1
304	2019-07-06 07:58:54.128532+00	295	twbs/bootstrap	3		7	1
305	2019-07-06 07:58:54.130343+00	294	vuejs/vue	3		7	1
306	2019-07-06 07:58:54.132256+00	293	996icu/996.ICU	3		7	1
307	2019-07-06 07:58:54.13389+00	292	freeCodeCamp/freeCodeCamp	3		7	1
308	2019-07-06 07:59:42.758522+00	318	getify/You-Dont-Know-JS	3		7	1
309	2019-07-06 07:59:42.762311+00	317	sindresorhus/awesome	3		7	1
310	2019-07-06 07:59:42.764134+00	316	EbookFoundation/free-programming-books	3		7	1
311	2019-07-06 07:59:42.76595+00	315	tensorflow/tensorflow	3		7	1
312	2019-07-06 07:59:42.768521+00	314	facebook/react	3		7	1
313	2019-07-06 07:59:42.77159+00	313	twbs/bootstrap	3		7	1
314	2019-07-06 07:59:42.773553+00	312	vuejs/vue	3		7	1
315	2019-07-06 07:59:42.775248+00	311	996icu/996.ICU	3		7	1
316	2019-07-06 07:59:42.77705+00	310	freeCodeCamp/freeCodeCamp	3		7	1
317	2019-07-06 08:01:36.902253+00	404	trekhleb/javascript-algorithms	3		7	1
318	2019-07-06 08:01:36.905789+00	403	microsoft/TypeScript	3		7	1
319	2019-07-06 08:01:36.907608+00	402	GoogleChrome/puppeteer	3		7	1
320	2019-07-06 08:01:36.909433+00	401	jquery/jquery	3		7	1
321	2019-07-06 08:01:36.911474+00	400	justjavac/free-programming-books-zh_CN	3		7	1
322	2019-07-06 08:01:36.915212+00	399	ytdl-org/youtube-dl	3		7	1
323	2019-07-06 08:01:36.917041+00	398	mrdoob/three.js	3		7	1
324	2019-07-06 08:01:36.918804+00	397	laravel/laravel	3		7	1
325	2019-07-06 08:01:36.92048+00	396	moby/moby	3		7	1
326	2019-07-06 08:01:36.922141+00	395	tensorflow/models	3		7	1
327	2019-07-06 08:01:36.924017+00	394	kubernetes/kubernetes	3		7	1
328	2019-07-06 08:01:36.925832+00	393	public-apis/public-apis	3		7	1
329	2019-07-06 08:01:36.928148+00	392	angular/angular.js	3		7	1
330	2019-07-06 08:01:36.929895+00	391	jlevy/the-art-of-command-line	3		7	1
331	2019-07-06 08:01:36.931597+00	390	FortAwesome/Font-Awesome	3		7	1
332	2019-07-06 08:01:36.933369+00	389	golang/go	3		7	1
333	2019-07-06 08:01:36.934984+00	388	daneden/animate.css	3		7	1
334	2019-07-06 08:01:36.936631+00	387	axios/axios	3		7	1
335	2019-07-06 08:01:36.938243+00	386	nodejs/node	3		7	1
336	2019-07-06 08:01:36.939866+00	385	donnemartin/system-design-primer	3		7	1
337	2019-07-06 08:01:36.941486+00	384	flutter/flutter	3		7	1
338	2019-07-06 08:01:36.943092+00	383	facebook/create-react-app	3		7	1
339	2019-07-06 08:01:36.945489+00	382	vinta/awesome-python	3		7	1
340	2019-07-06 08:01:36.947208+00	381	CyC2018/CS-Notes	3		7	1
341	2019-07-06 08:01:36.948889+00	380	electron/electron	3		7	1
342	2019-07-06 08:01:36.950607+00	379	torvalds/linux	3		7	1
343	2019-07-06 08:01:36.952299+00	378	facebook/react-native	3		7	1
344	2019-07-06 08:01:36.953935+00	377	microsoft/vscode	3		7	1
345	2019-07-06 08:01:36.955738+00	376	jwasham/coding-interview-university	3		7	1
346	2019-07-06 08:01:36.958001+00	375	kamranahmedse/developer-roadmap	3		7	1
347	2019-07-06 08:01:36.960229+00	374	d3/d3	3		7	1
348	2019-07-06 08:01:36.96239+00	373	github/gitignore	3		7	1
349	2019-07-06 08:01:36.964078+00	372	airbnb/javascript	3		7	1
350	2019-07-06 08:01:36.965726+00	371	robbyrussell/oh-my-zsh	3		7	1
351	2019-07-06 08:01:36.967364+00	370	getify/You-Dont-Know-JS	3		7	1
352	2019-07-06 08:01:36.969105+00	369	sindresorhus/awesome	3		7	1
353	2019-07-06 08:01:36.970782+00	368	EbookFoundation/free-programming-books	3		7	1
354	2019-07-06 08:01:36.972435+00	367	tensorflow/tensorflow	3		7	1
355	2019-07-06 08:01:36.974099+00	366	facebook/react	3		7	1
356	2019-07-06 08:01:36.975847+00	365	twbs/bootstrap	3		7	1
357	2019-07-06 08:01:36.977666+00	364	vuejs/vue	3		7	1
358	2019-07-06 08:01:36.979492+00	363	996icu/996.ICU	3		7	1
359	2019-07-06 08:01:36.981232+00	362	freeCodeCamp/freeCodeCamp	3		7	1
360	2019-07-06 08:01:36.982958+00	361	trekhleb/javascript-algorithms	3		7	1
361	2019-07-06 08:01:36.984639+00	360	microsoft/TypeScript	3		7	1
362	2019-07-06 08:01:36.986383+00	359	GoogleChrome/puppeteer	3		7	1
363	2019-07-06 08:01:36.988383+00	358	jquery/jquery	3		7	1
364	2019-07-06 08:01:36.99025+00	357	justjavac/free-programming-books-zh_CN	3		7	1
365	2019-07-06 08:01:36.991973+00	356	ytdl-org/youtube-dl	3		7	1
366	2019-07-06 08:01:36.993634+00	355	mrdoob/three.js	3		7	1
367	2019-07-06 08:01:36.995702+00	354	laravel/laravel	3		7	1
368	2019-07-06 08:01:36.997842+00	353	moby/moby	3		7	1
369	2019-07-06 08:01:36.999548+00	352	tensorflow/models	3		7	1
370	2019-07-06 08:01:37.001147+00	351	kubernetes/kubernetes	3		7	1
371	2019-07-06 08:01:37.002797+00	350	public-apis/public-apis	3		7	1
372	2019-07-06 08:01:37.004395+00	349	angular/angular.js	3		7	1
373	2019-07-06 08:01:37.005985+00	348	jlevy/the-art-of-command-line	3		7	1
374	2019-07-06 08:01:37.007575+00	347	FortAwesome/Font-Awesome	3		7	1
375	2019-07-06 08:01:37.009318+00	346	golang/go	3		7	1
376	2019-07-06 08:01:37.011422+00	345	daneden/animate.css	3		7	1
377	2019-07-06 08:01:37.013318+00	344	axios/axios	3		7	1
378	2019-07-06 08:01:37.015046+00	343	nodejs/node	3		7	1
379	2019-07-06 08:01:37.016741+00	342	donnemartin/system-design-primer	3		7	1
380	2019-07-06 08:01:37.018818+00	341	flutter/flutter	3		7	1
381	2019-07-06 08:01:37.020817+00	340	facebook/create-react-app	3		7	1
382	2019-07-06 08:01:37.022494+00	339	vinta/awesome-python	3		7	1
383	2019-07-06 08:01:37.024104+00	338	CyC2018/CS-Notes	3		7	1
384	2019-07-06 08:01:37.025766+00	337	electron/electron	3		7	1
385	2019-07-06 08:01:37.027958+00	336	torvalds/linux	3		7	1
386	2019-07-06 08:01:37.029772+00	335	facebook/react-native	3		7	1
387	2019-07-06 08:01:37.03147+00	334	microsoft/vscode	3		7	1
388	2019-07-06 08:01:37.033116+00	333	jwasham/coding-interview-university	3		7	1
389	2019-07-06 08:01:37.03474+00	332	kamranahmedse/developer-roadmap	3		7	1
390	2019-07-06 08:01:37.03633+00	331	d3/d3	3		7	1
391	2019-07-06 08:01:37.038009+00	330	github/gitignore	3		7	1
392	2019-07-06 08:01:37.039776+00	329	airbnb/javascript	3		7	1
393	2019-07-06 08:01:37.04146+00	328	robbyrussell/oh-my-zsh	3		7	1
394	2019-07-06 08:01:37.04315+00	327	getify/You-Dont-Know-JS	3		7	1
395	2019-07-06 08:01:37.044891+00	326	sindresorhus/awesome	3		7	1
396	2019-07-06 08:01:37.046599+00	325	EbookFoundation/free-programming-books	3		7	1
397	2019-07-06 08:01:37.048375+00	324	tensorflow/tensorflow	3		7	1
398	2019-07-06 08:01:37.05021+00	323	facebook/react	3		7	1
399	2019-07-06 08:01:37.051911+00	322	twbs/bootstrap	3		7	1
400	2019-07-06 08:01:37.053765+00	321	vuejs/vue	3		7	1
401	2019-07-06 08:01:37.055436+00	320	996icu/996.ICU	3		7	1
402	2019-07-06 08:01:37.057092+00	319	freeCodeCamp/freeCodeCamp	3		7	1
403	2019-07-26 16:42:51.598899+00	12	Combination object (12)	3		9	1
404	2019-07-26 16:43:29.717931+00	14	Combination object (14)	3		9	1
405	2019-07-26 16:43:29.723551+00	13	Combination object (13)	3		9	1
406	2019-07-26 16:43:29.72597+00	11	Combination object (11)	3		9	1
407	2019-07-26 16:43:29.728392+00	10	Combination object (10)	3		9	1
408	2019-07-26 16:43:29.730713+00	9	Combination object (9)	3		9	1
409	2019-07-26 16:43:29.742253+00	8	Combination object (8)	3		9	1
410	2019-07-26 16:43:29.747451+00	7	Combination object (7)	3		9	1
411	2019-07-26 16:43:29.749402+00	6	Combination object (6)	3		9	1
412	2019-07-26 16:43:29.751201+00	5	Combination object (5)	3		9	1
413	2019-07-26 16:43:29.752979+00	4	Combination object (4)	3		9	1
414	2019-07-26 16:43:29.754569+00	3	Combination object (3)	3		9	1
415	2019-07-26 16:43:29.756001+00	2	Combination object (2)	3		9	1
416	2019-07-26 16:43:29.7574+00	1	Combination object (1)	3		9	1
417	2019-07-27 03:55:22.197476+00	33	Combination object (33)	3		9	1
418	2019-07-27 03:55:22.203285+00	32	Combination object (32)	3		9	1
419	2019-07-27 03:55:22.205569+00	31	Combination object (31)	3		9	1
420	2019-07-27 03:55:22.207692+00	30	Combination object (30)	3		9	1
421	2019-07-27 03:55:22.209707+00	29	Combination object (29)	3		9	1
422	2019-07-27 03:55:22.213224+00	28	Combination object (28)	3		9	1
423	2019-07-27 03:55:22.215505+00	27	Combination object (27)	3		9	1
424	2019-07-27 03:55:22.217798+00	26	Combination object (26)	3		9	1
425	2019-07-27 03:55:22.21979+00	25	Combination object (25)	3		9	1
426	2019-07-27 03:55:22.223373+00	24	Combination object (24)	3		9	1
427	2019-07-27 03:55:22.225406+00	23	Combination object (23)	3		9	1
428	2019-07-27 03:55:22.227344+00	22	Combination object (22)	3		9	1
429	2019-07-27 03:55:22.229298+00	21	Combination object (21)	3		9	1
430	2019-07-27 03:55:22.231411+00	20	Combination object (20)	3		9	1
431	2019-07-27 03:55:22.233828+00	19	Combination object (19)	3		9	1
432	2019-07-27 03:55:22.236215+00	18	Combination object (18)	3		9	1
433	2019-07-27 03:55:22.238377+00	17	Combination object (17)	3		9	1
434	2019-07-27 03:55:22.240832+00	16	Combination object (16)	3		9	1
435	2019-07-27 03:55:22.242943+00	15	Combination object (15)	3		9	1
436	2019-07-27 03:56:31.928594+00	34	Combination object (34)	3		9	1
437	2019-07-27 23:46:03.222292+00	37	Combination object (37)	3		9	1
438	2019-07-27 23:46:03.231245+00	36	Combination object (36)	3		9	1
439	2019-07-27 23:46:03.233393+00	35	Combination object (35)	3		9	1
440	2019-07-27 23:46:08.784508+00	38	Combination object (38)	3		9	1
441	2019-07-27 23:53:31.342332+00	41	Combination object (41)	3		9	1
442	2019-07-27 23:53:31.350215+00	40	Combination object (40)	3		9	1
443	2019-07-27 23:53:31.352454+00	39	Combination object (39)	3		9	1
444	2019-07-28 00:02:53.923732+00	43	Combination object (43)	3		9	1
445	2019-07-28 00:02:53.927831+00	42	Combination object (42)	3		9	1
446	2019-07-28 00:10:54.612629+00	44	Combination object (44)	3		9	1
447	2019-07-28 00:11:23.167279+00	45	Combination object (45)	2	[{"changed": {"fields": ["access_count"]}}]	9	1
448	2019-07-28 00:15:49.628073+00	45	Combination object (45)	3		9	1
449	2019-07-28 00:16:52.082348+00	46	Combination object (46)	3		9	1
450	2019-07-28 00:45:25.942982+00	48	Combination object (48)	3		9	1
451	2019-07-28 00:45:25.948811+00	47	Combination object (47)	3		9	1
452	2019-07-28 00:53:58.037383+00	49	Combination object (49)	3		9	1
453	2019-07-28 00:56:59.595076+00	51	Combination object (51)	3		9	1
454	2019-08-11 13:49:03.888712+00	75	Combination object (75)	3		9	1
455	2019-08-11 13:49:03.900553+00	74	Combination object (74)	3		9	1
456	2019-08-11 13:49:03.901461+00	73	Combination object (73)	3		9	1
457	2019-08-11 13:49:03.902112+00	72	Combination object (72)	3		9	1
458	2019-08-11 13:49:03.902718+00	71	Combination object (71)	3		9	1
459	2019-08-11 13:49:03.903301+00	70	Combination object (70)	3		9	1
460	2019-08-11 13:49:03.904486+00	69	Combination object (69)	3		9	1
461	2019-08-11 13:49:03.905116+00	68	Combination object (68)	3		9	1
462	2019-08-11 13:49:03.905714+00	67	Combination object (67)	3		9	1
463	2019-08-11 13:49:03.906304+00	66	Combination object (66)	3		9	1
464	2019-08-11 13:49:03.906895+00	65	Combination object (65)	3		9	1
465	2019-08-11 13:49:03.907483+00	64	Combination object (64)	3		9	1
466	2019-08-11 13:49:03.908069+00	63	Combination object (63)	3		9	1
467	2019-08-11 13:49:03.908656+00	62	Combination object (62)	3		9	1
468	2019-08-11 13:49:03.909353+00	61	Combination object (61)	3		9	1
469	2019-08-11 13:49:03.910004+00	60	Combination object (60)	3		9	1
470	2019-08-11 13:49:03.910646+00	59	Combination object (59)	3		9	1
471	2019-08-11 13:49:03.911315+00	58	Combination object (58)	3		9	1
472	2019-08-11 13:49:03.912851+00	57	Combination object (57)	3		9	1
473	2019-08-11 13:49:03.913549+00	56	Combination object (56)	3		9	1
474	2019-08-11 13:49:03.914164+00	55	Combination object (55)	3		9	1
475	2019-08-11 13:49:03.914763+00	54	Combination object (54)	3		9	1
476	2019-08-11 13:49:03.915359+00	53	Combination object (53)	3		9	1
477	2019-08-11 13:49:03.915951+00	52	Combination object (52)	3		9	1
478	2019-08-11 14:03:50.071206+00	79	Combination object (79)	3		9	1
479	2019-08-11 14:03:50.072923+00	78	Combination object (78)	3		9	1
480	2019-08-11 14:03:50.073867+00	77	Combination object (77)	3		9	1
481	2019-08-11 14:03:50.074801+00	76	Combination object (76)	3		9	1
482	2019-08-20 14:46:25.757358+00	99	Combination object (99)	3		9	1
483	2019-08-20 14:46:25.793121+00	98	Combination object (98)	3		9	1
484	2019-08-20 14:46:25.794045+00	97	Combination object (97)	3		9	1
485	2019-08-20 14:46:25.794977+00	96	Combination object (96)	3		9	1
486	2019-08-20 14:46:25.79574+00	95	Combination object (95)	3		9	1
487	2019-08-20 14:46:25.796389+00	94	Combination object (94)	3		9	1
488	2019-08-20 14:46:25.797034+00	93	Combination object (93)	3		9	1
489	2019-08-20 14:46:25.797905+00	92	Combination object (92)	3		9	1
490	2019-08-20 14:46:25.799065+00	91	Combination object (91)	3		9	1
491	2019-08-20 14:46:25.799875+00	90	Combination object (90)	3		9	1
492	2019-08-20 14:46:25.800496+00	89	Combination object (89)	3		9	1
493	2019-08-20 14:46:25.801095+00	88	Combination object (88)	3		9	1
494	2019-08-20 14:46:25.801799+00	87	Combination object (87)	3		9	1
495	2019-08-20 14:46:25.802399+00	86	Combination object (86)	3		9	1
496	2019-08-20 14:46:25.803865+00	85	Combination object (85)	3		9	1
497	2019-08-20 14:46:25.804734+00	84	Combination object (84)	3		9	1
498	2019-08-20 14:46:25.805385+00	83	Combination object (83)	3		9	1
499	2019-08-20 14:46:25.806059+00	82	Combination object (82)	3		9	1
500	2019-08-20 14:46:25.806689+00	81	Combination object (81)	3		9	1
501	2019-08-20 14:46:25.807298+00	80	Combination object (80)	3		9	1
502	2019-08-31 23:37:06.579172+00	1	every minute	1	[{"added": {}}]	11	1
503	2019-08-31 23:37:14.584972+00	1	hello: every minute	1	[{"added": {}}]	12	1
504	2019-09-08 04:37:18.132639+00	1	hello: every minute	2	[{"changed": {"fields": ["regtask", "task"]}}]	12	1
537	2019-09-08 04:39:01.058224+00	1	hello: every minute	2	[{"changed": {"fields": ["regtask", "task"]}}]	12	1
570	2019-09-08 13:41:00.85603+00	1	hello: every minute	2	[{"changed": {"fields": ["enabled"]}}]	12	1
571	2019-09-22 00:53:36.560618+00	4	StarHistory object (4)	1	[{"added": {}}]	17	1
\.


--
-- Data for Name: django_celery_beat_clockedschedule; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_celery_beat_clockedschedule (id, clocked_time, enabled) FROM stdin;
\.


--
-- Data for Name: django_celery_beat_crontabschedule; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_celery_beat_crontabschedule (id, minute, hour, day_of_week, day_of_month, month_of_year, timezone) FROM stdin;
1	0	4	*	*	*	UTC
\.


--
-- Data for Name: django_celery_beat_intervalschedule; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_celery_beat_intervalschedule (id, every, period) FROM stdin;
1	1	minutes
\.


--
-- Data for Name: django_celery_beat_periodictask; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_celery_beat_periodictask (id, name, task, args, kwargs, queue, exchange, routing_key, expires, enabled, last_run_at, total_run_count, date_changed, description, crontab_id, interval_id, solar_id, one_off, start_time, priority, headers, clocked_id) FROM stdin;
1	hello	core.tasks.hello	[]	{}	\N	\N	\N	\N	f	\N	368	2019-09-08 13:41:05.43328+00		\N	1	\N	f	\N	\N	{}	\N
2	celery.backend_cleanup	celery.backend_cleanup	[]	{}	\N	\N	\N	\N	t	2019-09-22 09:23:24.956587+00	14	2019-09-22 09:23:40.098426+00		1	\N	\N	f	\N	\N	{}	\N
\.


--
-- Data for Name: django_celery_beat_periodictasks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_celery_beat_periodictasks (ident, last_update) FROM stdin;
1	2019-09-22 00:32:14.389764+00
\.


--
-- Data for Name: django_celery_beat_solarschedule; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_celery_beat_solarschedule (id, event, latitude, longitude) FROM stdin;
\.


--
-- Data for Name: django_celery_results_taskresult; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_celery_results_taskresult (id, task_id, status, content_type, content_encoding, result, date_done, traceback, hidden, meta, task_args, task_kwargs, task_name) FROM stdin;
467	6b6fe14c-93b1-4595-ade6-e9303ce74263	SUCCESS	application/json	utf-8	null	2019-09-22 09:23:25.217166+00	\N	f	{"children": []}	()	{}	celery.backend_cleanup
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	core	repository
8	search	combination
9	chart	combination
10	django_celery_beat	crontabschedule
11	django_celery_beat	intervalschedule
12	django_celery_beat	periodictask
13	django_celery_beat	periodictasks
14	django_celery_beat	solarschedule
15	django_celery_beat	clockedschedule
16	django_celery_results	taskresult
17	core	starhistory
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2019-06-30 03:50:48.253396+00
2	auth	0001_initial	2019-06-30 03:50:48.299052+00
3	admin	0001_initial	2019-06-30 03:50:48.375873+00
4	admin	0002_logentry_remove_auto_add	2019-06-30 03:50:48.398739+00
5	admin	0003_logentry_add_action_flag_choices	2019-06-30 03:50:48.411369+00
6	contenttypes	0002_remove_content_type_name	2019-06-30 03:50:48.438601+00
7	auth	0002_alter_permission_name_max_length	2019-06-30 03:50:48.448738+00
8	auth	0003_alter_user_email_max_length	2019-06-30 03:50:48.463965+00
9	auth	0004_alter_user_username_opts	2019-06-30 03:50:48.475929+00
10	auth	0005_alter_user_last_login_null	2019-06-30 03:50:48.491333+00
11	auth	0006_require_contenttypes_0002	2019-06-30 03:50:48.498309+00
12	auth	0007_alter_validators_add_error_messages	2019-06-30 03:50:48.540779+00
13	auth	0008_alter_user_username_max_length	2019-06-30 03:50:48.559243+00
14	auth	0009_alter_user_last_name_max_length	2019-06-30 03:50:48.569882+00
15	auth	0010_alter_group_name_max_length	2019-06-30 03:50:48.581398+00
16	auth	0011_update_proxy_permissions	2019-06-30 03:50:48.594717+00
17	core	0001_initial	2019-06-30 03:50:48.607712+00
18	core	0002_auto_20190616_0645	2019-06-30 03:50:48.620038+00
19	core	0003_auto_20190616_0717	2019-06-30 03:50:48.626267+00
20	sessions	0001_initial	2019-06-30 03:50:48.636576+00
22	chart	0001_initial	2019-08-11 13:14:47.706942+00
23	chart	0002_auto_20190811_1252	2019-08-11 13:14:47.714013+00
24	chart	0003_auto_20190811_1311	2019-08-11 13:14:47.717454+00
25	chart	0002_auto_20190811_1347	2019-08-11 13:47:24.389849+00
26	django_celery_beat	0001_initial	2019-08-27 14:29:23.564923+00
27	django_celery_beat	0002_auto_20161118_0346	2019-08-27 14:29:23.64938+00
28	django_celery_beat	0003_auto_20161209_0049	2019-08-27 14:29:23.711375+00
29	django_celery_beat	0004_auto_20170221_0000	2019-08-27 14:29:23.737657+00
30	django_celery_beat	0005_add_solarschedule_events_choices	2019-08-27 14:29:23.764773+00
31	django_celery_beat	0006_auto_20180322_0932	2019-08-27 14:29:23.852933+00
32	django_celery_beat	0007_auto_20180521_0826	2019-08-27 14:29:23.940725+00
33	django_celery_beat	0008_auto_20180914_1922	2019-08-27 14:29:23.990904+00
34	django_celery_beat	0006_auto_20180210_1226	2019-08-27 14:29:24.035897+00
35	django_celery_beat	0006_periodictask_priority	2019-08-27 14:29:24.059097+00
36	django_celery_beat	0009_periodictask_headers	2019-08-27 14:29:24.159443+00
37	django_celery_beat	0010_auto_20190429_0326	2019-08-27 14:29:24.634334+00
38	django_celery_beat	0011_auto_20190508_0153	2019-08-27 14:29:24.689621+00
39	django_celery_results	0001_initial	2019-09-07 08:12:06.13424+00
40	django_celery_results	0002_add_task_name_args_kwargs	2019-09-07 08:12:06.163115+00
41	django_celery_results	0003_auto_20181106_1101	2019-09-07 08:12:06.17568+00
42	django_celery_results	0004_auto_20190516_0412	2019-09-07 08:12:06.237201+00
43	core	0004_starhistory	2019-09-22 00:29:05.335097+00
44	core	0005_auto_20190922_0040	2019-09-22 00:40:52.189867+00
45	core	0006_auto_20190922_0047	2019-09-22 00:47:34.5691+00
46	core	0007_auto_20190922_0049	2019-09-22 00:49:43.242674+00
47	core	0008_auto_20190922_0053	2019-09-22 00:53:22.676369+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
fl2nu4zl5knrty7afpnqo980fthkjsf8	MWI3MzJiNGE3NTEzZWE1NjJkOTM1OTNkYTZhNjc0Y2I3ZjMwZGY4ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzYzU3NDlkOWM3NmM1MmU3MWEzNTA2YmJiZmI3NzNjZGEwZmI1MTgwIn0=	2019-07-14 12:57:31.123263+00
8efxkcos19wj5iyg9kytb7z7fqg4pbo4	MWI3MzJiNGE3NTEzZWE1NjJkOTM1OTNkYTZhNjc0Y2I3ZjMwZGY4ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzYzU3NDlkOWM3NmM1MmU3MWEzNTA2YmJiZmI3NzNjZGEwZmI1MTgwIn0=	2019-08-08 14:34:20.290367+00
o202vb14wd2udhop7lx9ezop6n5ltuac	MWI3MzJiNGE3NTEzZWE1NjJkOTM1OTNkYTZhNjc0Y2I3ZjMwZGY4ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzYzU3NDlkOWM3NmM1MmU3MWEzNTA2YmJiZmI3NzNjZGEwZmI1MTgwIn0=	2019-08-23 23:24:11.310345+00
5iq7fmeik8by2rvtplsu8brxpvoigr8m	MWI3MzJiNGE3NTEzZWE1NjJkOTM1OTNkYTZhNjc0Y2I3ZjMwZGY4ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzYzU3NDlkOWM3NmM1MmU3MWEzNTA2YmJiZmI3NzNjZGEwZmI1MTgwIn0=	2019-09-08 00:17:28.688302+00
d9bzylyvs803yllzggr761z4kp7ivztn	ZDFhYTdjNjdmZWM4MWYwMTYwZmRmOTRiMGQxOTk4ZDhkMTMyOTJjZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzYzU3NDlkOWM3NmM1MmU3MWEzNTA2YmJiZmI3NzNjZGEwZmI1MTgwIiwiX2xhbmd1YWdlIjoiamEifQ==	2019-10-05 23:27:11.032672+00
\.


--
-- Data for Name: repository; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.repository (id, database_id, name_owner, avatar_url, resource_path, created_at_github, updated_at_github, fetched_at, language, star_count) FROM stdin;
405	28457823	freeCodeCamp/freeCodeCamp	https://avatars0.githubusercontent.com/u/9892522?v=4	/freeCodeCamp	2014-12-24 17:49:19+00	2019-07-06 07:30:08+00	2019-07-06 08:03:34.344343+00	JavaScript	303698
406	177736533	996icu/996.ICU	https://avatars3.githubusercontent.com/u/48942249?v=4	/996icu	2019-03-26 07:31:14+00	2019-07-06 07:55:52+00	2019-07-06 08:03:34.351291+00	Rust	246424
407	11730342	vuejs/vue	https://avatars1.githubusercontent.com/u/6128107?v=4	/vuejs	2013-07-29 03:24:51+00	2019-07-06 07:57:06+00	2019-07-06 08:03:34.353137+00	JavaScript	143019
408	2126244	twbs/bootstrap	https://avatars0.githubusercontent.com/u/2918581?v=4	/twbs	2011-07-29 21:19:00+00	2019-07-06 07:34:04+00	2019-07-06 08:03:34.355157+00	JavaScript	134410
409	10270250	facebook/react	https://avatars3.githubusercontent.com/u/69631?v=4	/facebook	2013-05-24 16:15:54+00	2019-07-06 08:01:57+00	2019-07-06 08:03:34.357321+00	JavaScript	132148
410	45717250	tensorflow/tensorflow	https://avatars1.githubusercontent.com/u/15658638?v=4	/tensorflow	2015-11-07 01:19:20+00	2019-07-06 07:55:05+00	2019-07-06 08:03:34.359018+00	C++	130419
411	13491895	EbookFoundation/free-programming-books	https://avatars0.githubusercontent.com/u/14127308?v=4	/EbookFoundation	2013-10-11 06:50:37+00	2019-07-06 07:23:46+00	2019-07-06 08:03:34.360767+00	nan	124999
412	21737465	sindresorhus/awesome	https://avatars1.githubusercontent.com/u/170270?v=4	/sindresorhus	2014-07-11 13:42:37+00	2019-07-06 07:53:46+00	2019-07-06 08:03:34.362532+00	nan	111580
413	14440270	getify/You-Dont-Know-JS	https://avatars1.githubusercontent.com/u/150330?v=4	/getify	2013-11-16 02:37:24+00	2019-07-06 07:47:06+00	2019-07-06 08:03:34.364349+00	nan	104458
414	291137	robbyrussell/oh-my-zsh	https://avatars2.githubusercontent.com/u/257?v=4	/robbyrussell	2009-08-28 18:15:37+00	2019-07-06 07:52:53+00	2019-07-06 08:03:34.366102+00	Shell	91379
415	6498492	airbnb/javascript	https://avatars3.githubusercontent.com/u/698437?v=4	/airbnb	2012-11-01 23:13:50+00	2019-07-06 06:52:31+00	2019-07-06 08:03:34.367897+00	JavaScript	86789
416	1062897	github/gitignore	https://avatars1.githubusercontent.com/u/9919?v=4	/github	2010-11-08 20:17:14+00	2019-07-06 07:51:43+00	2019-07-06 08:03:34.369628+00	nan	86151
417	943149	d3/d3	https://avatars1.githubusercontent.com/u/1562726?v=4	/d3	2010-09-27 17:22:42+00	2019-07-06 07:47:10+00	2019-07-06 08:03:34.371364+00	JavaScript	85728
418	85077558	kamranahmedse/developer-roadmap	https://avatars2.githubusercontent.com/u/4921183?v=4	/kamranahmedse	2017-03-15 13:45:52+00	2019-07-06 07:46:22+00	2019-07-06 08:03:34.373199+00	nan	83979
419	60493101	jwasham/coding-interview-university	https://avatars2.githubusercontent.com/u/3771963?v=4	/jwasham	2016-06-06 02:34:12+00	2019-07-06 07:43:40+00	2019-07-06 08:03:34.374997+00	nan	79313
420	41881900	microsoft/vscode	https://avatars2.githubusercontent.com/u/6154722?v=4	/microsoft	2015-09-03 20:23:38+00	2019-07-06 07:57:26+00	2019-07-06 08:03:34.376817+00	TypeScript	79257
421	29028775	facebook/react-native	https://avatars3.githubusercontent.com/u/69631?v=4	/facebook	2015-01-09 18:10:16+00	2019-07-06 07:55:03+00	2019-07-06 08:03:34.378582+00	JavaScript	78742
422	2325298	torvalds/linux	https://avatars0.githubusercontent.com/u/1024025?v=4	/torvalds	2011-09-04 22:48:12+00	2019-07-06 06:55:27+00	2019-07-06 08:03:34.380246+00	C	77078
423	9384267	electron/electron	https://avatars1.githubusercontent.com/u/13409222?v=4	/electron	2013-04-12 01:47:36+00	2019-07-06 06:26:56+00	2019-07-06 08:03:34.381976+00	C++	74855
424	121395510	CyC2018/CS-Notes	https://avatars3.githubusercontent.com/u/36260787?v=4	/CyC2018	2018-02-13 14:56:24+00	2019-07-06 07:57:45+00	2019-07-06 08:03:34.3838+00	Java	69691
425	21289110	vinta/awesome-python	https://avatars2.githubusercontent.com/u/652070?v=4	/vinta	2014-06-27 21:00:06+00	2019-07-06 07:48:38+00	2019-07-06 08:03:34.385588+00	Python	69564
426	63537249	facebook/create-react-app	https://avatars3.githubusercontent.com/u/69631?v=4	/facebook	2016-07-17 14:55:11+00	2019-07-06 07:57:13+00	2019-07-06 08:03:34.387596+00	JavaScript	69283
427	31792824	flutter/flutter	https://avatars3.githubusercontent.com/u/14101776?v=4	/flutter	2015-03-06 22:54:58+00	2019-07-06 07:34:07+00	2019-07-06 08:03:34.389465+00	Dart	69187
428	83222441	donnemartin/system-design-primer	https://avatars2.githubusercontent.com/u/5458997?v=4	/donnemartin	2017-02-26 16:15:28+00	2019-07-06 07:59:43+00	2019-07-06 08:03:34.391257+00	Python	68627
429	27193779	nodejs/node	https://avatars3.githubusercontent.com/u/9950313?v=4	/nodejs	2014-11-26 19:57:11+00	2019-07-06 06:17:55+00	2019-07-06 08:03:34.393116+00	JavaScript	62551
430	23088740	axios/axios	https://avatars1.githubusercontent.com/u/32372333?v=4	/axios	2014-08-18 22:30:27+00	2019-07-06 07:54:22+00	2019-07-06 08:03:34.394938+00	JavaScript	61636
431	2561582	daneden/animate.css	https://avatars3.githubusercontent.com/u/439365?v=4	/daneden	2011-10-12 10:07:38+00	2019-07-06 07:18:43+00	2019-07-06 08:03:34.396638+00	CSS	60551
432	23096959	golang/go	https://avatars3.githubusercontent.com/u/4314092?v=4	/golang	2014-08-19 04:33:40+00	2019-07-06 07:49:09+00	2019-07-06 08:03:34.398461+00	Go	60360
433	3470471	FortAwesome/Font-Awesome	https://avatars0.githubusercontent.com/u/1505683?v=4	/FortAwesome	2012-02-17 14:19:43+00	2019-07-06 07:42:39+00	2019-07-06 08:03:34.400285+00	JavaScript	60262
434	35955666	jlevy/the-art-of-command-line	https://avatars1.githubusercontent.com/u/2058167?v=4	/jlevy	2015-05-20 15:11:03+00	2019-07-06 07:31:42+00	2019-07-06 08:03:34.402056+00	nan	60201
435	460078	angular/angular.js	https://avatars3.githubusercontent.com/u/139426?v=4	/angular	2010-01-06 00:34:37+00	2019-07-06 01:50:47+00	2019-07-06 08:03:34.403815+00	JavaScript	59570
436	54346799	public-apis/public-apis	https://avatars0.githubusercontent.com/u/51121562?v=4	/public-apis	2016-03-20 23:49:42+00	2019-07-06 03:08:36+00	2019-07-06 08:03:34.405707+00	Python	58651
437	20580498	kubernetes/kubernetes	https://avatars2.githubusercontent.com/u/13629408?v=4	/kubernetes	2014-06-06 22:56:04+00	2019-07-06 08:01:18+00	2019-07-06 08:03:34.407697+00	Go	54953
438	51117837	tensorflow/models	https://avatars1.githubusercontent.com/u/15658638?v=4	/tensorflow	2016-02-05 01:15:20+00	2019-07-06 07:59:15+00	2019-07-06 08:03:34.409729+00	Python	54892
439	7691631	moby/moby	https://avatars1.githubusercontent.com/u/27259197?v=4	/moby	2013-01-18 18:10:57+00	2019-07-06 07:49:10+00	2019-07-06 08:03:34.411852+00	Go	54002
440	1863329	laravel/laravel	https://avatars3.githubusercontent.com/u/958072?v=4	/laravel	2011-06-08 03:06:08+00	2019-07-06 07:34:52+00	2019-07-06 08:03:34.413848+00	PHP	53341
441	576201	mrdoob/three.js	https://avatars0.githubusercontent.com/u/97088?v=4	/mrdoob	2010-03-23 18:58:01+00	2019-07-06 07:27:20+00	2019-07-06 08:03:34.415667+00	JavaScript	52872
442	1039520	ytdl-org/youtube-dl	https://avatars1.githubusercontent.com/u/48381040?v=4	/ytdl-org	2010-10-31 14:35:07+00	2019-07-06 07:16:15+00	2019-07-06 08:03:34.417458+00	Python	52280
443	14098069	justjavac/free-programming-books-zh_CN	https://avatars1.githubusercontent.com/u/359395?v=4	/justjavac	2013-11-04 01:59:19+00	2019-07-06 07:58:25+00	2019-07-06 08:03:34.419364+00	nan	51979
444	167174	jquery/jquery	https://avatars1.githubusercontent.com/u/70142?v=4	/jquery	2009-04-03 15:20:14+00	2019-07-06 07:43:00+00	2019-07-06 08:03:34.421182+00	JavaScript	51854
445	90796663	GoogleChrome/puppeteer	https://avatars3.githubusercontent.com/u/1778935?v=4	/GoogleChrome	2017-05-09 22:16:13+00	2019-07-06 07:54:22+00	2019-07-06 08:03:34.423023+00	JavaScript	51070
446	20929025	microsoft/TypeScript	https://avatars2.githubusercontent.com/u/6154722?v=4	/microsoft	2014-06-17 15:28:39+00	2019-07-06 07:49:00+00	2019-07-06 08:03:34.424835+00	TypeScript	51069
447	126577260	trekhleb/javascript-algorithms	https://avatars2.githubusercontent.com/u/3000285?v=4	/trekhleb	2018-03-24 07:47:04+00	2019-07-06 07:47:57+00	2019-07-06 08:03:34.426624+00	JavaScript	50645
448	3678731	webpack/webpack	https://avatars2.githubusercontent.com/u/2105791?v=4	/webpack	2012-03-10 10:08:14+00	2019-07-06 07:21:29+00	2019-07-06 08:03:34.428385+00	JavaScript	49764
449	63476337	TheAlgorithms/Python	https://avatars1.githubusercontent.com/u/20487725?v=4	/TheAlgorithms	2016-07-16 09:44:01+00	2019-07-06 07:55:04+00	2019-07-06 08:03:34.430151+00	Python	49583
450	36535156	reduxjs/redux	https://avatars3.githubusercontent.com/u/13142323?v=4	/reduxjs	2015-05-29 23:53:15+00	2019-07-06 06:52:59+00	2019-07-06 08:03:34.431946+00	JavaScript	49435
451	24195339	angular/angular	https://avatars3.githubusercontent.com/u/139426?v=4	/angular	2014-09-18 16:12:01+00	2019-07-06 07:36:29+00	2019-07-06 08:03:34.433829+00	TypeScript	49425
452	3228505	atom/atom	https://avatars2.githubusercontent.com/u/1089146?v=4	/atom	2012-01-20 18:18:21+00	2019-07-06 05:07:42+00	2019-07-06 08:03:34.435662+00	JavaScript	49224
453	22790488	iluwatar/java-design-patterns	https://avatars1.githubusercontent.com/u/582346?v=4	/iluwatar	2014-08-09 16:45:18+00	2019-07-06 07:20:29+00	2019-07-06 08:03:34.437368+00	Java	48837
454	23083156	mui-org/material-ui	https://avatars2.githubusercontent.com/u/33663932?v=4	/mui-org	2014-08-18 19:11:54+00	2019-07-06 07:58:07+00	2019-07-06 08:03:34.439272+00	JavaScript	48531
455	34526884	ant-design/ant-design	https://avatars3.githubusercontent.com/u/12101536?v=4	/ant-design	2015-04-24 15:37:24+00	2019-07-06 07:27:51+00	2019-07-06 08:03:34.441112+00	TypeScript	48464
456	44838949	apple/swift	https://avatars0.githubusercontent.com/u/10639145?v=4	/apple	2015-10-23 21:15:07+00	2019-07-06 07:21:19+00	2019-07-06 08:03:34.442921+00	C++	48426
457	100060912	microsoft/terminal	https://avatars2.githubusercontent.com/u/6154722?v=4	/microsoft	2017-08-11 18:38:22+00	2019-07-06 07:26:39+00	2019-07-06 08:03:34.444789+00	C++	48395
458	123458551	jackfrued/Python-100-Days	https://avatars0.githubusercontent.com/u/7474657?v=4	/jackfrued	2018-03-01 16:05:52+00	2019-07-06 08:03:06+00	2019-07-06 08:03:34.447116+00	Jupyter Notebook	47315
459	1861458	hakimel/reveal.js	https://avatars0.githubusercontent.com/u/629429?v=4	/hakimel	2011-06-07 18:54:22+00	2019-07-06 06:57:09+00	2019-07-06 08:03:34.448868+00	JavaScript	47159
460	132464395	Snailclimb/JavaGuide	https://avatars0.githubusercontent.com/u/29880145?v=4	/Snailclimb	2018-05-07 13:27:00+00	2019-07-06 07:58:21+00	2019-07-06 08:03:34.450588+00	Java	47158
461	557980	socketio/socket.io	https://avatars3.githubusercontent.com/u/10566080?v=4	/socketio	2010-03-11 18:24:48+00	2019-07-06 07:23:46+00	2019-07-06 08:03:34.452357+00	JavaScript	46843
462	44571718	vuejs/awesome-vue	https://avatars1.githubusercontent.com/u/6128107?v=4	/vuejs	2015-10-20 00:16:14+00	2019-07-06 07:48:06+00	2019-07-06 08:03:34.454381+00	nan	46719
463	112507086	30-seconds/30-seconds-of-code	https://avatars3.githubusercontent.com/u/43479428?v=4	/30-seconds	2017-11-29 17:35:03+00	2019-07-06 07:36:50+00	2019-07-06 08:03:34.456213+00	JavaScript	46528
464	132750724	danistefanovic/build-your-own-x	https://avatars3.githubusercontent.com/u/1736595?v=4	/danistefanovic	2018-05-09 12:03:18+00	2019-07-06 05:51:16+00	2019-07-06 08:03:34.458006+00	nan	45915
465	9309093	Semantic-Org/Semantic-UI	https://avatars0.githubusercontent.com/u/5796209?v=4	/Semantic-Org	2013-04-08 23:32:04+00	2019-07-06 07:14:38+00	2019-07-06 08:03:34.459665+00	JavaScript	45876
466	21540759	avelino/awesome-go	https://avatars2.githubusercontent.com/u/31996?v=4	/avelino	2014-07-06 13:42:15+00	2019-07-06 07:47:44+00	2019-07-06 08:03:34.461426+00	Go	45589
467	596892	pallets/flask	https://avatars3.githubusercontent.com/u/16748505?v=4	/pallets	2010-04-06 11:11:59+00	2019-07-06 07:10:00+00	2019-07-06 08:03:34.46323+00	Python	45135
468	33614304	nvbn/thefuck	https://avatars1.githubusercontent.com/u/1114542?v=4	/nvbn	2015-04-08 15:08:04+00	2019-07-06 07:38:46+00	2019-07-06 08:03:34.46495+00	Python	44634
469	237159	expressjs/express	https://avatars2.githubusercontent.com/u/5658226?v=4	/expressjs	2009-06-26 18:56:01+00	2019-07-06 07:39:10+00	2019-07-06 08:03:34.466655+00	JavaScript	44542
470	8843683	chartjs/Chart.js	https://avatars1.githubusercontent.com/u/10342521?v=4	/chartjs	2013-03-17 23:56:36+00	2019-07-06 03:16:05+00	2019-07-06 08:03:34.468613+00	JavaScript	44226
471	8514	rails/rails	https://avatars1.githubusercontent.com/u/4223?v=4	/rails	2008-04-11 02:19:47+00	2019-07-06 07:41:21+00	2019-07-06 08:03:34.470339+00	Ruby	43547
472	1380117	getlantern/lantern	https://avatars1.githubusercontent.com/u/624178?v=4	/getlantern	2011-02-17 22:12:29+00	2019-07-06 07:50:40+00	2019-07-06 08:03:34.472176+00	Go	43332
473	486550	h5bp/html5-boilerplate	https://avatars0.githubusercontent.com/u/1136800?v=4	/h5bp	2010-01-24 18:03:24+00	2019-07-05 21:19:50+00	2019-07-06 08:03:34.473957+00	JavaScript	43025
474	4164482	django/django	https://avatars2.githubusercontent.com/u/27804?v=4	/django	2012-04-28 02:47:18+00	2019-07-06 02:56:05+00	2019-07-06 08:03:34.475658+00	Python	42559
475	33015583	keras-team/keras	https://avatars0.githubusercontent.com/u/34455048?v=4	/keras-team	2015-03-28 00:35:42+00	2019-07-06 08:00:23+00	2019-07-06 08:03:34.477376+00	Python	42439
476	507775	elastic/elasticsearch	https://avatars0.githubusercontent.com/u/6764390?v=4	/elastic	2010-02-08 13:20:56+00	2019-07-06 07:43:28+00	2019-07-06 08:03:34.47904+00	Java	42369
477	3544424	jakubroztocil/httpie	https://avatars3.githubusercontent.com/u/326885?v=4	/jakubroztocil	2012-02-25 12:39:13+00	2019-07-06 05:42:06+00	2019-07-06 08:03:34.480787+00	Python	42216
478	19415064	ossu/computer-science	https://avatars2.githubusercontent.com/u/14957346?v=4	/ossu	2014-05-04 00:18:39+00	2019-07-06 07:32:41+00	2019-07-06 08:03:34.482593+00	nan	41982
479	1424470	moment/moment	https://avatars1.githubusercontent.com/u/4129662?v=4	/moment	2011-03-01 02:46:06+00	2019-07-06 06:52:35+00	2019-07-06 08:03:34.484312+00	JavaScript	41673
480	3402537	h5bp/Front-end-Developer-Interview-Questions	https://avatars0.githubusercontent.com/u/1136800?v=4	/h5bp	2012-02-09 23:34:10+00	2019-07-06 02:37:46+00	2019-07-06 08:03:34.486536+00	HTML	41282
481	1334369	resume/resume.github.com	https://avatars2.githubusercontent.com/u/602612?v=4	/resume	2011-02-06 13:39:55+00	2019-07-06 07:46:19+00	2019-07-06 08:03:34.488701+00	JavaScript	41248
482	14747598	typicode/json-server	https://avatars2.githubusercontent.com/u/5502029?v=4	/typicode	2013-11-27 13:21:13+00	2019-07-06 07:53:41+00	2019-07-06 08:03:34.490597+00	JavaScript	41159
483	3214406	meteor/meteor	https://avatars0.githubusercontent.com/u/789528?v=4	/meteor	2012-01-19 01:58:17+00	2019-07-05 21:00:50+00	2019-07-06 08:03:34.492355+00	JavaScript	41158
484	21872392	josephmisiti/awesome-machine-learning	https://avatars0.githubusercontent.com/u/246302?v=4	/josephmisiti	2014-07-15 19:11:19+00	2019-07-06 07:58:06+00	2019-07-06 08:03:34.494638+00	Python	40685
485	3955647	lodash/lodash	https://avatars3.githubusercontent.com/u/2565403?v=4	/lodash	2012-04-07 04:11:46+00	2019-07-06 07:40:46+00	2019-07-06 08:03:34.496562+00	JavaScript	40003
486	6296790	spring-projects/spring-boot	https://avatars0.githubusercontent.com/u/317776?v=4	/spring-projects	2012-10-19 15:02:57+00	2019-07-06 07:19:43+00	2019-07-06 08:03:34.498284+00	Java	39771
487	7508411	ReactiveX/RxJava	https://avatars1.githubusercontent.com/u/6407041?v=4	/ReactiveX	2013-01-08 20:11:48+00	2019-07-06 07:15:47+00	2019-07-06 08:03:34.500138+00	Java	39652
488	7600409	shadowsocks/shadowsocks-windows	https://avatars1.githubusercontent.com/u/3006190?v=4	/shadowsocks	2013-01-14 07:54:16+00	2019-07-06 07:45:26+00	2019-07-06 08:03:34.502079+00	C#	39412
489	10744183	netdata/netdata	https://avatars1.githubusercontent.com/u/43390781?v=4	/netdata	2013-06-17 18:39:10+00	2019-07-06 07:01:06+00	2019-07-06 08:03:34.503978+00	C	39359
490	54173593	storybookjs/storybook	https://avatars3.githubusercontent.com/u/22632046?v=4	/storybookjs	2016-03-18 04:23:44+00	2019-07-06 07:37:04+00	2019-07-06 08:03:34.505724+00	JavaScript	39298
491	1362490	kennethreitz/requests	https://avatars1.githubusercontent.com/u/47496974?v=4	/kennethreitz	2011-02-13 18:38:17+00	2019-07-06 07:48:09+00	2019-07-06 08:03:34.507485+00	Python	39222
492	1181927	bitcoin/bitcoin	https://avatars2.githubusercontent.com/u/528860?v=4	/bitcoin	2010-12-19 15:16:43+00	2019-07-06 06:23:00+00	2019-07-06 08:03:34.509289+00	C++	39136
493	4311796	adam-p/markdown-here	https://avatars0.githubusercontent.com/u/425687?v=4	/adam-p	2012-05-13 03:27:22+00	2019-07-06 04:37:00+00	2019-07-06 08:03:34.511176+00	JavaScript	39042
494	67274736	ElemeFE/element	https://avatars1.githubusercontent.com/u/12810740?v=4	/ElemeFE	2016-09-03 06:19:26+00	2019-07-06 07:51:59+00	2019-07-06 08:03:34.512935+00	Vue	38990
495	101296881	mtdvio/every-programmer-should-know	https://avatars1.githubusercontent.com/u/33053074?v=4	/mtdvio	2017-08-24 13:18:26+00	2019-07-06 07:31:48+00	2019-07-06 08:03:34.514674+00	nan	38960
496	70107786	zeit/next.js	https://avatars0.githubusercontent.com/u/14985020?v=4	/zeit	2016-10-05 23:32:51+00	2019-07-06 05:51:19+00	2019-07-06 08:03:34.516441+00	JavaScript	38620
497	12256376	ionic-team/ionic	https://avatars0.githubusercontent.com/u/3171503?v=4	/ionic-team	2013-08-20 23:06:02+00	2019-07-06 07:54:41+00	2019-07-06 08:03:34.518416+00	TypeScript	38500
498	24953448	google/material-design-icons	https://avatars1.githubusercontent.com/u/1342004?v=4	/google	2014-10-08 18:01:28+00	2019-07-06 07:44:57+00	2019-07-06 08:03:34.52031+00	CSS	38280
499	3638964	ansible/ansible	https://avatars2.githubusercontent.com/u/1507452?v=4	/ansible	2012-03-06 14:58:02+00	2019-07-06 07:53:39+00	2019-07-06 08:03:34.522157+00	Python	38166
500	65252	jekyll/jekyll	https://avatars0.githubusercontent.com/u/3083652?v=4	/jekyll	2008-10-20 06:29:03+00	2019-07-06 05:05:20+00	2019-07-06 08:03:34.523965+00	Ruby	38116
501	156018	antirez/redis	https://avatars0.githubusercontent.com/u/65632?v=4	/antirez	2009-03-21 22:32:25+00	2019-07-06 07:06:27+00	2019-07-06 08:03:34.525732+00	C	37361
502	724712	rust-lang/rust	https://avatars1.githubusercontent.com/u/5430905?v=4	/rust-lang	2010-06-16 20:39:03+00	2019-07-06 06:48:08+00	2019-07-06 08:03:34.527707+00	Rust	37274
503	19872456	ReactTraining/react-router	https://avatars1.githubusercontent.com/u/11823761?v=4	/ReactTraining	2014-05-16 22:22:51+00	2019-07-06 05:54:22+00	2019-07-06 08:03:34.529577+00	JavaScript	36815
504	88464704	PanJiaChen/vue-element-admin	https://avatars1.githubusercontent.com/u/8121621?v=4	/PanJiaChen	2017-04-17 03:35:49+00	2019-07-06 07:43:28+00	2019-07-06 08:03:34.53129+00	Vue	36515
505	26500787	tonsky/FiraCode	https://avatars3.githubusercontent.com/u/285292?v=4	/tonsky	2014-11-11 19:32:38+00	2019-07-06 08:01:29+00	2019-07-06 08:03:37.097783+00	Clojure	36340
506	11180687	gohugoio/hugo	https://avatars2.githubusercontent.com/u/29385237?v=4	/gohugoio	2013-07-04 15:26:26+00	2019-07-06 04:59:50+00	2019-07-06 08:03:37.100604+00	Go	36338
507	5108051	opencv/opencv	https://avatars3.githubusercontent.com/u/5009934?v=4	/opencv	2012-07-19 09:40:17+00	2019-07-06 07:42:29+00	2019-07-06 08:03:37.102415+00	C++	36229
508	49970642	yarnpkg/yarn	https://avatars3.githubusercontent.com/u/22247014?v=4	/yarnpkg	2016-01-19 17:39:16+00	2019-07-06 06:53:46+00	2019-07-06 08:03:37.10406+00	JavaScript	36210
509	36040894	gatsbyjs/gatsby	https://avatars1.githubusercontent.com/u/12551863?v=4	/gatsbyjs	2015-05-21 22:43:05+00	2019-07-06 07:21:46+00	2019-07-06 08:03:37.105743+00	JavaScript	36130
510	23974149	Dogfalo/materialize	https://avatars3.githubusercontent.com/u/2775751?v=4	/Dogfalo	2014-09-12 19:35:38+00	2019-07-06 07:42:44+00	2019-07-06 08:03:37.107327+00	JavaScript	36048
511	133442384	denoland/deno	https://avatars1.githubusercontent.com/u/42048915?v=4	/denoland	2018-05-15 01:34:26+00	2019-07-06 08:02:55+00	2019-07-06 08:03:37.108891+00	TypeScript	35999
512	843222	scikit-learn/scikit-learn	https://avatars2.githubusercontent.com/u/365630?v=4	/scikit-learn	2010-08-17 09:43:38+00	2019-07-06 06:12:04+00	2019-07-06 08:03:37.110446+00	Python	35940
513	612230	nvm-sh/nvm	https://avatars3.githubusercontent.com/u/49963700?v=4	/nvm-sh	2010-04-15 17:47:47+00	2019-07-06 04:21:47+00	2019-07-06 08:03:37.112034+00	Shell	35713
514	3100121	nwjs/nw.js	https://avatars1.githubusercontent.com/u/10180421?v=4	/nwjs	2012-01-04 06:21:10+00	2019-07-06 06:25:14+00	2019-07-06 08:03:37.113602+00	C++	35604
515	46629305	NARKOZ/hacker-scripts	https://avatars2.githubusercontent.com/u/253398?v=4	/NARKOZ	2015-11-21 19:05:09+00	2019-07-06 05:31:39+00	2019-07-06 08:03:37.115191+00	JavaScript	35588
516	50264296	jgthms/bulma	https://avatars1.githubusercontent.com/u/1254808?v=4	/jgthms	2016-01-23 23:48:34+00	2019-07-06 02:39:54+00	2019-07-06 08:03:37.116688+00	CSS	35561
517	81975372	kdn251/interviews	https://avatars1.githubusercontent.com/u/16903644?v=4	/kdn251	2017-02-14 18:19:25+00	2019-07-06 06:50:21+00	2019-07-06 08:03:37.118258+00	Java	35522
518	23357588	protocolbuffers/protobuf	https://avatars1.githubusercontent.com/u/26310541?v=4	/protocolbuffers	2014-08-26 15:52:15+00	2019-07-06 07:19:45+00	2019-07-06 08:03:37.119733+00	C++	35478
519	211666	nodejs/node-v0.x-archive	https://avatars3.githubusercontent.com/u/9950313?v=4	/nodejs	2009-05-27 16:29:46+00	2019-07-05 18:21:32+00	2019-07-06 08:03:37.1213+00	nan	35463
520	1700621	necolas/normalize.css	https://avatars2.githubusercontent.com/u/239676?v=4	/necolas	2011-05-04 10:20:25+00	2019-07-06 05:43:12+00	2019-07-06 08:03:37.122783+00	CSS	35461
521	15204860	papers-we-love/papers-we-love	https://avatars2.githubusercontent.com/u/6187757?v=4	/papers-we-love	2013-12-15 14:31:41+00	2019-07-06 06:28:58+00	2019-07-06 08:03:37.124351+00	nan	35213
522	28428729	wasabeef/awesome-android-ui	https://avatars2.githubusercontent.com/u/1833474?v=4	/wasabeef	2014-12-24 01:45:03+00	2019-07-06 02:38:27+00	2019-07-06 08:03:37.125809+00	nan	35194
523	9185792	apache/incubator-echarts	https://avatars0.githubusercontent.com/u/47359?v=4	/apache	2013-04-03 03:18:59+00	2019-07-06 07:37:11+00	2019-07-06 08:03:37.12737+00	JavaScript	35135
524	107111421	thedaviddias/Front-End-Checklist	https://avatars1.githubusercontent.com/u/237229?v=4	/thedaviddias	2017-10-16 10:12:36+00	2019-07-06 05:36:43+00	2019-07-06 08:03:37.12884+00	JavaScript	34920
525	3065454	impress/impress.js	https://avatars1.githubusercontent.com/u/5477410?v=4	/impress	2011-12-28 22:23:19+00	2019-07-06 05:43:57+00	2019-07-06 08:03:37.1304+00	JavaScript	34909
526	128398636	xingshaocheng/architect-awesome	https://avatars1.githubusercontent.com/u/4962837?v=4	/xingshaocheng	2018-04-06 13:30:58+00	2019-07-06 07:10:24+00	2019-07-06 08:03:37.131945+00	nan	34815
527	69629434	FreeCodeCampChina/freecodecamp.cn	https://avatars0.githubusercontent.com/u/18478284?v=4	/FreeCodeCampChina	2016-09-30 03:13:43+00	2019-07-06 07:55:12+00	2019-07-06 08:03:37.133579+00	CSS	34796
528	160640094	MisterBooo/LeetCodeAnimation	https://avatars1.githubusercontent.com/u/15308811?v=4	/MisterBooo	2018-12-06 08:01:22+00	2019-07-06 07:42:07+00	2019-07-06 08:03:37.135189+00	Java	34586
529	33791743	x64dbg/x64dbg	https://avatars2.githubusercontent.com/u/7937360?v=4	/x64dbg	2015-04-11 20:48:23+00	2019-07-06 07:05:18+00	2019-07-06 08:03:37.136823+00	C++	34016
530	26898879	awesomedata/awesome-public-datasets	https://avatars2.githubusercontent.com/u/35111974?v=4	/awesomedata	2014-11-20 06:20:50+00	2019-07-06 02:14:33+00	2019-07-06 08:03:37.138462+00	nan	33919
531	24560307	babel/babel	https://avatars1.githubusercontent.com/u/9637642?v=4	/babel	2014-09-28 13:38:23+00	2019-07-06 07:50:57+00	2019-07-06 08:03:37.139978+00	JavaScript	33730
532	529502	scrapy/scrapy	https://avatars0.githubusercontent.com/u/733635?v=4	/scrapy	2010-02-22 02:01:14+00	2019-07-06 03:18:55+00	2019-07-06 08:03:37.141503+00	Python	33471
533	5152285	square/okhttp	https://avatars0.githubusercontent.com/u/82592?v=4	/square	2012-07-23 13:42:55+00	2019-07-06 07:25:59+00	2019-07-06 08:03:37.143015+00	Java	33250
534	51148780	googlesamples/android-architecture	https://avatars3.githubusercontent.com/u/7378196?v=4	/googlesamples	2016-02-05 13:42:07+00	2019-07-06 07:15:01+00	2019-07-06 08:03:37.144546+00	nan	33133
535	36633370	Kickball/awesome-selfhosted	https://avatars1.githubusercontent.com/u/2252004?v=4	/Kickball	2015-06-01 02:33:17+00	2019-07-06 07:53:39+00	2019-07-06 08:03:37.145992+00	JavaScript	33091
536	892275	square/retrofit	https://avatars0.githubusercontent.com/u/82592?v=4	/square	2010-09-06 21:39:43+00	2019-07-06 05:36:23+00	2019-07-06 08:03:37.147494+00	Java	32938
537	40416236	minimaxir/big-list-of-naughty-strings	https://avatars1.githubusercontent.com/u/2179708?v=4	/minimaxir	2015-08-08 20:57:20+00	2019-07-05 23:48:10+00	2019-07-06 08:03:37.149186+00	Python	32655
538	75104123	prettier/prettier	https://avatars2.githubusercontent.com/u/25822731?v=4	/prettier	2016-11-29 17:13:37+00	2019-07-06 07:53:48+00	2019-07-06 08:03:37.15071+00	JavaScript	32617
539	20300177	google/guava	https://avatars1.githubusercontent.com/u/1342004?v=4	/google	2014-05-29 16:23:17+00	2019-07-06 06:25:39+00	2019-07-06 08:03:37.152135+00	Java	32487
540	45986162	aymericdamien/TensorFlow-Examples	https://avatars1.githubusercontent.com/u/10386605?v=4	/aymericdamien	2015-11-11 14:21:19+00	2019-07-06 07:07:40+00	2019-07-06 08:03:37.153709+00	Jupyter Notebook	32477
541	99598595	parcel-bundler/parcel	https://avatars1.githubusercontent.com/u/32607881?v=4	/parcel-bundler	2017-08-07 16:36:47+00	2019-07-06 06:21:29+00	2019-07-06 08:03:37.155402+00	JavaScript	32279
542	1828795	AFNetworking/AFNetworking	https://avatars2.githubusercontent.com/u/1181541?v=4	/AFNetworking	2011-05-31 21:28:44+00	2019-07-06 07:46:56+00	2019-07-06 08:03:37.157175+00	Objective-C	32278
543	21700699	vsouza/awesome-ios	https://avatars2.githubusercontent.com/u/484656?v=4	/vsouza	2014-07-10 16:03:45+00	2019-07-06 04:45:58+00	2019-07-06 08:03:37.158864+00	Swift	32208
544	22670857	enaqx/awesome-react	https://avatars1.githubusercontent.com/u/182219?v=4	/enaqx	2014-08-06 05:31:44+00	2019-07-06 06:16:57+00	2019-07-06 08:03:37.160412+00	nan	32017
545	16408992	neovim/neovim	https://avatars3.githubusercontent.com/u/6471485?v=4	/neovim	2014-01-31 13:39:22+00	2019-07-06 08:01:00+00	2019-07-06 08:03:37.162012+00	Vim script	31959
546	53809090	juliangarnier/anime	https://avatars3.githubusercontent.com/u/1268691?v=4	/juliangarnier	2016-03-13 21:37:45+00	2019-07-06 04:45:25+00	2019-07-06 08:03:37.163559+00	JavaScript	31628
547	29268051	google/material-design-lite	https://avatars1.githubusercontent.com/u/1342004?v=4	/google	2015-01-14 22:01:33+00	2019-07-06 06:14:49+00	2019-07-06 08:03:37.165366+00	HTML	31314
548	22458259	Alamofire/Alamofire	https://avatars3.githubusercontent.com/u/7774181?v=4	/Alamofire	2014-07-31 05:56:19+00	2019-07-06 07:27:30+00	2019-07-06 08:03:37.166986+00	Swift	31314
549	11167738	gulpjs/gulp	https://avatars0.githubusercontent.com/u/6200624?v=4	/gulpjs	2013-07-04 05:26:06+00	2019-07-05 21:46:10+00	2019-07-06 08:03:37.168532+00	JavaScript	31304
550	21737266	sindresorhus/awesome-nodejs	https://avatars1.githubusercontent.com/u/170270?v=4	/sindresorhus	2014-07-11 13:35:34+00	2019-07-06 07:51:21+00	2019-07-06 08:03:37.170107+00	nan	31050
551	103633984	i0natan/nodebestpractices	https://avatars2.githubusercontent.com/u/8571500?v=4	/i0natan	2017-09-15 08:33:19+00	2019-07-06 07:11:04+00	2019-07-06 08:03:37.171615+00	JavaScript	31044
552	5271882	astaxie/build-web-application-with-golang	https://avatars3.githubusercontent.com/u/233907?v=4	/astaxie	2012-08-02 11:49:35+00	2019-07-06 07:57:31+00	2019-07-06 08:03:37.173205+00	Go	30981
553	34302698	serverless/serverless	https://avatars0.githubusercontent.com/u/13742415?v=4	/serverless	2015-04-21 03:48:40+00	2019-07-06 07:16:07+00	2019-07-06 08:03:37.174736+00	JavaScript	30832
554	16752620	gogs/gogs	https://avatars0.githubusercontent.com/u/6656686?v=4	/gogs	2014-02-12 01:57:08+00	2019-07-06 05:25:17+00	2019-07-06 08:03:37.176377+00	Go	30787
555	4086616	shadowsocks/shadowsocks	https://avatars1.githubusercontent.com/u/3006190?v=4	/shadowsocks	2012-04-20 13:10:49+00	2019-07-06 06:13:16+00	2019-07-06 08:03:37.177956+00	Python	30712
556	1148753	spring-projects/spring-framework	https://avatars0.githubusercontent.com/u/317776?v=4	/spring-projects	2010-12-08 04:04:45+00	2019-07-06 07:04:51+00	2019-07-06 08:03:37.179568+00	Java	30530
557	18408635	chrislgarry/Apollo-11	https://avatars1.githubusercontent.com/u/2200898?v=4	/chrislgarry	2014-04-03 15:45:02+00	2019-07-06 07:39:28+00	2019-07-06 08:03:37.181216+00	Assembly	30522
558	9852918	TryGhost/Ghost	https://avatars3.githubusercontent.com/u/2178663?v=4	/TryGhost	2013-05-04 11:09:13+00	2019-07-06 02:16:31+00	2019-07-06 08:03:37.182825+00	JavaScript	30295
559	62367558	zeit/hyper	https://avatars0.githubusercontent.com/u/14985020?v=4	/zeit	2016-07-01 06:01:21+00	2019-07-06 08:00:53+00	2019-07-06 08:03:37.184431+00	JavaScript	30275
560	55076063	Hack-with-Github/Awesome-Hacking	https://avatars3.githubusercontent.com/u/18143746?v=4	/Hack-with-Github	2016-03-30 15:47:10+00	2019-07-06 02:51:54+00	2019-07-06 08:03:37.185962+00	nan	30182
561	22119721	k88hudson/git-flight-rules	https://avatars3.githubusercontent.com/u/1455535?v=4	/k88hudson	2014-07-22 20:35:09+00	2019-07-06 04:21:25+00	2019-07-06 08:03:37.187615+00	nan	30175
562	1129010	blueimp/jQuery-File-Upload	https://avatars2.githubusercontent.com/u/244586?v=4	/blueimp	2010-12-01 15:35:32+00	2019-07-05 09:25:04+00	2019-07-06 08:03:37.189195+00	JavaScript	30087
563	26689598	prakhar1989/awesome-courses	https://avatars1.githubusercontent.com/u/649249?v=4	/prakhar1989	2014-11-15 18:36:49+00	2019-07-06 06:54:55+00	2019-07-06 08:03:37.190868+00	nan	30047
564	63539055	jaywcjlove/awesome-mac	https://avatars1.githubusercontent.com/u/1680273?v=4	/jaywcjlove	2016-07-17 15:33:47+00	2019-07-06 07:05:45+00	2019-07-06 08:03:37.192663+00	JavaScript	29945
565	2935735	adobe/brackets	https://avatars2.githubusercontent.com/u/476009?v=4	/adobe	2011-12-07 21:14:40+00	2019-07-06 03:50:41+00	2019-07-06 08:03:37.194253+00	JavaScript	29900
566	10187082	Unitech/pm2	https://avatars0.githubusercontent.com/u/757747?v=4	/Unitech	2013-05-21 03:25:25+00	2019-07-06 04:18:36+00	2019-07-06 08:03:37.1958+00	JavaScript	29674
567	15111821	grafana/grafana	https://avatars0.githubusercontent.com/u/7195757?v=4	/grafana	2013-12-11 15:59:56+00	2019-07-06 06:51:31+00	2019-07-06 08:03:37.197273+00	TypeScript	29637
568	65600975	pytorch/pytorch	https://avatars3.githubusercontent.com/u/21003710?v=4	/pytorch	2016-08-13 05:26:41+00	2019-07-06 07:39:20+00	2019-07-06 08:03:37.198805+00	C++	29576
569	120538304	kelseyhightower/nocode	https://avatars2.githubusercontent.com/u/1123322?v=4	/kelseyhightower	2018-02-06 23:54:00+00	2019-07-06 07:30:02+00	2019-07-06 08:03:37.200369+00	Dockerfile	29562
570	15428480	ColorlibHQ/AdminLTE	https://avatars3.githubusercontent.com/u/39128121?v=4	/ColorlibHQ	2013-12-25 02:52:40+00	2019-07-06 06:02:54+00	2019-07-06 08:03:37.201907+00	HTML	29091
571	62607227	yangshun/tech-interview-handbook	https://avatars3.githubusercontent.com/u/1315101?v=4	/yangshun	2016-07-05 05:00:48+00	2019-07-06 07:33:57+00	2019-07-06 08:03:37.203409+00	JavaScript	28840
572	15653276	Trinea/android-open-project	https://avatars0.githubusercontent.com/u/1169522?v=4	/Trinea	2014-01-05 15:20:15+00	2019-07-06 06:39:25+00	2019-07-06 08:03:37.204979+00	nan	28822
573	20904437	gin-gonic/gin	https://avatars3.githubusercontent.com/u/7894478?v=4	/gin-gonic	2014-06-16 23:57:25+00	2019-07-06 07:38:57+00	2019-07-06 08:03:37.206487+00	Go	28821
574	7569578	discourse/discourse	https://avatars2.githubusercontent.com/u/3220138?v=4	/discourse	2013-01-12 00:25:55+00	2019-07-06 04:11:31+00	2019-07-06 08:03:37.208058+00	Ruby	28557
575	11177928	karan/Projects	https://avatars1.githubusercontent.com/u/3261985?v=4	/karan	2013-07-04 13:37:27+00	2019-07-05 21:14:02+00	2019-07-06 08:03:37.209558+00	nan	28490
576	12791642	BVLC/caffe	https://avatars2.githubusercontent.com/u/6182163?v=4	/BVLC	2013-09-12 18:39:48+00	2019-07-06 06:41:54+00	2019-07-06 08:03:37.211112+00	C++	28471
577	18708860	tiimgreen/github-cheat-sheet	https://avatars1.githubusercontent.com/u/4130574?v=4	/tiimgreen	2014-04-12 16:38:42+00	2019-07-06 01:54:18+00	2019-07-06 08:03:37.212695+00	nan	28467
578	52631841	gothinkster/realworld	https://avatars3.githubusercontent.com/u/8601733?v=4	/gothinkster	2016-02-26 20:49:53+00	2019-07-06 07:25:30+00	2019-07-06 08:03:37.214257+00	JavaScript	28380
579	3432266	JetBrains/kotlin	https://avatars2.githubusercontent.com/u/878437?v=4	/JetBrains	2012-02-13 17:29:58+00	2019-07-06 07:50:48+00	2019-07-06 08:03:37.215815+00	Kotlin	28244
580	47018239	MaximAbramchuck/awesome-interview-questions	https://avatars2.githubusercontent.com/u/5942002?v=4	/MaximAbramchuck	2015-11-28 09:48:17+00	2019-07-06 05:56:22+00	2019-07-06 08:03:37.217332+00	nan	28217
581	77189043	bailicangdu/vue2-elm	https://avatars2.githubusercontent.com/u/20297227?v=4	/bailicangdu	2016-12-23 01:49:20+00	2019-07-06 06:02:47+00	2019-07-06 08:03:37.218852+00	Vue	28189
582	2573058	zurb/foundation-sites	https://avatars2.githubusercontent.com/u/156122?v=4	/zurb	2011-10-13 23:05:42+00	2019-07-06 05:19:58+00	2019-07-06 08:03:37.22055+00	HTML	28176
583	29290473	XX-net/XX-Net	https://avatars2.githubusercontent.com/u/10395542?v=4	/XX-net	2015-01-15 09:35:51+00	2019-07-06 04:26:31+00	2019-07-06 08:03:37.222288+00	Python	28171
584	36502	git/git	https://avatars2.githubusercontent.com/u/18133?v=4	/git	2008-07-23 14:21:26+00	2019-07-06 05:33:05+00	2019-07-06 08:03:37.224136+00	C	28136
585	22887094	tesseract-ocr/tesseract	https://avatars2.githubusercontent.com/u/8401422?v=4	/tesseract-ocr	2014-08-12 18:04:59+00	2019-07-06 07:51:26+00	2019-07-06 08:03:37.225734+00	C++	28102
586	206084	Homebrew/legacy-homebrew	https://avatars2.githubusercontent.com/u/1503512?v=4	/Homebrew	2009-05-20 19:38:37+00	2019-07-06 07:55:01+00	2019-07-06 08:03:37.227348+00	nan	28087
587	147350463	leonardomso/33-js-concepts	https://avatars2.githubusercontent.com/u/8030067?v=4	/leonardomso	2018-09-04 13:27:04+00	2019-07-06 05:36:58+00	2019-07-06 08:03:37.228885+00	JavaScript	28035
588	21413198	immutable-js/immutable-js	https://avatars3.githubusercontent.com/u/46405934?v=4	/immutable-js	2014-07-02 06:02:29+00	2019-07-06 07:40:07+00	2019-07-06 08:03:37.230417+00	JavaScript	27748
589	19148949	PhilJay/MPAndroidChart	https://avatars1.githubusercontent.com/u/6759734?v=4	/PhilJay	2014-04-25 14:29:47+00	2019-07-06 07:54:01+00	2019-07-06 08:03:37.231941+00	Java	27744
590	4710920	apache/dubbo	https://avatars0.githubusercontent.com/u/47359?v=4	/apache	2012-06-19 07:56:02+00	2019-07-06 07:31:35+00	2019-07-06 08:03:37.23357+00	Java	27626
591	952189	jashkenas/backbone	https://avatars3.githubusercontent.com/u/4732?v=4	/jashkenas	2010-09-30 19:41:28+00	2019-07-06 05:40:46+00	2019-07-06 08:03:37.235245+00	JavaScript	27502
592	138839979	scutan90/DeepLearning-500-questions	https://avatars0.githubusercontent.com/u/31844692?v=4	/scutan90	2018-06-27 06:36:45+00	2019-07-06 07:57:45+00	2019-07-06 08:03:37.236947+00	nan	27483
593	12820537	lord/slate	https://avatars0.githubusercontent.com/u/1976330?v=4	/lord	2013-09-13 22:15:24+00	2019-07-06 04:25:06+00	2019-07-06 08:03:37.238541+00	JavaScript	27367
594	1663468	mozilla/pdf.js	https://avatars2.githubusercontent.com/u/131524?v=4	/mozilla	2011-04-26 06:32:03+00	2019-07-06 07:02:31+00	2019-07-06 08:03:37.240133+00	JavaScript	27179
595	5923215	hexojs/hexo	https://avatars0.githubusercontent.com/u/6375567?v=4	/hexojs	2012-09-23 15:17:08+00	2019-07-06 04:16:30+00	2019-07-06 08:03:37.241735+00	JavaScript	27095
596	14370955	sahat/hackathon-starter	https://avatars1.githubusercontent.com/u/544954?v=4	/sahat	2013-11-13 17:24:12+00	2019-07-06 07:56:57+00	2019-07-06 08:03:37.243416+00	JavaScript	26976
597	1200050	ariya/phantomjs	https://avatars1.githubusercontent.com/u/7288?v=4	/ariya	2010-12-27 08:18:58+00	2019-07-06 06:54:32+00	2019-07-06 08:03:37.244993+00	HTML	26879
598	12972263	alvarotrigo/fullPage.js	https://avatars3.githubusercontent.com/u/1706326?v=4	/alvarotrigo	2013-09-20 11:58:29+00	2019-07-06 07:56:27+00	2019-07-06 08:03:37.246674+00	JavaScript	26872
599	14712850	syncthing/syncthing	https://avatars0.githubusercontent.com/u/7628018?v=4	/syncthing	2013-11-26 09:48:21+00	2019-07-06 07:35:31+00	2019-07-06 08:03:37.248331+00	Go	26717
600	17375436	lukehoban/es6features	https://avatars1.githubusercontent.com/u/223467?v=4	/lukehoban	2014-03-03 18:29:30+00	2019-07-06 06:38:31+00	2019-07-06 08:03:37.250058+00	nan	26555
601	11551538	koajs/koa	https://avatars1.githubusercontent.com/u/5055057?v=4	/koajs	2013-07-20 18:53:45+00	2019-07-06 03:51:18+00	2019-07-06 08:03:37.251814+00	JavaScript	26542
602	83999700	sdmg15/Best-websites-a-programmer-should-visit	https://avatars1.githubusercontent.com/u/13077039?v=4	/sdmg15	2017-03-05 20:25:17+00	2019-07-06 07:04:18+00	2019-07-06 08:03:37.253469+00	nan	26518
603	11267509	bumptech/glide	https://avatars0.githubusercontent.com/u/423539?v=4	/bumptech	2013-07-08 22:52:33+00	2019-07-06 06:29:48+00	2019-07-06 08:03:37.255054+00	Java	26444
604	42751014	zenorocha/clipboard.js	https://avatars1.githubusercontent.com/u/398893?v=4	/zenorocha	2015-09-18 23:04:55+00	2019-07-06 06:51:53+00	2019-07-06 08:03:37.256583+00	JavaScript	26422
605	15062869	facebook/jest	https://avatars3.githubusercontent.com/u/69631?v=4	/facebook	2013-12-10 00:18:04+00	2019-07-06 08:01:54+00	2019-07-06 08:03:39.010983+00	JavaScript	26319
606	10865436	dypsilon/frontend-dev-bookmarks	https://avatars3.githubusercontent.com/u/425735?v=4	/dypsilon	2013-06-22 13:23:55+00	2019-07-06 05:35:24+00	2019-07-06 08:03:39.013307+00	nan	26069
607	27442967	fastlane/fastlane	https://avatars2.githubusercontent.com/u/11098337?v=4	/fastlane	2014-12-02 17:00:38+00	2019-07-06 07:19:23+00	2019-07-06 08:03:39.015243+00	Ruby	26012
608	70198875	airbnb/lottie-android	https://avatars3.githubusercontent.com/u/698437?v=4	/airbnb	2016-10-06 22:42:42+00	2019-07-06 07:53:10+00	2019-07-06 08:03:39.016969+00	Java	25953
609	11225014	etcd-io/etcd	https://avatars3.githubusercontent.com/u/41972792?v=4	/etcd-io	2013-07-06 21:57:21+00	2019-07-06 05:28:17+00	2019-07-06 08:03:39.018678+00	Go	25824
610	698041	caolan/async	https://avatars0.githubusercontent.com/u/5274?v=4	/caolan	2010-06-01 21:01:30+00	2019-07-05 21:08:21+00	2019-07-06 08:03:39.020669+00	JavaScript	25774
611	1844251	tastejs/todomvc	https://avatars0.githubusercontent.com/u/1733746?v=4	/tastejs	2011-06-03 19:56:33+00	2019-07-05 20:18:42+00	2019-07-06 08:03:39.022824+00	JavaScript	25580
612	10788737	codepath/android_guides	https://avatars1.githubusercontent.com/u/3710273?v=4	/codepath	2013-06-19 10:24:45+00	2019-07-06 07:54:09+00	2019-07-06 08:03:39.024677+00	nan	25541
613	5483330	soimort/you-get	https://avatars0.githubusercontent.com/u/342945?v=4	/soimort	2012-08-20 15:53:36+00	2019-07-06 07:46:00+00	2019-07-06 08:03:39.026513+00	Python	25524
614	56717493	joshbuchea/HEAD	https://avatars2.githubusercontent.com/u/1474361?v=4	/joshbuchea	2016-04-20 20:05:37+00	2019-07-05 15:20:46+00	2019-07-06 08:03:39.028314+00	nan	25437
615	667006	videojs/video.js	https://avatars2.githubusercontent.com/u/3287189?v=4	/videojs	2010-05-14 18:45:10+00	2019-07-06 07:04:26+00	2019-07-06 08:03:39.030315+00	JavaScript	25414
616	82227585	kamranahmedse/design-patterns-for-humans	https://avatars2.githubusercontent.com/u/4921183?v=4	/kamranahmedse	2017-02-16 21:24:39+00	2019-07-06 07:42:30+00	2019-07-06 08:03:39.032619+00	nan	25340
617	7741856	pixijs/pixi.js	https://avatars0.githubusercontent.com/u/5406849?v=4	/pixijs	2013-01-21 22:40:50+00	2019-07-06 07:16:51+00	2019-07-06 08:03:39.034551+00	JavaScript	25326
618	83844720	ageitgey/face_recognition	https://avatars1.githubusercontent.com/u/896692?v=4	/ageitgey	2017-03-03 21:52:39+00	2019-07-06 06:27:00+00	2019-07-06 08:03:39.036333+00	Python	25310
619	26516210	certbot/certbot	https://avatars2.githubusercontent.com/u/17889013?v=4	/certbot	2014-11-12 02:52:20+00	2019-07-06 00:39:35+00	2019-07-06 08:03:39.038501+00	Python	25302
620	75830968	exacity/deeplearningbook-chinese	https://avatars3.githubusercontent.com/u/24405523?v=4	/exacity	2016-12-07 11:46:51+00	2019-07-06 08:01:31+00	2019-07-06 08:03:39.040265+00	TeX	25290
621	81598961	python/cpython	https://avatars3.githubusercontent.com/u/1525981?v=4	/python	2017-02-10 19:23:51+00	2019-07-06 07:32:41+00	2019-07-06 08:03:39.042014+00	Python	25269
622	931135	Leaflet/Leaflet	https://avatars3.githubusercontent.com/u/2854298?v=4	/Leaflet	2010-09-22 16:57:44+00	2019-07-06 06:16:29+00	2019-07-06 08:03:39.043944+00	JavaScript	25193
623	48378947	fatedier/frp	https://avatars3.githubusercontent.com/u/7346661?v=4	/fatedier	2015-12-21 15:24:59+00	2019-07-06 07:47:03+00	2019-07-06 08:03:39.046427+00	Go	25089
624	9393759	photonstorm/phaser	https://avatars2.githubusercontent.com/u/164476?v=4	/photonstorm	2013-04-12 12:27:51+00	2019-07-06 07:49:28+00	2019-07-06 08:03:39.048709+00	JavaScript	25086
625	68957920	justjavac/awesome-wechat-weapp	https://avatars1.githubusercontent.com/u/359395?v=4	/justjavac	2016-09-22 20:04:48+00	2019-07-06 07:10:49+00	2019-07-06 08:03:39.050774+00	nan	25061
626	39464018	apache/incubator-superset	https://avatars0.githubusercontent.com/u/47359?v=4	/apache	2015-07-21 18:55:34+00	2019-07-06 03:19:18+00	2019-07-06 08:03:39.052976+00	JavaScript	25057
627	6838921	prometheus/prometheus	https://avatars3.githubusercontent.com/u/3380462?v=4	/prometheus	2012-11-24 11:14:12+00	2019-07-06 06:29:44+00	2019-07-06 08:03:39.054824+00	Go	24953
628	7190986	shadowsocks/shadowsocks-android	https://avatars1.githubusercontent.com/u/3006190?v=4	/shadowsocks	2012-12-16 13:40:29+00	2019-07-06 06:20:24+00	2019-07-06 08:03:39.056572+00	Kotlin	24670
629	65794292	styled-components/styled-components	https://avatars2.githubusercontent.com/u/20658825?v=4	/styled-components	2016-08-16 06:41:32+00	2019-07-06 07:52:50+00	2019-07-06 08:03:39.058397+00	JavaScript	24658
630	12888993	home-assistant/home-assistant	https://avatars3.githubusercontent.com/u/13844975?v=4	/home-assistant	2013-09-17 07:29:48+00	2019-07-06 07:45:21+00	2019-07-06 08:03:39.060138+00	Python	24651
631	349241	jashkenas/underscore	https://avatars3.githubusercontent.com/u/4732?v=4	/jashkenas	2009-10-25 18:31:06+00	2019-07-06 06:30:45+00	2019-07-06 08:03:39.061934+00	JavaScript	24644
632	32948863	jondot/awesome-react-native	https://avatars0.githubusercontent.com/u/83390?v=4	/jondot	2015-03-26 19:58:06+00	2019-07-06 04:39:59+00	2019-07-06 08:03:39.063786+00	JavaScript	24626
633	21600440	bayandin/awesome-awesomeness	https://avatars3.githubusercontent.com/u/864213?v=4	/bayandin	2014-07-08 05:44:19+00	2019-07-06 07:49:02+00	2019-07-06 08:03:39.065503+00	Ruby	24500
634	108252892	proxyee-down-org/proxyee-down	https://avatars2.githubusercontent.com/u/39588481?v=4	/proxyee-down-org	2017-10-25 10:07:27+00	2019-07-06 07:20:31+00	2019-07-06 08:03:39.067318+00	Java	24472
635	25315643	nylas/nylas-mail	https://avatars2.githubusercontent.com/u/4219865?v=4	/nylas	2014-10-16 18:29:12+00	2019-07-06 05:59:53+00	2019-07-06 08:03:39.069164+00	JavaScript	24395
636	136328388	imhuay/Algorithm_Interview_Notes-Chinese	https://avatars2.githubusercontent.com/u/13265495?v=4	/imhuay	2018-06-06 12:53:14+00	2019-07-06 06:34:50+00	2019-07-06 08:03:39.070944+00	Python	24261
637	63266213	open-guides/og-aws	https://avatars3.githubusercontent.com/u/17152571?v=4	/open-guides	2016-07-13 17:30:16+00	2019-07-06 05:27:36+00	2019-07-06 08:03:39.072819+00	Shell	24254
638	22362099	johnpapa/angular-styleguide	https://avatars2.githubusercontent.com/u/1202528?v=4	/johnpapa	2014-07-29 00:07:51+00	2019-07-06 07:55:43+00	2019-07-06 08:03:39.074558+00	nan	24202
639	151834062	doocs/advanced-java	https://avatars0.githubusercontent.com/u/43716716?v=4	/doocs	2018-10-06 11:38:30+00	2019-07-06 07:56:43+00	2019-07-06 08:03:39.076327+00	Java	24169
640	8575137	JakeWharton/butterknife	https://avatars0.githubusercontent.com/u/66577?v=4	/JakeWharton	2013-03-05 08:18:59+00	2019-07-06 07:45:46+00	2019-07-06 08:03:39.078101+00	Java	24148
641	14194174	alex/what-happens-when	https://avatars2.githubusercontent.com/u/772?v=4	/alex	2013-11-07 04:30:06+00	2019-07-05 21:42:18+00	2019-07-06 08:03:39.079862+00	nan	24132
642	139824423	Avik-Jain/100-Days-Of-ML-Code	https://avatars1.githubusercontent.com/u/30073708?v=4	/Avik-Jain	2018-07-05 09:11:43+00	2019-07-06 08:03:32+00	2019-07-06 08:03:39.081627+00	Python	24089
643	18049133	kenwheeler/slick	https://avatars2.githubusercontent.com/u/286616?v=4	/kenwheeler	2014-03-24 02:10:05+00	2019-07-06 07:23:09+00	2019-07-06 08:03:39.083434+00	JavaScript	24060
644	26066727	knsv/mermaid	https://avatars0.githubusercontent.com/u/5837277?v=4	/knsv	2014-11-01 23:52:32+00	2019-07-06 06:13:38+00	2019-07-06 08:03:39.085195+00	JavaScript	24002
645	64558143	Blankj/AndroidUtilCode	https://avatars3.githubusercontent.com/u/17978187?v=4	/Blankj	2016-07-30 18:18:32+00	2019-07-06 07:45:00+00	2019-07-06 08:03:39.086836+00	Java	23957
646	1903522	php/php-src	https://avatars2.githubusercontent.com/u/25158?v=4	/php	2011-06-16 01:52:25+00	2019-07-06 07:48:15+00	2019-07-06 08:03:39.088561+00	C	23886
647	10446890	bilibili/ijkplayer	https://avatars2.githubusercontent.com/u/12002442?v=4	/bilibili	2013-06-03 04:12:04+00	2019-07-06 07:52:36+00	2019-07-06 08:03:39.090468+00	C	23856
648	74791366	ryanmcdermott/clean-code-javascript	https://avatars1.githubusercontent.com/u/5114666?v=4	/ryanmcdermott	2016-11-25 22:25:41+00	2019-07-06 05:37:22+00	2019-07-06 08:03:39.092181+00	JavaScript	23777
649	317757	Modernizr/Modernizr	https://avatars3.githubusercontent.com/u/131060?v=4	/Modernizr	2009-09-25 20:13:23+00	2019-07-05 21:41:10+00	2019-07-06 08:03:39.094053+00	JavaScript	23763
650	15452919	ethereum/go-ethereum	https://avatars3.githubusercontent.com/u/6250754?v=4	/ethereum	2013-12-26 13:05:46+00	2019-07-06 06:11:47+00	2019-07-06 08:03:39.095822+00	Go	23753
651	3620194	select2/select2	https://avatars3.githubusercontent.com/u/8077542?v=4	/select2	2012-03-04 18:43:12+00	2019-07-06 06:16:38+00	2019-07-06 08:03:39.097598+00	JavaScript	23726
652	61929586	shengxinjing/programmer-job-blacklist	https://avatars1.githubusercontent.com/u/1905176?v=4	/shengxinjing	2016-06-25 06:09:10+00	2019-07-06 02:43:47+00	2019-07-06 08:03:39.099429+00	Shell	23469
653	41058054	isocpp/CppCoreGuidelines	https://avatars3.githubusercontent.com/u/13841574?v=4	/isocpp	2015-08-19 20:22:52+00	2019-07-06 07:19:35+00	2019-07-06 08:03:39.101292+00	Python	23386
654	70905478	floodsung/Deep-Learning-Papers-Reading-Roadmap	https://avatars0.githubusercontent.com/u/3880963?v=4	/floodsung	2016-10-14 11:49:48+00	2019-07-06 03:10:51+00	2019-07-06 08:03:39.103031+00	Python	23364
706	5532320	Polymer/polymer	https://avatars3.githubusercontent.com/u/2159051?v=4	/Polymer	2012-08-23 20:56:30+00	2019-07-06 06:44:30+00	2019-07-06 08:03:41.549162+00	HTML	21105
655	35866694	RocketChat/Rocket.Chat	https://avatars1.githubusercontent.com/u/12508788?v=4	/RocketChat	2015-05-19 07:36:09+00	2019-07-06 05:53:06+00	2019-07-06 08:03:39.105103+00	JavaScript	23292
656	5239185	quilljs/quill	https://avatars3.githubusercontent.com/u/7089101?v=4	/quilljs	2012-07-30 23:23:18+00	2019-07-06 08:00:49+00	2019-07-06 08:03:39.106983+00	JavaScript	23281
657	42408804	containous/traefik	https://avatars3.githubusercontent.com/u/16349663?v=4	/containous	2015-09-13 19:04:02+00	2019-07-06 07:44:19+00	2019-07-06 08:03:39.108767+00	Go	23212
658	32484381	ripienaar/free-for-dev	https://avatars0.githubusercontent.com/u/82342?v=4	/ripienaar	2015-03-18 21:06:26+00	2019-07-05 20:39:59+00	2019-07-06 08:03:39.110499+00	HTML	23197
659	34824499	square/leakcanary	https://avatars0.githubusercontent.com/u/82592?v=4	/square	2015-04-29 23:54:16+00	2019-07-06 03:43:59+00	2019-07-06 08:03:39.112271+00	Kotlin	23122
660	42283287	preactjs/preact	https://avatars3.githubusercontent.com/u/26872990?v=4	/preactjs	2015-09-11 02:40:18+00	2019-07-06 01:44:21+00	2019-07-06 08:03:39.114101+00	JavaScript	23079
661	15634981	godotengine/godot	https://avatars2.githubusercontent.com/u/6318500?v=4	/godotengine	2014-01-04 16:05:36+00	2019-07-06 08:03:02+00	2019-07-06 08:03:39.115855+00	C++	23061
662	6093316	DefinitelyTyped/DefinitelyTyped	https://avatars1.githubusercontent.com/u/3637556?v=4	/DefinitelyTyped	2012-10-05 16:39:45+00	2019-07-06 07:58:22+00	2019-07-06 08:03:39.117479+00	TypeScript	22990
663	2562751	zxing/zxing	https://avatars1.githubusercontent.com/u/1122572?v=4	/zxing	2011-10-12 14:07:27+00	2019-07-05 18:40:50+00	2019-07-06 08:03:39.119231+00	Java	22982
664	1283503	request/request	https://avatars1.githubusercontent.com/u/730467?v=4	/request	2011-01-23 01:25:14+00	2019-07-05 19:48:17+00	2019-07-06 08:03:39.120972+00	JavaScript	22902
665	15019962	tldr-pages/tldr	https://avatars1.githubusercontent.com/u/7366472?v=4	/tldr-pages	2013-12-08 07:34:43+00	2019-07-06 07:31:45+00	2019-07-06 08:03:39.122627+00	Python	22878
666	30969188	react-boilerplate/react-boilerplate	https://avatars2.githubusercontent.com/u/25323389?v=4	/react-boilerplate	2015-02-18 14:36:32+00	2019-07-05 15:57:13+00	2019-07-06 08:03:39.124728+00	JavaScript	22866
667	1644196	JuliaLang/julia	https://avatars0.githubusercontent.com/u/743164?v=4	/JuliaLang	2011-04-21 07:01:50+00	2019-07-06 05:57:21+00	2019-07-06 08:03:39.126556+00	Julia	22723
668	29207621	caddyserver/caddy	https://avatars2.githubusercontent.com/u/12955528?v=4	/caddyserver	2015-01-13 19:45:03+00	2019-07-06 07:11:46+00	2019-07-06 08:03:39.128362+00	Go	22649
669	28167802	Tencent/weui	https://avatars3.githubusercontent.com/u/18461506?v=4	/Tencent	2014-12-18 04:09:54+00	2019-07-06 06:00:58+00	2019-07-06 08:03:39.130375+00	CSS	22585
670	481366	nvie/gitflow	https://avatars0.githubusercontent.com/u/83844?v=4	/nvie	2010-01-20 23:14:12+00	2019-07-06 04:02:10+00	2019-07-06 08:03:39.132195+00	Shell	22503
671	13807606	junegunn/fzf	https://avatars2.githubusercontent.com/u/700826?v=4	/junegunn	2013-10-23 16:04:23+00	2019-07-06 06:46:32+00	2019-07-06 08:03:39.133963+00	Go	22500
672	17165658	apache/spark	https://avatars0.githubusercontent.com/u/47359?v=4	/apache	2014-02-25 08:00:08+00	2019-07-06 06:39:15+00	2019-07-06 08:03:39.135731+00	Scala	22494
673	45512989	xitu/gold-miner	https://avatars2.githubusercontent.com/u/10482599?v=4	/xitu	2015-11-04 03:29:13+00	2019-07-06 07:10:34+00	2019-07-06 08:03:39.137497+00	nan	22477
674	26783295	Kong/kong	https://avatars0.githubusercontent.com/u/962416?v=4	/Kong	2014-11-17 23:56:08+00	2019-07-06 07:24:38+00	2019-07-06 08:03:39.139489+00	Lua	22354
675	6452529	rethinkdb/rethinkdb	https://avatars3.githubusercontent.com/u/1229647?v=4	/rethinkdb	2012-10-30 05:37:47+00	2019-07-06 06:36:00+00	2019-07-06 08:03:39.141339+00	C++	22348
676	88011908	tuvtran/project-based-learning	https://avatars0.githubusercontent.com/u/13454011?v=4	/tuvtran	2017-04-12 05:07:46+00	2019-07-06 07:23:50+00	2019-07-06 08:03:39.143262+00	nan	22321
677	25136308	github/fetch	https://avatars1.githubusercontent.com/u/9919?v=4	/github	2014-10-13 00:26:19+00	2019-07-06 07:39:45+00	2019-07-06 08:03:39.145042+00	JavaScript	22284
678	128907699	iamkun/dayjs	https://avatars0.githubusercontent.com/u/17680888?v=4	/iamkun	2018-04-10 09:26:44+00	2019-07-06 07:40:23+00	2019-07-06 08:03:39.146849+00	JavaScript	22195
679	1631024	harvesthq/chosen	https://avatars1.githubusercontent.com/u/43635?v=4	/harvesthq	2011-04-18 15:07:41+00	2019-07-06 05:09:17+00	2019-07-06 08:03:39.148637+00	HTML	22089
680	70431106	ZuzooVn/machine-learning-for-software-engineers	https://avatars3.githubusercontent.com/u/1429230?v=4	/ZuzooVn	2016-10-09 21:20:25+00	2019-07-05 23:59:45+00	2019-07-06 08:03:39.150443+00	nan	22075
681	27729880	grpc/grpc	https://avatars1.githubusercontent.com/u/7802525?v=4	/grpc	2014-12-08 18:58:53+00	2019-07-06 01:59:27+00	2019-07-06 08:03:39.152174+00	C++	21958
682	14098121	aosabook/500lines	https://avatars0.githubusercontent.com/u/5631751?v=4	/aosabook	2013-11-04 02:02:53+00	2019-07-06 03:07:01+00	2019-07-06 08:03:39.153981+00	JavaScript	21917
683	2500088	gitlabhq/gitlabhq	https://avatars2.githubusercontent.com/u/1086321?v=4	/gitlabhq	2011-10-02 16:25:27+00	2019-07-05 23:00:21+00	2019-07-06 08:03:39.155745+00	Ruby	21887
684	36891867	angular/angular-cli	https://avatars3.githubusercontent.com/u/139426?v=4	/angular	2015-06-04 19:49:37+00	2019-07-06 07:37:48+00	2019-07-06 08:03:39.16318+00	TypeScript	21885
685	64355429	iview/iview	https://avatars3.githubusercontent.com/u/20693613?v=4	/iview	2016-07-28 01:52:59+00	2019-07-06 07:36:56+00	2019-07-06 08:03:39.165101+00	Vue	21846
686	60844036	shadowsocks/ShadowsocksX-NG	https://avatars1.githubusercontent.com/u/3006190?v=4	/shadowsocks	2016-06-10 11:49:00+00	2019-07-06 07:29:55+00	2019-07-06 08:03:39.167066+00	Swift	21763
687	2329766	mathiasbynens/dotfiles	https://avatars1.githubusercontent.com/u/81942?v=4	/mathiasbynens	2011-09-05 18:07:54+00	2019-07-05 18:44:30+00	2019-07-06 08:03:39.16894+00	Shell	21720
688	14705691	ziadoz/awesome-php	https://avatars0.githubusercontent.com/u/645637?v=4	/ziadoz	2013-11-26 03:14:19+00	2019-07-06 07:48:54+00	2019-07-06 08:03:39.170717+00	nan	21706
689	313419	SDWebImage/SDWebImage	https://avatars2.githubusercontent.com/u/33113626?v=4	/SDWebImage	2009-09-21 17:39:19+00	2019-07-05 15:27:26+00	2019-07-06 08:03:39.172427+00	Objective-C	21659
690	8681349	huginn/huginn	https://avatars3.githubusercontent.com/u/23225142?v=4	/huginn	2013-03-10 06:00:31+00	2019-07-06 01:54:36+00	2019-07-06 08:03:39.174336+00	Ruby	21655
691	58836534	algorithm-visualizer/algorithm-visualizer	https://avatars1.githubusercontent.com/u/38487505?v=4	/algorithm-visualizer	2016-05-15 00:27:45+00	2019-07-06 07:58:38+00	2019-07-06 08:03:39.176202+00	JavaScript	21652
692	48626335	vuejs/vue-cli	https://avatars1.githubusercontent.com/u/6128107?v=4	/vuejs	2015-12-26 23:11:20+00	2019-07-06 07:13:22+00	2019-07-06 08:03:39.177964+00	JavaScript	21574
693	29891188	standard/standard	https://avatars2.githubusercontent.com/u/29208316?v=4	/standard	2015-01-27 01:23:31+00	2019-07-06 07:48:03+00	2019-07-06 08:03:39.179672+00	JavaScript	21479
694	15585444	IanLunn/Hover	https://avatars1.githubusercontent.com/u/694641?v=4	/IanLunn	2014-01-02 14:27:35+00	2019-07-06 05:53:24+00	2019-07-06 08:03:39.181461+00	CSS	21444
695	114523184	crossoverJie/JCSprout	https://avatars3.githubusercontent.com/u/15684156?v=4	/crossoverJie	2017-12-17 09:06:50+00	2019-07-06 07:38:19+00	2019-07-06 08:03:39.183202+00	Java	21383
696	873328	getsentry/sentry	https://avatars0.githubusercontent.com/u/1396951?v=4	/getsentry	2010-08-30 22:06:41+00	2019-07-06 06:05:17+00	2019-07-06 08:03:39.184901+00	Python	21368
697	42956467	herrbischoff/awesome-macos-command-line	https://avatars1.githubusercontent.com/u/8957346?v=4	/herrbischoff	2015-09-22 19:37:55+00	2019-07-06 07:14:22+00	2019-07-06 08:03:39.186595+00	nan	21307
698	5070389	greenrobot/EventBus	https://avatars0.githubusercontent.com/u/242242?v=4	/greenrobot	2012-07-16 16:55:40+00	2019-07-06 04:37:01+00	2019-07-06 08:03:39.188553+00	Java	21247
699	32578467	danielgindi/Charts	https://avatars1.githubusercontent.com/u/366926?v=4	/danielgindi	2015-03-20 10:49:12+00	2019-07-06 03:11:58+00	2019-07-06 08:03:39.190308+00	Swift	21229
700	138393139	trimstray/the-book-of-secret-knowledge	https://avatars3.githubusercontent.com/u/31127917?v=4	/trimstray	2018-06-23 10:43:14+00	2019-07-06 07:47:07+00	2019-07-06 08:03:39.192092+00	nan	21184
701	2579314	fzaninotto/Faker	https://avatars3.githubusercontent.com/u/99944?v=4	/fzaninotto	2011-10-14 22:49:02+00	2019-07-06 06:59:11+00	2019-07-06 08:03:39.193939+00	PHP	21126
702	4578002	faif/python-patterns	https://avatars1.githubusercontent.com/u/1304661?v=4	/faif	2012-06-06 21:02:35+00	2019-07-06 07:08:07+00	2019-07-06 08:03:39.1959+00	Python	21118
703	13078968	postcss/postcss	https://avatars0.githubusercontent.com/u/8296347?v=4	/postcss	2013-09-24 23:06:48+00	2019-07-06 06:14:18+00	2019-07-06 08:03:39.19764+00	JavaScript	21110
704	21648001	akullpp/awesome-java	https://avatars3.githubusercontent.com/u/4538351?v=4	/akullpp	2014-07-09 10:12:43+00	2019-07-06 08:02:23+00	2019-07-06 08:03:39.199367+00	nan	21109
705	172953845	cdr/code-server	https://avatars2.githubusercontent.com/u/1375?v=4	/cdr	2019-02-27 16:50:41+00	2019-07-06 07:45:27+00	2019-07-06 08:03:41.547339+00	TypeScript	21109
707	458058	symfony/symfony	https://avatars3.githubusercontent.com/u/143937?v=4	/symfony	2010-01-04 14:21:21+00	2019-07-06 06:25:44+00	2019-07-06 08:03:41.550748+00	PHP	21099
708	3577919	astaxie/beego	https://avatars3.githubusercontent.com/u/233907?v=4	/astaxie	2012-02-29 02:32:08+00	2019-07-06 06:48:57+00	2019-07-06 08:03:41.552316+00	Go	21074
709	1801829	emberjs/ember.js	https://avatars2.githubusercontent.com/u/1253363?v=4	/emberjs	2011-05-25 23:39:40+00	2019-07-06 01:45:01+00	2019-07-06 08:03:41.553815+00	JavaScript	21073
710	71995937	nuxt/nuxt.js	https://avatars2.githubusercontent.com/u/23360933?v=4	/nuxt	2016-10-26 11:18:47+00	2019-07-06 07:08:31+00	2019-07-06 08:03:41.555373+00	JavaScript	21068
711	105919803	facebookresearch/Detectron	https://avatars0.githubusercontent.com/u/16943930?v=4	/facebookresearch	2017-10-05 17:32:00+00	2019-07-06 03:23:10+00	2019-07-06 08:03:41.556864+00	Python	20958
712	18280236	GitbookIO/gitbook	https://avatars0.githubusercontent.com/u/7111340?v=4	/GitbookIO	2014-03-31 03:01:56+00	2019-07-05 15:18:05+00	2019-07-06 08:03:41.55843+00	JavaScript	20941
713	3774328	wg/wrk	https://avatars2.githubusercontent.com/u/94529?v=4	/wg	2012-03-20 11:12:28+00	2019-07-06 07:27:49+00	2019-07-06 08:03:41.559915+00	C	20894
714	39176269	vuejs/vuex	https://avatars1.githubusercontent.com/u/6128107?v=4	/vuejs	2015-07-16 04:21:26+00	2019-07-06 07:36:04+00	2019-07-06 08:03:41.561472+00	JavaScript	20883
715	13840241	freeCodeCamp/devdocs	https://avatars0.githubusercontent.com/u/9892522?v=4	/freeCodeCamp	2013-10-24 18:16:07+00	2019-07-06 07:45:44+00	2019-07-06 08:03:41.562978+00	Ruby	20879
716	35969061	google/styleguide	https://avatars1.githubusercontent.com/u/1342004?v=4	/google	2015-05-20 19:18:59+00	2019-07-06 04:33:16+00	2019-07-06 08:03:41.564466+00	HTML	20830
717	11620669	CodeHubApp/CodeHub	https://avatars3.githubusercontent.com/u/31394933?v=4	/CodeHubApp	2013-07-23 22:19:57+00	2019-07-06 05:17:34+00	2019-07-06 08:03:41.565918+00	C#	20799
718	50447720	raywenderlich/swift-algorithm-club	https://avatars1.githubusercontent.com/u/4722515?v=4	/raywenderlich	2016-01-26 17:56:12+00	2019-07-06 06:26:29+00	2019-07-06 08:03:41.567458+00	Swift	20712
719	3757512	balderdashy/sails	https://avatars3.githubusercontent.com/u/1445252?v=4	/balderdashy	2012-03-18 19:46:15+00	2019-07-06 02:41:57+00	2019-07-06 08:03:41.568988+00	JavaScript	20650
720	122692377	houshanren/hangzhou_house_knowledge	https://avatars0.githubusercontent.com/u/6621875?v=4	/houshanren	2018-02-24 01:54:18+00	2019-07-06 07:49:10+00	2019-07-06 08:03:41.570555+00	CSS	20601
721	29887499	dkhamsing/open-source-ios-apps	https://avatars0.githubusercontent.com/u/4723115?v=4	/dkhamsing	2015-01-26 23:32:34+00	2019-07-06 06:17:18+00	2019-07-06 08:03:41.572056+00	Swift	20529
722	74293321	sveltejs/svelte	https://avatars1.githubusercontent.com/u/23617963?v=4	/sveltejs	2016-11-20 18:13:05+00	2019-07-06 07:31:22+00	2019-07-06 08:03:41.573683+00	TypeScript	20477
723	115478820	binhnguyennus/awesome-scalability	https://avatars2.githubusercontent.com/u/15001306?v=4	/binhnguyennus	2017-12-27 03:46:40+00	2019-07-06 07:53:31+00	2019-07-06 08:03:41.57519+00	nan	20413
724	21935031	fffaraz/awesome-cpp	https://avatars3.githubusercontent.com/u/895678?v=4	/fffaraz	2014-07-17 08:51:11+00	2019-07-06 06:25:52+00	2019-07-06 08:03:41.576756+00	nan	20379
725	94498635	dawnlabs/carbon	https://avatars2.githubusercontent.com/u/25232884?v=4	/dawnlabs	2017-06-16 02:50:28+00	2019-07-06 05:46:08+00	2019-07-06 08:03:41.578232+00	JavaScript	20364
726	114747226	deepfakes/faceswap	https://avatars3.githubusercontent.com/u/34667098?v=4	/deepfakes	2017-12-19 09:44:13+00	2019-07-06 07:15:52+00	2019-07-06 08:03:41.579794+00	Python	20304
727	3721224	nolimits4web/swiper	https://avatars2.githubusercontent.com/u/999588?v=4	/nolimits4web	2012-03-14 19:11:45+00	2019-07-06 01:50:01+00	2019-07-06 08:03:41.581284+00	JavaScript	20271
728	1864363	composer/composer	https://avatars2.githubusercontent.com/u/837015?v=4	/composer	2011-06-08 08:53:00+00	2019-07-06 01:55:11+00	2019-07-06 08:03:41.582858+00	PHP	20218
729	3602123	hammerjs/hammer.js	https://avatars1.githubusercontent.com/u/7997161?v=4	/hammerjs	2012-03-02 12:58:28+00	2019-07-05 09:35:07+00	2019-07-06 08:03:41.584446+00	JavaScript	20217
730	858127	pandas-dev/pandas	https://avatars2.githubusercontent.com/u/21206976?v=4	/pandas-dev	2010-08-24 01:37:33+00	2019-07-06 05:25:46+00	2019-07-06 08:03:41.586193+00	Python	20210
731	46273445	transloadit/uppy	https://avatars2.githubusercontent.com/u/125754?v=4	/transloadit	2015-11-16 12:32:33+00	2019-07-06 02:38:48+00	2019-07-06 08:03:41.587787+00	JavaScript	20166
732	38558578	jiahaog/nativefier	https://avatars3.githubusercontent.com/u/7111741?v=4	/jiahaog	2015-07-05 05:56:42+00	2019-07-06 07:22:56+00	2019-07-06 08:03:41.58935+00	JavaScript	20071
733	24635156	t4t5/sweetalert	https://avatars3.githubusercontent.com/u/2598660?v=4	/t4t5	2014-09-30 11:12:48+00	2019-07-05 18:32:25+00	2019-07-06 08:03:41.590978+00	TypeScript	20071
734	117372806	yangshun/front-end-interview-handbook	https://avatars3.githubusercontent.com/u/1315101?v=4	/yangshun	2018-01-13 19:40:08+00	2019-07-06 06:49:02+00	2019-07-06 08:03:41.592492+00	JavaScript	20065
735	9603240	pure-css/pure	https://avatars1.githubusercontent.com/u/23743443?v=4	/pure-css	2013-04-22 16:16:39+00	2019-07-05 22:18:43+00	2019-07-06 08:03:41.594192+00	HTML	20054
736	128624453	NervJS/taro	https://avatars1.githubusercontent.com/u/30794937?v=4	/NervJS	2018-04-08 09:32:26+00	2019-07-06 06:02:58+00	2019-07-06 08:03:41.59574+00	JavaScript	20010
737	1028340	ajaxorg/ace	https://avatars0.githubusercontent.com/u/168515?v=4	/ajaxorg	2010-10-27 10:43:36+00	2019-07-06 02:35:44+00	2019-07-06 08:03:41.597348+00	JavaScript	19997
738	308770	plataformatec/devise	https://avatars1.githubusercontent.com/u/127679?v=4	/plataformatec	2009-09-16 12:15:12+00	2019-07-05 18:30:04+00	2019-07-06 08:03:41.598946+00	Ruby	19987
739	995750	VundleVim/Vundle.vim	https://avatars1.githubusercontent.com/u/12930284?v=4	/VundleVim	2010-10-17 23:17:53+00	2019-07-06 02:56:52+00	2019-07-06 08:03:41.60051+00	Vim script	19946
740	67962648	vuetifyjs/vuetify	https://avatars3.githubusercontent.com/u/22138497?v=4	/vuetifyjs	2016-09-12 00:39:35+00	2019-07-06 07:26:30+00	2019-07-06 08:03:41.602106+00	JavaScript	19935
741	23069399	FezVrasta/bootstrap-material-design	https://avatars2.githubusercontent.com/u/5382443?v=4	/FezVrasta	2014-08-18 11:54:00+00	2019-07-05 23:46:29+00	2019-07-06 08:03:41.60382+00	CSS	19912
742	28751632	0xAX/linux-insides	https://avatars2.githubusercontent.com/u/2699235?v=4	/0xAX	2015-01-03 18:44:57+00	2019-07-05 10:01:27+00	2019-07-06 08:03:41.60545+00	Python	19863
743	1064563	netty/netty	https://avatars1.githubusercontent.com/u/473791?v=4	/netty	2010-11-09 09:22:21+00	2019-07-06 07:08:50+00	2019-07-06 08:03:41.606977+00	Java	19860
744	13584262	webtorrent/webtorrent	https://avatars0.githubusercontent.com/u/5800008?v=4	/webtorrent	2013-10-15 08:16:40+00	2019-07-06 05:19:17+00	2019-07-06 08:03:41.608538+00	JavaScript	19829
745	2541284	cheeriojs/cheerio	https://avatars3.githubusercontent.com/u/7230330?v=4	/cheeriojs	2011-10-09 04:23:20+00	2019-07-06 06:13:46+00	2019-07-06 08:03:41.610075+00	JavaScript	19829
746	32215970	mobxjs/mobx	https://avatars3.githubusercontent.com/u/17475736?v=4	/mobxjs	2015-03-14 14:31:38+00	2019-07-06 03:10:46+00	2019-07-06 08:03:41.611677+00	JavaScript	19775
747	95876775	elsewhencode/project-guidelines	https://avatars3.githubusercontent.com/u/7815827?v=4	/elsewhencode	2017-06-30 10:17:55+00	2019-07-06 03:43:51+00	2019-07-06 08:03:41.613213+00	JavaScript	19765
748	32665718	railsware/upterm	https://avatars0.githubusercontent.com/u/9354?v=4	/railsware	2015-03-22 07:00:24+00	2019-07-06 04:07:47+00	2019-07-06 08:03:41.614778+00	TypeScript	19744
749	101394335	ant-design/ant-design-pro	https://avatars3.githubusercontent.com/u/12101536?v=4	/ant-design	2017-08-25 10:40:44+00	2019-07-06 07:47:47+00	2019-07-06 08:03:41.616389+00	JavaScript	19744
750	25880891	facebook/flow	https://avatars3.githubusercontent.com/u/69631?v=4	/facebook	2014-10-28 17:17:45+00	2019-07-06 03:49:06+00	2019-07-06 08:03:41.617915+00	OCaml	19715
751	18275356	facebook/pop	https://avatars3.githubusercontent.com/u/69631?v=4	/facebook	2014-03-30 22:29:12+00	2019-07-06 06:56:49+00	2019-07-06 08:03:41.619511+00	Objective-C++	19701
752	2096579	markedjs/marked	https://avatars0.githubusercontent.com/u/19886934?v=4	/markedjs	2011-07-24 13:15:51+00	2019-07-06 04:11:35+00	2019-07-06 08:03:41.621013+00	JavaScript	19693
753	3122202	Reactive-Extensions/RxJS	https://avatars2.githubusercontent.com/u/984368?v=4	/Reactive-Extensions	2012-01-07 00:31:41+00	2019-07-06 05:40:50+00	2019-07-06 08:03:41.622772+00	JavaScript	19688
754	76838017	iina/iina	https://avatars1.githubusercontent.com/u/35151645?v=4	/iina	2016-12-19 07:18:45+00	2019-07-06 07:45:03+00	2019-07-06 08:03:41.624423+00	Swift	19664
755	3606624	ReactiveCocoa/ReactiveCocoa	https://avatars0.githubusercontent.com/u/3422977?v=4	/ReactiveCocoa	2012-03-02 22:11:24+00	2019-07-06 07:40:44+00	2019-07-06 08:03:41.625933+00	Swift	19577
756	41986369	pingcap/tidb	https://avatars3.githubusercontent.com/u/11855343?v=4	/pingcap	2015-09-06 04:01:52+00	2019-07-06 07:13:50+00	2019-07-06 08:03:41.62742+00	Go	19559
757	90528830	Solido/awesome-flutter	https://avatars3.githubusercontent.com/u/1295961?v=4	/Solido	2017-05-07 11:45:27+00	2019-07-06 07:53:03+00	2019-07-06 08:03:41.629035+00	Dart	19523
758	667561	Marak/faker.js	https://avatars2.githubusercontent.com/u/70011?v=4	/Marak	2010-05-15 00:53:07+00	2019-07-05 22:35:13+00	2019-07-06 08:03:41.630567+00	JavaScript	19496
759	23736449	VincentGarreau/particles.js	https://avatars3.githubusercontent.com/u/961898?v=4	/VincentGarreau	2014-09-06 14:29:47+00	2019-07-06 03:31:32+00	2019-07-06 08:03:41.632021+00	JavaScript	19420
760	138547797	FiloSottile/mkcert	https://avatars1.githubusercontent.com/u/1225294?v=4	/FiloSottile	2018-06-25 05:33:03+00	2019-07-06 02:35:00+00	2019-07-06 08:03:41.633516+00	Go	19369
761	4037197	ycm-core/YouCompleteMe	https://avatars0.githubusercontent.com/u/52140259?v=4	/ycm-core	2012-04-16 03:12:14+00	2019-07-06 06:21:09+00	2019-07-06 08:03:41.635042+00	Python	19321
762	18840003	kriasoft/react-starter-kit	https://avatars2.githubusercontent.com/u/773036?v=4	/kriasoft	2014-04-16 13:08:18+00	2019-07-05 15:57:29+00	2019-07-06 08:03:41.636557+00	JavaScript	19307
763	19141383	fouber/blog	https://avatars0.githubusercontent.com/u/536297?v=4	/fouber	2014-04-25 09:44:42+00	2019-07-06 07:21:58+00	2019-07-06 08:03:41.63811+00	nan	19289
764	60325062	terryum/awesome-deep-learning-papers	https://avatars3.githubusercontent.com/u/12528769?v=4	/terryum	2016-06-03 06:48:30+00	2019-07-06 02:49:48+00	2019-07-06 08:03:41.639577+00	TeX	19231
765	8859474	skylot/jadx	https://avatars3.githubusercontent.com/u/118523?v=4	/skylot	2013-03-18 17:08:21+00	2019-07-06 02:42:54+00	2019-07-06 08:03:41.641094+00	Java	19198
766	6007295	fxsjy/jieba	https://avatars3.githubusercontent.com/u/167837?v=4	/fxsjy	2012-09-29 07:52:01+00	2019-07-06 05:59:44+00	2019-07-06 08:03:41.642633+00	Python	19185
767	158703981	lib-pku/libpku	https://avatars0.githubusercontent.com/u/44827603?v=4	/lib-pku	2018-11-22 13:33:06+00	2019-07-06 07:47:39+00	2019-07-06 08:03:41.644184+00	TeX	19174
768	790359	sequelize/sequelize	https://avatars0.githubusercontent.com/u/3591786?v=4	/sequelize	2010-07-22 07:11:11+00	2019-07-06 00:40:43+00	2019-07-06 08:03:41.645713+00	JavaScript	19152
769	12244426	rstacruz/nprogress	https://avatars1.githubusercontent.com/u/74385?v=4	/rstacruz	2013-08-20 13:58:02+00	2019-07-06 06:41:21+00	2019-07-06 08:03:41.647345+00	JavaScript	19147
770	33895378	bevacqua/dragula	https://avatars3.githubusercontent.com/u/934293?v=4	/bevacqua	2015-04-13 21:35:38+00	2019-07-06 07:46:43+00	2019-07-06 08:03:41.648914+00	JavaScript	19104
771	32247847	ReactiveX/rxjs	https://avatars1.githubusercontent.com/u/6407041?v=4	/ReactiveX	2015-03-15 06:17:10+00	2019-07-06 07:38:43+00	2019-07-06 08:03:41.650501+00	TypeScript	19064
772	597879	Automattic/mongoose	https://avatars1.githubusercontent.com/u/887802?v=4	/Automattic	2010-04-06 21:39:05+00	2019-07-06 04:10:36+00	2019-07-06 08:03:41.652049+00	JavaScript	18939
773	3482588	danielmiessler/SecLists	https://avatars0.githubusercontent.com/u/50654?v=4	/danielmiessler	2012-02-19 01:30:18+00	2019-07-06 07:45:05+00	2019-07-06 08:03:41.653531+00	PHP	18928
774	41912791	v2ray/v2ray-core	https://avatars2.githubusercontent.com/u/14110142?v=4	/v2ray	2015-09-04 11:42:53+00	2019-07-06 07:29:53+00	2019-07-06 08:03:41.655048+00	Go	18890
775	113752225	tipsy/profile-summary-for-github	https://avatars3.githubusercontent.com/u/1521451?v=4	/tipsy	2017-12-10 13:29:15+00	2019-07-05 19:25:01+00	2019-07-06 08:03:41.656544+00	Vue	18815
776	103953059	mbeaudru/modern-js-cheatsheet	https://avatars1.githubusercontent.com/u/8942633?v=4	/mbeaudru	2017-09-18 14:56:00+00	2019-07-06 05:37:10+00	2019-07-06 08:03:41.658036+00	nan	18780
777	1580851	dimsemenov/PhotoSwipe	https://avatars2.githubusercontent.com/u/1061115?v=4	/dimsemenov	2011-04-07 05:46:29+00	2019-07-05 15:27:08+00	2019-07-06 08:03:41.659525+00	JavaScript	18767
778	42920477	sentsin/layui	https://avatars2.githubusercontent.com/u/3277200?v=4	/sentsin	2015-09-22 08:12:03+00	2019-07-06 06:54:32+00	2019-07-06 08:03:41.661003+00	JavaScript	18727
779	16607898	drone/drone	https://avatars1.githubusercontent.com/u/2181346?v=4	/drone	2014-02-07 07:54:44+00	2019-07-06 06:58:41+00	2019-07-06 08:03:41.662485+00	Go	18717
780	65388917	jakevdp/PythonDataScienceHandbook	https://avatars0.githubusercontent.com/u/781659?v=4	/jakevdp	2016-08-10 14:24:36+00	2019-07-06 05:10:02+00	2019-07-06 08:03:41.664087+00	Jupyter Notebook	18715
781	16677706	kahun/awesome-sysadmin	https://avatars0.githubusercontent.com/u/122979?v=4	/kahun	2014-02-09 22:39:20+00	2019-07-06 04:07:54+00	2019-07-06 08:03:41.665814+00	nan	18699
782	11276147	cmderdev/cmder	https://avatars2.githubusercontent.com/u/11646750?v=4	/cmderdev	2013-07-09 07:44:22+00	2019-07-06 03:53:18+00	2019-07-06 08:03:41.667803+00	C++	18696
783	63484632	facebookresearch/fastText	https://avatars0.githubusercontent.com/u/16943930?v=4	/facebookresearch	2016-07-16 13:38:42+00	2019-07-06 04:05:50+00	2019-07-06 08:03:41.669376+00	HTML	18672
784	3431083	BradLarson/GPUImage	https://avatars0.githubusercontent.com/u/954279?v=4	/BradLarson	2012-02-13 15:20:02+00	2019-07-05 16:33:26+00	2019-07-06 08:03:41.670858+00	Objective-C	18666
785	156157055	GokuMohandas/practicalAI	https://avatars0.githubusercontent.com/u/8000987?v=4	/GokuMohandas	2018-11-05 03:44:27+00	2019-07-06 06:11:08+00	2019-07-06 08:03:41.672478+00	Jupyter Notebook	18659
786	20429943	SwiftGGTeam/the-swift-programming-language-in-chinese	https://avatars1.githubusercontent.com/u/13672422?v=4	/SwiftGGTeam	2014-06-03 04:44:09+00	2019-07-06 02:18:46+00	2019-07-06 08:03:41.6741+00	CSS	18650
787	481872	hashicorp/vagrant	https://avatars2.githubusercontent.com/u/761456?v=4	/hashicorp	2010-01-21 08:34:27+00	2019-07-06 07:13:56+00	2019-07-06 08:03:41.675579+00	Ruby	18638
788	20965586	SwiftyJSON/SwiftyJSON	https://avatars1.githubusercontent.com/u/8858017?v=4	/SwiftyJSON	2014-06-18 14:41:15+00	2019-07-06 08:00:54+00	2019-07-06 08:03:41.677059+00	Swift	18621
789	23783375	geekcompany/ResumeSample	https://avatars1.githubusercontent.com/u/7380510?v=4	/geekcompany	2014-09-08 08:08:13+00	2019-07-06 03:34:22+00	2019-07-06 08:03:41.678536+00	nan	18602
790	18511024	google/web-starter-kit	https://avatars1.githubusercontent.com/u/1342004?v=4	/google	2014-04-07 08:45:18+00	2019-07-06 04:22:53+00	2019-07-06 08:03:41.680011+00	HTML	18581
791	1481305	realpython/python-guide	https://avatars1.githubusercontent.com/u/5448020?v=4	/realpython	2011-03-15 03:24:20+00	2019-07-06 02:48:20+00	2019-07-06 08:03:41.681515+00	Batchfile	18521
792	7607075	CamDavidsonPilon/Probabilistic-Programming-and-Bayesian-Methods-for-Hackers	https://avatars3.githubusercontent.com/u/884032?v=4	/CamDavidsonPilon	2013-01-14 15:46:28+00	2019-07-06 05:06:00+00	2019-07-06 08:03:41.682971+00	Jupyter Notebook	18512
793	958314	remy/nodemon	https://avatars0.githubusercontent.com/u/13700?v=4	/remy	2010-10-03 12:50:52+00	2019-07-06 07:41:39+00	2019-07-06 08:03:41.684624+00	JavaScript	18493
794	74175805	istio/istio	https://avatars1.githubusercontent.com/u/23534644?v=4	/istio	2016-11-18 23:57:21+00	2019-07-06 05:57:54+00	2019-07-06 08:03:41.686128+00	Go	18448
795	4484451	amix/vimrc	https://avatars1.githubusercontent.com/u/184462?v=4	/amix	2012-05-29 16:19:29+00	2019-07-06 07:19:28+00	2019-07-06 08:03:41.687616+00	Vim script	18423
796	46622323	nefe/You-Dont-Need-jQuery	https://avatars2.githubusercontent.com/u/33238961?v=4	/nefe	2015-11-21 16:02:26+00	2019-07-06 04:08:10+00	2019-07-06 08:03:41.689094+00	JavaScript	18386
797	24841635	date-fns/date-fns	https://avatars2.githubusercontent.com/u/14921202?v=4	/date-fns	2014-10-06 10:24:22+00	2019-07-06 00:05:18+00	2019-07-06 08:03:41.690559+00	JavaScript	18383
798	12670444	petkaantonov/bluebird	https://avatars2.githubusercontent.com/u/829734?v=4	/petkaantonov	2013-09-07 19:39:57+00	2019-07-06 02:47:06+00	2019-07-06 08:03:41.691964+00	JavaScript	18378
799	734934	pugjs/pug	https://avatars1.githubusercontent.com/u/9338635?v=4	/pugjs	2010-06-23 01:05:42+00	2019-07-05 18:31:10+00	2019-07-06 08:03:41.69347+00	JavaScript	18377
800	119811010	tabler/tabler	https://avatars0.githubusercontent.com/u/35471246?v=4	/tabler	2018-02-01 09:08:59+00	2019-07-06 05:05:44+00	2019-07-06 08:03:41.694914+00	JavaScript	18324
801	49016322	angular/components	https://avatars3.githubusercontent.com/u/139426?v=4	/angular	2016-01-04 18:50:02+00	2019-07-06 07:36:37+00	2019-07-06 08:03:41.696328+00	TypeScript	18308
802	2700474	alibaba/fastjson	https://avatars1.githubusercontent.com/u/1961952?v=4	/alibaba	2011-11-03 06:58:52+00	2019-07-06 05:51:00+00	2019-07-06 08:03:41.69783+00	Java	18305
803	2810455	ggreer/the_silver_searcher	https://avatars1.githubusercontent.com/u/200121?v=4	/ggreer	2011-11-19 19:50:47+00	2019-07-06 06:45:56+00	2019-07-06 08:03:41.699356+00	C	18299
804	3755875	Prinzhorn/skrollr	https://avatars0.githubusercontent.com/u/679144?v=4	/Prinzhorn	2012-03-18 15:41:35+00	2019-07-05 23:36:21+00	2019-07-06 08:03:41.700982+00	HTML	18264
805	61893399	brillout/awesome-react-components	https://avatars2.githubusercontent.com/u/1005638?v=4	/brillout	2016-06-24 15:19:33+00	2019-07-06 07:13:19+00	2019-07-06 08:03:43.85542+00	nan	18251
806	47071941	redux-saga/redux-saga	https://avatars2.githubusercontent.com/u/24776643?v=4	/redux-saga	2015-11-29 16:58:12+00	2019-07-06 07:53:30+00	2019-07-06 08:03:43.857959+00	JavaScript	18230
807	60710553	FallibleInc/security-guide-for-developers	https://avatars2.githubusercontent.com/u/14805662?v=4	/FallibleInc	2016-06-08 15:56:25+00	2019-07-06 06:15:20+00	2019-07-06 08:03:43.859644+00	nan	18226
808	73681508	Tencent/wepy	https://avatars3.githubusercontent.com/u/18461506?v=4	/Tencent	2016-11-14 08:06:56+00	2019-07-06 06:45:15+00	2019-07-06 08:03:43.861263+00	JavaScript	18218
809	18044526	StreisandEffect/streisand	https://avatars2.githubusercontent.com/u/32347203?v=4	/StreisandEffect	2014-03-23 21:56:19+00	2019-07-06 05:28:52+00	2019-07-06 08:03:43.862849+00	Shell	18203
810	23095954	ReactiveX/RxAndroid	https://avatars1.githubusercontent.com/u/6407041?v=4	/ReactiveX	2014-08-19 03:46:38+00	2019-07-06 06:06:33+00	2019-07-06 08:03:43.86438+00	Java	18202
811	53238813	Homebrew/brew	https://avatars2.githubusercontent.com/u/1503512?v=4	/Homebrew	2016-03-06 05:08:38+00	2019-07-06 06:38:31+00	2019-07-06 08:03:43.865967+00	Ruby	18200
812	18347476	google/iosched	https://avatars1.githubusercontent.com/u/1342004?v=4	/google	2014-04-01 22:40:40+00	2019-07-06 01:17:59+00	2019-07-06 08:03:43.867595+00	Kotlin	18150
813	14807173	SamyPesse/How-to-Make-a-Computer-Operating-System	https://avatars3.githubusercontent.com/u/845425?v=4	/SamyPesse	2013-11-29 17:36:32+00	2019-07-05 22:16:57+00	2019-07-06 08:03:43.869302+00	C	18130
814	21393871	sorrycc/awesome-javascript	https://avatars1.githubusercontent.com/u/35128?v=4	/sorrycc	2014-07-01 15:59:02+00	2019-07-06 05:36:15+00	2019-07-06 08:03:43.870884+00	nan	18127
815	8686855	usablica/intro.js	https://avatars1.githubusercontent.com/u/2010360?v=4	/usablica	2013-03-10 15:12:45+00	2019-07-06 06:16:35+00	2019-07-06 08:03:43.872392+00	HTML	18125
816	1451352	mochajs/mocha	https://avatars2.githubusercontent.com/u/8770005?v=4	/mochajs	2011-03-07 18:44:25+00	2019-07-06 03:41:12+00	2019-07-06 08:03:43.874006+00	JavaScript	18073
817	52281283	tootsuite/mastodon	https://avatars3.githubusercontent.com/u/24979032?v=4	/tootsuite	2016-02-22 15:01:25+00	2019-07-06 03:19:16+00	2019-07-06 08:03:43.87552+00	Ruby	18067
818	7212645	syl20bnr/spacemacs	https://avatars0.githubusercontent.com/u/1243537?v=4	/syl20bnr	2012-12-17 21:34:03+00	2019-07-06 08:01:16+00	2019-07-06 08:03:43.877069+00	Emacs Lisp	18050
819	69798748	verekia/js-stack-from-scratch	https://avatars0.githubusercontent.com/u/522007?v=4	/verekia	2016-10-02 13:31:23+00	2019-07-05 22:15:50+00	2019-07-06 08:03:43.878584+00	JavaScript	18012
820	22374063	futurice/android-best-practices	https://avatars2.githubusercontent.com/u/852157?v=4	/futurice	2014-07-29 09:09:44+00	2019-07-05 22:52:03+00	2019-07-06 08:03:43.880138+00	nan	18009
821	23405758	google/leveldb	https://avatars1.githubusercontent.com/u/1342004?v=4	/google	2014-08-27 21:17:52+00	2019-07-06 06:22:41+00	2019-07-06 08:03:43.881628+00	C++	17981
822	301742	tornadoweb/tornado	https://avatars3.githubusercontent.com/u/7468980?v=4	/tornadoweb	2009-09-09 04:55:16+00	2019-07-06 02:48:01+00	2019-07-06 08:03:43.883208+00	Python	17968
823	1254497	codemirror/CodeMirror	https://avatars1.githubusercontent.com/u/8876537?v=4	/codemirror	2011-01-14 13:44:03+00	2019-07-06 04:35:22+00	2019-07-06 08:03:43.884702+00	JavaScript	17956
824	93152223	scwang90/SmartRefreshLayout	https://avatars0.githubusercontent.com/u/11567071?v=4	/scwang90	2017-06-02 09:52:50+00	2019-07-06 07:24:25+00	2019-07-06 08:03:43.886259+00	Java	17948
825	124171501	Meituan-Dianping/mpvue	https://avatars0.githubusercontent.com/u/20238146?v=4	/Meituan-Dianping	2018-03-07 03:09:25+00	2019-07-06 03:47:21+00	2019-07-06 08:03:43.887744+00	JavaScript	17892
826	50151075	markerikson/react-redux-links	https://avatars1.githubusercontent.com/u/1128784?v=4	/markerikson	2016-01-22 02:10:28+00	2019-07-06 07:53:38+00	2019-07-06 08:03:43.88932+00	nan	17866
827	7548986	laravel/framework	https://avatars3.githubusercontent.com/u/958072?v=4	/laravel	2013-01-10 21:27:28+00	2019-07-06 07:30:29+00	2019-07-06 08:03:43.890846+00	PHP	17858
828	34453060	sindresorhus/awesome-electron	https://avatars1.githubusercontent.com/u/170270?v=4	/sindresorhus	2015-04-23 11:48:53+00	2019-07-06 05:59:52+00	2019-07-06 08:03:43.892421+00	nan	17758
829	19620844	ovity/octotree	https://avatars3.githubusercontent.com/u/43424025?v=4	/ovity	2014-05-09 18:15:20+00	2019-07-06 07:39:26+00	2019-07-06 08:03:43.893961+00	JavaScript	17748
830	15975439	scrollreveal/scrollreveal	https://avatars2.githubusercontent.com/u/42127942?v=4	/scrollreveal	2014-01-16 17:37:20+00	2019-07-05 22:56:33+00	2019-07-06 08:03:43.895472+00	JavaScript	17736
831	10567197	dokku/dokku	https://avatars1.githubusercontent.com/u/13455795?v=4	/dokku	2013-06-08 10:26:57+00	2019-07-06 04:25:58+00	2019-07-06 08:03:43.896932+00	Shell	17714
832	6766558	Netflix/Hystrix	https://avatars3.githubusercontent.com/u/913567?v=4	/Netflix	2012-11-19 20:14:46+00	2019-07-05 17:06:31+00	2019-07-06 08:03:43.898496+00	Java	17697
833	49935814	littlecodersh/ItChat	https://avatars2.githubusercontent.com/u/13028340?v=4	/littlecodersh	2016-01-19 07:49:48+00	2019-07-06 07:40:34+00	2019-07-06 08:03:43.899986+00	Python	17689
834	71948498	localstack/localstack	https://avatars0.githubusercontent.com/u/28732122?v=4	/localstack	2016-10-25 23:48:03+00	2019-07-06 04:32:29+00	2019-07-06 08:03:43.901559+00	Python	17643
835	17728164	hashicorp/terraform	https://avatars2.githubusercontent.com/u/761456?v=4	/hashicorp	2014-03-13 22:25:48+00	2019-07-06 02:13:47+00	2019-07-06 08:03:43.903095+00	Go	17640
836	168008797	microsoft/calculator	https://avatars2.githubusercontent.com/u/6154722?v=4	/microsoft	2019-01-28 17:55:49+00	2019-07-06 06:43:49+00	2019-07-06 08:03:43.904753+00	C++	17612
837	109343098	serhii-londar/open-source-mac-os-apps	https://avatars0.githubusercontent.com/u/15808174?v=4	/serhii-londar	2017-11-03 02:35:33+00	2019-07-06 03:44:04+00	2019-07-06 08:03:43.906438+00	Swift	17597
838	70198664	airbnb/lottie-ios	https://avatars3.githubusercontent.com/u/698437?v=4	/airbnb	2016-10-06 22:38:38+00	2019-07-06 07:34:25+00	2019-07-06 08:03:43.908004+00	Swift	17575
839	55886798	CymChad/BaseRecyclerViewAdapterHelper	https://avatars1.githubusercontent.com/u/7698209?v=4	/CymChad	2016-04-10 07:40:11+00	2019-07-06 05:38:04+00	2019-07-06 08:03:43.909578+00	Java	17568
840	2700159	alibaba/druid	https://avatars1.githubusercontent.com/u/1961952?v=4	/alibaba	2011-11-03 05:12:51+00	2019-07-06 07:29:10+00	2019-07-06 08:03:43.911106+00	Java	17536
841	15183485	julycoding/The-Art-Of-Programming-By-July	https://avatars1.githubusercontent.com/u/6184536?v=4	/julycoding	2013-12-14 10:00:06+00	2019-07-06 06:36:06+00	2019-07-06 08:03:43.91271+00	C	17522
842	3428345	ftlabs/fastclick	https://avatars3.githubusercontent.com/u/1432696?v=4	/ftlabs	2012-02-13 08:38:00+00	2019-07-06 06:33:04+00	2019-07-06 08:03:43.914227+00	HTML	17521
843	53658802	alibaba/weex	https://avatars1.githubusercontent.com/u/1961952?v=4	/alibaba	2016-03-11 10:18:11+00	2019-07-05 17:12:08+00	2019-07-06 08:03:43.915865+00	nan	17514
844	92807616	byoungd/English-level-up-tips-for-Chinese	https://avatars1.githubusercontent.com/u/16145783?v=4	/byoungd	2017-05-30 07:18:52+00	2019-07-06 05:49:03+00	2019-07-06 08:03:43.91744+00	nan	17501
845	47394776	lerna/lerna	https://avatars2.githubusercontent.com/u/19333396?v=4	/lerna	2015-12-04 09:36:55+00	2019-07-06 06:54:28+00	2019-07-06 08:03:43.919041+00	JavaScript	17497
846	34757182	donnemartin/interactive-coding-challenges	https://avatars2.githubusercontent.com/u/5458997?v=4	/donnemartin	2015-04-28 21:36:39+00	2019-07-05 20:54:38+00	2019-07-06 08:03:43.92064+00	Python	17496
847	45942274	airbnb/enzyme	https://avatars3.githubusercontent.com/u/698437?v=4	/airbnb	2015-11-10 21:45:38+00	2019-07-06 03:49:46+00	2019-07-06 08:03:43.922405+00	JavaScript	17489
848	21696302	matteocrippa/awesome-swift	https://avatars2.githubusercontent.com/u/475463?v=4	/matteocrippa	2014-07-10 14:04:09+00	2019-07-06 04:57:30+00	2019-07-06 08:03:43.924462+00	Swift	17472
849	2056312	niklasvh/html2canvas	https://avatars1.githubusercontent.com/u/551347?v=4	/niklasvh	2011-07-16 01:05:58+00	2019-07-06 06:15:58+00	2019-07-06 08:03:43.926079+00	TypeScript	17445
850	2246815	domnikl/DesignPatternsPHP	https://avatars2.githubusercontent.com/u/603116?v=4	/domnikl	2011-08-22 05:24:31+00	2019-07-06 02:58:47+00	2019-07-06 08:03:43.927668+00	PHP	17440
851	1357796	emscripten-core/emscripten	https://avatars3.githubusercontent.com/u/46011144?v=4	/emscripten-core	2011-02-12 05:23:30+00	2019-07-05 21:19:21+00	2019-07-06 08:03:43.929336+00	C++	17439
852	2234102	bcit-ci/CodeIgniter	https://avatars2.githubusercontent.com/u/8863432?v=4	/bcit-ci	2011-08-19 13:34:00+00	2019-07-05 16:30:54+00	2019-07-06 08:03:43.930956+00	PHP	17435
853	18477927	segmentio/nightmare	https://avatars0.githubusercontent.com/u/819518?v=4	/segmentio	2014-04-05 22:19:51+00	2019-07-06 07:04:24+00	2019-07-06 08:03:43.932627+00	JavaScript	17435
854	79510167	pypa/pipenv	https://avatars2.githubusercontent.com/u/647025?v=4	/pypa	2017-01-20 00:44:02+00	2019-07-06 07:50:09+00	2019-07-06 08:03:43.934222+00	Python	17422
855	11570469	SnapKit/Masonry	https://avatars1.githubusercontent.com/u/7809696?v=4	/SnapKit	2013-07-22 01:15:48+00	2019-07-05 12:09:26+00	2019-07-06 08:03:43.935745+00	Objective-C	17397
856	38934449	reduxjs/react-redux	https://avatars3.githubusercontent.com/u/13142323?v=4	/reduxjs	2015-07-11 17:32:01+00	2019-07-06 06:52:24+00	2019-07-06 08:03:43.937401+00	JavaScript	17391
857	80945428	nestjs/nest	https://avatars1.githubusercontent.com/u/28507035?v=4	/nestjs	2017-02-04 20:12:52+00	2019-07-06 08:00:01+00	2019-07-06 08:03:43.93903+00	TypeScript	17385
858	33263118	gorhill/uBlock	https://avatars2.githubusercontent.com/u/585534?v=4	/gorhill	2015-04-01 17:51:11+00	2019-07-06 07:00:35+00	2019-07-06 08:03:43.940615+00	JavaScript	17355
859	57222302	openai/gym	https://avatars0.githubusercontent.com/u/14957082?v=4	/openai	2016-04-27 14:59:16+00	2019-07-05 22:05:49+00	2019-07-06 08:03:43.942196+00	Python	17310
860	34864402	apache/incubator-mxnet	https://avatars0.githubusercontent.com/u/47359?v=4	/apache	2015-04-30 16:21:15+00	2019-07-06 06:48:25+00	2019-07-06 08:03:43.943853+00	C++	17303
861	8768406	postcss/autoprefixer	https://avatars0.githubusercontent.com/u/8296347?v=4	/postcss	2013-03-14 05:04:51+00	2019-07-06 05:20:21+00	2019-07-06 08:03:43.945513+00	JavaScript	17264
862	35658863	ColorlibHQ/gentelella	https://avatars3.githubusercontent.com/u/39128121?v=4	/ColorlibHQ	2015-05-15 06:57:27+00	2019-07-06 03:57:47+00	2019-07-06 08:03:43.947129+00	HTML	17263
863	53370988	GoogleChrome/lighthouse	https://avatars3.githubusercontent.com/u/1778935?v=4	/GoogleChrome	2016-03-08 01:03:11+00	2019-07-06 05:30:22+00	2019-07-06 08:03:43.948753+00	JavaScript	17240
864	127988011	macrozheng/mall	https://avatars2.githubusercontent.com/u/15903809?v=4	/macrozheng	2018-04-04 01:11:44+00	2019-07-06 07:25:28+00	2019-07-06 08:03:43.950454+00	Java	17224
865	40997482	vim/vim	https://avatars3.githubusercontent.com/u/11618545?v=4	/vim	2015-08-18 21:03:56+00	2019-07-06 04:57:51+00	2019-07-06 08:03:43.952035+00	Vim script	17194
866	31492490	NativeScript/NativeScript	https://avatars1.githubusercontent.com/u/7392261?v=4	/NativeScript	2015-03-01 09:47:08+00	2019-07-06 07:47:47+00	2019-07-06 08:03:43.953641+00	TypeScript	17190
867	31085130	airbnb/lottie-web	https://avatars3.githubusercontent.com/u/698437?v=4	/airbnb	2015-02-20 21:02:59+00	2019-07-06 05:08:58+00	2019-07-06 08:03:43.955143+00	JavaScript	17173
868	321278	npm/npm	https://avatars1.githubusercontent.com/u/6078720?v=4	/npm	2009-09-29 17:21:24+00	2019-07-05 17:00:22+00	2019-07-06 08:03:43.956668+00	nan	17163
869	23338716	JedWatson/react-select	https://avatars3.githubusercontent.com/u/872310?v=4	/JedWatson	2014-08-26 04:27:45+00	2019-07-06 07:44:17+00	2019-07-06 08:03:43.958096+00	JavaScript	17131
870	23141830	paularmstrong/normalizr	https://avatars1.githubusercontent.com/u/33297?v=4	/paularmstrong	2014-08-20 08:41:38+00	2019-07-06 00:16:07+00	2019-07-06 08:03:43.959709+00	JavaScript	17128
871	59652928	akveo/ngx-admin	https://avatars3.githubusercontent.com/u/11921694?v=4	/akveo	2016-05-25 10:09:03+00	2019-07-06 08:00:10+00	2019-07-06 08:03:43.961283+00	TypeScript	17121
872	51980455	jwilm/alacritty	https://avatars2.githubusercontent.com/u/4285147?v=4	/jwilm	2016-02-18 05:02:30+00	2019-07-06 01:57:30+00	2019-07-06 08:03:43.96284+00	Rust	17120
873	21481439	kelthuzadx/hosts	https://avatars0.githubusercontent.com/u/5010047?v=4	/kelthuzadx	2014-07-04 01:05:27+00	2019-07-06 06:42:49+00	2019-07-06 08:03:43.964495+00	Rascal	17102
874	15308499	SortableJS/Sortable	https://avatars3.githubusercontent.com/u/17040762?v=4	/SortableJS	2013-12-19 10:10:13+00	2019-07-05 14:21:11+00	2019-07-06 08:03:43.966294+00	JavaScript	17094
875	98029592	ziishaned/learn-regex	https://avatars0.githubusercontent.com/u/16267321?v=4	/ziishaned	2017-07-22 12:21:03+00	2019-07-06 08:01:27+00	2019-07-06 08:03:43.96788+00	nan	17074
876	1420053	guzzle/guzzle	https://avatars0.githubusercontent.com/u/638632?v=4	/guzzle	2011-02-28 02:44:05+00	2019-07-05 19:33:12+00	2019-07-06 08:03:43.96932+00	PHP	17054
877	23044617	Popmotion/popmotion	https://avatars3.githubusercontent.com/u/14272617?v=4	/Popmotion	2014-08-17 16:23:07+00	2019-07-06 04:12:26+00	2019-07-06 08:03:43.970925+00	JavaScript	16985
878	74697963	HeroTransitions/Hero	https://avatars3.githubusercontent.com/u/40681391?v=4	/HeroTransitions	2016-11-24 18:49:37+00	2019-07-05 17:40:49+00	2019-07-06 08:03:43.972513+00	Swift	16950
879	2293158	rapid7/metasploit-framework	https://avatars1.githubusercontent.com/u/1013671?v=4	/rapid7	2011-08-30 06:13:20+00	2019-07-06 07:23:50+00	2019-07-06 08:03:43.974133+00	Ruby	16946
880	26295345	dotnet/corefx	https://avatars0.githubusercontent.com/u/9141961?v=4	/dotnet	2014-11-06 23:42:48+00	2019-07-06 07:02:18+00	2019-07-06 08:03:43.975595+00	C#	16940
881	402046	MrRio/jsPDF	https://avatars3.githubusercontent.com/u/47539?v=4	/MrRio	2009-12-06 14:56:32+00	2019-07-06 05:02:43+00	2019-07-06 08:03:43.977126+00	JavaScript	16924
882	37246537	chenglou/react-motion	https://avatars2.githubusercontent.com/u/1909539?v=4	/chenglou	2015-06-11 07:38:23+00	2019-07-05 10:43:38+00	2019-07-06 08:03:43.978564+00	JavaScript	16907
883	41717707	jcjohnson/neural-style	https://avatars2.githubusercontent.com/u/2718714?v=4	/jcjohnson	2015-09-01 04:55:14+00	2019-07-06 02:35:11+00	2019-07-06 08:03:43.980163+00	Lua	16903
884	37958358	naptha/tesseract.js	https://avatars3.githubusercontent.com/u/7720173?v=4	/naptha	2015-06-24 02:49:52+00	2019-07-06 04:26:17+00	2019-07-06 08:03:43.981647+00	JavaScript	16891
885	29261473	minio/minio	https://avatars3.githubusercontent.com/u/695951?v=4	/minio	2015-01-14 19:23:58+00	2019-07-06 06:26:58+00	2019-07-06 08:03:43.983247+00	Go	16878
886	72907253	ityouknow/spring-boot-examples	https://avatars0.githubusercontent.com/u/4979648?v=4	/ityouknow	2016-11-05 05:32:33+00	2019-07-06 07:54:40+00	2019-07-06 08:03:43.984655+00	Java	16878
887	10057936	square/picasso	https://avatars0.githubusercontent.com/u/82592?v=4	/square	2013-05-14 15:07:47+00	2019-07-05 16:15:51+00	2019-07-06 08:03:43.986476+00	Java	16862
888	79527893	jorgebucaran/hyperapp	https://avatars1.githubusercontent.com/u/56996?v=4	/jorgebucaran	2017-01-20 05:20:21+00	2019-07-06 05:18:43+00	2019-07-06 08:03:43.988056+00	JavaScript	16828
889	49910095	vapor/vapor	https://avatars1.githubusercontent.com/u/17364220?v=4	/vapor	2016-01-18 22:37:52+00	2019-07-06 06:50:33+00	2019-07-06 08:03:43.989583+00	Swift	16814
890	1685764	dhg/Skeleton	https://avatars2.githubusercontent.com/u/693790?v=4	/dhg	2011-04-30 20:04:24+00	2019-07-05 15:49:07+00	2019-07-06 08:03:43.992015+00	CSS	16805
891	13124802	influxdata/influxdb	https://avatars2.githubusercontent.com/u/5713248?v=4	/influxdata	2013-09-26 14:31:10+00	2019-07-06 06:54:13+00	2019-07-06 08:03:43.994158+00	Go	16728
892	90563585	chubin/cheat.sh	https://avatars1.githubusercontent.com/u/3875145?v=4	/chubin	2017-05-07 21:40:56+00	2019-07-06 05:58:52+00	2019-07-06 08:03:43.996661+00	Python	16674
893	33569135	ReactiveX/RxSwift	https://avatars1.githubusercontent.com/u/6407041?v=4	/ReactiveX	2015-04-07 21:25:17+00	2019-07-06 03:27:39+00	2019-07-06 08:03:43.99822+00	Swift	16664
894	95189138	alibaba/p3c	https://avatars1.githubusercontent.com/u/1961952?v=4	/alibaba	2017-06-23 06:15:51+00	2019-07-06 07:34:27+00	2019-07-06 08:03:43.999653+00	Java	16634
895	178092134	formulahendry/955.WLB	https://avatars0.githubusercontent.com/u/1050213?v=4	/formulahendry	2019-03-27 23:53:37+00	2019-07-06 05:14:08+00	2019-07-06 08:03:44.001152+00	nan	16619
896	401025	github/hub	https://avatars1.githubusercontent.com/u/9919?v=4	/github	2009-12-05 22:15:25+00	2019-07-06 01:43:49+00	2019-07-06 08:03:44.002714+00	Go	16594
897	15045751	docker/compose	https://avatars1.githubusercontent.com/u/5429470?v=4	/docker	2013-12-09 11:40:58+00	2019-07-06 05:42:57+00	2019-07-06 08:03:44.004274+00	Python	16591
898	16563587	cockroachdb/cockroach	https://avatars3.githubusercontent.com/u/6748139?v=4	/cockroachdb	2014-02-06 00:18:47+00	2019-07-05 20:28:28+00	2019-07-06 08:03:44.005862+00	Go	16578
899	10851820	ramda/ramda	https://avatars1.githubusercontent.com/u/5298359?v=4	/ramda	2013-06-21 20:32:35+00	2019-07-06 03:43:03+00	2019-07-06 08:03:44.007471+00	JavaScript	16577
900	6988020	SheetJS/js-xlsx	https://avatars0.githubusercontent.com/u/5826089?v=4	/SheetJS	2012-12-03 19:25:52+00	2019-07-06 06:48:11+00	2019-07-06 08:03:44.008984+00	JavaScript	16574
901	8900723	inconshreveable/ngrok	https://avatars3.githubusercontent.com/u/836692?v=4	/inconshreveable	2013-03-20 09:37:43+00	2019-07-06 06:53:04+00	2019-07-06 08:03:44.010539+00	Go	16520
902	2862290	nostra13/Android-Universal-Image-Loader	https://avatars1.githubusercontent.com/u/1223348?v=4	/nostra13	2011-11-27 18:48:23+00	2019-07-05 19:23:04+00	2019-07-06 08:03:44.012098+00	Java	16517
903	22657662	wsargent/docker-cheat-sheet	https://avatars2.githubusercontent.com/u/71236?v=4	/wsargent	2014-08-05 20:04:20+00	2019-07-06 08:00:44+00	2019-07-06 08:03:44.013703+00	nan	16508
904	16587283	dmlc/xgboost	https://avatars2.githubusercontent.com/u/11508361?v=4	/dmlc	2014-02-06 17:28:03+00	2019-07-06 02:38:57+00	2019-07-06 08:03:44.015146+00	C++	16501
905	50603846	parse-community/parse-server	https://avatars3.githubusercontent.com/u/26932219?v=4	/parse-community	2016-01-28 18:29:14+00	2019-07-06 01:57:11+00	2019-07-06 08:03:45.679433+00	JavaScript	16500
906	26820798	avajs/ava	https://avatars3.githubusercontent.com/u/8527916?v=4	/avajs	2014-11-18 17:20:26+00	2019-07-05 12:12:19+00	2019-07-06 08:03:45.681384+00	JavaScript	16493
907	21399598	angular/material	https://avatars3.githubusercontent.com/u/139426?v=4	/angular	2014-07-01 19:20:06+00	2019-07-05 12:46:55+00	2019-07-06 08:03:45.68318+00	JavaScript	16476
908	21552971	alebcay/awesome-shell	https://avatars2.githubusercontent.com/u/3536482?v=4	/alebcay	2014-07-07 01:57:42+00	2019-07-06 02:35:15+00	2019-07-06 08:03:45.685045+00	nan	16465
909	57167764	xi-editor/xi-editor	https://avatars3.githubusercontent.com/u/43351123?v=4	/xi-editor	2016-04-26 23:03:23+00	2019-07-05 15:34:43+00	2019-07-06 08:03:45.686744+00	Rust	16447
910	1413492	defunkt/jquery-pjax	https://avatars0.githubusercontent.com/u/2?v=4	/defunkt	2011-02-26 02:44:18+00	2019-07-05 20:25:42+00	2019-07-06 08:03:45.688459+00	JavaScript	16439
911	67709808	react-native-training/react-native-elements	https://avatars3.githubusercontent.com/u/23240955?v=4	/react-native-training	2016-09-08 14:21:41+00	2019-07-06 07:30:50+00	2019-07-06 08:03:45.690172+00	JavaScript	16436
912	20619036	pi-hole/pi-hole	https://avatars2.githubusercontent.com/u/16827203?v=4	/pi-hole	2014-06-08 15:02:55+00	2019-07-06 08:02:09+00	2019-07-06 08:03:45.691846+00	Shell	16421
913	62812261	kelseyhightower/kubernetes-the-hard-way	https://avatars2.githubusercontent.com/u/1123322?v=4	/kelseyhightower	2016-07-07 14:15:27+00	2019-07-06 02:32:26+00	2019-07-06 08:03:45.693624+00	nan	16413
914	14125254	hashicorp/consul	https://avatars2.githubusercontent.com/u/761456?v=4	/hashicorp	2013-11-04 22:15:27+00	2019-07-06 03:34:00+00	2019-07-06 08:03:45.695296+00	Go	16394
915	83119431	apachecn/AiLearning	https://avatars3.githubusercontent.com/u/24802038?v=4	/apachecn	2017-02-25 08:53:02+00	2019-07-06 07:30:05+00	2019-07-06 08:03:45.696989+00	Python	16385
916	154747577	google-research/bert	https://avatars1.githubusercontent.com/u/43830688?v=4	/google-research	2018-10-25 22:57:34+00	2019-07-06 06:23:32+00	2019-07-06 08:03:45.69871+00	Python	16371
917	94367677	jaredpalmer/formik	https://avatars2.githubusercontent.com/u/4060187?v=4	/jaredpalmer	2017-06-14 19:50:59+00	2019-07-06 07:45:52+00	2019-07-06 08:03:45.700408+00	TypeScript	16363
918	18964487	ruanyf/es6tutorial	https://avatars0.githubusercontent.com/u/905434?v=4	/ruanyf	2014-04-20 13:06:28+00	2019-07-06 06:59:40+00	2019-07-06 08:03:45.70207+00	JavaScript	16341
919	16722900	ipfs/ipfs	https://avatars0.githubusercontent.com/u/10536621?v=4	/ipfs	2014-02-11 07:28:24+00	2019-07-06 05:28:57+00	2019-07-06 08:03:45.703887+00	nan	16291
920	173228436	NationalSecurityAgency/ghidra	https://avatars1.githubusercontent.com/u/11298292?v=4	/NationalSecurityAgency	2019-03-01 03:27:48+00	2019-07-06 07:48:11+00	2019-07-06 08:03:45.705623+00	Java	16291
921	108110	mongodb/mongo	https://avatars1.githubusercontent.com/u/45120?v=4	/mongodb	2009-01-15 16:15:18+00	2019-07-05 23:13:39+00	2019-07-06 08:03:45.707346+00	C++	16286
922	7240954	powerline/fonts	https://avatars2.githubusercontent.com/u/10100576?v=4	/powerline	2012-12-19 13:31:50+00	2019-07-06 07:26:45+00	2019-07-06 08:03:45.709088+00	Shell	16258
923	46918116	microsoft/CNTK	https://avatars2.githubusercontent.com/u/6154722?v=4	/microsoft	2015-11-26 09:52:06+00	2019-07-06 02:29:21+00	2019-07-06 08:03:45.710813+00	C++	16256
924	72103891	ruanyf/jstraining	https://avatars0.githubusercontent.com/u/905434?v=4	/ruanyf	2016-10-27 12:00:26+00	2019-07-06 05:56:33+00	2019-07-06 08:03:45.712519+00	nan	16249
925	145803079	felixrieseberg/windows95	https://avatars3.githubusercontent.com/u/1426799?v=4	/felixrieseberg	2018-08-23 05:04:38+00	2019-07-06 05:09:37+00	2019-07-06 08:03:45.714286+00	JavaScript	16241
926	35133520	MostlyAdequate/mostly-adequate-guide	https://avatars2.githubusercontent.com/u/14079115?v=4	/MostlyAdequate	2015-05-06 01:44:15+00	2019-07-06 02:08:59+00	2019-07-06 08:03:45.716002+00	JavaScript	16237
927	22046023	facebook/flux	https://avatars3.githubusercontent.com/u/69631?v=4	/facebook	2014-07-20 23:33:08+00	2019-07-06 01:29:14+00	2019-07-06 08:03:45.71772+00	JavaScript	16217
928	170326929	LisaDziuba/Awesome-Design-Tools	https://avatars0.githubusercontent.com/u/23191656?v=4	/LisaDziuba	2019-02-12 13:55:30+00	2019-07-06 05:26:29+00	2019-07-06 08:03:45.71943+00	JavaScript	16148
929	15150300	tobiasahlin/SpinKit	https://avatars3.githubusercontent.com/u/211284?v=4	/tobiasahlin	2013-12-12 23:29:41+00	2019-07-05 12:21:54+00	2019-07-06 08:03:45.721159+00	CSS	16129
930	26102180	afollestad/material-dialogs	https://avatars0.githubusercontent.com/u/1820165?v=4	/afollestad	2014-11-03 03:21:42+00	2019-07-06 07:48:06+00	2019-07-06 08:03:45.722953+00	Kotlin	16103
931	18611173	julianshapiro/velocity	https://avatars0.githubusercontent.com/u/655026?v=4	/julianshapiro	2014-04-09 20:02:38+00	2019-07-06 03:55:03+00	2019-07-06 08:03:45.724697+00	JavaScript	16092
932	20270252	feathericons/feather	https://avatars0.githubusercontent.com/u/29268069?v=4	/feathericons	2014-05-28 19:49:55+00	2019-07-06 06:34:58+00	2019-07-06 08:03:45.72634+00	JavaScript	16083
933	45431898	bvaughn/react-virtualized	https://avatars0.githubusercontent.com/u/29597?v=4	/bvaughn	2015-11-03 00:48:07+00	2019-07-05 20:11:23+00	2019-07-06 08:03:45.728049+00	JavaScript	16079
934	455600	facebook/hhvm	https://avatars3.githubusercontent.com/u/69631?v=4	/facebook	2010-01-02 01:17:06+00	2019-07-06 07:20:58+00	2019-07-06 08:03:45.729766+00	C++	16070
935	527644	less/less.js	https://avatars1.githubusercontent.com/u/3538330?v=4	/less	2010-02-20 17:25:38+00	2019-07-05 10:45:43+00	2019-07-06 08:03:45.731401+00	JavaScript	16065
936	52113921	facebook/draft-js	https://avatars3.githubusercontent.com/u/69631?v=4	/facebook	2016-02-19 20:18:26+00	2019-07-05 20:30:54+00	2019-07-06 08:03:45.733088+00	JavaScript	16014
937	571770	jgm/pandoc	https://avatars0.githubusercontent.com/u/3044?v=4	/jgm	2010-03-20 20:34:23+00	2019-07-06 02:34:07+00	2019-07-06 08:03:45.734793+00	Haskell	16012
938	51728141	airyland/vux	https://avatars2.githubusercontent.com/u/559179?v=4	/airyland	2016-02-15 03:23:27+00	2019-07-06 07:59:44+00	2019-07-06 08:03:45.736616+00	Vue	16008
939	8989842	Unknwon/the-way-to-go_ZH_CN	https://avatars3.githubusercontent.com/u/2946214?v=4	/Unknwon	2013-03-24 17:18:38+00	2019-07-06 06:48:17+00	2019-07-06 08:03:45.738411+00	Go	16008
940	32538871	google/gson	https://avatars1.githubusercontent.com/u/1342004?v=4	/google	2015-03-19 18:21:20+00	2019-07-06 04:40:08+00	2019-07-06 08:03:45.740208+00	Java	15984
941	35640229	rollup/rollup	https://avatars2.githubusercontent.com/u/12554859?v=4	/rollup	2015-05-14 22:26:28+00	2019-07-06 05:42:39+00	2019-07-06 08:03:45.741974+00	JavaScript	15961
942	29749635	donnemartin/data-science-ipython-notebooks	https://avatars2.githubusercontent.com/u/5458997?v=4	/donnemartin	2015-01-23 19:38:29+00	2019-07-06 02:36:21+00	2019-07-06 08:03:45.743778+00	Python	15957
943	538746	ruby/ruby	https://avatars3.githubusercontent.com/u/210414?v=4	/ruby	2010-02-27 15:55:23+00	2019-07-06 04:00:47+00	2019-07-06 08:03:45.745742+00	Ruby	15939
944	80149262	react-navigation/react-navigation	https://avatars2.githubusercontent.com/u/29647600?v=4	/react-navigation	2017-01-26 19:51:40+00	2019-07-06 07:34:01+00	2019-07-06 08:03:45.747592+00	JavaScript	15890
945	133251103	wagoodman/dive	https://avatars3.githubusercontent.com/u/590471?v=4	/wagoodman	2018-05-13 15:44:01+00	2019-07-05 20:33:38+00	2019-07-06 08:03:45.749404+00	Go	15890
946	2540368	jaredhanson/passport	https://avatars3.githubusercontent.com/u/10355?v=4	/jaredhanson	2011-10-08 22:38:32+00	2019-07-05 14:45:05+00	2019-07-06 08:03:45.751193+00	JavaScript	15885
947	5625464	pyenv/pyenv	https://avatars2.githubusercontent.com/u/16530698?v=4	/pyenv	2012-08-31 06:57:52+00	2019-07-06 04:56:13+00	2019-07-06 08:03:45.753078+00	Shell	15877
948	60630844	microsoft/monaco-editor	https://avatars2.githubusercontent.com/u/6154722?v=4	/microsoft	2016-06-07 16:56:31+00	2019-07-06 07:52:17+00	2019-07-06 08:03:45.754861+00	JavaScript	15840
949	15480067	react-bootstrap/react-bootstrap	https://avatars3.githubusercontent.com/u/6853419?v=4	/react-bootstrap	2013-12-27 19:06:07+00	2019-07-05 22:13:03+00	2019-07-06 08:03:45.756671+00	JavaScript	15793
950	22067521	ocornut/imgui	https://avatars2.githubusercontent.com/u/8225057?v=4	/ocornut	2014-07-21 14:29:47+00	2019-07-06 04:17:07+00	2019-07-06 08:03:45.758476+00	C++	15777
951	8297888	twitter/typeahead.js	https://avatars1.githubusercontent.com/u/50278?v=4	/twitter	2013-02-19 19:45:01+00	2019-07-05 01:09:08+00	2019-07-06 08:03:45.760231+00	JavaScript	15742
952	24586308	cfenollosa/os-tutorial	https://avatars0.githubusercontent.com/u/2249551?v=4	/cfenollosa	2014-09-29 08:39:34+00	2019-07-06 05:33:12+00	2019-07-06 08:03:45.762017+00	C	15733
953	31533997	facebook/fresco	https://avatars3.githubusercontent.com/u/69631?v=4	/facebook	2015-03-02 09:58:04+00	2019-07-05 15:45:33+00	2019-07-06 08:03:45.763823+00	Java	15701
954	39122628	git-tips/tips	https://avatars1.githubusercontent.com/u/13345927?v=4	/git-tips	2015-07-15 07:24:48+00	2019-07-06 00:38:22+00	2019-07-06 08:03:45.765583+00	JavaScript	15667
955	51863547	ageron/handson-ml	https://avatars3.githubusercontent.com/u/76661?v=4	/ageron	2016-02-16 19:48:39+00	2019-07-06 07:12:33+00	2019-07-06 08:03:45.767307+00	Jupyter Notebook	15614
956	125596489	pedronauck/docz	https://avatars3.githubusercontent.com/u/2029172?v=4	/pedronauck	2018-03-17 04:24:10+00	2019-07-06 02:56:02+00	2019-07-06 08:03:45.769063+00	TypeScript	15611
957	43441403	strapi/strapi	https://avatars2.githubusercontent.com/u/19872173?v=4	/strapi	2015-09-30 15:34:48+00	2019-07-06 07:59:07+00	2019-07-06 08:03:45.770827+00	JavaScript	15611
958	125791597	InterviewMap/CS-Interview-Knowledge-Map	https://avatars0.githubusercontent.com/u/41361384?v=4	/InterviewMap	2018-03-19 02:38:12+00	2019-07-06 04:48:18+00	2019-07-06 08:03:45.772712+00	nan	15607
959	1614410	FFmpeg/FFmpeg	https://avatars0.githubusercontent.com/u/729418?v=4	/FFmpeg	2011-04-14 14:12:38+00	2019-07-06 06:26:30+00	2019-07-06 08:03:45.774429+00	C	15600
960	4307108	nsqio/nsq	https://avatars3.githubusercontent.com/u/8295919?v=4	/nsqio	2012-05-12 14:37:08+00	2019-07-05 17:55:27+00	2019-07-06 08:03:45.776182+00	Go	15599
961	30203935	metabase/metabase	https://avatars1.githubusercontent.com/u/10520629?v=4	/metabase	2015-02-02 19:25:47+00	2019-07-06 06:21:28+00	2019-07-06 08:03:45.77792+00	Clojure	15589
962	6731432	koalaman/shellcheck	https://avatars0.githubusercontent.com/u/2818758?v=4	/koalaman	2012-11-17 03:15:11+00	2019-07-06 02:03:13+00	2019-07-06 08:03:45.779667+00	Haskell	15575
963	5373551	libgdx/libgdx	https://avatars1.githubusercontent.com/u/509841?v=4	/libgdx	2012-08-10 19:34:38+00	2019-07-05 11:15:17+00	2019-07-06 08:03:45.781328+00	Java	15574
964	1234714	elixir-lang/elixir	https://avatars1.githubusercontent.com/u/1481354?v=4	/elixir-lang	2011-01-09 08:43:57+00	2019-07-06 02:49:35+00	2019-07-06 08:03:45.783463+00	Elixir	15558
965	3623050	Homebrew/homebrew-cask	https://avatars2.githubusercontent.com/u/1503512?v=4	/Homebrew	2012-03-05 02:05:17+00	2019-07-06 07:31:42+00	2019-07-06 08:03:45.785239+00	Ruby	15552
966	5084750	chrisbanes/PhotoView	https://avatars3.githubusercontent.com/u/227486?v=4	/chrisbanes	2012-07-17 16:39:00+00	2019-07-05 15:43:31+00	2019-07-06 08:03:45.786972+00	Java	15533
967	519832	mitmproxy/mitmproxy	https://avatars3.githubusercontent.com/u/4652787?v=4	/mitmproxy	2010-02-16 04:10:13+00	2019-07-06 05:23:58+00	2019-07-06 08:03:45.788716+00	Python	15518
968	45456804	jobbole/awesome-python-cn	https://avatars1.githubusercontent.com/u/8531823?v=4	/jobbole	2015-11-03 09:50:50+00	2019-07-06 05:34:46+00	2019-07-06 08:03:45.790489+00	Makefile	15491
969	37382858	kilimchoi/engineering-blogs	https://avatars0.githubusercontent.com/u/1356007?v=4	/kilimchoi	2015-06-13 18:25:17+00	2019-07-06 07:56:10+00	2019-07-06 08:03:45.792299+00	Ruby	15471
970	2206953	tj/commander.js	https://avatars2.githubusercontent.com/u/25254?v=4	/tj	2011-08-14 21:33:58+00	2019-07-06 05:29:10+00	2019-07-06 08:03:45.794194+00	JavaScript	15458
971	2055965	swagger-api/swagger-ui	https://avatars3.githubusercontent.com/u/7658037?v=4	/swagger-api	2011-07-15 22:56:39+00	2019-07-06 07:47:46+00	2019-07-06 08:03:45.796003+00	JavaScript	15403
972	14003349	localForage/localForage	https://avatars0.githubusercontent.com/u/18673496?v=4	/localForage	2013-10-31 00:10:06+00	2019-07-05 11:04:55+00	2019-07-06 08:03:45.79772+00	JavaScript	15398
973	1116542	aria2/aria2	https://avatars0.githubusercontent.com/u/13545224?v=4	/aria2	2010-11-27 09:41:48+00	2019-07-06 06:56:52+00	2019-07-06 08:03:45.799522+00	C++	15382
974	9754983	eugenp/tutorials	https://avatars1.githubusercontent.com/u/1022859?v=4	/eugenp	2013-04-29 18:26:36+00	2019-07-06 07:57:18+00	2019-07-06 08:03:45.801412+00	Java	15382
975	24297122	veggiemonk/awesome-docker	https://avatars1.githubusercontent.com/u/5487021?v=4	/veggiemonk	2014-09-21 17:01:48+00	2019-07-06 04:17:16+00	2019-07-06 08:03:45.803141+00	nan	15366
976	37448451	mattermost/mattermost-server	https://avatars1.githubusercontent.com/u/9828093?v=4	/mattermost	2015-06-15 06:50:02+00	2019-07-06 07:43:22+00	2019-07-06 08:03:45.804804+00	Go	15362
977	63477660	TheAlgorithms/Java	https://avatars1.githubusercontent.com/u/20487725?v=4	/TheAlgorithms	2016-07-16 10:21:02+00	2019-07-06 07:54:52+00	2019-07-06 08:03:45.806537+00	Java	15345
978	74073233	keon/algorithms	https://avatars0.githubusercontent.com/u/10793962?v=4	/keon	2016-11-17 22:32:08+00	2019-07-06 04:19:41+00	2019-07-06 08:03:45.808248+00	Python	15338
979	215047	jdg/MBProgressHUD	https://avatars3.githubusercontent.com/u/6725?v=4	/jdg	2009-05-31 21:45:41+00	2019-07-05 10:45:27+00	2019-07-06 08:03:45.809892+00	Objective-C	15317
980	112567264	iikira/BaiduPCS-Go	https://avatars2.githubusercontent.com/u/19154488?v=4	/iikira	2017-11-30 05:09:26+00	2019-07-06 07:02:33+00	2019-07-06 08:03:45.811612+00	Go	15283
981	51270739	viatsko/awesome-vscode	https://avatars3.githubusercontent.com/u/376065?v=4	/viatsko	2016-02-07 23:02:45+00	2019-07-06 07:21:09+00	2019-07-06 08:03:45.81326+00	JavaScript	15260
982	27574418	ryanoasis/nerd-fonts	https://avatars0.githubusercontent.com/u/8083459?v=4	/ryanoasis	2014-12-05 04:31:17+00	2019-07-06 07:21:13+00	2019-07-06 08:03:45.814952+00	CSS	15240
983	441269	jashkenas/coffeescript	https://avatars3.githubusercontent.com/u/4732?v=4	/jashkenas	2009-12-18 01:39:53+00	2019-07-05 18:30:34+00	2019-07-06 08:03:45.816712+00	CoffeeScript	15239
984	53631945	BurntSushi/ripgrep	https://avatars3.githubusercontent.com/u/456674?v=4	/BurntSushi	2016-03-11 02:02:33+00	2019-07-06 05:10:33+00	2019-07-06 08:03:45.818466+00	Rust	15233
985	5710341	bower/bower	https://avatars2.githubusercontent.com/u/3709251?v=4	/bower	2012-09-07 00:15:39+00	2019-07-04 11:17:09+00	2019-07-06 08:03:45.820419+00	JavaScript	15230
986	50709152	kataras/iris	https://avatars1.githubusercontent.com/u/22900943?v=4	/kataras	2016-01-30 04:36:48+00	2019-07-05 17:47:27+00	2019-07-06 08:03:45.822266+00	Go	15229
987	53127403	ctripcorp/apollo	https://avatars1.githubusercontent.com/u/10720307?v=4	/ctripcorp	2016-03-04 10:24:23+00	2019-07-06 07:39:22+00	2019-07-06 08:03:45.824187+00	Java	15220
988	20541795	SnapKit/SnapKit	https://avatars1.githubusercontent.com/u/7809696?v=4	/SnapKit	2014-06-05 21:13:40+00	2019-07-06 06:56:51+00	2019-07-06 08:03:45.826073+00	Swift	15210
989	46342224	TeamStuQ/skill-map	https://avatars3.githubusercontent.com/u/15888474?v=4	/TeamStuQ	2015-11-17 11:17:38+00	2019-07-06 05:51:11+00	2019-07-06 08:03:45.827922+00	HTML	15209
990	99761907	atlassian/react-beautiful-dnd	https://avatars3.githubusercontent.com/u/168166?v=4	/atlassian	2017-08-09 03:37:15+00	2019-07-06 04:08:01+00	2019-07-06 08:03:45.82975+00	JavaScript	15191
991	12732573	junegunn/vim-plug	https://avatars2.githubusercontent.com/u/700826?v=4	/junegunn	2013-09-10 14:58:51+00	2019-07-06 06:08:24+00	2019-07-06 08:03:45.831525+00	Vim script	15180
992	131582572	davideuler/architecture.of.internet-product	https://avatars2.githubusercontent.com/u/377983?v=4	/davideuler	2018-04-30 10:25:31+00	2019-07-06 07:22:35+00	2019-07-06 08:03:45.83329+00	nan	15170
993	58623321	bilibili/flv.js	https://avatars2.githubusercontent.com/u/12002442?v=4	/bilibili	2016-05-12 08:34:31+00	2019-07-06 07:53:44+00	2019-07-06 08:03:45.835138+00	JavaScript	15162
994	1800198	rwaldron/idiomatic.js	https://avatars3.githubusercontent.com/u/27985?v=4	/rwaldron	2011-05-25 17:48:59+00	2019-07-06 06:35:32+00	2019-07-06 08:03:45.836968+00	nan	15157
995	1376664	Seldaek/monolog	https://avatars1.githubusercontent.com/u/183678?v=4	/Seldaek	2011-02-17 02:07:15+00	2019-07-05 15:49:38+00	2019-07-06 08:03:45.838782+00	PHP	15111
996	101684374	satwikkansal/wtfpython	https://avatars1.githubusercontent.com/u/10217535?v=4	/satwikkansal	2017-08-28 20:22:19+00	2019-07-06 07:27:24+00	2019-07-06 08:03:45.840506+00	Python	15097
997	45055693	balena-io/etcher	https://avatars1.githubusercontent.com/u/6157842?v=4	/balena-io	2015-10-27 16:53:23+00	2019-07-06 05:17:46+00	2019-07-06 08:03:45.842314+00	JavaScript	15094
998	35756351	nagadomi/waifu2x	https://avatars1.githubusercontent.com/u/287255?v=4	/nagadomi	2015-05-17 07:29:15+00	2019-07-06 06:50:25+00	2019-07-06 08:03:45.844197+00	Lua	15090
999	2278524	hubotio/hubot	https://avatars3.githubusercontent.com/u/10102049?v=4	/hubotio	2011-08-27 08:30:59+00	2019-07-05 18:00:09+00	2019-07-06 08:03:45.846022+00	JavaScript	15052
1000	26554	reddit-archive/reddit	https://avatars3.githubusercontent.com/u/35933936?v=4	/reddit-archive	2008-06-18 23:30:53+00	2019-07-05 02:25:24+00	2019-07-06 08:03:45.847747+00	Python	15037
1001	38366638	reduxjs/reselect	https://avatars3.githubusercontent.com/u/13142323?v=4	/reduxjs	2015-07-01 11:06:45+00	2019-07-06 07:17:56+00	2019-07-06 08:03:45.849527+00	JavaScript	15014
1002	33706598	reactnativecn/react-native-guide	https://avatars3.githubusercontent.com/u/14324374?v=4	/reactnativecn	2015-04-10 03:34:17+00	2019-07-06 07:04:24+00	2019-07-06 08:03:45.851477+00	nan	14971
1003	2371106	rubocop-hq/ruby-style-guide	https://avatars3.githubusercontent.com/u/39672756?v=4	/rubocop-hq	2011-09-12 13:03:05+00	2019-07-06 07:07:38+00	2019-07-06 08:03:45.853261+00	nan	14923
1004	41654081	drduh/macOS-Security-and-Privacy-Guide	https://avatars0.githubusercontent.com/u/12475110?v=4	/drduh	2015-08-31 03:36:35+00	2019-07-06 00:48:41+00	2019-07-06 08:03:45.855029+00	Python	14914
1005	7613257	SeleniumHQ/selenium	https://avatars2.githubusercontent.com/u/983927?v=4	/SeleniumHQ	2013-01-14 21:40:56+00	2019-07-06 03:41:01+00	2019-07-06 08:03:47.854157+00	Java	14899
1006	53133861	nikitavoloboev/my-mac-os	https://avatars0.githubusercontent.com/u/6391776?v=4	/nikitavoloboev	2016-03-04 12:26:34+00	2019-07-05 09:46:37+00	2019-07-06 08:03:47.856087+00	CSS	14887
1007	171244365	Micropoor/Micro8	https://avatars3.githubusercontent.com/u/30158344?v=4	/Micropoor	2019-02-18 08:30:52+00	2019-07-06 05:47:05+00	2019-07-06 08:03:47.857914+00	nan	14877
1008	24812854	alsotang/node-lessons	https://avatars1.githubusercontent.com/u/1147375?v=4	/alsotang	2014-10-05 09:57:08+00	2019-07-06 06:32:09+00	2019-07-06 08:03:47.860027+00	JavaScript	14855
1009	69164196	prisma/prisma	https://avatars0.githubusercontent.com/u/17219288?v=4	/prisma	2016-09-25 12:54:40+00	2019-07-06 04:43:12+00	2019-07-06 08:03:47.861791+00	Scala	14851
1010	21234201	mojs/mojs	https://avatars0.githubusercontent.com/u/9039853?v=4	/mojs	2014-06-26 08:49:14+00	2019-07-05 18:25:51+00	2019-07-06 08:03:47.863707+00	JavaScript	14842
1011	17803236	ncw/rclone	https://avatars2.githubusercontent.com/u/536803?v=4	/ncw	2014-03-16 16:19:57+00	2019-07-06 06:49:42+00	2019-07-06 08:03:47.865469+00	Go	14765
1012	56353740	kubernetes/minikube	https://avatars2.githubusercontent.com/u/13629408?v=4	/kubernetes	2016-04-15 22:38:35+00	2019-07-06 07:50:21+00	2019-07-06 08:03:47.867186+00	Go	14760
1013	77144337	openfaas/faas	https://avatars3.githubusercontent.com/u/27013154?v=4	/openfaas	2016-12-22 12:51:39+00	2019-07-06 04:20:37+00	2019-07-06 08:03:47.868886+00	Go	14749
1014	44998092	JohnCoates/Aerial	https://avatars1.githubusercontent.com/u/967800?v=4	/JohnCoates	2015-10-26 21:21:31+00	2019-07-06 07:24:34+00	2019-07-06 08:03:47.870578+00	Swift	14735
1015	5362524	adobe-fonts/source-code-pro	https://avatars1.githubusercontent.com/u/4028872?v=4	/adobe-fonts	2012-08-09 23:14:02+00	2019-07-06 05:32:23+00	2019-07-06 08:03:47.872387+00	Python	14731
1016	6094683	angular-ui/bootstrap	https://avatars3.githubusercontent.com/u/1530011?v=4	/angular-ui	2012-10-05 18:27:01+00	2019-07-02 11:25:24+00	2019-07-06 08:03:47.874159+00	JavaScript	14727
1017	61412022	ianstormtaylor/slate	https://avatars0.githubusercontent.com/u/311752?v=4	/ianstormtaylor	2016-06-18 01:52:42+00	2019-07-06 07:31:36+00	2019-07-06 08:03:47.876079+00	JavaScript	14720
1018	5101141	stedolan/jq	https://avatars3.githubusercontent.com/u/79765?v=4	/stedolan	2012-07-18 19:57:25+00	2019-07-06 04:08:02+00	2019-07-06 08:03:47.877824+00	C	14686
1019	887025	kriskowal/q	https://avatars1.githubusercontent.com/u/60294?v=4	/kriskowal	2010-09-04 01:21:12+00	2019-07-06 04:45:51+00	2019-07-06 08:03:47.879618+00	JavaScript	14679
1020	6256729	JacksonTian/fks	https://avatars3.githubusercontent.com/u/327019?v=4	/JacksonTian	2012-10-17 05:55:16+00	2019-07-06 07:41:23+00	2019-07-06 08:03:47.881404+00	JavaScript	14670
1021	72495579	go-gitea/gitea	https://avatars1.githubusercontent.com/u/12724356?v=4	/go-gitea	2016-11-01 02:13:26+00	2019-07-06 06:27:59+00	2019-07-06 08:03:47.883171+00	Go	14658
1022	8986773	benweet/stackedit	https://avatars1.githubusercontent.com/u/1005257?v=4	/benweet	2013-03-24 13:46:06+00	2019-07-06 00:26:56+00	2019-07-06 08:03:47.884881+00	JavaScript	14643
1023	11507163	uikit/uikit	https://avatars0.githubusercontent.com/u/4173184?v=4	/uikit	2013-07-18 16:00:26+00	2019-07-06 03:05:45+00	2019-07-06 08:03:47.886628+00	CSS	14643
1024	1431547	encode/django-rest-framework	https://avatars1.githubusercontent.com/u/19159390?v=4	/encode	2011-03-02 17:13:56+00	2019-07-06 07:17:41+00	2019-07-06 08:03:47.888487+00	Python	14634
1025	17372733	OAI/OpenAPI-Specification	https://avatars3.githubusercontent.com/u/16343502?v=4	/OAI	2014-03-03 16:53:36+00	2019-07-06 06:35:28+00	2019-07-06 08:03:47.890259+00	nan	14589
1026	59010815	ElemeFE/mint-ui	https://avatars1.githubusercontent.com/u/12810740?v=4	/ElemeFE	2016-05-17 09:54:10+00	2019-07-06 06:33:12+00	2019-07-06 08:03:47.891967+00	Vue	14586
1027	809601	wycats/handlebars.js	https://avatars0.githubusercontent.com/u/4?v=4	/wycats	2010-07-31 18:54:46+00	2019-07-05 22:36:51+00	2019-07-06 08:03:47.89376+00	JavaScript	14580
1028	4793392	sqlmapproject/sqlmap	https://avatars2.githubusercontent.com/u/735289?v=4	/sqlmapproject	2012-06-26 09:52:15+00	2019-07-06 00:36:59+00	2019-07-06 08:03:47.895642+00	Python	14569
1029	11116372	keystonejs/keystone	https://avatars1.githubusercontent.com/u/6118534?v=4	/keystonejs	2013-07-02 05:01:55+00	2019-07-06 03:45:26+00	2019-07-06 08:03:47.897473+00	JavaScript	14568
1030	16089035	wekan/wekan	https://avatars2.githubusercontent.com/u/11725037?v=4	/wekan	2014-01-21 01:26:28+00	2019-07-06 05:57:05+00	2019-07-06 08:03:47.899445+00	JavaScript	14564
1031	1213225	highlightjs/highlight.js	https://avatars0.githubusercontent.com/u/9039821?v=4	/highlightjs	2011-01-01 23:47:21+00	2019-07-06 01:17:45+00	2019-07-06 08:03:47.901216+00	JavaScript	14563
1032	21125024	typicode/husky	https://avatars2.githubusercontent.com/u/5502029?v=4	/typicode	2014-06-23 12:14:21+00	2019-07-06 06:45:57+00	2019-07-06 08:03:47.902923+00	JavaScript	14552
1033	24186761	Kotlin/anko	https://avatars3.githubusercontent.com/u/1446536?v=4	/Kotlin	2014-09-18 12:12:23+00	2019-07-05 16:18:56+00	2019-07-06 08:03:47.904733+00	Kotlin	14544
1034	49609581	PowerShell/PowerShell	https://avatars3.githubusercontent.com/u/11524380?v=4	/PowerShell	2016-01-13 23:41:35+00	2019-07-06 06:50:06+00	2019-07-06 08:03:47.906475+00	C#	14534
1035	59114705	nosir/cleave.js	https://avatars1.githubusercontent.com/u/352617?v=4	/nosir	2016-05-18 12:45:03+00	2019-07-05 14:28:22+00	2019-07-06 08:03:47.90838+00	JavaScript	14531
1036	12774825	HubSpot/pace	https://avatars2.githubusercontent.com/u/326419?v=4	/HubSpot	2013-09-12 04:24:29+00	2019-07-05 19:41:29+00	2019-07-06 08:03:47.910073+00	CSS	14516
1037	20822291	ipader/SwiftGuide	https://avatars3.githubusercontent.com/u/373016?v=4	/ipader	2014-06-14 01:17:57+00	2019-07-06 03:26:41+00	2019-07-06 08:03:47.911981+00	Swift	14508
1038	8538132	designmodo/Flat-UI	https://avatars3.githubusercontent.com/u/3756424?v=4	/designmodo	2013-03-03 15:36:49+00	2019-07-05 20:18:13+00	2019-07-06 08:03:47.913863+00	CSS	14483
1039	7874074	goldfire/howler.js	https://avatars2.githubusercontent.com/u/882005?v=4	/goldfire	2013-01-28 16:47:12+00	2019-07-06 05:03:46+00	2019-07-06 08:03:47.915678+00	JavaScript	14477
1040	17107479	framework7io/framework7	https://avatars2.githubusercontent.com/u/31954178?v=4	/framework7io	2014-02-23 12:15:53+00	2019-07-06 00:31:12+00	2019-07-06 08:03:47.917411+00	JavaScript	14477
1041	924303	madrobby/zepto	https://avatars3.githubusercontent.com/u/3390?v=4	/madrobby	2010-09-20 07:57:57+00	2019-07-06 06:26:25+00	2019-07-06 08:03:47.919213+00	HTML	14462
1042	27382163	iissnan/hexo-theme-next	https://avatars3.githubusercontent.com/u/32269?v=4	/iissnan	2014-12-01 14:07:07+00	2019-07-06 02:09:50+00	2019-07-06 08:03:47.921262+00	CSS	14442
1043	102973646	fastai/fastai	https://avatars3.githubusercontent.com/u/20547620?v=4	/fastai	2017-09-09 17:43:36+00	2019-07-06 07:52:23+00	2019-07-06 08:03:47.923141+00	Jupyter Notebook	14426
1044	84009	jasmine/jasmine	https://avatars0.githubusercontent.com/u/4624349?v=4	/jasmine	2008-12-02 23:46:37+00	2019-07-06 03:57:45+00	2019-07-06 08:03:47.924963+00	JavaScript	14425
1045	111583593	Genymobile/scrcpy	https://avatars2.githubusercontent.com/u/3427627?v=4	/Genymobile	2017-11-21 18:00:27+00	2019-07-06 07:41:50+00	2019-07-06 08:03:47.926753+00	C	14423
1046	11171548	nlohmann/json	https://avatars2.githubusercontent.com/u/159488?v=4	/nlohmann	2013-07-04 08:47:49+00	2019-07-06 04:14:27+00	2019-07-06 08:03:47.928552+00	C++	14420
1047	3422939	enyo/dropzone	https://avatars2.githubusercontent.com/u/133277?v=4	/enyo	2012-02-12 16:19:18+00	2019-07-06 03:31:20+00	2019-07-06 08:03:47.930398+00	JavaScript	14416
1048	3390243	servo/servo	https://avatars1.githubusercontent.com/u/2566135?v=4	/servo	2012-02-08 19:07:25+00	2019-07-06 06:31:34+00	2019-07-06 08:03:47.932204+00	Rust	14411
1049	82729529	google/python-fire	https://avatars1.githubusercontent.com/u/1342004?v=4	/google	2017-02-21 21:35:07+00	2019-07-06 04:34:50+00	2019-07-06 08:03:47.934006+00	Python	14404
1050	33486016	onevcat/Kingfisher	https://avatars0.githubusercontent.com/u/1019875?v=4	/onevcat	2015-04-06 14:26:21+00	2019-07-05 23:55:08+00	2019-07-06 08:03:47.935851+00	Swift	14402
1051	36836475	tmux/tmux	https://avatars2.githubusercontent.com/u/12054114?v=4	/tmux	2015-06-03 23:32:55+00	2019-07-06 00:49:09+00	2019-07-06 08:03:47.937632+00	C	14398
1052	28699471	lukasz-madon/awesome-remote-job	https://avatars2.githubusercontent.com/u/1547923?v=4	/lukasz-madon	2015-01-02 00:31:34+00	2019-07-06 07:23:09+00	2019-07-06 08:03:47.939484+00	nan	14390
1053	31504491	labstack/echo	https://avatars1.githubusercontent.com/u/2624634?v=4	/labstack	2015-03-01 17:43:01+00	2019-07-05 21:45:31+00	2019-07-06 08:03:47.941281+00	Go	14381
1054	5448530	twbs/ratchet	https://avatars0.githubusercontent.com/u/2918581?v=4	/twbs	2012-08-17 05:41:57+00	2019-07-05 20:43:56+00	2019-07-06 08:03:47.943097+00	CSS	14376
1055	11061773	eslint/eslint	https://avatars3.githubusercontent.com/u/6019716?v=4	/eslint	2013-06-29 23:59:48+00	2019-07-06 07:07:58+00	2019-07-06 08:03:47.945006+00	JavaScript	14372
1056	22394357	osquery/osquery	https://avatars1.githubusercontent.com/u/8315868?v=4	/osquery	2014-07-29 20:27:33+00	2019-07-05 22:50:03+00	2019-07-06 08:03:47.946788+00	C++	14345
1057	30794868	sampotts/plyr	https://avatars2.githubusercontent.com/u/719092?v=4	/sampotts	2015-02-14 11:33:07+00	2019-07-06 06:28:25+00	2019-07-06 08:03:47.948562+00	JavaScript	14333
1058	71939872	palantir/blueprint	https://avatars0.githubusercontent.com/u/303157?v=4	/palantir	2016-10-25 21:17:50+00	2019-07-06 05:45:23+00	2019-07-06 08:03:47.950457+00	TypeScript	14328
1059	32726377	ruanyf/react-demos	https://avatars0.githubusercontent.com/u/905434?v=4	/ruanyf	2015-03-23 10:50:07+00	2019-07-06 00:56:11+00	2019-07-06 08:03:47.952291+00	JavaScript	14320
1060	52677592	jtoy/awesome-tensorflow	https://avatars0.githubusercontent.com/u/14783?v=4	/jtoy	2016-02-27 17:00:27+00	2019-07-05 12:12:21+00	2019-07-06 08:03:47.954327+00	nan	14318
1061	20281866	cjbarber/ToolsOfTheTrade	https://avatars0.githubusercontent.com/u/3237905?v=4	/cjbarber	2014-05-29 04:11:33+00	2019-07-05 06:07:34+00	2019-07-06 08:03:47.956069+00	nan	14311
1062	1607357	visionmedia/superagent	https://avatars1.githubusercontent.com/u/9285252?v=4	/visionmedia	2011-04-13 02:29:45+00	2019-07-05 20:44:52+00	2019-07-06 08:03:47.957852+00	JavaScript	14303
1063	448045	sebastianbergmann/phpunit	https://avatars1.githubusercontent.com/u/25218?v=4	/sebastianbergmann	2009-12-24 13:16:23+00	2019-07-06 06:10:34+00	2019-07-06 08:03:47.959766+00	PHP	14291
1064	146633589	alibaba/arthas	https://avatars1.githubusercontent.com/u/1961952?v=4	/alibaba	2018-08-29 17:15:57+00	2019-07-06 06:07:50+00	2019-07-06 08:03:47.961743+00	Java	14289
1065	6934395	facebook/rocksdb	https://avatars3.githubusercontent.com/u/69631?v=4	/facebook	2012-11-30 06:16:18+00	2019-07-06 06:47:06+00	2019-07-06 08:03:47.963594+00	C++	14271
1066	130464961	sharkdp/bat	https://avatars2.githubusercontent.com/u/4209276?v=4	/sharkdp	2018-04-21 10:52:23+00	2019-07-06 07:23:05+00	2019-07-06 08:03:47.965346+00	Rust	14264
1067	805461	mysqljs/mysql	https://avatars0.githubusercontent.com/u/18713232?v=4	/mysqljs	2010-07-29 14:58:13+00	2019-07-06 07:11:47+00	2019-07-06 08:03:47.967064+00	JavaScript	14256
1068	54544023	Alvin9999/new-pac	https://avatars2.githubusercontent.com/u/12132898?v=4	/Alvin9999	2016-03-23 08:43:36+00	2019-07-06 07:45:49+00	2019-07-06 08:03:47.9689+00	nan	14250
1069	67186968	chinese-poetry/chinese-poetry	https://avatars0.githubusercontent.com/u/30764933?v=4	/chinese-poetry	2016-09-02 03:32:25+00	2019-07-06 03:34:03+00	2019-07-06 08:03:47.970646+00	Python	14212
1070	53266139	BoostIO/Boostnote	https://avatars3.githubusercontent.com/u/13612118?v=4	/BoostIO	2016-03-06 17:06:07+00	2019-07-06 08:02:59+00	2019-07-06 08:03:47.972325+00	JavaScript	14209
1071	24579238	vuejs/vue-devtools	https://avatars1.githubusercontent.com/u/6128107?v=4	/vuejs	2014-09-29 03:52:07+00	2019-07-06 03:31:27+00	2019-07-06 08:03:47.974592+00	JavaScript	14199
1072	13855476	jinzhu/gorm	https://avatars3.githubusercontent.com/u/6843?v=4	/jinzhu	2013-10-25 08:31:38+00	2019-07-06 04:35:02+00	2019-07-06 08:03:47.97644+00	Go	14194
1073	19745004	odoo/odoo	https://avatars2.githubusercontent.com/u/6368483?v=4	/odoo	2014-05-13 15:38:58+00	2019-07-06 07:19:44+00	2019-07-06 08:03:47.978275+00	JavaScript	14190
1074	37153337	necolas/react-native-web	https://avatars2.githubusercontent.com/u/239676?v=4	/necolas	2015-06-09 19:25:38+00	2019-07-06 08:03:21+00	2019-07-06 08:03:47.980056+00	JavaScript	14181
1075	1207300	statsd/statsd	https://avatars0.githubusercontent.com/u/8270030?v=4	/statsd	2010-12-30 00:09:50+00	2019-07-06 07:15:19+00	2019-07-06 08:03:47.981825+00	JavaScript	14156
1076	58034548	google/flexbox-layout	https://avatars1.githubusercontent.com/u/1342004?v=4	/google	2016-05-04 08:11:22+00	2019-07-05 17:37:22+00	2019-07-06 08:03:47.983693+00	Kotlin	14147
1077	380961	desandro/masonry	https://avatars0.githubusercontent.com/u/85566?v=4	/desandro	2009-11-21 21:04:56+00	2019-07-05 12:52:50+00	2019-07-06 08:03:47.985444+00	HTML	14142
1078	38307428	graphql/graphql-js	https://avatars0.githubusercontent.com/u/12972006?v=4	/graphql	2015-06-30 12:16:50+00	2019-07-06 02:05:58+00	2019-07-06 08:03:47.987205+00	JavaScript	14123
1079	30215630	go-kit/kit	https://avatars0.githubusercontent.com/u/10981023?v=4	/go-kit	2015-02-03 00:01:19+00	2019-07-06 03:33:10+00	2019-07-06 08:03:47.988992+00	Go	14123
1080	13753636	jhipster/generator-jhipster	https://avatars3.githubusercontent.com/u/6059488?v=4	/jhipster	2013-10-21 20:07:22+00	2019-07-06 06:41:57+00	2019-07-06 08:03:47.990684+00	JavaScript	14113
1081	15116946	vuejs/vue-router	https://avatars1.githubusercontent.com/u/6128107?v=4	/vuejs	2013-12-11 19:37:46+00	2019-07-06 07:33:33+00	2019-07-06 08:03:47.992629+00	JavaScript	14095
1082	11820425	wagerfield/parallax	https://avatars3.githubusercontent.com/u/412747?v=4	/wagerfield	2013-08-01 15:28:05+00	2019-07-05 21:56:26+00	2019-07-06 08:03:47.994476+00	JavaScript	14091
1083	96246170	ApolloAuto/apollo	https://avatars1.githubusercontent.com/u/28768304?v=4	/ApolloAuto	2017-07-04 19:03:31+00	2019-07-06 08:01:34+00	2019-07-06 08:03:47.996276+00	C++	14063
1084	29112049	HelloZeroNet/ZeroNet	https://avatars0.githubusercontent.com/u/10350359?v=4	/HelloZeroNet	2015-01-12 00:41:38+00	2019-07-06 05:11:51+00	2019-07-06 08:03:47.998056+00	Python	14031
1085	164608222	alibaba/flutter-go	https://avatars1.githubusercontent.com/u/1961952?v=4	/alibaba	2019-01-08 09:03:40+00	2019-07-06 07:22:44+00	2019-07-06 08:03:47.999922+00	Dart	14021
1086	58028038	521xueweihan/HelloGitHub	https://avatars3.githubusercontent.com/u/8255800?v=4	/521xueweihan	2016-05-04 06:24:11+00	2019-07-06 06:43:11+00	2019-07-06 08:03:48.001848+00	Python	13979
1087	99433554	googlehosts/hosts	https://avatars2.githubusercontent.com/u/30318333?v=4	/googlehosts	2017-08-05 16:10:32+00	2019-07-06 07:47:03+00	2019-07-06 08:03:48.003707+00	nan	13978
1088	16072585	phoenixframework/phoenix	https://avatars2.githubusercontent.com/u/6510388?v=4	/phoenixframework	2014-01-20 14:14:11+00	2019-07-06 05:11:43+00	2019-07-06 08:03:48.005505+00	Elixir	13967
1089	81080671	oxford-cs-deepnlp-2017/lectures	https://avatars1.githubusercontent.com/u/25229317?v=4	/oxford-cs-deepnlp-2017	2017-02-06 11:32:46+00	2019-07-06 02:27:54+00	2019-07-06 08:03:48.007296+00	nan	13966
1090	43797718	acdlite/recompose	https://avatars0.githubusercontent.com/u/3624098?v=4	/acdlite	2015-10-07 05:54:51+00	2019-07-06 06:22:03+00	2019-07-06 08:03:48.009629+00	JavaScript	13955
1091	138634298	microsoft/MS-DOS	https://avatars2.githubusercontent.com/u/6154722?v=4	/microsoft	2018-06-25 18:26:02+00	2019-07-06 05:19:23+00	2019-07-06 08:03:48.011405+00	Assembly	13935
1092	569041	curl/curl	https://avatars0.githubusercontent.com/u/16928085?v=4	/curl	2010-03-18 22:32:22+00	2019-07-06 05:37:05+00	2019-07-06 08:03:48.013135+00	C	13933
1093	115675788	wangshub/wechat_jump_game	https://avatars0.githubusercontent.com/u/20924010?v=4	/wangshub	2017-12-29 02:00:19+00	2019-07-06 06:08:36+00	2019-07-06 08:03:48.01492+00	Python	13922
1094	65233633	zeit/pkg	https://avatars0.githubusercontent.com/u/14985020?v=4	/zeit	2016-08-08 19:41:59+00	2019-07-05 21:19:49+00	2019-07-06 08:03:48.017489+00	JavaScript	13910
1095	67481986	Tencent/tinker	https://avatars3.githubusercontent.com/u/18461506?v=4	/Tencent	2016-09-06 06:57:52+00	2019-07-06 06:06:29+00	2019-07-06 08:03:48.019335+00	Java	13894
1096	7693799	angular-ui/ui-router	https://avatars3.githubusercontent.com/u/1530011?v=4	/angular-ui	2013-01-18 20:26:29+00	2019-07-05 17:45:45+00	2019-07-06 08:03:48.021068+00	TypeScript	13892
1097	49009950	braydie/HowToBeAProgrammer	https://avatars0.githubusercontent.com/u/1651008?v=4	/braydie	2016-01-04 16:47:54+00	2019-07-06 04:08:31+00	2019-07-06 08:03:48.022969+00	nan	13872
1098	619849	spf13/spf13-vim	https://avatars1.githubusercontent.com/u/173412?v=4	/spf13	2010-04-20 16:20:16+00	2019-07-06 02:12:39+00	2019-07-06 08:03:48.025084+00	Vim script	13862
1099	52773157	typeorm/typeorm	https://avatars0.githubusercontent.com/u/20165699?v=4	/typeorm	2016-02-29 07:41:14+00	2019-07-06 07:41:10+00	2019-07-06 08:03:48.026914+00	TypeScript	13848
1100	18666758	pjreddie/darknet	https://avatars0.githubusercontent.com/u/302108?v=4	/pjreddie	2014-04-11 07:59:16+00	2019-07-06 02:12:44+00	2019-07-06 08:03:48.028651+00	C	13842
1101	23689830	yeasy/docker_practice	https://avatars1.githubusercontent.com/u/1920564?v=4	/yeasy	2014-09-05 04:06:39+00	2019-07-06 06:48:29+00	2019-07-06 08:03:48.030385+00	Go	13835
1102	84703916	chaozh/awesome-blockchain-cn	https://avatars0.githubusercontent.com/u/1067743?v=4	/chaozh	2017-03-12 06:02:46+00	2019-07-06 02:40:49+00	2019-07-06 08:03:48.032652+00	JavaScript	13807
1103	8201256	joewalnes/websocketd	https://avatars3.githubusercontent.com/u/48950?v=4	/joewalnes	2013-02-14 14:52:55+00	2019-07-05 23:20:27+00	2019-07-06 08:03:48.034572+00	Go	13793
1104	6064342	limetext/lime	https://avatars0.githubusercontent.com/u/5825890?v=4	/limetext	2012-10-03 18:10:02+00	2019-07-05 21:00:31+00	2019-07-06 08:03:48.03626+00	nan	13778
1105	69953445	shuzheng/zheng	https://avatars2.githubusercontent.com/u/3739568?v=4	/shuzheng	2016-10-04 10:07:06+00	2019-07-06 06:53:23+00	2019-07-06 08:03:50.911201+00	Java	13777
1106	30161665	infernojs/inferno	https://avatars2.githubusercontent.com/u/14214240?v=4	/infernojs	2015-02-01 22:07:38+00	2019-07-05 21:43:38+00	2019-07-06 08:03:50.913216+00	JavaScript	13777
1107	13233158	obsproject/obs-studio	https://avatars1.githubusercontent.com/u/7725691?v=4	/obsproject	2013-10-01 02:40:31+00	2019-07-06 08:02:11+00	2019-07-06 08:03:50.91578+00	C	13773
1108	2909429	nicolargo/glances	https://avatars0.githubusercontent.com/u/776747?v=4	/nicolargo	2011-12-04 08:49:15+00	2019-07-06 04:53:51+00	2019-07-06 08:03:50.917458+00	Python	13758
1109	41592744	AllThingsSmitty/css-protips	https://avatars1.githubusercontent.com/u/1682367?v=4	/AllThingsSmitty	2015-08-29 12:29:03+00	2019-07-06 00:14:34+00	2019-07-06 08:03:50.919103+00	nan	13753
1110	24976755	hankcs/HanLP	https://avatars0.githubusercontent.com/u/5326890?v=4	/hankcs	2014-10-09 06:36:16+00	2019-07-06 07:48:27+00	2019-07-06 08:03:50.921474+00	Java	13752
1111	13142126	riot/riot	https://avatars3.githubusercontent.com/u/12729373?v=4	/riot	2013-09-27 05:21:01+00	2019-07-06 01:43:42+00	2019-07-06 08:03:50.924297+00	JavaScript	13741
1112	10365411	yabwe/medium-editor	https://avatars1.githubusercontent.com/u/12655868?v=4	/yabwe	2013-05-29 17:40:11+00	2019-07-06 06:04:27+00	2019-07-06 08:03:50.92725+00	JavaScript	13738
1113	5133949	swoole/swoole-src	https://avatars1.githubusercontent.com/u/8121270?v=4	/swoole	2012-07-21 13:49:59+00	2019-07-06 07:44:23+00	2019-07-06 08:03:50.930288+00	C++	13737
1114	21467110	explosion/spaCy	https://avatars3.githubusercontent.com/u/20011530?v=4	/explosion	2014-07-03 15:15:40+00	2019-07-05 21:34:54+00	2019-07-06 08:03:50.936423+00	Python	13722
1115	13473768	ionic-team/ionicons	https://avatars0.githubusercontent.com/u/3171503?v=4	/ionic-team	2013-10-10 14:34:18+00	2019-07-06 03:16:08+00	2019-07-06 08:03:50.942287+00	HTML	13719
1116	15315789	Wox-launcher/Wox	https://avatars3.githubusercontent.com/u/15628601?v=4	/Wox-launcher	2013-12-19 15:49:32+00	2019-07-06 04:46:28+00	2019-07-06 08:03:50.950669+00	C#	13708
1117	1381283	altercation/solarized	https://avatars0.githubusercontent.com/u/113542?v=4	/altercation	2011-02-18 05:18:27+00	2019-07-06 07:07:44+00	2019-07-06 08:03:50.95393+00	Vim script	13693
1118	11829145	basecamp/trix	https://avatars0.githubusercontent.com/u/13131?v=4	/basecamp	2013-08-01 22:21:30+00	2019-07-06 06:52:04+00	2019-07-06 08:03:50.956418+00	CoffeeScript	13681
1119	90792131	googlesamples/android-architecture-components	https://avatars3.githubusercontent.com/u/7378196?v=4	/googlesamples	2017-05-09 21:09:14+00	2019-07-06 06:54:37+00	2019-07-06 08:03:50.959498+00	Kotlin	13677
1120	58842707	trailofbits/algo	https://avatars0.githubusercontent.com/u/2314423?v=4	/trailofbits	2016-05-15 03:42:48+00	2019-07-06 05:28:55+00	2019-07-06 08:03:50.964898+00	Python	13672
1121	45147841	facebook/prepack	https://avatars3.githubusercontent.com/u/69631?v=4	/facebook	2015-10-28 23:25:08+00	2019-07-06 05:30:33+00	2019-07-06 08:03:50.968019+00	JavaScript	13671
1122	658518	ipython/ipython	https://avatars3.githubusercontent.com/u/230453?v=4	/ipython	2010-05-10 04:46:06+00	2019-07-06 03:03:09+00	2019-07-06 08:03:50.970914+00	Python	13653
1123	124257233	react-spring/react-spring	https://avatars0.githubusercontent.com/u/45790596?v=4	/react-spring	2018-03-07 15:39:32+00	2019-07-06 07:15:49+00	2019-07-06 08:03:50.973073+00	JavaScript	13638
1124	89012427	airbnb/react-sketchapp	https://avatars3.githubusercontent.com/u/698437?v=4	/airbnb	2017-04-21 18:27:39+00	2019-07-06 05:42:59+00	2019-07-06 08:03:50.975163+00	JavaScript	13605
1125	97249406	denysdovhan/wtfjs	https://avatars1.githubusercontent.com/u/3459374?v=4	/denysdovhan	2017-07-14 15:42:12+00	2019-07-05 22:55:12+00	2019-07-06 08:03:50.977171+00	JavaScript	13595
1126	1206546	winstonjs/winston	https://avatars1.githubusercontent.com/u/9682013?v=4	/winstonjs	2010-12-29 18:49:51+00	2019-07-06 07:02:15+00	2019-07-06 08:03:50.979152+00	JavaScript	13583
1127	965782	validatorjs/validator.js	https://avatars0.githubusercontent.com/u/52114810?v=4	/validatorjs	2010-10-06 06:58:48+00	2019-07-06 06:26:49+00	2019-07-06 08:03:50.98135+00	JavaScript	13550
1128	23112526	android10/Android-CleanArchitecture	https://avatars0.githubusercontent.com/u/1360604?v=4	/android10	2014-08-19 14:09:26+00	2019-07-05 14:23:44+00	2019-07-06 08:03:50.986027+00	Java	13547
1129	53619303	fbsamples/f8app	https://avatars3.githubusercontent.com/u/1541324?v=4	/fbsamples	2016-03-10 21:45:12+00	2019-07-06 07:35:19+00	2019-07-06 08:03:50.99123+00	JavaScript	13536
1130	10309334	nswbmw/N-blog	https://avatars0.githubusercontent.com/u/4279697?v=4	/nswbmw	2013-05-27 06:46:58+00	2019-07-06 04:25:44+00	2019-07-06 08:03:50.994362+00	JavaScript	13528
1131	6887813	crystal-lang/crystal	https://avatars0.githubusercontent.com/u/6539796?v=4	/crystal-lang	2012-11-27 17:32:32+00	2019-07-06 07:37:27+00	2019-07-06 08:03:50.997173+00	Crystal	13509
1132	58157629	tensorflow/magenta	https://avatars1.githubusercontent.com/u/15658638?v=4	/tensorflow	2016-05-05 20:10:40+00	2019-07-06 07:03:56+00	2019-07-06 08:03:51.001011+00	Python	13497
1133	43568832	PerfectlySoft/Perfect	https://avatars1.githubusercontent.com/u/14945043?v=4	/PerfectlySoft	2015-10-02 18:20:08+00	2019-07-05 09:19:06+00	2019-07-06 08:03:51.01959+00	Swift	13489
1134	20818126	google/ExoPlayer	https://avatars1.githubusercontent.com/u/1342004?v=4	/google	2014-06-13 21:19:18+00	2019-07-05 22:21:14+00	2019-07-06 08:03:51.024795+00	Java	13457
1135	84476389	jamiebuilds/react-loadable	https://avatars0.githubusercontent.com/u/952783?v=4	/jamiebuilds	2017-03-09 18:41:17+00	2019-07-06 02:35:44+00	2019-07-06 08:03:51.030342+00	JavaScript	13455
1136	61872036	dvajs/dva	https://avatars3.githubusercontent.com/u/20552239?v=4	/dvajs	2016-06-24 09:06:16+00	2019-07-06 07:41:48+00	2019-07-06 08:03:51.033739+00	JavaScript	13437
1137	89247811	CMU-Perceptual-Computing-Lab/openpose	https://avatars2.githubusercontent.com/u/12239573?v=4	/CMU-Perceptual-Computing-Lab	2017-04-24 14:06:31+00	2019-07-06 03:03:20+00	2019-07-06 08:03:51.037985+00	C++	13427
1138	104337773	1c7/chinese-independent-developer	https://avatars0.githubusercontent.com/u/1804755?v=4	/1c7	2017-09-21 11:08:23+00	2019-07-06 07:48:37+00	2019-07-06 08:03:51.046658+00	nan	13425
1139	71583602	Developer-Y/cs-video-courses	https://avatars1.githubusercontent.com/u/22699926?v=4	/Developer-Y	2016-10-21 17:02:11+00	2019-07-06 05:48:56+00	2019-07-06 08:03:51.050091+00	nan	13425
1140	45261969	android/plaid	https://avatars3.githubusercontent.com/u/32689599?v=4	/android	2015-10-30 16:10:56+00	2019-07-06 04:46:51+00	2019-07-06 08:03:51.053802+00	Kotlin	13393
1141	15008072	sindresorhus/quick-look-plugins	https://avatars1.githubusercontent.com/u/170270?v=4	/sindresorhus	2013-12-07 15:43:33+00	2019-07-06 04:20:36+00	2019-07-06 08:03:51.057528+00	nan	13386
1142	82285884	jeromeetienne/AR.js	https://avatars2.githubusercontent.com/u/252962?v=4	/jeromeetienne	2017-02-17 10:27:59+00	2019-07-06 07:31:02+00	2019-07-06 08:03:51.064885+00	JavaScript	13380
1143	1093228	cocos2d/cocos2d-x	https://avatars3.githubusercontent.com/u/234324?v=4	/cocos2d	2010-11-18 23:17:00+00	2019-07-05 16:13:38+00	2019-07-06 08:03:51.067775+00	C++	13364
1144	2253830	PHPMailer/PHPMailer	https://avatars2.githubusercontent.com/u/3959702?v=4	/PHPMailer	2011-08-23 07:57:17+00	2019-07-05 18:33:09+00	2019-07-06 08:03:51.070135+00	PHP	13364
1145	1195004	angular/angular-seed	https://avatars3.githubusercontent.com/u/139426?v=4	/angular	2010-12-24 06:07:50+00	2019-07-05 18:40:46+00	2019-07-06 08:03:51.072582+00	JavaScript	13351
1146	45723377	charlax/professional-programming	https://avatars0.githubusercontent.com/u/120501?v=4	/charlax	2015-11-07 05:07:52+00	2019-07-05 12:19:21+00	2019-07-06 08:03:51.07529+00	Shell	13350
1147	17066884	binux/pyspider	https://avatars3.githubusercontent.com/u/646451?v=4	/binux	2014-02-21 19:18:47+00	2019-07-05 14:16:40+00	2019-07-06 08:03:51.080088+00	Python	13339
1148	53639099	jamiebuilds/the-super-tiny-compiler	https://avatars0.githubusercontent.com/u/952783?v=4	/jamiebuilds	2016-03-11 04:19:18+00	2019-07-06 05:42:21+00	2019-07-06 08:03:51.082346+00	JavaScript	13333
1149	1103607	jenkinsci/jenkins	https://avatars0.githubusercontent.com/u/107424?v=4	/jenkinsci	2010-11-22 21:21:23+00	2019-07-05 23:12:10+00	2019-07-06 08:03:51.08484+00	Java	13317
1150	4044891	realm/realm-cocoa	https://avatars0.githubusercontent.com/u/7575099?v=4	/realm	2012-04-16 20:06:56+00	2019-07-05 17:06:09+00	2019-07-06 08:03:51.087418+00	Objective-C	13314
1151	4279682	fish-shell/fish-shell	https://avatars0.githubusercontent.com/u/1828073?v=4	/fish-shell	2012-05-10 03:00:55+00	2019-07-06 06:51:35+00	2019-07-06 08:03:51.090274+00	Shell	13294
1152	12226786	lovell/sharp	https://avatars3.githubusercontent.com/u/210965?v=4	/lovell	2013-08-19 20:24:24+00	2019-07-06 01:18:04+00	2019-07-06 08:03:51.093429+00	JavaScript	13291
1153	65678789	FormidableLabs/webpack-dashboard	https://avatars3.githubusercontent.com/u/5078602?v=4	/FormidableLabs	2016-08-14 17:44:33+00	2019-07-05 14:40:44+00	2019-07-06 08:03:51.095798+00	JavaScript	13290
1154	72717562	alibaba/ice	https://avatars1.githubusercontent.com/u/1961952?v=4	/alibaba	2016-11-03 06:59:15+00	2019-07-06 07:44:52+00	2019-07-06 08:03:51.098222+00	JavaScript	13287
1155	56969116	ngosang/trackerslist	https://avatars1.githubusercontent.com/u/10577978?v=4	/ngosang	2016-04-24 11:57:57+00	2019-07-06 07:17:19+00	2019-07-06 08:03:51.100741+00	nan	13286
1156	48610662	Neilpang/acme.sh	https://avatars2.githubusercontent.com/u/8305679?v=4	/Neilpang	2015-12-26 12:56:33+00	2019-07-06 03:28:38+00	2019-07-06 08:03:51.102793+00	Shell	13259
1157	12358097	hackiftekhar/IQKeyboardManager	https://avatars2.githubusercontent.com/u/3831495?v=4	/hackiftekhar	2013-08-25 11:32:48+00	2019-07-06 02:43:24+00	2019-07-06 08:03:51.105002+00	Objective-C	13256
1158	32157172	gfwlist/gfwlist	https://avatars1.githubusercontent.com/u/11460227?v=4	/gfwlist	2015-03-13 13:24:56+00	2019-07-06 07:37:42+00	2019-07-06 08:03:51.107109+00	nan	13251
1159	4524181	facebook/folly	https://avatars3.githubusercontent.com/u/69631?v=4	/facebook	2012-06-01 20:49:04+00	2019-07-05 23:24:40+00	2019-07-06 08:03:51.1093+00	C++	13251
1160	93076012	prisma-archive/chromeless	https://avatars1.githubusercontent.com/u/45311580?v=4	/prisma-archive	2017-06-01 16:11:11+00	2019-07-05 13:14:36+00	2019-07-06 08:03:51.111227+00	TypeScript	13234
1161	105036236	Shopify/draggable	https://avatars1.githubusercontent.com/u/8085?v=4	/Shopify	2017-09-27 15:31:23+00	2019-07-06 06:27:50+00	2019-07-06 08:03:51.113417+00	JavaScript	13210
1162	28513398	MengTo/Spring	https://avatars1.githubusercontent.com/u/1065452?v=4	/MengTo	2014-12-26 14:57:02+00	2019-07-05 12:03:56+00	2019-07-06 08:03:51.115929+00	Swift	13200
1163	31288958	hashicorp/vault	https://avatars2.githubusercontent.com/u/761456?v=4	/hashicorp	2015-02-25 00:15:59+00	2019-07-06 04:25:54+00	2019-07-06 08:03:51.117716+00	Go	13194
1164	22607013	amazeui/amazeui	https://avatars0.githubusercontent.com/u/8945728?v=4	/amazeui	2014-08-04 14:23:37+00	2019-07-06 06:28:01+00	2019-07-06 08:03:51.119662+00	JavaScript	13186
1165	5405654	pcottle/learnGitBranching	https://avatars0.githubusercontent.com/u/1135007?v=4	/pcottle	2012-08-13 22:36:09+00	2019-07-06 07:02:54+00	2019-07-06 08:03:51.121455+00	JavaScript	13186
1166	326688	janl/mustache.js	https://avatars1.githubusercontent.com/u/11321?v=4	/janl	2009-10-04 23:41:19+00	2019-07-05 12:00:34+00	2019-07-06 08:03:51.123921+00	JavaScript	13180
1167	31629751	cypress-io/cypress	https://avatars3.githubusercontent.com/u/8908513?v=4	/cypress-io	2015-03-04 00:46:28+00	2019-07-06 07:33:39+00	2019-07-06 08:03:51.12641+00	CoffeeScript	13180
1168	32531480	js-cookie/js-cookie	https://avatars0.githubusercontent.com/u/11557446?v=4	/js-cookie	2015-03-19 15:57:47+00	2019-07-06 03:59:13+00	2019-07-06 08:03:51.129245+00	JavaScript	13175
1169	128237146	vuejs/vuepress	https://avatars1.githubusercontent.com/u/6128107?v=4	/vuejs	2018-04-05 16:58:38+00	2019-07-06 05:10:48+00	2019-07-06 08:03:51.132094+00	JavaScript	13165
1170	49594603	n0shake/Public-APIs	https://avatars3.githubusercontent.com/u/8280282?v=4	/n0shake	2016-01-13 18:53:25+00	2019-07-06 07:57:58+00	2019-07-06 08:03:51.134602+00	nan	13161
1171	21265042	facebookarchive/AsyncDisplayKit	https://avatars0.githubusercontent.com/u/7560860?v=4	/facebookarchive	2014-06-27 05:29:02+00	2019-07-06 07:46:49+00	2019-07-06 08:03:51.136922+00	Objective-C++	13160
1172	19542809	interagent/http-api-design	https://avatars2.githubusercontent.com/u/7388387?v=4	/interagent	2014-05-07 17:00:37+00	2019-07-05 01:18:17+00	2019-07-06 08:03:51.138711+00	nan	13140
1173	88876034	TKkk-iOSer/WeChatPlugin-MacOS	https://avatars2.githubusercontent.com/u/11961989?v=4	/TKkk-iOSer	2017-04-20 14:37:37+00	2019-07-06 07:15:44+00	2019-07-06 08:03:51.14062+00	Objective-C	13130
1174	61421257	eggjs/egg	https://avatars1.githubusercontent.com/u/15833670?v=4	/eggjs	2016-06-18 06:53:23+00	2019-07-06 07:59:35+00	2019-07-06 08:03:51.143702+00	JavaScript	13096
1175	9354478	ibireme/YYKit	https://avatars1.githubusercontent.com/u/839283?v=4	/ibireme	2013-04-10 19:47:33+00	2019-07-06 06:48:29+00	2019-07-06 08:03:51.146658+00	Objective-C	13092
1176	40508605	facebook/relay	https://avatars3.githubusercontent.com/u/69631?v=4	/facebook	2015-08-10 22:09:16+00	2019-07-06 06:22:30+00	2019-07-06 08:03:51.148747+00	JavaScript	13092
1177	13926404	getredash/redash	https://avatars2.githubusercontent.com/u/10746780?v=4	/getredash	2013-10-28 13:19:39+00	2019-07-06 05:03:26+00	2019-07-06 08:03:51.150983+00	Python	13073
1178	760732	ccgus/fmdb	https://avatars1.githubusercontent.com/u/60178?v=4	/ccgus	2010-07-06 22:50:17+00	2019-07-05 09:40:39+00	2019-07-06 08:03:51.153076+00	Objective-C	13060
1179	3112748	leereilly/games	https://avatars3.githubusercontent.com/u/121322?v=4	/leereilly	2012-01-05 19:48:55+00	2019-07-06 07:00:54+00	2019-07-06 08:03:51.155053+00	nan	13060
1180	12488374	hzlzh/Best-App	https://avatars3.githubusercontent.com/u/1049575?v=4	/hzlzh	2013-08-30 14:32:19+00	2019-07-06 06:03:59+00	2019-07-06 08:03:51.156874+00	nan	13052
1181	150042589	nostalgic-css/NES.css	https://avatars2.githubusercontent.com/u/45549457?v=4	/nostalgic-css	2018-09-24 01:49:11+00	2019-07-05 21:57:46+00	2019-07-06 08:03:51.159137+00	CSS	13045
1182	76222419	Tencent/mars	https://avatars3.githubusercontent.com/u/18461506?v=4	/Tencent	2016-12-12 04:39:54+00	2019-07-06 04:50:19+00	2019-07-06 08:03:51.161618+00	C++	13033
1183	25050844	Carthage/Carthage	https://avatars1.githubusercontent.com/u/9146792?v=4	/Carthage	2014-10-10 19:54:55+00	2019-07-05 22:54:09+00	2019-07-06 08:03:51.164056+00	Swift	12994
1184	4008931	StevenBlack/hosts	https://avatars0.githubusercontent.com/u/80144?v=4	/StevenBlack	2012-04-12 20:22:50+00	2019-07-06 04:04:48+00	2019-07-06 08:03:51.166433+00	Python	12993
1185	21561301	acgotaku/BaiduExporter	https://avatars1.githubusercontent.com/u/1191834?v=4	/acgotaku	2014-07-07 07:37:07+00	2019-07-06 04:42:20+00	2019-07-06 08:03:51.168373+00	JavaScript	12991
1186	11892946	uglide/RedisDesktopManager	https://avatars1.githubusercontent.com/u/1655867?v=4	/uglide	2013-08-05 07:51:08+00	2019-07-06 07:52:58+00	2019-07-06 08:03:51.170544+00	C++	12975
1187	137147386	dylanaraps/pure-bash-bible	https://avatars3.githubusercontent.com/u/6799467?v=4	/dylanaraps	2018-06-13 01:39:33+00	2019-07-06 04:07:23+00	2019-07-06 08:03:51.172602+00	Shell	12965
1188	712530	fabricjs/fabric.js	https://avatars0.githubusercontent.com/u/24580162?v=4	/fabricjs	2010-06-09 22:24:38+00	2019-07-05 19:12:08+00	2019-07-06 08:03:51.174704+00	JavaScript	12962
1189	28723659	ChristosChristofidis/awesome-deep-learning	https://avatars0.githubusercontent.com/u/7767579?v=4	/ChristosChristofidis	2015-01-02 19:28:35+00	2019-07-06 08:03:13+00	2019-07-06 08:03:51.176761+00	nan	12959
1190	3431193	yiisoft/yii2	https://avatars3.githubusercontent.com/u/993323?v=4	/yiisoft	2012-02-13 15:32:36+00	2019-07-05 18:16:50+00	2019-07-06 08:03:51.178735+00	PHP	12943
1191	31168578	hemanth/functional-programming-jargon	https://avatars0.githubusercontent.com/u/18315?v=4	/hemanth	2015-02-22 16:04:42+00	2019-07-05 12:23:25+00	2019-07-06 08:03:51.18055+00	nan	12937
1192	33884891	apache/airflow	https://avatars0.githubusercontent.com/u/47359?v=4	/apache	2015-04-13 18:04:58+00	2019-07-06 04:57:52+00	2019-07-06 08:03:51.182322+00	Python	12929
1193	106017343	tailwindcss/tailwindcss	https://avatars3.githubusercontent.com/u/30317862?v=4	/tailwindcss	2017-10-06 14:59:14+00	2019-07-06 08:00:27+00	2019-07-06 08:03:51.184341+00	CSS	12897
1194	14812739	libuv/libuv	https://avatars1.githubusercontent.com/u/4030929?v=4	/libuv	2013-11-30 00:29:56+00	2019-07-06 02:40:32+00	2019-07-06 08:03:51.186347+00	C	12895
1195	184460	celery/celery	https://avatars2.githubusercontent.com/u/319983?v=4	/celery	2009-04-24 11:31:24+00	2019-07-06 04:21:15+00	2019-07-06 08:03:51.188108+00	Python	12879
1196	107595270	matterport/Mask_RCNN	https://avatars1.githubusercontent.com/u/4206481?v=4	/matterport	2017-10-19 20:28:34+00	2019-07-06 07:21:16+00	2019-07-06 08:03:51.190331+00	Python	12872
1197	31865176	lgvalle/Material-Animations	https://avatars0.githubusercontent.com/u/354372?v=4	/lgvalle	2015-03-08 20:54:00+00	2019-07-06 02:07:37+00	2019-07-06 08:03:51.193586+00	Java	12871
1198	24420506	v8/v8	https://avatars2.githubusercontent.com/u/113781?v=4	/v8	2014-09-24 15:24:30+00	2019-07-06 04:33:50+00	2019-07-06 08:03:51.195522+00	C++	12865
1199	817345	tj/git-extras	https://avatars2.githubusercontent.com/u/25254?v=4	/tj	2010-08-04 16:32:07+00	2019-07-06 05:08:23+00	2019-07-06 08:03:51.197425+00	Shell	12862
1200	41766002	ampproject/amphtml	https://avatars3.githubusercontent.com/u/14114390?v=4	/ampproject	2015-09-01 22:10:53+00	2019-07-06 06:24:47+00	2019-07-06 08:03:51.199279+00	JavaScript	12829
1201	62156403	QSCTech/zju-icicles	https://avatars1.githubusercontent.com/u/4727983?v=4	/QSCTech	2016-06-28 16:17:32+00	2019-07-06 07:47:34+00	2019-07-06 08:03:51.202784+00	C	12828
1202	20106153	CoderMJLee/MJRefresh	https://avatars0.githubusercontent.com/u/3817366?v=4	/CoderMJLee	2014-05-23 16:22:32+00	2019-07-05 13:21:06+00	2019-07-06 08:03:51.206572+00	Objective-C	12818
1203	85031442	poteto/hiring-without-whiteboards	https://avatars0.githubusercontent.com/u/1390709?v=4	/poteto	2017-03-15 05:09:01+00	2019-07-06 06:13:27+00	2019-07-06 08:03:51.209466+00	JavaScript	12810
1204	5724990	briannesbitt/Carbon	https://avatars0.githubusercontent.com/u/170745?v=4	/briannesbitt	2012-09-08 02:56:20+00	2019-07-06 04:22:04+00	2019-07-06 08:03:51.213094+00	PHP	12806
1205	4598984	FelisCatus/SwitchyOmega	https://avatars2.githubusercontent.com/u/912649?v=4	/FelisCatus	2012-06-08 15:32:30+00	2019-07-06 08:02:43+00	2019-07-06 08:03:53.676492+00	CoffeeScript	12796
1206	2336578	twbs/bootstrap-sass	https://avatars0.githubusercontent.com/u/2918581?v=4	/twbs	2011-09-06 18:58:49+00	2019-07-05 05:28:57+00	2019-07-06 08:03:53.679021+00	Ruby	12783
1207	29247444	yaronn/blessed-contrib	https://avatars2.githubusercontent.com/u/1359037?v=4	/yaronn	2015-01-14 14:18:07+00	2019-07-06 05:16:17+00	2019-07-06 08:03:53.680735+00	JavaScript	12773
1208	96641209	shieldfy/API-Security-Checklist	https://avatars1.githubusercontent.com/u/10007026?v=4	/shieldfy	2017-07-08 20:01:38+00	2019-07-05 15:50:29+00	2019-07-06 08:03:53.682358+00	nan	12769
1209	75642389	material-components/material-components-web	https://avatars3.githubusercontent.com/u/19478152?v=4	/material-components	2016-12-05 16:04:09+00	2019-07-06 06:25:52+00	2019-07-06 08:03:53.683977+00	JavaScript	12767
1210	9325315	strongloop/loopback	https://avatars1.githubusercontent.com/u/3020012?v=4	/strongloop	2013-04-09 16:02:18+00	2019-07-05 21:42:23+00	2019-07-06 08:03:53.68561+00	JavaScript	12759
1211	931039	browserify/browserify	https://avatars2.githubusercontent.com/u/6320506?v=4	/browserify	2010-09-22 16:11:32+00	2019-07-05 16:15:13+00	2019-07-06 08:03:53.687369+00	JavaScript	12754
1212	51994692	geeeeeeeeek/electronic-wechat	https://avatars1.githubusercontent.com/u/7262715?v=4	/geeeeeeeeek	2016-02-18 09:09:53+00	2019-07-05 19:28:05+00	2019-07-06 08:03:53.689094+00	JavaScript	12689
1213	18962767	ty4z2008/Qix	https://avatars0.githubusercontent.com/u/1913756?v=4	/ty4z2008	2014-04-20 11:03:15+00	2019-07-06 03:24:30+00	2019-07-06 08:03:53.690734+00	nan	12683
1214	2211243	apache/kafka	https://avatars0.githubusercontent.com/u/47359?v=4	/apache	2011-08-15 18:06:16+00	2019-07-06 01:02:25+00	2019-07-06 08:03:53.692346+00	Java	12680
1215	12104024	datasciencemasters/go	https://avatars3.githubusercontent.com/u/5228194?v=4	/datasciencemasters	2013-08-14 08:33:55+00	2019-07-06 06:09:19+00	2019-07-06 08:03:53.694171+00	nan	12668
1216	134017286	jesseduffield/lazygit	https://avatars0.githubusercontent.com/u/8456633?v=4	/jesseduffield	2018-05-19 00:53:06+00	2019-07-06 07:31:56+00	2019-07-06 08:03:53.695835+00	Go	12657
1217	2889328	WordPress/WordPress	https://avatars0.githubusercontent.com/u/276006?v=4	/WordPress	2011-12-01 07:05:17+00	2019-07-06 04:09:22+00	2019-07-06 08:03:53.697446+00	PHP	12635
1218	78186814	apache/incubator-weex	https://avatars0.githubusercontent.com/u/47359?v=4	/apache	2017-01-06 08:00:06+00	2019-07-06 06:26:06+00	2019-07-06 08:03:53.699109+00	C++	12629
1219	40905762	judasn/IntelliJ-IDEA-Tutorial	https://avatars2.githubusercontent.com/u/2867798?v=4	/judasn	2015-08-17 15:25:52+00	2019-07-06 08:02:01+00	2019-07-06 08:03:53.700746+00	nan	12614
1220	12574344	spf13/cobra	https://avatars1.githubusercontent.com/u/173412?v=4	/spf13	2013-09-03 20:40:26+00	2019-07-06 03:34:26+00	2019-07-06 08:03:53.70246+00	Go	12611
1221	20537104	cayleygraph/cayley	https://avatars0.githubusercontent.com/u/20098289?v=4	/cayleygraph	2014-06-05 18:49:41+00	2019-07-06 07:04:57+00	2019-07-06 08:03:53.704242+00	Go	12609
1222	122838124	30-seconds/30-seconds-of-css	https://avatars3.githubusercontent.com/u/43479428?v=4	/30-seconds	2018-02-25 13:22:25+00	2019-07-06 04:06:11+00	2019-07-06 08:03:53.705873+00	HTML	12603
1223	84811466	mqyqingfeng/Blog	https://avatars3.githubusercontent.com/u/11458263?v=4	/mqyqingfeng	2017-03-13 10:04:33+00	2019-07-06 06:50:18+00	2019-07-06 08:03:53.707514+00	nan	12603
1224	127407957	azl397985856/leetcode	https://avatars1.githubusercontent.com/u/12479470?v=4	/azl397985856	2018-03-30 09:13:51+00	2019-07-06 07:40:32+00	2019-07-06 08:03:53.709233+00	JavaScript	12601
1225	40808571	yudai/gotty	https://avatars0.githubusercontent.com/u/33192?v=4	/yudai	2015-08-16 09:48:33+00	2019-07-05 20:18:50+00	2019-07-06 08:03:53.711002+00	Go	12573
1226	39013909	reduxjs/redux-thunk	https://avatars3.githubusercontent.com/u/13142323?v=4	/reduxjs	2015-07-13 13:33:08+00	2019-07-06 07:53:28+00	2019-07-06 08:03:53.712712+00	JavaScript	12568
1227	137583435	adam-golab/react-developer-roadmap	https://avatars0.githubusercontent.com/u/20810956?v=4	/adam-golab	2018-06-16 13:40:50+00	2019-07-06 04:23:45+00	2019-07-06 08:03:53.714388+00	JavaScript	12566
1228	43723161	helm/helm	https://avatars2.githubusercontent.com/u/15859888?v=4	/helm	2015-10-06 01:07:32+00	2019-07-06 07:48:11+00	2019-07-06 08:03:53.716064+00	Go	12537
1229	20787122	PostgREST/postgrest	https://avatars1.githubusercontent.com/u/15115011?v=4	/PostgREST	2014-06-13 00:23:00+00	2019-07-06 07:01:37+00	2019-07-06 08:03:53.717748+00	Haskell	12534
1230	108395495	frappe/charts	https://avatars2.githubusercontent.com/u/836974?v=4	/frappe	2017-10-26 10:13:21+00	2019-07-06 04:03:27+00	2019-07-06 08:03:53.719466+00	JavaScript	12521
1231	32866454	vurtun/nuklear	https://avatars1.githubusercontent.com/u/8057201?v=4	/vurtun	2015-03-25 13:32:06+00	2019-07-05 15:30:56+00	2019-07-06 08:03:53.721097+00	C	12516
1232	11855195	chalk/chalk	https://avatars2.githubusercontent.com/u/13122722?v=4	/chalk	2013-08-03 00:20:12+00	2019-07-06 05:23:42+00	2019-07-06 08:03:53.722734+00	JavaScript	12512
1233	1554093	mbadolato/iTerm2-Color-Schemes	https://avatars2.githubusercontent.com/u/164615?v=4	/mbadolato	2011-04-01 04:01:46+00	2019-07-06 06:51:14+00	2019-07-06 08:03:53.72436+00	Shell	12503
1234	2281775	marcuswestin/WebViewJavascriptBridge	https://avatars0.githubusercontent.com/u/131967?v=4	/marcuswestin	2011-08-28 02:25:27+00	2019-07-05 09:40:58+00	2019-07-06 08:03:53.725987+00	Objective-C	12499
1235	151300862	machinelearningmindset/TensorFlow-Course	https://avatars3.githubusercontent.com/u/43791934?v=4	/machinelearningmindset	2018-10-02 18:10:12+00	2019-07-06 07:55:42+00	2019-07-06 08:03:53.727605+00	Python	12478
1236	5558246	substack/stream-handbook	https://avatars0.githubusercontent.com/u/12631?v=4	/substack	2012-08-26 07:24:04+00	2019-07-06 02:53:16+00	2019-07-06 08:03:53.729271+00	JavaScript	12468
1237	478584	jsdom/jsdom	https://avatars3.githubusercontent.com/u/9271229?v=4	/jsdom	2010-01-19 06:55:19+00	2019-07-06 06:36:43+00	2019-07-06 08:03:53.730955+00	JavaScript	12466
1238	1365679	chriskempson/tomorrow-theme	https://avatars2.githubusercontent.com/u/473831?v=4	/chriskempson	2011-02-14 15:43:03+00	2019-07-05 08:35:14+00	2019-07-06 08:03:53.73262+00	CSS	12462
1239	17620347	aspnet/AspNetCore	https://avatars3.githubusercontent.com/u/6476660?v=4	/aspnet	2014-03-11 06:09:42+00	2019-07-06 05:39:33+00	2019-07-06 08:03:53.734299+00	C#	12459
1240	103645588	iview/iview-admin	https://avatars3.githubusercontent.com/u/20693613?v=4	/iview	2017-09-15 10:34:27+00	2019-07-06 06:27:37+00	2019-07-06 08:03:53.736011+00	Vue	12450
1241	16852060	ethereum/wiki	https://avatars3.githubusercontent.com/u/6250754?v=4	/ethereum	2014-02-14 23:05:17+00	2019-07-06 07:15:37+00	2019-07-06 08:03:53.737705+00	nan	12449
1242	37829238	source-foundry/Hack	https://avatars1.githubusercontent.com/u/13209832?v=4	/source-foundry	2015-06-21 22:47:58+00	2019-07-06 05:32:38+00	2019-07-06 08:03:53.739382+00	Shell	12447
1243	743723	marcuswestin/store.js	https://avatars0.githubusercontent.com/u/131967?v=4	/marcuswestin	2010-06-27 20:29:33+00	2019-07-06 03:28:20+00	2019-07-06 08:03:53.741062+00	JavaScript	12442
1244	781028	node-inspector/node-inspector	https://avatars3.githubusercontent.com/u/4449877?v=4	/node-inspector	2010-07-17 23:20:19+00	2019-07-06 06:36:42+00	2019-07-06 08:03:53.742725+00	JavaScript	12432
1245	11075527	vim-airline/vim-airline	https://avatars2.githubusercontent.com/u/16690788?v=4	/vim-airline	2013-06-30 18:49:56+00	2019-07-06 05:34:09+00	2019-07-06 08:03:53.744395+00	Vim script	12424
1246	70202506	golang/dep	https://avatars3.githubusercontent.com/u/4314092?v=4	/golang	2016-10-07 00:04:51+00	2019-07-06 07:55:29+00	2019-07-06 08:03:53.746078+00	Go	12401
1247	30675533	google/fonts	https://avatars1.githubusercontent.com/u/1342004?v=4	/google	2015-02-11 23:34:54+00	2019-07-06 07:36:06+00	2019-07-06 08:03:53.74785+00	HTML	12398
1248	19953044	google/flatbuffers	https://avatars1.githubusercontent.com/u/1342004?v=4	/google	2014-05-19 18:33:01+00	2019-07-05 12:44:41+00	2019-07-06 08:03:53.749669+00	C++	12397
1249	94911145	facebook/docusaurus	https://avatars3.githubusercontent.com/u/69631?v=4	/facebook	2017-06-20 16:13:53+00	2019-07-06 07:09:18+00	2019-07-06 08:03:53.75134+00	JavaScript	12396
1250	7833168	elastic/kibana	https://avatars0.githubusercontent.com/u/6764390?v=4	/elastic	2013-01-26 04:00:59+00	2019-07-06 07:56:43+00	2019-07-06 08:03:53.753022+00	JavaScript	12391
1251	92287968	kailashahirwar/cheatsheets-ai	https://avatars1.githubusercontent.com/u/3731558?v=4	/kailashahirwar	2017-05-24 12:06:56+00	2019-07-06 02:07:32+00	2019-07-06 08:03:53.754643+00	nan	12382
1252	942903	foreversd/forever	https://avatars2.githubusercontent.com/u/10152066?v=4	/foreversd	2010-09-27 15:47:23+00	2019-07-05 03:40:11+00	2019-07-06 08:03:53.756261+00	JavaScript	12381
1253	20773773	bazelbuild/bazel	https://avatars1.githubusercontent.com/u/11684617?v=4	/bazelbuild	2014-06-12 16:00:38+00	2019-07-06 06:53:35+00	2019-07-06 08:03:53.757867+00	Java	12360
1254	59720190	huge-success/sanic	https://avatars0.githubusercontent.com/u/25215992?v=4	/huge-success	2016-05-26 04:38:22+00	2019-07-06 04:24:47+00	2019-07-06 08:03:53.76001+00	Python	12350
1255	5830987	hapijs/joi	https://avatars1.githubusercontent.com/u/3774533?v=4	/hapijs	2012-09-16 16:38:06+00	2019-07-06 04:06:02+00	2019-07-06 08:03:53.761672+00	JavaScript	12346
1256	42586612	cmusatyalab/openface	https://avatars2.githubusercontent.com/u/3372991?v=4	/cmusatyalab	2015-09-16 12:47:27+00	2019-07-06 05:59:13+00	2019-07-06 08:03:53.763309+00	Lua	12314
1257	35810174	electron-react-boilerplate/electron-react-boilerplate	https://avatars2.githubusercontent.com/u/28049053?v=4	/electron-react-boilerplate	2015-05-18 09:54:57+00	2019-07-06 05:35:29+00	2019-07-06 08:03:53.764956+00	JavaScript	12313
1258	147081519	zziz/pwc	https://avatars1.githubusercontent.com/u/2147644?v=4	/zziz	2018-09-02 12:06:52+00	2019-07-06 03:44:55+00	2019-07-06 08:03:53.766617+00	nan	12291
1259	89187780	grab/front-end-guide	https://avatars3.githubusercontent.com/u/17284363?v=4	/grab	2017-04-24 02:06:06+00	2019-07-06 07:50:29+00	2019-07-06 08:03:53.768238+00	JavaScript	12286
1260	83516498	norvig/pytudes	https://avatars1.githubusercontent.com/u/4370220?v=4	/norvig	2017-03-01 05:43:35+00	2019-07-06 06:52:53+00	2019-07-06 08:03:53.769992+00	Jupyter Notebook	12260
1261	911765	diaspora/diaspora	https://avatars3.githubusercontent.com/u/293207?v=4	/diaspora	2010-09-15 05:20:04+00	2019-07-04 00:32:09+00	2019-07-06 08:03:53.771725+00	Ruby	12246
1262	501326	requirejs/requirejs	https://avatars1.githubusercontent.com/u/1781835?v=4	/requirejs	2010-02-03 21:08:14+00	2019-07-05 06:27:41+00	2019-07-06 08:03:53.773386+00	JavaScript	12233
1263	36256540	css-modules/css-modules	https://avatars2.githubusercontent.com/u/12612655?v=4	/css-modules	2015-05-25 21:54:47+00	2019-07-05 20:53:11+00	2019-07-06 08:03:53.775011+00	nan	12229
1264	17829481	fivethirtyeight/data	https://avatars1.githubusercontent.com/u/6267336?v=4	/fivethirtyeight	2014-03-17 13:49:17+00	2019-07-05 18:55:57+00	2019-07-06 08:03:53.776642+00	Jupyter Notebook	12207
1265	80472665	salomonelli/best-resume-ever	https://avatars1.githubusercontent.com/u/12084165?v=4	/salomonelli	2017-01-30 23:02:00+00	2019-07-06 05:23:36+00	2019-07-06 08:03:53.778282+00	Vue	12199
1266	56315715	GeekyAnts/NativeBase	https://avatars0.githubusercontent.com/u/18482943?v=4	/GeekyAnts	2016-04-15 11:37:23+00	2019-07-06 02:14:51+00	2019-07-06 08:03:53.78005+00	JavaScript	12195
1267	1790564	handsontable/handsontable	https://avatars3.githubusercontent.com/u/8068250?v=4	/handsontable	2011-05-23 22:38:58+00	2019-07-06 06:34:23+00	2019-07-06 08:03:53.781888+00	JavaScript	12183
1268	54994103	FezVrasta/popper.js	https://avatars2.githubusercontent.com/u/5382443?v=4	/FezVrasta	2016-03-29 17:00:47+00	2019-07-06 04:59:20+00	2019-07-06 08:03:53.783559+00	JavaScript	12176
1269	12143585	adobe-webplatform/Snap.svg	https://avatars1.githubusercontent.com/u/2976699?v=4	/adobe-webplatform	2013-08-15 20:51:34+00	2019-07-06 05:54:45+00	2019-07-06 08:03:53.78519+00	JavaScript	12166
1270	84533158	yunjey/pytorch-tutorial	https://avatars2.githubusercontent.com/u/15663219?v=4	/yunjey	2017-03-10 07:41:47+00	2019-07-06 05:59:02+00	2019-07-06 08:03:53.786819+00	Python	12162
1271	59239347	portainer/portainer	https://avatars0.githubusercontent.com/u/22225832?v=4	/portainer	2016-05-19 20:15:28+00	2019-07-06 04:16:06+00	2019-07-06 08:03:53.788451+00	HTML	12129
1272	155662306	trekhleb/homemade-machine-learning	https://avatars2.githubusercontent.com/u/3000285?v=4	/trekhleb	2018-11-01 04:34:19+00	2019-07-06 08:01:21+00	2019-07-06 08:03:53.790201+00	Jupyter Notebook	12113
1273	714074	pouchdb/pouchdb	https://avatars2.githubusercontent.com/u/3406112?v=4	/pouchdb	2010-06-10 18:34:24+00	2019-07-06 06:22:00+00	2019-07-06 08:03:53.79182+00	JavaScript	12108
1274	143615438	MLEveryday/100-Days-Of-ML-Code	https://avatars2.githubusercontent.com/u/42115061?v=4	/MLEveryday	2018-08-05 13:32:48+00	2019-07-06 07:28:52+00	2019-07-06 08:03:53.793428+00	Jupyter Notebook	12106
1275	22282353	viccalexander/Chameleon	https://avatars0.githubusercontent.com/u/1724674?v=4	/viccalexander	2014-07-26 09:01:09+00	2019-07-03 10:09:03+00	2019-07-06 08:03:53.795197+00	Objective-C	12100
1276	69662720	mxgmn/WaveFunctionCollapse	https://avatars0.githubusercontent.com/u/14931730?v=4	/mxgmn	2016-09-30 11:53:17+00	2019-07-06 07:21:38+00	2019-07-06 08:03:53.796831+00	C#	12093
1277	5508088	svg/svgo	https://avatars0.githubusercontent.com/u/2473585?v=4	/svg	2012-08-22 10:41:43+00	2019-07-06 07:35:58+00	2019-07-06 08:03:53.798453+00	JavaScript	12093
1278	39840932	google/googletest	https://avatars1.githubusercontent.com/u/1342004?v=4	/google	2015-07-28 15:07:53+00	2019-07-06 06:33:57+00	2019-07-06 08:03:53.800224+00	C++	12085
1279	9690430	nuysoft/Mock	https://avatars3.githubusercontent.com/u/1628538?v=4	/nuysoft	2013-04-26 08:06:57+00	2019-07-06 03:00:33+00	2019-07-06 08:03:53.801919+00	JavaScript	12069
1280	13862381	DrKLO/Telegram	https://avatars2.githubusercontent.com/u/69369?v=4	/DrKLO	2013-10-25 14:08:10+00	2019-07-05 22:30:37+00	2019-07-06 08:03:53.803594+00	Java	12062
1281	18503721	facebook/yoga	https://avatars3.githubusercontent.com/u/69631?v=4	/facebook	2014-04-07 01:37:37+00	2019-07-06 07:03:13+00	2019-07-06 08:03:53.80572+00	C++	12044
1282	30384844	Flipboard/react-canvas	https://avatars0.githubusercontent.com/u/457049?v=4	/Flipboard	2015-02-05 23:46:30+00	2019-07-05 22:55:28+00	2019-07-06 08:03:53.807463+00	JavaScript	12041
1283	38377423	google/deepdream	https://avatars1.githubusercontent.com/u/1342004?v=4	/google	2015-07-01 15:00:58+00	2019-07-05 13:39:28+00	2019-07-06 08:03:53.809229+00	nan	12039
1284	1136075	cubiq/iscroll	https://avatars1.githubusercontent.com/u/427614?v=4	/cubiq	2010-12-03 19:03:44+00	2019-07-06 06:53:35+00	2019-07-06 08:03:53.810932+00	JavaScript	12035
1285	21065473	bolshchikov/js-must-watch	https://avatars2.githubusercontent.com/u/1206121?v=4	/bolshchikov	2014-06-21 09:56:48+00	2019-07-05 21:23:07+00	2019-07-06 08:03:53.812653+00	nan	12030
1286	12044132	bitcoinbook/bitcoinbook	https://avatars1.githubusercontent.com/u/5091621?v=4	/bitcoinbook	2013-08-11 23:18:28+00	2019-07-06 05:51:39+00	2019-07-06 08:03:53.814423+00	Python	12017
1287	62615465	you-dont-need/You-Dont-Need-JavaScript	https://avatars1.githubusercontent.com/u/21141794?v=4	/you-dont-need	2016-07-05 07:30:42+00	2019-07-06 04:08:56+00	2019-07-06 08:03:53.816187+00	CSS	12010
1288	35732214	realm/SwiftLint	https://avatars0.githubusercontent.com/u/7575099?v=4	/realm	2015-05-16 16:59:31+00	2019-07-06 04:54:44+00	2019-07-06 08:03:53.817834+00	Swift	11999
1289	16005410	hdodenhof/CircleImageView	https://avatars1.githubusercontent.com/u/1824223?v=4	/hdodenhof	2014-01-17 16:44:46+00	2019-07-05 08:47:09+00	2019-07-06 08:03:53.819535+00	Java	11988
1290	99234994	froala/design-blocks	https://avatars1.githubusercontent.com/u/7966884?v=4	/froala	2017-08-03 13:22:43+00	2019-07-06 07:35:25+00	2019-07-06 08:03:53.821175+00	HTML	11987
1291	929845	sass/sass	https://avatars1.githubusercontent.com/u/317889?v=4	/sass	2010-09-22 06:16:55+00	2019-07-06 07:45:07+00	2019-07-06 08:03:53.822923+00	JavaScript	11985
1292	182097305	cool-RR/PySnooper	https://avatars1.githubusercontent.com/u/56778?v=4	/cool-RR	2019-04-18 13:55:43+00	2019-07-06 08:00:43+00	2019-07-06 08:03:53.824668+00	Python	11967
1293	5344375	textmate/textmate	https://avatars3.githubusercontent.com/u/91310?v=4	/textmate	2012-08-08 16:25:52+00	2019-07-05 20:13:29+00	2019-07-06 08:03:53.826385+00	Objective-C++	11958
1294	71576450	google/guetzli	https://avatars1.githubusercontent.com/u/1342004?v=4	/google	2016-10-21 15:13:18+00	2019-07-06 06:30:46+00	2019-07-06 08:03:53.828037+00	C++	11953
1295	2430537	gruntjs/grunt	https://avatars1.githubusercontent.com/u/1630826?v=4	/gruntjs	2011-09-21 15:16:20+00	2019-07-05 10:46:36+00	2019-07-06 08:03:53.829863+00	JavaScript	11947
1296	26337322	rancher/rancher	https://avatars3.githubusercontent.com/u/9343010?v=4	/rancher	2014-11-07 20:49:31+00	2019-07-06 04:00:29+00	2019-07-06 08:03:53.831644+00	Go	11925
1297	40511756	flatpickr/flatpickr	https://avatars3.githubusercontent.com/u/36319609?v=4	/flatpickr	2015-08-10 23:52:45+00	2019-07-05 23:52:13+00	2019-07-06 08:03:53.833264+00	TypeScript	11925
1298	51071818	so-fancy/diff-so-fancy	https://avatars1.githubusercontent.com/u/17226113?v=4	/so-fancy	2016-02-04 11:32:08+00	2019-07-06 05:27:21+00	2019-07-06 08:03:53.835047+00	Perl	11920
1299	40345658	recharts/recharts	https://avatars0.githubusercontent.com/u/13690587?v=4	/recharts	2015-08-07 06:50:27+00	2019-07-05 17:14:55+00	2019-07-06 08:03:53.836849+00	JavaScript	11917
1300	27388642	nfarina/homebridge	https://avatars3.githubusercontent.com/u/117280?v=4	/nfarina	2014-12-01 16:37:39+00	2019-07-06 07:51:54+00	2019-07-06 08:03:53.83856+00	JavaScript	11911
1301	12080551	tsenart/vegeta	https://avatars2.githubusercontent.com/u/67471?v=4	/tsenart	2013-08-13 11:45:21+00	2019-07-05 21:34:43+00	2019-07-06 08:03:53.840381+00	Go	11902
1302	5604798	selectize/selectize.js	https://avatars0.githubusercontent.com/u/14022691?v=4	/selectize	2012-08-29 18:31:57+00	2019-07-05 20:58:15+00	2019-07-06 08:03:53.842163+00	JavaScript	11887
1303	3282	scrooloose/nerdtree	https://avatars1.githubusercontent.com/u/1671?v=4	/scrooloose	2008-03-10 07:34:08+00	2019-07-06 02:56:35+00	2019-07-06 08:03:53.844091+00	Vim script	11879
1304	19757917	maxwellito/vivus	https://avatars2.githubusercontent.com/u/1097232?v=4	/maxwellito	2014-05-13 22:22:18+00	2019-07-06 07:37:41+00	2019-07-06 08:03:53.845806+00	JavaScript	11871
1305	4899072	b3log/symphony	https://avatars1.githubusercontent.com/u/1627618?v=4	/b3log	2012-07-05 06:09:54+00	2019-07-06 06:09:00+00	2019-07-06 08:03:56.44172+00	Java	11854
1306	5888353	spotify/luigi	https://avatars2.githubusercontent.com/u/251374?v=4	/spotify	2012-09-20 15:06:38+00	2019-07-06 01:02:40+00	2019-07-06 08:03:56.443582+00	Python	11842
1307	2888818	scala/scala	https://avatars2.githubusercontent.com/u/57059?v=4	/scala	2011-12-01 05:02:34+00	2019-07-06 06:46:21+00	2019-07-06 08:03:56.445176+00	Scala	11839
1308	7827081	apache/predictionio	https://avatars0.githubusercontent.com/u/47359?v=4	/apache	2013-01-25 19:42:32+00	2019-07-05 14:05:50+00	2019-07-06 08:03:56.447029+00	Scala	11829
1309	2744972	websockets/ws	https://avatars0.githubusercontent.com/u/10721323?v=4	/websockets	2011-11-09 22:32:45+00	2019-07-05 19:46:42+00	2019-07-06 08:03:56.44926+00	JavaScript	11824
1310	17804584	winterbe/java8-tutorial	https://avatars3.githubusercontent.com/u/485033?v=4	/winterbe	2014-03-16 17:25:43+00	2019-07-05 09:59:12+00	2019-07-06 08:03:56.451714+00	Java	11817
1311	23062124	dcloudio/mui	https://avatars1.githubusercontent.com/u/5485517?v=4	/dcloudio	2014-08-18 07:14:41+00	2019-07-06 01:26:50+00	2019-07-06 08:03:56.453883+00	JavaScript	11773
1312	10219106	linnovate/mean	https://avatars3.githubusercontent.com/u/307487?v=4	/linnovate	2013-05-22 12:15:47+00	2019-07-05 20:52:35+00	2019-07-06 08:03:56.455599+00	TypeScript	11771
1313	12512833	philipwalton/solved-by-flexbox	https://avatars1.githubusercontent.com/u/326742?v=4	/philipwalton	2013-08-31 23:04:51+00	2019-07-06 01:55:13+00	2019-07-06 08:03:56.457407+00	CSS	11763
1314	37931301	erikras/react-redux-universal-hot-example	https://avatars2.githubusercontent.com/u/4396759?v=4	/erikras	2015-06-23 16:39:21+00	2019-07-06 06:42:29+00	2019-07-06 08:03:56.459464+00	JavaScript	11761
1315	2139017	rbenv/rbenv	https://avatars1.githubusercontent.com/u/10675212?v=4	/rbenv	2011-08-01 20:51:48+00	2019-07-06 03:34:39+00	2019-07-06 08:03:56.46116+00	Shell	11747
1316	19994257	go-delve/delve	https://avatars3.githubusercontent.com/u/19232073?v=4	/go-delve	2014-05-20 19:24:43+00	2019-07-06 07:02:57+00	2019-07-06 08:03:56.463047+00	Go	11738
1317	38342221	graphql/graphql-spec	https://avatars0.githubusercontent.com/u/12972006?v=4	/graphql	2015-07-01 01:26:56+00	2019-07-06 00:23:04+00	2019-07-06 08:03:56.465273+00	Shell	11732
1318	2203645	CocoaPods/CocoaPods	https://avatars1.githubusercontent.com/u/1189714?v=4	/CocoaPods	2011-08-14 00:10:53+00	2019-07-06 02:22:01+00	2019-07-06 08:03:56.467306+00	Ruby	11726
1319	1538210	SVProgressHUD/SVProgressHUD	https://avatars3.githubusercontent.com/u/16267749?v=4	/SVProgressHUD	2011-03-28 19:23:04+00	2019-07-05 13:27:40+00	2019-07-06 08:03:56.469539+00	Objective-C	11722
1320	30092893	dotnet/coreclr	https://avatars0.githubusercontent.com/u/9141961?v=4	/dotnet	2015-01-30 22:10:02+00	2019-07-06 07:10:05+00	2019-07-06 08:03:56.472197+00	C#	11718
1321	2881789	geekcomputers/Python	https://avatars2.githubusercontent.com/u/1170130?v=4	/geekcomputers	2011-11-30 09:04:08+00	2019-07-06 06:51:27+00	2019-07-06 08:03:56.474841+00	Python	11692
1322	115720575	immerjs/immer	https://avatars0.githubusercontent.com/u/45853199?v=4	/immerjs	2017-12-29 12:25:47+00	2019-07-05 22:31:37+00	2019-07-06 08:03:56.476395+00	JavaScript	11687
1323	40013435	erikras/redux-form	https://avatars2.githubusercontent.com/u/4396759?v=4	/erikras	2015-07-31 16:07:03+00	2019-07-05 18:42:37+00	2019-07-06 08:03:56.477904+00	JavaScript	11685
1324	94061307	vadimdemedes/ink	https://avatars0.githubusercontent.com/u/697676?v=4	/vadimdemedes	2017-06-12 06:12:28+00	2019-07-06 03:16:55+00	2019-07-06 08:03:56.479407+00	JavaScript	11683
1325	107119649	emilwallner/Screenshot-to-code	https://avatars2.githubusercontent.com/u/12543699?v=4	/emilwallner	2017-10-16 11:41:48+00	2019-07-05 14:38:52+00	2019-07-06 08:03:56.482163+00	HTML	11683
1326	18440563	mxcl/PromiseKit	https://avatars2.githubusercontent.com/u/58962?v=4	/mxcl	2014-04-04 13:54:37+00	2019-07-06 02:28:43+00	2019-07-06 08:03:56.485177+00	Swift	11680
1327	80990461	eriklindernoren/ML-From-Scratch	https://avatars1.githubusercontent.com/u/7977505?v=4	/eriklindernoren	2017-02-05 12:11:23+00	2019-07-05 23:01:57+00	2019-07-06 08:03:56.486938+00	Python	11661
1328	2990192	signalapp/Signal-Android	https://avatars2.githubusercontent.com/u/702459?v=4	/signalapp	2011-12-15 20:01:12+00	2019-07-05 22:21:22+00	2019-07-06 08:03:56.488546+00	Java	11647
1329	78664391	react-community/create-react-native-app	https://avatars3.githubusercontent.com/u/24483500?v=4	/react-community	2017-01-11 17:54:30+00	2019-07-05 16:12:29+00	2019-07-06 08:03:56.490158+00	JavaScript	11644
1330	3744545	uxsolutions/bootstrap-datepicker	https://avatars0.githubusercontent.com/u/16959059?v=4	/uxsolutions	2012-03-17 01:11:40+00	2019-07-06 03:49:41+00	2019-07-06 08:03:56.492319+00	JavaScript	11643
1331	162279822	agalwood/Motrix	https://avatars3.githubusercontent.com/u/1032175?v=4	/agalwood	2018-12-18 11:45:05+00	2019-07-06 06:07:32+00	2019-07-06 08:03:56.494037+00	JavaScript	11624
1332	17575535	gionkunz/chartist-js	https://avatars2.githubusercontent.com/u/2203704?v=4	/gionkunz	2014-03-09 22:40:07+00	2019-07-05 23:10:45+00	2019-07-06 08:03:56.495716+00	JavaScript	11622
1333	1548202	matomo-org/matomo	https://avatars1.githubusercontent.com/u/698038?v=4	/matomo-org	2011-03-30 21:18:17+00	2019-07-06 06:22:33+00	2019-07-06 08:03:56.497564+00	PHP	11584
1334	908893	NodeRedis/node_redis	https://avatars2.githubusercontent.com/u/5845577?v=4	/NodeRedis	2010-09-14 02:05:09+00	2019-07-05 13:19:24+00	2019-07-06 08:03:56.499614+00	JavaScript	11574
1335	29078997	dotnet/roslyn	https://avatars0.githubusercontent.com/u/9141961?v=4	/dotnet	2015-01-11 02:39:03+00	2019-07-06 06:49:10+00	2019-07-06 08:03:56.501782+00	C#	11560
1336	1223029	tj/n	https://avatars2.githubusercontent.com/u/25254?v=4	/tj	2011-01-05 14:53:19+00	2019-07-05 18:22:51+00	2019-07-06 08:03:56.503788+00	Shell	11559
1337	19416551	sqlitebrowser/sqlitebrowser	https://avatars2.githubusercontent.com/u/7454271?v=4	/sqlitebrowser	2014-05-04 01:54:44+00	2019-07-06 06:59:29+00	2019-07-06 08:03:56.505498+00	C++	11544
1338	74627617	commaai/openpilot	https://avatars2.githubusercontent.com/u/16128714?v=4	/commaai	2016-11-24 01:33:30+00	2019-07-06 03:22:08+00	2019-07-06 08:03:56.507235+00	C	11533
1339	44882201	MunGell/awesome-for-beginners	https://avatars2.githubusercontent.com/u/812976?v=4	/MunGell	2015-10-24 19:53:36+00	2019-07-06 06:09:31+00	2019-07-06 08:03:56.50903+00	nan	11531
1340	25427817	react-dnd/react-dnd	https://avatars1.githubusercontent.com/u/25307599?v=4	/react-dnd	2014-10-19 13:29:28+00	2019-07-06 07:47:14+00	2019-07-06 08:03:56.510762+00	TypeScript	11523
1341	15953199	HubSpot/youmightnotneedjquery	https://avatars2.githubusercontent.com/u/326419?v=4	/HubSpot	2014-01-16 00:21:17+00	2019-07-05 16:10:06+00	2019-07-06 08:03:56.512656+00	HTML	11515
1342	1337658	scottjehl/Respond	https://avatars0.githubusercontent.com/u/214783?v=4	/scottjehl	2011-02-07 12:41:33+00	2019-07-05 11:01:31+00	2019-07-06 08:03:56.514658+00	JavaScript	11513
1343	43998576	geeeeeeeeek/git-recipes	https://avatars1.githubusercontent.com/u/7262715?v=4	/geeeeeeeeek	2015-10-10 06:53:17+00	2019-07-06 07:33:19+00	2019-07-06 08:03:56.517035+00	nan	11512
1344	25095239	aFarkas/lazysizes	https://avatars2.githubusercontent.com/u/188254?v=4	/aFarkas	2014-10-11 21:03:26+00	2019-07-06 06:51:43+00	2019-07-06 08:03:56.518907+00	JavaScript	11512
1345	80233816	react-native-community/lottie-react-native	https://avatars1.githubusercontent.com/u/20269980?v=4	/react-native-community	2017-01-27 18:24:50+00	2019-07-06 07:27:55+00	2019-07-06 08:03:56.520735+00	Java	11511
1346	13628513	sirupsen/logrus	https://avatars3.githubusercontent.com/u/97400?v=4	/sirupsen	2013-10-16 19:08:55+00	2019-07-06 07:24:51+00	2019-07-06 08:03:56.522437+00	Go	11483
1347	52630616	apollographql/apollo-client	https://avatars0.githubusercontent.com/u/17189275?v=4	/apollographql	2016-02-26 20:25:00+00	2019-07-05 23:10:41+00	2019-07-06 08:03:56.524135+00	TypeScript	11452
1348	77358263	SpaceVim/SpaceVim	https://avatars2.githubusercontent.com/u/24742154?v=4	/SpaceVim	2016-12-26 04:40:55+00	2019-07-06 07:00:14+00	2019-07-06 08:03:56.525837+00	Vim script	11450
1349	60711512	francistao/LearningNotes	https://avatars0.githubusercontent.com/u/13393725?v=4	/francistao	2016-06-08 16:09:17+00	2019-07-06 07:02:08+00	2019-07-06 08:03:56.527527+00	nan	11445
1350	768345	eczarny/spectacle	https://avatars0.githubusercontent.com/u/28012?v=4	/eczarny	2010-07-11 01:58:03+00	2019-07-05 19:14:42+00	2019-07-06 08:03:56.529368+00	Objective-C	11444
1351	2626751	greenrobot/greenDAO	https://avatars0.githubusercontent.com/u/242242?v=4	/greenrobot	2011-10-22 16:15:14+00	2019-07-06 05:59:10+00	2019-07-06 08:03:56.531497+00	Java	11440
1352	38588153	xgrommx/awesome-redux	https://avatars2.githubusercontent.com/u/1499594?v=4	/xgrommx	2015-07-05 23:33:49+00	2019-07-06 00:52:53+00	2019-07-06 08:03:56.533438+00	nan	11427
1353	20446799	dzenbot/DZNEmptyDataSet	https://avatars2.githubusercontent.com/u/590579?v=4	/dzenbot	2014-06-03 14:50:31+00	2019-07-05 12:21:47+00	2019-07-06 08:03:56.535613+00	Objective-C	11425
1354	189840	fabric/fabric	https://avatars3.githubusercontent.com/u/400481?v=4	/fabric	2009-05-01 01:14:24+00	2019-07-06 07:04:41+00	2019-07-06 08:03:56.537324+00	Python	11413
1355	35685034	oblador/react-native-vector-icons	https://avatars0.githubusercontent.com/u/378279?v=4	/oblador	2015-05-15 16:38:57+00	2019-07-06 03:11:30+00	2019-07-06 08:03:56.539086+00	JavaScript	11404
1356	3374332	thomaspark/bootswatch	https://avatars2.githubusercontent.com/u/900407?v=4	/thomaspark	2012-02-07 04:31:56+00	2019-07-05 23:20:05+00	2019-07-06 08:03:56.540759+00	JavaScript	11390
1357	8385616	toml-lang/toml	https://avatars3.githubusercontent.com/u/7966854?v=4	/toml-lang	2013-02-24 03:03:57+00	2019-07-06 02:46:33+00	2019-07-06 08:03:56.542409+00	nan	11378
1358	1549138	CocoaLumberjack/CocoaLumberjack	https://avatars0.githubusercontent.com/u/6108054?v=4	/CocoaLumberjack	2011-03-31 02:38:39+00	2019-07-06 07:33:06+00	2019-07-06 08:03:56.544158+00	Objective-C	11375
1359	34275705	redox-os/redox	https://avatars3.githubusercontent.com/u/14909902?v=4	/redox-os	2015-04-20 17:35:19+00	2019-07-06 02:38:12+00	2019-07-06 08:03:56.545887+00	Makefile	11363
1360	32610336	orhanobut/logger	https://avatars3.githubusercontent.com/u/1089616?v=4	/orhanobut	2015-03-20 22:30:12+00	2019-07-06 02:35:13+00	2019-07-06 08:03:56.547958+00	Java	11363
1361	2051226	eligrey/FileSaver.js	https://avatars2.githubusercontent.com/u/46995?v=4	/eligrey	2011-07-15 03:27:54+00	2019-07-05 19:48:42+00	2019-07-06 08:03:56.550209+00	JavaScript	11360
1362	1579809	nicklockwood/iCarousel	https://avatars2.githubusercontent.com/u/546885?v=4	/nicklockwood	2011-04-06 23:23:43+00	2019-07-05 07:46:30+00	2019-07-06 08:03:56.55197+00	Objective-C	11338
1363	1272424	nodemailer/nodemailer	https://avatars1.githubusercontent.com/u/16486629?v=4	/nodemailer	2011-01-19 21:17:36+00	2019-07-06 04:22:43+00	2019-07-06 08:03:56.553644+00	JavaScript	11325
1364	65219131	learn-anything/learn-anything	https://avatars2.githubusercontent.com/u/28766659?v=4	/learn-anything	2016-08-08 16:09:17+00	2019-07-05 06:15:40+00	2019-07-06 08:03:56.555326+00	TypeScript	11312
1365	17814354	MithrilJS/mithril.js	https://avatars3.githubusercontent.com/u/19475707?v=4	/MithrilJS	2014-03-17 01:59:39+00	2019-07-06 07:56:54+00	2019-07-06 08:03:56.556992+00	JavaScript	11307
1366	13030144	janpaepke/ScrollMagic	https://avatars0.githubusercontent.com/u/3076177?v=4	/janpaepke	2013-09-23 08:08:53+00	2019-07-06 04:11:49+00	2019-07-06 08:03:56.558773+00	JavaScript	11305
1367	65866559	getify/Functional-Light-JS	https://avatars1.githubusercontent.com/u/150330?v=4	/getify	2016-08-17 01:40:50+00	2019-07-06 05:16:11+00	2019-07-06 08:03:56.560495+00	JavaScript	11289
1368	23301468	daimajia/AndroidSwipeLayout	https://avatars1.githubusercontent.com/u/2503423?v=4	/daimajia	2014-08-25 04:09:33+00	2019-07-06 06:31:52+00	2019-07-06 08:03:56.562189+00	Java	11287
1369	65083316	luong-komorebi/Awesome-Linux-Software	https://avatars2.githubusercontent.com/u/15828926?v=4	/luong-komorebi	2016-08-06 13:16:29+00	2019-07-06 03:52:54+00	2019-07-06 08:03:56.563891+00	Python	11266
1370	21938243	rust-unofficial/awesome-rust	https://avatars3.githubusercontent.com/u/20820960?v=4	/rust-unofficial	2014-07-17 10:45:10+00	2019-07-06 07:10:05+00	2019-07-06 08:03:56.566201+00	Rust	11263
1371	1053270	php-fig/fig-standards	https://avatars1.githubusercontent.com/u/468401?v=4	/php-fig	2010-11-05 04:44:12+00	2019-07-05 22:51:54+00	2019-07-06 08:03:56.568473+00	nan	11257
1372	85225942	bmorelli25/Become-A-Full-Stack-Web-Developer	https://avatars3.githubusercontent.com/u/5618806?v=4	/bmorelli25	2017-03-16 17:51:51+00	2019-07-06 07:06:03+00	2019-07-06 08:03:56.570329+00	nan	11254
1373	2163263	hapijs/hapi	https://avatars1.githubusercontent.com/u/3774533?v=4	/hapijs	2011-08-06 00:35:39+00	2019-07-05 23:23:41+00	2019-07-06 08:03:56.572174+00	JavaScript	11254
1374	25659723	microsoft/dotnet	https://avatars2.githubusercontent.com/u/6154722?v=4	/microsoft	2014-10-23 21:58:29+00	2019-07-05 09:16:39+00	2019-07-06 08:03:56.57419+00	HTML	11253
1375	50134307	DrkSephy/es6-cheatsheet	https://avatars0.githubusercontent.com/u/1226900?v=4	/DrkSephy	2016-01-21 20:23:15+00	2019-07-06 07:17:28+00	2019-07-06 08:03:56.575896+00	JavaScript	11251
1376	11323319	erusev/parsedown	https://avatars3.githubusercontent.com/u/184170?v=4	/erusev	2013-07-10 20:23:25+00	2019-07-05 12:43:43+00	2019-07-06 08:03:56.579783+00	PHP	11248
1377	4576305	openzipkin/zipkin	https://avatars3.githubusercontent.com/u/11860887?v=4	/openzipkin	2012-06-06 18:26:16+00	2019-07-06 03:30:35+00	2019-07-06 08:03:56.583292+00	Java	11244
1378	125266328	python/black	https://avatars3.githubusercontent.com/u/1525981?v=4	/python	2018-03-14 19:54:45+00	2019-07-06 07:40:45+00	2019-07-06 08:03:56.585582+00	Python	11235
1379	91253698	ccxt/ccxt	https://avatars3.githubusercontent.com/u/31901609?v=4	/ccxt	2017-05-14 15:41:56+00	2019-07-05 21:17:23+00	2019-07-06 08:03:56.587217+00	JavaScript	11234
1380	8257106	jessesquires/JSQMessagesViewController	https://avatars2.githubusercontent.com/u/2301114?v=4	/jessesquires	2013-02-17 21:40:44+00	2019-07-05 02:37:33+00	2019-07-06 08:03:56.589147+00	Objective-C	11232
1381	29703871	facebook/stetho	https://avatars3.githubusercontent.com/u/69631?v=4	/facebook	2015-01-22 22:34:10+00	2019-07-05 09:17:08+00	2019-07-06 08:03:56.590878+00	Java	11220
1382	2340549	playframework/playframework	https://avatars0.githubusercontent.com/u/319107?v=4	/playframework	2011-09-07 09:24:08+00	2019-07-06 07:50:22+00	2019-07-06 08:03:56.592516+00	Scala	11220
1383	6834703	EnterpriseQualityCoding/FizzBuzzEnterpriseEdition	https://avatars0.githubusercontent.com/u/5183851?v=4	/EnterpriseQualityCoding	2012-11-24 00:14:41+00	2019-07-05 18:47:16+00	2019-07-06 08:03:56.594163+00	Java	11217
1384	10379607	buger/goreplay	https://avatars2.githubusercontent.com/u/14009?v=4	/buger	2013-05-30 09:29:07+00	2019-07-06 01:50:20+00	2019-07-06 08:03:56.596032+00	Go	11215
1385	11133743	h5bp/Effeckt.css	https://avatars0.githubusercontent.com/u/1136800?v=4	/h5bp	2013-07-02 19:57:06+00	2019-07-02 05:59:29+00	2019-07-06 08:03:56.598208+00	CSS	11200
1386	5683364	Mantle/Mantle	https://avatars3.githubusercontent.com/u/7318467?v=4	/Mantle	2012-09-05 06:24:59+00	2019-07-06 00:31:08+00	2019-07-06 08:03:56.600173+00	Objective-C	11198
1387	8205602	mybatis/mybatis-3	https://avatars0.githubusercontent.com/u/1483254?v=4	/mybatis	2013-02-14 19:03:32+00	2019-07-06 05:46:47+00	2019-07-06 08:03:56.602371+00	Java	11190
1388	2945088	revel/revel	https://avatars3.githubusercontent.com/u/6631594?v=4	/revel	2011-12-09 04:10:26+00	2019-07-06 00:52:49+00	2019-07-06 08:03:56.604056+00	Go	11182
1389	69495170	fastify/fastify	https://avatars3.githubusercontent.com/u/24939410?v=4	/fastify	2016-09-28 19:10:14+00	2019-07-06 04:31:56+00	2019-07-06 08:03:56.605853+00	JavaScript	11179
1390	4839957	jfeinstein10/SlidingMenu	https://avatars1.githubusercontent.com/u/1269143?v=4	/jfeinstein10	2012-06-30 05:14:23+00	2019-07-05 06:56:48+00	2019-07-06 08:03:56.607513+00	Java	11178
1391	123870315	tensorflow/tfjs	https://avatars1.githubusercontent.com/u/15658638?v=4	/tensorflow	2018-03-05 05:41:02+00	2019-07-05 19:45:25+00	2019-07-06 08:03:56.609244+00	TypeScript	11167
1392	5101823	Shopify/dashing	https://avatars1.githubusercontent.com/u/8085?v=4	/Shopify	2012-07-18 21:01:40+00	2019-07-05 20:44:58+00	2019-07-06 08:03:56.610867+00	JavaScript	11153
1393	11530283	VerbalExpressions/JSVerbalExpressions	https://avatars0.githubusercontent.com/u/5083777?v=4	/VerbalExpressions	2013-07-19 14:59:46+00	2019-07-06 01:25:57+00	2019-07-06 08:03:56.612672+00	JavaScript	11148
1394	43640830	ptmt/react-native-macos	https://avatars0.githubusercontent.com/u/1004115?v=4	/ptmt	2015-10-04 15:22:01+00	2019-07-06 03:51:23+00	2019-07-06 08:03:56.614924+00	JavaScript	11148
1395	26784827	dotnet/core	https://avatars0.githubusercontent.com/u/9141961?v=4	/dotnet	2014-11-18 00:44:57+00	2019-07-06 02:22:13+00	2019-07-06 08:03:56.617169+00	Shell	11142
1396	73929422	onivim/oni	https://avatars1.githubusercontent.com/u/31161891?v=4	/onivim	2016-11-16 14:42:55+00	2019-07-06 02:18:40+00	2019-07-06 08:03:56.619081+00	TypeScript	11138
1397	28704549	philipwalton/flexbugs	https://avatars1.githubusercontent.com/u/326742?v=4	/philipwalton	2015-01-02 05:29:32+00	2019-07-05 18:01:42+00	2019-07-06 08:03:56.620731+00	nan	11126
1398	22553797	getgrav/grav	https://avatars1.githubusercontent.com/u/8237355?v=4	/getgrav	2014-08-02 18:29:10+00	2019-07-06 02:12:20+00	2019-07-06 08:03:56.622399+00	PHP	11121
1399	908607	numpy/numpy	https://avatars2.githubusercontent.com/u/288276?v=4	/numpy	2010-09-13 23:02:39+00	2019-07-06 04:47:01+00	2019-07-06 08:03:56.624034+00	C	11120
1400	103749180	OpenGenus/cosmos	https://avatars3.githubusercontent.com/u/18506046?v=4	/OpenGenus	2017-09-16 12:07:05+00	2019-07-06 06:13:16+00	2019-07-06 08:03:56.625673+00	Jupyter Notebook	11119
1401	19463625	jwilder/nginx-proxy	https://avatars3.githubusercontent.com/u/219935?v=4	/jwilder	2014-05-05 17:01:40+00	2019-07-06 08:00:22+00	2019-07-06 08:03:56.627289+00	Python	11117
1402	14376285	matryer/bitbar	https://avatars3.githubusercontent.com/u/101659?v=4	/matryer	2013-11-13 21:00:12+00	2019-07-06 06:10:52+00	2019-07-06 08:03:56.629097+00	Objective-C	11116
1403	189890377	TrillCyborg/fullstack	https://avatars1.githubusercontent.com/u/2574923?v=4	/TrillCyborg	2019-06-02 20:10:10+00	2019-07-06 06:10:16+00	2019-07-06 08:03:56.631009+00	TypeScript	11109
1404	32689863	3b1b/manim	https://avatars0.githubusercontent.com/u/11601040?v=4	/3b1b	2015-03-22 18:50:58+00	2019-07-06 07:40:27+00	2019-07-06 08:03:56.632971+00	Python	11108
\.


--
-- Data for Name: star_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.star_history (id, monthly_date, star_count_monthly, last_updated_at, repository_id_id) FROM stdin;
4	2019-09-01	0	\N	405
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 68, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: combination_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.combination_id_seq', 116, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 571, true);


--
-- Name: django_celery_beat_clockedschedule_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_celery_beat_clockedschedule_id_seq', 1, false);


--
-- Name: django_celery_beat_crontabschedule_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_celery_beat_crontabschedule_id_seq', 1, true);


--
-- Name: django_celery_beat_intervalschedule_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_celery_beat_intervalschedule_id_seq', 1, true);


--
-- Name: django_celery_beat_periodictask_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_celery_beat_periodictask_id_seq', 2, true);


--
-- Name: django_celery_beat_solarschedule_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_celery_beat_solarschedule_id_seq', 1, false);


--
-- Name: django_celery_results_taskresult_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_celery_results_taskresult_id_seq', 467, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 17, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 47, true);


--
-- Name: repository_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.repository_id_seq', 3404, true);


--
-- Name: star_history_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.star_history_id_seq', 4, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: combination combination_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.combination
    ADD CONSTRAINT combination_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_celery_beat_clockedschedule django_celery_beat_clockedschedule_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_celery_beat_clockedschedule
    ADD CONSTRAINT django_celery_beat_clockedschedule_pkey PRIMARY KEY (id);


--
-- Name: django_celery_beat_crontabschedule django_celery_beat_crontabschedule_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_celery_beat_crontabschedule
    ADD CONSTRAINT django_celery_beat_crontabschedule_pkey PRIMARY KEY (id);


--
-- Name: django_celery_beat_intervalschedule django_celery_beat_intervalschedule_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_celery_beat_intervalschedule
    ADD CONSTRAINT django_celery_beat_intervalschedule_pkey PRIMARY KEY (id);


--
-- Name: django_celery_beat_periodictask django_celery_beat_periodictask_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_celery_beat_periodictask
    ADD CONSTRAINT django_celery_beat_periodictask_name_key UNIQUE (name);


--
-- Name: django_celery_beat_periodictask django_celery_beat_periodictask_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_celery_beat_periodictask
    ADD CONSTRAINT django_celery_beat_periodictask_pkey PRIMARY KEY (id);


--
-- Name: django_celery_beat_periodictasks django_celery_beat_periodictasks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_celery_beat_periodictasks
    ADD CONSTRAINT django_celery_beat_periodictasks_pkey PRIMARY KEY (ident);


--
-- Name: django_celery_beat_solarschedule django_celery_beat_solar_event_latitude_longitude_ba64999a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_celery_beat_solarschedule
    ADD CONSTRAINT django_celery_beat_solar_event_latitude_longitude_ba64999a_uniq UNIQUE (event, latitude, longitude);


--
-- Name: django_celery_beat_solarschedule django_celery_beat_solarschedule_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_celery_beat_solarschedule
    ADD CONSTRAINT django_celery_beat_solarschedule_pkey PRIMARY KEY (id);


--
-- Name: django_celery_results_taskresult django_celery_results_taskresult_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_celery_results_taskresult
    ADD CONSTRAINT django_celery_results_taskresult_pkey PRIMARY KEY (id);


--
-- Name: django_celery_results_taskresult django_celery_results_taskresult_task_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_celery_results_taskresult
    ADD CONSTRAINT django_celery_results_taskresult_task_id_key UNIQUE (task_id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: repository repository_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.repository
    ADD CONSTRAINT repository_pkey PRIMARY KEY (id);


--
-- Name: star_history star_history_id_repository_name_id_d127260a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.star_history
    ADD CONSTRAINT star_history_id_repository_name_id_d127260a_uniq UNIQUE (id, repository_id_id);


--
-- Name: star_history star_history_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.star_history
    ADD CONSTRAINT star_history_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_celery_beat_periodictask_clocked_id_47a69f82; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_celery_beat_periodictask_clocked_id_47a69f82 ON public.django_celery_beat_periodictask USING btree (clocked_id);


--
-- Name: django_celery_beat_periodictask_crontab_id_d3cba168; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_celery_beat_periodictask_crontab_id_d3cba168 ON public.django_celery_beat_periodictask USING btree (crontab_id);


--
-- Name: django_celery_beat_periodictask_interval_id_a8ca27da; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_celery_beat_periodictask_interval_id_a8ca27da ON public.django_celery_beat_periodictask USING btree (interval_id);


--
-- Name: django_celery_beat_periodictask_name_265a36b7_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_celery_beat_periodictask_name_265a36b7_like ON public.django_celery_beat_periodictask USING btree (name varchar_pattern_ops);


--
-- Name: django_celery_beat_periodictask_solar_id_a87ce72c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_celery_beat_periodictask_solar_id_a87ce72c ON public.django_celery_beat_periodictask USING btree (solar_id);


--
-- Name: django_celery_results_taskresult_date_done_49edada6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_celery_results_taskresult_date_done_49edada6 ON public.django_celery_results_taskresult USING btree (date_done);


--
-- Name: django_celery_results_taskresult_hidden_cd77412f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_celery_results_taskresult_hidden_cd77412f ON public.django_celery_results_taskresult USING btree (hidden);


--
-- Name: django_celery_results_taskresult_status_cbbed23a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_celery_results_taskresult_status_cbbed23a ON public.django_celery_results_taskresult USING btree (status);


--
-- Name: django_celery_results_taskresult_status_cbbed23a_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_celery_results_taskresult_status_cbbed23a_like ON public.django_celery_results_taskresult USING btree (status varchar_pattern_ops);


--
-- Name: django_celery_results_taskresult_task_id_de0d95bf_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_celery_results_taskresult_task_id_de0d95bf_like ON public.django_celery_results_taskresult USING btree (task_id varchar_pattern_ops);


--
-- Name: django_celery_results_taskresult_task_name_90987df3; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_celery_results_taskresult_task_name_90987df3 ON public.django_celery_results_taskresult USING btree (task_name);


--
-- Name: django_celery_results_taskresult_task_name_90987df3_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_celery_results_taskresult_task_name_90987df3_like ON public.django_celery_results_taskresult USING btree (task_name varchar_pattern_ops);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: star_history_repository_id_id_bf0e775d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX star_history_repository_id_id_bf0e775d ON public.star_history USING btree (repository_id_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_celery_beat_periodictask django_celery_beat_p_clocked_id_47a69f82_fk_django_ce; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_celery_beat_periodictask
    ADD CONSTRAINT django_celery_beat_p_clocked_id_47a69f82_fk_django_ce FOREIGN KEY (clocked_id) REFERENCES public.django_celery_beat_clockedschedule(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_celery_beat_periodictask django_celery_beat_p_crontab_id_d3cba168_fk_django_ce; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_celery_beat_periodictask
    ADD CONSTRAINT django_celery_beat_p_crontab_id_d3cba168_fk_django_ce FOREIGN KEY (crontab_id) REFERENCES public.django_celery_beat_crontabschedule(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_celery_beat_periodictask django_celery_beat_p_interval_id_a8ca27da_fk_django_ce; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_celery_beat_periodictask
    ADD CONSTRAINT django_celery_beat_p_interval_id_a8ca27da_fk_django_ce FOREIGN KEY (interval_id) REFERENCES public.django_celery_beat_intervalschedule(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_celery_beat_periodictask django_celery_beat_p_solar_id_a87ce72c_fk_django_ce; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_celery_beat_periodictask
    ADD CONSTRAINT django_celery_beat_p_solar_id_a87ce72c_fk_django_ce FOREIGN KEY (solar_id) REFERENCES public.django_celery_beat_solarschedule(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: star_history star_history_repository_id_id_bf0e775d_fk_repository_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.star_history
    ADD CONSTRAINT star_history_repository_id_id_bf0e775d_fk_repository_id FOREIGN KEY (repository_id_id) REFERENCES public.repository(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

