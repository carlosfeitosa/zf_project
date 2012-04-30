--
-- PostgreSQL database dump
--

-- Dumped from database version 8.3.17
-- Dumped by pg_dump version 9.1.3
-- Started on 2012-04-24 09:19:28 BRT

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
-- TOC entry 2534 (class 0 OID 0)
-- Dependencies: 40
-- Name: SCHEMA basico_dicionario_dados; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA basico_dicionario_dados IS 'Tabelas de uso específico ("dicionario de dados") do móduo BÁSICO.';


SET search_path = basico_dicionario_dados, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 382 (class 1259 OID 59309009)
-- Dependencies: 2466 2467 2468 2469 2470 2471 2472 2473 2474 2475 40
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
    CONSTRAINT assoc_field_constante_textual_alias_check CHECK (((constante_textual_alias IS NULL) OR (basico.fn_checkconstantetextualexists(constante_textual_alias) IS NOT NULL))),
    CONSTRAINT assoc_field_constante_textual_check CHECK ((basico.fn_checkconstantetextualexists(constante_textual) IS NOT NULL)),
    CONSTRAINT assoc_field_constante_textual_descricao_check CHECK (((constante_textual_descricao IS NULL) OR (basico.fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL)))
);


--
-- TOC entry 381 (class 1259 OID 59309007)
-- Dependencies: 382 40
-- Name: assoc_field_id_seq; Type: SEQUENCE; Schema: basico_dicionario_dados; Owner: -
--

CREATE SEQUENCE assoc_field_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 2535 (class 0 OID 0)
-- Dependencies: 381
-- Name: assoc_field_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_dicionario_dados; Owner: -
--

ALTER SEQUENCE assoc_field_id_seq OWNED BY assoc_field.id;


--
-- TOC entry 384 (class 1259 OID 59309032)
-- Dependencies: 2477 2478 2479 2480 2481 2482 40
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
    check_constraint character varying(4000),
    ativo boolean DEFAULT false NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT assoc_table_constante_textual_alias_check CHECK (((constante_textual_alias IS NULL) OR (basico.fn_checkconstantetextualexists(constante_textual_alias) IS NOT NULL))),
    CONSTRAINT assoc_table_constante_textual_check CHECK ((basico.fn_checkconstantetextualexists(constante_textual) IS NOT NULL)),
    CONSTRAINT assoc_table_constante_textual_descricao_check CHECK (((constante_textual_descricao IS NULL) OR (basico.fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL)))
);


--
-- TOC entry 383 (class 1259 OID 59309030)
-- Dependencies: 384 40
-- Name: assoc_table_id_seq; Type: SEQUENCE; Schema: basico_dicionario_dados; Owner: -
--

CREATE SEQUENCE assoc_table_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 2536 (class 0 OID 0)
-- Dependencies: 383
-- Name: assoc_table_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_dicionario_dados; Owner: -
--

ALTER SEQUENCE assoc_table_id_seq OWNED BY assoc_table.id;


--
-- TOC entry 380 (class 1259 OID 59308990)
-- Dependencies: 2459 2460 2461 2462 2463 2464 40
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
    CONSTRAINT assoccl_fk_constante_textual_alias_check CHECK (((constante_textual_alias IS NULL) OR (basico.fn_checkconstantetextualexists(constante_textual_alias) IS NOT NULL))),
    CONSTRAINT assoccl_fk_constante_textual_check CHECK ((basico.fn_checkconstantetextualexists(constante_textual) IS NOT NULL)),
    CONSTRAINT assoccl_fk_constante_textual_descricao_check CHECK (((constante_textual_descricao IS NULL) OR (basico.fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL)))
);


--
-- TOC entry 379 (class 1259 OID 59308988)
-- Dependencies: 380 40
-- Name: assoccl_fk_id_seq; Type: SEQUENCE; Schema: basico_dicionario_dados; Owner: -
--

CREATE SEQUENCE assoccl_fk_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 2537 (class 0 OID 0)
-- Dependencies: 379
-- Name: assoccl_fk_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_dicionario_dados; Owner: -
--

ALTER SEQUENCE assoccl_fk_id_seq OWNED BY assoccl_fk.id;


