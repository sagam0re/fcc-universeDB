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
    age integer,
    is_spherical boolean,
    name character varying(30) NOT NULL,
    diameter numeric(5,3),
    description text,
    mass_in_kg integer,
    has_black_hole boolean
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
    name character varying(20) NOT NULL,
    age integer,
    mass_in_kg integer,
    diameter numeric(3,2),
    has_atmosphere boolean,
    is_habitable boolean,
    description text
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
    name character varying(20) NOT NULL,
    age integer,
    mass_in_kg integer,
    diameter numeric(3,2),
    has_life boolean,
    has_moon boolean,
    description text
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
-- Name: solar_system; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.solar_system (
    solar_system_id integer NOT NULL,
    star_id integer NOT NULL,
    planet_id integer NOT NULL,
    has_black_hole boolean,
    has_habitable_planet boolean,
    description text,
    name character varying(20)
);


ALTER TABLE public.solar_system OWNER TO freecodecamp;

--
-- Name: solar_system_solar_system_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.solar_system_solar_system_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.solar_system_solar_system_id_seq OWNER TO freecodecamp;

--
-- Name: solar_system_solar_system_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.solar_system_solar_system_id_seq OWNED BY public.solar_system.solar_system_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age integer,
    mass_in_kg integer,
    diameter numeric(3,2),
    has_planets boolean,
    is_red boolean,
    description text
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
-- Name: solar_system solar_system_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system ALTER COLUMN solar_system_id SET DEFAULT nextval('public.solar_system_solar_system_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 265, false, 'Milky Way', 87.400, 'Home galaxy of Earth', 100000000, true);
INSERT INTO public.galaxy VALUES (2, 342, false, 'Andromeda', 83.400, 'description 2', 100000001, true);
INSERT INTO public.galaxy VALUES (3, 286, false, 'Hydrus', 83.323, 'description 3', 303003003, true);
INSERT INTO public.galaxy VALUES (4, 225, false, 'Pictor', 23.178, 'description 4', 40400404, true);
INSERT INTO public.galaxy VALUES (5, 934, false, 'Tucana', 7.578, 'description 5', 55500505, true);
INSERT INTO public.galaxy VALUES (6, 714, false, 'Eridanus', 8.362, 'description 6', 66200506, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 8463256, 1245676, 6.23, false, false, 'description_moon 1');
INSERT INTO public.moon VALUES (2, 'Ganymede', 8463256, 1245676, 6.23, true, false, 'description_moon 2');
INSERT INTO public.moon VALUES (3, 'Himalia', 8463256, 1245676, 6.23, true, false, 'description_moon 3');
INSERT INTO public.moon VALUES (4, 'Europa', 8463256, 1245676, 6.23, true, false, 'description_moon 4');
INSERT INTO public.moon VALUES (5, 'Io', 8463256, 1245676, 6.23, true, false, 'description_moon 5');
INSERT INTO public.moon VALUES (6, 'Mimas', 8463256, 1245676, 2.93, true, false, 'description_moon 6');
INSERT INTO public.moon VALUES (7, 'Titan', 8463256, 1245676, 2.93, false, false, 'description_moon 7');
INSERT INTO public.moon VALUES (8, 'Callisto', 8463256, 1245676, 2.93, false, false, 'description_moon 8');
INSERT INTO public.moon VALUES (9, 'Amalthea', 8463256, 1245676, 2.93, true, false, 'description_moon 9');
INSERT INTO public.moon VALUES (10, 'Thebe', 8463256, 1245676, 2.93, true, false, 'description_moon 10');
INSERT INTO public.moon VALUES (11, 'Dione', 8463256, 1245676, 2.93, true, false, 'description_moon 11');
INSERT INTO public.moon VALUES (12, 'Elara', 8463256, 1245676, 2.93, true, false, 'description_moon 12');
INSERT INTO public.moon VALUES (13, 'Carme', 8463256, 1245676, 2.93, true, false, 'description_moon 13');
INSERT INTO public.moon VALUES (14, 'Adrastea', 8463256, 1245676, 2.93, true, false, 'description_moon 14');
INSERT INTO public.moon VALUES (15, 'Ananke', 8463256, 1245676, 2.93, true, false, 'description_moon 15');
INSERT INTO public.moon VALUES (16, 'Herse', 8463256, 1245676, 2.93, true, false, 'description_moon 16');
INSERT INTO public.moon VALUES (17, 'Iapetus', 124556, 5690676, 2.93, true, false, 'description_moon 17');
INSERT INTO public.moon VALUES (18, 'Aitne', 124556, 5690676, 2.93, true, false, 'description_moon 18');
INSERT INTO public.moon VALUES (19, 'Themisto', 124556, 5690676, 2.93, true, false, 'description_moon 19');
INSERT INTO public.moon VALUES (20, 'Helike', 124556, 5690676, 6.25, false, false, 'description_moon 20');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 12342342, 3453325, 4.56, false, false, 'description 1');
INSERT INTO public.planet VALUES (2, 'Venus', 183462, 3423525, 1.26, false, false, 'description 2');
INSERT INTO public.planet VALUES (3, 'Earth', 1867679, 3497895, 3.36, true, true, 'description 3');
INSERT INTO public.planet VALUES (4, 'Mars', 1867679, 3497895, 2.86, false, true, 'description 4');
INSERT INTO public.planet VALUES (5, 'Jupiter', 25677679, 18769695, 6.86, false, true, 'description 5');
INSERT INTO public.planet VALUES (6, 'Saturn', 25677679, 18769695, 4.47, false, true, 'description 6');
INSERT INTO public.planet VALUES (7, 'Uranus', 15671659, 54769695, 4.23, false, true, 'description 7');
INSERT INTO public.planet VALUES (8, 'Neptune', 15671659, 54769695, 1.22, false, true, 'description 8');
INSERT INTO public.planet VALUES (9, 'Pluto', 15671659, 54769695, 0.45, false, true, 'description 9');
INSERT INTO public.planet VALUES (10, 'Kepler-186f', 15671659, 54769695, 2.35, false, false, 'description 10');
INSERT INTO public.planet VALUES (11, 'Kepler-452b', 569456, 33375673, 4.12, false, false, 'description 11');
INSERT INTO public.planet VALUES (12, 'CoRoT-7b', 24963689, 68759003, 0.92, false, false, 'description 12');


