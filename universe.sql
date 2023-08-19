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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    black_hole_id integer NOT NULL,
    name character varying(30) NOT NULL,
    discovery_date integer
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_hole_black_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_hole_black_hole_id_seq OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_hole_black_hole_id_seq OWNED BY public.black_hole.black_hole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    galaxy_type character varying(30),
    age_in_billions numeric(4,2),
    radius_in_light_years integer
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
    rotation text,
    radius_in_km numeric(5,1),
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
    planet_type character varying(40),
    has_life boolean,
    is_spherical boolean,
    color character varying(30),
    fun_fact text,
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
    name character varying(30) NOT NULL,
    galaxy_id integer,
    radius_in_kilometers integer,
    star_id integer NOT NULL,
    random integer
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
-- Name: black_hole black_hole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole ALTER COLUMN black_hole_id SET DEFAULT nextval('public.black_hole_black_hole_id_seq'::regclass);


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
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES (1, 'Gaia BH1', 2022);
INSERT INTO public.black_hole VALUES (2, 'Gaia BH3', 2023);
INSERT INTO public.black_hole VALUES (3, 'A0620-00', 1986);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda Galaxy', 'barred spiral', 10.01, 110000);
INSERT INTO public.galaxy VALUES (2, 'Antennae Galaxy', 'elliptical galaxy', 0.50, NULL);
INSERT INTO public.galaxy VALUES (3, 'Milky Way Galaxy', 'barred spiral', 13.61, 52850);
INSERT INTO public.galaxy VALUES (4, 'The Cigar Galaxy (M82)', 'starburst', 0.50, 18500);
INSERT INTO public.galaxy VALUES (5, 'Fireworks Galaxy', 'spiral', NULL, 20000);
INSERT INTO public.galaxy VALUES (6, 'Needle Galaxy', 'edge-on spiral', 13.24, 70000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (29, 'Moon', true, 'Synchronous (Tidally Locked)', 1737.1, 3);
INSERT INTO public.moon VALUES (30, 'Phobos', true, 'Synchronous (Tidally Locked)', 11.1, 4);
INSERT INTO public.moon VALUES (31, 'Deimos', true, 'Synchronous (Tidally Locked)', 6.2, 4);
INSERT INTO public.moon VALUES (32, 'Io', true, 'Synchronous (Tidally Locked)', 1821.6, 5);
INSERT INTO public.moon VALUES (33, 'Europa', true, 'Synchronous (Tidally Locked)', 1560.8, 5);
INSERT INTO public.moon VALUES (34, 'Ganymede', true, 'Synchronous (Tidally Locked)', 2634.1, 5);
INSERT INTO public.moon VALUES (35, 'Callisto', true, 'Synchronous (Tidally Locked)', 2410.3, 5);
INSERT INTO public.moon VALUES (36, 'Titan', true, 'Synchronous (Tidally Locked)', 2575.0, 6);
INSERT INTO public.moon VALUES (37, 'Enceladus', true, 'Synchronous (Tidally Locked)', 252.1, 6);
INSERT INTO public.moon VALUES (38, 'Mimas', true, 'Synchronous (Tidally Locked)', 198.2, 6);
INSERT INTO public.moon VALUES (39, 'Triton', true, 'Retrograde (Synchronous)', 1353.4, 8);
INSERT INTO public.moon VALUES (40, 'Charon', true, 'Synchronous (Tidally Locked)', 606.0, 9);
INSERT INTO public.moon VALUES (41, 'Miranda', true, 'Synchronous (Tidally Locked)', 235.8, 7);
INSERT INTO public.moon VALUES (42, 'Titania', true, 'Synchronous (Tidally Locked)', 788.9, 7);
INSERT INTO public.moon VALUES (43, 'Oberon', true, 'Synchronous (Tidally Locked)', 761.4, 7);
INSERT INTO public.moon VALUES (44, 'Ariel', true, 'Synchronous (Tidally Locked)', 578.9, 7);
INSERT INTO public.moon VALUES (45, 'Rhea', true, 'Synchronous (Tidally Locked)', 764.5, 6);
INSERT INTO public.moon VALUES (46, 'Dione', true, 'Synchronous (Tidally Locked)', 561.7, 6);
INSERT INTO public.moon VALUES (47, 'Tethys', true, 'Synchronous (Tidally Locked)', 531.1, 6);
INSERT INTO public.moon VALUES (48, 'Iapetus', true, 'Synchronous (Tidally Locked)', 734.5, 6);
INSERT INTO public.moon VALUES (49, 'Phoebe', true, 'Retrograde (Synchronous)', 106.6, 6);
INSERT INTO public.moon VALUES (50, 'Nereid', false, 'Unknown', 170.0, 8);
INSERT INTO public.moon VALUES (51, 'Umbriel', true, 'Synchronous (Tidally Locked)', 584.7, 7);
INSERT INTO public.moon VALUES (52, 'Calypso', true, 'Synchronous (Tidally Locked)', -20.0, 6);
INSERT INTO public.moon VALUES (53, 'Hyperion', false, 'Chaotic Rotation', 135.0, 6);
INSERT INTO public.moon VALUES (54, 'Epimetheus', true, 'Synchronous (Tidally Locked)', 58.1, 6);
INSERT INTO public.moon VALUES (55, 'Janus', true, 'Synchronous (Tidally Locked)', 89.5, 6);
INSERT INTO public.moon VALUES (56, 'Proteus', true, 'Synchronous (Tidally Locked)', 210.0, 8);
INSERT INTO public.moon VALUES (57, 'Larissa', true, 'Synchronous (Tidally Locked)', 97.5, 8);
INSERT INTO public.moon VALUES (58, 'Puck', true, 'Synchronous (Tidally Locked)', 81.0, 7);
INSERT INTO public.moon VALUES (59, 'Portia', true, 'Synchronous (Tidally Locked)', 135.0, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Terrestrial', false, true, 'Grey', 'Has extreme temperature variations due to lack of atmosphere', 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'Terrestrial', false, true, 'Yellow', 'Atmosphere is mostly composed of carbon dioxide', 1);
INSERT INTO public.planet VALUES (3, 'Earth', 'Terrestrial', true, true, 'Blue', 'Supports a wide variety of life forms', 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'Terrestrial', false, true, 'Red', 'Has the tallest volcano and deepest canyon in the solar system (Olympus Mons and Valles Marineris)', 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Gas Giant', false, true, 'Orange', 'Has a massive storm known as the Great Red Spot', 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Gas Giant', false, true, 'Yellow', 'Known for its spectacular ring system', 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Ice Giant', false, true, 'Blue', 'Rotates on its side, with north and south poles nearly in line with its orbit', 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Ice Giant', false, true, 'Blue', 'Has the strongest winds in the solar system', 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 'Dwarf Planet', false, false, 'Brown', 'Was reclassified as a dwarf planet in 2006', 1);
INSERT INTO public.planet VALUES (10, 'Vesta', 'Asteroid', false, true, 'Gray', 'One of the largest asteroids in the asteroid belt between Mars and Jupiter', 1);
INSERT INTO public.planet VALUES (11, 'Juno', 'Asteroid', false, true, 'Dark', 'One of the larger main-belt asteroids; named after the ancient Roman goddess', 1);
INSERT INTO public.planet VALUES (12, 'Pallas', 'Asteroid', false, true, 'Reddish', 'One of the largest asteroids and the third heaviest; known for its irregular shape', 1);
INSERT INTO public.planet VALUES (13, 'Ceres', 'Dwarf Planet', false, true, 'Brown', 'The largest object in the asteroid belt; holds significant amounts of water ice', 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Sun', 3, 795508, 1, NULL);
INSERT INTO public.star VALUES ('The Dog Star', 3, 1197000, 2, NULL);
INSERT INTO public.star VALUES ('UY Scuit', 3, 118000000, 3, NULL);
INSERT INTO public.star VALUES ('Alpha Andromedae', 1, NULL, 4, NULL);
INSERT INTO public.star VALUES ('Beta Andromedae', 1, NULL, 5, NULL);
INSERT INTO public.star VALUES ('Upsilon Andromedae', 1, NULL, 6, NULL);


--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_hole_black_hole_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 59, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: black_hole black_hole_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_name_key UNIQUE (name);


--
-- Name: black_hole black_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


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
-- Name: star name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT name_unique UNIQUE (name);


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
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


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

