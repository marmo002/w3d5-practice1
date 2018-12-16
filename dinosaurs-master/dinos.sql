--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.3
-- Dumped by pg_dump version 9.5.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
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


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE ar_internal_metadata OWNER TO postgres;

--
-- Name: dinos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE dinos (
    id integer NOT NULL,
    name character varying,
    taxonomy character varying,
    species character varying,
    length double precision,
    period character varying,
    diet character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    t_order character varying
);


ALTER TABLE dinos OWNER TO postgres;

--
-- Name: dinos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE dinos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE dinos_id_seq OWNER TO postgres;

--
-- Name: dinos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE dinos_id_seq OWNED BY dinos.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE schema_migrations OWNER TO postgres;

--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY dinos ALTER COLUMN id SET DEFAULT nextval('dinos_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2017-03-24 18:34:29.484366	2017-03-24 18:34:29.484366
\.


--
-- Data for Name: dinos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY dinos (id, name, taxonomy, species, length, period, diet, created_at, updated_at, t_order) FROM stdin;
11	Wuerhosaurus	Dinosauria, Ornithischia, Genasauria, Thyreophora, Stegosauria, Stegosauridae, Stegosaurinae, Wuerhosaurus	Homheni	7	Cretaceous	Herbivorous	2017-03-24 18:56:22.396027	2017-03-24 18:57:00.078393	Ornithischia
13	Velociraptor	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Coelurosauria, Tyrannoraptora, Maniraptoriformes, Maniraptora, Paraves, Eumaniraptora, Dromaeosauridae, Velociraptor	Mongoliensis	1.80000000000000004	Cretaceous	Carnivorous	2017-03-24 18:56:22.398934	2017-03-24 18:57:00.080468	Saurischia
5	Yuanmousaurus	Dinosauria, Saurischia, Sauropodomorpha, Sauropoda, Eusauropoda, Yuanmousaurus	Jiangyiensis	17	Jurassic	Herbivorous	2017-03-24 18:56:22.386808	2017-03-24 18:56:59.926924	Saurischia
6	Yinlong	Dinosauria, Ornithischia, Genasauria, Cerapoda, Marginocephalia, Ceratopsia, Yinlong	Downsi	1.19999999999999996	Jurassic	Herbivorous	2017-03-24 18:56:22.38836	2017-03-24 18:56:59.928721	Ornithischia
7	Yingshanosaurus	Dinosauria, Ornithischia, Genasauria, Thyreophora, Stegosauria, Yingshanosaurus	Jichuanensis	\N	Jurassic	Herbivorous	2017-03-24 18:56:22.390165	2017-03-24 18:56:59.93033	Ornithischia
8	Yimenosaurus	Dinosauria, Saurischia, Sauropodomorpha, Prosauropoda, Yimenosaurus	Youngi	9	Jurassic	Herbivorous	2017-03-24 18:56:22.391572	2017-03-24 18:56:59.931889	Saurischia
9	Yangchuanosaurus	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Carnosauria, Allosauroidea, Sinraptoridae, Yangchuanosaurus	Shangyouensis	10	Jurassic	Carnivorous	2017-03-24 18:56:22.392998	2017-03-24 18:56:59.933555	Saurischia
10	Yandusaurus	Dinosauria, Ornithischia, Genasauria, Cerapoda, Ornithopoda, Euornithopoda, Yandusaurus	Hongheensis	3	Jurassic	Herbivorous	2017-03-24 18:56:22.394572	2017-03-24 18:56:59.935994	Ornithischia
12	Vulcanodon	Dinosauria, Saurischia, Sauropodomorpha, Sauropoda, Vulcanodontidae, Vulcanodon	Karibaensis	6.5	Jurassic	Herbivorous	2017-03-24 18:56:22.397551	2017-03-24 18:56:59.938335	Saurischia
14	Valdosaurus	Dinosauria, Ornithischia, Genasauria, Cerapoda, Ornithopoda, Euornithopoda, Iguanadontia, Euiguanadontia, Dryomorpha, Dryosauridae, Valdosaurus	Canaliculatus	3	Cretaceous	Herbivorous	2017-03-24 18:56:22.400349	2017-03-24 18:57:00.082347	Ornithischia
21	Tuojiangosaurus	Dinosauria, Ornithischia, Genasauria, Thyreophora, Stegosauria, Stegosauridae, Stegosaurinae, Tuojiangosaurus	Multispinus	7	Jurassic	Herbivorous	2017-03-24 18:56:22.411459	2017-03-24 18:56:59.940764	Ornithischia
15	Utahraptor	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Coelurosauria, Tyrannoraptora, Maniraptoriformes, Maniraptora, Paraves, Eumaniraptora, Dromaeosauridae, Utahraptor	Ostrommaysorum	6	Cretaceous	Carnivorous	2017-03-24 18:56:22.401799	2017-03-24 18:57:00.084085	Saurischia
16	Urbacodon	Dinosauria, Saurischia, Urbacodon	Itemirensis	1	Cretaceous	Carnivorous	2017-03-24 18:56:22.403282	2017-03-24 18:57:00.085827	Saurischia
17	Unenlagia	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Coelurosauria, Tyrannoraptora, Maniraptoriformes, Maniraptora, Paraves, Eumaniraptora, Dromaeosauridae, Unenlagia	Comahuensis	2.39999999999999991	Cretaceous	Carnivorous	2017-03-24 18:56:22.404831	2017-03-24 18:57:00.087687	Saurischia
19	Tyrannosaurus	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Coelurosauria, Tyrannoraptora, Tyrannosauroidea, Tyrannosauridae, Tyrannosaurinae, Tyrannosaurus	Rex	12	Cretaceous	Carnivorous	2017-03-24 18:56:22.407911	2017-03-24 18:57:00.090991	Saurischia
20	Tylocephale	Dinosauria, Ornithischia, Genasauria, Cerapoda, Marginocephalia, Pachycephalosauria, Goyocephala, Homalocephaloidea, Pachycephalosauridae, Tylocephale	Gilmorei	1.39999999999999991	Cretaceous	Herbivorous	2017-03-24 18:56:22.40997	2017-03-24 18:57:00.0925	Ornithischia
23	Tsagantegia	Dinosauria, Ornithischia, Genasauria, Thyreophora, Ankylosauromorpha, Ankylosauria, Ankylosauridae, Tsagantegia	Longicranialis	\N	Cretaceous	Herbivorous	2017-03-24 18:56:22.414337	2017-03-24 18:57:00.093949	Ornithischia
24	Troodon	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Coelurosauria, Tyrannoraptora, Maniraptoriformes, Maniraptora, Paraves, Eumaniraptoria, Troodontidae, Troodon	Formosus	2	Cretaceous	Carnivorous	2017-03-24 18:56:22.415794	2017-03-24 18:57:00.095408	Saurischia
25	Triceratops	Dinosauria, Ornithischia, Genasauria, Cerapoda, Marginocephalia, Ceratopsia, Neoceratopsia, Coronosauria, Ceratopsomorpha, Ceratopsidae, Chasmosaurinae, Triceratops	Horridus	9	Cretaceous	Herbivorous	2017-03-24 18:56:22.41727	2017-03-24 18:57:00.09683	Ornithischia
26	Torvosaurus	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Spinosauroidea, Megalosauridae, Megalosaurinae, Torvosaurus	Tanneri	10	Jurassic	Carnivorous	2017-03-24 18:56:22.418991	2017-03-24 18:56:59.942699	Saurischia
27	Torosaurus	Dinosauria, Ornithischia, Genasauria, Cerapoda, Marginocephalia, Ceratopsia, Neoceratopsia, Coronosauria, Ceratopsomorpha, Ceratopsidae, Chasmosaurinae, Torosaurus	Latus	7.5	Cretaceous	Herbivorous	2017-03-24 18:56:22.420647	2017-03-24 18:57:00.098322	Ornithischia
28	Thescelosaurus	Dinosauria, Ornithischia, Genasauria, Cerapoda, Ornithopoda, Euornithopoda, Thescelosaurus	Neglectus	3.5	Cretaceous	Herbivorous	2017-03-24 18:56:22.422083	2017-03-24 18:57:00.099766	Ornithischia
2	Zephyrosaurus	Dinosauria, Ornithischia, Genasauria, Cerapoda, Ornithopoda, Euornithopoda, Zephyrosaurus	Schaffi	1.80000000000000004	Cretaceous	Herbivorous	2017-03-24 18:56:22.382066	2017-03-24 18:57:00.07427	Ornithischia
4	Yunnanosaurus	Dinosauria, Saurischia, Sauropodomorpha, Prosauropoda, Plateosauria, Yunnanosaurus	Huangi	7	Jurassic	Omnivorous	2017-03-24 18:56:22.385294	2017-03-24 18:56:59.925368	Saurischia
3	Zalmoxes	Dinosauria, Ornithischia, Genasauria, Cerapoda, Ornithopoda, Euornithopoda, Iguanadontia, Rhabdodontidae, Zalmoxes	Robustus	3	Cretaceous	Herbivorous	2017-03-24 18:56:22.383772	2017-03-24 18:57:00.076067	Ornithischia
18	Udanoceratops	Dinosauria, Ornithischia, Genasauria, Cerapoda, Marginocephalia, Ceratopsia, Neoceratopsia, Udanoceratops	Tschizhovi	\N	Cretaceous	Herbivorous	2017-03-24 18:56:22.406378	2017-03-24 18:57:00.089397	Ornithischia
37	Syntarsus	Dinosauria, Saurischia, Theropoda, Neotherapoda, Ceratosauria, Coelophysoidea, Coelophysidae, Syntarsus	Rhodesiensis	2.14999999999999991	Triassic	Carnivorous	2017-03-24 18:56:22.435913	2017-03-24 18:56:59.89467	Saurischia
32	Telmatosaurus	Dinosauria, Ornithischia, Genasauria, Cerapoda, Ornithopoda, Euornithopoda, Iguanadontia, Euiguanadontia, Dryomorpha, Ankylopollexia, Iguanodontoidea, Hadrosauridae, Telmatosaurus	Transsylvanicus	5	Cretaceous	Herbivorous	2017-03-24 18:56:22.427944	2017-03-24 18:57:00.102607	Ornithischia
33	Tarchia	Dinosauria, Ornithischia, Genasauria, Thyreophora, Ankylosauromorpha, Ankylosauria, Ankylosaurinae, Tarchia	Gigantea	8.5	Cretaceous	Herbivorous	2017-03-24 18:56:22.429668	2017-03-24 18:57:00.104064	Ornithischia
34	Tarbosaurus	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Coelurosauria, Tyrannoraptora, Tyrannosauroidea, Tyrannosauridae, Tyrannosaurinae, Tarbosaurus	Bataar	10	Cretaceous	Carnivorous	2017-03-24 18:56:22.431151	2017-03-24 18:57:00.105579	Saurischia
35	Tanius	Dinosauria, Ornithischia, Genasauria, Cerapoda, Ornithopoda, Euornithopoda, Iguanadontia, Euiguanadontia, Dryomorpha, Ankylopollexia, Iguanodontoidea, Hadrosauridae, Tanius	Sinensis	\N	Cretaceous	Herbivorous	2017-03-24 18:56:22.432603	2017-03-24 18:57:00.10992	Ornithischia
36	Talarurus	Dinosauria, Ornithischia, Genasauria, Thyreophora, Ankylosauromorpha, Ankylosauria, Ankylosauridae, Talarurus	Plicatospineus	6	Cretaceous	Herbivorous	2017-03-24 18:56:22.434208	2017-03-24 18:57:00.112083	Ornithischia
38	Supersaurus	Dinosauria, Saurischia, Sauropodomorpha, Sauropoda, Eusauropoda, Neosauropoda, Diplodocoidea, Diplodocidae, Supersaurus	Vivianae	35	Cretaceous	Herbivorous	2017-03-24 18:56:22.437572	2017-03-24 18:57:00.114158	Saurischia
47	Staurikosaurus	Dinosauria, Saurischia, Theropoda, Herrerasauridae, Staurikosaurus	Pricei	2	Triassic	Carnivorous	2017-03-24 18:56:22.454651	2017-03-24 18:56:59.89601	Saurischia
39	Suchomimus	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Spinosauroidea, Spinosauridae, Baryonychinae, Suchomimus	Tenerensis	11	Cretaceous	Carnivorous	2017-03-24 18:56:22.439537	2017-03-24 18:57:00.116049	Saurischia
40	Styracosaurus	Dinosauria, Ornithischia, Genasauria, Cerapoda, Marginocephalia, Ceratopsia, Neoceratopsia, Coronosauria, Ceratopsomorpha, Ceratopsidae, Centrosaurinae, Styracosaurus	Albertensis	5.5	Cretaceous	Herbivorous	2017-03-24 18:56:22.441061	2017-03-24 18:57:00.117876	Ornithischia
41	Stygimoloch	Dinosauria, Ornithischia, Genasauria, Cerapoda, Marginocephalia, Pachycephalosauria, Goyocephala, Homalocephaloidea, Pachycephalosauridae, Stygimoloch	Spinifer	3	Cretaceous	Herbivorous	2017-03-24 18:56:22.442608	2017-03-24 18:57:00.119622	Ornithischia
42	Struthiosaurus	Dinosauria, Ornithischia, Genasauria, Thyreophora, Ankylosauromorpha, Ankylosauria, Nodosauridae, Struthiosaurus	Austriacus	2.5	Cretaceous	Herbivorous	2017-03-24 18:56:22.444398	2017-03-24 18:57:00.121239	Ornithischia
43	Struthiomimus	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Coelurosauria, Tyrannoraptora, Maniraptoriformes, Ornithomimosauria, Ornithomimidae, Struthiomimus	Altus	4	Cretaceous	Omnivorous	2017-03-24 18:56:22.446405	2017-03-24 18:57:00.122816	Saurischia
44	Stenopelix	Dinosauria, Ornithischia, Genasauria, Cerapoda, Marginocephalia, Pachycephalosauria, Stenopelix	Valdensis	1.5	Cretaceous	Herbivorous	2017-03-24 18:56:22.448968	2017-03-24 18:57:00.124315	Ornithischia
48	Spinosaurus	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Spinosauroidea, Spinosauridae, Spinosaurinae, Spinosaurus	Aegyptiacus	18	Cretaceous	Carnivorous	2017-03-24 18:56:22.45626	2017-03-24 18:57:00.127222	Saurischia
51	Sinraptor	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Carnosauria, Allosauroidea, Sinraptoridae, Sinraptor	Hepingensis	7.59999999999999964	Jurassic	Carnivorous	2017-03-24 18:56:22.461274	2017-03-24 18:56:59.946416	Saurischia
49	Sonidosaurus	Dinosauria, Saurischia, Sauropodomorpha, Sauropoda, Eusauropoda, Neosauropoda, Macronaria, Camarasauromorpha, Titanosauriformes, Titanosauria, Sonidosaurus	Saihangaobiensis	9	Cretaceous	Herbivorous	2017-03-24 18:56:22.457935	2017-03-24 18:57:00.128672	Saurischia
45	Stegosaurus	Dinosauria, Ornithischia, Genasauria, Thyreophora, Stegosauria, Stegosauridae, Stegosaurinae, Stegosaurus	Armatus	9	Jurassic	Herbivorous	2017-03-24 18:56:22.450812	2017-03-24 18:56:59.944599	Ornithischia
50	Sinvenator	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Coelurosauria, Tyrannoraptora, Maniraptoriformes, Maniraptora, Paraves, Eumaniraptoria, Troodontidae, Sinvenator	Changii	1	Cretaceous	Carnivorous	2017-03-24 18:56:22.459454	2017-03-24 18:57:00.13012	Saurischia
52	Sinosauropteryx	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Coelurosauria, Compsognathidae, Sinosauropteryx	Prima	1	Cretaceous	Carnivorous	2017-03-24 18:56:22.463127	2017-03-24 18:57:00.131547	Saurischia
53	Sinornithosaurus	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Coelurosauria, Tyrannoraptora, Maniraptoriformes, Maniraptora, Paraves, Eumaniraptora, Dromaeosauridae, Sinornithosaurus	Millenii	2	Cretaceous	Carnivorous	2017-03-24 18:56:22.464822	2017-03-24 18:57:00.132918	Saurischia
31	Tenontosaurus	Dinosauria, Ornithischia, Genasauria, Cerapoda, Ornithopoda, Euornithopoda, Iguanadontia, Tenontosaurus	Tillettorum	7	Cretaceous	Herbivorous	2017-03-24 18:56:22.426448	2017-03-24 18:57:00.101164	Ornithischia
54	Sinocalliopteryx	Dinosauria, Saurischia, Sinocalliopteryx	Gigas	2.37000000000000011	Cretaceous	Carnivorous	2017-03-24 18:56:22.466711	2017-03-24 18:57:00.134367	Saurischia
30	Thecodontosaurus	Dinosauria, Saurischia, Sauropodomorpha, Prosauropoda, Thecodontosaurus	Antiquus	2.5	Triassic	Omnivorous	2017-03-24 18:56:22.425016	2017-03-24 18:56:59.893166	Saurischia
46	Stegoceras	Dinosauria, Ornithischia, Genasauria, Cerapoda, Marginocephalia, Pachycephalosauria, Goyocephala, Homalocephaloidea, Pachycephalosauridae, Stegoceras	Validum	2.39999999999999991	Cretaceous	Herbivorous	2017-03-24 18:56:22.452782	2017-03-24 18:57:00.125725	Ornithischia
55	Silvisaurus	Dinosauria, Ornithischia, Genasauria, Thyreophora, Ankylosauromorpha, Ankylosauria, Nodosauridae, Silvisaurus	Condrayi	4	Cretaceous	Herbivorous	2017-03-24 18:56:22.468678	2017-03-24 18:57:00.135896	Ornithischia
61	Seismosaurus	Dinosauria, Saurischia, Sauropodomorpha, Sauropoda, Eusauropoda, Neosauropoda, Diplodocoidea, Diplodocidae, Seismosaurus	Hallorum	40	Jurassic	Herbivorous	2017-03-24 18:56:22.478748	2017-03-24 18:56:59.949798	Saurischia
59	Shanag	Dinosauria, Saurischia, Shanag	Ashile	0.450000000000000011	Cretaceous	Carnivorous	2017-03-24 18:56:22.475468	2017-03-24 18:57:00.138949	Saurischia
62	Segnosaurus	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Coelurosauria, Tyrannoraptora, Maniraptoriformes, Maniraptora, Therizinosauroidea, Therizinosauridae, Segnosaurus	Galbinensis	4	Cretaceous	Carnivorous	2017-03-24 18:56:22.480272	2017-03-24 18:57:00.142193	Saurischia
64	Secernosaurus	Dinosauria, Ornithischia, Genasauria, Cerapoda, Ornithopoda, Euornithopoda, Iguanadontia, Euiguanadontia, Dryomorpha, Ankylopollexia, Iguanodontoidea, Hadrosauridae, Secernosaurus	Koerneri	3	Cretaceous	Herbivorous	2017-03-24 18:56:22.483362	2017-03-24 18:57:00.143894	Ornithischia
63	Segisaurus	Dinosauria, Saurischia, Theropoda, Neotherapoda, Ceratosauria, Coelophysoidea, Coelophysidae, Segisaurus	Halli	1.5	Jurassic	Carnivorous	2017-03-24 18:56:22.481791	2017-03-24 18:56:59.951703	Saurischia
67	Saurornithoides	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Coelurosauria, Tyrannoraptora, Maniraptoriformes, Maniraptora, Paraves, Eumaniraptoria, Troodontidae, Saurornithoides	Mongoliensis	3	Cretaceous	Carnivorous	2017-03-24 18:56:22.48815	2017-03-24 18:57:00.145556	Saurischia
65	Scutellosaurus	Dinosauria, Ornithischia, Genasauria, Thyreophora, Scutellosaurus	Lawleri	1.19999999999999996	Jurassic	Herbivorous	2017-03-24 18:56:22.485055	2017-03-24 18:56:59.953604	Ornithischia
69	Sauropelta	Dinosauria, Ornithischia, Genasauria, Thyreophora, Ankylosauromorpha, Ankylosauria, Nodosauridae, Sauropelta	Edwardsorum	6.5	Cretaceous	Herbivorous	2017-03-24 18:56:22.491481	2017-03-24 18:57:00.147087	Ornithischia
66	Scelidosaurus	Dinosauria, Ornithischia, Genasauria, Thyreophora, Scelidosauridae, Scelidosaurus	Harrisonii	4	Jurassic	Herbivorous	2017-03-24 18:56:22.486547	2017-03-24 18:56:59.95529	Ornithischia
68	Saurophaganax	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Carnosauria, Allosauroidea, Allosauridae, Saurophaganax	Maximus	12	Jurassic	Carnivorous	2017-03-24 18:56:22.489885	2017-03-24 18:56:59.956926	Saurischia
70	Saurolophus	Dinosauria, Ornithischia, Genasauria, Cerapoda, Ornithopoda, Euornithopoda, Iguanadontia, Euiguanadontia, Dryomorpha, Ankylopollexia, Iguanodontoidea, Hadrosauridae, Euhadrosauria, Hadrosaurinae, Saurolophus	Osborni	9	Cretaceous	Herbivorous	2017-03-24 18:56:22.493162	2017-03-24 18:57:00.148617	Ornithischia
71	Sarcosaurus	Dinosauria, Saurischia, Theropoda, Neotherapoda, Ceratosauria, Sarcosaurus	Woodi	3	Jurassic	Carnivorous	2017-03-24 18:56:22.494682	2017-03-24 18:56:59.958694	Saurischia
73	Saltasaurus	Dinosauria, Saurischia, Sauropodomorpha, Sauropoda, Eusauropoda, Neosauropoda, Macronaria, Camarasauromorpha, Titanosauriformes, Titanosauria, Lithostrotia, Saltasauridae, Saltasaurus	Loricatus	12	Cretaceous	Herbivorous	2017-03-24 18:56:22.497954	2017-03-24 18:57:00.150057	Saurischia
74	Saichania	Dinosauria, Ornithischia, Genasauria, Thyreophora, Ankylosauromorpha, Ankylosauria, Ankylosauridae, Saichania	Chulsanensis	6.59999999999999964	Cretaceous	Herbivorous	2017-03-24 18:56:22.499538	2017-03-24 18:57:00.151497	Ornithischia
58	Shantungosaurus	Dinosauria, Ornithischia, Genasauria, Cerapoda, Ornithopoda, Euornithopoda, Iguanadontia, Euiguanadontia, Dryomorpha, Ankylopollexia, Iguanodontoidea, Hadrosauridae, Euhadrosauria, Hadrosaurinae, Shantungosaurus	Giganteus	15	Cretaceous	Herbivorous	2017-03-24 18:56:22.474032	2017-03-24 18:57:00.137581	Ornithischia
76	Riojasaurus	Dinosauria, Saurischia, Sauropodomorpha, Prosauropoda, Anchisauria, Melanorosauridae, Riojasaurus	Incertus	5.15000000000000036	Triassic	Herbivorous/Omnivorous	2017-03-24 18:56:22.502683	2017-03-24 18:56:59.898878	Saurischia
75	Rugops	Dinosauria, Saurischia, Theropoda, Neotherapoda, Ceratosauria, Neoceratosauria, Abelisauridae, Rugops	Primus	7	Cretaceous	Carnivorous	2017-03-24 18:56:22.501095	2017-03-24 18:57:00.152886	Saurischia
80	Rebbachisaurus	Dinosauria, Saurischia, Sauropodomorpha, Sauropoda, Eusauropoda, Neosauropoda, Diplodocoidea, Rebbachisauridae, Rebbachisaurus	Garasbae	20	Cretaceous	Herbivorous	2017-03-24 18:56:22.509105	2017-03-24 18:57:00.156174	Saurischia
81	Quaesitosaurus	Dinosauria, Saurischia, Sauropodomorpha, Sauropoda, Eusauropoda, Neosauropoda, Diplodocoidea, Nemegtosauridae, Quaesitosaurus	Orientalis	23	Cretaceous	Herbivorous	2017-03-24 18:56:22.510694	2017-03-24 18:57:00.157978	Saurischia
57	Shunosaurus	Dinosauria, Saurischia, Sauropodomorpha, Sauropoda, Eusauropoda, Shunosaurus	Lii	10	Jurassic	Herbivorous	2017-03-24 18:56:22.472264	2017-03-24 18:56:59.948104	Saurischia
60	Shamosaurus	Dinosauria, Ornithischia, Genasauria, Thyreophora, Ankylosauromorpha, Ankylosauria, Ankylosauridae, Shamosaurus	Scutatus	\N	Cretaceous	Herbivorous	2017-03-24 18:56:22.476988	2017-03-24 18:57:00.14048	Ornithischia
82	Psittacosaurus	Dinosauria, Ornithischia, Genasauria, Cerapoda, Marginocephalia, Ceratopsia, Psittacosauridae, Psittacosaurus	Mongoliensis	2	Cretaceous	Herbivorous	2017-03-24 18:56:22.512325	2017-03-24 18:57:00.159651	Ornithischia
72	Saltopus	Dinosauria, Saltopus, Saltopus	Elginensis	\N	Triassic	Carnivorous	2017-03-24 18:56:22.496191	2017-03-24 18:57:00.422393	Debated
78	Rhoetosaurus	Dinosauria, Saurischia, Sauropodomorpha, Sauropoda, Rhoetosaurus	Brownei	15	Jurassic	Herbivorous	2017-03-24 18:56:22.505969	2017-03-24 18:56:59.960327	Saurischia
79	Rhabdodon	Dinosauria, Ornithischia, Genasauria, Cerapoda, Ornithopoda, Euornithopoda, Iguanadontia, Rhabdodontidae, Rhabdodon	Priscus	4	Cretaceous	Herbivorous	2017-03-24 18:56:22.507539	2017-03-24 18:57:00.154434	Ornithischia
83	Protohadros	Dinosauria, Ornithischia, Genasauria, Cerapoda, Ornithopoda, Euornithopoda, Iguanadontia, Euiguanadontia, Dryomorpha, Ankylopollexia, Iguanodontoidea, Protohadros	Byrdi	6	Cretaceous	Herbivorous	2017-03-24 18:56:22.513898	2017-03-24 18:57:00.16117	Ornithischia
89	Probactrosaurus	Dinosauria, Ornithischia, Genasauria, Cerapoda, Ornithopoda, Euornithopoda, Iguanadontia, Euiguanadontia, Dryomorpha, Ankylopollexia, Iguanodontoidea, Probactrosaurus	Gobiensis	6	Cretaceous	Herbivorous	2017-03-24 18:56:22.524574	2017-03-24 18:57:00.164135	Ornithischia
96	Plateosaurus	Dinosauria, Saurischia, Sauropodomorpha, Prosauropoda, Plateosauria, Plateosauridae, Plateosaurus	Engelhardti	7	Triassic	Herbivorous	2017-03-24 18:56:22.536065	2017-03-24 18:56:59.90166	Saurischia
92	Poekilopleuron	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Spinosauroidea, Megalosauridae, Megalosaurinae, Poekilopleuron	Bucklandii	9	Jurassic	Carnivorous	2017-03-24 18:56:22.529721	2017-03-24 18:56:59.963226	Saurischia
90	Prenocephale	Dinosauria, Ornithischia, Genasauria, Cerapoda, Marginocephalia, Pachycephalosauria, Goyocephala, Homalocephaloidea, Pachycephalosauridae, Prenocephale	Prenes	2.39999999999999991	Cretaceous	Herbivorous	2017-03-24 18:56:22.526297	2017-03-24 18:57:00.165626	Ornithischia
91	Polacanthus	Dinosauria, Ornithischia, Genasauria, Thyreophora, Ankylosauromorpha, Ankylosauria, Polacanthus	Foxii	5	Cretaceous	Herbivorous	2017-03-24 18:56:22.527828	2017-03-24 18:57:00.167067	Ornithischia
95	Platyceratops	Dinosauria, Ornithischia, Genasauria, Cerapoda, Marginocephalia, Ceratopsia, Neoceratopsia, Bagaceratopsidae, Platyceratops	Tatarinovi	\N	Cretaceous	Herbivorous	2017-03-24 18:56:22.534399	2017-03-24 18:57:00.170745	Ornithischia
93	Podokesaurus	Dinosauria, Saurischia, Theropoda, Neotherapoda, Ceratosauria, Coelophysoidea, Podokesaurus	Holyokensis	0.900000000000000022	Jurassic	Carnivorous	2017-03-24 18:56:22.531289	2017-03-24 18:56:59.964603	Saurischia
99	Piatnitzkysaurus	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Spinosauroidea, Megalosauridae, Eustreptospondylinae, Piatnitzkysaurus	Floresi	4.20000000000000018	Jurassic	Carnivorous	2017-03-24 18:56:22.54101	2017-03-24 18:56:59.965974	Saurischia
98	Pinacosaurus	Dinosauria, Ornithischia, Genasauria, Thyreophora, Ankylosauromorpha, Ankylosauria, Ankylosauridae, Pinacosaurus	Grangeri	5	Cretaceous	Herbivorous	2017-03-24 18:56:22.539234	2017-03-24 18:57:00.172582	Ornithischia
100	Pentaceratops	Dinosauria, Ornithischia, Genasauria, Cerapoda, Marginocephalia, Ceratopsia, Neoceratopsia, Coronosauria, Ceratopsomorpha, Ceratopsidae, Chasmosaurinae, Pentaceratops	Sternbergi	6.79999999999999982	Cretaceous	Herbivorous	2017-03-24 18:56:22.542678	2017-03-24 18:57:00.174171	Ornithischia
97	Pisanosaurus	Dinosauria, Ornithischia, Pisanosaurus	Merti	0.900000000000000022	Triassic	Herbivorous	2017-03-24 18:56:22.537622	2017-03-24 18:56:59.903084	Ornithischia
88	Proceratosaurus	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Coelurosauria, Proceratosaurus	Bradleyi	4.09999999999999964	Jurassic	Carnivorous	2017-03-24 18:56:22.522782	2017-03-24 18:56:59.96184	Saurischia
101	Pelorosaurus	Dinosauria, Saurischia, Sauropodomorpha, Sauropoda, Eusauropoda, Neosauropoda, Macronaria, Camarasauromorpha, Titanosauriformes, Pelorosaurus	Conybearei	25	Cretaceous	Herbivorous	2017-03-24 18:56:22.544201	2017-03-24 18:57:00.175618	Saurischia
103	Patagosaurus	Dinosauria, Saurischia, Sauropodomorpha, Sauropoda, Eusauropoda, Cetiosauridae, Patagosaurus	Fariasi	18	Jurassic	Herbivorous	2017-03-24 18:56:22.547289	2017-03-24 18:56:59.967372	Saurischia
102	Pelicanimimus	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Coelurosauria, Tyrannoraptora, Maniraptoriformes, Ornithomimosauria, Pelicanimimus	Polyodon	2	Cretaceous	Carnivorous	2017-03-24 18:56:22.545736	2017-03-24 18:57:00.177006	Saurischia
104	Parksosaurus	Dinosauria, Ornithischia, Genasauria, Cerapoda, Ornithopoda, Euornithopoda, Parksosaurus	Warrenae	3	Cretaceous	Herbivorous	2017-03-24 18:56:22.548971	2017-03-24 18:57:00.178364	Ornithischia
105	Parasaurolophus	Dinosauria, Ornithischia, Genasauria, Cerapoda, Ornithopoda, Euornithopoda, Iguanadontia, Euiguanadontia, Dryomorpha, Ankylopollexia, Iguanodontoidea, Hadrosauridae, Euhadrosauria, Lambeosaurinae, Parasaurolophus	Walkeri	11	Cretaceous	Herbivorous	2017-03-24 18:56:22.550513	2017-03-24 18:57:00.179788	Ornithischia
107	Pantydraco	Dinosauria, Saurischia, Pantydraco	Caducus	3	Jurassic	Herbivorous	2017-03-24 18:56:22.553807	2017-03-24 18:56:59.968694	Saurischia
106	Paralititan	Dinosauria, Saurischia, Sauropodomorpha, Sauropoda, Eusauropoda, Neosauropoda, Macronaria, Camarasauromorpha, Titanosauriformes, Titanosauria, Lithostrotia, Paralititan	Stromeri	28	Cretaceous	Herbivorous	2017-03-24 18:56:22.552306	2017-03-24 18:57:00.181178	Saurischia
108	Panoplosaurus	Dinosauria, Ornithischia, Genasauria, Thyreophora, Ankylosauromorpha, Ankylosauria, Nodosauridae, Panoplosaurus	Mirus	7	Cretaceous	Herbivorous	2017-03-24 18:56:22.555329	2017-03-24 18:57:00.182602	Ornithischia
109	Pachyrhinosaurus	Dinosauria, Ornithischia, Genasauria, Cerapoda, Marginocephalia, Ceratopsia, Neoceratopsia, Coronosauria, Ceratopsomorpha, Ceratopsidae, Centrosaurinae, Pachyrhinosaurus	Canadensis	6	Cretaceous	Herbivorous	2017-03-24 18:56:22.557005	2017-03-24 18:57:00.184078	Ornithischia
245	Datousaurus	Dinosauria, Saurischia, Sauropodomorpha, Sauropoda, Datousaurus	Bashanensis	15	Jurassic	Herbivorous	2017-03-24 18:56:22.77149	2017-03-24 18:56:59.970143	Saurischia
86	Prosaurolophus	Dinosauria, Ornithischia, Genasauria, Cerapoda, Ornithopoda, Euornithopoda, Iguanadontia, Euiguanadontia, Dryomorpha, Ankylopollexia, Iguanodontoidea, Hadrosauridae, Euhadrosauria, Hadrosaurinae, Prosaurolophus	Maximus	7.59999999999999964	Cretaceous	Herbivorous	2017-03-24 18:56:22.51869	2017-03-24 18:57:00.162682	Ornithischia
87	Procompsognathus	Dinosauria, Saurischia, Theropoda, Neotherapoda, Ceratosauria, Coelophysoidea, Procompsognathus	Triassicus	1	Triassic	Carnivorous	2017-03-24 18:56:22.520809	2017-03-24 18:56:59.900203	Saurischia
94	Pleurocoelus	Dinosauria, Saurischia, Sauropodomorpha, Sauropoda, Eusauropoda, Neosauropoda, Macronaria, Camarasauromorpha, Titanosauriformes, Pleurocoelus	Nanus	\N	Cretaceous	Herbivorous	2017-03-24 18:56:22.532809	2017-03-24 18:57:00.168526	Saurischia
110	Pachycephalosaurus	Dinosauria, Ornithischia, Genasauria, Cerapoda, Marginocephalia, Pachycephalosauria, Goyocephala, Homalocephaloidea, Pachycephalosauridae, Pachycephalosaurus	Wyomingensis	8	Cretaceous	Herbivorous	2017-03-24 18:56:22.559066	2017-03-24 18:57:00.185524	Ornithischia
114	Oryctodromeus	Dinosauria, Ornithischia, Oryctodromeus	Cubicularis	2.10000000000000009	Cretaceous	Herbivorous	2017-03-24 18:56:22.56579	2017-03-24 18:57:00.188425	Ornithischia
117	Ornitholestes	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Coelurosauria, Ornitholestes	Hermanni	2	Jurassic	Carnivorous	2017-03-24 18:56:22.570794	2017-03-24 18:56:59.972981	Saurischia
115	Orodromeus	Dinosauria, Ornithischia, Genasauria, Cerapoda, Ornithopoda, Euornithopoda, Orodromeus	Makelai	2	Cretaceous	Herbivorous	2017-03-24 18:56:22.56751	2017-03-24 18:57:00.189854	Ornithischia
116	Ornithomimus	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Coelurosauria, Tyrannoraptora, Maniraptoriformes, Ornithomimosauria, Ornithomimidae, Ornithomimus	Velox	4	Cretaceous	Omnivorous	2017-03-24 18:56:22.569092	2017-03-24 18:57:00.191163	Saurischia
118	Opisthocoelicaudia	Dinosauria, Saurischia, Sauropodomorpha, Sauropoda, Eusauropoda, Neosauropoda, Macronaria, Camarasauromorpha, Titanosauriformes, Titanosauria, Lithostrotia, Saltasauridae, Opisthocoelicaudia	Skarzynskii	12	Cretaceous	Herbivorous	2017-03-24 18:56:22.572293	2017-03-24 18:57:00.19256	Saurischia
119	Omeisaurus	Dinosauria, Saurischia, Sauropodomorpha, Sauropoda, Eusauropoda, Omeisaurus	Junghsiensis	20	Jurassic	Herbivorous	2017-03-24 18:56:22.574038	2017-03-24 18:56:59.974402	Saurischia
121	Nothronychus	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Coelurosauria, Tyrannoraptora, Maniraptoriformes, Maniraptora, Therizinosauroidea, Therizinosauridae, Nothronychus	Mckinleyi	5.29999999999999982	Cretaceous	Omnivorous	2017-03-24 18:56:22.576945	2017-03-24 18:57:00.194058	Saurischia
120	Nqwebasaurus	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Coelurosauria, Nqwebasaurus	Thwazi	1	Jurassic	Carnivorous	2017-03-24 18:56:22.575541	2017-03-24 18:56:59.975783	Saurischia
135	Monolophosaurus	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Carnosauria, Monolophosaurus	Jiangi	5.70000000000000018	Jurassic	Carnivorous	2017-03-24 18:56:22.606794	2017-03-24 18:56:59.977157	Saurischia
122	Nomingia	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Coelurosauria, Tyrannoraptora, Maniraptoriformes, Maniraptora, Oviraptorosauria, Caenagnathoidea, Caenagnathidae, Nomingia	Gobiensis	1.60000000000000009	Cretaceous	Omnivorous	2017-03-24 18:56:22.578516	2017-03-24 18:57:00.195467	Saurischia
123	Nodosaurus	Dinosauria, Ornithischia, Genasauria, Thyreophora, Ankylosauromorpha, Ankylosauria, Nodosauridae, Nodosaurus	Textilis	5	Cretaceous	Herbivorous	2017-03-24 18:56:22.580074	2017-03-24 18:57:00.196884	Ornithischia
125	Nipponosaurus	Dinosauria, Ornithischia, Genasauria, Cerapoda, Ornithopoda, Euornithopoda, Iguanadontia, Euiguanadontia, Dryomorpha, Ankylopollexia, Iguanodontoidea, Hadrosauridae, Euhadrosauria, Lambeosaurinae, Nipponosaurus	Sachalinensis	\N	Cretaceous	Herbivorous	2017-03-24 18:56:22.583082	2017-03-24 18:57:00.199847	Ornithischia
126	Nigersaurus	Dinosauria, Saurischia, Sauropodomorpha, Sauropoda, Eusauropoda, Neosauropoda, Diplodocoidea, Rebbachisauridae, Nigersaurus	Taqueti	15	Cretaceous	Herbivorous	2017-03-24 18:56:22.584592	2017-03-24 18:57:00.201611	Saurischia
127	Neuquenosaurus	Dinosauria, Saurischia, Sauropodomorpha, Sauropoda, Eusauropoda, Neosauropoda, Macronaria, Camarasauromorpha, Titanosauriformes, Titanosauria, Lithostrotia, Saltasauridae, Neuquenosaurus	Australis	10	Cretaceous	Herbivorous	2017-03-24 18:56:22.586267	2017-03-24 18:57:00.203409	Saurischia
128	Neovenator	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Carnosauria, Allosauroidea, Carcharodontosauridae, Neovenator	Salerii	7.40000000000000036	Cretaceous	Carnivorous	2017-03-24 18:56:22.587842	2017-03-24 18:57:00.204908	Saurischia
129	Nemegtosaurus	Dinosauria, Saurischia, Sauropodomorpha, Sauropoda, Eusauropoda, Neosauropoda, Diplodocoidea, Nemegtosauridae, Nemegtosaurus	Mongoliensis	13	Cretaceous	Herbivorous	2017-03-24 18:56:22.589563	2017-03-24 18:57:00.20647	Saurischia
130	Nanshiungosaurus	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Coelurosauria, Tyrannoraptora, Maniraptoriformes, Maniraptora, Therizinosauroidea, Therizinosauridae, Nanshiungosaurus	Brevispinus	4.40000000000000036	Cretaceous	Omnivorous	2017-03-24 18:56:22.591168	2017-03-24 18:57:00.208021	Saurischia
131	Nanotyrannus	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Coelurosauria, Tyrannoraptora, Tyrannosauroidea, Tyrannosauridae, Tyrannosaurinae, Nanotyrannus	Lancenis	5	Cretaceous	Carnivorous	2017-03-24 18:56:22.593037	2017-03-24 18:57:00.209715	Saurischia
132	Muttaburrasaurus	Dinosauria, Ornithischia, Genasauria, Cerapoda, Ornithopoda, Euornithopoda, Iguanadontia, Euiguanadontia, Dryomorpha, Ankylopollexia, Iguanodontoidea, Muttaburrasaurus	Langdoni	7	Cretaceous	Herbivorous	2017-03-24 18:56:22.59459	2017-03-24 18:57:00.211435	Ornithischia
134	Mononykus	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Coelurosauria, Tyrannoraptora, Maniraptoriformes, Maniraptora, Alvarezsauridae, Mononykus	Olecranus	1	Cretaceous	Unknown	2017-03-24 18:56:22.604499	2017-03-24 18:57:00.213786	Saurischia
113	Othnielia	Dinosauria, Ornithischia, Genasauria, Cerapoda, Ornithopoda, Euornithopoda, Othnielia	Rex	1.39999999999999991	Jurassic	Herbivorous	2017-03-24 18:56:22.564226	2017-03-24 18:56:59.971577	Ornithischia
112	Ouranosaurus	Dinosauria, Ornithischia, Genasauria, Cerapoda, Ornithopoda, Euornithopoda, Iguanadontia, Euiguanadontia, Dryomorpha, Ankylopollexia, Iguanodontoidea, Ouranosaurus	Nigeriensis	7	Cretaceous	Herbivorous	2017-03-24 18:56:22.562546	2017-03-24 18:57:00.18702	Ornithischia
133	Mussaurus	Dinosauria, Saurischia, Sauropodomorpha, Prosauropoda, Plateosauria, Plateosauridae, Mussaurus	Patagonicus	3	Triassic	Herbivorous	2017-03-24 18:56:22.602624	2017-03-24 18:56:59.904485	Saurischia
124	Noasaurus	Dinosauria, Saurischia, Theropoda, Neotherapoda, Ceratosauria, Neoceratosauria, Abelisauroidea, Abelisauria, Noasaurus	Leali	1	Cretaceous	Carnivorous	2017-03-24 18:56:22.58159	2017-03-24 18:57:00.198376	Saurischia
136	Minmi	Dinosauria, Ornithischia, Genasauria, Thyreophora, Ankylosauromorpha, Ankylosauria, Minmi	Paravertebra	3	Cretaceous	Herbivorous	2017-03-24 18:56:22.608902	2017-03-24 18:57:00.215641	Ornithischia
139	Microceratops	Dinosauria, Ornithischia, Genasauria, Cerapoda, Marginocephalia, Ceratopsia, Neoceratopsia, Coronosauria, Microceratops	Gobiensis	0.5	Cretaceous	Herbivorous	2017-03-24 18:56:22.614318	2017-03-24 18:57:00.21871	Ornithischia
143	Maxakalisaurus	Dinosauria, Saurischia, Sauropodomorpha, Sauropoda, Eusauropoda, Neosauropoda, Macronaria, Camarasauromorpha, Titanosauriformes, Titanosauria, Lithostrotia, Saltasauridae, Saltasaurinae, Maxakalisaurus	Topai	13	Cretaceous	Herbivorous	2017-03-24 18:56:22.621042	2017-03-24 18:57:00.220157	Saurischia
142	Megalosaurus	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Spinosauroidea, Megalosauridae, Megalosaurinae, Megalosaurus	Bucklandii	9	Jurassic	Carnivorous	2017-03-24 18:56:22.619516	2017-03-24 18:56:59.979931	Saurischia
153	Lycorhinus	Dinosauria, Ornithischia, Genasauria, Cerapoda, Heterodontosauridae, Lycorhinus	Angustidens	1.19999999999999996	Triassic	Herbivorous	2017-03-24 18:56:22.636631	2017-03-24 18:56:59.907359	Ornithischia
144	Massospondylus	Dinosauria, Saurischia, Sauropodomorpha, Prosauropoda, Plateosauria, Plateosauridae, Massospondylus	Carinatus	4	Jurassic	Omnivorous	2017-03-24 18:56:22.622509	2017-03-24 18:56:59.981377	Saurischia
145	Masiakasaurus	Dinosauria, Saurischia, Theropoda, Neotherapoda, Ceratosauria, Neoceratosauria, Abelisauroidea, Abelisauria, Masiakasaurus	Knopfleri	2	Cretaceous	Carnivorous	2017-03-24 18:56:22.623862	2017-03-24 18:57:00.22172	Saurischia
146	Marshosaurus	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Marshosaurus	Bicentesimus	6	Jurassic	Carnivorous	2017-03-24 18:56:22.625318	2017-03-24 18:56:59.982795	Saurischia
149	Malawisaurus	Dinosauria, Saurischia, Sauropodomorpha, Sauropoda, Eusauropoda, Neosauropoda, Macronaria, Camarasauromorpha, Titanosauriformes, Titanosauria, Lithostrotia, Malawisaurus	Dixeyi	9	Cretaceous	Herbivorous	2017-03-24 18:56:22.629785	2017-03-24 18:57:00.224983	Saurischia
148	Mamenchisaurus	Dinosauria, Saurischia, Sauropodomorpha, Sauropoda, Eusauropoda, Mamenchisaurus	Constructus	22	Jurassic	Herbivorous	2017-03-24 18:56:22.628259	2017-03-24 18:56:59.984192	Saurischia
150	Majungatholus	Dinosauria, Saurischia, Theropoda, Neotherapoda, Ceratosauria, Neoceratosauria, Abelisauridae, Majungatholus	Atopus	6	Cretaceous	Carnivorous	2017-03-24 18:56:22.631567	2017-03-24 18:57:00.226773	Saurischia
155	Lufengosaurus	Dinosauria, Saurischia, Sauropodomorpha, Prosauropoda, Plateosauria, Plateosauridae, Lufengosaurus	Huenei	6	Jurassic	Herbivorous	2017-03-24 18:56:22.639769	2017-03-24 18:56:59.985719	Saurischia
151	Maiasaura	Dinosauria, Ornithischia, Genasauria, Cerapoda, Ornithopoda, Euornithopoda, Iguanadontia, Euiguanadontia, Dryomorpha, Ankylopollexia, Iguanodontoidea, Hadrosauridae, Euhadrosauria, Hadrosaurinae, Maiasaura	Peeblesorum	9	Cretaceous	Herbivorous	2017-03-24 18:56:22.633245	2017-03-24 18:57:00.228519	Ornithischia
152	Magyarosaurus	Dinosauria, Saurischia, Sauropodomorpha, Sauropoda, Eusauropoda, Neosauropoda, Macronaria, Camarasauromorpha, Titanosauriformes, Titanosauria, Lithostrotia, Magyarosaurus	Dacus	5	Cretaceous	Herbivorous	2017-03-24 18:56:22.634906	2017-03-24 18:57:00.230172	Saurischia
154	Lurdusaurus	Dinosauria, Ornithischia, Genasauria, Cerapoda, Ornithopoda, Euornithopoda, Iguanadontia, Euiguanadontia, Dryomorpha, Ankylopollexia, Iguanodontoidea, Lurdusaurus	Arenatus	9	Cretaceous	Herbivorous	2017-03-24 18:56:22.638216	2017-03-24 18:57:00.2317	Ornithischia
157	Lophorhothon	Dinosauria, Ornithischia, Genasauria, Cerapoda, Ornithopoda, Euornithopoda, Iguanadontia, Euiguanadontia, Dryomorpha, Ankylopollexia, Iguanodontoidea, Hadrosauridae, Euhadrosauria, Hadrosaurinae, Lophorhothon	Atopus	4.5	Cretaceous	Herbivorous	2017-03-24 18:56:22.643344	2017-03-24 18:57:00.233278	Ornithischia
158	Liliensternus	Dinosauria, Saurischia, Theropoda, Neotherapoda, Ceratosauria, Coelophysoidea, Liliensternus	Liliensterni	5	Triassic	Carnivorous	2017-03-24 18:56:22.644987	2017-03-24 18:56:59.908811	Saurischia
159	Ligabuesaurus	Dinosauria, Saurischia, Sauropodomorpha, Sauropoda, Eusauropoda, Neosauropoda, Macronaria, Camarasauromorpha, Titanosauriformes, Titanosauria, Ligabuesaurus	Leanzai	24	Cretaceous	Herbivorous	2017-03-24 18:56:22.646517	2017-03-24 18:57:00.234649	Saurischia
156	Lophostropheus	Dinosauria, Saurischia, Lophostropheus	Airelensis	6.20000000000000018	Jurassic	Carnivorous	2017-03-24 18:56:22.641578	2017-03-24 18:56:59.987817	Saurischia
162	Lexovisaurus	Dinosauria, Ornithischia, Genasauria, Thyreophora, Stegosauria, Stegosauridae, Stegosaurinae, Lexovisaurus	Durobrivensis	5	Jurassic	Herbivorous	2017-03-24 18:56:22.651483	2017-03-24 18:56:59.989298	Ornithischia
160	Liaoxiornis	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Coelurosauria, Tyrannoraptora, Maniraptoriformes, Maniraptora, Paraves, Eumaniraptoria, Avialae, Ornithurae, Avibrevicauda, Pygostylia, Ornithathoraces, Enantiornithes, Liaoxiornis	Delicatus	0.0800000000000000017	Cretaceous	Carnivorous	2017-03-24 18:56:22.64813	2017-03-24 18:57:00.236074	Saurischia
140	Metriacanthosaurus	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Metriacanthosaurus	Parkeri	8.19999999999999929	Jurassic	Carnivorous	2017-03-24 18:56:22.61612	2017-03-24 18:56:59.978544	Saurischia
161	Liaoceratops	Dinosauria, Ornithischia, Genasauria, Cerapoda, Marginocephalia, Ceratopsia, Neoceratopsia, Liaoceratops	Yanzigouensis	\N	Cretaceous	Herbivorous	2017-03-24 18:56:22.649884	2017-03-24 18:57:00.237513	Ornithischia
163	Lesothosaurus	Dinosauria, Ornithischia, Lesothosaurus	Diagnosticus	1	Jurassic	Herbivorous	2017-03-24 18:56:22.653084	2017-03-24 18:56:59.990682	Ornithischia
138	Micropachycephalosaurus	Dinosauria, Ornithischia, Genasauria, Cerapoda, Marginocephalia, Pachycephalosauria, Micropachycephalosaurus	Hongtuyanensis	0.599999999999999978	Cretaceous	Herbivorous	2017-03-24 18:56:22.612518	2017-03-24 18:57:00.217194	Ornithischia
141	Melanorosaurus	Dinosauria, Saurischia, Sauropodomorpha, Prosauropoda, Anchisauria, Melanorosauridae, Melanorosaurus	Readi	12	Triassic	Omnivorous	2017-03-24 18:56:22.617859	2017-03-24 18:56:59.905948	Saurischia
147	Mapusaurus	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Carnosauria, Allosauroidea, Allosauridae, Charcharodontosauridae, Giganotosaurinae, Mapusaurus	Roseae	13	Cretaceous	Carnivorous	2017-03-24 18:56:22.626776	2017-03-24 18:57:00.223484	Saurischia
167	Lambeosaurus	Dinosauria, Ornithischia, Genasauria, Cerapoda, Ornithopoda, Euornithopoda, Iguanadontia, Euiguanadontia, Dryomorpha, Ankylopollexia, Iguanodontoidea, Hadrosauridae, Euhadrosauria, Lambeosaurinae, Lambeosaurus	Lambei	9	Cretaceous	Herbivorous	2017-03-24 18:56:22.658906	2017-03-24 18:57:00.240331	Ornithischia
168	Lamaceratops	Dinosauria, Ornithischia, Genasauria, Cerapoda, Marginocephalia, Ceratopsia, Neoceratopsia, Bagaceratopsidae, Lamaceratops	Tereschenkoi	\N	Cretaceous	Herbivorous	2017-03-24 18:56:22.660408	2017-03-24 18:57:00.241751	Ornithischia
169	Kritosaurus	Dinosauria, Ornithischia, Genasauria, Cerapoda, Ornithopoda, Euornithopoda, Iguanadontia, Euiguanadontia, Dryomorpha, Ankylopollexia, Iguanodontoidea, Hadrosauridae, Euhadrosauria, Hadrosaurinae, Kritosaurus	Navajovius	8	Cretaceous	Herbivorous	2017-03-24 18:56:22.661801	2017-03-24 18:57:00.243188	Ornithischia
171	Khaan	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Coelurosauria, Tyrannoraptora, Maniraptoriformes, Maniraptora, Oviraptorosauria, Caenagnathoidea, Oviraptoridae, Ingeniinae, Khaan	Mckennai	1.80000000000000004	Cretaceous	Omnivorous	2017-03-24 18:56:22.664645	2017-03-24 18:57:00.244665	Saurischia
172	Kentrosaurus	Dinosauria, Ornithischia, Genasauria, Thyreophora, Stegosauria, Stegosauridae, Stegosaurinae, Kentrosaurus	Aethiopicus	5	Jurassic	Herbivorous	2017-03-24 18:56:22.666138	2017-03-24 18:56:59.993475	Ornithischia
174	Jobaria	Dinosauria, Saurischia, Sauropodomorpha, Sauropoda, Eusauropoda, Neosauropoda, Macronaria, Jobaria	Tiguidensis	21	Cretaceous	Herbivorous	2017-03-24 18:56:22.669073	2017-03-24 18:57:00.246095	Saurischia
173	Juravenator	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Coelurosauria, Compsognathidae, Juravenator	Starki	0.800000000000000044	Jurassic	Carnivorous	2017-03-24 18:56:22.667572	2017-03-24 18:56:59.99493	Saurischia
176	Jingshanosaurus	Dinosauria, Saurischia, Sauropodomorpha, Prosauropoda, Plateosauria, Jingshanosaurus	Xinwaensis	5	Jurassic	Herbivorous	2017-03-24 18:56:22.671979	2017-03-24 18:56:59.996319	Saurischia
175	Jinzhousaurus	Dinosauria, Ornithischia, Genasauria, Cerapoda, Ornithopoda, Euornithopoda, Iguanadontia, Euiguanadontia, Dryomorpha, Ankylopollexia, Iguanodontoidea, Jinzhousaurus	Yangi	\N	Cretaceous	Herbivorous	2017-03-24 18:56:22.670487	2017-03-24 18:57:00.2477	Ornithischia
177	Jaxartosaurus	Dinosauria, Ornithischia, Genasauria, Cerapoda, Ornithopoda, Euornithopoda, Iguanadontia, Euiguanadontia, Dryomorpha, Ankylopollexia, Iguanodontoidea, Hadrosauridae, Euhadrosauria, Lambeosaurinae, Jaxartosaurus	Aralensis	9	Cretaceous	Herbivorous	2017-03-24 18:56:22.67336	2017-03-24 18:57:00.249429	Ornithischia
178	Janenschia	Dinosauria, Saurischia, Sauropodomorpha, Sauropoda, Eusauropoda, Neosauropoda, Macronaria, Camarasauromorpha, Titanosauriformes, Titanosauria, Janenschia	Robusta	20	Jurassic	Herbivorous	2017-03-24 18:56:22.674809	2017-03-24 18:56:59.997717	Saurischia
179	Isisaurus	Dinosauria, Saurischia, Sauropodomorpha, Sauropoda, Eusauropoda, Neosauropoda, Macronaria, Camarasauromorpha, Titanosauriformes, Titanosauria, Lithostrotia, Isisaurus	Colberti	\N	Cretaceous	Herbivorous	2017-03-24 18:56:22.676222	2017-03-24 18:57:00.250866	Saurischia
188	Huayangosaurus	Dinosauria, Ornithischia, Genasauria, Thyreophora, Stegosauria, Huayangosauridae, Huayangosaurus	Taibaii	4.5	Jurassic	Herbivorous	2017-03-24 18:56:22.68941	2017-03-24 18:56:59.999093	Ornithischia
180	Irritator	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Spinosauroidea, Spinosauridae, Spinosaurinae, Irritator	Challengeri	6.5	Cretaceous	Carnivorous	2017-03-24 18:56:22.677681	2017-03-24 18:57:00.252292	Saurischia
182	Indosuchus	Dinosauria, Saurischia, Theropoda, Neotherapoda, Ceratosauria, Neoceratosauria, Indosuchus	Raptorius	7	Cretaceous	Carnivorous	2017-03-24 18:56:22.680615	2017-03-24 18:57:00.255151	Saurischia
183	Iguanodon	Dinosauria, Ornithischia, Genasauria, Cerapoda, Ornithopoda, Euornithopoda, Iguanadontia, Euiguanadontia, Dryomorpha, Ankylopollexia, Iguanodontoidea, Iguanodon	Bernissartensis	10	Cretaceous	Herbivorous	2017-03-24 18:56:22.68203	2017-03-24 18:57:00.256508	Ornithischia
184	Hypsilophodon	Dinosauria, Ornithischia, Genasauria, Cerapoda, Ornithopoda, Euornithopoda, Hypsilophodontidae, Hypsilophodon	Foxii	2.29999999999999982	Cretaceous	Herbivorous	2017-03-24 18:56:22.683595	2017-03-24 18:57:00.257948	Ornithischia
185	Hypselosaurus	Dinosauria, Saurischia, Sauropodomorpha, Sauropoda, Eusauropoda, Neosauropoda, Macronaria, Camarasauromorpha, Titanosauriformes, Titanosauria, Hypselosaurus	Priscus	12	Cretaceous	Herbivorous	2017-03-24 18:56:22.685001	2017-03-24 18:57:00.259386	Saurischia
186	Hypacrosaurus	Dinosauria, Ornithischia, Genasauria, Cerapoda, Ornithopoda, Euornithopoda, Iguanadontia, Euiguanadontia, Dryomorpha, Ankylopollexia, Iguanodontoidea, Hadrosauridae, Euhadrosauria, Lambeosaurinae, Hypacrosaurus	Altispinus	9	Cretaceous	Herbivorous	2017-03-24 18:56:22.686554	2017-03-24 18:57:00.260795	Ornithischia
187	Hylaeosaurus	Dinosauria, Ornithischia, Genasauria, Thyreophora, Ankylosauromorpha, Ankylosauria, Hylaeosaurus	Armatus	5	Cretaceous	Herbivorous	2017-03-24 18:56:22.688024	2017-03-24 18:57:00.262327	Ornithischia
190	Heterodontosaurus	Dinosauria, Ornithischia, Genasauria, Cerapoda, Heterodontosauridae, Heterodontosaurus	Tucki	1.19999999999999996	Jurassic	Herbivorous	2017-03-24 18:56:22.692278	2017-03-24 18:57:00.000677	Ornithischia
165	Leaellynasaura	Dinosauria, Ornithischia, Genasauria, Cerapoda, Ornithopoda, Euornithopoda, Leaellynasaura	Amicagraphica	2	Cretaceous	Herbivorous	2017-03-24 18:56:22.656026	2017-03-24 18:57:00.238879	Ornithischia
170	Kotasaurus	Dinosauria, Saurischia, Sauropodomorpha, Sauropoda, Kotasaurus	Yamanpalliensis	9	Jurassic	Herbivorous	2017-03-24 18:56:22.663228	2017-03-24 18:56:59.992088	Saurischia
181	Ingenia	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Coelurosauria, Tyrannoraptora, Maniraptoriformes, Maniraptora, Oviraptorosauria, Caenagnathoidea, Oviraptoridae, Ingeniinae, Ingenia	Yanshini	2	Cretaceous	Omnivorous	2017-03-24 18:56:22.679093	2017-03-24 18:57:00.2537	Saurischia
189	Homalocephale	Dinosauria, Ornithischia, Genasauria, Cerapoda, Marginocephalia, Pachycephalosauria, Goyocephala, Homalocephaloidea, Homalocephale	Calathocercos	1.5	Cretaceous	Herbivorous	2017-03-24 18:56:22.690833	2017-03-24 18:57:00.263827	Ornithischia
198	Guaibasaurus	Dinosauria, Saurischia, Theropoda, Guaibasaurus	Candelariensis	1.80000000000000004	Triassic	Herbivorous	2017-03-24 18:56:22.703712	2017-03-24 18:56:59.911698	Saurischia
196	Hadrosaurus	Dinosauria, Ornithischia, Genasauria, Cerapoda, Ornithopoda, Euornithopoda, Iguanadontia, Euiguanadontia, Dryomorpha, Ankylopollexia, Iguanodontoidea, Hadrosauridae, Euhadrosauria, Hadrosaurinae, Hadrosaurus	Foulkii	9	Cretaceous	Herbivorous	2017-03-24 18:56:22.700878	2017-03-24 18:57:00.266658	Ornithischia
197	Guanlong	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Coelurosauria, Tyrannoraptora, Tyrannosauroidea, Guanlong	Wucaii	3	Jurassic	Carnivorous	2017-03-24 18:56:22.702252	2017-03-24 18:57:00.00348	Saurischia
199	Gryposaurus	Dinosauria, Ornithischia, Genasauria, Cerapoda, Ornithopoda, Euornithopoda, Iguanadontia, Euiguanadontia, Dryomorpha, Ankylopollexia, Iguanodontoidea, Hadrosauridae, Euhadrosauria, Hadrosaurinae, Gryposaurus	Notabilis	10	Cretaceous	Herbivorous	2017-03-24 18:56:22.705102	2017-03-24 18:57:00.268035	Ornithischia
204	Giraffatitan	Dinosauria, Saurischia, Sauropodomorpha, Sauropoda, Eusauropoda, Neosauropoda, Macronaria, Camarasauromorpha, Titanosauriformes, Brachiosauridae, Giraffatitan	Brancai	23	Jurassic	Herbivorous	2017-03-24 18:56:22.71218	2017-03-24 18:57:00.004931	Saurischia
216	Euskelosaurus	Dinosauria, Saurischia, Sauropodomorpha, Prosauropoda, Plateosauria, Plateosauridae, Euskelosaurus	Browni	10	Triassic	Omnivorous	2017-03-24 18:56:22.730805	2017-03-24 18:56:59.913132	Saurischia
200	Graciliceratops	Dinosauria, Ornithischia, Genasauria, Cerapoda, Marginocephalia, Ceratopsia, Neoceratopsia, Graciliceratops	Mongoliensis	\N	Cretaceous	Herbivorous	2017-03-24 18:56:22.706554	2017-03-24 18:57:00.269502	Ornithischia
201	Goyocephale	Dinosauria, Ornithischia, Genasauria, Cerapoda, Marginocephalia, Pachycephalosauria, Goyocephala, Goyocephale	Lattimorei	2	Cretaceous	Herbivorous	2017-03-24 18:56:22.707983	2017-03-24 18:57:00.271026	Ornithischia
202	Gorgosaurus	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Coelurosauria, Tyrannoraptora, Tyrannosauroidea, Tyrannosauridae, Albertosaurinae, Gorgosaurus	Libratus	8.59999999999999964	Cretaceous	Carnivorous	2017-03-24 18:56:22.70936	2017-03-24 18:57:00.272484	Saurischia
203	Gobisaurus	Dinosauria, Ornithischia, Genasauria, Thyreophora, Ankylosauromorpha, Ankylosauria, Ankylosauridae, Gobisaurus	Domoculus	5	Cretaceous	Herbivorous	2017-03-24 18:56:22.710763	2017-03-24 18:57:00.273982	Ornithischia
205	Gilmoreosaurus	Dinosauria, Ornithischia, Genasauria, Cerapoda, Ornithopoda, Euornithopoda, Iguanadontia, Euiguanadontia, Dryomorpha, Ankylopollexia, Iguanodontoidea, Hadrosauridae, Gilmoreosaurus	Mongoliensis	6	Cretaceous	Herbivorous	2017-03-24 18:56:22.713719	2017-03-24 18:57:00.275413	Ornithischia
209	Gasosaurus	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Gasosaurus	Constructus	4	Jurassic	Carnivorous	2017-03-24 18:56:22.719878	2017-03-24 18:57:00.006412	Saurischia
206	Giganotosaurus	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Carnosauria, Allosauroidea, Carcharodontosauridae, Giganotosaurus	Carolinii	12.5	Cretaceous	Carnivorous	2017-03-24 18:56:22.715237	2017-03-24 18:57:00.27679	Saurischia
208	Gasparinisaura	Dinosauria, Ornithischia, Genasauria, Cerapoda, Ornithopoda, Euornithopoda, Gasparinisaura	Cincosaltensis	0.800000000000000044	Cretaceous	Herbivorous	2017-03-24 18:56:22.718385	2017-03-24 18:57:00.279581	Ornithischia
210	Garudimimus	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Coelurosauria, Tyrannoraptora, Maniraptoriformes, Ornithomimosauria, Garudimimus	Brevipes	4.70000000000000018	Cretaceous	Omnivorous	2017-03-24 18:56:22.721399	2017-03-24 18:57:00.281031	Saurischia
212	Gallimimus	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Coelurosauria, Tyrannoraptora, Maniraptoriformes, Ornithomimosauria, Ornithomimidae, Gallimimus	Bullatus	6	Cretaceous	Omnivorous	2017-03-24 18:56:22.724731	2017-03-24 18:57:00.282472	Saurischia
211	Gargoyleosaurus	Dinosauria, Ornithischia, Genasauria, Thyreophora, Ankylosauromorpha, Ankylosauria, Gargoyleosaurus	Parkpinorum	4	Jurassic	Herbivorous	2017-03-24 18:56:22.723159	2017-03-24 18:57:00.007834	Ornithischia
213	Fukuisaurus	Dinosauria, Ornithischia, Genasauria, Cerapoda, Ornithopoda, Euornithopoda, Iguanadontia, Euiguanadontia, Dryomorpha, Ankylopollexia, Iguanodontoidea, Fukuisaurus	Tetoriensius	4.70000000000000018	Cretaceous	Herbivorous	2017-03-24 18:56:22.726562	2017-03-24 18:57:00.283951	Ornithischia
215	Eustreptospondylus	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Spinosauroidea, Megalosauridae, Eustreptospondylinae, Eustreptospondylus	Oxoniensis	7	Jurassic	Carnivorous	2017-03-24 18:56:22.729429	2017-03-24 18:57:00.009308	Saurischia
214	Fukuiraptor	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Carnosauria, Fukuiraptor	Kitadaniensis	4.20000000000000018	Cretaceous	Carnivorous	2017-03-24 18:56:22.727956	2017-03-24 18:57:00.28539	Saurischia
195	Hagryphus	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Coelurosauria, Tyrannoraptora, Maniraptoriformes, Maniraptora, Oviraptorosauria, Hagryphus	Giganteus	3	Cretaceous	Omnivorous	2017-03-24 18:56:22.699405	2017-03-24 18:57:00.420171	Saurischia
217	Europasaurus	Dinosauria, Saurischia, Sauropodomorpha, Sauropoda, Eusauropoda, Neosauropoda, Macronaria, Europasaurus	Holgeri	6.20000000000000018	Jurassic	Herbivorous	2017-03-24 18:56:22.732284	2017-03-24 18:57:00.011092	Saurischia
194	Haplocanthosaurus	Dinosauria, Saurischia, Sauropodomorpha, Sauropoda, Eusauropoda, Neosauropoda, Macronaria, Camarasauromorpha, Camarasauridae, Haplocanthosaurus	Priscus	21.5	Jurassic	Herbivorous	2017-03-24 18:56:22.697985	2017-03-24 18:57:00.002141	Saurischia
193	Harpymimus	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Coelurosauria, Tyrannoraptora, Maniraptoriformes, Ornithomimosauria, Harpymimus	Okladnikovi	2	Cretaceous	Omnivorous	2017-03-24 18:56:22.696582	2017-03-24 18:57:00.265184	Saurischia
192	Herrerasaurus	Dinosauria, Saurischia, Theropoda, Herrerasauridae, Herrerasaurus	Ischigualastensis	3	Triassic	Carnivorous	2017-03-24 18:56:22.695198	2017-03-24 18:56:59.910277	Saurischia
207	Gastonia	Dinosauria, Ornithischia, Genasauria, Thyreophora, Ankylosauromorpha, Ankylosauria, Gastonia	Burgei	4.59999999999999964	Cretaceous	Herbivorous	2017-03-24 18:56:22.716773	2017-03-24 18:57:00.27817	Ornithischia
226	Emausaurus	Dinosauria, Ornithischia, Genasauria, Thyreophora, Emausaurus	Ernsti	2	Jurassic	Herbivorous	2017-03-24 18:56:22.744903	2017-03-24 18:57:00.013947	Ornithischia
221	Erketu	Dinosauria, Saurischia, Sauropodomorpha, Sauropoda, Eusauropoda, Neosauropoda, Macronaria, Camarasauromorpha, Titanosauriformes, Titanosauria, Erketu	Ellisoni	15	Cretaceous	Herbivorous	2017-03-24 18:56:22.738047	2017-03-24 18:57:00.288686	Saurischia
222	Equijubus	Dinosauria, Ornithischia, Genasauria, Cerapoda, Ornithopoda, Euornithopoda, Iguanadontia, Euiguanadontia, Dryomorpha, Ankylopollexia, Iguanodontoidea, Equijubus	Normani	\N	Cretaceous	Herbivorous	2017-03-24 18:56:22.739486	2017-03-24 18:57:00.290084	Ornithischia
223	Eotyrannus	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Coelurosauria, Tyrannoraptora, Tyrannosauroidea, Eotyrannus	Lengi	5	Cretaceous	Carnivorous	2017-03-24 18:56:22.740948	2017-03-24 18:57:00.291413	Saurischia
228	Einiosaurus	Dinosauria, Ornithischia, Genasauria, Cerapoda, Marginocephalia, Ceratopsia, Neoceratopsia, Coronosauria, Ceratopsomorpha, Ceratopsidae, Centrosaurinae, Einiosaurus	Procurvicornis	6	Cretaceous	Herbivorous	2017-03-24 18:56:22.747467	2017-03-24 18:57:00.294314	Ornithischia
219	Euhelopus	Dinosauria, Saurischia, Sauropodomorpha, Sauropoda, Eusauropoda, Euhelopus	Zdanskyi	10	Jurassic	Herbivorous	2017-03-24 18:56:22.735115	2017-03-24 18:57:00.012513	Saurischia
229	Edmontosaurus	Dinosauria, Ornithischia, Genasauria, Cerapoda, Ornithopoda, Euornithopoda, Iguanadontia, Euiguanadontia, Dryomorpha, Ankylopollexia, Iguanodontoidea, Hadrosauridae, Euhadrosauria, Hadrosaurinae, Edmontosaurus	Regalis	13	Cretaceous	Herbivorous	2017-03-24 18:56:22.748755	2017-03-24 18:57:00.295762	Ornithischia
227	Elaphrosaurus	Dinosauria, Saurischia, Theropoda, Neotherapoda, Ceratosauria, Neoceratosauria, Elaphrosaurus	Bambergi	6.20000000000000018	Jurassic	Carnivorous	2017-03-24 18:56:22.746167	2017-03-24 18:57:00.015487	Saurischia
231	Dubreuillosaurus	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Spinosauroidea, Megalosauridae, Eustreptospondylinae, Dubreuillosaurus	Valesdunensis	\N	Jurassic	Carnivorous	2017-03-24 18:56:22.751489	2017-03-24 18:57:00.017231	Saurischia
230	Edmontonia	Dinosauria, Ornithischia, Genasauria, Thyreophora, Ankylosauromorpha, Ankylosauria, Nodosauridae, Edmontonia	Longiceps	4	Cretaceous	Herbivorous	2017-03-24 18:56:22.750099	2017-03-24 18:57:00.297202	Ornithischia
232	Dryptosaurus	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Coelurosauria, Tyrannoraptora, Tyrannosauroidea, Dryptosaurus	Aquilunguis	6.40000000000000036	Cretaceous	Carnivorous	2017-03-24 18:56:22.752831	2017-03-24 18:57:00.298686	Saurischia
234	Dromiceiomimus	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Coelurosauria, Tyrannoraptora, Maniraptoriformes, Ornithomimosauria, Ornithomimidae, Dromiceiomimus	Brevitertius	3.5	Cretaceous	Omnivorous	2017-03-24 18:56:22.755739	2017-03-24 18:57:00.300178	Saurischia
233	Dryosaurus	Dinosauria, Ornithischia, Genasauria, Cerapoda, Ornithopoda, Euornithopoda, Iguanadontia, Euiguanadontia, Dryomorpha, Dryosauridae, Dryosaurus	Altus	4	Jurassic	Herbivorous	2017-03-24 18:56:22.754246	2017-03-24 18:57:00.019061	Ornithischia
235	Dromaeosaurus	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Coelurosauria, Tyrannoraptora, Maniraptoriformes, Maniraptora, Paraves, Eumaniraptora, Dromaeosauridae, Dromaeosaurus	Albertensis	1.80000000000000004	Cretaceous	Carnivorous	2017-03-24 18:56:22.757142	2017-03-24 18:57:00.301644	Saurischia
238	Diplodocus	Dinosauria, Saurischia, Sauropodomorpha, Sauropoda, Eusauropoda, Neosauropoda, Diplodocoidea, Diplodocidae, Diplodocus	Longus	26	Jurassic	Herbivorous	2017-03-24 18:56:22.761365	2017-03-24 18:57:00.020928	Saurischia
236	Dravidosaurus	Dinosauria, Ornithischia, Genasauria, Thyreophora, Stegosauria, Stegosauridae, Dravidosaurus	Blanfordi	3	Cretaceous	Herbivorous	2017-03-24 18:56:22.758498	2017-03-24 18:57:00.303083	Ornithischia
237	Dracorex	Dinosauria, Ornithischia, Genasauria, Cerapoda, Marginocephalia, Pachycephalosauria, Goyocephala, Homalocephaloidea, Pachycephalosauridae, Dracorex	Hogwartsia	4	Cretaceous	Herbivorous	2017-03-24 18:56:22.759936	2017-03-24 18:57:00.304527	Ornithischia
242	Deltadromeus	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Coelurosauria, Deltadromeus	Agilis	8.09999999999999964	Cretaceous	Carnivorous	2017-03-24 18:56:22.767053	2017-03-24 18:57:00.307432	Saurischia
244	Deinocheirus	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Coelurosauria, Tyrannoraptora, Maniraptoriformes, Ornithomimosauria, Deinocheirus	Mirificus	10	Cretaceous	Unknown	2017-03-24 18:56:22.769994	2017-03-24 18:57:00.309158	Saurischia
239	Dilophosaurus	Dinosauria, Saurischia, Theropoda, Neotherapoda, Ceratosauria, Coelophysoidea, Dilophosaurus	Wetherilli	6	Jurassic	Carnivorous	2017-03-24 18:56:22.762726	2017-03-24 18:57:00.022644	Saurischia
240	Dicraeosaurus	Dinosauria, Saurischia, Sauropodomorpha, Sauropoda, Eusauropoda, Neosauropoda, Diplodocoidea, Dicraeosauridae, Dicraeosaurus	Hansemanni	20	Jurassic	Herbivorous	2017-03-24 18:56:22.764202	2017-03-24 18:57:00.024265	Saurischia
220	Erlikosaurus	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Coelurosauria, Tyrannoraptora, Maniraptoriformes, Maniraptora, Therizinosauroidea, Therizinosauridae, Erlikosaurus	Andrewsi	3.39999999999999991	Cretaceous	Omnivorous	2017-03-24 18:56:22.73655	2017-03-24 18:57:00.286991	Saurischia
224	Eoraptor	Dinosauria, Saurischia, Theropoda, Eoraptor	Lunensis	1	Triassic	Carnivorous	2017-03-24 18:56:22.742339	2017-03-24 18:56:59.91453	Saurischia
225	Eolambia	Dinosauria, Ornithischia, Genasauria, Cerapoda, Ornithopoda, Euornithopoda, Iguanadontia, Euiguanadontia, Dryomorpha, Ankylopollexia, Iguanodontoidea, Eolambia	Caroljonesa	\N	Cretaceous	Herbivorous	2017-03-24 18:56:22.743703	2017-03-24 18:57:00.292896	Ornithischia
241	Diceratops	Dinosauria, Ornithischia, Genasauria, Cerapoda, Marginocephalia, Ceratopsia, Neoceratopsia, Coronosauria, Ceratopsomorpha, Ceratopsidae, Chasmosaurinae, Diceratops	Hatcheri	7	Cretaceous	Herbivorous	2017-03-24 18:56:22.765682	2017-03-24 18:57:00.305889	Ornithischia
248	Cryolophosaurus	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Carnosauria, Cryolophosaurus	Elliotti	8	Jurassic	Carnivorous	2017-03-24 18:56:22.775729	2017-03-24 18:57:00.027271	Saurischia
252	Compsognathus	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Coelurosauria, Compsognathidae, Compsognathus	Longipes	0.650000000000000022	Jurassic	Carnivorous	2017-03-24 18:56:22.781356	2017-03-24 18:57:00.028705	Saurischia
256	Citipati	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Coelurosauria, Tyrannoraptora, Maniraptoriformes, Maniraptora, Oviraptorosauria, Caenagnathoidea, Oviraptoridae, Oviraptorinae, Citipati	Osmolskae	2.10000000000000009	Cretaceous	Omnivorous	2017-03-24 18:56:22.787252	2017-03-24 18:57:00.314013	Saurischia
258	Chubutisaurus	Dinosauria, Saurischia, Sauropodomorpha, Sauropoda, Eusauropoda, Neosauropoda, Macronaria, Camarasauromorpha, Titanosauriformes, Titanosauria, Chubutisaurus	Insignis	23	Cretaceous	Herbivorous	2017-03-24 18:56:22.790162	2017-03-24 18:57:00.315587	Saurischia
254	Coelurus	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Coelurosauria, Coelurus	Fragilis	1.80000000000000004	Jurassic	Carnivorous	2017-03-24 18:56:22.784203	2017-03-24 18:57:00.030185	Saurischia
255	Coelophysis	Dinosauria, Saurischia, Theropoda, Neotherapoda, Ceratosauria, Coelophysoidea, Coelophysidae, Coelophysis	Bauri	3	Triassic	Carnivorous	2017-03-24 18:56:22.785715	2017-03-24 18:56:59.917447	Saurischia
257	Chungkingosaurus	Dinosauria, Ornithischia, Genasauria, Thyreophora, Stegosauria, Stegosauridae, Stegosaurinae, Chungkingosaurus	Jiangbeiensis	4	Jurassic	Herbivorous	2017-03-24 18:56:22.788784	2017-03-24 18:57:00.031752	Ornithischia
261	Chindesaurus	Dinosauria, Saurischia, Theropoda, Herrerasauridae, Chindesaurus	Bryansmalli	4	Triassic	Carnivorous	2017-03-24 18:56:22.794671	2017-03-24 18:56:59.918863	Saurischia
263	Chasmosaurus	Dinosauria, Ornithischia, Genasauria, Cerapoda, Marginocephalia, Ceratopsia, Neoceratopsia, Coronosauria, Ceratopsomorpha, Ceratopsidae, Chasmosaurinae, Chasmosaurus	Belli	5	Cretaceous	Herbivorous	2017-03-24 18:56:22.797448	2017-03-24 18:57:00.317087	Ornithischia
259	Chirostenotes	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Coelurosauria, Tyrannoraptora, Maniraptoriformes, Maniraptora, Oviraptorosauria, Caenagnathoidea, Caenagnathidae, Chirostenotes	Pergracilis	1.69999999999999996	Jurassic	Omnivorous	2017-03-24 18:56:22.791664	2017-03-24 18:57:00.033394	Saurischia
268	Centrosaurus	Dinosauria, Ornithischia, Genasauria, Cerapoda, Marginocephalia, Ceratopsia, Neoceratopsia, Coronosauria, Ceratopsomorpha, Ceratopsidae, Centrosaurinae, Centrosaurus	Apertus	6	Cretaceous	Herbivorous	2017-03-24 18:56:22.805257	2017-03-24 18:57:00.318676	Ornithischia
260	Chinshakiangosaurus	Dinosauria, Saurischia, Sauropodomorpha, Sauropoda, Chinshakiangosaurus	Zhongheensis	11	Jurassic	Herbivorous	2017-03-24 18:56:22.793122	2017-03-24 18:57:00.034836	Saurischia
264	Chaoyangsaurus	Dinosauria, Ornithischia, Genasauria, Cerapoda, Marginocephalia, Ceratopsia, Neoceratopsia, Chaoyangsaurus	Youngi	1.10000000000000009	Jurassic	Herbivorous	2017-03-24 18:56:22.798821	2017-03-24 18:57:00.037658	Ornithischia
247	Dacentrurus	Dinosauria, Ornithischia, Genasauria, Thyreophora, Stegosauria, Stegosauridae, Dacentrurus	Armatus	6	Jurassic	Herbivorous	2017-03-24 18:56:22.774294	2017-03-24 18:57:00.025796	Ornithischia
265	Cetiosaurus	Dinosauria, Saurischia, Sauropodomorpha, Sauropoda, Eusauropoda, Cetiosauridae, Cetiosaurus	Oxoniensis	18	Jurassic	Herbivorous	2017-03-24 18:56:22.800135	2017-03-24 18:57:00.039129	Saurischia
270	Caudipteryx	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Coelurosauria, Tyrannoraptora, Maniraptoriformes, Maniraptora, Oviraptorosauria, Caudipterygidae, Caudipteryx	Zoui	1	Cretaceous	Omnivorous	2017-03-24 18:56:22.808415	2017-03-24 18:57:00.322151	Saurischia
266	Cetiosauriscus	Dinosauria, Saurischia, Sauropodomorpha, Sauropoda, Eusauropoda, Neosauropoda, Diplodocoidea, Cetiosauriscus	Stewarti	15	Jurassic	Herbivorous	2017-03-24 18:56:22.801469	2017-03-24 18:57:00.040531	Saurischia
267	Ceratosaurus	Dinosauria, Saurischia, Theropoda, Neotherapoda, Ceratosauria, Neoceratosauria, Ceratosaurus	Nasicornis	6	Jurassic	Carnivorous	2017-03-24 18:56:22.803094	2017-03-24 18:57:00.041981	Saurischia
249	Corythosaurus	Dinosauria, Ornithischia, Genasauria, Cerapoda, Ornithopoda, Euornithopoda, Iguanadontia, Euiguanadontia, Dryomorpha, Ankylopollexia, Iguanodontoidea, Hadrosauridae, Euhadrosauria, Lambeosaurinae, Corythosaurus	Casuarius	10	Cretaceous	Herbivorous	2017-03-24 18:56:22.777135	2017-03-24 18:57:00.310666	Ornithischia
251	Conchoraptor	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Coelurosauria, Tyrannoraptora, Maniraptoriformes, Maniraptora, Oviraptorosauria, Caenagnathoidea, Oviraptoridae, Ingeniinae, Conchoraptor	Gracilis	1.5	Cretaceous	Carnivorous	2017-03-24 18:56:22.779929	2017-03-24 18:57:00.312369	Saurischia
271	Carnotaurus	Dinosauria, Saurischia, Theropoda, Neotherapoda, Ceratosauria, Neoceratosauria, Abelisauridae, Carnotaurus	Sastrei	7.59999999999999964	Cretaceous	Carnivorous	2017-03-24 18:56:22.809799	2017-03-24 18:57:00.323722	Saurischia
272	Carcharodontosaurus	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Carnosauria, Allosauroidea, Carcharodontosauridae, Carcharodontosaurus	Saharicus	15	Cretaceous	Carnivorous	2017-03-24 18:56:22.811154	2017-03-24 18:57:00.325237	Saurischia
253	Coloradisaurus	Dinosauria, Saurischia, Sauropodomorpha, Prosauropoda, Plateosauria, Plateosauridae, Coloradisaurus	Brevis	4	Triassic	Omnivorous	2017-03-24 18:56:22.782818	2017-03-24 18:56:59.915996	Saurischia
262	Chialingosaurus	Dinosauria, Ornithischia, Genasauria, Thyreophora, Stegosauria, Stegosauridae, Stegosaurinae, Chialingosaurus	Kuani	4	Jurassic	Herbivorous	2017-03-24 18:56:22.796062	2017-03-24 18:57:00.03625	Ornithischia
269	Cedarpelta	Dinosauria, Ornithischia, Genasauria, Thyreophora, Ankylosauromorpha, Ankylosauria, Ankylosauridae, Cedarpelta	Bilbeyhallorum	10	Cretaceous	Herbivorous	2017-03-24 18:56:22.806929	2017-03-24 18:57:00.320492	Ornithischia
277	Brachytrachelopan	Dinosauria, Saurischia, Sauropodomorpha, Sauropoda, Eusauropoda, Neosauropoda, Diplodocoidea, Dicraeosauridae, Brachytrachelopan	Mesai	10	Jurassic	Herbivorous	2017-03-24 18:56:22.818235	2017-03-24 18:57:00.044909	Saurischia
276	Bugenasaura	Dinosauria, Ornithischia, Genasauria, Cerapoda, Ornithopoda, Euornithopoda, Bugenasaura	Infernalis	\N	Cretaceous	Herbivorous	2017-03-24 18:56:22.816766	2017-03-24 18:57:00.328278	Ornithischia
278	Brachylophosaurus	Dinosauria, Ornithischia, Genasauria, Cerapoda, Ornithopoda, Euornithopoda, Iguanadontia, Euiguanadontia, Dryomorpha, Ankylopollexia, Iguanodontoidea, Hadrosauridae, Euhadrosauria, Hadrosaurinae, Brachylophosaurus	Canadensis	7	Cretaceous	Herbivorous	2017-03-24 18:56:22.819667	2017-03-24 18:57:00.329969	Ornithischia
280	Brachiosaurus	Dinosauria, Saurischia, Sauropodomorpha, Sauropoda, Eusauropoda, Neosauropoda, Macronaria, Camarasauromorpha, Titanosauriformes, Brachiosauridae, Brachiosaurus	Altithorax	30	Jurassic	Herbivorous	2017-03-24 18:56:22.822651	2017-03-24 18:57:00.046693	Saurischia
279	Brachyceratops	Dinosauria, Ornithischia, Genasauria, Cerapoda, Marginocephalia, Ceratopsia, Neoceratopsia, Coronosauria, Ceratopsomorpha, Ceratopsidae, Centrosaurinae, Brachyceratops	Montanensis	2	Cretaceous	Herbivorous	2017-03-24 18:56:22.82117	2017-03-24 18:57:00.331577	Ornithischia
281	Borogovia	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Coelurosauria, Tyrannoraptora, Maniraptoriformes, Maniraptora, Paraves, Eumaniraptoria, Troodontidae, Borogovia	Gracilicrus	1.5	Cretaceous	Carnivorous	2017-03-24 18:56:22.824139	2017-03-24 18:57:00.333244	Saurischia
282	Bellusaurus	Dinosauria, Saurischia, Sauropodomorpha, Sauropoda, Eusauropoda, Neosauropoda, Macronaria, Bellusaurus	Sui	5	Jurassic	Herbivorous	2017-03-24 18:56:22.825576	2017-03-24 18:57:00.048378	Saurischia
283	Beipiaosaurus	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Coelurosauria, Tyrannoraptora, Maniraptoriformes, Maniraptora, Therizinosauroidea, Beipiaosaurus	Inexpectus	2	Cretaceous	Omnivorous	2017-03-24 18:56:22.827038	2017-03-24 18:57:00.334663	Saurischia
286	Barosaurus	Dinosauria, Saurischia, Sauropodomorpha, Sauropoda, Eusauropoda, Neosauropoda, Diplodocoidea, Diplodocidae, Barosaurus	Lentus	24	Jurassic	Herbivorous	2017-03-24 18:56:22.832673	2017-03-24 18:57:00.049939	Saurischia
284	Becklespinax	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Becklespinax	Altispinax	5	Cretaceous	Carnivorous	2017-03-24 18:56:22.828603	2017-03-24 18:57:00.336127	Saurischia
285	Baryonyx	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Spinosauroidea, Spinosauridae, Baryonychinae, Baryonyx	Walkeri	10	Cretaceous	Carnivorous	2017-03-24 18:56:22.830846	2017-03-24 18:57:00.337578	Saurischia
288	Bambiraptor	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Coelurosauria, Tyrannoraptora, Maniraptoriformes, Maniraptora, Paraves, Eumaniraptora, Dromaeosauridae, Bambiraptor	Feinbergorum	1	Cretaceous	Carnivorous	2017-03-24 18:56:22.836155	2017-03-24 18:57:00.33904	Saurischia
287	Barapasaurus	Dinosauria, Saurischia, Sauropodomorpha, Sauropoda, Eusauropoda, Cetiosauridae, Barapasaurus	Tagorei	14	Jurassic	Herbivorous	2017-03-24 18:56:22.834494	2017-03-24 18:57:00.051515	Saurischia
275	Buitreraptor	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Coelurosauria, Tyrannoraptora, Maniraptoriformes, Maniraptora, Paraves, Eumaniraptora, Dromaeosauridae, Unenlagiinae, Buitreraptor	Gonzalezorum	1.30000000000000004	Cretaceous	Carnivorous	2017-03-24 18:56:22.815285	2017-03-24 18:57:00.326696	Saurischia
289	Bagaceratops	Dinosauria, Ornithischia, Genasauria, Cerapoda, Marginocephalia, Ceratopsia, Neoceratopsia, Bagaceratopsidae, Bagaceratops	Rozhdestvenskyi	1	Cretaceous	Herbivorous	2017-03-24 18:56:22.837744	2017-03-24 18:57:00.340522	Ornithischia
292	Avimimus	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Coelurosauria, Tyrannoraptora, Maniraptoriformes, Maniraptora, Oviraptorosauria, Avimimidae, Avimimus	Portentosus	1.5	Cretaceous	Omnivorous	2017-03-24 18:56:22.842481	2017-03-24 18:57:00.343424	Saurischia
294	Avaceratops	Dinosauria, Ornithischia, Genasauria, Cerapoda, Marginocephalia, Ceratopsia, Neoceratopsia, Coronosauria, Ceratopsomorpha, Ceratopsidae, Centrosaurinae, Avaceratops	Lammersi	2.29999999999999982	Cretaceous	Herbivorous	2017-03-24 18:56:22.845449	2017-03-24 18:57:00.345023	Ornithischia
293	Avalonia	Dinosauria, Saurischia, Sauropodomorpha, Prosauropoda, Anchisauria, Melanorosauridae, Avalonia	Sanfordi	9	Triassic	Omnivorous	2017-03-24 18:56:22.84398	2017-03-24 18:56:59.921774	Saurischia
295	Austrosaurus	Dinosauria, Saurischia, Sauropodomorpha, Sauropoda, Eusauropoda, Neosauropoda, Macronaria, Camarasauromorpha, Titanosauriformes, Titanosauria, Austrosaurus	Mckillopi	15	Cretaceous	Herbivorous	2017-03-24 18:56:22.846994	2017-03-24 18:57:00.346715	Saurischia
274	Camarasaurus	Dinosauria, Saurischia, Sauropodomorpha, Sauropoda, Eusauropoda, Neosauropoda, Macronaria, Camarasauromorpha, Camarasauridae, Camarasaurus	Supremus	23	Jurassic	Herbivorous	2017-03-24 18:56:22.813895	2017-03-24 18:57:00.043377	Saurischia
296	Aucasaurus	Dinosauria, Saurischia, Theropoda, Neotherapoda, Ceratosauria, Neoceratosauria, Abelisauroidea, Abelisauria, Aucasaurus	Garridoi	5	Cretaceous	Carnivorous	2017-03-24 18:56:22.848376	2017-03-24 18:57:00.348292	Saurischia
297	Atlascopcosaurus	Dinosauria, Ornithischia, Genasauria, Cerapoda, Ornithopoda, Euornithopoda, Atlascopcosaurus	Loadsi	3	Cretaceous	Herbivorous	2017-03-24 18:56:22.849785	2017-03-24 18:57:00.350017	Ornithischia
298	Arrhinoceratops	Dinosauria, Ornithischia, Genasauria, Cerapoda, Marginocephalia, Ceratopsia, Neoceratopsia, Coronosauria, Ceratopsomorpha, Ceratopsidae, Chasmosaurinae, Arrhinoceratops	Brachyops	6	Cretaceous	Herbivorous	2017-03-24 18:56:22.851208	2017-03-24 18:57:00.351447	Ornithischia
291	Azendohsaurus	Dinosauria, Saurischia, Sauropodomorpha, Prosauropoda, Azendohsaurus	Laaroussi	1.80000000000000004	Triassic	Omnivorous	2017-03-24 18:56:22.841033	2017-03-24 18:56:59.920309	Saurischia
290	Bactrosaurus	Dinosauria, Ornithischia, Genasauria, Cerapoda, Ornithopoda, Euornithopoda, Iguanadontia, Euiguanadontia, Dryomorpha, Ankylopollexia, Iguanodontoidea, Hadrosauridae, Bactrosaurus	Johnsoni	6	Cretaceous	Herbivorous	2017-03-24 18:56:22.839389	2017-03-24 18:57:00.341992	Ornithischia
302	Archaeoceratops	Dinosauria, Ornithischia, Genasauria, Cerapoda, Marginocephalia, Ceratopsia, Neoceratopsia, Archaeoceratops	Oshimai	1.30000000000000004	Cretaceous	Herbivorous	2017-03-24 18:56:22.857545	2017-03-24 18:57:00.354655	Ornithischia
303	Aralosaurus	Dinosauria, Ornithischia, Genasauria, Cerapoda, Ornithopoda, Euornithopoda, Iguanadontia, Euiguanadontia, Dryomorpha, Ankylopollexia, Iguanodontoidea, Hadrosauridae, Euhadrosauria, Hadrosaurinae, Aralosaurus	Tuberiferus	8	Cretaceous	Herbivorous	2017-03-24 18:56:22.859345	2017-03-24 18:57:00.356379	Ornithischia
304	Aragosaurus	Dinosauria, Saurischia, Sauropodomorpha, Sauropoda, Eusauropoda, Aragosaurus	Ischiadicus	18	Cretaceous	Herbivorous	2017-03-24 18:56:22.861019	2017-03-24 18:57:00.357824	Saurischia
306	Antarctosaurus	Dinosauria, Saurischia, Sauropodomorpha, Sauropoda, Eusauropoda, Neosauropoda, Macronaria, Camarasauromorpha, Titanosauriformes, Titanosauria, Lithostrotia, Antarctosaurus	Wichmannianus	18	Cretaceous	Herbivorous	2017-03-24 18:56:22.864427	2017-03-24 18:57:00.359241	Saurischia
310	Anchisaurus	Dinosauria, Saurischia, Sauropodomorpha, Prosauropoda, Anchisauria, Anchisauridae, Anchisaurus	Polyzelous	2	Jurassic	Herbivorous	2017-03-24 18:56:22.871099	2017-03-24 18:57:00.054583	Saurischia
307	Antarctopelta	Dinosauria, Ornithischia, Genasauria, Thyreophora, Ankylosauromorpha, Ankylosauria, Antarctopelta	Oliveroi	4	Cretaceous	Herbivorous	2017-03-24 18:56:22.866182	2017-03-24 18:57:00.360697	Ornithischia
309	Ankylosaurus	Dinosauria, Ornithischia, Genasauria, Thyreophora, Ankylosauromorpha, Ankylosauria, Ankylosauridae, Ankylosaurus	Magniventris	7	Cretaceous	Herbivorous	2017-03-24 18:56:22.869375	2017-03-24 18:57:00.363578	Ornithischia
311	Anchiceratops	Dinosauria, Ornithischia, Genasauria, Cerapoda, Marginocephalia, Ceratopsia, Neoceratopsia, Coronosauria, Ceratopsomorpha, Ceratopsidae, Chasmosaurinae, Anchiceratops	Ornatus	6	Cretaceous	Herbivorous	2017-03-24 18:56:22.876877	2017-03-24 18:57:00.365064	Ornithischia
312	Anatotitan	Dinosauria, Ornithischia, Genasauria, Cerapoda, Ornithopoda, Euornithopoda, Iguanadontia, Euiguanadontia, Dryomorpha, Ankylopollexia, Iguanodontoidea, Hadrosauridae, Euhadrosauria, Hadrosaurinae, Anatotitan	Copei	9	Cretaceous	Herbivorous	2017-03-24 18:56:22.878329	2017-03-24 18:57:00.36651	Ornithischia
313	Amygdalodon	Dinosauria, Saurischia, Sauropodomorpha, Sauropoda, Eusauropoda, Amygdalodon	Patagonicus	15	Jurassic	Herbivorous	2017-03-24 18:56:22.879699	2017-03-24 18:57:00.056285	Saurischia
314	Ampelosaurus	Dinosauria, Saurischia, Sauropodomorpha, Sauropoda, Eusauropoda, Neosauropoda, Macronaria, Camarasauromorpha, Titanosauriformes, Titanosauria, Lithostrotia, Ampelosaurus	Atacis	15	Cretaceous	Herbivorous	2017-03-24 18:56:22.88125	2017-03-24 18:57:00.368019	Saurischia
316	Amargasaurus	Dinosauria, Saurischia, Sauropodomorpha, Sauropoda, Eusauropoda, Neosauropoda, Diplodocoidea, Dicraeosauridae, Amargasaurus	Cazaui	12	Cretaceous	Herbivorous	2017-03-24 18:56:22.884531	2017-03-24 18:57:00.369435	Saurischia
315	Ammosaurus	Dinosauria, Saurischia, Sauropodomorpha, Prosauropoda, Anchisauria, Anchisauridae, Ammosaurus	Major	5	Jurassic	Herbivorous	2017-03-24 18:56:22.882982	2017-03-24 18:57:00.057646	Saurischia
317	Alvarezsaurus	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Coelurosauria, Tyrannoraptora, Maniraptoriformes, Maniraptora, Alvarezsauridae, Alvarezsaurus	Calvoi	2	Cretaceous	Carnivorous	2017-03-24 18:56:22.886436	2017-03-24 18:57:00.370958	Saurischia
318	Allosaurus	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Carnosauria, Allosauroidea, Allosauridae, Allosaurus	Fragilis	12	Jurassic	Carnivorous	2017-03-24 18:56:22.888081	2017-03-24 18:57:00.05901	Saurischia
319	Alioramus	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Coelurosauria, Tyrannoraptora, Tyrannosauroidea, Alioramus	Remotus	6	Cretaceous	Carnivorous	2017-03-24 18:56:22.889601	2017-03-24 18:57:00.372421	Saurischia
320	Alectrosaurus	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Coelurosauria, Tyrannoraptora, Tyrannosauroidea, Alectrosaurus	Olseni	5	Cretaceous	Carnivorous	2017-03-24 18:56:22.891279	2017-03-24 18:57:00.374049	Saurischia
324	Agilisaurus	Dinosauria, Ornithischia, Genasauria, Cerapoda, Ornithopoda, Euornithopoda, Agilisaurus	Louderbacki	1.5	Jurassic	Herbivorous	2017-03-24 18:56:22.897323	2017-03-24 18:57:00.060431	Ornithischia
322	Albertaceratops	Dinosauria, Ornithischia, Albertaceratops	Nesmoi	7	Cretaceous	Herbivorous	2017-03-24 18:56:22.894408	2017-03-24 18:57:00.377619	Ornithischia
323	Alamosaurus	Dinosauria, Saurischia, Sauropodomorpha, Sauropoda, Eusauropoda, Neosauropoda, Macronaria, Camarasauromorpha, Titanosauriformes, Titanosauria, Lithostrotia, Alamosaurus	Sanjuanensis	21	Cretaceous	Herbivorous	2017-03-24 18:56:22.895921	2017-03-24 18:57:00.379379	Saurischia
325	Afrovenator	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Spinosauroidea, Megalosauridae, Eustreptospondylinae, Afrovenator	Abakensis	9	Cretaceous	Carnivorous	2017-03-24 18:56:22.898795	2017-03-24 18:57:00.38107	Saurischia
300	Archaeornithomimus	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Coelurosauria, Tyrannoraptora, Maniraptoriformes, Ornithomimosauria, Ornithomimidae, Archaeornithomimus	Asiaticus	3.5	Cretaceous	Carnivorous	2017-03-24 18:56:22.85425	2017-03-24 18:57:00.353021	Saurischia
305	Apatosaurus	Dinosauria, Saurischia, Sauropodomorpha, Sauropoda, Eusauropoda, Neosauropoda, Diplodocoidea, Diplodocidae, Apatosaurus	Ajax	21	Jurassic	Herbivorous	2017-03-24 18:56:22.862552	2017-03-24 18:57:00.05304	Saurischia
308	Anserimimus	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Coelurosauria, Tyrannoraptora, Maniraptoriformes, Ornithomimosauria, Ornithomimidae, Anserimimus	Planinychus	3.5	Cretaceous	Carnivorous	2017-03-24 18:56:22.867829	2017-03-24 18:57:00.362184	Saurischia
321	Albertosaurus	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Coelurosauria, Tyrannoraptora, Tyrannosauroidea, Tyrannosauridae, Albertosaurinae, Albertosaurus	Libratus	9	Cretaceous	Carnivorous	2017-03-24 18:56:22.892901	2017-03-24 18:57:00.375952	Saurischia
329	Achelousaurus	Dinosauria, Ornithischia, Genasauria, Cerapoda, Marginocephalia, Ceratopsia, Neoceratopsia, Coronosauria, Ceratopsomorpha, Ceratopsidae, Centrosaurinae, Achelousaurus	Horneri	6	Cretaceous	Herbivorous	2017-03-24 18:56:22.9055	2017-03-24 18:57:00.408033	Ornithischia
330	Abelisaurus	Dinosauria, Saurischia, Theropoda, Neotherapoda, Ceratosauria, Neoceratosauria, Abelisauridae, Abelisaurinae, Abelisaurus	Comahuensis	9	Cretaceous	Carnivorous	2017-03-24 18:56:22.906978	2017-03-24 18:57:00.414094	Saurischia
1	Zuniceratops	Dinosauria, Ornithischia, Genasauria, Cerapoda, Marginocephalia, Ceratopsia, Neoceratopsia, Coronosauria, Ceratopsomorpha, Zuniceratops	Christopheri	\N	Cretaceous	Herbivorous	2017-03-24 18:56:22.379821	2017-03-24 18:57:00.38264	Ornithischia
166	Lapparentosaurus	Dinosauria, Saurischia, Sauropodomorpha, Sauropoda, Eusauropoda, Neosauropoda, Macronaria, Camarasauromorpha, Titanosauriformes, Lapparentosaurus	Madagascariensis	\N	Jurassic	Herbivorous	2017-03-24 18:56:22.657457	2017-03-24 18:57:00.061772	Saurischia
191	Hesperosaurus	Dinosauria, Ornithischia, Genasauria, Thyreophora, Stegosauria, Stegosauridae, Stegosaurinae, Hesperosaurus	Mjosi	6	Jurassic	Herbivorous	2017-03-24 18:56:22.693717	2017-03-24 18:57:00.06344	Ornithischia
273	Camptosaurus	Dinosauria, Ornithischia, Genasauria, Cerapoda, Ornithopoda, Euornithopoda, Iguanadontia, Euiguanadontia, Dryomorpha, Ankylopollexia, Camptosaurus	Dispar	5	Jurassic	Herbivorous	2017-03-24 18:56:22.812494	2017-03-24 18:57:00.065434	Ornithischia
331	Aardonyx	Dinosauria, Saurischia, Sauropodomorpha, Prosauropoda, Anchisauria, Aardonyx	Celestae	8	Jurassic	Herbivorous	2017-03-24 18:56:22.908402	2017-03-24 18:57:00.066825	Saurischia
22	Tsintaosaurus	Dinosauria, Ornithischia, Genasauria, Cerapoda, Ornithopoda, Euornithopoda, Iguanadontia, Euiguanadontia, Dryomorpha, Ankylopollexia, Iguanodontoidea, Hadrosauridae, Euhadrosauria, Lambeosaurinae, Tsintaosaurus	Spinorhinus	12	Cretaceous	Herbivorous	2017-03-24 18:56:22.412948	2017-03-24 18:57:00.384175	Ornithischia
29	Therizinosaurus	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Coelurosauria, Tyrannoraptora, Maniraptoriformes, Maniraptora, Therizinosauroidea, Therizinosauridae, Therizinosaurus	Cheloniformis	\N	Cretaceous	Unknown	2017-03-24 18:56:22.423472	2017-03-24 18:57:00.385694	Saurischia
56	Shuvuuia	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Coelurosauria, Tyrannoraptora, Maniraptoriformes, Maniraptora, Alvarezsauridae, Shuvuuia	Deserti	0.599999999999999978	Cretaceous	Omnivorous	2017-03-24 18:56:22.470471	2017-03-24 18:57:00.387136	Saurischia
77	Rinchenia	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Coelurosauria, Tyrannoraptora, Maniraptoriformes, Maniraptora, Oviraptorosauria, Caenagnathoidea, Oviraptoridae, Oviraptorinae, Rinchenia	Mongoliensis	2.5	Cretaceous	Omnivorous	2017-03-24 18:56:22.504257	2017-03-24 18:57:00.388584	Saurischia
84	Protoceratops	Dinosauria, Ornithischia, Genasauria, Cerapoda, Marginocephalia, Ceratopsia, Neoceratopsia, Coronosauria, Protoceratops	Andrewsi	1.80000000000000004	Cretaceous	Herbivorous	2017-03-24 18:56:22.515421	2017-03-24 18:57:00.390079	Ornithischia
85	Protarchaeopteryx	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Coelurosauria, Tyrannoraptora, Maniraptoriformes, Maniraptora, Paraves, Eumaniraptora, Protarchaeopteryx	Robusta	2	Cretaceous	Carnivorous	2017-03-24 18:56:22.516965	2017-03-24 18:57:00.391639	Saurischia
111	Oviraptor	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Coelurosauria, Tyrannoraptora, Maniraptoriformes, Maniraptora, Oviraptorosauria, Caenagnathoidea, Oviraptoridae, Oviraptorinae, Oviraptor	Philoceratops	2	Cretaceous	Omnivorous	2017-03-24 18:56:22.560895	2017-03-24 18:57:00.39317	Saurischia
137	Microraptor	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Coelurosauria, Tyrannoraptora, Maniraptoriformes, Maniraptora, Paraves, Eumaniraptora, Dromaeosauridae, Microraptor	Zhaoianus	0.800000000000000044	Cretaceous	Unknown	2017-03-24 18:56:22.610728	2017-03-24 18:57:00.394711	Saurischia
164	Leptoceratops	Dinosauria, Ornithischia, Genasauria, Cerapoda, Marginocephalia, Ceratopsia, Neoceratopsia, Coronosauria, Leptoceratops	Gracilis	3	Cretaceous	Herbivorous	2017-03-24 18:56:22.654589	2017-03-24 18:57:00.396138	Ornithischia
218	Euoplocephalus	Dinosauria, Ornithischia, Genasauria, Thyreophora, Ankylosauromorpha, Ankylosauria, Ankylosauridae, Euoplocephalus	Tutus	7	Cretaceous	Herbivorous	2017-03-24 18:56:22.733666	2017-03-24 18:57:00.397615	Ornithischia
243	Deinonychus	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Coelurosauria, Tyrannoraptora, Maniraptoriformes, Maniraptora, Paraves, Eumaniraptora, Dromaeosauridae, Deinonychus	Antirrhopus	3	Cretaceous	Carnivorous	2017-03-24 18:56:22.768545	2017-03-24 18:57:00.399086	Saurischia
246	Daspletosaurus	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Coelurosauria, Tyrannoraptora, Tyrannosauroidea, Tyrannosauridae, Tyrannosaurinae, Daspletosaurus	Torosus	9	Cretaceous	Carnivorous	2017-03-24 18:56:22.7729	2017-03-24 18:57:00.400586	Saurischia
250	Confuciusornis	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Coelurosauria, Tyrannoraptora, Maniraptoriformes, Maniraptora, Paraves, Eumaniraptoria, Avialae, Ornithurae, Avibrevicauda, Pygostylia, Confuciusornithidae, Confuciusornis	Sanctus	0.25	Cretaceous	Carnivorous	2017-03-24 18:56:22.778501	2017-03-24 18:57:00.402093	Saurischia
299	Argentinosaurus	Dinosauria, Saurischia, Sauropodomorpha, Sauropoda, Eusauropoda, Neosauropoda, Macronaria, Camarasauromorpha, Titanosauriformes, Titanosauria, Argentinosaurus	Huinculensis	35	Cretaceous	Herbivorous	2017-03-24 18:56:22.852723	2017-03-24 18:57:00.403614	Saurischia
327	Acrocanthosaurus	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Carnosauria, Allosauroidea, Carcharodontosauridae, Acrocanthosaurus	Atokensis	12	Cretaceous	Carnivorous	2017-03-24 18:56:22.902324	2017-03-24 18:57:00.405087	Saurischia
328	Achillobator	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Coelurosauria, Tyrannoraptora, Maniraptoriformes, Maniraptora, Paraves, Eumaniraptora, Dromaeosauridae, Achillobator	Giganteus	5	Cretaceous	Carnivorous	2017-03-24 18:56:22.903977	2017-03-24 18:57:00.406547	Saurischia
301	Archaeopteryx	Dinosauria, Saurischia, Theropoda, Neotherapoda, Tetanurae, Avetherapoda, Coelurosauria, Tyrannoraptora, Maniraptoriformes, Maniraptora, Paraves, Eumaniraptoria, Avialae, Archaeopterygidae, Archaeopteryx	Lithographica	0.5	Jurassic	Carnivorous	2017-03-24 18:56:22.855979	2017-03-24 18:57:00.068365	Saurischia
326	Aegyptosaurus	Dinosauria, Saurischia, Sauropodomorpha, Sauropoda, Eusauropoda, Neosauropoda, Macronaria, Camarasauromorpha, Titanosauriformes, Titanosauria, Aegyptosaurus	Baharijensis	15	Cretaceous	Herbivorous	2017-03-24 18:56:22.900583	2017-03-24 18:57:00.415445	Saurischia
\.


--
-- Name: dinos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('dinos_id_seq', 331, true);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY schema_migrations (version) FROM stdin;
20170323183334
20170323200701
20170323211610
\.


--
-- Name: ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: dinos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY dinos
    ADD CONSTRAINT dinos_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