--
-- Data for Name: solar_system; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.solar_system VALUES (1, 1, 1, true, true, 'solar system 1', 'Our Solar System');
INSERT INTO public.solar_system VALUES (2, 2, 2, true, false, 'solar system 2', 'Other Solar System 1');
INSERT INTO public.solar_system VALUES (3, 3, 3, true, false, 'solar system 3', 'Other Solar System 2');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 24963689, 68759003, 3.92, true, false, 'description_sun 1');
INSERT INTO public.star VALUES (2, 'Betelgeuse', 2864375, 84326809, 3.92, true, false, 'description_sun 2');
INSERT INTO public.star VALUES (3, 'Arcticus', 25643775, 32634667, 9.36, true, true, 'description_sun 3');
INSERT INTO public.star VALUES (4, 'Deneb', 8563462, 235097, 6.53, false, false, 'description_sun 4');
INSERT INTO public.star VALUES (5, 'Antares', 9528527, 7927563, 1.98, false, true, 'description_sun 5');
INSERT INTO public.star VALUES (6, 'Alnilam', 8463256, 1245676, 6.23, true, true, 'description_sun 6');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: solar_system_solar_system_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.solar_system_solar_system_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy description; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT description UNIQUE (description);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_description_key UNIQUE (description);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_description_key UNIQUE (description);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: solar_system solar_system_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system
    ADD CONSTRAINT solar_system_description_key UNIQUE (description);


--
-- Name: solar_system solar_system_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system
    ADD CONSTRAINT solar_system_pkey PRIMARY KEY (solar_system_id);


--
-- Name: star star_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_description_key UNIQUE (description);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: planet planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: solar_system star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system
    ADD CONSTRAINT star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

