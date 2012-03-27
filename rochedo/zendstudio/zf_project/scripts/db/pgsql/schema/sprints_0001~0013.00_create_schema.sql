--
-- PostgreSQL database dump
--

-- Dumped from database version 8.3.17
-- Dumped by pg_dump version 9.1.3
-- Started on 2012-03-27 10:29:35 BRT

SET statement_timeout = 0;
SET client_encoding = 'LATIN1';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

--
-- TOC entry 3 (class 2615 OID 58318284)
-- Name: basico; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico;


--
-- TOC entry 6 (class 2615 OID 58318285)
-- Name: basico_acao_aplic_assoc_visao; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_acao_aplic_assoc_visao;


--
-- TOC entry 7 (class 2615 OID 58318286)
-- Name: basico_acao_aplicacao; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_acao_aplicacao;


--
-- TOC entry 9 (class 2615 OID 58318287)
-- Name: basico_acao_evento; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_acao_evento;


--
-- TOC entry 10 (class 2615 OID 58318288)
-- Name: basico_ajuda; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_ajuda;


--
-- TOC entry 11 (class 2615 OID 58318289)
-- Name: basico_assoc_banco; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_assoc_banco;


--
-- TOC entry 12 (class 2615 OID 58318290)
-- Name: basico_assoc_chave_estrangeira; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_assoc_chave_estrangeira;


--
-- TOC entry 13 (class 2615 OID 58318291)
-- Name: basico_assoc_dados_profis; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_assoc_dados_profis;


--
-- TOC entry 14 (class 2615 OID 58318292)
-- Name: basico_assoccl_pessoa_perfil; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_assoccl_pessoa_perfil;


--
-- TOC entry 15 (class 2615 OID 58318293)
-- Name: basico_assoccl_tipo_vinculo; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_assoccl_tipo_vinculo;


--
-- TOC entry 16 (class 2615 OID 58318294)
-- Name: basico_categoria; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_categoria;


--
-- TOC entry 17 (class 2615 OID 58318295)
-- Name: basico_componente; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_componente;


--
-- TOC entry 18 (class 2615 OID 58318296)
-- Name: basico_contato; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_contato;


--
-- TOC entry 19 (class 2615 OID 58318297)
-- Name: basico_cvc; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_cvc;


--
-- TOC entry 20 (class 2615 OID 58318298)
-- Name: basico_dados_academicos; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_dados_academicos;


--
-- TOC entry 21 (class 2615 OID 58318299)
-- Name: basico_dados_biometricos; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_dados_biometricos;


--
-- TOC entry 22 (class 2615 OID 58318300)
-- Name: basico_dados_profissionais; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_dados_profissionais;


--
-- TOC entry 23 (class 2615 OID 58318301)
-- Name: basico_decorator; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_decorator;


--
-- TOC entry 24 (class 2615 OID 58318302)
-- Name: basico_form_assoccl_elem_grupo; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_form_assoccl_elem_grupo;


--
-- TOC entry 25 (class 2615 OID 58318303)
-- Name: basico_form_assoccl_elemento; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_form_assoccl_elemento;


--
-- TOC entry 26 (class 2615 OID 58318304)
-- Name: basico_formulario; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_formulario;


--
-- TOC entry 27 (class 2615 OID 58318305)
-- Name: basico_formulario_elemento; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_formulario_elemento;


--
-- TOC entry 28 (class 2615 OID 58318306)
-- Name: basico_formulario_rascunho; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_formulario_rascunho;


--
-- TOC entry 29 (class 2615 OID 58318307)
-- Name: basico_localizacao; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_localizacao;


--
-- TOC entry 30 (class 2615 OID 58318308)
-- Name: basico_mensagem; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_mensagem;


--
-- TOC entry 31 (class 2615 OID 58318309)
-- Name: basico_mensagem_assoc_email; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_mensagem_assoc_email;


--
-- TOC entry 32 (class 2615 OID 58318310)
-- Name: basico_metodo_validacao; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_metodo_validacao;


--
-- TOC entry 33 (class 2615 OID 58318311)
-- Name: basico_output; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_output;


--
-- TOC entry 34 (class 2615 OID 58318312)
-- Name: basico_perfil; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_perfil;


--
-- TOC entry 35 (class 2615 OID 58318313)
-- Name: basico_pessoa; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_pessoa;


--
-- TOC entry 36 (class 2615 OID 58318314)
-- Name: basico_pessoa_juridica; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_pessoa_juridica;


--
-- TOC entry 37 (class 2615 OID 58318315)
-- Name: basico_sequencia; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_sequencia;


--
-- TOC entry 38 (class 2615 OID 58318316)
-- Name: basico_template; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_template;


SET search_path = basico, pg_catalog;

--
-- TOC entry 392 (class 1255 OID 58318317)
-- Dependencies: 3
-- Name: fn_checkcodigoareaconhecimentoexists(character varying); Type: FUNCTION; Schema: basico; Owner: -
--

CREATE FUNCTION fn_checkcodigoareaconhecimentoexists(character varying) RETURNS integer
    LANGUAGE sql
    AS $_$select id from basico.area_conhecimento where codigo = $1 limit 1$_$;


--
-- TOC entry 393 (class 1255 OID 58318318)
-- Dependencies: 3
-- Name: fn_checkcodigoareaeconomiaexists(character varying); Type: FUNCTION; Schema: basico; Owner: -
--

CREATE FUNCTION fn_checkcodigoareaeconomiaexists(character varying) RETURNS integer
    LANGUAGE sql
    AS $_$select id from basico.area_economia where codigo = $1 limit 1$_$;


--
-- TOC entry 394 (class 1255 OID 58318319)
-- Dependencies: 3
-- Name: fn_checkcodigocategoriaexists(character varying); Type: FUNCTION; Schema: basico; Owner: -
--

CREATE FUNCTION fn_checkcodigocategoriaexists(character varying) RETURNS integer
    LANGUAGE sql
    AS $_$select id from basico.categoria where codigo = $1 limit 1$_$;


--
-- TOC entry 395 (class 1255 OID 58318320)
-- Dependencies: 3
-- Name: fn_checkcodigotipocategoriaexists(character varying); Type: FUNCTION; Schema: basico; Owner: -
--

CREATE FUNCTION fn_checkcodigotipocategoriaexists(character varying) RETURNS integer
    LANGUAGE sql
    AS $_$select id from basico.tipo_categoria where codigo = $1 limit 1$_$;


--
-- TOC entry 396 (class 1255 OID 58318321)
-- Dependencies: 3
-- Name: fn_checkconstantetextualexists(character varying); Type: FUNCTION; Schema: basico; Owner: -
--

CREATE FUNCTION fn_checkconstantetextualexists(character varying) RETURNS integer
    LANGUAGE sql
    AS $_$select id from basico.dicionario_expressao where constante_textual = $1 limit 1$_$;


--
-- TOC entry 397 (class 1255 OID 58318322)
-- Dependencies: 3
-- Name: fn_checknomearquivoexists(character varying); Type: FUNCTION; Schema: basico; Owner: -
--

CREATE FUNCTION fn_checknomearquivoexists(character varying) RETURNS integer
    LANGUAGE sql
    AS $_$select id from basico.arquivo where nome = $1 limit 1$_$;


--
-- TOC entry 398 (class 1255 OID 58318323)
-- Dependencies: 3
-- Name: fn_checknomelinkexists(character varying); Type: FUNCTION; Schema: basico; Owner: -
--

CREATE FUNCTION fn_checknomelinkexists(character varying) RETURNS integer
    LANGUAGE sql
    AS $_$select id from basico.link where nome = $1 limit 1$_$;


--
-- TOC entry 399 (class 1255 OID 58318324)
-- Dependencies: 3
-- Name: fn_checknomeprodutoexists(character varying); Type: FUNCTION; Schema: basico; Owner: -
--

CREATE FUNCTION fn_checknomeprodutoexists(character varying) RETURNS integer
    LANGUAGE sql
    AS $_$select id from basico.produto where nome = $1 limit 1$_$;


SET search_path = basico_categoria, pg_catalog;

--
-- TOC entry 400 (class 1255 OID 58318325)
-- Dependencies: 16
-- Name: fn_checkcategoriachaveestrangeiracategoriaexists(integer); Type: FUNCTION; Schema: basico_categoria; Owner: -
--

CREATE FUNCTION fn_checkcategoriachaveestrangeiracategoriaexists(integer) RETURNS integer
    LANGUAGE sql
    AS $_$select id from basico_categoria.assoc_chave_estrangeira where id_categoria = $1 limit 1$_$;


--
-- TOC entry 391 (class 1255 OID 58325456)
-- Dependencies: 16
-- Name: fn_retornaidcategoriacvc(); Type: FUNCTION; Schema: basico_categoria; Owner: -
--

CREATE FUNCTION fn_retornaidcategoriacvc() RETURNS integer
    LANGUAGE sql IMMUTABLE
    AS $$select c.id from basico.categoria c left join basico.tipo_categoria t on (c.id_tipo_categoria = t.id) where c.nome = 'CVC' and t.nome = 'CVC'$$;


SET search_path = basico_contato, pg_catalog;

--
-- TOC entry 401 (class 1255 OID 58318326)
-- Dependencies: 18
-- Name: fn_checknomeemailexists(character varying); Type: FUNCTION; Schema: basico_contato; Owner: -
--

CREATE FUNCTION fn_checknomeemailexists(character varying) RETURNS integer
    LANGUAGE sql
    AS $_$select id from basico_contato.cpg_email where nome = $1 limit 1$_$;


--
-- TOC entry 402 (class 1255 OID 58318327)
-- Dependencies: 18
-- Name: fn_checknometelefoneexists(character varying); Type: FUNCTION; Schema: basico_contato; Owner: -
--

CREATE FUNCTION fn_checknometelefoneexists(character varying) RETURNS integer
    LANGUAGE sql
    AS $_$select id from basico_contato.cpg_telefone where nome = $1 limit 1$_$;


SET search_path = basico_cvc, pg_catalog;

--
-- TOC entry 403 (class 1255 OID 58318328)
-- Dependencies: 19
-- Name: fn_checkcategoriacvc(integer); Type: FUNCTION; Schema: basico_cvc; Owner: -
--

CREATE FUNCTION fn_checkcategoriacvc(integer) RETURNS integer
    LANGUAGE sql
    AS $_$select c.id from basico.categoria c left join basico.tipo_categoria t on (c.id_tipo_categoria = t.id) where c.id = $1 and t.nome = $$CVC$$ and c.nome = $$CVC$$limit 1$_$;


SET search_path = basico_formulario_elemento, pg_catalog;

--
-- TOC entry 404 (class 1255 OID 58318329)
-- Dependencies: 27
-- Name: fn_checkincludeassocclelementoexists(integer, integer); Type: FUNCTION; Schema: basico_formulario_elemento; Owner: -
--

CREATE FUNCTION fn_checkincludeassocclelementoexists(id_assoccl_elemento integer, id_include integer) RETURNS integer
    LANGUAGE sql
    AS $_$SELECT ai.id_include
FROM basico_formulario.assoccl_elemento ae
LEFT JOIN basico_formulario.elemento e ON (ae.id_elemento = e.id)
LEFT JOIN basico.componente c ON (e.id_componente = c.id)
LEFT JOIN basico_componente.assoccl_include ai ON (c.id = ai.id_componente)
WHERE ae.id = $1 AND ai.id_include = $2$_$;


SET search_path = basico, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 377 (class 1259 OID 58323781)
-- Dependencies: 3012 3013 3014 3015 3016 3
-- Name: acao_aplicacao; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE acao_aplicacao (
    id integer NOT NULL,
    id_modulo integer NOT NULL,
    controller character varying(400) NOT NULL,
    action character varying(400) NOT NULL,
    constante_textual character varying(200),
    constante_textual_descricao character varying(200),
    ativo boolean DEFAULT false NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT acao_aplicacao_constante_textual_check CHECK (((constante_textual IS NULL) OR (fn_checkconstantetextualexists(constante_textual) IS NOT NULL))),
    CONSTRAINT acao_aplicacao_constante_textual_descricao_check CHECK (((constante_textual_descricao IS NULL) OR (fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL)))
);


--
-- TOC entry 376 (class 1259 OID 58323779)
-- Dependencies: 3 377
-- Name: acao_aplicacao_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE acao_aplicacao_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4066 (class 0 OID 0)
-- Dependencies: 376
-- Name: acao_aplicacao_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE acao_aplicacao_id_seq OWNED BY acao_aplicacao.id;


--
-- TOC entry 375 (class 1259 OID 58323763)
-- Dependencies: 3006 3007 3008 3009 3010 3
-- Name: acao_evento; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE acao_evento (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    nome character varying(200) NOT NULL,
    constante_textual character varying(200) NOT NULL,
    constante_textual_descricao character varying(200),
    acao character varying(1000) NOT NULL,
    ativo boolean DEFAULT false NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT acao_evento_constante_textual_check CHECK ((fn_checkconstantetextualexists(constante_textual) IS NOT NULL)),
    CONSTRAINT acao_evento_constante_textual_descricao_check CHECK (((constante_textual_descricao IS NULL) OR (fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL)))
);


--
-- TOC entry 374 (class 1259 OID 58323761)
-- Dependencies: 3 375
-- Name: acao_evento_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE acao_evento_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4067 (class 0 OID 0)
-- Dependencies: 374
-- Name: acao_evento_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE acao_evento_id_seq OWNED BY acao_evento.id;


--
-- TOC entry 373 (class 1259 OID 58323742)
-- Dependencies: 2997 2998 2999 3000 3001 3002 3003 3004 3
-- Name: ajuda; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE ajuda (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    nome character varying(200) NOT NULL,
    constante_textual character varying(200) NOT NULL,
    constante_textual_descricao character varying(200),
    constante_textual_ajuda character varying(200),
    constante_textual_hint character varying(200),
    ativo boolean DEFAULT false NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT ajuda_constante_textual_ajuda_check CHECK (((constante_textual_ajuda IS NULL) OR (fn_checkconstantetextualexists(constante_textual_ajuda) IS NOT NULL))),
    CONSTRAINT ajuda_constante_textual_check CHECK ((fn_checkconstantetextualexists(constante_textual) IS NOT NULL)),
    CONSTRAINT ajuda_constante_textual_descricao_check CHECK (((constante_textual_descricao IS NULL) OR (fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL))),
    CONSTRAINT ajuda_constante_textual_hint_check CHECK (((constante_textual_hint IS NULL) OR (fn_checkconstantetextualexists(constante_textual_hint) IS NOT NULL))),
    CONSTRAINT ck_ajuda CHECK (((constante_textual_ajuda IS NOT NULL) OR (constante_textual_hint IS NOT NULL)))
);


--
-- TOC entry 372 (class 1259 OID 58323740)
-- Dependencies: 373 3
-- Name: ajuda_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE ajuda_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4068 (class 0 OID 0)
-- Dependencies: 372
-- Name: ajuda_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE ajuda_id_seq OWNED BY ajuda.id;


--
-- TOC entry 371 (class 1259 OID 58323722)
-- Dependencies: 2989 2990 2991 2992 2993 2994 2995 3
-- Name: area_conhecimento; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE area_conhecimento (
    id integer NOT NULL,
    id_area_conhecimento_pai integer,
    nivel integer DEFAULT 1 NOT NULL,
    id_categoria integer NOT NULL,
    nome character varying(200) NOT NULL,
    constante_textual character varying(200) NOT NULL,
    constante_textual_descricao character varying(200),
    codigo character varying(100) NOT NULL,
    ativo boolean DEFAULT false NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT area_conhecimento_codigo_check CHECK (((codigo IS NULL) OR (fn_checkcodigoareaconhecimentoexists(codigo) IS NULL))),
    CONSTRAINT area_conhecimento_constante_textual_check CHECK ((fn_checkconstantetextualexists(constante_textual) IS NOT NULL)),
    CONSTRAINT area_conhecimento_constante_textual_descricao_check CHECK (((constante_textual_descricao IS NULL) OR (fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL)))
);


--
-- TOC entry 370 (class 1259 OID 58323720)
-- Dependencies: 3 371
-- Name: area_conhecimento_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE area_conhecimento_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4069 (class 0 OID 0)
-- Dependencies: 370
-- Name: area_conhecimento_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE area_conhecimento_id_seq OWNED BY area_conhecimento.id;


--
-- TOC entry 369 (class 1259 OID 58323702)
-- Dependencies: 2981 2982 2983 2984 2985 2986 2987 3
-- Name: area_economia; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE area_economia (
    id integer NOT NULL,
    id_area_economia_pai integer,
    nivel integer DEFAULT 1 NOT NULL,
    id_categoria integer NOT NULL,
    nome character varying(200) NOT NULL,
    constante_textual character varying(200) NOT NULL,
    constante_textual_descricao character varying(200),
    codigo character varying(100) NOT NULL,
    ativo boolean DEFAULT false NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT area_economia_codigo_check CHECK (((codigo IS NULL) OR (fn_checkcodigoareaeconomiaexists(codigo) IS NULL))),
    CONSTRAINT area_economia_constante_textual_check CHECK ((fn_checkconstantetextualexists(constante_textual) IS NOT NULL)),
    CONSTRAINT area_economia_constante_textual_descricao_check CHECK (((constante_textual_descricao IS NULL) OR (fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL)))
);


--
-- TOC entry 368 (class 1259 OID 58323700)
-- Dependencies: 369 3
-- Name: area_economia_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE area_economia_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4070 (class 0 OID 0)
-- Dependencies: 368
-- Name: area_economia_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE area_economia_id_seq OWNED BY area_economia.id;


--
-- TOC entry 367 (class 1259 OID 58323682)
-- Dependencies: 2973 2974 2975 2976 2977 2978 2979 3
-- Name: categoria; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE categoria (
    id integer NOT NULL,
    id_tipo_categoria integer NOT NULL,
    id_categoria_pai integer,
    nivel integer DEFAULT 1 NOT NULL,
    nome character varying(200) NOT NULL,
    constante_textual character varying(200),
    constante_textual_descricao character varying(200),
    codigo character varying(100),
    ativo boolean DEFAULT false NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT categoria_codigo_check CHECK (((codigo IS NULL) OR (fn_checkcodigocategoriaexists(codigo) IS NULL))),
    CONSTRAINT categoria_constante_textual_check CHECK (((constante_textual IS NULL) OR (fn_checkconstantetextualexists(constante_textual) IS NOT NULL))),
    CONSTRAINT categoria_constante_textual_descricao_check CHECK (((constante_textual_descricao IS NULL) OR (fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL)))
);


--
-- TOC entry 4071 (class 0 OID 0)
-- Dependencies: 367
-- Name: TABLE categoria; Type: COMMENT; Schema: basico; Owner: -
--

COMMENT ON TABLE categoria IS 'containner de categorias';


--
-- TOC entry 366 (class 1259 OID 58323680)
-- Dependencies: 367 3
-- Name: categoria_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE categoria_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4072 (class 0 OID 0)
-- Dependencies: 366
-- Name: categoria_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE categoria_id_seq OWNED BY categoria.id;


--
-- TOC entry 365 (class 1259 OID 58323664)
-- Dependencies: 2967 2968 2969 2970 2971 3
-- Name: componente; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE componente (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    id_template integer,
    nome character varying(200) NOT NULL,
    constante_textual character varying(200) NOT NULL,
    constante_textual_descricao character varying(200),
    componente character varying(2000) NOT NULL,
    ativo boolean DEFAULT false NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT componente_constante_textual_check CHECK ((fn_checkconstantetextualexists(constante_textual) IS NOT NULL)),
    CONSTRAINT componente_constante_textual_descricao_check CHECK (((constante_textual_descricao IS NULL) OR (fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL)))
);


--
-- TOC entry 364 (class 1259 OID 58323662)
-- Dependencies: 365 3
-- Name: componente_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE componente_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4073 (class 0 OID 0)
-- Dependencies: 364
-- Name: componente_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE componente_id_seq OWNED BY componente.id;


--
-- TOC entry 363 (class 1259 OID 58323644)
-- Dependencies: 2959 2960 2961 2962 2963 2964 2965 3
-- Name: cpg_arquivo; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE cpg_arquivo (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    id_generico_proprietario integer NOT NULL,
    nome character varying(200),
    constante_textual character varying(200),
    constante_textual_descricao character varying(200),
    nome_original character varying(200) NOT NULL,
    nome_sugestao character varying(200) NOT NULL,
    tamanho_kylobytes integer NOT NULL,
    mime_type character varying(100) NOT NULL,
    uri character varying(2000) NOT NULL,
    remoto boolean DEFAULT false NOT NULL,
    hits integer DEFAULT 0 NOT NULL,
    ativo boolean DEFAULT false NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT cpg_arquivo_constante_textual_check CHECK (((constante_textual IS NULL) OR (fn_checkconstantetextualexists(constante_textual) IS NOT NULL))),
    CONSTRAINT cpg_arquivo_constante_textual_descricao_check CHECK (((constante_textual_descricao IS NULL) OR (fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL)))
);


--
-- TOC entry 362 (class 1259 OID 58323642)
-- Dependencies: 3 363
-- Name: cpg_arquivo_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE cpg_arquivo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4074 (class 0 OID 0)
-- Dependencies: 362
-- Name: cpg_arquivo_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE cpg_arquivo_id_seq OWNED BY cpg_arquivo.id;


--
-- TOC entry 361 (class 1259 OID 58323627)
-- Dependencies: 2954 2955 2956 2957 3
-- Name: cpg_codigo_acesso; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE cpg_codigo_acesso (
    id integer NOT NULL,
    id_categoria_proprietario integer NOT NULL,
    id_generico_proprietario integer NOT NULL,
    id_categoria_acesso integer NOT NULL,
    id_generico_acesso integer NOT NULL,
    codigo character varying(100) NOT NULL,
    ativo boolean DEFAULT false NOT NULL,
    datahora_expiracao timestamp without time zone DEFAULT (now() + '1 mon'::interval) NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 360 (class 1259 OID 58323625)
-- Dependencies: 361 3
-- Name: cpg_codigo_acesso_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE cpg_codigo_acesso_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4075 (class 0 OID 0)
-- Dependencies: 360
-- Name: cpg_codigo_acesso_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE cpg_codigo_acesso_id_seq OWNED BY cpg_codigo_acesso.id;


--
-- TOC entry 359 (class 1259 OID 58323612)
-- Dependencies: 2951 2952 3
-- Name: cpg_dados_bancarios; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE cpg_dados_bancarios (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    id_generico_proprietario integer NOT NULL,
    numero_banco character varying(20) NOT NULL,
    nome_banco character varying(200) NOT NULL,
    numero_agencia character varying(20) NOT NULL,
    numero_tipo_conta character varying(20),
    numero_conta character varying(20) NOT NULL,
    descricao character varying(2000),
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 358 (class 1259 OID 58323610)
-- Dependencies: 3 359
-- Name: cpg_dados_bancarios_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE cpg_dados_bancarios_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4076 (class 0 OID 0)
-- Dependencies: 358
-- Name: cpg_dados_bancarios_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE cpg_dados_bancarios_id_seq OWNED BY cpg_dados_bancarios.id;


--
-- TOC entry 357 (class 1259 OID 58323596)
-- Dependencies: 2947 2948 2949 3
-- Name: cpg_documento_identificacao; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE cpg_documento_identificacao (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    id_generico_proprietario integer NOT NULL,
    id_pessoa_juridica_emissor integer NOT NULL,
    identificador character varying(30) NOT NULL,
    data_emissao timestamp without time zone,
    descricao character varying(2000),
    ativo boolean DEFAULT false NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 356 (class 1259 OID 58323594)
-- Dependencies: 357 3
-- Name: cpg_documento_identificacao_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE cpg_documento_identificacao_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4077 (class 0 OID 0)
-- Dependencies: 356
-- Name: cpg_documento_identificacao_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE cpg_documento_identificacao_id_seq OWNED BY cpg_documento_identificacao.id;


--
-- TOC entry 355 (class 1259 OID 58323577)
-- Dependencies: 2940 2941 2942 2943 2944 2945 3
-- Name: cpg_link; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE cpg_link (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    id_generico_proprietario integer NOT NULL,
    nome character varying(200),
    constante_textual character varying(200),
    constante_textual_descricao character varying(200),
    url character varying(1000) NOT NULL,
    ativo boolean DEFAULT false NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT cpg_link_constante_textual_check CHECK (((constante_textual IS NULL) OR (fn_checkconstantetextualexists(constante_textual) IS NOT NULL))),
    CONSTRAINT cpg_link_constante_textual_descricao_check CHECK (((constante_textual_descricao IS NULL) OR (fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL))),
    CONSTRAINT cpg_link_nome_check CHECK (((nome IS NULL) OR (fn_checknomelinkexists(nome) IS NULL)))
);


--
-- TOC entry 354 (class 1259 OID 58323575)
-- Dependencies: 355 3
-- Name: cpg_link_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE cpg_link_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4078 (class 0 OID 0)
-- Dependencies: 354
-- Name: cpg_link_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE cpg_link_id_seq OWNED BY cpg_link.id;


--
-- TOC entry 353 (class 1259 OID 58323562)
-- Dependencies: 2935 2936 2937 2938 3
-- Name: cpg_produto; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE cpg_produto (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    id_generico_proprietario integer NOT NULL,
    id_categoria_moeda integer NOT NULL,
    nome character varying(200) NOT NULL,
    constante_textual character varying(200) NOT NULL,
    constante_textual_descricao character varying(200),
    custo_producao numeric(19,3),
    valor_comercial numeric(19,3),
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT cpg_produto_constante_textual_check CHECK (((constante_textual IS NULL) OR (fn_checkconstantetextualexists(constante_textual) IS NOT NULL))),
    CONSTRAINT cpg_produto_constante_textual_descricao_check CHECK (((constante_textual_descricao IS NULL) OR (fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL)))
);


--
-- TOC entry 352 (class 1259 OID 58323560)
-- Dependencies: 353 3
-- Name: cpg_produto_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE cpg_produto_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4079 (class 0 OID 0)
-- Dependencies: 352
-- Name: cpg_produto_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE cpg_produto_id_seq OWNED BY cpg_produto.id;


--
-- TOC entry 351 (class 1259 OID 58323549)
-- Dependencies: 2932 2933 3
-- Name: cpg_token; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE cpg_token (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    id_generico_proprietario integer NOT NULL,
    token character varying(100) NOT NULL,
    data_hora_expiracao timestamp without time zone DEFAULT (now() + '36:00:00'::interval) NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 350 (class 1259 OID 58323547)
-- Dependencies: 3 351
-- Name: cpg_token_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE cpg_token_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4080 (class 0 OID 0)
-- Dependencies: 350
-- Name: cpg_token_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE cpg_token_id_seq OWNED BY cpg_token.id;


--
-- TOC entry 349 (class 1259 OID 58323534)
-- Dependencies: 2929 2930 3
-- Name: dados_biometricos; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE dados_biometricos (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    id_generico_proprietario integer NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 348 (class 1259 OID 58323532)
-- Dependencies: 3 349
-- Name: dados_biometricos_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE dados_biometricos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4081 (class 0 OID 0)
-- Dependencies: 348
-- Name: dados_biometricos_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE dados_biometricos_id_seq OWNED BY dados_biometricos.id;


--
-- TOC entry 347 (class 1259 OID 58323517)
-- Dependencies: 2924 2925 2926 2927 3
-- Name: dicionario_expressao; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE dicionario_expressao (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    constante_textual character varying(200) NOT NULL,
    traducao character varying(7000) NOT NULL,
    revisao boolean DEFAULT false NOT NULL,
    ativo boolean DEFAULT false NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 346 (class 1259 OID 58323515)
-- Dependencies: 3 347
-- Name: dicionario_expressao_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE dicionario_expressao_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4082 (class 0 OID 0)
-- Dependencies: 346
-- Name: dicionario_expressao_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE dicionario_expressao_id_seq OWNED BY dicionario_expressao.id;


--
-- TOC entry 345 (class 1259 OID 58323499)
-- Dependencies: 2918 2919 2920 2921 2922 3
-- Name: evento; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE evento (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    nome character varying(200) NOT NULL,
    constante_textual character varying(200) NOT NULL,
    constante_textual_descricao character varying(200),
    evento character varying(200) NOT NULL,
    ativo boolean DEFAULT false NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT evento_constante_textual_check CHECK (((constante_textual IS NULL) OR (fn_checkconstantetextualexists(constante_textual) IS NOT NULL))),
    CONSTRAINT evento_constante_textual_descricao_check CHECK (((constante_textual_descricao IS NULL) OR (fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL)))
);


--
-- TOC entry 344 (class 1259 OID 58323497)
-- Dependencies: 345 3
-- Name: evento_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE evento_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4083 (class 0 OID 0)
-- Dependencies: 344
-- Name: evento_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE evento_id_seq OWNED BY evento.id;


--
-- TOC entry 343 (class 1259 OID 58323481)
-- Dependencies: 2912 2913 2914 2915 2916 3
-- Name: filter; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE filter (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    nome character varying(200) NOT NULL,
    constante_textual character varying(200) NOT NULL,
    constante_textual_descricao character varying(200),
    filter character varying(2000) NOT NULL,
    ativo boolean DEFAULT false NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT filter_constante_textual_check CHECK ((fn_checkconstantetextualexists(constante_textual) IS NOT NULL)),
    CONSTRAINT filter_constante_textual_descricao_check CHECK (((constante_textual_descricao IS NULL) OR (fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL)))
);


--
-- TOC entry 342 (class 1259 OID 58323479)
-- Dependencies: 343 3
-- Name: filter_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE filter_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4084 (class 0 OID 0)
-- Dependencies: 342
-- Name: filter_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE filter_id_seq OWNED BY filter.id;


--
-- TOC entry 341 (class 1259 OID 58323461)
-- Dependencies: 2904 2905 2906 2907 2908 2909 2910 3
-- Name: formulario; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE formulario (
    id integer NOT NULL,
    id_formulario_pai integer,
    nivel integer DEFAULT 1 NOT NULL,
    id_categoria integer NOT NULL,
    id_ajuda integer,
    nome character varying(200) NOT NULL,
    constante_textual character varying(200) NOT NULL,
    constante_textual_descricao character varying(200),
    ativo boolean DEFAULT false NOT NULL,
    form_name character varying(100) NOT NULL,
    form_method character varying(100),
    form_action character varying(100),
    form_enctype character varying(100),
    form_attribs character varying(1000),
    ordem integer,
    permite_rascunho boolean DEFAULT true,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT formulario_constante_textual_check CHECK (((constante_textual IS NULL) OR (fn_checkconstantetextualexists(constante_textual) IS NOT NULL))),
    CONSTRAINT formulario_constante_textual_descricao_check CHECK (((constante_textual_descricao IS NULL) OR (fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL)))
);


--
-- TOC entry 340 (class 1259 OID 58323459)
-- Dependencies: 3 341
-- Name: formulario_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE formulario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4085 (class 0 OID 0)
-- Dependencies: 340
-- Name: formulario_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE formulario_id_seq OWNED BY formulario.id;


--
-- TOC entry 339 (class 1259 OID 58323441)
-- Dependencies: 2898 2899 2900 2901 2902 3
-- Name: include; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE include (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    nome character varying(200) NOT NULL,
    constante_textual character varying(200) NOT NULL,
    constante_textual_descricao character varying(200),
    uri character varying(1000) NOT NULL,
    ativo boolean DEFAULT false NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT include_constante_textual_check CHECK ((fn_checkconstantetextualexists(constante_textual) IS NOT NULL)),
    CONSTRAINT include_constante_textual_descricao_check CHECK (((constante_textual_descricao IS NULL) OR (fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL)))
);


--
-- TOC entry 338 (class 1259 OID 58323439)
-- Dependencies: 339 3
-- Name: include_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE include_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4086 (class 0 OID 0)
-- Dependencies: 338
-- Name: include_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE include_id_seq OWNED BY include.id;


--
-- TOC entry 337 (class 1259 OID 58323430)
-- Dependencies: 3
-- Name: log; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE log (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    id_assoccl_perfil integer NOT NULL,
    datahora_evento timestamp without time zone NOT NULL,
    xml character varying(7000) NOT NULL
);


--
-- TOC entry 336 (class 1259 OID 58323428)
-- Dependencies: 337 3
-- Name: log_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4087 (class 0 OID 0)
-- Dependencies: 336
-- Name: log_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE log_id_seq OWNED BY log.id;


--
-- TOC entry 335 (class 1259 OID 58323417)
-- Dependencies: 2894 2895 3
-- Name: mensagem; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE mensagem (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    id_generico_proprietario integer NOT NULL,
    remetente character varying(200) NOT NULL,
    destinatarios character varying(3000),
    assunto character varying(200),
    mensagem character varying(2000),
    datahora_envio timestamp without time zone,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 334 (class 1259 OID 58323415)
-- Dependencies: 335 3
-- Name: mensagem_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE mensagem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4088 (class 0 OID 0)
-- Dependencies: 334
-- Name: mensagem_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE mensagem_id_seq OWNED BY mensagem.id;


--
-- TOC entry 333 (class 1259 OID 58323399)
-- Dependencies: 2888 2889 2890 2891 2892 3
-- Name: metodo_validacao; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE metodo_validacao (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    nome character varying(200) NOT NULL,
    constante_textual character varying(200) NOT NULL,
    constante_textual_descricao character varying(200),
    metodo character varying(5000) NOT NULL,
    ativo boolean DEFAULT false NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT metodo_validacao_constante_textual_check CHECK ((fn_checkconstantetextualexists(constante_textual) IS NOT NULL)),
    CONSTRAINT metodo_validacao_constante_textual_descricao_check CHECK (((constante_textual_descricao IS NULL) OR (fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL)))
);


--
-- TOC entry 332 (class 1259 OID 58323397)
-- Dependencies: 333 3
-- Name: metodo_validacao_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE metodo_validacao_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4089 (class 0 OID 0)
-- Dependencies: 332
-- Name: metodo_validacao_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE metodo_validacao_id_seq OWNED BY metodo_validacao.id;


--
-- TOC entry 331 (class 1259 OID 58323382)
-- Dependencies: 2881 2882 2883 2884 2885 2886 3
-- Name: modulo; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE modulo (
    id integer NOT NULL,
    id_modulo_pai integer,
    id_categoria integer NOT NULL,
    nome character varying(200) NOT NULL,
    constante_textual character varying(200) NOT NULL,
    constante_textual_descricao character varying(200),
    versao character varying(200),
    path character varying(1000),
    instalado boolean DEFAULT false NOT NULL,
    ativo boolean DEFAULT false NOT NULL,
    data_depreciacao timestamp without time zone,
    xml_autoria character varying(2000) NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT modulo_constante_textual_check CHECK ((fn_checkconstantetextualexists(constante_textual) IS NOT NULL)),
    CONSTRAINT modulo_constante_textual_descricao_check CHECK (((constante_textual_descricao IS NULL) OR (fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL)))
);


--
-- TOC entry 330 (class 1259 OID 58323380)
-- Dependencies: 3 331
-- Name: modulo_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE modulo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4090 (class 0 OID 0)
-- Dependencies: 330
-- Name: modulo_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE modulo_id_seq OWNED BY modulo.id;


--
-- TOC entry 329 (class 1259 OID 58323366)
-- Dependencies: 2875 2876 2877 2878 2879 3
-- Name: output; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE output (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    nome character varying(200) NOT NULL,
    constante_textual character varying(200) NOT NULL,
    constante_textual_descricao character varying(200),
    contexto character varying(100),
    ativo boolean DEFAULT false NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT output_constante_textual_check CHECK (((constante_textual IS NULL) OR (fn_checkconstantetextualexists(constante_textual) IS NOT NULL))),
    CONSTRAINT output_constante_textual_descricao_check CHECK (((constante_textual_descricao IS NULL) OR (fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL)))
);


--
-- TOC entry 328 (class 1259 OID 58323364)
-- Dependencies: 329 3
-- Name: output_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE output_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4091 (class 0 OID 0)
-- Dependencies: 328
-- Name: output_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE output_id_seq OWNED BY output.id;


--
-- TOC entry 327 (class 1259 OID 58323347)
-- Dependencies: 2868 2869 2870 2871 2872 2873 3
-- Name: perfil; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE perfil (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    id_modulo integer NOT NULL,
    nome character varying(200) NOT NULL,
    constante_textual character varying(200) NOT NULL,
    constante_textual_descricao character varying(200),
    ativo boolean DEFAULT false NOT NULL,
    prioridade integer DEFAULT 1 NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT perfil_constante_textual_check CHECK ((fn_checkconstantetextualexists(constante_textual) IS NOT NULL)),
    CONSTRAINT perfil_constante_textual_descricao_check CHECK (((constante_textual_descricao IS NULL) OR (fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL)))
);


--
-- TOC entry 326 (class 1259 OID 58323345)
-- Dependencies: 327 3
-- Name: perfil_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE perfil_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4092 (class 0 OID 0)
-- Dependencies: 326
-- Name: perfil_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE perfil_id_seq OWNED BY perfil.id;


--
-- TOC entry 325 (class 1259 OID 58323334)
-- Dependencies: 2865 2866 3
-- Name: pessoa; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE pessoa (
    id integer NOT NULL,
    id_perfil_padrao integer,
    id_telefone_default integer,
    id_email_default integer,
    id_endereco_default integer,
    id_endereco_correspondencia integer,
    id_link_default integer,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 324 (class 1259 OID 58323332)
-- Dependencies: 3 325
-- Name: pessoa_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE pessoa_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4093 (class 0 OID 0)
-- Dependencies: 324
-- Name: pessoa_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE pessoa_id_seq OWNED BY pessoa.id;


--
-- TOC entry 323 (class 1259 OID 58323319)
-- Dependencies: 2860 2861 2862 2863 3
-- Name: pessoa_juridica; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE pessoa_juridica (
    id integer NOT NULL,
    id_pessoa_juridica_pai integer,
    nivel integer DEFAULT 1 NOT NULL,
    id_categoria integer NOT NULL,
    id_natureza integer NOT NULL,
    id_area_economia_default integer,
    id_telefone_default integer,
    id_email_default integer,
    id_endereco_default integer,
    id_endereco_correspondencia integer,
    id_link_default integer,
    id_pessoa_responsavel_cadastro integer NOT NULL,
    ativo boolean DEFAULT false NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 322 (class 1259 OID 58323317)
-- Dependencies: 3 323
-- Name: pessoa_juridica_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE pessoa_juridica_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4094 (class 0 OID 0)
-- Dependencies: 322
-- Name: pessoa_juridica_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE pessoa_juridica_id_seq OWNED BY pessoa_juridica.id;


--
-- TOC entry 321 (class 1259 OID 58323303)
-- Dependencies: 2854 2855 2856 2857 2858 3
-- Name: profissao; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE profissao (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    nome character varying(200) NOT NULL,
    constante_textual character varying(200) NOT NULL,
    constante_textual_descricao character varying(200),
    codigo character varying(100),
    ativo boolean DEFAULT false NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT profissao_constante_textual_check CHECK ((fn_checkconstantetextualexists(constante_textual) IS NOT NULL)),
    CONSTRAINT profissao_constante_textual_descricao_check CHECK (((constante_textual_descricao IS NULL) OR (fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL)))
);


--
-- TOC entry 320 (class 1259 OID 58323301)
-- Dependencies: 3 321
-- Name: profissao_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE profissao_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4095 (class 0 OID 0)
-- Dependencies: 320
-- Name: profissao_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE profissao_id_seq OWNED BY profissao.id;


--
-- TOC entry 319 (class 1259 OID 58323285)
-- Dependencies: 2848 2849 2850 2851 2852 3
-- Name: sequencia; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE sequencia (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    nome character varying(200) NOT NULL,
    constante_textual character varying(200) NOT NULL,
    constante_textual_descricao character varying(200),
    ativo boolean DEFAULT false NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT sequencia_constante_textual_check CHECK ((fn_checkconstantetextualexists(constante_textual) IS NOT NULL)),
    CONSTRAINT sequencia_constante_textual_descricao_check CHECK (((constante_textual_descricao IS NULL) OR (fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL)))
);


--
-- TOC entry 318 (class 1259 OID 58323283)
-- Dependencies: 319 3
-- Name: sequencia_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE sequencia_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4096 (class 0 OID 0)
-- Dependencies: 318
-- Name: sequencia_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE sequencia_id_seq OWNED BY sequencia.id;


--
-- TOC entry 317 (class 1259 OID 58323269)
-- Dependencies: 2842 2843 2844 2845 2846 3
-- Name: template; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE template (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    nome character varying(200) NOT NULL,
    constante_textual character varying(200) NOT NULL,
    constante_textual_descricao character varying(200),
    template text NOT NULL,
    ativo boolean DEFAULT false NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    full_file_name character varying(1000),
    CONSTRAINT template_constante_textual_check CHECK ((fn_checkconstantetextualexists(constante_textual) IS NOT NULL)),
    CONSTRAINT template_constante_textual_descricao_check CHECK (((constante_textual_descricao IS NULL) OR (fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL)))
);


--
-- TOC entry 316 (class 1259 OID 58323267)
-- Dependencies: 3 317
-- Name: template_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE template_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4097 (class 0 OID 0)
-- Dependencies: 316
-- Name: template_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE template_id_seq OWNED BY template.id;


--
-- TOC entry 315 (class 1259 OID 58323248)
-- Dependencies: 2833 2834 2835 2836 2837 2838 2839 2840 3
-- Name: tipo_categoria; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE tipo_categoria (
    id integer NOT NULL,
    id_tipo_categoria_pai integer,
    nivel integer DEFAULT 1 NOT NULL,
    nome character varying(200) NOT NULL,
    constante_textual character varying(200) NOT NULL,
    constante_textual_descricao character varying(200),
    codigo character varying(100),
    ativo boolean DEFAULT false NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT tipo_categoria_codigo_check CHECK (((codigo IS NULL) OR (fn_checkcodigotipocategoriaexists(codigo) IS NULL))),
    CONSTRAINT tipo_categoria_constante_textual_check CHECK (((constante_textual IS NULL) OR (fn_checkconstantetextualexists(constante_textual) IS NOT NULL))),
    CONSTRAINT tipo_categoria_constante_textual_descricao_check CHECK (((constante_textual_descricao IS NULL) OR (fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL))),
    CONSTRAINT tipo_categoria_nome_check CHECK (((nome IS NULL) OR (fn_checkcodigotipocategoriaexists(nome) IS NULL)))
);


--
-- TOC entry 4098 (class 0 OID 0)
-- Dependencies: 315
-- Name: TABLE tipo_categoria; Type: COMMENT; Schema: basico; Owner: -
--

COMMENT ON TABLE tipo_categoria IS 'containner de tipos de categoria';


--
-- TOC entry 314 (class 1259 OID 58323246)
-- Dependencies: 3 315
-- Name: tipo_categoria_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE tipo_categoria_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4099 (class 0 OID 0)
-- Dependencies: 314
-- Name: tipo_categoria_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE tipo_categoria_id_seq OWNED BY tipo_categoria.id;


--
-- TOC entry 313 (class 1259 OID 58323232)
-- Dependencies: 2827 2828 2829 2830 2831 3
-- Name: validator; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE validator (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    nome character varying(200) NOT NULL,
    constante_textual character varying(200) NOT NULL,
    constante_textual_descricao character varying(200),
    validator character varying(4000) NOT NULL,
    ativo boolean DEFAULT false NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT validator_constante_textual_check CHECK ((fn_checkconstantetextualexists(constante_textual) IS NOT NULL)),
    CONSTRAINT validator_constante_textual_descricao_check CHECK (((constante_textual_descricao IS NULL) OR (fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL)))
);


--
-- TOC entry 312 (class 1259 OID 58323230)
-- Dependencies: 3 313
-- Name: validator_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE validator_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4100 (class 0 OID 0)
-- Dependencies: 312
-- Name: validator_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE validator_id_seq OWNED BY validator.id;


SET search_path = basico_acao_aplic_assoc_visao, pg_catalog;

--
-- TOC entry 311 (class 1259 OID 58323218)
-- Dependencies: 2825 6
-- Name: assoccl_atrib_met_rec_post; Type: TABLE; Schema: basico_acao_aplic_assoc_visao; Owner: -; Tablespace: 
--

CREATE TABLE assoccl_atrib_met_rec_post (
    id integer NOT NULL,
    id_assoc_visao_ref_post integer NOT NULL,
    id_atributo_metodo_recup_post integer NOT NULL,
    ordem integer NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 310 (class 1259 OID 58323216)
-- Dependencies: 311 6
-- Name: assoccl_atrib_met_rec_post_id_seq; Type: SEQUENCE; Schema: basico_acao_aplic_assoc_visao; Owner: -
--

CREATE SEQUENCE assoccl_atrib_met_rec_post_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4101 (class 0 OID 0)
-- Dependencies: 310
-- Name: assoccl_atrib_met_rec_post_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_acao_aplic_assoc_visao; Owner: -
--

ALTER SEQUENCE assoccl_atrib_met_rec_post_id_seq OWNED BY assoccl_atrib_met_rec_post.id;


--
-- TOC entry 309 (class 1259 OID 58323201)
-- Dependencies: 2820 2821 2822 2823 6
-- Name: atributo_metodo_recup_post; Type: TABLE; Schema: basico_acao_aplic_assoc_visao; Owner: -; Tablespace: 
--

CREATE TABLE atributo_metodo_recup_post (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    constante_textual_label character varying(200),
    atributo character varying(300) NOT NULL,
    metodo_recuperacao character varying(3000) NOT NULL,
    ativo integer DEFAULT 0 NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT atributo_metodo_recup_post_constante_textual_label_check CHECK (((constante_textual_label IS NULL) OR (basico.fn_checkconstantetextualexists(constante_textual_label) IS NOT NULL)))
);


--
-- TOC entry 308 (class 1259 OID 58323199)
-- Dependencies: 309 6
-- Name: atributo_metodo_recup_post_id_seq; Type: SEQUENCE; Schema: basico_acao_aplic_assoc_visao; Owner: -
--

CREATE SEQUENCE atributo_metodo_recup_post_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4102 (class 0 OID 0)
-- Dependencies: 308
-- Name: atributo_metodo_recup_post_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_acao_aplic_assoc_visao; Owner: -
--

ALTER SEQUENCE atributo_metodo_recup_post_id_seq OWNED BY atributo_metodo_recup_post.id;


SET search_path = basico_acao_aplicacao, pg_catalog;

--
-- TOC entry 307 (class 1259 OID 58323183)
-- Dependencies: 2812 2813 2814 2815 2816 2817 2818 7
-- Name: assoc_visao; Type: TABLE; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

CREATE TABLE assoc_visao (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    id_acao_aplicacao integer NOT NULL,
    constante_textual character varying(200),
    constante_textual_descricao character varying(200),
    constante_textual_titulo character varying(200),
    constante_textual_subtitulo character varying(200),
    constante_textual_mensagem character varying(200),
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT assoc_visao_constante_textual_check CHECK (((constante_textual IS NULL) OR (basico.fn_checkconstantetextualexists(constante_textual) IS NOT NULL))),
    CONSTRAINT assoc_visao_constante_textual_descricao_check CHECK (((constante_textual_descricao IS NULL) OR (basico.fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL))),
    CONSTRAINT assoc_visao_constante_textual_mensagem_check CHECK (((constante_textual_mensagem IS NULL) OR (basico.fn_checkconstantetextualexists(constante_textual_mensagem) IS NOT NULL))),
    CONSTRAINT assoc_visao_constante_textual_subtitulo_check CHECK (((constante_textual_subtitulo IS NULL) OR (basico.fn_checkconstantetextualexists(constante_textual_subtitulo) IS NOT NULL))),
    CONSTRAINT assoc_visao_constante_textual_titulo_check CHECK (((constante_textual_titulo IS NULL) OR (basico.fn_checkconstantetextualexists(constante_textual_titulo) IS NOT NULL)))
);


--
-- TOC entry 306 (class 1259 OID 58323181)
-- Dependencies: 7 307
-- Name: assoc_visao_id_seq; Type: SEQUENCE; Schema: basico_acao_aplicacao; Owner: -
--

CREATE SEQUENCE assoc_visao_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4103 (class 0 OID 0)
-- Dependencies: 306
-- Name: assoc_visao_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_acao_aplicacao; Owner: -
--

ALTER SEQUENCE assoc_visao_id_seq OWNED BY assoc_visao.id;


--
-- TOC entry 305 (class 1259 OID 58323169)
-- Dependencies: 2810 7
-- Name: assoccl_metodo_validacao; Type: TABLE; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

CREATE TABLE assoccl_metodo_validacao (
    id integer NOT NULL,
    id_acao_aplicacao integer NOT NULL,
    id_metodo_validacao integer NOT NULL,
    id_perfil integer,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 304 (class 1259 OID 58323167)
-- Dependencies: 305 7
-- Name: assoccl_metodo_validacao_id_seq; Type: SEQUENCE; Schema: basico_acao_aplicacao; Owner: -
--

CREATE SEQUENCE assoccl_metodo_validacao_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4104 (class 0 OID 0)
-- Dependencies: 304
-- Name: assoccl_metodo_validacao_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_acao_aplicacao; Owner: -
--

ALTER SEQUENCE assoccl_metodo_validacao_id_seq OWNED BY assoccl_metodo_validacao.id;


--
-- TOC entry 303 (class 1259 OID 58323155)
-- Dependencies: 2808 7
-- Name: assoccl_perfil; Type: TABLE; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

CREATE TABLE assoccl_perfil (
    id integer NOT NULL,
    id_acao_aplicacao integer NOT NULL,
    id_perfil integer NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 302 (class 1259 OID 58323153)
-- Dependencies: 303 7
-- Name: assoccl_perfil_id_seq; Type: SEQUENCE; Schema: basico_acao_aplicacao; Owner: -
--

CREATE SEQUENCE assoccl_perfil_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4105 (class 0 OID 0)
-- Dependencies: 302
-- Name: assoccl_perfil_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_acao_aplicacao; Owner: -
--

ALTER SEQUENCE assoccl_perfil_id_seq OWNED BY assoccl_perfil.id;


SET search_path = basico_acao_evento, pg_catalog;

--
-- TOC entry 301 (class 1259 OID 58323141)
-- Dependencies: 2806 9
-- Name: assoccl_include; Type: TABLE; Schema: basico_acao_evento; Owner: -; Tablespace: 
--

CREATE TABLE assoccl_include (
    id integer NOT NULL,
    id_acao_evento integer NOT NULL,
    id_include integer NOT NULL,
    ordem integer NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 300 (class 1259 OID 58323139)
-- Dependencies: 9 301
-- Name: assoccl_include_id_seq; Type: SEQUENCE; Schema: basico_acao_evento; Owner: -
--

CREATE SEQUENCE assoccl_include_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4106 (class 0 OID 0)
-- Dependencies: 300
-- Name: assoccl_include_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_acao_evento; Owner: -
--

ALTER SEQUENCE assoccl_include_id_seq OWNED BY assoccl_include.id;


SET search_path = basico_ajuda, pg_catalog;

--
-- TOC entry 299 (class 1259 OID 58323127)
-- Dependencies: 2804 10
-- Name: assoccl_link; Type: TABLE; Schema: basico_ajuda; Owner: -; Tablespace: 
--

CREATE TABLE assoccl_link (
    id integer NOT NULL,
    id_ajuda integer NOT NULL,
    id_link integer NOT NULL,
    ordem integer NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 298 (class 1259 OID 58323125)
-- Dependencies: 10 299
-- Name: assoccl_link_id_seq; Type: SEQUENCE; Schema: basico_ajuda; Owner: -
--

CREATE SEQUENCE assoccl_link_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4107 (class 0 OID 0)
-- Dependencies: 298
-- Name: assoccl_link_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_ajuda; Owner: -
--

ALTER SEQUENCE assoccl_link_id_seq OWNED BY assoccl_link.id;


SET search_path = basico_assoc_banco, pg_catalog;

--
-- TOC entry 297 (class 1259 OID 58323108)
-- Dependencies: 2799 2800 2801 2802 11
-- Name: assoc_tipo_conta; Type: TABLE; Schema: basico_assoc_banco; Owner: -; Tablespace: 
--

CREATE TABLE assoc_tipo_conta (
    id integer NOT NULL,
    id_assoc_banco integer NOT NULL,
    id_categoria integer NOT NULL,
    nome character varying(200) NOT NULL,
    constante_textual character varying(200) NOT NULL,
    constante_textual_descricao character varying(200),
    codigo character varying(10) NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT assoc_tipo_conta_constante_textual_check CHECK ((basico.fn_checkconstantetextualexists(constante_textual) IS NOT NULL)),
    CONSTRAINT assoc_tipo_conta_constante_textual_descricao_check CHECK (((constante_textual_descricao IS NULL) OR (basico.fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL)))
);


--
-- TOC entry 296 (class 1259 OID 58323106)
-- Dependencies: 297 11
-- Name: assoc_tipo_conta_id_seq; Type: SEQUENCE; Schema: basico_assoc_banco; Owner: -
--

CREATE SEQUENCE assoc_tipo_conta_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4108 (class 0 OID 0)
-- Dependencies: 296
-- Name: assoc_tipo_conta_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_assoc_banco; Owner: -
--

ALTER SEQUENCE assoc_tipo_conta_id_seq OWNED BY assoc_tipo_conta.id;


SET search_path = basico_assoc_chave_estrangeira, pg_catalog;

--
-- TOC entry 295 (class 1259 OID 58323094)
-- Dependencies: 2797 12
-- Name: relacao; Type: TABLE; Schema: basico_assoc_chave_estrangeira; Owner: -; Tablespace: 
--

CREATE TABLE relacao (
    id integer NOT NULL,
    tabela_origem character varying(100) NOT NULL,
    campo_origem character varying(100) NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 294 (class 1259 OID 58323092)
-- Dependencies: 12 295
-- Name: relacao_id_seq; Type: SEQUENCE; Schema: basico_assoc_chave_estrangeira; Owner: -
--

CREATE SEQUENCE relacao_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4109 (class 0 OID 0)
-- Dependencies: 294
-- Name: relacao_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_assoc_chave_estrangeira; Owner: -
--

ALTER SEQUENCE relacao_id_seq OWNED BY relacao.id;


SET search_path = basico_assoc_dados_profis, pg_catalog;

--
-- TOC entry 293 (class 1259 OID 58323080)
-- Dependencies: 2795 13
-- Name: assoccl_area_conhecimento; Type: TABLE; Schema: basico_assoc_dados_profis; Owner: -; Tablespace: 
--

CREATE TABLE assoccl_area_conhecimento (
    id integer NOT NULL,
    id_area_conhecimento integer NOT NULL,
    id_assoc_dados_profissionais integer NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 292 (class 1259 OID 58323078)
-- Dependencies: 293 13
-- Name: assoccl_area_conhecimento_id_seq; Type: SEQUENCE; Schema: basico_assoc_dados_profis; Owner: -
--

CREATE SEQUENCE assoccl_area_conhecimento_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4110 (class 0 OID 0)
-- Dependencies: 292
-- Name: assoccl_area_conhecimento_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_assoc_dados_profis; Owner: -
--

ALTER SEQUENCE assoccl_area_conhecimento_id_seq OWNED BY assoccl_area_conhecimento.id;


SET search_path = basico_assoccl_pessoa_perfil, pg_catalog;

--
-- TOC entry 291 (class 1259 OID 58323067)
-- Dependencies: 2792 2793 14
-- Name: assoc_dados; Type: TABLE; Schema: basico_assoccl_pessoa_perfil; Owner: -; Tablespace: 
--

CREATE TABLE assoc_dados (
    id integer NOT NULL,
    id_assoccl_pessoa_perfil integer NOT NULL,
    assinatura_mensagem_email character varying(2000),
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 290 (class 1259 OID 58323065)
-- Dependencies: 14 291
-- Name: assoc_dados_id_seq; Type: SEQUENCE; Schema: basico_assoccl_pessoa_perfil; Owner: -
--

CREATE SEQUENCE assoc_dados_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4111 (class 0 OID 0)
-- Dependencies: 290
-- Name: assoc_dados_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_assoccl_pessoa_perfil; Owner: -
--

ALTER SEQUENCE assoc_dados_id_seq OWNED BY assoc_dados.id;


SET search_path = basico_assoccl_tipo_vinculo, pg_catalog;

--
-- TOC entry 289 (class 1259 OID 58323054)
-- Dependencies: 2789 2790 15
-- Name: assoc_dados; Type: TABLE; Schema: basico_assoccl_tipo_vinculo; Owner: -; Tablespace: 
--

CREATE TABLE assoc_dados (
    id integer NOT NULL,
    id_assoccl_vinculo_profissional integer NOT NULL,
    id_profissao integer NOT NULL,
    id_vinculo_empregaticio integer NOT NULL,
    id_pessoa_juridica_vinculo integer NOT NULL,
    id_regime_trabalho integer NOT NULL,
    matricula character varying(30),
    cargo character varying(100),
    funcao character varying(100),
    atividades_desenvolvidas character varying(2000),
    data_admissao timestamp without time zone,
    data_desligamento timestamp without time zone,
    carga_horaria_semanal integer,
    dedicacao_exclusiva boolean,
    salario_bruto numeric(19,3),
    descricao character varying(2000),
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 288 (class 1259 OID 58323052)
-- Dependencies: 289 15
-- Name: assoc_dados_id_seq; Type: SEQUENCE; Schema: basico_assoccl_tipo_vinculo; Owner: -
--

CREATE SEQUENCE assoc_dados_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4112 (class 0 OID 0)
-- Dependencies: 288
-- Name: assoc_dados_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_assoccl_tipo_vinculo; Owner: -
--

ALTER SEQUENCE assoc_dados_id_seq OWNED BY assoc_dados.id;


SET search_path = basico_categoria, pg_catalog;

--
-- TOC entry 287 (class 1259 OID 58323041)
-- Dependencies: 2786 2787 16
-- Name: assoc_chave_estrangeira; Type: TABLE; Schema: basico_categoria; Owner: -; Tablespace: 
--

CREATE TABLE assoc_chave_estrangeira (
    id integer NOT NULL,
    id_modulo integer NOT NULL,
    id_categoria integer NOT NULL,
    tabela_estrangeira character varying(100) NOT NULL,
    campo_estrangeiro character varying(100) NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT assoc_chave_estrangeira_id_categoria_check CHECK (((basico_cvc.fn_checkcategoriacvc(id_categoria) > 0) OR (fn_checkcategoriachaveestrangeiracategoriaexists(id_categoria) IS NULL)))
);


--
-- TOC entry 4113 (class 0 OID 0)
-- Dependencies: 287
-- Name: TABLE assoc_chave_estrangeira; Type: COMMENT; Schema: basico_categoria; Owner: -
--

COMMENT ON TABLE assoc_chave_estrangeira IS 'conteinner de relacao de uma categoria com uma relacao de chave estrangeira (tabela e campo)';


--
-- TOC entry 286 (class 1259 OID 58323039)
-- Dependencies: 287 16
-- Name: assoc_chave_estrangeira_id_seq; Type: SEQUENCE; Schema: basico_categoria; Owner: -
--

CREATE SEQUENCE assoc_chave_estrangeira_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4114 (class 0 OID 0)
-- Dependencies: 286
-- Name: assoc_chave_estrangeira_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_categoria; Owner: -
--

ALTER SEQUENCE assoc_chave_estrangeira_id_seq OWNED BY assoc_chave_estrangeira.id;


--
-- TOC entry 285 (class 1259 OID 58323029)
-- Dependencies: 2784 16
-- Name: assoc_evento_acao; Type: TABLE; Schema: basico_categoria; Owner: -; Tablespace: 
--

CREATE TABLE assoc_evento_acao (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    tag_abertura character varying(100),
    tag_fechamento character varying(100),
    delimitador character varying(100),
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 284 (class 1259 OID 58323027)
-- Dependencies: 16 285
-- Name: assoc_evento_acao_id_seq; Type: SEQUENCE; Schema: basico_categoria; Owner: -
--

CREATE SEQUENCE assoc_evento_acao_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4115 (class 0 OID 0)
-- Dependencies: 284
-- Name: assoc_evento_acao_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_categoria; Owner: -
--

ALTER SEQUENCE assoc_evento_acao_id_seq OWNED BY assoc_evento_acao.id;


SET search_path = basico_componente, pg_catalog;

--
-- TOC entry 283 (class 1259 OID 58323015)
-- Dependencies: 2782 17
-- Name: assoccl_include; Type: TABLE; Schema: basico_componente; Owner: -; Tablespace: 
--

CREATE TABLE assoccl_include (
    id integer NOT NULL,
    id_componente integer NOT NULL,
    id_include integer NOT NULL,
    ordem integer NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 282 (class 1259 OID 58323013)
-- Dependencies: 17 283
-- Name: assoccl_include_id_seq; Type: SEQUENCE; Schema: basico_componente; Owner: -
--

CREATE SEQUENCE assoccl_include_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4116 (class 0 OID 0)
-- Dependencies: 282
-- Name: assoccl_include_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_componente; Owner: -
--

ALTER SEQUENCE assoccl_include_id_seq OWNED BY assoccl_include.id;


SET search_path = basico_contato, pg_catalog;

--
-- TOC entry 281 (class 1259 OID 58322995)
-- Dependencies: 2774 2775 2776 2777 2778 2779 2780 18
-- Name: cpg_email; Type: TABLE; Schema: basico_contato; Owner: -; Tablespace: 
--

CREATE TABLE cpg_email (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    id_generico_proprietario integer NOT NULL,
    nome character varying(200),
    constante_textual character varying(200),
    constante_textual_descricao character varying(200),
    unique_id character varying(100) NOT NULL,
    email character varying(100) NOT NULL,
    descricao character varying(2000),
    validado boolean DEFAULT false NOT NULL,
    ativo boolean DEFAULT false NOT NULL,
    datahora_ultima_validacao timestamp without time zone,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT cpg_email_constante_textual_check CHECK (((constante_textual IS NULL) OR (basico.fn_checkconstantetextualexists(constante_textual) IS NOT NULL))),
    CONSTRAINT cpg_email_constante_textual_descricao_check CHECK (((constante_textual_descricao IS NULL) OR (basico.fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL))),
    CONSTRAINT cpg_email_nome_check CHECK (((nome IS NULL) OR (fn_checknomeemailexists(nome) IS NULL)))
);


--
-- TOC entry 280 (class 1259 OID 58322993)
-- Dependencies: 18 281
-- Name: cpg_email_id_seq; Type: SEQUENCE; Schema: basico_contato; Owner: -
--

CREATE SEQUENCE cpg_email_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4117 (class 0 OID 0)
-- Dependencies: 280
-- Name: cpg_email_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_contato; Owner: -
--

ALTER SEQUENCE cpg_email_id_seq OWNED BY cpg_email.id;


--
-- TOC entry 279 (class 1259 OID 58322976)
-- Dependencies: 2767 2768 2769 2770 2771 2772 18
-- Name: cpg_telefone; Type: TABLE; Schema: basico_contato; Owner: -; Tablespace: 
--

CREATE TABLE cpg_telefone (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    id_generico_proprietario integer NOT NULL,
    nome character varying(200),
    constante_textual character varying(200),
    constante_textual_descricao character varying(200),
    codigo_pais character varying(10) NOT NULL,
    codigo_area character varying(10) NOT NULL,
    telefone character varying(10) NOT NULL,
    ramal character varying(10),
    ativo boolean DEFAULT false NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT cpg_telefone_constante_textual_check CHECK (((constante_textual IS NULL) OR (basico.fn_checkconstantetextualexists(constante_textual) IS NOT NULL))),
    CONSTRAINT cpg_telefone_constante_textual_descricao_check CHECK (((constante_textual_descricao IS NULL) OR (basico.fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL))),
    CONSTRAINT cpg_telefone_nome_check CHECK (((nome IS NULL) OR (fn_checknometelefoneexists(nome) IS NULL)))
);


--
-- TOC entry 278 (class 1259 OID 58322974)
-- Dependencies: 279 18
-- Name: cpg_telefone_id_seq; Type: SEQUENCE; Schema: basico_contato; Owner: -
--

CREATE SEQUENCE cpg_telefone_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4118 (class 0 OID 0)
-- Dependencies: 278
-- Name: cpg_telefone_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_contato; Owner: -
--

ALTER SEQUENCE cpg_telefone_id_seq OWNED BY cpg_telefone.id;


SET search_path = basico_cvc, pg_catalog;

--
-- TOC entry 277 (class 1259 OID 58322959)
-- Dependencies: 2762 2763 2764 2765 19
-- Name: cvc; Type: TABLE; Schema: basico_cvc; Owner: -; Tablespace: 
--

CREATE TABLE cvc (
    id integer NOT NULL,
    id_assoc_chave_estrangeira integer NOT NULL,
    id_generico integer NOT NULL,
    versao integer DEFAULT 1 NOT NULL,
    objeto character varying(4000) NOT NULL,
    checksum character varying(200) NOT NULL,
    validade_inicio timestamp without time zone DEFAULT now() NOT NULL,
    validade_termino timestamp without time zone,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 276 (class 1259 OID 58322957)
-- Dependencies: 277 19
-- Name: cvc_id_seq; Type: SEQUENCE; Schema: basico_cvc; Owner: -
--

CREATE SEQUENCE cvc_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4119 (class 0 OID 0)
-- Dependencies: 276
-- Name: cvc_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_cvc; Owner: -
--

ALTER SEQUENCE cvc_id_seq OWNED BY cvc.id;


SET search_path = basico_dados_academicos, pg_catalog;

--
-- TOC entry 275 (class 1259 OID 58322943)
-- Dependencies: 2756 2757 2758 2759 2760 20
-- Name: titulacao; Type: TABLE; Schema: basico_dados_academicos; Owner: -; Tablespace: 
--

CREATE TABLE titulacao (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    nome character varying(200) NOT NULL,
    constante_textual character varying(200) NOT NULL,
    constante_textual_descricao character varying(200),
    ativo boolean DEFAULT false NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT titulacao_constante_textual_check CHECK ((basico.fn_checkconstantetextualexists(constante_textual) IS NOT NULL)),
    CONSTRAINT titulacao_constante_textual_descricao_check CHECK (((constante_textual_descricao IS NULL) OR (basico.fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL)))
);


--
-- TOC entry 274 (class 1259 OID 58322941)
-- Dependencies: 275 20
-- Name: titulacao_id_seq; Type: SEQUENCE; Schema: basico_dados_academicos; Owner: -
--

CREATE SEQUENCE titulacao_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4120 (class 0 OID 0)
-- Dependencies: 274
-- Name: titulacao_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_dados_academicos; Owner: -
--

ALTER SEQUENCE titulacao_id_seq OWNED BY titulacao.id;


SET search_path = basico_dados_biometricos, pg_catalog;

--
-- TOC entry 273 (class 1259 OID 58322930)
-- Dependencies: 2753 2754 21
-- Name: assoc_pessoa; Type: TABLE; Schema: basico_dados_biometricos; Owner: -; Tablespace: 
--

CREATE TABLE assoc_pessoa (
    id integer NOT NULL,
    id_dados_biometricos integer NOT NULL,
    id_categoria_sexo integer NOT NULL,
    id_categoria_raca integer NOT NULL,
    id_categoria_tipo_sanguineo integer NOT NULL,
    altura numeric(3,2),
    peso numeric(6,3),
    historico_medico character varying(2000),
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 272 (class 1259 OID 58322928)
-- Dependencies: 273 21
-- Name: assoc_pessoa_id_seq; Type: SEQUENCE; Schema: basico_dados_biometricos; Owner: -
--

CREATE SEQUENCE assoc_pessoa_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4121 (class 0 OID 0)
-- Dependencies: 272
-- Name: assoc_pessoa_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_dados_biometricos; Owner: -
--

ALTER SEQUENCE assoc_pessoa_id_seq OWNED BY assoc_pessoa.id;


SET search_path = basico_dados_profissionais, pg_catalog;

--
-- TOC entry 271 (class 1259 OID 58322911)
-- Dependencies: 2746 2747 2748 2749 2750 2751 22
-- Name: regime_trabalho; Type: TABLE; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE TABLE regime_trabalho (
    id integer NOT NULL,
    id_regime_trabalho_pai integer,
    nivel integer DEFAULT 1 NOT NULL,
    id_categoria integer NOT NULL,
    nome character varying(200) NOT NULL,
    constante_textual character varying(200) NOT NULL,
    constante_textual_descricao character varying(200),
    codigo character varying(100),
    ativo boolean DEFAULT false NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT regime_trabalho_constante_textual_check CHECK ((basico.fn_checkconstantetextualexists(constante_textual) IS NOT NULL)),
    CONSTRAINT regime_trabalho_constante_textual_descricao_check CHECK (((constante_textual_descricao IS NULL) OR (basico.fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL)))
);


--
-- TOC entry 270 (class 1259 OID 58322909)
-- Dependencies: 271 22
-- Name: regime_trabalho_id_seq; Type: SEQUENCE; Schema: basico_dados_profissionais; Owner: -
--

CREATE SEQUENCE regime_trabalho_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4122 (class 0 OID 0)
-- Dependencies: 270
-- Name: regime_trabalho_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_dados_profissionais; Owner: -
--

ALTER SEQUENCE regime_trabalho_id_seq OWNED BY regime_trabalho.id;


--
-- TOC entry 269 (class 1259 OID 58322891)
-- Dependencies: 2738 2739 2740 2741 2742 2743 2744 22
-- Name: tipo_vinculo; Type: TABLE; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE TABLE tipo_vinculo (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    nome character varying(200) NOT NULL,
    constante_textual character varying(200) NOT NULL,
    constante_textual_descricao character varying(200),
    codigo character varying(100),
    permite_vinculo_empregaticio boolean DEFAULT true NOT NULL,
    permite_associacao_pj boolean DEFAULT true NOT NULL,
    ativo boolean DEFAULT false NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT tipo_vinculo_constante_textual_check CHECK ((basico.fn_checkconstantetextualexists(constante_textual) IS NOT NULL)),
    CONSTRAINT tipo_vinculo_constante_textual_descricao_check CHECK (((constante_textual_descricao IS NULL) OR (basico.fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL)))
);


--
-- TOC entry 268 (class 1259 OID 58322889)
-- Dependencies: 269 22
-- Name: tipo_vinculo_id_seq; Type: SEQUENCE; Schema: basico_dados_profissionais; Owner: -
--

CREATE SEQUENCE tipo_vinculo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4123 (class 0 OID 0)
-- Dependencies: 268
-- Name: tipo_vinculo_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_dados_profissionais; Owner: -
--

ALTER SEQUENCE tipo_vinculo_id_seq OWNED BY tipo_vinculo.id;


--
-- TOC entry 267 (class 1259 OID 58322873)
-- Dependencies: 2732 2733 2734 2735 2736 22
-- Name: vinculo_empregaticio; Type: TABLE; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE TABLE vinculo_empregaticio (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    nome character varying(200) NOT NULL,
    constante_textual character varying(200) NOT NULL,
    constante_textual_descricao character varying(200),
    codigo character varying(100),
    ativo boolean DEFAULT false NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT vinculo_empregaticio_constante_textual_check CHECK ((basico.fn_checkconstantetextualexists(constante_textual) IS NOT NULL)),
    CONSTRAINT vinculo_empregaticio_constante_textual_descricao_check CHECK (((constante_textual_descricao IS NULL) OR (basico.fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL)))
);


--
-- TOC entry 266 (class 1259 OID 58322871)
-- Dependencies: 267 22
-- Name: vinculo_empregaticio_id_seq; Type: SEQUENCE; Schema: basico_dados_profissionais; Owner: -
--

CREATE SEQUENCE vinculo_empregaticio_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4124 (class 0 OID 0)
-- Dependencies: 266
-- Name: vinculo_empregaticio_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_dados_profissionais; Owner: -
--

ALTER SEQUENCE vinculo_empregaticio_id_seq OWNED BY vinculo_empregaticio.id;


SET search_path = basico_decorator, pg_catalog;

--
-- TOC entry 265 (class 1259 OID 58322859)
-- Dependencies: 2730 23
-- Name: assoccl_include; Type: TABLE; Schema: basico_decorator; Owner: -; Tablespace: 
--

CREATE TABLE assoccl_include (
    id integer NOT NULL,
    id_decorator integer NOT NULL,
    id_include integer NOT NULL,
    ordem integer NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 264 (class 1259 OID 58322857)
-- Dependencies: 23 265
-- Name: assoccl_include_id_seq; Type: SEQUENCE; Schema: basico_decorator; Owner: -
--

CREATE SEQUENCE assoccl_include_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4125 (class 0 OID 0)
-- Dependencies: 264
-- Name: assoccl_include_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_decorator; Owner: -
--

ALTER SEQUENCE assoccl_include_id_seq OWNED BY assoccl_include.id;


SET search_path = basico_form_assoccl_elem_grupo, pg_catalog;

--
-- TOC entry 263 (class 1259 OID 58322845)
-- Dependencies: 2728 24
-- Name: assoccl_decorator; Type: TABLE; Schema: basico_form_assoccl_elem_grupo; Owner: -; Tablespace: 
--

CREATE TABLE assoccl_decorator (
    id integer NOT NULL,
    id_grupo integer NOT NULL,
    id_decorator integer NOT NULL,
    ordem integer NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 262 (class 1259 OID 58322843)
-- Dependencies: 24 263
-- Name: assoccl_decorator_id_seq; Type: SEQUENCE; Schema: basico_form_assoccl_elem_grupo; Owner: -
--

CREATE SEQUENCE assoccl_decorator_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4126 (class 0 OID 0)
-- Dependencies: 262
-- Name: assoccl_decorator_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_form_assoccl_elem_grupo; Owner: -
--

ALTER SEQUENCE assoccl_decorator_id_seq OWNED BY assoccl_decorator.id;


SET search_path = basico_form_assoccl_elemento, pg_catalog;

--
-- TOC entry 261 (class 1259 OID 58322830)
-- Dependencies: 2725 2726 25
-- Name: assoccl_decorator; Type: TABLE; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE TABLE assoccl_decorator (
    id integer NOT NULL,
    id_assoccl_elemento integer NOT NULL,
    id_decorator integer NOT NULL,
    remove_flag boolean DEFAULT false NOT NULL,
    ordem integer NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 260 (class 1259 OID 58322828)
-- Dependencies: 25 261
-- Name: assoccl_decorator_id_seq; Type: SEQUENCE; Schema: basico_form_assoccl_elemento; Owner: -
--

CREATE SEQUENCE assoccl_decorator_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4127 (class 0 OID 0)
-- Dependencies: 260
-- Name: assoccl_decorator_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER SEQUENCE assoccl_decorator_id_seq OWNED BY assoccl_decorator.id;


--
-- TOC entry 259 (class 1259 OID 58322815)
-- Dependencies: 2722 2723 25
-- Name: assoccl_evento; Type: TABLE; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE TABLE assoccl_evento (
    id integer NOT NULL,
    id_assoccl_elemento integer NOT NULL,
    id_evento integer NOT NULL,
    id_acao_evento integer NOT NULL,
    ordem integer NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 258 (class 1259 OID 58322813)
-- Dependencies: 25 259
-- Name: assoccl_evento_id_seq; Type: SEQUENCE; Schema: basico_form_assoccl_elemento; Owner: -
--

CREATE SEQUENCE assoccl_evento_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4128 (class 0 OID 0)
-- Dependencies: 258
-- Name: assoccl_evento_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER SEQUENCE assoccl_evento_id_seq OWNED BY assoccl_evento.id;


--
-- TOC entry 257 (class 1259 OID 58322800)
-- Dependencies: 2719 2720 25
-- Name: assoccl_filter; Type: TABLE; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE TABLE assoccl_filter (
    id integer NOT NULL,
    id_assoccl_elemento integer NOT NULL,
    id_filter integer NOT NULL,
    ordem integer NOT NULL,
    remove_flag boolean DEFAULT false NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 256 (class 1259 OID 58322798)
-- Dependencies: 25 257
-- Name: assoccl_filter_id_seq; Type: SEQUENCE; Schema: basico_form_assoccl_elemento; Owner: -
--

CREATE SEQUENCE assoccl_filter_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4129 (class 0 OID 0)
-- Dependencies: 256
-- Name: assoccl_filter_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER SEQUENCE assoccl_filter_id_seq OWNED BY assoccl_filter.id;


--
-- TOC entry 255 (class 1259 OID 58322785)
-- Dependencies: 2716 2717 25
-- Name: assoccl_include; Type: TABLE; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE TABLE assoccl_include (
    id integer NOT NULL,
    id_assoccl_elemento integer NOT NULL,
    id_include integer NOT NULL,
    ordem integer NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT assoccl_include_check CHECK ((basico_formulario_elemento.fn_checkincludeassocclelementoexists(id_assoccl_elemento, id_include) IS NULL))
);


--
-- TOC entry 254 (class 1259 OID 58322783)
-- Dependencies: 255 25
-- Name: assoccl_include_id_seq; Type: SEQUENCE; Schema: basico_form_assoccl_elemento; Owner: -
--

CREATE SEQUENCE assoccl_include_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4130 (class 0 OID 0)
-- Dependencies: 254
-- Name: assoccl_include_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER SEQUENCE assoccl_include_id_seq OWNED BY assoccl_include.id;


--
-- TOC entry 253 (class 1259 OID 58322770)
-- Dependencies: 2713 2714 25
-- Name: assoccl_validator; Type: TABLE; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE TABLE assoccl_validator (
    id integer NOT NULL,
    id_assoccl_elemento integer NOT NULL,
    id_validator integer NOT NULL,
    remove_flag boolean DEFAULT false NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 252 (class 1259 OID 58322768)
-- Dependencies: 253 25
-- Name: assoccl_validator_id_seq; Type: SEQUENCE; Schema: basico_form_assoccl_elemento; Owner: -
--

CREATE SEQUENCE assoccl_validator_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4131 (class 0 OID 0)
-- Dependencies: 252
-- Name: assoccl_validator_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER SEQUENCE assoccl_validator_id_seq OWNED BY assoccl_validator.id;


--
-- TOC entry 251 (class 1259 OID 58322754)
-- Dependencies: 2707 2708 2709 2710 2711 25
-- Name: grupo; Type: TABLE; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE TABLE grupo (
    id integer NOT NULL,
    nome character varying(200) NOT NULL,
    constante_textual character varying(200) NOT NULL,
    constante_textual_descricao character varying(200),
    constante_textual_label character varying(200) NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT grupo_constante_textual_check CHECK (((constante_textual IS NULL) OR (basico.fn_checkconstantetextualexists(constante_textual) IS NOT NULL))),
    CONSTRAINT grupo_constante_textual_descricao_check CHECK (((constante_textual_descricao IS NULL) OR (basico.fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL))),
    CONSTRAINT grupo_constante_textual_label_check CHECK (((constante_textual_label IS NULL) OR (basico.fn_checkconstantetextualexists(constante_textual_label) IS NOT NULL)))
);


--
-- TOC entry 250 (class 1259 OID 58322752)
-- Dependencies: 25 251
-- Name: grupo_id_seq; Type: SEQUENCE; Schema: basico_form_assoccl_elemento; Owner: -
--

CREATE SEQUENCE grupo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4132 (class 0 OID 0)
-- Dependencies: 250
-- Name: grupo_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER SEQUENCE grupo_id_seq OWNED BY grupo.id;


SET search_path = basico_formulario, pg_catalog;

--
-- TOC entry 249 (class 1259 OID 58322740)
-- Dependencies: 2705 26
-- Name: assoccl_decorator; Type: TABLE; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE TABLE assoccl_decorator (
    id integer NOT NULL,
    id_formulario integer NOT NULL,
    id_decorator integer NOT NULL,
    ordem integer NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 248 (class 1259 OID 58322738)
-- Dependencies: 249 26
-- Name: assoccl_decorator_id_seq; Type: SEQUENCE; Schema: basico_formulario; Owner: -
--

CREATE SEQUENCE assoccl_decorator_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4133 (class 0 OID 0)
-- Dependencies: 248
-- Name: assoccl_decorator_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_formulario; Owner: -
--

ALTER SEQUENCE assoccl_decorator_id_seq OWNED BY assoccl_decorator.id;


--
-- TOC entry 247 (class 1259 OID 58322720)
-- Dependencies: 2699 2700 2701 2702 2703 26
-- Name: assoccl_elemento; Type: TABLE; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE TABLE assoccl_elemento (
    id integer NOT NULL,
    id_formulario integer NOT NULL,
    id_elemento integer NOT NULL,
    id_ajuda integer,
    id_grupo integer,
    constante_textual_label character varying(200),
    element_name character varying(100),
    element_attribs character varying(1000),
    element_value_default character varying(2000),
    element_reloadable boolean DEFAULT false NOT NULL,
    element_required boolean DEFAULT true NOT NULL,
    ordem integer NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT assoccl_elemento_constante_textual_label_check CHECK (((constante_textual_label IS NULL) OR (basico.fn_checkconstantetextualexists(constante_textual_label) IS NOT NULL)))
);


--
-- TOC entry 246 (class 1259 OID 58322718)
-- Dependencies: 247 26
-- Name: assoccl_elemento_id_seq; Type: SEQUENCE; Schema: basico_formulario; Owner: -
--

CREATE SEQUENCE assoccl_elemento_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4134 (class 0 OID 0)
-- Dependencies: 246
-- Name: assoccl_elemento_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_formulario; Owner: -
--

ALTER SEQUENCE assoccl_elemento_id_seq OWNED BY assoccl_elemento.id;


--
-- TOC entry 245 (class 1259 OID 58322706)
-- Dependencies: 2697 26
-- Name: assoccl_evento; Type: TABLE; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE TABLE assoccl_evento (
    id integer NOT NULL,
    id_formulario integer NOT NULL,
    id_evento integer NOT NULL,
    id_acao_evento integer NOT NULL,
    ordem integer NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 244 (class 1259 OID 58322704)
-- Dependencies: 245 26
-- Name: assoccl_evento_id_seq; Type: SEQUENCE; Schema: basico_formulario; Owner: -
--

CREATE SEQUENCE assoccl_evento_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4135 (class 0 OID 0)
-- Dependencies: 244
-- Name: assoccl_evento_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_formulario; Owner: -
--

ALTER SEQUENCE assoccl_evento_id_seq OWNED BY assoccl_evento.id;


--
-- TOC entry 243 (class 1259 OID 58322692)
-- Dependencies: 2695 26
-- Name: assoccl_include; Type: TABLE; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE TABLE assoccl_include (
    id integer NOT NULL,
    id_formulario integer NOT NULL,
    id_include integer NOT NULL,
    ordem integer NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 242 (class 1259 OID 58322690)
-- Dependencies: 26 243
-- Name: assoccl_include_id_seq; Type: SEQUENCE; Schema: basico_formulario; Owner: -
--

CREATE SEQUENCE assoccl_include_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4136 (class 0 OID 0)
-- Dependencies: 242
-- Name: assoccl_include_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_formulario; Owner: -
--

ALTER SEQUENCE assoccl_include_id_seq OWNED BY assoccl_include.id;


--
-- TOC entry 241 (class 1259 OID 58322678)
-- Dependencies: 2693 26
-- Name: assoccl_modulo; Type: TABLE; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE TABLE assoccl_modulo (
    id integer NOT NULL,
    id_modulo integer NOT NULL,
    id_formulario integer NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 240 (class 1259 OID 58322676)
-- Dependencies: 241 26
-- Name: assoccl_modulo_id_seq; Type: SEQUENCE; Schema: basico_formulario; Owner: -
--

CREATE SEQUENCE assoccl_modulo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4137 (class 0 OID 0)
-- Dependencies: 240
-- Name: assoccl_modulo_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_formulario; Owner: -
--

ALTER SEQUENCE assoccl_modulo_id_seq OWNED BY assoccl_modulo.id;


--
-- TOC entry 239 (class 1259 OID 58322664)
-- Dependencies: 2691 26
-- Name: assoccl_template; Type: TABLE; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE TABLE assoccl_template (
    id integer NOT NULL,
    id_template integer NOT NULL,
    id_formulario integer NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 238 (class 1259 OID 58322662)
-- Dependencies: 239 26
-- Name: assoccl_template_id_seq; Type: SEQUENCE; Schema: basico_formulario; Owner: -
--

CREATE SEQUENCE assoccl_template_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4138 (class 0 OID 0)
-- Dependencies: 238
-- Name: assoccl_template_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_formulario; Owner: -
--

ALTER SEQUENCE assoccl_template_id_seq OWNED BY assoccl_template.id;


--
-- TOC entry 237 (class 1259 OID 58322648)
-- Dependencies: 2685 2686 2687 2688 2689 26
-- Name: decorator; Type: TABLE; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE TABLE decorator (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    nome character varying(100) NOT NULL,
    constante_textual character varying(200) NOT NULL,
    constante_textual_descricao character varying(200),
    decorator character varying(2000) NOT NULL,
    ativo boolean DEFAULT false NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT decorator_constante_textual_check CHECK (((constante_textual IS NULL) OR (basico.fn_checkconstantetextualexists(constante_textual) IS NOT NULL))),
    CONSTRAINT decorator_constante_textual_descricao_check CHECK (((constante_textual_descricao IS NULL) OR (basico.fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL)))
);


--
-- TOC entry 236 (class 1259 OID 58322646)
-- Dependencies: 26 237
-- Name: decorator_id_seq; Type: SEQUENCE; Schema: basico_formulario; Owner: -
--

CREATE SEQUENCE decorator_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4139 (class 0 OID 0)
-- Dependencies: 236
-- Name: decorator_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_formulario; Owner: -
--

ALTER SEQUENCE decorator_id_seq OWNED BY decorator.id;


--
-- TOC entry 235 (class 1259 OID 58322628)
-- Dependencies: 2677 2678 2679 2680 2681 2682 2683 26
-- Name: elemento; Type: TABLE; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE TABLE elemento (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    id_componente integer NOT NULL,
    id_ajuda integer,
    nome character varying(200) NOT NULL,
    constante_textual character varying(200) NOT NULL,
    constante_textual_descricao character varying(200),
    constante_textual_label character varying(200),
    element character varying(2000) NOT NULL,
    element_name character varying(100) NOT NULL,
    element_attribs character varying(1000),
    element_value_default character varying(2000),
    element_reloadable boolean DEFAULT false NOT NULL,
    ativo boolean DEFAULT false NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT elemento_constante_textual_check CHECK (((constante_textual IS NULL) OR (basico.fn_checkconstantetextualexists(constante_textual) IS NOT NULL))),
    CONSTRAINT elemento_constante_textual_descricao_check CHECK (((constante_textual_descricao IS NULL) OR (basico.fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL))),
    CONSTRAINT elemento_constante_textual_label_check CHECK (((constante_textual_label IS NULL) OR (basico.fn_checkconstantetextualexists(constante_textual_label) IS NOT NULL)))
);


--
-- TOC entry 234 (class 1259 OID 58322626)
-- Dependencies: 26 235
-- Name: elemento_id_seq; Type: SEQUENCE; Schema: basico_formulario; Owner: -
--

CREATE SEQUENCE elemento_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4140 (class 0 OID 0)
-- Dependencies: 234
-- Name: elemento_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_formulario; Owner: -
--

ALTER SEQUENCE elemento_id_seq OWNED BY elemento.id;


--
-- TOC entry 233 (class 1259 OID 58322614)
-- Dependencies: 2673 2674 2675 26
-- Name: rascunho; Type: TABLE; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE TABLE rascunho (
    id integer NOT NULL,
    id_rascunho_pai integer NOT NULL,
    id_categoria integer NOT NULL,
    id_assoccl_perfil integer NOT NULL,
    id_assocag_grupo integer,
    id_assocsq_acao_aplicacao integer,
    id_assoc_visao_origem integer NOT NULL,
    request character varying(2000) NOT NULL,
    post text NOT NULL,
    form_action character varying(1000) NOT NULL,
    form_name character varying(300) NOT NULL,
    action_origem character varying(1000) NOT NULL,
    ativo boolean DEFAULT false NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 232 (class 1259 OID 58322612)
-- Dependencies: 26 233
-- Name: rascunho_id_seq; Type: SEQUENCE; Schema: basico_formulario; Owner: -
--

CREATE SEQUENCE rascunho_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4141 (class 0 OID 0)
-- Dependencies: 232
-- Name: rascunho_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_formulario; Owner: -
--

ALTER SEQUENCE rascunho_id_seq OWNED BY rascunho.id;


SET search_path = basico_formulario_elemento, pg_catalog;

--
-- TOC entry 231 (class 1259 OID 58322600)
-- Dependencies: 2671 27
-- Name: assoccl_decorator; Type: TABLE; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

CREATE TABLE assoccl_decorator (
    id integer NOT NULL,
    id_elemento integer NOT NULL,
    id_decorator integer NOT NULL,
    ordem integer NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 230 (class 1259 OID 58322598)
-- Dependencies: 231 27
-- Name: assoccl_decorator_id_seq; Type: SEQUENCE; Schema: basico_formulario_elemento; Owner: -
--

CREATE SEQUENCE assoccl_decorator_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4142 (class 0 OID 0)
-- Dependencies: 230
-- Name: assoccl_decorator_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_formulario_elemento; Owner: -
--

ALTER SEQUENCE assoccl_decorator_id_seq OWNED BY assoccl_decorator.id;


--
-- TOC entry 229 (class 1259 OID 58322585)
-- Dependencies: 2668 2669 27
-- Name: assoccl_evento; Type: TABLE; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

CREATE TABLE assoccl_evento (
    id integer NOT NULL,
    id_elemento integer NOT NULL,
    id_evento integer NOT NULL,
    id_acao_evento integer NOT NULL,
    ordem integer NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 228 (class 1259 OID 58322583)
-- Dependencies: 27 229
-- Name: assoccl_evento_id_seq; Type: SEQUENCE; Schema: basico_formulario_elemento; Owner: -
--

CREATE SEQUENCE assoccl_evento_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4143 (class 0 OID 0)
-- Dependencies: 228
-- Name: assoccl_evento_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_formulario_elemento; Owner: -
--

ALTER SEQUENCE assoccl_evento_id_seq OWNED BY assoccl_evento.id;


--
-- TOC entry 227 (class 1259 OID 58322571)
-- Dependencies: 2666 27
-- Name: assoccl_filter; Type: TABLE; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

CREATE TABLE assoccl_filter (
    id integer NOT NULL,
    id_elemento integer NOT NULL,
    id_filter integer NOT NULL,
    ordem integer NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 226 (class 1259 OID 58322569)
-- Dependencies: 227 27
-- Name: assoccl_filter_id_seq; Type: SEQUENCE; Schema: basico_formulario_elemento; Owner: -
--

CREATE SEQUENCE assoccl_filter_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4144 (class 0 OID 0)
-- Dependencies: 226
-- Name: assoccl_filter_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_formulario_elemento; Owner: -
--

ALTER SEQUENCE assoccl_filter_id_seq OWNED BY assoccl_filter.id;


--
-- TOC entry 225 (class 1259 OID 58322557)
-- Dependencies: 2664 27
-- Name: assoccl_validator; Type: TABLE; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

CREATE TABLE assoccl_validator (
    id integer NOT NULL,
    id_elemento integer NOT NULL,
    id_validator integer NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 224 (class 1259 OID 58322555)
-- Dependencies: 225 27
-- Name: assoccl_validator_id_seq; Type: SEQUENCE; Schema: basico_formulario_elemento; Owner: -
--

CREATE SEQUENCE assoccl_validator_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4145 (class 0 OID 0)
-- Dependencies: 224
-- Name: assoccl_validator_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_formulario_elemento; Owner: -
--

ALTER SEQUENCE assoccl_validator_id_seq OWNED BY assoccl_validator.id;


SET search_path = basico_formulario_rascunho, pg_catalog;

--
-- TOC entry 223 (class 1259 OID 58322544)
-- Dependencies: 2661 2662 28
-- Name: assocag_grupo; Type: TABLE; Schema: basico_formulario_rascunho; Owner: -; Tablespace: 
--

CREATE TABLE assocag_grupo (
    id integer NOT NULL,
    id_assoccl_perfil integer NOT NULL,
    forms character varying(4000) NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 222 (class 1259 OID 58322542)
-- Dependencies: 223 28
-- Name: assocag_grupo_id_seq; Type: SEQUENCE; Schema: basico_formulario_rascunho; Owner: -
--

CREATE SEQUENCE assocag_grupo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4146 (class 0 OID 0)
-- Dependencies: 222
-- Name: assocag_grupo_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_formulario_rascunho; Owner: -
--

ALTER SEQUENCE assocag_grupo_id_seq OWNED BY assocag_grupo.id;


SET search_path = basico_localizacao, pg_catalog;

--
-- TOC entry 221 (class 1259 OID 58322528)
-- Dependencies: 2657 2658 2659 29
-- Name: assoc_bairro; Type: TABLE; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE TABLE assoc_bairro (
    id integer NOT NULL,
    id_municipio integer NOT NULL,
    nome character varying(200) NOT NULL,
    ativo boolean DEFAULT false NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 220 (class 1259 OID 58322526)
-- Dependencies: 29 221
-- Name: assoc_bairro_id_seq; Type: SEQUENCE; Schema: basico_localizacao; Owner: -
--

CREATE SEQUENCE assoc_bairro_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4147 (class 0 OID 0)
-- Dependencies: 220
-- Name: assoc_bairro_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_localizacao; Owner: -
--

ALTER SEQUENCE assoc_bairro_id_seq OWNED BY assoc_bairro.id;


--
-- TOC entry 219 (class 1259 OID 58322511)
-- Dependencies: 2652 2653 2654 2655 29
-- Name: assoc_estado; Type: TABLE; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE TABLE assoc_estado (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    id_estado_pai integer,
    nivel integer DEFAULT 1 NOT NULL,
    id_pais integer NOT NULL,
    nome character varying(200) NOT NULL,
    sigla character varying(50) NOT NULL,
    codigo_ddd character varying(10) NOT NULL,
    ativo boolean DEFAULT false NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 218 (class 1259 OID 58322509)
-- Dependencies: 219 29
-- Name: assoc_estado_id_seq; Type: SEQUENCE; Schema: basico_localizacao; Owner: -
--

CREATE SEQUENCE assoc_estado_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4148 (class 0 OID 0)
-- Dependencies: 218
-- Name: assoc_estado_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_localizacao; Owner: -
--

ALTER SEQUENCE assoc_estado_id_seq OWNED BY assoc_estado.id;


--
-- TOC entry 217 (class 1259 OID 58322495)
-- Dependencies: 2648 2649 2650 29
-- Name: assoc_logradouro; Type: TABLE; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE TABLE assoc_logradouro (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    id_bairro integer NOT NULL,
    nome character varying(200) NOT NULL,
    ativo boolean DEFAULT false NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 216 (class 1259 OID 58322493)
-- Dependencies: 29 217
-- Name: assoc_logradouro_id_seq; Type: SEQUENCE; Schema: basico_localizacao; Owner: -
--

CREATE SEQUENCE assoc_logradouro_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4149 (class 0 OID 0)
-- Dependencies: 216
-- Name: assoc_logradouro_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_localizacao; Owner: -
--

ALTER SEQUENCE assoc_logradouro_id_seq OWNED BY assoc_logradouro.id;


--
-- TOC entry 215 (class 1259 OID 58322478)
-- Dependencies: 2643 2644 2645 2646 29
-- Name: assoc_municipio; Type: TABLE; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE TABLE assoc_municipio (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    id_municipio_pai integer,
    nivel integer DEFAULT 1 NOT NULL,
    id_estado integer NOT NULL,
    nome character varying(200) NOT NULL,
    codigo_ddd character varying(10) NOT NULL,
    ativo boolean DEFAULT false NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 214 (class 1259 OID 58322476)
-- Dependencies: 29 215
-- Name: assoc_municipio_id_seq; Type: SEQUENCE; Schema: basico_localizacao; Owner: -
--

CREATE SEQUENCE assoc_municipio_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4150 (class 0 OID 0)
-- Dependencies: 214
-- Name: assoc_municipio_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_localizacao; Owner: -
--

ALTER SEQUENCE assoc_municipio_id_seq OWNED BY assoc_municipio.id;


--
-- TOC entry 213 (class 1259 OID 58322462)
-- Dependencies: 2638 2639 2640 29
-- Name: codigo_postal; Type: TABLE; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE TABLE codigo_postal (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    codigo character varying(20) NOT NULL,
    id_pais integer NOT NULL,
    id_estado integer NOT NULL,
    id_municipio integer NOT NULL,
    id_bairro integer NOT NULL,
    id_logradouro integer NOT NULL,
    ativo boolean DEFAULT false NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 212 (class 1259 OID 58322460)
-- Dependencies: 29 213
-- Name: codigo_postal_id_seq; Type: SEQUENCE; Schema: basico_localizacao; Owner: -
--

CREATE SEQUENCE codigo_postal_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4151 (class 0 OID 0)
-- Dependencies: 212
-- Name: codigo_postal_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_localizacao; Owner: -
--

ALTER SEQUENCE codigo_postal_id_seq OWNED BY codigo_postal.id;


--
-- TOC entry 211 (class 1259 OID 58322445)
-- Dependencies: 2634 2635 2636 2637 29
-- Name: cpg_endereco; Type: TABLE; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE TABLE cpg_endereco (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    id_generico_proprietario integer NOT NULL,
    descricao character varying(2000),
    codigo_postal character varying(20) NOT NULL,
    constante_textual_pais character varying(200) NOT NULL,
    nome_estado character varying(200) NOT NULL,
    nome_municipio character varying(200) NOT NULL,
    nome_bairro character varying(200) NOT NULL,
    nome_logradouro character varying(200) NOT NULL,
    numero character varying(10) NOT NULL,
    complemento character varying(100),
    caixa_postal character varying(30),
    ponto_referencia character varying(1000),
    data_validacao timestamp without time zone,
    id_assoccl_perfil_validador integer,
    ativo boolean DEFAULT false NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT cpg_endereco_constante_textual_pais_check CHECK (((constante_textual_pais IS NULL) OR (basico.fn_checkconstantetextualexists(constante_textual_pais) IS NOT NULL)))
);


--
-- TOC entry 210 (class 1259 OID 58322443)
-- Dependencies: 211 29
-- Name: cpg_endereco_id_seq; Type: SEQUENCE; Schema: basico_localizacao; Owner: -
--

CREATE SEQUENCE cpg_endereco_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4152 (class 0 OID 0)
-- Dependencies: 210
-- Name: cpg_endereco_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_localizacao; Owner: -
--

ALTER SEQUENCE cpg_endereco_id_seq OWNED BY cpg_endereco.id;


--
-- TOC entry 209 (class 1259 OID 58322428)
-- Dependencies: 2629 2630 2631 2632 29
-- Name: pais; Type: TABLE; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE TABLE pais (
    id integer NOT NULL,
    constante_textual character varying(200) NOT NULL,
    sigla character varying(50) NOT NULL,
    codigo_ddi character varying(10),
    codigo_iso3166 character varying(10),
    ativo boolean DEFAULT false NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT pais_constante_textual_check CHECK ((basico.fn_checkconstantetextualexists(constante_textual) IS NOT NULL))
);


--
-- TOC entry 208 (class 1259 OID 58322426)
-- Dependencies: 29 209
-- Name: pais_id_seq; Type: SEQUENCE; Schema: basico_localizacao; Owner: -
--

CREATE SEQUENCE pais_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4153 (class 0 OID 0)
-- Dependencies: 208
-- Name: pais_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_localizacao; Owner: -
--

ALTER SEQUENCE pais_id_seq OWNED BY pais.id;


SET search_path = basico_mensagem, pg_catalog;

--
-- TOC entry 207 (class 1259 OID 58322416)
-- Dependencies: 2627 30
-- Name: assoc_email; Type: TABLE; Schema: basico_mensagem; Owner: -; Tablespace: 
--

CREATE TABLE assoc_email (
    id integer NOT NULL,
    id_mensagem integer NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 206 (class 1259 OID 58322414)
-- Dependencies: 207 30
-- Name: assoc_email_id_seq; Type: SEQUENCE; Schema: basico_mensagem; Owner: -
--

CREATE SEQUENCE assoc_email_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4154 (class 0 OID 0)
-- Dependencies: 206
-- Name: assoc_email_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_mensagem; Owner: -
--

ALTER SEQUENCE assoc_email_id_seq OWNED BY assoc_email.id;


--
-- TOC entry 205 (class 1259 OID 58322401)
-- Dependencies: 2624 2625 30
-- Name: assoccl_assoccl_pessoa_perfil; Type: TABLE; Schema: basico_mensagem; Owner: -; Tablespace: 
--

CREATE TABLE assoccl_assoccl_pessoa_perfil (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    id_mensagem integer NOT NULL,
    id_assoccl_perfil integer NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 204 (class 1259 OID 58322399)
-- Dependencies: 30 205
-- Name: assoccl_assoccl_pessoa_perfil_id_seq; Type: SEQUENCE; Schema: basico_mensagem; Owner: -
--

CREATE SEQUENCE assoccl_assoccl_pessoa_perfil_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4155 (class 0 OID 0)
-- Dependencies: 204
-- Name: assoccl_assoccl_pessoa_perfil_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_mensagem; Owner: -
--

ALTER SEQUENCE assoccl_assoccl_pessoa_perfil_id_seq OWNED BY assoccl_assoccl_pessoa_perfil.id;


--
-- TOC entry 203 (class 1259 OID 58322380)
-- Dependencies: 2615 2616 2617 2618 2619 2620 2621 2622 30
-- Name: template; Type: TABLE; Schema: basico_mensagem; Owner: -; Tablespace: 
--

CREATE TABLE template (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    id_generico_proprietario integer NOT NULL,
    nome character varying(200) NOT NULL,
    constante_textual character varying(200) NOT NULL,
    constante_textual_descricao character varying(200),
    ativo boolean DEFAULT false NOT NULL,
    constante_textual_assunto character varying(200),
    constante_textual_mensagem character varying(200),
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT ck_template CHECK (((((constante_textual_assunto IS NOT NULL) AND (constante_textual_mensagem IS NOT NULL)) OR ((constante_textual_assunto IS NOT NULL) AND (constante_textual_mensagem IS NULL))) OR ((constante_textual_assunto IS NULL) AND (constante_textual_mensagem IS NOT NULL)))),
    CONSTRAINT template_constante_textual_assunto_check CHECK (((constante_textual_assunto IS NULL) OR (basico.fn_checkconstantetextualexists(constante_textual_assunto) IS NOT NULL))),
    CONSTRAINT template_constante_textual_check CHECK (((constante_textual IS NULL) OR (basico.fn_checkconstantetextualexists(constante_textual) IS NOT NULL))),
    CONSTRAINT template_constante_textual_descricao_check CHECK (((constante_textual_descricao IS NULL) OR (basico.fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL))),
    CONSTRAINT template_constante_textual_mensagem_check CHECK (((constante_textual_mensagem IS NULL) OR (basico.fn_checkconstantetextualexists(constante_textual_mensagem) IS NOT NULL)))
);


--
-- TOC entry 202 (class 1259 OID 58322378)
-- Dependencies: 203 30
-- Name: template_id_seq; Type: SEQUENCE; Schema: basico_mensagem; Owner: -
--

CREATE SEQUENCE template_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4156 (class 0 OID 0)
-- Dependencies: 202
-- Name: template_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_mensagem; Owner: -
--

ALTER SEQUENCE template_id_seq OWNED BY template.id;


SET search_path = basico_mensagem_assoc_email, pg_catalog;

--
-- TOC entry 201 (class 1259 OID 58322367)
-- Dependencies: 2612 2613 31
-- Name: assoc_dados; Type: TABLE; Schema: basico_mensagem_assoc_email; Owner: -; Tablespace: 
--

CREATE TABLE assoc_dados (
    id integer NOT NULL,
    id_assoc_email integer NOT NULL,
    destinatarios_copia_carbonada character varying(2000),
    destinatarios_copia_carbonada_oculta character varying(2000),
    responder_para character varying(200),
    prioridade integer NOT NULL,
    solicitacao_confirm_leitura boolean,
    datahora_confirmacao_leitura timestamp without time zone,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 200 (class 1259 OID 58322365)
-- Dependencies: 31 201
-- Name: assoc_dados_id_seq; Type: SEQUENCE; Schema: basico_mensagem_assoc_email; Owner: -
--

CREATE SEQUENCE assoc_dados_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4157 (class 0 OID 0)
-- Dependencies: 200
-- Name: assoc_dados_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_mensagem_assoc_email; Owner: -
--

ALTER SEQUENCE assoc_dados_id_seq OWNED BY assoc_dados.id;


SET search_path = basico_metodo_validacao, pg_catalog;

--
-- TOC entry 199 (class 1259 OID 58322353)
-- Dependencies: 2610 32
-- Name: assoccl_include; Type: TABLE; Schema: basico_metodo_validacao; Owner: -; Tablespace: 
--

CREATE TABLE assoccl_include (
    id integer NOT NULL,
    id_metodo_validacao integer NOT NULL,
    id_include integer NOT NULL,
    ordem integer NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 198 (class 1259 OID 58322351)
-- Dependencies: 199 32
-- Name: assoccl_include_id_seq; Type: SEQUENCE; Schema: basico_metodo_validacao; Owner: -
--

CREATE SEQUENCE assoccl_include_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4158 (class 0 OID 0)
-- Dependencies: 198
-- Name: assoccl_include_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_metodo_validacao; Owner: -
--

ALTER SEQUENCE assoccl_include_id_seq OWNED BY assoccl_include.id;


SET search_path = basico_output, pg_catalog;

--
-- TOC entry 197 (class 1259 OID 58322339)
-- Dependencies: 2608 33
-- Name: assoccl_include; Type: TABLE; Schema: basico_output; Owner: -; Tablespace: 
--

CREATE TABLE assoccl_include (
    id integer NOT NULL,
    id_output integer NOT NULL,
    id_include integer NOT NULL,
    ordem integer NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 196 (class 1259 OID 58322337)
-- Dependencies: 33 197
-- Name: assoccl_include_id_seq; Type: SEQUENCE; Schema: basico_output; Owner: -
--

CREATE SEQUENCE assoccl_include_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4159 (class 0 OID 0)
-- Dependencies: 196
-- Name: assoccl_include_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_output; Owner: -
--

ALTER SEQUENCE assoccl_include_id_seq OWNED BY assoccl_include.id;


SET search_path = basico_perfil, pg_catalog;

--
-- TOC entry 195 (class 1259 OID 58322325)
-- Dependencies: 2606 34
-- Name: assoccl_modulo; Type: TABLE; Schema: basico_perfil; Owner: -; Tablespace: 
--

CREATE TABLE assoccl_modulo (
    id integer NOT NULL,
    id_modulo integer NOT NULL,
    id_perfil integer NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 194 (class 1259 OID 58322323)
-- Dependencies: 195 34
-- Name: assoccl_modulo_id_seq; Type: SEQUENCE; Schema: basico_perfil; Owner: -
--

CREATE SEQUENCE assoccl_modulo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4160 (class 0 OID 0)
-- Dependencies: 194
-- Name: assoccl_modulo_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_perfil; Owner: -
--

ALTER SEQUENCE assoccl_modulo_id_seq OWNED BY assoccl_modulo.id;


SET search_path = basico_pessoa, pg_catalog;

--
-- TOC entry 193 (class 1259 OID 58322311)
-- Dependencies: 2602 2603 2604 35
-- Name: assoc_dados; Type: TABLE; Schema: basico_pessoa; Owner: -; Tablespace: 
--

CREATE TABLE assoc_dados (
    id integer NOT NULL,
    id_pessoa integer NOT NULL,
    nome character varying(200) NOT NULL,
    data_nascimento timestamp without time zone,
    constante_textual_pais_nasc character varying(200),
    nome_uf_nascimento character varying(200),
    nome_municipio_nascimento character varying(200),
    nome_pai character varying(200),
    nome_mae character varying(200),
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT assoc_dados_constante_textual_pais_nasc_check CHECK (((constante_textual_pais_nasc IS NULL) OR (basico.fn_checkconstantetextualexists(constante_textual_pais_nasc) IS NOT NULL)))
);


--
-- TOC entry 192 (class 1259 OID 58322309)
-- Dependencies: 35 193
-- Name: assoc_dados_id_seq; Type: SEQUENCE; Schema: basico_pessoa; Owner: -
--

CREATE SEQUENCE assoc_dados_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4161 (class 0 OID 0)
-- Dependencies: 192
-- Name: assoc_dados_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_pessoa; Owner: -
--

ALTER SEQUENCE assoc_dados_id_seq OWNED BY assoc_dados.id;


--
-- TOC entry 191 (class 1259 OID 58322295)
-- Dependencies: 2598 2599 2600 35
-- Name: assoccl_perfil; Type: TABLE; Schema: basico_pessoa; Owner: -; Tablespace: 
--

CREATE TABLE assoccl_perfil (
    id integer NOT NULL,
    id_pessoa integer NOT NULL,
    id_perfil integer NOT NULL,
    ativo boolean DEFAULT false NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 190 (class 1259 OID 58322293)
-- Dependencies: 35 191
-- Name: assoccl_perfil_id_seq; Type: SEQUENCE; Schema: basico_pessoa; Owner: -
--

CREATE SEQUENCE assoccl_perfil_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4162 (class 0 OID 0)
-- Dependencies: 190
-- Name: assoccl_perfil_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_pessoa; Owner: -
--

ALTER SEQUENCE assoccl_perfil_id_seq OWNED BY assoccl_perfil.id;


--
-- TOC entry 189 (class 1259 OID 58322282)
-- Dependencies: 2595 2596 35
-- Name: assoccl_tipo_vinculo; Type: TABLE; Schema: basico_pessoa; Owner: -; Tablespace: 
--

CREATE TABLE assoccl_tipo_vinculo (
    id integer NOT NULL,
    id_pessoa integer NOT NULL,
    id_tipo_vinculo integer NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 188 (class 1259 OID 58322280)
-- Dependencies: 35 189
-- Name: assoccl_tipo_vinculo_id_seq; Type: SEQUENCE; Schema: basico_pessoa; Owner: -
--

CREATE SEQUENCE assoccl_tipo_vinculo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4163 (class 0 OID 0)
-- Dependencies: 188
-- Name: assoccl_tipo_vinculo_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_pessoa; Owner: -
--

ALTER SEQUENCE assoccl_tipo_vinculo_id_seq OWNED BY assoccl_tipo_vinculo.id;


--
-- TOC entry 187 (class 1259 OID 58322261)
-- Dependencies: 2586 2587 2588 2589 2590 2591 2592 2593 35
-- Name: login; Type: TABLE; Schema: basico_pessoa; Owner: -; Tablespace: 
--

CREATE TABLE login (
    id integer NOT NULL,
    id_pessoa integer NOT NULL,
    login character varying(100) NOT NULL,
    senha character varying(100) NOT NULL,
    ativo boolean DEFAULT false NOT NULL,
    tentativas_falhas integer DEFAULT 0 NOT NULL,
    travado boolean DEFAULT false NOT NULL,
    resetado boolean DEFAULT false NOT NULL,
    datahora_ultimo_logon timestamp without time zone,
    pode_expirar boolean DEFAULT true NOT NULL,
    datahora_proxima_expiracao timestamp without time zone DEFAULT (now() + '1 year'::interval),
    datahora_ultima_expiracao timestamp without time zone,
    datahora_expiracao_senha timestamp without time zone,
    datahora_ultima_tentativa_falha timestamp without time zone,
    datahora_ultimo_reset timestamp without time zone,
    datahora_ultima_troca_senha timestamp without time zone,
    datahora_aceite_termo_uso timestamp without time zone,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 186 (class 1259 OID 58322259)
-- Dependencies: 187 35
-- Name: login_id_seq; Type: SEQUENCE; Schema: basico_pessoa; Owner: -
--

CREATE SEQUENCE login_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4164 (class 0 OID 0)
-- Dependencies: 186
-- Name: login_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_pessoa; Owner: -
--

ALTER SEQUENCE login_id_seq OWNED BY login.id;


SET search_path = basico_pessoa_juridica, pg_catalog;

--
-- TOC entry 185 (class 1259 OID 58322247)
-- Dependencies: 2582 2583 2584 36
-- Name: assoc_banco; Type: TABLE; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE TABLE assoc_banco (
    id integer NOT NULL,
    id_pessoa_juridica integer NOT NULL,
    id_categoria integer NOT NULL,
    constante_textual_descricao character varying(200),
    codigo character varying(10) NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT assoc_banco_constante_textual_descricao_check CHECK (((constante_textual_descricao IS NULL) OR (basico.fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL)))
);


--
-- TOC entry 184 (class 1259 OID 58322245)
-- Dependencies: 36 185
-- Name: assoc_banco_id_seq; Type: SEQUENCE; Schema: basico_pessoa_juridica; Owner: -
--

CREATE SEQUENCE assoc_banco_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4165 (class 0 OID 0)
-- Dependencies: 184
-- Name: assoc_banco_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_pessoa_juridica; Owner: -
--

ALTER SEQUENCE assoc_banco_id_seq OWNED BY assoc_banco.id;


--
-- TOC entry 183 (class 1259 OID 58322234)
-- Dependencies: 2579 2580 36
-- Name: assoc_dados; Type: TABLE; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE TABLE assoc_dados (
    id integer NOT NULL,
    id_pessoa_juridica integer NOT NULL,
    razao_social character varying(200) NOT NULL,
    nome_fantasia character varying(200),
    sigla character varying(100),
    data_constituicao timestamp without time zone,
    historico text,
    infraestrutura text,
    equipe_pd text,
    mercado text,
    total_capital_social numeric(19,3),
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 182 (class 1259 OID 58322232)
-- Dependencies: 36 183
-- Name: assoc_dados_id_seq; Type: SEQUENCE; Schema: basico_pessoa_juridica; Owner: -
--

CREATE SEQUENCE assoc_dados_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4166 (class 0 OID 0)
-- Dependencies: 182
-- Name: assoc_dados_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_pessoa_juridica; Owner: -
--

ALTER SEQUENCE assoc_dados_id_seq OWNED BY assoc_dados.id;


--
-- TOC entry 181 (class 1259 OID 58322220)
-- Dependencies: 2577 36
-- Name: assocag_incubadora; Type: TABLE; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE TABLE assocag_incubadora (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    id_pessoa_juridica integer NOT NULL,
    id_pessoa_juridica_incubada integer NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 180 (class 1259 OID 58322218)
-- Dependencies: 181 36
-- Name: assocag_incubadora_id_seq; Type: SEQUENCE; Schema: basico_pessoa_juridica; Owner: -
--

CREATE SEQUENCE assocag_incubadora_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4167 (class 0 OID 0)
-- Dependencies: 180
-- Name: assocag_incubadora_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_pessoa_juridica; Owner: -
--

ALTER SEQUENCE assocag_incubadora_id_seq OWNED BY assocag_incubadora.id;


--
-- TOC entry 179 (class 1259 OID 58322203)
-- Dependencies: 2572 2573 2574 2575 36
-- Name: assocag_parceria; Type: TABLE; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE TABLE assocag_parceria (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    id_pessoa_juridica integer NOT NULL,
    id_pessoa_juridica_parceira integer,
    id_assocag_parceria integer,
    nome character varying(1000),
    descricao character varying(2000),
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT assocag_parceria_check CHECK (((id_assocag_parceria IS NULL) OR (id_assocag_parceria <> id))),
    CONSTRAINT ck_assocag_parceria CHECK ((((id_pessoa_juridica_parceira IS NOT NULL) AND (id_assocag_parceria IS NULL)) OR ((id_pessoa_juridica_parceira IS NULL) AND (id_assocag_parceria IS NOT NULL))))
);


--
-- TOC entry 178 (class 1259 OID 58322201)
-- Dependencies: 36 179
-- Name: assocag_parceria_id_seq; Type: SEQUENCE; Schema: basico_pessoa_juridica; Owner: -
--

CREATE SEQUENCE assocag_parceria_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4168 (class 0 OID 0)
-- Dependencies: 178
-- Name: assocag_parceria_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_pessoa_juridica; Owner: -
--

ALTER SEQUENCE assocag_parceria_id_seq OWNED BY assocag_parceria.id;


--
-- TOC entry 177 (class 1259 OID 58322189)
-- Dependencies: 2570 36
-- Name: assoccl_area_economia; Type: TABLE; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE TABLE assoccl_area_economia (
    id integer NOT NULL,
    id_area_economia integer NOT NULL,
    id_pessoa_juridica integer NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 176 (class 1259 OID 58322187)
-- Dependencies: 177 36
-- Name: assoccl_area_economia_id_seq; Type: SEQUENCE; Schema: basico_pessoa_juridica; Owner: -
--

CREATE SEQUENCE assoccl_area_economia_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4169 (class 0 OID 0)
-- Dependencies: 176
-- Name: assoccl_area_economia_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_pessoa_juridica; Owner: -
--

ALTER SEQUENCE assoccl_area_economia_id_seq OWNED BY assoccl_area_economia.id;


--
-- TOC entry 175 (class 1259 OID 58322174)
-- Dependencies: 2567 2568 36
-- Name: assoccl_capital_social; Type: TABLE; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE TABLE assoccl_capital_social (
    id integer NOT NULL,
    id_pessoa_juridica integer NOT NULL,
    id_capital_social integer NOT NULL,
    porcentagem numeric(19,3),
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 174 (class 1259 OID 58322172)
-- Dependencies: 36 175
-- Name: assoccl_capital_social_id_seq; Type: SEQUENCE; Schema: basico_pessoa_juridica; Owner: -
--

CREATE SEQUENCE assoccl_capital_social_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4170 (class 0 OID 0)
-- Dependencies: 174
-- Name: assoccl_capital_social_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_pessoa_juridica; Owner: -
--

ALTER SEQUENCE assoccl_capital_social_id_seq OWNED BY assoccl_capital_social.id;


--
-- TOC entry 173 (class 1259 OID 58322159)
-- Dependencies: 2564 2565 36
-- Name: assoccl_faturamento; Type: TABLE; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE TABLE assoccl_faturamento (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    id_pessoa_juridica integer NOT NULL,
    ano_fiscal integer NOT NULL,
    mes_fiscal integer,
    faturamento numeric(19,3) NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 172 (class 1259 OID 58322157)
-- Dependencies: 173 36
-- Name: assoccl_faturamento_id_seq; Type: SEQUENCE; Schema: basico_pessoa_juridica; Owner: -
--

CREATE SEQUENCE assoccl_faturamento_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4171 (class 0 OID 0)
-- Dependencies: 172
-- Name: assoccl_faturamento_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_pessoa_juridica; Owner: -
--

ALTER SEQUENCE assoccl_faturamento_id_seq OWNED BY assoccl_faturamento.id;


--
-- TOC entry 171 (class 1259 OID 58322144)
-- Dependencies: 2561 2562 36
-- Name: assoccl_quadro_funcionario; Type: TABLE; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE TABLE assoccl_quadro_funcionario (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    id_pessoa_juridica integer NOT NULL,
    id_titulacao integer NOT NULL,
    id_area_conhecimento_predom integer NOT NULL,
    quantidade integer NOT NULL,
    descricao character varying(2000),
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 170 (class 1259 OID 58322142)
-- Dependencies: 36 171
-- Name: assoccl_quadro_funcionario_id_seq; Type: SEQUENCE; Schema: basico_pessoa_juridica; Owner: -
--

CREATE SEQUENCE assoccl_quadro_funcionario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4172 (class 0 OID 0)
-- Dependencies: 170
-- Name: assoccl_quadro_funcionario_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_pessoa_juridica; Owner: -
--

ALTER SEQUENCE assoccl_quadro_funcionario_id_seq OWNED BY assoccl_quadro_funcionario.id;


--
-- TOC entry 169 (class 1259 OID 58322128)
-- Dependencies: 2555 2556 2557 2558 2559 36
-- Name: capital_social; Type: TABLE; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE TABLE capital_social (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    nome character varying(200) NOT NULL,
    constante_textual character varying(200) NOT NULL,
    constante_textual_descricao character varying(200),
    ativo boolean DEFAULT false NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT capital_social_constante_textual_check CHECK ((basico.fn_checkconstantetextualexists(constante_textual) IS NOT NULL)),
    CONSTRAINT capital_social_constante_textual_descricao_check CHECK (((constante_textual_descricao IS NULL) OR (basico.fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL)))
);


--
-- TOC entry 168 (class 1259 OID 58322126)
-- Dependencies: 36 169
-- Name: capital_social_id_seq; Type: SEQUENCE; Schema: basico_pessoa_juridica; Owner: -
--

CREATE SEQUENCE capital_social_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4173 (class 0 OID 0)
-- Dependencies: 168
-- Name: capital_social_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_pessoa_juridica; Owner: -
--

ALTER SEQUENCE capital_social_id_seq OWNED BY capital_social.id;


--
-- TOC entry 167 (class 1259 OID 58322112)
-- Dependencies: 2549 2550 2551 2552 2553 36
-- Name: natureza; Type: TABLE; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE TABLE natureza (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    nome character varying(200) NOT NULL,
    constante_textual character varying(200) NOT NULL,
    constante_textual_descricao character varying(200),
    codigo character varying(100) NOT NULL,
    ativo boolean DEFAULT false NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT natureza_constante_textual_check CHECK ((basico.fn_checkconstantetextualexists(constante_textual) IS NOT NULL)),
    CONSTRAINT natureza_constante_textual_descricao_check CHECK (((constante_textual_descricao IS NULL) OR (basico.fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL)))
);


--
-- TOC entry 166 (class 1259 OID 58322110)
-- Dependencies: 36 167
-- Name: natureza_id_seq; Type: SEQUENCE; Schema: basico_pessoa_juridica; Owner: -
--

CREATE SEQUENCE natureza_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4174 (class 0 OID 0)
-- Dependencies: 166
-- Name: natureza_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_pessoa_juridica; Owner: -
--

ALTER SEQUENCE natureza_id_seq OWNED BY natureza.id;


SET search_path = basico_sequencia, pg_catalog;

--
-- TOC entry 165 (class 1259 OID 58322094)
-- Dependencies: 2543 2544 2545 2546 2547 37
-- Name: assocsq_acao_aplicacao; Type: TABLE; Schema: basico_sequencia; Owner: -; Tablespace: 
--

CREATE TABLE assocsq_acao_aplicacao (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    id_sequencia integer NOT NULL,
    id_acao_aplicacao integer NOT NULL,
    nome character varying(200) NOT NULL,
    constante_textual character varying(200) NOT NULL,
    constante_textual_descricao character varying(200),
    passo integer NOT NULL,
    ativo integer DEFAULT 0 NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT assocsq_acao_aplicacao_constante_textual_check CHECK (((constante_textual IS NULL) OR (basico.fn_checkconstantetextualexists(constante_textual) IS NOT NULL))),
    CONSTRAINT assocsq_acao_aplicacao_constante_textual_descricao_check CHECK (((constante_textual_descricao IS NULL) OR (basico.fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL)))
);


--
-- TOC entry 164 (class 1259 OID 58322092)
-- Dependencies: 165 37
-- Name: assocsq_acao_aplicacao_id_seq; Type: SEQUENCE; Schema: basico_sequencia; Owner: -
--

CREATE SEQUENCE assocsq_acao_aplicacao_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4175 (class 0 OID 0)
-- Dependencies: 164
-- Name: assocsq_acao_aplicacao_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_sequencia; Owner: -
--

ALTER SEQUENCE assocsq_acao_aplicacao_id_seq OWNED BY assocsq_acao_aplicacao.id;


SET search_path = basico_template, pg_catalog;

--
-- TOC entry 163 (class 1259 OID 58322080)
-- Dependencies: 2541 38
-- Name: assoccl_include; Type: TABLE; Schema: basico_template; Owner: -; Tablespace: 
--

CREATE TABLE assoccl_include (
    id integer NOT NULL,
    id_template integer NOT NULL,
    id_include integer NOT NULL,
    ordem integer NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 162 (class 1259 OID 58322078)
-- Dependencies: 163 38
-- Name: assoccl_include_id_seq; Type: SEQUENCE; Schema: basico_template; Owner: -
--

CREATE SEQUENCE assoccl_include_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4176 (class 0 OID 0)
-- Dependencies: 162
-- Name: assoccl_include_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_template; Owner: -
--

ALTER SEQUENCE assoccl_include_id_seq OWNED BY assoccl_include.id;


--
-- TOC entry 161 (class 1259 OID 58322066)
-- Dependencies: 2539 38
-- Name: assoccl_output; Type: TABLE; Schema: basico_template; Owner: -; Tablespace: 
--

CREATE TABLE assoccl_output (
    id integer NOT NULL,
    id_template integer NOT NULL,
    id_output integer NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 160 (class 1259 OID 58322064)
-- Dependencies: 161 38
-- Name: assoccl_output_id_seq; Type: SEQUENCE; Schema: basico_template; Owner: -
--

CREATE SEQUENCE assoccl_output_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4177 (class 0 OID 0)
-- Dependencies: 160
-- Name: assoccl_output_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_template; Owner: -
--

ALTER SEQUENCE assoccl_output_id_seq OWNED BY assoccl_output.id;


SET search_path = basico, pg_catalog;

--
-- TOC entry 3011 (class 2604 OID 58323784)
-- Dependencies: 377 376 377
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY acao_aplicacao ALTER COLUMN id SET DEFAULT nextval('acao_aplicacao_id_seq'::regclass);


--
-- TOC entry 3005 (class 2604 OID 58323766)
-- Dependencies: 375 374 375
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY acao_evento ALTER COLUMN id SET DEFAULT nextval('acao_evento_id_seq'::regclass);


--
-- TOC entry 2996 (class 2604 OID 58323745)
-- Dependencies: 372 373 373
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY ajuda ALTER COLUMN id SET DEFAULT nextval('ajuda_id_seq'::regclass);


--
-- TOC entry 2988 (class 2604 OID 58323725)
-- Dependencies: 371 370 371
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY area_conhecimento ALTER COLUMN id SET DEFAULT nextval('area_conhecimento_id_seq'::regclass);


--
-- TOC entry 2980 (class 2604 OID 58323705)
-- Dependencies: 369 368 369
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY area_economia ALTER COLUMN id SET DEFAULT nextval('area_economia_id_seq'::regclass);


--
-- TOC entry 2972 (class 2604 OID 58323685)
-- Dependencies: 367 366 367
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY categoria ALTER COLUMN id SET DEFAULT nextval('categoria_id_seq'::regclass);


--
-- TOC entry 2966 (class 2604 OID 58323667)
-- Dependencies: 365 364 365
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY componente ALTER COLUMN id SET DEFAULT nextval('componente_id_seq'::regclass);


--
-- TOC entry 2958 (class 2604 OID 58323647)
-- Dependencies: 363 362 363
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY cpg_arquivo ALTER COLUMN id SET DEFAULT nextval('cpg_arquivo_id_seq'::regclass);


--
-- TOC entry 2953 (class 2604 OID 58323630)
-- Dependencies: 361 360 361
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY cpg_codigo_acesso ALTER COLUMN id SET DEFAULT nextval('cpg_codigo_acesso_id_seq'::regclass);


--
-- TOC entry 2950 (class 2604 OID 58323615)
-- Dependencies: 358 359 359
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY cpg_dados_bancarios ALTER COLUMN id SET DEFAULT nextval('cpg_dados_bancarios_id_seq'::regclass);


--
-- TOC entry 2946 (class 2604 OID 58323599)
-- Dependencies: 357 356 357
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY cpg_documento_identificacao ALTER COLUMN id SET DEFAULT nextval('cpg_documento_identificacao_id_seq'::regclass);


--
-- TOC entry 2939 (class 2604 OID 58323580)
-- Dependencies: 355 354 355
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY cpg_link ALTER COLUMN id SET DEFAULT nextval('cpg_link_id_seq'::regclass);


--
-- TOC entry 2934 (class 2604 OID 58323565)
-- Dependencies: 353 352 353
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY cpg_produto ALTER COLUMN id SET DEFAULT nextval('cpg_produto_id_seq'::regclass);


--
-- TOC entry 2931 (class 2604 OID 58323552)
-- Dependencies: 350 351 351
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY cpg_token ALTER COLUMN id SET DEFAULT nextval('cpg_token_id_seq'::regclass);


--
-- TOC entry 2928 (class 2604 OID 58323537)
-- Dependencies: 348 349 349
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY dados_biometricos ALTER COLUMN id SET DEFAULT nextval('dados_biometricos_id_seq'::regclass);


--
-- TOC entry 2923 (class 2604 OID 58323520)
-- Dependencies: 347 346 347
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY dicionario_expressao ALTER COLUMN id SET DEFAULT nextval('dicionario_expressao_id_seq'::regclass);


--
-- TOC entry 2917 (class 2604 OID 58323502)
-- Dependencies: 345 344 345
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY evento ALTER COLUMN id SET DEFAULT nextval('evento_id_seq'::regclass);


--
-- TOC entry 2911 (class 2604 OID 58323484)
-- Dependencies: 343 342 343
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY filter ALTER COLUMN id SET DEFAULT nextval('filter_id_seq'::regclass);


--
-- TOC entry 2903 (class 2604 OID 58323464)
-- Dependencies: 340 341 341
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY formulario ALTER COLUMN id SET DEFAULT nextval('formulario_id_seq'::regclass);


--
-- TOC entry 2897 (class 2604 OID 58323444)
-- Dependencies: 338 339 339
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY include ALTER COLUMN id SET DEFAULT nextval('include_id_seq'::regclass);


--
-- TOC entry 2896 (class 2604 OID 58323433)
-- Dependencies: 336 337 337
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY log ALTER COLUMN id SET DEFAULT nextval('log_id_seq'::regclass);


--
-- TOC entry 2893 (class 2604 OID 58323420)
-- Dependencies: 335 334 335
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY mensagem ALTER COLUMN id SET DEFAULT nextval('mensagem_id_seq'::regclass);


--
-- TOC entry 2887 (class 2604 OID 58323402)
-- Dependencies: 333 332 333
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY metodo_validacao ALTER COLUMN id SET DEFAULT nextval('metodo_validacao_id_seq'::regclass);


--
-- TOC entry 2880 (class 2604 OID 58323385)
-- Dependencies: 331 330 331
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY modulo ALTER COLUMN id SET DEFAULT nextval('modulo_id_seq'::regclass);


--
-- TOC entry 2874 (class 2604 OID 58323369)
-- Dependencies: 328 329 329
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY output ALTER COLUMN id SET DEFAULT nextval('output_id_seq'::regclass);


--
-- TOC entry 2867 (class 2604 OID 58323350)
-- Dependencies: 326 327 327
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY perfil ALTER COLUMN id SET DEFAULT nextval('perfil_id_seq'::regclass);


--
-- TOC entry 2864 (class 2604 OID 58323337)
-- Dependencies: 325 324 325
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa ALTER COLUMN id SET DEFAULT nextval('pessoa_id_seq'::regclass);


--
-- TOC entry 2859 (class 2604 OID 58323322)
-- Dependencies: 322 323 323
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa_juridica ALTER COLUMN id SET DEFAULT nextval('pessoa_juridica_id_seq'::regclass);


--
-- TOC entry 2853 (class 2604 OID 58323306)
-- Dependencies: 321 320 321
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY profissao ALTER COLUMN id SET DEFAULT nextval('profissao_id_seq'::regclass);


--
-- TOC entry 2847 (class 2604 OID 58323288)
-- Dependencies: 319 318 319
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY sequencia ALTER COLUMN id SET DEFAULT nextval('sequencia_id_seq'::regclass);


--
-- TOC entry 2841 (class 2604 OID 58323272)
-- Dependencies: 317 316 317
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY template ALTER COLUMN id SET DEFAULT nextval('template_id_seq'::regclass);


--
-- TOC entry 2832 (class 2604 OID 58323251)
-- Dependencies: 314 315 315
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY tipo_categoria ALTER COLUMN id SET DEFAULT nextval('tipo_categoria_id_seq'::regclass);


--
-- TOC entry 2826 (class 2604 OID 58323235)
-- Dependencies: 312 313 313
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY validator ALTER COLUMN id SET DEFAULT nextval('validator_id_seq'::regclass);


SET search_path = basico_acao_aplic_assoc_visao, pg_catalog;

--
-- TOC entry 2824 (class 2604 OID 58323221)
-- Dependencies: 311 310 311
-- Name: id; Type: DEFAULT; Schema: basico_acao_aplic_assoc_visao; Owner: -
--

ALTER TABLE ONLY assoccl_atrib_met_rec_post ALTER COLUMN id SET DEFAULT nextval('assoccl_atrib_met_rec_post_id_seq'::regclass);


--
-- TOC entry 2819 (class 2604 OID 58323204)
-- Dependencies: 309 308 309
-- Name: id; Type: DEFAULT; Schema: basico_acao_aplic_assoc_visao; Owner: -
--

ALTER TABLE ONLY atributo_metodo_recup_post ALTER COLUMN id SET DEFAULT nextval('atributo_metodo_recup_post_id_seq'::regclass);


SET search_path = basico_acao_aplicacao, pg_catalog;

--
-- TOC entry 2811 (class 2604 OID 58323186)
-- Dependencies: 307 306 307
-- Name: id; Type: DEFAULT; Schema: basico_acao_aplicacao; Owner: -
--

ALTER TABLE ONLY assoc_visao ALTER COLUMN id SET DEFAULT nextval('assoc_visao_id_seq'::regclass);


--
-- TOC entry 2809 (class 2604 OID 58323172)
-- Dependencies: 305 304 305
-- Name: id; Type: DEFAULT; Schema: basico_acao_aplicacao; Owner: -
--

ALTER TABLE ONLY assoccl_metodo_validacao ALTER COLUMN id SET DEFAULT nextval('assoccl_metodo_validacao_id_seq'::regclass);


--
-- TOC entry 2807 (class 2604 OID 58323158)
-- Dependencies: 302 303 303
-- Name: id; Type: DEFAULT; Schema: basico_acao_aplicacao; Owner: -
--

ALTER TABLE ONLY assoccl_perfil ALTER COLUMN id SET DEFAULT nextval('assoccl_perfil_id_seq'::regclass);


SET search_path = basico_acao_evento, pg_catalog;

--
-- TOC entry 2805 (class 2604 OID 58323144)
-- Dependencies: 301 300 301
-- Name: id; Type: DEFAULT; Schema: basico_acao_evento; Owner: -
--

ALTER TABLE ONLY assoccl_include ALTER COLUMN id SET DEFAULT nextval('assoccl_include_id_seq'::regclass);


SET search_path = basico_ajuda, pg_catalog;

--
-- TOC entry 2803 (class 2604 OID 58323130)
-- Dependencies: 299 298 299
-- Name: id; Type: DEFAULT; Schema: basico_ajuda; Owner: -
--

ALTER TABLE ONLY assoccl_link ALTER COLUMN id SET DEFAULT nextval('assoccl_link_id_seq'::regclass);


SET search_path = basico_assoc_banco, pg_catalog;

--
-- TOC entry 2798 (class 2604 OID 58323111)
-- Dependencies: 296 297 297
-- Name: id; Type: DEFAULT; Schema: basico_assoc_banco; Owner: -
--

ALTER TABLE ONLY assoc_tipo_conta ALTER COLUMN id SET DEFAULT nextval('assoc_tipo_conta_id_seq'::regclass);


SET search_path = basico_assoc_chave_estrangeira, pg_catalog;

--
-- TOC entry 2796 (class 2604 OID 58323097)
-- Dependencies: 295 294 295
-- Name: id; Type: DEFAULT; Schema: basico_assoc_chave_estrangeira; Owner: -
--

ALTER TABLE ONLY relacao ALTER COLUMN id SET DEFAULT nextval('relacao_id_seq'::regclass);


SET search_path = basico_assoc_dados_profis, pg_catalog;

--
-- TOC entry 2794 (class 2604 OID 58323083)
-- Dependencies: 293 292 293
-- Name: id; Type: DEFAULT; Schema: basico_assoc_dados_profis; Owner: -
--

ALTER TABLE ONLY assoccl_area_conhecimento ALTER COLUMN id SET DEFAULT nextval('assoccl_area_conhecimento_id_seq'::regclass);


SET search_path = basico_assoccl_pessoa_perfil, pg_catalog;

--
-- TOC entry 2791 (class 2604 OID 58323070)
-- Dependencies: 290 291 291
-- Name: id; Type: DEFAULT; Schema: basico_assoccl_pessoa_perfil; Owner: -
--

ALTER TABLE ONLY assoc_dados ALTER COLUMN id SET DEFAULT nextval('assoc_dados_id_seq'::regclass);


SET search_path = basico_assoccl_tipo_vinculo, pg_catalog;

--
-- TOC entry 2788 (class 2604 OID 58323057)
-- Dependencies: 288 289 289
-- Name: id; Type: DEFAULT; Schema: basico_assoccl_tipo_vinculo; Owner: -
--

ALTER TABLE ONLY assoc_dados ALTER COLUMN id SET DEFAULT nextval('assoc_dados_id_seq'::regclass);


SET search_path = basico_categoria, pg_catalog;

--
-- TOC entry 2785 (class 2604 OID 58323044)
-- Dependencies: 287 286 287
-- Name: id; Type: DEFAULT; Schema: basico_categoria; Owner: -
--

ALTER TABLE ONLY assoc_chave_estrangeira ALTER COLUMN id SET DEFAULT nextval('assoc_chave_estrangeira_id_seq'::regclass);


--
-- TOC entry 2783 (class 2604 OID 58323032)
-- Dependencies: 285 284 285
-- Name: id; Type: DEFAULT; Schema: basico_categoria; Owner: -
--

ALTER TABLE ONLY assoc_evento_acao ALTER COLUMN id SET DEFAULT nextval('assoc_evento_acao_id_seq'::regclass);


SET search_path = basico_componente, pg_catalog;

--
-- TOC entry 2781 (class 2604 OID 58323018)
-- Dependencies: 283 282 283
-- Name: id; Type: DEFAULT; Schema: basico_componente; Owner: -
--

ALTER TABLE ONLY assoccl_include ALTER COLUMN id SET DEFAULT nextval('assoccl_include_id_seq'::regclass);


SET search_path = basico_contato, pg_catalog;

--
-- TOC entry 2773 (class 2604 OID 58322998)
-- Dependencies: 280 281 281
-- Name: id; Type: DEFAULT; Schema: basico_contato; Owner: -
--

ALTER TABLE ONLY cpg_email ALTER COLUMN id SET DEFAULT nextval('cpg_email_id_seq'::regclass);


--
-- TOC entry 2766 (class 2604 OID 58322979)
-- Dependencies: 278 279 279
-- Name: id; Type: DEFAULT; Schema: basico_contato; Owner: -
--

ALTER TABLE ONLY cpg_telefone ALTER COLUMN id SET DEFAULT nextval('cpg_telefone_id_seq'::regclass);


SET search_path = basico_cvc, pg_catalog;

--
-- TOC entry 2761 (class 2604 OID 58322962)
-- Dependencies: 276 277 277
-- Name: id; Type: DEFAULT; Schema: basico_cvc; Owner: -
--

ALTER TABLE ONLY cvc ALTER COLUMN id SET DEFAULT nextval('cvc_id_seq'::regclass);


SET search_path = basico_dados_academicos, pg_catalog;

--
-- TOC entry 2755 (class 2604 OID 58322946)
-- Dependencies: 275 274 275
-- Name: id; Type: DEFAULT; Schema: basico_dados_academicos; Owner: -
--

ALTER TABLE ONLY titulacao ALTER COLUMN id SET DEFAULT nextval('titulacao_id_seq'::regclass);


SET search_path = basico_dados_biometricos, pg_catalog;

--
-- TOC entry 2752 (class 2604 OID 58322933)
-- Dependencies: 272 273 273
-- Name: id; Type: DEFAULT; Schema: basico_dados_biometricos; Owner: -
--

ALTER TABLE ONLY assoc_pessoa ALTER COLUMN id SET DEFAULT nextval('assoc_pessoa_id_seq'::regclass);


SET search_path = basico_dados_profissionais, pg_catalog;

--
-- TOC entry 2745 (class 2604 OID 58322914)
-- Dependencies: 271 270 271
-- Name: id; Type: DEFAULT; Schema: basico_dados_profissionais; Owner: -
--

ALTER TABLE ONLY regime_trabalho ALTER COLUMN id SET DEFAULT nextval('regime_trabalho_id_seq'::regclass);


--
-- TOC entry 2737 (class 2604 OID 58322894)
-- Dependencies: 268 269 269
-- Name: id; Type: DEFAULT; Schema: basico_dados_profissionais; Owner: -
--

ALTER TABLE ONLY tipo_vinculo ALTER COLUMN id SET DEFAULT nextval('tipo_vinculo_id_seq'::regclass);


--
-- TOC entry 2731 (class 2604 OID 58322876)
-- Dependencies: 266 267 267
-- Name: id; Type: DEFAULT; Schema: basico_dados_profissionais; Owner: -
--

ALTER TABLE ONLY vinculo_empregaticio ALTER COLUMN id SET DEFAULT nextval('vinculo_empregaticio_id_seq'::regclass);


SET search_path = basico_decorator, pg_catalog;

--
-- TOC entry 2729 (class 2604 OID 58322862)
-- Dependencies: 265 264 265
-- Name: id; Type: DEFAULT; Schema: basico_decorator; Owner: -
--

ALTER TABLE ONLY assoccl_include ALTER COLUMN id SET DEFAULT nextval('assoccl_include_id_seq'::regclass);


SET search_path = basico_form_assoccl_elem_grupo, pg_catalog;

--
-- TOC entry 2727 (class 2604 OID 58322848)
-- Dependencies: 263 262 263
-- Name: id; Type: DEFAULT; Schema: basico_form_assoccl_elem_grupo; Owner: -
--

ALTER TABLE ONLY assoccl_decorator ALTER COLUMN id SET DEFAULT nextval('assoccl_decorator_id_seq'::regclass);


SET search_path = basico_form_assoccl_elemento, pg_catalog;

--
-- TOC entry 2724 (class 2604 OID 58322833)
-- Dependencies: 260 261 261
-- Name: id; Type: DEFAULT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_decorator ALTER COLUMN id SET DEFAULT nextval('assoccl_decorator_id_seq'::regclass);


--
-- TOC entry 2721 (class 2604 OID 58322818)
-- Dependencies: 258 259 259
-- Name: id; Type: DEFAULT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_evento ALTER COLUMN id SET DEFAULT nextval('assoccl_evento_id_seq'::regclass);


--
-- TOC entry 2718 (class 2604 OID 58322803)
-- Dependencies: 257 256 257
-- Name: id; Type: DEFAULT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_filter ALTER COLUMN id SET DEFAULT nextval('assoccl_filter_id_seq'::regclass);


--
-- TOC entry 2715 (class 2604 OID 58322788)
-- Dependencies: 254 255 255
-- Name: id; Type: DEFAULT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_include ALTER COLUMN id SET DEFAULT nextval('assoccl_include_id_seq'::regclass);


--
-- TOC entry 2712 (class 2604 OID 58322773)
-- Dependencies: 253 252 253
-- Name: id; Type: DEFAULT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_validator ALTER COLUMN id SET DEFAULT nextval('assoccl_validator_id_seq'::regclass);


--
-- TOC entry 2706 (class 2604 OID 58322757)
-- Dependencies: 251 250 251
-- Name: id; Type: DEFAULT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY grupo ALTER COLUMN id SET DEFAULT nextval('grupo_id_seq'::regclass);


SET search_path = basico_formulario, pg_catalog;

--
-- TOC entry 2704 (class 2604 OID 58322743)
-- Dependencies: 249 248 249
-- Name: id; Type: DEFAULT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_decorator ALTER COLUMN id SET DEFAULT nextval('assoccl_decorator_id_seq'::regclass);


--
-- TOC entry 2698 (class 2604 OID 58322723)
-- Dependencies: 247 246 247
-- Name: id; Type: DEFAULT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_elemento ALTER COLUMN id SET DEFAULT nextval('assoccl_elemento_id_seq'::regclass);


--
-- TOC entry 2696 (class 2604 OID 58322709)
-- Dependencies: 244 245 245
-- Name: id; Type: DEFAULT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_evento ALTER COLUMN id SET DEFAULT nextval('assoccl_evento_id_seq'::regclass);


--
-- TOC entry 2694 (class 2604 OID 58322695)
-- Dependencies: 243 242 243
-- Name: id; Type: DEFAULT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_include ALTER COLUMN id SET DEFAULT nextval('assoccl_include_id_seq'::regclass);


--
-- TOC entry 2692 (class 2604 OID 58322681)
-- Dependencies: 241 240 241
-- Name: id; Type: DEFAULT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_modulo ALTER COLUMN id SET DEFAULT nextval('assoccl_modulo_id_seq'::regclass);


--
-- TOC entry 2690 (class 2604 OID 58322667)
-- Dependencies: 238 239 239
-- Name: id; Type: DEFAULT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_template ALTER COLUMN id SET DEFAULT nextval('assoccl_template_id_seq'::regclass);


--
-- TOC entry 2684 (class 2604 OID 58322651)
-- Dependencies: 237 236 237
-- Name: id; Type: DEFAULT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY decorator ALTER COLUMN id SET DEFAULT nextval('decorator_id_seq'::regclass);


--
-- TOC entry 2676 (class 2604 OID 58322631)
-- Dependencies: 234 235 235
-- Name: id; Type: DEFAULT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY elemento ALTER COLUMN id SET DEFAULT nextval('elemento_id_seq'::regclass);


--
-- TOC entry 2672 (class 2604 OID 58322617)
-- Dependencies: 232 233 233
-- Name: id; Type: DEFAULT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY rascunho ALTER COLUMN id SET DEFAULT nextval('rascunho_id_seq'::regclass);


SET search_path = basico_formulario_elemento, pg_catalog;

--
-- TOC entry 2670 (class 2604 OID 58322603)
-- Dependencies: 230 231 231
-- Name: id; Type: DEFAULT; Schema: basico_formulario_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_decorator ALTER COLUMN id SET DEFAULT nextval('assoccl_decorator_id_seq'::regclass);


--
-- TOC entry 2667 (class 2604 OID 58322588)
-- Dependencies: 228 229 229
-- Name: id; Type: DEFAULT; Schema: basico_formulario_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_evento ALTER COLUMN id SET DEFAULT nextval('assoccl_evento_id_seq'::regclass);


--
-- TOC entry 2665 (class 2604 OID 58322574)
-- Dependencies: 226 227 227
-- Name: id; Type: DEFAULT; Schema: basico_formulario_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_filter ALTER COLUMN id SET DEFAULT nextval('assoccl_filter_id_seq'::regclass);


--
-- TOC entry 2663 (class 2604 OID 58322560)
-- Dependencies: 225 224 225
-- Name: id; Type: DEFAULT; Schema: basico_formulario_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_validator ALTER COLUMN id SET DEFAULT nextval('assoccl_validator_id_seq'::regclass);


SET search_path = basico_formulario_rascunho, pg_catalog;

--
-- TOC entry 2660 (class 2604 OID 58322547)
-- Dependencies: 223 222 223
-- Name: id; Type: DEFAULT; Schema: basico_formulario_rascunho; Owner: -
--

ALTER TABLE ONLY assocag_grupo ALTER COLUMN id SET DEFAULT nextval('assocag_grupo_id_seq'::regclass);


SET search_path = basico_localizacao, pg_catalog;

--
-- TOC entry 2656 (class 2604 OID 58322531)
-- Dependencies: 220 221 221
-- Name: id; Type: DEFAULT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY assoc_bairro ALTER COLUMN id SET DEFAULT nextval('assoc_bairro_id_seq'::regclass);


--
-- TOC entry 2651 (class 2604 OID 58322514)
-- Dependencies: 218 219 219
-- Name: id; Type: DEFAULT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY assoc_estado ALTER COLUMN id SET DEFAULT nextval('assoc_estado_id_seq'::regclass);


--
-- TOC entry 2647 (class 2604 OID 58322498)
-- Dependencies: 217 216 217
-- Name: id; Type: DEFAULT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY assoc_logradouro ALTER COLUMN id SET DEFAULT nextval('assoc_logradouro_id_seq'::regclass);


--
-- TOC entry 2642 (class 2604 OID 58322481)
-- Dependencies: 214 215 215
-- Name: id; Type: DEFAULT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY assoc_municipio ALTER COLUMN id SET DEFAULT nextval('assoc_municipio_id_seq'::regclass);


--
-- TOC entry 2641 (class 2604 OID 58322465)
-- Dependencies: 212 213 213
-- Name: id; Type: DEFAULT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY codigo_postal ALTER COLUMN id SET DEFAULT nextval('codigo_postal_id_seq'::regclass);


--
-- TOC entry 2633 (class 2604 OID 58322448)
-- Dependencies: 211 210 211
-- Name: id; Type: DEFAULT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY cpg_endereco ALTER COLUMN id SET DEFAULT nextval('cpg_endereco_id_seq'::regclass);


--
-- TOC entry 2628 (class 2604 OID 58322431)
-- Dependencies: 208 209 209
-- Name: id; Type: DEFAULT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY pais ALTER COLUMN id SET DEFAULT nextval('pais_id_seq'::regclass);


SET search_path = basico_mensagem, pg_catalog;

--
-- TOC entry 2626 (class 2604 OID 58322419)
-- Dependencies: 207 206 207
-- Name: id; Type: DEFAULT; Schema: basico_mensagem; Owner: -
--

ALTER TABLE ONLY assoc_email ALTER COLUMN id SET DEFAULT nextval('assoc_email_id_seq'::regclass);


--
-- TOC entry 2623 (class 2604 OID 58322404)
-- Dependencies: 204 205 205
-- Name: id; Type: DEFAULT; Schema: basico_mensagem; Owner: -
--

ALTER TABLE ONLY assoccl_assoccl_pessoa_perfil ALTER COLUMN id SET DEFAULT nextval('assoccl_assoccl_pessoa_perfil_id_seq'::regclass);


--
-- TOC entry 2614 (class 2604 OID 58322383)
-- Dependencies: 203 202 203
-- Name: id; Type: DEFAULT; Schema: basico_mensagem; Owner: -
--

ALTER TABLE ONLY template ALTER COLUMN id SET DEFAULT nextval('template_id_seq'::regclass);


SET search_path = basico_mensagem_assoc_email, pg_catalog;

--
-- TOC entry 2611 (class 2604 OID 58322370)
-- Dependencies: 201 200 201
-- Name: id; Type: DEFAULT; Schema: basico_mensagem_assoc_email; Owner: -
--

ALTER TABLE ONLY assoc_dados ALTER COLUMN id SET DEFAULT nextval('assoc_dados_id_seq'::regclass);


SET search_path = basico_metodo_validacao, pg_catalog;

--
-- TOC entry 2609 (class 2604 OID 58322356)
-- Dependencies: 198 199 199
-- Name: id; Type: DEFAULT; Schema: basico_metodo_validacao; Owner: -
--

ALTER TABLE ONLY assoccl_include ALTER COLUMN id SET DEFAULT nextval('assoccl_include_id_seq'::regclass);


SET search_path = basico_output, pg_catalog;

--
-- TOC entry 2607 (class 2604 OID 58322342)
-- Dependencies: 197 196 197
-- Name: id; Type: DEFAULT; Schema: basico_output; Owner: -
--

ALTER TABLE ONLY assoccl_include ALTER COLUMN id SET DEFAULT nextval('assoccl_include_id_seq'::regclass);


SET search_path = basico_perfil, pg_catalog;

--
-- TOC entry 2605 (class 2604 OID 58322328)
-- Dependencies: 194 195 195
-- Name: id; Type: DEFAULT; Schema: basico_perfil; Owner: -
--

ALTER TABLE ONLY assoccl_modulo ALTER COLUMN id SET DEFAULT nextval('assoccl_modulo_id_seq'::regclass);


SET search_path = basico_pessoa, pg_catalog;

--
-- TOC entry 2601 (class 2604 OID 58322314)
-- Dependencies: 192 193 193
-- Name: id; Type: DEFAULT; Schema: basico_pessoa; Owner: -
--

ALTER TABLE ONLY assoc_dados ALTER COLUMN id SET DEFAULT nextval('assoc_dados_id_seq'::regclass);


--
-- TOC entry 2597 (class 2604 OID 58322298)
-- Dependencies: 190 191 191
-- Name: id; Type: DEFAULT; Schema: basico_pessoa; Owner: -
--

ALTER TABLE ONLY assoccl_perfil ALTER COLUMN id SET DEFAULT nextval('assoccl_perfil_id_seq'::regclass);


--
-- TOC entry 2594 (class 2604 OID 58322285)
-- Dependencies: 188 189 189
-- Name: id; Type: DEFAULT; Schema: basico_pessoa; Owner: -
--

ALTER TABLE ONLY assoccl_tipo_vinculo ALTER COLUMN id SET DEFAULT nextval('assoccl_tipo_vinculo_id_seq'::regclass);


--
-- TOC entry 2585 (class 2604 OID 58322264)
-- Dependencies: 187 186 187
-- Name: id; Type: DEFAULT; Schema: basico_pessoa; Owner: -
--

ALTER TABLE ONLY login ALTER COLUMN id SET DEFAULT nextval('login_id_seq'::regclass);


SET search_path = basico_pessoa_juridica, pg_catalog;

--
-- TOC entry 2581 (class 2604 OID 58322250)
-- Dependencies: 184 185 185
-- Name: id; Type: DEFAULT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoc_banco ALTER COLUMN id SET DEFAULT nextval('assoc_banco_id_seq'::regclass);


--
-- TOC entry 2578 (class 2604 OID 58322237)
-- Dependencies: 183 182 183
-- Name: id; Type: DEFAULT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoc_dados ALTER COLUMN id SET DEFAULT nextval('assoc_dados_id_seq'::regclass);


--
-- TOC entry 2576 (class 2604 OID 58322223)
-- Dependencies: 181 180 181
-- Name: id; Type: DEFAULT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assocag_incubadora ALTER COLUMN id SET DEFAULT nextval('assocag_incubadora_id_seq'::regclass);


--
-- TOC entry 2571 (class 2604 OID 58322206)
-- Dependencies: 178 179 179
-- Name: id; Type: DEFAULT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assocag_parceria ALTER COLUMN id SET DEFAULT nextval('assocag_parceria_id_seq'::regclass);


--
-- TOC entry 2569 (class 2604 OID 58322192)
-- Dependencies: 176 177 177
-- Name: id; Type: DEFAULT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoccl_area_economia ALTER COLUMN id SET DEFAULT nextval('assoccl_area_economia_id_seq'::regclass);


--
-- TOC entry 2566 (class 2604 OID 58322177)
-- Dependencies: 174 175 175
-- Name: id; Type: DEFAULT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoccl_capital_social ALTER COLUMN id SET DEFAULT nextval('assoccl_capital_social_id_seq'::regclass);


--
-- TOC entry 2563 (class 2604 OID 58322162)
-- Dependencies: 173 172 173
-- Name: id; Type: DEFAULT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoccl_faturamento ALTER COLUMN id SET DEFAULT nextval('assoccl_faturamento_id_seq'::regclass);


--
-- TOC entry 2560 (class 2604 OID 58322147)
-- Dependencies: 170 171 171
-- Name: id; Type: DEFAULT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoccl_quadro_funcionario ALTER COLUMN id SET DEFAULT nextval('assoccl_quadro_funcionario_id_seq'::regclass);


--
-- TOC entry 2554 (class 2604 OID 58322131)
-- Dependencies: 168 169 169
-- Name: id; Type: DEFAULT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY capital_social ALTER COLUMN id SET DEFAULT nextval('capital_social_id_seq'::regclass);


--
-- TOC entry 2548 (class 2604 OID 58322115)
-- Dependencies: 167 166 167
-- Name: id; Type: DEFAULT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY natureza ALTER COLUMN id SET DEFAULT nextval('natureza_id_seq'::regclass);


SET search_path = basico_sequencia, pg_catalog;

--
-- TOC entry 2542 (class 2604 OID 58322097)
-- Dependencies: 164 165 165
-- Name: id; Type: DEFAULT; Schema: basico_sequencia; Owner: -
--

ALTER TABLE ONLY assocsq_acao_aplicacao ALTER COLUMN id SET DEFAULT nextval('assocsq_acao_aplicacao_id_seq'::regclass);


SET search_path = basico_template, pg_catalog;

--
-- TOC entry 2540 (class 2604 OID 58322083)
-- Dependencies: 163 162 163
-- Name: id; Type: DEFAULT; Schema: basico_template; Owner: -
--

ALTER TABLE ONLY assoccl_include ALTER COLUMN id SET DEFAULT nextval('assoccl_include_id_seq'::regclass);


--
-- TOC entry 2538 (class 2604 OID 58322069)
-- Dependencies: 161 160 161
-- Name: id; Type: DEFAULT; Schema: basico_template; Owner: -
--

ALTER TABLE ONLY assoccl_output ALTER COLUMN id SET DEFAULT nextval('assoccl_output_id_seq'::regclass);


SET search_path = basico, pg_catalog;

--
-- TOC entry 3837 (class 2606 OID 58323776)
-- Dependencies: 375 375
-- Name: acao_evento_pkey; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY acao_evento
    ADD CONSTRAINT acao_evento_pkey PRIMARY KEY (id);


--
-- TOC entry 3696 (class 2606 OID 58323514)
-- Dependencies: 345 345
-- Name: evento_evento_key; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY evento
    ADD CONSTRAINT evento_evento_key UNIQUE (evento);


--
-- TOC entry 3691 (class 2606 OID 58323494)
-- Dependencies: 343 343
-- Name: filter_pkey; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY filter
    ADD CONSTRAINT filter_pkey PRIMARY KEY (id);


--
-- TOC entry 3670 (class 2606 OID 58323456)
-- Dependencies: 339 339
-- Name: include_uri_key; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY include
    ADD CONSTRAINT include_uri_key UNIQUE (uri);


--
-- TOC entry 3639 (class 2606 OID 58323379)
-- Dependencies: 329 329
-- Name: output_pkey; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY output
    ADD CONSTRAINT output_pkey PRIMARY KEY (id);


--
-- TOC entry 3846 (class 2606 OID 58323794)
-- Dependencies: 377 377
-- Name: pk_acao_aplicacao; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY acao_aplicacao
    ADD CONSTRAINT pk_acao_aplicacao PRIMARY KEY (id);


--
-- TOC entry 3828 (class 2606 OID 58323758)
-- Dependencies: 373 373
-- Name: pk_ajuda; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ajuda
    ADD CONSTRAINT pk_ajuda PRIMARY KEY (id);


--
-- TOC entry 3817 (class 2606 OID 58323737)
-- Dependencies: 371 371
-- Name: pk_area_conhecimento; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY area_conhecimento
    ADD CONSTRAINT pk_area_conhecimento PRIMARY KEY (id);


--
-- TOC entry 3807 (class 2606 OID 58323717)
-- Dependencies: 369 369
-- Name: pk_area_economia; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY area_economia
    ADD CONSTRAINT pk_area_economia PRIMARY KEY (id);


--
-- TOC entry 3778 (class 2606 OID 58323659)
-- Dependencies: 363 363
-- Name: pk_arquivo; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cpg_arquivo
    ADD CONSTRAINT pk_arquivo PRIMARY KEY (id);


--
-- TOC entry 3603 (class 2606 OID 58323298)
-- Dependencies: 319 319
-- Name: pk_assocag_sequencia; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY sequencia
    ADD CONSTRAINT pk_assocag_sequencia PRIMARY KEY (id);


--
-- TOC entry 3797 (class 2606 OID 58323697)
-- Dependencies: 367 367
-- Name: pk_categoria; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY categoria
    ADD CONSTRAINT pk_categoria PRIMARY KEY (id);


--
-- TOC entry 3765 (class 2606 OID 58323639)
-- Dependencies: 361 361
-- Name: pk_codigo_acesso; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cpg_codigo_acesso
    ADD CONSTRAINT pk_codigo_acesso PRIMARY KEY (id);


--
-- TOC entry 3787 (class 2606 OID 58323677)
-- Dependencies: 365 365
-- Name: pk_componente; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY componente
    ADD CONSTRAINT pk_componente PRIMARY KEY (id);


--
-- TOC entry 3755 (class 2606 OID 58323622)
-- Dependencies: 359 359
-- Name: pk_dados_bancarios; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cpg_dados_bancarios
    ADD CONSTRAINT pk_dados_bancarios PRIMARY KEY (id);


--
-- TOC entry 3713 (class 2606 OID 58323544)
-- Dependencies: 349 349
-- Name: pk_dados_biometricos; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY dados_biometricos
    ADD CONSTRAINT pk_dados_biometricos PRIMARY KEY (id);


--
-- TOC entry 3706 (class 2606 OID 58323529)
-- Dependencies: 347 347
-- Name: pk_dicionario_expressao; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY dicionario_expressao
    ADD CONSTRAINT pk_dicionario_expressao PRIMARY KEY (id);


--
-- TOC entry 3746 (class 2606 OID 58323607)
-- Dependencies: 357 357
-- Name: pk_documento_identificacao; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cpg_documento_identificacao
    ADD CONSTRAINT pk_documento_identificacao PRIMARY KEY (id);


--
-- TOC entry 3701 (class 2606 OID 58323512)
-- Dependencies: 345 345
-- Name: pk_evento; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY evento
    ADD CONSTRAINT pk_evento PRIMARY KEY (id);


--
-- TOC entry 3682 (class 2606 OID 58323476)
-- Dependencies: 341 341
-- Name: pk_formulario; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY formulario
    ADD CONSTRAINT pk_formulario PRIMARY KEY (id);


--
-- TOC entry 3672 (class 2606 OID 58323454)
-- Dependencies: 339 339
-- Name: pk_include; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY include
    ADD CONSTRAINT pk_include PRIMARY KEY (id);


--
-- TOC entry 3737 (class 2606 OID 58323591)
-- Dependencies: 355 355
-- Name: pk_link; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cpg_link
    ADD CONSTRAINT pk_link PRIMARY KEY (id);


--
-- TOC entry 3663 (class 2606 OID 58323438)
-- Dependencies: 337 337
-- Name: pk_log; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY log
    ADD CONSTRAINT pk_log PRIMARY KEY (id);


--
-- TOC entry 3658 (class 2606 OID 58323427)
-- Dependencies: 335 335
-- Name: pk_mensagem; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY mensagem
    ADD CONSTRAINT pk_mensagem PRIMARY KEY (id);


--
-- TOC entry 3651 (class 2606 OID 58323412)
-- Dependencies: 333 333
-- Name: pk_metodo_validacao; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY metodo_validacao
    ADD CONSTRAINT pk_metodo_validacao PRIMARY KEY (id);


--
-- TOC entry 3645 (class 2606 OID 58323396)
-- Dependencies: 331 331
-- Name: pk_modulo; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY modulo
    ADD CONSTRAINT pk_modulo PRIMARY KEY (id);


--
-- TOC entry 3631 (class 2606 OID 58323361)
-- Dependencies: 327 327
-- Name: pk_perfil; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY perfil
    ADD CONSTRAINT pk_perfil PRIMARY KEY (id);


--
-- TOC entry 3625 (class 2606 OID 58323344)
-- Dependencies: 325 325
-- Name: pk_pessoa; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY pessoa
    ADD CONSTRAINT pk_pessoa PRIMARY KEY (id);


--
-- TOC entry 3622 (class 2606 OID 58323331)
-- Dependencies: 323 323
-- Name: pk_pessoa_juridica; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY pessoa_juridica
    ADD CONSTRAINT pk_pessoa_juridica PRIMARY KEY (id);


--
-- TOC entry 3729 (class 2606 OID 58323574)
-- Dependencies: 353 353
-- Name: pk_produto; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cpg_produto
    ADD CONSTRAINT pk_produto PRIMARY KEY (id);


--
-- TOC entry 3611 (class 2606 OID 58323316)
-- Dependencies: 321 321
-- Name: pk_profissao; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY profissao
    ADD CONSTRAINT pk_profissao PRIMARY KEY (id);


--
-- TOC entry 3597 (class 2606 OID 58323282)
-- Dependencies: 317 317
-- Name: pk_template; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY template
    ADD CONSTRAINT pk_template PRIMARY KEY (id);


--
-- TOC entry 3588 (class 2606 OID 58323264)
-- Dependencies: 315 315
-- Name: pk_tipo_categoria; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY tipo_categoria
    ADD CONSTRAINT pk_tipo_categoria PRIMARY KEY (id);


--
-- TOC entry 3721 (class 2606 OID 58323559)
-- Dependencies: 351 351
-- Name: pk_token; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cpg_token
    ADD CONSTRAINT pk_token PRIMARY KEY (id);


--
-- TOC entry 3848 (class 2606 OID 58323796)
-- Dependencies: 377 377 377 377
-- Name: un_acao_aplicacao; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY acao_aplicacao
    ADD CONSTRAINT un_acao_aplicacao UNIQUE (id_modulo, controller, action);


--
-- TOC entry 3839 (class 2606 OID 58323778)
-- Dependencies: 375 375 375
-- Name: un_acao_evento; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY acao_evento
    ADD CONSTRAINT un_acao_evento UNIQUE (id_categoria, nome);


--
-- TOC entry 3830 (class 2606 OID 58323760)
-- Dependencies: 373 373 373
-- Name: un_ajuda; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ajuda
    ADD CONSTRAINT un_ajuda UNIQUE (id_categoria, nome);


--
-- TOC entry 3819 (class 2606 OID 58323739)
-- Dependencies: 371 371 371 371
-- Name: un_area_conhecimento; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY area_conhecimento
    ADD CONSTRAINT un_area_conhecimento UNIQUE (id_area_conhecimento_pai, id_categoria, nome);


--
-- TOC entry 3809 (class 2606 OID 58323719)
-- Dependencies: 369 369 369 369
-- Name: un_area_economica; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY area_economia
    ADD CONSTRAINT un_area_economica UNIQUE (id_area_economia_pai, id_categoria, nome);


--
-- TOC entry 3799 (class 2606 OID 58323699)
-- Dependencies: 367 367 367 367
-- Name: un_categoria; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY categoria
    ADD CONSTRAINT un_categoria UNIQUE (id_tipo_categoria, id_categoria_pai, nome);


--
-- TOC entry 3767 (class 2606 OID 58323641)
-- Dependencies: 361 361 361 361 361 361
-- Name: un_codigo_acesso; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cpg_codigo_acesso
    ADD CONSTRAINT un_codigo_acesso UNIQUE (id_categoria_proprietario, id_generico_proprietario, id_categoria_acesso, id_generico_acesso, codigo);


--
-- TOC entry 3789 (class 2606 OID 58323679)
-- Dependencies: 365 365 365
-- Name: un_componente; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY componente
    ADD CONSTRAINT un_componente UNIQUE (id_categoria, nome);


--
-- TOC entry 3780 (class 2606 OID 58323661)
-- Dependencies: 363 363 363 363
-- Name: un_cpg_arquivo; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cpg_arquivo
    ADD CONSTRAINT un_cpg_arquivo UNIQUE (id_categoria, id_generico_proprietario, uri);


--
-- TOC entry 3757 (class 2606 OID 58323624)
-- Dependencies: 359 359 359 359 359 359 359
-- Name: un_dados_bancarios; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cpg_dados_bancarios
    ADD CONSTRAINT un_dados_bancarios UNIQUE (id_categoria, id_generico_proprietario, numero_banco, numero_agencia, numero_tipo_conta, numero_conta);


--
-- TOC entry 3715 (class 2606 OID 58323546)
-- Dependencies: 349 349 349
-- Name: un_dados_biometricos; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY dados_biometricos
    ADD CONSTRAINT un_dados_biometricos UNIQUE (id_categoria, id_generico_proprietario);


--
-- TOC entry 3708 (class 2606 OID 58323531)
-- Dependencies: 347 347 347
-- Name: un_dicionario_expressao; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY dicionario_expressao
    ADD CONSTRAINT un_dicionario_expressao UNIQUE (id_categoria, constante_textual);


--
-- TOC entry 3748 (class 2606 OID 58323609)
-- Dependencies: 357 357 357 357 357
-- Name: un_documento; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cpg_documento_identificacao
    ADD CONSTRAINT un_documento UNIQUE (id_categoria, id_generico_proprietario, id_pessoa_juridica_emissor, identificador);


--
-- TOC entry 3693 (class 2606 OID 58323496)
-- Dependencies: 343 343 343
-- Name: un_filter; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY filter
    ADD CONSTRAINT un_filter UNIQUE (id_categoria, nome);


--
-- TOC entry 3684 (class 2606 OID 58323478)
-- Dependencies: 341 341 341 341
-- Name: un_formulario; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY formulario
    ADD CONSTRAINT un_formulario UNIQUE (id_formulario_pai, id_categoria, nome);


--
-- TOC entry 3674 (class 2606 OID 58323458)
-- Dependencies: 339 339 339
-- Name: un_include; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY include
    ADD CONSTRAINT un_include UNIQUE (id_categoria, nome);


--
-- TOC entry 3739 (class 2606 OID 58323593)
-- Dependencies: 355 355 355 355 355
-- Name: un_link; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cpg_link
    ADD CONSTRAINT un_link UNIQUE (id_categoria, id_generico_proprietario, url, nome);


--
-- TOC entry 3653 (class 2606 OID 58323414)
-- Dependencies: 333 333 333
-- Name: un_metodo_validacao; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY metodo_validacao
    ADD CONSTRAINT un_metodo_validacao UNIQUE (id_categoria, nome);


--
-- TOC entry 3633 (class 2606 OID 58323363)
-- Dependencies: 327 327 327
-- Name: un_perfil; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY perfil
    ADD CONSTRAINT un_perfil UNIQUE (id_modulo, nome);


--
-- TOC entry 3609 (class 2606 OID 58323300)
-- Dependencies: 319 319 319
-- Name: un_sequencia; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY sequencia
    ADD CONSTRAINT un_sequencia UNIQUE (id_categoria, nome);


--
-- TOC entry 3595 (class 2606 OID 58323266)
-- Dependencies: 315 315 315
-- Name: un_tipo_categoria; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY tipo_categoria
    ADD CONSTRAINT un_tipo_categoria UNIQUE (id_tipo_categoria_pai, nome);


--
-- TOC entry 3586 (class 2606 OID 58323245)
-- Dependencies: 313 313
-- Name: validator_pkey; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY validator
    ADD CONSTRAINT validator_pkey PRIMARY KEY (id);


SET search_path = basico_acao_aplic_assoc_visao, pg_catalog;

--
-- TOC entry 3577 (class 2606 OID 58323227)
-- Dependencies: 311 311
-- Name: pk_assoccl_ref_atrib_met_rec_post; Type: CONSTRAINT; Schema: basico_acao_aplic_assoc_visao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_atrib_met_rec_post
    ADD CONSTRAINT pk_assoccl_ref_atrib_met_rec_post PRIMARY KEY (id);


--
-- TOC entry 3569 (class 2606 OID 58323213)
-- Dependencies: 309 309
-- Name: pk_atributo_metodo_recup_post; Type: CONSTRAINT; Schema: basico_acao_aplic_assoc_visao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY atributo_metodo_recup_post
    ADD CONSTRAINT pk_atributo_metodo_recup_post PRIMARY KEY (id);


--
-- TOC entry 3579 (class 2606 OID 58323229)
-- Dependencies: 311 311 311 311
-- Name: un_assoccl_atrib_met_rec_post; Type: CONSTRAINT; Schema: basico_acao_aplic_assoc_visao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_atrib_met_rec_post
    ADD CONSTRAINT un_assoccl_atrib_met_rec_post UNIQUE (id_assoc_visao_ref_post, id_atributo_metodo_recup_post, ordem);


--
-- TOC entry 3571 (class 2606 OID 58323215)
-- Dependencies: 309 309 309
-- Name: un_atributo_metodo_recup_post; Type: CONSTRAINT; Schema: basico_acao_aplic_assoc_visao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY atributo_metodo_recup_post
    ADD CONSTRAINT un_atributo_metodo_recup_post UNIQUE (atributo, metodo_recuperacao);


SET search_path = basico_acao_aplicacao, pg_catalog;

--
-- TOC entry 3563 (class 2606 OID 58323198)
-- Dependencies: 307 307
-- Name: pk_assoc_visao; Type: CONSTRAINT; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_visao
    ADD CONSTRAINT pk_assoc_visao PRIMARY KEY (id);


--
-- TOC entry 3552 (class 2606 OID 58323178)
-- Dependencies: 305 305
-- Name: pk_assoccl_metodo_validacao; Type: CONSTRAINT; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_metodo_validacao
    ADD CONSTRAINT pk_assoccl_metodo_validacao PRIMARY KEY (id);


--
-- TOC entry 3544 (class 2606 OID 58323164)
-- Dependencies: 303 303
-- Name: pk_assoccl_perfil; Type: CONSTRAINT; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_perfil
    ADD CONSTRAINT pk_assoccl_perfil PRIMARY KEY (id);


--
-- TOC entry 3554 (class 2606 OID 58323180)
-- Dependencies: 305 305 305 305
-- Name: un_assoccl_metodo_validacao; Type: CONSTRAINT; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_metodo_validacao
    ADD CONSTRAINT un_assoccl_metodo_validacao UNIQUE (id_acao_aplicacao, id_metodo_validacao, id_perfil);


--
-- TOC entry 3546 (class 2606 OID 58323166)
-- Dependencies: 303 303 303
-- Name: un_assoccl_perfil; Type: CONSTRAINT; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_perfil
    ADD CONSTRAINT un_assoccl_perfil UNIQUE (id_acao_aplicacao, id_perfil);


SET search_path = basico_acao_evento, pg_catalog;

--
-- TOC entry 3537 (class 2606 OID 58323150)
-- Dependencies: 301 301
-- Name: assoccl_include_pkey; Type: CONSTRAINT; Schema: basico_acao_evento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT assoccl_include_pkey PRIMARY KEY (id);


--
-- TOC entry 3539 (class 2606 OID 58323152)
-- Dependencies: 301 301 301
-- Name: un_assoccl_include1; Type: CONSTRAINT; Schema: basico_acao_evento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT un_assoccl_include1 UNIQUE (id_acao_evento, id_include);


SET search_path = basico_ajuda, pg_catalog;

--
-- TOC entry 3530 (class 2606 OID 58323136)
-- Dependencies: 299 299
-- Name: pk_assoccl_link; Type: CONSTRAINT; Schema: basico_ajuda; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_link
    ADD CONSTRAINT pk_assoccl_link PRIMARY KEY (id);


--
-- TOC entry 3532 (class 2606 OID 58323138)
-- Dependencies: 299 299 299
-- Name: un_assoccl_link; Type: CONSTRAINT; Schema: basico_ajuda; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_link
    ADD CONSTRAINT un_assoccl_link UNIQUE (id_ajuda, id_link);


SET search_path = basico_assoc_banco, pg_catalog;

--
-- TOC entry 3521 (class 2606 OID 58323120)
-- Dependencies: 297 297
-- Name: pk_assoc_tipo_conta; Type: CONSTRAINT; Schema: basico_assoc_banco; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_tipo_conta
    ADD CONSTRAINT pk_assoc_tipo_conta PRIMARY KEY (id);


--
-- TOC entry 3523 (class 2606 OID 58323122)
-- Dependencies: 297 297 297
-- Name: un_assoc_tipo_conta_categoria; Type: CONSTRAINT; Schema: basico_assoc_banco; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_tipo_conta
    ADD CONSTRAINT un_assoc_tipo_conta_categoria UNIQUE (id_assoc_banco, id_categoria);


--
-- TOC entry 3525 (class 2606 OID 58323124)
-- Dependencies: 297 297 297
-- Name: un_assoc_tipo_conta_codigo; Type: CONSTRAINT; Schema: basico_assoc_banco; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_tipo_conta
    ADD CONSTRAINT un_assoc_tipo_conta_codigo UNIQUE (id_assoc_banco, codigo);


SET search_path = basico_assoc_chave_estrangeira, pg_catalog;

--
-- TOC entry 3508 (class 2606 OID 58323103)
-- Dependencies: 295 295
-- Name: pk_relacao; Type: CONSTRAINT; Schema: basico_assoc_chave_estrangeira; Owner: -; Tablespace: 
--

ALTER TABLE ONLY relacao
    ADD CONSTRAINT pk_relacao PRIMARY KEY (id);


--
-- TOC entry 3513 (class 2606 OID 58323105)
-- Dependencies: 295 295 295
-- Name: un_relacao; Type: CONSTRAINT; Schema: basico_assoc_chave_estrangeira; Owner: -; Tablespace: 
--

ALTER TABLE ONLY relacao
    ADD CONSTRAINT un_relacao UNIQUE (tabela_origem, campo_origem);


SET search_path = basico_assoc_dados_profis, pg_catalog;

--
-- TOC entry 3504 (class 2606 OID 58323089)
-- Dependencies: 293 293
-- Name: pk_assoccl_area_conhecimento; Type: CONSTRAINT; Schema: basico_assoc_dados_profis; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_area_conhecimento
    ADD CONSTRAINT pk_assoccl_area_conhecimento PRIMARY KEY (id);


--
-- TOC entry 3506 (class 2606 OID 58323091)
-- Dependencies: 293 293 293
-- Name: un_assoc_dados_profis_area_conhec; Type: CONSTRAINT; Schema: basico_assoc_dados_profis; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_area_conhecimento
    ADD CONSTRAINT un_assoc_dados_profis_area_conhec UNIQUE (id_area_conhecimento, id_assoc_dados_profissionais);


SET search_path = basico_assoccl_pessoa_perfil, pg_catalog;

--
-- TOC entry 3499 (class 2606 OID 58323077)
-- Dependencies: 291 291
-- Name: pk_assoccl_pessoa_perfil_dados; Type: CONSTRAINT; Schema: basico_assoccl_pessoa_perfil; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_dados
    ADD CONSTRAINT pk_assoccl_pessoa_perfil_dados PRIMARY KEY (id);


SET search_path = basico_assoccl_tipo_vinculo, pg_catalog;

--
-- TOC entry 3495 (class 2606 OID 58323064)
-- Dependencies: 289 289
-- Name: pk_assoc_dados_profissionais; Type: CONSTRAINT; Schema: basico_assoccl_tipo_vinculo; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_dados
    ADD CONSTRAINT pk_assoc_dados_profissionais PRIMARY KEY (id);


SET search_path = basico_categoria, pg_catalog;

--
-- TOC entry 3487 (class 2606 OID 58323051)
-- Dependencies: 287 287
-- Name: pk_assoc_categ_chave_estrang; Type: CONSTRAINT; Schema: basico_categoria; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_chave_estrangeira
    ADD CONSTRAINT pk_assoc_categ_chave_estrang PRIMARY KEY (id);


--
-- TOC entry 3480 (class 2606 OID 58323038)
-- Dependencies: 285 285
-- Name: pk_assoc_evento_acao; Type: CONSTRAINT; Schema: basico_categoria; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_evento_acao
    ADD CONSTRAINT pk_assoc_evento_acao PRIMARY KEY (id);


SET search_path = basico_componente, pg_catalog;

--
-- TOC entry 3474 (class 2606 OID 58323024)
-- Dependencies: 283 283
-- Name: pk_componente_assoccl_include; Type: CONSTRAINT; Schema: basico_componente; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT pk_componente_assoccl_include PRIMARY KEY (id);


--
-- TOC entry 3476 (class 2606 OID 58323026)
-- Dependencies: 283 283 283
-- Name: un_assoccl_include_componente; Type: CONSTRAINT; Schema: basico_componente; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT un_assoccl_include_componente UNIQUE (id_componente, id_include);


SET search_path = basico_contato, pg_catalog;

--
-- TOC entry 3467 (class 2606 OID 58323010)
-- Dependencies: 281 281
-- Name: pk_email; Type: CONSTRAINT; Schema: basico_contato; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cpg_email
    ADD CONSTRAINT pk_email PRIMARY KEY (id);


--
-- TOC entry 3457 (class 2606 OID 58322990)
-- Dependencies: 279 279
-- Name: pk_telefone; Type: CONSTRAINT; Schema: basico_contato; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cpg_telefone
    ADD CONSTRAINT pk_telefone PRIMARY KEY (id);


--
-- TOC entry 3469 (class 2606 OID 58323012)
-- Dependencies: 281 281 281 281
-- Name: un_email; Type: CONSTRAINT; Schema: basico_contato; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cpg_email
    ADD CONSTRAINT un_email UNIQUE (id_generico_proprietario, id_categoria, email);


--
-- TOC entry 3459 (class 2606 OID 58322992)
-- Dependencies: 279 279 279 279 279 279 279
-- Name: un_telefone; Type: CONSTRAINT; Schema: basico_contato; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cpg_telefone
    ADD CONSTRAINT un_telefone UNIQUE (id_categoria, id_generico_proprietario, codigo_pais, codigo_area, telefone, ramal);


SET search_path = basico_cvc, pg_catalog;

--
-- TOC entry 3449 (class 2606 OID 58322971)
-- Dependencies: 277 277
-- Name: pk_cvc; Type: CONSTRAINT; Schema: basico_cvc; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cvc
    ADD CONSTRAINT pk_cvc PRIMARY KEY (id);


--
-- TOC entry 3451 (class 2606 OID 58322973)
-- Dependencies: 277 277 277 277
-- Name: un_cvc; Type: CONSTRAINT; Schema: basico_cvc; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cvc
    ADD CONSTRAINT un_cvc UNIQUE (id_assoc_chave_estrangeira, id_generico, versao);


SET search_path = basico_dados_academicos, pg_catalog;

--
-- TOC entry 3440 (class 2606 OID 58322956)
-- Dependencies: 275 275
-- Name: pk_titulacao; Type: CONSTRAINT; Schema: basico_dados_academicos; Owner: -; Tablespace: 
--

ALTER TABLE ONLY titulacao
    ADD CONSTRAINT pk_titulacao PRIMARY KEY (id);


SET search_path = basico_dados_biometricos, pg_catalog;

--
-- TOC entry 3438 (class 2606 OID 58322940)
-- Dependencies: 273 273
-- Name: pk_assoc_pessoa; Type: CONSTRAINT; Schema: basico_dados_biometricos; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_pessoa
    ADD CONSTRAINT pk_assoc_pessoa PRIMARY KEY (id);


SET search_path = basico_dados_profissionais, pg_catalog;

--
-- TOC entry 3425 (class 2606 OID 58322925)
-- Dependencies: 271 271
-- Name: pk_regime_trabalho; Type: CONSTRAINT; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

ALTER TABLE ONLY regime_trabalho
    ADD CONSTRAINT pk_regime_trabalho PRIMARY KEY (id);


--
-- TOC entry 3416 (class 2606 OID 58322906)
-- Dependencies: 269 269
-- Name: pk_tipo_vinculo; Type: CONSTRAINT; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

ALTER TABLE ONLY tipo_vinculo
    ADD CONSTRAINT pk_tipo_vinculo PRIMARY KEY (id);


--
-- TOC entry 3407 (class 2606 OID 58322886)
-- Dependencies: 267 267
-- Name: pk_vinculo_empregaticio; Type: CONSTRAINT; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

ALTER TABLE ONLY vinculo_empregaticio
    ADD CONSTRAINT pk_vinculo_empregaticio PRIMARY KEY (id);


--
-- TOC entry 3433 (class 2606 OID 58322927)
-- Dependencies: 271 271 271 271 271
-- Name: un_regime_trabalho; Type: CONSTRAINT; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

ALTER TABLE ONLY regime_trabalho
    ADD CONSTRAINT un_regime_trabalho UNIQUE (id_regime_trabalho_pai, id_categoria, nome, codigo);


--
-- TOC entry 3423 (class 2606 OID 58322908)
-- Dependencies: 269 269 269 269
-- Name: un_tipo_vinculo; Type: CONSTRAINT; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

ALTER TABLE ONLY tipo_vinculo
    ADD CONSTRAINT un_tipo_vinculo UNIQUE (id_categoria, nome, codigo);


--
-- TOC entry 3409 (class 2606 OID 58322888)
-- Dependencies: 267 267 267 267
-- Name: un_vinculo_empregaticio; Type: CONSTRAINT; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

ALTER TABLE ONLY vinculo_empregaticio
    ADD CONSTRAINT un_vinculo_empregaticio UNIQUE (id_categoria, nome, codigo);


SET search_path = basico_decorator, pg_catalog;

--
-- TOC entry 3403 (class 2606 OID 58322868)
-- Dependencies: 265 265
-- Name: pk_decorator_assoccl_include; Type: CONSTRAINT; Schema: basico_decorator; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT pk_decorator_assoccl_include PRIMARY KEY (id);


--
-- TOC entry 3405 (class 2606 OID 58322870)
-- Dependencies: 265 265 265
-- Name: un_assoccl_include_decorator; Type: CONSTRAINT; Schema: basico_decorator; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT un_assoccl_include_decorator UNIQUE (id_include, id_decorator);


SET search_path = basico_form_assoccl_elem_grupo, pg_catalog;

--
-- TOC entry 3396 (class 2606 OID 58322854)
-- Dependencies: 263 263
-- Name: pk_assoccl_decorator; Type: CONSTRAINT; Schema: basico_form_assoccl_elem_grupo; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT pk_assoccl_decorator PRIMARY KEY (id);


--
-- TOC entry 3398 (class 2606 OID 58322856)
-- Dependencies: 263 263 263
-- Name: un_assoccl_decorator1; Type: CONSTRAINT; Schema: basico_form_assoccl_elem_grupo; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT un_assoccl_decorator1 UNIQUE (id_grupo, id_decorator);


SET search_path = basico_form_assoccl_elemento, pg_catalog;

--
-- TOC entry 3361 (class 2606 OID 58322780)
-- Dependencies: 253 253
-- Name: assoccl_validator_pkey; Type: CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_validator
    ADD CONSTRAINT assoccl_validator_pkey PRIMARY KEY (id);


--
-- TOC entry 3389 (class 2606 OID 58322840)
-- Dependencies: 261 261
-- Name: pk_assoccl_elemento; Type: CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT pk_assoccl_elemento PRIMARY KEY (id);


--
-- TOC entry 3382 (class 2606 OID 58322825)
-- Dependencies: 259 259
-- Name: pk_assoccl_evento; Type: CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_evento
    ADD CONSTRAINT pk_assoccl_evento PRIMARY KEY (id);


--
-- TOC entry 3375 (class 2606 OID 58322810)
-- Dependencies: 257 257
-- Name: pk_assoccl_filter; Type: CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_filter
    ADD CONSTRAINT pk_assoccl_filter PRIMARY KEY (id);


--
-- TOC entry 3368 (class 2606 OID 58322795)
-- Dependencies: 255 255
-- Name: pk_assoccl_include; Type: CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT pk_assoccl_include PRIMARY KEY (id);


--
-- TOC entry 3356 (class 2606 OID 58322767)
-- Dependencies: 251 251
-- Name: pk_grupo; Type: CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY grupo
    ADD CONSTRAINT pk_grupo PRIMARY KEY (id);


--
-- TOC entry 3391 (class 2606 OID 58322842)
-- Dependencies: 261 261 261 261
-- Name: un_assoccl_decorator_assoccl_elemento; Type: CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT un_assoccl_decorator_assoccl_elemento UNIQUE (id_assoccl_elemento, id_decorator, ordem);


--
-- TOC entry 3363 (class 2606 OID 58322782)
-- Dependencies: 253 253 253
-- Name: un_assoccl_elemento1; Type: CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_validator
    ADD CONSTRAINT un_assoccl_elemento1 UNIQUE (id_assoccl_elemento, id_validator);


--
-- TOC entry 3384 (class 2606 OID 58322827)
-- Dependencies: 259 259 259 259
-- Name: un_assoccl_evento2; Type: CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_evento
    ADD CONSTRAINT un_assoccl_evento2 UNIQUE (id_assoccl_elemento, id_evento, id_acao_evento);


--
-- TOC entry 3377 (class 2606 OID 58322812)
-- Dependencies: 257 257 257
-- Name: un_assoccl_filter1; Type: CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_filter
    ADD CONSTRAINT un_assoccl_filter1 UNIQUE (id_assoccl_elemento, id_filter);


--
-- TOC entry 3370 (class 2606 OID 58322797)
-- Dependencies: 255 255 255
-- Name: un_assoccl_include_assoccl_elemento; Type: CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT un_assoccl_include_assoccl_elemento UNIQUE (id_assoccl_elemento, id_include);


SET search_path = basico_formulario, pg_catalog;

--
-- TOC entry 3348 (class 2606 OID 58322749)
-- Dependencies: 249 249
-- Name: pk_assoccl_decorator; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT pk_assoccl_decorator PRIMARY KEY (id);


--
-- TOC entry 3339 (class 2606 OID 58322733)
-- Dependencies: 247 247
-- Name: pk_assoccl_elemento; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_elemento
    ADD CONSTRAINT pk_assoccl_elemento PRIMARY KEY (id);


--
-- TOC entry 3331 (class 2606 OID 58322715)
-- Dependencies: 245 245
-- Name: pk_assoccl_evento; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_evento
    ADD CONSTRAINT pk_assoccl_evento PRIMARY KEY (id);


--
-- TOC entry 3316 (class 2606 OID 58322687)
-- Dependencies: 241 241
-- Name: pk_assoccl_modulo; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_modulo
    ADD CONSTRAINT pk_assoccl_modulo PRIMARY KEY (id);


--
-- TOC entry 3304 (class 2606 OID 58322661)
-- Dependencies: 237 237
-- Name: pk_decorator; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY decorator
    ADD CONSTRAINT pk_decorator PRIMARY KEY (id);


--
-- TOC entry 3296 (class 2606 OID 58322643)
-- Dependencies: 235 235
-- Name: pk_elemento; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY elemento
    ADD CONSTRAINT pk_elemento PRIMARY KEY (id);


--
-- TOC entry 3323 (class 2606 OID 58322701)
-- Dependencies: 243 243
-- Name: pk_formulario_assoccl_include; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT pk_formulario_assoccl_include PRIMARY KEY (id);


--
-- TOC entry 3309 (class 2606 OID 58322673)
-- Dependencies: 239 239
-- Name: pk_formulario_template; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_template
    ADD CONSTRAINT pk_formulario_template PRIMARY KEY (id);


--
-- TOC entry 3279 (class 2606 OID 58322625)
-- Dependencies: 233 233
-- Name: pk_rascunho; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rascunho
    ADD CONSTRAINT pk_rascunho PRIMARY KEY (id);


--
-- TOC entry 3350 (class 2606 OID 58322751)
-- Dependencies: 249 249 249 249
-- Name: un_assoccl_decorator; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT un_assoccl_decorator UNIQUE (id_formulario, id_decorator, ordem);


--
-- TOC entry 3341 (class 2606 OID 58322737)
-- Dependencies: 247 247 247 247
-- Name: un_assoccl_elemento; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_elemento
    ADD CONSTRAINT un_assoccl_elemento UNIQUE (id_formulario, id_elemento, ordem);


--
-- TOC entry 3343 (class 2606 OID 58322735)
-- Dependencies: 247 247 247
-- Name: un_assoccl_elemento_element_name; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_elemento
    ADD CONSTRAINT un_assoccl_elemento_element_name UNIQUE (id_formulario, element_name);


--
-- TOC entry 3333 (class 2606 OID 58322717)
-- Dependencies: 245 245 245 245 245
-- Name: un_assoccl_evento1; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_evento
    ADD CONSTRAINT un_assoccl_evento1 UNIQUE (id_formulario, id_acao_evento, id_evento, ordem);


--
-- TOC entry 3325 (class 2606 OID 58322703)
-- Dependencies: 243 243 243
-- Name: un_assoccl_include_formulario; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT un_assoccl_include_formulario UNIQUE (id_formulario, id_include);


--
-- TOC entry 3318 (class 2606 OID 58322689)
-- Dependencies: 241 241 241
-- Name: un_assoccl_modulo1; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_modulo
    ADD CONSTRAINT un_assoccl_modulo1 UNIQUE (id_modulo, id_formulario);


--
-- TOC entry 3311 (class 2606 OID 58322675)
-- Dependencies: 239 239 239
-- Name: un_assoccl_template; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_template
    ADD CONSTRAINT un_assoccl_template UNIQUE (id_template, id_formulario);


--
-- TOC entry 3298 (class 2606 OID 58322645)
-- Dependencies: 235 235 235
-- Name: un_formulario_elemento; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY elemento
    ADD CONSTRAINT un_formulario_elemento UNIQUE (id_categoria, nome);


SET search_path = basico_formulario_elemento, pg_catalog;

--
-- TOC entry 3254 (class 2606 OID 58322566)
-- Dependencies: 225 225
-- Name: assoccl_validator_pkey; Type: CONSTRAINT; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_validator
    ADD CONSTRAINT assoccl_validator_pkey PRIMARY KEY (id);


--
-- TOC entry 3275 (class 2606 OID 58322609)
-- Dependencies: 231 231
-- Name: pk_assoccl_decorator; Type: CONSTRAINT; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT pk_assoccl_decorator PRIMARY KEY (id);


--
-- TOC entry 3268 (class 2606 OID 58322595)
-- Dependencies: 229 229
-- Name: pk_assoccl_evento; Type: CONSTRAINT; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_evento
    ADD CONSTRAINT pk_assoccl_evento PRIMARY KEY (id);


--
-- TOC entry 3261 (class 2606 OID 58322580)
-- Dependencies: 227 227
-- Name: pk_assoccl_filter; Type: CONSTRAINT; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_filter
    ADD CONSTRAINT pk_assoccl_filter PRIMARY KEY (id);


--
-- TOC entry 3277 (class 2606 OID 58322611)
-- Dependencies: 231 231 231 231
-- Name: un_assoccl_decorator_elemento; Type: CONSTRAINT; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT un_assoccl_decorator_elemento UNIQUE (id_elemento, id_decorator, ordem);


--
-- TOC entry 3270 (class 2606 OID 58322597)
-- Dependencies: 229 229 229 229 229
-- Name: un_assoccl_evento; Type: CONSTRAINT; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_evento
    ADD CONSTRAINT un_assoccl_evento UNIQUE (id_elemento, id_evento, id_acao_evento, ordem);


--
-- TOC entry 3263 (class 2606 OID 58322582)
-- Dependencies: 227 227 227 227
-- Name: un_assoccl_filter; Type: CONSTRAINT; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_filter
    ADD CONSTRAINT un_assoccl_filter UNIQUE (id_elemento, id_filter, ordem);


--
-- TOC entry 3256 (class 2606 OID 58322568)
-- Dependencies: 225 225 225
-- Name: un_assoccl_validator; Type: CONSTRAINT; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_validator
    ADD CONSTRAINT un_assoccl_validator UNIQUE (id_validator, id_elemento);


SET search_path = basico_formulario_rascunho, pg_catalog;

--
-- TOC entry 3249 (class 2606 OID 58322554)
-- Dependencies: 223 223
-- Name: pk_assocag_grupo; Type: CONSTRAINT; Schema: basico_formulario_rascunho; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assocag_grupo
    ADD CONSTRAINT pk_assocag_grupo PRIMARY KEY (id);


SET search_path = basico_localizacao, pg_catalog;

--
-- TOC entry 3184 (class 2606 OID 58322442)
-- Dependencies: 209 209
-- Name: pais_codigo_iso3166_key; Type: CONSTRAINT; Schema: basico_localizacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY pais
    ADD CONSTRAINT pais_codigo_iso3166_key UNIQUE (codigo_iso3166);


--
-- TOC entry 3243 (class 2606 OID 58322539)
-- Dependencies: 221 221
-- Name: pk_assoc_bairro; Type: CONSTRAINT; Schema: basico_localizacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_bairro
    ADD CONSTRAINT pk_assoc_bairro PRIMARY KEY (id);


--
-- TOC entry 3236 (class 2606 OID 58322523)
-- Dependencies: 219 219
-- Name: pk_assoc_estado; Type: CONSTRAINT; Schema: basico_localizacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_estado
    ADD CONSTRAINT pk_assoc_estado PRIMARY KEY (id);


--
-- TOC entry 3226 (class 2606 OID 58322506)
-- Dependencies: 217 217
-- Name: pk_assoc_logradouro; Type: CONSTRAINT; Schema: basico_localizacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_logradouro
    ADD CONSTRAINT pk_assoc_logradouro PRIMARY KEY (id);


--
-- TOC entry 3218 (class 2606 OID 58322490)
-- Dependencies: 215 215
-- Name: pk_assoc_municipio; Type: CONSTRAINT; Schema: basico_localizacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_municipio
    ADD CONSTRAINT pk_assoc_municipio PRIMARY KEY (id);


--
-- TOC entry 3208 (class 2606 OID 58322473)
-- Dependencies: 213 213
-- Name: pk_codigo_postal; Type: CONSTRAINT; Schema: basico_localizacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY codigo_postal
    ADD CONSTRAINT pk_codigo_postal PRIMARY KEY (id);


--
-- TOC entry 3196 (class 2606 OID 58322457)
-- Dependencies: 211 211
-- Name: pk_endereco; Type: CONSTRAINT; Schema: basico_localizacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cpg_endereco
    ADD CONSTRAINT pk_endereco PRIMARY KEY (id);


--
-- TOC entry 3189 (class 2606 OID 58322440)
-- Dependencies: 209 209
-- Name: pk_pais; Type: CONSTRAINT; Schema: basico_localizacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY pais
    ADD CONSTRAINT pk_pais PRIMARY KEY (id);


--
-- TOC entry 3245 (class 2606 OID 58322541)
-- Dependencies: 221 221 221
-- Name: un_assoc_bairro; Type: CONSTRAINT; Schema: basico_localizacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_bairro
    ADD CONSTRAINT un_assoc_bairro UNIQUE (id_municipio, nome);


--
-- TOC entry 3228 (class 2606 OID 58322508)
-- Dependencies: 217 217 217 217
-- Name: un_assoc_logradouro; Type: CONSTRAINT; Schema: basico_localizacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_logradouro
    ADD CONSTRAINT un_assoc_logradouro UNIQUE (id_categoria, id_bairro, nome);


--
-- TOC entry 3210 (class 2606 OID 58322475)
-- Dependencies: 213 213 213
-- Name: un_cep; Type: CONSTRAINT; Schema: basico_localizacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY codigo_postal
    ADD CONSTRAINT un_cep UNIQUE (codigo, id_pais);


--
-- TOC entry 3198 (class 2606 OID 58322459)
-- Dependencies: 211 211 211
-- Name: un_endereco; Type: CONSTRAINT; Schema: basico_localizacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cpg_endereco
    ADD CONSTRAINT un_endereco UNIQUE (id_categoria, id_generico_proprietario);


--
-- TOC entry 3238 (class 2606 OID 58322525)
-- Dependencies: 219 219 219 219 219
-- Name: un_estado_pais; Type: CONSTRAINT; Schema: basico_localizacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_estado
    ADD CONSTRAINT un_estado_pais UNIQUE (id_pais, nome, id_categoria, id_estado_pai);


--
-- TOC entry 3220 (class 2606 OID 58322492)
-- Dependencies: 215 215 215 215 215
-- Name: un_municipio_estado; Type: CONSTRAINT; Schema: basico_localizacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_municipio
    ADD CONSTRAINT un_municipio_estado UNIQUE (id_estado, nome, id_categoria, id_municipio_pai);


SET search_path = basico_mensagem, pg_catalog;

--
-- TOC entry 3182 (class 2606 OID 58322425)
-- Dependencies: 207 207
-- Name: pk_assoc_email; Type: CONSTRAINT; Schema: basico_mensagem; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_email
    ADD CONSTRAINT pk_assoc_email PRIMARY KEY (id);


--
-- TOC entry 3176 (class 2606 OID 58322411)
-- Dependencies: 205 205
-- Name: pk_assocl_assocl_pessoa_perfil; Type: CONSTRAINT; Schema: basico_mensagem; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_assoccl_pessoa_perfil
    ADD CONSTRAINT pk_assocl_assocl_pessoa_perfil PRIMARY KEY (id);


--
-- TOC entry 3164 (class 2606 OID 58322396)
-- Dependencies: 203 203
-- Name: pk_template; Type: CONSTRAINT; Schema: basico_mensagem; Owner: -; Tablespace: 
--

ALTER TABLE ONLY template
    ADD CONSTRAINT pk_template PRIMARY KEY (id);


--
-- TOC entry 3178 (class 2606 OID 58322413)
-- Dependencies: 205 205 205 205
-- Name: un_assoccl_assoccl_pessoa_perfil; Type: CONSTRAINT; Schema: basico_mensagem; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_assoccl_pessoa_perfil
    ADD CONSTRAINT un_assoccl_assoccl_pessoa_perfil UNIQUE (id_categoria, id_mensagem, id_assoccl_perfil);


--
-- TOC entry 3170 (class 2606 OID 58322398)
-- Dependencies: 203 203 203 203
-- Name: un_mensagem_template; Type: CONSTRAINT; Schema: basico_mensagem; Owner: -; Tablespace: 
--

ALTER TABLE ONLY template
    ADD CONSTRAINT un_mensagem_template UNIQUE (id_categoria, id_generico_proprietario, nome);


SET search_path = basico_mensagem_assoc_email, pg_catalog;

--
-- TOC entry 3162 (class 2606 OID 58322377)
-- Dependencies: 201 201
-- Name: pk_assoc_dados; Type: CONSTRAINT; Schema: basico_mensagem_assoc_email; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_dados
    ADD CONSTRAINT pk_assoc_dados PRIMARY KEY (id);


SET search_path = basico_metodo_validacao, pg_catalog;

--
-- TOC entry 3156 (class 2606 OID 58322362)
-- Dependencies: 199 199
-- Name: pk_metodo_valid_assoccl_include; Type: CONSTRAINT; Schema: basico_metodo_validacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT pk_metodo_valid_assoccl_include PRIMARY KEY (id);


--
-- TOC entry 3158 (class 2606 OID 58322364)
-- Dependencies: 199 199 199
-- Name: un_assoccl_include; Type: CONSTRAINT; Schema: basico_metodo_validacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT un_assoccl_include UNIQUE (id_metodo_validacao, id_include);


SET search_path = basico_output, pg_catalog;

--
-- TOC entry 3149 (class 2606 OID 58322348)
-- Dependencies: 197 197
-- Name: pk_output_assoccl_include; Type: CONSTRAINT; Schema: basico_output; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT pk_output_assoccl_include PRIMARY KEY (id);


--
-- TOC entry 3151 (class 2606 OID 58322350)
-- Dependencies: 197 197 197
-- Name: un_assoccl_include_output; Type: CONSTRAINT; Schema: basico_output; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT un_assoccl_include_output UNIQUE (id_output, id_include);


SET search_path = basico_perfil, pg_catalog;

--
-- TOC entry 3142 (class 2606 OID 58322334)
-- Dependencies: 195 195
-- Name: pk_assoccl_modulo; Type: CONSTRAINT; Schema: basico_perfil; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_modulo
    ADD CONSTRAINT pk_assoccl_modulo PRIMARY KEY (id);


--
-- TOC entry 3144 (class 2606 OID 58322336)
-- Dependencies: 195 195 195
-- Name: un_assoccl_modulo; Type: CONSTRAINT; Schema: basico_perfil; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_modulo
    ADD CONSTRAINT un_assoccl_modulo UNIQUE (id_modulo, id_perfil);


SET search_path = basico_pessoa, pg_catalog;

--
-- TOC entry 3118 (class 2606 OID 58322279)
-- Dependencies: 187 187
-- Name: login_login_key; Type: CONSTRAINT; Schema: basico_pessoa; Owner: -; Tablespace: 
--

ALTER TABLE ONLY login
    ADD CONSTRAINT login_login_key UNIQUE (login);


--
-- TOC entry 3137 (class 2606 OID 58322322)
-- Dependencies: 193 193
-- Name: pk_assoc_dados; Type: CONSTRAINT; Schema: basico_pessoa; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_dados
    ADD CONSTRAINT pk_assoc_dados PRIMARY KEY (id);


--
-- TOC entry 3130 (class 2606 OID 58322306)
-- Dependencies: 191 191
-- Name: pk_assoccl_perfil; Type: CONSTRAINT; Schema: basico_pessoa; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_perfil
    ADD CONSTRAINT pk_assoccl_perfil PRIMARY KEY (id);


--
-- TOC entry 3125 (class 2606 OID 58322292)
-- Dependencies: 189 189
-- Name: pk_assoccl_vinculo_profissional; Type: CONSTRAINT; Schema: basico_pessoa; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_tipo_vinculo
    ADD CONSTRAINT pk_assoccl_vinculo_profissional PRIMARY KEY (id);


--
-- TOC entry 3120 (class 2606 OID 58322277)
-- Dependencies: 187 187
-- Name: pk_login; Type: CONSTRAINT; Schema: basico_pessoa; Owner: -; Tablespace: 
--

ALTER TABLE ONLY login
    ADD CONSTRAINT pk_login PRIMARY KEY (id);


--
-- TOC entry 3132 (class 2606 OID 58322308)
-- Dependencies: 191 191 191
-- Name: un_assoccl_pessoa_perfil; Type: CONSTRAINT; Schema: basico_pessoa; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_perfil
    ADD CONSTRAINT un_assoccl_pessoa_perfil UNIQUE (id_pessoa, id_perfil);


SET search_path = basico_pessoa_juridica, pg_catalog;

--
-- TOC entry 3114 (class 2606 OID 58322258)
-- Dependencies: 185 185
-- Name: pk_assoc_banco; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_banco
    ADD CONSTRAINT pk_assoc_banco PRIMARY KEY (id);


--
-- TOC entry 3108 (class 2606 OID 58322244)
-- Dependencies: 183 183
-- Name: pk_assoc_dados_pj; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_dados
    ADD CONSTRAINT pk_assoc_dados_pj PRIMARY KEY (id);


--
-- TOC entry 3099 (class 2606 OID 58322229)
-- Dependencies: 181 181
-- Name: pk_assocag_incubadora; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assocag_incubadora
    ADD CONSTRAINT pk_assocag_incubadora PRIMARY KEY (id);


--
-- TOC entry 3091 (class 2606 OID 58322215)
-- Dependencies: 179 179
-- Name: pk_assocag_parceria; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assocag_parceria
    ADD CONSTRAINT pk_assocag_parceria PRIMARY KEY (id);


--
-- TOC entry 3081 (class 2606 OID 58322198)
-- Dependencies: 177 177
-- Name: pk_assoccl_area_economia; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_area_economia
    ADD CONSTRAINT pk_assoccl_area_economia PRIMARY KEY (id);


--
-- TOC entry 3074 (class 2606 OID 58322184)
-- Dependencies: 175 175
-- Name: pk_assoccl_capital_social; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_capital_social
    ADD CONSTRAINT pk_assoccl_capital_social PRIMARY KEY (id);


--
-- TOC entry 3067 (class 2606 OID 58322169)
-- Dependencies: 173 173
-- Name: pk_assoccl_faturamento; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_faturamento
    ADD CONSTRAINT pk_assoccl_faturamento PRIMARY KEY (id);


--
-- TOC entry 3060 (class 2606 OID 58322154)
-- Dependencies: 171 171
-- Name: pk_assoccl_quadro_funcionario; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_quadro_funcionario
    ADD CONSTRAINT pk_assoccl_quadro_funcionario PRIMARY KEY (id);


--
-- TOC entry 3054 (class 2606 OID 58322141)
-- Dependencies: 169 169
-- Name: pk_capital_social; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY capital_social
    ADD CONSTRAINT pk_capital_social PRIMARY KEY (id);


--
-- TOC entry 3048 (class 2606 OID 58322125)
-- Dependencies: 167 167
-- Name: pk_natureza; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY natureza
    ADD CONSTRAINT pk_natureza PRIMARY KEY (id);


--
-- TOC entry 3062 (class 2606 OID 58322156)
-- Dependencies: 171 171 171 171 171
-- Name: un_assoc_quadro_funcionarios; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_quadro_funcionario
    ADD CONSTRAINT un_assoc_quadro_funcionarios UNIQUE (id_categoria, id_pessoa_juridica, id_titulacao, id_area_conhecimento_predom);


--
-- TOC entry 3093 (class 2606 OID 58322217)
-- Dependencies: 179 179 179 179 179
-- Name: un_assocag_parceria; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assocag_parceria
    ADD CONSTRAINT un_assocag_parceria UNIQUE (id_categoria, id_pessoa_juridica, id_pessoa_juridica_parceira, id_assocag_parceria);


--
-- TOC entry 3083 (class 2606 OID 58322200)
-- Dependencies: 177 177 177
-- Name: un_assoccl_area_economia; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_area_economia
    ADD CONSTRAINT un_assoccl_area_economia UNIQUE (id_area_economia, id_pessoa_juridica);


--
-- TOC entry 3076 (class 2606 OID 58322186)
-- Dependencies: 175 175 175
-- Name: un_assoccl_capital_social; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_capital_social
    ADD CONSTRAINT un_assoccl_capital_social UNIQUE (id_pessoa_juridica, id_capital_social);


--
-- TOC entry 3069 (class 2606 OID 58322171)
-- Dependencies: 173 173 173 173 173
-- Name: un_assoccl_faturamento; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_faturamento
    ADD CONSTRAINT un_assoccl_faturamento UNIQUE (id_categoria, id_pessoa_juridica, ano_fiscal, mes_fiscal);


--
-- TOC entry 3101 (class 2606 OID 58322231)
-- Dependencies: 181 181 181 181
-- Name: un_incubadora; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assocag_incubadora
    ADD CONSTRAINT un_incubadora UNIQUE (id_categoria, id_pessoa_juridica, id_pessoa_juridica_incubada);


SET search_path = basico_sequencia, pg_catalog;

--
-- TOC entry 3039 (class 2606 OID 58322107)
-- Dependencies: 165 165
-- Name: pk_assocsq_acao_aplicacao; Type: CONSTRAINT; Schema: basico_sequencia; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assocsq_acao_aplicacao
    ADD CONSTRAINT pk_assocsq_acao_aplicacao PRIMARY KEY (id);


--
-- TOC entry 3041 (class 2606 OID 58322109)
-- Dependencies: 165 165 165 165
-- Name: un_assocsq_acao_aplicacao; Type: CONSTRAINT; Schema: basico_sequencia; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assocsq_acao_aplicacao
    ADD CONSTRAINT un_assocsq_acao_aplicacao UNIQUE (id_sequencia, id_acao_aplicacao, passo);


SET search_path = basico_template, pg_catalog;

--
-- TOC entry 3021 (class 2606 OID 58322075)
-- Dependencies: 161 161
-- Name: pk_assoccl_output; Type: CONSTRAINT; Schema: basico_template; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_output
    ADD CONSTRAINT pk_assoccl_output PRIMARY KEY (id);


--
-- TOC entry 3028 (class 2606 OID 58322089)
-- Dependencies: 163 163
-- Name: pk_template_assoccl_include; Type: CONSTRAINT; Schema: basico_template; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT pk_template_assoccl_include PRIMARY KEY (id);


--
-- TOC entry 3030 (class 2606 OID 58322091)
-- Dependencies: 163 163 163
-- Name: un_assoccl_include_template; Type: CONSTRAINT; Schema: basico_template; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT un_assoccl_include_template UNIQUE (id_template, id_include);


--
-- TOC entry 3023 (class 2606 OID 58322077)
-- Dependencies: 161 161 161
-- Name: un_assoccl_output; Type: CONSTRAINT; Schema: basico_template; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_output
    ADD CONSTRAINT un_assoccl_output UNIQUE (id_template, id_output);


SET search_path = basico, pg_catalog;

--
-- TOC entry 3840 (class 1259 OID 58325317)
-- Dependencies: 377
-- Name: acao_aplicacao_action; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX acao_aplicacao_action ON acao_aplicacao USING btree (action);


--
-- TOC entry 3841 (class 1259 OID 58325318)
-- Dependencies: 377
-- Name: acao_aplicacao_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX acao_aplicacao_constante_textual ON acao_aplicacao USING btree (constante_textual);


--
-- TOC entry 3842 (class 1259 OID 58325316)
-- Dependencies: 377
-- Name: acao_aplicacao_controller; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX acao_aplicacao_controller ON acao_aplicacao USING btree (controller);


--
-- TOC entry 3843 (class 1259 OID 58325314)
-- Dependencies: 377
-- Name: acao_aplicacao_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX acao_aplicacao_id ON acao_aplicacao USING btree (id);


--
-- TOC entry 3844 (class 1259 OID 58325315)
-- Dependencies: 377
-- Name: acao_aplicacao_id_modulo; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX acao_aplicacao_id_modulo ON acao_aplicacao USING btree (id_modulo);


--
-- TOC entry 3831 (class 1259 OID 58325312)
-- Dependencies: 375
-- Name: acao_evento_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX acao_evento_constante_textual ON acao_evento USING btree (constante_textual);


--
-- TOC entry 3832 (class 1259 OID 58325313)
-- Dependencies: 375
-- Name: acao_evento_constante_textual_descricao; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX acao_evento_constante_textual_descricao ON acao_evento USING btree (constante_textual_descricao);


--
-- TOC entry 3833 (class 1259 OID 58325309)
-- Dependencies: 375
-- Name: acao_evento_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX acao_evento_id ON acao_evento USING btree (id);


--
-- TOC entry 3834 (class 1259 OID 58325310)
-- Dependencies: 375
-- Name: acao_evento_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX acao_evento_id_categoria ON acao_evento USING btree (id_categoria);


--
-- TOC entry 3835 (class 1259 OID 58325311)
-- Dependencies: 375
-- Name: acao_evento_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX acao_evento_nome ON acao_evento USING btree (nome);


--
-- TOC entry 3820 (class 1259 OID 58325305)
-- Dependencies: 373
-- Name: ajuda_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX ajuda_constante_textual ON ajuda USING btree (constante_textual);


--
-- TOC entry 3821 (class 1259 OID 58325307)
-- Dependencies: 373
-- Name: ajuda_constante_textual_ajuda; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX ajuda_constante_textual_ajuda ON ajuda USING btree (constante_textual_ajuda);


--
-- TOC entry 3822 (class 1259 OID 58325306)
-- Dependencies: 373
-- Name: ajuda_constante_textual_descricao; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX ajuda_constante_textual_descricao ON ajuda USING btree (constante_textual_descricao);


--
-- TOC entry 3823 (class 1259 OID 58325308)
-- Dependencies: 373
-- Name: ajuda_constante_textual_hint; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX ajuda_constante_textual_hint ON ajuda USING btree (constante_textual_hint);


--
-- TOC entry 3824 (class 1259 OID 58325302)
-- Dependencies: 373
-- Name: ajuda_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX ajuda_id ON ajuda USING btree (id);


--
-- TOC entry 3825 (class 1259 OID 58325303)
-- Dependencies: 373
-- Name: ajuda_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX ajuda_id_categoria ON ajuda USING btree (id_categoria);


--
-- TOC entry 3826 (class 1259 OID 58325304)
-- Dependencies: 373
-- Name: ajuda_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX ajuda_nome ON ajuda USING btree (nome);


--
-- TOC entry 3810 (class 1259 OID 58325301)
-- Dependencies: 371
-- Name: area_conhecimento_codigo; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX area_conhecimento_codigo ON area_conhecimento USING btree (codigo);


--
-- TOC entry 3811 (class 1259 OID 58325300)
-- Dependencies: 371
-- Name: area_conhecimento_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX area_conhecimento_constante_textual ON area_conhecimento USING btree (constante_textual);


--
-- TOC entry 3812 (class 1259 OID 58325296)
-- Dependencies: 371
-- Name: area_conhecimento_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX area_conhecimento_id ON area_conhecimento USING btree (id);


--
-- TOC entry 3813 (class 1259 OID 58325297)
-- Dependencies: 371
-- Name: area_conhecimento_id_area_conhecimento_pai; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX area_conhecimento_id_area_conhecimento_pai ON area_conhecimento USING btree (id_area_conhecimento_pai);


--
-- TOC entry 3814 (class 1259 OID 58325298)
-- Dependencies: 371
-- Name: area_conhecimento_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX area_conhecimento_id_categoria ON area_conhecimento USING btree (id_categoria);


--
-- TOC entry 3815 (class 1259 OID 58325299)
-- Dependencies: 371
-- Name: area_conhecimento_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX area_conhecimento_nome ON area_conhecimento USING btree (nome);


--
-- TOC entry 3800 (class 1259 OID 58325295)
-- Dependencies: 369
-- Name: area_economia_codigo; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX area_economia_codigo ON area_economia USING btree (codigo);


--
-- TOC entry 3801 (class 1259 OID 58325294)
-- Dependencies: 369
-- Name: area_economia_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX area_economia_constante_textual ON area_economia USING btree (constante_textual);


--
-- TOC entry 3802 (class 1259 OID 58325290)
-- Dependencies: 369
-- Name: area_economia_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX area_economia_id ON area_economia USING btree (id);


--
-- TOC entry 3803 (class 1259 OID 58325291)
-- Dependencies: 369
-- Name: area_economia_id_area_economia_pai; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX area_economia_id_area_economia_pai ON area_economia USING btree (id_area_economia_pai);


--
-- TOC entry 3804 (class 1259 OID 58325292)
-- Dependencies: 369
-- Name: area_economia_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX area_economia_id_categoria ON area_economia USING btree (id_categoria);


--
-- TOC entry 3805 (class 1259 OID 58325293)
-- Dependencies: 369
-- Name: area_economia_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX area_economia_nome ON area_economia USING btree (nome);


--
-- TOC entry 3790 (class 1259 OID 58325289)
-- Dependencies: 367
-- Name: categoria_codigo; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX categoria_codigo ON categoria USING btree (codigo);


--
-- TOC entry 3791 (class 1259 OID 58325288)
-- Dependencies: 367
-- Name: categoria_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX categoria_constante_textual ON categoria USING btree (constante_textual);


--
-- TOC entry 3792 (class 1259 OID 58325284)
-- Dependencies: 367
-- Name: categoria_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX categoria_id ON categoria USING btree (id);


--
-- TOC entry 3793 (class 1259 OID 58325286)
-- Dependencies: 367
-- Name: categoria_id_categoria_pai; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX categoria_id_categoria_pai ON categoria USING btree (id_categoria_pai);


--
-- TOC entry 3794 (class 1259 OID 58325285)
-- Dependencies: 367
-- Name: categoria_id_tipo_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX categoria_id_tipo_categoria ON categoria USING btree (id_tipo_categoria);


--
-- TOC entry 3795 (class 1259 OID 58325287)
-- Dependencies: 367
-- Name: categoria_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX categoria_nome ON categoria USING btree (nome);


--
-- TOC entry 3781 (class 1259 OID 58325282)
-- Dependencies: 365
-- Name: componente_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX componente_constante_textual ON componente USING btree (constante_textual);


--
-- TOC entry 3782 (class 1259 OID 58325283)
-- Dependencies: 365
-- Name: componente_constante_textual_descricao; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX componente_constante_textual_descricao ON componente USING btree (constante_textual_descricao);


--
-- TOC entry 3783 (class 1259 OID 58325279)
-- Dependencies: 365
-- Name: componente_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX componente_id ON componente USING btree (id);


--
-- TOC entry 3784 (class 1259 OID 58325280)
-- Dependencies: 365
-- Name: componente_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX componente_id_categoria ON componente USING btree (id_categoria);


--
-- TOC entry 3785 (class 1259 OID 58325281)
-- Dependencies: 365
-- Name: componente_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX componente_nome ON componente USING btree (nome);


--
-- TOC entry 3768 (class 1259 OID 58325270)
-- Dependencies: 363
-- Name: cpg_arquivo_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX cpg_arquivo_id ON cpg_arquivo USING btree (id);


--
-- TOC entry 3769 (class 1259 OID 58325271)
-- Dependencies: 363
-- Name: cpg_arquivo_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_arquivo_id_categoria ON cpg_arquivo USING btree (id_categoria);


--
-- TOC entry 3770 (class 1259 OID 58325272)
-- Dependencies: 363
-- Name: cpg_arquivo_id_generico_proprietario; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_arquivo_id_generico_proprietario ON cpg_arquivo USING btree (id_generico_proprietario);


--
-- TOC entry 3771 (class 1259 OID 58325276)
-- Dependencies: 363
-- Name: cpg_arquivo_mime_type; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_arquivo_mime_type ON cpg_arquivo USING btree (mime_type);


--
-- TOC entry 3772 (class 1259 OID 58325273)
-- Dependencies: 363
-- Name: cpg_arquivo_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_arquivo_nome ON cpg_arquivo USING btree (nome);


--
-- TOC entry 3773 (class 1259 OID 58325274)
-- Dependencies: 363
-- Name: cpg_arquivo_nome_original; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_arquivo_nome_original ON cpg_arquivo USING btree (nome_original);


--
-- TOC entry 3774 (class 1259 OID 58325275)
-- Dependencies: 363
-- Name: cpg_arquivo_nome_sugestao; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_arquivo_nome_sugestao ON cpg_arquivo USING btree (nome_sugestao);


--
-- TOC entry 3775 (class 1259 OID 58325278)
-- Dependencies: 363
-- Name: cpg_arquivo_remoto; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_arquivo_remoto ON cpg_arquivo USING btree (remoto);


--
-- TOC entry 3776 (class 1259 OID 58325277)
-- Dependencies: 363
-- Name: cpg_arquivo_uri; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_arquivo_uri ON cpg_arquivo USING btree (uri);


--
-- TOC entry 3758 (class 1259 OID 58325269)
-- Dependencies: 361
-- Name: cpg_codigo_acesso_codigo; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX cpg_codigo_acesso_codigo ON cpg_codigo_acesso USING btree (codigo);


--
-- TOC entry 3759 (class 1259 OID 58325264)
-- Dependencies: 361
-- Name: cpg_codigo_acesso_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX cpg_codigo_acesso_id ON cpg_codigo_acesso USING btree (id);


--
-- TOC entry 3760 (class 1259 OID 58325267)
-- Dependencies: 361
-- Name: cpg_codigo_acesso_id_categoria_acesso; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_codigo_acesso_id_categoria_acesso ON cpg_codigo_acesso USING btree (id_categoria_acesso);


--
-- TOC entry 3761 (class 1259 OID 58325265)
-- Dependencies: 361
-- Name: cpg_codigo_acesso_id_categoria_proprietario; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_codigo_acesso_id_categoria_proprietario ON cpg_codigo_acesso USING btree (id_categoria_proprietario);


--
-- TOC entry 3762 (class 1259 OID 58325268)
-- Dependencies: 361
-- Name: cpg_codigo_acesso_id_generico_acesso; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_codigo_acesso_id_generico_acesso ON cpg_codigo_acesso USING btree (id_generico_acesso);


--
-- TOC entry 3763 (class 1259 OID 58325266)
-- Dependencies: 361
-- Name: cpg_codigo_acesso_id_generico_proprietario; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_codigo_acesso_id_generico_proprietario ON cpg_codigo_acesso USING btree (id_generico_proprietario);


--
-- TOC entry 3749 (class 1259 OID 58325259)
-- Dependencies: 359
-- Name: cpg_dados_bancarios_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX cpg_dados_bancarios_id ON cpg_dados_bancarios USING btree (id);


--
-- TOC entry 3750 (class 1259 OID 58325260)
-- Dependencies: 359
-- Name: cpg_dados_bancarios_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_dados_bancarios_id_categoria ON cpg_dados_bancarios USING btree (id_categoria);


--
-- TOC entry 3751 (class 1259 OID 58325261)
-- Dependencies: 359
-- Name: cpg_dados_bancarios_id_generico_proprietario; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_dados_bancarios_id_generico_proprietario ON cpg_dados_bancarios USING btree (id_generico_proprietario);


--
-- TOC entry 3752 (class 1259 OID 58325263)
-- Dependencies: 359
-- Name: cpg_dados_bancarios_nome_banco; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_dados_bancarios_nome_banco ON cpg_dados_bancarios USING btree (nome_banco);


--
-- TOC entry 3753 (class 1259 OID 58325262)
-- Dependencies: 359
-- Name: cpg_dados_bancarios_numero_banco; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_dados_bancarios_numero_banco ON cpg_dados_bancarios USING btree (numero_banco);


--
-- TOC entry 3740 (class 1259 OID 58325254)
-- Dependencies: 357
-- Name: cpg_documento_identificacao_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX cpg_documento_identificacao_id ON cpg_documento_identificacao USING btree (id);


--
-- TOC entry 3741 (class 1259 OID 58325255)
-- Dependencies: 357
-- Name: cpg_documento_identificacao_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_documento_identificacao_id_categoria ON cpg_documento_identificacao USING btree (id_categoria);


--
-- TOC entry 3742 (class 1259 OID 58325256)
-- Dependencies: 357
-- Name: cpg_documento_identificacao_id_generico_proprietario; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_documento_identificacao_id_generico_proprietario ON cpg_documento_identificacao USING btree (id_generico_proprietario);


--
-- TOC entry 3743 (class 1259 OID 58325257)
-- Dependencies: 357
-- Name: cpg_documento_identificacao_id_pessoa_juridica_emissor; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_documento_identificacao_id_pessoa_juridica_emissor ON cpg_documento_identificacao USING btree (id_pessoa_juridica_emissor);


--
-- TOC entry 3744 (class 1259 OID 58325258)
-- Dependencies: 357
-- Name: cpg_documento_identificacao_identificador; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_documento_identificacao_identificador ON cpg_documento_identificacao USING btree (identificador);


--
-- TOC entry 3730 (class 1259 OID 58325252)
-- Dependencies: 355
-- Name: cpg_link_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_link_constante_textual ON cpg_link USING btree (constante_textual);


--
-- TOC entry 3731 (class 1259 OID 58325248)
-- Dependencies: 355
-- Name: cpg_link_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX cpg_link_id ON cpg_link USING btree (id);


--
-- TOC entry 3732 (class 1259 OID 58325249)
-- Dependencies: 355
-- Name: cpg_link_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_link_id_categoria ON cpg_link USING btree (id_categoria);


--
-- TOC entry 3733 (class 1259 OID 58325250)
-- Dependencies: 355
-- Name: cpg_link_id_generico_proprietario; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_link_id_generico_proprietario ON cpg_link USING btree (id_generico_proprietario);


--
-- TOC entry 3734 (class 1259 OID 58325251)
-- Dependencies: 355
-- Name: cpg_link_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_link_nome ON cpg_link USING btree (nome);


--
-- TOC entry 3735 (class 1259 OID 58325253)
-- Dependencies: 355
-- Name: cpg_link_url; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_link_url ON cpg_link USING btree (url);


--
-- TOC entry 3722 (class 1259 OID 58325247)
-- Dependencies: 353
-- Name: cpg_produto_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_produto_constante_textual ON cpg_produto USING btree (constante_textual);


--
-- TOC entry 3723 (class 1259 OID 58325242)
-- Dependencies: 353
-- Name: cpg_produto_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX cpg_produto_id ON cpg_produto USING btree (id);


--
-- TOC entry 3724 (class 1259 OID 58325243)
-- Dependencies: 353
-- Name: cpg_produto_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_produto_id_categoria ON cpg_produto USING btree (id_categoria);


--
-- TOC entry 3725 (class 1259 OID 58325245)
-- Dependencies: 353
-- Name: cpg_produto_id_categoria_moeda; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_produto_id_categoria_moeda ON cpg_produto USING btree (id_categoria_moeda);


--
-- TOC entry 3726 (class 1259 OID 58325244)
-- Dependencies: 353
-- Name: cpg_produto_id_generico_proprietario; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_produto_id_generico_proprietario ON cpg_produto USING btree (id_generico_proprietario);


--
-- TOC entry 3727 (class 1259 OID 58325246)
-- Dependencies: 353
-- Name: cpg_produto_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_produto_nome ON cpg_produto USING btree (nome);


--
-- TOC entry 3716 (class 1259 OID 58325238)
-- Dependencies: 351
-- Name: cpg_token_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX cpg_token_id ON cpg_token USING btree (id);


--
-- TOC entry 3717 (class 1259 OID 58325239)
-- Dependencies: 351
-- Name: cpg_token_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_token_id_categoria ON cpg_token USING btree (id_categoria);


--
-- TOC entry 3718 (class 1259 OID 58325240)
-- Dependencies: 351
-- Name: cpg_token_id_generico_proprietario; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_token_id_generico_proprietario ON cpg_token USING btree (id_generico_proprietario);


--
-- TOC entry 3719 (class 1259 OID 58325241)
-- Dependencies: 351
-- Name: cpg_token_token; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX cpg_token_token ON cpg_token USING btree (token);


--
-- TOC entry 3709 (class 1259 OID 58325235)
-- Dependencies: 349
-- Name: dados_biometricos_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX dados_biometricos_id ON dados_biometricos USING btree (id);


--
-- TOC entry 3710 (class 1259 OID 58325236)
-- Dependencies: 349
-- Name: dados_biometricos_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX dados_biometricos_id_categoria ON dados_biometricos USING btree (id_categoria);


--
-- TOC entry 3711 (class 1259 OID 58325237)
-- Dependencies: 349
-- Name: dados_biometricos_id_generico_proprietario; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX dados_biometricos_id_generico_proprietario ON dados_biometricos USING btree (id_generico_proprietario);


--
-- TOC entry 3702 (class 1259 OID 58325234)
-- Dependencies: 347
-- Name: dicionario_expressao_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX dicionario_expressao_constante_textual ON dicionario_expressao USING btree (constante_textual);


--
-- TOC entry 3703 (class 1259 OID 58325232)
-- Dependencies: 347
-- Name: dicionario_expressao_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX dicionario_expressao_id ON dicionario_expressao USING btree (id);


--
-- TOC entry 3704 (class 1259 OID 58325233)
-- Dependencies: 347
-- Name: dicionario_expressao_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX dicionario_expressao_id_categoria ON dicionario_expressao USING btree (id_categoria);


--
-- TOC entry 3694 (class 1259 OID 58325231)
-- Dependencies: 345
-- Name: evento_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX evento_constante_textual ON evento USING btree (constante_textual);


--
-- TOC entry 3697 (class 1259 OID 58325228)
-- Dependencies: 345
-- Name: evento_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX evento_id ON evento USING btree (id);


--
-- TOC entry 3698 (class 1259 OID 58325229)
-- Dependencies: 345
-- Name: evento_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX evento_id_categoria ON evento USING btree (id_categoria);


--
-- TOC entry 3699 (class 1259 OID 58325230)
-- Dependencies: 345
-- Name: evento_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX evento_nome ON evento USING btree (nome);


--
-- TOC entry 3685 (class 1259 OID 58325226)
-- Dependencies: 343
-- Name: filter_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX filter_constante_textual ON filter USING btree (constante_textual);


--
-- TOC entry 3686 (class 1259 OID 58325227)
-- Dependencies: 343
-- Name: filter_constante_textual_descricao; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX filter_constante_textual_descricao ON filter USING btree (constante_textual_descricao);


--
-- TOC entry 3687 (class 1259 OID 58325223)
-- Dependencies: 343
-- Name: filter_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX filter_id ON filter USING btree (id);


--
-- TOC entry 3688 (class 1259 OID 58325224)
-- Dependencies: 343
-- Name: filter_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX filter_id_categoria ON filter USING btree (id_categoria);


--
-- TOC entry 3689 (class 1259 OID 58325225)
-- Dependencies: 343
-- Name: filter_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX filter_nome ON filter USING btree (nome);


--
-- TOC entry 3675 (class 1259 OID 58325221)
-- Dependencies: 341
-- Name: formulario_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX formulario_constante_textual ON formulario USING btree (constante_textual);


--
-- TOC entry 3676 (class 1259 OID 58325222)
-- Dependencies: 341
-- Name: formulario_form_name; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX formulario_form_name ON formulario USING btree (form_name);


--
-- TOC entry 3677 (class 1259 OID 58325217)
-- Dependencies: 341
-- Name: formulario_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX formulario_id ON formulario USING btree (id);


--
-- TOC entry 3678 (class 1259 OID 58325219)
-- Dependencies: 341
-- Name: formulario_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX formulario_id_categoria ON formulario USING btree (id_categoria);


--
-- TOC entry 3679 (class 1259 OID 58325218)
-- Dependencies: 341
-- Name: formulario_id_formulario_pai; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX formulario_id_formulario_pai ON formulario USING btree (id_formulario_pai);


--
-- TOC entry 3680 (class 1259 OID 58325220)
-- Dependencies: 341
-- Name: formulario_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX formulario_nome ON formulario USING btree (nome);


--
-- TOC entry 3664 (class 1259 OID 58325215)
-- Dependencies: 339
-- Name: include_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX include_constante_textual ON include USING btree (constante_textual);


--
-- TOC entry 3665 (class 1259 OID 58325216)
-- Dependencies: 339
-- Name: include_constante_textual_descricao; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX include_constante_textual_descricao ON include USING btree (constante_textual_descricao);


--
-- TOC entry 3666 (class 1259 OID 58325212)
-- Dependencies: 339
-- Name: include_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX include_id ON include USING btree (id);


--
-- TOC entry 3667 (class 1259 OID 58325213)
-- Dependencies: 339
-- Name: include_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX include_id_categoria ON include USING btree (id_categoria);


--
-- TOC entry 3668 (class 1259 OID 58325214)
-- Dependencies: 339
-- Name: include_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX include_nome ON include USING btree (nome);


--
-- TOC entry 3659 (class 1259 OID 58325207)
-- Dependencies: 337
-- Name: log_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX log_id ON log USING btree (id);


--
-- TOC entry 3660 (class 1259 OID 58325211)
-- Dependencies: 337
-- Name: log_id_assoccl_perfil; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX log_id_assoccl_perfil ON log USING btree (id_assoccl_perfil);


--
-- TOC entry 3661 (class 1259 OID 58325210)
-- Dependencies: 337
-- Name: log_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX log_id_categoria ON log USING btree (id_categoria);


--
-- TOC entry 3654 (class 1259 OID 58325204)
-- Dependencies: 335
-- Name: mensagem_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX mensagem_id ON mensagem USING btree (id);


--
-- TOC entry 3655 (class 1259 OID 58325205)
-- Dependencies: 335
-- Name: mensagem_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX mensagem_id_categoria ON mensagem USING btree (id_categoria);


--
-- TOC entry 3656 (class 1259 OID 58325206)
-- Dependencies: 335
-- Name: mensagem_id_generico_proprietario; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX mensagem_id_generico_proprietario ON mensagem USING btree (id_generico_proprietario);


--
-- TOC entry 3646 (class 1259 OID 58325203)
-- Dependencies: 333
-- Name: metodo_validacao_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX metodo_validacao_constante_textual ON metodo_validacao USING btree (constante_textual);


--
-- TOC entry 3647 (class 1259 OID 58325200)
-- Dependencies: 333
-- Name: metodo_validacao_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX metodo_validacao_id ON metodo_validacao USING btree (id);


--
-- TOC entry 3648 (class 1259 OID 58325201)
-- Dependencies: 333
-- Name: metodo_validacao_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX metodo_validacao_id_categoria ON metodo_validacao USING btree (id_categoria);


--
-- TOC entry 3649 (class 1259 OID 58325202)
-- Dependencies: 333
-- Name: metodo_validacao_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX metodo_validacao_nome ON metodo_validacao USING btree (nome);


--
-- TOC entry 3640 (class 1259 OID 58325199)
-- Dependencies: 331
-- Name: modulo_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX modulo_constante_textual ON modulo USING btree (constante_textual);


--
-- TOC entry 3641 (class 1259 OID 58325196)
-- Dependencies: 331
-- Name: modulo_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX modulo_id ON modulo USING btree (id);


--
-- TOC entry 3642 (class 1259 OID 58325197)
-- Dependencies: 331
-- Name: modulo_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX modulo_id_categoria ON modulo USING btree (id_categoria);


--
-- TOC entry 3643 (class 1259 OID 58325198)
-- Dependencies: 331
-- Name: modulo_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX modulo_nome ON modulo USING btree (nome);


--
-- TOC entry 3634 (class 1259 OID 58325195)
-- Dependencies: 329
-- Name: output_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX output_constante_textual ON output USING btree (constante_textual);


--
-- TOC entry 3635 (class 1259 OID 58325192)
-- Dependencies: 329
-- Name: output_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX output_id ON output USING btree (id);


--
-- TOC entry 3636 (class 1259 OID 58325193)
-- Dependencies: 329
-- Name: output_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX output_id_categoria ON output USING btree (id_categoria);


--
-- TOC entry 3637 (class 1259 OID 58325194)
-- Dependencies: 329
-- Name: output_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX output_nome ON output USING btree (nome);


--
-- TOC entry 3626 (class 1259 OID 58325190)
-- Dependencies: 327
-- Name: perfil_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX perfil_constante_textual ON perfil USING btree (constante_textual);


--
-- TOC entry 3627 (class 1259 OID 58325187)
-- Dependencies: 327
-- Name: perfil_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX perfil_id ON perfil USING btree (id);


--
-- TOC entry 3628 (class 1259 OID 58325188)
-- Dependencies: 327
-- Name: perfil_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX perfil_id_categoria ON perfil USING btree (id_categoria);


--
-- TOC entry 3629 (class 1259 OID 58325189)
-- Dependencies: 327
-- Name: perfil_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX perfil_nome ON perfil USING btree (nome);


--
-- TOC entry 3623 (class 1259 OID 58325186)
-- Dependencies: 325
-- Name: pessoa_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX pessoa_id ON pessoa USING btree (id);


--
-- TOC entry 3617 (class 1259 OID 58325182)
-- Dependencies: 323
-- Name: pessoa_juridica_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX pessoa_juridica_id ON pessoa_juridica USING btree (id);


--
-- TOC entry 3618 (class 1259 OID 58325183)
-- Dependencies: 323
-- Name: pessoa_juridica_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX pessoa_juridica_id_categoria ON pessoa_juridica USING btree (id_categoria);


--
-- TOC entry 3619 (class 1259 OID 58325184)
-- Dependencies: 323
-- Name: pessoa_juridica_id_natureza; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX pessoa_juridica_id_natureza ON pessoa_juridica USING btree (id_natureza);


--
-- TOC entry 3620 (class 1259 OID 58325185)
-- Dependencies: 323
-- Name: pessoa_juridica_id_pessoa_responsavel_cadastro; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX pessoa_juridica_id_pessoa_responsavel_cadastro ON pessoa_juridica USING btree (id_pessoa_responsavel_cadastro);


--
-- TOC entry 3612 (class 1259 OID 58325181)
-- Dependencies: 321
-- Name: profissao_codigo; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX profissao_codigo ON profissao USING btree (codigo);


--
-- TOC entry 3613 (class 1259 OID 58325180)
-- Dependencies: 321
-- Name: profissao_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX profissao_constante_textual ON profissao USING btree (constante_textual);


--
-- TOC entry 3614 (class 1259 OID 58325177)
-- Dependencies: 321
-- Name: profissao_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX profissao_id ON profissao USING btree (id);


--
-- TOC entry 3615 (class 1259 OID 58325178)
-- Dependencies: 321
-- Name: profissao_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX profissao_id_categoria ON profissao USING btree (id_categoria);


--
-- TOC entry 3616 (class 1259 OID 58325179)
-- Dependencies: 321
-- Name: profissao_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX profissao_nome ON profissao USING btree (nome);


--
-- TOC entry 3604 (class 1259 OID 58325176)
-- Dependencies: 319
-- Name: sequencia_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX sequencia_constante_textual ON sequencia USING btree (constante_textual);


--
-- TOC entry 3605 (class 1259 OID 58325173)
-- Dependencies: 319
-- Name: sequencia_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX sequencia_id ON sequencia USING btree (id);


--
-- TOC entry 3606 (class 1259 OID 58325174)
-- Dependencies: 319
-- Name: sequencia_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX sequencia_id_categoria ON sequencia USING btree (id_categoria);


--
-- TOC entry 3607 (class 1259 OID 58325175)
-- Dependencies: 319
-- Name: sequencia_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX sequencia_nome ON sequencia USING btree (nome);


--
-- TOC entry 3598 (class 1259 OID 58325172)
-- Dependencies: 317
-- Name: template_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX template_constante_textual ON template USING btree (constante_textual);


--
-- TOC entry 3599 (class 1259 OID 58325169)
-- Dependencies: 317
-- Name: template_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX template_id ON template USING btree (id);


--
-- TOC entry 3600 (class 1259 OID 58325170)
-- Dependencies: 317
-- Name: template_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX template_id_categoria ON template USING btree (id_categoria);


--
-- TOC entry 3601 (class 1259 OID 58325171)
-- Dependencies: 317
-- Name: template_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX template_nome ON template USING btree (nome);


--
-- TOC entry 3589 (class 1259 OID 58325168)
-- Dependencies: 315
-- Name: tipo_categoria_codigo; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX tipo_categoria_codigo ON tipo_categoria USING btree (codigo);


--
-- TOC entry 3590 (class 1259 OID 58325167)
-- Dependencies: 315
-- Name: tipo_categoria_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX tipo_categoria_constante_textual ON tipo_categoria USING btree (constante_textual);


--
-- TOC entry 3591 (class 1259 OID 58325164)
-- Dependencies: 315
-- Name: tipo_categoria_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX tipo_categoria_id ON tipo_categoria USING btree (id);


--
-- TOC entry 3592 (class 1259 OID 58325165)
-- Dependencies: 315
-- Name: tipo_categoria_id_tipo_categoria_pai; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX tipo_categoria_id_tipo_categoria_pai ON tipo_categoria USING btree (id_tipo_categoria_pai);


--
-- TOC entry 3593 (class 1259 OID 58325166)
-- Dependencies: 315
-- Name: tipo_categoria_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX tipo_categoria_nome ON tipo_categoria USING btree (nome);


--
-- TOC entry 3580 (class 1259 OID 58325162)
-- Dependencies: 313
-- Name: validator_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX validator_constante_textual ON validator USING btree (constante_textual);


--
-- TOC entry 3581 (class 1259 OID 58325163)
-- Dependencies: 313
-- Name: validator_constante_textual_descricao; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX validator_constante_textual_descricao ON validator USING btree (constante_textual_descricao);


--
-- TOC entry 3582 (class 1259 OID 58325159)
-- Dependencies: 313
-- Name: validator_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX validator_id ON validator USING btree (id);


--
-- TOC entry 3583 (class 1259 OID 58325160)
-- Dependencies: 313
-- Name: validator_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX validator_id_categoria ON validator USING btree (id_categoria);


--
-- TOC entry 3584 (class 1259 OID 58325161)
-- Dependencies: 313
-- Name: validator_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX validator_nome ON validator USING btree (nome);


SET search_path = basico_acao_aplic_assoc_visao, pg_catalog;

--
-- TOC entry 3572 (class 1259 OID 58325155)
-- Dependencies: 311
-- Name: assoccl_atrib_met_rec_post_id; Type: INDEX; Schema: basico_acao_aplic_assoc_visao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_atrib_met_rec_post_id ON assoccl_atrib_met_rec_post USING btree (id);


--
-- TOC entry 3573 (class 1259 OID 58325156)
-- Dependencies: 311
-- Name: assoccl_atrib_met_rec_post_id_assoc_visao_ref_post; Type: INDEX; Schema: basico_acao_aplic_assoc_visao; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_atrib_met_rec_post_id_assoc_visao_ref_post ON assoccl_atrib_met_rec_post USING btree (id_assoc_visao_ref_post);


--
-- TOC entry 3574 (class 1259 OID 58325157)
-- Dependencies: 311
-- Name: assoccl_atrib_met_rec_post_id_atributo_metodo_recup_post; Type: INDEX; Schema: basico_acao_aplic_assoc_visao; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_atrib_met_rec_post_id_atributo_metodo_recup_post ON assoccl_atrib_met_rec_post USING btree (id_atributo_metodo_recup_post);


--
-- TOC entry 3575 (class 1259 OID 58325158)
-- Dependencies: 311
-- Name: assoccl_atrib_met_rec_post_ordem; Type: INDEX; Schema: basico_acao_aplic_assoc_visao; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_atrib_met_rec_post_ordem ON assoccl_atrib_met_rec_post USING btree (ordem);


--
-- TOC entry 3564 (class 1259 OID 58325153)
-- Dependencies: 309
-- Name: atributo_metodo_recup_post_atributo; Type: INDEX; Schema: basico_acao_aplic_assoc_visao; Owner: -; Tablespace: 
--

CREATE INDEX atributo_metodo_recup_post_atributo ON atributo_metodo_recup_post USING btree (atributo);


--
-- TOC entry 3565 (class 1259 OID 58325151)
-- Dependencies: 309
-- Name: atributo_metodo_recup_post_id; Type: INDEX; Schema: basico_acao_aplic_assoc_visao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX atributo_metodo_recup_post_id ON atributo_metodo_recup_post USING btree (id);


--
-- TOC entry 3566 (class 1259 OID 58325152)
-- Dependencies: 309
-- Name: atributo_metodo_recup_post_id_categoria; Type: INDEX; Schema: basico_acao_aplic_assoc_visao; Owner: -; Tablespace: 
--

CREATE INDEX atributo_metodo_recup_post_id_categoria ON atributo_metodo_recup_post USING btree (id_categoria);


--
-- TOC entry 3567 (class 1259 OID 58325154)
-- Dependencies: 309
-- Name: atributo_metodo_recup_post_metodo_recuperacao; Type: INDEX; Schema: basico_acao_aplic_assoc_visao; Owner: -; Tablespace: 
--

CREATE INDEX atributo_metodo_recup_post_metodo_recuperacao ON atributo_metodo_recup_post USING btree (metodo_recuperacao);


SET search_path = basico_acao_aplicacao, pg_catalog;

--
-- TOC entry 3555 (class 1259 OID 58325147)
-- Dependencies: 307
-- Name: assoc_visao_constante_textual; Type: INDEX; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_visao_constante_textual ON assoc_visao USING btree (constante_textual);


--
-- TOC entry 3556 (class 1259 OID 58325150)
-- Dependencies: 307
-- Name: assoc_visao_constante_textual_mensagem; Type: INDEX; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_visao_constante_textual_mensagem ON assoc_visao USING btree (constante_textual_mensagem);


--
-- TOC entry 3557 (class 1259 OID 58325149)
-- Dependencies: 307
-- Name: assoc_visao_constante_textual_subtitulo; Type: INDEX; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_visao_constante_textual_subtitulo ON assoc_visao USING btree (constante_textual_subtitulo);


--
-- TOC entry 3558 (class 1259 OID 58325148)
-- Dependencies: 307
-- Name: assoc_visao_constante_textual_titulo; Type: INDEX; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_visao_constante_textual_titulo ON assoc_visao USING btree (constante_textual_titulo);


--
-- TOC entry 3559 (class 1259 OID 58325144)
-- Dependencies: 307
-- Name: assoc_visao_id; Type: INDEX; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_visao_id ON assoc_visao USING btree (id);


--
-- TOC entry 3560 (class 1259 OID 58325146)
-- Dependencies: 307
-- Name: assoc_visao_id_acao_aplicacao; Type: INDEX; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_visao_id_acao_aplicacao ON assoc_visao USING btree (id_acao_aplicacao);


--
-- TOC entry 3561 (class 1259 OID 58325145)
-- Dependencies: 307
-- Name: assoc_visao_id_categoria; Type: INDEX; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_visao_id_categoria ON assoc_visao USING btree (id_categoria);


--
-- TOC entry 3547 (class 1259 OID 58325140)
-- Dependencies: 305
-- Name: assoccl_metodo_validacao_id; Type: INDEX; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_metodo_validacao_id ON assoccl_metodo_validacao USING btree (id);


--
-- TOC entry 3548 (class 1259 OID 58325141)
-- Dependencies: 305
-- Name: assoccl_metodo_validacao_id_acao_aplicacao; Type: INDEX; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_metodo_validacao_id_acao_aplicacao ON assoccl_metodo_validacao USING btree (id_acao_aplicacao);


--
-- TOC entry 3549 (class 1259 OID 58325142)
-- Dependencies: 305
-- Name: assoccl_metodo_validacao_id_metodo_validacao; Type: INDEX; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_metodo_validacao_id_metodo_validacao ON assoccl_metodo_validacao USING btree (id_metodo_validacao);


--
-- TOC entry 3550 (class 1259 OID 58325143)
-- Dependencies: 305
-- Name: assoccl_metodo_validacao_id_perfil; Type: INDEX; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_metodo_validacao_id_perfil ON assoccl_metodo_validacao USING btree (id_perfil);


--
-- TOC entry 3540 (class 1259 OID 58325137)
-- Dependencies: 303
-- Name: assoccl_perfil_id; Type: INDEX; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_perfil_id ON assoccl_perfil USING btree (id);


--
-- TOC entry 3541 (class 1259 OID 58325138)
-- Dependencies: 303
-- Name: assoccl_perfil_id_acao_aplicacao; Type: INDEX; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_perfil_id_acao_aplicacao ON assoccl_perfil USING btree (id_acao_aplicacao);


--
-- TOC entry 3542 (class 1259 OID 58325139)
-- Dependencies: 303
-- Name: assoccl_perfil_id_perfil; Type: INDEX; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_perfil_id_perfil ON assoccl_perfil USING btree (id_perfil);


SET search_path = basico_acao_evento, pg_catalog;

--
-- TOC entry 3533 (class 1259 OID 58325134)
-- Dependencies: 301
-- Name: assoccl_include_id; Type: INDEX; Schema: basico_acao_evento; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_include_id ON assoccl_include USING btree (id);


--
-- TOC entry 3534 (class 1259 OID 58325135)
-- Dependencies: 301
-- Name: assoccl_include_id_acao_evento; Type: INDEX; Schema: basico_acao_evento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_acao_evento ON assoccl_include USING btree (id_acao_evento);


--
-- TOC entry 3535 (class 1259 OID 58325136)
-- Dependencies: 301
-- Name: assoccl_include_id_include; Type: INDEX; Schema: basico_acao_evento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_include ON assoccl_include USING btree (id_include);


SET search_path = basico_ajuda, pg_catalog;

--
-- TOC entry 3526 (class 1259 OID 58325131)
-- Dependencies: 299
-- Name: assoccl_link_id; Type: INDEX; Schema: basico_ajuda; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_link_id ON assoccl_link USING btree (id);


--
-- TOC entry 3527 (class 1259 OID 58325132)
-- Dependencies: 299
-- Name: assoccl_link_id_ajuda; Type: INDEX; Schema: basico_ajuda; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_link_id_ajuda ON assoccl_link USING btree (id_ajuda);


--
-- TOC entry 3528 (class 1259 OID 58325133)
-- Dependencies: 299
-- Name: assoccl_link_id_link; Type: INDEX; Schema: basico_ajuda; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_link_id_link ON assoccl_link USING btree (id_link);


SET search_path = basico_assoc_banco, pg_catalog;

--
-- TOC entry 3514 (class 1259 OID 58325129)
-- Dependencies: 297
-- Name: assoc_tipo_conta_codigo; Type: INDEX; Schema: basico_assoc_banco; Owner: -; Tablespace: 
--

CREATE INDEX assoc_tipo_conta_codigo ON assoc_tipo_conta USING btree (codigo);


--
-- TOC entry 3515 (class 1259 OID 58325128)
-- Dependencies: 297
-- Name: assoc_tipo_conta_constante_textual; Type: INDEX; Schema: basico_assoc_banco; Owner: -; Tablespace: 
--

CREATE INDEX assoc_tipo_conta_constante_textual ON assoc_tipo_conta USING btree (constante_textual);


--
-- TOC entry 3516 (class 1259 OID 58325124)
-- Dependencies: 297
-- Name: assoc_tipo_conta_id; Type: INDEX; Schema: basico_assoc_banco; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_tipo_conta_id ON assoc_tipo_conta USING btree (id);


--
-- TOC entry 3517 (class 1259 OID 58325125)
-- Dependencies: 297
-- Name: assoc_tipo_conta_id_assoc_banco; Type: INDEX; Schema: basico_assoc_banco; Owner: -; Tablespace: 
--

CREATE INDEX assoc_tipo_conta_id_assoc_banco ON assoc_tipo_conta USING btree (id_assoc_banco);


--
-- TOC entry 3518 (class 1259 OID 58325126)
-- Dependencies: 297
-- Name: assoc_tipo_conta_id_categoria; Type: INDEX; Schema: basico_assoc_banco; Owner: -; Tablespace: 
--

CREATE INDEX assoc_tipo_conta_id_categoria ON assoc_tipo_conta USING btree (id_categoria);


--
-- TOC entry 3519 (class 1259 OID 58325127)
-- Dependencies: 297
-- Name: assoc_tipo_conta_nome; Type: INDEX; Schema: basico_assoc_banco; Owner: -; Tablespace: 
--

CREATE INDEX assoc_tipo_conta_nome ON assoc_tipo_conta USING btree (nome);


SET search_path = basico_assoc_chave_estrangeira, pg_catalog;

--
-- TOC entry 3509 (class 1259 OID 58325123)
-- Dependencies: 295
-- Name: relacao_campo_origem; Type: INDEX; Schema: basico_assoc_chave_estrangeira; Owner: -; Tablespace: 
--

CREATE INDEX relacao_campo_origem ON relacao USING btree (campo_origem);


--
-- TOC entry 3510 (class 1259 OID 58325120)
-- Dependencies: 295
-- Name: relacao_id; Type: INDEX; Schema: basico_assoc_chave_estrangeira; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX relacao_id ON relacao USING btree (id);


--
-- TOC entry 3511 (class 1259 OID 58325122)
-- Dependencies: 295
-- Name: relacao_tabela_origem; Type: INDEX; Schema: basico_assoc_chave_estrangeira; Owner: -; Tablespace: 
--

CREATE INDEX relacao_tabela_origem ON relacao USING btree (tabela_origem);


SET search_path = basico_assoc_dados_profis, pg_catalog;

--
-- TOC entry 3500 (class 1259 OID 58325117)
-- Dependencies: 293
-- Name: assoccl_area_conhecimento_id; Type: INDEX; Schema: basico_assoc_dados_profis; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_area_conhecimento_id ON assoccl_area_conhecimento USING btree (id);


--
-- TOC entry 3501 (class 1259 OID 58325118)
-- Dependencies: 293
-- Name: assoccl_area_conhecimento_id_area_conhecimento; Type: INDEX; Schema: basico_assoc_dados_profis; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_area_conhecimento_id_area_conhecimento ON assoccl_area_conhecimento USING btree (id_area_conhecimento);


--
-- TOC entry 3502 (class 1259 OID 58325119)
-- Dependencies: 293
-- Name: assoccl_area_conhecimento_id_assoc_dados_profissionais; Type: INDEX; Schema: basico_assoc_dados_profis; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_area_conhecimento_id_assoc_dados_profissionais ON assoccl_area_conhecimento USING btree (id_assoc_dados_profissionais);


SET search_path = basico_assoccl_pessoa_perfil, pg_catalog;

--
-- TOC entry 3496 (class 1259 OID 58325115)
-- Dependencies: 291
-- Name: assoc_dados_id; Type: INDEX; Schema: basico_assoccl_pessoa_perfil; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_dados_id ON assoc_dados USING btree (id);


--
-- TOC entry 3497 (class 1259 OID 58325116)
-- Dependencies: 291
-- Name: assoc_dados_id_assoccl_pessoa_perfil; Type: INDEX; Schema: basico_assoccl_pessoa_perfil; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_dados_id_assoccl_pessoa_perfil ON assoc_dados USING btree (id_assoccl_pessoa_perfil);


SET search_path = basico_assoccl_tipo_vinculo, pg_catalog;

--
-- TOC entry 3488 (class 1259 OID 58325109)
-- Dependencies: 289
-- Name: assoc_dados_id; Type: INDEX; Schema: basico_assoccl_tipo_vinculo; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_dados_id ON assoc_dados USING btree (id);


--
-- TOC entry 3489 (class 1259 OID 58325110)
-- Dependencies: 289
-- Name: assoc_dados_id_assoccl_vinculo_profissional; Type: INDEX; Schema: basico_assoccl_tipo_vinculo; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_dados_id_assoccl_vinculo_profissional ON assoc_dados USING btree (id_assoccl_vinculo_profissional);


--
-- TOC entry 3490 (class 1259 OID 58325113)
-- Dependencies: 289
-- Name: assoc_dados_id_pessoa_juridica_vinculo; Type: INDEX; Schema: basico_assoccl_tipo_vinculo; Owner: -; Tablespace: 
--

CREATE INDEX assoc_dados_id_pessoa_juridica_vinculo ON assoc_dados USING btree (id_pessoa_juridica_vinculo);


--
-- TOC entry 3491 (class 1259 OID 58325111)
-- Dependencies: 289
-- Name: assoc_dados_id_profissao; Type: INDEX; Schema: basico_assoccl_tipo_vinculo; Owner: -; Tablespace: 
--

CREATE INDEX assoc_dados_id_profissao ON assoc_dados USING btree (id_profissao);


--
-- TOC entry 3492 (class 1259 OID 58325112)
-- Dependencies: 289
-- Name: assoc_dados_id_vinculo_empregaticio; Type: INDEX; Schema: basico_assoccl_tipo_vinculo; Owner: -; Tablespace: 
--

CREATE INDEX assoc_dados_id_vinculo_empregaticio ON assoc_dados USING btree (id_vinculo_empregaticio);


--
-- TOC entry 3493 (class 1259 OID 58325114)
-- Dependencies: 289
-- Name: assoc_dados_matricula; Type: INDEX; Schema: basico_assoccl_tipo_vinculo; Owner: -; Tablespace: 
--

CREATE INDEX assoc_dados_matricula ON assoc_dados USING btree (matricula);


SET search_path = basico_categoria, pg_catalog;

--
-- TOC entry 3481 (class 1259 OID 58325108)
-- Dependencies: 287
-- Name: assoc_chave_estrangeira_campo_estrangeiro; Type: INDEX; Schema: basico_categoria; Owner: -; Tablespace: 
--

CREATE INDEX assoc_chave_estrangeira_campo_estrangeiro ON assoc_chave_estrangeira USING btree (campo_estrangeiro);


--
-- TOC entry 3482 (class 1259 OID 58325104)
-- Dependencies: 287
-- Name: assoc_chave_estrangeira_id; Type: INDEX; Schema: basico_categoria; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_chave_estrangeira_id ON assoc_chave_estrangeira USING btree (id);


--
-- TOC entry 3483 (class 1259 OID 58325106)
-- Dependencies: 287
-- Name: assoc_chave_estrangeira_id_categoria; Type: INDEX; Schema: basico_categoria; Owner: -; Tablespace: 
--

CREATE INDEX assoc_chave_estrangeira_id_categoria ON assoc_chave_estrangeira USING btree (id_categoria);


--
-- TOC entry 3484 (class 1259 OID 58325105)
-- Dependencies: 287
-- Name: assoc_chave_estrangeira_id_modulo; Type: INDEX; Schema: basico_categoria; Owner: -; Tablespace: 
--

CREATE INDEX assoc_chave_estrangeira_id_modulo ON assoc_chave_estrangeira USING btree (id_modulo);


--
-- TOC entry 3485 (class 1259 OID 58325107)
-- Dependencies: 287
-- Name: assoc_chave_estrangeira_tabela_estrangeira; Type: INDEX; Schema: basico_categoria; Owner: -; Tablespace: 
--

CREATE INDEX assoc_chave_estrangeira_tabela_estrangeira ON assoc_chave_estrangeira USING btree (tabela_estrangeira);


--
-- TOC entry 3477 (class 1259 OID 58325102)
-- Dependencies: 285
-- Name: assoc_evento_acao_id; Type: INDEX; Schema: basico_categoria; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_evento_acao_id ON assoc_evento_acao USING btree (id);


--
-- TOC entry 3478 (class 1259 OID 58325103)
-- Dependencies: 285
-- Name: assoc_evento_acao_id_categoria; Type: INDEX; Schema: basico_categoria; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_evento_acao_id_categoria ON assoc_evento_acao USING btree (id_categoria);


SET search_path = basico_componente, pg_catalog;

--
-- TOC entry 3470 (class 1259 OID 58325099)
-- Dependencies: 283
-- Name: assoccl_include_id; Type: INDEX; Schema: basico_componente; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_include_id ON assoccl_include USING btree (id);


--
-- TOC entry 3471 (class 1259 OID 58325100)
-- Dependencies: 283
-- Name: assoccl_include_id_componente; Type: INDEX; Schema: basico_componente; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_componente ON assoccl_include USING btree (id_componente);


--
-- TOC entry 3472 (class 1259 OID 58325101)
-- Dependencies: 283
-- Name: assoccl_include_id_include; Type: INDEX; Schema: basico_componente; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_include ON assoccl_include USING btree (id_include);


SET search_path = basico_contato, pg_catalog;

--
-- TOC entry 3460 (class 1259 OID 58325098)
-- Dependencies: 281
-- Name: cpg_email_email; Type: INDEX; Schema: basico_contato; Owner: -; Tablespace: 
--

CREATE INDEX cpg_email_email ON cpg_email USING btree (email);


--
-- TOC entry 3461 (class 1259 OID 58325093)
-- Dependencies: 281
-- Name: cpg_email_id; Type: INDEX; Schema: basico_contato; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX cpg_email_id ON cpg_email USING btree (id);


--
-- TOC entry 3462 (class 1259 OID 58325094)
-- Dependencies: 281
-- Name: cpg_email_id_categoria; Type: INDEX; Schema: basico_contato; Owner: -; Tablespace: 
--

CREATE INDEX cpg_email_id_categoria ON cpg_email USING btree (id_categoria);


--
-- TOC entry 3463 (class 1259 OID 58325095)
-- Dependencies: 281
-- Name: cpg_email_id_generico_proprietario; Type: INDEX; Schema: basico_contato; Owner: -; Tablespace: 
--

CREATE INDEX cpg_email_id_generico_proprietario ON cpg_email USING btree (id_generico_proprietario);


--
-- TOC entry 3464 (class 1259 OID 58325096)
-- Dependencies: 281
-- Name: cpg_email_nome; Type: INDEX; Schema: basico_contato; Owner: -; Tablespace: 
--

CREATE INDEX cpg_email_nome ON cpg_email USING btree (nome);


--
-- TOC entry 3465 (class 1259 OID 58325097)
-- Dependencies: 281
-- Name: cpg_email_unique_id; Type: INDEX; Schema: basico_contato; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX cpg_email_unique_id ON cpg_email USING btree (unique_id);


--
-- TOC entry 3452 (class 1259 OID 58325089)
-- Dependencies: 279
-- Name: cpg_telefone_id; Type: INDEX; Schema: basico_contato; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX cpg_telefone_id ON cpg_telefone USING btree (id);


--
-- TOC entry 3453 (class 1259 OID 58325090)
-- Dependencies: 279
-- Name: cpg_telefone_id_categoria; Type: INDEX; Schema: basico_contato; Owner: -; Tablespace: 
--

CREATE INDEX cpg_telefone_id_categoria ON cpg_telefone USING btree (id_categoria);


--
-- TOC entry 3454 (class 1259 OID 58325091)
-- Dependencies: 279
-- Name: cpg_telefone_id_generico_proprietario; Type: INDEX; Schema: basico_contato; Owner: -; Tablespace: 
--

CREATE INDEX cpg_telefone_id_generico_proprietario ON cpg_telefone USING btree (id_generico_proprietario);


--
-- TOC entry 3455 (class 1259 OID 58325092)
-- Dependencies: 279
-- Name: cpg_telefone_nome; Type: INDEX; Schema: basico_contato; Owner: -; Tablespace: 
--

CREATE INDEX cpg_telefone_nome ON cpg_telefone USING btree (nome);


SET search_path = basico_cvc, pg_catalog;

--
-- TOC entry 3445 (class 1259 OID 58325086)
-- Dependencies: 277
-- Name: cvc_id; Type: INDEX; Schema: basico_cvc; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX cvc_id ON cvc USING btree (id);


--
-- TOC entry 3446 (class 1259 OID 58325087)
-- Dependencies: 277
-- Name: cvc_id_assoc_chave_estrangeira; Type: INDEX; Schema: basico_cvc; Owner: -; Tablespace: 
--

CREATE INDEX cvc_id_assoc_chave_estrangeira ON cvc USING btree (id_assoc_chave_estrangeira);


--
-- TOC entry 3447 (class 1259 OID 58325088)
-- Dependencies: 277
-- Name: cvc_id_generico; Type: INDEX; Schema: basico_cvc; Owner: -; Tablespace: 
--

CREATE INDEX cvc_id_generico ON cvc USING btree (id_generico);


SET search_path = basico_dados_academicos, pg_catalog;

--
-- TOC entry 3441 (class 1259 OID 58325085)
-- Dependencies: 275
-- Name: titulacao_constante_textual; Type: INDEX; Schema: basico_dados_academicos; Owner: -; Tablespace: 
--

CREATE INDEX titulacao_constante_textual ON titulacao USING btree (constante_textual);


--
-- TOC entry 3442 (class 1259 OID 58325082)
-- Dependencies: 275
-- Name: titulacao_id; Type: INDEX; Schema: basico_dados_academicos; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX titulacao_id ON titulacao USING btree (id);


--
-- TOC entry 3443 (class 1259 OID 58325083)
-- Dependencies: 275
-- Name: titulacao_id_categoria; Type: INDEX; Schema: basico_dados_academicos; Owner: -; Tablespace: 
--

CREATE INDEX titulacao_id_categoria ON titulacao USING btree (id_categoria);


--
-- TOC entry 3444 (class 1259 OID 58325084)
-- Dependencies: 275
-- Name: titulacao_nome; Type: INDEX; Schema: basico_dados_academicos; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX titulacao_nome ON titulacao USING btree (nome);


SET search_path = basico_dados_biometricos, pg_catalog;

--
-- TOC entry 3434 (class 1259 OID 58325079)
-- Dependencies: 273
-- Name: assoc_pessoa_id; Type: INDEX; Schema: basico_dados_biometricos; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_pessoa_id ON assoc_pessoa USING btree (id);


--
-- TOC entry 3435 (class 1259 OID 58325081)
-- Dependencies: 273
-- Name: assoc_pessoa_id_categoria_sexo; Type: INDEX; Schema: basico_dados_biometricos; Owner: -; Tablespace: 
--

CREATE INDEX assoc_pessoa_id_categoria_sexo ON assoc_pessoa USING btree (id_categoria_sexo);


--
-- TOC entry 3436 (class 1259 OID 58325080)
-- Dependencies: 273
-- Name: assoc_pessoa_id_dados_biometricos; Type: INDEX; Schema: basico_dados_biometricos; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_pessoa_id_dados_biometricos ON assoc_pessoa USING btree (id_dados_biometricos);


SET search_path = basico_dados_profissionais, pg_catalog;

--
-- TOC entry 3426 (class 1259 OID 58325078)
-- Dependencies: 271
-- Name: regime_trabalho_codigo; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE INDEX regime_trabalho_codigo ON regime_trabalho USING btree (codigo);


--
-- TOC entry 3427 (class 1259 OID 58325077)
-- Dependencies: 271
-- Name: regime_trabalho_constante_textual; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE INDEX regime_trabalho_constante_textual ON regime_trabalho USING btree (constante_textual);


--
-- TOC entry 3428 (class 1259 OID 58325073)
-- Dependencies: 271
-- Name: regime_trabalho_id; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX regime_trabalho_id ON regime_trabalho USING btree (id);


--
-- TOC entry 3429 (class 1259 OID 58325075)
-- Dependencies: 271
-- Name: regime_trabalho_id_categoria; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE INDEX regime_trabalho_id_categoria ON regime_trabalho USING btree (id_categoria);


--
-- TOC entry 3430 (class 1259 OID 58325074)
-- Dependencies: 271
-- Name: regime_trabalho_id_regime_trabalho_pai; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE INDEX regime_trabalho_id_regime_trabalho_pai ON regime_trabalho USING btree (id_regime_trabalho_pai);


--
-- TOC entry 3431 (class 1259 OID 58325076)
-- Dependencies: 271
-- Name: regime_trabalho_nome; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE INDEX regime_trabalho_nome ON regime_trabalho USING btree (nome);


--
-- TOC entry 3417 (class 1259 OID 58325072)
-- Dependencies: 269
-- Name: tipo_vinculo_codigo; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE INDEX tipo_vinculo_codigo ON tipo_vinculo USING btree (codigo);


--
-- TOC entry 3418 (class 1259 OID 58325071)
-- Dependencies: 269
-- Name: tipo_vinculo_constante_textual; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE INDEX tipo_vinculo_constante_textual ON tipo_vinculo USING btree (constante_textual);


--
-- TOC entry 3419 (class 1259 OID 58325068)
-- Dependencies: 269
-- Name: tipo_vinculo_id; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX tipo_vinculo_id ON tipo_vinculo USING btree (id);


--
-- TOC entry 3420 (class 1259 OID 58325069)
-- Dependencies: 269
-- Name: tipo_vinculo_id_categoria; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE INDEX tipo_vinculo_id_categoria ON tipo_vinculo USING btree (id_categoria);


--
-- TOC entry 3421 (class 1259 OID 58325070)
-- Dependencies: 269
-- Name: tipo_vinculo_nome; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE INDEX tipo_vinculo_nome ON tipo_vinculo USING btree (nome);


--
-- TOC entry 3410 (class 1259 OID 58325067)
-- Dependencies: 267
-- Name: vinculo_empregaticio_codigo; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE INDEX vinculo_empregaticio_codigo ON vinculo_empregaticio USING btree (codigo);


--
-- TOC entry 3411 (class 1259 OID 58325066)
-- Dependencies: 267
-- Name: vinculo_empregaticio_constante_textual; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE INDEX vinculo_empregaticio_constante_textual ON vinculo_empregaticio USING btree (constante_textual);


--
-- TOC entry 3412 (class 1259 OID 58325063)
-- Dependencies: 267
-- Name: vinculo_empregaticio_id; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX vinculo_empregaticio_id ON vinculo_empregaticio USING btree (id);


--
-- TOC entry 3413 (class 1259 OID 58325064)
-- Dependencies: 267
-- Name: vinculo_empregaticio_id_categoria; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE INDEX vinculo_empregaticio_id_categoria ON vinculo_empregaticio USING btree (id_categoria);


--
-- TOC entry 3414 (class 1259 OID 58325065)
-- Dependencies: 267
-- Name: vinculo_empregaticio_nome; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE INDEX vinculo_empregaticio_nome ON vinculo_empregaticio USING btree (nome);


SET search_path = basico_decorator, pg_catalog;

--
-- TOC entry 3399 (class 1259 OID 58325060)
-- Dependencies: 265
-- Name: assoccl_include_id; Type: INDEX; Schema: basico_decorator; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_include_id ON assoccl_include USING btree (id);


--
-- TOC entry 3400 (class 1259 OID 58325061)
-- Dependencies: 265
-- Name: assoccl_include_id_decorator; Type: INDEX; Schema: basico_decorator; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_decorator ON assoccl_include USING btree (id_decorator);


--
-- TOC entry 3401 (class 1259 OID 58325062)
-- Dependencies: 265
-- Name: assoccl_include_id_include; Type: INDEX; Schema: basico_decorator; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_include ON assoccl_include USING btree (id_include);


SET search_path = basico_form_assoccl_elem_grupo, pg_catalog;

--
-- TOC entry 3392 (class 1259 OID 58325057)
-- Dependencies: 263
-- Name: assoccl_decorator_id; Type: INDEX; Schema: basico_form_assoccl_elem_grupo; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_decorator_id ON assoccl_decorator USING btree (id);


--
-- TOC entry 3393 (class 1259 OID 58325059)
-- Dependencies: 263
-- Name: assoccl_decorator_id_decorator; Type: INDEX; Schema: basico_form_assoccl_elem_grupo; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_decorator_id_decorator ON assoccl_decorator USING btree (id_decorator);


--
-- TOC entry 3394 (class 1259 OID 58325058)
-- Dependencies: 263
-- Name: assoccl_decorator_id_grupo; Type: INDEX; Schema: basico_form_assoccl_elem_grupo; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_decorator_id_grupo ON assoccl_decorator USING btree (id_grupo);


SET search_path = basico_form_assoccl_elemento, pg_catalog;

--
-- TOC entry 3385 (class 1259 OID 58325054)
-- Dependencies: 261
-- Name: assoccl_decorator_id; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_decorator_id ON assoccl_decorator USING btree (id);


--
-- TOC entry 3386 (class 1259 OID 58325055)
-- Dependencies: 261
-- Name: assoccl_decorator_id_assoccl_elemento; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_decorator_id_assoccl_elemento ON assoccl_decorator USING btree (id_assoccl_elemento);


--
-- TOC entry 3387 (class 1259 OID 58325056)
-- Dependencies: 261
-- Name: assoccl_decorator_id_decorator; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_decorator_id_decorator ON assoccl_decorator USING btree (id_decorator);


--
-- TOC entry 3378 (class 1259 OID 58325051)
-- Dependencies: 259
-- Name: assoccl_evento_id; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_evento_id ON assoccl_evento USING btree (id);


--
-- TOC entry 3379 (class 1259 OID 58325052)
-- Dependencies: 259
-- Name: assoccl_evento_id_assoccl_elemento; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_evento_id_assoccl_elemento ON assoccl_evento USING btree (id_assoccl_elemento);


--
-- TOC entry 3380 (class 1259 OID 58325053)
-- Dependencies: 259
-- Name: assoccl_evento_id_evento; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_evento_id_evento ON assoccl_evento USING btree (id_evento);


--
-- TOC entry 3371 (class 1259 OID 58325048)
-- Dependencies: 257
-- Name: assoccl_filter_id; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_filter_id ON assoccl_filter USING btree (id);


--
-- TOC entry 3372 (class 1259 OID 58325049)
-- Dependencies: 257
-- Name: assoccl_filter_id_assoccl_elemento; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_filter_id_assoccl_elemento ON assoccl_filter USING btree (id_assoccl_elemento);


--
-- TOC entry 3373 (class 1259 OID 58325050)
-- Dependencies: 257
-- Name: assoccl_filter_id_filter; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_filter_id_filter ON assoccl_filter USING btree (id_filter);


--
-- TOC entry 3364 (class 1259 OID 58325044)
-- Dependencies: 255
-- Name: assoccl_include_id; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_include_id ON assoccl_include USING btree (id);


--
-- TOC entry 3365 (class 1259 OID 58325045)
-- Dependencies: 255
-- Name: assoccl_include_id_assoccl_elemento; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_assoccl_elemento ON assoccl_include USING btree (id_assoccl_elemento);


--
-- TOC entry 3366 (class 1259 OID 58325047)
-- Dependencies: 255
-- Name: assoccl_include_id_include; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_include ON assoccl_include USING btree (id_include);


--
-- TOC entry 3357 (class 1259 OID 58325041)
-- Dependencies: 253
-- Name: assoccl_validator_id; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_validator_id ON assoccl_validator USING btree (id);


--
-- TOC entry 3358 (class 1259 OID 58325042)
-- Dependencies: 253
-- Name: assoccl_validator_id_assoccl_elemento; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_validator_id_assoccl_elemento ON assoccl_validator USING btree (id_assoccl_elemento);


--
-- TOC entry 3359 (class 1259 OID 58325043)
-- Dependencies: 253
-- Name: assoccl_validator_id_validator; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_validator_id_validator ON assoccl_validator USING btree (id_validator);


--
-- TOC entry 3351 (class 1259 OID 58325039)
-- Dependencies: 251
-- Name: grupo_constante_textual; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE INDEX grupo_constante_textual ON grupo USING btree (constante_textual);


--
-- TOC entry 3352 (class 1259 OID 58325040)
-- Dependencies: 251
-- Name: grupo_constante_textual_label; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE INDEX grupo_constante_textual_label ON grupo USING btree (constante_textual_label);


--
-- TOC entry 3353 (class 1259 OID 58325036)
-- Dependencies: 251
-- Name: grupo_id; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX grupo_id ON grupo USING btree (id);


--
-- TOC entry 3354 (class 1259 OID 58325038)
-- Dependencies: 251
-- Name: grupo_nome; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX grupo_nome ON grupo USING btree (nome);


SET search_path = basico_formulario, pg_catalog;

--
-- TOC entry 3344 (class 1259 OID 58325033)
-- Dependencies: 249
-- Name: assoccl_decorator_id; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_decorator_id ON assoccl_decorator USING btree (id);


--
-- TOC entry 3345 (class 1259 OID 58325035)
-- Dependencies: 249
-- Name: assoccl_decorator_id_decorator; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_decorator_id_decorator ON assoccl_decorator USING btree (id_decorator);


--
-- TOC entry 3346 (class 1259 OID 58325034)
-- Dependencies: 249
-- Name: assoccl_decorator_id_formulario; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_decorator_id_formulario ON assoccl_decorator USING btree (id_formulario);


--
-- TOC entry 3334 (class 1259 OID 58325032)
-- Dependencies: 247
-- Name: assoccl_elemento_constante_textual_label; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_elemento_constante_textual_label ON assoccl_elemento USING btree (constante_textual_label);


--
-- TOC entry 3335 (class 1259 OID 58325029)
-- Dependencies: 247
-- Name: assoccl_elemento_id; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_elemento_id ON assoccl_elemento USING btree (id);


--
-- TOC entry 3336 (class 1259 OID 58325031)
-- Dependencies: 247
-- Name: assoccl_elemento_id_elemento; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_elemento_id_elemento ON assoccl_elemento USING btree (id_elemento);


--
-- TOC entry 3337 (class 1259 OID 58325030)
-- Dependencies: 247
-- Name: assoccl_elemento_id_formulario; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_elemento_id_formulario ON assoccl_elemento USING btree (id_formulario);


--
-- TOC entry 3326 (class 1259 OID 58325025)
-- Dependencies: 245
-- Name: assoccl_evento_id; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_evento_id ON assoccl_evento USING btree (id);


--
-- TOC entry 3327 (class 1259 OID 58325028)
-- Dependencies: 245
-- Name: assoccl_evento_id_acao_evento; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_evento_id_acao_evento ON assoccl_evento USING btree (id_acao_evento);


--
-- TOC entry 3328 (class 1259 OID 58325027)
-- Dependencies: 245
-- Name: assoccl_evento_id_evento; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_evento_id_evento ON assoccl_evento USING btree (id_evento);


--
-- TOC entry 3329 (class 1259 OID 58325026)
-- Dependencies: 245
-- Name: assoccl_evento_id_formulario; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_evento_id_formulario ON assoccl_evento USING btree (id_formulario);


--
-- TOC entry 3319 (class 1259 OID 58325022)
-- Dependencies: 243
-- Name: assoccl_include_id; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_include_id ON assoccl_include USING btree (id);


--
-- TOC entry 3320 (class 1259 OID 58325023)
-- Dependencies: 243
-- Name: assoccl_include_id_formulario; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_formulario ON assoccl_include USING btree (id_formulario);


--
-- TOC entry 3321 (class 1259 OID 58325024)
-- Dependencies: 243
-- Name: assoccl_include_id_include; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_include ON assoccl_include USING btree (id_include);


--
-- TOC entry 3312 (class 1259 OID 58325019)
-- Dependencies: 241
-- Name: assoccl_modulo_id; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_modulo_id ON assoccl_modulo USING btree (id);


--
-- TOC entry 3313 (class 1259 OID 58325021)
-- Dependencies: 241
-- Name: assoccl_modulo_id_formulario; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_modulo_id_formulario ON assoccl_modulo USING btree (id_formulario);


--
-- TOC entry 3314 (class 1259 OID 58325020)
-- Dependencies: 241
-- Name: assoccl_modulo_id_modulo; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_modulo_id_modulo ON assoccl_modulo USING btree (id_modulo);


--
-- TOC entry 3305 (class 1259 OID 58325016)
-- Dependencies: 239
-- Name: assoccl_template_id; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_template_id ON assoccl_template USING btree (id);


--
-- TOC entry 3306 (class 1259 OID 58325018)
-- Dependencies: 239
-- Name: assoccl_template_id_formulario; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_template_id_formulario ON assoccl_template USING btree (id_formulario);


--
-- TOC entry 3307 (class 1259 OID 58325017)
-- Dependencies: 239
-- Name: assoccl_template_id_template; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_template_id_template ON assoccl_template USING btree (id_template);


--
-- TOC entry 3299 (class 1259 OID 58325015)
-- Dependencies: 237
-- Name: decorator_constante_textual; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX decorator_constante_textual ON decorator USING btree (constante_textual);


--
-- TOC entry 3300 (class 1259 OID 58325012)
-- Dependencies: 237
-- Name: decorator_id; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX decorator_id ON decorator USING btree (id);


--
-- TOC entry 3301 (class 1259 OID 58325013)
-- Dependencies: 237
-- Name: decorator_id_categoria; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX decorator_id_categoria ON decorator USING btree (id_categoria);


--
-- TOC entry 3302 (class 1259 OID 58325014)
-- Dependencies: 237
-- Name: decorator_nome; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX decorator_nome ON decorator USING btree (nome);


--
-- TOC entry 3289 (class 1259 OID 58325010)
-- Dependencies: 235
-- Name: elemento_constante_textual; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX elemento_constante_textual ON elemento USING btree (constante_textual);


--
-- TOC entry 3290 (class 1259 OID 58325011)
-- Dependencies: 235
-- Name: elemento_constante_textual_label; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX elemento_constante_textual_label ON elemento USING btree (constante_textual_label);


--
-- TOC entry 3291 (class 1259 OID 58325006)
-- Dependencies: 235
-- Name: elemento_id; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX elemento_id ON elemento USING btree (id);


--
-- TOC entry 3292 (class 1259 OID 58325007)
-- Dependencies: 235
-- Name: elemento_id_categoria; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX elemento_id_categoria ON elemento USING btree (id_categoria);


--
-- TOC entry 3293 (class 1259 OID 58325008)
-- Dependencies: 235
-- Name: elemento_id_componente; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX elemento_id_componente ON elemento USING btree (id_componente);


--
-- TOC entry 3294 (class 1259 OID 58325009)
-- Dependencies: 235
-- Name: elemento_nome; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX elemento_nome ON elemento USING btree (nome);


--
-- TOC entry 3280 (class 1259 OID 58325004)
-- Dependencies: 233
-- Name: rascunho_form_action; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX rascunho_form_action ON rascunho USING btree (form_action);


--
-- TOC entry 3281 (class 1259 OID 58325005)
-- Dependencies: 233
-- Name: rascunho_form_name; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX rascunho_form_name ON rascunho USING btree (form_name);


--
-- TOC entry 3282 (class 1259 OID 58324996)
-- Dependencies: 233
-- Name: rascunho_id; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX rascunho_id ON rascunho USING btree (id);


--
-- TOC entry 3283 (class 1259 OID 58325003)
-- Dependencies: 233
-- Name: rascunho_id_assoc_visao_origem; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX rascunho_id_assoc_visao_origem ON rascunho USING btree (id_assoc_visao_origem);


--
-- TOC entry 3284 (class 1259 OID 58325001)
-- Dependencies: 233
-- Name: rascunho_id_assocag_grupo; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX rascunho_id_assocag_grupo ON rascunho USING btree (id_assocag_grupo);


--
-- TOC entry 3285 (class 1259 OID 58324999)
-- Dependencies: 233
-- Name: rascunho_id_assoccl_perfil; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX rascunho_id_assoccl_perfil ON rascunho USING btree (id_assoccl_perfil);


--
-- TOC entry 3286 (class 1259 OID 58325002)
-- Dependencies: 233
-- Name: rascunho_id_assocsq_acao_aplicacao; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX rascunho_id_assocsq_acao_aplicacao ON rascunho USING btree (id_assocsq_acao_aplicacao);


--
-- TOC entry 3287 (class 1259 OID 58324998)
-- Dependencies: 233
-- Name: rascunho_id_categoria; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX rascunho_id_categoria ON rascunho USING btree (id_categoria);


--
-- TOC entry 3288 (class 1259 OID 58324997)
-- Dependencies: 233
-- Name: rascunho_id_rascunho_pai; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX rascunho_id_rascunho_pai ON rascunho USING btree (id_rascunho_pai);


SET search_path = basico_formulario_elemento, pg_catalog;

--
-- TOC entry 3271 (class 1259 OID 58324993)
-- Dependencies: 231
-- Name: assoccl_decorator_id; Type: INDEX; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_decorator_id ON assoccl_decorator USING btree (id);


--
-- TOC entry 3272 (class 1259 OID 58324995)
-- Dependencies: 231
-- Name: assoccl_decorator_id_decorator; Type: INDEX; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_decorator_id_decorator ON assoccl_decorator USING btree (id_decorator);


--
-- TOC entry 3273 (class 1259 OID 58324994)
-- Dependencies: 231
-- Name: assoccl_decorator_id_elemento; Type: INDEX; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_decorator_id_elemento ON assoccl_decorator USING btree (id_elemento);


--
-- TOC entry 3264 (class 1259 OID 58324990)
-- Dependencies: 229
-- Name: assoccl_evento_id; Type: INDEX; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_evento_id ON assoccl_evento USING btree (id);


--
-- TOC entry 3265 (class 1259 OID 58324991)
-- Dependencies: 229
-- Name: assoccl_evento_id_elemento; Type: INDEX; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_evento_id_elemento ON assoccl_evento USING btree (id_elemento);


--
-- TOC entry 3266 (class 1259 OID 58324992)
-- Dependencies: 229
-- Name: assoccl_evento_id_evento; Type: INDEX; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_evento_id_evento ON assoccl_evento USING btree (id_evento);


--
-- TOC entry 3257 (class 1259 OID 58324987)
-- Dependencies: 227
-- Name: assoccl_filter_id; Type: INDEX; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_filter_id ON assoccl_filter USING btree (id);


--
-- TOC entry 3258 (class 1259 OID 58324988)
-- Dependencies: 227
-- Name: assoccl_filter_id_elemento; Type: INDEX; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_filter_id_elemento ON assoccl_filter USING btree (id_elemento);


--
-- TOC entry 3259 (class 1259 OID 58324989)
-- Dependencies: 227
-- Name: assoccl_filter_id_filter; Type: INDEX; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_filter_id_filter ON assoccl_filter USING btree (id_filter);


--
-- TOC entry 3250 (class 1259 OID 58324984)
-- Dependencies: 225
-- Name: assoccl_validator_id; Type: INDEX; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_validator_id ON assoccl_validator USING btree (id);


--
-- TOC entry 3251 (class 1259 OID 58324985)
-- Dependencies: 225
-- Name: assoccl_validator_id_elemento; Type: INDEX; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_validator_id_elemento ON assoccl_validator USING btree (id_elemento);


--
-- TOC entry 3252 (class 1259 OID 58324986)
-- Dependencies: 225
-- Name: assoccl_validator_id_validator; Type: INDEX; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_validator_id_validator ON assoccl_validator USING btree (id_validator);


SET search_path = basico_formulario_rascunho, pg_catalog;

--
-- TOC entry 3246 (class 1259 OID 58324981)
-- Dependencies: 223
-- Name: assocag_grupo_id; Type: INDEX; Schema: basico_formulario_rascunho; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assocag_grupo_id ON assocag_grupo USING btree (id);


--
-- TOC entry 3247 (class 1259 OID 58324983)
-- Dependencies: 223
-- Name: assocag_grupo_id_assoccl_perfil; Type: INDEX; Schema: basico_formulario_rascunho; Owner: -; Tablespace: 
--

CREATE INDEX assocag_grupo_id_assoccl_perfil ON assocag_grupo USING btree (id_assoccl_perfil);


SET search_path = basico_localizacao, pg_catalog;

--
-- TOC entry 3239 (class 1259 OID 58324977)
-- Dependencies: 221
-- Name: assoc_bairro_id; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_bairro_id ON assoc_bairro USING btree (id);


--
-- TOC entry 3240 (class 1259 OID 58324979)
-- Dependencies: 221
-- Name: assoc_bairro_id_municipio; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_bairro_id_municipio ON assoc_bairro USING btree (id_municipio);


--
-- TOC entry 3241 (class 1259 OID 58324980)
-- Dependencies: 221
-- Name: assoc_bairro_nome; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_bairro_nome ON assoc_bairro USING btree (nome);


--
-- TOC entry 3229 (class 1259 OID 58324971)
-- Dependencies: 219
-- Name: assoc_estado_id; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_estado_id ON assoc_estado USING btree (id);


--
-- TOC entry 3230 (class 1259 OID 58324972)
-- Dependencies: 219
-- Name: assoc_estado_id_categoria; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_estado_id_categoria ON assoc_estado USING btree (id_categoria);


--
-- TOC entry 3231 (class 1259 OID 58324973)
-- Dependencies: 219
-- Name: assoc_estado_id_estado_pai; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_estado_id_estado_pai ON assoc_estado USING btree (id_estado_pai);


--
-- TOC entry 3232 (class 1259 OID 58324974)
-- Dependencies: 219
-- Name: assoc_estado_id_pais; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_estado_id_pais ON assoc_estado USING btree (id_pais);


--
-- TOC entry 3233 (class 1259 OID 58324975)
-- Dependencies: 219
-- Name: assoc_estado_nome; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_estado_nome ON assoc_estado USING btree (nome);


--
-- TOC entry 3234 (class 1259 OID 58324976)
-- Dependencies: 219
-- Name: assoc_estado_sigla; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_estado_sigla ON assoc_estado USING btree (sigla);


--
-- TOC entry 3221 (class 1259 OID 58324967)
-- Dependencies: 217
-- Name: assoc_logradouro_id; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_logradouro_id ON assoc_logradouro USING btree (id);


--
-- TOC entry 3222 (class 1259 OID 58324969)
-- Dependencies: 217
-- Name: assoc_logradouro_id_bairro; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_logradouro_id_bairro ON assoc_logradouro USING btree (id_bairro);


--
-- TOC entry 3223 (class 1259 OID 58324968)
-- Dependencies: 217
-- Name: assoc_logradouro_id_categoria; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_logradouro_id_categoria ON assoc_logradouro USING btree (id_categoria);


--
-- TOC entry 3224 (class 1259 OID 58324970)
-- Dependencies: 217
-- Name: assoc_logradouro_nome; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_logradouro_nome ON assoc_logradouro USING btree (nome);


--
-- TOC entry 3211 (class 1259 OID 58324966)
-- Dependencies: 215
-- Name: assoc_municipio_codigo_ddd; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_municipio_codigo_ddd ON assoc_municipio USING btree (codigo_ddd);


--
-- TOC entry 3212 (class 1259 OID 58324961)
-- Dependencies: 215
-- Name: assoc_municipio_id; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_municipio_id ON assoc_municipio USING btree (id);


--
-- TOC entry 3213 (class 1259 OID 58324962)
-- Dependencies: 215
-- Name: assoc_municipio_id_categoria; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_municipio_id_categoria ON assoc_municipio USING btree (id_categoria);


--
-- TOC entry 3214 (class 1259 OID 58324964)
-- Dependencies: 215
-- Name: assoc_municipio_id_estado; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_municipio_id_estado ON assoc_municipio USING btree (id_estado);


--
-- TOC entry 3215 (class 1259 OID 58324963)
-- Dependencies: 215
-- Name: assoc_municipio_id_municipio_pai; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_municipio_id_municipio_pai ON assoc_municipio USING btree (id_municipio_pai);


--
-- TOC entry 3216 (class 1259 OID 58324965)
-- Dependencies: 215
-- Name: assoc_municipio_nome; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_municipio_nome ON assoc_municipio USING btree (nome);


--
-- TOC entry 3199 (class 1259 OID 58324955)
-- Dependencies: 213
-- Name: codigo_postal_codigo; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX codigo_postal_codigo ON codigo_postal USING btree (codigo);


--
-- TOC entry 3200 (class 1259 OID 58324953)
-- Dependencies: 213
-- Name: codigo_postal_id; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX codigo_postal_id ON codigo_postal USING btree (id);


--
-- TOC entry 3201 (class 1259 OID 58324959)
-- Dependencies: 213
-- Name: codigo_postal_id_bairro; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX codigo_postal_id_bairro ON codigo_postal USING btree (id_bairro);


--
-- TOC entry 3202 (class 1259 OID 58324954)
-- Dependencies: 213
-- Name: codigo_postal_id_categoria; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX codigo_postal_id_categoria ON codigo_postal USING btree (id_categoria);


--
-- TOC entry 3203 (class 1259 OID 58324957)
-- Dependencies: 213
-- Name: codigo_postal_id_estado; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX codigo_postal_id_estado ON codigo_postal USING btree (id_estado);


--
-- TOC entry 3204 (class 1259 OID 58324960)
-- Dependencies: 213
-- Name: codigo_postal_id_logradouro; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX codigo_postal_id_logradouro ON codigo_postal USING btree (id_logradouro);


--
-- TOC entry 3205 (class 1259 OID 58324958)
-- Dependencies: 213
-- Name: codigo_postal_id_municipio; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX codigo_postal_id_municipio ON codigo_postal USING btree (id_municipio);


--
-- TOC entry 3206 (class 1259 OID 58324956)
-- Dependencies: 213
-- Name: codigo_postal_id_pais; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX codigo_postal_id_pais ON codigo_postal USING btree (id_pais);


--
-- TOC entry 3190 (class 1259 OID 58324951)
-- Dependencies: 211
-- Name: cpg_endereco_codigo_postal; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX cpg_endereco_codigo_postal ON cpg_endereco USING btree (codigo_postal);


--
-- TOC entry 3191 (class 1259 OID 58324948)
-- Dependencies: 211
-- Name: cpg_endereco_id; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX cpg_endereco_id ON cpg_endereco USING btree (id);


--
-- TOC entry 3192 (class 1259 OID 58324952)
-- Dependencies: 211
-- Name: cpg_endereco_id_assoccl_perfil_validador; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX cpg_endereco_id_assoccl_perfil_validador ON cpg_endereco USING btree (id_assoccl_perfil_validador);


--
-- TOC entry 3193 (class 1259 OID 58324949)
-- Dependencies: 211
-- Name: cpg_endereco_id_categoria; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX cpg_endereco_id_categoria ON cpg_endereco USING btree (id_categoria);


--
-- TOC entry 3194 (class 1259 OID 58324950)
-- Dependencies: 211
-- Name: cpg_endereco_id_generico_proprietario; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX cpg_endereco_id_generico_proprietario ON cpg_endereco USING btree (id_generico_proprietario);


--
-- TOC entry 3185 (class 1259 OID 58324946)
-- Dependencies: 209
-- Name: pais_constante_textual; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX pais_constante_textual ON pais USING btree (constante_textual);


--
-- TOC entry 3186 (class 1259 OID 58324945)
-- Dependencies: 209
-- Name: pais_id; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX pais_id ON pais USING btree (id);


--
-- TOC entry 3187 (class 1259 OID 58324947)
-- Dependencies: 209
-- Name: pais_sigla; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX pais_sigla ON pais USING btree (sigla);


SET search_path = basico_mensagem, pg_catalog;

--
-- TOC entry 3179 (class 1259 OID 58324943)
-- Dependencies: 207
-- Name: assoc_email_id; Type: INDEX; Schema: basico_mensagem; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_email_id ON assoc_email USING btree (id);


--
-- TOC entry 3180 (class 1259 OID 58324944)
-- Dependencies: 207
-- Name: assoc_email_id_mensagem; Type: INDEX; Schema: basico_mensagem; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_email_id_mensagem ON assoc_email USING btree (id_mensagem);


--
-- TOC entry 3171 (class 1259 OID 58324939)
-- Dependencies: 205
-- Name: assoccl_assoccl_pessoa_perfil_id; Type: INDEX; Schema: basico_mensagem; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_assoccl_pessoa_perfil_id ON assoccl_assoccl_pessoa_perfil USING btree (id);


--
-- TOC entry 3172 (class 1259 OID 58324942)
-- Dependencies: 205
-- Name: assoccl_assoccl_pessoa_perfil_id_assoccl_perfil; Type: INDEX; Schema: basico_mensagem; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_assoccl_pessoa_perfil_id_assoccl_perfil ON assoccl_assoccl_pessoa_perfil USING btree (id_assoccl_perfil);


--
-- TOC entry 3173 (class 1259 OID 58324940)
-- Dependencies: 205
-- Name: assoccl_assoccl_pessoa_perfil_id_categoria; Type: INDEX; Schema: basico_mensagem; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_assoccl_pessoa_perfil_id_categoria ON assoccl_assoccl_pessoa_perfil USING btree (id_categoria);


--
-- TOC entry 3174 (class 1259 OID 58324941)
-- Dependencies: 205
-- Name: assoccl_assoccl_pessoa_perfil_id_mensagem; Type: INDEX; Schema: basico_mensagem; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_assoccl_pessoa_perfil_id_mensagem ON assoccl_assoccl_pessoa_perfil USING btree (id_mensagem);


--
-- TOC entry 3165 (class 1259 OID 58324935)
-- Dependencies: 203
-- Name: template_id; Type: INDEX; Schema: basico_mensagem; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX template_id ON template USING btree (id);


--
-- TOC entry 3166 (class 1259 OID 58324936)
-- Dependencies: 203
-- Name: template_id_categoria; Type: INDEX; Schema: basico_mensagem; Owner: -; Tablespace: 
--

CREATE INDEX template_id_categoria ON template USING btree (id_categoria);


--
-- TOC entry 3167 (class 1259 OID 58324937)
-- Dependencies: 203
-- Name: template_id_generico_proprietario; Type: INDEX; Schema: basico_mensagem; Owner: -; Tablespace: 
--

CREATE INDEX template_id_generico_proprietario ON template USING btree (id_generico_proprietario);


--
-- TOC entry 3168 (class 1259 OID 58324938)
-- Dependencies: 203
-- Name: template_nome; Type: INDEX; Schema: basico_mensagem; Owner: -; Tablespace: 
--

CREATE INDEX template_nome ON template USING btree (nome);


SET search_path = basico_mensagem_assoc_email, pg_catalog;

--
-- TOC entry 3159 (class 1259 OID 58324933)
-- Dependencies: 201
-- Name: assoc_dados_id; Type: INDEX; Schema: basico_mensagem_assoc_email; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_dados_id ON assoc_dados USING btree (id);


--
-- TOC entry 3160 (class 1259 OID 58324934)
-- Dependencies: 201
-- Name: assoc_dados_id_assoc_email; Type: INDEX; Schema: basico_mensagem_assoc_email; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_dados_id_assoc_email ON assoc_dados USING btree (id_assoc_email);


SET search_path = basico_metodo_validacao, pg_catalog;

--
-- TOC entry 3152 (class 1259 OID 58324930)
-- Dependencies: 199
-- Name: assoccl_include_id; Type: INDEX; Schema: basico_metodo_validacao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_include_id ON assoccl_include USING btree (id);


--
-- TOC entry 3153 (class 1259 OID 58324932)
-- Dependencies: 199
-- Name: assoccl_include_id_include; Type: INDEX; Schema: basico_metodo_validacao; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_include ON assoccl_include USING btree (id_include);


--
-- TOC entry 3154 (class 1259 OID 58324931)
-- Dependencies: 199
-- Name: assoccl_include_id_metodo_validacao; Type: INDEX; Schema: basico_metodo_validacao; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_metodo_validacao ON assoccl_include USING btree (id_metodo_validacao);


SET search_path = basico_output, pg_catalog;

--
-- TOC entry 3145 (class 1259 OID 58324927)
-- Dependencies: 197
-- Name: assoccl_include_id; Type: INDEX; Schema: basico_output; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_include_id ON assoccl_include USING btree (id);


--
-- TOC entry 3146 (class 1259 OID 58324929)
-- Dependencies: 197
-- Name: assoccl_include_id_include; Type: INDEX; Schema: basico_output; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_include ON assoccl_include USING btree (id_include);


--
-- TOC entry 3147 (class 1259 OID 58324928)
-- Dependencies: 197
-- Name: assoccl_include_id_output; Type: INDEX; Schema: basico_output; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_output ON assoccl_include USING btree (id_output);


SET search_path = basico_perfil, pg_catalog;

--
-- TOC entry 3138 (class 1259 OID 58324924)
-- Dependencies: 195
-- Name: assoccl_modulo_id; Type: INDEX; Schema: basico_perfil; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_modulo_id ON assoccl_modulo USING btree (id);


--
-- TOC entry 3139 (class 1259 OID 58324925)
-- Dependencies: 195
-- Name: assoccl_modulo_id_modulo; Type: INDEX; Schema: basico_perfil; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_modulo_id_modulo ON assoccl_modulo USING btree (id_modulo);


--
-- TOC entry 3140 (class 1259 OID 58324926)
-- Dependencies: 195
-- Name: assoccl_modulo_id_perfil; Type: INDEX; Schema: basico_perfil; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_modulo_id_perfil ON assoccl_modulo USING btree (id_perfil);


SET search_path = basico_pessoa, pg_catalog;

--
-- TOC entry 3133 (class 1259 OID 58324921)
-- Dependencies: 193
-- Name: assoc_dados_id; Type: INDEX; Schema: basico_pessoa; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_dados_id ON assoc_dados USING btree (id);


--
-- TOC entry 3134 (class 1259 OID 58324922)
-- Dependencies: 193
-- Name: assoc_dados_id_pessoa; Type: INDEX; Schema: basico_pessoa; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_dados_id_pessoa ON assoc_dados USING btree (id_pessoa);


--
-- TOC entry 3135 (class 1259 OID 58324923)
-- Dependencies: 193
-- Name: assoc_dados_nome; Type: INDEX; Schema: basico_pessoa; Owner: -; Tablespace: 
--

CREATE INDEX assoc_dados_nome ON assoc_dados USING btree (nome);


--
-- TOC entry 3126 (class 1259 OID 58324918)
-- Dependencies: 191
-- Name: assoccl_perfil_id; Type: INDEX; Schema: basico_pessoa; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_perfil_id ON assoccl_perfil USING btree (id);


--
-- TOC entry 3127 (class 1259 OID 58324920)
-- Dependencies: 191
-- Name: assoccl_perfil_id_perfil; Type: INDEX; Schema: basico_pessoa; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_perfil_id_perfil ON assoccl_perfil USING btree (id_perfil);


--
-- TOC entry 3128 (class 1259 OID 58324919)
-- Dependencies: 191
-- Name: assoccl_perfil_id_pessoa; Type: INDEX; Schema: basico_pessoa; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_perfil_id_pessoa ON assoccl_perfil USING btree (id_pessoa);


--
-- TOC entry 3121 (class 1259 OID 58324915)
-- Dependencies: 189
-- Name: assoccl_tipo_vinculo_id; Type: INDEX; Schema: basico_pessoa; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_tipo_vinculo_id ON assoccl_tipo_vinculo USING btree (id);


--
-- TOC entry 3122 (class 1259 OID 58324916)
-- Dependencies: 189
-- Name: assoccl_tipo_vinculo_id_pessoa; Type: INDEX; Schema: basico_pessoa; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_tipo_vinculo_id_pessoa ON assoccl_tipo_vinculo USING btree (id_pessoa);


--
-- TOC entry 3123 (class 1259 OID 58324917)
-- Dependencies: 189
-- Name: assoccl_tipo_vinculo_id_tipo_vinculo; Type: INDEX; Schema: basico_pessoa; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_tipo_vinculo_id_tipo_vinculo ON assoccl_tipo_vinculo USING btree (id_tipo_vinculo);


--
-- TOC entry 3115 (class 1259 OID 58324913)
-- Dependencies: 187
-- Name: login_id; Type: INDEX; Schema: basico_pessoa; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX login_id ON login USING btree (id);


--
-- TOC entry 3116 (class 1259 OID 58324914)
-- Dependencies: 187
-- Name: login_id_pessoa; Type: INDEX; Schema: basico_pessoa; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX login_id_pessoa ON login USING btree (id_pessoa);


SET search_path = basico_pessoa_juridica, pg_catalog;

--
-- TOC entry 3109 (class 1259 OID 58324912)
-- Dependencies: 185
-- Name: assoc_banco_codigo; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_banco_codigo ON assoc_banco USING btree (codigo);


--
-- TOC entry 3110 (class 1259 OID 58324909)
-- Dependencies: 185
-- Name: assoc_banco_id; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_banco_id ON assoc_banco USING btree (id);


--
-- TOC entry 3111 (class 1259 OID 58324911)
-- Dependencies: 185
-- Name: assoc_banco_id_categoria; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assoc_banco_id_categoria ON assoc_banco USING btree (id_categoria);


--
-- TOC entry 3112 (class 1259 OID 58324910)
-- Dependencies: 185
-- Name: assoc_banco_id_pessoa_juridica; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_banco_id_pessoa_juridica ON assoc_banco USING btree (id_pessoa_juridica);


--
-- TOC entry 3102 (class 1259 OID 58324904)
-- Dependencies: 183
-- Name: assoc_dados_id; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_dados_id ON assoc_dados USING btree (id);


--
-- TOC entry 3103 (class 1259 OID 58324905)
-- Dependencies: 183
-- Name: assoc_dados_id_pessoa_juridica; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_dados_id_pessoa_juridica ON assoc_dados USING btree (id_pessoa_juridica);


--
-- TOC entry 3104 (class 1259 OID 58324907)
-- Dependencies: 183
-- Name: assoc_dados_nome_fantasia; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assoc_dados_nome_fantasia ON assoc_dados USING btree (nome_fantasia);


--
-- TOC entry 3105 (class 1259 OID 58324906)
-- Dependencies: 183
-- Name: assoc_dados_razao_social; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assoc_dados_razao_social ON assoc_dados USING btree (razao_social);


--
-- TOC entry 3106 (class 1259 OID 58324908)
-- Dependencies: 183
-- Name: assoc_dados_sigla; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assoc_dados_sigla ON assoc_dados USING btree (sigla);


--
-- TOC entry 3094 (class 1259 OID 58324899)
-- Dependencies: 181
-- Name: assocag_incubadora_id; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assocag_incubadora_id ON assocag_incubadora USING btree (id);


--
-- TOC entry 3095 (class 1259 OID 58324900)
-- Dependencies: 181
-- Name: assocag_incubadora_id_categoria; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assocag_incubadora_id_categoria ON assocag_incubadora USING btree (id_categoria);


--
-- TOC entry 3096 (class 1259 OID 58324902)
-- Dependencies: 181
-- Name: assocag_incubadora_id_pessoa_juridica; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assocag_incubadora_id_pessoa_juridica ON assocag_incubadora USING btree (id_pessoa_juridica);


--
-- TOC entry 3097 (class 1259 OID 58324903)
-- Dependencies: 181
-- Name: assocag_incubadora_id_pessoa_juridica_incubada; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assocag_incubadora_id_pessoa_juridica_incubada ON assocag_incubadora USING btree (id_pessoa_juridica_incubada);


--
-- TOC entry 3084 (class 1259 OID 58324893)
-- Dependencies: 179
-- Name: assocag_parceria_id; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assocag_parceria_id ON assocag_parceria USING btree (id);


--
-- TOC entry 3085 (class 1259 OID 58324897)
-- Dependencies: 179
-- Name: assocag_parceria_id_assocag_parceria; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assocag_parceria_id_assocag_parceria ON assocag_parceria USING btree (id_assocag_parceria);


--
-- TOC entry 3086 (class 1259 OID 58324894)
-- Dependencies: 179
-- Name: assocag_parceria_id_categoria; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assocag_parceria_id_categoria ON assocag_parceria USING btree (id_categoria);


--
-- TOC entry 3087 (class 1259 OID 58324895)
-- Dependencies: 179
-- Name: assocag_parceria_id_pessoa_juridica; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assocag_parceria_id_pessoa_juridica ON assocag_parceria USING btree (id_pessoa_juridica);


--
-- TOC entry 3088 (class 1259 OID 58324896)
-- Dependencies: 179
-- Name: assocag_parceria_id_pessoa_juridica_parceira; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assocag_parceria_id_pessoa_juridica_parceira ON assocag_parceria USING btree (id_pessoa_juridica_parceira);


--
-- TOC entry 3089 (class 1259 OID 58324898)
-- Dependencies: 179
-- Name: assocag_parceria_nome; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assocag_parceria_nome ON assocag_parceria USING btree (nome);


--
-- TOC entry 3077 (class 1259 OID 58324890)
-- Dependencies: 177
-- Name: assoccl_area_economia_id; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_area_economia_id ON assoccl_area_economia USING btree (id);


--
-- TOC entry 3078 (class 1259 OID 58324891)
-- Dependencies: 177
-- Name: assoccl_area_economia_id_area_economia; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_area_economia_id_area_economia ON assoccl_area_economia USING btree (id_area_economia);


--
-- TOC entry 3079 (class 1259 OID 58324892)
-- Dependencies: 177
-- Name: assoccl_area_economia_id_pessoa_juridica; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_area_economia_id_pessoa_juridica ON assoccl_area_economia USING btree (id_pessoa_juridica);


--
-- TOC entry 3070 (class 1259 OID 58324887)
-- Dependencies: 175
-- Name: assoccl_capital_social_id; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_capital_social_id ON assoccl_capital_social USING btree (id);


--
-- TOC entry 3071 (class 1259 OID 58324889)
-- Dependencies: 175
-- Name: assoccl_capital_social_id_capital_social; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_capital_social_id_capital_social ON assoccl_capital_social USING btree (id_capital_social);


--
-- TOC entry 3072 (class 1259 OID 58324888)
-- Dependencies: 175
-- Name: assoccl_capital_social_id_pessoa_juridica; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_capital_social_id_pessoa_juridica ON assoccl_capital_social USING btree (id_pessoa_juridica);


--
-- TOC entry 3063 (class 1259 OID 58324884)
-- Dependencies: 173
-- Name: assoccl_faturamento_id; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_faturamento_id ON assoccl_faturamento USING btree (id);


--
-- TOC entry 3064 (class 1259 OID 58324885)
-- Dependencies: 173
-- Name: assoccl_faturamento_id_categoria; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_faturamento_id_categoria ON assoccl_faturamento USING btree (id_categoria);


--
-- TOC entry 3065 (class 1259 OID 58324886)
-- Dependencies: 173
-- Name: assoccl_faturamento_id_pessoa_juridica; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_faturamento_id_pessoa_juridica ON assoccl_faturamento USING btree (id_pessoa_juridica);


--
-- TOC entry 3055 (class 1259 OID 58324880)
-- Dependencies: 171
-- Name: assoccl_quadro_funcionario_id; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_quadro_funcionario_id ON assoccl_quadro_funcionario USING btree (id);


--
-- TOC entry 3056 (class 1259 OID 58324881)
-- Dependencies: 171
-- Name: assoccl_quadro_funcionario_id_categoria; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_quadro_funcionario_id_categoria ON assoccl_quadro_funcionario USING btree (id_categoria);


--
-- TOC entry 3057 (class 1259 OID 58324882)
-- Dependencies: 171
-- Name: assoccl_quadro_funcionario_id_pessoa_juridica; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_quadro_funcionario_id_pessoa_juridica ON assoccl_quadro_funcionario USING btree (id_pessoa_juridica);


--
-- TOC entry 3058 (class 1259 OID 58324883)
-- Dependencies: 171
-- Name: assoccl_quadro_funcionario_id_titulacao; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_quadro_funcionario_id_titulacao ON assoccl_quadro_funcionario USING btree (id_titulacao);


--
-- TOC entry 3049 (class 1259 OID 58324879)
-- Dependencies: 169
-- Name: capital_social_constante_textual; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX capital_social_constante_textual ON capital_social USING btree (constante_textual);


--
-- TOC entry 3050 (class 1259 OID 58324875)
-- Dependencies: 169
-- Name: capital_social_id; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX capital_social_id ON capital_social USING btree (id);


--
-- TOC entry 3051 (class 1259 OID 58324876)
-- Dependencies: 169
-- Name: capital_social_id_categoria; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX capital_social_id_categoria ON capital_social USING btree (id_categoria);


--
-- TOC entry 3052 (class 1259 OID 58324877)
-- Dependencies: 169
-- Name: capital_social_nome; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX capital_social_nome ON capital_social USING btree (nome);


--
-- TOC entry 3042 (class 1259 OID 58324874)
-- Dependencies: 167
-- Name: natureza_codigo; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX natureza_codigo ON natureza USING btree (codigo);


--
-- TOC entry 3043 (class 1259 OID 58324873)
-- Dependencies: 167
-- Name: natureza_constante_textual; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX natureza_constante_textual ON natureza USING btree (constante_textual);


--
-- TOC entry 3044 (class 1259 OID 58324870)
-- Dependencies: 167
-- Name: natureza_id; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX natureza_id ON natureza USING btree (id);


--
-- TOC entry 3045 (class 1259 OID 58324871)
-- Dependencies: 167
-- Name: natureza_id_categoria; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX natureza_id_categoria ON natureza USING btree (id_categoria);


--
-- TOC entry 3046 (class 1259 OID 58324872)
-- Dependencies: 167
-- Name: natureza_nome; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX natureza_nome ON natureza USING btree (nome);


SET search_path = basico_sequencia, pg_catalog;

--
-- TOC entry 3031 (class 1259 OID 58324868)
-- Dependencies: 165
-- Name: assocsq_acao_aplicacao_constante_textual; Type: INDEX; Schema: basico_sequencia; Owner: -; Tablespace: 
--

CREATE INDEX assocsq_acao_aplicacao_constante_textual ON assocsq_acao_aplicacao USING btree (constante_textual);


--
-- TOC entry 3032 (class 1259 OID 58324863)
-- Dependencies: 165
-- Name: assocsq_acao_aplicacao_id; Type: INDEX; Schema: basico_sequencia; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assocsq_acao_aplicacao_id ON assocsq_acao_aplicacao USING btree (id);


--
-- TOC entry 3033 (class 1259 OID 58324866)
-- Dependencies: 165
-- Name: assocsq_acao_aplicacao_id_acao_aplicacao; Type: INDEX; Schema: basico_sequencia; Owner: -; Tablespace: 
--

CREATE INDEX assocsq_acao_aplicacao_id_acao_aplicacao ON assocsq_acao_aplicacao USING btree (id_acao_aplicacao);


--
-- TOC entry 3034 (class 1259 OID 58324864)
-- Dependencies: 165
-- Name: assocsq_acao_aplicacao_id_categoria; Type: INDEX; Schema: basico_sequencia; Owner: -; Tablespace: 
--

CREATE INDEX assocsq_acao_aplicacao_id_categoria ON assocsq_acao_aplicacao USING btree (id_categoria);


--
-- TOC entry 3035 (class 1259 OID 58324865)
-- Dependencies: 165
-- Name: assocsq_acao_aplicacao_id_sequencia; Type: INDEX; Schema: basico_sequencia; Owner: -; Tablespace: 
--

CREATE INDEX assocsq_acao_aplicacao_id_sequencia ON assocsq_acao_aplicacao USING btree (id_sequencia);


--
-- TOC entry 3036 (class 1259 OID 58324867)
-- Dependencies: 165
-- Name: assocsq_acao_aplicacao_nome; Type: INDEX; Schema: basico_sequencia; Owner: -; Tablespace: 
--

CREATE INDEX assocsq_acao_aplicacao_nome ON assocsq_acao_aplicacao USING btree (nome);


--
-- TOC entry 3037 (class 1259 OID 58324869)
-- Dependencies: 165
-- Name: assocsq_acao_aplicacao_passo; Type: INDEX; Schema: basico_sequencia; Owner: -; Tablespace: 
--

CREATE INDEX assocsq_acao_aplicacao_passo ON assocsq_acao_aplicacao USING btree (passo);


SET search_path = basico_template, pg_catalog;

--
-- TOC entry 3024 (class 1259 OID 58324860)
-- Dependencies: 163
-- Name: assoccl_include_id; Type: INDEX; Schema: basico_template; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_include_id ON assoccl_include USING btree (id);


--
-- TOC entry 3025 (class 1259 OID 58324862)
-- Dependencies: 163
-- Name: assoccl_include_id_include; Type: INDEX; Schema: basico_template; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_include ON assoccl_include USING btree (id_include);


--
-- TOC entry 3026 (class 1259 OID 58324861)
-- Dependencies: 163
-- Name: assoccl_include_id_template; Type: INDEX; Schema: basico_template; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_template ON assoccl_include USING btree (id_template);


--
-- TOC entry 3017 (class 1259 OID 58324857)
-- Dependencies: 161
-- Name: assoccl_output_id; Type: INDEX; Schema: basico_template; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_output_id ON assoccl_output USING btree (id);


--
-- TOC entry 3018 (class 1259 OID 58324859)
-- Dependencies: 161
-- Name: assoccl_output_id_output; Type: INDEX; Schema: basico_template; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_output_id_output ON assoccl_output USING btree (id_output);


--
-- TOC entry 3019 (class 1259 OID 58324858)
-- Dependencies: 161
-- Name: assoccl_output_id_template; Type: INDEX; Schema: basico_template; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_output_id_template ON assoccl_output USING btree (id_template);


SET search_path = basico, pg_catalog;

--
-- TOC entry 4060 (class 2606 OID 58324487)
-- Dependencies: 3644 377 331
-- Name: fk_acao_aplicacao_modulo; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY acao_aplicacao
    ADD CONSTRAINT fk_acao_aplicacao_modulo FOREIGN KEY (id_modulo) REFERENCES modulo(id);


--
-- TOC entry 4059 (class 2606 OID 58375369)
-- Dependencies: 3796 375 367
-- Name: fk_acao_evento_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY acao_evento
    ADD CONSTRAINT fk_acao_evento_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4058 (class 2606 OID 58324602)
-- Dependencies: 3796 367 373
-- Name: fk_ajuda_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY ajuda
    ADD CONSTRAINT fk_ajuda_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4056 (class 2606 OID 58323822)
-- Dependencies: 371 3796 367
-- Name: fk_area_conhecimento_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY area_conhecimento
    ADD CONSTRAINT fk_area_conhecimento_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4057 (class 2606 OID 58323987)
-- Dependencies: 371 371 3816
-- Name: fk_area_conhecimento_pai; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY area_conhecimento
    ADD CONSTRAINT fk_area_conhecimento_pai FOREIGN KEY (id_area_conhecimento_pai) REFERENCES area_conhecimento(id);


--
-- TOC entry 4054 (class 2606 OID 58323872)
-- Dependencies: 367 369 3796
-- Name: fk_area_economia_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY area_economia
    ADD CONSTRAINT fk_area_economia_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4055 (class 2606 OID 58324807)
-- Dependencies: 369 369 3806
-- Name: fk_area_economia_pai; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY area_economia
    ADD CONSTRAINT fk_area_economia_pai FOREIGN KEY (id_area_economia_pai) REFERENCES area_economia(id);


--
-- TOC entry 4049 (class 2606 OID 58375454)
-- Dependencies: 3796 367 363
-- Name: fk_arquivo_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY cpg_arquivo
    ADD CONSTRAINT fk_arquivo_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4052 (class 2606 OID 58323827)
-- Dependencies: 367 367 3796
-- Name: fk_categoria_pai; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY categoria
    ADD CONSTRAINT fk_categoria_pai FOREIGN KEY (id_categoria_pai) REFERENCES categoria(id);


--
-- TOC entry 4053 (class 2606 OID 58324177)
-- Dependencies: 367 3587 315
-- Name: fk_categoria_tipo_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY categoria
    ADD CONSTRAINT fk_categoria_tipo_categoria FOREIGN KEY (id_tipo_categoria) REFERENCES tipo_categoria(id);


--
-- TOC entry 4048 (class 2606 OID 58375359)
-- Dependencies: 3796 361 367
-- Name: fk_codigo_acesso_categoria_acesso; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY cpg_codigo_acesso
    ADD CONSTRAINT fk_codigo_acesso_categoria_acesso FOREIGN KEY (id_categoria_acesso) REFERENCES categoria(id);


--
-- TOC entry 4047 (class 2606 OID 58324267)
-- Dependencies: 3796 361 367
-- Name: fk_codigo_acesso_categoria_prop; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY cpg_codigo_acesso
    ADD CONSTRAINT fk_codigo_acesso_categoria_prop FOREIGN KEY (id_categoria_proprietario) REFERENCES categoria(id);


--
-- TOC entry 4050 (class 2606 OID 58324612)
-- Dependencies: 3796 367 365
-- Name: fk_componente_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY componente
    ADD CONSTRAINT fk_componente_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4051 (class 2606 OID 58375529)
-- Dependencies: 365 317 3596
-- Name: fk_componente_template; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY componente
    ADD CONSTRAINT fk_componente_template FOREIGN KEY (id_template) REFERENCES template(id);


--
-- TOC entry 4046 (class 2606 OID 58323982)
-- Dependencies: 367 3796 359
-- Name: fk_dados_bancarios_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY cpg_dados_bancarios
    ADD CONSTRAINT fk_dados_bancarios_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4039 (class 2606 OID 58324017)
-- Dependencies: 349 3796 367
-- Name: fk_dados_biometricos_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY dados_biometricos
    ADD CONSTRAINT fk_dados_biometricos_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4038 (class 2606 OID 58375519)
-- Dependencies: 3796 367 347
-- Name: fk_dic_expressao_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY dicionario_expressao
    ADD CONSTRAINT fk_dic_expressao_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4044 (class 2606 OID 58323957)
-- Dependencies: 367 357 3796
-- Name: fk_doc_identificacao_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY cpg_documento_identificacao
    ADD CONSTRAINT fk_doc_identificacao_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4045 (class 2606 OID 58324577)
-- Dependencies: 323 3621 357
-- Name: fk_doc_identificacao_pj_emissor; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY cpg_documento_identificacao
    ADD CONSTRAINT fk_doc_identificacao_pj_emissor FOREIGN KEY (id_pessoa_juridica_emissor) REFERENCES pessoa_juridica(id);


--
-- TOC entry 4037 (class 2606 OID 58323937)
-- Dependencies: 345 3796 367
-- Name: fk_evento_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY evento
    ADD CONSTRAINT fk_evento_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4036 (class 2606 OID 58375399)
-- Dependencies: 367 343 3796
-- Name: fk_filter_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY filter
    ADD CONSTRAINT fk_filter_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4035 (class 2606 OID 58324722)
-- Dependencies: 373 341 3827
-- Name: fk_formulario_ajuda; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY formulario
    ADD CONSTRAINT fk_formulario_ajuda FOREIGN KEY (id_ajuda) REFERENCES ajuda(id);


--
-- TOC entry 4033 (class 2606 OID 58323892)
-- Dependencies: 341 3796 367
-- Name: fk_formulario_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY formulario
    ADD CONSTRAINT fk_formulario_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4034 (class 2606 OID 58324067)
-- Dependencies: 3681 341 341
-- Name: fk_formulario_pai; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY formulario
    ADD CONSTRAINT fk_formulario_pai FOREIGN KEY (id_formulario_pai) REFERENCES formulario(id);


--
-- TOC entry 4032 (class 2606 OID 58375524)
-- Dependencies: 3796 339 367
-- Name: fk_include_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY include
    ADD CONSTRAINT fk_include_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4043 (class 2606 OID 58324002)
-- Dependencies: 367 3796 355
-- Name: fk_link_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY cpg_link
    ADD CONSTRAINT fk_link_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4031 (class 2606 OID 58375589)
-- Dependencies: 337 3129 191
-- Name: fk_log_assoccl_perfil; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY log
    ADD CONSTRAINT fk_log_assoccl_perfil FOREIGN KEY (id_assoccl_perfil) REFERENCES basico_pessoa.assoccl_perfil(id);


--
-- TOC entry 4030 (class 2606 OID 58375564)
-- Dependencies: 367 3796 337
-- Name: fk_log_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY log
    ADD CONSTRAINT fk_log_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4029 (class 2606 OID 58375514)
-- Dependencies: 335 3796 367
-- Name: fk_mensagem_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY mensagem
    ADD CONSTRAINT fk_mensagem_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4028 (class 2606 OID 58323857)
-- Dependencies: 3796 367 333
-- Name: fk_metodo_validacao_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY metodo_validacao
    ADD CONSTRAINT fk_metodo_validacao_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4026 (class 2606 OID 58324077)
-- Dependencies: 367 3796 331
-- Name: fk_modulo_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY modulo
    ADD CONSTRAINT fk_modulo_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4027 (class 2606 OID 58375594)
-- Dependencies: 331 331 3644
-- Name: fk_modulo_pai; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY modulo
    ADD CONSTRAINT fk_modulo_pai FOREIGN KEY (id_modulo_pai) REFERENCES modulo(id);


--
-- TOC entry 4025 (class 2606 OID 58375439)
-- Dependencies: 329 367 3796
-- Name: fk_output_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY output
    ADD CONSTRAINT fk_output_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4024 (class 2606 OID 58375404)
-- Dependencies: 367 3796 327
-- Name: fk_perfil_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY perfil
    ADD CONSTRAINT fk_perfil_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4023 (class 2606 OID 58324557)
-- Dependencies: 331 327 3644
-- Name: fk_perfil_modulo; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY perfil
    ADD CONSTRAINT fk_perfil_modulo FOREIGN KEY (id_modulo) REFERENCES modulo(id);


--
-- TOC entry 4022 (class 2606 OID 58375609)
-- Dependencies: 325 3466 281
-- Name: fk_pessoa_email_default; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa
    ADD CONSTRAINT fk_pessoa_email_default FOREIGN KEY (id_email_default) REFERENCES basico_contato.cpg_email(id);


--
-- TOC entry 4017 (class 2606 OID 58323832)
-- Dependencies: 325 211 3195
-- Name: fk_pessoa_endereco_corresp; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa
    ADD CONSTRAINT fk_pessoa_endereco_corresp FOREIGN KEY (id_endereco_correspondencia) REFERENCES basico_localizacao.cpg_endereco(id);


--
-- TOC entry 4021 (class 2606 OID 58375574)
-- Dependencies: 211 325 3195
-- Name: fk_pessoa_endereco_default; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa
    ADD CONSTRAINT fk_pessoa_endereco_default FOREIGN KEY (id_endereco_default) REFERENCES basico_localizacao.cpg_endereco(id);


--
-- TOC entry 4016 (class 2606 OID 58375554)
-- Dependencies: 323 3047 167
-- Name: fk_pessoa_juridica_natureza; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa_juridica
    ADD CONSTRAINT fk_pessoa_juridica_natureza FOREIGN KEY (id_natureza) REFERENCES basico_pessoa_juridica.natureza(id);


--
-- TOC entry 4014 (class 2606 OID 58375364)
-- Dependencies: 323 323 3621
-- Name: fk_pessoa_juridica_pai; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa_juridica
    ADD CONSTRAINT fk_pessoa_juridica_pai FOREIGN KEY (id_pessoa_juridica_pai) REFERENCES pessoa_juridica(id);


--
-- TOC entry 4018 (class 2606 OID 58324092)
-- Dependencies: 355 3736 325
-- Name: fk_pessoa_link_default; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa
    ADD CONSTRAINT fk_pessoa_link_default FOREIGN KEY (id_link_default) REFERENCES cpg_link(id);


--
-- TOC entry 4019 (class 2606 OID 58324312)
-- Dependencies: 325 327 3630
-- Name: fk_pessoa_perfil_padrao; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa
    ADD CONSTRAINT fk_pessoa_perfil_padrao FOREIGN KEY (id_perfil_padrao) REFERENCES perfil(id);


--
-- TOC entry 4020 (class 2606 OID 58324552)
-- Dependencies: 3456 325 279
-- Name: fk_pessoa_telefone_default; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa
    ADD CONSTRAINT fk_pessoa_telefone_default FOREIGN KEY (id_telefone_default) REFERENCES basico_contato.cpg_telefone(id);


--
-- TOC entry 4015 (class 2606 OID 58375484)
-- Dependencies: 177 323 3080
-- Name: fk_pj_area_economia_default; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa_juridica
    ADD CONSTRAINT fk_pj_area_economia_default FOREIGN KEY (id_area_economia_default) REFERENCES basico_pessoa_juridica.assoccl_area_economia(id);


--
-- TOC entry 4008 (class 2606 OID 58323992)
-- Dependencies: 3796 367 323
-- Name: fk_pj_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa_juridica
    ADD CONSTRAINT fk_pj_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4009 (class 2606 OID 58324117)
-- Dependencies: 3466 281 323
-- Name: fk_pj_email_default; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa_juridica
    ADD CONSTRAINT fk_pj_email_default FOREIGN KEY (id_email_default) REFERENCES basico_contato.cpg_email(id);


--
-- TOC entry 4011 (class 2606 OID 58324762)
-- Dependencies: 323 211 3195
-- Name: fk_pj_endereco_correspond; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa_juridica
    ADD CONSTRAINT fk_pj_endereco_correspond FOREIGN KEY (id_endereco_correspondencia) REFERENCES basico_localizacao.cpg_endereco(id);


--
-- TOC entry 4010 (class 2606 OID 58324307)
-- Dependencies: 3195 211 323
-- Name: fk_pj_endereco_default; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa_juridica
    ADD CONSTRAINT fk_pj_endereco_default FOREIGN KEY (id_endereco_default) REFERENCES basico_localizacao.cpg_endereco(id);


--
-- TOC entry 4012 (class 2606 OID 58324827)
-- Dependencies: 355 323 3736
-- Name: fk_pj_link_default; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa_juridica
    ADD CONSTRAINT fk_pj_link_default FOREIGN KEY (id_link_default) REFERENCES cpg_link(id);


--
-- TOC entry 4007 (class 2606 OID 58323922)
-- Dependencies: 325 323 3624
-- Name: fk_pj_pessoa_resp_cadastro; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa_juridica
    ADD CONSTRAINT fk_pj_pessoa_resp_cadastro FOREIGN KEY (id_pessoa_responsavel_cadastro) REFERENCES pessoa(id);


--
-- TOC entry 4013 (class 2606 OID 58324837)
-- Dependencies: 3456 323 279
-- Name: fk_pj_telefone_default; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa_juridica
    ADD CONSTRAINT fk_pj_telefone_default FOREIGN KEY (id_telefone_default) REFERENCES basico_contato.cpg_telefone(id);


--
-- TOC entry 4041 (class 2606 OID 58375394)
-- Dependencies: 3796 353 367
-- Name: fk_produto_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY cpg_produto
    ADD CONSTRAINT fk_produto_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4042 (class 2606 OID 58375499)
-- Dependencies: 367 353 3796
-- Name: fk_produto_categoria_moeda; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY cpg_produto
    ADD CONSTRAINT fk_produto_categoria_moeda FOREIGN KEY (id_categoria_moeda) REFERENCES categoria(id);


--
-- TOC entry 4006 (class 2606 OID 58324647)
-- Dependencies: 321 3796 367
-- Name: fk_profissao_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY profissao
    ADD CONSTRAINT fk_profissao_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4005 (class 2606 OID 58324052)
-- Dependencies: 319 367 3796
-- Name: fk_sequencia_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY sequencia
    ADD CONSTRAINT fk_sequencia_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4004 (class 2606 OID 58375569)
-- Dependencies: 367 317 3796
-- Name: fk_template_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY template
    ADD CONSTRAINT fk_template_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4003 (class 2606 OID 58324172)
-- Dependencies: 3587 315 315
-- Name: fk_tipo_categoria_pai; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY tipo_categoria
    ADD CONSTRAINT fk_tipo_categoria_pai FOREIGN KEY (id_tipo_categoria_pai) REFERENCES tipo_categoria(id);


--
-- TOC entry 4040 (class 2606 OID 58375384)
-- Dependencies: 3796 367 351
-- Name: fk_token_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY cpg_token
    ADD CONSTRAINT fk_token_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4002 (class 2606 OID 58324367)
-- Dependencies: 367 3796 313
-- Name: fk_validator_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY validator
    ADD CONSTRAINT fk_validator_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


SET search_path = basico_acao_aplic_assoc_visao, pg_catalog;

--
-- TOC entry 4000 (class 2606 OID 58324012)
-- Dependencies: 311 3568 309
-- Name: fk_atr_met_rec_ref_atr_met_rec_post; Type: FK CONSTRAINT; Schema: basico_acao_aplic_assoc_visao; Owner: -
--

ALTER TABLE ONLY assoccl_atrib_met_rec_post
    ADD CONSTRAINT fk_atr_met_rec_ref_atr_met_rec_post FOREIGN KEY (id_atributo_metodo_recup_post) REFERENCES atributo_metodo_recup_post(id);


--
-- TOC entry 3999 (class 2606 OID 58323917)
-- Dependencies: 3796 367 309
-- Name: fk_atrib_met_rec_post_categoria; Type: FK CONSTRAINT; Schema: basico_acao_aplic_assoc_visao; Owner: -
--

ALTER TABLE ONLY atributo_metodo_recup_post
    ADD CONSTRAINT fk_atrib_met_rec_post_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 4001 (class 2606 OID 58324027)
-- Dependencies: 311 307 3562
-- Name: fk_atrib_met_rec_post_visao; Type: FK CONSTRAINT; Schema: basico_acao_aplic_assoc_visao; Owner: -
--

ALTER TABLE ONLY assoccl_atrib_met_rec_post
    ADD CONSTRAINT fk_atrib_met_rec_post_visao FOREIGN KEY (id_assoc_visao_ref_post) REFERENCES basico_acao_aplicacao.assoc_visao(id);


SET search_path = basico_acao_aplicacao, pg_catalog;

--
-- TOC entry 3997 (class 2606 OID 58324037)
-- Dependencies: 307 377 3845
-- Name: fk_assoc_visao_acao_aplicacao; Type: FK CONSTRAINT; Schema: basico_acao_aplicacao; Owner: -
--

ALTER TABLE ONLY assoc_visao
    ADD CONSTRAINT fk_assoc_visao_acao_aplicacao FOREIGN KEY (id_acao_aplicacao) REFERENCES basico.acao_aplicacao(id);


--
-- TOC entry 3998 (class 2606 OID 58324232)
-- Dependencies: 367 3796 307
-- Name: fk_assoc_visao_categoria; Type: FK CONSTRAINT; Schema: basico_acao_aplicacao; Owner: -
--

ALTER TABLE ONLY assoc_visao
    ADD CONSTRAINT fk_assoc_visao_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 3992 (class 2606 OID 58324277)
-- Dependencies: 303 3630 327
-- Name: fk_assoccl_acao_aplic_perfil_perfil; Type: FK CONSTRAINT; Schema: basico_acao_aplicacao; Owner: -
--

ALTER TABLE ONLY assoccl_perfil
    ADD CONSTRAINT fk_assoccl_acao_aplic_perfil_perfil FOREIGN KEY (id_perfil) REFERENCES basico.perfil(id);


--
-- TOC entry 3996 (class 2606 OID 58324622)
-- Dependencies: 3845 377 305
-- Name: fk_assoccl_met_valid_ac_aplic; Type: FK CONSTRAINT; Schema: basico_acao_aplicacao; Owner: -
--

ALTER TABLE ONLY assoccl_metodo_validacao
    ADD CONSTRAINT fk_assoccl_met_valid_ac_aplic FOREIGN KEY (id_acao_aplicacao) REFERENCES basico.acao_aplicacao(id);


--
-- TOC entry 3995 (class 2606 OID 58324437)
-- Dependencies: 3650 333 305
-- Name: fk_assoccl_met_valid_met_valid; Type: FK CONSTRAINT; Schema: basico_acao_aplicacao; Owner: -
--

ALTER TABLE ONLY assoccl_metodo_validacao
    ADD CONSTRAINT fk_assoccl_met_valid_met_valid FOREIGN KEY (id_metodo_validacao) REFERENCES basico.metodo_validacao(id);


--
-- TOC entry 3994 (class 2606 OID 58324087)
-- Dependencies: 327 3630 305
-- Name: fk_assoccl_met_valid_perfil; Type: FK CONSTRAINT; Schema: basico_acao_aplicacao; Owner: -
--

ALTER TABLE ONLY assoccl_metodo_validacao
    ADD CONSTRAINT fk_assoccl_met_valid_perfil FOREIGN KEY (id_perfil) REFERENCES basico.perfil(id);


--
-- TOC entry 3993 (class 2606 OID 58375494)
-- Dependencies: 377 303 3845
-- Name: fk_assoccl_perfil_acao_aplicacao; Type: FK CONSTRAINT; Schema: basico_acao_aplicacao; Owner: -
--

ALTER TABLE ONLY assoccl_perfil
    ADD CONSTRAINT fk_assoccl_perfil_acao_aplicacao FOREIGN KEY (id_acao_aplicacao) REFERENCES basico.acao_aplicacao(id);


SET search_path = basico_acao_evento, pg_catalog;

--
-- TOC entry 3990 (class 2606 OID 58324707)
-- Dependencies: 3836 375 301
-- Name: fk_assoccl_include_evento; Type: FK CONSTRAINT; Schema: basico_acao_evento; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_assoccl_include_evento FOREIGN KEY (id_acao_evento) REFERENCES basico.acao_evento(id);


--
-- TOC entry 3991 (class 2606 OID 58375479)
-- Dependencies: 339 301 3671
-- Name: fk_assoccl_include_include; Type: FK CONSTRAINT; Schema: basico_acao_evento; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_assoccl_include_include FOREIGN KEY (id_include) REFERENCES basico.include(id);


SET search_path = basico_ajuda, pg_catalog;

--
-- TOC entry 3989 (class 2606 OID 58375459)
-- Dependencies: 373 3827 299
-- Name: fk_assoccl_link_ajuda; Type: FK CONSTRAINT; Schema: basico_ajuda; Owner: -
--

ALTER TABLE ONLY assoccl_link
    ADD CONSTRAINT fk_assoccl_link_ajuda FOREIGN KEY (id_ajuda) REFERENCES basico.ajuda(id);


--
-- TOC entry 3988 (class 2606 OID 58324197)
-- Dependencies: 299 355 3736
-- Name: fk_assoccl_link_link; Type: FK CONSTRAINT; Schema: basico_ajuda; Owner: -
--

ALTER TABLE ONLY assoccl_link
    ADD CONSTRAINT fk_assoccl_link_link FOREIGN KEY (id_link) REFERENCES basico.cpg_link(id);


SET search_path = basico_assoc_banco, pg_catalog;

--
-- TOC entry 3986 (class 2606 OID 58323802)
-- Dependencies: 3113 185 297
-- Name: fk_assoc_tipo_conta_banco; Type: FK CONSTRAINT; Schema: basico_assoc_banco; Owner: -
--

ALTER TABLE ONLY assoc_tipo_conta
    ADD CONSTRAINT fk_assoc_tipo_conta_banco FOREIGN KEY (id_assoc_banco) REFERENCES basico_pessoa_juridica.assoc_banco(id);


--
-- TOC entry 3987 (class 2606 OID 58323977)
-- Dependencies: 3796 297 367
-- Name: fk_assoc_tipo_conta_categoria; Type: FK CONSTRAINT; Schema: basico_assoc_banco; Owner: -
--

ALTER TABLE ONLY assoc_tipo_conta
    ADD CONSTRAINT fk_assoc_tipo_conta_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


SET search_path = basico_assoc_dados_profis, pg_catalog;

--
-- TOC entry 3985 (class 2606 OID 58324527)
-- Dependencies: 3816 293 371
-- Name: fk_assoccl_dados_profis_area_c; Type: FK CONSTRAINT; Schema: basico_assoc_dados_profis; Owner: -
--

ALTER TABLE ONLY assoccl_area_conhecimento
    ADD CONSTRAINT fk_assoccl_dados_profis_area_c FOREIGN KEY (id_area_conhecimento) REFERENCES basico.area_conhecimento(id);


--
-- TOC entry 3984 (class 2606 OID 58324482)
-- Dependencies: 289 293 3494
-- Name: fk_assoccl_dados_profis_dados; Type: FK CONSTRAINT; Schema: basico_assoc_dados_profis; Owner: -
--

ALTER TABLE ONLY assoccl_area_conhecimento
    ADD CONSTRAINT fk_assoccl_dados_profis_dados FOREIGN KEY (id_assoc_dados_profissionais) REFERENCES basico_assoccl_tipo_vinculo.assoc_dados(id);


SET search_path = basico_assoccl_pessoa_perfil, pg_catalog;

--
-- TOC entry 3983 (class 2606 OID 58324322)
-- Dependencies: 3129 191 291
-- Name: fk_assoccl_pessoa_perfil; Type: FK CONSTRAINT; Schema: basico_assoccl_pessoa_perfil; Owner: -
--

ALTER TABLE ONLY assoc_dados
    ADD CONSTRAINT fk_assoccl_pessoa_perfil FOREIGN KEY (id_assoccl_pessoa_perfil) REFERENCES basico_pessoa.assoccl_perfil(id);


SET search_path = basico_assoccl_tipo_vinculo, pg_catalog;

--
-- TOC entry 3978 (class 2606 OID 58323847)
-- Dependencies: 3124 289 189
-- Name: fk_assoc_dado_assoccl_vin_profi; Type: FK CONSTRAINT; Schema: basico_assoccl_tipo_vinculo; Owner: -
--

ALTER TABLE ONLY assoc_dados
    ADD CONSTRAINT fk_assoc_dado_assoccl_vin_profi FOREIGN KEY (id_assoccl_vinculo_profissional) REFERENCES basico_pessoa.assoccl_tipo_vinculo(id);


--
-- TOC entry 3979 (class 2606 OID 58324272)
-- Dependencies: 323 289 3621
-- Name: fk_assoc_dados_pj_vinculo; Type: FK CONSTRAINT; Schema: basico_assoccl_tipo_vinculo; Owner: -
--

ALTER TABLE ONLY assoc_dados
    ADD CONSTRAINT fk_assoc_dados_pj_vinculo FOREIGN KEY (id_pessoa_juridica_vinculo) REFERENCES basico.pessoa_juridica(id);


--
-- TOC entry 3981 (class 2606 OID 58324592)
-- Dependencies: 289 321 3610
-- Name: fk_assoc_dados_profi_profissao; Type: FK CONSTRAINT; Schema: basico_assoccl_tipo_vinculo; Owner: -
--

ALTER TABLE ONLY assoc_dados
    ADD CONSTRAINT fk_assoc_dados_profi_profissao FOREIGN KEY (id_profissao) REFERENCES basico.profissao(id);


--
-- TOC entry 3980 (class 2606 OID 58324462)
-- Dependencies: 289 3424 271
-- Name: fk_assoc_dados_profis_reg_trab; Type: FK CONSTRAINT; Schema: basico_assoccl_tipo_vinculo; Owner: -
--

ALTER TABLE ONLY assoc_dados
    ADD CONSTRAINT fk_assoc_dados_profis_reg_trab FOREIGN KEY (id_regime_trabalho) REFERENCES basico_dados_profissionais.regime_trabalho(id);


--
-- TOC entry 3982 (class 2606 OID 58324607)
-- Dependencies: 3406 267 289
-- Name: fk_assoc_dados_vinc_empreg; Type: FK CONSTRAINT; Schema: basico_assoccl_tipo_vinculo; Owner: -
--

ALTER TABLE ONLY assoc_dados
    ADD CONSTRAINT fk_assoc_dados_vinc_empreg FOREIGN KEY (id_vinculo_empregaticio) REFERENCES basico_dados_profissionais.vinculo_empregaticio(id);


SET search_path = basico_categoria, pg_catalog;

--
-- TOC entry 3977 (class 2606 OID 58324757)
-- Dependencies: 287 3796 367
-- Name: fk_assoc_chave_estran_categ; Type: FK CONSTRAINT; Schema: basico_categoria; Owner: -
--

ALTER TABLE ONLY assoc_chave_estrangeira
    ADD CONSTRAINT fk_assoc_chave_estran_categ FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 3976 (class 2606 OID 58324742)
-- Dependencies: 287 331 3644
-- Name: fk_assoc_chave_estran_mod; Type: FK CONSTRAINT; Schema: basico_categoria; Owner: -
--

ALTER TABLE ONLY assoc_chave_estrangeira
    ADD CONSTRAINT fk_assoc_chave_estran_mod FOREIGN KEY (id_modulo) REFERENCES basico.modulo(id);


--
-- TOC entry 3975 (class 2606 OID 58324357)
-- Dependencies: 367 285 3796
-- Name: fk_assoc_evento_acao_categoria; Type: FK CONSTRAINT; Schema: basico_categoria; Owner: -
--

ALTER TABLE ONLY assoc_evento_acao
    ADD CONSTRAINT fk_assoc_evento_acao_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


SET search_path = basico_componente, pg_catalog;

--
-- TOC entry 3974 (class 2606 OID 58324627)
-- Dependencies: 283 339 3671
-- Name: fk_assoccl_componente_inc_inc; Type: FK CONSTRAINT; Schema: basico_componente; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_assoccl_componente_inc_inc FOREIGN KEY (id_include) REFERENCES basico.include(id);


--
-- TOC entry 3973 (class 2606 OID 58323797)
-- Dependencies: 365 283 3786
-- Name: fk_assoccl_include_componente; Type: FK CONSTRAINT; Schema: basico_componente; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_assoccl_include_componente FOREIGN KEY (id_componente) REFERENCES basico.componente(id);


SET search_path = basico_contato, pg_catalog;

--
-- TOC entry 3972 (class 2606 OID 58324417)
-- Dependencies: 367 281 3796
-- Name: fk_email_categoria; Type: FK CONSTRAINT; Schema: basico_contato; Owner: -
--

ALTER TABLE ONLY cpg_email
    ADD CONSTRAINT fk_email_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 3971 (class 2606 OID 58324452)
-- Dependencies: 367 279 3796
-- Name: fk_telefone_categoria; Type: FK CONSTRAINT; Schema: basico_contato; Owner: -
--

ALTER TABLE ONLY cpg_telefone
    ADD CONSTRAINT fk_telefone_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


SET search_path = basico_cvc, pg_catalog;

--
-- TOC entry 3970 (class 2606 OID 58324412)
-- Dependencies: 277 3486 287
-- Name: fk_cvc_assoc_chave_estrangeira; Type: FK CONSTRAINT; Schema: basico_cvc; Owner: -
--

ALTER TABLE ONLY cvc
    ADD CONSTRAINT fk_cvc_assoc_chave_estrangeira FOREIGN KEY (id_assoc_chave_estrangeira) REFERENCES basico_categoria.assoc_chave_estrangeira(id);


SET search_path = basico_dados_academicos, pg_catalog;

--
-- TOC entry 3969 (class 2606 OID 58375429)
-- Dependencies: 367 275 3796
-- Name: fk_titulacao_categoria; Type: FK CONSTRAINT; Schema: basico_dados_academicos; Owner: -
--

ALTER TABLE ONLY titulacao
    ADD CONSTRAINT fk_titulacao_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


SET search_path = basico_dados_biometricos, pg_catalog;

--
-- TOC entry 3965 (class 2606 OID 58323887)
-- Dependencies: 273 3796 367
-- Name: fk_assoc_pessoa_cat_raca; Type: FK CONSTRAINT; Schema: basico_dados_biometricos; Owner: -
--

ALTER TABLE ONLY assoc_pessoa
    ADD CONSTRAINT fk_assoc_pessoa_cat_raca FOREIGN KEY (id_categoria_raca) REFERENCES basico.categoria(id);


--
-- TOC entry 3967 (class 2606 OID 58324402)
-- Dependencies: 273 3796 367
-- Name: fk_assoc_pessoa_cat_sexo; Type: FK CONSTRAINT; Schema: basico_dados_biometricos; Owner: -
--

ALTER TABLE ONLY assoc_pessoa
    ADD CONSTRAINT fk_assoc_pessoa_cat_sexo FOREIGN KEY (id_categoria_sexo) REFERENCES basico.categoria(id);


--
-- TOC entry 3968 (class 2606 OID 58375379)
-- Dependencies: 3796 273 367
-- Name: fk_assoc_pessoa_cat_tipo_sang; Type: FK CONSTRAINT; Schema: basico_dados_biometricos; Owner: -
--

ALTER TABLE ONLY assoc_pessoa
    ADD CONSTRAINT fk_assoc_pessoa_cat_tipo_sang FOREIGN KEY (id_categoria_tipo_sanguineo) REFERENCES basico.categoria(id);


--
-- TOC entry 3966 (class 2606 OID 58323997)
-- Dependencies: 349 3712 273
-- Name: fk_assoc_pessoa_dados_bio; Type: FK CONSTRAINT; Schema: basico_dados_biometricos; Owner: -
--

ALTER TABLE ONLY assoc_pessoa
    ADD CONSTRAINT fk_assoc_pessoa_dados_bio FOREIGN KEY (id_dados_biometricos) REFERENCES basico.dados_biometricos(id);


SET search_path = basico_dados_profissionais, pg_catalog;

--
-- TOC entry 3964 (class 2606 OID 58324852)
-- Dependencies: 367 271 3796
-- Name: fk_regime_trabalho_categoria; Type: FK CONSTRAINT; Schema: basico_dados_profissionais; Owner: -
--

ALTER TABLE ONLY regime_trabalho
    ADD CONSTRAINT fk_regime_trabalho_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 3963 (class 2606 OID 58324242)
-- Dependencies: 3424 271 271
-- Name: fk_regime_trabalho_pai; Type: FK CONSTRAINT; Schema: basico_dados_profissionais; Owner: -
--

ALTER TABLE ONLY regime_trabalho
    ADD CONSTRAINT fk_regime_trabalho_pai FOREIGN KEY (id_regime_trabalho_pai) REFERENCES regime_trabalho(id);


--
-- TOC entry 3961 (class 2606 OID 58375474)
-- Dependencies: 3796 267 367
-- Name: fk_vinc_empreg_categoria; Type: FK CONSTRAINT; Schema: basico_dados_profissionais; Owner: -
--

ALTER TABLE ONLY vinculo_empregaticio
    ADD CONSTRAINT fk_vinc_empreg_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 3962 (class 2606 OID 58324522)
-- Dependencies: 269 367 3796
-- Name: fk_vinculo_categoria; Type: FK CONSTRAINT; Schema: basico_dados_profissionais; Owner: -
--

ALTER TABLE ONLY tipo_vinculo
    ADD CONSTRAINT fk_vinculo_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


SET search_path = basico_decorator, pg_catalog;

--
-- TOC entry 3960 (class 2606 OID 58375354)
-- Dependencies: 339 3671 265
-- Name: fk_assoccl_decorator_inc_inc; Type: FK CONSTRAINT; Schema: basico_decorator; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_assoccl_decorator_inc_inc FOREIGN KEY (id_include) REFERENCES basico.include(id);


--
-- TOC entry 3959 (class 2606 OID 58324102)
-- Dependencies: 237 265 3303
-- Name: fk_assoccl_include_decorator; Type: FK CONSTRAINT; Schema: basico_decorator; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_assoccl_include_decorator FOREIGN KEY (id_decorator) REFERENCES basico_formulario.decorator(id);


SET search_path = basico_form_assoccl_elem_grupo, pg_catalog;

--
-- TOC entry 3958 (class 2606 OID 58324732)
-- Dependencies: 237 3303 263
-- Name: fk_assoccl_decorator_decorator; Type: FK CONSTRAINT; Schema: basico_form_assoccl_elem_grupo; Owner: -
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT fk_assoccl_decorator_decorator FOREIGN KEY (id_decorator) REFERENCES basico_formulario.decorator(id);


--
-- TOC entry 3957 (class 2606 OID 58324677)
-- Dependencies: 3355 251 263
-- Name: fk_assoccl_decorator_grupo; Type: FK CONSTRAINT; Schema: basico_form_assoccl_elem_grupo; Owner: -
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT fk_assoccl_decorator_grupo FOREIGN KEY (id_grupo) REFERENCES basico_form_assoccl_elemento.grupo(id);


SET search_path = basico_form_assoccl_elemento, pg_catalog;

--
-- TOC entry 3953 (class 2606 OID 58324842)
-- Dependencies: 3700 259 345
-- Name: fk_assoccl_assoccl_elem_even_even; Type: FK CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_evento
    ADD CONSTRAINT fk_assoccl_assoccl_elem_even_even FOREIGN KEY (id_evento) REFERENCES basico.evento(id);


--
-- TOC entry 3955 (class 2606 OID 58323907)
-- Dependencies: 3338 261 247
-- Name: fk_assoccl_dec_assoccl_elem; Type: FK CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT fk_assoccl_dec_assoccl_elem FOREIGN KEY (id_assoccl_elemento) REFERENCES basico_formulario.assoccl_elemento(id);


--
-- TOC entry 3956 (class 2606 OID 58324597)
-- Dependencies: 237 261 3303
-- Name: fk_assoccl_dec_decorator; Type: FK CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT fk_assoccl_dec_decorator FOREIGN KEY (id_decorator) REFERENCES basico_formulario.decorator(id);


--
-- TOC entry 3951 (class 2606 OID 58324447)
-- Dependencies: 3338 247 257
-- Name: fk_assoccl_elem_assoccl_filter_elemento; Type: FK CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_filter
    ADD CONSTRAINT fk_assoccl_elem_assoccl_filter_elemento FOREIGN KEY (id_assoccl_elemento) REFERENCES basico_formulario.assoccl_elemento(id);


--
-- TOC entry 3950 (class 2606 OID 58323932)
-- Dependencies: 3690 257 343
-- Name: fk_assoccl_elem_assoccl_filter_filter; Type: FK CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_filter
    ADD CONSTRAINT fk_assoccl_elem_assoccl_filter_filter FOREIGN KEY (id_filter) REFERENCES basico.filter(id);


--
-- TOC entry 3952 (class 2606 OID 58324062)
-- Dependencies: 259 375 3836
-- Name: fk_assoccl_evento_acao_evento; Type: FK CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_evento
    ADD CONSTRAINT fk_assoccl_evento_acao_evento FOREIGN KEY (id_acao_evento) REFERENCES basico.acao_evento(id);


--
-- TOC entry 3954 (class 2606 OID 58375549)
-- Dependencies: 247 3338 259
-- Name: fk_assoccl_evento_assoccl_elem; Type: FK CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_evento
    ADD CONSTRAINT fk_assoccl_evento_assoccl_elem FOREIGN KEY (id_assoccl_elemento) REFERENCES basico_formulario.assoccl_elemento(id);


--
-- TOC entry 3949 (class 2606 OID 58324832)
-- Dependencies: 3338 255 247
-- Name: fk_assoccl_include_assoccl_elem; Type: FK CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_assoccl_include_assoccl_elem FOREIGN KEY (id_assoccl_elemento) REFERENCES basico_formulario.assoccl_elemento(id);


--
-- TOC entry 3946 (class 2606 OID 58324122)
-- Dependencies: 247 3338 253
-- Name: fk_assoccl_valid_assoc_elem; Type: FK CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_validator
    ADD CONSTRAINT fk_assoccl_valid_assoc_elem FOREIGN KEY (id_assoccl_elemento) REFERENCES basico_formulario.assoccl_elemento(id);


--
-- TOC entry 3947 (class 2606 OID 58324147)
-- Dependencies: 313 253 3585
-- Name: fk_assoccl_valid_validator; Type: FK CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_validator
    ADD CONSTRAINT fk_assoccl_valid_validator FOREIGN KEY (id_validator) REFERENCES basico.validator(id);


--
-- TOC entry 3948 (class 2606 OID 58324227)
-- Dependencies: 339 255 3671
-- Name: fk_asssoccl_include_include; Type: FK CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_asssoccl_include_include FOREIGN KEY (id_include) REFERENCES basico.include(id);


SET search_path = basico_formulario, pg_catalog;

--
-- TOC entry 3925 (class 2606 OID 58324787)
-- Dependencies: 3248 233 223
-- Name: fk_assocag_grupo_rascunho; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY rascunho
    ADD CONSTRAINT fk_assocag_grupo_rascunho FOREIGN KEY (id_assocag_grupo) REFERENCES basico_formulario_rascunho.assocag_grupo(id);


--
-- TOC entry 3944 (class 2606 OID 58323967)
-- Dependencies: 3681 249 341
-- Name: fk_assoccl_decorator_form; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT fk_assoccl_decorator_form FOREIGN KEY (id_formulario) REFERENCES basico.formulario(id);


--
-- TOC entry 3940 (class 2606 OID 58324297)
-- Dependencies: 373 247 3827
-- Name: fk_assoccl_elemento_ajuda; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_elemento
    ADD CONSTRAINT fk_assoccl_elemento_ajuda FOREIGN KEY (id_ajuda) REFERENCES basico.ajuda(id);


--
-- TOC entry 3942 (class 2606 OID 58324747)
-- Dependencies: 247 235 3295
-- Name: fk_assoccl_elemento_elemento; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_elemento
    ADD CONSTRAINT fk_assoccl_elemento_elemento FOREIGN KEY (id_elemento) REFERENCES elemento(id);


--
-- TOC entry 3941 (class 2606 OID 58324532)
-- Dependencies: 247 341 3681
-- Name: fk_assoccl_elemento_formulario; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_elemento
    ADD CONSTRAINT fk_assoccl_elemento_formulario FOREIGN KEY (id_formulario) REFERENCES basico.formulario(id);


--
-- TOC entry 3943 (class 2606 OID 58375419)
-- Dependencies: 251 3355 247
-- Name: fk_assoccl_elemento_grupo; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_elemento
    ADD CONSTRAINT fk_assoccl_elemento_grupo FOREIGN KEY (id_grupo) REFERENCES basico_form_assoccl_elemento.grupo(id);


--
-- TOC entry 3938 (class 2606 OID 58324192)
-- Dependencies: 341 3681 245
-- Name: fk_assoccl_evento_formulario; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_evento
    ADD CONSTRAINT fk_assoccl_evento_formulario FOREIGN KEY (id_formulario) REFERENCES basico.formulario(id);


--
-- TOC entry 3939 (class 2606 OID 58324672)
-- Dependencies: 245 3700 345
-- Name: fk_assoccl_form_evento_evento; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_evento
    ADD CONSTRAINT fk_assoccl_form_evento_evento FOREIGN KEY (id_evento) REFERENCES basico.evento(id);


--
-- TOC entry 3937 (class 2606 OID 58324582)
-- Dependencies: 3671 339 243
-- Name: fk_assoccl_formulario_inc_inc; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_assoccl_formulario_inc_inc FOREIGN KEY (id_include) REFERENCES basico.include(id);


--
-- TOC entry 3936 (class 2606 OID 58324097)
-- Dependencies: 3681 341 243
-- Name: fk_assoccl_include_formulario; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_assoccl_include_formulario FOREIGN KEY (id_formulario) REFERENCES basico.formulario(id);


--
-- TOC entry 3935 (class 2606 OID 58324387)
-- Dependencies: 241 341 3681
-- Name: fk_assoccl_modulo_formulario; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_modulo
    ADD CONSTRAINT fk_assoccl_modulo_formulario FOREIGN KEY (id_formulario) REFERENCES basico.formulario(id);


--
-- TOC entry 3932 (class 2606 OID 58324047)
-- Dependencies: 239 341 3681
-- Name: fk_assoccl_template_formulario; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_template
    ADD CONSTRAINT fk_assoccl_template_formulario FOREIGN KEY (id_formulario) REFERENCES basico.formulario(id);


--
-- TOC entry 3933 (class 2606 OID 58324337)
-- Dependencies: 317 239 3596
-- Name: fk_assoccl_template_template; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_template
    ADD CONSTRAINT fk_assoccl_template_template FOREIGN KEY (id_template) REFERENCES basico.template(id);


--
-- TOC entry 3945 (class 2606 OID 58324847)
-- Dependencies: 249 3303 237
-- Name: fk_assocl_decorator_decorator; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT fk_assocl_decorator_decorator FOREIGN KEY (id_decorator) REFERENCES decorator(id);


--
-- TOC entry 3927 (class 2606 OID 58375464)
-- Dependencies: 3038 165 233
-- Name: fk_assocsq_acao_aplic_rascunho; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY rascunho
    ADD CONSTRAINT fk_assocsq_acao_aplic_rascunho FOREIGN KEY (id_assocsq_acao_aplicacao) REFERENCES basico_sequencia.assocsq_acao_aplicacao(id);


--
-- TOC entry 3931 (class 2606 OID 58375584)
-- Dependencies: 237 367 3796
-- Name: fk_decorator_categoria; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY decorator
    ADD CONSTRAINT fk_decorator_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 3928 (class 2606 OID 58323877)
-- Dependencies: 373 3827 235
-- Name: fk_elemento_ajuda; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY elemento
    ADD CONSTRAINT fk_elemento_ajuda FOREIGN KEY (id_ajuda) REFERENCES basico.ajuda(id);


--
-- TOC entry 3929 (class 2606 OID 58375389)
-- Dependencies: 3796 367 235
-- Name: fk_elemento_categoria; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY elemento
    ADD CONSTRAINT fk_elemento_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 3930 (class 2606 OID 58375434)
-- Dependencies: 235 3786 365
-- Name: fk_elemento_componente; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY elemento
    ADD CONSTRAINT fk_elemento_componente FOREIGN KEY (id_componente) REFERENCES basico.componente(id);


--
-- TOC entry 3934 (class 2606 OID 58324152)
-- Dependencies: 241 331 3644
-- Name: fk_form_assoccl_modulo_modulo; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_modulo
    ADD CONSTRAINT fk_form_assoccl_modulo_modulo FOREIGN KEY (id_modulo) REFERENCES basico.modulo(id);


--
-- TOC entry 3924 (class 2606 OID 58324182)
-- Dependencies: 3562 307 233
-- Name: fk_rascunho_assoc_visao; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY rascunho
    ADD CONSTRAINT fk_rascunho_assoc_visao FOREIGN KEY (id_assoc_visao_origem) REFERENCES basico_acao_aplicacao.assoc_visao(id);


--
-- TOC entry 3923 (class 2606 OID 58323942)
-- Dependencies: 191 3129 233
-- Name: fk_rascunho_assoccl_perfil; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY rascunho
    ADD CONSTRAINT fk_rascunho_assoccl_perfil FOREIGN KEY (id_assoccl_perfil) REFERENCES basico_pessoa.assoccl_perfil(id);


--
-- TOC entry 3922 (class 2606 OID 58323862)
-- Dependencies: 233 3796 367
-- Name: fk_rascunho_categoria; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY rascunho
    ADD CONSTRAINT fk_rascunho_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 3926 (class 2606 OID 58375424)
-- Dependencies: 233 3278 233
-- Name: fk_rascunho_pai; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY rascunho
    ADD CONSTRAINT fk_rascunho_pai FOREIGN KEY (id_rascunho_pai) REFERENCES rascunho(id);


SET search_path = basico_formulario_elemento, pg_catalog;

--
-- TOC entry 3917 (class 2606 OID 58324142)
-- Dependencies: 3295 235 229
-- Name: fk_assoccl_evento_elemento; Type: FK CONSTRAINT; Schema: basico_formulario_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_evento
    ADD CONSTRAINT fk_assoccl_evento_elemento FOREIGN KEY (id_elemento) REFERENCES basico_formulario.elemento(id);


--
-- TOC entry 3919 (class 2606 OID 58324637)
-- Dependencies: 345 229 3700
-- Name: fk_assoccl_evento_evento; Type: FK CONSTRAINT; Schema: basico_formulario_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_evento
    ADD CONSTRAINT fk_assoccl_evento_evento FOREIGN KEY (id_evento) REFERENCES basico.evento(id);


--
-- TOC entry 3916 (class 2606 OID 58324032)
-- Dependencies: 227 3295 235
-- Name: fk_assoccl_filter_elemento; Type: FK CONSTRAINT; Schema: basico_formulario_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_filter
    ADD CONSTRAINT fk_assoccl_filter_elemento FOREIGN KEY (id_elemento) REFERENCES basico_formulario.elemento(id);


--
-- TOC entry 3915 (class 2606 OID 58323962)
-- Dependencies: 227 3690 343
-- Name: fk_assoccl_filter_filter; Type: FK CONSTRAINT; Schema: basico_formulario_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_filter
    ADD CONSTRAINT fk_assoccl_filter_filter FOREIGN KEY (id_filter) REFERENCES basico.filter(id);


--
-- TOC entry 3913 (class 2606 OID 58324512)
-- Dependencies: 225 235 3295
-- Name: fk_assoccl_validator_elem; Type: FK CONSTRAINT; Schema: basico_formulario_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_validator
    ADD CONSTRAINT fk_assoccl_validator_elem FOREIGN KEY (id_elemento) REFERENCES basico_formulario.elemento(id);


--
-- TOC entry 3914 (class 2606 OID 58324652)
-- Dependencies: 225 3585 313
-- Name: fk_assoccl_validator_validator; Type: FK CONSTRAINT; Schema: basico_formulario_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_validator
    ADD CONSTRAINT fk_assoccl_validator_validator FOREIGN KEY (id_validator) REFERENCES basico.validator(id);


--
-- TOC entry 3920 (class 2606 OID 58324457)
-- Dependencies: 3295 235 231
-- Name: fk_assocl_elemento_elemento; Type: FK CONSTRAINT; Schema: basico_formulario_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT fk_assocl_elemento_elemento FOREIGN KEY (id_elemento) REFERENCES basico_formulario.elemento(id);


--
-- TOC entry 3921 (class 2606 OID 58324547)
-- Dependencies: 3303 237 231
-- Name: fk_form_assoccl_decorator_decorator; Type: FK CONSTRAINT; Schema: basico_formulario_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT fk_form_assoccl_decorator_decorator FOREIGN KEY (id_decorator) REFERENCES basico_formulario.decorator(id);


--
-- TOC entry 3918 (class 2606 OID 58324252)
-- Dependencies: 3836 229 375
-- Name: fk_form_element_assoccl_evento_acao_evento; Type: FK CONSTRAINT; Schema: basico_formulario_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_evento
    ADD CONSTRAINT fk_form_element_assoccl_evento_acao_evento FOREIGN KEY (id_acao_evento) REFERENCES basico.acao_evento(id);


SET search_path = basico_formulario_rascunho, pg_catalog;

--
-- TOC entry 3912 (class 2606 OID 58324302)
-- Dependencies: 223 3129 191
-- Name: fk_assocag_grupo_assoccl_perfil; Type: FK CONSTRAINT; Schema: basico_formulario_rascunho; Owner: -
--

ALTER TABLE ONLY assocag_grupo
    ADD CONSTRAINT fk_assocag_grupo_assoccl_perfil FOREIGN KEY (id_assoccl_perfil) REFERENCES basico_pessoa.assoccl_perfil(id);


SET search_path = basico_localizacao, pg_catalog;

--
-- TOC entry 3908 (class 2606 OID 58324217)
-- Dependencies: 219 3796 367
-- Name: fk_assoc_estado_categoria; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY assoc_estado
    ADD CONSTRAINT fk_assoc_estado_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 3910 (class 2606 OID 58375579)
-- Dependencies: 219 209 3188
-- Name: fk_assoc_estado_pais; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY assoc_estado
    ADD CONSTRAINT fk_assoc_estado_pais FOREIGN KEY (id_pais) REFERENCES pais(id);


--
-- TOC entry 3907 (class 2606 OID 58324567)
-- Dependencies: 217 3242 221
-- Name: fk_assoc_logradouro_assoc_bairro; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY assoc_logradouro
    ADD CONSTRAINT fk_assoc_logradouro_assoc_bairro FOREIGN KEY (id_bairro) REFERENCES assoc_bairro(id);


--
-- TOC entry 3906 (class 2606 OID 58324427)
-- Dependencies: 367 217 3796
-- Name: fk_assoc_logradouro_categoria; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY assoc_logradouro
    ADD CONSTRAINT fk_assoc_logradouro_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 3911 (class 2606 OID 58324257)
-- Dependencies: 215 221 3217
-- Name: fk_assoc_municipio_assoc_bairro; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY assoc_bairro
    ADD CONSTRAINT fk_assoc_municipio_assoc_bairro FOREIGN KEY (id_municipio) REFERENCES assoc_municipio(id);


--
-- TOC entry 3903 (class 2606 OID 58324477)
-- Dependencies: 215 3235 219
-- Name: fk_assoc_municipio_assoc_estado; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY assoc_municipio
    ADD CONSTRAINT fk_assoc_municipio_assoc_estado FOREIGN KEY (id_estado) REFERENCES assoc_estado(id);


--
-- TOC entry 3904 (class 2606 OID 58375509)
-- Dependencies: 367 215 3796
-- Name: fk_assoc_municipio_categoria; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY assoc_municipio
    ADD CONSTRAINT fk_assoc_municipio_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 3898 (class 2606 OID 58324072)
-- Dependencies: 213 221 3242
-- Name: fk_cep_assoc_bairro; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY codigo_postal
    ADD CONSTRAINT fk_cep_assoc_bairro FOREIGN KEY (id_bairro) REFERENCES assoc_bairro(id);


--
-- TOC entry 3902 (class 2606 OID 58375539)
-- Dependencies: 3235 219 213
-- Name: fk_cep_assoc_estado; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY codigo_postal
    ADD CONSTRAINT fk_cep_assoc_estado FOREIGN KEY (id_estado) REFERENCES assoc_estado(id);


--
-- TOC entry 3900 (class 2606 OID 58324767)
-- Dependencies: 3225 213 217
-- Name: fk_cep_assoc_logradouro; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY codigo_postal
    ADD CONSTRAINT fk_cep_assoc_logradouro FOREIGN KEY (id_logradouro) REFERENCES assoc_logradouro(id);


--
-- TOC entry 3901 (class 2606 OID 58375414)
-- Dependencies: 213 215 3217
-- Name: fk_cep_assoc_municipio; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY codigo_postal
    ADD CONSTRAINT fk_cep_assoc_municipio FOREIGN KEY (id_municipio) REFERENCES assoc_municipio(id);


--
-- TOC entry 3899 (class 2606 OID 58324642)
-- Dependencies: 367 3796 213
-- Name: fk_cep_categoria; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY codigo_postal
    ADD CONSTRAINT fk_cep_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 3897 (class 2606 OID 58323952)
-- Dependencies: 3188 213 209
-- Name: fk_cep_pais; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY codigo_postal
    ADD CONSTRAINT fk_cep_pais FOREIGN KEY (id_pais) REFERENCES pais(id);


--
-- TOC entry 3896 (class 2606 OID 58375599)
-- Dependencies: 3129 191 211
-- Name: fk_endereco_assoc_perfil; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY cpg_endereco
    ADD CONSTRAINT fk_endereco_assoc_perfil FOREIGN KEY (id_assoccl_perfil_validador) REFERENCES basico_pessoa.assoccl_perfil(id);


--
-- TOC entry 3895 (class 2606 OID 58375534)
-- Dependencies: 211 367 3796
-- Name: fk_endereco_categoria; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY cpg_endereco
    ADD CONSTRAINT fk_endereco_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 3909 (class 2606 OID 58324287)
-- Dependencies: 219 219 3235
-- Name: fk_estado_pai; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY assoc_estado
    ADD CONSTRAINT fk_estado_pai FOREIGN KEY (id_estado_pai) REFERENCES assoc_estado(id);


--
-- TOC entry 3905 (class 2606 OID 58375604)
-- Dependencies: 3217 215 215
-- Name: fk_municipio_pai; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY assoc_municipio
    ADD CONSTRAINT fk_municipio_pai FOREIGN KEY (id_municipio_pai) REFERENCES assoc_municipio(id);


SET search_path = basico_mensagem, pg_catalog;

--
-- TOC entry 3892 (class 2606 OID 58324392)
-- Dependencies: 3129 191 205
-- Name: fk_assoccl_assoccl_pes_per; Type: FK CONSTRAINT; Schema: basico_mensagem; Owner: -
--

ALTER TABLE ONLY assoccl_assoccl_pessoa_perfil
    ADD CONSTRAINT fk_assoccl_assoccl_pes_per FOREIGN KEY (id_assoccl_perfil) REFERENCES basico_pessoa.assoccl_perfil(id);


--
-- TOC entry 3893 (class 2606 OID 58324792)
-- Dependencies: 367 3796 205
-- Name: fk_assoccl_assoccl_pes_per_cat; Type: FK CONSTRAINT; Schema: basico_mensagem; Owner: -
--

ALTER TABLE ONLY assoccl_assoccl_pessoa_perfil
    ADD CONSTRAINT fk_assoccl_assoccl_pes_per_cat FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 3891 (class 2606 OID 58324042)
-- Dependencies: 3657 205 335
-- Name: fk_assoccl_assoccl_pes_per_m; Type: FK CONSTRAINT; Schema: basico_mensagem; Owner: -
--

ALTER TABLE ONLY assoccl_assoccl_pessoa_perfil
    ADD CONSTRAINT fk_assoccl_assoccl_pes_per_m FOREIGN KEY (id_mensagem) REFERENCES basico.mensagem(id);


--
-- TOC entry 3894 (class 2606 OID 58375409)
-- Dependencies: 207 3657 335
-- Name: fk_mensagem_email; Type: FK CONSTRAINT; Schema: basico_mensagem; Owner: -
--

ALTER TABLE ONLY assoc_email
    ADD CONSTRAINT fk_mensagem_email FOREIGN KEY (id_mensagem) REFERENCES basico.mensagem(id);


--
-- TOC entry 3890 (class 2606 OID 58324702)
-- Dependencies: 367 203 3796
-- Name: fk_template_mensagem_categoria; Type: FK CONSTRAINT; Schema: basico_mensagem; Owner: -
--

ALTER TABLE ONLY template
    ADD CONSTRAINT fk_template_mensagem_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


SET search_path = basico_mensagem_assoc_email, pg_catalog;

--
-- TOC entry 3889 (class 2606 OID 58375374)
-- Dependencies: 3181 201 207
-- Name: fk_assoc_dados_assoc_email; Type: FK CONSTRAINT; Schema: basico_mensagem_assoc_email; Owner: -
--

ALTER TABLE ONLY assoc_dados
    ADD CONSTRAINT fk_assoc_dados_assoc_email FOREIGN KEY (id_assoc_email) REFERENCES basico_mensagem.assoc_email(id);


SET search_path = basico_metodo_validacao, pg_catalog;

--
-- TOC entry 3888 (class 2606 OID 58375449)
-- Dependencies: 333 199 3650
-- Name: fk_assoccl_include_met_validacao; Type: FK CONSTRAINT; Schema: basico_metodo_validacao; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_assoccl_include_met_validacao FOREIGN KEY (id_metodo_validacao) REFERENCES basico.metodo_validacao(id);


--
-- TOC entry 3887 (class 2606 OID 58324352)
-- Dependencies: 3671 199 339
-- Name: fk_assoccl_met_valid_inc_inc; Type: FK CONSTRAINT; Schema: basico_metodo_validacao; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_assoccl_met_valid_inc_inc FOREIGN KEY (id_include) REFERENCES basico.include(id);


SET search_path = basico_output, pg_catalog;

--
-- TOC entry 3885 (class 2606 OID 58323927)
-- Dependencies: 329 3638 197
-- Name: fk_assoccl_include_output; Type: FK CONSTRAINT; Schema: basico_output; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_assoccl_include_output FOREIGN KEY (id_output) REFERENCES basico.output(id);


--
-- TOC entry 3886 (class 2606 OID 58324657)
-- Dependencies: 197 3671 339
-- Name: fk_assoccl_output_inc_inc; Type: FK CONSTRAINT; Schema: basico_output; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_assoccl_output_inc_inc FOREIGN KEY (id_include) REFERENCES basico.include(id);


SET search_path = basico_perfil, pg_catalog;

--
-- TOC entry 3884 (class 2606 OID 58324222)
-- Dependencies: 327 3630 195
-- Name: fk_assoccl_modulo_modulo; Type: FK CONSTRAINT; Schema: basico_perfil; Owner: -
--

ALTER TABLE ONLY assoccl_modulo
    ADD CONSTRAINT fk_assoccl_modulo_modulo FOREIGN KEY (id_perfil) REFERENCES basico.perfil(id);


--
-- TOC entry 3883 (class 2606 OID 58324212)
-- Dependencies: 195 331 3644
-- Name: fk_assoccl_modulo_perfil; Type: FK CONSTRAINT; Schema: basico_perfil; Owner: -
--

ALTER TABLE ONLY assoccl_modulo
    ADD CONSTRAINT fk_assoccl_modulo_perfil FOREIGN KEY (id_modulo) REFERENCES basico.modulo(id);


SET search_path = basico_pessoa, pg_catalog;

--
-- TOC entry 3882 (class 2606 OID 58324372)
-- Dependencies: 3624 325 193
-- Name: fk_assoc_dados_pessoa; Type: FK CONSTRAINT; Schema: basico_pessoa; Owner: -
--

ALTER TABLE ONLY assoc_dados
    ADD CONSTRAINT fk_assoc_dados_pessoa FOREIGN KEY (id_pessoa) REFERENCES basico.pessoa(id);


--
-- TOC entry 3881 (class 2606 OID 58324617)
-- Dependencies: 3624 325 191
-- Name: fk_assoccl_perfil_pessoa; Type: FK CONSTRAINT; Schema: basico_pessoa; Owner: -
--

ALTER TABLE ONLY assoccl_perfil
    ADD CONSTRAINT fk_assoccl_perfil_pessoa FOREIGN KEY (id_pessoa) REFERENCES basico.pessoa(id);


--
-- TOC entry 3880 (class 2606 OID 58324247)
-- Dependencies: 191 3630 327
-- Name: fk_assoccl_pessoa_perfil_perfil; Type: FK CONSTRAINT; Schema: basico_pessoa; Owner: -
--

ALTER TABLE ONLY assoccl_perfil
    ADD CONSTRAINT fk_assoccl_pessoa_perfil_perfil FOREIGN KEY (id_perfil) REFERENCES basico.perfil(id);


--
-- TOC entry 3878 (class 2606 OID 58375469)
-- Dependencies: 189 325 3624
-- Name: fk_assoccl_vinc_profi_pessoa; Type: FK CONSTRAINT; Schema: basico_pessoa; Owner: -
--

ALTER TABLE ONLY assoccl_tipo_vinculo
    ADD CONSTRAINT fk_assoccl_vinc_profi_pessoa FOREIGN KEY (id_pessoa) REFERENCES basico.pessoa(id);


--
-- TOC entry 3879 (class 2606 OID 58375544)
-- Dependencies: 189 3415 269
-- Name: fk_assoccl_vinc_profi_tipo_vinc; Type: FK CONSTRAINT; Schema: basico_pessoa; Owner: -
--

ALTER TABLE ONLY assoccl_tipo_vinculo
    ADD CONSTRAINT fk_assoccl_vinc_profi_tipo_vinc FOREIGN KEY (id_tipo_vinculo) REFERENCES basico_dados_profissionais.tipo_vinculo(id);


--
-- TOC entry 3877 (class 2606 OID 58324362)
-- Dependencies: 3624 187 325
-- Name: fk_login_pessoa; Type: FK CONSTRAINT; Schema: basico_pessoa; Owner: -
--

ALTER TABLE ONLY login
    ADD CONSTRAINT fk_login_pessoa FOREIGN KEY (id_pessoa) REFERENCES basico.pessoa(id);


SET search_path = basico_pessoa_juridica, pg_catalog;

--
-- TOC entry 3875 (class 2606 OID 58324687)
-- Dependencies: 3796 367 185
-- Name: fk_assoc_banco_categoria; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoc_banco
    ADD CONSTRAINT fk_assoc_banco_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 3876 (class 2606 OID 58324802)
-- Dependencies: 323 3621 185
-- Name: fk_assoc_banco_pj; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoc_banco
    ADD CONSTRAINT fk_assoc_banco_pj FOREIGN KEY (id_pessoa_juridica) REFERENCES basico.pessoa_juridica(id);


--
-- TOC entry 3874 (class 2606 OID 58323807)
-- Dependencies: 3621 183 323
-- Name: fk_assoc_dados_pj; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoc_dados
    ADD CONSTRAINT fk_assoc_dados_pj FOREIGN KEY (id_pessoa_juridica) REFERENCES basico.pessoa_juridica(id);


--
-- TOC entry 3861 (class 2606 OID 58323842)
-- Dependencies: 173 367 3796
-- Name: fk_assoc_faturamento_categoria; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoccl_faturamento
    ADD CONSTRAINT fk_assoc_faturamento_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 3862 (class 2606 OID 58324202)
-- Dependencies: 173 3621 323
-- Name: fk_assoc_faturamento_pj; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoccl_faturamento
    ADD CONSTRAINT fk_assoc_faturamento_pj FOREIGN KEY (id_pessoa_juridica) REFERENCES basico.pessoa_juridica(id);


--
-- TOC entry 3857 (class 2606 OID 58324492)
-- Dependencies: 367 171 3796
-- Name: fk_assoc_quadro_func_categoria; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoccl_quadro_funcionario
    ADD CONSTRAINT fk_assoc_quadro_func_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 3873 (class 2606 OID 58375349)
-- Dependencies: 323 3621 181
-- Name: fk_assocag_incub_pj_incubada; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assocag_incubadora
    ADD CONSTRAINT fk_assocag_incub_pj_incubada FOREIGN KEY (id_pessoa_juridica_incubada) REFERENCES basico.pessoa_juridica(id);


--
-- TOC entry 3871 (class 2606 OID 58324292)
-- Dependencies: 367 3796 181
-- Name: fk_assocag_incubadora_categoria; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assocag_incubadora
    ADD CONSTRAINT fk_assocag_incubadora_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 3872 (class 2606 OID 58324517)
-- Dependencies: 3621 181 323
-- Name: fk_assocag_incubadora_pj; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assocag_incubadora
    ADD CONSTRAINT fk_assocag_incubadora_pj FOREIGN KEY (id_pessoa_juridica) REFERENCES basico.pessoa_juridica(id);


--
-- TOC entry 3870 (class 2606 OID 58375504)
-- Dependencies: 179 179 3090
-- Name: fk_assocag_parc_assocag_parc; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assocag_parceria
    ADD CONSTRAINT fk_assocag_parc_assocag_parc FOREIGN KEY (id_assocag_parceria) REFERENCES assocag_parceria(id);


--
-- TOC entry 3867 (class 2606 OID 58324112)
-- Dependencies: 367 179 3796
-- Name: fk_assocag_parceria_categoria; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assocag_parceria
    ADD CONSTRAINT fk_assocag_parceria_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 3869 (class 2606 OID 58324797)
-- Dependencies: 3621 179 323
-- Name: fk_assocag_parceria_pj; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assocag_parceria
    ADD CONSTRAINT fk_assocag_parceria_pj FOREIGN KEY (id_pessoa_juridica) REFERENCES basico.pessoa_juridica(id);


--
-- TOC entry 3868 (class 2606 OID 58324737)
-- Dependencies: 3621 179 323
-- Name: fk_assocag_parceria_pj_parc; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assocag_parceria
    ADD CONSTRAINT fk_assocag_parceria_pj_parc FOREIGN KEY (id_pessoa_juridica_parceira) REFERENCES basico.pessoa_juridica(id);


--
-- TOC entry 3866 (class 2606 OID 58324692)
-- Dependencies: 3806 177 369
-- Name: fk_assoccl_area_econ_area; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoccl_area_economia
    ADD CONSTRAINT fk_assoccl_area_econ_area FOREIGN KEY (id_area_economia) REFERENCES basico.area_economia(id);


--
-- TOC entry 3865 (class 2606 OID 58323867)
-- Dependencies: 177 3621 323
-- Name: fk_assoccl_area_econ_pj; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoccl_area_economia
    ADD CONSTRAINT fk_assoccl_area_econ_pj FOREIGN KEY (id_pessoa_juridica) REFERENCES basico.pessoa_juridica(id);


--
-- TOC entry 3864 (class 2606 OID 58324022)
-- Dependencies: 3053 169 175
-- Name: fk_assoccl_cap_social_cap; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoccl_capital_social
    ADD CONSTRAINT fk_assoccl_cap_social_cap FOREIGN KEY (id_capital_social) REFERENCES capital_social(id);


--
-- TOC entry 3863 (class 2606 OID 58323902)
-- Dependencies: 323 3621 175
-- Name: fk_assoccl_cap_social_pj; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoccl_capital_social
    ADD CONSTRAINT fk_assoccl_cap_social_pj FOREIGN KEY (id_pessoa_juridica) REFERENCES basico.pessoa_juridica(id);


--
-- TOC entry 3859 (class 2606 OID 58324752)
-- Dependencies: 371 3816 171
-- Name: fk_assoccl_quadro_func_area_conh; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoccl_quadro_funcionario
    ADD CONSTRAINT fk_assoccl_quadro_func_area_conh FOREIGN KEY (id_area_conhecimento_predom) REFERENCES basico.area_conhecimento(id);


--
-- TOC entry 3856 (class 2606 OID 58324542)
-- Dependencies: 167 3796 367
-- Name: fk_natureza_categoria; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY natureza
    ADD CONSTRAINT fk_natureza_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 3860 (class 2606 OID 58375444)
-- Dependencies: 171 323 3621
-- Name: fk_pj_quadro_funcionarios; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoccl_quadro_funcionario
    ADD CONSTRAINT fk_pj_quadro_funcionarios FOREIGN KEY (id_pessoa_juridica) REFERENCES basico.pessoa_juridica(id);


--
-- TOC entry 3858 (class 2606 OID 58324502)
-- Dependencies: 3439 171 275
-- Name: fk_quadro_func_titulacao; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoccl_quadro_funcionario
    ADD CONSTRAINT fk_quadro_func_titulacao FOREIGN KEY (id_titulacao) REFERENCES basico_dados_academicos.titulacao(id);


SET search_path = basico_sequencia, pg_catalog;

--
-- TOC entry 3855 (class 2606 OID 58324632)
-- Dependencies: 165 3796 367
-- Name: fk_assocsq_acao_apli_categoria; Type: FK CONSTRAINT; Schema: basico_sequencia; Owner: -
--

ALTER TABLE ONLY assocsq_acao_aplicacao
    ADD CONSTRAINT fk_assocsq_acao_apli_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 3854 (class 2606 OID 58324407)
-- Dependencies: 377 3845 165
-- Name: fk_assocsq_acao_aplic_acao_apl; Type: FK CONSTRAINT; Schema: basico_sequencia; Owner: -
--

ALTER TABLE ONLY assocsq_acao_aplicacao
    ADD CONSTRAINT fk_assocsq_acao_aplic_acao_apl FOREIGN KEY (id_acao_aplicacao) REFERENCES basico.acao_aplicacao(id);


--
-- TOC entry 3853 (class 2606 OID 58324162)
-- Dependencies: 3602 319 165
-- Name: fk_assocsq_acao_aplic_seq; Type: FK CONSTRAINT; Schema: basico_sequencia; Owner: -
--

ALTER TABLE ONLY assocsq_acao_aplicacao
    ADD CONSTRAINT fk_assocsq_acao_aplic_seq FOREIGN KEY (id_sequencia) REFERENCES basico.sequencia(id);


SET search_path = basico_template, pg_catalog;

--
-- TOC entry 3851 (class 2606 OID 58324207)
-- Dependencies: 163 3596 317
-- Name: fk_assoccl_include_template; Type: FK CONSTRAINT; Schema: basico_template; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_assoccl_include_template FOREIGN KEY (id_template) REFERENCES basico.template(id);


--
-- TOC entry 3849 (class 2606 OID 58375489)
-- Dependencies: 329 161 3638
-- Name: fk_assoccl_output_output; Type: FK CONSTRAINT; Schema: basico_template; Owner: -
--

ALTER TABLE ONLY assoccl_output
    ADD CONSTRAINT fk_assoccl_output_output FOREIGN KEY (id_output) REFERENCES basico.output(id);


--
-- TOC entry 3850 (class 2606 OID 58375559)
-- Dependencies: 317 3596 161
-- Name: fk_assoccl_output_template; Type: FK CONSTRAINT; Schema: basico_template; Owner: -
--

ALTER TABLE ONLY assoccl_output
    ADD CONSTRAINT fk_assoccl_output_template FOREIGN KEY (id_template) REFERENCES basico.template(id);


--
-- TOC entry 3852 (class 2606 OID 58324317)
-- Dependencies: 163 3671 339
-- Name: fk_assoccl_template_inc_inc; Type: FK CONSTRAINT; Schema: basico_template; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_assoccl_template_inc_inc FOREIGN KEY (id_include) REFERENCES basico.include(id);


--
-- TOC entry 4065 (class 0 OID 0)
-- Dependencies: 39
-- Name: public; Type: ACL; Schema: -; Owner: -
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2012-03-27 10:30:37 BRT

--
-- PostgreSQL database dump complete
--