--
-- TOC entry 386 (class 1259 OID 59309051)
-- Dependencies: 2484 2485 2486 2487 2488 2489 40
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
    CONSTRAINT schema_constante_textual_alias_check CHECK (((constante_textual_alias IS NULL) OR (basico.fn_checkconstantetextualexists(constante_textual_alias) IS NOT NULL))),
    CONSTRAINT schema_constante_textual_check CHECK ((basico.fn_checkconstantetextualexists(constante_textual) IS NOT NULL)),
    CONSTRAINT schema_constante_textual_descricao_check CHECK (((constante_textual_descricao IS NULL) OR (basico.fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL)))
);


--
-- TOC entry 385 (class 1259 OID 59309049)
-- Dependencies: 386 40
-- Name: schema_id_seq; Type: SEQUENCE; Schema: basico_dicionario_dados; Owner: -
--

CREATE SEQUENCE schema_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 2538 (class 0 OID 0)
-- Dependencies: 385
-- Name: schema_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_dicionario_dados; Owner: -
--

ALTER SEQUENCE schema_id_seq OWNED BY schema.id;


--
-- TOC entry 2465 (class 2604 OID 59309012)
-- Dependencies: 381 382 382
-- Name: id; Type: DEFAULT; Schema: basico_dicionario_dados; Owner: -
--

ALTER TABLE ONLY assoc_field ALTER COLUMN id SET DEFAULT nextval('assoc_field_id_seq'::regclass);


--
-- TOC entry 2476 (class 2604 OID 59309035)
-- Dependencies: 383 384 384
-- Name: id; Type: DEFAULT; Schema: basico_dicionario_dados; Owner: -
--

ALTER TABLE ONLY assoc_table ALTER COLUMN id SET DEFAULT nextval('assoc_table_id_seq'::regclass);


--
-- TOC entry 2458 (class 2604 OID 59308993)
-- Dependencies: 380 379 380
-- Name: id; Type: DEFAULT; Schema: basico_dicionario_dados; Owner: -
--

ALTER TABLE ONLY assoccl_fk ALTER COLUMN id SET DEFAULT nextval('assoccl_fk_id_seq'::regclass);


--
-- TOC entry 2483 (class 2604 OID 59309054)
-- Dependencies: 385 386 386
-- Name: id; Type: DEFAULT; Schema: basico_dicionario_dados; Owner: -
--

ALTER TABLE ONLY schema ALTER COLUMN id SET DEFAULT nextval('schema_id_seq'::regclass);


--
-- TOC entry 2497 (class 2606 OID 59309004)
-- Dependencies: 380 380
-- Name: assoccl_fk_pkey; Type: CONSTRAINT; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_fk
    ADD CONSTRAINT assoccl_fk_pkey PRIMARY KEY (id);


--
-- TOC entry 2507 (class 2606 OID 59309027)
-- Dependencies: 382 382
-- Name: pk_assoc_field; Type: CONSTRAINT; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_field
    ADD CONSTRAINT pk_assoc_field PRIMARY KEY (id);


--
-- TOC entry 2517 (class 2606 OID 59309046)
-- Dependencies: 384 384
-- Name: pk_assoc_table; Type: CONSTRAINT; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_table
    ADD CONSTRAINT pk_assoc_table PRIMARY KEY (id);


--
-- TOC entry 2521 (class 2606 OID 59309065)
-- Dependencies: 386 386
-- Name: pk_schema; Type: CONSTRAINT; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

ALTER TABLE ONLY schema
    ADD CONSTRAINT pk_schema PRIMARY KEY (id);


--
-- TOC entry 2509 (class 2606 OID 59309029)
-- Dependencies: 382 382 382
-- Name: un_assoc_field; Type: CONSTRAINT; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_field
    ADD CONSTRAINT un_assoc_field UNIQUE (id_assoc_table, fieldname);


--
-- TOC entry 2519 (class 2606 OID 59309048)
-- Dependencies: 384 384 384
-- Name: un_assoc_table; Type: CONSTRAINT; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_table
    ADD CONSTRAINT un_assoc_table UNIQUE (id_schema, tablename);


