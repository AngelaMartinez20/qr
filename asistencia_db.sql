--
-- PostgreSQL database dump
--

-- Dumped from database version 14.15 (Homebrew)
-- Dumped by pg_dump version 14.15 (Homebrew)

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
-- Name: asistencias; Type: TABLE; Schema: public; Owner: angelamartinez
--

CREATE TABLE public.asistencias (
    id integer NOT NULL,
    clase_id character varying(50),
    fecha timestamp without time zone,
    ip_estudiante inet,
    registrado_en timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.asistencias OWNER TO angelamartinez;

--
-- Name: asistencias_id_seq; Type: SEQUENCE; Schema: public; Owner: angelamartinez
--

CREATE SEQUENCE public.asistencias_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asistencias_id_seq OWNER TO angelamartinez;

--
-- Name: asistencias_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: angelamartinez
--

ALTER SEQUENCE public.asistencias_id_seq OWNED BY public.asistencias.id;


--
-- Name: asistencias id; Type: DEFAULT; Schema: public; Owner: angelamartinez
--

ALTER TABLE ONLY public.asistencias ALTER COLUMN id SET DEFAULT nextval('public.asistencias_id_seq'::regclass);


--
-- Data for Name: asistencias; Type: TABLE DATA; Schema: public; Owner: angelamartinez
--

COPY public.asistencias (id, clase_id, fecha, ip_estudiante, registrado_en) FROM stdin;
\.


--
-- Name: asistencias_id_seq; Type: SEQUENCE SET; Schema: public; Owner: angelamartinez
--

SELECT pg_catalog.setval('public.asistencias_id_seq', 1, false);


--
-- Name: asistencias asistencias_pkey; Type: CONSTRAINT; Schema: public; Owner: angelamartinez
--

ALTER TABLE ONLY public.asistencias
    ADD CONSTRAINT asistencias_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

