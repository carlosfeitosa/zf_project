--
-- PostgreSQL database dump
--

-- Dumped from database version 8.3.17
-- Dumped by pg_dump version 9.1.3
-- Started on 2012-04-23 15:37:30 BRT

SET statement_timeout = 0;
SET client_encoding = 'UTF-8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

--
-- TOC entry 40 (class 2615 OID 59234286)
-- Name: basico_dicionario_dados; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_dicionario_dados;


--
-- TOC entry 2524 (class 0 OID 0)
-- Dependencies: 40
-- Name: SCHEMA basico_dicionario_dados; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA basico_dicionario_dados IS 'Tabelas de uso específico ("dicionario de dados") do móduo BÁSICO.';


SET search_path = basico_dicionario_dados, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 338 (class 1259 OID 59261256)
-- Dependencies: 2477 2478 2479 2480 2481 2482 2483 2484 2485 40
-- Name: assoc_field; Type: TABLE; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

CREATE TABLE assoc_field (
    id integer NOT NULL,
    id_assoc_table integer NOT NULL,
    fieldname character varying(100) NOT NULL,
    constante_textual character varying(200) NOT NULL,
    constante_textual_descricao character varying(200),
    constante_textual_alias character varying(200),
    tipo character varying(100),
    tamanho integer,
    precisao character varying(50),
    fk_tabela character varying(100),
    fk_campo character varying(100),
    indice boolean DEFAULT false,
    check_constraint character varying(1000),
    "unique" boolean DEFAULT false,
    nullable boolean DEFAULT false,
    valor_default character varying(500),
    readonly boolean DEFAULT false,
    ativo boolean DEFAULT false NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT assoc_field_constante_textual_check CHECK ((basico.fn_checkconstantetextualexists(constante_textual) IS NOT NULL)),
    CONSTRAINT assoc_field_constante_textual_descricao_check CHECK (((constante_textual_descricao IS NULL) OR (basico.fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL)))
);


--
-- TOC entry 337 (class 1259 OID 59261254)
-- Dependencies: 338 40
-- Name: assoc_field_id_seq; Type: SEQUENCE; Schema: basico_dicionario_dados; Owner: -
--

CREATE SEQUENCE assoc_field_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 2525 (class 0 OID 0)
-- Dependencies: 337
-- Name: assoc_field_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_dicionario_dados; Owner: -
--

ALTER SEQUENCE assoc_field_id_seq OWNED BY assoc_field.id;


--
-- TOC entry 336 (class 1259 OID 59261240)
-- Dependencies: 2471 2472 2473 2474 2475 40
-- Name: assoc_table; Type: TABLE; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

CREATE TABLE assoc_table (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    id_schema integer NOT NULL,
    id_fk_default integer,
    tablename character varying(100) NOT NULL,
    constante_textual character varying(200) NOT NULL,
    constante_textual_descricao character varying(200),
    constante_textual_alias character varying(200),
    quantidade_campos integer,
    check_constraint character varying(1000),
    ativo boolean DEFAULT false NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT assoc_table_constante_textual_check CHECK ((basico.fn_checkconstantetextualexists(constante_textual) IS NOT NULL)),
    CONSTRAINT assoc_table_constante_textual_descricao_check CHECK (((constante_textual_descricao IS NULL) OR (basico.fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL)))
);


--
-- TOC entry 335 (class 1259 OID 59261238)
-- Dependencies: 336 40
-- Name: assoc_table_id_seq; Type: SEQUENCE; Schema: basico_dicionario_dados; Owner: -
--

CREATE SEQUENCE assoc_table_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 2526 (class 0 OID 0)
-- Dependencies: 335
-- Name: assoc_table_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_dicionario_dados; Owner: -
--

ALTER SEQUENCE assoc_table_id_seq OWNED BY assoc_table.id;


--
-- TOC entry 334 (class 1259 OID 59261224)
-- Dependencies: 2465 2466 2467 2468 2469 40
-- Name: assoccl_fk; Type: TABLE; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

