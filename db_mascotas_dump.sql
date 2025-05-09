toc.dat                                                                                             0000600 0004000 0002000 00000015011 15004010476 0014432 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       %                }            db_mascotas %   12.22 (Ubuntu 12.22-0ubuntu0.20.04.2)    17.4     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false         �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false         �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false         �           1262    16386    db_mascotas    DATABASE     w   CREATE DATABASE db_mascotas WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF-8';
    DROP DATABASE db_mascotas;
                     postgres    false         �           0    0    DATABASE db_mascotas    ACL     4   GRANT ALL ON DATABASE db_mascotas TO user_mascotas;
                        postgres    false    2948                     2615    2200    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
 2   -- *not* dropping schema, since initdb creates it
                     postgres    false         �           0    0    SCHEMA public    ACL     Q   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;
                        postgres    false    6         �            1259    16417    mascotas    TABLE     �  CREATE TABLE public.mascotas (
    id_mascota integer NOT NULL,
    id_mask character varying(16) NOT NULL,
    id_tipo_mascota integer,
    nombre character varying(64) NOT NULL,
    edad smallint,
    usable boolean DEFAULT true,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    created_by smallint,
    updated_at timestamp without time zone,
    updated_by smallint
);
    DROP TABLE public.mascotas;
       public         heap r       user_mascotas    false    6         �            1259    16415    mascotas_id_mascota_seq    SEQUENCE     �   CREATE SEQUENCE public.mascotas_id_mascota_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.mascotas_id_mascota_seq;
       public               user_mascotas    false    6    205         �           0    0    mascotas_id_mascota_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.mascotas_id_mascota_seq OWNED BY public.mascotas.id_mascota;
          public               user_mascotas    false    204         �            1259    16389    mascotas_tipo    TABLE       CREATE TABLE public.mascotas_tipo (
    id_tipo_mascota integer NOT NULL,
    id_mask character varying(16),
    nombre character varying(32),
    usable boolean DEFAULT true NOT NULL,
    icono character varying(16) DEFAULT ''::character varying NOT NULL
);
 !   DROP TABLE public.mascotas_tipo;
       public         heap r       user_mascotas    false    6         �            1259    16387 !   mascotas_tipo_id_tipo_mascota_seq    SEQUENCE     �   CREATE SEQUENCE public.mascotas_tipo_id_tipo_mascota_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.mascotas_tipo_id_tipo_mascota_seq;
       public               user_mascotas    false    203    6         �           0    0 !   mascotas_tipo_id_tipo_mascota_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.mascotas_tipo_id_tipo_mascota_seq OWNED BY public.mascotas_tipo.id_tipo_mascota;
          public               user_mascotas    false    202         �
           2604    16420    mascotas id_mascota    DEFAULT     z   ALTER TABLE ONLY public.mascotas ALTER COLUMN id_mascota SET DEFAULT nextval('public.mascotas_id_mascota_seq'::regclass);
 B   ALTER TABLE public.mascotas ALTER COLUMN id_mascota DROP DEFAULT;
       public               user_mascotas    false    205    204    205         �
           2604    16392    mascotas_tipo id_tipo_mascota    DEFAULT     �   ALTER TABLE ONLY public.mascotas_tipo ALTER COLUMN id_tipo_mascota SET DEFAULT nextval('public.mascotas_tipo_id_tipo_mascota_seq'::regclass);
 L   ALTER TABLE public.mascotas_tipo ALTER COLUMN id_tipo_mascota DROP DEFAULT;
       public               user_mascotas    false    203    202    203         ~          0    16417    mascotas 
   TABLE DATA           �   COPY public.mascotas (id_mascota, id_mask, id_tipo_mascota, nombre, edad, usable, created_at, created_by, updated_at, updated_by) FROM stdin;
    public               user_mascotas    false    205       2942.dat |          0    16389    mascotas_tipo 
   TABLE DATA           X   COPY public.mascotas_tipo (id_tipo_mascota, id_mask, nombre, usable, icono) FROM stdin;
    public               user_mascotas    false    203       2940.dat �           0    0    mascotas_id_mascota_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.mascotas_id_mascota_seq', 8, true);
          public               user_mascotas    false    204         �           0    0 !   mascotas_tipo_id_tipo_mascota_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.mascotas_tipo_id_tipo_mascota_seq', 5, true);
          public               user_mascotas    false    202         �
           2606    16424    mascotas mascotas_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.mascotas
    ADD CONSTRAINT mascotas_pkey PRIMARY KEY (id_mascota);
 @   ALTER TABLE ONLY public.mascotas DROP CONSTRAINT mascotas_pkey;
       public                 user_mascotas    false    205         �
           2606    16394     mascotas_tipo mascotas_tipo_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.mascotas_tipo
    ADD CONSTRAINT mascotas_tipo_pkey PRIMARY KEY (id_tipo_mascota);
 J   ALTER TABLE ONLY public.mascotas_tipo DROP CONSTRAINT mascotas_tipo_pkey;
       public                 user_mascotas    false    203         �
           2606    16425    mascotas fk_mascotas_tipo    FK CONSTRAINT     �   ALTER TABLE ONLY public.mascotas
    ADD CONSTRAINT fk_mascotas_tipo FOREIGN KEY (id_tipo_mascota) REFERENCES public.mascotas_tipo(id_tipo_mascota) ON UPDATE CASCADE ON DELETE SET NULL;
 C   ALTER TABLE ONLY public.mascotas DROP CONSTRAINT fk_mascotas_tipo;
       public               user_mascotas    false    2809    203    205                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               2942.dat                                                                                            0000600 0004000 0002000 00000000755 15004010476 0014256 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        3	JQxQi4OhFYahUuNL	2	michi ko	4	t	2025-04-28 21:30:56.4637	\N	\N	\N
