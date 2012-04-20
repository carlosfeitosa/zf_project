--
-- TOC entry 40 (class 2615 OID 59234286)
-- Name: basico_dicionario_dados; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_dicionario_dados;


--
-- TOC entry 4177 (class 0 OID 0)
-- Dependencies: 40
-- Name: SCHEMA basico_dicionario_dados; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA basico_dicionario_dados IS 'Tabelas de uso específico ("dicionario de dados") do móduo BÁSICO.';

SET search_path = basico_dicionario_dados, pg_catalog;

--
-- TOC entry 272 (class 1259 OID 59238667)
-- Dependencies: 2777 2778 2779 2780 2781 2782 2783 2784 2785 40
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
-- TOC entry 271 (class 1259 OID 59238665)
-- Dependencies: 40 272
-- Name: assoc_field_id_seq; Type: SEQUENCE; Schema: basico_dicionario_dados; Owner: -
--

CREATE SEQUENCE assoc_field_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4269 (class 0 OID 0)
-- Dependencies: 271
-- Name: assoc_field_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_dicionario_dados; Owner: -
--

ALTER SEQUENCE assoc_field_id_seq OWNED BY assoc_field.id;


--
-- TOC entry 270 (class 1259 OID 59238651)
-- Dependencies: 2771 2772 2773 2774 2775 40
-- Name: assoc_table; Type: TABLE; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