CREATE TABLE assoccl_fk (
    id integer NOT NULL,
    id_assoc_table integer NOT NULL,
    id_assoc_field integer NOT NULL,
    id_assoc_field_fk integer NOT NULL,
    metodo_recuperacao character varying(1000),
    constante_textual character varying(200) NOT NULL,
    constante_textual_descricao character varying(200),
    constante_textual_alias character varying(200),
    ativo boolean DEFAULT false NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT assoccl_fk_constante_textual_check CHECK ((basico.fn_checkconstantetextualexists(constante_textual) IS NOT NULL)),
    CONSTRAINT assoccl_fk_constante_textual_descricao_check CHECK (((constante_textual_descricao IS NULL) OR (basico.fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL)))
);


--
-- TOC entry 333 (class 1259 OID 59261222)
-- Dependencies: 334 40
-- Name: assoccl_fk_id_seq; Type: SEQUENCE; Schema: basico_dicionario_dados; Owner: -
--

CREATE SEQUENCE assoccl_fk_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 2527 (class 0 OID 0)
-- Dependencies: 333
-- Name: assoccl_fk_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_dicionario_dados; Owner: -
--

ALTER SEQUENCE assoccl_fk_id_seq OWNED BY assoccl_fk.id;


--
-- TOC entry 332 (class 1259 OID 59261208)
-- Dependencies: 2459 2460 2461 2462 2463 40
-- Name: schema; Type: TABLE; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

CREATE TABLE schema (
    id integer NOT NULL,
    id_modulo integer NOT NULL,
    schemaname character varying(100) NOT NULL,
    constante_textual character varying(200) NOT NULL,
    constante_textual_descricao character varying(200),
    constante_textual_alias character varying(200),
    quantidade_tabelas integer,
    ativo boolean DEFAULT false NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT schema_constante_textual_check CHECK ((basico.fn_checkconstantetextualexists(constante_textual) IS NOT NULL)),
    CONSTRAINT schema_constante_textual_descricao_check CHECK (((constante_textual_descricao IS NULL) OR (basico.fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL)))
);


--
-- TOC entry 331 (class 1259 OID 59261206)
-- Dependencies: 40 332
-- Name: schema_id_seq; Type: SEQUENCE; Schema: basico_dicionario_dados; Owner: -
--

CREATE SEQUENCE schema_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 2528 (class 0 OID 0)
-- Dependencies: 331
-- Name: schema_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_dicionario_dados; Owner: -
--

ALTER SEQUENCE schema_id_seq OWNED BY schema.id;


--
-- TOC entry 2476 (class 2604 OID 59261259)
-- Dependencies: 337 338 338
-- Name: id; Type: DEFAULT; Schema: basico_dicionario_dados; Owner: -
--

ALTER TABLE ONLY assoc_field ALTER COLUMN id SET DEFAULT nextval('assoc_field_id_seq'::regclass);


--
-- TOC entry 2470 (class 2604 OID 59261243)
-- Dependencies: 335 336 336
-- Name: id; Type: DEFAULT; Schema: basico_dicionario_dados; Owner: -
--

ALTER TABLE ONLY assoc_table ALTER COLUMN id SET DEFAULT nextval('assoc_table_id_seq'::regclass);


--
-- TOC entry 2464 (class 2604 OID 59261227)
-- Dependencies: 334 333 334
-- Name: id; Type: DEFAULT; Schema: basico_dicionario_dados; Owner: -
--

ALTER TABLE ONLY assoccl_fk ALTER COLUMN id SET DEFAULT nextval('assoccl_fk_id_seq'::regclass);


--
-- TOC entry 2458 (class 2604 OID 59261211)
-- Dependencies: 332 331 332
-- Name: id; Type: DEFAULT; Schema: basico_dicionario_dados; Owner: -
--

ALTER TABLE ONLY schema ALTER COLUMN id SET DEFAULT nextval('schema_id_seq'::regclass);


--
-- TOC entry 2500 (class 2606 OID 59261237)
-- Dependencies: 334 334
-- Name: assoccl_fk_pkey; Type: CONSTRAINT; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_fk
    ADD CONSTRAINT assoccl_fk_pkey PRIMARY KEY (id);


--
-- TOC entry 2516 (class 2606 OID 59261273)
-- Dependencies: 338 338
-- Name: pk_assoc_field; Type: CONSTRAINT; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_field
    ADD CONSTRAINT pk_assoc_field PRIMARY KEY (id);


