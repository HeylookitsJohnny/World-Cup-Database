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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(20) NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(20) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (516, 2018, 'Final', 4, 2, 808, 809);
INSERT INTO public.games VALUES (517, 2018, 'Third Place', 2, 0, 810, 811);
INSERT INTO public.games VALUES (518, 2018, 'Semi-Final', 2, 1, 809, 811);
INSERT INTO public.games VALUES (519, 2018, 'Semi-Final', 1, 0, 808, 810);
INSERT INTO public.games VALUES (520, 2018, 'Quarter-Final', 3, 2, 809, 812);
INSERT INTO public.games VALUES (521, 2018, 'Quarter-Final', 2, 0, 811, 813);
INSERT INTO public.games VALUES (522, 2018, 'Quarter-Final', 2, 1, 810, 814);
INSERT INTO public.games VALUES (523, 2018, 'Quarter-Final', 2, 0, 808, 815);
INSERT INTO public.games VALUES (524, 2018, 'Eighth-Final', 2, 1, 811, 816);
INSERT INTO public.games VALUES (525, 2018, 'Eighth-Final', 1, 0, 813, 817);
INSERT INTO public.games VALUES (526, 2018, 'Eighth-Final', 3, 2, 810, 818);
INSERT INTO public.games VALUES (527, 2018, 'Eighth-Final', 2, 0, 814, 819);
INSERT INTO public.games VALUES (528, 2018, 'Eighth-Final', 2, 1, 809, 820);
INSERT INTO public.games VALUES (529, 2018, 'Eighth-Final', 2, 1, 812, 821);
INSERT INTO public.games VALUES (530, 2018, 'Eighth-Final', 2, 1, 815, 822);
INSERT INTO public.games VALUES (531, 2018, 'Eighth-Final', 4, 3, 808, 823);
INSERT INTO public.games VALUES (532, 2014, 'Final', 1, 0, 824, 823);
INSERT INTO public.games VALUES (533, 2014, 'Third Place', 3, 0, 825, 814);
INSERT INTO public.games VALUES (534, 2014, 'Semi-Final', 1, 0, 823, 825);
INSERT INTO public.games VALUES (535, 2014, 'Semi-Final', 7, 1, 824, 814);
INSERT INTO public.games VALUES (536, 2014, 'Quarter-Final', 1, 0, 825, 826);
INSERT INTO public.games VALUES (537, 2014, 'Quarter-Final', 1, 0, 823, 810);
INSERT INTO public.games VALUES (538, 2014, 'Quarter-Final', 2, 1, 814, 816);
INSERT INTO public.games VALUES (539, 2014, 'Quarter-Final', 1, 0, 824, 808);
INSERT INTO public.games VALUES (540, 2014, 'Eighth-Final', 2, 1, 814, 827);
INSERT INTO public.games VALUES (541, 2014, 'Eighth-Final', 2, 0, 816, 815);
INSERT INTO public.games VALUES (542, 2014, 'Eighth-Final', 2, 0, 808, 828);
INSERT INTO public.games VALUES (543, 2014, 'Eighth-Final', 2, 1, 824, 829);
INSERT INTO public.games VALUES (544, 2014, 'Eighth-Final', 2, 1, 825, 819);
INSERT INTO public.games VALUES (545, 2014, 'Eighth-Final', 2, 1, 826, 830);
INSERT INTO public.games VALUES (546, 2014, 'Eighth-Final', 1, 0, 823, 817);
INSERT INTO public.games VALUES (547, 2014, 'Eighth-Final', 2, 1, 810, 831);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (808, 'France');
INSERT INTO public.teams VALUES (809, 'Croatia');
INSERT INTO public.teams VALUES (810, 'Belgium');
INSERT INTO public.teams VALUES (811, 'England');
INSERT INTO public.teams VALUES (812, 'Russia');
INSERT INTO public.teams VALUES (813, 'Sweden');
INSERT INTO public.teams VALUES (814, 'Brazil');
INSERT INTO public.teams VALUES (815, 'Uruguay');
INSERT INTO public.teams VALUES (816, 'Colombia');
INSERT INTO public.teams VALUES (817, 'Switzerland');
INSERT INTO public.teams VALUES (818, 'Japan');
INSERT INTO public.teams VALUES (819, 'Mexico');
INSERT INTO public.teams VALUES (820, 'Denmark');
INSERT INTO public.teams VALUES (821, 'Spain');
INSERT INTO public.teams VALUES (822, 'Portugal');
INSERT INTO public.teams VALUES (823, 'Argentina');
INSERT INTO public.teams VALUES (824, 'Germany');
INSERT INTO public.teams VALUES (825, 'Netherlands');
INSERT INTO public.teams VALUES (826, 'Costa Rica');
INSERT INTO public.teams VALUES (827, 'Chile');
INSERT INTO public.teams VALUES (828, 'Nigeria');
INSERT INTO public.teams VALUES (829, 'Algeria');
INSERT INTO public.teams VALUES (830, 'Greece');
INSERT INTO public.teams VALUES (831, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 547, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 831, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--
