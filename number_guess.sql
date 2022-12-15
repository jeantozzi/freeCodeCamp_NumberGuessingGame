--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    id integer NOT NULL,
    secret_number integer NOT NULL,
    tries integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_id_seq OWNER TO freecodecamp;

--
-- Name: games_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_id_seq OWNED BY public.games.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO freecodecamp;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: games id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN id SET DEFAULT nextval('public.games_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 485, 10, 1);
INSERT INTO public.games VALUES (2, 168, 169, 10);
INSERT INTO public.games VALUES (3, 933, 934, 11);
INSERT INTO public.games VALUES (4, 797, 800, 10);
INSERT INTO public.games VALUES (5, 557, 559, 10);
INSERT INTO public.games VALUES (6, 424, 425, 10);
INSERT INTO public.games VALUES (7, 526, 15, 1);
INSERT INTO public.games VALUES (8, 649, 650, 12);
INSERT INTO public.games VALUES (9, 175, 176, 13);
INSERT INTO public.games VALUES (10, 923, 926, 12);
INSERT INTO public.games VALUES (11, 578, 580, 12);
INSERT INTO public.games VALUES (12, 449, 450, 12);
INSERT INTO public.games VALUES (13, 364, 365, 15);
INSERT INTO public.games VALUES (14, 740, 741, 15);
INSERT INTO public.games VALUES (15, 153, 154, 16);
INSERT INTO public.games VALUES (16, 663, 664, 16);
INSERT INTO public.games VALUES (17, 839, 842, 15);
INSERT INTO public.games VALUES (18, 36, 38, 15);
INSERT INTO public.games VALUES (19, 433, 434, 15);
INSERT INTO public.games VALUES (20, 526, 527, 17);
INSERT INTO public.games VALUES (21, 641, 642, 17);
INSERT INTO public.games VALUES (22, 922, 923, 18);
INSERT INTO public.games VALUES (23, 503, 504, 18);
INSERT INTO public.games VALUES (24, 516, 519, 17);
INSERT INTO public.games VALUES (25, 970, 972, 17);
INSERT INTO public.games VALUES (26, 372, 373, 17);
INSERT INTO public.games VALUES (27, 158, 159, 19);
INSERT INTO public.games VALUES (28, 917, 918, 19);
INSERT INTO public.games VALUES (29, 127, 128, 20);
INSERT INTO public.games VALUES (30, 94, 95, 20);
INSERT INTO public.games VALUES (31, 427, 430, 19);
INSERT INTO public.games VALUES (32, 925, 927, 19);
INSERT INTO public.games VALUES (33, 912, 913, 19);
INSERT INTO public.games VALUES (34, 863, 864, 21);
INSERT INTO public.games VALUES (35, 161, 162, 21);
INSERT INTO public.games VALUES (36, 742, 743, 22);
INSERT INTO public.games VALUES (37, 658, 659, 22);
INSERT INTO public.games VALUES (38, 792, 795, 21);
INSERT INTO public.games VALUES (39, 935, 937, 21);
INSERT INTO public.games VALUES (40, 636, 637, 21);
INSERT INTO public.games VALUES (41, 186, 187, 23);
INSERT INTO public.games VALUES (42, 742, 743, 23);
INSERT INTO public.games VALUES (43, 876, 877, 24);
INSERT INTO public.games VALUES (44, 11, 12, 24);
INSERT INTO public.games VALUES (45, 950, 953, 23);
INSERT INTO public.games VALUES (46, 449, 451, 23);
INSERT INTO public.games VALUES (47, 948, 949, 23);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Jean');
INSERT INTO public.users VALUES (2, 'user_1671113031461');
INSERT INTO public.users VALUES (3, 'user_1671113031460');
INSERT INTO public.users VALUES (4, 'user_1671113239739');
INSERT INTO public.users VALUES (5, 'user_1671113239738');
INSERT INTO public.users VALUES (6, 'user_1671113786618');
INSERT INTO public.users VALUES (7, 'user_1671113786617');
INSERT INTO public.users VALUES (8, 'user_1671114346157');
INSERT INTO public.users VALUES (9, 'user_1671114346156');
INSERT INTO public.users VALUES (10, 'user_1671114580264');
INSERT INTO public.users VALUES (11, 'user_1671114580263');
INSERT INTO public.users VALUES (12, 'user_1671114669233');
INSERT INTO public.users VALUES (13, 'user_1671114669232');
INSERT INTO public.users VALUES (14, 'Jean Tozzi');
INSERT INTO public.users VALUES (15, 'user_1671114833991');
INSERT INTO public.users VALUES (16, 'user_1671114833990');
INSERT INTO public.users VALUES (17, 'user_1671114883576');
INSERT INTO public.users VALUES (18, 'user_1671114883575');
INSERT INTO public.users VALUES (19, 'user_1671114917179');
INSERT INTO public.users VALUES (20, 'user_1671114917178');
INSERT INTO public.users VALUES (21, 'user_1671114928070');
INSERT INTO public.users VALUES (22, 'user_1671114928069');
INSERT INTO public.users VALUES (23, 'user_1671115012252');
INSERT INTO public.users VALUES (24, 'user_1671115012251');


--
-- Name: games_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_id_seq', 47, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_id_seq', 24, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- PostgreSQL database dump complete
--

