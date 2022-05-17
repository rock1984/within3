--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2 (Debian 14.2-1.pgdg110+1)
-- Dumped by pg_dump version 14.2 (Debian 14.2-1.pgdg110+1)

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
-- Name: cities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cities (
    id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.cities OWNER TO postgres;

--
-- Name: counties; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.counties (
    id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.counties OWNER TO postgres;

--
-- Name: migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    "timestamp" bigint NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.migrations OWNER TO postgres;

--
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.migrations_id_seq OWNER TO postgres;

--
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- Name: typeorm_metadata; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.typeorm_metadata (
    type character varying NOT NULL,
    database character varying,
    schema character varying,
    "table" character varying,
    name character varying,
    value text
);


ALTER TABLE public.typeorm_metadata OWNER TO postgres;

--
-- Name: zip_codes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.zip_codes (
    id integer NOT NULL,
    zip_code integer NOT NULL,
    county_id integer NOT NULL,
    city_id integer NOT NULL
);


ALTER TABLE public.zip_codes OWNER TO postgres;

--
-- Name: migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- Data for Name: cities; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cities (id, name) FROM stdin;
1	Waldorf
2	Abell
3	Accokeek
4	Aquasco
5	Avenue
6	Barstow
7	Bel Alton
8	Benedict
9	Brandywine
10	Broomes Island
11	Bryans Road
12	Bryantown
13	Bushwood
14	California
15	Callaway
16	Chaptico
17	Charlotte Hall
18	Cheltenham
19	Clements
20	Cobb Island
21	Coltons Point
22	Compton
23	Dameron
24	Dowell
25	Drayden
26	Faulkner
27	Great Mills
28	Helen
29	Hollywood
30	Hughesville
31	Huntingtown
32	Indian Head
33	Ironsides
34	Issue
35	La Plata
36	Leonardtown
37	Lexington Park
38	Loveville
39	Lusby
40	Marbury
41	Mechanicsville
42	Morganza
43	Mount Victoria
44	Nanjemoy
45	Newburg
46	Park Hall
47	Patuxent River
48	Piney Point
49	Pomfret
50	Port Republic
51	Port Tobacco
52	Prince Frederick
53	Ridge
54	Rock Point
55	Saint Inigoes
56	Saint Leonard
57	Saint Marys City
58	Scotland
59	Solomons
60	Sunderland
61	Tall Timbers
62	Valley Lee
63	Welcome
64	White Plains
65	Southern Md Facility
66	Annapolis Junction
67	Lanham
68	Beltsville
69	Laurel
70	Bladensburg
71	Lothian
72	Mount Rainier
73	North Beach
74	Bowie
75	Brentwood
76	Capitol Heights
77	Chesapeake Beach
78	Churchton
79	Clinton
80	Owings
81	Riverdale
82	College Park
83	Fort Washington
84	Oxon Hill
85	Suitland
86	District Heights
87	Temple Hills
88	Deale
89	Dunkirk
90	Fort George G Meade
91	Friendship
92	Fulton
93	Andrews Air Force Base
94	Savage
95	Shady Side
96	Galesville
97	Greenbelt
98	Glenn Dale
99	Upper Marlboro
100	Harwood
101	Highland
102	West River
103	Tracys Landing
104	Hyattsville
105	Jessup
106	Bethesda
107	Glen Echo
108	Chevy Chase
109	Cabin John
110	Olney
111	Brookeville
112	Poolesville
113	Barnesville
114	Beallsville
115	Boyds
116	Dickerson
117	Rockville
118	Potomac
119	Derwood
120	Sandy Spring
121	Ashton
122	Brinklow
123	Burtonsville
124	Spencerville
125	Clarksburg
126	Damascus
127	Germantown
128	Gaithersburg
129	Washington Grove
130	Montgomery Village
131	Kensington
132	Garrett Park
133	Suburb Maryland Fac
134	Silver Spring
135	Takoma Park
136	Aberdeen
137	Aberdeen Proving Ground
138	Abingdon
139	Gunpowder
140	Arnold
141	Baldwin
142	Bel Air
143	Belcamp
144	Benson
145	Boring
146	Brooklandville
147	Butler
148	Chase
149	Churchville
150	Clarksville
151	Cockeysville
152	Hunt Valley
153	Crownsville
154	Darlington
155	Davidsonville
156	Dayton
157	Edgewater
158	Edgewood
159	Ellicott City
160	Columbia
161	Fallston
162	Finksburg
163	Forest Hill
164	Fork
165	Fort Howard
166	Freeland
167	Gambrills
168	Gibson Island
169	Glen Arm
170	Glen Burnie
171	Glyndon
172	Hampstead
173	Elkridge
174	Hanover
175	Harmans
176	Havre De Grace
177	Hydes
178	Jarrettsville
179	Joppa
180	Kingsville
181	Lineboro
182	Linthicum Heights
183	Long Green
184	Lutherville Timonium
185	Manchester
186	Marriottsville
187	Maryland Line
188	Mayo
189	Millersville
190	Monkton
191	Odenton
192	Crofton
193	Owings Mills
194	Parkton
195	Pasadena
196	Perry Hall
197	Perryman
198	Phoenix
199	Pylesville
200	Randallstown
201	Reisterstown
202	Riderwood
203	Riva
204	Severn
205	Severna Park
206	Simpsonville
207	Sparks Glencoe
208	Stevenson
209	Street
210	Upperco
211	Upper Falls
212	Westminster
213	Whiteford
214	White Hall
215	White Marsh
216	Woodstock
217	Baltimore
218	Towson
219	Gwynn Oak
220	Pikesville
221	Sparrows Point
222	Middle River
223	Essex
224	Dundalk
225	Brooklyn
226	Curtis Bay
227	Halethorpe
228	Catonsville
229	Parkville
230	Nottingham
231	Rosedale
232	Windsor Mill
233	Annapolis
234	Cumberland
235	Accident
236	Barton
237	Bittinger
238	Bloomington
239	Corriganville
240	Eckhart Mines
241	Ellerslie
242	Flintstone
243	Friendsville
244	Frostburg
245	Grantsville
246	Kitzmiller
247	Lonaconing
248	Luke
249	Mc Henry
250	Midland
251	Midlothian
252	Mount Savage
253	Oakland
254	Oldtown
255	Pinto
256	Rawlings
257	Spring Gap
258	Swanton
259	Westernport
260	Easton
261	Barclay
262	Bethlehem
263	Betterton
264	Bozman
265	Cambridge
266	Centreville
267	Chester
268	Chestertown
269	Church Creek
270	Church Hill
271	Claiborne
272	Cordova
273	Crapo
274	Crocheron
275	Crumpton
276	Denton
277	East New Market
278	Federalsburg
279	Fishing Creek
280	Galena
281	Goldsboro
282	Grasonville
283	Greensboro
284	Henderson
285	Hillsboro
286	Hurlock
287	Ingleside
288	Kennedyville
289	Mcdaniel
290	Madison
291	Marydel
292	Massey
293	Millington
294	Neavitt
295	Newcomb
296	Oxford
297	Preston
298	Price
299	Queen Anne
300	Queenstown
301	Rhodesdale
302	Ridgely
303	Rock Hall
304	Royal Oak
305	Saint Michaels
306	Secretary
307	Sherwood
308	Stevensville
309	Still Pond
310	Sudlersville
311	Taylors Island
312	Templeville
313	Tilghman
314	Toddville
315	Trappe
316	Wingate
317	Wittman
318	Woolford
319	Worton
320	Wye Mills
321	Frederick
322	Adamstown
323	Big Pool
324	Boonsboro
325	Braddock Heights
326	Brownsville
327	Brunswick
328	Buckeystown
329	Burkittsville
330	Cascade
331	Cavetown
332	Chewsville
333	Clear Spring
334	Cooksville
335	Emmitsburg
336	Fairplay
337	Funkstown
338	Glenelg
339	Glenwood
340	Hagerstown
341	Hancock
342	Ijamsville
343	Jefferson
344	Keedysville
345	Keymar
346	Knoxville
347	Ladiesburg
348	Libertytown
349	Lisbon
350	Little Orleans
351	Maugansville
352	Middletown
353	Monrovia
354	Mount Airy
355	Myersville
356	New Market
357	New Midway
358	New Windsor
359	Point Of Rocks
360	Rocky Ridge
361	Rohrersville
362	Sabillasville
363	Saint James
364	Sharpsburg
365	Smithsburg
366	Sykesville
367	Taneytown
368	Thurmont
369	Tuscarora
370	Union Bridge
371	Unionville
372	Walkersville
373	West Friendship
374	Williamsport
375	Woodbine
376	Woodsboro
377	Salisbury
378	Allen
379	Berlin
380	Bishopville
381	Bivalve
382	Crisfield
383	Deal Island
384	Eden
385	Ewell
386	Fruitland
387	Girdletree
388	Hebron
389	Linkwood
390	Manokin
391	Mardela Springs
392	Marion Station
393	Nanticoke
394	Newark
395	Ocean City
396	Parsonsburg
397	Pittsville
398	Pocomoke City
399	Powellville
400	Princess Anne
401	Quantico
402	Rehobeth
403	Sharptown
404	Showell
405	Snow Hill
406	Stockton
407	Tyaskin
408	Tylerton
409	Upper Fairmount
410	Vienna
411	Westover
412	Whaleyville
413	Willards
414	Delmar
415	North East
416	Perry Point
417	Perryville
418	Port Deposit
419	Rising Sun
420	Warwick
421	Cecilton
422	Charlestown
423	Chesapeake City
424	Childs
425	Colora
426	Conowingo
427	Earleville
428	Elk Mills
429	Elkton
430	Georgetown
\.


--
-- Data for Name: counties; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.counties (id, name) FROM stdin;
1	Charles County
2	Prince George's County
3	Howard County
4	Anne Arundel County
5	Montgomery County
6	Harford County
7	Baltimore County
8	Carroll County
9	Baltimore City
10	Allegany County
11	Talbot County
12	Caroline County
13	Queen Anne's County
14	Frederick County
15	Washington County
16	Wicomico County
17	Worcester County
18	Somerset County
19	Cecil County
20	Saint Mary's County
21	Calvert County
22	Garrett County
23	Kent County
24	Dorchester County
\.


--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.migrations (id, "timestamp", name) FROM stdin;
5	1652650755699	CreateCounties1652650755699
6	1652650990384	CreateCities1652650990384
7	1652667196631	CreateZipCodes1652667196631
12	1652757440154	CreateTestSeeds1652757440154
\.


--
-- Data for Name: typeorm_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.typeorm_metadata (type, database, schema, "table", name, value) FROM stdin;
\.


--
-- Data for Name: zip_codes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.zip_codes (id, zip_code, county_id, city_id) FROM stdin;
1	20603	1	1
2	20604	1	1
3	20706	2	67
4	20708	2	69
5	20709	2	69
6	20716	2	74
7	20717	2	74
8	20718	2	74
9	20719	2	74
10	20720	2	74
11	20721	2	74
12	20725	2	69
13	20726	2	69
14	20738	2	81
15	20741	2	82
16	20742	2	82
17	20743	2	76
18	20749	2	83
19	20750	2	84
20	20752	2	85
21	20753	2	86
22	20757	2	87
23	20770	2	97
24	20771	2	97
25	20773	2	99
26	20774	2	99
27	20775	2	99
28	20782	2	104
29	20783	2	104
30	20784	2	104
31	20785	2	104
32	20787	2	104
33	20788	2	104
34	20790	2	76
35	20791	2	76
36	20792	2	99
37	20797	2	65
38	20799	2	76
39	20813	5	106
40	20814	5	106
41	20816	5	106
42	20817	5	106
43	20824	5	106
44	20825	5	108
45	20827	5	106
46	20832	5	110
47	20848	5	117
48	20849	5	117
49	20850	5	117
50	20851	5	117
51	20852	5	117
52	20853	5	117
53	20857	5	117
54	20859	5	118
55	20875	5	127
56	20876	5	127
57	20878	5	128
58	20879	5	128
59	20882	5	128
60	20883	5	128
61	20884	5	128
62	20885	5	128
63	20889	5	106
64	20892	5	106
65	20894	5	106
66	20895	5	131
67	20898	5	128
68	20899	5	128
69	20902	5	134
70	20903	5	134
71	20904	5	134
72	20905	5	134
73	20906	5	134
74	20907	5	134
75	20908	5	134
76	20910	5	134
77	20911	5	134
78	20913	5	135
79	20914	5	134
80	20915	5	134
81	20916	5	134
82	20918	5	134
83	20993	5	134
84	20997	5	134
85	21042	3	159
86	21043	3	159
87	21045	3	160
88	21046	3	160
89	21061	4	170
90	21062	4	170
91	21094	7	184
92	21098	4	174
93	21123	4	195
94	21203	9	217
95	21205	9	217
96	21206	9	217
97	21209	9	217
98	21210	9	217
99	21211	9	217
100	21212	9	217
101	21213	9	217
102	21214	9	217
103	21215	9	217
104	21216	9	217
105	21217	9	217
106	21218	9	217
107	21223	9	217
108	21224	9	217
109	21229	9	217
110	21230	9	217
111	21231	9	217
112	21233	9	217
113	21235	9	217
114	21239	9	217
115	21240	4	217
116	21241	9	217
117	21250	7	217
118	21251	9	217
119	21252	7	217
120	21263	9	217
121	21264	9	217
122	21265	9	217
123	21268	9	217
124	21270	9	217
125	21273	9	217
126	21274	9	217
127	21275	9	217
128	21278	9	217
129	21279	9	217
130	21280	9	217
131	21281	9	217
132	21282	7	217
133	21283	9	217
134	21284	7	217
135	21285	7	217
136	21286	7	218
137	21287	9	217
138	21288	9	217
139	21289	9	217
140	21290	9	217
141	21297	9	217
142	21298	9	217
143	21402	4	233
144	21403	4	233
145	21404	4	233
146	21405	4	233
147	21409	4	233
148	21411	4	233
149	21412	4	233
150	21503	10	234
151	21504	10	234
152	21505	10	234
153	21682	12	302
154	21683	12	302
155	21684	12	302
156	21685	12	302
157	21686	12	302
158	21687	12	302
159	21688	12	302
160	21703	14	321
161	21704	14	321
162	21705	14	321
163	21709	14	321
164	21742	15	340
165	21746	15	340
166	21747	15	340
167	21748	15	340
168	21749	15	340
169	21803	16	377
170	21804	16	377
171	20601	1	1
172	20602	1	1
173	20607	2	3
174	20608	2	4
175	20609	20	5
176	20611	1	7
177	20612	1	8
178	20613	2	9
179	20615	21	10
180	20616	1	11
181	20617	1	12
182	20618	20	13
183	20619	20	14
184	20620	20	15
185	20621	20	16
186	20622	20	17
187	20623	2	18
188	20624	20	19
189	20625	1	20
190	20626	20	21
191	20627	20	22
192	20628	20	23
193	20629	21	24
194	20630	20	25
195	20632	1	26
196	20634	20	27
197	20635	20	28
198	20636	20	29
199	20637	1	30
200	20639	21	31
201	20640	1	32
202	20643	1	33
203	20645	1	34
204	20646	1	35
205	20650	20	36
206	20653	20	37
207	20656	20	38
208	20657	21	39
209	20658	1	40
210	20659	20	41
211	20660	20	42
212	20661	1	43
213	20662	1	44
214	20664	1	45
215	20667	20	46
216	20670	20	47
217	20674	20	48
218	20675	1	49
219	20676	21	50
220	20677	1	51
221	20678	21	52
222	20680	20	53
223	20682	1	54
224	20684	20	55
225	20685	21	56
226	20686	20	57
227	20687	20	58
228	20688	21	59
229	20689	21	60
230	20690	20	61
231	20692	20	62
232	20693	1	63
233	20695	1	64
234	20697	2	65
235	20701	3	66
236	20703	2	67
237	20704	2	68
238	20705	2	68
239	20707	2	69
240	20710	2	70
241	20711	4	71
242	20712	2	72
243	20714	21	73
244	20715	2	74
245	20722	2	75
246	20723	3	69
247	20724	4	69
248	20731	2	76
249	20732	21	77
250	20733	4	78
251	20735	2	79
252	20736	21	80
253	20737	2	81
254	20740	2	82
255	20744	2	83
256	20745	2	84
257	20746	2	85
258	20747	2	86
259	20748	2	87
260	20751	4	88
261	20754	21	89
262	20755	4	90
263	20758	4	91
264	20759	3	92
265	20762	2	93
266	20763	3	94
267	20764	4	95
268	20765	4	96
269	20768	2	97
270	20769	2	98
271	20772	2	99
272	20776	4	100
273	20777	3	101
274	20778	4	102
275	20779	4	103
276	20781	2	104
277	20794	3	105
278	20810	5	106
279	20811	5	106
280	20812	5	107
281	20815	5	108
282	20818	5	109
283	20830	5	110
284	20833	5	111
285	20837	5	112
286	20838	5	113
287	20839	5	114
288	20841	5	115
289	20842	5	116
290	20847	5	117
291	20854	5	118
292	20855	5	119
293	20860	5	120
294	20861	5	121
295	20862	5	122
296	20866	5	123
297	20868	5	124
298	20871	5	125
299	20872	5	126
300	20874	5	127
301	20877	5	128
302	20880	5	129
303	20886	5	130
304	20891	5	131
305	20896	5	132
306	20897	5	133
307	20901	5	134
308	20912	5	135
309	21001	6	136
310	21005	6	137
311	21009	6	138
312	21010	6	139
313	21012	4	140
314	21013	7	141
315	21014	6	142
316	21015	6	142
317	21017	6	143
318	21018	6	144
319	21020	7	145
320	21022	7	146
321	21023	7	147
322	21027	7	148
323	21028	6	149
324	21029	3	150
325	21030	7	151
326	21031	7	152
327	21032	4	153
328	21034	6	154
329	21035	4	155
330	21036	3	156
331	21037	4	157
332	21040	6	158
333	21041	3	159
334	21044	3	160
335	21047	6	161
336	21048	8	162
337	21050	6	163
338	21051	7	164
339	21052	7	165
340	21053	7	166
341	21054	4	167
342	21056	4	168
343	21057	7	169
344	21060	4	170
345	21065	7	152
346	21071	7	171
347	21074	8	172
348	21075	3	173
349	21076	4	174
350	21077	4	175
351	21078	6	176
352	21082	7	177
353	21084	6	178
354	21085	6	179
355	21087	7	180
356	21088	8	181
357	21090	4	182
358	21092	7	183
359	21093	7	184
360	21102	8	185
361	21104	8	186
362	21105	7	187
363	21106	4	188
364	21108	4	189
365	21111	7	190
366	21113	4	191
367	21114	4	192
368	21117	7	193
369	21120	7	194
370	21122	4	195
371	21128	7	196
372	21130	6	197
373	21131	7	198
374	21132	6	199
375	21133	7	200
376	21136	7	201
377	21139	7	202
378	21140	4	203
379	21144	4	204
380	21146	4	205
381	21150	3	206
382	21152	7	207
383	21153	7	208
384	21154	6	209
385	21155	7	210
386	21156	7	211
387	21157	8	212
388	21158	8	212
389	21160	6	213
390	21161	6	214
391	21162	7	215
392	21163	3	216
393	21201	9	217
394	21202	9	217
395	21204	7	218
396	21207	7	219
397	21208	7	220
398	21219	7	221
399	21220	7	222
400	21221	7	223
401	21222	7	224
402	21225	9	225
403	21226	4	226
404	21227	7	227
405	21228	7	228
406	21234	7	229
407	21236	7	230
408	21237	7	231
409	21244	7	232
410	21401	4	233
411	21501	10	234
412	21502	10	234
413	21521	10	236
414	21522	22	237
415	21523	22	238
416	21524	10	239
417	21528	10	240
418	21529	10	241
419	21530	10	242
420	21531	22	243
421	21532	10	244
422	21536	22	245
423	21538	22	246
424	21539	10	247
425	21540	10	248
426	21541	22	249
427	21542	10	250
428	21543	10	251
429	21545	10	252
430	21550	22	253
431	21555	10	254
432	21556	10	255
433	21557	10	256
434	21560	10	257
435	21561	22	258
436	21562	10	259
437	21601	11	260
438	21606	11	260
439	21607	13	261
440	21609	12	262
441	21612	11	264
442	21617	13	266
443	21619	13	267
444	21620	23	268
445	21622	24	269
446	21623	13	270
447	21624	11	271
448	21625	11	272
449	21626	24	273
450	21627	24	274
451	21628	13	275
452	21629	12	276
453	21631	24	277
454	21632	12	278
455	21634	24	279
456	21635	23	280
457	21636	12	281
458	21638	13	282
459	21639	12	283
460	21640	12	284
461	21641	12	285
462	21643	24	286
463	21644	13	287
464	21645	23	288
465	21647	11	289
466	21648	24	290
467	21649	12	291
468	21650	23	292
469	21651	23	293
470	21652	11	294
471	21653	11	295
472	21654	11	296
473	21655	12	297
474	21656	13	298
475	21657	13	299
476	21658	13	300
477	21659	24	301
478	21660	12	302
479	21661	23	303
480	21662	11	304
481	21663	11	305
482	21664	24	306
483	21665	11	307
484	21666	13	308
485	21667	23	309
486	21668	13	310
487	21669	24	311
488	21670	12	312
489	21671	11	313
490	21672	24	314
491	21673	11	315
492	21675	24	316
493	21676	11	317
494	21677	24	318
495	21678	23	319
496	21679	11	320
497	21681	12	302
498	21690	13	268
499	21701	14	321
500	21702	14	321
501	21710	14	322
502	21711	15	323
503	21713	15	324
504	21714	14	325
505	21715	15	326
506	21716	14	327
507	21717	14	328
508	21718	14	329
509	21719	15	330
510	21720	15	331
511	21721	15	332
512	21722	15	333
513	21723	3	334
514	21727	14	335
515	21733	15	336
516	21734	15	337
517	21737	3	338
518	21738	3	339
519	21740	15	340
520	21741	15	340
521	21750	15	341
522	21754	14	342
523	21755	14	343
524	21756	15	344
525	21757	8	345
526	21758	14	346
527	21759	14	347
528	21762	14	348
529	21765	3	349
530	21766	10	350
531	21767	15	351
532	21769	14	352
533	21770	14	353
534	21771	14	354
535	21773	14	355
536	21774	14	356
537	21775	14	357
538	21776	8	358
539	21777	14	359
540	21778	14	360
541	21779	15	361
542	21780	14	362
543	21781	15	363
544	21782	15	364
545	21783	15	365
546	21784	8	366
547	21787	8	367
548	21788	14	368
549	21790	14	369
550	21791	8	370
551	21792	14	371
552	21793	14	372
553	21794	3	373
554	21795	15	374
555	21797	3	375
556	21798	14	376
557	21801	16	377
558	21802	16	377
559	21810	16	378
560	21811	17	379
561	21813	17	380
562	21814	16	381
563	21817	18	382
564	21821	18	383
565	21822	17	384
566	21824	18	385
567	21826	16	386
568	21829	17	387
569	21830	16	388
570	21835	24	389
571	21836	18	390
572	21837	16	391
573	21838	18	392
574	21840	16	393
575	21841	17	394
576	21842	17	395
577	21843	17	395
578	21849	16	396
579	21850	16	397
580	21851	17	398
581	21852	16	399
582	21853	18	400
583	21856	16	401
584	21857	18	402
585	21861	16	403
586	21862	17	404
587	21863	17	405
588	21864	17	406
589	21865	16	407
590	21866	18	408
591	21867	18	409
592	21869	24	410
593	21871	18	411
594	21872	17	412
595	21874	16	413
596	21875	16	414
597	21890	18	411
598	21901	19	415
599	21902	19	416
600	21903	19	417
601	21904	19	418
602	21911	19	419
603	21912	19	420
604	21913	19	421
605	21914	19	422
606	21915	19	423
607	21916	19	424
608	21917	19	425
609	21918	19	426
610	21919	19	427
611	21920	19	428
612	21921	19	429
613	21922	19	429
614	21930	19	430
615	20606	20	2
616	20610	21	6
617	21520	22	235
618	21610	23	263
619	21613	24	265
\.


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.migrations_id_seq', 12, true);


--
-- Name: cities PK_4762ffb6e5d198cfec5606bc11e; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cities
    ADD CONSTRAINT "PK_4762ffb6e5d198cfec5606bc11e" PRIMARY KEY (id);


--
-- Name: migrations PK_8c82d7f526340ab734260ea46be; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT "PK_8c82d7f526340ab734260ea46be" PRIMARY KEY (id);


--
-- Name: zip_codes PK_cbf74d68cd9045c650ed5f9f224; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.zip_codes
    ADD CONSTRAINT "PK_cbf74d68cd9045c650ed5f9f224" PRIMARY KEY (id);


--
-- Name: counties PK_e9d269991e45de4af9e7889d9ea; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.counties
    ADD CONSTRAINT "PK_e9d269991e45de4af9e7889d9ea" PRIMARY KEY (id);


--
-- Name: zip_codes ZipCodesCity; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.zip_codes
    ADD CONSTRAINT "ZipCodesCity" FOREIGN KEY (city_id) REFERENCES public.cities(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: zip_codes ZipCodesCounty; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.zip_codes
    ADD CONSTRAINT "ZipCodesCounty" FOREIGN KEY (county_id) REFERENCES public.counties(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--

