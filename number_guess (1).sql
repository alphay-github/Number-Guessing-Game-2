--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    game_id integer NOT NULL,
    guesses integer NOT NULL,
    u_id integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    u_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_u_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_u_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_u_id_seq OWNER TO freecodecamp;

--
-- Name: users_u_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_u_id_seq OWNED BY public.users.u_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users u_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN u_id SET DEFAULT nextval('public.users_u_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 547, 1);
INSERT INTO public.games VALUES (2, 570, 1);
INSERT INTO public.games VALUES (3, 714, 2);
INSERT INTO public.games VALUES (4, 199, 2);
INSERT INTO public.games VALUES (5, 575, 1);
INSERT INTO public.games VALUES (6, 433, 1);
INSERT INTO public.games VALUES (7, 676, 1);
INSERT INTO public.games VALUES (8, 972, 3);
INSERT INTO public.games VALUES (9, 478, 3);
INSERT INTO public.games VALUES (10, 100, 4);
INSERT INTO public.games VALUES (11, 544, 4);
INSERT INTO public.games VALUES (12, 800, 3);
INSERT INTO public.games VALUES (13, 740, 3);
INSERT INTO public.games VALUES (14, 729, 3);
INSERT INTO public.games VALUES (15, 68, 5);
INSERT INTO public.games VALUES (16, 532, 5);
INSERT INTO public.games VALUES (17, 42, 6);
INSERT INTO public.games VALUES (18, 79, 6);
INSERT INTO public.games VALUES (19, 913, 5);
INSERT INTO public.games VALUES (20, 449, 5);
INSERT INTO public.games VALUES (21, 832, 5);
INSERT INTO public.games VALUES (22, 590, 7);
INSERT INTO public.games VALUES (23, 315, 7);
INSERT INTO public.games VALUES (24, 252, 8);
INSERT INTO public.games VALUES (25, 209, 8);
INSERT INTO public.games VALUES (26, 51, 7);
INSERT INTO public.games VALUES (27, 143, 7);
INSERT INTO public.games VALUES (28, 339, 7);
INSERT INTO public.games VALUES (29, 627, 9);
INSERT INTO public.games VALUES (30, 548, 9);
INSERT INTO public.games VALUES (31, 928, 10);
INSERT INTO public.games VALUES (32, 487, 10);
INSERT INTO public.games VALUES (33, 189, 9);
INSERT INTO public.games VALUES (34, 134, 9);
INSERT INTO public.games VALUES (35, 991, 9);
INSERT INTO public.games VALUES (36, 718, 11);
INSERT INTO public.games VALUES (37, 940, 11);
INSERT INTO public.games VALUES (38, 704, 12);
INSERT INTO public.games VALUES (39, 65, 12);
INSERT INTO public.games VALUES (40, 290, 11);
INSERT INTO public.games VALUES (41, 546, 11);
INSERT INTO public.games VALUES (42, 807, 11);
INSERT INTO public.games VALUES (43, 12, 13);
INSERT INTO public.games VALUES (44, 739, 14);
INSERT INTO public.games VALUES (45, 617, 14);
INSERT INTO public.games VALUES (46, 851, 15);
INSERT INTO public.games VALUES (47, 949, 15);
INSERT INTO public.games VALUES (48, 816, 14);
INSERT INTO public.games VALUES (49, 301, 14);
INSERT INTO public.games VALUES (50, 262, 14);
INSERT INTO public.games VALUES (51, 229, 16);
INSERT INTO public.games VALUES (52, 618, 16);
INSERT INTO public.games VALUES (53, 810, 17);
INSERT INTO public.games VALUES (54, 454, 17);
INSERT INTO public.games VALUES (55, 172, 16);
INSERT INTO public.games VALUES (56, 52, 16);
INSERT INTO public.games VALUES (57, 112, 16);
INSERT INTO public.games VALUES (58, 512, 18);
INSERT INTO public.games VALUES (59, 377, 18);
INSERT INTO public.games VALUES (60, 891, 19);
INSERT INTO public.games VALUES (61, 293, 19);
INSERT INTO public.games VALUES (62, 890, 18);
INSERT INTO public.games VALUES (63, 570, 18);
INSERT INTO public.games VALUES (64, 639, 18);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1726151871425');
INSERT INTO public.users VALUES (2, 'user_1726151871424');
INSERT INTO public.users VALUES (3, 'user_1726151948747');
INSERT INTO public.users VALUES (4, 'user_1726151948746');
INSERT INTO public.users VALUES (5, 'user_1726151959811');
INSERT INTO public.users VALUES (6, 'user_1726151959810');
INSERT INTO public.users VALUES (7, 'user_1726151990935');
INSERT INTO public.users VALUES (8, 'user_1726151990934');
INSERT INTO public.users VALUES (9, 'user_1726152051705');
INSERT INTO public.users VALUES (10, 'user_1726152051704');
INSERT INTO public.users VALUES (11, 'user_1726152120644');
INSERT INTO public.users VALUES (12, 'user_1726152120643');
INSERT INTO public.users VALUES (13, 'alpha');
INSERT INTO public.users VALUES (14, 'user_1726152212854');
INSERT INTO public.users VALUES (15, 'user_1726152212853');
INSERT INTO public.users VALUES (16, 'user_1726152241158');
INSERT INTO public.users VALUES (17, 'user_1726152241156');
INSERT INTO public.users VALUES (18, 'user_1726152248675');
INSERT INTO public.users VALUES (19, 'user_1726152248674');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 64, true);


--
-- Name: users_u_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_u_id_seq', 19, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (u_id);


--
-- Name: games games_u_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_u_id_fkey FOREIGN KEY (u_id) REFERENCES public.users(u_id);


--
-- PostgreSQL database dump complete
--

