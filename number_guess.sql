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
    id_game integer NOT NULL,
    nbre_guess integer,
    id_user integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_id_game_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_id_game_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_id_game_seq OWNER TO freecodecamp;

--
-- Name: games_id_game_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_id_game_seq OWNED BY public.games.id_game;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    id_user integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_id_user_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_id_user_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_user_seq OWNER TO freecodecamp;

--
-- Name: users_id_user_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_id_user_seq OWNED BY public.users.id_user;


--
-- Name: games id_game; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN id_game SET DEFAULT nextval('public.games_id_game_seq'::regclass);


--
-- Name: users id_user; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN id_user SET DEFAULT nextval('public.users_id_user_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (176, 731, 62);
INSERT INTO public.games VALUES (177, 860, 62);
INSERT INTO public.games VALUES (178, 679, 63);
INSERT INTO public.games VALUES (179, 621, 63);
INSERT INTO public.games VALUES (180, 807, 62);
INSERT INTO public.games VALUES (181, 891, 62);
INSERT INTO public.games VALUES (182, 557, 62);
INSERT INTO public.games VALUES (183, 560, 66);
INSERT INTO public.games VALUES (184, 504, 66);
INSERT INTO public.games VALUES (185, 911, 67);
INSERT INTO public.games VALUES (186, 784, 67);
INSERT INTO public.games VALUES (187, 905, 66);
INSERT INTO public.games VALUES (188, 988, 66);
INSERT INTO public.games VALUES (189, 725, 66);
INSERT INTO public.games VALUES (190, 5, 65);
INSERT INTO public.games VALUES (191, 681, 68);
INSERT INTO public.games VALUES (192, 957, 68);
INSERT INTO public.games VALUES (193, 555, 69);
INSERT INTO public.games VALUES (194, 136, 69);
INSERT INTO public.games VALUES (195, 38, 68);
INSERT INTO public.games VALUES (196, 678, 68);
INSERT INTO public.games VALUES (197, 775, 68);
INSERT INTO public.games VALUES (198, 775, 70);
INSERT INTO public.games VALUES (199, 501, 70);
INSERT INTO public.games VALUES (200, 744, 71);
INSERT INTO public.games VALUES (201, 930, 71);
INSERT INTO public.games VALUES (202, 853, 70);
INSERT INTO public.games VALUES (203, 165, 70);
INSERT INTO public.games VALUES (204, 882, 70);
INSERT INTO public.games VALUES (205, 19, 65);
INSERT INTO public.games VALUES (206, 5, 65);
INSERT INTO public.games VALUES (207, 478, 72);
INSERT INTO public.games VALUES (208, 667, 72);
INSERT INTO public.games VALUES (209, 671, 73);
INSERT INTO public.games VALUES (210, 453, 73);
INSERT INTO public.games VALUES (211, 945, 72);
INSERT INTO public.games VALUES (212, 932, 72);
INSERT INTO public.games VALUES (213, 20, 72);
INSERT INTO public.games VALUES (214, 71, 74);
INSERT INTO public.games VALUES (215, 286, 74);
INSERT INTO public.games VALUES (216, 56, 75);
INSERT INTO public.games VALUES (217, 831, 75);
INSERT INTO public.games VALUES (218, 181, 74);
INSERT INTO public.games VALUES (219, 556, 74);
INSERT INTO public.games VALUES (220, 227, 74);
INSERT INTO public.games VALUES (221, 479, 76);
INSERT INTO public.games VALUES (222, 463, 76);
INSERT INTO public.games VALUES (223, 388, 77);
INSERT INTO public.games VALUES (224, 573, 77);
INSERT INTO public.games VALUES (225, 497, 76);
INSERT INTO public.games VALUES (226, 107, 76);
INSERT INTO public.games VALUES (227, 594, 76);
INSERT INTO public.games VALUES (228, 363, 78);
INSERT INTO public.games VALUES (229, 94, 78);
INSERT INTO public.games VALUES (230, 569, 79);
INSERT INTO public.games VALUES (231, 354, 79);
INSERT INTO public.games VALUES (232, 602, 78);
INSERT INTO public.games VALUES (233, 236, 78);
INSERT INTO public.games VALUES (234, 894, 78);
INSERT INTO public.games VALUES (235, 684, 80);
INSERT INTO public.games VALUES (236, 666, 80);
INSERT INTO public.games VALUES (237, 428, 81);
INSERT INTO public.games VALUES (238, 975, 81);
INSERT INTO public.games VALUES (239, 635, 80);
INSERT INTO public.games VALUES (240, 158, 80);
INSERT INTO public.games VALUES (241, 979, 80);
INSERT INTO public.games VALUES (242, 311, 82);
INSERT INTO public.games VALUES (243, 197, 82);
INSERT INTO public.games VALUES (244, 737, 83);
INSERT INTO public.games VALUES (245, 116, 83);
INSERT INTO public.games VALUES (246, 514, 82);
INSERT INTO public.games VALUES (247, 323, 82);
INSERT INTO public.games VALUES (248, 528, 82);
INSERT INTO public.games VALUES (249, 121, 84);
INSERT INTO public.games VALUES (250, 498, 84);
INSERT INTO public.games VALUES (251, 697, 85);
INSERT INTO public.games VALUES (252, 12, 85);
INSERT INTO public.games VALUES (253, 516, 84);
INSERT INTO public.games VALUES (254, 148, 84);
INSERT INTO public.games VALUES (255, 613, 84);
INSERT INTO public.games VALUES (256, 662, 86);
INSERT INTO public.games VALUES (257, 491, 86);
INSERT INTO public.games VALUES (258, 794, 87);
INSERT INTO public.games VALUES (259, 805, 87);
INSERT INTO public.games VALUES (260, 296, 86);
INSERT INTO public.games VALUES (261, 48, 86);
INSERT INTO public.games VALUES (262, 652, 86);
INSERT INTO public.games VALUES (263, 611, 88);
INSERT INTO public.games VALUES (264, 640, 88);
INSERT INTO public.games VALUES (265, 370, 89);
INSERT INTO public.games VALUES (266, 215, 89);
INSERT INTO public.games VALUES (267, 931, 88);
INSERT INTO public.games VALUES (268, 257, 88);
INSERT INTO public.games VALUES (269, 369, 88);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (62, 'user_1718314634186');
INSERT INTO public.users VALUES (63, 'user_1718314634185');
INSERT INTO public.users VALUES (64, '');
INSERT INTO public.users VALUES (65, 'AHMED');
INSERT INTO public.users VALUES (66, 'user_1718314953325');
INSERT INTO public.users VALUES (67, 'user_1718314953324');
INSERT INTO public.users VALUES (68, 'user_1718315373893');
INSERT INTO public.users VALUES (69, 'user_1718315373892');
INSERT INTO public.users VALUES (70, 'user_1718315494610');
INSERT INTO public.users VALUES (71, 'user_1718315494609');
INSERT INTO public.users VALUES (72, 'user_1718316097761');
INSERT INTO public.users VALUES (73, 'user_1718316097760');
INSERT INTO public.users VALUES (74, 'user_1718316148402');
INSERT INTO public.users VALUES (75, 'user_1718316148401');
INSERT INTO public.users VALUES (76, 'user_1718316170651');
INSERT INTO public.users VALUES (77, 'user_1718316170650');
INSERT INTO public.users VALUES (78, 'user_1718316183168');
INSERT INTO public.users VALUES (79, 'user_1718316183167');
INSERT INTO public.users VALUES (80, 'user_1718316202828');
INSERT INTO public.users VALUES (81, 'user_1718316202827');
INSERT INTO public.users VALUES (82, 'user_1718316318983');
INSERT INTO public.users VALUES (83, 'user_1718316318982');
INSERT INTO public.users VALUES (84, 'user_1718316325880');
INSERT INTO public.users VALUES (85, 'user_1718316325879');
INSERT INTO public.users VALUES (86, 'user_1718316334500');
INSERT INTO public.users VALUES (87, 'user_1718316334499');
INSERT INTO public.users VALUES (88, 'user_1718316338570');
INSERT INTO public.users VALUES (89, 'user_1718316338569');


--
-- Name: games_id_game_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_id_game_seq', 269, true);


--
-- Name: users_id_user_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_id_user_seq', 89, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (id_game);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id_user);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_id_user_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_id_user_fkey FOREIGN KEY (id_user) REFERENCES public.users(id_user);


--
-- PostgreSQL database dump complete
--