--
-- TOC entry 2508 (class 2606 OID 59261253)
-- Dependencies: 336 336
-- Name: pk_assoc_table; Type: CONSTRAINT; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_table
    ADD CONSTRAINT pk_assoc_table PRIMARY KEY (id);


--
-- TOC entry 2487 (class 2606 OID 59261221)
-- Dependencies: 332 332
-- Name: pk_schema; Type: CONSTRAINT; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

ALTER TABLE ONLY schema
    ADD CONSTRAINT pk_schema PRIMARY KEY (id);


--
-- TOC entry 2509 (class 1259 OID 59262154)
-- Dependencies: 338
-- Name: assoc_field_constante_textual; Type: INDEX; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

CREATE INDEX assoc_field_constante_textual ON assoc_field USING btree (constante_textual);


--
-- TOC entry 2510 (class 1259 OID 59262155)
-- Dependencies: 338
-- Name: assoc_field_constante_textual_alias; Type: INDEX; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

CREATE INDEX assoc_field_constante_textual_alias ON assoc_field USING btree (constante_textual_alias);


--
-- TOC entry 2511 (class 1259 OID 59262153)
-- Dependencies: 338
-- Name: assoc_field_fieldname; Type: INDEX; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_field_fieldname ON assoc_field USING btree (fieldname);


--
-- TOC entry 2512 (class 1259 OID 59262151)
-- Dependencies: 338
-- Name: assoc_field_id; Type: INDEX; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_field_id ON assoc_field USING btree (id);


--
-- TOC entry 2513 (class 1259 OID 59262152)
-- Dependencies: 338
-- Name: assoc_field_id_assoc_table; Type: INDEX; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_field_id_assoc_table ON assoc_field USING btree (id_assoc_table);


--
-- TOC entry 2514 (class 1259 OID 59262156)
-- Dependencies: 338
-- Name: assoc_field_tipo; Type: INDEX; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

CREATE INDEX assoc_field_tipo ON assoc_field USING btree (tipo);


--
-- TOC entry 2501 (class 1259 OID 59262149)
-- Dependencies: 336
-- Name: assoc_table_constante_textual; Type: INDEX; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

CREATE INDEX assoc_table_constante_textual ON assoc_table USING btree (constante_textual);


--
-- TOC entry 2502 (class 1259 OID 59262150)
-- Dependencies: 336
-- Name: assoc_table_constante_textual_alias; Type: INDEX; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

CREATE INDEX assoc_table_constante_textual_alias ON assoc_table USING btree (constante_textual_alias);


--
-- TOC entry 2503 (class 1259 OID 59262145)
-- Dependencies: 336
-- Name: assoc_table_id; Type: INDEX; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_table_id ON assoc_table USING btree (id);


--
-- TOC entry 2504 (class 1259 OID 59262146)
-- Dependencies: 336
-- Name: assoc_table_id_categoria; Type: INDEX; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

CREATE INDEX assoc_table_id_categoria ON assoc_table USING btree (id_categoria);


--
-- TOC entry 2505 (class 1259 OID 59262147)
-- Dependencies: 336
-- Name: assoc_table_id_schema; Type: INDEX; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

CREATE INDEX assoc_table_id_schema ON assoc_table USING btree (id_schema);


--
-- TOC entry 2506 (class 1259 OID 59262148)
-- Dependencies: 336
-- Name: assoc_table_tablename; Type: INDEX; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_table_tablename ON assoc_table USING btree (tablename);


--
-- TOC entry 2493 (class 1259 OID 59262143)
-- Dependencies: 334
-- Name: assoccl_fk_constante_textual; Type: INDEX; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_fk_constante_textual ON assoccl_fk USING btree (constante_textual);


--
-- TOC entry 2494 (class 1259 OID 59262144)
-- Dependencies: 334
-- Name: assoccl_fk_constante_textual_alias; Type: INDEX; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_fk_constante_textual_alias ON assoccl_fk USING btree (constante_textual_alias);


--
-- TOC entry 2495 (class 1259 OID 59262139)
-- Dependencies: 334
-- Name: assoccl_fk_id; Type: INDEX; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_fk_id ON assoccl_fk USING btree (id);


