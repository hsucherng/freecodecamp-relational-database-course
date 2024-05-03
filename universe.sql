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
-- Name: dummy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.dummy (
    dummy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text
);


ALTER TABLE public.dummy OWNER TO freecodecamp;

--
-- Name: dummy_dummy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.dummy_dummy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dummy_dummy_id_seq OWNER TO freecodecamp;

--
-- Name: dummy_dummy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.dummy_dummy_id_seq OWNED BY public.dummy.dummy_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    constellation character varying(40),
    image_filename character varying(50)
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
    name character varying(30) NOT NULL,
    is_spherical boolean,
    distance_from_earth_in_km integer,
    planet_id integer
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
    has_life boolean,
    star_id integer,
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years numeric(4,2),
    distance_from_earth_in_km integer,
    galaxy_id integer
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
-- Name: dummy dummy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dummy ALTER COLUMN dummy_id SET DEFAULT nextval('public.dummy_dummy_id_seq'::regclass);


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
-- Data for Name: dummy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.dummy VALUES (1, 'Dummy One', 'Description one');
INSERT INTO public.dummy VALUES (2, 'Dummy Two', 'Description two');
INSERT INTO public.dummy VALUES (3, 'Dummy Three', 'Description three');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'Andromeda is the closest big galaxy to the Milky Way and is expected to collide with the Milky Way around 4.5 billion years from now.', 'Andromeda', 'andromeda.jpg');
INSERT INTO public.galaxy VALUES (2, 'Antennae', 'Appearance is similar to an insect''s antennae. Two colloding galaxies.', 'Convus', 'antennae.jpg');
INSERT INTO public.galaxy VALUES (3, 'Backward', 'It appears to rotate backwards, as the tips of the spiral arms point in the direction of rotation.', 'Centaurus', 'backward.jpg');
INSERT INTO public.galaxy VALUES (4, 'Bear Paw', 'It resembles the appearance of a bear''s claw. Also known as "Bear Claw Galaxy".', 'Lynx', 'bear-paw.jpg');
INSERT INTO public.galaxy VALUES (5, 'Black Eye', 'It has a spectacular dark band of absorbing dust in front of the galaxy''s bright nucleus, giving rise to its nicknames of the "Black Eye" or "Evil Eye" galaxy.', 'Coma Berenices', 'black-eye.jpg');
INSERT INTO public.galaxy VALUES (6, 'Bode''s', 'Named for Johann Elert Bode who discovered this galaxy in 1774. Also known as Messier 81. The largest galaxy in the M81 Group.', 'Ursa Major', 'bodes.jpg');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon One', true, 123456, 1);
INSERT INTO public.moon VALUES (2, 'Moon Two', false, 234456, 2);
INSERT INTO public.moon VALUES (3, 'Moon Three', false, 543654, 3);
INSERT INTO public.moon VALUES (4, 'Moon Four', true, 987654, 4);
INSERT INTO public.moon VALUES (5, 'Moon Five', true, 123123, 5);
INSERT INTO public.moon VALUES (6, 'Moon Six', false, 432234, 6);
INSERT INTO public.moon VALUES (7, 'Moon Seven', false, 65465, 1);
INSERT INTO public.moon VALUES (8, 'Moon Eight', true, 87432, 1);
INSERT INTO public.moon VALUES (9, 'Moon Nine', false, 897543, 2);
INSERT INTO public.moon VALUES (10, 'Moon Ten', true, 111234, 3);
INSERT INTO public.moon VALUES (11, 'Moon Eleven', false, 2222543, 4);
INSERT INTO public.moon VALUES (12, 'Moon Twelve', false, 333333123, 5);
INSERT INTO public.moon VALUES (13, 'Moon Thirteen', true, 4444123, 6);
INSERT INTO public.moon VALUES (14, 'Moon Fourteen', true, 55555234, 5);
INSERT INTO public.moon VALUES (15, 'Moon Fifteen', false, 6666897, 4);
INSERT INTO public.moon VALUES (16, 'Moon Sixteen', true, 777123, 3);
INSERT INTO public.moon VALUES (17, 'Moon Seventeen', false, 888789, 2);
INSERT INTO public.moon VALUES (18, 'Moon Eighteen', true, 9999923, 1);
INSERT INTO public.moon VALUES (19, 'Moon Nineteen', false, 123832, 2);
INSERT INTO public.moon VALUES (20, 'Moon Twenty', true, 12312312, 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', true, 1, 'The third planet from the sun and the only astronomical object known to harbor life.');
INSERT INTO public.planet VALUES (2, 'Mercury', false, 2, 'First planet from the sun and the smallest in the Solar System.');
INSERT INTO public.planet VALUES (3, 'Mars', false, 3, 'Fourth planet from the sun and the second-smallest planet in the Solar System.');
INSERT INTO public.planet VALUES (4, 'Venus', false, 4, 'Second planet from the sun. It is a terrestrial planet and is the closest in mass and size to its orbital neighbour Earth.');
INSERT INTO public.planet VALUES (5, 'Jupiter', false, 5, 'Fifth planet from the sun and the largest in the Solar System.');
INSERT INTO public.planet VALUES (6, 'Uranus', false, 6, 'Seventh planet from the Sun. It is a gaseous cyan-coloured ice giant.');
INSERT INTO public.planet VALUES (7, 'Neptune', false, 1, 'Eight and farthest known planet from the sun. It is the fourth-largest planet in the Solar System by diameter.');
INSERT INTO public.planet VALUES (8, 'Saturn', false, 2, 'Sixth planet from the Sun and the second-largest in the Solar System, after Jupiter.');
INSERT INTO public.planet VALUES (9, 'CoRoT-7b', false, 3, 'The first extrasolar planet that was shown to be a rocky plant like Earth.');
INSERT INTO public.planet VALUES (10, 'HD 209458b', false, 4, 'The first extrasolar planet detected by its transit across its star''s face.');
INSERT INTO public.planet VALUES (11, 'HIP 13044b', false, 5, 'First extrasolar planet that was found orbiting a star that originated outside the Milky Way Galaxy.');
INSERT INTO public.planet VALUES (12, 'Kepler-186f', false, 6, 'First Earth-sized extrasolar planet to be found within its star''s habitable zone.');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Star One', 2.10, 123456789, 1);
INSERT INTO public.star VALUES (2, 'Star Two', 4.30, 83724892, 2);
INSERT INTO public.star VALUES (3, 'Star Three', 1.90, 4782391, 3);
INSERT INTO public.star VALUES (4, 'Star Four', 5.50, 32132123, 4);
INSERT INTO public.star VALUES (5, 'Star Six', 7.70, 123123789, 6);
INSERT INTO public.star VALUES (6, 'Star Five', 6.60, 65498775, 5);


--
-- Name: dummy_dummy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.dummy_dummy_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: dummy dummy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dummy
    ADD CONSTRAINT dummy_name_key UNIQUE (name);


--
-- Name: dummy dummy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dummy
    ADD CONSTRAINT dummy_pkey PRIMARY KEY (dummy_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

