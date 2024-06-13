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
    username character varying(22)
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

INSERT INTO public.games VALUES (1, 5, 1);
INSERT INTO public.games VALUES (2, 9, 1);
INSERT INTO public.games VALUES (3, 549, 3);
INSERT INTO public.games VALUES (4, 704, 3);
INSERT INTO public.games VALUES (5, 689, 4);
INSERT INTO public.games VALUES (6, 627, 4);
INSERT INTO public.games VALUES (7, 327, 3);
INSERT INTO public.games VALUES (8, 44, 3);
INSERT INTO public.games VALUES (9, 255, 3);
INSERT INTO public.games VALUES (10, 4, 5);
INSERT INTO public.games VALUES (11, 69, 6);
INSERT INTO public.games VALUES (12, 863, 6);
INSERT INTO public.games VALUES (13, 993, 7);
INSERT INTO public.games VALUES (14, 422, 7);
INSERT INTO public.games VALUES (15, 703, 6);
INSERT INTO public.games VALUES (16, 537, 6);
INSERT INTO public.games VALUES (17, 927, 6);
INSERT INTO public.games VALUES (18, 936, 8);
INSERT INTO public.games VALUES (19, 307, 8);
INSERT INTO public.games VALUES (20, 585, 9);
INSERT INTO public.games VALUES (21, 160, 9);
INSERT INTO public.games VALUES (22, 705, 8);
INSERT INTO public.games VALUES (23, 70, 8);
INSERT INTO public.games VALUES (24, 376, 8);
INSERT INTO public.games VALUES (25, 675, 10);
INSERT INTO public.games VALUES (26, 825, 10);
INSERT INTO public.games VALUES (27, 386, 11);
INSERT INTO public.games VALUES (28, 114, 11);
INSERT INTO public.games VALUES (29, 148, 10);
INSERT INTO public.games VALUES (30, 144, 10);
INSERT INTO public.games VALUES (31, 483, 10);
INSERT INTO public.games VALUES (32, 1, 1);
INSERT INTO public.games VALUES (33, 1, 1);
INSERT INTO public.games VALUES (34, 74, 12);
INSERT INTO public.games VALUES (35, 537, 12);
INSERT INTO public.games VALUES (36, 759, 13);
INSERT INTO public.games VALUES (37, 735, 13);
INSERT INTO public.games VALUES (38, 142, 12);
INSERT INTO public.games VALUES (39, 968, 12);
INSERT INTO public.games VALUES (40, 849, 12);
INSERT INTO public.games VALUES (41, 440, 14);
INSERT INTO public.games VALUES (42, 907, 14);
INSERT INTO public.games VALUES (43, 173, 15);
INSERT INTO public.games VALUES (44, 619, 15);
INSERT INTO public.games VALUES (45, 849, 14);
INSERT INTO public.games VALUES (46, 229, 14);
INSERT INTO public.games VALUES (47, 820, 14);
INSERT INTO public.games VALUES (48, 509, 16);
INSERT INTO public.games VALUES (49, 13, 16);
INSERT INTO public.games VALUES (50, 258, 17);
INSERT INTO public.games VALUES (51, 942, 17);
INSERT INTO public.games VALUES (52, 488, 16);
INSERT INTO public.games VALUES (53, 605, 16);
INSERT INTO public.games VALUES (54, 326, 16);
INSERT INTO public.games VALUES (55, 236, 18);
INSERT INTO public.games VALUES (56, 774, 18);
INSERT INTO public.games VALUES (57, 845, 19);
INSERT INTO public.games VALUES (58, 121, 19);
INSERT INTO public.games VALUES (59, 213, 18);
INSERT INTO public.games VALUES (60, 866, 18);
INSERT INTO public.games VALUES (61, 492, 18);
INSERT INTO public.games VALUES (62, 6, 20);
INSERT INTO public.games VALUES (63, 719, 20);
INSERT INTO public.games VALUES (64, 630, 21);
INSERT INTO public.games VALUES (65, 384, 21);
INSERT INTO public.games VALUES (66, 90, 20);
INSERT INTO public.games VALUES (67, 221, 20);
INSERT INTO public.games VALUES (68, 772, 20);
INSERT INTO public.games VALUES (69, 1, 1);
INSERT INTO public.games VALUES (70, 17, 1);
INSERT INTO public.games VALUES (71, 712, 22);
INSERT INTO public.games VALUES (72, 654, 22);
INSERT INTO public.games VALUES (73, 72, 23);
INSERT INTO public.games VALUES (74, 192, 23);
INSERT INTO public.games VALUES (75, 533, 22);
INSERT INTO public.games VALUES (76, 270, 22);
INSERT INTO public.games VALUES (77, 395, 22);
INSERT INTO public.games VALUES (78, 767, 24);
INSERT INTO public.games VALUES (79, 3, 24);
INSERT INTO public.games VALUES (80, 64, 25);
INSERT INTO public.games VALUES (81, 291, 25);
INSERT INTO public.games VALUES (82, 342, 24);
INSERT INTO public.games VALUES (83, 308, 24);
INSERT INTO public.games VALUES (84, 869, 24);
INSERT INTO public.games VALUES (85, 78, 26);
INSERT INTO public.games VALUES (86, 555, 26);
INSERT INTO public.games VALUES (87, 135, 27);
INSERT INTO public.games VALUES (88, 127, 27);
INSERT INTO public.games VALUES (89, 315, 26);
INSERT INTO public.games VALUES (90, 678, 26);
INSERT INTO public.games VALUES (91, 263, 26);
INSERT INTO public.games VALUES (92, 639, 28);
INSERT INTO public.games VALUES (93, 111, 28);
INSERT INTO public.games VALUES (94, 713, 29);
INSERT INTO public.games VALUES (95, 453, 29);
INSERT INTO public.games VALUES (96, 423, 28);
INSERT INTO public.games VALUES (97, 199, 28);
INSERT INTO public.games VALUES (98, 331, 28);
INSERT INTO public.games VALUES (99, 821, 30);
INSERT INTO public.games VALUES (100, 69, 30);
INSERT INTO public.games VALUES (101, 784, 31);
INSERT INTO public.games VALUES (102, 759, 31);
INSERT INTO public.games VALUES (103, 752, 30);
INSERT INTO public.games VALUES (104, 372, 30);
INSERT INTO public.games VALUES (105, 596, 30);
INSERT INTO public.games VALUES (106, 835, 32);
INSERT INTO public.games VALUES (107, 830, 32);
INSERT INTO public.games VALUES (108, 97, 33);
INSERT INTO public.games VALUES (109, 25, 33);
INSERT INTO public.games VALUES (110, 842, 32);
INSERT INTO public.games VALUES (111, 866, 32);
INSERT INTO public.games VALUES (112, 448, 32);
INSERT INTO public.games VALUES (113, 922, 34);
INSERT INTO public.games VALUES (114, 4, 34);
INSERT INTO public.games VALUES (115, 427, 35);
INSERT INTO public.games VALUES (116, 720, 35);
INSERT INTO public.games VALUES (117, 905, 34);
INSERT INTO public.games VALUES (118, 59, 34);
INSERT INTO public.games VALUES (119, 414, 34);
INSERT INTO public.games VALUES (120, 259, 36);
INSERT INTO public.games VALUES (121, 789, 36);
INSERT INTO public.games VALUES (122, 224, 37);
INSERT INTO public.games VALUES (123, 143, 37);
INSERT INTO public.games VALUES (124, 447, 36);
INSERT INTO public.games VALUES (125, 449, 36);
INSERT INTO public.games VALUES (126, 743, 36);
INSERT INTO public.games VALUES (127, 172, 38);
INSERT INTO public.games VALUES (128, 215, 38);
INSERT INTO public.games VALUES (129, 201, 38);
INSERT INTO public.games VALUES (130, 92, 38);
INSERT INTO public.games VALUES (131, 440, 38);
INSERT INTO public.games VALUES (132, 837, 38);
INSERT INTO public.games VALUES (133, 447, 38);
INSERT INTO public.games VALUES (134, 724, 39);
INSERT INTO public.games VALUES (135, 397, 39);
INSERT INTO public.games VALUES (136, 56, 40);
INSERT INTO public.games VALUES (137, 862, 40);
INSERT INTO public.games VALUES (138, 582, 39);
INSERT INTO public.games VALUES (139, 104, 39);
INSERT INTO public.games VALUES (140, 858, 39);
INSERT INTO public.games VALUES (141, 107, 51);
INSERT INTO public.games VALUES (142, 289, 51);
INSERT INTO public.games VALUES (143, 216, 52);
INSERT INTO public.games VALUES (144, 277, 52);
INSERT INTO public.games VALUES (145, 783, 51);
INSERT INTO public.games VALUES (146, 9, 51);
INSERT INTO public.games VALUES (147, 308, 51);
INSERT INTO public.games VALUES (148, 571, 53);
INSERT INTO public.games VALUES (149, 47, 53);
INSERT INTO public.games VALUES (150, 944, 54);
INSERT INTO public.games VALUES (151, 525, 54);
INSERT INTO public.games VALUES (152, 45, 53);
INSERT INTO public.games VALUES (153, 924, 53);
INSERT INTO public.games VALUES (154, 297, 53);
INSERT INTO public.games VALUES (155, 720, 55);
INSERT INTO public.games VALUES (156, 447, 55);
INSERT INTO public.games VALUES (157, 744, 56);
INSERT INTO public.games VALUES (158, 258, 56);
INSERT INTO public.games VALUES (159, 442, 55);
INSERT INTO public.games VALUES (160, 396, 55);
INSERT INTO public.games VALUES (161, 725, 55);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'ahmed');
INSERT INTO public.users VALUES (2, 'Ibrahim');
INSERT INTO public.users VALUES (3, 'user_1718274248213');
INSERT INTO public.users VALUES (4, 'user_1718274248212');
INSERT INTO public.users VALUES (5, 'ahmed brai');
INSERT INTO public.users VALUES (6, 'user_1718274782136');
INSERT INTO public.users VALUES (7, 'user_1718274782135');
INSERT INTO public.users VALUES (8, 'user_1718275224721');
INSERT INTO public.users VALUES (9, 'user_1718275224720');
INSERT INTO public.users VALUES (10, 'user_1718275668583');
INSERT INTO public.users VALUES (11, 'user_1718275668582');
INSERT INTO public.users VALUES (12, 'user_1718276876943');
INSERT INTO public.users VALUES (13, 'user_1718276876942');
INSERT INTO public.users VALUES (14, 'user_1718276897092');
INSERT INTO public.users VALUES (15, 'user_1718276897091');
INSERT INTO public.users VALUES (16, 'user_1718277360595');
INSERT INTO public.users VALUES (17, 'user_1718277360594');
INSERT INTO public.users VALUES (18, 'user_1718277431590');
INSERT INTO public.users VALUES (19, 'user_1718277431589');
INSERT INTO public.users VALUES (20, 'user_1718277448759');
INSERT INTO public.users VALUES (21, 'user_1718277448758');
INSERT INTO public.users VALUES (22, 'user_1718277813443');
INSERT INTO public.users VALUES (23, 'user_1718277813442');
INSERT INTO public.users VALUES (24, 'user_1718277863822');
INSERT INTO public.users VALUES (25, 'user_1718277863821');
INSERT INTO public.users VALUES (26, 'user_1718277935992');
INSERT INTO public.users VALUES (27, 'user_1718277935991');
INSERT INTO public.users VALUES (28, 'user_1718278191472');
INSERT INTO public.users VALUES (29, 'user_1718278191471');
INSERT INTO public.users VALUES (30, 'user_1718278238908');
INSERT INTO public.users VALUES (31, 'user_1718278238907');
INSERT INTO public.users VALUES (32, 'user_1718278356874');
INSERT INTO public.users VALUES (33, 'user_1718278356873');
INSERT INTO public.users VALUES (34, 'user_1718278625149');
INSERT INTO public.users VALUES (35, 'user_1718278625148');
INSERT INTO public.users VALUES (36, 'user_1718278799444');
INSERT INTO public.users VALUES (37, 'user_1718278799443');
INSERT INTO public.users VALUES (38, '');
INSERT INTO public.users VALUES (39, 'user_1718279078666');
INSERT INTO public.users VALUES (40, 'user_1718279078665');
INSERT INTO public.users VALUES (41, 'user_1718279295189');
INSERT INTO public.users VALUES (42, 'user_1718279295188');
INSERT INTO public.users VALUES (43, 'user_1718279366347');
INSERT INTO public.users VALUES (44, 'user_1718279366346');
INSERT INTO public.users VALUES (45, 'user_1718279456926');
INSERT INTO public.users VALUES (46, 'user_1718279456925');
INSERT INTO public.users VALUES (47, 'user_1718279471239');
INSERT INTO public.users VALUES (48, 'user_1718279471238');
INSERT INTO public.users VALUES (49, 'user_1718279489557');
INSERT INTO public.users VALUES (50, 'user_1718279489556');
INSERT INTO public.users VALUES (51, 'user_1718279536563');
INSERT INTO public.users VALUES (52, 'user_1718279536562');
INSERT INTO public.users VALUES (53, 'user_1718279721495');
INSERT INTO public.users VALUES (54, 'user_1718279721494');
INSERT INTO public.users VALUES (55, 'user_1718279764479');
INSERT INTO public.users VALUES (56, 'user_1718279764478');


--
-- Name: games_id_game_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_id_game_seq', 161, true);


--
-- Name: users_id_user_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_id_user_seq', 56, true);


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

