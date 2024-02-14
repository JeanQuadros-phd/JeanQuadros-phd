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
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    description text NOT NULL,
    size numeric
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
-- Name: has_water; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.has_water (
    name character varying(30) NOT NULL,
    has_water_id integer NOT NULL,
    has_oxigen boolean,
    distance_from_earth numeric,
    has_atmosphere boolean
);


ALTER TABLE public.has_water OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean NOT NULL,
    planet_id integer,
    has_oxigen boolean
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
    name character varying(30) NOT NULL,
    has_life boolean NOT NULL,
    distance_from_earth integer NOT NULL,
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size numeric NOT NULL,
    galaxy_id integer,
    distance_from_earth numeric
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
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13600, 'Our galaxy', NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 1000, 'description of andromeda', NULL);
INSERT INTO public.galaxy VALUES (3, 'Black Eye', 1200, 'description of black eye', NULL);
INSERT INTO public.galaxy VALUES (4, 'Cartwheel', 1500, 'description of Cartwheel', NULL);
INSERT INTO public.galaxy VALUES (5, 'Elliptical', 2500, 'description of Elliptical', NULL);
INSERT INTO public.galaxy VALUES (6, 'Antennae ', 2500, 'description of Antennae', NULL);


--
-- Data for Name: has_water; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.has_water VALUES ('Moon', 1, false, 2102910, false);
INSERT INTO public.has_water VALUES ('Mars', 2, false, 35402910, false);
INSERT INTO public.has_water VALUES ('Neptune', 3, false, 35402910, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Fobos', false, 4, NULL);
INSERT INTO public.moon VALUES (2, 'Deimos', false, 4, NULL);
INSERT INTO public.moon VALUES (3, 'Hipérion', false, 6, NULL);
INSERT INTO public.moon VALUES (4, 'Encélado', false, 6, NULL);
INSERT INTO public.moon VALUES (5, 'Lo', false, 5, NULL);
INSERT INTO public.moon VALUES (6, 'Moon', false, 3, NULL);
INSERT INTO public.moon VALUES (7, 'Atlas', false, 6, NULL);
INSERT INTO public.moon VALUES (8, 'Nereida', false, 8, NULL);
INSERT INTO public.moon VALUES (9, 'Miranda', false, 7, NULL);
INSERT INTO public.moon VALUES (10, 'Europa', false, 5, NULL);
INSERT INTO public.moon VALUES (11, 'Ganimedes', false, 5, NULL);
INSERT INTO public.moon VALUES (12, 'Calisto', false, 5, NULL);
INSERT INTO public.moon VALUES (13, 'Amalteia', false, 5, NULL);
INSERT INTO public.moon VALUES (14, 'Himalaia', false, 5, NULL);
INSERT INTO public.moon VALUES (15, 'Elara', false, 5, NULL);
INSERT INTO public.moon VALUES (16, 'Sinope', false, 5, NULL);
INSERT INTO public.moon VALUES (17, 'Ananke', false, 5, NULL);
INSERT INTO public.moon VALUES (18, 'Tebe', false, 5, NULL);
INSERT INTO public.moon VALUES (19, 'caliroe', false, 5, NULL);
INSERT INTO public.moon VALUES (20, 'Aegir', false, 6, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', false, 134000, 1);
INSERT INTO public.planet VALUES (2, 'Venus', false, 102000, 1);
INSERT INTO public.planet VALUES (3, 'Earth', true, 0, 1);
INSERT INTO public.planet VALUES (4, 'Mars', false, 433000, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', false, 712000, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', false, 982000, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', false, 1042000, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', false, 1297000, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', false, 1897000, 1);
INSERT INTO public.planet VALUES (10, 'Ceres', false, 497000, 1);
INSERT INTO public.planet VALUES (11, 'Haumea', false, 197000, 1);
INSERT INTO public.planet VALUES (12, 'Makemake', false, 697000, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 8000000, 1, NULL);
INSERT INTO public.star VALUES (2, 'Sirius', 20000000, 1, NULL);
INSERT INTO public.star VALUES (3, 'Cancer', 13000000, 1, NULL);
INSERT INTO public.star VALUES (4, 'Mintaka', 3000000, 1, NULL);
INSERT INTO public.star VALUES (5, 'Bellatrix', 2700000, 1, NULL);
INSERT INTO public.star VALUES (6, 'Palida', 9800000, 1, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: has_water has_water_has_water_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.has_water
    ADD CONSTRAINT has_water_has_water_id_key UNIQUE (has_water_id);


--
-- Name: has_water has_water_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.has_water
    ADD CONSTRAINT has_water_name_key UNIQUE (name);


--
-- Name: has_water has_water_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.has_water
    ADD CONSTRAINT has_water_pkey PRIMARY KEY (has_water_id);


--
-- Name: moon moon_has_oxigen_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_has_oxigen_key UNIQUE (has_oxigen);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: galaxy nome_unico; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT nome_unico UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star unico_estrela; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unico_estrela UNIQUE (name);


--
-- Name: planet unico_planeta; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unico_planeta UNIQUE (name);


--
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--