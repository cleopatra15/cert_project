--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(200) NOT NULL,
    size integer,
    description text,
    age integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(200) NOT NULL,
    planet_id integer,
    surface_temp integer,
    radius integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(200) NOT NULL,
    nr_people integer,
    surface numeric(10,4),
    safe_for_humans boolean,
    has_life boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: ship; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.ship (
    ship_id integer NOT NULL,
    name character varying(200) NOT NULL,
    len integer NOT NULL
);


ALTER TABLE public.ship OWNER TO freecodecamp;

--
-- Name: ship_ship_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.ship_ship_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ship_ship_id_seq OWNER TO freecodecamp;

--
-- Name: ship_ship_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.ship_ship_id_seq OWNED BY public.ship.ship_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(200) NOT NULL,
    reviews text,
    galaxy_id integer,
    is_visible boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: ship ship_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ship ALTER COLUMN ship_id SET DEFAULT nextval('public.ship_ship_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxy1', 10, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'galaxy2', 9, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'galaxy3', 4, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'galaxy4', 7, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'galaxy5', 12, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'galaxy6', 3, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', 1, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'moon2', 1, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'moon3', 1, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'moon4', 2, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'moon5', 2, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'moon6', 3, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'moon7', 3, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'moon8', 4, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'moon9', 4, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'moon10', 5, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'moon11', 5, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'moon12', 6, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'moon13', 6, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'moon14', 7, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'moon15', 7, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'moon16', 8, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'moon17', 8, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'moon18', 9, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'moon19', 9, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'moon20', 10, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'moon21', 10, NULL, NULL);
INSERT INTO public.moon VALUES (22, 'moon22', 11, NULL, NULL);
INSERT INTO public.moon VALUES (23, 'moon23', 11, NULL, NULL);
INSERT INTO public.moon VALUES (24, 'moon24', 12, NULL, NULL);
INSERT INTO public.moon VALUES (25, 'moon25', 12, NULL, NULL);
INSERT INTO public.moon VALUES (26, 'moon26', 12, NULL, NULL);
INSERT INTO public.moon VALUES (27, 'moon27', 12, NULL, NULL);
INSERT INTO public.moon VALUES (28, 'moon28', 11, NULL, NULL);
INSERT INTO public.moon VALUES (29, 'moon29', 11, NULL, NULL);
INSERT INTO public.moon VALUES (30, 'moon30', 10, NULL, NULL);
INSERT INTO public.moon VALUES (31, 'moon31', 10, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet1', 12, 30.0000, true, true, 1);
INSERT INTO public.planet VALUES (2, 'planet2', 42, 10.0000, true, true, 1);
INSERT INTO public.planet VALUES (3, 'planet3', 2, 1.0000, false, true, 1);
INSERT INTO public.planet VALUES (4, 'planet4', 24, 31.0000, false, false, 2);
INSERT INTO public.planet VALUES (5, 'planet5', 44, 35.0000, true, false, 2);
INSERT INTO public.planet VALUES (6, 'planet6', 78, 93.0000, true, true, 2);
INSERT INTO public.planet VALUES (7, 'planet7', 18, 23.0000, true, false, 3);
INSERT INTO public.planet VALUES (8, 'planet8', 13, 22.0000, false, false, 4);
INSERT INTO public.planet VALUES (9, 'planet9', 17, 45.0000, true, false, 5);
INSERT INTO public.planet VALUES (10, 'planet10', 15, 22.0000, true, true, 6);
INSERT INTO public.planet VALUES (11, 'planet11', 14, 21.0000, true, false, 6);
INSERT INTO public.planet VALUES (12, 'planet12', 14, 28.0000, true, true, 4);


--
-- Data for Name: ship; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.ship VALUES (1, 'ship1', 12);
INSERT INTO public.ship VALUES (2, 'ship2', 1);
INSERT INTO public.ship VALUES (3, 'ship3', 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', 'nice', 1, NULL);
INSERT INTO public.star VALUES (2, 'star2', 'beautiful', 1, NULL);
INSERT INTO public.star VALUES (3, 'star3', 'great', 3, NULL);
INSERT INTO public.star VALUES (4, 'star4', 'best', 4, NULL);
INSERT INTO public.star VALUES (5, 'star5', 'wonderful', 5, NULL);
INSERT INTO public.star VALUES (6, 'star6', 'stunning', 6, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 31, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: ship_ship_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.ship_ship_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: ship ship_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ship
    ADD CONSTRAINT ship_name_key UNIQUE (name);


--
-- Name: ship ship_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ship
    ADD CONSTRAINT ship_pkey PRIMARY KEY (ship_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