--
-- TOC entry 2499 (class 2606 OID 59309006)
-- Dependencies: 380 380 380 380
-- Name: un_assoccl_fk; Type: CONSTRAINT; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_fk
    ADD CONSTRAINT un_assoccl_fk UNIQUE (id_assoc_table, id_assoc_field, id_assoc_field_fk);


--
-- TOC entry 2500 (class 1259 OID 59309100)
-- Dependencies: 382
-- Name: assoc_field_constante_textual; Type: INDEX; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

CREATE INDEX assoc_field_constante_textual ON assoc_field USING btree (constante_textual);


--
-- TOC entry 2501 (class 1259 OID 59309101)
-- Dependencies: 382
-- Name: assoc_field_constante_textual_alias; Type: INDEX; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

CREATE INDEX assoc_field_constante_textual_alias ON assoc_field USING btree (constante_textual_alias);


--
-- TOC entry 2502 (class 1259 OID 59309099)
-- Dependencies: 382
-- Name: assoc_field_fieldname; Type: INDEX; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

CREATE INDEX assoc_field_fieldname ON assoc_field USING btree (fieldname);


--
-- TOC entry 2503 (class 1259 OID 59309097)
-- Dependencies: 382
-- Name: assoc_field_id; Type: INDEX; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_field_id ON assoc_field USING btree (id);


--
-- TOC entry 2504 (class 1259 OID 59309098)
-- Dependencies: 382
-- Name: assoc_field_id_assoc_table; Type: INDEX; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

CREATE INDEX assoc_field_id_assoc_table ON assoc_field USING btree (id_assoc_table);


--
-- TOC entry 2505 (class 1259 OID 59309102)
-- Dependencies: 382
-- Name: assoc_field_tipo; Type: INDEX; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

CREATE INDEX assoc_field_tipo ON assoc_field USING btree (tipo);


--
-- TOC entry 2510 (class 1259 OID 59309107)
-- Dependencies: 384
-- Name: assoc_table_constante_textual; Type: INDEX; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

CREATE INDEX assoc_table_constante_textual ON assoc_table USING btree (constante_textual);


--
-- TOC entry 2511 (class 1259 OID 59309108)
-- Dependencies: 384
-- Name: assoc_table_constante_textual_alias; Type: INDEX; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

CREATE INDEX assoc_table_constante_textual_alias ON assoc_table USING btree (constante_textual_alias);


--
-- TOC entry 2512 (class 1259 OID 59309103)
-- Dependencies: 384
-- Name: assoc_table_id; Type: INDEX; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_table_id ON assoc_table USING btree (id);


--
-- TOC entry 2513 (class 1259 OID 59309104)
-- Dependencies: 384
-- Name: assoc_table_id_categoria; Type: INDEX; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

CREATE INDEX assoc_table_id_categoria ON assoc_table USING btree (id_categoria);


--
-- TOC entry 2514 (class 1259 OID 59309105)
-- Dependencies: 384
-- Name: assoc_table_id_schema; Type: INDEX; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

CREATE INDEX assoc_table_id_schema ON assoc_table USING btree (id_schema);


--
-- TOC entry 2515 (class 1259 OID 59309106)
-- Dependencies: 384
-- Name: assoc_table_tablename; Type: INDEX; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

CREATE INDEX assoc_table_tablename ON assoc_table USING btree (tablename);


--
-- TOC entry 2490 (class 1259 OID 59309095)
-- Dependencies: 380
-- Name: assoccl_fk_constante_textual; Type: INDEX; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_fk_constante_textual ON assoccl_fk USING btree (constante_textual);


--
-- TOC entry 2491 (class 1259 OID 59309096)
-- Dependencies: 380
-- Name: assoccl_fk_constante_textual_alias; Type: INDEX; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_fk_constante_textual_alias ON assoccl_fk USING btree (constante_textual_alias);


--
-- TOC entry 2492 (class 1259 OID 59309091)
-- Dependencies: 380
-- Name: assoccl_fk_id; Type: INDEX; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_fk_id ON assoccl_fk USING btree (id);


--
-- TOC entry 2493 (class 1259 OID 59309093)
-- Dependencies: 380
-- Name: assoccl_fk_id_assoc_field; Type: INDEX; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_fk_id_assoc_field ON assoccl_fk USING btree (id_assoc_field);