2	tLZIUBL28Vf9SGC4	1	firulais edit 44	3	t	2025-04-28 21:30:47.504969	\N	\N	\N
6	rxzAjqgRDF7WFEec	5	bunny	2	t	2025-04-28 22:40:14.835758	\N	\N	\N
7	gR3YgvNNw1G42LIs	1	firulais 2	2	f	2025-04-28 22:55:53.674529	\N	\N	\N
5	QJfP3iKad6vbaaCJ	4	aqua-nir	2	f	2025-04-28 21:31:28.878654	\N	\N	\N
4	7R18YaPKSsXkhJVW	3	batman	4	t	2025-04-28 21:31:06.99224	\N	\N	\N
8	osqWum9MOKPRr7ay	4	nemo	6	t	2025-04-28 23:20:32.079592	\N	\N	\N
\.


                   2940.dat                                                                                            0000600 0004000 0002000 00000000310 15004010476 0014237 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	a1b2c3d4e5f6g7h8	Perro	t	fas fa-dog
2	i9j0k1l2m3n4o5p6	Gato	t	fas fa-cat
3	q7r8s9t0u1v2w3x4	Pájaro	t	fas fa-crow
4	y5z6a7b8c9d0e1f2	Pez	t	fas fa-fish
5	g3h4i5j6k7l8m9n0	Conejo	t	fas fa-carrot
\.


                                                                                                                                                                                                                                                                                                                        restore.sql                                                                                         0000600 0004000 0002000 00000013641 15004010476 0015366 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.2)
-- Dumped by pg_dump version 17.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE db_mascotas;
--
-- Name: db_mascotas; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE db_mascotas WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF-8';


ALTER DATABASE db_mascotas OWNER TO postgres;

\connect db_mascotas

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: mascotas; Type: TABLE; Schema: public; Owner: user_mascotas
--

CREATE TABLE public.mascotas (
    id_mascota integer NOT NULL,
    id_mask character varying(16) NOT NULL,
    id_tipo_mascota integer,
    nombre character varying(64) NOT NULL,
    edad smallint,
    usable boolean DEFAULT true,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    created_by smallint,
    updated_at timestamp without time zone,
    updated_by smallint
);


ALTER TABLE public.mascotas OWNER TO user_mascotas;

--
-- Name: mascotas_id_mascota_seq; Type: SEQUENCE; Schema: public; Owner: user_mascotas
--

CREATE SEQUENCE public.mascotas_id_mascota_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.mascotas_id_mascota_seq OWNER TO user_mascotas;

--
-- Name: mascotas_id_mascota_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_mascotas
--

