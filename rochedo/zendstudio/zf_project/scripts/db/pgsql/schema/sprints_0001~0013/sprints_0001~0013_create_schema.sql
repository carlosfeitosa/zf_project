--
-- PostgreSQL database dump
--

-- Dumped from database version 8.3.17
-- Dumped by pg_dump version 9.1.2
-- Started on 2012-02-06 13:40:39 BRT

SET statement_timeout = 0;
SET client_encoding = 'LATIN1';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

--
-- TOC entry 12 (class 2615 OID 56992218)
-- Name: basico; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico;


--
-- TOC entry 40 (class 2615 OID 57199282)
-- Name: basico_acao_aplic_assoc_visao; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_acao_aplic_assoc_visao;


--
-- TOC entry 36 (class 2615 OID 57174183)
-- Name: basico_acao_aplicacao; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_acao_aplicacao;


--
-- TOC entry 33 (class 2615 OID 57173706)
-- Name: basico_ajuda; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_ajuda;


--
-- TOC entry 22 (class 2615 OID 57121136)
-- Name: basico_assoc_banco; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_assoc_banco;


--
-- TOC entry 27 (class 2615 OID 57144237)
-- Name: basico_assoc_chave_estrangeira; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_assoc_chave_estrangeira;


--
-- TOC entry 15 (class 2615 OID 56994433)
-- Name: basico_assoc_dados_profis; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_assoc_dados_profis;


--
-- TOC entry 7 (class 2615 OID 56992107)
-- Name: basico_assoccl_pessoa_perfil; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_assoccl_pessoa_perfil;


--
-- TOC entry 17 (class 2615 OID 57073167)
-- Name: basico_assocl_vinculo_profissional; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_assocl_vinculo_profissional;


--
-- TOC entry 11 (class 2615 OID 56992113)
-- Name: basico_categoria; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_categoria;


--
-- TOC entry 28 (class 2615 OID 57167864)
-- Name: basico_componente; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_componente;


--
-- TOC entry 10 (class 2615 OID 56992110)
-- Name: basico_contato; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_contato;


--
-- TOC entry 19 (class 2615 OID 57079648)
-- Name: basico_cvc; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_cvc;


--
-- TOC entry 18 (class 2615 OID 57074391)
-- Name: basico_dados_academicos; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_dados_academicos;


--
-- TOC entry 20 (class 2615 OID 57088454)
-- Name: basico_dados_biometricos; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_dados_biometricos;


--
-- TOC entry 14 (class 2615 OID 56994431)
-- Name: basico_dados_profissionais; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_dados_profissionais;


--
-- TOC entry 32 (class 2615 OID 57173705)
-- Name: basico_decorator; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_decorator;


--
-- TOC entry 26 (class 2615 OID 57131239)
-- Name: basico_form_assoccl_elem_grupo; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_form_assoccl_elem_grupo;


--
-- TOC entry 24 (class 2615 OID 57131222)
-- Name: basico_form_assoccl_elemento; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_form_assoccl_elemento;


--
-- TOC entry 37 (class 2615 OID 57174184)
-- Name: basico_form_elemento; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_form_elemento;


--
-- TOC entry 23 (class 2615 OID 57121137)
-- Name: basico_formulario; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_formulario;


--
-- TOC entry 25 (class 2615 OID 57131229)
-- Name: basico_formulario_elemento; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_formulario_elemento;


--
-- TOC entry 38 (class 2615 OID 57186230)
-- Name: basico_formulario_rascunho; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_formulario_rascunho;


--
-- TOC entry 13 (class 2615 OID 56993479)
-- Name: basico_localizacao; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_localizacao;


--
-- TOC entry 34 (class 2615 OID 57174179)
-- Name: basico_mascara; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_mascara;


--
-- TOC entry 6 (class 2615 OID 56992105)
-- Name: basico_mensagem; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_mensagem;


--
-- TOC entry 29 (class 2615 OID 57173668)
-- Name: basico_mensagem_assoc_email; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_mensagem_assoc_email;


--
-- TOC entry 30 (class 2615 OID 57173682)
-- Name: basico_metodo_validacao; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_metodo_validacao;


--
-- TOC entry 35 (class 2615 OID 57174181)
-- Name: basico_output; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_output;


--
-- TOC entry 21 (class 2615 OID 57105497)
-- Name: basico_perfil; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_perfil;


--
-- TOC entry 9 (class 2615 OID 56992108)
-- Name: basico_pessoa; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_pessoa;


--
-- TOC entry 16 (class 2615 OID 57073154)
-- Name: basico_pessoa_juridica; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_pessoa_juridica;


--
-- TOC entry 39 (class 2615 OID 57198553)
-- Name: basico_sequencia; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_sequencia;


--
-- TOC entry 31 (class 2615 OID 57173704)
-- Name: basico_template; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_template;


--
-- TOC entry 1211 (class 2612 OID 6402577)
-- Name: plperl; Type: PROCEDURAL LANGUAGE; Schema: -; Owner: -
--

CREATE OR REPLACE PROCEDURAL LANGUAGE plperl;


--
-- TOC entry 1210 (class 2612 OID 6402574)
-- Name: plpgsql; Type: PROCEDURAL LANGUAGE; Schema: -; Owner: -
--

CREATE OR REPLACE PROCEDURAL LANGUAGE plpgsql;


SET search_path = basico, pg_catalog;

--
-- TOC entry 400 (class 1255 OID 57165130)
-- Dependencies: 12
-- Name: fn_checkcodigoareaeconomiaexists(character varying); Type: FUNCTION; Schema: basico; Owner: -
--

CREATE FUNCTION fn_checkcodigoareaeconomiaexists(character varying) RETURNS integer
    LANGUAGE sql
    AS $_$select id from basico.area_economia where codigo = $1 limit 1$_$;


--
-- TOC entry 391 (class 1255 OID 57155322)
-- Dependencies: 12
-- Name: fn_checkcodigocategoriaexists(character varying); Type: FUNCTION; Schema: basico; Owner: -
--

CREATE FUNCTION fn_checkcodigocategoriaexists(character varying) RETURNS integer
    LANGUAGE sql
    AS $_$select id from basico.categoria where codigo = $1 limit 1$_$;


--
-- TOC entry 389 (class 1255 OID 57155277)
-- Dependencies: 12
-- Name: fn_checkcodigotipocategoriaexists(character varying); Type: FUNCTION; Schema: basico; Owner: -
--

CREATE FUNCTION fn_checkcodigotipocategoriaexists(character varying) RETURNS integer
    LANGUAGE sql
    AS $_$select id from basico.tipo_categoria where codigo = $1 limit 1$_$;


--
-- TOC entry 396 (class 1255 OID 57079657)
-- Dependencies: 12
-- Name: fn_checkconstantetextualexists(character varying); Type: FUNCTION; Schema: basico; Owner: -
--

CREATE FUNCTION fn_checkconstantetextualexists(character varying) RETURNS integer
    LANGUAGE sql
    AS $_$select id from basico.dicionario_expressao where constante_textual = $1 limit 1$_$;


--
-- TOC entry 392 (class 1255 OID 57147848)
-- Dependencies: 12
-- Name: fn_checknomearquivoexists(character varying); Type: FUNCTION; Schema: basico; Owner: -
--

CREATE FUNCTION fn_checknomearquivoexists(character varying) RETURNS integer
    LANGUAGE sql
    AS $_$select id from basico.arquivo where nome = $1 limit 1$_$;


--
-- TOC entry 397 (class 1255 OID 57155046)
-- Dependencies: 12
-- Name: fn_checknomelinkexists(character varying); Type: FUNCTION; Schema: basico; Owner: -
--

CREATE FUNCTION fn_checknomelinkexists(character varying) RETURNS integer
    LANGUAGE sql
    AS $_$select id from basico.link where nome = $1 limit 1$_$;


--
-- TOC entry 390 (class 1255 OID 57147811)
-- Dependencies: 12
-- Name: fn_checknomemensagemexists(character varying); Type: FUNCTION; Schema: basico; Owner: -
--

CREATE FUNCTION fn_checknomemensagemexists(character varying) RETURNS integer
    LANGUAGE sql
    AS $_$select id from basico.mensagem where nome = $1 limit 1$_$;


--
-- TOC entry 399 (class 1255 OID 57155142)
-- Dependencies: 12
-- Name: fn_checknomeprodutoexists(character varying); Type: FUNCTION; Schema: basico; Owner: -
--

CREATE FUNCTION fn_checknomeprodutoexists(character varying) RETURNS integer
    LANGUAGE sql
    AS $_$select id from basico.produto where nome = $1 limit 1$_$;


SET search_path = basico_categoria, pg_catalog;

--
-- TOC entry 394 (class 1255 OID 57079642)
-- Dependencies: 11
-- Name: fn_checkcategoriachaveestrangeiracategoriaexists(integer); Type: FUNCTION; Schema: basico_categoria; Owner: -
--

CREATE FUNCTION fn_checkcategoriachaveestrangeiracategoriaexists(integer) RETURNS integer
    LANGUAGE sql
    AS $_$select id from basico_categoria.assoc_chave_estrangeira where id_categoria = $1 limit 1$_$;


SET search_path = basico_contato, pg_catalog;

--
-- TOC entry 398 (class 1255 OID 57147957)
-- Dependencies: 10
-- Name: fn_checknomeemailexists(character varying); Type: FUNCTION; Schema: basico_contato; Owner: -
--

CREATE FUNCTION fn_checknomeemailexists(character varying) RETURNS integer
    LANGUAGE sql
    AS $_$select id from basico_contato.email where nome = $1 limit 1$_$;


--
-- TOC entry 393 (class 1255 OID 57148212)
-- Dependencies: 10
-- Name: fn_checknometelefoneexists(character varying); Type: FUNCTION; Schema: basico_contato; Owner: -
--

CREATE FUNCTION fn_checknometelefoneexists(character varying) RETURNS integer
    LANGUAGE sql
    AS $_$select id from basico_contato.telefone where nome = $1 limit 1$_$;


SET search_path = basico_cvc, pg_catalog;

--
-- TOC entry 395 (class 1255 OID 57079656)
-- Dependencies: 19
-- Name: fn_checkcategoriacvc(integer); Type: FUNCTION; Schema: basico_cvc; Owner: -
--

CREATE FUNCTION fn_checkcategoriacvc(integer) RETURNS integer
    LANGUAGE sql
    AS $_$select c.id from basico.categoria c left join basico.tipo_categoria t on (c.id_tipo_categoria = t.id) where c.id = $1 and t.nome = $$CVC$$ and c.nome = $$CVC$$limit 1$_$;


SET search_path = basico_formulario_elemento, pg_catalog;

--
-- TOC entry 401 (class 1255 OID 57169159)
-- Dependencies: 25
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
-- TOC entry 375 (class 1259 OID 57491811)
-- Dependencies: 3005 3006 3007 3008 3009 12
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
-- TOC entry 374 (class 1259 OID 57491809)
-- Dependencies: 375 12
-- Name: acao_aplicacao_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE acao_aplicacao_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3999 (class 0 OID 0)
-- Dependencies: 374
-- Name: acao_aplicacao_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE acao_aplicacao_id_seq OWNED BY acao_aplicacao.id;


--
-- TOC entry 373 (class 1259 OID 57491792)
-- Dependencies: 2996 2997 2998 2999 3000 3001 3002 3003 12
-- Name: ajuda; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE ajuda (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    nome character varying(100) NOT NULL,
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
-- TOC entry 372 (class 1259 OID 57491790)
-- Dependencies: 12 373
-- Name: ajuda_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE ajuda_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4000 (class 0 OID 0)
-- Dependencies: 372
-- Name: ajuda_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE ajuda_id_seq OWNED BY ajuda.id;


--
-- TOC entry 371 (class 1259 OID 57491775)
-- Dependencies: 2989 2990 2991 2992 2993 2994 12
-- Name: area_conhecimento; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE area_conhecimento (
    id integer NOT NULL,
    id_area_conhecimento_pai integer,
    nivel integer DEFAULT 1 NOT NULL,
    id_categoria integer NOT NULL,
    nome character varying(100) NOT NULL,
    constante_textual character varying(200) NOT NULL,
    constante_textual_descricao character varying(200),
    codigo character varying(100) NOT NULL,
    ativo boolean DEFAULT false NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT area_conhecimento_constante_textual_check CHECK ((fn_checkconstantetextualexists(constante_textual) IS NOT NULL)),
    CONSTRAINT area_conhecimento_constante_textual_descricao_check CHECK (((constante_textual_descricao IS NULL) OR (fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL)))
);


--
-- TOC entry 370 (class 1259 OID 57491773)
-- Dependencies: 371 12
-- Name: area_conhecimento_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE area_conhecimento_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4001 (class 0 OID 0)
-- Dependencies: 370
-- Name: area_conhecimento_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE area_conhecimento_id_seq OWNED BY area_conhecimento.id;


--
-- TOC entry 369 (class 1259 OID 57491757)
-- Dependencies: 2981 2982 2983 2984 2985 2986 2987 12
-- Name: area_economia; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE area_economia (
    id integer NOT NULL,
    id_area_economia_pai integer,
    nivel integer DEFAULT 1 NOT NULL,
    id_categoria integer NOT NULL,
    nome character varying(100) NOT NULL,
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
-- TOC entry 368 (class 1259 OID 57491755)
-- Dependencies: 12 369
-- Name: area_economia_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE area_economia_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4002 (class 0 OID 0)
-- Dependencies: 368
-- Name: area_economia_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE area_economia_id_seq OWNED BY area_economia.id;


--
-- TOC entry 367 (class 1259 OID 57491739)
-- Dependencies: 2973 2974 2975 2976 2977 2978 2979 12
-- Name: arquivo; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE arquivo (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    id_generico_proprietario integer NOT NULL,
    nome character varying(100),
    constante_textual character varying(200),
    constante_textual_descricao character varying(200),
    nome_original character varying(200) NOT NULL,
    nome_sugestao character varying(200) NOT NULL,
    tamanho_kylobytes integer NOT NULL,
    mime_type character varying(100) NOT NULL,
    full_filename character varying(2000) NOT NULL,
    hits integer DEFAULT 0 NOT NULL,
    ativo boolean DEFAULT false NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT arquivo_constante_textual_check CHECK (((constante_textual IS NULL) OR (fn_checkconstantetextualexists(constante_textual) IS NOT NULL))),
    CONSTRAINT arquivo_constante_textual_descricao_check CHECK (((constante_textual_descricao IS NULL) OR (fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL))),
    CONSTRAINT arquivo_nome_check CHECK (((nome IS NULL) OR (fn_checknomearquivoexists(nome) IS NULL)))
);


--
-- TOC entry 366 (class 1259 OID 57491737)
-- Dependencies: 12 367
-- Name: arquivo_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE arquivo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4003 (class 0 OID 0)
-- Dependencies: 366
-- Name: arquivo_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE arquivo_id_seq OWNED BY arquivo.id;


--
-- TOC entry 365 (class 1259 OID 57491720)
-- Dependencies: 2964 2965 2966 2967 2968 2969 2970 2971 12
-- Name: categoria; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE categoria (
    id integer NOT NULL,
    id_tipo_categoria integer NOT NULL,
    id_categoria_pai integer,
    nivel integer DEFAULT 1 NOT NULL,
    nome character varying(100),
    constante_textual character varying(200),
    constante_textual_descricao character varying(200),
    codigo character varying(100),
    ativo boolean DEFAULT false NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT categoria_codigo_check CHECK (((codigo IS NULL) OR (fn_checkcodigocategoriaexists(codigo) IS NULL))),
    CONSTRAINT categoria_constante_textual_check CHECK (((constante_textual IS NULL) OR (fn_checkconstantetextualexists(constante_textual) IS NOT NULL))),
    CONSTRAINT categoria_constante_textual_descricao_check CHECK (((constante_textual_descricao IS NULL) OR (fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL))),
    CONSTRAINT categoria_nome_check CHECK (((nome IS NULL) OR (fn_checkcodigocategoriaexists(nome) IS NULL)))
);


--
-- TOC entry 4004 (class 0 OID 0)
-- Dependencies: 365
-- Name: TABLE categoria; Type: COMMENT; Schema: basico; Owner: -
--

COMMENT ON TABLE categoria IS 'containner de categorias';


--
-- TOC entry 364 (class 1259 OID 57491718)
-- Dependencies: 12 365
-- Name: categoria_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE categoria_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4005 (class 0 OID 0)
-- Dependencies: 364
-- Name: categoria_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE categoria_id_seq OWNED BY categoria.id;


--
-- TOC entry 363 (class 1259 OID 57491703)
-- Dependencies: 2959 2960 2961 2962 12
-- Name: codigo_acesso; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE codigo_acesso (
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
-- TOC entry 362 (class 1259 OID 57491701)
-- Dependencies: 12 363
-- Name: codigo_acesso_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE codigo_acesso_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4006 (class 0 OID 0)
-- Dependencies: 362
-- Name: codigo_acesso_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE codigo_acesso_id_seq OWNED BY codigo_acesso.id;


--
-- TOC entry 361 (class 1259 OID 57491687)
-- Dependencies: 2953 2954 2955 2956 2957 12
-- Name: componente; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE componente (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    id_template integer,
    nome character varying(100) NOT NULL,
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
-- TOC entry 360 (class 1259 OID 57491685)
-- Dependencies: 361 12
-- Name: componente_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE componente_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4007 (class 0 OID 0)
-- Dependencies: 360
-- Name: componente_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE componente_id_seq OWNED BY componente.id;


--
-- TOC entry 359 (class 1259 OID 57491672)
-- Dependencies: 2950 2951 12
-- Name: dados_bancarios; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE dados_bancarios (
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
-- TOC entry 358 (class 1259 OID 57491670)
-- Dependencies: 359 12
-- Name: dados_bancarios_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE dados_bancarios_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4008 (class 0 OID 0)
-- Dependencies: 358
-- Name: dados_bancarios_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE dados_bancarios_id_seq OWNED BY dados_bancarios.id;


--
-- TOC entry 357 (class 1259 OID 57491657)
-- Dependencies: 2946 2947 2948 12
-- Name: dados_biometricos; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE dados_biometricos (
    id integer NOT NULL,
    id_pessoa integer NOT NULL,
    id_categoria_raca integer,
    sexo character(1) NOT NULL,
    altura numeric(3,2),
    peso numeric(6,3),
    id_tipo_sanguineo integer,
    historico_medico character varying(2000),
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT dados_biometricos_sexo_check CHECK (((sexo = 'M'::bpchar) OR (sexo = 'F'::bpchar)))
);


--
-- TOC entry 356 (class 1259 OID 57491655)
-- Dependencies: 357 12
-- Name: dados_biometricos_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE dados_biometricos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4009 (class 0 OID 0)
-- Dependencies: 356
-- Name: dados_biometricos_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE dados_biometricos_id_seq OWNED BY dados_biometricos.id;


--
-- TOC entry 355 (class 1259 OID 57491640)
-- Dependencies: 2941 2942 2943 2944 12
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
-- TOC entry 354 (class 1259 OID 57491638)
-- Dependencies: 355 12
-- Name: dicionario_expressao_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE dicionario_expressao_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4010 (class 0 OID 0)
-- Dependencies: 354
-- Name: dicionario_expressao_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE dicionario_expressao_id_seq OWNED BY dicionario_expressao.id;


--
-- TOC entry 353 (class 1259 OID 57491624)
-- Dependencies: 2937 2938 2939 12
-- Name: documento_identificacao; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE documento_identificacao (
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
-- TOC entry 352 (class 1259 OID 57491622)
-- Dependencies: 353 12
-- Name: documento_identificacao_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE documento_identificacao_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4011 (class 0 OID 0)
-- Dependencies: 352
-- Name: documento_identificacao_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE documento_identificacao_id_seq OWNED BY documento_identificacao.id;


--
-- TOC entry 351 (class 1259 OID 57491608)
-- Dependencies: 2931 2932 2933 2934 2935 12
-- Name: evento; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE evento (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    nome character varying(100) NOT NULL,
    constante_textual character varying(200),
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
-- TOC entry 350 (class 1259 OID 57491606)
-- Dependencies: 351 12
-- Name: evento_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE evento_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4012 (class 0 OID 0)
-- Dependencies: 350
-- Name: evento_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE evento_id_seq OWNED BY evento.id;


--
-- TOC entry 349 (class 1259 OID 57491592)
-- Dependencies: 2925 2926 2927 2928 2929 12
-- Name: filter; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE filter (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    nome character varying(100) NOT NULL,
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
-- TOC entry 348 (class 1259 OID 57491590)
-- Dependencies: 349 12
-- Name: filter_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE filter_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4013 (class 0 OID 0)
-- Dependencies: 348
-- Name: filter_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE filter_id_seq OWNED BY filter.id;


--
-- TOC entry 347 (class 1259 OID 57491574)
-- Dependencies: 2917 2918 2919 2920 2921 2922 2923 12
-- Name: formulario; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE formulario (
    id integer NOT NULL,
    id_formulario_pai integer,
    nivel integer DEFAULT 1 NOT NULL,
    id_categoria integer NOT NULL,
    id_ajuda integer,
    nome character varying(100) NOT NULL,
    constante_textual character varying(200),
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
-- TOC entry 346 (class 1259 OID 57491572)
-- Dependencies: 347 12
-- Name: formulario_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE formulario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4014 (class 0 OID 0)
-- Dependencies: 346
-- Name: formulario_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE formulario_id_seq OWNED BY formulario.id;


--
-- TOC entry 345 (class 1259 OID 57491558)
-- Dependencies: 2911 2912 2913 2914 2915 12
-- Name: include; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE include (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    nome character varying(100) NOT NULL,
    constante_textual character varying(200) NOT NULL,
    constante_textual_descricao character varying(200),
    full_filename character varying(1000) NOT NULL,
    ativo boolean DEFAULT false NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT include_constante_textual_check CHECK ((fn_checkconstantetextualexists(constante_textual) IS NOT NULL)),
    CONSTRAINT include_constante_textual_descricao_check CHECK (((constante_textual_descricao IS NULL) OR (fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL)))
);


--
-- TOC entry 344 (class 1259 OID 57491556)
-- Dependencies: 345 12
-- Name: include_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE include_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4015 (class 0 OID 0)
-- Dependencies: 344
-- Name: include_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE include_id_seq OWNED BY include.id;


--
-- TOC entry 343 (class 1259 OID 57491539)
-- Dependencies: 2904 2905 2906 2907 2908 2909 12
-- Name: link; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE link (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    id_generico_proprietario integer NOT NULL,
    nome character varying(100),
    constante_textual character varying(200),
    constante_textual_descricao character varying(200),
    url character varying(1000) NOT NULL,
    ativo boolean DEFAULT false NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT link_constante_textual_check CHECK (((constante_textual IS NULL) OR (fn_checkconstantetextualexists(constante_textual) IS NOT NULL))),
    CONSTRAINT link_constante_textual_descricao_check CHECK (((constante_textual_descricao IS NULL) OR (fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL))),
    CONSTRAINT link_nome_check CHECK (((nome IS NULL) OR (fn_checknomelinkexists(nome) IS NULL)))
);


--
-- TOC entry 342 (class 1259 OID 57491537)
-- Dependencies: 12 343
-- Name: link_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE link_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4016 (class 0 OID 0)
-- Dependencies: 342
-- Name: link_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE link_id_seq OWNED BY link.id;


--
-- TOC entry 341 (class 1259 OID 57491528)
-- Dependencies: 12
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
-- TOC entry 340 (class 1259 OID 57491526)
-- Dependencies: 12 341
-- Name: log_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4017 (class 0 OID 0)
-- Dependencies: 340
-- Name: log_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE log_id_seq OWNED BY log.id;


--
-- TOC entry 339 (class 1259 OID 57491507)
-- Dependencies: 2894 2895 2896 2897 2898 2899 2900 2901 12
-- Name: login; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
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
-- TOC entry 338 (class 1259 OID 57491505)
-- Dependencies: 12 339
-- Name: login_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE login_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4018 (class 0 OID 0)
-- Dependencies: 338
-- Name: login_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE login_id_seq OWNED BY login.id;


--
-- TOC entry 337 (class 1259 OID 57491491)
-- Dependencies: 2888 2889 2890 2891 2892 12
-- Name: mascara; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE mascara (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    nome character varying(100) NOT NULL,
    constante_textual character varying(200) NOT NULL,
    constante_textual_descricao character varying(200),
    mascara character varying(2000) NOT NULL,
    ativo boolean DEFAULT false NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT mascara_constante_textual_check CHECK ((fn_checkconstantetextualexists(constante_textual) IS NOT NULL)),
    CONSTRAINT mascara_constante_textual_descricao_check CHECK (((constante_textual_descricao IS NULL) OR (fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL)))
);


--
-- TOC entry 336 (class 1259 OID 57491489)
-- Dependencies: 337 12
-- Name: mascara_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE mascara_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4019 (class 0 OID 0)
-- Dependencies: 336
-- Name: mascara_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE mascara_id_seq OWNED BY mascara.id;


--
-- TOC entry 335 (class 1259 OID 57491471)
-- Dependencies: 2878 2879 2880 2881 2882 2883 2884 2885 2886 12
-- Name: mensagem; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE mensagem (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    id_generico_proprietario integer NOT NULL,
    nome character varying(100),
    constante_textual character varying(200),
    constante_textual_descricao character varying(200),
    ativo boolean DEFAULT false NOT NULL,
    remetente character varying(200) NOT NULL,
    destinatarios character varying(3000),
    assunto character varying(200),
    constante_textual_assunto character varying(200),
    mensagem character varying(2000),
    constante_textual_mensagem character varying(200),
    datahora_envio timestamp without time zone,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT ck_mensagem_assunto CHECK (((assunto IS NOT NULL) OR (constante_textual_assunto IS NOT NULL))),
    CONSTRAINT ck_mensagem_mensagem CHECK (((mensagem IS NOT NULL) OR (constante_textual_mensagem IS NOT NULL))),
    CONSTRAINT mensagem_constante_textual_check CHECK (((constante_textual IS NULL) OR (fn_checkconstantetextualexists(constante_textual) IS NOT NULL))),
    CONSTRAINT mensagem_constante_textual_descricao_check CHECK (((constante_textual_descricao IS NULL) OR (fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL))),
    CONSTRAINT mensagem_constante_textual_descricao_check1 CHECK (((constante_textual_descricao IS NULL) OR (fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL))),
    CONSTRAINT mensagem_nome_check CHECK (((nome IS NULL) OR (fn_checknomemensagemexists(nome) IS NULL)))
);


--
-- TOC entry 334 (class 1259 OID 57491469)
-- Dependencies: 12 335
-- Name: mensagem_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE mensagem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4020 (class 0 OID 0)
-- Dependencies: 334
-- Name: mensagem_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE mensagem_id_seq OWNED BY mensagem.id;


--
-- TOC entry 333 (class 1259 OID 57491455)
-- Dependencies: 2872 2873 2874 2875 2876 12
-- Name: metodo_validacao; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE metodo_validacao (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    nome character varying(100) NOT NULL,
    constante_textual character varying(200),
    constante_textual_descricao character varying(200),
    metodo character varying(5000) NOT NULL,
    ativo boolean DEFAULT false NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT metodo_validacao_constante_textual_check CHECK (((constante_textual IS NULL) OR (fn_checkconstantetextualexists(constante_textual) IS NOT NULL))),
    CONSTRAINT metodo_validacao_constante_textual_descricao_check CHECK (((constante_textual_descricao IS NULL) OR (fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL)))
);


--
-- TOC entry 332 (class 1259 OID 57491453)
-- Dependencies: 12 333
-- Name: metodo_validacao_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE metodo_validacao_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4021 (class 0 OID 0)
-- Dependencies: 332
-- Name: metodo_validacao_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE metodo_validacao_id_seq OWNED BY metodo_validacao.id;


--
-- TOC entry 331 (class 1259 OID 57491438)
-- Dependencies: 2865 2866 2867 2868 2869 2870 12
-- Name: modulo; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE modulo (
    id integer NOT NULL,
    id_modulo_pai integer,
    id_categoria integer NOT NULL,
    nome character varying(100) NOT NULL,
    constante_textual character varying(200),
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
    CONSTRAINT modulo_constante_textual_check CHECK (((constante_textual IS NULL) OR (fn_checkconstantetextualexists(constante_textual) IS NOT NULL))),
    CONSTRAINT modulo_constante_textual_descricao_check CHECK (((constante_textual_descricao IS NULL) OR (fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL)))
);


--
-- TOC entry 330 (class 1259 OID 57491436)
-- Dependencies: 331 12
-- Name: modulo_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE modulo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4022 (class 0 OID 0)
-- Dependencies: 330
-- Name: modulo_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE modulo_id_seq OWNED BY modulo.id;


--
-- TOC entry 329 (class 1259 OID 57491422)
-- Dependencies: 2859 2860 2861 2862 2863 12
-- Name: output; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE output (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    nome character varying(100) NOT NULL,
    constante_textual character varying(200),
    constante_textual_descricao character varying(200),
    ativo boolean DEFAULT false NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT output_constante_textual_check CHECK (((constante_textual IS NULL) OR (fn_checkconstantetextualexists(constante_textual) IS NOT NULL))),
    CONSTRAINT output_constante_textual_descricao_check CHECK (((constante_textual_descricao IS NULL) OR (fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL)))
);


--
-- TOC entry 328 (class 1259 OID 57491420)
-- Dependencies: 12 329
-- Name: output_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE output_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4023 (class 0 OID 0)
-- Dependencies: 328
-- Name: output_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE output_id_seq OWNED BY output.id;


--
-- TOC entry 327 (class 1259 OID 57491405)
-- Dependencies: 2852 2853 2854 2855 2856 2857 12
-- Name: perfil; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE perfil (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    nome character varying(100) NOT NULL,
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
-- TOC entry 326 (class 1259 OID 57491403)
-- Dependencies: 327 12
-- Name: perfil_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE perfil_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4024 (class 0 OID 0)
-- Dependencies: 326
-- Name: perfil_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE perfil_id_seq OWNED BY perfil.id;


--
-- TOC entry 325 (class 1259 OID 57491392)
-- Dependencies: 2849 2850 12
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
-- TOC entry 324 (class 1259 OID 57491390)
-- Dependencies: 12 325
-- Name: pessoa_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE pessoa_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4025 (class 0 OID 0)
-- Dependencies: 324
-- Name: pessoa_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE pessoa_id_seq OWNED BY pessoa.id;


--
-- TOC entry 323 (class 1259 OID 57491377)
-- Dependencies: 2844 2845 2846 2847 12
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
-- TOC entry 322 (class 1259 OID 57491375)
-- Dependencies: 12 323
-- Name: pessoa_juridica_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE pessoa_juridica_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4026 (class 0 OID 0)
-- Dependencies: 322
-- Name: pessoa_juridica_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE pessoa_juridica_id_seq OWNED BY pessoa_juridica.id;


--
-- TOC entry 321 (class 1259 OID 57491361)
-- Dependencies: 2838 2839 2840 2841 2842 12
-- Name: produto; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE produto (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    id_generico_proprietario integer NOT NULL,
    id_categoria_moeda integer NOT NULL,
    nome character varying(100),
    constante_textual character varying(200),
    constante_textual_descricao character varying(200),
    custo_producao numeric(19,3),
    valor_comercial numeric(19,3),
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT produto_constante_textual_check CHECK (((constante_textual IS NULL) OR (fn_checkconstantetextualexists(constante_textual) IS NOT NULL))),
    CONSTRAINT produto_constante_textual_descricao_check CHECK (((constante_textual_descricao IS NULL) OR (fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL))),
    CONSTRAINT produto_nome_check CHECK (((nome IS NULL) OR (fn_checknomeprodutoexists(nome) IS NULL)))
);


--
-- TOC entry 320 (class 1259 OID 57491359)
-- Dependencies: 321 12
-- Name: produto_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE produto_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4027 (class 0 OID 0)
-- Dependencies: 320
-- Name: produto_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE produto_id_seq OWNED BY produto.id;


--
-- TOC entry 319 (class 1259 OID 57491345)
-- Dependencies: 2832 2833 2834 2835 2836 12
-- Name: profissao; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE profissao (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    nome character varying(100) NOT NULL,
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
-- TOC entry 318 (class 1259 OID 57491343)
-- Dependencies: 12 319
-- Name: profissao_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE profissao_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4028 (class 0 OID 0)
-- Dependencies: 318
-- Name: profissao_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE profissao_id_seq OWNED BY profissao.id;


--
-- TOC entry 317 (class 1259 OID 57491329)
-- Dependencies: 2826 2827 2828 2829 2830 12
-- Name: sequencia; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE sequencia (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    nome character varying(100) NOT NULL,
    constante_textual character varying(200),
    constante_textual_descricao character varying(200),
    ativo boolean DEFAULT false NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT sequencia_constante_textual_check CHECK (((constante_textual IS NULL) OR (fn_checkconstantetextualexists(constante_textual) IS NOT NULL))),
    CONSTRAINT sequencia_constante_textual_descricao_check CHECK (((constante_textual_descricao IS NULL) OR (fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL)))
);


--
-- TOC entry 316 (class 1259 OID 57491327)
-- Dependencies: 317 12
-- Name: sequencia_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE sequencia_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4029 (class 0 OID 0)
-- Dependencies: 316
-- Name: sequencia_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE sequencia_id_seq OWNED BY sequencia.id;


--
-- TOC entry 315 (class 1259 OID 57491313)
-- Dependencies: 2820 2821 2822 2823 2824 12
-- Name: template; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE template (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    nome character varying(100) NOT NULL,
    constante_textual character varying(200),
    constante_textual_descricao character varying(200),
    template text NOT NULL,
    ativo boolean DEFAULT false NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT template_constante_textual_check CHECK (((constante_textual IS NULL) OR (fn_checkconstantetextualexists(constante_textual) IS NOT NULL))),
    CONSTRAINT template_constante_textual_descricao_check CHECK (((constante_textual_descricao IS NULL) OR (fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL)))
);


--
-- TOC entry 314 (class 1259 OID 57491311)
-- Dependencies: 12 315
-- Name: template_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE template_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4030 (class 0 OID 0)
-- Dependencies: 314
-- Name: template_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE template_id_seq OWNED BY template.id;


--
-- TOC entry 313 (class 1259 OID 57491294)
-- Dependencies: 2811 2812 2813 2814 2815 2816 2817 2818 12
-- Name: tipo_categoria; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE tipo_categoria (
    id integer NOT NULL,
    id_tipo_categoria_pai integer,
    nivel integer DEFAULT 1 NOT NULL,
    nome character varying(100),
    constante_textual character varying(200),
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
-- TOC entry 4031 (class 0 OID 0)
-- Dependencies: 313
-- Name: TABLE tipo_categoria; Type: COMMENT; Schema: basico; Owner: -
--

COMMENT ON TABLE tipo_categoria IS 'containner de tipos de categoria';


--
-- TOC entry 312 (class 1259 OID 57491292)
-- Dependencies: 12 313
-- Name: tipo_categoria_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE tipo_categoria_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4032 (class 0 OID 0)
-- Dependencies: 312
-- Name: tipo_categoria_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE tipo_categoria_id_seq OWNED BY tipo_categoria.id;


--
-- TOC entry 311 (class 1259 OID 57491281)
-- Dependencies: 2808 2809 12
-- Name: token; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE token (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    id_generico_proprietario integer NOT NULL,
    token character varying(100) NOT NULL,
    data_hora_expiracao timestamp without time zone DEFAULT (now() + '36:00:00'::interval) NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 310 (class 1259 OID 57491279)
-- Dependencies: 311 12
-- Name: token_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE token_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4033 (class 0 OID 0)
-- Dependencies: 310
-- Name: token_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE token_id_seq OWNED BY token.id;


--
-- TOC entry 309 (class 1259 OID 57491265)
-- Dependencies: 2802 2803 2804 2805 2806 12
-- Name: validator; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE validator (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    nome character varying(100) NOT NULL,
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
-- TOC entry 308 (class 1259 OID 57491263)
-- Dependencies: 12 309
-- Name: validator_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE validator_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4034 (class 0 OID 0)
-- Dependencies: 308
-- Name: validator_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE validator_id_seq OWNED BY validator.id;


SET search_path = basico_acao_aplic_assoc_visao, pg_catalog;

--
-- TOC entry 307 (class 1259 OID 57491253)
-- Dependencies: 2800 40
-- Name: assoccl_atrib_met_rec_post; Type: TABLE; Schema: basico_acao_aplic_assoc_visao; Owner: -; Tablespace: 
--

CREATE TABLE assoccl_atrib_met_rec_post (
    id integer NOT NULL,
    id_assoc_referencia_post integer NOT NULL,
    id_atributo_metodo_recup_post integer NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 306 (class 1259 OID 57491251)
-- Dependencies: 40 307
-- Name: assoccl_atrib_met_rec_post_id_seq; Type: SEQUENCE; Schema: basico_acao_aplic_assoc_visao; Owner: -
--

CREATE SEQUENCE assoccl_atrib_met_rec_post_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4035 (class 0 OID 0)
-- Dependencies: 306
-- Name: assoccl_atrib_met_rec_post_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_acao_aplic_assoc_visao; Owner: -
--

ALTER SEQUENCE assoccl_atrib_met_rec_post_id_seq OWNED BY assoccl_atrib_met_rec_post.id;


--
-- TOC entry 305 (class 1259 OID 57491237)
-- Dependencies: 2796 2797 2798 40
-- Name: atributo_metodo_recup_post; Type: TABLE; Schema: basico_acao_aplic_assoc_visao; Owner: -; Tablespace: 
--

CREATE TABLE atributo_metodo_recup_post (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    atributo character varying(300) NOT NULL,
    metodo_recuperacao character varying(3000) NOT NULL,
    ativo integer DEFAULT 0 NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 304 (class 1259 OID 57491235)
-- Dependencies: 40 305
-- Name: atributo_metodo_recup_post_id_seq; Type: SEQUENCE; Schema: basico_acao_aplic_assoc_visao; Owner: -
--

CREATE SEQUENCE atributo_metodo_recup_post_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4036 (class 0 OID 0)
-- Dependencies: 304
-- Name: atributo_metodo_recup_post_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_acao_aplic_assoc_visao; Owner: -
--

ALTER SEQUENCE atributo_metodo_recup_post_id_seq OWNED BY atributo_metodo_recup_post.id;


SET search_path = basico_acao_aplicacao, pg_catalog;

--
-- TOC entry 303 (class 1259 OID 57491219)
-- Dependencies: 2788 2789 2790 2791 2792 2793 2794 36
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
-- TOC entry 302 (class 1259 OID 57491217)
-- Dependencies: 36 303
-- Name: assoc_visao_id_seq; Type: SEQUENCE; Schema: basico_acao_aplicacao; Owner: -
--

CREATE SEQUENCE assoc_visao_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4037 (class 0 OID 0)
-- Dependencies: 302
-- Name: assoc_visao_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_acao_aplicacao; Owner: -
--

ALTER SEQUENCE assoc_visao_id_seq OWNED BY assoc_visao.id;


--
-- TOC entry 301 (class 1259 OID 57491205)
-- Dependencies: 2786 36
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
-- TOC entry 300 (class 1259 OID 57491203)
-- Dependencies: 36 301
-- Name: assoccl_metodo_validacao_id_seq; Type: SEQUENCE; Schema: basico_acao_aplicacao; Owner: -
--

CREATE SEQUENCE assoccl_metodo_validacao_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4038 (class 0 OID 0)
-- Dependencies: 300
-- Name: assoccl_metodo_validacao_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_acao_aplicacao; Owner: -
--

ALTER SEQUENCE assoccl_metodo_validacao_id_seq OWNED BY assoccl_metodo_validacao.id;


--
-- TOC entry 299 (class 1259 OID 57491191)
-- Dependencies: 2784 36
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
-- TOC entry 298 (class 1259 OID 57491189)
-- Dependencies: 36 299
-- Name: assoccl_perfil_id_seq; Type: SEQUENCE; Schema: basico_acao_aplicacao; Owner: -
--

CREATE SEQUENCE assoccl_perfil_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4039 (class 0 OID 0)
-- Dependencies: 298
-- Name: assoccl_perfil_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_acao_aplicacao; Owner: -
--

ALTER SEQUENCE assoccl_perfil_id_seq OWNED BY assoccl_perfil.id;


SET search_path = basico_ajuda, pg_catalog;

--
-- TOC entry 297 (class 1259 OID 57491177)
-- Dependencies: 2782 33
-- Name: assoccl_link; Type: TABLE; Schema: basico_ajuda; Owner: -; Tablespace: 
--

CREATE TABLE assoccl_link (
    id integer NOT NULL,
    id_ajuda integer NOT NULL,
    id_link integer NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 296 (class 1259 OID 57491175)
-- Dependencies: 33 297
-- Name: assoccl_link_id_seq; Type: SEQUENCE; Schema: basico_ajuda; Owner: -
--

CREATE SEQUENCE assoccl_link_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4040 (class 0 OID 0)
-- Dependencies: 296
-- Name: assoccl_link_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_ajuda; Owner: -
--

ALTER SEQUENCE assoccl_link_id_seq OWNED BY assoccl_link.id;


SET search_path = basico_assoc_banco, pg_catalog;

--
-- TOC entry 295 (class 1259 OID 57491162)
-- Dependencies: 2777 2778 2779 2780 22
-- Name: assoc_tipo_conta; Type: TABLE; Schema: basico_assoc_banco; Owner: -; Tablespace: 
--

CREATE TABLE assoc_tipo_conta (
    id integer NOT NULL,
    id_assoc_banco integer NOT NULL,
    id_categoria integer NOT NULL,
    nome character varying(100) NOT NULL,
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
-- TOC entry 294 (class 1259 OID 57491160)
-- Dependencies: 22 295
-- Name: assoc_tipo_conta_id_seq; Type: SEQUENCE; Schema: basico_assoc_banco; Owner: -
--

CREATE SEQUENCE assoc_tipo_conta_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4041 (class 0 OID 0)
-- Dependencies: 294
-- Name: assoc_tipo_conta_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_assoc_banco; Owner: -
--

ALTER SEQUENCE assoc_tipo_conta_id_seq OWNED BY assoc_tipo_conta.id;


SET search_path = basico_assoc_chave_estrangeira, pg_catalog;

--
-- TOC entry 293 (class 1259 OID 57491148)
-- Dependencies: 2775 27
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
-- TOC entry 292 (class 1259 OID 57491146)
-- Dependencies: 293 27
-- Name: relacao_id_seq; Type: SEQUENCE; Schema: basico_assoc_chave_estrangeira; Owner: -
--

CREATE SEQUENCE relacao_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4042 (class 0 OID 0)
-- Dependencies: 292
-- Name: relacao_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_assoc_chave_estrangeira; Owner: -
--

ALTER SEQUENCE relacao_id_seq OWNED BY relacao.id;


SET search_path = basico_assoc_dados_profis, pg_catalog;

--
-- TOC entry 291 (class 1259 OID 57491134)
-- Dependencies: 2773 15
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
-- TOC entry 290 (class 1259 OID 57491132)
-- Dependencies: 15 291
-- Name: assoccl_area_conhecimento_id_seq; Type: SEQUENCE; Schema: basico_assoc_dados_profis; Owner: -
--

CREATE SEQUENCE assoccl_area_conhecimento_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4043 (class 0 OID 0)
-- Dependencies: 290
-- Name: assoccl_area_conhecimento_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_assoc_dados_profis; Owner: -
--

ALTER SEQUENCE assoccl_area_conhecimento_id_seq OWNED BY assoccl_area_conhecimento.id;


SET search_path = basico_assoccl_pessoa_perfil, pg_catalog;

--
-- TOC entry 289 (class 1259 OID 57491121)
-- Dependencies: 2770 2771 7
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
-- TOC entry 288 (class 1259 OID 57491119)
-- Dependencies: 7 289
-- Name: assoc_dados_id_seq; Type: SEQUENCE; Schema: basico_assoccl_pessoa_perfil; Owner: -
--

CREATE SEQUENCE assoc_dados_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4044 (class 0 OID 0)
-- Dependencies: 288
-- Name: assoc_dados_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_assoccl_pessoa_perfil; Owner: -
--

ALTER SEQUENCE assoc_dados_id_seq OWNED BY assoc_dados.id;


SET search_path = basico_assocl_vinculo_profissional, pg_catalog;

--
-- TOC entry 287 (class 1259 OID 57491108)
-- Dependencies: 2767 2768 17
-- Name: assoc_dados; Type: TABLE; Schema: basico_assocl_vinculo_profissional; Owner: -; Tablespace: 
--

CREATE TABLE assoc_dados (
    id integer NOT NULL,
    id_assocl_vinculo_profissional integer NOT NULL,
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
-- TOC entry 286 (class 1259 OID 57491106)
-- Dependencies: 287 17
-- Name: assoc_dados_id_seq; Type: SEQUENCE; Schema: basico_assocl_vinculo_profissional; Owner: -
--

CREATE SEQUENCE assoc_dados_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4045 (class 0 OID 0)
-- Dependencies: 286
-- Name: assoc_dados_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_assocl_vinculo_profissional; Owner: -
--

ALTER SEQUENCE assoc_dados_id_seq OWNED BY assoc_dados.id;


SET search_path = basico_categoria, pg_catalog;

--
-- TOC entry 285 (class 1259 OID 57491093)
-- Dependencies: 2764 2765 11
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
-- TOC entry 4046 (class 0 OID 0)
-- Dependencies: 285
-- Name: TABLE assoc_chave_estrangeira; Type: COMMENT; Schema: basico_categoria; Owner: -
--

COMMENT ON TABLE assoc_chave_estrangeira IS 'conteinner de relacao de uma categoria com uma relacao de chave estrangeira (tabela e campo)';


--
-- TOC entry 284 (class 1259 OID 57491091)
-- Dependencies: 11 285
-- Name: assoc_chave_estrangeira_id_seq; Type: SEQUENCE; Schema: basico_categoria; Owner: -
--

CREATE SEQUENCE assoc_chave_estrangeira_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4047 (class 0 OID 0)
-- Dependencies: 284
-- Name: assoc_chave_estrangeira_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_categoria; Owner: -
--

ALTER SEQUENCE assoc_chave_estrangeira_id_seq OWNED BY assoc_chave_estrangeira.id;


SET search_path = basico_componente, pg_catalog;

--
-- TOC entry 283 (class 1259 OID 57491077)
-- Dependencies: 2762 28
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
-- TOC entry 282 (class 1259 OID 57491075)
-- Dependencies: 283 28
-- Name: assoccl_include_id_seq; Type: SEQUENCE; Schema: basico_componente; Owner: -
--

CREATE SEQUENCE assoccl_include_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4048 (class 0 OID 0)
-- Dependencies: 282
-- Name: assoccl_include_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_componente; Owner: -
--

ALTER SEQUENCE assoccl_include_id_seq OWNED BY assoccl_include.id;


SET search_path = basico_contato, pg_catalog;

--
-- TOC entry 281 (class 1259 OID 57491057)
-- Dependencies: 2754 2755 2756 2757 2758 2759 2760 10
-- Name: email; Type: TABLE; Schema: basico_contato; Owner: -; Tablespace: 
--

CREATE TABLE email (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    id_generico_proprietario integer NOT NULL,
    nome character varying(100),
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
    CONSTRAINT email_constante_textual_check CHECK (((constante_textual IS NULL) OR (basico.fn_checkconstantetextualexists(constante_textual) IS NOT NULL))),
    CONSTRAINT email_constante_textual_descricao_check CHECK (((constante_textual_descricao IS NULL) OR (basico.fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL))),
    CONSTRAINT email_nome_check CHECK (((nome IS NULL) OR (fn_checknomeemailexists(nome) IS NULL)))
);


--
-- TOC entry 280 (class 1259 OID 57491055)
-- Dependencies: 10 281
-- Name: email_id_seq; Type: SEQUENCE; Schema: basico_contato; Owner: -
--

CREATE SEQUENCE email_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4049 (class 0 OID 0)
-- Dependencies: 280
-- Name: email_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_contato; Owner: -
--

ALTER SEQUENCE email_id_seq OWNED BY email.id;


--
-- TOC entry 279 (class 1259 OID 57491038)
-- Dependencies: 2747 2748 2749 2750 2751 2752 10
-- Name: telefone; Type: TABLE; Schema: basico_contato; Owner: -; Tablespace: 
--

CREATE TABLE telefone (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    id_generico_proprietario integer NOT NULL,
    nome character varying(100),
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
    CONSTRAINT telefone_constante_textual_check CHECK (((constante_textual IS NULL) OR (basico.fn_checkconstantetextualexists(constante_textual) IS NOT NULL))),
    CONSTRAINT telefone_constante_textual_descricao_check CHECK (((constante_textual_descricao IS NULL) OR (basico.fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL))),
    CONSTRAINT telefone_nome_check CHECK (((nome IS NULL) OR (fn_checknometelefoneexists(nome) IS NULL)))
);


--
-- TOC entry 278 (class 1259 OID 57491036)
-- Dependencies: 10 279
-- Name: telefone_id_seq; Type: SEQUENCE; Schema: basico_contato; Owner: -
--

CREATE SEQUENCE telefone_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4050 (class 0 OID 0)
-- Dependencies: 278
-- Name: telefone_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_contato; Owner: -
--

ALTER SEQUENCE telefone_id_seq OWNED BY telefone.id;


SET search_path = basico_cvc, pg_catalog;

--
-- TOC entry 277 (class 1259 OID 57491021)
-- Dependencies: 2742 2743 2744 2745 19
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
    validate_termino timestamp without time zone,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 276 (class 1259 OID 57491019)
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
-- TOC entry 4051 (class 0 OID 0)
-- Dependencies: 276
-- Name: cvc_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_cvc; Owner: -
--

ALTER SEQUENCE cvc_id_seq OWNED BY cvc.id;


SET search_path = basico_dados_academicos, pg_catalog;

--
-- TOC entry 275 (class 1259 OID 57491005)
-- Dependencies: 2736 2737 2738 2739 2740 18
-- Name: titulacao; Type: TABLE; Schema: basico_dados_academicos; Owner: -; Tablespace: 
--

CREATE TABLE titulacao (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    nome character varying(100) NOT NULL,
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
-- TOC entry 274 (class 1259 OID 57491003)
-- Dependencies: 18 275
-- Name: titulacao_id_seq; Type: SEQUENCE; Schema: basico_dados_academicos; Owner: -
--

CREATE SEQUENCE titulacao_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4052 (class 0 OID 0)
-- Dependencies: 274
-- Name: titulacao_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_dados_academicos; Owner: -
--

ALTER SEQUENCE titulacao_id_seq OWNED BY titulacao.id;


SET search_path = basico_dados_biometricos, pg_catalog;

--
-- TOC entry 273 (class 1259 OID 57490989)
-- Dependencies: 2730 2731 2732 2733 2734 20
-- Name: tipo_sanguineo; Type: TABLE; Schema: basico_dados_biometricos; Owner: -; Tablespace: 
--

CREATE TABLE tipo_sanguineo (
    id integer NOT NULL,
    nome character varying(100) NOT NULL,
    constante_textual character varying(200) NOT NULL,
    constante_textual_descricao character varying(200),
    ativo boolean DEFAULT false NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT tipo_sanguineo_constante_textual_check CHECK ((basico.fn_checkconstantetextualexists(constante_textual) IS NOT NULL)),
    CONSTRAINT tipo_sanguineo_constante_textual_descricao_check CHECK (((constante_textual_descricao IS NULL) OR (basico.fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL)))
);


--
-- TOC entry 272 (class 1259 OID 57490987)
-- Dependencies: 20 273
-- Name: tipo_sanguineo_id_seq; Type: SEQUENCE; Schema: basico_dados_biometricos; Owner: -
--

CREATE SEQUENCE tipo_sanguineo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4053 (class 0 OID 0)
-- Dependencies: 272
-- Name: tipo_sanguineo_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_dados_biometricos; Owner: -
--

ALTER SEQUENCE tipo_sanguineo_id_seq OWNED BY tipo_sanguineo.id;


SET search_path = basico_dados_profissionais, pg_catalog;

--
-- TOC entry 271 (class 1259 OID 57490972)
-- Dependencies: 2723 2724 2725 2726 2727 2728 14
-- Name: regime_trabalho; Type: TABLE; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE TABLE regime_trabalho (
    id integer NOT NULL,
    id_regime_trabalho_pai integer NOT NULL,
    nivel integer DEFAULT 1 NOT NULL,
    id_categoria integer NOT NULL,
    nome character varying(100) NOT NULL,
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
-- TOC entry 270 (class 1259 OID 57490970)
-- Dependencies: 14 271
-- Name: regime_trabalho_id_seq; Type: SEQUENCE; Schema: basico_dados_profissionais; Owner: -
--

CREATE SEQUENCE regime_trabalho_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4054 (class 0 OID 0)
-- Dependencies: 270
-- Name: regime_trabalho_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_dados_profissionais; Owner: -
--

ALTER SEQUENCE regime_trabalho_id_seq OWNED BY regime_trabalho.id;


--
-- TOC entry 269 (class 1259 OID 57490954)
-- Dependencies: 2715 2716 2717 2718 2719 2720 2721 14
-- Name: tipo_vinculo; Type: TABLE; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE TABLE tipo_vinculo (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    nome character varying(100) NOT NULL,
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
-- TOC entry 268 (class 1259 OID 57490952)
-- Dependencies: 269 14
-- Name: tipo_vinculo_id_seq; Type: SEQUENCE; Schema: basico_dados_profissionais; Owner: -
--

CREATE SEQUENCE tipo_vinculo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4055 (class 0 OID 0)
-- Dependencies: 268
-- Name: tipo_vinculo_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_dados_profissionais; Owner: -
--

ALTER SEQUENCE tipo_vinculo_id_seq OWNED BY tipo_vinculo.id;


--
-- TOC entry 267 (class 1259 OID 57490938)
-- Dependencies: 2709 2710 2711 2712 2713 14
-- Name: vinculo_empregaticio; Type: TABLE; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE TABLE vinculo_empregaticio (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    nome character varying(100) NOT NULL,
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
-- TOC entry 266 (class 1259 OID 57490936)
-- Dependencies: 14 267
-- Name: vinculo_empregaticio_id_seq; Type: SEQUENCE; Schema: basico_dados_profissionais; Owner: -
--

CREATE SEQUENCE vinculo_empregaticio_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4056 (class 0 OID 0)
-- Dependencies: 266
-- Name: vinculo_empregaticio_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_dados_profissionais; Owner: -
--

ALTER SEQUENCE vinculo_empregaticio_id_seq OWNED BY vinculo_empregaticio.id;


SET search_path = basico_decorator, pg_catalog;

--
-- TOC entry 265 (class 1259 OID 57490922)
-- Dependencies: 2707 32
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
-- TOC entry 264 (class 1259 OID 57490920)
-- Dependencies: 265 32
-- Name: assoccl_include_id_seq; Type: SEQUENCE; Schema: basico_decorator; Owner: -
--

CREATE SEQUENCE assoccl_include_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4057 (class 0 OID 0)
-- Dependencies: 264
-- Name: assoccl_include_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_decorator; Owner: -
--

ALTER SEQUENCE assoccl_include_id_seq OWNED BY assoccl_include.id;


SET search_path = basico_form_assoccl_elem_grupo, pg_catalog;

--
-- TOC entry 263 (class 1259 OID 57490910)
-- Dependencies: 2705 26
-- Name: assoccl_decorator; Type: TABLE; Schema: basico_form_assoccl_elem_grupo; Owner: -; Tablespace: 
--

CREATE TABLE assoccl_decorator (
    id integer NOT NULL,
    id_grupo integer NOT NULL,
    id_decorator integer NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 262 (class 1259 OID 57490908)
-- Dependencies: 26 263
-- Name: assoccl_decorator_id_seq; Type: SEQUENCE; Schema: basico_form_assoccl_elem_grupo; Owner: -
--

CREATE SEQUENCE assoccl_decorator_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4058 (class 0 OID 0)
-- Dependencies: 262
-- Name: assoccl_decorator_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_form_assoccl_elem_grupo; Owner: -
--

ALTER SEQUENCE assoccl_decorator_id_seq OWNED BY assoccl_decorator.id;


SET search_path = basico_form_assoccl_elemento, pg_catalog;

--
-- TOC entry 261 (class 1259 OID 57490893)
-- Dependencies: 2702 2703 24
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
-- TOC entry 260 (class 1259 OID 57490891)
-- Dependencies: 261 24
-- Name: assoccl_decorator_id_seq; Type: SEQUENCE; Schema: basico_form_assoccl_elemento; Owner: -
--

CREATE SEQUENCE assoccl_decorator_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4059 (class 0 OID 0)
-- Dependencies: 260
-- Name: assoccl_decorator_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER SEQUENCE assoccl_decorator_id_seq OWNED BY assoccl_decorator.id;


--
-- TOC entry 259 (class 1259 OID 57490880)
-- Dependencies: 2699 2700 24
-- Name: assoccl_evento; Type: TABLE; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE TABLE assoccl_evento (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    id_assoccl_elemento integer NOT NULL,
    id_evento integer NOT NULL,
    uri character varying(2000) NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 258 (class 1259 OID 57490878)
-- Dependencies: 24 259
-- Name: assoccl_evento_id_seq; Type: SEQUENCE; Schema: basico_form_assoccl_elemento; Owner: -
--

CREATE SEQUENCE assoccl_evento_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4060 (class 0 OID 0)
-- Dependencies: 258
-- Name: assoccl_evento_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER SEQUENCE assoccl_evento_id_seq OWNED BY assoccl_evento.id;


--
-- TOC entry 257 (class 1259 OID 57490865)
-- Dependencies: 2696 2697 24
-- Name: assoccl_filter; Type: TABLE; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE TABLE assoccl_filter (
    id integer NOT NULL,
    id_assoccl_elemento integer NOT NULL,
    id_filter integer NOT NULL,
    remove_flag boolean DEFAULT false NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 256 (class 1259 OID 57490863)
-- Dependencies: 24 257
-- Name: assoccl_filter_id_seq; Type: SEQUENCE; Schema: basico_form_assoccl_elemento; Owner: -
--

CREATE SEQUENCE assoccl_filter_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4061 (class 0 OID 0)
-- Dependencies: 256
-- Name: assoccl_filter_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER SEQUENCE assoccl_filter_id_seq OWNED BY assoccl_filter.id;


--
-- TOC entry 255 (class 1259 OID 57490848)
-- Dependencies: 2693 2694 24
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
-- TOC entry 254 (class 1259 OID 57490846)
-- Dependencies: 255 24
-- Name: assoccl_include_id_seq; Type: SEQUENCE; Schema: basico_form_assoccl_elemento; Owner: -
--

CREATE SEQUENCE assoccl_include_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4062 (class 0 OID 0)
-- Dependencies: 254
-- Name: assoccl_include_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER SEQUENCE assoccl_include_id_seq OWNED BY assoccl_include.id;


--
-- TOC entry 253 (class 1259 OID 57490833)
-- Dependencies: 2690 2691 24
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
-- TOC entry 252 (class 1259 OID 57490831)
-- Dependencies: 253 24
-- Name: assoccl_validator_id_seq; Type: SEQUENCE; Schema: basico_form_assoccl_elemento; Owner: -
--

CREATE SEQUENCE assoccl_validator_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4063 (class 0 OID 0)
-- Dependencies: 252
-- Name: assoccl_validator_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER SEQUENCE assoccl_validator_id_seq OWNED BY assoccl_validator.id;


--
-- TOC entry 251 (class 1259 OID 57490817)
-- Dependencies: 2684 2685 2686 2687 2688 24
-- Name: grupo; Type: TABLE; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE TABLE grupo (
    id integer NOT NULL,
    nome character varying(100) NOT NULL,
    constante_textual character varying(200),
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
-- TOC entry 250 (class 1259 OID 57490815)
-- Dependencies: 251 24
-- Name: grupo_id_seq; Type: SEQUENCE; Schema: basico_form_assoccl_elemento; Owner: -
--

CREATE SEQUENCE grupo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4064 (class 0 OID 0)
-- Dependencies: 250
-- Name: grupo_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER SEQUENCE grupo_id_seq OWNED BY grupo.id;


SET search_path = basico_form_elemento, pg_catalog;

--
-- TOC entry 249 (class 1259 OID 57490803)
-- Dependencies: 2682 37
-- Name: assoccl_evento; Type: TABLE; Schema: basico_form_elemento; Owner: -; Tablespace: 
--

CREATE TABLE assoccl_evento (
    id integer NOT NULL,
    id_elemento integer NOT NULL,
    id_evento integer NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 248 (class 1259 OID 57490801)
-- Dependencies: 249 37
-- Name: assoccl_evento_id_seq; Type: SEQUENCE; Schema: basico_form_elemento; Owner: -
--

CREATE SEQUENCE assoccl_evento_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4065 (class 0 OID 0)
-- Dependencies: 248
-- Name: assoccl_evento_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_form_elemento; Owner: -
--

ALTER SEQUENCE assoccl_evento_id_seq OWNED BY assoccl_evento.id;


SET search_path = basico_formulario, pg_catalog;

--
-- TOC entry 247 (class 1259 OID 57490789)
-- Dependencies: 2680 23
-- Name: assoccl_decorator; Type: TABLE; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE TABLE assoccl_decorator (
    id integer NOT NULL,
    id_formulario integer NOT NULL,
    id_decorator integer NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 246 (class 1259 OID 57490787)
-- Dependencies: 247 23
-- Name: assoccl_decorator_id_seq; Type: SEQUENCE; Schema: basico_formulario; Owner: -
--

CREATE SEQUENCE assoccl_decorator_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4066 (class 0 OID 0)
-- Dependencies: 246
-- Name: assoccl_decorator_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_formulario; Owner: -
--

ALTER SEQUENCE assoccl_decorator_id_seq OWNED BY assoccl_decorator.id;


--
-- TOC entry 245 (class 1259 OID 57490771)
-- Dependencies: 2674 2675 2676 2677 2678 23
-- Name: assoccl_elemento; Type: TABLE; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE TABLE assoccl_elemento (
    id integer NOT NULL,
    id_formulario integer NOT NULL,
    id_elemento integer NOT NULL,
    id_ajuda integer NOT NULL,
    id_grupo integer NOT NULL,
    id_mascara integer NOT NULL,
    constante_textual_label character varying(200) NOT NULL,
    element_name character varying(100) NOT NULL,
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
-- TOC entry 244 (class 1259 OID 57490769)
-- Dependencies: 245 23
-- Name: assoccl_elemento_id_seq; Type: SEQUENCE; Schema: basico_formulario; Owner: -
--

CREATE SEQUENCE assoccl_elemento_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4067 (class 0 OID 0)
-- Dependencies: 244
-- Name: assoccl_elemento_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_formulario; Owner: -
--

ALTER SEQUENCE assoccl_elemento_id_seq OWNED BY assoccl_elemento.id;


--
-- TOC entry 243 (class 1259 OID 57490757)
-- Dependencies: 2672 23
-- Name: assoccl_evento; Type: TABLE; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE TABLE assoccl_evento (
    id integer NOT NULL,
    id_formulario integer NOT NULL,
    id_evento integer NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 242 (class 1259 OID 57490755)
-- Dependencies: 23 243
-- Name: assoccl_evento_id_seq; Type: SEQUENCE; Schema: basico_formulario; Owner: -
--

CREATE SEQUENCE assoccl_evento_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4068 (class 0 OID 0)
-- Dependencies: 242
-- Name: assoccl_evento_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_formulario; Owner: -
--

ALTER SEQUENCE assoccl_evento_id_seq OWNED BY assoccl_evento.id;


--
-- TOC entry 241 (class 1259 OID 57490741)
-- Dependencies: 2670 23
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
-- TOC entry 240 (class 1259 OID 57490739)
-- Dependencies: 241 23
-- Name: assoccl_include_id_seq; Type: SEQUENCE; Schema: basico_formulario; Owner: -
--

CREATE SEQUENCE assoccl_include_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4069 (class 0 OID 0)
-- Dependencies: 240
-- Name: assoccl_include_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_formulario; Owner: -
--

ALTER SEQUENCE assoccl_include_id_seq OWNED BY assoccl_include.id;


--
-- TOC entry 239 (class 1259 OID 57490729)
-- Dependencies: 2668 23
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
-- TOC entry 238 (class 1259 OID 57490727)
-- Dependencies: 23 239
-- Name: assoccl_modulo_id_seq; Type: SEQUENCE; Schema: basico_formulario; Owner: -
--

CREATE SEQUENCE assoccl_modulo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4070 (class 0 OID 0)
-- Dependencies: 238
-- Name: assoccl_modulo_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_formulario; Owner: -
--

ALTER SEQUENCE assoccl_modulo_id_seq OWNED BY assoccl_modulo.id;


--
-- TOC entry 237 (class 1259 OID 57490715)
-- Dependencies: 2666 23
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
-- TOC entry 236 (class 1259 OID 57490713)
-- Dependencies: 237 23
-- Name: assoccl_template_id_seq; Type: SEQUENCE; Schema: basico_formulario; Owner: -
--

CREATE SEQUENCE assoccl_template_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4071 (class 0 OID 0)
-- Dependencies: 236
-- Name: assoccl_template_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_formulario; Owner: -
--

ALTER SEQUENCE assoccl_template_id_seq OWNED BY assoccl_template.id;


--
-- TOC entry 235 (class 1259 OID 57490699)
-- Dependencies: 2660 2661 2662 2663 2664 23
-- Name: decorator; Type: TABLE; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE TABLE decorator (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    nome character varying(100) NOT NULL,
    constante_textual character varying(200),
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
-- TOC entry 234 (class 1259 OID 57490697)
-- Dependencies: 23 235
-- Name: decorator_id_seq; Type: SEQUENCE; Schema: basico_formulario; Owner: -
--

CREATE SEQUENCE decorator_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4072 (class 0 OID 0)
-- Dependencies: 234
-- Name: decorator_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_formulario; Owner: -
--

ALTER SEQUENCE decorator_id_seq OWNED BY decorator.id;


--
-- TOC entry 233 (class 1259 OID 57490681)
-- Dependencies: 2652 2653 2654 2655 2656 2657 2658 23
-- Name: elemento; Type: TABLE; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE TABLE elemento (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    id_componente integer NOT NULL,
    id_ajuda integer NOT NULL,
    id_mascara integer NOT NULL,
    nome character varying(100) NOT NULL,
    constante_textual character varying(200),
    constante_textual_descricao character varying(200),
    constante_textual_label character varying(200) NOT NULL,
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
-- TOC entry 232 (class 1259 OID 57490679)
-- Dependencies: 233 23
-- Name: elemento_id_seq; Type: SEQUENCE; Schema: basico_formulario; Owner: -
--

CREATE SEQUENCE elemento_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4073 (class 0 OID 0)
-- Dependencies: 232
-- Name: elemento_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_formulario; Owner: -
--

ALTER SEQUENCE elemento_id_seq OWNED BY elemento.id;


--
-- TOC entry 231 (class 1259 OID 57490667)
-- Dependencies: 2648 2649 2650 23
-- Name: rascunho; Type: TABLE; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE TABLE rascunho (
    id integer NOT NULL,
    id_rascunho_pai integer NOT NULL,
    id_categoria integer NOT NULL,
    id_assoccl_perfil integer NOT NULL,
    id_assocag_grupo integer,
    id_assocsq_acao_aplicacao integer,
    id_acao_aplicacao_origem integer NOT NULL,
    request character varying(2000) NOT NULL,
    post text NOT NULL,
    form_action character varying(1000) NOT NULL,
    form_name character varying(300) NOT NULL,
    action_origem character varying(1000) NOT NULL,
    ativo integer DEFAULT 0 NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 230 (class 1259 OID 57490665)
-- Dependencies: 23 231
-- Name: rascunho_id_seq; Type: SEQUENCE; Schema: basico_formulario; Owner: -
--

CREATE SEQUENCE rascunho_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4074 (class 0 OID 0)
-- Dependencies: 230
-- Name: rascunho_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_formulario; Owner: -
--

ALTER SEQUENCE rascunho_id_seq OWNED BY rascunho.id;


SET search_path = basico_formulario_elemento, pg_catalog;

--
-- TOC entry 229 (class 1259 OID 57490651)
-- Dependencies: 2646 25
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
-- TOC entry 228 (class 1259 OID 57490649)
-- Dependencies: 229 25
-- Name: assoccl_decorator_id_seq; Type: SEQUENCE; Schema: basico_formulario_elemento; Owner: -
--

CREATE SEQUENCE assoccl_decorator_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4075 (class 0 OID 0)
-- Dependencies: 228
-- Name: assoccl_decorator_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_formulario_elemento; Owner: -
--

ALTER SEQUENCE assoccl_decorator_id_seq OWNED BY assoccl_decorator.id;


--
-- TOC entry 227 (class 1259 OID 57490637)
-- Dependencies: 2644 25
-- Name: assoccl_filter; Type: TABLE; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

CREATE TABLE assoccl_filter (
    id integer NOT NULL,
    id_elemento integer NOT NULL,
    id_filter integer NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 226 (class 1259 OID 57490635)
-- Dependencies: 227 25
-- Name: assoccl_filter_id_seq; Type: SEQUENCE; Schema: basico_formulario_elemento; Owner: -
--

CREATE SEQUENCE assoccl_filter_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4076 (class 0 OID 0)
-- Dependencies: 226
-- Name: assoccl_filter_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_formulario_elemento; Owner: -
--

ALTER SEQUENCE assoccl_filter_id_seq OWNED BY assoccl_filter.id;


--
-- TOC entry 225 (class 1259 OID 57490623)
-- Dependencies: 2642 25
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
-- TOC entry 224 (class 1259 OID 57490621)
-- Dependencies: 225 25
-- Name: assoccl_validator_id_seq; Type: SEQUENCE; Schema: basico_formulario_elemento; Owner: -
--

CREATE SEQUENCE assoccl_validator_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4077 (class 0 OID 0)
-- Dependencies: 224
-- Name: assoccl_validator_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_formulario_elemento; Owner: -
--

ALTER SEQUENCE assoccl_validator_id_seq OWNED BY assoccl_validator.id;


SET search_path = basico_formulario_rascunho, pg_catalog;

--
-- TOC entry 223 (class 1259 OID 57490610)
-- Dependencies: 2639 2640 38
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
-- TOC entry 222 (class 1259 OID 57490608)
-- Dependencies: 38 223
-- Name: assocag_grupo_id_seq; Type: SEQUENCE; Schema: basico_formulario_rascunho; Owner: -
--

CREATE SEQUENCE assocag_grupo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4078 (class 0 OID 0)
-- Dependencies: 222
-- Name: assocag_grupo_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_formulario_rascunho; Owner: -
--

ALTER SEQUENCE assocag_grupo_id_seq OWNED BY assocag_grupo.id;


SET search_path = basico_localizacao, pg_catalog;

--
-- TOC entry 221 (class 1259 OID 57490596)
-- Dependencies: 2635 2636 2637 13
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
-- TOC entry 220 (class 1259 OID 57490594)
-- Dependencies: 221 13
-- Name: assoc_bairro_id_seq; Type: SEQUENCE; Schema: basico_localizacao; Owner: -
--

CREATE SEQUENCE assoc_bairro_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4079 (class 0 OID 0)
-- Dependencies: 220
-- Name: assoc_bairro_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_localizacao; Owner: -
--

ALTER SEQUENCE assoc_bairro_id_seq OWNED BY assoc_bairro.id;


--
-- TOC entry 219 (class 1259 OID 57490579)
-- Dependencies: 2630 2631 2632 2633 13
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
-- TOC entry 218 (class 1259 OID 57490577)
-- Dependencies: 219 13
-- Name: assoc_estado_id_seq; Type: SEQUENCE; Schema: basico_localizacao; Owner: -
--

CREATE SEQUENCE assoc_estado_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4080 (class 0 OID 0)
-- Dependencies: 218
-- Name: assoc_estado_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_localizacao; Owner: -
--

ALTER SEQUENCE assoc_estado_id_seq OWNED BY assoc_estado.id;


--
-- TOC entry 217 (class 1259 OID 57490565)
-- Dependencies: 2626 2627 2628 13
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
-- TOC entry 216 (class 1259 OID 57490563)
-- Dependencies: 13 217
-- Name: assoc_logradouro_id_seq; Type: SEQUENCE; Schema: basico_localizacao; Owner: -
--

CREATE SEQUENCE assoc_logradouro_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4081 (class 0 OID 0)
-- Dependencies: 216
-- Name: assoc_logradouro_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_localizacao; Owner: -
--

ALTER SEQUENCE assoc_logradouro_id_seq OWNED BY assoc_logradouro.id;


--
-- TOC entry 215 (class 1259 OID 57490548)
-- Dependencies: 2621 2622 2623 2624 13
-- Name: assoc_municipio; Type: TABLE; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE TABLE assoc_municipio (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    id_municipio_pai integer,
    nivel integer DEFAULT 1 NOT NULL,
    id_estado integer NOT NULL,
    nome character varying(200) NOT NULL,
    codigo_ddd character varying(10),
    ativo boolean DEFAULT false NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 214 (class 1259 OID 57490546)
-- Dependencies: 215 13
-- Name: assoc_municipio_id_seq; Type: SEQUENCE; Schema: basico_localizacao; Owner: -
--

CREATE SEQUENCE assoc_municipio_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4082 (class 0 OID 0)
-- Dependencies: 214
-- Name: assoc_municipio_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_localizacao; Owner: -
--

ALTER SEQUENCE assoc_municipio_id_seq OWNED BY assoc_municipio.id;


--
-- TOC entry 213 (class 1259 OID 57490532)
-- Dependencies: 2617 2618 2619 13
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
-- TOC entry 212 (class 1259 OID 57490530)
-- Dependencies: 13 213
-- Name: codigo_postal_id_seq; Type: SEQUENCE; Schema: basico_localizacao; Owner: -
--

CREATE SEQUENCE codigo_postal_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4083 (class 0 OID 0)
-- Dependencies: 212
-- Name: codigo_postal_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_localizacao; Owner: -
--

ALTER SEQUENCE codigo_postal_id_seq OWNED BY codigo_postal.id;


--
-- TOC entry 211 (class 1259 OID 57490517)
-- Dependencies: 2612 2613 2614 2615 13
-- Name: endereco; Type: TABLE; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE TABLE endereco (
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
    CONSTRAINT endereco_constante_textual_pais_check CHECK (((constante_textual_pais IS NULL) OR (basico.fn_checkconstantetextualexists(constante_textual_pais) IS NOT NULL)))
);


--
-- TOC entry 210 (class 1259 OID 57490515)
-- Dependencies: 211 13
-- Name: endereco_id_seq; Type: SEQUENCE; Schema: basico_localizacao; Owner: -
--

CREATE SEQUENCE endereco_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4084 (class 0 OID 0)
-- Dependencies: 210
-- Name: endereco_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_localizacao; Owner: -
--

ALTER SEQUENCE endereco_id_seq OWNED BY endereco.id;


--
-- TOC entry 209 (class 1259 OID 57490500)
-- Dependencies: 2607 2608 2609 2610 13
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
-- TOC entry 208 (class 1259 OID 57490498)
-- Dependencies: 13 209
-- Name: pais_id_seq; Type: SEQUENCE; Schema: basico_localizacao; Owner: -
--

CREATE SEQUENCE pais_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4085 (class 0 OID 0)
-- Dependencies: 208
-- Name: pais_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_localizacao; Owner: -
--

ALTER SEQUENCE pais_id_seq OWNED BY pais.id;


SET search_path = basico_mascara, pg_catalog;

--
-- TOC entry 207 (class 1259 OID 57490484)
-- Dependencies: 2605 34
-- Name: assoccl_include; Type: TABLE; Schema: basico_mascara; Owner: -; Tablespace: 
--

CREATE TABLE assoccl_include (
    id integer NOT NULL,
    id_mascara integer NOT NULL,
    id_include integer NOT NULL,
    ordem integer NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 206 (class 1259 OID 57490482)
-- Dependencies: 34 207
-- Name: assoccl_include_id_seq; Type: SEQUENCE; Schema: basico_mascara; Owner: -
--

CREATE SEQUENCE assoccl_include_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4086 (class 0 OID 0)
-- Dependencies: 206
-- Name: assoccl_include_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_mascara; Owner: -
--

ALTER SEQUENCE assoccl_include_id_seq OWNED BY assoccl_include.id;


SET search_path = basico_mensagem, pg_catalog;

--
-- TOC entry 205 (class 1259 OID 57490471)
-- Dependencies: 2602 2603 6
-- Name: assoc_email; Type: TABLE; Schema: basico_mensagem; Owner: -; Tablespace: 
--

CREATE TABLE assoc_email (
    id integer NOT NULL,
    id_mensagem integer NOT NULL,
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
-- TOC entry 204 (class 1259 OID 57490469)
-- Dependencies: 205 6
-- Name: assoc_email_id_seq; Type: SEQUENCE; Schema: basico_mensagem; Owner: -
--

CREATE SEQUENCE assoc_email_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4087 (class 0 OID 0)
-- Dependencies: 204
-- Name: assoc_email_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_mensagem; Owner: -
--

ALTER SEQUENCE assoc_email_id_seq OWNED BY assoc_email.id;


--
-- TOC entry 203 (class 1259 OID 57490458)
-- Dependencies: 2599 2600 6
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
-- TOC entry 202 (class 1259 OID 57490456)
-- Dependencies: 6 203
-- Name: assoccl_assoccl_pessoa_perfil_id_seq; Type: SEQUENCE; Schema: basico_mensagem; Owner: -
--

CREATE SEQUENCE assoccl_assoccl_pessoa_perfil_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4088 (class 0 OID 0)
-- Dependencies: 202
-- Name: assoccl_assoccl_pessoa_perfil_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_mensagem; Owner: -
--

ALTER SEQUENCE assoccl_assoccl_pessoa_perfil_id_seq OWNED BY assoccl_assoccl_pessoa_perfil.id;


SET search_path = basico_mensagem_assoc_email, pg_catalog;

--
-- TOC entry 201 (class 1259 OID 57490444)
-- Dependencies: 2597 29
-- Name: assoccl_arquivo; Type: TABLE; Schema: basico_mensagem_assoc_email; Owner: -; Tablespace: 
--

CREATE TABLE assoccl_arquivo (
    id integer NOT NULL,
    id_assoc_email integer NOT NULL,
    id_arquivo integer NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 200 (class 1259 OID 57490442)
-- Dependencies: 29 201
-- Name: assoccl_arquivo_id_seq; Type: SEQUENCE; Schema: basico_mensagem_assoc_email; Owner: -
--

CREATE SEQUENCE assoccl_arquivo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4089 (class 0 OID 0)
-- Dependencies: 200
-- Name: assoccl_arquivo_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_mensagem_assoc_email; Owner: -
--

ALTER SEQUENCE assoccl_arquivo_id_seq OWNED BY assoccl_arquivo.id;


SET search_path = basico_metodo_validacao, pg_catalog;

--
-- TOC entry 199 (class 1259 OID 57490430)
-- Dependencies: 2595 30
-- Name: assoccl_include; Type: TABLE; Schema: basico_metodo_validacao; Owner: -; Tablespace: 
--

CREATE TABLE assoccl_include (
    id integer NOT NULL,
    id_metodo_validacao integer NOT NULL,
    id_include integer NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 198 (class 1259 OID 57490428)
-- Dependencies: 30 199
-- Name: assoccl_include_id_seq; Type: SEQUENCE; Schema: basico_metodo_validacao; Owner: -
--

CREATE SEQUENCE assoccl_include_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4090 (class 0 OID 0)
-- Dependencies: 198
-- Name: assoccl_include_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_metodo_validacao; Owner: -
--

ALTER SEQUENCE assoccl_include_id_seq OWNED BY assoccl_include.id;


SET search_path = basico_output, pg_catalog;

--
-- TOC entry 197 (class 1259 OID 57490414)
-- Dependencies: 2593 35
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
-- TOC entry 196 (class 1259 OID 57490412)
-- Dependencies: 197 35
-- Name: assoccl_include_id_seq; Type: SEQUENCE; Schema: basico_output; Owner: -
--

CREATE SEQUENCE assoccl_include_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4091 (class 0 OID 0)
-- Dependencies: 196
-- Name: assoccl_include_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_output; Owner: -
--

ALTER SEQUENCE assoccl_include_id_seq OWNED BY assoccl_include.id;


SET search_path = basico_perfil, pg_catalog;

--
-- TOC entry 195 (class 1259 OID 57490400)
-- Dependencies: 2591 21
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
-- TOC entry 194 (class 1259 OID 57490398)
-- Dependencies: 21 195
-- Name: assoccl_modulo_id_seq; Type: SEQUENCE; Schema: basico_perfil; Owner: -
--

CREATE SEQUENCE assoccl_modulo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4092 (class 0 OID 0)
-- Dependencies: 194
-- Name: assoccl_modulo_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_perfil; Owner: -
--

ALTER SEQUENCE assoccl_modulo_id_seq OWNED BY assoccl_modulo.id;


SET search_path = basico_pessoa, pg_catalog;

--
-- TOC entry 193 (class 1259 OID 57490386)
-- Dependencies: 2587 2588 2589 9
-- Name: assoc_dados; Type: TABLE; Schema: basico_pessoa; Owner: -; Tablespace: 
--

CREATE TABLE assoc_dados (
    id integer NOT NULL,
    id_pessoa integer NOT NULL,
    nome character varying(100) NOT NULL,
    data_nascimento timestamp without time zone,
    constante_textual_pais_nasc character varying(200),
    nome_uf_nascimento character varying(200),
    nome_municipio_nascimento character varying(200),
    nome_pai character varying(100),
    nome_mae character varying(100),
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT assoc_dados_constante_textual_pais_nasc_check CHECK (((constante_textual_pais_nasc IS NULL) OR (basico.fn_checkconstantetextualexists(constante_textual_pais_nasc) IS NOT NULL)))
);


--
-- TOC entry 192 (class 1259 OID 57490384)
-- Dependencies: 9 193
-- Name: assoc_dados_id_seq; Type: SEQUENCE; Schema: basico_pessoa; Owner: -
--

CREATE SEQUENCE assoc_dados_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4093 (class 0 OID 0)
-- Dependencies: 192
-- Name: assoc_dados_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_pessoa; Owner: -
--

ALTER SEQUENCE assoc_dados_id_seq OWNED BY assoc_dados.id;


--
-- TOC entry 191 (class 1259 OID 57490370)
-- Dependencies: 2583 2584 2585 9
-- Name: assoccl_perfil; Type: TABLE; Schema: basico_pessoa; Owner: -; Tablespace: 
--

CREATE TABLE assoccl_perfil (
    id integer NOT NULL,
    id_pessoa integer NOT NULL,
    id_perfil integer NOT NULL,
    ativo integer DEFAULT 0 NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 190 (class 1259 OID 57490368)
-- Dependencies: 9 191
-- Name: assoccl_perfil_id_seq; Type: SEQUENCE; Schema: basico_pessoa; Owner: -
--

CREATE SEQUENCE assoccl_perfil_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4094 (class 0 OID 0)
-- Dependencies: 190
-- Name: assoccl_perfil_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_pessoa; Owner: -
--

ALTER SEQUENCE assoccl_perfil_id_seq OWNED BY assoccl_perfil.id;


--
-- TOC entry 189 (class 1259 OID 57490357)
-- Dependencies: 2580 2581 9
-- Name: assoccl_vinculo_profissional; Type: TABLE; Schema: basico_pessoa; Owner: -; Tablespace: 
--

CREATE TABLE assoccl_vinculo_profissional (
    id integer NOT NULL,
    id_pessoa integer NOT NULL,
    id_tipo_vinculo integer NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 188 (class 1259 OID 57490355)
-- Dependencies: 189 9
-- Name: assoccl_vinculo_profissional_id_seq; Type: SEQUENCE; Schema: basico_pessoa; Owner: -
--

CREATE SEQUENCE assoccl_vinculo_profissional_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4095 (class 0 OID 0)
-- Dependencies: 188
-- Name: assoccl_vinculo_profissional_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_pessoa; Owner: -
--

ALTER SEQUENCE assoccl_vinculo_profissional_id_seq OWNED BY assoccl_vinculo_profissional.id;


SET search_path = basico_pessoa_juridica, pg_catalog;

--
-- TOC entry 187 (class 1259 OID 57490343)
-- Dependencies: 2576 2577 2578 16
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
-- TOC entry 186 (class 1259 OID 57490341)
-- Dependencies: 16 187
-- Name: assoc_banco_id_seq; Type: SEQUENCE; Schema: basico_pessoa_juridica; Owner: -
--

CREATE SEQUENCE assoc_banco_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4096 (class 0 OID 0)
-- Dependencies: 186
-- Name: assoc_banco_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_pessoa_juridica; Owner: -
--

ALTER SEQUENCE assoc_banco_id_seq OWNED BY assoc_banco.id;


--
-- TOC entry 185 (class 1259 OID 57490330)
-- Dependencies: 2573 2574 16
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
-- TOC entry 184 (class 1259 OID 57490328)
-- Dependencies: 185 16
-- Name: assoc_dados_id_seq; Type: SEQUENCE; Schema: basico_pessoa_juridica; Owner: -
--

CREATE SEQUENCE assoc_dados_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4097 (class 0 OID 0)
-- Dependencies: 184
-- Name: assoc_dados_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_pessoa_juridica; Owner: -
--

ALTER SEQUENCE assoc_dados_id_seq OWNED BY assoc_dados.id;


--
-- TOC entry 183 (class 1259 OID 57490316)
-- Dependencies: 2571 16
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
-- TOC entry 182 (class 1259 OID 57490314)
-- Dependencies: 183 16
-- Name: assocag_incubadora_id_seq; Type: SEQUENCE; Schema: basico_pessoa_juridica; Owner: -
--

CREATE SEQUENCE assocag_incubadora_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4098 (class 0 OID 0)
-- Dependencies: 182
-- Name: assocag_incubadora_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_pessoa_juridica; Owner: -
--

ALTER SEQUENCE assocag_incubadora_id_seq OWNED BY assocag_incubadora.id;


--
-- TOC entry 181 (class 1259 OID 57490299)
-- Dependencies: 2566 2567 2568 2569 16
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
-- TOC entry 180 (class 1259 OID 57490297)
-- Dependencies: 181 16
-- Name: assocag_parceria_id_seq; Type: SEQUENCE; Schema: basico_pessoa_juridica; Owner: -
--

CREATE SEQUENCE assocag_parceria_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4099 (class 0 OID 0)
-- Dependencies: 180
-- Name: assocag_parceria_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_pessoa_juridica; Owner: -
--

ALTER SEQUENCE assocag_parceria_id_seq OWNED BY assocag_parceria.id;


--
-- TOC entry 179 (class 1259 OID 57490285)
-- Dependencies: 2564 16
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
-- TOC entry 178 (class 1259 OID 57490283)
-- Dependencies: 16 179
-- Name: assoccl_area_economia_id_seq; Type: SEQUENCE; Schema: basico_pessoa_juridica; Owner: -
--

CREATE SEQUENCE assoccl_area_economia_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4100 (class 0 OID 0)
-- Dependencies: 178
-- Name: assoccl_area_economia_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_pessoa_juridica; Owner: -
--

ALTER SEQUENCE assoccl_area_economia_id_seq OWNED BY assoccl_area_economia.id;


--
-- TOC entry 177 (class 1259 OID 57490270)
-- Dependencies: 2561 2562 16
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
-- TOC entry 176 (class 1259 OID 57490268)
-- Dependencies: 177 16
-- Name: assoccl_capital_social_id_seq; Type: SEQUENCE; Schema: basico_pessoa_juridica; Owner: -
--

CREATE SEQUENCE assoccl_capital_social_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4101 (class 0 OID 0)
-- Dependencies: 176
-- Name: assoccl_capital_social_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_pessoa_juridica; Owner: -
--

ALTER SEQUENCE assoccl_capital_social_id_seq OWNED BY assoccl_capital_social.id;


--
-- TOC entry 175 (class 1259 OID 57490255)
-- Dependencies: 2558 2559 16
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
-- TOC entry 174 (class 1259 OID 57490253)
-- Dependencies: 175 16
-- Name: assoccl_faturamento_id_seq; Type: SEQUENCE; Schema: basico_pessoa_juridica; Owner: -
--

CREATE SEQUENCE assoccl_faturamento_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4102 (class 0 OID 0)
-- Dependencies: 174
-- Name: assoccl_faturamento_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_pessoa_juridica; Owner: -
--

ALTER SEQUENCE assoccl_faturamento_id_seq OWNED BY assoccl_faturamento.id;


--
-- TOC entry 173 (class 1259 OID 57490240)
-- Dependencies: 2555 2556 16
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
-- TOC entry 172 (class 1259 OID 57490238)
-- Dependencies: 173 16
-- Name: assoccl_quadro_funcionario_id_seq; Type: SEQUENCE; Schema: basico_pessoa_juridica; Owner: -
--

CREATE SEQUENCE assoccl_quadro_funcionario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4103 (class 0 OID 0)
-- Dependencies: 172
-- Name: assoccl_quadro_funcionario_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_pessoa_juridica; Owner: -
--

ALTER SEQUENCE assoccl_quadro_funcionario_id_seq OWNED BY assoccl_quadro_funcionario.id;


--
-- TOC entry 171 (class 1259 OID 57490224)
-- Dependencies: 2549 2550 2551 2552 2553 16
-- Name: capital_social; Type: TABLE; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE TABLE capital_social (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    nome character varying(100) NOT NULL,
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
-- TOC entry 170 (class 1259 OID 57490222)
-- Dependencies: 16 171
-- Name: capital_social_id_seq; Type: SEQUENCE; Schema: basico_pessoa_juridica; Owner: -
--

CREATE SEQUENCE capital_social_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4104 (class 0 OID 0)
-- Dependencies: 170
-- Name: capital_social_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_pessoa_juridica; Owner: -
--

ALTER SEQUENCE capital_social_id_seq OWNED BY capital_social.id;


--
-- TOC entry 169 (class 1259 OID 57490208)
-- Dependencies: 2543 2544 2545 2546 2547 16
-- Name: natureza; Type: TABLE; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE TABLE natureza (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    nome character varying(100) NOT NULL,
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
-- TOC entry 168 (class 1259 OID 57490206)
-- Dependencies: 169 16
-- Name: natureza_id_seq; Type: SEQUENCE; Schema: basico_pessoa_juridica; Owner: -
--

CREATE SEQUENCE natureza_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4105 (class 0 OID 0)
-- Dependencies: 168
-- Name: natureza_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_pessoa_juridica; Owner: -
--

ALTER SEQUENCE natureza_id_seq OWNED BY natureza.id;


SET search_path = basico_sequencia, pg_catalog;

--
-- TOC entry 167 (class 1259 OID 57490190)
-- Dependencies: 2537 2538 2539 2540 2541 39
-- Name: assocsq_acao_aplicacao; Type: TABLE; Schema: basico_sequencia; Owner: -; Tablespace: 
--

CREATE TABLE assocsq_acao_aplicacao (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    id_sequencia integer NOT NULL,
    id_acao_aplicacao integer NOT NULL,
    nome character varying(100) NOT NULL,
    constante_textual character varying(200),
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
-- TOC entry 166 (class 1259 OID 57490188)
-- Dependencies: 167 39
-- Name: assocsq_acao_aplicacao_id_seq; Type: SEQUENCE; Schema: basico_sequencia; Owner: -
--

CREATE SEQUENCE assocsq_acao_aplicacao_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4106 (class 0 OID 0)
-- Dependencies: 166
-- Name: assocsq_acao_aplicacao_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_sequencia; Owner: -
--

ALTER SEQUENCE assocsq_acao_aplicacao_id_seq OWNED BY assocsq_acao_aplicacao.id;


SET search_path = basico_template, pg_catalog;

--
-- TOC entry 165 (class 1259 OID 57490174)
-- Dependencies: 2535 31
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
-- TOC entry 164 (class 1259 OID 57490172)
-- Dependencies: 31 165
-- Name: assoccl_include_id_seq; Type: SEQUENCE; Schema: basico_template; Owner: -
--

CREATE SEQUENCE assoccl_include_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4107 (class 0 OID 0)
-- Dependencies: 164
-- Name: assoccl_include_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_template; Owner: -
--

ALTER SEQUENCE assoccl_include_id_seq OWNED BY assoccl_include.id;


--
-- TOC entry 163 (class 1259 OID 57490160)
-- Dependencies: 2533 31
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
-- TOC entry 162 (class 1259 OID 57490158)
-- Dependencies: 163 31
-- Name: assoccl_output_id_seq; Type: SEQUENCE; Schema: basico_template; Owner: -
--

CREATE SEQUENCE assoccl_output_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4108 (class 0 OID 0)
-- Dependencies: 162
-- Name: assoccl_output_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_template; Owner: -
--

ALTER SEQUENCE assoccl_output_id_seq OWNED BY assoccl_output.id;


SET search_path = public, pg_catalog;

--
-- TOC entry 161 (class 1259 OID 57408138)
-- Dependencies: 2529 2530 2531 3
-- Name: ajuda_temp; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ajuda_temp (
    id integer,
    id_categoria integer,
    nome character varying(100),
    constante_textual character varying(200),
    constante_textual_descricao character varying(200),
    constante_textual_ajuda character varying(200),
    constante_textual_hint character varying(200),
    ativo boolean DEFAULT false,
    datahora_criacao timestamp without time zone DEFAULT now(),
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now(),
    rowinfo character varying(2000)
);


SET search_path = basico, pg_catalog;

--
-- TOC entry 3004 (class 2604 OID 57491814)
-- Dependencies: 374 375 375
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE acao_aplicacao ALTER COLUMN id SET DEFAULT nextval('acao_aplicacao_id_seq'::regclass);


--
-- TOC entry 2995 (class 2604 OID 57491795)
-- Dependencies: 372 373 373
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ajuda ALTER COLUMN id SET DEFAULT nextval('ajuda_id_seq'::regclass);


--
-- TOC entry 2988 (class 2604 OID 57491778)
-- Dependencies: 371 370 371
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE area_conhecimento ALTER COLUMN id SET DEFAULT nextval('area_conhecimento_id_seq'::regclass);


--
-- TOC entry 2980 (class 2604 OID 57491760)
-- Dependencies: 369 368 369
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE area_economia ALTER COLUMN id SET DEFAULT nextval('area_economia_id_seq'::regclass);


--
-- TOC entry 2972 (class 2604 OID 57491742)
-- Dependencies: 366 367 367
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE arquivo ALTER COLUMN id SET DEFAULT nextval('arquivo_id_seq'::regclass);


--
-- TOC entry 2963 (class 2604 OID 57491723)
-- Dependencies: 364 365 365
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE categoria ALTER COLUMN id SET DEFAULT nextval('categoria_id_seq'::regclass);


--
-- TOC entry 2958 (class 2604 OID 57491706)
-- Dependencies: 362 363 363
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE codigo_acesso ALTER COLUMN id SET DEFAULT nextval('codigo_acesso_id_seq'::regclass);


--
-- TOC entry 2952 (class 2604 OID 57491690)
-- Dependencies: 361 360 361
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE componente ALTER COLUMN id SET DEFAULT nextval('componente_id_seq'::regclass);


--
-- TOC entry 2949 (class 2604 OID 57491675)
-- Dependencies: 358 359 359
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE dados_bancarios ALTER COLUMN id SET DEFAULT nextval('dados_bancarios_id_seq'::regclass);


--
-- TOC entry 2945 (class 2604 OID 57491660)
-- Dependencies: 357 356 357
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE dados_biometricos ALTER COLUMN id SET DEFAULT nextval('dados_biometricos_id_seq'::regclass);


--
-- TOC entry 2940 (class 2604 OID 57491643)
-- Dependencies: 354 355 355
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE dicionario_expressao ALTER COLUMN id SET DEFAULT nextval('dicionario_expressao_id_seq'::regclass);


--
-- TOC entry 2936 (class 2604 OID 57491627)
-- Dependencies: 352 353 353
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE documento_identificacao ALTER COLUMN id SET DEFAULT nextval('documento_identificacao_id_seq'::regclass);


--
-- TOC entry 2930 (class 2604 OID 57491611)
-- Dependencies: 351 350 351
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE evento ALTER COLUMN id SET DEFAULT nextval('evento_id_seq'::regclass);


--
-- TOC entry 2924 (class 2604 OID 57491595)
-- Dependencies: 349 348 349
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE filter ALTER COLUMN id SET DEFAULT nextval('filter_id_seq'::regclass);


--
-- TOC entry 2916 (class 2604 OID 57491577)
-- Dependencies: 347 346 347
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE formulario ALTER COLUMN id SET DEFAULT nextval('formulario_id_seq'::regclass);


--
-- TOC entry 2910 (class 2604 OID 57491561)
-- Dependencies: 345 344 345
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE include ALTER COLUMN id SET DEFAULT nextval('include_id_seq'::regclass);


--
-- TOC entry 2903 (class 2604 OID 57491542)
-- Dependencies: 342 343 343
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE link ALTER COLUMN id SET DEFAULT nextval('link_id_seq'::regclass);


--
-- TOC entry 2902 (class 2604 OID 57491531)
-- Dependencies: 341 340 341
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE log ALTER COLUMN id SET DEFAULT nextval('log_id_seq'::regclass);


--
-- TOC entry 2893 (class 2604 OID 57491510)
-- Dependencies: 339 338 339
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE login ALTER COLUMN id SET DEFAULT nextval('login_id_seq'::regclass);


--
-- TOC entry 2887 (class 2604 OID 57491494)
-- Dependencies: 336 337 337
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE mascara ALTER COLUMN id SET DEFAULT nextval('mascara_id_seq'::regclass);


--
-- TOC entry 2877 (class 2604 OID 57491474)
-- Dependencies: 334 335 335
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE mensagem ALTER COLUMN id SET DEFAULT nextval('mensagem_id_seq'::regclass);


--
-- TOC entry 2871 (class 2604 OID 57491458)
-- Dependencies: 332 333 333
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE metodo_validacao ALTER COLUMN id SET DEFAULT nextval('metodo_validacao_id_seq'::regclass);


--
-- TOC entry 2864 (class 2604 OID 57491441)
-- Dependencies: 330 331 331
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE modulo ALTER COLUMN id SET DEFAULT nextval('modulo_id_seq'::regclass);


--
-- TOC entry 2858 (class 2604 OID 57491425)
-- Dependencies: 329 328 329
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE output ALTER COLUMN id SET DEFAULT nextval('output_id_seq'::regclass);


--
-- TOC entry 2851 (class 2604 OID 57491408)
-- Dependencies: 327 326 327
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE perfil ALTER COLUMN id SET DEFAULT nextval('perfil_id_seq'::regclass);


--
-- TOC entry 2848 (class 2604 OID 57491395)
-- Dependencies: 324 325 325
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE pessoa ALTER COLUMN id SET DEFAULT nextval('pessoa_id_seq'::regclass);


--
-- TOC entry 2843 (class 2604 OID 57491380)
-- Dependencies: 322 323 323
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE pessoa_juridica ALTER COLUMN id SET DEFAULT nextval('pessoa_juridica_id_seq'::regclass);


--
-- TOC entry 2837 (class 2604 OID 57491364)
-- Dependencies: 320 321 321
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE produto ALTER COLUMN id SET DEFAULT nextval('produto_id_seq'::regclass);


--
-- TOC entry 2831 (class 2604 OID 57491348)
-- Dependencies: 319 318 319
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE profissao ALTER COLUMN id SET DEFAULT nextval('profissao_id_seq'::regclass);


--
-- TOC entry 2825 (class 2604 OID 57491332)
-- Dependencies: 317 316 317
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE sequencia ALTER COLUMN id SET DEFAULT nextval('sequencia_id_seq'::regclass);


--
-- TOC entry 2819 (class 2604 OID 57491316)
-- Dependencies: 315 314 315
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE template ALTER COLUMN id SET DEFAULT nextval('template_id_seq'::regclass);


--
-- TOC entry 2810 (class 2604 OID 57491297)
-- Dependencies: 313 312 313
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE tipo_categoria ALTER COLUMN id SET DEFAULT nextval('tipo_categoria_id_seq'::regclass);


--
-- TOC entry 2807 (class 2604 OID 57491284)
-- Dependencies: 310 311 311
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE token ALTER COLUMN id SET DEFAULT nextval('token_id_seq'::regclass);


--
-- TOC entry 2801 (class 2604 OID 57491268)
-- Dependencies: 308 309 309
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE validator ALTER COLUMN id SET DEFAULT nextval('validator_id_seq'::regclass);


SET search_path = basico_acao_aplic_assoc_visao, pg_catalog;

--
-- TOC entry 2799 (class 2604 OID 57491256)
-- Dependencies: 306 307 307
-- Name: id; Type: DEFAULT; Schema: basico_acao_aplic_assoc_visao; Owner: -
--

ALTER TABLE assoccl_atrib_met_rec_post ALTER COLUMN id SET DEFAULT nextval('assoccl_atrib_met_rec_post_id_seq'::regclass);


--
-- TOC entry 2795 (class 2604 OID 57491240)
-- Dependencies: 304 305 305
-- Name: id; Type: DEFAULT; Schema: basico_acao_aplic_assoc_visao; Owner: -
--

ALTER TABLE atributo_metodo_recup_post ALTER COLUMN id SET DEFAULT nextval('atributo_metodo_recup_post_id_seq'::regclass);


SET search_path = basico_acao_aplicacao, pg_catalog;

--
-- TOC entry 2787 (class 2604 OID 57491222)
-- Dependencies: 303 302 303
-- Name: id; Type: DEFAULT; Schema: basico_acao_aplicacao; Owner: -
--

ALTER TABLE assoc_visao ALTER COLUMN id SET DEFAULT nextval('assoc_visao_id_seq'::regclass);


--
-- TOC entry 2785 (class 2604 OID 57491208)
-- Dependencies: 300 301 301
-- Name: id; Type: DEFAULT; Schema: basico_acao_aplicacao; Owner: -
--

ALTER TABLE assoccl_metodo_validacao ALTER COLUMN id SET DEFAULT nextval('assoccl_metodo_validacao_id_seq'::regclass);


--
-- TOC entry 2783 (class 2604 OID 57491194)
-- Dependencies: 298 299 299
-- Name: id; Type: DEFAULT; Schema: basico_acao_aplicacao; Owner: -
--

ALTER TABLE assoccl_perfil ALTER COLUMN id SET DEFAULT nextval('assoccl_perfil_id_seq'::regclass);


SET search_path = basico_ajuda, pg_catalog;

--
-- TOC entry 2781 (class 2604 OID 57491180)
-- Dependencies: 297 296 297
-- Name: id; Type: DEFAULT; Schema: basico_ajuda; Owner: -
--

ALTER TABLE assoccl_link ALTER COLUMN id SET DEFAULT nextval('assoccl_link_id_seq'::regclass);


SET search_path = basico_assoc_banco, pg_catalog;

--
-- TOC entry 2776 (class 2604 OID 57491165)
-- Dependencies: 294 295 295
-- Name: id; Type: DEFAULT; Schema: basico_assoc_banco; Owner: -
--

ALTER TABLE assoc_tipo_conta ALTER COLUMN id SET DEFAULT nextval('assoc_tipo_conta_id_seq'::regclass);


SET search_path = basico_assoc_chave_estrangeira, pg_catalog;

--
-- TOC entry 2774 (class 2604 OID 57491151)
-- Dependencies: 293 292 293
-- Name: id; Type: DEFAULT; Schema: basico_assoc_chave_estrangeira; Owner: -
--

ALTER TABLE relacao ALTER COLUMN id SET DEFAULT nextval('relacao_id_seq'::regclass);


SET search_path = basico_assoc_dados_profis, pg_catalog;

--
-- TOC entry 2772 (class 2604 OID 57491137)
-- Dependencies: 291 290 291
-- Name: id; Type: DEFAULT; Schema: basico_assoc_dados_profis; Owner: -
--

ALTER TABLE assoccl_area_conhecimento ALTER COLUMN id SET DEFAULT nextval('assoccl_area_conhecimento_id_seq'::regclass);


SET search_path = basico_assoccl_pessoa_perfil, pg_catalog;

--
-- TOC entry 2769 (class 2604 OID 57491124)
-- Dependencies: 288 289 289
-- Name: id; Type: DEFAULT; Schema: basico_assoccl_pessoa_perfil; Owner: -
--

ALTER TABLE assoc_dados ALTER COLUMN id SET DEFAULT nextval('assoc_dados_id_seq'::regclass);


SET search_path = basico_assocl_vinculo_profissional, pg_catalog;

--
-- TOC entry 2766 (class 2604 OID 57491111)
-- Dependencies: 286 287 287
-- Name: id; Type: DEFAULT; Schema: basico_assocl_vinculo_profissional; Owner: -
--

ALTER TABLE assoc_dados ALTER COLUMN id SET DEFAULT nextval('assoc_dados_id_seq'::regclass);


SET search_path = basico_categoria, pg_catalog;

--
-- TOC entry 2763 (class 2604 OID 57491096)
-- Dependencies: 285 284 285
-- Name: id; Type: DEFAULT; Schema: basico_categoria; Owner: -
--

ALTER TABLE assoc_chave_estrangeira ALTER COLUMN id SET DEFAULT nextval('assoc_chave_estrangeira_id_seq'::regclass);


SET search_path = basico_componente, pg_catalog;

--
-- TOC entry 2761 (class 2604 OID 57491080)
-- Dependencies: 283 282 283
-- Name: id; Type: DEFAULT; Schema: basico_componente; Owner: -
--

ALTER TABLE assoccl_include ALTER COLUMN id SET DEFAULT nextval('assoccl_include_id_seq'::regclass);


SET search_path = basico_contato, pg_catalog;

--
-- TOC entry 2753 (class 2604 OID 57491060)
-- Dependencies: 280 281 281
-- Name: id; Type: DEFAULT; Schema: basico_contato; Owner: -
--

ALTER TABLE email ALTER COLUMN id SET DEFAULT nextval('email_id_seq'::regclass);


--
-- TOC entry 2746 (class 2604 OID 57491041)
-- Dependencies: 279 278 279
-- Name: id; Type: DEFAULT; Schema: basico_contato; Owner: -
--

ALTER TABLE telefone ALTER COLUMN id SET DEFAULT nextval('telefone_id_seq'::regclass);


SET search_path = basico_cvc, pg_catalog;

--
-- TOC entry 2741 (class 2604 OID 57491024)
-- Dependencies: 277 276 277
-- Name: id; Type: DEFAULT; Schema: basico_cvc; Owner: -
--

ALTER TABLE cvc ALTER COLUMN id SET DEFAULT nextval('cvc_id_seq'::regclass);


SET search_path = basico_dados_academicos, pg_catalog;

--
-- TOC entry 2735 (class 2604 OID 57491008)
-- Dependencies: 275 274 275
-- Name: id; Type: DEFAULT; Schema: basico_dados_academicos; Owner: -
--

ALTER TABLE titulacao ALTER COLUMN id SET DEFAULT nextval('titulacao_id_seq'::regclass);


SET search_path = basico_dados_biometricos, pg_catalog;

--
-- TOC entry 2729 (class 2604 OID 57490992)
-- Dependencies: 273 272 273
-- Name: id; Type: DEFAULT; Schema: basico_dados_biometricos; Owner: -
--

ALTER TABLE tipo_sanguineo ALTER COLUMN id SET DEFAULT nextval('tipo_sanguineo_id_seq'::regclass);


SET search_path = basico_dados_profissionais, pg_catalog;

--
-- TOC entry 2722 (class 2604 OID 57490975)
-- Dependencies: 271 270 271
-- Name: id; Type: DEFAULT; Schema: basico_dados_profissionais; Owner: -
--

ALTER TABLE regime_trabalho ALTER COLUMN id SET DEFAULT nextval('regime_trabalho_id_seq'::regclass);


--
-- TOC entry 2714 (class 2604 OID 57490957)
-- Dependencies: 268 269 269
-- Name: id; Type: DEFAULT; Schema: basico_dados_profissionais; Owner: -
--

ALTER TABLE tipo_vinculo ALTER COLUMN id SET DEFAULT nextval('tipo_vinculo_id_seq'::regclass);


--
-- TOC entry 2708 (class 2604 OID 57490941)
-- Dependencies: 267 266 267
-- Name: id; Type: DEFAULT; Schema: basico_dados_profissionais; Owner: -
--

ALTER TABLE vinculo_empregaticio ALTER COLUMN id SET DEFAULT nextval('vinculo_empregaticio_id_seq'::regclass);


SET search_path = basico_decorator, pg_catalog;

--
-- TOC entry 2706 (class 2604 OID 57490925)
-- Dependencies: 265 264 265
-- Name: id; Type: DEFAULT; Schema: basico_decorator; Owner: -
--

ALTER TABLE assoccl_include ALTER COLUMN id SET DEFAULT nextval('assoccl_include_id_seq'::regclass);


SET search_path = basico_form_assoccl_elem_grupo, pg_catalog;

--
-- TOC entry 2704 (class 2604 OID 57490913)
-- Dependencies: 262 263 263
-- Name: id; Type: DEFAULT; Schema: basico_form_assoccl_elem_grupo; Owner: -
--

ALTER TABLE assoccl_decorator ALTER COLUMN id SET DEFAULT nextval('assoccl_decorator_id_seq'::regclass);


SET search_path = basico_form_assoccl_elemento, pg_catalog;

--
-- TOC entry 2701 (class 2604 OID 57490896)
-- Dependencies: 261 260 261
-- Name: id; Type: DEFAULT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE assoccl_decorator ALTER COLUMN id SET DEFAULT nextval('assoccl_decorator_id_seq'::regclass);


--
-- TOC entry 2698 (class 2604 OID 57490883)
-- Dependencies: 259 258 259
-- Name: id; Type: DEFAULT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE assoccl_evento ALTER COLUMN id SET DEFAULT nextval('assoccl_evento_id_seq'::regclass);


--
-- TOC entry 2695 (class 2604 OID 57490868)
-- Dependencies: 257 256 257
-- Name: id; Type: DEFAULT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE assoccl_filter ALTER COLUMN id SET DEFAULT nextval('assoccl_filter_id_seq'::regclass);


--
-- TOC entry 2692 (class 2604 OID 57490851)
-- Dependencies: 255 254 255
-- Name: id; Type: DEFAULT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE assoccl_include ALTER COLUMN id SET DEFAULT nextval('assoccl_include_id_seq'::regclass);


--
-- TOC entry 2689 (class 2604 OID 57490836)
-- Dependencies: 253 252 253
-- Name: id; Type: DEFAULT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE assoccl_validator ALTER COLUMN id SET DEFAULT nextval('assoccl_validator_id_seq'::regclass);


--
-- TOC entry 2683 (class 2604 OID 57490820)
-- Dependencies: 251 250 251
-- Name: id; Type: DEFAULT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE grupo ALTER COLUMN id SET DEFAULT nextval('grupo_id_seq'::regclass);


SET search_path = basico_form_elemento, pg_catalog;

--
-- TOC entry 2681 (class 2604 OID 57490806)
-- Dependencies: 249 248 249
-- Name: id; Type: DEFAULT; Schema: basico_form_elemento; Owner: -
--

ALTER TABLE assoccl_evento ALTER COLUMN id SET DEFAULT nextval('assoccl_evento_id_seq'::regclass);


SET search_path = basico_formulario, pg_catalog;

--
-- TOC entry 2679 (class 2604 OID 57490792)
-- Dependencies: 246 247 247
-- Name: id; Type: DEFAULT; Schema: basico_formulario; Owner: -
--

ALTER TABLE assoccl_decorator ALTER COLUMN id SET DEFAULT nextval('assoccl_decorator_id_seq'::regclass);


--
-- TOC entry 2673 (class 2604 OID 57490774)
-- Dependencies: 244 245 245
-- Name: id; Type: DEFAULT; Schema: basico_formulario; Owner: -
--

ALTER TABLE assoccl_elemento ALTER COLUMN id SET DEFAULT nextval('assoccl_elemento_id_seq'::regclass);


--
-- TOC entry 2671 (class 2604 OID 57490760)
-- Dependencies: 243 242 243
-- Name: id; Type: DEFAULT; Schema: basico_formulario; Owner: -
--

ALTER TABLE assoccl_evento ALTER COLUMN id SET DEFAULT nextval('assoccl_evento_id_seq'::regclass);


--
-- TOC entry 2669 (class 2604 OID 57490744)
-- Dependencies: 240 241 241
-- Name: id; Type: DEFAULT; Schema: basico_formulario; Owner: -
--

ALTER TABLE assoccl_include ALTER COLUMN id SET DEFAULT nextval('assoccl_include_id_seq'::regclass);


--
-- TOC entry 2667 (class 2604 OID 57490732)
-- Dependencies: 238 239 239
-- Name: id; Type: DEFAULT; Schema: basico_formulario; Owner: -
--

ALTER TABLE assoccl_modulo ALTER COLUMN id SET DEFAULT nextval('assoccl_modulo_id_seq'::regclass);


--
-- TOC entry 2665 (class 2604 OID 57490718)
-- Dependencies: 236 237 237
-- Name: id; Type: DEFAULT; Schema: basico_formulario; Owner: -
--

ALTER TABLE assoccl_template ALTER COLUMN id SET DEFAULT nextval('assoccl_template_id_seq'::regclass);


--
-- TOC entry 2659 (class 2604 OID 57490702)
-- Dependencies: 234 235 235
-- Name: id; Type: DEFAULT; Schema: basico_formulario; Owner: -
--

ALTER TABLE decorator ALTER COLUMN id SET DEFAULT nextval('decorator_id_seq'::regclass);


--
-- TOC entry 2651 (class 2604 OID 57490684)
-- Dependencies: 233 232 233
-- Name: id; Type: DEFAULT; Schema: basico_formulario; Owner: -
--

ALTER TABLE elemento ALTER COLUMN id SET DEFAULT nextval('elemento_id_seq'::regclass);


--
-- TOC entry 2647 (class 2604 OID 57490670)
-- Dependencies: 231 230 231
-- Name: id; Type: DEFAULT; Schema: basico_formulario; Owner: -
--

ALTER TABLE rascunho ALTER COLUMN id SET DEFAULT nextval('rascunho_id_seq'::regclass);


SET search_path = basico_formulario_elemento, pg_catalog;

--
-- TOC entry 2645 (class 2604 OID 57490654)
-- Dependencies: 228 229 229
-- Name: id; Type: DEFAULT; Schema: basico_formulario_elemento; Owner: -
--

ALTER TABLE assoccl_decorator ALTER COLUMN id SET DEFAULT nextval('assoccl_decorator_id_seq'::regclass);


--
-- TOC entry 2643 (class 2604 OID 57490640)
-- Dependencies: 226 227 227
-- Name: id; Type: DEFAULT; Schema: basico_formulario_elemento; Owner: -
--

ALTER TABLE assoccl_filter ALTER COLUMN id SET DEFAULT nextval('assoccl_filter_id_seq'::regclass);


--
-- TOC entry 2641 (class 2604 OID 57490626)
-- Dependencies: 225 224 225
-- Name: id; Type: DEFAULT; Schema: basico_formulario_elemento; Owner: -
--

ALTER TABLE assoccl_validator ALTER COLUMN id SET DEFAULT nextval('assoccl_validator_id_seq'::regclass);


SET search_path = basico_formulario_rascunho, pg_catalog;

--
-- TOC entry 2638 (class 2604 OID 57490613)
-- Dependencies: 223 222 223
-- Name: id; Type: DEFAULT; Schema: basico_formulario_rascunho; Owner: -
--

ALTER TABLE assocag_grupo ALTER COLUMN id SET DEFAULT nextval('assocag_grupo_id_seq'::regclass);


SET search_path = basico_localizacao, pg_catalog;

--
-- TOC entry 2634 (class 2604 OID 57490599)
-- Dependencies: 221 220 221
-- Name: id; Type: DEFAULT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE assoc_bairro ALTER COLUMN id SET DEFAULT nextval('assoc_bairro_id_seq'::regclass);


--
-- TOC entry 2629 (class 2604 OID 57490582)
-- Dependencies: 219 218 219
-- Name: id; Type: DEFAULT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE assoc_estado ALTER COLUMN id SET DEFAULT nextval('assoc_estado_id_seq'::regclass);


--
-- TOC entry 2625 (class 2604 OID 57490568)
-- Dependencies: 217 216 217
-- Name: id; Type: DEFAULT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE assoc_logradouro ALTER COLUMN id SET DEFAULT nextval('assoc_logradouro_id_seq'::regclass);


--
-- TOC entry 2620 (class 2604 OID 57490551)
-- Dependencies: 215 214 215
-- Name: id; Type: DEFAULT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE assoc_municipio ALTER COLUMN id SET DEFAULT nextval('assoc_municipio_id_seq'::regclass);


--
-- TOC entry 2616 (class 2604 OID 57490535)
-- Dependencies: 213 212 213
-- Name: id; Type: DEFAULT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE codigo_postal ALTER COLUMN id SET DEFAULT nextval('codigo_postal_id_seq'::regclass);


--
-- TOC entry 2611 (class 2604 OID 57490520)
-- Dependencies: 210 211 211
-- Name: id; Type: DEFAULT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE endereco ALTER COLUMN id SET DEFAULT nextval('endereco_id_seq'::regclass);


--
-- TOC entry 2606 (class 2604 OID 57490503)
-- Dependencies: 208 209 209
-- Name: id; Type: DEFAULT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE pais ALTER COLUMN id SET DEFAULT nextval('pais_id_seq'::regclass);


SET search_path = basico_mascara, pg_catalog;

--
-- TOC entry 2604 (class 2604 OID 57490487)
-- Dependencies: 207 206 207
-- Name: id; Type: DEFAULT; Schema: basico_mascara; Owner: -
--

ALTER TABLE assoccl_include ALTER COLUMN id SET DEFAULT nextval('assoccl_include_id_seq'::regclass);


SET search_path = basico_mensagem, pg_catalog;

--
-- TOC entry 2601 (class 2604 OID 57490474)
-- Dependencies: 205 204 205
-- Name: id; Type: DEFAULT; Schema: basico_mensagem; Owner: -
--

ALTER TABLE assoc_email ALTER COLUMN id SET DEFAULT nextval('assoc_email_id_seq'::regclass);


--
-- TOC entry 2598 (class 2604 OID 57490461)
-- Dependencies: 202 203 203
-- Name: id; Type: DEFAULT; Schema: basico_mensagem; Owner: -
--

ALTER TABLE assoccl_assoccl_pessoa_perfil ALTER COLUMN id SET DEFAULT nextval('assoccl_assoccl_pessoa_perfil_id_seq'::regclass);


SET search_path = basico_mensagem_assoc_email, pg_catalog;

--
-- TOC entry 2596 (class 2604 OID 57490447)
-- Dependencies: 200 201 201
-- Name: id; Type: DEFAULT; Schema: basico_mensagem_assoc_email; Owner: -
--

ALTER TABLE assoccl_arquivo ALTER COLUMN id SET DEFAULT nextval('assoccl_arquivo_id_seq'::regclass);


SET search_path = basico_metodo_validacao, pg_catalog;

--
-- TOC entry 2594 (class 2604 OID 57490433)
-- Dependencies: 198 199 199
-- Name: id; Type: DEFAULT; Schema: basico_metodo_validacao; Owner: -
--

ALTER TABLE assoccl_include ALTER COLUMN id SET DEFAULT nextval('assoccl_include_id_seq'::regclass);


SET search_path = basico_output, pg_catalog;

--
-- TOC entry 2592 (class 2604 OID 57490417)
-- Dependencies: 197 196 197
-- Name: id; Type: DEFAULT; Schema: basico_output; Owner: -
--

ALTER TABLE assoccl_include ALTER COLUMN id SET DEFAULT nextval('assoccl_include_id_seq'::regclass);


SET search_path = basico_perfil, pg_catalog;

--
-- TOC entry 2590 (class 2604 OID 57490403)
-- Dependencies: 195 194 195
-- Name: id; Type: DEFAULT; Schema: basico_perfil; Owner: -
--

ALTER TABLE assoccl_modulo ALTER COLUMN id SET DEFAULT nextval('assoccl_modulo_id_seq'::regclass);


SET search_path = basico_pessoa, pg_catalog;

--
-- TOC entry 2586 (class 2604 OID 57490389)
-- Dependencies: 192 193 193
-- Name: id; Type: DEFAULT; Schema: basico_pessoa; Owner: -
--

ALTER TABLE assoc_dados ALTER COLUMN id SET DEFAULT nextval('assoc_dados_id_seq'::regclass);


--
-- TOC entry 2582 (class 2604 OID 57490373)
-- Dependencies: 191 190 191
-- Name: id; Type: DEFAULT; Schema: basico_pessoa; Owner: -
--

ALTER TABLE assoccl_perfil ALTER COLUMN id SET DEFAULT nextval('assoccl_perfil_id_seq'::regclass);


--
-- TOC entry 2579 (class 2604 OID 57490360)
-- Dependencies: 188 189 189
-- Name: id; Type: DEFAULT; Schema: basico_pessoa; Owner: -
--

ALTER TABLE assoccl_vinculo_profissional ALTER COLUMN id SET DEFAULT nextval('assoccl_vinculo_profissional_id_seq'::regclass);


SET search_path = basico_pessoa_juridica, pg_catalog;

--
-- TOC entry 2575 (class 2604 OID 57490346)
-- Dependencies: 187 186 187
-- Name: id; Type: DEFAULT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE assoc_banco ALTER COLUMN id SET DEFAULT nextval('assoc_banco_id_seq'::regclass);


--
-- TOC entry 2572 (class 2604 OID 57490333)
-- Dependencies: 185 184 185
-- Name: id; Type: DEFAULT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE assoc_dados ALTER COLUMN id SET DEFAULT nextval('assoc_dados_id_seq'::regclass);


--
-- TOC entry 2570 (class 2604 OID 57490319)
-- Dependencies: 182 183 183
-- Name: id; Type: DEFAULT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE assocag_incubadora ALTER COLUMN id SET DEFAULT nextval('assocag_incubadora_id_seq'::regclass);


--
-- TOC entry 2565 (class 2604 OID 57490302)
-- Dependencies: 181 180 181
-- Name: id; Type: DEFAULT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE assocag_parceria ALTER COLUMN id SET DEFAULT nextval('assocag_parceria_id_seq'::regclass);


--
-- TOC entry 2563 (class 2604 OID 57490288)
-- Dependencies: 178 179 179
-- Name: id; Type: DEFAULT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE assoccl_area_economia ALTER COLUMN id SET DEFAULT nextval('assoccl_area_economia_id_seq'::regclass);


--
-- TOC entry 2560 (class 2604 OID 57490273)
-- Dependencies: 177 176 177
-- Name: id; Type: DEFAULT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE assoccl_capital_social ALTER COLUMN id SET DEFAULT nextval('assoccl_capital_social_id_seq'::regclass);


--
-- TOC entry 2557 (class 2604 OID 57490258)
-- Dependencies: 174 175 175
-- Name: id; Type: DEFAULT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE assoccl_faturamento ALTER COLUMN id SET DEFAULT nextval('assoccl_faturamento_id_seq'::regclass);


--
-- TOC entry 2554 (class 2604 OID 57490243)
-- Dependencies: 172 173 173
-- Name: id; Type: DEFAULT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE assoccl_quadro_funcionario ALTER COLUMN id SET DEFAULT nextval('assoccl_quadro_funcionario_id_seq'::regclass);


--
-- TOC entry 2548 (class 2604 OID 57490227)
-- Dependencies: 170 171 171
-- Name: id; Type: DEFAULT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE capital_social ALTER COLUMN id SET DEFAULT nextval('capital_social_id_seq'::regclass);


--
-- TOC entry 2542 (class 2604 OID 57490211)
-- Dependencies: 169 168 169
-- Name: id; Type: DEFAULT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE natureza ALTER COLUMN id SET DEFAULT nextval('natureza_id_seq'::regclass);


SET search_path = basico_sequencia, pg_catalog;

--
-- TOC entry 2536 (class 2604 OID 57490193)
-- Dependencies: 167 166 167
-- Name: id; Type: DEFAULT; Schema: basico_sequencia; Owner: -
--

ALTER TABLE assocsq_acao_aplicacao ALTER COLUMN id SET DEFAULT nextval('assocsq_acao_aplicacao_id_seq'::regclass);


SET search_path = basico_template, pg_catalog;

--
-- TOC entry 2534 (class 2604 OID 57490177)
-- Dependencies: 165 164 165
-- Name: id; Type: DEFAULT; Schema: basico_template; Owner: -
--

ALTER TABLE assoccl_include ALTER COLUMN id SET DEFAULT nextval('assoccl_include_id_seq'::regclass);


--
-- TOC entry 2532 (class 2604 OID 57490163)
-- Dependencies: 162 163 163
-- Name: id; Type: DEFAULT; Schema: basico_template; Owner: -
--

ALTER TABLE assoccl_output ALTER COLUMN id SET DEFAULT nextval('assoccl_output_id_seq'::regclass);


SET search_path = basico, pg_catalog;

--
-- TOC entry 3682 (class 2606 OID 57491605)
-- Dependencies: 349 349
-- Name: filter_pkey; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY filter
    ADD CONSTRAINT filter_pkey PRIMARY KEY (id);


--
-- TOC entry 3643 (class 2606 OID 57491525)
-- Dependencies: 339 339
-- Name: login_login_key; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY login
    ADD CONSTRAINT login_login_key UNIQUE (login);


--
-- TOC entry 3639 (class 2606 OID 57491504)
-- Dependencies: 337 337
-- Name: mascara_pkey; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY mascara
    ADD CONSTRAINT mascara_pkey PRIMARY KEY (id);


--
-- TOC entry 3614 (class 2606 OID 57491435)
-- Dependencies: 329 329
-- Name: output_pkey; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY output
    ADD CONSTRAINT output_pkey PRIMARY KEY (id);


--
-- TOC entry 3784 (class 2606 OID 57491824)
-- Dependencies: 375 375
-- Name: pk_acao_aplicacao; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY acao_aplicacao
    ADD CONSTRAINT pk_acao_aplicacao PRIMARY KEY (id);


--
-- TOC entry 3777 (class 2606 OID 57491808)
-- Dependencies: 373 373
-- Name: pk_ajuda; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ajuda
    ADD CONSTRAINT pk_ajuda PRIMARY KEY (id);


--
-- TOC entry 3768 (class 2606 OID 57491789)
-- Dependencies: 371 371
-- Name: pk_area_conhecimento; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY area_conhecimento
    ADD CONSTRAINT pk_area_conhecimento PRIMARY KEY (id);


--
-- TOC entry 3760 (class 2606 OID 57491772)
-- Dependencies: 369 369
-- Name: pk_area_economia; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY area_economia
    ADD CONSTRAINT pk_area_economia PRIMARY KEY (id);


--
-- TOC entry 3752 (class 2606 OID 57491754)
-- Dependencies: 367 367
-- Name: pk_arquivo; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY arquivo
    ADD CONSTRAINT pk_arquivo PRIMARY KEY (id);


--
-- TOC entry 3574 (class 2606 OID 57491342)
-- Dependencies: 317 317
-- Name: pk_assocag_sequencia; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY sequencia
    ADD CONSTRAINT pk_assocag_sequencia PRIMARY KEY (id);


--
-- TOC entry 3742 (class 2606 OID 57491736)
-- Dependencies: 365 365
-- Name: pk_categoria; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY categoria
    ADD CONSTRAINT pk_categoria PRIMARY KEY (id);


--
-- TOC entry 3732 (class 2606 OID 57491715)
-- Dependencies: 363 363
-- Name: pk_codigo_acesso; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY codigo_acesso
    ADD CONSTRAINT pk_codigo_acesso PRIMARY KEY (id);


--
-- TOC entry 3724 (class 2606 OID 57491700)
-- Dependencies: 361 361
-- Name: pk_componente; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY componente
    ADD CONSTRAINT pk_componente PRIMARY KEY (id);


--
-- TOC entry 3715 (class 2606 OID 57491682)
-- Dependencies: 359 359
-- Name: pk_dados_bancarios; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY dados_bancarios
    ADD CONSTRAINT pk_dados_bancarios PRIMARY KEY (id);


--
-- TOC entry 3708 (class 2606 OID 57491669)
-- Dependencies: 357 357
-- Name: pk_dados_biometricos; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY dados_biometricos
    ADD CONSTRAINT pk_dados_biometricos PRIMARY KEY (id);


--
-- TOC entry 3702 (class 2606 OID 57491652)
-- Dependencies: 355 355
-- Name: pk_dicionario_expressao; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY dicionario_expressao
    ADD CONSTRAINT pk_dicionario_expressao PRIMARY KEY (id);


--
-- TOC entry 3695 (class 2606 OID 57491635)
-- Dependencies: 353 353
-- Name: pk_documento_identificacao; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY documento_identificacao
    ADD CONSTRAINT pk_documento_identificacao PRIMARY KEY (id);


--
-- TOC entry 3688 (class 2606 OID 57491621)
-- Dependencies: 351 351
-- Name: pk_evento; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY evento
    ADD CONSTRAINT pk_evento PRIMARY KEY (id);


--
-- TOC entry 3675 (class 2606 OID 57491589)
-- Dependencies: 347 347
-- Name: pk_formulario; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY formulario
    ADD CONSTRAINT pk_formulario PRIMARY KEY (id);


--
-- TOC entry 3667 (class 2606 OID 57491571)
-- Dependencies: 345 345
-- Name: pk_include; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY include
    ADD CONSTRAINT pk_include PRIMARY KEY (id);


--
-- TOC entry 3658 (class 2606 OID 57491553)
-- Dependencies: 343 343
-- Name: pk_link; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY link
    ADD CONSTRAINT pk_link PRIMARY KEY (id);


--
-- TOC entry 3650 (class 2606 OID 57491536)
-- Dependencies: 341 341
-- Name: pk_log; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY log
    ADD CONSTRAINT pk_log PRIMARY KEY (id);


--
-- TOC entry 3645 (class 2606 OID 57491523)
-- Dependencies: 339 339
-- Name: pk_login; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY login
    ADD CONSTRAINT pk_login PRIMARY KEY (id);


--
-- TOC entry 3632 (class 2606 OID 57491488)
-- Dependencies: 335 335
-- Name: pk_mensagem; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY mensagem
    ADD CONSTRAINT pk_mensagem PRIMARY KEY (id);


--
-- TOC entry 3626 (class 2606 OID 57491468)
-- Dependencies: 333 333
-- Name: pk_metodo_validacao; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY metodo_validacao
    ADD CONSTRAINT pk_metodo_validacao PRIMARY KEY (id);


--
-- TOC entry 3620 (class 2606 OID 57491452)
-- Dependencies: 331 331
-- Name: pk_modulo; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY modulo
    ADD CONSTRAINT pk_modulo PRIMARY KEY (id);


--
-- TOC entry 3608 (class 2606 OID 57491419)
-- Dependencies: 327 327
-- Name: pk_perfil; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY perfil
    ADD CONSTRAINT pk_perfil PRIMARY KEY (id);


--
-- TOC entry 3602 (class 2606 OID 57491402)
-- Dependencies: 325 325
-- Name: pk_pessoa; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY pessoa
    ADD CONSTRAINT pk_pessoa PRIMARY KEY (id);


--
-- TOC entry 3599 (class 2606 OID 57491389)
-- Dependencies: 323 323
-- Name: pk_pessoa_juridica; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY pessoa_juridica
    ADD CONSTRAINT pk_pessoa_juridica PRIMARY KEY (id);


--
-- TOC entry 3587 (class 2606 OID 57491374)
-- Dependencies: 321 321
-- Name: pk_produto; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY produto
    ADD CONSTRAINT pk_produto PRIMARY KEY (id);


--
-- TOC entry 3580 (class 2606 OID 57491358)
-- Dependencies: 319 319
-- Name: pk_profissao; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY profissao
    ADD CONSTRAINT pk_profissao PRIMARY KEY (id);


--
-- TOC entry 3568 (class 2606 OID 57491326)
-- Dependencies: 315 315
-- Name: pk_template; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY template
    ADD CONSTRAINT pk_template PRIMARY KEY (id);


--
-- TOC entry 3561 (class 2606 OID 57491310)
-- Dependencies: 313 313
-- Name: pk_tipo_categoria; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY tipo_categoria
    ADD CONSTRAINT pk_tipo_categoria PRIMARY KEY (id);


--
-- TOC entry 3555 (class 2606 OID 57491291)
-- Dependencies: 311 311
-- Name: pk_token; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY token
    ADD CONSTRAINT pk_token PRIMARY KEY (id);


--
-- TOC entry 3786 (class 2606 OID 57491826)
-- Dependencies: 375 375 375 375
-- Name: un_acao_aplicacao; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY acao_aplicacao
    ADD CONSTRAINT un_acao_aplicacao UNIQUE (id_modulo, controller, action);


--
-- TOC entry 3734 (class 2606 OID 57491717)
-- Dependencies: 363 363 363 363 363 363
-- Name: un_codigo_acesso; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY codigo_acesso
    ADD CONSTRAINT un_codigo_acesso UNIQUE (id_categoria_proprietario, id_generico_proprietario, id_categoria_acesso, id_generico_acesso, codigo);


--
-- TOC entry 3717 (class 2606 OID 57491684)
-- Dependencies: 359 359 359 359 359 359 359
-- Name: un_dados_bancarios; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY dados_bancarios
    ADD CONSTRAINT un_dados_bancarios UNIQUE (id_categoria, id_generico_proprietario, numero_banco, numero_agencia, numero_tipo_conta, numero_conta);


--
-- TOC entry 3704 (class 2606 OID 57491654)
-- Dependencies: 355 355 355
-- Name: un_dicionario_expressao; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY dicionario_expressao
    ADD CONSTRAINT un_dicionario_expressao UNIQUE (id_categoria, constante_textual);


--
-- TOC entry 3697 (class 2606 OID 57491637)
-- Dependencies: 353 353 353 353
-- Name: un_documento; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY documento_identificacao
    ADD CONSTRAINT un_documento UNIQUE (id_categoria, id_generico_proprietario, id_pessoa_juridica_emissor);


--
-- TOC entry 3660 (class 2606 OID 57491555)
-- Dependencies: 343 343 343 343
-- Name: un_link; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY link
    ADD CONSTRAINT un_link UNIQUE (id_categoria, id_generico_proprietario, url);


--
-- TOC entry 3553 (class 2606 OID 57491278)
-- Dependencies: 309 309
-- Name: validator_pkey; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY validator
    ADD CONSTRAINT validator_pkey PRIMARY KEY (id);


SET search_path = basico_acao_aplic_assoc_visao, pg_catalog;

--
-- TOC entry 3546 (class 2606 OID 57491262)
-- Dependencies: 307 307
-- Name: pk_assoccl_ref_atrib_met_rec_post; Type: CONSTRAINT; Schema: basico_acao_aplic_assoc_visao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_atrib_met_rec_post
    ADD CONSTRAINT pk_assoccl_ref_atrib_met_rec_post PRIMARY KEY (id);


--
-- TOC entry 3539 (class 2606 OID 57491248)
-- Dependencies: 305 305
-- Name: pk_atributo_metodo_recup_post; Type: CONSTRAINT; Schema: basico_acao_aplic_assoc_visao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY atributo_metodo_recup_post
    ADD CONSTRAINT pk_atributo_metodo_recup_post PRIMARY KEY (id);


--
-- TOC entry 3541 (class 2606 OID 57491250)
-- Dependencies: 305 305 305
-- Name: un_atributo_metodo_recup_post; Type: CONSTRAINT; Schema: basico_acao_aplic_assoc_visao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY atributo_metodo_recup_post
    ADD CONSTRAINT un_atributo_metodo_recup_post UNIQUE (atributo, metodo_recuperacao);


SET search_path = basico_acao_aplicacao, pg_catalog;

--
-- TOC entry 3533 (class 2606 OID 57491234)
-- Dependencies: 303 303
-- Name: pk_assoc_visao; Type: CONSTRAINT; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_visao
    ADD CONSTRAINT pk_assoc_visao PRIMARY KEY (id);


--
-- TOC entry 3522 (class 2606 OID 57491214)
-- Dependencies: 301 301
-- Name: pk_assoccl_metodo_validacao; Type: CONSTRAINT; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_metodo_validacao
    ADD CONSTRAINT pk_assoccl_metodo_validacao PRIMARY KEY (id);


--
-- TOC entry 3514 (class 2606 OID 57491200)
-- Dependencies: 299 299
-- Name: pk_assoccl_perfil; Type: CONSTRAINT; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_perfil
    ADD CONSTRAINT pk_assoccl_perfil PRIMARY KEY (id);


--
-- TOC entry 3524 (class 2606 OID 57491216)
-- Dependencies: 301 301 301 301
-- Name: un_assoccl_metodo_validacao; Type: CONSTRAINT; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_metodo_validacao
    ADD CONSTRAINT un_assoccl_metodo_validacao UNIQUE (id_acao_aplicacao, id_metodo_validacao, id_perfil);


--
-- TOC entry 3516 (class 2606 OID 57491202)
-- Dependencies: 299 299 299
-- Name: un_assoccl_perfil; Type: CONSTRAINT; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_perfil
    ADD CONSTRAINT un_assoccl_perfil UNIQUE (id_acao_aplicacao, id_perfil);


SET search_path = basico_ajuda, pg_catalog;

--
-- TOC entry 3507 (class 2606 OID 57491186)
-- Dependencies: 297 297
-- Name: pk_assoccl_link; Type: CONSTRAINT; Schema: basico_ajuda; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_link
    ADD CONSTRAINT pk_assoccl_link PRIMARY KEY (id);


--
-- TOC entry 3509 (class 2606 OID 57491188)
-- Dependencies: 297 297 297
-- Name: un_assoccl_link; Type: CONSTRAINT; Schema: basico_ajuda; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_link
    ADD CONSTRAINT un_assoccl_link UNIQUE (id_ajuda, id_link);


SET search_path = basico_assoc_banco, pg_catalog;

--
-- TOC entry 3502 (class 2606 OID 57491174)
-- Dependencies: 295 295
-- Name: pk_assoc_tipo_conta; Type: CONSTRAINT; Schema: basico_assoc_banco; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_tipo_conta
    ADD CONSTRAINT pk_assoc_tipo_conta PRIMARY KEY (id);


SET search_path = basico_assoc_chave_estrangeira, pg_catalog;

--
-- TOC entry 3489 (class 2606 OID 57491157)
-- Dependencies: 293 293
-- Name: pk_relacao; Type: CONSTRAINT; Schema: basico_assoc_chave_estrangeira; Owner: -; Tablespace: 
--

ALTER TABLE ONLY relacao
    ADD CONSTRAINT pk_relacao PRIMARY KEY (id);


--
-- TOC entry 3494 (class 2606 OID 57491159)
-- Dependencies: 293 293 293
-- Name: un_relacao; Type: CONSTRAINT; Schema: basico_assoc_chave_estrangeira; Owner: -; Tablespace: 
--

ALTER TABLE ONLY relacao
    ADD CONSTRAINT un_relacao UNIQUE (tabela_origem, campo_origem);


SET search_path = basico_assoc_dados_profis, pg_catalog;

--
-- TOC entry 3485 (class 2606 OID 57491143)
-- Dependencies: 291 291
-- Name: pk_assoccl_area_conhecimento; Type: CONSTRAINT; Schema: basico_assoc_dados_profis; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_area_conhecimento
    ADD CONSTRAINT pk_assoccl_area_conhecimento PRIMARY KEY (id);


--
-- TOC entry 3487 (class 2606 OID 57491145)
-- Dependencies: 291 291 291
-- Name: un_assoc_dados_profis_area_conhec; Type: CONSTRAINT; Schema: basico_assoc_dados_profis; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_area_conhecimento
    ADD CONSTRAINT un_assoc_dados_profis_area_conhec UNIQUE (id_area_conhecimento, id_assoc_dados_profissionais);


SET search_path = basico_assoccl_pessoa_perfil, pg_catalog;

--
-- TOC entry 3480 (class 2606 OID 57491131)
-- Dependencies: 289 289
-- Name: pk_assoccl_pessoa_perfil_dados; Type: CONSTRAINT; Schema: basico_assoccl_pessoa_perfil; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_dados
    ADD CONSTRAINT pk_assoccl_pessoa_perfil_dados PRIMARY KEY (id);


SET search_path = basico_assocl_vinculo_profissional, pg_catalog;

--
-- TOC entry 3476 (class 2606 OID 57491118)
-- Dependencies: 287 287
-- Name: pk_assoc_dados_profissionais; Type: CONSTRAINT; Schema: basico_assocl_vinculo_profissional; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_dados
    ADD CONSTRAINT pk_assoc_dados_profissionais PRIMARY KEY (id);


SET search_path = basico_categoria, pg_catalog;

--
-- TOC entry 3466 (class 2606 OID 57491103)
-- Dependencies: 285 285
-- Name: pk_assoc_categ_chave_estrang; Type: CONSTRAINT; Schema: basico_categoria; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_chave_estrangeira
    ADD CONSTRAINT pk_assoc_categ_chave_estrang PRIMARY KEY (id);


--
-- TOC entry 3468 (class 2606 OID 57491105)
-- Dependencies: 285 285 285
-- Name: un_assoc_cha_estran_mod_categ; Type: CONSTRAINT; Schema: basico_categoria; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_chave_estrangeira
    ADD CONSTRAINT un_assoc_cha_estran_mod_categ UNIQUE (id_modulo, id_categoria);


SET search_path = basico_componente, pg_catalog;

--
-- TOC entry 3455 (class 2606 OID 57491086)
-- Dependencies: 283 283
-- Name: pk_componente_assoccl_include; Type: CONSTRAINT; Schema: basico_componente; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT pk_componente_assoccl_include PRIMARY KEY (id);


--
-- TOC entry 3457 (class 2606 OID 57491088)
-- Dependencies: 283 283 283
-- Name: un_assoccl_include_componente; Type: CONSTRAINT; Schema: basico_componente; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT un_assoccl_include_componente UNIQUE (id_componente, id_include);


--
-- TOC entry 3459 (class 2606 OID 57491090)
-- Dependencies: 283 283 283
-- Name: un_assoccl_include_ordem6; Type: CONSTRAINT; Schema: basico_componente; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT un_assoccl_include_ordem6 UNIQUE (id_componente, ordem);


SET search_path = basico_contato, pg_catalog;

--
-- TOC entry 3448 (class 2606 OID 57491072)
-- Dependencies: 281 281
-- Name: pk_email; Type: CONSTRAINT; Schema: basico_contato; Owner: -; Tablespace: 
--

ALTER TABLE ONLY email
    ADD CONSTRAINT pk_email PRIMARY KEY (id);


--
-- TOC entry 3434 (class 2606 OID 57491052)
-- Dependencies: 279 279
-- Name: pk_telefone; Type: CONSTRAINT; Schema: basico_contato; Owner: -; Tablespace: 
--

ALTER TABLE ONLY telefone
    ADD CONSTRAINT pk_telefone PRIMARY KEY (id);


--
-- TOC entry 3450 (class 2606 OID 57491074)
-- Dependencies: 281 281 281 281
-- Name: un_email; Type: CONSTRAINT; Schema: basico_contato; Owner: -; Tablespace: 
--

ALTER TABLE ONLY email
    ADD CONSTRAINT un_email UNIQUE (id_generico_proprietario, id_categoria, email);


--
-- TOC entry 3440 (class 2606 OID 57491054)
-- Dependencies: 279 279 279 279 279 279 279
-- Name: un_telefone; Type: CONSTRAINT; Schema: basico_contato; Owner: -; Tablespace: 
--

ALTER TABLE ONLY telefone
    ADD CONSTRAINT un_telefone UNIQUE (id_categoria, id_generico_proprietario, codigo_pais, codigo_area, telefone, ramal);


SET search_path = basico_cvc, pg_catalog;

--
-- TOC entry 3430 (class 2606 OID 57491033)
-- Dependencies: 277 277
-- Name: pk_cvc; Type: CONSTRAINT; Schema: basico_cvc; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cvc
    ADD CONSTRAINT pk_cvc PRIMARY KEY (id);


--
-- TOC entry 3432 (class 2606 OID 57491035)
-- Dependencies: 277 277 277 277
-- Name: un_cvc; Type: CONSTRAINT; Schema: basico_cvc; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cvc
    ADD CONSTRAINT un_cvc UNIQUE (id_assoc_chave_estrangeira, id_generico, versao);


SET search_path = basico_dados_academicos, pg_catalog;

--
-- TOC entry 3421 (class 2606 OID 57491018)
-- Dependencies: 275 275
-- Name: pk_titulacao; Type: CONSTRAINT; Schema: basico_dados_academicos; Owner: -; Tablespace: 
--

ALTER TABLE ONLY titulacao
    ADD CONSTRAINT pk_titulacao PRIMARY KEY (id);


SET search_path = basico_dados_biometricos, pg_catalog;

--
-- TOC entry 3416 (class 2606 OID 57491002)
-- Dependencies: 273 273
-- Name: pk_tipo_sanguineo; Type: CONSTRAINT; Schema: basico_dados_biometricos; Owner: -; Tablespace: 
--

ALTER TABLE ONLY tipo_sanguineo
    ADD CONSTRAINT pk_tipo_sanguineo PRIMARY KEY (id);


SET search_path = basico_dados_profissionais, pg_catalog;

--
-- TOC entry 3408 (class 2606 OID 57490986)
-- Dependencies: 271 271
-- Name: pk_regime_trabalho; Type: CONSTRAINT; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

ALTER TABLE ONLY regime_trabalho
    ADD CONSTRAINT pk_regime_trabalho PRIMARY KEY (id);


--
-- TOC entry 3401 (class 2606 OID 57490969)
-- Dependencies: 269 269
-- Name: pk_tipo_vinculo; Type: CONSTRAINT; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

ALTER TABLE ONLY tipo_vinculo
    ADD CONSTRAINT pk_tipo_vinculo PRIMARY KEY (id);


--
-- TOC entry 3394 (class 2606 OID 57490951)
-- Dependencies: 267 267
-- Name: pk_vinculo_empregaticio; Type: CONSTRAINT; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

ALTER TABLE ONLY vinculo_empregaticio
    ADD CONSTRAINT pk_vinculo_empregaticio PRIMARY KEY (id);


SET search_path = basico_decorator, pg_catalog;

--
-- TOC entry 3388 (class 2606 OID 57490931)
-- Dependencies: 265 265
-- Name: pk_decorator_assoccl_include; Type: CONSTRAINT; Schema: basico_decorator; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT pk_decorator_assoccl_include PRIMARY KEY (id);


--
-- TOC entry 3390 (class 2606 OID 57490933)
-- Dependencies: 265 265 265
-- Name: un_assoccl_include_decorator; Type: CONSTRAINT; Schema: basico_decorator; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT un_assoccl_include_decorator UNIQUE (id_include, id_decorator);


--
-- TOC entry 3392 (class 2606 OID 57490935)
-- Dependencies: 265 265 265
-- Name: un_assoccl_include_ordem5; Type: CONSTRAINT; Schema: basico_decorator; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT un_assoccl_include_ordem5 UNIQUE (id_decorator, ordem);


SET search_path = basico_form_assoccl_elem_grupo, pg_catalog;

--
-- TOC entry 3383 (class 2606 OID 57490919)
-- Dependencies: 263 263
-- Name: pk_assoccl_decorator; Type: CONSTRAINT; Schema: basico_form_assoccl_elem_grupo; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT pk_assoccl_decorator PRIMARY KEY (id);


SET search_path = basico_form_assoccl_elemento, pg_catalog;

--
-- TOC entry 3345 (class 2606 OID 57490843)
-- Dependencies: 253 253
-- Name: assoccl_validator_pkey; Type: CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_validator
    ADD CONSTRAINT assoccl_validator_pkey PRIMARY KEY (id);


--
-- TOC entry 3374 (class 2606 OID 57490903)
-- Dependencies: 261 261
-- Name: pk_assoccl_elemento; Type: CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT pk_assoccl_elemento PRIMARY KEY (id);


--
-- TOC entry 3369 (class 2606 OID 57490890)
-- Dependencies: 259 259
-- Name: pk_assoccl_evento; Type: CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_evento
    ADD CONSTRAINT pk_assoccl_evento PRIMARY KEY (id);


--
-- TOC entry 3361 (class 2606 OID 57490875)
-- Dependencies: 257 257
-- Name: pk_assoccl_filter; Type: CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_filter
    ADD CONSTRAINT pk_assoccl_filter PRIMARY KEY (id);


--
-- TOC entry 3352 (class 2606 OID 57490858)
-- Dependencies: 255 255
-- Name: pk_assoccl_include; Type: CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT pk_assoccl_include PRIMARY KEY (id);


--
-- TOC entry 3340 (class 2606 OID 57490830)
-- Dependencies: 251 251
-- Name: pk_grupo; Type: CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY grupo
    ADD CONSTRAINT pk_grupo PRIMARY KEY (id);


--
-- TOC entry 3376 (class 2606 OID 57490907)
-- Dependencies: 261 261 261
-- Name: un_assoccl_decorator_assoccl_elemento; Type: CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT un_assoccl_decorator_assoccl_elemento UNIQUE (id_assoccl_elemento, id_decorator);


--
-- TOC entry 3378 (class 2606 OID 57490905)
-- Dependencies: 261 261 261
-- Name: un_assoccl_decorator_ordem1; Type: CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT un_assoccl_decorator_ordem1 UNIQUE (id_assoccl_elemento, ordem);


--
-- TOC entry 3347 (class 2606 OID 57490845)
-- Dependencies: 253 253 253
-- Name: un_assoccl_elemento1; Type: CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_validator
    ADD CONSTRAINT un_assoccl_elemento1 UNIQUE (id_assoccl_elemento, id_validator);


--
-- TOC entry 3363 (class 2606 OID 57490877)
-- Dependencies: 257 257 257
-- Name: un_assoccl_filter1; Type: CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_filter
    ADD CONSTRAINT un_assoccl_filter1 UNIQUE (id_assoccl_elemento, id_filter);


--
-- TOC entry 3354 (class 2606 OID 57490860)
-- Dependencies: 255 255 255
-- Name: un_assoccl_include_assoccl_elemento; Type: CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT un_assoccl_include_assoccl_elemento UNIQUE (id_assoccl_elemento, id_include);


--
-- TOC entry 3356 (class 2606 OID 57490862)
-- Dependencies: 255 255 255
-- Name: un_assoccl_include_ordem4; Type: CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT un_assoccl_include_ordem4 UNIQUE (id_assoccl_elemento, ordem);


SET search_path = basico_form_elemento, pg_catalog;

--
-- TOC entry 3332 (class 2606 OID 57490812)
-- Dependencies: 249 249
-- Name: pk_assoccl_evento; Type: CONSTRAINT; Schema: basico_form_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_evento
    ADD CONSTRAINT pk_assoccl_evento PRIMARY KEY (id);


--
-- TOC entry 3334 (class 2606 OID 57490814)
-- Dependencies: 249 249 249
-- Name: un_assoccl_evento1; Type: CONSTRAINT; Schema: basico_form_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_evento
    ADD CONSTRAINT un_assoccl_evento1 UNIQUE (id_elemento, id_evento);


SET search_path = basico_formulario, pg_catalog;

--
-- TOC entry 3325 (class 2606 OID 57490798)
-- Dependencies: 247 247
-- Name: assoccl_decorator_pkey; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT assoccl_decorator_pkey PRIMARY KEY (id);


--
-- TOC entry 3318 (class 2606 OID 57490784)
-- Dependencies: 245 245
-- Name: pk_assoccl_elemento; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_elemento
    ADD CONSTRAINT pk_assoccl_elemento PRIMARY KEY (id);


--
-- TOC entry 3310 (class 2606 OID 57490766)
-- Dependencies: 243 243
-- Name: pk_assoccl_evento; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_evento
    ADD CONSTRAINT pk_assoccl_evento PRIMARY KEY (id);


--
-- TOC entry 3296 (class 2606 OID 57490738)
-- Dependencies: 239 239
-- Name: pk_assoccl_modulo; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_modulo
    ADD CONSTRAINT pk_assoccl_modulo PRIMARY KEY (id);


--
-- TOC entry 3284 (class 2606 OID 57490712)
-- Dependencies: 235 235
-- Name: pk_decorator; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY decorator
    ADD CONSTRAINT pk_decorator PRIMARY KEY (id);


--
-- TOC entry 3278 (class 2606 OID 57490696)
-- Dependencies: 233 233
-- Name: pk_elemento; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY elemento
    ADD CONSTRAINT pk_elemento PRIMARY KEY (id);


--
-- TOC entry 3301 (class 2606 OID 57490750)
-- Dependencies: 241 241
-- Name: pk_formulario_assoccl_include; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT pk_formulario_assoccl_include PRIMARY KEY (id);


--
-- TOC entry 3289 (class 2606 OID 57490724)
-- Dependencies: 237 237
-- Name: pk_formulario_template; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_template
    ADD CONSTRAINT pk_formulario_template PRIMARY KEY (id);


--
-- TOC entry 3261 (class 2606 OID 57490678)
-- Dependencies: 231 231
-- Name: pk_rascunho; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rascunho
    ADD CONSTRAINT pk_rascunho PRIMARY KEY (id);


--
-- TOC entry 3327 (class 2606 OID 57490800)
-- Dependencies: 247 247 247
-- Name: un_assoccl_decorator; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT un_assoccl_decorator UNIQUE (id_formulario, id_decorator);


--
-- TOC entry 3320 (class 2606 OID 57490786)
-- Dependencies: 245 245 245 245
-- Name: un_assoccl_elemento; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_elemento
    ADD CONSTRAINT un_assoccl_elemento UNIQUE (id_formulario, id_elemento, ordem);


--
-- TOC entry 3312 (class 2606 OID 57490768)
-- Dependencies: 243 243 243
-- Name: un_assoccl_evento; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_evento
    ADD CONSTRAINT un_assoccl_evento UNIQUE (id_formulario, id_evento);


--
-- TOC entry 3303 (class 2606 OID 57490754)
-- Dependencies: 241 241 241
-- Name: un_assoccl_include_formulario; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT un_assoccl_include_formulario UNIQUE (id_formulario, id_include);


--
-- TOC entry 3305 (class 2606 OID 57490752)
-- Dependencies: 241 241 241
-- Name: un_assoccl_include_ordem3; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT un_assoccl_include_ordem3 UNIQUE (id_formulario, ordem);


--
-- TOC entry 3291 (class 2606 OID 57490726)
-- Dependencies: 237 237 237
-- Name: un_assoccl_template; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_template
    ADD CONSTRAINT un_assoccl_template UNIQUE (id_template, id_formulario);


SET search_path = basico_formulario_elemento, pg_catalog;

--
-- TOC entry 3241 (class 2606 OID 57490632)
-- Dependencies: 225 225
-- Name: assoccl_validator_pkey; Type: CONSTRAINT; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_validator
    ADD CONSTRAINT assoccl_validator_pkey PRIMARY KEY (id);


--
-- TOC entry 3255 (class 2606 OID 57490660)
-- Dependencies: 229 229
-- Name: pk_assoccl_decorator; Type: CONSTRAINT; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT pk_assoccl_decorator PRIMARY KEY (id);


--
-- TOC entry 3248 (class 2606 OID 57490646)
-- Dependencies: 227 227
-- Name: pk_assoccl_filter; Type: CONSTRAINT; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_filter
    ADD CONSTRAINT pk_assoccl_filter PRIMARY KEY (id);


--
-- TOC entry 3257 (class 2606 OID 57490664)
-- Dependencies: 229 229 229
-- Name: un_assoccl_decorator_elemento; Type: CONSTRAINT; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT un_assoccl_decorator_elemento UNIQUE (id_elemento, id_decorator);


--
-- TOC entry 3259 (class 2606 OID 57490662)
-- Dependencies: 229 229 229
-- Name: un_assoccl_decorator_ordem; Type: CONSTRAINT; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT un_assoccl_decorator_ordem UNIQUE (id_elemento, ordem);


--
-- TOC entry 3250 (class 2606 OID 57490648)
-- Dependencies: 227 227 227
-- Name: un_assoccl_filter; Type: CONSTRAINT; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_filter
    ADD CONSTRAINT un_assoccl_filter UNIQUE (id_elemento, id_filter);


--
-- TOC entry 3243 (class 2606 OID 57490634)
-- Dependencies: 225 225 225
-- Name: un_assoccl_validator; Type: CONSTRAINT; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_validator
    ADD CONSTRAINT un_assoccl_validator UNIQUE (id_validator, id_elemento);


SET search_path = basico_formulario_rascunho, pg_catalog;

--
-- TOC entry 3236 (class 2606 OID 57490620)
-- Dependencies: 223 223
-- Name: pk_assocag_grupo; Type: CONSTRAINT; Schema: basico_formulario_rascunho; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assocag_grupo
    ADD CONSTRAINT pk_assocag_grupo PRIMARY KEY (id);


SET search_path = basico_localizacao, pg_catalog;

--
-- TOC entry 3225 (class 2606 OID 57490593)
-- Dependencies: 219 219 219
-- Name: ck_estado_pais; Type: CONSTRAINT; Schema: basico_localizacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_estado
    ADD CONSTRAINT ck_estado_pais UNIQUE (id_pais, nome);


--
-- TOC entry 3177 (class 2606 OID 57490514)
-- Dependencies: 209 209
-- Name: pais_codigo_iso3166_key; Type: CONSTRAINT; Schema: basico_localizacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY pais
    ADD CONSTRAINT pais_codigo_iso3166_key UNIQUE (codigo_iso3166);


--
-- TOC entry 3232 (class 2606 OID 57490607)
-- Dependencies: 221 221
-- Name: pk_assoc_bairro; Type: CONSTRAINT; Schema: basico_localizacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_bairro
    ADD CONSTRAINT pk_assoc_bairro PRIMARY KEY (id);


--
-- TOC entry 3227 (class 2606 OID 57490591)
-- Dependencies: 219 219
-- Name: pk_assoc_estado; Type: CONSTRAINT; Schema: basico_localizacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_estado
    ADD CONSTRAINT pk_assoc_estado PRIMARY KEY (id);


--
-- TOC entry 3217 (class 2606 OID 57490576)
-- Dependencies: 217 217
-- Name: pk_assoc_logradouro; Type: CONSTRAINT; Schema: basico_localizacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_logradouro
    ADD CONSTRAINT pk_assoc_logradouro PRIMARY KEY (id);


--
-- TOC entry 3209 (class 2606 OID 57490560)
-- Dependencies: 215 215
-- Name: pk_assoc_municipio; Type: CONSTRAINT; Schema: basico_localizacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_municipio
    ADD CONSTRAINT pk_assoc_municipio PRIMARY KEY (id);


--
-- TOC entry 3199 (class 2606 OID 57490543)
-- Dependencies: 213 213
-- Name: pk_codigo_postal; Type: CONSTRAINT; Schema: basico_localizacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY codigo_postal
    ADD CONSTRAINT pk_codigo_postal PRIMARY KEY (id);


--
-- TOC entry 3189 (class 2606 OID 57490529)
-- Dependencies: 211 211
-- Name: pk_endereco; Type: CONSTRAINT; Schema: basico_localizacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY endereco
    ADD CONSTRAINT pk_endereco PRIMARY KEY (id);


--
-- TOC entry 3182 (class 2606 OID 57490512)
-- Dependencies: 209 209
-- Name: pk_pais; Type: CONSTRAINT; Schema: basico_localizacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY pais
    ADD CONSTRAINT pk_pais PRIMARY KEY (id);


--
-- TOC entry 3201 (class 2606 OID 57490545)
-- Dependencies: 213 213 213 213 213 213 213
-- Name: un_cep; Type: CONSTRAINT; Schema: basico_localizacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY codigo_postal
    ADD CONSTRAINT un_cep UNIQUE (codigo, id_pais, id_estado, id_municipio, id_bairro, id_logradouro);


--
-- TOC entry 3211 (class 2606 OID 57490562)
-- Dependencies: 215 215 215 215
-- Name: un_municipio_estado; Type: CONSTRAINT; Schema: basico_localizacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_municipio
    ADD CONSTRAINT un_municipio_estado UNIQUE (id_estado, nome, codigo_ddd);


SET search_path = basico_mascara, pg_catalog;

--
-- TOC entry 3171 (class 2606 OID 57490493)
-- Dependencies: 207 207
-- Name: pk_mascara_assoccl_include; Type: CONSTRAINT; Schema: basico_mascara; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT pk_mascara_assoccl_include PRIMARY KEY (id);


--
-- TOC entry 3173 (class 2606 OID 57490497)
-- Dependencies: 207 207 207
-- Name: un_assoccl_include_mascara; Type: CONSTRAINT; Schema: basico_mascara; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT un_assoccl_include_mascara UNIQUE (id_mascara, id_include);


--
-- TOC entry 3175 (class 2606 OID 57490495)
-- Dependencies: 207 207 207
-- Name: un_assoccl_include_ordem2; Type: CONSTRAINT; Schema: basico_mascara; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT un_assoccl_include_ordem2 UNIQUE (id_mascara, ordem);


SET search_path = basico_mensagem, pg_catalog;

--
-- TOC entry 3166 (class 2606 OID 57490481)
-- Dependencies: 205 205
-- Name: pk_assoc_email; Type: CONSTRAINT; Schema: basico_mensagem; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_email
    ADD CONSTRAINT pk_assoc_email PRIMARY KEY (id);


--
-- TOC entry 3162 (class 2606 OID 57490468)
-- Dependencies: 203 203
-- Name: pk_assocl_assocl_pessoa_perfil; Type: CONSTRAINT; Schema: basico_mensagem; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_assoccl_pessoa_perfil
    ADD CONSTRAINT pk_assocl_assocl_pessoa_perfil PRIMARY KEY (id);


SET search_path = basico_mensagem_assoc_email, pg_catalog;

--
-- TOC entry 3154 (class 2606 OID 57490453)
-- Dependencies: 201 201
-- Name: pk_assoccl_arquivo; Type: CONSTRAINT; Schema: basico_mensagem_assoc_email; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_arquivo
    ADD CONSTRAINT pk_assoccl_arquivo PRIMARY KEY (id);


--
-- TOC entry 3156 (class 2606 OID 57490455)
-- Dependencies: 201 201 201
-- Name: un_assoccl_arquivo; Type: CONSTRAINT; Schema: basico_mensagem_assoc_email; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_arquivo
    ADD CONSTRAINT un_assoccl_arquivo UNIQUE (id_assoc_email, id_arquivo);


SET search_path = basico_metodo_validacao, pg_catalog;

--
-- TOC entry 3147 (class 2606 OID 57490439)
-- Dependencies: 199 199
-- Name: pk_metodo_valid_assoccl_include; Type: CONSTRAINT; Schema: basico_metodo_validacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT pk_metodo_valid_assoccl_include PRIMARY KEY (id);


--
-- TOC entry 3149 (class 2606 OID 57490441)
-- Dependencies: 199 199 199
-- Name: un_assoccl_include; Type: CONSTRAINT; Schema: basico_metodo_validacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT un_assoccl_include UNIQUE (id_metodo_validacao, id_include);


SET search_path = basico_output, pg_catalog;

--
-- TOC entry 3138 (class 2606 OID 57490423)
-- Dependencies: 197 197
-- Name: pk_output_assoccl_include; Type: CONSTRAINT; Schema: basico_output; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT pk_output_assoccl_include PRIMARY KEY (id);


--
-- TOC entry 3140 (class 2606 OID 57490425)
-- Dependencies: 197 197 197
-- Name: un_assoccl_include_ordem1; Type: CONSTRAINT; Schema: basico_output; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT un_assoccl_include_ordem1 UNIQUE (id_output, ordem);


--
-- TOC entry 3142 (class 2606 OID 57490427)
-- Dependencies: 197 197 197
-- Name: un_assoccl_include_output; Type: CONSTRAINT; Schema: basico_output; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT un_assoccl_include_output UNIQUE (id_output, id_include);


SET search_path = basico_perfil, pg_catalog;

--
-- TOC entry 3131 (class 2606 OID 57490409)
-- Dependencies: 195 195
-- Name: pk_assoccl_modulo; Type: CONSTRAINT; Schema: basico_perfil; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_modulo
    ADD CONSTRAINT pk_assoccl_modulo PRIMARY KEY (id);


--
-- TOC entry 3133 (class 2606 OID 57490411)
-- Dependencies: 195 195 195
-- Name: un_assoccl_modulo; Type: CONSTRAINT; Schema: basico_perfil; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_modulo
    ADD CONSTRAINT un_assoccl_modulo UNIQUE (id_modulo, id_perfil);


SET search_path = basico_pessoa, pg_catalog;

--
-- TOC entry 3119 (class 2606 OID 57490381)
-- Dependencies: 191 191
-- Name: assoccl_perfil_pkey; Type: CONSTRAINT; Schema: basico_pessoa; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_perfil
    ADD CONSTRAINT assoccl_perfil_pkey PRIMARY KEY (id);


--
-- TOC entry 3126 (class 2606 OID 57490397)
-- Dependencies: 193 193
-- Name: pk_assoc_dados; Type: CONSTRAINT; Schema: basico_pessoa; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_dados
    ADD CONSTRAINT pk_assoc_dados PRIMARY KEY (id);


--
-- TOC entry 3114 (class 2606 OID 57490367)
-- Dependencies: 189 189
-- Name: pk_assoccl_vinculo_profissional; Type: CONSTRAINT; Schema: basico_pessoa; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_vinculo_profissional
    ADD CONSTRAINT pk_assoccl_vinculo_profissional PRIMARY KEY (id);


--
-- TOC entry 3121 (class 2606 OID 57490383)
-- Dependencies: 191 191 191
-- Name: un_assoccl_pessoa_perfil; Type: CONSTRAINT; Schema: basico_pessoa; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_perfil
    ADD CONSTRAINT un_assoccl_pessoa_perfil UNIQUE (id_pessoa, id_perfil);


SET search_path = basico_pessoa_juridica, pg_catalog;

--
-- TOC entry 3109 (class 2606 OID 57490354)
-- Dependencies: 187 187
-- Name: pk_assoc_banco; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_banco
    ADD CONSTRAINT pk_assoc_banco PRIMARY KEY (id);


--
-- TOC entry 3103 (class 2606 OID 57490340)
-- Dependencies: 185 185
-- Name: pk_assoc_dados_pj; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_dados
    ADD CONSTRAINT pk_assoc_dados_pj PRIMARY KEY (id);


--
-- TOC entry 3094 (class 2606 OID 57490325)
-- Dependencies: 183 183
-- Name: pk_assocag_incubadora; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assocag_incubadora
    ADD CONSTRAINT pk_assocag_incubadora PRIMARY KEY (id);


--
-- TOC entry 3086 (class 2606 OID 57490311)
-- Dependencies: 181 181
-- Name: pk_assocag_parceria; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assocag_parceria
    ADD CONSTRAINT pk_assocag_parceria PRIMARY KEY (id);


--
-- TOC entry 3076 (class 2606 OID 57490294)
-- Dependencies: 179 179
-- Name: pk_assoccl_area_economia; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_area_economia
    ADD CONSTRAINT pk_assoccl_area_economia PRIMARY KEY (id);


--
-- TOC entry 3069 (class 2606 OID 57490280)
-- Dependencies: 177 177
-- Name: pk_assoccl_capital_social; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_capital_social
    ADD CONSTRAINT pk_assoccl_capital_social PRIMARY KEY (id);


--
-- TOC entry 3062 (class 2606 OID 57490265)
-- Dependencies: 175 175
-- Name: pk_assoccl_faturamento; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_faturamento
    ADD CONSTRAINT pk_assoccl_faturamento PRIMARY KEY (id);


--
-- TOC entry 3055 (class 2606 OID 57490250)
-- Dependencies: 173 173
-- Name: pk_assoccl_quadro_funcionario; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_quadro_funcionario
    ADD CONSTRAINT pk_assoccl_quadro_funcionario PRIMARY KEY (id);


--
-- TOC entry 3049 (class 2606 OID 57490237)
-- Dependencies: 171 171
-- Name: pk_capital_social; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY capital_social
    ADD CONSTRAINT pk_capital_social PRIMARY KEY (id);


--
-- TOC entry 3043 (class 2606 OID 57490221)
-- Dependencies: 169 169
-- Name: pk_natureza; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY natureza
    ADD CONSTRAINT pk_natureza PRIMARY KEY (id);


--
-- TOC entry 3057 (class 2606 OID 57490252)
-- Dependencies: 173 173 173 173 173
-- Name: un_assoc_quadro_funcionarios; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_quadro_funcionario
    ADD CONSTRAINT un_assoc_quadro_funcionarios UNIQUE (id_categoria, id_pessoa_juridica, id_titulacao, id_area_conhecimento_predom);


--
-- TOC entry 3088 (class 2606 OID 57490313)
-- Dependencies: 181 181 181 181 181
-- Name: un_assocag_parceria; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assocag_parceria
    ADD CONSTRAINT un_assocag_parceria UNIQUE (id_categoria, id_pessoa_juridica, id_pessoa_juridica_parceira, id_assocag_parceria);


--
-- TOC entry 3078 (class 2606 OID 57490296)
-- Dependencies: 179 179 179
-- Name: un_assoccl_area_economia; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_area_economia
    ADD CONSTRAINT un_assoccl_area_economia UNIQUE (id_area_economia, id_pessoa_juridica);


--
-- TOC entry 3071 (class 2606 OID 57490282)
-- Dependencies: 177 177 177
-- Name: un_assoccl_capital_social; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_capital_social
    ADD CONSTRAINT un_assoccl_capital_social UNIQUE (id_pessoa_juridica, id_capital_social);


--
-- TOC entry 3064 (class 2606 OID 57490267)
-- Dependencies: 175 175 175 175 175
-- Name: un_assoccl_faturamento; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_faturamento
    ADD CONSTRAINT un_assoccl_faturamento UNIQUE (id_categoria, id_pessoa_juridica, ano_fiscal, mes_fiscal);


--
-- TOC entry 3096 (class 2606 OID 57490327)
-- Dependencies: 183 183 183 183
-- Name: un_incubadora; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assocag_incubadora
    ADD CONSTRAINT un_incubadora UNIQUE (id_categoria, id_pessoa_juridica, id_pessoa_juridica_incubada);


SET search_path = basico_sequencia, pg_catalog;

--
-- TOC entry 3034 (class 2606 OID 57490203)
-- Dependencies: 167 167
-- Name: pk_assocsq_acao_aplicacao; Type: CONSTRAINT; Schema: basico_sequencia; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assocsq_acao_aplicacao
    ADD CONSTRAINT pk_assocsq_acao_aplicacao PRIMARY KEY (id);


--
-- TOC entry 3036 (class 2606 OID 57490205)
-- Dependencies: 167 167 167 167 167
-- Name: un_assocsq_acao_aplicacao; Type: CONSTRAINT; Schema: basico_sequencia; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assocsq_acao_aplicacao
    ADD CONSTRAINT un_assocsq_acao_aplicacao UNIQUE (id_categoria, id_sequencia, id_acao_aplicacao, passo);


SET search_path = basico_template, pg_catalog;

--
-- TOC entry 3014 (class 2606 OID 57490169)
-- Dependencies: 163 163
-- Name: pk_assoccl_output; Type: CONSTRAINT; Schema: basico_template; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_output
    ADD CONSTRAINT pk_assoccl_output PRIMARY KEY (id);


--
-- TOC entry 3021 (class 2606 OID 57490183)
-- Dependencies: 165 165
-- Name: pk_template_assoccl_include; Type: CONSTRAINT; Schema: basico_template; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT pk_template_assoccl_include PRIMARY KEY (id);


--
-- TOC entry 3023 (class 2606 OID 57490187)
-- Dependencies: 165 165 165
-- Name: un_assoccl_include_ordem; Type: CONSTRAINT; Schema: basico_template; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT un_assoccl_include_ordem UNIQUE (id_template, ordem);


--
-- TOC entry 3025 (class 2606 OID 57490185)
-- Dependencies: 165 165 165
-- Name: un_assoccl_include_template; Type: CONSTRAINT; Schema: basico_template; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT un_assoccl_include_template UNIQUE (id_template, id_include);


--
-- TOC entry 3016 (class 2606 OID 57490171)
-- Dependencies: 163 163 163
-- Name: un_assoccl_output; Type: CONSTRAINT; Schema: basico_template; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_output
    ADD CONSTRAINT un_assoccl_output UNIQUE (id_template, id_output);


SET search_path = basico, pg_catalog;

--
-- TOC entry 3778 (class 1259 OID 57493321)
-- Dependencies: 375
-- Name: acao_aplicacao_action; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX acao_aplicacao_action ON acao_aplicacao USING btree (action);


--
-- TOC entry 3779 (class 1259 OID 57493322)
-- Dependencies: 375
-- Name: acao_aplicacao_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX acao_aplicacao_constante_textual ON acao_aplicacao USING btree (constante_textual);


--
-- TOC entry 3780 (class 1259 OID 57493320)
-- Dependencies: 375
-- Name: acao_aplicacao_controller; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX acao_aplicacao_controller ON acao_aplicacao USING btree (controller);


--
-- TOC entry 3781 (class 1259 OID 57493318)
-- Dependencies: 375
-- Name: acao_aplicacao_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX acao_aplicacao_id ON acao_aplicacao USING btree (id);


--
-- TOC entry 3782 (class 1259 OID 57493319)
-- Dependencies: 375
-- Name: acao_aplicacao_id_modulo; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX acao_aplicacao_id_modulo ON acao_aplicacao USING btree (id_modulo);


--
-- TOC entry 3769 (class 1259 OID 57493314)
-- Dependencies: 373
-- Name: ajuda_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX ajuda_constante_textual ON ajuda USING btree (constante_textual);


--
-- TOC entry 3770 (class 1259 OID 57493316)
-- Dependencies: 373
-- Name: ajuda_constante_textual_ajuda; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX ajuda_constante_textual_ajuda ON ajuda USING btree (constante_textual_ajuda);


--
-- TOC entry 3771 (class 1259 OID 57493315)
-- Dependencies: 373
-- Name: ajuda_constante_textual_descricao; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX ajuda_constante_textual_descricao ON ajuda USING btree (constante_textual_descricao);


--
-- TOC entry 3772 (class 1259 OID 57493317)
-- Dependencies: 373
-- Name: ajuda_constante_textual_hint; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX ajuda_constante_textual_hint ON ajuda USING btree (constante_textual_hint);


--
-- TOC entry 3773 (class 1259 OID 57493311)
-- Dependencies: 373
-- Name: ajuda_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX ajuda_id ON ajuda USING btree (id);


--
-- TOC entry 3774 (class 1259 OID 57493312)
-- Dependencies: 373
-- Name: ajuda_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX ajuda_id_categoria ON ajuda USING btree (id_categoria);


--
-- TOC entry 3775 (class 1259 OID 57493313)
-- Dependencies: 373
-- Name: ajuda_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX ajuda_nome ON ajuda USING btree (nome);


--
-- TOC entry 3761 (class 1259 OID 57493310)
-- Dependencies: 371
-- Name: area_conhecimento_codigo; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX area_conhecimento_codigo ON area_conhecimento USING btree (codigo);


--
-- TOC entry 3762 (class 1259 OID 57493309)
-- Dependencies: 371
-- Name: area_conhecimento_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX area_conhecimento_constante_textual ON area_conhecimento USING btree (constante_textual);


--
-- TOC entry 3763 (class 1259 OID 57493305)
-- Dependencies: 371
-- Name: area_conhecimento_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX area_conhecimento_id ON area_conhecimento USING btree (id);


--
-- TOC entry 3764 (class 1259 OID 57493306)
-- Dependencies: 371
-- Name: area_conhecimento_id_area_conhecimento_pai; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX area_conhecimento_id_area_conhecimento_pai ON area_conhecimento USING btree (id_area_conhecimento_pai);


--
-- TOC entry 3765 (class 1259 OID 57493307)
-- Dependencies: 371
-- Name: area_conhecimento_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX area_conhecimento_id_categoria ON area_conhecimento USING btree (id_categoria);


--
-- TOC entry 3766 (class 1259 OID 57493308)
-- Dependencies: 371
-- Name: area_conhecimento_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX area_conhecimento_nome ON area_conhecimento USING btree (nome);


--
-- TOC entry 3753 (class 1259 OID 57493304)
-- Dependencies: 369
-- Name: area_economia_codigo; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX area_economia_codigo ON area_economia USING btree (codigo);


--
-- TOC entry 3754 (class 1259 OID 57493303)
-- Dependencies: 369
-- Name: area_economia_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX area_economia_constante_textual ON area_economia USING btree (constante_textual);


--
-- TOC entry 3755 (class 1259 OID 57493299)
-- Dependencies: 369
-- Name: area_economia_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX area_economia_id ON area_economia USING btree (id);


--
-- TOC entry 3756 (class 1259 OID 57493300)
-- Dependencies: 369
-- Name: area_economia_id_area_economia_pai; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX area_economia_id_area_economia_pai ON area_economia USING btree (id_area_economia_pai);


--
-- TOC entry 3757 (class 1259 OID 57493301)
-- Dependencies: 369
-- Name: area_economia_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX area_economia_id_categoria ON area_economia USING btree (id_categoria);


--
-- TOC entry 3758 (class 1259 OID 57493302)
-- Dependencies: 369
-- Name: area_economia_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX area_economia_nome ON area_economia USING btree (nome);


--
-- TOC entry 3743 (class 1259 OID 57493298)
-- Dependencies: 367
-- Name: arquivo_full_filename; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX arquivo_full_filename ON arquivo USING btree (full_filename);


--
-- TOC entry 3744 (class 1259 OID 57493291)
-- Dependencies: 367
-- Name: arquivo_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX arquivo_id ON arquivo USING btree (id);


--
-- TOC entry 3745 (class 1259 OID 57493292)
-- Dependencies: 367
-- Name: arquivo_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX arquivo_id_categoria ON arquivo USING btree (id_categoria);


--
-- TOC entry 3746 (class 1259 OID 57493293)
-- Dependencies: 367
-- Name: arquivo_id_generico_proprietario; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX arquivo_id_generico_proprietario ON arquivo USING btree (id_generico_proprietario);


--
-- TOC entry 3747 (class 1259 OID 57493297)
-- Dependencies: 367
-- Name: arquivo_mime_type; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX arquivo_mime_type ON arquivo USING btree (mime_type);


--
-- TOC entry 3748 (class 1259 OID 57493294)
-- Dependencies: 367
-- Name: arquivo_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX arquivo_nome ON arquivo USING btree (nome);


--
-- TOC entry 3749 (class 1259 OID 57493295)
-- Dependencies: 367
-- Name: arquivo_nome_original; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX arquivo_nome_original ON arquivo USING btree (nome_original);


--
-- TOC entry 3750 (class 1259 OID 57493296)
-- Dependencies: 367
-- Name: arquivo_nome_sugestao; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX arquivo_nome_sugestao ON arquivo USING btree (nome_sugestao);


--
-- TOC entry 3735 (class 1259 OID 57493290)
-- Dependencies: 365
-- Name: categoria_codigo; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX categoria_codigo ON categoria USING btree (codigo);


--
-- TOC entry 3736 (class 1259 OID 57493289)
-- Dependencies: 365
-- Name: categoria_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX categoria_constante_textual ON categoria USING btree (constante_textual);


--
-- TOC entry 3737 (class 1259 OID 57493285)
-- Dependencies: 365
-- Name: categoria_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX categoria_id ON categoria USING btree (id);


--
-- TOC entry 3738 (class 1259 OID 57493287)
-- Dependencies: 365
-- Name: categoria_id_categoria_pai; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX categoria_id_categoria_pai ON categoria USING btree (id_categoria_pai);


--
-- TOC entry 3739 (class 1259 OID 57493286)
-- Dependencies: 365
-- Name: categoria_id_tipo_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX categoria_id_tipo_categoria ON categoria USING btree (id_tipo_categoria);


--
-- TOC entry 3740 (class 1259 OID 57493288)
-- Dependencies: 365
-- Name: categoria_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX categoria_nome ON categoria USING btree (nome);


--
-- TOC entry 3725 (class 1259 OID 57493284)
-- Dependencies: 363
-- Name: codigo_acesso_codigo; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX codigo_acesso_codigo ON codigo_acesso USING btree (codigo);


--
-- TOC entry 3726 (class 1259 OID 57493279)
-- Dependencies: 363
-- Name: codigo_acesso_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX codigo_acesso_id ON codigo_acesso USING btree (id);


--
-- TOC entry 3727 (class 1259 OID 57493282)
-- Dependencies: 363
-- Name: codigo_acesso_id_categoria_acesso; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX codigo_acesso_id_categoria_acesso ON codigo_acesso USING btree (id_categoria_acesso);


--
-- TOC entry 3728 (class 1259 OID 57493280)
-- Dependencies: 363
-- Name: codigo_acesso_id_categoria_proprietario; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX codigo_acesso_id_categoria_proprietario ON codigo_acesso USING btree (id_categoria_proprietario);


--
-- TOC entry 3729 (class 1259 OID 57493283)
-- Dependencies: 363
-- Name: codigo_acesso_id_generico_acesso; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX codigo_acesso_id_generico_acesso ON codigo_acesso USING btree (id_generico_acesso);


--
-- TOC entry 3730 (class 1259 OID 57493281)
-- Dependencies: 363
-- Name: codigo_acesso_id_generico_proprietario; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX codigo_acesso_id_generico_proprietario ON codigo_acesso USING btree (id_generico_proprietario);


--
-- TOC entry 3718 (class 1259 OID 57493277)
-- Dependencies: 361
-- Name: componente_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX componente_constante_textual ON componente USING btree (constante_textual);


--
-- TOC entry 3719 (class 1259 OID 57493278)
-- Dependencies: 361
-- Name: componente_constante_textual_descricao; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX componente_constante_textual_descricao ON componente USING btree (constante_textual_descricao);


--
-- TOC entry 3720 (class 1259 OID 57493274)
-- Dependencies: 361
-- Name: componente_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX componente_id ON componente USING btree (id);


--
-- TOC entry 3721 (class 1259 OID 57493275)
-- Dependencies: 361
-- Name: componente_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX componente_id_categoria ON componente USING btree (id_categoria);


--
-- TOC entry 3722 (class 1259 OID 57493276)
-- Dependencies: 361
-- Name: componente_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX componente_nome ON componente USING btree (nome);


--
-- TOC entry 3709 (class 1259 OID 57493269)
-- Dependencies: 359
-- Name: dados_bancarios_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX dados_bancarios_id ON dados_bancarios USING btree (id);


--
-- TOC entry 3710 (class 1259 OID 57493270)
-- Dependencies: 359
-- Name: dados_bancarios_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX dados_bancarios_id_categoria ON dados_bancarios USING btree (id_categoria);


--
-- TOC entry 3711 (class 1259 OID 57493271)
-- Dependencies: 359
-- Name: dados_bancarios_id_generico_proprietario; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX dados_bancarios_id_generico_proprietario ON dados_bancarios USING btree (id_generico_proprietario);


--
-- TOC entry 3712 (class 1259 OID 57493273)
-- Dependencies: 359
-- Name: dados_bancarios_nome_banco; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX dados_bancarios_nome_banco ON dados_bancarios USING btree (nome_banco);


--
-- TOC entry 3713 (class 1259 OID 57493272)
-- Dependencies: 359
-- Name: dados_bancarios_numero_banco; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX dados_bancarios_numero_banco ON dados_bancarios USING btree (numero_banco);


--
-- TOC entry 3705 (class 1259 OID 57493267)
-- Dependencies: 357
-- Name: dados_biometricos_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX dados_biometricos_id ON dados_biometricos USING btree (id);


--
-- TOC entry 3706 (class 1259 OID 57493268)
-- Dependencies: 357
-- Name: dados_biometricos_id_pessoa; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX dados_biometricos_id_pessoa ON dados_biometricos USING btree (id_pessoa);


--
-- TOC entry 3698 (class 1259 OID 57493266)
-- Dependencies: 355
-- Name: dicionario_expressao_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX dicionario_expressao_constante_textual ON dicionario_expressao USING btree (constante_textual);


--
-- TOC entry 3699 (class 1259 OID 57493264)
-- Dependencies: 355
-- Name: dicionario_expressao_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX dicionario_expressao_id ON dicionario_expressao USING btree (id);


--
-- TOC entry 3700 (class 1259 OID 57493265)
-- Dependencies: 355
-- Name: dicionario_expressao_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX dicionario_expressao_id_categoria ON dicionario_expressao USING btree (id_categoria);


--
-- TOC entry 3689 (class 1259 OID 57493259)
-- Dependencies: 353
-- Name: documento_identificacao_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX documento_identificacao_id ON documento_identificacao USING btree (id);


--
-- TOC entry 3690 (class 1259 OID 57493260)
-- Dependencies: 353
-- Name: documento_identificacao_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX documento_identificacao_id_categoria ON documento_identificacao USING btree (id_categoria);


--
-- TOC entry 3691 (class 1259 OID 57493261)
-- Dependencies: 353
-- Name: documento_identificacao_id_generico_proprietario; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX documento_identificacao_id_generico_proprietario ON documento_identificacao USING btree (id_generico_proprietario);


--
-- TOC entry 3692 (class 1259 OID 57493262)
-- Dependencies: 353
-- Name: documento_identificacao_id_pessoa_juridica_emissor; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX documento_identificacao_id_pessoa_juridica_emissor ON documento_identificacao USING btree (id_pessoa_juridica_emissor);


--
-- TOC entry 3693 (class 1259 OID 57493263)
-- Dependencies: 353
-- Name: documento_identificacao_identificador; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX documento_identificacao_identificador ON documento_identificacao USING btree (identificador);


--
-- TOC entry 3683 (class 1259 OID 57493258)
-- Dependencies: 351
-- Name: evento_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX evento_constante_textual ON evento USING btree (constante_textual);


--
-- TOC entry 3684 (class 1259 OID 57493255)
-- Dependencies: 351
-- Name: evento_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX evento_id ON evento USING btree (id);


--
-- TOC entry 3685 (class 1259 OID 57493256)
-- Dependencies: 351
-- Name: evento_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX evento_id_categoria ON evento USING btree (id_categoria);


--
-- TOC entry 3686 (class 1259 OID 57493257)
-- Dependencies: 351
-- Name: evento_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX evento_nome ON evento USING btree (nome);


--
-- TOC entry 3676 (class 1259 OID 57493253)
-- Dependencies: 349
-- Name: filter_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX filter_constante_textual ON filter USING btree (constante_textual);


--
-- TOC entry 3677 (class 1259 OID 57493254)
-- Dependencies: 349
-- Name: filter_constante_textual_descricao; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX filter_constante_textual_descricao ON filter USING btree (constante_textual_descricao);


--
-- TOC entry 3678 (class 1259 OID 57493250)
-- Dependencies: 349
-- Name: filter_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX filter_id ON filter USING btree (id);


--
-- TOC entry 3679 (class 1259 OID 57493251)
-- Dependencies: 349
-- Name: filter_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX filter_id_categoria ON filter USING btree (id_categoria);


--
-- TOC entry 3680 (class 1259 OID 57493252)
-- Dependencies: 349
-- Name: filter_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX filter_nome ON filter USING btree (nome);


--
-- TOC entry 3668 (class 1259 OID 57493248)
-- Dependencies: 347
-- Name: formulario_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX formulario_constante_textual ON formulario USING btree (constante_textual);


--
-- TOC entry 3669 (class 1259 OID 57493249)
-- Dependencies: 347
-- Name: formulario_form_name; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX formulario_form_name ON formulario USING btree (form_name);


--
-- TOC entry 3670 (class 1259 OID 57493244)
-- Dependencies: 347
-- Name: formulario_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX formulario_id ON formulario USING btree (id);


--
-- TOC entry 3671 (class 1259 OID 57493246)
-- Dependencies: 347
-- Name: formulario_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX formulario_id_categoria ON formulario USING btree (id_categoria);


--
-- TOC entry 3672 (class 1259 OID 57493245)
-- Dependencies: 347
-- Name: formulario_id_formulario_pai; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX formulario_id_formulario_pai ON formulario USING btree (id_formulario_pai);


--
-- TOC entry 3673 (class 1259 OID 57493247)
-- Dependencies: 347
-- Name: formulario_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX formulario_nome ON formulario USING btree (nome);


--
-- TOC entry 3661 (class 1259 OID 57493242)
-- Dependencies: 345
-- Name: include_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX include_constante_textual ON include USING btree (constante_textual);


--
-- TOC entry 3662 (class 1259 OID 57493243)
-- Dependencies: 345
-- Name: include_constante_textual_descricao; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX include_constante_textual_descricao ON include USING btree (constante_textual_descricao);


--
-- TOC entry 3663 (class 1259 OID 57493239)
-- Dependencies: 345
-- Name: include_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX include_id ON include USING btree (id);


--
-- TOC entry 3664 (class 1259 OID 57493240)
-- Dependencies: 345
-- Name: include_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX include_id_categoria ON include USING btree (id_categoria);


--
-- TOC entry 3665 (class 1259 OID 57493241)
-- Dependencies: 345
-- Name: include_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX include_nome ON include USING btree (nome);


--
-- TOC entry 3651 (class 1259 OID 57493237)
-- Dependencies: 343
-- Name: link_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX link_constante_textual ON link USING btree (constante_textual);


--
-- TOC entry 3652 (class 1259 OID 57493233)
-- Dependencies: 343
-- Name: link_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX link_id ON link USING btree (id);


--
-- TOC entry 3653 (class 1259 OID 57493234)
-- Dependencies: 343
-- Name: link_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX link_id_categoria ON link USING btree (id_categoria);


--
-- TOC entry 3654 (class 1259 OID 57493235)
-- Dependencies: 343
-- Name: link_id_generico_proprietario; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX link_id_generico_proprietario ON link USING btree (id_generico_proprietario);


--
-- TOC entry 3655 (class 1259 OID 57493236)
-- Dependencies: 343
-- Name: link_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX link_nome ON link USING btree (nome);


--
-- TOC entry 3656 (class 1259 OID 57493238)
-- Dependencies: 343
-- Name: link_url; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX link_url ON link USING btree (url);


--
-- TOC entry 3646 (class 1259 OID 57493230)
-- Dependencies: 341
-- Name: log_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX log_id ON log USING btree (id);


--
-- TOC entry 3647 (class 1259 OID 57493232)
-- Dependencies: 341
-- Name: log_id_assoccl_perfil; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX log_id_assoccl_perfil ON log USING btree (id_assoccl_perfil);


--
-- TOC entry 3648 (class 1259 OID 57493231)
-- Dependencies: 341
-- Name: log_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX log_id_categoria ON log USING btree (id_categoria);


--
-- TOC entry 3640 (class 1259 OID 57493228)
-- Dependencies: 339
-- Name: login_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX login_id ON login USING btree (id);


--
-- TOC entry 3641 (class 1259 OID 57493229)
-- Dependencies: 339
-- Name: login_id_pessoa; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX login_id_pessoa ON login USING btree (id_pessoa);


--
-- TOC entry 3633 (class 1259 OID 57493226)
-- Dependencies: 337
-- Name: mascara_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX mascara_constante_textual ON mascara USING btree (constante_textual);


--
-- TOC entry 3634 (class 1259 OID 57493227)
-- Dependencies: 337
-- Name: mascara_constante_textual_descricao; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX mascara_constante_textual_descricao ON mascara USING btree (constante_textual_descricao);


--
-- TOC entry 3635 (class 1259 OID 57493223)
-- Dependencies: 337
-- Name: mascara_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX mascara_id ON mascara USING btree (id);


--
-- TOC entry 3636 (class 1259 OID 57493224)
-- Dependencies: 337
-- Name: mascara_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX mascara_id_categoria ON mascara USING btree (id_categoria);


--
-- TOC entry 3637 (class 1259 OID 57493225)
-- Dependencies: 337
-- Name: mascara_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX mascara_nome ON mascara USING btree (nome);


--
-- TOC entry 3627 (class 1259 OID 57493219)
-- Dependencies: 335
-- Name: mensagem_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX mensagem_id ON mensagem USING btree (id);


--
-- TOC entry 3628 (class 1259 OID 57493220)
-- Dependencies: 335
-- Name: mensagem_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX mensagem_id_categoria ON mensagem USING btree (id_categoria);


--
-- TOC entry 3629 (class 1259 OID 57493221)
-- Dependencies: 335
-- Name: mensagem_id_generico_proprietario; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX mensagem_id_generico_proprietario ON mensagem USING btree (id_generico_proprietario);


--
-- TOC entry 3630 (class 1259 OID 57493222)
-- Dependencies: 335
-- Name: mensagem_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX mensagem_nome ON mensagem USING btree (nome);


--
-- TOC entry 3621 (class 1259 OID 57493218)
-- Dependencies: 333
-- Name: metodo_validacao_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX metodo_validacao_constante_textual ON metodo_validacao USING btree (constante_textual);


--
-- TOC entry 3622 (class 1259 OID 57493215)
-- Dependencies: 333
-- Name: metodo_validacao_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX metodo_validacao_id ON metodo_validacao USING btree (id);


--
-- TOC entry 3623 (class 1259 OID 57493216)
-- Dependencies: 333
-- Name: metodo_validacao_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX metodo_validacao_id_categoria ON metodo_validacao USING btree (id_categoria);


--
-- TOC entry 3624 (class 1259 OID 57493217)
-- Dependencies: 333
-- Name: metodo_validacao_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX metodo_validacao_nome ON metodo_validacao USING btree (nome);


--
-- TOC entry 3615 (class 1259 OID 57493214)
-- Dependencies: 331
-- Name: modulo_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX modulo_constante_textual ON modulo USING btree (constante_textual);


--
-- TOC entry 3616 (class 1259 OID 57493211)
-- Dependencies: 331
-- Name: modulo_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX modulo_id ON modulo USING btree (id);


--
-- TOC entry 3617 (class 1259 OID 57493212)
-- Dependencies: 331
-- Name: modulo_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX modulo_id_categoria ON modulo USING btree (id_categoria);


--
-- TOC entry 3618 (class 1259 OID 57493213)
-- Dependencies: 331
-- Name: modulo_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX modulo_nome ON modulo USING btree (nome);


--
-- TOC entry 3609 (class 1259 OID 57493210)
-- Dependencies: 329
-- Name: output_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX output_constante_textual ON output USING btree (constante_textual);


--
-- TOC entry 3610 (class 1259 OID 57493207)
-- Dependencies: 329
-- Name: output_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX output_id ON output USING btree (id);


--
-- TOC entry 3611 (class 1259 OID 57493208)
-- Dependencies: 329
-- Name: output_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX output_id_categoria ON output USING btree (id_categoria);


--
-- TOC entry 3612 (class 1259 OID 57493209)
-- Dependencies: 329
-- Name: output_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX output_nome ON output USING btree (nome);


--
-- TOC entry 3603 (class 1259 OID 57493206)
-- Dependencies: 327
-- Name: perfil_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX perfil_constante_textual ON perfil USING btree (constante_textual);


--
-- TOC entry 3604 (class 1259 OID 57493203)
-- Dependencies: 327
-- Name: perfil_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX perfil_id ON perfil USING btree (id);


--
-- TOC entry 3605 (class 1259 OID 57493204)
-- Dependencies: 327
-- Name: perfil_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX perfil_id_categoria ON perfil USING btree (id_categoria);


--
-- TOC entry 3606 (class 1259 OID 57493205)
-- Dependencies: 327
-- Name: perfil_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX perfil_nome ON perfil USING btree (nome);


--
-- TOC entry 3600 (class 1259 OID 57493202)
-- Dependencies: 325
-- Name: pessoa_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX pessoa_id ON pessoa USING btree (id);


--
-- TOC entry 3594 (class 1259 OID 57493198)
-- Dependencies: 323
-- Name: pessoa_juridica_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX pessoa_juridica_id ON pessoa_juridica USING btree (id);


--
-- TOC entry 3595 (class 1259 OID 57493199)
-- Dependencies: 323
-- Name: pessoa_juridica_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX pessoa_juridica_id_categoria ON pessoa_juridica USING btree (id_categoria);


--
-- TOC entry 3596 (class 1259 OID 57493200)
-- Dependencies: 323
-- Name: pessoa_juridica_id_natureza; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX pessoa_juridica_id_natureza ON pessoa_juridica USING btree (id_natureza);


--
-- TOC entry 3597 (class 1259 OID 57493201)
-- Dependencies: 323
-- Name: pessoa_juridica_id_pessoa_responsavel_cadastro; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX pessoa_juridica_id_pessoa_responsavel_cadastro ON pessoa_juridica USING btree (id_pessoa_responsavel_cadastro);


--
-- TOC entry 3588 (class 1259 OID 57493197)
-- Dependencies: 321
-- Name: produto_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX produto_constante_textual ON produto USING btree (constante_textual);


--
-- TOC entry 3589 (class 1259 OID 57493192)
-- Dependencies: 321
-- Name: produto_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX produto_id ON produto USING btree (id);


--
-- TOC entry 3590 (class 1259 OID 57493193)
-- Dependencies: 321
-- Name: produto_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX produto_id_categoria ON produto USING btree (id_categoria);


--
-- TOC entry 3591 (class 1259 OID 57493195)
-- Dependencies: 321
-- Name: produto_id_categoria_moeda; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX produto_id_categoria_moeda ON produto USING btree (id_categoria_moeda);


--
-- TOC entry 3592 (class 1259 OID 57493194)
-- Dependencies: 321
-- Name: produto_id_generico_proprietario; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX produto_id_generico_proprietario ON produto USING btree (id_generico_proprietario);


--
-- TOC entry 3593 (class 1259 OID 57493196)
-- Dependencies: 321
-- Name: produto_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX produto_nome ON produto USING btree (nome);


--
-- TOC entry 3581 (class 1259 OID 57493191)
-- Dependencies: 319
-- Name: profissao_codigo; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX profissao_codigo ON profissao USING btree (codigo);


--
-- TOC entry 3582 (class 1259 OID 57493190)
-- Dependencies: 319
-- Name: profissao_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX profissao_constante_textual ON profissao USING btree (constante_textual);


--
-- TOC entry 3583 (class 1259 OID 57493187)
-- Dependencies: 319
-- Name: profissao_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX profissao_id ON profissao USING btree (id);


--
-- TOC entry 3584 (class 1259 OID 57493188)
-- Dependencies: 319
-- Name: profissao_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX profissao_id_categoria ON profissao USING btree (id_categoria);


--
-- TOC entry 3585 (class 1259 OID 57493189)
-- Dependencies: 319
-- Name: profissao_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX profissao_nome ON profissao USING btree (nome);


--
-- TOC entry 3575 (class 1259 OID 57493186)
-- Dependencies: 317
-- Name: sequencia_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX sequencia_constante_textual ON sequencia USING btree (constante_textual);


--
-- TOC entry 3576 (class 1259 OID 57493183)
-- Dependencies: 317
-- Name: sequencia_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX sequencia_id ON sequencia USING btree (id);


--
-- TOC entry 3577 (class 1259 OID 57493184)
-- Dependencies: 317
-- Name: sequencia_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX sequencia_id_categoria ON sequencia USING btree (id_categoria);


--
-- TOC entry 3578 (class 1259 OID 57493185)
-- Dependencies: 317
-- Name: sequencia_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX sequencia_nome ON sequencia USING btree (nome);


--
-- TOC entry 3569 (class 1259 OID 57493182)
-- Dependencies: 315
-- Name: template_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX template_constante_textual ON template USING btree (constante_textual);


--
-- TOC entry 3570 (class 1259 OID 57493179)
-- Dependencies: 315
-- Name: template_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX template_id ON template USING btree (id);


--
-- TOC entry 3571 (class 1259 OID 57493180)
-- Dependencies: 315
-- Name: template_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX template_id_categoria ON template USING btree (id_categoria);


--
-- TOC entry 3572 (class 1259 OID 57493181)
-- Dependencies: 315
-- Name: template_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX template_nome ON template USING btree (nome);


--
-- TOC entry 3562 (class 1259 OID 57493178)
-- Dependencies: 313
-- Name: tipo_categoria_codigo; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX tipo_categoria_codigo ON tipo_categoria USING btree (codigo);


--
-- TOC entry 3563 (class 1259 OID 57493177)
-- Dependencies: 313
-- Name: tipo_categoria_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX tipo_categoria_constante_textual ON tipo_categoria USING btree (constante_textual);


--
-- TOC entry 3564 (class 1259 OID 57493174)
-- Dependencies: 313
-- Name: tipo_categoria_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX tipo_categoria_id ON tipo_categoria USING btree (id);


--
-- TOC entry 3565 (class 1259 OID 57493175)
-- Dependencies: 313
-- Name: tipo_categoria_id_tipo_categoria_pai; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX tipo_categoria_id_tipo_categoria_pai ON tipo_categoria USING btree (id_tipo_categoria_pai);


--
-- TOC entry 3566 (class 1259 OID 57493176)
-- Dependencies: 313
-- Name: tipo_categoria_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX tipo_categoria_nome ON tipo_categoria USING btree (nome);


--
-- TOC entry 3556 (class 1259 OID 57493170)
-- Dependencies: 311
-- Name: token_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX token_id ON token USING btree (id);


--
-- TOC entry 3557 (class 1259 OID 57493171)
-- Dependencies: 311
-- Name: token_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX token_id_categoria ON token USING btree (id_categoria);


--
-- TOC entry 3558 (class 1259 OID 57493172)
-- Dependencies: 311
-- Name: token_id_generico_proprietario; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX token_id_generico_proprietario ON token USING btree (id_generico_proprietario);


--
-- TOC entry 3559 (class 1259 OID 57493173)
-- Dependencies: 311
-- Name: token_token; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX token_token ON token USING btree (token);


--
-- TOC entry 3547 (class 1259 OID 57493168)
-- Dependencies: 309
-- Name: validator_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX validator_constante_textual ON validator USING btree (constante_textual);


--
-- TOC entry 3548 (class 1259 OID 57493169)
-- Dependencies: 309
-- Name: validator_constante_textual_descricao; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX validator_constante_textual_descricao ON validator USING btree (constante_textual_descricao);


--
-- TOC entry 3549 (class 1259 OID 57493165)
-- Dependencies: 309
-- Name: validator_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX validator_id ON validator USING btree (id);


--
-- TOC entry 3550 (class 1259 OID 57493166)
-- Dependencies: 309
-- Name: validator_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX validator_id_categoria ON validator USING btree (id_categoria);


--
-- TOC entry 3551 (class 1259 OID 57493167)
-- Dependencies: 309
-- Name: validator_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX validator_nome ON validator USING btree (nome);


SET search_path = basico_acao_aplic_assoc_visao, pg_catalog;

--
-- TOC entry 3542 (class 1259 OID 57493162)
-- Dependencies: 307
-- Name: assoccl_atrib_met_rec_post_id; Type: INDEX; Schema: basico_acao_aplic_assoc_visao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_atrib_met_rec_post_id ON assoccl_atrib_met_rec_post USING btree (id);


--
-- TOC entry 3543 (class 1259 OID 57493163)
-- Dependencies: 307
-- Name: assoccl_atrib_met_rec_post_id_assoc_referencia_post; Type: INDEX; Schema: basico_acao_aplic_assoc_visao; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_atrib_met_rec_post_id_assoc_referencia_post ON assoccl_atrib_met_rec_post USING btree (id_assoc_referencia_post);


--
-- TOC entry 3544 (class 1259 OID 57493164)
-- Dependencies: 307
-- Name: assoccl_atrib_met_rec_post_id_atributo_metodo_recup_post; Type: INDEX; Schema: basico_acao_aplic_assoc_visao; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_atrib_met_rec_post_id_atributo_metodo_recup_post ON assoccl_atrib_met_rec_post USING btree (id_atributo_metodo_recup_post);


--
-- TOC entry 3534 (class 1259 OID 57493160)
-- Dependencies: 305
-- Name: atributo_metodo_recup_post_atributo; Type: INDEX; Schema: basico_acao_aplic_assoc_visao; Owner: -; Tablespace: 
--

CREATE INDEX atributo_metodo_recup_post_atributo ON atributo_metodo_recup_post USING btree (atributo);


--
-- TOC entry 3535 (class 1259 OID 57493158)
-- Dependencies: 305
-- Name: atributo_metodo_recup_post_id; Type: INDEX; Schema: basico_acao_aplic_assoc_visao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX atributo_metodo_recup_post_id ON atributo_metodo_recup_post USING btree (id);


--
-- TOC entry 3536 (class 1259 OID 57493159)
-- Dependencies: 305
-- Name: atributo_metodo_recup_post_id_categoria; Type: INDEX; Schema: basico_acao_aplic_assoc_visao; Owner: -; Tablespace: 
--

CREATE INDEX atributo_metodo_recup_post_id_categoria ON atributo_metodo_recup_post USING btree (id_categoria);


--
-- TOC entry 3537 (class 1259 OID 57493161)
-- Dependencies: 305
-- Name: atributo_metodo_recup_post_metodo_recuperacao; Type: INDEX; Schema: basico_acao_aplic_assoc_visao; Owner: -; Tablespace: 
--

CREATE INDEX atributo_metodo_recup_post_metodo_recuperacao ON atributo_metodo_recup_post USING btree (metodo_recuperacao);


SET search_path = basico_acao_aplicacao, pg_catalog;

--
-- TOC entry 3525 (class 1259 OID 57493154)
-- Dependencies: 303
-- Name: assoc_visao_constante_textual; Type: INDEX; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_visao_constante_textual ON assoc_visao USING btree (constante_textual);


--
-- TOC entry 3526 (class 1259 OID 57493157)
-- Dependencies: 303
-- Name: assoc_visao_constante_textual_mensagem; Type: INDEX; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_visao_constante_textual_mensagem ON assoc_visao USING btree (constante_textual_mensagem);


--
-- TOC entry 3527 (class 1259 OID 57493156)
-- Dependencies: 303
-- Name: assoc_visao_constante_textual_subtitulo; Type: INDEX; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_visao_constante_textual_subtitulo ON assoc_visao USING btree (constante_textual_subtitulo);


--
-- TOC entry 3528 (class 1259 OID 57493155)
-- Dependencies: 303
-- Name: assoc_visao_constante_textual_titulo; Type: INDEX; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_visao_constante_textual_titulo ON assoc_visao USING btree (constante_textual_titulo);


--
-- TOC entry 3529 (class 1259 OID 57493151)
-- Dependencies: 303
-- Name: assoc_visao_id; Type: INDEX; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_visao_id ON assoc_visao USING btree (id);


--
-- TOC entry 3530 (class 1259 OID 57493153)
-- Dependencies: 303
-- Name: assoc_visao_id_acao_aplicacao; Type: INDEX; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_visao_id_acao_aplicacao ON assoc_visao USING btree (id_acao_aplicacao);


--
-- TOC entry 3531 (class 1259 OID 57493152)
-- Dependencies: 303
-- Name: assoc_visao_id_categoria; Type: INDEX; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_visao_id_categoria ON assoc_visao USING btree (id_categoria);


--
-- TOC entry 3517 (class 1259 OID 57493141)
-- Dependencies: 301
-- Name: assoccl_metodo_validacao_id; Type: INDEX; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_metodo_validacao_id ON assoccl_metodo_validacao USING btree (id);


--
-- TOC entry 3518 (class 1259 OID 57493148)
-- Dependencies: 301
-- Name: assoccl_metodo_validacao_id_acao_aplicacao; Type: INDEX; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_metodo_validacao_id_acao_aplicacao ON assoccl_metodo_validacao USING btree (id_acao_aplicacao);


--
-- TOC entry 3519 (class 1259 OID 57493149)
-- Dependencies: 301
-- Name: assoccl_metodo_validacao_id_metodo_validacao; Type: INDEX; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_metodo_validacao_id_metodo_validacao ON assoccl_metodo_validacao USING btree (id_metodo_validacao);


--
-- TOC entry 3520 (class 1259 OID 57493150)
-- Dependencies: 301
-- Name: assoccl_metodo_validacao_id_perfil; Type: INDEX; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_metodo_validacao_id_perfil ON assoccl_metodo_validacao USING btree (id_perfil);


--
-- TOC entry 3510 (class 1259 OID 57493138)
-- Dependencies: 299
-- Name: assoccl_perfil_id; Type: INDEX; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_perfil_id ON assoccl_perfil USING btree (id);


--
-- TOC entry 3511 (class 1259 OID 57493139)
-- Dependencies: 299
-- Name: assoccl_perfil_id_acao_aplicacao; Type: INDEX; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_perfil_id_acao_aplicacao ON assoccl_perfil USING btree (id_acao_aplicacao);


--
-- TOC entry 3512 (class 1259 OID 57493140)
-- Dependencies: 299
-- Name: assoccl_perfil_id_perfil; Type: INDEX; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_perfil_id_perfil ON assoccl_perfil USING btree (id_perfil);


SET search_path = basico_ajuda, pg_catalog;

--
-- TOC entry 3503 (class 1259 OID 57493135)
-- Dependencies: 297
-- Name: assoccl_link_id; Type: INDEX; Schema: basico_ajuda; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_link_id ON assoccl_link USING btree (id);


--
-- TOC entry 3504 (class 1259 OID 57493136)
-- Dependencies: 297
-- Name: assoccl_link_id_ajuda; Type: INDEX; Schema: basico_ajuda; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_link_id_ajuda ON assoccl_link USING btree (id_ajuda);


--
-- TOC entry 3505 (class 1259 OID 57493137)
-- Dependencies: 297
-- Name: assoccl_link_id_link; Type: INDEX; Schema: basico_ajuda; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_link_id_link ON assoccl_link USING btree (id_link);


SET search_path = basico_assoc_banco, pg_catalog;

--
-- TOC entry 3495 (class 1259 OID 57493134)
-- Dependencies: 295
-- Name: assoc_tipo_conta_codigo; Type: INDEX; Schema: basico_assoc_banco; Owner: -; Tablespace: 
--

CREATE INDEX assoc_tipo_conta_codigo ON assoc_tipo_conta USING btree (codigo);


--
-- TOC entry 3496 (class 1259 OID 57493133)
-- Dependencies: 295
-- Name: assoc_tipo_conta_constante_textual; Type: INDEX; Schema: basico_assoc_banco; Owner: -; Tablespace: 
--

CREATE INDEX assoc_tipo_conta_constante_textual ON assoc_tipo_conta USING btree (constante_textual);


--
-- TOC entry 3497 (class 1259 OID 57493129)
-- Dependencies: 295
-- Name: assoc_tipo_conta_id; Type: INDEX; Schema: basico_assoc_banco; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_tipo_conta_id ON assoc_tipo_conta USING btree (id);


--
-- TOC entry 3498 (class 1259 OID 57493130)
-- Dependencies: 295
-- Name: assoc_tipo_conta_id_assoc_banco; Type: INDEX; Schema: basico_assoc_banco; Owner: -; Tablespace: 
--

CREATE INDEX assoc_tipo_conta_id_assoc_banco ON assoc_tipo_conta USING btree (id_assoc_banco);


--
-- TOC entry 3499 (class 1259 OID 57493131)
-- Dependencies: 295
-- Name: assoc_tipo_conta_id_categoria; Type: INDEX; Schema: basico_assoc_banco; Owner: -; Tablespace: 
--

CREATE INDEX assoc_tipo_conta_id_categoria ON assoc_tipo_conta USING btree (id_categoria);


--
-- TOC entry 3500 (class 1259 OID 57493132)
-- Dependencies: 295
-- Name: assoc_tipo_conta_nome; Type: INDEX; Schema: basico_assoc_banco; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_tipo_conta_nome ON assoc_tipo_conta USING btree (nome);


SET search_path = basico_assoc_chave_estrangeira, pg_catalog;

--
-- TOC entry 3490 (class 1259 OID 57493128)
-- Dependencies: 293
-- Name: relacao_campo_origem; Type: INDEX; Schema: basico_assoc_chave_estrangeira; Owner: -; Tablespace: 
--

CREATE INDEX relacao_campo_origem ON relacao USING btree (campo_origem);


--
-- TOC entry 3491 (class 1259 OID 57493126)
-- Dependencies: 293
-- Name: relacao_id; Type: INDEX; Schema: basico_assoc_chave_estrangeira; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX relacao_id ON relacao USING btree (id);


--
-- TOC entry 3492 (class 1259 OID 57493127)
-- Dependencies: 293
-- Name: relacao_tabela_origem; Type: INDEX; Schema: basico_assoc_chave_estrangeira; Owner: -; Tablespace: 
--

CREATE INDEX relacao_tabela_origem ON relacao USING btree (tabela_origem);


SET search_path = basico_assoc_dados_profis, pg_catalog;

--
-- TOC entry 3481 (class 1259 OID 57493123)
-- Dependencies: 291
-- Name: assoccl_area_conhecimento_id; Type: INDEX; Schema: basico_assoc_dados_profis; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_area_conhecimento_id ON assoccl_area_conhecimento USING btree (id);


--
-- TOC entry 3482 (class 1259 OID 57493124)
-- Dependencies: 291
-- Name: assoccl_area_conhecimento_id_area_conhecimento; Type: INDEX; Schema: basico_assoc_dados_profis; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_area_conhecimento_id_area_conhecimento ON assoccl_area_conhecimento USING btree (id_area_conhecimento);


--
-- TOC entry 3483 (class 1259 OID 57493125)
-- Dependencies: 291
-- Name: assoccl_area_conhecimento_id_assoc_dados_profissionais; Type: INDEX; Schema: basico_assoc_dados_profis; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_area_conhecimento_id_assoc_dados_profissionais ON assoccl_area_conhecimento USING btree (id_assoc_dados_profissionais);


SET search_path = basico_assoccl_pessoa_perfil, pg_catalog;

--
-- TOC entry 3477 (class 1259 OID 57493121)
-- Dependencies: 289
-- Name: assoc_dados_id; Type: INDEX; Schema: basico_assoccl_pessoa_perfil; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_dados_id ON assoc_dados USING btree (id);


--
-- TOC entry 3478 (class 1259 OID 57493122)
-- Dependencies: 289
-- Name: assoc_dados_id_assoccl_pessoa_perfil; Type: INDEX; Schema: basico_assoccl_pessoa_perfil; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_dados_id_assoccl_pessoa_perfil ON assoc_dados USING btree (id_assoccl_pessoa_perfil);


SET search_path = basico_assocl_vinculo_profissional, pg_catalog;

--
-- TOC entry 3469 (class 1259 OID 57493115)
-- Dependencies: 287
-- Name: assoc_dados_id; Type: INDEX; Schema: basico_assocl_vinculo_profissional; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_dados_id ON assoc_dados USING btree (id);


--
-- TOC entry 3470 (class 1259 OID 57493116)
-- Dependencies: 287
-- Name: assoc_dados_id_assocl_vinculo_profissional; Type: INDEX; Schema: basico_assocl_vinculo_profissional; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_dados_id_assocl_vinculo_profissional ON assoc_dados USING btree (id_assocl_vinculo_profissional);


--
-- TOC entry 3471 (class 1259 OID 57493119)
-- Dependencies: 287
-- Name: assoc_dados_id_pessoa_juridica_vinculo; Type: INDEX; Schema: basico_assocl_vinculo_profissional; Owner: -; Tablespace: 
--

CREATE INDEX assoc_dados_id_pessoa_juridica_vinculo ON assoc_dados USING btree (id_pessoa_juridica_vinculo);


--
-- TOC entry 3472 (class 1259 OID 57493117)
-- Dependencies: 287
-- Name: assoc_dados_id_profissao; Type: INDEX; Schema: basico_assocl_vinculo_profissional; Owner: -; Tablespace: 
--

CREATE INDEX assoc_dados_id_profissao ON assoc_dados USING btree (id_profissao);


--
-- TOC entry 3473 (class 1259 OID 57493118)
-- Dependencies: 287
-- Name: assoc_dados_id_vinculo_empregaticio; Type: INDEX; Schema: basico_assocl_vinculo_profissional; Owner: -; Tablespace: 
--

CREATE INDEX assoc_dados_id_vinculo_empregaticio ON assoc_dados USING btree (id_vinculo_empregaticio);


--
-- TOC entry 3474 (class 1259 OID 57493120)
-- Dependencies: 287
-- Name: assoc_dados_matricula; Type: INDEX; Schema: basico_assocl_vinculo_profissional; Owner: -; Tablespace: 
--

CREATE INDEX assoc_dados_matricula ON assoc_dados USING btree (matricula);


SET search_path = basico_categoria, pg_catalog;

--
-- TOC entry 3460 (class 1259 OID 57493114)
-- Dependencies: 285
-- Name: assoc_chave_estrangeira_campo_estrangeiro; Type: INDEX; Schema: basico_categoria; Owner: -; Tablespace: 
--

CREATE INDEX assoc_chave_estrangeira_campo_estrangeiro ON assoc_chave_estrangeira USING btree (campo_estrangeiro);


--
-- TOC entry 3461 (class 1259 OID 57493110)
-- Dependencies: 285
-- Name: assoc_chave_estrangeira_id; Type: INDEX; Schema: basico_categoria; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_chave_estrangeira_id ON assoc_chave_estrangeira USING btree (id);


--
-- TOC entry 3462 (class 1259 OID 57493112)
-- Dependencies: 285
-- Name: assoc_chave_estrangeira_id_categoria; Type: INDEX; Schema: basico_categoria; Owner: -; Tablespace: 
--

CREATE INDEX assoc_chave_estrangeira_id_categoria ON assoc_chave_estrangeira USING btree (id_categoria);


--
-- TOC entry 3463 (class 1259 OID 57493111)
-- Dependencies: 285
-- Name: assoc_chave_estrangeira_id_modulo; Type: INDEX; Schema: basico_categoria; Owner: -; Tablespace: 
--

CREATE INDEX assoc_chave_estrangeira_id_modulo ON assoc_chave_estrangeira USING btree (id_modulo);


--
-- TOC entry 3464 (class 1259 OID 57493113)
-- Dependencies: 285
-- Name: assoc_chave_estrangeira_tabela_estrangeira; Type: INDEX; Schema: basico_categoria; Owner: -; Tablespace: 
--

CREATE INDEX assoc_chave_estrangeira_tabela_estrangeira ON assoc_chave_estrangeira USING btree (tabela_estrangeira);


SET search_path = basico_componente, pg_catalog;

--
-- TOC entry 3451 (class 1259 OID 57493107)
-- Dependencies: 283
-- Name: assoccl_include_id; Type: INDEX; Schema: basico_componente; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_include_id ON assoccl_include USING btree (id);


--
-- TOC entry 3452 (class 1259 OID 57493108)
-- Dependencies: 283
-- Name: assoccl_include_id_componente; Type: INDEX; Schema: basico_componente; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_componente ON assoccl_include USING btree (id_componente);


--
-- TOC entry 3453 (class 1259 OID 57493109)
-- Dependencies: 283
-- Name: assoccl_include_id_include; Type: INDEX; Schema: basico_componente; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_include ON assoccl_include USING btree (id_include);


SET search_path = basico_contato, pg_catalog;

--
-- TOC entry 3441 (class 1259 OID 57493106)
-- Dependencies: 281
-- Name: email_email; Type: INDEX; Schema: basico_contato; Owner: -; Tablespace: 
--

CREATE INDEX email_email ON email USING btree (email);


--
-- TOC entry 3442 (class 1259 OID 57493101)
-- Dependencies: 281
-- Name: email_id; Type: INDEX; Schema: basico_contato; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX email_id ON email USING btree (id);


--
-- TOC entry 3443 (class 1259 OID 57493102)
-- Dependencies: 281
-- Name: email_id_categoria; Type: INDEX; Schema: basico_contato; Owner: -; Tablespace: 
--

CREATE INDEX email_id_categoria ON email USING btree (id_categoria);


--
-- TOC entry 3444 (class 1259 OID 57493103)
-- Dependencies: 281
-- Name: email_id_generico_proprietario; Type: INDEX; Schema: basico_contato; Owner: -; Tablespace: 
--

CREATE INDEX email_id_generico_proprietario ON email USING btree (id_generico_proprietario);


--
-- TOC entry 3445 (class 1259 OID 57493104)
-- Dependencies: 281
-- Name: email_nome; Type: INDEX; Schema: basico_contato; Owner: -; Tablespace: 
--

CREATE INDEX email_nome ON email USING btree (nome);


--
-- TOC entry 3446 (class 1259 OID 57493105)
-- Dependencies: 281
-- Name: email_unique_id; Type: INDEX; Schema: basico_contato; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX email_unique_id ON email USING btree (unique_id);


--
-- TOC entry 3435 (class 1259 OID 57493097)
-- Dependencies: 279
-- Name: telefone_id; Type: INDEX; Schema: basico_contato; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX telefone_id ON telefone USING btree (id);


--
-- TOC entry 3436 (class 1259 OID 57493098)
-- Dependencies: 279
-- Name: telefone_id_categoria; Type: INDEX; Schema: basico_contato; Owner: -; Tablespace: 
--

CREATE INDEX telefone_id_categoria ON telefone USING btree (id_categoria);


--
-- TOC entry 3437 (class 1259 OID 57493099)
-- Dependencies: 279
-- Name: telefone_id_generico_proprietario; Type: INDEX; Schema: basico_contato; Owner: -; Tablespace: 
--

CREATE INDEX telefone_id_generico_proprietario ON telefone USING btree (id_generico_proprietario);


--
-- TOC entry 3438 (class 1259 OID 57493100)
-- Dependencies: 279
-- Name: telefone_nome; Type: INDEX; Schema: basico_contato; Owner: -; Tablespace: 
--

CREATE INDEX telefone_nome ON telefone USING btree (nome);


SET search_path = basico_cvc, pg_catalog;

--
-- TOC entry 3426 (class 1259 OID 57493094)
-- Dependencies: 277
-- Name: cvc_id; Type: INDEX; Schema: basico_cvc; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX cvc_id ON cvc USING btree (id);


--
-- TOC entry 3427 (class 1259 OID 57493095)
-- Dependencies: 277
-- Name: cvc_id_assoc_chave_estrangeira; Type: INDEX; Schema: basico_cvc; Owner: -; Tablespace: 
--

CREATE INDEX cvc_id_assoc_chave_estrangeira ON cvc USING btree (id_assoc_chave_estrangeira);


--
-- TOC entry 3428 (class 1259 OID 57493096)
-- Dependencies: 277
-- Name: cvc_id_generico; Type: INDEX; Schema: basico_cvc; Owner: -; Tablespace: 
--

CREATE INDEX cvc_id_generico ON cvc USING btree (id_generico);


SET search_path = basico_dados_academicos, pg_catalog;

--
-- TOC entry 3422 (class 1259 OID 57493093)
-- Dependencies: 275
-- Name: titulacao_constante_textual; Type: INDEX; Schema: basico_dados_academicos; Owner: -; Tablespace: 
--

CREATE INDEX titulacao_constante_textual ON titulacao USING btree (constante_textual);


--
-- TOC entry 3423 (class 1259 OID 57493090)
-- Dependencies: 275
-- Name: titulacao_id; Type: INDEX; Schema: basico_dados_academicos; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX titulacao_id ON titulacao USING btree (id);


--
-- TOC entry 3424 (class 1259 OID 57493091)
-- Dependencies: 275
-- Name: titulacao_id_categoria; Type: INDEX; Schema: basico_dados_academicos; Owner: -; Tablespace: 
--

CREATE INDEX titulacao_id_categoria ON titulacao USING btree (id_categoria);


--
-- TOC entry 3425 (class 1259 OID 57493092)
-- Dependencies: 275
-- Name: titulacao_nome; Type: INDEX; Schema: basico_dados_academicos; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX titulacao_nome ON titulacao USING btree (nome);


SET search_path = basico_dados_biometricos, pg_catalog;

--
-- TOC entry 3417 (class 1259 OID 57493089)
-- Dependencies: 273
-- Name: tipo_sanguineo_constante_textual; Type: INDEX; Schema: basico_dados_biometricos; Owner: -; Tablespace: 
--

CREATE INDEX tipo_sanguineo_constante_textual ON tipo_sanguineo USING btree (constante_textual);


--
-- TOC entry 3418 (class 1259 OID 57493087)
-- Dependencies: 273
-- Name: tipo_sanguineo_id; Type: INDEX; Schema: basico_dados_biometricos; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX tipo_sanguineo_id ON tipo_sanguineo USING btree (id);


--
-- TOC entry 3419 (class 1259 OID 57493088)
-- Dependencies: 273
-- Name: tipo_sanguineo_nome; Type: INDEX; Schema: basico_dados_biometricos; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX tipo_sanguineo_nome ON tipo_sanguineo USING btree (nome);


SET search_path = basico_dados_profissionais, pg_catalog;

--
-- TOC entry 3409 (class 1259 OID 57493086)
-- Dependencies: 271
-- Name: regime_trabalho_codigo; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX regime_trabalho_codigo ON regime_trabalho USING btree (codigo);


--
-- TOC entry 3410 (class 1259 OID 57493085)
-- Dependencies: 271
-- Name: regime_trabalho_constante_textual; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE INDEX regime_trabalho_constante_textual ON regime_trabalho USING btree (constante_textual);


--
-- TOC entry 3411 (class 1259 OID 57493081)
-- Dependencies: 271
-- Name: regime_trabalho_id; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX regime_trabalho_id ON regime_trabalho USING btree (id);


--
-- TOC entry 3412 (class 1259 OID 57493083)
-- Dependencies: 271
-- Name: regime_trabalho_id_categoria; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE INDEX regime_trabalho_id_categoria ON regime_trabalho USING btree (id_categoria);


--
-- TOC entry 3413 (class 1259 OID 57493082)
-- Dependencies: 271
-- Name: regime_trabalho_id_regime_trabalho_pai; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE INDEX regime_trabalho_id_regime_trabalho_pai ON regime_trabalho USING btree (id_regime_trabalho_pai);


--
-- TOC entry 3414 (class 1259 OID 57493084)
-- Dependencies: 271
-- Name: regime_trabalho_nome; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX regime_trabalho_nome ON regime_trabalho USING btree (nome);


--
-- TOC entry 3402 (class 1259 OID 57493080)
-- Dependencies: 269
-- Name: tipo_vinculo_codigo; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX tipo_vinculo_codigo ON tipo_vinculo USING btree (codigo);


--
-- TOC entry 3403 (class 1259 OID 57493079)
-- Dependencies: 269
-- Name: tipo_vinculo_constante_textual; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE INDEX tipo_vinculo_constante_textual ON tipo_vinculo USING btree (constante_textual);


--
-- TOC entry 3404 (class 1259 OID 57493076)
-- Dependencies: 269
-- Name: tipo_vinculo_id; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX tipo_vinculo_id ON tipo_vinculo USING btree (id);


--
-- TOC entry 3405 (class 1259 OID 57493077)
-- Dependencies: 269
-- Name: tipo_vinculo_id_categoria; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE INDEX tipo_vinculo_id_categoria ON tipo_vinculo USING btree (id_categoria);


--
-- TOC entry 3406 (class 1259 OID 57493078)
-- Dependencies: 269
-- Name: tipo_vinculo_nome; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX tipo_vinculo_nome ON tipo_vinculo USING btree (nome);


--
-- TOC entry 3395 (class 1259 OID 57493075)
-- Dependencies: 267
-- Name: vinculo_empregaticio_codigo; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX vinculo_empregaticio_codigo ON vinculo_empregaticio USING btree (codigo);


--
-- TOC entry 3396 (class 1259 OID 57493074)
-- Dependencies: 267
-- Name: vinculo_empregaticio_constante_textual; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE INDEX vinculo_empregaticio_constante_textual ON vinculo_empregaticio USING btree (constante_textual);


--
-- TOC entry 3397 (class 1259 OID 57493071)
-- Dependencies: 267
-- Name: vinculo_empregaticio_id; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX vinculo_empregaticio_id ON vinculo_empregaticio USING btree (id);


--
-- TOC entry 3398 (class 1259 OID 57493072)
-- Dependencies: 267
-- Name: vinculo_empregaticio_id_categoria; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE INDEX vinculo_empregaticio_id_categoria ON vinculo_empregaticio USING btree (id_categoria);


--
-- TOC entry 3399 (class 1259 OID 57493073)
-- Dependencies: 267
-- Name: vinculo_empregaticio_nome; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX vinculo_empregaticio_nome ON vinculo_empregaticio USING btree (nome);


SET search_path = basico_decorator, pg_catalog;

--
-- TOC entry 3384 (class 1259 OID 57493068)
-- Dependencies: 265
-- Name: assoccl_include_id; Type: INDEX; Schema: basico_decorator; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_include_id ON assoccl_include USING btree (id);


--
-- TOC entry 3385 (class 1259 OID 57493069)
-- Dependencies: 265
-- Name: assoccl_include_id_decorator; Type: INDEX; Schema: basico_decorator; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_decorator ON assoccl_include USING btree (id_decorator);


--
-- TOC entry 3386 (class 1259 OID 57493070)
-- Dependencies: 265
-- Name: assoccl_include_id_include; Type: INDEX; Schema: basico_decorator; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_include ON assoccl_include USING btree (id_include);


SET search_path = basico_form_assoccl_elem_grupo, pg_catalog;

--
-- TOC entry 3379 (class 1259 OID 57493065)
-- Dependencies: 263
-- Name: assoccl_decorator_id; Type: INDEX; Schema: basico_form_assoccl_elem_grupo; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_decorator_id ON assoccl_decorator USING btree (id);


--
-- TOC entry 3380 (class 1259 OID 57493067)
-- Dependencies: 263
-- Name: assoccl_decorator_id_decorator; Type: INDEX; Schema: basico_form_assoccl_elem_grupo; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_decorator_id_decorator ON assoccl_decorator USING btree (id_decorator);


--
-- TOC entry 3381 (class 1259 OID 57493066)
-- Dependencies: 263
-- Name: assoccl_decorator_id_grupo; Type: INDEX; Schema: basico_form_assoccl_elem_grupo; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_decorator_id_grupo ON assoccl_decorator USING btree (id_grupo);


SET search_path = basico_form_assoccl_elemento, pg_catalog;

--
-- TOC entry 3370 (class 1259 OID 57493062)
-- Dependencies: 261
-- Name: assoccl_decorator_id; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_decorator_id ON assoccl_decorator USING btree (id);


--
-- TOC entry 3371 (class 1259 OID 57493063)
-- Dependencies: 261
-- Name: assoccl_decorator_id_assoccl_elemento; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_decorator_id_assoccl_elemento ON assoccl_decorator USING btree (id_assoccl_elemento);


--
-- TOC entry 3372 (class 1259 OID 57493064)
-- Dependencies: 261
-- Name: assoccl_decorator_id_decorator; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_decorator_id_decorator ON assoccl_decorator USING btree (id_decorator);


--
-- TOC entry 3364 (class 1259 OID 57493058)
-- Dependencies: 259
-- Name: assoccl_evento_id; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_evento_id ON assoccl_evento USING btree (id);


--
-- TOC entry 3365 (class 1259 OID 57493060)
-- Dependencies: 259
-- Name: assoccl_evento_id_assoccl_elemento; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_evento_id_assoccl_elemento ON assoccl_evento USING btree (id_assoccl_elemento);


--
-- TOC entry 3366 (class 1259 OID 57493059)
-- Dependencies: 259
-- Name: assoccl_evento_id_categoria; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_evento_id_categoria ON assoccl_evento USING btree (id_categoria);


--
-- TOC entry 3367 (class 1259 OID 57493061)
-- Dependencies: 259
-- Name: assoccl_evento_id_evento; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_evento_id_evento ON assoccl_evento USING btree (id_evento);


--
-- TOC entry 3357 (class 1259 OID 57493055)
-- Dependencies: 257
-- Name: assoccl_filter_id; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_filter_id ON assoccl_filter USING btree (id);


--
-- TOC entry 3358 (class 1259 OID 57493056)
-- Dependencies: 257
-- Name: assoccl_filter_id_assoccl_elemento; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_filter_id_assoccl_elemento ON assoccl_filter USING btree (id_assoccl_elemento);


--
-- TOC entry 3359 (class 1259 OID 57493057)
-- Dependencies: 257
-- Name: assoccl_filter_id_filter; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_filter_id_filter ON assoccl_filter USING btree (id_filter);


--
-- TOC entry 3348 (class 1259 OID 57493052)
-- Dependencies: 255
-- Name: assoccl_include_id; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_include_id ON assoccl_include USING btree (id);


--
-- TOC entry 3349 (class 1259 OID 57493053)
-- Dependencies: 255
-- Name: assoccl_include_id_assoccl_elemento; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_assoccl_elemento ON assoccl_include USING btree (id_assoccl_elemento);


--
-- TOC entry 3350 (class 1259 OID 57493054)
-- Dependencies: 255
-- Name: assoccl_include_id_include; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_include ON assoccl_include USING btree (id_include);


--
-- TOC entry 3341 (class 1259 OID 57493049)
-- Dependencies: 253
-- Name: assoccl_validator_id; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_validator_id ON assoccl_validator USING btree (id);


--
-- TOC entry 3342 (class 1259 OID 57493050)
-- Dependencies: 253
-- Name: assoccl_validator_id_assoccl_elemento; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_validator_id_assoccl_elemento ON assoccl_validator USING btree (id_assoccl_elemento);


--
-- TOC entry 3343 (class 1259 OID 57493051)
-- Dependencies: 253
-- Name: assoccl_validator_id_validator; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_validator_id_validator ON assoccl_validator USING btree (id_validator);


--
-- TOC entry 3335 (class 1259 OID 57493047)
-- Dependencies: 251
-- Name: grupo_constante_textual; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE INDEX grupo_constante_textual ON grupo USING btree (constante_textual);


--
-- TOC entry 3336 (class 1259 OID 57493048)
-- Dependencies: 251
-- Name: grupo_constante_textual_label; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE INDEX grupo_constante_textual_label ON grupo USING btree (constante_textual_label);


--
-- TOC entry 3337 (class 1259 OID 57493045)
-- Dependencies: 251
-- Name: grupo_id; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX grupo_id ON grupo USING btree (id);


--
-- TOC entry 3338 (class 1259 OID 57493046)
-- Dependencies: 251
-- Name: grupo_nome; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX grupo_nome ON grupo USING btree (nome);


SET search_path = basico_form_elemento, pg_catalog;

--
-- TOC entry 3328 (class 1259 OID 57493042)
-- Dependencies: 249
-- Name: assoccl_evento_id; Type: INDEX; Schema: basico_form_elemento; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_evento_id ON assoccl_evento USING btree (id);


--
-- TOC entry 3329 (class 1259 OID 57493043)
-- Dependencies: 249
-- Name: assoccl_evento_id_elemento; Type: INDEX; Schema: basico_form_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_evento_id_elemento ON assoccl_evento USING btree (id_elemento);


--
-- TOC entry 3330 (class 1259 OID 57493044)
-- Dependencies: 249
-- Name: assoccl_evento_id_evento; Type: INDEX; Schema: basico_form_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_evento_id_evento ON assoccl_evento USING btree (id_evento);


SET search_path = basico_formulario, pg_catalog;

--
-- TOC entry 3321 (class 1259 OID 57493039)
-- Dependencies: 247
-- Name: assoccl_decorator_id; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_decorator_id ON assoccl_decorator USING btree (id);


--
-- TOC entry 3322 (class 1259 OID 57493041)
-- Dependencies: 247
-- Name: assoccl_decorator_id_decorator; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_decorator_id_decorator ON assoccl_decorator USING btree (id_decorator);


--
-- TOC entry 3323 (class 1259 OID 57493040)
-- Dependencies: 247
-- Name: assoccl_decorator_id_formulario; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_decorator_id_formulario ON assoccl_decorator USING btree (id_formulario);


--
-- TOC entry 3313 (class 1259 OID 57493038)
-- Dependencies: 245
-- Name: assoccl_elemento_constante_textual_label; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_elemento_constante_textual_label ON assoccl_elemento USING btree (constante_textual_label);


--
-- TOC entry 3314 (class 1259 OID 57493035)
-- Dependencies: 245
-- Name: assoccl_elemento_id; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_elemento_id ON assoccl_elemento USING btree (id);


--
-- TOC entry 3315 (class 1259 OID 57493037)
-- Dependencies: 245
-- Name: assoccl_elemento_id_elemento; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_elemento_id_elemento ON assoccl_elemento USING btree (id_elemento);


--
-- TOC entry 3316 (class 1259 OID 57493036)
-- Dependencies: 245
-- Name: assoccl_elemento_id_formulario; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_elemento_id_formulario ON assoccl_elemento USING btree (id_formulario);


--
-- TOC entry 3306 (class 1259 OID 57493032)
-- Dependencies: 243
-- Name: assoccl_evento_id; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_evento_id ON assoccl_evento USING btree (id);


--
-- TOC entry 3307 (class 1259 OID 57493034)
-- Dependencies: 243
-- Name: assoccl_evento_id_evento; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_evento_id_evento ON assoccl_evento USING btree (id_evento);


--
-- TOC entry 3308 (class 1259 OID 57493033)
-- Dependencies: 243
-- Name: assoccl_evento_id_formulario; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_evento_id_formulario ON assoccl_evento USING btree (id_formulario);


--
-- TOC entry 3297 (class 1259 OID 57493029)
-- Dependencies: 241
-- Name: assoccl_include_id; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_include_id ON assoccl_include USING btree (id);


--
-- TOC entry 3298 (class 1259 OID 57493030)
-- Dependencies: 241
-- Name: assoccl_include_id_formulario; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_formulario ON assoccl_include USING btree (id_formulario);


--
-- TOC entry 3299 (class 1259 OID 57493031)
-- Dependencies: 241
-- Name: assoccl_include_id_include; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_include ON assoccl_include USING btree (id_include);


--
-- TOC entry 3292 (class 1259 OID 57493026)
-- Dependencies: 239
-- Name: assoccl_modulo_id; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_modulo_id ON assoccl_modulo USING btree (id);


--
-- TOC entry 3293 (class 1259 OID 57493028)
-- Dependencies: 239
-- Name: assoccl_modulo_id_formulario; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_modulo_id_formulario ON assoccl_modulo USING btree (id_formulario);


--
-- TOC entry 3294 (class 1259 OID 57493027)
-- Dependencies: 239
-- Name: assoccl_modulo_id_modulo; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_modulo_id_modulo ON assoccl_modulo USING btree (id_modulo);


--
-- TOC entry 3285 (class 1259 OID 57493023)
-- Dependencies: 237
-- Name: assoccl_template_id; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_template_id ON assoccl_template USING btree (id);


--
-- TOC entry 3286 (class 1259 OID 57493025)
-- Dependencies: 237
-- Name: assoccl_template_id_formulario; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_template_id_formulario ON assoccl_template USING btree (id_formulario);


--
-- TOC entry 3287 (class 1259 OID 57493024)
-- Dependencies: 237
-- Name: assoccl_template_id_template; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_template_id_template ON assoccl_template USING btree (id_template);


--
-- TOC entry 3279 (class 1259 OID 57493022)
-- Dependencies: 235
-- Name: decorator_constante_textual; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX decorator_constante_textual ON decorator USING btree (constante_textual);


--
-- TOC entry 3280 (class 1259 OID 57493019)
-- Dependencies: 235
-- Name: decorator_id; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX decorator_id ON decorator USING btree (id);


--
-- TOC entry 3281 (class 1259 OID 57493020)
-- Dependencies: 235
-- Name: decorator_id_categoria; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX decorator_id_categoria ON decorator USING btree (id_categoria);


--
-- TOC entry 3282 (class 1259 OID 57493021)
-- Dependencies: 235
-- Name: decorator_nome; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX decorator_nome ON decorator USING btree (nome);


--
-- TOC entry 3271 (class 1259 OID 57493017)
-- Dependencies: 233
-- Name: elemento_constante_textual; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX elemento_constante_textual ON elemento USING btree (constante_textual);


--
-- TOC entry 3272 (class 1259 OID 57493018)
-- Dependencies: 233
-- Name: elemento_constante_textual_label; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX elemento_constante_textual_label ON elemento USING btree (constante_textual_label);


--
-- TOC entry 3273 (class 1259 OID 57493013)
-- Dependencies: 233
-- Name: elemento_id; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX elemento_id ON elemento USING btree (id);


--
-- TOC entry 3274 (class 1259 OID 57493014)
-- Dependencies: 233
-- Name: elemento_id_categoria; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX elemento_id_categoria ON elemento USING btree (id_categoria);


--
-- TOC entry 3275 (class 1259 OID 57493015)
-- Dependencies: 233
-- Name: elemento_id_componente; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX elemento_id_componente ON elemento USING btree (id_componente);


--
-- TOC entry 3276 (class 1259 OID 57493016)
-- Dependencies: 233
-- Name: elemento_nome; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX elemento_nome ON elemento USING btree (nome);


--
-- TOC entry 3262 (class 1259 OID 57493011)
-- Dependencies: 231
-- Name: rascunho_form_action; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX rascunho_form_action ON rascunho USING btree (form_action);


--
-- TOC entry 3263 (class 1259 OID 57493012)
-- Dependencies: 231
-- Name: rascunho_form_name; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX rascunho_form_name ON rascunho USING btree (form_name);


--
-- TOC entry 3264 (class 1259 OID 57493004)
-- Dependencies: 231
-- Name: rascunho_id; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX rascunho_id ON rascunho USING btree (id);


--
-- TOC entry 3265 (class 1259 OID 57493010)
-- Dependencies: 231
-- Name: rascunho_id_acao_aplicacao_origem; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX rascunho_id_acao_aplicacao_origem ON rascunho USING btree (id_acao_aplicacao_origem);


--
-- TOC entry 3266 (class 1259 OID 57493008)
-- Dependencies: 231
-- Name: rascunho_id_assocag_grupo; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX rascunho_id_assocag_grupo ON rascunho USING btree (id_assocag_grupo);


--
-- TOC entry 3267 (class 1259 OID 57493007)
-- Dependencies: 231
-- Name: rascunho_id_assoccl_perfil; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX rascunho_id_assoccl_perfil ON rascunho USING btree (id_assoccl_perfil);


--
-- TOC entry 3268 (class 1259 OID 57493009)
-- Dependencies: 231
-- Name: rascunho_id_assocsq_acao_aplicacao; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX rascunho_id_assocsq_acao_aplicacao ON rascunho USING btree (id_assocsq_acao_aplicacao);


--
-- TOC entry 3269 (class 1259 OID 57493006)
-- Dependencies: 231
-- Name: rascunho_id_categoria; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX rascunho_id_categoria ON rascunho USING btree (id_categoria);


--
-- TOC entry 3270 (class 1259 OID 57493005)
-- Dependencies: 231
-- Name: rascunho_id_rascunho_pai; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX rascunho_id_rascunho_pai ON rascunho USING btree (id_rascunho_pai);


SET search_path = basico_formulario_elemento, pg_catalog;

--
-- TOC entry 3251 (class 1259 OID 57493001)
-- Dependencies: 229
-- Name: assoccl_decorator_id; Type: INDEX; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_decorator_id ON assoccl_decorator USING btree (id);


--
-- TOC entry 3252 (class 1259 OID 57493003)
-- Dependencies: 229
-- Name: assoccl_decorator_id_decorator; Type: INDEX; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_decorator_id_decorator ON assoccl_decorator USING btree (id_decorator);


--
-- TOC entry 3253 (class 1259 OID 57493002)
-- Dependencies: 229
-- Name: assoccl_decorator_id_elemento; Type: INDEX; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_decorator_id_elemento ON assoccl_decorator USING btree (id_elemento);


--
-- TOC entry 3244 (class 1259 OID 57492998)
-- Dependencies: 227
-- Name: assoccl_filter_id; Type: INDEX; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_filter_id ON assoccl_filter USING btree (id);


--
-- TOC entry 3245 (class 1259 OID 57492999)
-- Dependencies: 227
-- Name: assoccl_filter_id_elemento; Type: INDEX; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_filter_id_elemento ON assoccl_filter USING btree (id_elemento);


--
-- TOC entry 3246 (class 1259 OID 57493000)
-- Dependencies: 227
-- Name: assoccl_filter_id_filter; Type: INDEX; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_filter_id_filter ON assoccl_filter USING btree (id_filter);


--
-- TOC entry 3237 (class 1259 OID 57492989)
-- Dependencies: 225
-- Name: assoccl_validator_id; Type: INDEX; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_validator_id ON assoccl_validator USING btree (id);


--
-- TOC entry 3238 (class 1259 OID 57492996)
-- Dependencies: 225
-- Name: assoccl_validator_id_elemento; Type: INDEX; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_validator_id_elemento ON assoccl_validator USING btree (id_elemento);


--
-- TOC entry 3239 (class 1259 OID 57492997)
-- Dependencies: 225
-- Name: assoccl_validator_id_validator; Type: INDEX; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_validator_id_validator ON assoccl_validator USING btree (id_validator);


SET search_path = basico_formulario_rascunho, pg_catalog;

--
-- TOC entry 3233 (class 1259 OID 57492987)
-- Dependencies: 223
-- Name: assocag_grupo_id; Type: INDEX; Schema: basico_formulario_rascunho; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assocag_grupo_id ON assocag_grupo USING btree (id);


--
-- TOC entry 3234 (class 1259 OID 57492988)
-- Dependencies: 223
-- Name: assocag_grupo_id_assoccl_perfil; Type: INDEX; Schema: basico_formulario_rascunho; Owner: -; Tablespace: 
--

CREATE INDEX assocag_grupo_id_assoccl_perfil ON assocag_grupo USING btree (id_assoccl_perfil);


SET search_path = basico_localizacao, pg_catalog;

--
-- TOC entry 3228 (class 1259 OID 57492984)
-- Dependencies: 221
-- Name: assoc_bairro_id; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_bairro_id ON assoc_bairro USING btree (id);


--
-- TOC entry 3229 (class 1259 OID 57492985)
-- Dependencies: 221
-- Name: assoc_bairro_id_municipio; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_bairro_id_municipio ON assoc_bairro USING btree (id_municipio);


--
-- TOC entry 3230 (class 1259 OID 57492986)
-- Dependencies: 221
-- Name: assoc_bairro_nome; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_bairro_nome ON assoc_bairro USING btree (nome);


--
-- TOC entry 3218 (class 1259 OID 57492978)
-- Dependencies: 219
-- Name: assoc_estado_id; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_estado_id ON assoc_estado USING btree (id);


--
-- TOC entry 3219 (class 1259 OID 57492979)
-- Dependencies: 219
-- Name: assoc_estado_id_categoria; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_estado_id_categoria ON assoc_estado USING btree (id_categoria);


--
-- TOC entry 3220 (class 1259 OID 57492980)
-- Dependencies: 219
-- Name: assoc_estado_id_estado_pai; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_estado_id_estado_pai ON assoc_estado USING btree (id_estado_pai);


--
-- TOC entry 3221 (class 1259 OID 57492981)
-- Dependencies: 219
-- Name: assoc_estado_id_pais; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_estado_id_pais ON assoc_estado USING btree (id_pais);


--
-- TOC entry 3222 (class 1259 OID 57492982)
-- Dependencies: 219
-- Name: assoc_estado_nome; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_estado_nome ON assoc_estado USING btree (nome);


--
-- TOC entry 3223 (class 1259 OID 57492983)
-- Dependencies: 219
-- Name: assoc_estado_sigla; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_estado_sigla ON assoc_estado USING btree (sigla);


--
-- TOC entry 3212 (class 1259 OID 57492974)
-- Dependencies: 217
-- Name: assoc_logradouro_id; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_logradouro_id ON assoc_logradouro USING btree (id);


--
-- TOC entry 3213 (class 1259 OID 57492976)
-- Dependencies: 217
-- Name: assoc_logradouro_id_bairro; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_logradouro_id_bairro ON assoc_logradouro USING btree (id_bairro);


--
-- TOC entry 3214 (class 1259 OID 57492975)
-- Dependencies: 217
-- Name: assoc_logradouro_id_categoria; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_logradouro_id_categoria ON assoc_logradouro USING btree (id_categoria);


--
-- TOC entry 3215 (class 1259 OID 57492977)
-- Dependencies: 217
-- Name: assoc_logradouro_nome; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_logradouro_nome ON assoc_logradouro USING btree (nome);


--
-- TOC entry 3202 (class 1259 OID 57492973)
-- Dependencies: 215
-- Name: assoc_municipio_codigo_ddd; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_municipio_codigo_ddd ON assoc_municipio USING btree (codigo_ddd);


--
-- TOC entry 3203 (class 1259 OID 57492968)
-- Dependencies: 215
-- Name: assoc_municipio_id; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_municipio_id ON assoc_municipio USING btree (id);


--
-- TOC entry 3204 (class 1259 OID 57492969)
-- Dependencies: 215
-- Name: assoc_municipio_id_categoria; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_municipio_id_categoria ON assoc_municipio USING btree (id_categoria);


--
-- TOC entry 3205 (class 1259 OID 57492971)
-- Dependencies: 215
-- Name: assoc_municipio_id_estado; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_municipio_id_estado ON assoc_municipio USING btree (id_estado);


--
-- TOC entry 3206 (class 1259 OID 57492970)
-- Dependencies: 215
-- Name: assoc_municipio_id_municipio_pai; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_municipio_id_municipio_pai ON assoc_municipio USING btree (id_municipio_pai);


--
-- TOC entry 3207 (class 1259 OID 57492972)
-- Dependencies: 215
-- Name: assoc_municipio_nome; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_municipio_nome ON assoc_municipio USING btree (nome);


--
-- TOC entry 3190 (class 1259 OID 57492962)
-- Dependencies: 213
-- Name: codigo_postal_codigo; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX codigo_postal_codigo ON codigo_postal USING btree (codigo);


--
-- TOC entry 3191 (class 1259 OID 57492960)
-- Dependencies: 213
-- Name: codigo_postal_id; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX codigo_postal_id ON codigo_postal USING btree (id);


--
-- TOC entry 3192 (class 1259 OID 57492966)
-- Dependencies: 213
-- Name: codigo_postal_id_bairro; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX codigo_postal_id_bairro ON codigo_postal USING btree (id_bairro);


--
-- TOC entry 3193 (class 1259 OID 57492961)
-- Dependencies: 213
-- Name: codigo_postal_id_categoria; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX codigo_postal_id_categoria ON codigo_postal USING btree (id_categoria);


--
-- TOC entry 3194 (class 1259 OID 57492964)
-- Dependencies: 213
-- Name: codigo_postal_id_estado; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX codigo_postal_id_estado ON codigo_postal USING btree (id_estado);


--
-- TOC entry 3195 (class 1259 OID 57492967)
-- Dependencies: 213
-- Name: codigo_postal_id_logradouro; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX codigo_postal_id_logradouro ON codigo_postal USING btree (id_logradouro);


--
-- TOC entry 3196 (class 1259 OID 57492965)
-- Dependencies: 213
-- Name: codigo_postal_id_municipio; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX codigo_postal_id_municipio ON codigo_postal USING btree (id_municipio);


--
-- TOC entry 3197 (class 1259 OID 57492963)
-- Dependencies: 213
-- Name: codigo_postal_id_pais; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX codigo_postal_id_pais ON codigo_postal USING btree (id_pais);


--
-- TOC entry 3183 (class 1259 OID 57492958)
-- Dependencies: 211
-- Name: endereco_codigo_postal; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX endereco_codigo_postal ON endereco USING btree (codigo_postal);


--
-- TOC entry 3184 (class 1259 OID 57492955)
-- Dependencies: 211
-- Name: endereco_id; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX endereco_id ON endereco USING btree (id);


--
-- TOC entry 3185 (class 1259 OID 57492959)
-- Dependencies: 211
-- Name: endereco_id_assoccl_perfil_validador; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX endereco_id_assoccl_perfil_validador ON endereco USING btree (id_assoccl_perfil_validador);


--
-- TOC entry 3186 (class 1259 OID 57492956)
-- Dependencies: 211
-- Name: endereco_id_categoria; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX endereco_id_categoria ON endereco USING btree (id_categoria);


--
-- TOC entry 3187 (class 1259 OID 57492957)
-- Dependencies: 211
-- Name: endereco_id_generico_proprietario; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX endereco_id_generico_proprietario ON endereco USING btree (id_generico_proprietario);


--
-- TOC entry 3178 (class 1259 OID 57492953)
-- Dependencies: 209
-- Name: pais_constante_textual; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX pais_constante_textual ON pais USING btree (constante_textual);


--
-- TOC entry 3179 (class 1259 OID 57492952)
-- Dependencies: 209
-- Name: pais_id; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX pais_id ON pais USING btree (id);


--
-- TOC entry 3180 (class 1259 OID 57492954)
-- Dependencies: 209
-- Name: pais_sigla; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX pais_sigla ON pais USING btree (sigla);


SET search_path = basico_mascara, pg_catalog;

--
-- TOC entry 3167 (class 1259 OID 57492949)
-- Dependencies: 207
-- Name: assoccl_include_id; Type: INDEX; Schema: basico_mascara; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_include_id ON assoccl_include USING btree (id);


--
-- TOC entry 3168 (class 1259 OID 57492951)
-- Dependencies: 207
-- Name: assoccl_include_id_include; Type: INDEX; Schema: basico_mascara; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_include ON assoccl_include USING btree (id_include);


--
-- TOC entry 3169 (class 1259 OID 57492950)
-- Dependencies: 207
-- Name: assoccl_include_id_mascara; Type: INDEX; Schema: basico_mascara; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_mascara ON assoccl_include USING btree (id_mascara);


SET search_path = basico_mensagem, pg_catalog;

--
-- TOC entry 3163 (class 1259 OID 57492947)
-- Dependencies: 205
-- Name: assoc_email_id; Type: INDEX; Schema: basico_mensagem; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_email_id ON assoc_email USING btree (id);


--
-- TOC entry 3164 (class 1259 OID 57492948)
-- Dependencies: 205
-- Name: assoc_email_id_mensagem; Type: INDEX; Schema: basico_mensagem; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_email_id_mensagem ON assoc_email USING btree (id_mensagem);


--
-- TOC entry 3157 (class 1259 OID 57492943)
-- Dependencies: 203
-- Name: assoccl_assoccl_pessoa_perfil_id; Type: INDEX; Schema: basico_mensagem; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_assoccl_pessoa_perfil_id ON assoccl_assoccl_pessoa_perfil USING btree (id);


--
-- TOC entry 3158 (class 1259 OID 57492946)
-- Dependencies: 203
-- Name: assoccl_assoccl_pessoa_perfil_id_assoccl_perfil; Type: INDEX; Schema: basico_mensagem; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_assoccl_pessoa_perfil_id_assoccl_perfil ON assoccl_assoccl_pessoa_perfil USING btree (id_assoccl_perfil);


--
-- TOC entry 3159 (class 1259 OID 57492944)
-- Dependencies: 203
-- Name: assoccl_assoccl_pessoa_perfil_id_categoria; Type: INDEX; Schema: basico_mensagem; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_assoccl_pessoa_perfil_id_categoria ON assoccl_assoccl_pessoa_perfil USING btree (id_categoria);


--
-- TOC entry 3160 (class 1259 OID 57492945)
-- Dependencies: 203
-- Name: assoccl_assoccl_pessoa_perfil_id_mensagem; Type: INDEX; Schema: basico_mensagem; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_assoccl_pessoa_perfil_id_mensagem ON assoccl_assoccl_pessoa_perfil USING btree (id_mensagem);


SET search_path = basico_mensagem_assoc_email, pg_catalog;

--
-- TOC entry 3150 (class 1259 OID 57492940)
-- Dependencies: 201
-- Name: assoccl_arquivo_id; Type: INDEX; Schema: basico_mensagem_assoc_email; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_arquivo_id ON assoccl_arquivo USING btree (id);


--
-- TOC entry 3151 (class 1259 OID 57492942)
-- Dependencies: 201
-- Name: assoccl_arquivo_id_arquivo; Type: INDEX; Schema: basico_mensagem_assoc_email; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_arquivo_id_arquivo ON assoccl_arquivo USING btree (id_arquivo);


--
-- TOC entry 3152 (class 1259 OID 57492941)
-- Dependencies: 201
-- Name: assoccl_arquivo_id_assoc_email; Type: INDEX; Schema: basico_mensagem_assoc_email; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_arquivo_id_assoc_email ON assoccl_arquivo USING btree (id_assoc_email);


SET search_path = basico_metodo_validacao, pg_catalog;

--
-- TOC entry 3143 (class 1259 OID 57492937)
-- Dependencies: 199
-- Name: assoccl_include_id; Type: INDEX; Schema: basico_metodo_validacao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_include_id ON assoccl_include USING btree (id);


--
-- TOC entry 3144 (class 1259 OID 57492939)
-- Dependencies: 199
-- Name: assoccl_include_id_include; Type: INDEX; Schema: basico_metodo_validacao; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_include ON assoccl_include USING btree (id_include);


--
-- TOC entry 3145 (class 1259 OID 57492938)
-- Dependencies: 199
-- Name: assoccl_include_id_metodo_validacao; Type: INDEX; Schema: basico_metodo_validacao; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_metodo_validacao ON assoccl_include USING btree (id_metodo_validacao);


SET search_path = basico_output, pg_catalog;

--
-- TOC entry 3134 (class 1259 OID 57492934)
-- Dependencies: 197
-- Name: assoccl_include_id; Type: INDEX; Schema: basico_output; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_include_id ON assoccl_include USING btree (id);


--
-- TOC entry 3135 (class 1259 OID 57492936)
-- Dependencies: 197
-- Name: assoccl_include_id_include; Type: INDEX; Schema: basico_output; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_include ON assoccl_include USING btree (id_include);


--
-- TOC entry 3136 (class 1259 OID 57492935)
-- Dependencies: 197
-- Name: assoccl_include_id_output; Type: INDEX; Schema: basico_output; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_output ON assoccl_include USING btree (id_output);


SET search_path = basico_perfil, pg_catalog;

--
-- TOC entry 3127 (class 1259 OID 57492931)
-- Dependencies: 195
-- Name: assoccl_modulo_id; Type: INDEX; Schema: basico_perfil; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_modulo_id ON assoccl_modulo USING btree (id);


--
-- TOC entry 3128 (class 1259 OID 57492932)
-- Dependencies: 195
-- Name: assoccl_modulo_id_modulo; Type: INDEX; Schema: basico_perfil; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_modulo_id_modulo ON assoccl_modulo USING btree (id_modulo);


--
-- TOC entry 3129 (class 1259 OID 57492933)
-- Dependencies: 195
-- Name: assoccl_modulo_id_perfil; Type: INDEX; Schema: basico_perfil; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_modulo_id_perfil ON assoccl_modulo USING btree (id_perfil);


SET search_path = basico_pessoa, pg_catalog;

--
-- TOC entry 3122 (class 1259 OID 57492928)
-- Dependencies: 193
-- Name: assoc_dados_id; Type: INDEX; Schema: basico_pessoa; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_dados_id ON assoc_dados USING btree (id);


--
-- TOC entry 3123 (class 1259 OID 57492929)
-- Dependencies: 193
-- Name: assoc_dados_id_pessoa; Type: INDEX; Schema: basico_pessoa; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_dados_id_pessoa ON assoc_dados USING btree (id_pessoa);


--
-- TOC entry 3124 (class 1259 OID 57492930)
-- Dependencies: 193
-- Name: assoc_dados_nome; Type: INDEX; Schema: basico_pessoa; Owner: -; Tablespace: 
--

CREATE INDEX assoc_dados_nome ON assoc_dados USING btree (nome);


--
-- TOC entry 3115 (class 1259 OID 57492925)
-- Dependencies: 191
-- Name: assoccl_perfil_id; Type: INDEX; Schema: basico_pessoa; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_perfil_id ON assoccl_perfil USING btree (id);


--
-- TOC entry 3116 (class 1259 OID 57492927)
-- Dependencies: 191
-- Name: assoccl_perfil_id_perfil; Type: INDEX; Schema: basico_pessoa; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_perfil_id_perfil ON assoccl_perfil USING btree (id_perfil);


--
-- TOC entry 3117 (class 1259 OID 57492926)
-- Dependencies: 191
-- Name: assoccl_perfil_id_pessoa; Type: INDEX; Schema: basico_pessoa; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_perfil_id_pessoa ON assoccl_perfil USING btree (id_pessoa);


--
-- TOC entry 3110 (class 1259 OID 57492922)
-- Dependencies: 189
-- Name: assoccl_vinculo_profissional_id; Type: INDEX; Schema: basico_pessoa; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_vinculo_profissional_id ON assoccl_vinculo_profissional USING btree (id);


--
-- TOC entry 3111 (class 1259 OID 57492923)
-- Dependencies: 189
-- Name: assoccl_vinculo_profissional_id_pessoa; Type: INDEX; Schema: basico_pessoa; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_vinculo_profissional_id_pessoa ON assoccl_vinculo_profissional USING btree (id_pessoa);


--
-- TOC entry 3112 (class 1259 OID 57492924)
-- Dependencies: 189
-- Name: assoccl_vinculo_profissional_id_tipo_vinculo; Type: INDEX; Schema: basico_pessoa; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_vinculo_profissional_id_tipo_vinculo ON assoccl_vinculo_profissional USING btree (id_tipo_vinculo);


SET search_path = basico_pessoa_juridica, pg_catalog;

--
-- TOC entry 3104 (class 1259 OID 57492921)
-- Dependencies: 187
-- Name: assoc_banco_codigo; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_banco_codigo ON assoc_banco USING btree (codigo);


--
-- TOC entry 3105 (class 1259 OID 57492918)
-- Dependencies: 187
-- Name: assoc_banco_id; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_banco_id ON assoc_banco USING btree (id);


--
-- TOC entry 3106 (class 1259 OID 57492920)
-- Dependencies: 187
-- Name: assoc_banco_id_categoria; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assoc_banco_id_categoria ON assoc_banco USING btree (id_categoria);


--
-- TOC entry 3107 (class 1259 OID 57492919)
-- Dependencies: 187
-- Name: assoc_banco_id_pessoa_juridica; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_banco_id_pessoa_juridica ON assoc_banco USING btree (id_pessoa_juridica);


--
-- TOC entry 3097 (class 1259 OID 57492913)
-- Dependencies: 185
-- Name: assoc_dados_id; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_dados_id ON assoc_dados USING btree (id);


--
-- TOC entry 3098 (class 1259 OID 57492914)
-- Dependencies: 185
-- Name: assoc_dados_id_pessoa_juridica; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_dados_id_pessoa_juridica ON assoc_dados USING btree (id_pessoa_juridica);


--
-- TOC entry 3099 (class 1259 OID 57492916)
-- Dependencies: 185
-- Name: assoc_dados_nome_fantasia; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assoc_dados_nome_fantasia ON assoc_dados USING btree (nome_fantasia);


--
-- TOC entry 3100 (class 1259 OID 57492915)
-- Dependencies: 185
-- Name: assoc_dados_razao_social; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assoc_dados_razao_social ON assoc_dados USING btree (razao_social);


--
-- TOC entry 3101 (class 1259 OID 57492917)
-- Dependencies: 185
-- Name: assoc_dados_sigla; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assoc_dados_sigla ON assoc_dados USING btree (sigla);


--
-- TOC entry 3089 (class 1259 OID 57492909)
-- Dependencies: 183
-- Name: assocag_incubadora_id; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assocag_incubadora_id ON assocag_incubadora USING btree (id);


--
-- TOC entry 3090 (class 1259 OID 57492910)
-- Dependencies: 183
-- Name: assocag_incubadora_id_categoria; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assocag_incubadora_id_categoria ON assocag_incubadora USING btree (id_categoria);


--
-- TOC entry 3091 (class 1259 OID 57492911)
-- Dependencies: 183
-- Name: assocag_incubadora_id_pessoa_juridica; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assocag_incubadora_id_pessoa_juridica ON assocag_incubadora USING btree (id_pessoa_juridica);


--
-- TOC entry 3092 (class 1259 OID 57492912)
-- Dependencies: 183
-- Name: assocag_incubadora_id_pessoa_juridica_incubada; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assocag_incubadora_id_pessoa_juridica_incubada ON assocag_incubadora USING btree (id_pessoa_juridica_incubada);


--
-- TOC entry 3079 (class 1259 OID 57492903)
-- Dependencies: 181
-- Name: assocag_parceria_id; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assocag_parceria_id ON assocag_parceria USING btree (id);


--
-- TOC entry 3080 (class 1259 OID 57492907)
-- Dependencies: 181
-- Name: assocag_parceria_id_assocag_parceria; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assocag_parceria_id_assocag_parceria ON assocag_parceria USING btree (id_assocag_parceria);


--
-- TOC entry 3081 (class 1259 OID 57492904)
-- Dependencies: 181
-- Name: assocag_parceria_id_categoria; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assocag_parceria_id_categoria ON assocag_parceria USING btree (id_categoria);


--
-- TOC entry 3082 (class 1259 OID 57492905)
-- Dependencies: 181
-- Name: assocag_parceria_id_pessoa_juridica; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assocag_parceria_id_pessoa_juridica ON assocag_parceria USING btree (id_pessoa_juridica);


--
-- TOC entry 3083 (class 1259 OID 57492906)
-- Dependencies: 181
-- Name: assocag_parceria_id_pessoa_juridica_parceira; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assocag_parceria_id_pessoa_juridica_parceira ON assocag_parceria USING btree (id_pessoa_juridica_parceira);


--
-- TOC entry 3084 (class 1259 OID 57492908)
-- Dependencies: 181
-- Name: assocag_parceria_nome; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assocag_parceria_nome ON assocag_parceria USING btree (nome);


--
-- TOC entry 3072 (class 1259 OID 57492900)
-- Dependencies: 179
-- Name: assoccl_area_economia_id; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_area_economia_id ON assoccl_area_economia USING btree (id);


--
-- TOC entry 3073 (class 1259 OID 57492901)
-- Dependencies: 179
-- Name: assoccl_area_economia_id_area_economia; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_area_economia_id_area_economia ON assoccl_area_economia USING btree (id_area_economia);


--
-- TOC entry 3074 (class 1259 OID 57492902)
-- Dependencies: 179
-- Name: assoccl_area_economia_id_pessoa_juridica; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_area_economia_id_pessoa_juridica ON assoccl_area_economia USING btree (id_pessoa_juridica);


--
-- TOC entry 3065 (class 1259 OID 57492897)
-- Dependencies: 177
-- Name: assoccl_capital_social_id; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_capital_social_id ON assoccl_capital_social USING btree (id);


--
-- TOC entry 3066 (class 1259 OID 57492899)
-- Dependencies: 177
-- Name: assoccl_capital_social_id_capital_social; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_capital_social_id_capital_social ON assoccl_capital_social USING btree (id_capital_social);


--
-- TOC entry 3067 (class 1259 OID 57492898)
-- Dependencies: 177
-- Name: assoccl_capital_social_id_pessoa_juridica; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_capital_social_id_pessoa_juridica ON assoccl_capital_social USING btree (id_pessoa_juridica);


--
-- TOC entry 3058 (class 1259 OID 57492894)
-- Dependencies: 175
-- Name: assoccl_faturamento_id; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_faturamento_id ON assoccl_faturamento USING btree (id);


--
-- TOC entry 3059 (class 1259 OID 57492895)
-- Dependencies: 175
-- Name: assoccl_faturamento_id_categoria; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_faturamento_id_categoria ON assoccl_faturamento USING btree (id_categoria);


--
-- TOC entry 3060 (class 1259 OID 57492896)
-- Dependencies: 175
-- Name: assoccl_faturamento_id_pessoa_juridica; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_faturamento_id_pessoa_juridica ON assoccl_faturamento USING btree (id_pessoa_juridica);


--
-- TOC entry 3050 (class 1259 OID 57492890)
-- Dependencies: 173
-- Name: assoccl_quadro_funcionario_id; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_quadro_funcionario_id ON assoccl_quadro_funcionario USING btree (id);


--
-- TOC entry 3051 (class 1259 OID 57492891)
-- Dependencies: 173
-- Name: assoccl_quadro_funcionario_id_categoria; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_quadro_funcionario_id_categoria ON assoccl_quadro_funcionario USING btree (id_categoria);


--
-- TOC entry 3052 (class 1259 OID 57492892)
-- Dependencies: 173
-- Name: assoccl_quadro_funcionario_id_pessoa_juridica; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_quadro_funcionario_id_pessoa_juridica ON assoccl_quadro_funcionario USING btree (id_pessoa_juridica);


--
-- TOC entry 3053 (class 1259 OID 57492893)
-- Dependencies: 173
-- Name: assoccl_quadro_funcionario_id_titulacao; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_quadro_funcionario_id_titulacao ON assoccl_quadro_funcionario USING btree (id_titulacao);


--
-- TOC entry 3044 (class 1259 OID 57492889)
-- Dependencies: 171
-- Name: capital_social_constante_textual; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX capital_social_constante_textual ON capital_social USING btree (constante_textual);


--
-- TOC entry 3045 (class 1259 OID 57492886)
-- Dependencies: 171
-- Name: capital_social_id; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX capital_social_id ON capital_social USING btree (id);


--
-- TOC entry 3046 (class 1259 OID 57492887)
-- Dependencies: 171
-- Name: capital_social_id_categoria; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX capital_social_id_categoria ON capital_social USING btree (id_categoria);


--
-- TOC entry 3047 (class 1259 OID 57492888)
-- Dependencies: 171
-- Name: capital_social_nome; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX capital_social_nome ON capital_social USING btree (nome);


--
-- TOC entry 3037 (class 1259 OID 57492885)
-- Dependencies: 169
-- Name: natureza_codigo; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX natureza_codigo ON natureza USING btree (codigo);


--
-- TOC entry 3038 (class 1259 OID 57492884)
-- Dependencies: 169
-- Name: natureza_constante_textual; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX natureza_constante_textual ON natureza USING btree (constante_textual);


--
-- TOC entry 3039 (class 1259 OID 57492881)
-- Dependencies: 169
-- Name: natureza_id; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX natureza_id ON natureza USING btree (id);


--
-- TOC entry 3040 (class 1259 OID 57492882)
-- Dependencies: 169
-- Name: natureza_id_categoria; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX natureza_id_categoria ON natureza USING btree (id_categoria);


--
-- TOC entry 3041 (class 1259 OID 57492883)
-- Dependencies: 169
-- Name: natureza_nome; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX natureza_nome ON natureza USING btree (nome);


SET search_path = basico_sequencia, pg_catalog;

--
-- TOC entry 3026 (class 1259 OID 57492879)
-- Dependencies: 167
-- Name: assocsq_acao_aplicacao_constante_textual; Type: INDEX; Schema: basico_sequencia; Owner: -; Tablespace: 
--

CREATE INDEX assocsq_acao_aplicacao_constante_textual ON assocsq_acao_aplicacao USING btree (constante_textual);


--
-- TOC entry 3027 (class 1259 OID 57492874)
-- Dependencies: 167
-- Name: assocsq_acao_aplicacao_id; Type: INDEX; Schema: basico_sequencia; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assocsq_acao_aplicacao_id ON assocsq_acao_aplicacao USING btree (id);


--
-- TOC entry 3028 (class 1259 OID 57492877)
-- Dependencies: 167
-- Name: assocsq_acao_aplicacao_id_acao_aplicacao; Type: INDEX; Schema: basico_sequencia; Owner: -; Tablespace: 
--

CREATE INDEX assocsq_acao_aplicacao_id_acao_aplicacao ON assocsq_acao_aplicacao USING btree (id_acao_aplicacao);


--
-- TOC entry 3029 (class 1259 OID 57492875)
-- Dependencies: 167
-- Name: assocsq_acao_aplicacao_id_categoria; Type: INDEX; Schema: basico_sequencia; Owner: -; Tablespace: 
--

CREATE INDEX assocsq_acao_aplicacao_id_categoria ON assocsq_acao_aplicacao USING btree (id_categoria);


--
-- TOC entry 3030 (class 1259 OID 57492876)
-- Dependencies: 167
-- Name: assocsq_acao_aplicacao_id_sequencia; Type: INDEX; Schema: basico_sequencia; Owner: -; Tablespace: 
--

CREATE INDEX assocsq_acao_aplicacao_id_sequencia ON assocsq_acao_aplicacao USING btree (id_sequencia);


--
-- TOC entry 3031 (class 1259 OID 57492878)
-- Dependencies: 167
-- Name: assocsq_acao_aplicacao_nome; Type: INDEX; Schema: basico_sequencia; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assocsq_acao_aplicacao_nome ON assocsq_acao_aplicacao USING btree (nome);


--
-- TOC entry 3032 (class 1259 OID 57492880)
-- Dependencies: 167
-- Name: assocsq_acao_aplicacao_passo; Type: INDEX; Schema: basico_sequencia; Owner: -; Tablespace: 
--

CREATE INDEX assocsq_acao_aplicacao_passo ON assocsq_acao_aplicacao USING btree (passo);


SET search_path = basico_template, pg_catalog;

--
-- TOC entry 3017 (class 1259 OID 57492871)
-- Dependencies: 165
-- Name: assoccl_include_id; Type: INDEX; Schema: basico_template; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_include_id ON assoccl_include USING btree (id);


--
-- TOC entry 3018 (class 1259 OID 57492873)
-- Dependencies: 165
-- Name: assoccl_include_id_include; Type: INDEX; Schema: basico_template; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_include ON assoccl_include USING btree (id_include);


--
-- TOC entry 3019 (class 1259 OID 57492872)
-- Dependencies: 165
-- Name: assoccl_include_id_template; Type: INDEX; Schema: basico_template; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_template ON assoccl_include USING btree (id_template);


--
-- TOC entry 3010 (class 1259 OID 57492868)
-- Dependencies: 163
-- Name: assoccl_output_id; Type: INDEX; Schema: basico_template; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_output_id ON assoccl_output USING btree (id);


--
-- TOC entry 3011 (class 1259 OID 57492870)
-- Dependencies: 163
-- Name: assoccl_output_id_output; Type: INDEX; Schema: basico_template; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_output_id_output ON assoccl_output USING btree (id_output);


--
-- TOC entry 3012 (class 1259 OID 57492869)
-- Dependencies: 163
-- Name: assoccl_output_id_template; Type: INDEX; Schema: basico_template; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_output_id_template ON assoccl_output USING btree (id_template);


SET search_path = basico, pg_catalog;

--
-- TOC entry 3993 (class 2606 OID 57491967)
-- Dependencies: 375 3619 331
-- Name: fk_acao_aplicacao_modulo; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY acao_aplicacao
    ADD CONSTRAINT fk_acao_aplicacao_modulo FOREIGN KEY (id_modulo) REFERENCES modulo(id);


--
-- TOC entry 3992 (class 2606 OID 57492428)
-- Dependencies: 373 3741 365
-- Name: fk_ajuda_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY ajuda
    ADD CONSTRAINT fk_ajuda_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 3990 (class 2606 OID 57492332)
-- Dependencies: 365 371 3741
-- Name: fk_area_conhecimento_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY area_conhecimento
    ADD CONSTRAINT fk_area_conhecimento_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 3991 (class 2606 OID 57492653)
-- Dependencies: 3767 371 371
-- Name: fk_area_conhecimento_pai; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY area_conhecimento
    ADD CONSTRAINT fk_area_conhecimento_pai FOREIGN KEY (id_area_conhecimento_pai) REFERENCES area_conhecimento(id);


--
-- TOC entry 3989 (class 2606 OID 57492583)
-- Dependencies: 369 365 3741
-- Name: fk_area_economia_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY area_economia
    ADD CONSTRAINT fk_area_economia_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 3988 (class 2606 OID 57492513)
-- Dependencies: 3759 369 369
-- Name: fk_area_economia_pai; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY area_economia
    ADD CONSTRAINT fk_area_economia_pai FOREIGN KEY (id_area_economia_pai) REFERENCES area_economia(id);


--
-- TOC entry 3987 (class 2606 OID 57492763)
-- Dependencies: 367 365 3741
-- Name: fk_arquivo_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY arquivo
    ADD CONSTRAINT fk_arquivo_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 3985 (class 2606 OID 57492347)
-- Dependencies: 365 365 3741
-- Name: fk_categoria_pai; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY categoria
    ADD CONSTRAINT fk_categoria_pai FOREIGN KEY (id_categoria_pai) REFERENCES categoria(id);


--
-- TOC entry 3986 (class 2606 OID 57492443)
-- Dependencies: 365 3560 313
-- Name: fk_categoria_tipo_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY categoria
    ADD CONSTRAINT fk_categoria_tipo_categoria FOREIGN KEY (id_tipo_categoria) REFERENCES tipo_categoria(id);


--
-- TOC entry 3984 (class 2606 OID 57492838)
-- Dependencies: 363 365 3741
-- Name: fk_codigo_acesso_categoria_acesso; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY codigo_acesso
    ADD CONSTRAINT fk_codigo_acesso_categoria_acesso FOREIGN KEY (id_categoria_acesso) REFERENCES categoria(id);


--
-- TOC entry 3983 (class 2606 OID 57492608)
-- Dependencies: 363 3741 365
-- Name: fk_codigo_acesso_categoria_prop; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY codigo_acesso
    ADD CONSTRAINT fk_codigo_acesso_categoria_prop FOREIGN KEY (id_categoria_proprietario) REFERENCES categoria(id);


--
-- TOC entry 3981 (class 2606 OID 57491907)
-- Dependencies: 3741 365 361
-- Name: fk_componente_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY componente
    ADD CONSTRAINT fk_componente_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 3982 (class 2606 OID 57492337)
-- Dependencies: 315 361 3567
-- Name: fk_componente_template; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY componente
    ADD CONSTRAINT fk_componente_template FOREIGN KEY (id_template) REFERENCES template(id);


--
-- TOC entry 3980 (class 2606 OID 57492773)
-- Dependencies: 3741 359 365
-- Name: fk_dados_bancarios_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY dados_bancarios
    ADD CONSTRAINT fk_dados_bancarios_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 3977 (class 2606 OID 57492022)
-- Dependencies: 3415 357 273
-- Name: fk_dados_bio_tipo_sanguineo; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY dados_biometricos
    ADD CONSTRAINT fk_dados_bio_tipo_sanguineo FOREIGN KEY (id_tipo_sanguineo) REFERENCES basico_dados_biometricos.tipo_sanguineo(id);


--
-- TOC entry 3979 (class 2606 OID 57492142)
-- Dependencies: 357 3741 365
-- Name: fk_dados_biom_categoria_raca; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY dados_biometricos
    ADD CONSTRAINT fk_dados_biom_categoria_raca FOREIGN KEY (id_categoria_raca) REFERENCES categoria(id);


--
-- TOC entry 3978 (class 2606 OID 57492032)
-- Dependencies: 3601 357 325
-- Name: fk_dados_biometricos_pessoa; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY dados_biometricos
    ADD CONSTRAINT fk_dados_biometricos_pessoa FOREIGN KEY (id_pessoa) REFERENCES pessoa(id);


--
-- TOC entry 3976 (class 2606 OID 57492267)
-- Dependencies: 365 355 3741
-- Name: fk_dic_expressao_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY dicionario_expressao
    ADD CONSTRAINT fk_dic_expressao_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 3974 (class 2606 OID 57492598)
-- Dependencies: 3741 365 353
-- Name: fk_doc_identificacao_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY documento_identificacao
    ADD CONSTRAINT fk_doc_identificacao_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 3975 (class 2606 OID 57492613)
-- Dependencies: 3598 323 353
-- Name: fk_doc_identificacao_pj_emissor; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY documento_identificacao
    ADD CONSTRAINT fk_doc_identificacao_pj_emissor FOREIGN KEY (id_pessoa_juridica_emissor) REFERENCES pessoa_juridica(id);


--
-- TOC entry 3973 (class 2606 OID 57492383)
-- Dependencies: 365 3741 351
-- Name: fk_evento_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY evento
    ADD CONSTRAINT fk_evento_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 3972 (class 2606 OID 57492478)
-- Dependencies: 3741 365 349
-- Name: fk_filter_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY filter
    ADD CONSTRAINT fk_filter_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 3971 (class 2606 OID 57492518)
-- Dependencies: 347 3776 373
-- Name: fk_formulario_ajuda; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY formulario
    ADD CONSTRAINT fk_formulario_ajuda FOREIGN KEY (id_ajuda) REFERENCES ajuda(id);


--
-- TOC entry 3969 (class 2606 OID 57492232)
-- Dependencies: 347 365 3741
-- Name: fk_formulario_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY formulario
    ADD CONSTRAINT fk_formulario_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 3970 (class 2606 OID 57492463)
-- Dependencies: 3674 347 347
-- Name: fk_formulario_pai; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY formulario
    ADD CONSTRAINT fk_formulario_pai FOREIGN KEY (id_formulario_pai) REFERENCES formulario(id);


--
-- TOC entry 3968 (class 2606 OID 57492483)
-- Dependencies: 3741 365 345
-- Name: fk_include_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY include
    ADD CONSTRAINT fk_include_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 3965 (class 2606 OID 57492172)
-- Dependencies: 341 191 3118
-- Name: fk_log_acccl_perfil; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY log
    ADD CONSTRAINT fk_log_acccl_perfil FOREIGN KEY (id_assoccl_perfil) REFERENCES basico_pessoa.assoccl_perfil(id);


--
-- TOC entry 3966 (class 2606 OID 57492708)
-- Dependencies: 365 341 3741
-- Name: fk_log_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY log
    ADD CONSTRAINT fk_log_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 3964 (class 2606 OID 57492743)
-- Dependencies: 325 3601 339
-- Name: fk_login_pessoa; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY login
    ADD CONSTRAINT fk_login_pessoa FOREIGN KEY (id_pessoa) REFERENCES pessoa(id);


--
-- TOC entry 3963 (class 2606 OID 57492212)
-- Dependencies: 365 335 3741
-- Name: fk_mensagem_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY mensagem
    ADD CONSTRAINT fk_mensagem_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 3962 (class 2606 OID 57492738)
-- Dependencies: 365 3741 333
-- Name: fk_metodo_validacao_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY metodo_validacao
    ADD CONSTRAINT fk_metodo_validacao_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 3960 (class 2606 OID 57492292)
-- Dependencies: 331 365 3741
-- Name: fk_modulo_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY modulo
    ADD CONSTRAINT fk_modulo_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 3961 (class 2606 OID 57492523)
-- Dependencies: 3619 331 331
-- Name: fk_modulo_pai; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY modulo
    ADD CONSTRAINT fk_modulo_pai FOREIGN KEY (id_modulo_pai) REFERENCES modulo(id);


--
-- TOC entry 3959 (class 2606 OID 57491837)
-- Dependencies: 329 365 3741
-- Name: fk_output_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY output
    ADD CONSTRAINT fk_output_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 3958 (class 2606 OID 57491947)
-- Dependencies: 3741 365 327
-- Name: fk_perfil_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY perfil
    ADD CONSTRAINT fk_perfil_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 3953 (class 2606 OID 57491867)
-- Dependencies: 325 3447 281
-- Name: fk_pessoa_email_default; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa
    ADD CONSTRAINT fk_pessoa_email_default FOREIGN KEY (id_email_default) REFERENCES basico_contato.email(id);


--
-- TOC entry 3955 (class 2606 OID 57492403)
-- Dependencies: 325 3188 211
-- Name: fk_pessoa_endereco_corresp; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa
    ADD CONSTRAINT fk_pessoa_endereco_corresp FOREIGN KEY (id_endereco_correspondencia) REFERENCES basico_localizacao.endereco(id);


--
-- TOC entry 3956 (class 2606 OID 57492588)
-- Dependencies: 211 3188 325
-- Name: fk_pessoa_endereco_default; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa
    ADD CONSTRAINT fk_pessoa_endereco_default FOREIGN KEY (id_endereco_default) REFERENCES basico_localizacao.endereco(id);


--
-- TOC entry 3943 (class 2606 OID 57492007)
-- Dependencies: 3042 169 323
-- Name: fk_pessoa_juridica_natureza; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa_juridica
    ADD CONSTRAINT fk_pessoa_juridica_natureza FOREIGN KEY (id_natureza) REFERENCES basico_pessoa_juridica.natureza(id);


--
-- TOC entry 3946 (class 2606 OID 57492217)
-- Dependencies: 323 323 3598
-- Name: fk_pessoa_juridica_pai; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa_juridica
    ADD CONSTRAINT fk_pessoa_juridica_pai FOREIGN KEY (id_pessoa_juridica_pai) REFERENCES pessoa_juridica(id);


--
-- TOC entry 3952 (class 2606 OID 57491852)
-- Dependencies: 3657 343 325
-- Name: fk_pessoa_link_default; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa
    ADD CONSTRAINT fk_pessoa_link_default FOREIGN KEY (id_link_default) REFERENCES link(id);


--
-- TOC entry 3954 (class 2606 OID 57492137)
-- Dependencies: 325 327 3607
-- Name: fk_pessoa_perfil_padrao; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa
    ADD CONSTRAINT fk_pessoa_perfil_padrao FOREIGN KEY (id_perfil_padrao) REFERENCES perfil(id);


--
-- TOC entry 3957 (class 2606 OID 57492643)
-- Dependencies: 3433 279 325
-- Name: fk_pessoa_telefone_default; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa
    ADD CONSTRAINT fk_pessoa_telefone_default FOREIGN KEY (id_telefone_default) REFERENCES basico_contato.telefone(id);


--
-- TOC entry 3947 (class 2606 OID 57492538)
-- Dependencies: 3075 179 323
-- Name: fk_pj_area_economia_default; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa_juridica
    ADD CONSTRAINT fk_pj_area_economia_default FOREIGN KEY (id_area_economia_default) REFERENCES basico_pessoa_juridica.assoccl_area_economia(id);


--
-- TOC entry 3944 (class 2606 OID 57492092)
-- Dependencies: 3741 365 323
-- Name: fk_pj_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa_juridica
    ADD CONSTRAINT fk_pj_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 3945 (class 2606 OID 57492132)
-- Dependencies: 281 323 3447
-- Name: fk_pj_email_default; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa_juridica
    ADD CONSTRAINT fk_pj_email_default FOREIGN KEY (id_email_default) REFERENCES basico_contato.email(id);


--
-- TOC entry 3949 (class 2606 OID 57492688)
-- Dependencies: 211 3188 323
-- Name: fk_pj_endereco_correspond; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa_juridica
    ADD CONSTRAINT fk_pj_endereco_correspond FOREIGN KEY (id_endereco_correspondencia) REFERENCES basico_localizacao.endereco(id);


--
-- TOC entry 3950 (class 2606 OID 57492703)
-- Dependencies: 211 323 3188
-- Name: fk_pj_endereco_default; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa_juridica
    ADD CONSTRAINT fk_pj_endereco_default FOREIGN KEY (id_endereco_default) REFERENCES basico_localizacao.endereco(id);


--
-- TOC entry 3948 (class 2606 OID 57492658)
-- Dependencies: 343 323 3657
-- Name: fk_pj_link_default; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa_juridica
    ADD CONSTRAINT fk_pj_link_default FOREIGN KEY (id_link_default) REFERENCES link(id);


--
-- TOC entry 3951 (class 2606 OID 57492753)
-- Dependencies: 3601 323 325
-- Name: fk_pj_pessoa_resp_cadastro; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa_juridica
    ADD CONSTRAINT fk_pj_pessoa_resp_cadastro FOREIGN KEY (id_pessoa_responsavel_cadastro) REFERENCES pessoa(id);


--
-- TOC entry 3942 (class 2606 OID 57491992)
-- Dependencies: 3433 279 323
-- Name: fk_pj_telefone_default; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa_juridica
    ADD CONSTRAINT fk_pj_telefone_default FOREIGN KEY (id_telefone_default) REFERENCES basico_contato.telefone(id);


--
-- TOC entry 3940 (class 2606 OID 57492287)
-- Dependencies: 321 3741 365
-- Name: fk_produto_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY produto
    ADD CONSTRAINT fk_produto_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 3941 (class 2606 OID 57492833)
-- Dependencies: 365 3741 321
-- Name: fk_produto_categoria_moeda; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY produto
    ADD CONSTRAINT fk_produto_categoria_moeda FOREIGN KEY (id_categoria_moeda) REFERENCES categoria(id);


--
-- TOC entry 3939 (class 2606 OID 57492352)
-- Dependencies: 3741 319 365
-- Name: fk_profissao_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY profissao
    ADD CONSTRAINT fk_profissao_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 3938 (class 2606 OID 57492307)
-- Dependencies: 3741 317 365
-- Name: fk_sequencia_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY sequencia
    ADD CONSTRAINT fk_sequencia_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 3937 (class 2606 OID 57491862)
-- Dependencies: 315 365 3741
-- Name: fk_template_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY template
    ADD CONSTRAINT fk_template_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 3936 (class 2606 OID 57492798)
-- Dependencies: 313 3560 313
-- Name: fk_tipo_categoria_pai; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY tipo_categoria
    ADD CONSTRAINT fk_tipo_categoria_pai FOREIGN KEY (id_tipo_categoria_pai) REFERENCES tipo_categoria(id);


--
-- TOC entry 3935 (class 2606 OID 57492573)
-- Dependencies: 311 365 3741
-- Name: fk_token_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY token
    ADD CONSTRAINT fk_token_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 3934 (class 2606 OID 57492593)
-- Dependencies: 3741 365 309
-- Name: fk_validator_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY validator
    ADD CONSTRAINT fk_validator_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 3967 (class 2606 OID 57492448)
-- Dependencies: 3741 365 343
-- Name: fk_website_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY link
    ADD CONSTRAINT fk_website_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


SET search_path = basico_acao_aplic_assoc_visao, pg_catalog;

--
-- TOC entry 3933 (class 2606 OID 57492553)
-- Dependencies: 307 305 3538
-- Name: fk_atr_met_rec_ref_atr_met_rec_post; Type: FK CONSTRAINT; Schema: basico_acao_aplic_assoc_visao; Owner: -
--

ALTER TABLE ONLY assoccl_atrib_met_rec_post
    ADD CONSTRAINT fk_atr_met_rec_ref_atr_met_rec_post FOREIGN KEY (id_atributo_metodo_recup_post) REFERENCES atributo_metodo_recup_post(id);


--
-- TOC entry 3932 (class 2606 OID 57492237)
-- Dependencies: 305 365 3741
-- Name: fk_atrib_met_rec_post_categoria; Type: FK CONSTRAINT; Schema: basico_acao_aplic_assoc_visao; Owner: -
--

ALTER TABLE ONLY atributo_metodo_recup_post
    ADD CONSTRAINT fk_atrib_met_rec_post_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


SET search_path = basico_acao_aplicacao, pg_catalog;

--
-- TOC entry 3930 (class 2606 OID 57492533)
-- Dependencies: 303 3783 375
-- Name: fk_assoc_visao_acao_aplicacao; Type: FK CONSTRAINT; Schema: basico_acao_aplicacao; Owner: -
--

ALTER TABLE ONLY assoc_visao
    ADD CONSTRAINT fk_assoc_visao_acao_aplicacao FOREIGN KEY (id_acao_aplicacao) REFERENCES basico.acao_aplicacao(id);


--
-- TOC entry 3931 (class 2606 OID 57492713)
-- Dependencies: 365 3741 303
-- Name: fk_assoc_visao_categoria; Type: FK CONSTRAINT; Schema: basico_acao_aplicacao; Owner: -
--

ALTER TABLE ONLY assoc_visao
    ADD CONSTRAINT fk_assoc_visao_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 3926 (class 2606 OID 57492848)
-- Dependencies: 299 3607 327
-- Name: fk_assoccl_acao_aplic_perfil_perfil; Type: FK CONSTRAINT; Schema: basico_acao_aplicacao; Owner: -
--

ALTER TABLE ONLY assoccl_perfil
    ADD CONSTRAINT fk_assoccl_acao_aplic_perfil_perfil FOREIGN KEY (id_perfil) REFERENCES basico.perfil(id);


--
-- TOC entry 3929 (class 2606 OID 57492723)
-- Dependencies: 375 3783 301
-- Name: fk_assoccl_met_valid_ac_aplic; Type: FK CONSTRAINT; Schema: basico_acao_aplicacao; Owner: -
--

ALTER TABLE ONLY assoccl_metodo_validacao
    ADD CONSTRAINT fk_assoccl_met_valid_ac_aplic FOREIGN KEY (id_acao_aplicacao) REFERENCES basico.acao_aplicacao(id);


--
-- TOC entry 3927 (class 2606 OID 57491902)
-- Dependencies: 301 3625 333
-- Name: fk_assoccl_met_valid_met_valid; Type: FK CONSTRAINT; Schema: basico_acao_aplicacao; Owner: -
--

ALTER TABLE ONLY assoccl_metodo_validacao
    ADD CONSTRAINT fk_assoccl_met_valid_met_valid FOREIGN KEY (id_metodo_validacao) REFERENCES basico.metodo_validacao(id);


--
-- TOC entry 3928 (class 2606 OID 57492002)
-- Dependencies: 301 327 3607
-- Name: fk_assoccl_met_valid_perfil; Type: FK CONSTRAINT; Schema: basico_acao_aplicacao; Owner: -
--

ALTER TABLE ONLY assoccl_metodo_validacao
    ADD CONSTRAINT fk_assoccl_met_valid_perfil FOREIGN KEY (id_perfil) REFERENCES basico.perfil(id);


--
-- TOC entry 3925 (class 2606 OID 57491912)
-- Dependencies: 299 3783 375
-- Name: fk_assoccl_perfil_acao_aplicacao; Type: FK CONSTRAINT; Schema: basico_acao_aplicacao; Owner: -
--

ALTER TABLE ONLY assoccl_perfil
    ADD CONSTRAINT fk_assoccl_perfil_acao_aplicacao FOREIGN KEY (id_acao_aplicacao) REFERENCES basico.acao_aplicacao(id);


SET search_path = basico_ajuda, pg_catalog;

--
-- TOC entry 3924 (class 2606 OID 57492673)
-- Dependencies: 297 3776 373
-- Name: fk_assoccl_link_ajuda; Type: FK CONSTRAINT; Schema: basico_ajuda; Owner: -
--

ALTER TABLE ONLY assoccl_link
    ADD CONSTRAINT fk_assoccl_link_ajuda FOREIGN KEY (id_ajuda) REFERENCES basico.ajuda(id);


--
-- TOC entry 3923 (class 2606 OID 57492408)
-- Dependencies: 3657 343 297
-- Name: fk_assoccl_link_link; Type: FK CONSTRAINT; Schema: basico_ajuda; Owner: -
--

ALTER TABLE ONLY assoccl_link
    ADD CONSTRAINT fk_assoccl_link_link FOREIGN KEY (id_link) REFERENCES basico.link(id);


SET search_path = basico_assoc_banco, pg_catalog;

--
-- TOC entry 3921 (class 2606 OID 57492197)
-- Dependencies: 187 295 3108
-- Name: fk_assoc_tipo_conta_banco; Type: FK CONSTRAINT; Schema: basico_assoc_banco; Owner: -
--

ALTER TABLE ONLY assoc_tipo_conta
    ADD CONSTRAINT fk_assoc_tipo_conta_banco FOREIGN KEY (id_assoc_banco) REFERENCES basico_pessoa_juridica.assoc_banco(id);


--
-- TOC entry 3922 (class 2606 OID 57492413)
-- Dependencies: 365 3741 295
-- Name: fk_assoc_tipo_conta_categoria; Type: FK CONSTRAINT; Schema: basico_assoc_banco; Owner: -
--

ALTER TABLE ONLY assoc_tipo_conta
    ADD CONSTRAINT fk_assoc_tipo_conta_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


SET search_path = basico_assoc_dados_profis, pg_catalog;

--
-- TOC entry 3919 (class 2606 OID 57492087)
-- Dependencies: 3767 371 291
-- Name: fk_assoccl_dados_profis_area_c; Type: FK CONSTRAINT; Schema: basico_assoc_dados_profis; Owner: -
--

ALTER TABLE ONLY assoccl_area_conhecimento
    ADD CONSTRAINT fk_assoccl_dados_profis_area_c FOREIGN KEY (id_area_conhecimento) REFERENCES basico.area_conhecimento(id);


--
-- TOC entry 3920 (class 2606 OID 57492498)
-- Dependencies: 287 3475 291
-- Name: fk_assoccl_dados_profis_dados; Type: FK CONSTRAINT; Schema: basico_assoc_dados_profis; Owner: -
--

ALTER TABLE ONLY assoccl_area_conhecimento
    ADD CONSTRAINT fk_assoccl_dados_profis_dados FOREIGN KEY (id_assoc_dados_profissionais) REFERENCES basico_assocl_vinculo_profissional.assoc_dados(id);


SET search_path = basico_assoccl_pessoa_perfil, pg_catalog;

--
-- TOC entry 3918 (class 2606 OID 57492628)
-- Dependencies: 191 289 3118
-- Name: fk_assoccl_pessoa_perfil; Type: FK CONSTRAINT; Schema: basico_assoccl_pessoa_perfil; Owner: -
--

ALTER TABLE ONLY assoc_dados
    ADD CONSTRAINT fk_assoccl_pessoa_perfil FOREIGN KEY (id_assoccl_pessoa_perfil) REFERENCES basico_pessoa.assoccl_perfil(id);


SET search_path = basico_assocl_vinculo_profissional, pg_catalog;

--
-- TOC entry 3913 (class 2606 OID 57492047)
-- Dependencies: 287 189 3113
-- Name: fk_assoc_dado_assoccl_vin_profi; Type: FK CONSTRAINT; Schema: basico_assocl_vinculo_profissional; Owner: -
--

ALTER TABLE ONLY assoc_dados
    ADD CONSTRAINT fk_assoc_dado_assoccl_vin_profi FOREIGN KEY (id_assocl_vinculo_profissional) REFERENCES basico_pessoa.assoccl_vinculo_profissional(id);


--
-- TOC entry 3915 (class 2606 OID 57492227)
-- Dependencies: 323 287 3598
-- Name: fk_assoc_dados_pj_vinculo; Type: FK CONSTRAINT; Schema: basico_assocl_vinculo_profissional; Owner: -
--

ALTER TABLE ONLY assoc_dados
    ADD CONSTRAINT fk_assoc_dados_pj_vinculo FOREIGN KEY (id_pessoa_juridica_vinculo) REFERENCES basico.pessoa_juridica(id);


--
-- TOC entry 3917 (class 2606 OID 57492793)
-- Dependencies: 3579 319 287
-- Name: fk_assoc_dados_profi_profissao; Type: FK CONSTRAINT; Schema: basico_assocl_vinculo_profissional; Owner: -
--

ALTER TABLE ONLY assoc_dados
    ADD CONSTRAINT fk_assoc_dados_profi_profissao FOREIGN KEY (id_profissao) REFERENCES basico.profissao(id);


--
-- TOC entry 3914 (class 2606 OID 57492207)
-- Dependencies: 271 287 3407
-- Name: fk_assoc_dados_profis_reg_trab; Type: FK CONSTRAINT; Schema: basico_assocl_vinculo_profissional; Owner: -
--

ALTER TABLE ONLY assoc_dados
    ADD CONSTRAINT fk_assoc_dados_profis_reg_trab FOREIGN KEY (id_regime_trabalho) REFERENCES basico_dados_profissionais.regime_trabalho(id);


--
-- TOC entry 3916 (class 2606 OID 57492548)
-- Dependencies: 287 267 3393
-- Name: fk_assoc_dados_vinc_empreg; Type: FK CONSTRAINT; Schema: basico_assocl_vinculo_profissional; Owner: -
--

ALTER TABLE ONLY assoc_dados
    ADD CONSTRAINT fk_assoc_dados_vinc_empreg FOREIGN KEY (id_vinculo_empregaticio) REFERENCES basico_dados_profissionais.vinculo_empregaticio(id);


SET search_path = basico_categoria, pg_catalog;

--
-- TOC entry 3912 (class 2606 OID 57492813)
-- Dependencies: 365 285 3741
-- Name: fk_assoc_chave_estran_categ; Type: FK CONSTRAINT; Schema: basico_categoria; Owner: -
--

ALTER TABLE ONLY assoc_chave_estrangeira
    ADD CONSTRAINT fk_assoc_chave_estran_categ FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 3911 (class 2606 OID 57492042)
-- Dependencies: 285 331 3619
-- Name: fk_assoc_chave_estran_mod; Type: FK CONSTRAINT; Schema: basico_categoria; Owner: -
--

ALTER TABLE ONLY assoc_chave_estrangeira
    ADD CONSTRAINT fk_assoc_chave_estran_mod FOREIGN KEY (id_modulo) REFERENCES basico.modulo(id);


SET search_path = basico_componente, pg_catalog;

--
-- TOC entry 3909 (class 2606 OID 57491937)
-- Dependencies: 3666 345 283
-- Name: fk_assoccl_componente_inc_inc; Type: FK CONSTRAINT; Schema: basico_componente; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_assoccl_componente_inc_inc FOREIGN KEY (id_include) REFERENCES basico.include(id);


--
-- TOC entry 3910 (class 2606 OID 57492067)
-- Dependencies: 3723 361 283
-- Name: fk_assoccl_include_componente; Type: FK CONSTRAINT; Schema: basico_componente; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_assoccl_include_componente FOREIGN KEY (id_componente) REFERENCES basico.componente(id);


SET search_path = basico_contato, pg_catalog;

--
-- TOC entry 3908 (class 2606 OID 57492473)
-- Dependencies: 281 365 3741
-- Name: fk_email_categoria; Type: FK CONSTRAINT; Schema: basico_contato; Owner: -
--

ALTER TABLE ONLY email
    ADD CONSTRAINT fk_email_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 3907 (class 2606 OID 57492808)
-- Dependencies: 3741 365 279
-- Name: fk_telefone_categoria; Type: FK CONSTRAINT; Schema: basico_contato; Owner: -
--

ALTER TABLE ONLY telefone
    ADD CONSTRAINT fk_telefone_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


SET search_path = basico_cvc, pg_catalog;

--
-- TOC entry 3906 (class 2606 OID 57492803)
-- Dependencies: 3465 285 277
-- Name: fk_cvc_assoc_chave_estrangeira; Type: FK CONSTRAINT; Schema: basico_cvc; Owner: -
--

ALTER TABLE ONLY cvc
    ADD CONSTRAINT fk_cvc_assoc_chave_estrangeira FOREIGN KEY (id_assoc_chave_estrangeira) REFERENCES basico_categoria.assoc_chave_estrangeira(id);


SET search_path = basico_dados_academicos, pg_catalog;

--
-- TOC entry 3905 (class 2606 OID 57492327)
-- Dependencies: 365 275 3741
-- Name: fk_titulacao_categoria; Type: FK CONSTRAINT; Schema: basico_dados_academicos; Owner: -
--

ALTER TABLE ONLY titulacao
    ADD CONSTRAINT fk_titulacao_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


SET search_path = basico_dados_profissionais, pg_catalog;

--
-- TOC entry 3903 (class 2606 OID 57491982)
-- Dependencies: 365 3741 271
-- Name: fk_regime_trabalho_categoria; Type: FK CONSTRAINT; Schema: basico_dados_profissionais; Owner: -
--

ALTER TABLE ONLY regime_trabalho
    ADD CONSTRAINT fk_regime_trabalho_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 3904 (class 2606 OID 57492853)
-- Dependencies: 271 3407 271
-- Name: fk_regime_trabalho_pai; Type: FK CONSTRAINT; Schema: basico_dados_profissionais; Owner: -
--

ALTER TABLE ONLY regime_trabalho
    ADD CONSTRAINT fk_regime_trabalho_pai FOREIGN KEY (id_regime_trabalho_pai) REFERENCES regime_trabalho(id);


--
-- TOC entry 3901 (class 2606 OID 57492503)
-- Dependencies: 365 3741 267
-- Name: fk_vinc_empreg_categoria; Type: FK CONSTRAINT; Schema: basico_dados_profissionais; Owner: -
--

ALTER TABLE ONLY vinculo_empregaticio
    ADD CONSTRAINT fk_vinc_empreg_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 3902 (class 2606 OID 57492788)
-- Dependencies: 3741 269 365
-- Name: fk_vinculo_categoria; Type: FK CONSTRAINT; Schema: basico_dados_profissionais; Owner: -
--

ALTER TABLE ONLY tipo_vinculo
    ADD CONSTRAINT fk_vinculo_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


SET search_path = basico_decorator, pg_catalog;

--
-- TOC entry 3900 (class 2606 OID 57492368)
-- Dependencies: 345 265 3666
-- Name: fk_assoccl_decorator_inc_inc; Type: FK CONSTRAINT; Schema: basico_decorator; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_assoccl_decorator_inc_inc FOREIGN KEY (id_include) REFERENCES basico.include(id);


--
-- TOC entry 3899 (class 2606 OID 57492082)
-- Dependencies: 3283 235 265
-- Name: fk_assoccl_include_decorator; Type: FK CONSTRAINT; Schema: basico_decorator; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_assoccl_include_decorator FOREIGN KEY (id_decorator) REFERENCES basico_formulario.decorator(id);


SET search_path = basico_form_assoccl_elem_grupo, pg_catalog;

--
-- TOC entry 3898 (class 2606 OID 57492578)
-- Dependencies: 263 235 3283
-- Name: fk_assoccl_decorator_decorator; Type: FK CONSTRAINT; Schema: basico_form_assoccl_elem_grupo; Owner: -
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT fk_assoccl_decorator_decorator FOREIGN KEY (id_decorator) REFERENCES basico_formulario.decorator(id);


--
-- TOC entry 3897 (class 2606 OID 57492247)
-- Dependencies: 251 263 3339
-- Name: fk_assoccl_decorator_grupo; Type: FK CONSTRAINT; Schema: basico_form_assoccl_elem_grupo; Owner: -
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT fk_assoccl_decorator_grupo FOREIGN KEY (id_grupo) REFERENCES basico_form_assoccl_elemento.grupo(id);


SET search_path = basico_form_assoccl_elemento, pg_catalog;

--
-- TOC entry 3893 (class 2606 OID 57492052)
-- Dependencies: 259 3741 365
-- Name: assoccl_evento_categoria; Type: FK CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_evento
    ADD CONSTRAINT assoccl_evento_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 3892 (class 2606 OID 57491952)
-- Dependencies: 351 3687 259
-- Name: fk_assoccl_assoccl_elem_even_even; Type: FK CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_evento
    ADD CONSTRAINT fk_assoccl_assoccl_elem_even_even FOREIGN KEY (id_evento) REFERENCES basico.evento(id);


--
-- TOC entry 3896 (class 2606 OID 57492257)
-- Dependencies: 245 261 3317
-- Name: fk_assoccl_dec_assoccl_elem; Type: FK CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT fk_assoccl_dec_assoccl_elem FOREIGN KEY (id_assoccl_elemento) REFERENCES basico_formulario.assoccl_elemento(id);


--
-- TOC entry 3895 (class 2606 OID 57492057)
-- Dependencies: 235 261 3283
-- Name: fk_assoccl_dec_decorator; Type: FK CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT fk_assoccl_dec_decorator FOREIGN KEY (id_decorator) REFERENCES basico_formulario.decorator(id);


--
-- TOC entry 3891 (class 2606 OID 57492102)
-- Dependencies: 245 257 3317
-- Name: fk_assoccl_elem_assoccl_filter_elemento; Type: FK CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_filter
    ADD CONSTRAINT fk_assoccl_elem_assoccl_filter_elemento FOREIGN KEY (id_assoccl_elemento) REFERENCES basico_formulario.assoccl_elemento(id);


--
-- TOC entry 3890 (class 2606 OID 57491832)
-- Dependencies: 349 257 3681
-- Name: fk_assoccl_elem_assoccl_filter_filter; Type: FK CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_filter
    ADD CONSTRAINT fk_assoccl_elem_assoccl_filter_filter FOREIGN KEY (id_filter) REFERENCES basico.filter(id);


--
-- TOC entry 3894 (class 2606 OID 57492633)
-- Dependencies: 3317 245 259
-- Name: fk_assoccl_evento_assoccl_elem; Type: FK CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_evento
    ADD CONSTRAINT fk_assoccl_evento_assoccl_elem FOREIGN KEY (id_assoccl_elemento) REFERENCES basico_formulario.assoccl_elemento(id);


--
-- TOC entry 3888 (class 2606 OID 57491887)
-- Dependencies: 255 3317 245
-- Name: fk_assoccl_include_assoccl_elem; Type: FK CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_assoccl_include_assoccl_elem FOREIGN KEY (id_assoccl_elemento) REFERENCES basico_formulario.assoccl_elemento(id);


--
-- TOC entry 3887 (class 2606 OID 57492843)
-- Dependencies: 245 253 3317
-- Name: fk_assoccl_valid_assoc_elem; Type: FK CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_validator
    ADD CONSTRAINT fk_assoccl_valid_assoc_elem FOREIGN KEY (id_assoccl_elemento) REFERENCES basico_formulario.assoccl_elemento(id);


--
-- TOC entry 3886 (class 2606 OID 57492302)
-- Dependencies: 309 253 3552
-- Name: fk_assoccl_valid_validator; Type: FK CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_validator
    ADD CONSTRAINT fk_assoccl_valid_validator FOREIGN KEY (id_validator) REFERENCES basico.validator(id);


--
-- TOC entry 3889 (class 2606 OID 57491957)
-- Dependencies: 255 345 3666
-- Name: fk_asssoccl_include_include; Type: FK CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_asssoccl_include_include FOREIGN KEY (id_include) REFERENCES basico.include(id);


SET search_path = basico_form_elemento, pg_catalog;

--
-- TOC entry 3884 (class 2606 OID 57492117)
-- Dependencies: 249 3277 233
-- Name: fk_assoc_evento_elemento; Type: FK CONSTRAINT; Schema: basico_form_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_evento
    ADD CONSTRAINT fk_assoc_evento_elemento FOREIGN KEY (id_elemento) REFERENCES basico_formulario.elemento(id);


--
-- TOC entry 3885 (class 2606 OID 57492468)
-- Dependencies: 351 3687 249
-- Name: fk_assoccl_form_elem_even_even; Type: FK CONSTRAINT; Schema: basico_form_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_evento
    ADD CONSTRAINT fk_assoccl_form_elem_even_even FOREIGN KEY (id_evento) REFERENCES basico.evento(id);


SET search_path = basico_formulario, pg_catalog;

--
-- TOC entry 3860 (class 2606 OID 57492112)
-- Dependencies: 231 223 3235
-- Name: fk_assocag_grupo_rascunho; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY rascunho
    ADD CONSTRAINT fk_assocag_grupo_rascunho FOREIGN KEY (id_assocag_grupo) REFERENCES basico_formulario_rascunho.assocag_grupo(id);


--
-- TOC entry 3883 (class 2606 OID 57492152)
-- Dependencies: 347 3674 247
-- Name: fk_assoccl_decorator_form; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT fk_assoccl_decorator_form FOREIGN KEY (id_formulario) REFERENCES basico.formulario(id);


--
-- TOC entry 3877 (class 2606 OID 57491927)
-- Dependencies: 245 3776 373
-- Name: fk_assoccl_elemento_ajuda; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_elemento
    ADD CONSTRAINT fk_assoccl_elemento_ajuda FOREIGN KEY (id_ajuda) REFERENCES basico.ajuda(id);


--
-- TOC entry 3878 (class 2606 OID 57492077)
-- Dependencies: 233 3277 245
-- Name: fk_assoccl_elemento_elemento; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_elemento
    ADD CONSTRAINT fk_assoccl_elemento_elemento FOREIGN KEY (id_elemento) REFERENCES elemento(id);


--
-- TOC entry 3879 (class 2606 OID 57492297)
-- Dependencies: 347 245 3674
-- Name: fk_assoccl_elemento_formulario; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_elemento
    ADD CONSTRAINT fk_assoccl_elemento_formulario FOREIGN KEY (id_formulario) REFERENCES basico.formulario(id);


--
-- TOC entry 3880 (class 2606 OID 57492373)
-- Dependencies: 3339 245 251
-- Name: fk_assoccl_elemento_grupo; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_elemento
    ADD CONSTRAINT fk_assoccl_elemento_grupo FOREIGN KEY (id_grupo) REFERENCES basico_form_assoccl_elemento.grupo(id);


--
-- TOC entry 3881 (class 2606 OID 57492398)
-- Dependencies: 245 3638 337
-- Name: fk_assoccl_elemento_mascara; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_elemento
    ADD CONSTRAINT fk_assoccl_elemento_mascara FOREIGN KEY (id_mascara) REFERENCES basico.mascara(id);


--
-- TOC entry 3875 (class 2606 OID 57492272)
-- Dependencies: 347 243 3674
-- Name: fk_assoccl_evento_formulario; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_evento
    ADD CONSTRAINT fk_assoccl_evento_formulario FOREIGN KEY (id_formulario) REFERENCES basico.formulario(id);


--
-- TOC entry 3876 (class 2606 OID 57492693)
-- Dependencies: 243 3687 351
-- Name: fk_assoccl_form_evento_evento; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_evento
    ADD CONSTRAINT fk_assoccl_form_evento_evento FOREIGN KEY (id_evento) REFERENCES basico.evento(id);


--
-- TOC entry 3873 (class 2606 OID 57492317)
-- Dependencies: 345 241 3666
-- Name: fk_assoccl_formulario_inc_inc; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_assoccl_formulario_inc_inc FOREIGN KEY (id_include) REFERENCES basico.include(id);


--
-- TOC entry 3874 (class 2606 OID 57492858)
-- Dependencies: 241 347 3674
-- Name: fk_assoccl_include_formulario; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_assoccl_include_formulario FOREIGN KEY (id_formulario) REFERENCES basico.formulario(id);


--
-- TOC entry 3871 (class 2606 OID 57491842)
-- Dependencies: 3674 239 347
-- Name: fk_assoccl_modulo_formulario; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_modulo
    ADD CONSTRAINT fk_assoccl_modulo_formulario FOREIGN KEY (id_formulario) REFERENCES basico.formulario(id);


--
-- TOC entry 3870 (class 2606 OID 57492558)
-- Dependencies: 237 347 3674
-- Name: fk_assoccl_template_formulario; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_template
    ADD CONSTRAINT fk_assoccl_template_formulario FOREIGN KEY (id_formulario) REFERENCES basico.formulario(id);


--
-- TOC entry 3869 (class 2606 OID 57492433)
-- Dependencies: 3567 315 237
-- Name: fk_assoccl_template_template; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_template
    ADD CONSTRAINT fk_assoccl_template_template FOREIGN KEY (id_template) REFERENCES basico.template(id);


--
-- TOC entry 3882 (class 2606 OID 57491857)
-- Dependencies: 3283 235 247
-- Name: fk_assocl_decorator_decorator; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT fk_assocl_decorator_decorator FOREIGN KEY (id_decorator) REFERENCES decorator(id);


--
-- TOC entry 3858 (class 2606 OID 57491892)
-- Dependencies: 231 3033 167
-- Name: fk_assocsq_acao_aplic_rascunho; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY rascunho
    ADD CONSTRAINT fk_assocsq_acao_aplic_rascunho FOREIGN KEY (id_assocsq_acao_aplicacao) REFERENCES basico_sequencia.assocsq_acao_aplicacao(id);


--
-- TOC entry 3868 (class 2606 OID 57491847)
-- Dependencies: 365 235 3741
-- Name: fk_decorator_categoria; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY decorator
    ADD CONSTRAINT fk_decorator_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 3867 (class 2606 OID 57492733)
-- Dependencies: 233 3776 373
-- Name: fk_elemento_ajuda; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY elemento
    ADD CONSTRAINT fk_elemento_ajuda FOREIGN KEY (id_ajuda) REFERENCES basico.ajuda(id);


--
-- TOC entry 3864 (class 2606 OID 57491872)
-- Dependencies: 233 3741 365
-- Name: fk_elemento_categoria; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY elemento
    ADD CONSTRAINT fk_elemento_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 3865 (class 2606 OID 57492202)
-- Dependencies: 361 233 3723
-- Name: fk_elemento_componente; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY elemento
    ADD CONSTRAINT fk_elemento_componente FOREIGN KEY (id_componente) REFERENCES basico.componente(id);


--
-- TOC entry 3866 (class 2606 OID 57492728)
-- Dependencies: 3638 233 337
-- Name: fk_elemento_mascara; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY elemento
    ADD CONSTRAINT fk_elemento_mascara FOREIGN KEY (id_mascara) REFERENCES basico.mascara(id);


--
-- TOC entry 3872 (class 2606 OID 57492363)
-- Dependencies: 331 239 3619
-- Name: fk_form_assoccl_modulo_modulo; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_modulo
    ADD CONSTRAINT fk_form_assoccl_modulo_modulo FOREIGN KEY (id_modulo) REFERENCES basico.modulo(id);


--
-- TOC entry 3859 (class 2606 OID 57491942)
-- Dependencies: 375 3783 231
-- Name: fk_rascunho_acao_aplicacao; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY rascunho
    ADD CONSTRAINT fk_rascunho_acao_aplicacao FOREIGN KEY (id_acao_aplicacao_origem) REFERENCES basico.acao_aplicacao(id);


--
-- TOC entry 3863 (class 2606 OID 57492863)
-- Dependencies: 231 191 3118
-- Name: fk_rascunho_assoccl_perfil; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY rascunho
    ADD CONSTRAINT fk_rascunho_assoccl_perfil FOREIGN KEY (id_assoccl_perfil) REFERENCES basico_pessoa.assoccl_perfil(id);


--
-- TOC entry 3861 (class 2606 OID 57492388)
-- Dependencies: 365 3741 231
-- Name: fk_rascunho_categoria; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY rascunho
    ADD CONSTRAINT fk_rascunho_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 3862 (class 2606 OID 57492748)
-- Dependencies: 3260 231 231
-- Name: fk_rascunho_pai; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY rascunho
    ADD CONSTRAINT fk_rascunho_pai FOREIGN KEY (id_rascunho_pai) REFERENCES rascunho(id);


SET search_path = basico_formulario_elemento, pg_catalog;

--
-- TOC entry 3855 (class 2606 OID 57492648)
-- Dependencies: 3277 233 227
-- Name: fk_assoccl_filter_elemento; Type: FK CONSTRAINT; Schema: basico_formulario_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_filter
    ADD CONSTRAINT fk_assoccl_filter_elemento FOREIGN KEY (id_elemento) REFERENCES basico_formulario.elemento(id);


--
-- TOC entry 3854 (class 2606 OID 57492182)
-- Dependencies: 349 227 3681
-- Name: fk_assoccl_filter_filter; Type: FK CONSTRAINT; Schema: basico_formulario_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_filter
    ADD CONSTRAINT fk_assoccl_filter_filter FOREIGN KEY (id_filter) REFERENCES basico.filter(id);


--
-- TOC entry 3852 (class 2606 OID 57492097)
-- Dependencies: 3277 225 233
-- Name: fk_assoccl_validator_elem; Type: FK CONSTRAINT; Schema: basico_formulario_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_validator
    ADD CONSTRAINT fk_assoccl_validator_elem FOREIGN KEY (id_elemento) REFERENCES basico_formulario.elemento(id);


--
-- TOC entry 3853 (class 2606 OID 57492107)
-- Dependencies: 3552 309 225
-- Name: fk_assoccl_validator_validator; Type: FK CONSTRAINT; Schema: basico_formulario_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_validator
    ADD CONSTRAINT fk_assoccl_validator_validator FOREIGN KEY (id_validator) REFERENCES basico.validator(id);


--
-- TOC entry 3856 (class 2606 OID 57491917)
-- Dependencies: 233 3277 229
-- Name: fk_assocl_elemento_elemento; Type: FK CONSTRAINT; Schema: basico_formulario_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT fk_assocl_elemento_elemento FOREIGN KEY (id_elemento) REFERENCES basico_formulario.elemento(id);


--
-- TOC entry 3857 (class 2606 OID 57492668)
-- Dependencies: 3283 229 235
-- Name: fk_form_assoccl_decorator_decorator; Type: FK CONSTRAINT; Schema: basico_formulario_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT fk_form_assoccl_decorator_decorator FOREIGN KEY (id_decorator) REFERENCES basico_formulario.decorator(id);


SET search_path = basico_formulario_rascunho, pg_catalog;

--
-- TOC entry 3851 (class 2606 OID 57491897)
-- Dependencies: 191 3118 223
-- Name: fk_assocag_grupo_assoccl_perfil; Type: FK CONSTRAINT; Schema: basico_formulario_rascunho; Owner: -
--

ALTER TABLE ONLY assocag_grupo
    ADD CONSTRAINT fk_assocag_grupo_assoccl_perfil FOREIGN KEY (id_assoccl_perfil) REFERENCES basico_pessoa.assoccl_perfil(id);


SET search_path = basico_localizacao, pg_catalog;

--
-- TOC entry 3847 (class 2606 OID 57492062)
-- Dependencies: 365 219 3741
-- Name: fk_assoc_estado_categoria; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY assoc_estado
    ADD CONSTRAINT fk_assoc_estado_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 3849 (class 2606 OID 57492823)
-- Dependencies: 3181 209 219
-- Name: fk_assoc_estado_pais; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY assoc_estado
    ADD CONSTRAINT fk_assoc_estado_pais FOREIGN KEY (id_pais) REFERENCES pais(id);


--
-- TOC entry 3846 (class 2606 OID 57492438)
-- Dependencies: 3231 217 221
-- Name: fk_assoc_logradouro_assoc_bairro; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY assoc_logradouro
    ADD CONSTRAINT fk_assoc_logradouro_assoc_bairro FOREIGN KEY (id_bairro) REFERENCES assoc_bairro(id);


--
-- TOC entry 3845 (class 2606 OID 57492322)
-- Dependencies: 365 217 3741
-- Name: fk_assoc_logradouro_categoria; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY assoc_logradouro
    ADD CONSTRAINT fk_assoc_logradouro_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 3850 (class 2606 OID 57492698)
-- Dependencies: 215 3208 221
-- Name: fk_assoc_municipio_assoc_bairro; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY assoc_bairro
    ADD CONSTRAINT fk_assoc_municipio_assoc_bairro FOREIGN KEY (id_municipio) REFERENCES assoc_municipio(id);


--
-- TOC entry 3842 (class 2606 OID 57491877)
-- Dependencies: 219 3226 215
-- Name: fk_assoc_municipio_assoc_estado; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY assoc_municipio
    ADD CONSTRAINT fk_assoc_municipio_assoc_estado FOREIGN KEY (id_estado) REFERENCES assoc_estado(id);


--
-- TOC entry 3844 (class 2606 OID 57492683)
-- Dependencies: 3741 215 365
-- Name: fk_assoc_municipio_categoria; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY assoc_municipio
    ADD CONSTRAINT fk_assoc_municipio_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 3837 (class 2606 OID 57492277)
-- Dependencies: 3231 213 221
-- Name: fk_cep_assoc_bairro; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY codigo_postal
    ADD CONSTRAINT fk_cep_assoc_bairro FOREIGN KEY (id_bairro) REFERENCES assoc_bairro(id);


--
-- TOC entry 3838 (class 2606 OID 57492342)
-- Dependencies: 213 219 3226
-- Name: fk_cep_assoc_estado; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY codigo_postal
    ADD CONSTRAINT fk_cep_assoc_estado FOREIGN KEY (id_estado) REFERENCES assoc_estado(id);


--
-- TOC entry 3841 (class 2606 OID 57492818)
-- Dependencies: 213 217 3216
-- Name: fk_cep_assoc_logradouro; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY codigo_postal
    ADD CONSTRAINT fk_cep_assoc_logradouro FOREIGN KEY (id_logradouro) REFERENCES assoc_logradouro(id);


--
-- TOC entry 3840 (class 2606 OID 57492638)
-- Dependencies: 3208 213 215
-- Name: fk_cep_assoc_municipio; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY codigo_postal
    ADD CONSTRAINT fk_cep_assoc_municipio FOREIGN KEY (id_municipio) REFERENCES assoc_municipio(id);


--
-- TOC entry 3836 (class 2606 OID 57491922)
-- Dependencies: 365 3741 213
-- Name: fk_cep_categoria; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY codigo_postal
    ADD CONSTRAINT fk_cep_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 3839 (class 2606 OID 57492378)
-- Dependencies: 213 209 3181
-- Name: fk_cep_pais; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY codigo_postal
    ADD CONSTRAINT fk_cep_pais FOREIGN KEY (id_pais) REFERENCES pais(id);


--
-- TOC entry 3835 (class 2606 OID 57492758)
-- Dependencies: 191 3118 211
-- Name: fk_endereco_assoc_perfil; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY endereco
    ADD CONSTRAINT fk_endereco_assoc_perfil FOREIGN KEY (id_assoccl_perfil_validador) REFERENCES basico_pessoa.assoccl_perfil(id);


--
-- TOC entry 3834 (class 2606 OID 57492012)
-- Dependencies: 211 3741 365
-- Name: fk_endereco_categoria; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY endereco
    ADD CONSTRAINT fk_endereco_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 3848 (class 2606 OID 57492072)
-- Dependencies: 3226 219 219
-- Name: fk_estado_pai; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY assoc_estado
    ADD CONSTRAINT fk_estado_pai FOREIGN KEY (id_estado_pai) REFERENCES assoc_estado(id);


--
-- TOC entry 3843 (class 2606 OID 57492262)
-- Dependencies: 215 215 3208
-- Name: fk_municipio_pai; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY assoc_municipio
    ADD CONSTRAINT fk_municipio_pai FOREIGN KEY (id_municipio_pai) REFERENCES assoc_municipio(id);


SET search_path = basico_mascara, pg_catalog;

--
-- TOC entry 3832 (class 2606 OID 57492167)
-- Dependencies: 337 3638 207
-- Name: fk_assoccl_include_mascara; Type: FK CONSTRAINT; Schema: basico_mascara; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_assoccl_include_mascara FOREIGN KEY (id_mascara) REFERENCES basico.mascara(id);


--
-- TOC entry 3833 (class 2606 OID 57492528)
-- Dependencies: 345 3666 207
-- Name: fk_assoccl_mascara_inc_inc; Type: FK CONSTRAINT; Schema: basico_mascara; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_assoccl_mascara_inc_inc FOREIGN KEY (id_include) REFERENCES basico.include(id);


SET search_path = basico_mensagem, pg_catalog;

--
-- TOC entry 3829 (class 2606 OID 57492543)
-- Dependencies: 203 3118 191
-- Name: fk_assoccl_assoccl_pes_per; Type: FK CONSTRAINT; Schema: basico_mensagem; Owner: -
--

ALTER TABLE ONLY assoccl_assoccl_pessoa_perfil
    ADD CONSTRAINT fk_assoccl_assoccl_pes_per FOREIGN KEY (id_assoccl_perfil) REFERENCES basico_pessoa.assoccl_perfil(id);


--
-- TOC entry 3828 (class 2606 OID 57492488)
-- Dependencies: 3741 365 203
-- Name: fk_assoccl_assoccl_pes_per_cat; Type: FK CONSTRAINT; Schema: basico_mensagem; Owner: -
--

ALTER TABLE ONLY assoccl_assoccl_pessoa_perfil
    ADD CONSTRAINT fk_assoccl_assoccl_pes_per_cat FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 3830 (class 2606 OID 57492783)
-- Dependencies: 335 203 3631
-- Name: fk_assoccl_assoccl_pes_per_m; Type: FK CONSTRAINT; Schema: basico_mensagem; Owner: -
--

ALTER TABLE ONLY assoccl_assoccl_pessoa_perfil
    ADD CONSTRAINT fk_assoccl_assoccl_pes_per_m FOREIGN KEY (id_mensagem) REFERENCES basico.mensagem(id);


--
-- TOC entry 3831 (class 2606 OID 57492037)
-- Dependencies: 205 335 3631
-- Name: fk_mensagem_email; Type: FK CONSTRAINT; Schema: basico_mensagem; Owner: -
--

ALTER TABLE ONLY assoc_email
    ADD CONSTRAINT fk_mensagem_email FOREIGN KEY (id_mensagem) REFERENCES basico.mensagem(id);


SET search_path = basico_mensagem_assoc_email, pg_catalog;

--
-- TOC entry 3826 (class 2606 OID 57491882)
-- Dependencies: 3751 201 367
-- Name: fk_assoccl_arquivo_arquivo; Type: FK CONSTRAINT; Schema: basico_mensagem_assoc_email; Owner: -
--

ALTER TABLE ONLY assoccl_arquivo
    ADD CONSTRAINT fk_assoccl_arquivo_arquivo FOREIGN KEY (id_arquivo) REFERENCES basico.arquivo(id);


--
-- TOC entry 3827 (class 2606 OID 57492618)
-- Dependencies: 205 3165 201
-- Name: fk_assoccl_arquivo_assoc_email; Type: FK CONSTRAINT; Schema: basico_mensagem_assoc_email; Owner: -
--

ALTER TABLE ONLY assoccl_arquivo
    ADD CONSTRAINT fk_assoccl_arquivo_assoc_email FOREIGN KEY (id_assoc_email) REFERENCES basico_mensagem.assoc_email(id);


SET search_path = basico_metodo_validacao, pg_catalog;

--
-- TOC entry 3825 (class 2606 OID 57492563)
-- Dependencies: 199 333 3625
-- Name: fk_assoccl_include_met_validacao; Type: FK CONSTRAINT; Schema: basico_metodo_validacao; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_assoccl_include_met_validacao FOREIGN KEY (id_metodo_validacao) REFERENCES basico.metodo_validacao(id);


--
-- TOC entry 3824 (class 2606 OID 57491987)
-- Dependencies: 345 3666 199
-- Name: fk_assoccl_met_valid_inc_inc; Type: FK CONSTRAINT; Schema: basico_metodo_validacao; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_assoccl_met_valid_inc_inc FOREIGN KEY (id_include) REFERENCES basico.include(id);


SET search_path = basico_output, pg_catalog;

--
-- TOC entry 3823 (class 2606 OID 57492393)
-- Dependencies: 329 197 3613
-- Name: fk_assoccl_include_output; Type: FK CONSTRAINT; Schema: basico_output; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_assoccl_include_output FOREIGN KEY (id_output) REFERENCES basico.output(id);


--
-- TOC entry 3822 (class 2606 OID 57491977)
-- Dependencies: 3666 197 345
-- Name: fk_assoccl_output_inc_inc; Type: FK CONSTRAINT; Schema: basico_output; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_assoccl_output_inc_inc FOREIGN KEY (id_include) REFERENCES basico.include(id);


SET search_path = basico_perfil, pg_catalog;

--
-- TOC entry 3821 (class 2606 OID 57492603)
-- Dependencies: 3607 327 195
-- Name: fk_assoccl_modulo_modulo; Type: FK CONSTRAINT; Schema: basico_perfil; Owner: -
--

ALTER TABLE ONLY assoccl_modulo
    ADD CONSTRAINT fk_assoccl_modulo_modulo FOREIGN KEY (id_perfil) REFERENCES basico.perfil(id);


--
-- TOC entry 3820 (class 2606 OID 57492122)
-- Dependencies: 331 195 3619
-- Name: fk_assoccl_modulo_perfil; Type: FK CONSTRAINT; Schema: basico_perfil; Owner: -
--

ALTER TABLE ONLY assoccl_modulo
    ADD CONSTRAINT fk_assoccl_modulo_perfil FOREIGN KEY (id_modulo) REFERENCES basico.modulo(id);


SET search_path = basico_pessoa, pg_catalog;

--
-- TOC entry 3819 (class 2606 OID 57492177)
-- Dependencies: 3601 193 325
-- Name: fk_assoc_dados_pessoa; Type: FK CONSTRAINT; Schema: basico_pessoa; Owner: -
--

ALTER TABLE ONLY assoc_dados
    ADD CONSTRAINT fk_assoc_dados_pessoa FOREIGN KEY (id_pessoa) REFERENCES basico.pessoa(id);


--
-- TOC entry 3818 (class 2606 OID 57492282)
-- Dependencies: 3601 325 191
-- Name: fk_assoccl_perfil_pessoa; Type: FK CONSTRAINT; Schema: basico_pessoa; Owner: -
--

ALTER TABLE ONLY assoccl_perfil
    ADD CONSTRAINT fk_assoccl_perfil_pessoa FOREIGN KEY (id_pessoa) REFERENCES basico.pessoa(id);


--
-- TOC entry 3817 (class 2606 OID 57491962)
-- Dependencies: 327 3607 191
-- Name: fk_assoccl_pessoa_perfil_perfil; Type: FK CONSTRAINT; Schema: basico_pessoa; Owner: -
--

ALTER TABLE ONLY assoccl_perfil
    ADD CONSTRAINT fk_assoccl_pessoa_perfil_perfil FOREIGN KEY (id_perfil) REFERENCES basico.perfil(id);


--
-- TOC entry 3815 (class 2606 OID 57492312)
-- Dependencies: 325 189 3601
-- Name: fk_assoccl_vinc_profi_pessoa; Type: FK CONSTRAINT; Schema: basico_pessoa; Owner: -
--

ALTER TABLE ONLY assoccl_vinculo_profissional
    ADD CONSTRAINT fk_assoccl_vinc_profi_pessoa FOREIGN KEY (id_pessoa) REFERENCES basico.pessoa(id);


--
-- TOC entry 3816 (class 2606 OID 57492423)
-- Dependencies: 189 269 3400
-- Name: fk_assoccl_vinc_profi_tipo_vinc; Type: FK CONSTRAINT; Schema: basico_pessoa; Owner: -
--

ALTER TABLE ONLY assoccl_vinculo_profissional
    ADD CONSTRAINT fk_assoccl_vinc_profi_tipo_vinc FOREIGN KEY (id_tipo_vinculo) REFERENCES basico_dados_profissionais.tipo_vinculo(id);


SET search_path = basico_pessoa_juridica, pg_catalog;

--
-- TOC entry 3813 (class 2606 OID 57492222)
-- Dependencies: 365 187 3741
-- Name: fk_assoc_banco_categoria; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoc_banco
    ADD CONSTRAINT fk_assoc_banco_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 3814 (class 2606 OID 57492242)
-- Dependencies: 3598 187 323
-- Name: fk_assoc_banco_pj; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoc_banco
    ADD CONSTRAINT fk_assoc_banco_pj FOREIGN KEY (id_pessoa_juridica) REFERENCES basico.pessoa_juridica(id);


--
-- TOC entry 3812 (class 2606 OID 57492192)
-- Dependencies: 323 185 3598
-- Name: fk_assoc_dados_pj; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoc_dados
    ADD CONSTRAINT fk_assoc_dados_pj FOREIGN KEY (id_pessoa_juridica) REFERENCES basico.pessoa_juridica(id);


--
-- TOC entry 3800 (class 2606 OID 57492493)
-- Dependencies: 175 365 3741
-- Name: fk_assoc_faturamento_categoria; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoccl_faturamento
    ADD CONSTRAINT fk_assoc_faturamento_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 3799 (class 2606 OID 57491932)
-- Dependencies: 323 175 3598
-- Name: fk_assoc_faturamento_pj; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoccl_faturamento
    ADD CONSTRAINT fk_assoc_faturamento_pj FOREIGN KEY (id_pessoa_juridica) REFERENCES basico.pessoa_juridica(id);


--
-- TOC entry 3796 (class 2606 OID 57492027)
-- Dependencies: 365 173 3741
-- Name: fk_assoc_quadro_func_categoria; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoccl_quadro_funcionario
    ADD CONSTRAINT fk_assoc_quadro_func_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 3809 (class 2606 OID 57491997)
-- Dependencies: 323 183 3598
-- Name: fk_assocag_incub_pj_incubada; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assocag_incubadora
    ADD CONSTRAINT fk_assocag_incub_pj_incubada FOREIGN KEY (id_pessoa_juridica_incubada) REFERENCES basico.pessoa_juridica(id);


--
-- TOC entry 3811 (class 2606 OID 57492568)
-- Dependencies: 365 183 3741
-- Name: fk_assocag_incubadora_categoria; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assocag_incubadora
    ADD CONSTRAINT fk_assocag_incubadora_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 3810 (class 2606 OID 57492162)
-- Dependencies: 323 183 3598
-- Name: fk_assocag_incubadora_pj; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assocag_incubadora
    ADD CONSTRAINT fk_assocag_incubadora_pj FOREIGN KEY (id_pessoa_juridica) REFERENCES basico.pessoa_juridica(id);


--
-- TOC entry 3805 (class 2606 OID 57492157)
-- Dependencies: 181 3085 181
-- Name: fk_assocag_parc_assocag_parc; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assocag_parceria
    ADD CONSTRAINT fk_assocag_parc_assocag_parc FOREIGN KEY (id_assocag_parceria) REFERENCES assocag_parceria(id);


--
-- TOC entry 3808 (class 2606 OID 57492508)
-- Dependencies: 3741 181 365
-- Name: fk_assocag_parceria_categoria; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assocag_parceria
    ADD CONSTRAINT fk_assocag_parceria_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 3807 (class 2606 OID 57492458)
-- Dependencies: 3598 181 323
-- Name: fk_assocag_parceria_pj; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assocag_parceria
    ADD CONSTRAINT fk_assocag_parceria_pj FOREIGN KEY (id_pessoa_juridica) REFERENCES basico.pessoa_juridica(id);


--
-- TOC entry 3806 (class 2606 OID 57492187)
-- Dependencies: 323 181 3598
-- Name: fk_assocag_parceria_pj_parc; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assocag_parceria
    ADD CONSTRAINT fk_assocag_parceria_pj_parc FOREIGN KEY (id_pessoa_juridica_parceira) REFERENCES basico.pessoa_juridica(id);


--
-- TOC entry 3804 (class 2606 OID 57492678)
-- Dependencies: 179 3759 369
-- Name: fk_assoccl_area_econ_area; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoccl_area_economia
    ADD CONSTRAINT fk_assoccl_area_econ_area FOREIGN KEY (id_area_economia) REFERENCES basico.area_economia(id);


--
-- TOC entry 3803 (class 2606 OID 57492147)
-- Dependencies: 179 323 3598
-- Name: fk_assoccl_area_econ_pj; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoccl_area_economia
    ADD CONSTRAINT fk_assoccl_area_econ_pj FOREIGN KEY (id_pessoa_juridica) REFERENCES basico.pessoa_juridica(id);


--
-- TOC entry 3801 (class 2606 OID 57492017)
-- Dependencies: 171 177 3048
-- Name: fk_assoccl_cap_social_cap; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoccl_capital_social
    ADD CONSTRAINT fk_assoccl_cap_social_cap FOREIGN KEY (id_capital_social) REFERENCES capital_social(id);


--
-- TOC entry 3802 (class 2606 OID 57492127)
-- Dependencies: 3598 323 177
-- Name: fk_assoccl_cap_social_pj; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoccl_capital_social
    ADD CONSTRAINT fk_assoccl_cap_social_pj FOREIGN KEY (id_pessoa_juridica) REFERENCES basico.pessoa_juridica(id);


--
-- TOC entry 3797 (class 2606 OID 57492663)
-- Dependencies: 173 371 3767
-- Name: fk_assoccl_quadro_func_area_conh; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoccl_quadro_funcionario
    ADD CONSTRAINT fk_assoccl_quadro_func_area_conh FOREIGN KEY (id_area_conhecimento_predom) REFERENCES basico.area_conhecimento(id);


--
-- TOC entry 3794 (class 2606 OID 57492828)
-- Dependencies: 169 365 3741
-- Name: fk_natureza_categoria; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY natureza
    ADD CONSTRAINT fk_natureza_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 3798 (class 2606 OID 57492768)
-- Dependencies: 3598 323 173
-- Name: fk_pj_quadro_funcionarios; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoccl_quadro_funcionario
    ADD CONSTRAINT fk_pj_quadro_funcionarios FOREIGN KEY (id_pessoa_juridica) REFERENCES basico.pessoa_juridica(id);


--
-- TOC entry 3795 (class 2606 OID 57491972)
-- Dependencies: 3420 275 173
-- Name: fk_quadro_func_titulacao; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoccl_quadro_funcionario
    ADD CONSTRAINT fk_quadro_func_titulacao FOREIGN KEY (id_titulacao) REFERENCES basico_dados_academicos.titulacao(id);


SET search_path = basico_sequencia, pg_catalog;

--
-- TOC entry 3791 (class 2606 OID 57491827)
-- Dependencies: 167 3741 365
-- Name: fk_assocsq_acao_apli_categoria; Type: FK CONSTRAINT; Schema: basico_sequencia; Owner: -
--

ALTER TABLE ONLY assocsq_acao_aplicacao
    ADD CONSTRAINT fk_assocsq_acao_apli_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 3793 (class 2606 OID 57492418)
-- Dependencies: 167 3783 375
-- Name: fk_assocsq_acao_aplic_acao_apl; Type: FK CONSTRAINT; Schema: basico_sequencia; Owner: -
--

ALTER TABLE ONLY assocsq_acao_aplicacao
    ADD CONSTRAINT fk_assocsq_acao_aplic_acao_apl FOREIGN KEY (id_acao_aplicacao) REFERENCES basico.acao_aplicacao(id);


--
-- TOC entry 3792 (class 2606 OID 57492252)
-- Dependencies: 317 167 3573
-- Name: fk_assocsq_acao_aplic_seq; Type: FK CONSTRAINT; Schema: basico_sequencia; Owner: -
--

ALTER TABLE ONLY assocsq_acao_aplicacao
    ADD CONSTRAINT fk_assocsq_acao_aplic_seq FOREIGN KEY (id_sequencia) REFERENCES basico.sequencia(id);


SET search_path = basico_template, pg_catalog;

--
-- TOC entry 3789 (class 2606 OID 57492453)
-- Dependencies: 165 315 3567
-- Name: fk_assoccl_include_template; Type: FK CONSTRAINT; Schema: basico_template; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_assoccl_include_template FOREIGN KEY (id_template) REFERENCES basico.template(id);


--
-- TOC entry 3788 (class 2606 OID 57492778)
-- Dependencies: 3613 329 163
-- Name: fk_assoccl_output_output; Type: FK CONSTRAINT; Schema: basico_template; Owner: -
--

ALTER TABLE ONLY assoccl_output
    ADD CONSTRAINT fk_assoccl_output_output FOREIGN KEY (id_output) REFERENCES basico.output(id);


--
-- TOC entry 3787 (class 2606 OID 57492623)
-- Dependencies: 315 163 3567
-- Name: fk_assoccl_output_template; Type: FK CONSTRAINT; Schema: basico_template; Owner: -
--

ALTER TABLE ONLY assoccl_output
    ADD CONSTRAINT fk_assoccl_output_template FOREIGN KEY (id_template) REFERENCES basico.template(id);


--
-- TOC entry 3790 (class 2606 OID 57492718)
-- Dependencies: 165 345 3666
-- Name: fk_assoccl_template_inc_inc; Type: FK CONSTRAINT; Schema: basico_template; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_assoccl_template_inc_inc FOREIGN KEY (id_include) REFERENCES basico.include(id);


--
-- TOC entry 3998 (class 0 OID 0)
-- Dependencies: 3
-- Name: public; Type: ACL; Schema: -; Owner: -
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2012-02-06 13:41:33 BRT

--
-- PostgreSQL database dump complete
--