--
-- TOC entry 2494 (class 1259 OID 59309094)
-- Dependencies: 380
-- Name: assoccl_fk_id_assoc_field_fk; Type: INDEX; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_fk_id_assoc_field_fk ON assoccl_fk USING btree (id_assoc_field_fk);


--
-- TOC entry 2495 (class 1259 OID 59309092)
-- Dependencies: 380
-- Name: assoccl_fk_id_assoc_table; Type: INDEX; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_fk_id_assoc_table ON assoccl_fk USING btree (id_assoc_table);


--
-- TOC entry 2522 (class 1259 OID 59309112)
-- Dependencies: 386
-- Name: schema_constante_textual; Type: INDEX; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

CREATE INDEX schema_constante_textual ON schema USING btree (constante_textual);


--
-- TOC entry 2523 (class 1259 OID 59309113)
-- Dependencies: 386
-- Name: schema_constante_textual_alias; Type: INDEX; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

CREATE INDEX schema_constante_textual_alias ON schema USING btree (constante_textual_alias);


--
-- TOC entry 2524 (class 1259 OID 59309109)
-- Dependencies: 386
-- Name: schema_id; Type: INDEX; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX schema_id ON schema USING btree (id);


--
-- TOC entry 2525 (class 1259 OID 59309110)
-- Dependencies: 386
-- Name: schema_id_modulo; Type: INDEX; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

CREATE INDEX schema_id_modulo ON schema USING btree (id_modulo);


--
-- TOC entry 2526 (class 1259 OID 59309111)
-- Dependencies: 386
-- Name: schema_schemaname; Type: INDEX; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX schema_schemaname ON schema USING btree (schemaname);


--
-- TOC entry 2530 (class 2606 OID 59309081)
-- Dependencies: 384 382 2516
-- Name: fk_assoc_field_assoc_table; Type: FK CONSTRAINT; Schema: basico_dicionario_dados; Owner: -
--

ALTER TABLE ONLY assoc_field
    ADD CONSTRAINT fk_assoc_field_assoc_table FOREIGN KEY (id_assoc_table) REFERENCES assoc_table(id);


--
-- TOC entry 2531 (class 2606 OID 59309086)
-- Dependencies: 2520 384 386
-- Name: fk_assoc_table_schema; Type: FK CONSTRAINT; Schema: basico_dicionario_dados; Owner: -
--

ALTER TABLE ONLY assoc_table
    ADD CONSTRAINT fk_assoc_table_schema FOREIGN KEY (id_schema) REFERENCES schema(id);


--
-- TOC entry 2527 (class 2606 OID 59309066)
-- Dependencies: 382 380 2506
-- Name: fk_assoccl_fk_assoc_field; Type: FK CONSTRAINT; Schema: basico_dicionario_dados; Owner: -
--

ALTER TABLE ONLY assoccl_fk
    ADD CONSTRAINT fk_assoccl_fk_assoc_field FOREIGN KEY (id_assoc_field) REFERENCES assoc_field(id);


--
-- TOC entry 2529 (class 2606 OID 59309076)
-- Dependencies: 2506 380 382
-- Name: fk_assoccl_fk_assoc_field_fk; Type: FK CONSTRAINT; Schema: basico_dicionario_dados; Owner: -
--

ALTER TABLE ONLY assoccl_fk
    ADD CONSTRAINT fk_assoccl_fk_assoc_field_fk FOREIGN KEY (id_assoc_field_fk) REFERENCES assoc_field(id);


--
-- TOC entry 2528 (class 2606 OID 59309071)
-- Dependencies: 2516 384 380
-- Name: fk_assoccl_fk_assoc_table; Type: FK CONSTRAINT; Schema: basico_dicionario_dados; Owner: -
--

ALTER TABLE ONLY assoccl_fk
    ADD CONSTRAINT fk_assoccl_fk_assoc_table FOREIGN KEY (id_assoc_table) REFERENCES assoc_table(id);


-- Completed on 2012-04-26 22:56:24 BRT

--
-- PostgreSQL database dump complete
--