CREATE TABLE assoc_table (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    id_schema integer NOT NULL,
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
-- TOC entry 269 (class 1259 OID 59238649)
-- Dependencies: 40 270
-- Name: assoc_table_id_seq; Type: SEQUENCE; Schema: basico_dicionario_dados; Owner: -
--

CREATE SEQUENCE assoc_table_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4270 (class 0 OID 0)
-- Dependencies: 269
-- Name: assoc_table_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_dicionario_dados; Owner: -
--

ALTER SEQUENCE assoc_table_id_seq OWNED BY assoc_table.id;


--
-- TOC entry 268 (class 1259 OID 59238635)
-- Dependencies: 2765 2766 2767 2768 2769 40
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
-- TOC entry 267 (class 1259 OID 59238633)
-- Dependencies: 40 268
-- Name: assoccl_fk_id_seq; Type: SEQUENCE; Schema: basico_dicionario_dados; Owner: -
--

CREATE SEQUENCE assoccl_fk_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4271 (class 0 OID 0)
-- Dependencies: 267
-- Name: assoccl_fk_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_dicionario_dados; Owner: -
--

ALTER SEQUENCE assoccl_fk_id_seq OWNED BY assoccl_fk.id;


--
-- TOC entry 266 (class 1259 OID 59238619)
-- Dependencies: 2759 2760 2761 2762 2763 40
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
-- TOC entry 265 (class 1259 OID 59238617)
-- Dependencies: 40 266
-- Name: schema_id_seq; Type: SEQUENCE; Schema: basico_dicionario_dados; Owner: -
--

CREATE SEQUENCE schema_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4272 (class 0 OID 0)
-- Dependencies: 265
-- Name: schema_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_dicionario_dados; Owner: -
--

ALTER SEQUENCE schema_id_seq OWNED BY schema.id;

SET search_path = basico_dicionario_dados, pg_catalog;

--
-- TOC entry 2776 (class 2604 OID 59238670)
-- Dependencies: 271 272 272
-- Name: id; Type: DEFAULT; Schema: basico_dicionario_dados; Owner: -
--

ALTER TABLE ONLY assoc_field ALTER COLUMN id SET DEFAULT nextval('assoc_field_id_seq'::regclass);


--
-- TOC entry 2770 (class 2604 OID 59238654)
-- Dependencies: 269 270 270
-- Name: id; Type: DEFAULT; Schema: basico_dicionario_dados; Owner: -
--

ALTER TABLE ONLY assoc_table ALTER COLUMN id SET DEFAULT nextval('assoc_table_id_seq'::regclass);


--
-- TOC entry 2764 (class 2604 OID 59238638)
-- Dependencies: 268 267 268
-- Name: id; Type: DEFAULT; Schema: basico_dicionario_dados; Owner: -
--

ALTER TABLE ONLY assoccl_fk ALTER COLUMN id SET DEFAULT nextval('assoccl_fk_id_seq'::regclass);


--
-- TOC entry 2758 (class 2604 OID 59238622)
-- Dependencies: 266 265 266
-- Name: id; Type: DEFAULT; Schema: basico_dicionario_dados; Owner: -
--

ALTER TABLE ONLY schema ALTER COLUMN id SET DEFAULT nextval('schema_id_seq'::regclass);

SET search_path = basico_dicionario_dados, pg_catalog;

--
-- TOC entry 3470 (class 2606 OID 59238648)
-- Dependencies: 268 268
-- Name: assoccl_fk_pkey; Type: CONSTRAINT; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_fk
    ADD CONSTRAINT assoccl_fk_pkey PRIMARY KEY (id);


--
-- TOC entry 3486 (class 2606 OID 59238684)
-- Dependencies: 272 272
-- Name: pk_assoc_field; Type: CONSTRAINT; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_field
    ADD CONSTRAINT pk_assoc_field PRIMARY KEY (id);


--
-- TOC entry 3478 (class 2606 OID 59238664)
-- Dependencies: 270 270
-- Name: pk_assoc_table; Type: CONSTRAINT; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_table
    ADD CONSTRAINT pk_assoc_table PRIMARY KEY (id);


--
-- TOC entry 3457 (class 2606 OID 59238632)
-- Dependencies: 266 266
-- Name: pk_schema; Type: CONSTRAINT; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

ALTER TABLE ONLY schema
    ADD CONSTRAINT pk_schema PRIMARY KEY (id);
    
SET search_path = basico_dicionario_dados, pg_catalog;

--
-- TOC entry 3479 (class 1259 OID 59240939)
-- Dependencies: 272
-- Name: assoc_field_constante_textual; Type: INDEX; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

CREATE INDEX assoc_field_constante_textual ON assoc_field USING btree (constante_textual);


--
-- TOC entry 3480 (class 1259 OID 59240940)
-- Dependencies: 272
-- Name: assoc_field_constante_textual_alias; Type: INDEX; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

CREATE INDEX assoc_field_constante_textual_alias ON assoc_field USING btree (constante_textual_alias);


--
-- TOC entry 3481 (class 1259 OID 59240938)
-- Dependencies: 272
-- Name: assoc_field_fieldname; Type: INDEX; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_field_fieldname ON assoc_field USING btree (fieldname);


--
-- TOC entry 3482 (class 1259 OID 59240936)
-- Dependencies: 272
-- Name: assoc_field_id; Type: INDEX; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_field_id ON assoc_field USING btree (id);


--
-- TOC entry 3483 (class 1259 OID 59240937)
-- Dependencies: 272
-- Name: assoc_field_id_assoc_table; Type: INDEX; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_field_id_assoc_table ON assoc_field USING btree (id_assoc_table);


--
-- TOC entry 3484 (class 1259 OID 59240941)
-- Dependencies: 272
-- Name: assoc_field_tipo; Type: INDEX; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

CREATE INDEX assoc_field_tipo ON assoc_field USING btree (tipo);


--
-- TOC entry 3471 (class 1259 OID 59240934)
-- Dependencies: 270
-- Name: assoc_table_constante_textual; Type: INDEX; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

CREATE INDEX assoc_table_constante_textual ON assoc_table USING btree (constante_textual);


--
-- TOC entry 3472 (class 1259 OID 59240935)
-- Dependencies: 270
-- Name: assoc_table_constante_textual_alias; Type: INDEX; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

CREATE INDEX assoc_table_constante_textual_alias ON assoc_table USING btree (constante_textual_alias);


--
-- TOC entry 3473 (class 1259 OID 59240930)
-- Dependencies: 270
-- Name: assoc_table_id; Type: INDEX; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_table_id ON assoc_table USING btree (id);


--
-- TOC entry 3474 (class 1259 OID 59240931)
-- Dependencies: 270
-- Name: assoc_table_id_categoria; Type: INDEX; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

CREATE INDEX assoc_table_id_categoria ON assoc_table USING btree (id_categoria);


--
-- TOC entry 3475 (class 1259 OID 59240932)
-- Dependencies: 270
-- Name: assoc_table_id_schema; Type: INDEX; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

CREATE INDEX assoc_table_id_schema ON assoc_table USING btree (id_schema);


--
-- TOC entry 3476 (class 1259 OID 59240933)
-- Dependencies: 270
-- Name: assoc_table_tablename; Type: INDEX; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_table_tablename ON assoc_table USING btree (tablename);


--
-- TOC entry 3463 (class 1259 OID 59240928)
-- Dependencies: 268
-- Name: assoccl_fk_constante_textual; Type: INDEX; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_fk_constante_textual ON assoccl_fk USING btree (constante_textual);


--
-- TOC entry 3464 (class 1259 OID 59240929)
-- Dependencies: 268
-- Name: assoccl_fk_constante_textual_alias; Type: INDEX; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_fk_constante_textual_alias ON assoccl_fk USING btree (constante_textual_alias);


--
-- TOC entry 3465 (class 1259 OID 59240924)
-- Dependencies: 268
-- Name: assoccl_fk_id; Type: INDEX; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_fk_id ON assoccl_fk USING btree (id);


--
-- TOC entry 3466 (class 1259 OID 59240926)
-- Dependencies: 268
-- Name: assoccl_fk_id_assoc_field; Type: INDEX; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_fk_id_assoc_field ON assoccl_fk USING btree (id_assoc_field);


--
-- TOC entry 3467 (class 1259 OID 59240927)
-- Dependencies: 268
-- Name: assoccl_fk_id_assoc_field_fk; Type: INDEX; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_fk_id_assoc_field_fk ON assoccl_fk USING btree (id_assoc_field_fk);


--
-- TOC entry 3468 (class 1259 OID 59240925)
-- Dependencies: 268
-- Name: assoccl_fk_id_assoc_table; Type: INDEX; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_fk_id_assoc_table ON assoccl_fk USING btree (id_assoc_table);


--
-- TOC entry 3458 (class 1259 OID 59240922)
-- Dependencies: 266
-- Name: schema_constante_textual; Type: INDEX; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

CREATE INDEX schema_constante_textual ON schema USING btree (constante_textual);


--
-- TOC entry 3459 (class 1259 OID 59240923)
-- Dependencies: 266
-- Name: schema_constante_textual_alias; Type: INDEX; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

CREATE INDEX schema_constante_textual_alias ON schema USING btree (constante_textual_alias);


--
-- TOC entry 3460 (class 1259 OID 59240919)
-- Dependencies: 266
-- Name: schema_id; Type: INDEX; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX schema_id ON schema USING btree (id);


--
-- TOC entry 3461 (class 1259 OID 59240920)
-- Dependencies: 266
-- Name: schema_id_modulo; Type: INDEX; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

CREATE INDEX schema_id_modulo ON schema USING btree (id_modulo);


--
-- TOC entry 3462 (class 1259 OID 59240921)
-- Dependencies: 266
-- Name: schema_schemaname; Type: INDEX; Schema: basico_dicionario_dados; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX schema_schemaname ON schema USING btree (schemaname);

SET search_path = basico_dicionario_dados, pg_catalog;

--
-- TOC entry 4053 (class 2606 OID 59240341)
-- Dependencies: 272 270 3477
-- Name: fk_assoc_field_assoc_table; Type: FK CONSTRAINT; Schema: basico_dicionario_dados; Owner: -
--

ALTER TABLE ONLY assoc_field
    ADD CONSTRAINT fk_assoc_field_assoc_table FOREIGN KEY (id_assoc_table) REFERENCES assoc_table(id);


--
-- TOC entry 4051 (class 2606 OID 59239695)
-- Dependencies: 3884 376 270
-- Name: fk_assoc_table_categoria; Type: FK CONSTRAINT; Schema: basico_dicionario_dados; Owner: -
--

ALTER TABLE ONLY assoc_table
    ADD CONSTRAINT fk_assoc_table_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 4052 (class 2606 OID 59240061)
-- Dependencies: 270 3456 266
-- Name: fk_assoc_table_schema; Type: FK CONSTRAINT; Schema: basico_dicionario_dados; Owner: -
--

ALTER TABLE ONLY assoc_table
    ADD CONSTRAINT fk_assoc_table_schema FOREIGN KEY (id_schema) REFERENCES schema(id);


--
-- TOC entry 4050 (class 2606 OID 59240431)
-- Dependencies: 3485 272 268
-- Name: fk_assoccl_fk_assoc_field; Type: FK CONSTRAINT; Schema: basico_dicionario_dados; Owner: -
--

ALTER TABLE ONLY assoccl_fk
    ADD CONSTRAINT fk_assoccl_fk_assoc_field FOREIGN KEY (id_assoc_field) REFERENCES assoc_field(id);


--
-- TOC entry 4048 (class 2606 OID 59239751)
-- Dependencies: 3485 268 272
-- Name: fk_assoccl_fk_assoc_field_fk; Type: FK CONSTRAINT; Schema: basico_dicionario_dados; Owner: -
--

ALTER TABLE ONLY assoccl_fk
    ADD CONSTRAINT fk_assoccl_fk_assoc_field_fk FOREIGN KEY (id_assoc_field_fk) REFERENCES assoc_field(id);


--
-- TOC entry 4049 (class 2606 OID 59240251)
-- Dependencies: 268 3477 270
-- Name: fk_assoccl_fk_assoc_table; Type: FK CONSTRAINT; Schema: basico_dicionario_dados; Owner: -
--

ALTER TABLE ONLY assoccl_fk
    ADD CONSTRAINT fk_assoccl_fk_assoc_table FOREIGN KEY (id_assoc_table) REFERENCES assoc_table(id);


--
-- TOC entry 4047 (class 2606 OID 59239816)
-- Dependencies: 3732 266 340
-- Name: fk_schema_modulo; Type: FK CONSTRAINT; Schema: basico_dicionario_dados; Owner: -
--

ALTER TABLE ONLY schema
    ADD CONSTRAINT fk_schema_modulo FOREIGN KEY (id_modulo) REFERENCES basico.modulo(id);