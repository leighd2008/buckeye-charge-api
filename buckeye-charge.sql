--
-- PostgreSQL database dump
--

-- Dumped from database version 10.7 (Ubuntu 10.7-1.pgdg18.04+1)
-- Dumped by pg_dump version 10.7 (Ubuntu 10.7-1.pgdg18.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: rosters; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rosters (
    id integer NOT NULL,
    name character varying(100),
    jerseynum integer,
    firstname character varying(100),
    lastname character varying(100),
    positions character varying(100)
);


ALTER TABLE public.rosters OWNER TO postgres;

--
-- Name: rosters_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rosters_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rosters_id_seq OWNER TO postgres;

--
-- Name: rosters_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rosters_id_seq OWNED BY public.rosters.id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.teams (
    id integer NOT NULL,
    name character varying(100),
    teamname character varying(100),
    headcoach character varying(100),
    assistantcoaches character varying(1000),
    teamemail text,
    fieldname character varying(100),
    fieldaddress1 character varying(100),
    fieldaddress2 character varying(100),
    googlemaplink character varying(100),
    teampic character varying(100),
    fieldimage character varying(500),
    eventsurls boolean,
    photogallery boolean,
    scoreboard boolean,
    location character varying(100),
    scoreboardlink character varying(200)
);


ALTER TABLE public.teams OWNER TO postgres;

--
-- Name: teams_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.teams_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_id_seq OWNER TO postgres;

--
-- Name: teams_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.teams_id_seq OWNED BY public.teams.id;


--
-- Name: tournaments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tournaments (
    id integer NOT NULL,
    name character varying(100),
    dates character varying(100),
    weekend character varying(100),
    tourname character varying(500),
    location character varying(100),
    "teamId" integer
);


ALTER TABLE public.tournaments OWNER TO postgres;

--
-- Name: tournaments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tournaments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tournaments_id_seq OWNER TO postgres;

--
-- Name: tournaments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tournaments_id_seq OWNED BY public.tournaments.id;


--
-- Name: rosters id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rosters ALTER COLUMN id SET DEFAULT nextval('public.rosters_id_seq'::regclass);


--
-- Name: teams id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teams ALTER COLUMN id SET DEFAULT nextval('public.teams_id_seq'::regclass);


--
-- Name: tournaments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tournaments ALTER COLUMN id SET DEFAULT nextval('public.tournaments_id_seq'::regclass);


--
-- Data for Name: rosters; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rosters (id, name, jerseynum, firstname, lastname, positions) FROM stdin;
1	Homan8U	2	Ryann	Huddleston	2B
81	Cholley16U	22	Jordan	Cholley	P, SS, 2B, OF
2	Homan8U	7	Emelia	Gates	C, OF
3	Homan8U	10	Devin	Stohovitch	SS
4	Homan8U	14	Aubrey	Homan	1B
5	Homan8U	4	Autumn	Betts	P
6	Homan8U	25	Juliana	Baker	3B, OF
7	Homan8U	16	Hope	Mesher	OF
8	Homan8U	3	Jocelyn	Gordon	OF
9	Homan8U	5	Haddy	Knapp	3B, OF
10	Homan8U	27	Ashlynn	Logsdon	C, OF
11	Homan8U	23	Ava	Conley	C, OF
12	Albertson10U	0	Chelsea	Miller	CF, 1B
13	Albertson10U	1	Sophia	Paonessa	P, 3B
14	Albertson10U	2	Taryn	Roberts	P, OF
15	Albertson10U	4	Reese	Genet	P, OF
16	Albertson10U	8	Renee	Brown	OF, P
17	Albertson10U	10	Joanna	Albertson	OF, 3B, 2B
18	Albertson10U	11	Zoey	Mcullough	1B
19	Albertson10U	16	Shawna	Baylor	2B, C
20	Albertson10U	20	Sophia	Worthington	SS
21	Albertson10U	41	Alonna	Monroe	C
22	Gressman11U	77	Kailyn	Gressman	\N
23	Gressman11U	0	Jenna	Spear	\N
24	Gressman11U	33	Julia	Gartner	\N
25	Gressman11U	22	Sierra	Cress	\N
26	Gressman11U	12	Mackenzie	Orosz	\N
27	Gressman11U	9	Bailey	Deutsch	\N
28	Gressman11U	15	Avery	Contini	\N
29	Gressman11U	3	Madison	Bure	\N
30	Gressman11U	10	Brooke	Manav	\N
31	Gressman11U	30	Hannah	Goodson	\N
32	Gressman11U	18	Delaney	Nietert	\N
45	Norman12U	1	\N	\N	\N
46	Gardner13U	1	Katie	Gardner	P, 1B, 3B, OF
47	Gardner13U	2	Alaina	Holms	P, 2B, 3B, OF
48	Gardner13U	3	Isabella	Gales	2B, OF
49	Gardner13U	7	Jocelyn	Caffelle	1B, OF
50	Gardner13U	8	Robyn	Ryan	P, 2B, SS
51	Gardner13U	10	Makayla	Smith	C, 3B, SS
52	Gardner13U	11	Ashlee	Cunningham	1B, OF
53	Gardner13U	15	Grace	Elliott	1B, OF
54	Gardner13U	19	McKenna	Whitehead	SS, 3B, C
55	Gardner13U	20	Brianna	McQuain	1B, OF\n
56	Gardner13U	21	Mackenzie	Wood	P, OF, SS, 3B
57	Gardner13U	22	Brenna	Haydu	C, 3B, SS, OF
58	Yoder14U	4	Alexis	Jackson	P, 1B, SS, OF
59	Yoder14U	11	Mara	Lakins	1B, C, 3B, OF, P
60	Yoder14U	3	Sydney	Pike	C, 3B
61	Yoder14U	16	Makayla	Ball	C, 1B, 3B
62	Yoder14U	14	Brianna	Yoder	2B, OF
63	Yoder14U	13	Taylor	Falcone	SS, 3B
64	Yoder14U	10	Delaney	Kush	SS, 2B, OF
65	Yoder14U	2	Ava	Dimit	SS, 2B, OF
66	Yoder14U	12	Ireland	Strubbe	P, 1B
67	Yoder14U	24	Hannah	Kemper	OF, 1B
68	Yoder14U	20	Addie	Wharton	P, OF
69	Cavanagh15U	1	Katelyn	Porter	C, UTL
70	Cavanagh15U	3	Hannah	McCray	1B
71	Cavanagh15U	5	Breyonnah	Chapman	P, 1B
72	Cavanagh15U	7	Emile	Savage	OF
73	Cavanagh15U	9	Melinda	Hench	OF, P
74	Cavanagh15U	12	Alyssa	Pallini	OF, MI
75	Cavanagh15U	15	Summer	Glota	P, 1B, 3B
76	Cavanagh15U	18	Jaisha	Hughes	SS, 2B
77	Cavanagh15U	25	Kaylee	Lough	C, UTL
78	Cavanagh15U	27	Jenna	Collins	3B, UTL
79	Cavanagh15U	88	Erin	Malaska	P, OF
80	Kaisk16U	1	\N	\N	\N
83	Cholley16U	42	Mikayla	Haydu	SS, 2B, OF
82	Cholley16U	1	Olivia	Mason	2B, OF
84	Cholley16U	19	Kayedon	Martin	C, 3B
85	Cholley16U	10	Shea	Cress	1B, OF
86	Cholley16U	12	Haley	Leininger	OF
87	Cholley16U	8	Amber	Burick	P, 2B, OF
88	Cholley16U	20	Emma	Rose	3B, 1B
89	Cholley16U	6	Sydney	Mantesll	C
90	Cholley16U	24	McKenzi	Corple	P, OF, 1B
91	Cholley16U	2	Amanda	Morten	P, OF, IF
92	Cholley16U	44	Kylie	Kratz	C, IF, OF
93	Cholley16U	15	Samantha	Secrest	P, IF, OF
33	Meikle12U	5	Vada	Allen	UTL, C, P
34	Meikle12U	1	Angel	Drnek	PR, OF, 2B, P
35	Meikle12U	31	Hailey	Householder	LF, UTL
36	Meikle12U	42	Hallie	Capan	C, UTL
37	Meikle12U	7	Emallee	Warren	2B, UTL, P
38	Meikle12U	21	Sarah	Almashy	3B, 1B, P
39	Meikle12U	8	Ava	Bacon	1B, 3B, P
40	Meikle12U	3	Brooklyn	Ciminero	3B, OF
41	Meikle12U	16	Chloe	Fleps	2B, UTL, P
42	Meikle12U	\N	Lexi	\N	Bat Girl
43	Meikle12U	\N	Morgan	Thompson	substitute
44	Meikle12U	\N	Marrissa	\N	substitute
\.


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.teams (id, name, teamname, headcoach, assistantcoaches, teamemail, fieldname, fieldaddress1, fieldaddress2, googlemaplink, teampic, fieldimage, eventsurls, photogallery, scoreboard, location, scoreboardlink) FROM stdin;
4	Yoder14U	Yoder 14U	Ron Yoder	Fred McCrae, Madison Lakins, Jody Lakins	ryoder5402@yahoo.com	Jedd Park	2275 Pickle Rd	Akron, Ohio 44312	https://goo.gl/maps/a9NZ6ZDooJm	Yoder14U.JPG	../images/mark-duffel-352915-unsplash2.jpg	f	f	f	Akron, Ohio	\N
5	Gardner13U	Gardner 13U	Pete Gardner	Melissa Ryan, Amanda Whitehead	sgardner810@yahoo.com	Jedd Park	2275 Pickle Rd	Akron, Ohio 44312	https://goo.gl/maps/a9NZ6ZDooJm	dugout.JPG	../images/mark-duffel-352915-unsplash2.jpg	f	f	f	Akron, Ohio	\N
6	Norman12U	Norman 12U	Jay Norman	\N	buckeyechargefastpitch @gmail.com	Jedd Park	2275 Pickle Rd	Akron, Ohio 44312	https://goo.gl/maps/a9NZ6ZDooJm	dugout.JPG	../images/mark-duffel-352915-unsplash2.jpg	f	f	f	Akron, Ohio	\N
8	Gressman11U	Gressman 11U	Nick Gressman	Gary Cress, Justin Spear, Dave Contini, Marie Contini	Buckeyecharge07 @gmail.com	Jedd Park	2275 Pickle Rd	Akron, Ohio 44312	https://goo.gl/maps/a9NZ6ZDooJm	dugout.JPG	../images/mark-duffel-352915-unsplash2.jpg	f	f	f	Akron, Ohio	\N
9	Albertson10U	Albertson 10U	Jodi Albertson	Tony Paonessa, Ryan Miller	tyjonna1230@yahoo.com	Jedd Park	2275 Pickle Rd	Akron, Ohio 44312	https://goo.gl/maps/a9NZ6ZDooJm	Albertson10U-1.JPG	../images/mark-duffel-352915-unsplash2.jpg	f	f	f	Akron, Ohio	\N
10	Homan8U	Homan 8U	Mike Homan	Steve Huddleston, Mike Mesher, Ryan Knapp	widersturbo@aol.com	Jedd Park	2275 Pickle Rd	Akron, Ohio 44312	https://goo.gl/maps/a9NZ6ZDooJm	Homan8U.JPG	../images/mark-duffel-352915-unsplash2.jpg	f	f	f	Akron, Ohio	\N
7	Meikle12U	Meikle 12U	Rich Meikle	Denise Brunke-Allen, Jim Householder	WarrenBuckeyeCharge @gmail.com	Johnson Community Center	800 Gillmer Rd	Leavittsburg, Ohio 44430	https://goo.gl/maps/TSZ2T6Ti4oo	Warren12U.jpg	../images/mark-duffel-352915-unsplash2.jpg	t	t	t	Warren, Ohio	//gc.com/team-5c85359b955e067a733c24e7/scoreboard?g=5&p=5bafd0a9b7ce48001b2f2705
3	Cavanagh15U	Cavanagh 15U	Kevin Cavanagh	Kerry Cavanagh, Wes Hench	cavanagh1369@gmail.com	Jedd Park	2275 Pickle Rd	Akron, Ohio 44312	https://goo.gl/maps/a9NZ6ZDooJm	dugout.JPG	../images/mark-duffel-352915-unsplash2.jpg	f	f	t	Akron, Ohio	https://gc.com/team-5b724364630b213c93724530/scoreboard?g=5&p=57d5c700506dd2001b0bd79f
1	Cholley16U	Cholley 16U	Mark Cholley	Paul Mason, Angie Cress, Kelli Martin	buckeyechargefastpitch @gmail.com	Jedd Park	2275 Pickle Rd	Akron, Ohio 44312	https://goo.gl/maps/a9NZ6ZDooJm	dugout.JPG	../images/mark-duffel-352915-unsplash2.jpg	f	f	f	Akron, Ohio	\N
2	Kaisk16U	Kaisk 16U	Steve Kaisk	\N	buckeyechargefastpitch @gmail.com	Jedd Park	2275 Pickle Rd	Akron, Ohio 44312	https://goo.gl/maps/a9NZ6ZDooJm	dugout.JPG	../images/mark-duffel-352915-unsplash2.jpg	f	f	f	Akron, Ohio	\N
\.


--
-- Data for Name: tournaments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tournaments (id, name, dates, weekend, tourname, location, "teamId") FROM stdin;
1	Cholley16U	\N	April 26-28	-----	\N	1
2	Cholley16U	\N	May 3-5	-----	\N	1
3	Cholley16U	\N	May 10-12	-----	\N	1
4	Cholley16U	\N	May 17-19	-----	\N	1
5	Cholley16U	\N	May 24-26	-----	\N	1
6	Cholley16U	\N	May 31- June 2	Perfect Storm	\N	1
7	Cholley16U	\N	June 7-9	Toledo Tune-Up	\N	1
8	Cholley16U	\N	June 14-16	Sheer Madness	\N	1
10	Cholley16U	\N	June 28-30	Fireworks Frenzy	\N	1
11	Cholley16U	\N	July 5-7	GAPSS	\N	1
12	Cholley16U	\N	July 12-14	Loudonville	\N	1
13	Cholley16U	\N	July 19-20	Hope's Turn At Bat	\N	1
14	Cholley16U	\N	July 26-27	Christmas in July	\N	1
15	Kaisk16U	\N	April 26-28	-----	\N	2
18	Kaisk16U	\N	May 17-19	-----	\N	2
19	Kaisk16U	\N	May 24-26	-----	\N	2
16	Kaisk16U	\N	May 3-5	-----	\N	2
17	Kaisk16U	\N	May 10-12	-----	\N	2
20	Kaisk16U	\N	May 31- June 2	-----	\N	2
21	Kaisk16U	\N	June 7-9	-----	\N	2
50	Yoder14U	\N	June 14-16	Wizard Farley Memorial	Maumee, OH	4
51	Yoder14U	\N	June 21-23	Hall of Fame Classic (Eastern National Qualifier)	Akron, OH	4
52	Yoder14U	\N	June 28-30	Black Widows Summer Classic	Willoughby, OH	4
53	Yoder14U	\N	July 5-7	------	\N	4
69	Gardner13U	\N	July 19-20	Showdown in Steel Town	\N	5
55	Yoder14U	\N	July 19-20	Hope's Turn At Bat	Mayfield Heights, OH	4
56	Yoder14U	\N	July 26-27	Northwest Girls Fastpitch	Canal Fulton, OH	4
58	Gardner13U	\N	May 3-5	------	\N	5
70	Gardner13U	\N	July 26-27	------	\N	5
22	Kaisk16U	\N	June 14-16	-----	\N	2
23	Kaisk16U	\N	June 21-23	-----	\N	2
24	Kaisk16U	\N	June 28-30	-----	\N	2
25	Kaisk16U	\N	July 5-7	-----	\N	2
26	Kaisk16U	\N	July 12-14	-----	\N	2
27	Kaisk16U	\N	July 19-20	-----	\N	2
28	Kaisk16U	\N	July 26-27	-----	\N	2
29	Cavanagh15U	\N	April 26-28	-----	\N	3
30	Cavanagh15U	\N	May 3-5	-----	\N	3
32	Cavanagh15U	\N	May 17-19	-----	\N	3
33	Cavanagh15U	\N	May 24-26	-----	\N	3
34	Cavanagh15U	\N	May 31- June 2	Perfect Storm	Youngstown, OH	3
36	Cavanagh15U	\N	June 14-16	Maple Leaf West - FASA State Championship	North Ridgeville, Oh	3
37	Cavanagh15U	\N	June 21-23	USA Softball "B" State Championships	Findlay, OH	3
38	Cavanagh15U	\N	June 28-30	Akron/Kent Fastpitch Showdown	Akron, OH	3
39	Cavanagh15U	\N	July 5-7	Cinderella Classic	North Ridgeville, OH	3
40	Cavanagh15U	\N	July 12-14	All Sanctioned World Series	Columbus, OH	3
41	Cavanagh15U	\N	July 19-20	Hope's Turn at Bat	Mayfield, OH	3
42	Cavanagh15U	\N	July 26-27	-----	\N	3
43	Yoder14U	\N	April 26-28	------	\N	4
44	Yoder14U	\N	May 3-5	------	\N	4
45	Yoder14U	\N	May 10-12	-----	\N	4
46	Yoder14U	\N	May 17-19	------	\N	4
47	Yoder14U	\N	May 24-26	------	\N	4
48	Yoder14U	\N	May 31- June 2	Capitol City Showdown	Columbus, OH	4
49	Yoder14U	\N	June 7-9	Willoughby Starzz Tournament	Willoughby, OH	4
54	Yoder14U	\N	July 12-14	2019 Lady Spartans Fastpitch Club Tournament	Boardman, OH	4
59	Gardner13U	\N	May 10-12	Mogadore Wildcat Classic	\N	5
60	Gardner13U	\N	May 17-19	May Mayhem	\N	5
61	Gardner13U	\N	May 24-26	------	\N	5
62	Gardner13U	\N	May 31- June 2	T-Town 2019	\N	5
63	Gardner13U	\N	June 7-9	Starzz Invitational	\N	5
57	Gardner13U	\N	April 26-28	------	\N	5
64	Gardner13U	\N	June 14-16	Dad's Daughters and Dingers	\N	5
65	Gardner13U	\N	June 21-23	------	\N	5
66	Gardner13U	\N	June 28-30	------	\N	5
67	Gardner13U	\N	July 5-7	Cinderella Classic	\N	5
68	Gardner13U	\N	July 12-14	2019 Knockout	\N	5
71	Norman12U	\N	April 26-28	------	\N	6
72	Norman12U	\N	May 3-5	------	\N	6
73	Norman12U	\N	May 10-12	------	\N	6
74	Norman12U	\N	May 17-19	------	\N	6
75	Norman12U	\N	May 24-26	------	\N	6
76	Norman12U	\N	May 31- June 2	------	\N	6
96	Meikle12U	\N	July 12-14	Mentor Big Red	Eleanor B. Garfield Park Mentor, Oh	7
78	Norman12U	\N	June 14-16	------	\N	6
79	Norman12U	\N	June 21-23	------	\N	6
80	Norman12U	\N	June 28-30	------	\N	6
81	Norman12U	\N	July 5-7	------	\N	6
82	Norman12U	\N	July 12-14	------	\N	6
83	Norman12U	\N	July 19-20	------	\N	6
86	Meikle12U	\N	May 3-5	------	\N	7
85	Meikle12U	\N	April 26-28	Jordyn Myers Memorial	Warren, OH	7
87	Meikle12U	\N	May 10-12	------	\N	7
88	Meikle12U	\N	May 17-19	Lightning Invitational	Akron, OH	7
89	Meikle12U	\N	May 24-26	------	\N	7
90	Meikle12U	\N	May 31- June 2	------	\N	7
91	Meikle12U	\N	June 7-9	------	\N	7
93	Meikle12U	\N	June 21-23	Pinata Smash	Riverside Park Beaver Falls, PA	7
94	Meikle12U	\N	June 28-30	Fireworks Frenzy	North Ridgeville, OH	7
95	Meikle12U	\N	July 5-7	------	\N	7
97	Meikle12U	\N	July 19-20	------	\N	7
98	Meikle12U	\N	July 26-27	------	\N	7
100	Gressman11U	\N	May 3-5	------	\N	8
102	Gressman11U	\N	May 17-19	------	\N	8
103	Gressman11U	\N	May 24-26	------	\N	8
104	Gressman11U	\N	May 31- June 2	T-Town Showdown	Tallmadge, Oh	8
105	Gressman11U	\N	June 7-9	------	\N	8
77	Norman12U	\N	June 7-9	------	\N	6
124	Albertson10U	\N	July 12-14	-----	\N	9
129	Homan8U	\N	May 10-12	Early Bird Wake Up Call	Mogadore, OH	10
9	Cholley16U	\N	June 21-23	Hall of Fame Classic (Eastern National Qualifier)	\N	1
31	Cavanagh15U	\N	May 10-12	-----	\N	3
35	Cavanagh15U	\N	June 7-9	Descent into Sheer Madness Showcase and USA National Qualifie	North Ridgeville, OH	3
84	Norman12U	\N	July 26-27	------	\N	6
92	Meikle12U	\N	June 14-16	Ohio Magic	Field of Dreams Boardman, OH	7
99	Gressman11U	\N	April 26-28	Jordyn Myers Memorial	Warren, Oh	8
101	Gressman11U	\N	May 10-12	Force Frenzy	Rootstown, Oh	8
106	Gressman11U	\N	June 14-16	Wizards Farley Memorial	Maumee, Oh	8
107	Gressman11U	\N	June 21-23	------	\N	8
108	Gressman11U	\N	June 28-30	------	\N	8
109	Gressman11U	\N	July 5-7	------	\N	8
110	Gressman11U	\N	July 12-14	Stadium Series	Akron, Oh	8
111	Gressman11U	\N	July 19-20	------	\N	8
112	Gressman11U	\N	July 26-27	Christmas in July	North Ridgeville, Oh	8
113	Albertson10U	\N	April 26-28	-----	\N	9
114	Albertson10U	\N	May 3-5	------	\N	9
115	Albertson10U	\N	May 10-12	-----	\N	9
116	Albertson10U	\N	May 17-19	------	\N	9
117	Albertson10U	\N	May 24-26	Firefighters Memorial @Berliner	Columbus, OH	9
118	Albertson10U	\N	May 31- June 2	T-Town Showdown	Tallmadge, Oh	9
119	Albertson10U	\N	June 7-9	------	\N	9
120	Albertson10U	\N	June 14-16	Sheer Madness ASA Qualifier	North Ridgeville, OH	9
121	Albertson10U	\N	June 21-23	------	\N	9
122	Albertson10U	\N	June 28-30	All-Sanctioined World Series @Berliner	Columbus, OH	9
123	Albertson10U	\N	July 5-7	------	\N	9
125	Albertson10U	\N	July 19-20	------	\N	9
127	Homan8U	\N	April 26-28	-----	\N	10
128	Homan8U	\N	May 3-5	------	\N	10
130	Homan8U	\N	May 17-19	Don Godbey Slugfest	WV	10
131	Homan8U	\N	May 24-26	Black Widows	Ashland, OH	10
132	Homan8U	\N	May 31- June 2	T-Town Showdown	Tallmadge, Oh	10
133	Homan8U	\N	June 7-9	Shady Drive Classic	North Ridgeville, OH	10
134	Homan8U	\N	June 14-16	Pride Challenge	Frederickstown, OH	10
135	Homan8U	\N	June 21-23	------	\N	10
136	Homan8U	\N	June 28-30	Ashland Summer Classic	Ashland, OH	10
137	Homan8U	\N	July 5-7	8U State Tournament	Frederickstown, OH	10
138	Homan8U	\N	July 12-14	-----	\N	10
139	Homan8U	\N	July 19-20	JB Chambers All American	WV	10
140	Homan8U	\N	July 26-27	Columbus World Series	Columbus, OH	10
126	Albertson10U	\N	July 26-27	-----	\N	9
\.


--
-- Name: rosters_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rosters_id_seq', 1, false);


--
-- Name: teams_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.teams_id_seq', 1, false);


--
-- Name: tournaments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tournaments_id_seq', 43, true);


--
-- Name: rosters rosters_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rosters
    ADD CONSTRAINT rosters_pkey PRIMARY KEY (id);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (id);


--
-- Name: tournaments tournaments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tournaments
    ADD CONSTRAINT tournaments_pkey PRIMARY KEY (id);


--
-- Name: teams unique_name; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: teams unique_team_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT unique_team_id UNIQUE (name);


--
-- Name: teams_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX teams_name ON public.teams USING btree (name);


--
-- Name: rosters constraint_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rosters
    ADD CONSTRAINT constraint_fk FOREIGN KEY (name) REFERENCES public.teams(name);


--
-- Name: tournaments constraint_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tournaments
    ADD CONSTRAINT constraint_fk FOREIGN KEY (name) REFERENCES public.teams(name);


--
-- PostgreSQL database dump complete
--