ALTER SEQUENCE public.mascotas_id_mascota_seq OWNED BY public.mascotas.id_mascota;


--
-- Name: mascotas_tipo; Type: TABLE; Schema: public; Owner: user_mascotas
--

CREATE TABLE public.mascotas_tipo (
    id_tipo_mascota integer NOT NULL,
    id_mask character varying(16),
    nombre character varying(32),
    usable boolean DEFAULT true NOT NULL,
    icono character varying(16) DEFAULT ''::character varying NOT NULL
);


ALTER TABLE public.mascotas_tipo OWNER TO user_mascotas;

--
-- Name: mascotas_tipo_id_tipo_mascota_seq; Type: SEQUENCE; Schema: public; Owner: user_mascotas
--

CREATE SEQUENCE public.mascotas_tipo_id_tipo_mascota_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.mascotas_tipo_id_tipo_mascota_seq OWNER TO user_mascotas;

--
-- Name: mascotas_tipo_id_tipo_mascota_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_mascotas
--

ALTER SEQUENCE public.mascotas_tipo_id_tipo_mascota_seq OWNED BY public.mascotas_tipo.id_tipo_mascota;


--
-- Name: mascotas id_mascota; Type: DEFAULT; Schema: public; Owner: user_mascotas
--

ALTER TABLE ONLY public.mascotas ALTER COLUMN id_mascota SET DEFAULT nextval('public.mascotas_id_mascota_seq'::regclass);


--
-- Name: mascotas_tipo id_tipo_mascota; Type: DEFAULT; Schema: public; Owner: user_mascotas
--

ALTER TABLE ONLY public.mascotas_tipo ALTER COLUMN id_tipo_mascota SET DEFAULT nextval('public.mascotas_tipo_id_tipo_mascota_seq'::regclass);


--
-- Data for Name: mascotas; Type: TABLE DATA; Schema: public; Owner: user_mascotas
--

COPY public.mascotas (id_mascota, id_mask, id_tipo_mascota, nombre, edad, usable, created_at, created_by, updated_at, updated_by) FROM stdin;
\.
COPY public.mascotas (id_mascota, id_mask, id_tipo_mascota, nombre, edad, usable, created_at, created_by, updated_at, updated_by) FROM '$$PATH$$/2942.dat';

--
-- Data for Name: mascotas_tipo; Type: TABLE DATA; Schema: public; Owner: user_mascotas
--

COPY public.mascotas_tipo (id_tipo_mascota, id_mask, nombre, usable, icono) FROM stdin;
\.
COPY public.mascotas_tipo (id_tipo_mascota, id_mask, nombre, usable, icono) FROM '$$PATH$$/2940.dat';

--
-- Name: mascotas_id_mascota_seq; Type: SEQUENCE SET; Schema: public; Owner: user_mascotas
--

SELECT pg_catalog.setval('public.mascotas_id_mascota_seq', 8, true);


--
-- Name: mascotas_tipo_id_tipo_mascota_seq; Type: SEQUENCE SET; Schema: public; Owner: user_mascotas
--

SELECT pg_catalog.setval('public.mascotas_tipo_id_tipo_mascota_seq', 5, true);


--
-- Name: mascotas mascotas_pkey; Type: CONSTRAINT; Schema: public; Owner: user_mascotas
--

ALTER TABLE ONLY public.mascotas
    ADD CONSTRAINT mascotas_pkey PRIMARY KEY (id_mascota);


--
-- Name: mascotas_tipo mascotas_tipo_pkey; Type: CONSTRAINT; Schema: public; Owner: user_mascotas
--

ALTER TABLE ONLY public.mascotas_tipo
    ADD CONSTRAINT mascotas_tipo_pkey PRIMARY KEY (id_tipo_mascota);


--
-- Name: mascotas fk_mascotas_tipo; Type: FK CONSTRAINT; Schema: public; Owner: user_mascotas
--

ALTER TABLE ONLY public.mascotas
    ADD CONSTRAINT fk_mascotas_tipo FOREIGN KEY (id_tipo_mascota) REFERENCES public.mascotas_tipo(id_tipo_mascota) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: DATABASE db_mascotas; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON DATABASE db_mascotas TO user_mascotas;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               