--
-- TOC entry 2496 (class 1259 OID 59262141)
-- Dependencies: 334
-- Name: assoccl_fk_id_assoc_field; Type: INDEX; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_fk_id_assoc_field ON assoccl_fk USING btree (id_assoc_field);


--
-- TOC entry 2497 (class 1259 OID 59262142)
-- Dependencies: 334
-- Name: assoccl_fk_id_assoc_field_fk; Type: INDEX; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_fk_id_assoc_field_fk ON assoccl_fk USING btree (id_assoc_field_fk);


--
-- TOC entry 2498 (class 1259 OID 59262140)
-- Dependencies: 334
-- Name: assoccl_fk_id_assoc_table; Type: INDEX; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_fk_id_assoc_table ON assoccl_fk USING btree (id_assoc_table);


--
-- TOC entry 2488 (class 1259 OID 59262137)
-- Dependencies: 332
-- Name: schema_constante_textual; Type: INDEX; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

CREATE INDEX schema_constante_textual ON schema USING btree (constante_textual);


--
-- TOC entry 2489 (class 1259 OID 59262138)
-- Dependencies: 332
-- Name: schema_constante_textual_alias; Type: INDEX; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

CREATE INDEX schema_constante_textual_alias ON schema USING btree (constante_textual_alias);


--
-- TOC entry 2490 (class 1259 OID 59262134)
-- Dependencies: 332
-- Name: schema_id; Type: INDEX; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX schema_id ON schema USING btree (id);


--
-- TOC entry 2491 (class 1259 OID 59262135)
-- Dependencies: 332
-- Name: schema_id_modulo; Type: INDEX; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

CREATE INDEX schema_id_modulo ON schema USING btree (id_modulo);


--
-- TOC entry 2492 (class 1259 OID 59262136)
-- Dependencies: 332
-- Name: schema_schemaname; Type: INDEX; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX schema_schemaname ON schema USING btree (schemaname);


--
-- TOC entry 2521 (class 2606 OID 59261780)
-- Dependencies: 2507 336 338
-- Name: fk_assoc_field_assoc_table; Type: FK CONSTRAINT; Schema: basico_dicionario_dados; Owner: -
--

ALTER TABLE ONLY assoc_field
    ADD CONSTRAINT fk_assoc_field_assoc_table FOREIGN KEY (id_assoc_table) REFERENCES assoc_table(id);


--
-- TOC entry 2520 (class 2606 OID 59261875)
-- Dependencies: 336 332 2486
-- Name: fk_assoc_table_schema; Type: FK CONSTRAINT; Schema: basico_dicionario_dados; Owner: -
--

ALTER TABLE ONLY assoc_table
    ADD CONSTRAINT fk_assoc_table_schema FOREIGN KEY (id_schema) REFERENCES schema(id);


--
-- TOC entry 2519 (class 2606 OID 59261785)
-- Dependencies: 2515 338 334
-- Name: fk_assoccl_fk_assoc_field; Type: FK CONSTRAINT; Schema: basico_dicionario_dados; Owner: -
--

ALTER TABLE ONLY assoccl_fk
    ADD CONSTRAINT fk_assoccl_fk_assoc_field FOREIGN KEY (id_assoc_field) REFERENCES assoc_field(id);


--
-- TOC entry 2517 (class 2606 OID 59261675)
-- Dependencies: 2515 334 338
-- Name: fk_assoccl_fk_assoc_field_fk; Type: FK CONSTRAINT; Schema: basico_dicionario_dados; Owner: -
--

ALTER TABLE ONLY assoccl_fk
    ADD CONSTRAINT fk_assoccl_fk_assoc_field_fk FOREIGN KEY (id_assoc_field_fk) REFERENCES assoc_field(id);


--
-- TOC entry 2518 (class 2606 OID 59261740)
-- Dependencies: 334 336 2507
-- Name: fk_assoccl_fk_assoc_table; Type: FK CONSTRAINT; Schema: basico_dicionario_dados; Owner: -
--

ALTER TABLE ONLY assoccl_fk
    ADD CONSTRAINT fk_assoccl_fk_assoc_table FOREIGN KEY (id_assoc_table) REFERENCES assoc_table(id);
