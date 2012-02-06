--
-- PostgreSQL database dump
--

-- Dumped from database version 8.3.17
-- Dumped by pg_dump version 9.1.2
-- Started on 2012-02-06 15:46:25 BRT

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
-- TOC entry 1206 (class 2612 OID 6402577)
-- Name: plperl; Type: PROCEDURAL LANGUAGE; Schema: -; Owner: -
--

CREATE OR REPLACE PROCEDURAL LANGUAGE plperl;


--
-- TOC entry 1205 (class 2612 OID 6402574)
-- Name: plpgsql; Type: PROCEDURAL LANGUAGE; Schema: -; Owner: -
--

CREATE OR REPLACE PROCEDURAL LANGUAGE plpgsql;


SET search_path = basico, pg_catalog;

--
-- TOC entry 399 (class 1255 OID 57165130)
-- Dependencies: 12
-- Name: fn_checkcodigoareaeconomiaexists(character varying); Type: FUNCTION; Schema: basico; Owner: -
--

CREATE FUNCTION fn_checkcodigoareaeconomiaexists(character varying) RETURNS integer
    LANGUAGE sql
    AS $_$select id from basico.area_economia where codigo = $1 limit 1$_$;


--
-- TOC entry 390 (class 1255 OID 57155322)
-- Dependencies: 12
-- Name: fn_checkcodigocategoriaexists(character varying); Type: FUNCTION; Schema: basico; Owner: -
--

CREATE FUNCTION fn_checkcodigocategoriaexists(character varying) RETURNS integer
    LANGUAGE sql
    AS $_$select id from basico.categoria where codigo = $1 limit 1$_$;


--
-- TOC entry 388 (class 1255 OID 57155277)
-- Dependencies: 12
-- Name: fn_checkcodigotipocategoriaexists(character varying); Type: FUNCTION; Schema: basico; Owner: -
--

CREATE FUNCTION fn_checkcodigotipocategoriaexists(character varying) RETURNS integer
    LANGUAGE sql
    AS $_$select id from basico.tipo_categoria where codigo = $1 limit 1$_$;


--
-- TOC entry 395 (class 1255 OID 57079657)
-- Dependencies: 12
-- Name: fn_checkconstantetextualexists(character varying); Type: FUNCTION; Schema: basico; Owner: -
--

CREATE FUNCTION fn_checkconstantetextualexists(character varying) RETURNS integer
    LANGUAGE sql
    AS $_$select id from basico.dicionario_expressao where constante_textual = $1 limit 1$_$;


--
-- TOC entry 391 (class 1255 OID 57147848)
-- Dependencies: 12
-- Name: fn_checknomearquivoexists(character varying); Type: FUNCTION; Schema: basico; Owner: -
--

CREATE FUNCTION fn_checknomearquivoexists(character varying) RETURNS integer
    LANGUAGE sql
    AS $_$select id from basico.arquivo where nome = $1 limit 1$_$;


--
-- TOC entry 396 (class 1255 OID 57155046)
-- Dependencies: 12
-- Name: fn_checknomelinkexists(character varying); Type: FUNCTION; Schema: basico; Owner: -
--

CREATE FUNCTION fn_checknomelinkexists(character varying) RETURNS integer
    LANGUAGE sql
    AS $_$select id from basico.link where nome = $1 limit 1$_$;


--
-- TOC entry 389 (class 1255 OID 57147811)
-- Dependencies: 12
-- Name: fn_checknomemensagemexists(character varying); Type: FUNCTION; Schema: basico; Owner: -
--

CREATE FUNCTION fn_checknomemensagemexists(character varying) RETURNS integer
    LANGUAGE sql
    AS $_$select id from basico.mensagem where nome = $1 limit 1$_$;


--
-- TOC entry 398 (class 1255 OID 57155142)
-- Dependencies: 12
-- Name: fn_checknomeprodutoexists(character varying); Type: FUNCTION; Schema: basico; Owner: -
--

CREATE FUNCTION fn_checknomeprodutoexists(character varying) RETURNS integer
    LANGUAGE sql
    AS $_$select id from basico.produto where nome = $1 limit 1$_$;


SET search_path = basico_categoria, pg_catalog;

--
-- TOC entry 393 (class 1255 OID 57079642)
-- Dependencies: 11
-- Name: fn_checkcategoriachaveestrangeiracategoriaexists(integer); Type: FUNCTION; Schema: basico_categoria; Owner: -
--

CREATE FUNCTION fn_checkcategoriachaveestrangeiracategoriaexists(integer) RETURNS integer
    LANGUAGE sql
    AS $_$select id from basico_categoria.assoc_chave_estrangeira where id_categoria = $1 limit 1$_$;


SET search_path = basico_contato, pg_catalog;

--
-- TOC entry 397 (class 1255 OID 57147957)
-- Dependencies: 10
-- Name: fn_checknomeemailexists(character varying); Type: FUNCTION; Schema: basico_contato; Owner: -
--

CREATE FUNCTION fn_checknomeemailexists(character varying) RETURNS integer
    LANGUAGE sql
    AS $_$select id from basico_contato.email where nome = $1 limit 1$_$;


--
-- TOC entry 392 (class 1255 OID 57148212)
-- Dependencies: 10
-- Name: fn_checknometelefoneexists(character varying); Type: FUNCTION; Schema: basico_contato; Owner: -
--

CREATE FUNCTION fn_checknometelefoneexists(character varying) RETURNS integer
    LANGUAGE sql
    AS $_$select id from basico_contato.telefone where nome = $1 limit 1$_$;


SET search_path = basico_cvc, pg_catalog;

--
-- TOC entry 394 (class 1255 OID 57079656)
-- Dependencies: 19
-- Name: fn_checkcategoriacvc(integer); Type: FUNCTION; Schema: basico_cvc; Owner: -
--

CREATE FUNCTION fn_checkcategoriacvc(integer) RETURNS integer
    LANGUAGE sql
    AS $_$select c.id from basico.categoria c left join basico.tipo_categoria t on (c.id_tipo_categoria = t.id) where c.id = $1 and t.nome = $$CVC$$ and c.nome = $$CVC$$limit 1$_$;


SET search_path = basico_formulario_elemento, pg_catalog;

--
-- TOC entry 400 (class 1255 OID 57169159)
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
-- TOC entry 352 (class 1259 OID 57502779)
-- Dependencies: 2936 2937 2938 2939 2940 12
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
-- TOC entry 351 (class 1259 OID 57502777)
-- Dependencies: 352 12
-- Name: acao_aplicacao_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE acao_aplicacao_id_seq
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3991 (class 0 OID 0)
-- Dependencies: 351
-- Name: acao_aplicacao_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE acao_aplicacao_id_seq OWNED BY acao_aplicacao.id;


--
-- TOC entry 316 (class 1259 OID 57502472)
-- Dependencies: 2815 2816 2817 2818 2819 2820 2821 2822 12
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
-- TOC entry 315 (class 1259 OID 57502470)
-- Dependencies: 316 12
-- Name: ajuda_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE ajuda_id_seq
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3992 (class 0 OID 0)
-- Dependencies: 315
-- Name: ajuda_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE ajuda_id_seq OWNED BY ajuda.id;


--
-- TOC entry 336 (class 1259 OID 57502645)
-- Dependencies: 2884 2885 2886 2887 2888 2889 12
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
    CONSTRAINT area_conhecimento_constante_textual_check CHECK ((fn_checkconstantetextualexists(constante_textual) IS NOT NULL)),
    CONSTRAINT area_conhecimento_constante_textual_descricao_check CHECK (((constante_textual_descricao IS NULL) OR (fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL)))
);


--
-- TOC entry 335 (class 1259 OID 57502643)
-- Dependencies: 336 12
-- Name: area_conhecimento_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE area_conhecimento_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3993 (class 0 OID 0)
-- Dependencies: 335
-- Name: area_conhecimento_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE area_conhecimento_id_seq OWNED BY area_conhecimento.id;


--
-- TOC entry 324 (class 1259 OID 57502539)
-- Dependencies: 2842 2843 2844 2845 2846 2847 2848 12
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
-- TOC entry 323 (class 1259 OID 57502537)
-- Dependencies: 324 12
-- Name: area_economia_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE area_economia_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3994 (class 0 OID 0)
-- Dependencies: 323
-- Name: area_economia_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE area_economia_id_seq OWNED BY area_economia.id;


--
-- TOC entry 314 (class 1259 OID 57502454)
-- Dependencies: 2807 2808 2809 2810 2811 2812 2813 12
-- Name: arquivo; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE arquivo (
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
-- TOC entry 313 (class 1259 OID 57502452)
-- Dependencies: 12 314
-- Name: arquivo_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE arquivo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3995 (class 0 OID 0)
-- Dependencies: 313
-- Name: arquivo_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE arquivo_id_seq OWNED BY arquivo.id;


--
-- TOC entry 354 (class 1259 OID 57502797)
-- Dependencies: 2942 2943 2944 2945 2946 2947 2948 2949 12
-- Name: categoria; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE categoria (
    id integer NOT NULL,
    id_tipo_categoria integer NOT NULL,
    id_categoria_pai integer,
    nivel integer DEFAULT 1 NOT NULL,
    nome character varying(200),
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
-- TOC entry 3996 (class 0 OID 0)
-- Dependencies: 354
-- Name: TABLE categoria; Type: COMMENT; Schema: basico; Owner: -
--

COMMENT ON TABLE categoria IS 'containner de categorias';


--
-- TOC entry 353 (class 1259 OID 57502795)
-- Dependencies: 354 12
-- Name: categoria_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE categoria_id_seq
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3997 (class 0 OID 0)
-- Dependencies: 353
-- Name: categoria_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE categoria_id_seq OWNED BY categoria.id;


--
-- TOC entry 310 (class 1259 OID 57502420)
-- Dependencies: 2797 2798 2799 2800 12
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
-- TOC entry 309 (class 1259 OID 57502418)
-- Dependencies: 12 310
-- Name: codigo_acesso_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE codigo_acesso_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3998 (class 0 OID 0)
-- Dependencies: 309
-- Name: codigo_acesso_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE codigo_acesso_id_seq OWNED BY codigo_acesso.id;


--
-- TOC entry 372 (class 1259 OID 57502938)
-- Dependencies: 2991 2992 2993 2994 2995 12
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
-- TOC entry 371 (class 1259 OID 57502936)
-- Dependencies: 12 372
-- Name: componente_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE componente_id_seq
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3999 (class 0 OID 0)
-- Dependencies: 371
-- Name: componente_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE componente_id_seq OWNED BY componente.id;


--
-- TOC entry 368 (class 1259 OID 57502907)
-- Dependencies: 2982 2983 12
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
-- TOC entry 367 (class 1259 OID 57502905)
-- Dependencies: 12 368
-- Name: dados_bancarios_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE dados_bancarios_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4000 (class 0 OID 0)
-- Dependencies: 367
-- Name: dados_bancarios_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE dados_bancarios_id_seq OWNED BY dados_bancarios.id;


--
-- TOC entry 364 (class 1259 OID 57502878)
-- Dependencies: 2973 2974 2975 12
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
-- TOC entry 363 (class 1259 OID 57502876)
-- Dependencies: 12 364
-- Name: dados_biometricos_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE dados_biometricos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4001 (class 0 OID 0)
-- Dependencies: 363
-- Name: dados_biometricos_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE dados_biometricos_id_seq OWNED BY dados_biometricos.id;


--
-- TOC entry 312 (class 1259 OID 57502437)
-- Dependencies: 2802 2803 2804 2805 12
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
-- TOC entry 311 (class 1259 OID 57502435)
-- Dependencies: 312 12
-- Name: dicionario_expressao_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE dicionario_expressao_id_seq
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4002 (class 0 OID 0)
-- Dependencies: 311
-- Name: dicionario_expressao_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE dicionario_expressao_id_seq OWNED BY dicionario_expressao.id;


--
-- TOC entry 328 (class 1259 OID 57502578)
-- Dependencies: 2859 2860 2861 12
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
-- TOC entry 327 (class 1259 OID 57502576)
-- Dependencies: 12 328
-- Name: documento_identificacao_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE documento_identificacao_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4003 (class 0 OID 0)
-- Dependencies: 327
-- Name: documento_identificacao_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE documento_identificacao_id_seq OWNED BY documento_identificacao.id;


--
-- TOC entry 374 (class 1259 OID 57502954)
-- Dependencies: 2997 2998 2999 3000 3001 12
-- Name: evento; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE evento (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    nome character varying(200) NOT NULL,
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
-- TOC entry 373 (class 1259 OID 57502952)
-- Dependencies: 12 374
-- Name: evento_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE evento_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4004 (class 0 OID 0)
-- Dependencies: 373
-- Name: evento_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE evento_id_seq OWNED BY evento.id;


--
-- TOC entry 320 (class 1259 OID 57502507)
-- Dependencies: 2830 2831 2832 2833 2834 12
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
-- TOC entry 319 (class 1259 OID 57502505)
-- Dependencies: 320 12
-- Name: filter_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE filter_id_seq
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4005 (class 0 OID 0)
-- Dependencies: 319
-- Name: filter_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE filter_id_seq OWNED BY filter.id;


--
-- TOC entry 330 (class 1259 OID 57502594)
-- Dependencies: 2863 2864 2865 2866 2867 2868 2869 12
-- Name: formulario; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE formulario (
    id integer NOT NULL,
    id_formulario_pai integer,
    nivel integer DEFAULT 1 NOT NULL,
    id_categoria integer NOT NULL,
    id_ajuda integer,
    nome character varying(200) NOT NULL,
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
-- TOC entry 329 (class 1259 OID 57502592)
-- Dependencies: 12 330
-- Name: formulario_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE formulario_id_seq
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4006 (class 0 OID 0)
-- Dependencies: 329
-- Name: formulario_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE formulario_id_seq OWNED BY formulario.id;


--
-- TOC entry 342 (class 1259 OID 57502693)
-- Dependencies: 2902 2903 2904 2905 2906 12
-- Name: include; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE include (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    nome character varying(200) NOT NULL,
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
-- TOC entry 341 (class 1259 OID 57502691)
-- Dependencies: 12 342
-- Name: include_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE include_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4007 (class 0 OID 0)
-- Dependencies: 341
-- Name: include_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE include_id_seq OWNED BY include.id;


--
-- TOC entry 348 (class 1259 OID 57502744)
-- Dependencies: 2923 2924 2925 2926 2927 2928 12
-- Name: link; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE link (
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
    CONSTRAINT link_constante_textual_check CHECK (((constante_textual IS NULL) OR (fn_checkconstantetextualexists(constante_textual) IS NOT NULL))),
    CONSTRAINT link_constante_textual_descricao_check CHECK (((constante_textual_descricao IS NULL) OR (fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL))),
    CONSTRAINT link_nome_check CHECK (((nome IS NULL) OR (fn_checknomelinkexists(nome) IS NULL)))
);


--
-- TOC entry 347 (class 1259 OID 57502742)
-- Dependencies: 348 12
-- Name: link_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE link_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4008 (class 0 OID 0)
-- Dependencies: 347
-- Name: link_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE link_id_seq OWNED BY link.id;


--
-- TOC entry 338 (class 1259 OID 57502662)
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
-- TOC entry 337 (class 1259 OID 57502660)
-- Dependencies: 338 12
-- Name: log_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4009 (class 0 OID 0)
-- Dependencies: 337
-- Name: log_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE log_id_seq OWNED BY log.id;


--
-- TOC entry 326 (class 1259 OID 57502557)
-- Dependencies: 2850 2851 2852 2853 2854 2855 2856 2857 12
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
-- TOC entry 325 (class 1259 OID 57502555)
-- Dependencies: 326 12
-- Name: login_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE login_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4010 (class 0 OID 0)
-- Dependencies: 325
-- Name: login_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE login_id_seq OWNED BY login.id;


--
-- TOC entry 344 (class 1259 OID 57502709)
-- Dependencies: 2908 2909 2910 2911 2912 12
-- Name: mascara; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE mascara (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    nome character varying(200) NOT NULL,
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
-- TOC entry 343 (class 1259 OID 57502707)
-- Dependencies: 344 12
-- Name: mascara_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE mascara_id_seq
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4011 (class 0 OID 0)
-- Dependencies: 343
-- Name: mascara_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE mascara_id_seq OWNED BY mascara.id;


--
-- TOC entry 340 (class 1259 OID 57502673)
-- Dependencies: 2892 2893 2894 2895 2896 2897 2898 2899 2900 12
-- Name: mensagem; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE mensagem (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    id_generico_proprietario integer NOT NULL,
    nome character varying(200),
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
    CONSTRAINT mensagem_constante_textual_descricao_check1 CHECK (((constante_textual_descricao IS NULL) OR (fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL)))
);


--
-- TOC entry 339 (class 1259 OID 57502671)
-- Dependencies: 12 340
-- Name: mensagem_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE mensagem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4012 (class 0 OID 0)
-- Dependencies: 339
-- Name: mensagem_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE mensagem_id_seq OWNED BY mensagem.id;


--
-- TOC entry 350 (class 1259 OID 57502763)
-- Dependencies: 2930 2931 2932 2933 2934 12
-- Name: metodo_validacao; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE metodo_validacao (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    nome character varying(200) NOT NULL,
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
-- TOC entry 349 (class 1259 OID 57502761)
-- Dependencies: 12 350
-- Name: metodo_validacao_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE metodo_validacao_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4013 (class 0 OID 0)
-- Dependencies: 349
-- Name: metodo_validacao_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE metodo_validacao_id_seq OWNED BY metodo_validacao.id;


--
-- TOC entry 360 (class 1259 OID 57502848)
-- Dependencies: 2963 2964 2965 2966 2967 2968 12
-- Name: modulo; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE modulo (
    id integer NOT NULL,
    id_modulo_pai integer,
    id_categoria integer NOT NULL,
    nome character varying(200) NOT NULL,
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
-- TOC entry 359 (class 1259 OID 57502846)
-- Dependencies: 360 12
-- Name: modulo_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE modulo_id_seq
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4014 (class 0 OID 0)
-- Dependencies: 359
-- Name: modulo_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE modulo_id_seq OWNED BY modulo.id;


--
-- TOC entry 358 (class 1259 OID 57502832)
-- Dependencies: 2957 2958 2959 2960 2961 12
-- Name: output; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE output (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    nome character varying(200) NOT NULL,
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
-- TOC entry 357 (class 1259 OID 57502830)
-- Dependencies: 358 12
-- Name: output_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE output_id_seq
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4015 (class 0 OID 0)
-- Dependencies: 357
-- Name: output_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE output_id_seq OWNED BY output.id;


--
-- TOC entry 334 (class 1259 OID 57502628)
-- Dependencies: 2877 2878 2879 2880 2881 2882 12
-- Name: perfil; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE perfil (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
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
-- TOC entry 333 (class 1259 OID 57502626)
-- Dependencies: 334 12
-- Name: perfil_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE perfil_id_seq
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4016 (class 0 OID 0)
-- Dependencies: 333
-- Name: perfil_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE perfil_id_seq OWNED BY perfil.id;


--
-- TOC entry 362 (class 1259 OID 57502865)
-- Dependencies: 2970 2971 12
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
-- TOC entry 361 (class 1259 OID 57502863)
-- Dependencies: 362 12
-- Name: pessoa_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE pessoa_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4017 (class 0 OID 0)
-- Dependencies: 361
-- Name: pessoa_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE pessoa_id_seq OWNED BY pessoa.id;


--
-- TOC entry 366 (class 1259 OID 57502892)
-- Dependencies: 2977 2978 2979 2980 12
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
-- TOC entry 365 (class 1259 OID 57502890)
-- Dependencies: 12 366
-- Name: pessoa_juridica_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE pessoa_juridica_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4018 (class 0 OID 0)
-- Dependencies: 365
-- Name: pessoa_juridica_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE pessoa_juridica_id_seq OWNED BY pessoa_juridica.id;


--
-- TOC entry 318 (class 1259 OID 57502491)
-- Dependencies: 2824 2825 2826 2827 2828 12
-- Name: produto; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE produto (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    id_generico_proprietario integer NOT NULL,
    id_categoria_moeda integer NOT NULL,
    nome character varying(200),
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
-- TOC entry 317 (class 1259 OID 57502489)
-- Dependencies: 12 318
-- Name: produto_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE produto_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4019 (class 0 OID 0)
-- Dependencies: 317
-- Name: produto_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE produto_id_seq OWNED BY produto.id;


--
-- TOC entry 356 (class 1259 OID 57502816)
-- Dependencies: 2951 2952 2953 2954 2955 12
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
-- TOC entry 355 (class 1259 OID 57502814)
-- Dependencies: 356 12
-- Name: profissao_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE profissao_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4020 (class 0 OID 0)
-- Dependencies: 355
-- Name: profissao_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE profissao_id_seq OWNED BY profissao.id;


--
-- TOC entry 322 (class 1259 OID 57502523)
-- Dependencies: 2836 2837 2838 2839 2840 12
-- Name: sequencia; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE sequencia (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    nome character varying(200) NOT NULL,
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
-- TOC entry 321 (class 1259 OID 57502521)
-- Dependencies: 12 322
-- Name: sequencia_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE sequencia_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4021 (class 0 OID 0)
-- Dependencies: 321
-- Name: sequencia_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE sequencia_id_seq OWNED BY sequencia.id;


--
-- TOC entry 332 (class 1259 OID 57502612)
-- Dependencies: 2871 2872 2873 2874 2875 12
-- Name: template; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE template (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    nome character varying(200) NOT NULL,
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
-- TOC entry 331 (class 1259 OID 57502610)
-- Dependencies: 12 332
-- Name: template_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE template_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4022 (class 0 OID 0)
-- Dependencies: 331
-- Name: template_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE template_id_seq OWNED BY template.id;


--
-- TOC entry 346 (class 1259 OID 57502725)
-- Dependencies: 2914 2915 2916 2917 2918 2919 2920 2921 12
-- Name: tipo_categoria; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE tipo_categoria (
    id integer NOT NULL,
    id_tipo_categoria_pai integer,
    nivel integer DEFAULT 1 NOT NULL,
    nome character varying(200),
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
-- TOC entry 4023 (class 0 OID 0)
-- Dependencies: 346
-- Name: TABLE tipo_categoria; Type: COMMENT; Schema: basico; Owner: -
--

COMMENT ON TABLE tipo_categoria IS 'containner de tipos de categoria';


--
-- TOC entry 345 (class 1259 OID 57502723)
-- Dependencies: 12 346
-- Name: tipo_categoria_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE tipo_categoria_id_seq
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4024 (class 0 OID 0)
-- Dependencies: 345
-- Name: tipo_categoria_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE tipo_categoria_id_seq OWNED BY tipo_categoria.id;


--
-- TOC entry 308 (class 1259 OID 57502407)
-- Dependencies: 2794 2795 12
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
-- TOC entry 307 (class 1259 OID 57502405)
-- Dependencies: 308 12
-- Name: token_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE token_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4025 (class 0 OID 0)
-- Dependencies: 307
-- Name: token_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE token_id_seq OWNED BY token.id;


--
-- TOC entry 370 (class 1259 OID 57502922)
-- Dependencies: 2985 2986 2987 2988 2989 12
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
-- TOC entry 369 (class 1259 OID 57502920)
-- Dependencies: 370 12
-- Name: validator_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE validator_id_seq
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4026 (class 0 OID 0)
-- Dependencies: 369
-- Name: validator_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE validator_id_seq OWNED BY validator.id;


SET search_path = basico_acao_aplic_assoc_visao, pg_catalog;

--
-- TOC entry 306 (class 1259 OID 57502395)
-- Dependencies: 2792 40
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
-- TOC entry 305 (class 1259 OID 57502393)
-- Dependencies: 306 40
-- Name: assoccl_atrib_met_rec_post_id_seq; Type: SEQUENCE; Schema: basico_acao_aplic_assoc_visao; Owner: -
--

CREATE SEQUENCE assoccl_atrib_met_rec_post_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4027 (class 0 OID 0)
-- Dependencies: 305
-- Name: assoccl_atrib_met_rec_post_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_acao_aplic_assoc_visao; Owner: -
--

ALTER SEQUENCE assoccl_atrib_met_rec_post_id_seq OWNED BY assoccl_atrib_met_rec_post.id;


--
-- TOC entry 304 (class 1259 OID 57502379)
-- Dependencies: 2788 2789 2790 40
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
-- TOC entry 303 (class 1259 OID 57502377)
-- Dependencies: 304 40
-- Name: atributo_metodo_recup_post_id_seq; Type: SEQUENCE; Schema: basico_acao_aplic_assoc_visao; Owner: -
--

CREATE SEQUENCE atributo_metodo_recup_post_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4028 (class 0 OID 0)
-- Dependencies: 303
-- Name: atributo_metodo_recup_post_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_acao_aplic_assoc_visao; Owner: -
--

ALTER SEQUENCE atributo_metodo_recup_post_id_seq OWNED BY atributo_metodo_recup_post.id;


SET search_path = basico_acao_aplicacao, pg_catalog;

--
-- TOC entry 300 (class 1259 OID 57502347)
-- Dependencies: 2778 2779 2780 2781 2782 2783 2784 36
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
-- TOC entry 299 (class 1259 OID 57502345)
-- Dependencies: 36 300
-- Name: assoc_visao_id_seq; Type: SEQUENCE; Schema: basico_acao_aplicacao; Owner: -
--

CREATE SEQUENCE assoc_visao_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4029 (class 0 OID 0)
-- Dependencies: 299
-- Name: assoc_visao_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_acao_aplicacao; Owner: -
--

ALTER SEQUENCE assoc_visao_id_seq OWNED BY assoc_visao.id;


--
-- TOC entry 302 (class 1259 OID 57502365)
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
-- TOC entry 301 (class 1259 OID 57502363)
-- Dependencies: 36 302
-- Name: assoccl_metodo_validacao_id_seq; Type: SEQUENCE; Schema: basico_acao_aplicacao; Owner: -
--

CREATE SEQUENCE assoccl_metodo_validacao_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4030 (class 0 OID 0)
-- Dependencies: 301
-- Name: assoccl_metodo_validacao_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_acao_aplicacao; Owner: -
--

ALTER SEQUENCE assoccl_metodo_validacao_id_seq OWNED BY assoccl_metodo_validacao.id;


--
-- TOC entry 298 (class 1259 OID 57502333)
-- Dependencies: 2776 36
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
-- TOC entry 297 (class 1259 OID 57502331)
-- Dependencies: 298 36
-- Name: assoccl_perfil_id_seq; Type: SEQUENCE; Schema: basico_acao_aplicacao; Owner: -
--

CREATE SEQUENCE assoccl_perfil_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4031 (class 0 OID 0)
-- Dependencies: 297
-- Name: assoccl_perfil_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_acao_aplicacao; Owner: -
--

ALTER SEQUENCE assoccl_perfil_id_seq OWNED BY assoccl_perfil.id;


SET search_path = basico_ajuda, pg_catalog;

--
-- TOC entry 296 (class 1259 OID 57502319)
-- Dependencies: 2774 33
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
-- TOC entry 295 (class 1259 OID 57502317)
-- Dependencies: 296 33
-- Name: assoccl_link_id_seq; Type: SEQUENCE; Schema: basico_ajuda; Owner: -
--

CREATE SEQUENCE assoccl_link_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4032 (class 0 OID 0)
-- Dependencies: 295
-- Name: assoccl_link_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_ajuda; Owner: -
--

ALTER SEQUENCE assoccl_link_id_seq OWNED BY assoccl_link.id;


SET search_path = basico_assoc_banco, pg_catalog;

--
-- TOC entry 294 (class 1259 OID 57502304)
-- Dependencies: 2769 2770 2771 2772 22
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
-- TOC entry 293 (class 1259 OID 57502302)
-- Dependencies: 294 22
-- Name: assoc_tipo_conta_id_seq; Type: SEQUENCE; Schema: basico_assoc_banco; Owner: -
--

CREATE SEQUENCE assoc_tipo_conta_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4033 (class 0 OID 0)
-- Dependencies: 293
-- Name: assoc_tipo_conta_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_assoc_banco; Owner: -
--

ALTER SEQUENCE assoc_tipo_conta_id_seq OWNED BY assoc_tipo_conta.id;


SET search_path = basico_assoc_chave_estrangeira, pg_catalog;

--
-- TOC entry 292 (class 1259 OID 57502284)
-- Dependencies: 2767 27
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
-- TOC entry 291 (class 1259 OID 57502282)
-- Dependencies: 292 27
-- Name: relacao_id_seq; Type: SEQUENCE; Schema: basico_assoc_chave_estrangeira; Owner: -
--

CREATE SEQUENCE relacao_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4034 (class 0 OID 0)
-- Dependencies: 291
-- Name: relacao_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_assoc_chave_estrangeira; Owner: -
--

ALTER SEQUENCE relacao_id_seq OWNED BY relacao.id;


SET search_path = basico_assoc_dados_profis, pg_catalog;

--
-- TOC entry 290 (class 1259 OID 57502270)
-- Dependencies: 2765 15
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
-- TOC entry 289 (class 1259 OID 57502268)
-- Dependencies: 290 15
-- Name: assoccl_area_conhecimento_id_seq; Type: SEQUENCE; Schema: basico_assoc_dados_profis; Owner: -
--

CREATE SEQUENCE assoccl_area_conhecimento_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4035 (class 0 OID 0)
-- Dependencies: 289
-- Name: assoccl_area_conhecimento_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_assoc_dados_profis; Owner: -
--

ALTER SEQUENCE assoccl_area_conhecimento_id_seq OWNED BY assoccl_area_conhecimento.id;


SET search_path = basico_assoccl_pessoa_perfil, pg_catalog;

--
-- TOC entry 288 (class 1259 OID 57502257)
-- Dependencies: 2762 2763 7
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
-- TOC entry 287 (class 1259 OID 57502255)
-- Dependencies: 288 7
-- Name: assoc_dados_id_seq; Type: SEQUENCE; Schema: basico_assoccl_pessoa_perfil; Owner: -
--

CREATE SEQUENCE assoc_dados_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4036 (class 0 OID 0)
-- Dependencies: 287
-- Name: assoc_dados_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_assoccl_pessoa_perfil; Owner: -
--

ALTER SEQUENCE assoc_dados_id_seq OWNED BY assoc_dados.id;


SET search_path = basico_assocl_vinculo_profissional, pg_catalog;

--
-- TOC entry 286 (class 1259 OID 57502244)
-- Dependencies: 2759 2760 17
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
-- TOC entry 285 (class 1259 OID 57502242)
-- Dependencies: 17 286
-- Name: assoc_dados_id_seq; Type: SEQUENCE; Schema: basico_assocl_vinculo_profissional; Owner: -
--

CREATE SEQUENCE assoc_dados_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4037 (class 0 OID 0)
-- Dependencies: 285
-- Name: assoc_dados_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_assocl_vinculo_profissional; Owner: -
--

ALTER SEQUENCE assoc_dados_id_seq OWNED BY assoc_dados.id;


SET search_path = basico_categoria, pg_catalog;

--
-- TOC entry 284 (class 1259 OID 57502229)
-- Dependencies: 2756 2757 11
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
-- TOC entry 4038 (class 0 OID 0)
-- Dependencies: 284
-- Name: TABLE assoc_chave_estrangeira; Type: COMMENT; Schema: basico_categoria; Owner: -
--

COMMENT ON TABLE assoc_chave_estrangeira IS 'conteinner de relacao de uma categoria com uma relacao de chave estrangeira (tabela e campo)';


--
-- TOC entry 283 (class 1259 OID 57502227)
-- Dependencies: 284 11
-- Name: assoc_chave_estrangeira_id_seq; Type: SEQUENCE; Schema: basico_categoria; Owner: -
--

CREATE SEQUENCE assoc_chave_estrangeira_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4039 (class 0 OID 0)
-- Dependencies: 283
-- Name: assoc_chave_estrangeira_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_categoria; Owner: -
--

ALTER SEQUENCE assoc_chave_estrangeira_id_seq OWNED BY assoc_chave_estrangeira.id;


SET search_path = basico_componente, pg_catalog;

--
-- TOC entry 282 (class 1259 OID 57502213)
-- Dependencies: 2754 28
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
-- TOC entry 281 (class 1259 OID 57502211)
-- Dependencies: 28 282
-- Name: assoccl_include_id_seq; Type: SEQUENCE; Schema: basico_componente; Owner: -
--

CREATE SEQUENCE assoccl_include_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4040 (class 0 OID 0)
-- Dependencies: 281
-- Name: assoccl_include_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_componente; Owner: -
--

ALTER SEQUENCE assoccl_include_id_seq OWNED BY assoccl_include.id;


SET search_path = basico_contato, pg_catalog;

--
-- TOC entry 280 (class 1259 OID 57502193)
-- Dependencies: 2746 2747 2748 2749 2750 2751 2752 10
-- Name: email; Type: TABLE; Schema: basico_contato; Owner: -; Tablespace: 
--

CREATE TABLE email (
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
    CONSTRAINT email_constante_textual_check CHECK (((constante_textual IS NULL) OR (basico.fn_checkconstantetextualexists(constante_textual) IS NOT NULL))),
    CONSTRAINT email_constante_textual_descricao_check CHECK (((constante_textual_descricao IS NULL) OR (basico.fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL))),
    CONSTRAINT email_nome_check CHECK (((nome IS NULL) OR (fn_checknomeemailexists(nome) IS NULL)))
);


--
-- TOC entry 279 (class 1259 OID 57502191)
-- Dependencies: 10 280
-- Name: email_id_seq; Type: SEQUENCE; Schema: basico_contato; Owner: -
--

CREATE SEQUENCE email_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4041 (class 0 OID 0)
-- Dependencies: 279
-- Name: email_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_contato; Owner: -
--

ALTER SEQUENCE email_id_seq OWNED BY email.id;


--
-- TOC entry 278 (class 1259 OID 57502174)
-- Dependencies: 2739 2740 2741 2742 2743 2744 10
-- Name: telefone; Type: TABLE; Schema: basico_contato; Owner: -; Tablespace: 
--

CREATE TABLE telefone (
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
    CONSTRAINT telefone_constante_textual_check CHECK (((constante_textual IS NULL) OR (basico.fn_checkconstantetextualexists(constante_textual) IS NOT NULL))),
    CONSTRAINT telefone_constante_textual_descricao_check CHECK (((constante_textual_descricao IS NULL) OR (basico.fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL))),
    CONSTRAINT telefone_nome_check CHECK (((nome IS NULL) OR (fn_checknometelefoneexists(nome) IS NULL)))
);


--
-- TOC entry 277 (class 1259 OID 57502172)
-- Dependencies: 278 10
-- Name: telefone_id_seq; Type: SEQUENCE; Schema: basico_contato; Owner: -
--

CREATE SEQUENCE telefone_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4042 (class 0 OID 0)
-- Dependencies: 277
-- Name: telefone_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_contato; Owner: -
--

ALTER SEQUENCE telefone_id_seq OWNED BY telefone.id;


SET search_path = basico_cvc, pg_catalog;

--
-- TOC entry 276 (class 1259 OID 57502157)
-- Dependencies: 2734 2735 2736 2737 19
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
-- TOC entry 275 (class 1259 OID 57502155)
-- Dependencies: 276 19
-- Name: cvc_id_seq; Type: SEQUENCE; Schema: basico_cvc; Owner: -
--

CREATE SEQUENCE cvc_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4043 (class 0 OID 0)
-- Dependencies: 275
-- Name: cvc_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_cvc; Owner: -
--

ALTER SEQUENCE cvc_id_seq OWNED BY cvc.id;


SET search_path = basico_dados_academicos, pg_catalog;

--
-- TOC entry 274 (class 1259 OID 57502141)
-- Dependencies: 2728 2729 2730 2731 2732 18
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
-- TOC entry 273 (class 1259 OID 57502139)
-- Dependencies: 18 274
-- Name: titulacao_id_seq; Type: SEQUENCE; Schema: basico_dados_academicos; Owner: -
--

CREATE SEQUENCE titulacao_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4044 (class 0 OID 0)
-- Dependencies: 273
-- Name: titulacao_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_dados_academicos; Owner: -
--

ALTER SEQUENCE titulacao_id_seq OWNED BY titulacao.id;


SET search_path = basico_dados_biometricos, pg_catalog;

--
-- TOC entry 272 (class 1259 OID 57502125)
-- Dependencies: 2722 2723 2724 2725 2726 20
-- Name: tipo_sanguineo; Type: TABLE; Schema: basico_dados_biometricos; Owner: -; Tablespace: 
--

CREATE TABLE tipo_sanguineo (
    id integer NOT NULL,
    nome character varying(200) NOT NULL,
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
-- TOC entry 271 (class 1259 OID 57502123)
-- Dependencies: 20 272
-- Name: tipo_sanguineo_id_seq; Type: SEQUENCE; Schema: basico_dados_biometricos; Owner: -
--

CREATE SEQUENCE tipo_sanguineo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4045 (class 0 OID 0)
-- Dependencies: 271
-- Name: tipo_sanguineo_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_dados_biometricos; Owner: -
--

ALTER SEQUENCE tipo_sanguineo_id_seq OWNED BY tipo_sanguineo.id;


SET search_path = basico_dados_profissionais, pg_catalog;

--
-- TOC entry 268 (class 1259 OID 57502090)
-- Dependencies: 2707 2708 2709 2710 2711 2712 14
-- Name: regime_trabalho; Type: TABLE; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE TABLE regime_trabalho (
    id integer NOT NULL,
    id_regime_trabalho_pai integer NOT NULL,
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
-- TOC entry 267 (class 1259 OID 57502088)
-- Dependencies: 14 268
-- Name: regime_trabalho_id_seq; Type: SEQUENCE; Schema: basico_dados_profissionais; Owner: -
--

CREATE SEQUENCE regime_trabalho_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4046 (class 0 OID 0)
-- Dependencies: 267
-- Name: regime_trabalho_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_dados_profissionais; Owner: -
--

ALTER SEQUENCE regime_trabalho_id_seq OWNED BY regime_trabalho.id;


--
-- TOC entry 270 (class 1259 OID 57502107)
-- Dependencies: 2714 2715 2716 2717 2718 2719 2720 14
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
-- TOC entry 269 (class 1259 OID 57502105)
-- Dependencies: 14 270
-- Name: tipo_vinculo_id_seq; Type: SEQUENCE; Schema: basico_dados_profissionais; Owner: -
--

CREATE SEQUENCE tipo_vinculo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4047 (class 0 OID 0)
-- Dependencies: 269
-- Name: tipo_vinculo_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_dados_profissionais; Owner: -
--

ALTER SEQUENCE tipo_vinculo_id_seq OWNED BY tipo_vinculo.id;


--
-- TOC entry 266 (class 1259 OID 57502074)
-- Dependencies: 2701 2702 2703 2704 2705 14
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
-- TOC entry 265 (class 1259 OID 57502072)
-- Dependencies: 14 266
-- Name: vinculo_empregaticio_id_seq; Type: SEQUENCE; Schema: basico_dados_profissionais; Owner: -
--

CREATE SEQUENCE vinculo_empregaticio_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4048 (class 0 OID 0)
-- Dependencies: 265
-- Name: vinculo_empregaticio_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_dados_profissionais; Owner: -
--

ALTER SEQUENCE vinculo_empregaticio_id_seq OWNED BY vinculo_empregaticio.id;


SET search_path = basico_decorator, pg_catalog;

--
-- TOC entry 264 (class 1259 OID 57502058)
-- Dependencies: 2699 32
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
-- TOC entry 263 (class 1259 OID 57502056)
-- Dependencies: 32 264
-- Name: assoccl_include_id_seq; Type: SEQUENCE; Schema: basico_decorator; Owner: -
--

CREATE SEQUENCE assoccl_include_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4049 (class 0 OID 0)
-- Dependencies: 263
-- Name: assoccl_include_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_decorator; Owner: -
--

ALTER SEQUENCE assoccl_include_id_seq OWNED BY assoccl_include.id;


SET search_path = basico_form_assoccl_elem_grupo, pg_catalog;

--
-- TOC entry 262 (class 1259 OID 57502046)
-- Dependencies: 2697 26
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
-- TOC entry 261 (class 1259 OID 57502044)
-- Dependencies: 262 26
-- Name: assoccl_decorator_id_seq; Type: SEQUENCE; Schema: basico_form_assoccl_elem_grupo; Owner: -
--

CREATE SEQUENCE assoccl_decorator_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4050 (class 0 OID 0)
-- Dependencies: 261
-- Name: assoccl_decorator_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_form_assoccl_elem_grupo; Owner: -
--

ALTER SEQUENCE assoccl_decorator_id_seq OWNED BY assoccl_decorator.id;


SET search_path = basico_form_assoccl_elemento, pg_catalog;

--
-- TOC entry 252 (class 1259 OID 57501968)
-- Dependencies: 2679 2680 24
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
-- TOC entry 251 (class 1259 OID 57501966)
-- Dependencies: 24 252
-- Name: assoccl_decorator_id_seq; Type: SEQUENCE; Schema: basico_form_assoccl_elemento; Owner: -
--

CREATE SEQUENCE assoccl_decorator_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4051 (class 0 OID 0)
-- Dependencies: 251
-- Name: assoccl_decorator_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER SEQUENCE assoccl_decorator_id_seq OWNED BY assoccl_decorator.id;


--
-- TOC entry 260 (class 1259 OID 57502033)
-- Dependencies: 2694 2695 24
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
-- TOC entry 259 (class 1259 OID 57502031)
-- Dependencies: 24 260
-- Name: assoccl_evento_id_seq; Type: SEQUENCE; Schema: basico_form_assoccl_elemento; Owner: -
--

CREATE SEQUENCE assoccl_evento_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4052 (class 0 OID 0)
-- Dependencies: 259
-- Name: assoccl_evento_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER SEQUENCE assoccl_evento_id_seq OWNED BY assoccl_evento.id;


--
-- TOC entry 250 (class 1259 OID 57501953)
-- Dependencies: 2676 2677 24
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
-- TOC entry 249 (class 1259 OID 57501951)
-- Dependencies: 24 250
-- Name: assoccl_filter_id_seq; Type: SEQUENCE; Schema: basico_form_assoccl_elemento; Owner: -
--

CREATE SEQUENCE assoccl_filter_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4053 (class 0 OID 0)
-- Dependencies: 249
-- Name: assoccl_filter_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER SEQUENCE assoccl_filter_id_seq OWNED BY assoccl_filter.id;


--
-- TOC entry 258 (class 1259 OID 57502016)
-- Dependencies: 2691 2692 24
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
-- TOC entry 257 (class 1259 OID 57502014)
-- Dependencies: 24 258
-- Name: assoccl_include_id_seq; Type: SEQUENCE; Schema: basico_form_assoccl_elemento; Owner: -
--

CREATE SEQUENCE assoccl_include_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4054 (class 0 OID 0)
-- Dependencies: 257
-- Name: assoccl_include_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER SEQUENCE assoccl_include_id_seq OWNED BY assoccl_include.id;


--
-- TOC entry 256 (class 1259 OID 57502001)
-- Dependencies: 2688 2689 24
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
-- TOC entry 255 (class 1259 OID 57501999)
-- Dependencies: 24 256
-- Name: assoccl_validator_id_seq; Type: SEQUENCE; Schema: basico_form_assoccl_elemento; Owner: -
--

CREATE SEQUENCE assoccl_validator_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4055 (class 0 OID 0)
-- Dependencies: 255
-- Name: assoccl_validator_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER SEQUENCE assoccl_validator_id_seq OWNED BY assoccl_validator.id;


--
-- TOC entry 254 (class 1259 OID 57501985)
-- Dependencies: 2682 2683 2684 2685 2686 24
-- Name: grupo; Type: TABLE; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE TABLE grupo (
    id integer NOT NULL,
    nome character varying(200) NOT NULL,
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
-- TOC entry 253 (class 1259 OID 57501983)
-- Dependencies: 254 24
-- Name: grupo_id_seq; Type: SEQUENCE; Schema: basico_form_assoccl_elemento; Owner: -
--

CREATE SEQUENCE grupo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4056 (class 0 OID 0)
-- Dependencies: 253
-- Name: grupo_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER SEQUENCE grupo_id_seq OWNED BY grupo.id;


SET search_path = basico_form_elemento, pg_catalog;

--
-- TOC entry 248 (class 1259 OID 57501939)
-- Dependencies: 2674 37
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
-- TOC entry 247 (class 1259 OID 57501937)
-- Dependencies: 248 37
-- Name: assoccl_evento_id_seq; Type: SEQUENCE; Schema: basico_form_elemento; Owner: -
--

CREATE SEQUENCE assoccl_evento_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4057 (class 0 OID 0)
-- Dependencies: 247
-- Name: assoccl_evento_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_form_elemento; Owner: -
--

ALTER SEQUENCE assoccl_evento_id_seq OWNED BY assoccl_evento.id;


SET search_path = basico_formulario, pg_catalog;

--
-- TOC entry 232 (class 1259 OID 57501815)
-- Dependencies: 2642 23
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
-- TOC entry 231 (class 1259 OID 57501813)
-- Dependencies: 23 232
-- Name: assoccl_decorator_id_seq; Type: SEQUENCE; Schema: basico_formulario; Owner: -
--

CREATE SEQUENCE assoccl_decorator_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4058 (class 0 OID 0)
-- Dependencies: 231
-- Name: assoccl_decorator_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_formulario; Owner: -
--

ALTER SEQUENCE assoccl_decorator_id_seq OWNED BY assoccl_decorator.id;


--
-- TOC entry 246 (class 1259 OID 57501921)
-- Dependencies: 2668 2669 2670 2671 2672 23
-- Name: assoccl_elemento; Type: TABLE; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE TABLE assoccl_elemento (
    id integer NOT NULL,
    id_formulario integer NOT NULL,
    id_elemento integer NOT NULL,
    id_ajuda integer,
    id_grupo integer,
    id_mascara integer,
    constante_textual_label character varying(200),
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
-- TOC entry 245 (class 1259 OID 57501919)
-- Dependencies: 246 23
-- Name: assoccl_elemento_id_seq; Type: SEQUENCE; Schema: basico_formulario; Owner: -
--

CREATE SEQUENCE assoccl_elemento_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4059 (class 0 OID 0)
-- Dependencies: 245
-- Name: assoccl_elemento_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_formulario; Owner: -
--

ALTER SEQUENCE assoccl_elemento_id_seq OWNED BY assoccl_elemento.id;


--
-- TOC entry 244 (class 1259 OID 57501907)
-- Dependencies: 2666 23
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
-- TOC entry 243 (class 1259 OID 57501905)
-- Dependencies: 23 244
-- Name: assoccl_evento_id_seq; Type: SEQUENCE; Schema: basico_formulario; Owner: -
--

CREATE SEQUENCE assoccl_evento_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4060 (class 0 OID 0)
-- Dependencies: 243
-- Name: assoccl_evento_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_formulario; Owner: -
--

ALTER SEQUENCE assoccl_evento_id_seq OWNED BY assoccl_evento.id;


--
-- TOC entry 242 (class 1259 OID 57501891)
-- Dependencies: 2664 23
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
-- TOC entry 241 (class 1259 OID 57501889)
-- Dependencies: 242 23
-- Name: assoccl_include_id_seq; Type: SEQUENCE; Schema: basico_formulario; Owner: -
--

CREATE SEQUENCE assoccl_include_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4061 (class 0 OID 0)
-- Dependencies: 241
-- Name: assoccl_include_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_formulario; Owner: -
--

ALTER SEQUENCE assoccl_include_id_seq OWNED BY assoccl_include.id;


--
-- TOC entry 230 (class 1259 OID 57501803)
-- Dependencies: 2640 23
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
-- TOC entry 229 (class 1259 OID 57501801)
-- Dependencies: 23 230
-- Name: assoccl_modulo_id_seq; Type: SEQUENCE; Schema: basico_formulario; Owner: -
--

CREATE SEQUENCE assoccl_modulo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4062 (class 0 OID 0)
-- Dependencies: 229
-- Name: assoccl_modulo_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_formulario; Owner: -
--

ALTER SEQUENCE assoccl_modulo_id_seq OWNED BY assoccl_modulo.id;


--
-- TOC entry 238 (class 1259 OID 57501863)
-- Dependencies: 2658 23
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
-- TOC entry 237 (class 1259 OID 57501861)
-- Dependencies: 23 238
-- Name: assoccl_template_id_seq; Type: SEQUENCE; Schema: basico_formulario; Owner: -
--

CREATE SEQUENCE assoccl_template_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4063 (class 0 OID 0)
-- Dependencies: 237
-- Name: assoccl_template_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_formulario; Owner: -
--

ALTER SEQUENCE assoccl_template_id_seq OWNED BY assoccl_template.id;


--
-- TOC entry 236 (class 1259 OID 57501847)
-- Dependencies: 2652 2653 2654 2655 2656 23
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
-- TOC entry 235 (class 1259 OID 57501845)
-- Dependencies: 23 236
-- Name: decorator_id_seq; Type: SEQUENCE; Schema: basico_formulario; Owner: -
--

CREATE SEQUENCE decorator_id_seq
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4064 (class 0 OID 0)
-- Dependencies: 235
-- Name: decorator_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_formulario; Owner: -
--

ALTER SEQUENCE decorator_id_seq OWNED BY decorator.id;


--
-- TOC entry 234 (class 1259 OID 57501829)
-- Dependencies: 2644 2645 2646 2647 2648 2649 2650 23
-- Name: elemento; Type: TABLE; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE TABLE elemento (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    id_componente integer NOT NULL,
    id_ajuda integer,
    id_mascara integer,
    nome character varying(200) NOT NULL,
    constante_textual character varying(200),
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
-- TOC entry 233 (class 1259 OID 57501827)
-- Dependencies: 23 234
-- Name: elemento_id_seq; Type: SEQUENCE; Schema: basico_formulario; Owner: -
--

CREATE SEQUENCE elemento_id_seq
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4065 (class 0 OID 0)
-- Dependencies: 233
-- Name: elemento_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_formulario; Owner: -
--

ALTER SEQUENCE elemento_id_seq OWNED BY elemento.id;


--
-- TOC entry 240 (class 1259 OID 57501877)
-- Dependencies: 2660 2661 2662 23
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
-- TOC entry 239 (class 1259 OID 57501875)
-- Dependencies: 240 23
-- Name: rascunho_id_seq; Type: SEQUENCE; Schema: basico_formulario; Owner: -
--

CREATE SEQUENCE rascunho_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4066 (class 0 OID 0)
-- Dependencies: 239
-- Name: rascunho_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_formulario; Owner: -
--

ALTER SEQUENCE rascunho_id_seq OWNED BY rascunho.id;


SET search_path = basico_formulario_elemento, pg_catalog;

--
-- TOC entry 224 (class 1259 OID 57501759)
-- Dependencies: 2634 25
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
-- TOC entry 223 (class 1259 OID 57501757)
-- Dependencies: 25 224
-- Name: assoccl_decorator_id_seq; Type: SEQUENCE; Schema: basico_formulario_elemento; Owner: -
--

CREATE SEQUENCE assoccl_decorator_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4067 (class 0 OID 0)
-- Dependencies: 223
-- Name: assoccl_decorator_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_formulario_elemento; Owner: -
--

ALTER SEQUENCE assoccl_decorator_id_seq OWNED BY assoccl_decorator.id;


--
-- TOC entry 228 (class 1259 OID 57501789)
-- Dependencies: 2638 25
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
-- TOC entry 227 (class 1259 OID 57501787)
-- Dependencies: 228 25
-- Name: assoccl_filter_id_seq; Type: SEQUENCE; Schema: basico_formulario_elemento; Owner: -
--

CREATE SEQUENCE assoccl_filter_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4068 (class 0 OID 0)
-- Dependencies: 227
-- Name: assoccl_filter_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_formulario_elemento; Owner: -
--

ALTER SEQUENCE assoccl_filter_id_seq OWNED BY assoccl_filter.id;


--
-- TOC entry 226 (class 1259 OID 57501775)
-- Dependencies: 2636 25
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
-- TOC entry 225 (class 1259 OID 57501773)
-- Dependencies: 25 226
-- Name: assoccl_validator_id_seq; Type: SEQUENCE; Schema: basico_formulario_elemento; Owner: -
--

CREATE SEQUENCE assoccl_validator_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4069 (class 0 OID 0)
-- Dependencies: 225
-- Name: assoccl_validator_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_formulario_elemento; Owner: -
--

ALTER SEQUENCE assoccl_validator_id_seq OWNED BY assoccl_validator.id;


SET search_path = basico_formulario_rascunho, pg_catalog;

--
-- TOC entry 222 (class 1259 OID 57501746)
-- Dependencies: 2631 2632 38
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
-- TOC entry 221 (class 1259 OID 57501744)
-- Dependencies: 222 38
-- Name: assocag_grupo_id_seq; Type: SEQUENCE; Schema: basico_formulario_rascunho; Owner: -
--

CREATE SEQUENCE assocag_grupo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4070 (class 0 OID 0)
-- Dependencies: 221
-- Name: assocag_grupo_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_formulario_rascunho; Owner: -
--

ALTER SEQUENCE assocag_grupo_id_seq OWNED BY assocag_grupo.id;


SET search_path = basico_localizacao, pg_catalog;

--
-- TOC entry 212 (class 1259 OID 57501667)
-- Dependencies: 2608 2609 2610 13
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
-- TOC entry 211 (class 1259 OID 57501665)
-- Dependencies: 13 212
-- Name: assoc_bairro_id_seq; Type: SEQUENCE; Schema: basico_localizacao; Owner: -
--

CREATE SEQUENCE assoc_bairro_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4071 (class 0 OID 0)
-- Dependencies: 211
-- Name: assoc_bairro_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_localizacao; Owner: -
--

ALTER SEQUENCE assoc_bairro_id_seq OWNED BY assoc_bairro.id;


--
-- TOC entry 216 (class 1259 OID 57501697)
-- Dependencies: 2616 2617 2618 2619 13
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
-- TOC entry 215 (class 1259 OID 57501695)
-- Dependencies: 216 13
-- Name: assoc_estado_id_seq; Type: SEQUENCE; Schema: basico_localizacao; Owner: -
--

CREATE SEQUENCE assoc_estado_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4072 (class 0 OID 0)
-- Dependencies: 215
-- Name: assoc_estado_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_localizacao; Owner: -
--

ALTER SEQUENCE assoc_estado_id_seq OWNED BY assoc_estado.id;


--
-- TOC entry 210 (class 1259 OID 57501653)
-- Dependencies: 2604 2605 2606 13
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
-- TOC entry 209 (class 1259 OID 57501651)
-- Dependencies: 13 210
-- Name: assoc_logradouro_id_seq; Type: SEQUENCE; Schema: basico_localizacao; Owner: -
--

CREATE SEQUENCE assoc_logradouro_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4073 (class 0 OID 0)
-- Dependencies: 209
-- Name: assoc_logradouro_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_localizacao; Owner: -
--

ALTER SEQUENCE assoc_logradouro_id_seq OWNED BY assoc_logradouro.id;


--
-- TOC entry 208 (class 1259 OID 57501636)
-- Dependencies: 2599 2600 2601 2602 13
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
-- TOC entry 207 (class 1259 OID 57501634)
-- Dependencies: 208 13
-- Name: assoc_municipio_id_seq; Type: SEQUENCE; Schema: basico_localizacao; Owner: -
--

CREATE SEQUENCE assoc_municipio_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4074 (class 0 OID 0)
-- Dependencies: 207
-- Name: assoc_municipio_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_localizacao; Owner: -
--

ALTER SEQUENCE assoc_municipio_id_seq OWNED BY assoc_municipio.id;


--
-- TOC entry 214 (class 1259 OID 57501681)
-- Dependencies: 2612 2613 2614 13
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
-- TOC entry 213 (class 1259 OID 57501679)
-- Dependencies: 13 214
-- Name: codigo_postal_id_seq; Type: SEQUENCE; Schema: basico_localizacao; Owner: -
--

CREATE SEQUENCE codigo_postal_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4075 (class 0 OID 0)
-- Dependencies: 213
-- Name: codigo_postal_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_localizacao; Owner: -
--

ALTER SEQUENCE codigo_postal_id_seq OWNED BY codigo_postal.id;


--
-- TOC entry 220 (class 1259 OID 57501731)
-- Dependencies: 2626 2627 2628 2629 13
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
-- TOC entry 219 (class 1259 OID 57501729)
-- Dependencies: 220 13
-- Name: endereco_id_seq; Type: SEQUENCE; Schema: basico_localizacao; Owner: -
--

CREATE SEQUENCE endereco_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4076 (class 0 OID 0)
-- Dependencies: 219
-- Name: endereco_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_localizacao; Owner: -
--

ALTER SEQUENCE endereco_id_seq OWNED BY endereco.id;


--
-- TOC entry 218 (class 1259 OID 57501714)
-- Dependencies: 2621 2622 2623 2624 13
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
-- TOC entry 217 (class 1259 OID 57501712)
-- Dependencies: 13 218
-- Name: pais_id_seq; Type: SEQUENCE; Schema: basico_localizacao; Owner: -
--

CREATE SEQUENCE pais_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4077 (class 0 OID 0)
-- Dependencies: 217
-- Name: pais_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_localizacao; Owner: -
--

ALTER SEQUENCE pais_id_seq OWNED BY pais.id;


SET search_path = basico_mascara, pg_catalog;

--
-- TOC entry 206 (class 1259 OID 57501620)
-- Dependencies: 2597 34
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
-- TOC entry 205 (class 1259 OID 57501618)
-- Dependencies: 206 34
-- Name: assoccl_include_id_seq; Type: SEQUENCE; Schema: basico_mascara; Owner: -
--

CREATE SEQUENCE assoccl_include_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4078 (class 0 OID 0)
-- Dependencies: 205
-- Name: assoccl_include_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_mascara; Owner: -
--

ALTER SEQUENCE assoccl_include_id_seq OWNED BY assoccl_include.id;


SET search_path = basico_mensagem, pg_catalog;

--
-- TOC entry 204 (class 1259 OID 57501607)
-- Dependencies: 2594 2595 6
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
-- TOC entry 203 (class 1259 OID 57501605)
-- Dependencies: 204 6
-- Name: assoc_email_id_seq; Type: SEQUENCE; Schema: basico_mensagem; Owner: -
--

CREATE SEQUENCE assoc_email_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4079 (class 0 OID 0)
-- Dependencies: 203
-- Name: assoc_email_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_mensagem; Owner: -
--

ALTER SEQUENCE assoc_email_id_seq OWNED BY assoc_email.id;


--
-- TOC entry 202 (class 1259 OID 57501594)
-- Dependencies: 2591 2592 6
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
-- TOC entry 201 (class 1259 OID 57501592)
-- Dependencies: 6 202
-- Name: assoccl_assoccl_pessoa_perfil_id_seq; Type: SEQUENCE; Schema: basico_mensagem; Owner: -
--

CREATE SEQUENCE assoccl_assoccl_pessoa_perfil_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4080 (class 0 OID 0)
-- Dependencies: 201
-- Name: assoccl_assoccl_pessoa_perfil_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_mensagem; Owner: -
--

ALTER SEQUENCE assoccl_assoccl_pessoa_perfil_id_seq OWNED BY assoccl_assoccl_pessoa_perfil.id;


SET search_path = basico_mensagem_assoc_email, pg_catalog;

--
-- TOC entry 200 (class 1259 OID 57501580)
-- Dependencies: 2589 29
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
-- TOC entry 199 (class 1259 OID 57501578)
-- Dependencies: 200 29
-- Name: assoccl_arquivo_id_seq; Type: SEQUENCE; Schema: basico_mensagem_assoc_email; Owner: -
--

CREATE SEQUENCE assoccl_arquivo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4081 (class 0 OID 0)
-- Dependencies: 199
-- Name: assoccl_arquivo_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_mensagem_assoc_email; Owner: -
--

ALTER SEQUENCE assoccl_arquivo_id_seq OWNED BY assoccl_arquivo.id;


SET search_path = basico_metodo_validacao, pg_catalog;

--
-- TOC entry 198 (class 1259 OID 57501566)
-- Dependencies: 2587 30
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
-- TOC entry 197 (class 1259 OID 57501564)
-- Dependencies: 198 30
-- Name: assoccl_include_id_seq; Type: SEQUENCE; Schema: basico_metodo_validacao; Owner: -
--

CREATE SEQUENCE assoccl_include_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4082 (class 0 OID 0)
-- Dependencies: 197
-- Name: assoccl_include_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_metodo_validacao; Owner: -
--

ALTER SEQUENCE assoccl_include_id_seq OWNED BY assoccl_include.id;


SET search_path = basico_output, pg_catalog;

--
-- TOC entry 196 (class 1259 OID 57501550)
-- Dependencies: 2585 35
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
-- TOC entry 195 (class 1259 OID 57501548)
-- Dependencies: 35 196
-- Name: assoccl_include_id_seq; Type: SEQUENCE; Schema: basico_output; Owner: -
--

CREATE SEQUENCE assoccl_include_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4083 (class 0 OID 0)
-- Dependencies: 195
-- Name: assoccl_include_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_output; Owner: -
--

ALTER SEQUENCE assoccl_include_id_seq OWNED BY assoccl_include.id;


SET search_path = basico_perfil, pg_catalog;

--
-- TOC entry 194 (class 1259 OID 57501536)
-- Dependencies: 2583 21
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
-- TOC entry 193 (class 1259 OID 57501534)
-- Dependencies: 21 194
-- Name: assoccl_modulo_id_seq; Type: SEQUENCE; Schema: basico_perfil; Owner: -
--

CREATE SEQUENCE assoccl_modulo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4084 (class 0 OID 0)
-- Dependencies: 193
-- Name: assoccl_modulo_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_perfil; Owner: -
--

ALTER SEQUENCE assoccl_modulo_id_seq OWNED BY assoccl_modulo.id;


SET search_path = basico_pessoa, pg_catalog;

--
-- TOC entry 188 (class 1259 OID 57501493)
-- Dependencies: 2572 2573 2574 9
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
-- TOC entry 187 (class 1259 OID 57501491)
-- Dependencies: 9 188
-- Name: assoc_dados_id_seq; Type: SEQUENCE; Schema: basico_pessoa; Owner: -
--

CREATE SEQUENCE assoc_dados_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4085 (class 0 OID 0)
-- Dependencies: 187
-- Name: assoc_dados_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_pessoa; Owner: -
--

ALTER SEQUENCE assoc_dados_id_seq OWNED BY assoc_dados.id;


--
-- TOC entry 190 (class 1259 OID 57501507)
-- Dependencies: 2576 2577 2578 9
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
-- TOC entry 189 (class 1259 OID 57501505)
-- Dependencies: 9 190
-- Name: assoccl_perfil_id_seq; Type: SEQUENCE; Schema: basico_pessoa; Owner: -
--

CREATE SEQUENCE assoccl_perfil_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4086 (class 0 OID 0)
-- Dependencies: 189
-- Name: assoccl_perfil_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_pessoa; Owner: -
--

ALTER SEQUENCE assoccl_perfil_id_seq OWNED BY assoccl_perfil.id;


--
-- TOC entry 192 (class 1259 OID 57501523)
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
-- TOC entry 191 (class 1259 OID 57501521)
-- Dependencies: 192 9
-- Name: assoccl_vinculo_profissional_id_seq; Type: SEQUENCE; Schema: basico_pessoa; Owner: -
--

CREATE SEQUENCE assoccl_vinculo_profissional_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4087 (class 0 OID 0)
-- Dependencies: 191
-- Name: assoccl_vinculo_profissional_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_pessoa; Owner: -
--

ALTER SEQUENCE assoccl_vinculo_profissional_id_seq OWNED BY assoccl_vinculo_profissional.id;


SET search_path = basico_pessoa_juridica, pg_catalog;

--
-- TOC entry 176 (class 1259 OID 57501401)
-- Dependencies: 2548 2549 2550 16
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
-- TOC entry 175 (class 1259 OID 57501399)
-- Dependencies: 176 16
-- Name: assoc_banco_id_seq; Type: SEQUENCE; Schema: basico_pessoa_juridica; Owner: -
--

CREATE SEQUENCE assoc_banco_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4088 (class 0 OID 0)
-- Dependencies: 175
-- Name: assoc_banco_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_pessoa_juridica; Owner: -
--

ALTER SEQUENCE assoc_banco_id_seq OWNED BY assoc_banco.id;


--
-- TOC entry 180 (class 1259 OID 57501432)
-- Dependencies: 2557 2558 16
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
-- TOC entry 179 (class 1259 OID 57501430)
-- Dependencies: 16 180
-- Name: assoc_dados_id_seq; Type: SEQUENCE; Schema: basico_pessoa_juridica; Owner: -
--

CREATE SEQUENCE assoc_dados_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4089 (class 0 OID 0)
-- Dependencies: 179
-- Name: assoc_dados_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_pessoa_juridica; Owner: -
--

ALTER SEQUENCE assoc_dados_id_seq OWNED BY assoc_dados.id;


--
-- TOC entry 168 (class 1259 OID 57501342)
-- Dependencies: 2535 16
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
-- TOC entry 167 (class 1259 OID 57501340)
-- Dependencies: 168 16
-- Name: assocag_incubadora_id_seq; Type: SEQUENCE; Schema: basico_pessoa_juridica; Owner: -
--

CREATE SEQUENCE assocag_incubadora_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4090 (class 0 OID 0)
-- Dependencies: 167
-- Name: assocag_incubadora_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_pessoa_juridica; Owner: -
--

ALTER SEQUENCE assocag_incubadora_id_seq OWNED BY assocag_incubadora.id;


--
-- TOC entry 178 (class 1259 OID 57501415)
-- Dependencies: 2552 2553 2554 2555 16
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
-- TOC entry 177 (class 1259 OID 57501413)
-- Dependencies: 178 16
-- Name: assocag_parceria_id_seq; Type: SEQUENCE; Schema: basico_pessoa_juridica; Owner: -
--

CREATE SEQUENCE assocag_parceria_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4091 (class 0 OID 0)
-- Dependencies: 177
-- Name: assocag_parceria_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_pessoa_juridica; Owner: -
--

ALTER SEQUENCE assocag_parceria_id_seq OWNED BY assocag_parceria.id;


--
-- TOC entry 170 (class 1259 OID 57501356)
-- Dependencies: 2537 16
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
-- TOC entry 169 (class 1259 OID 57501354)
-- Dependencies: 16 170
-- Name: assoccl_area_economia_id_seq; Type: SEQUENCE; Schema: basico_pessoa_juridica; Owner: -
--

CREATE SEQUENCE assoccl_area_economia_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4092 (class 0 OID 0)
-- Dependencies: 169
-- Name: assoccl_area_economia_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_pessoa_juridica; Owner: -
--

ALTER SEQUENCE assoccl_area_economia_id_seq OWNED BY assoccl_area_economia.id;


--
-- TOC entry 184 (class 1259 OID 57501460)
-- Dependencies: 2563 2564 16
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
-- TOC entry 183 (class 1259 OID 57501458)
-- Dependencies: 184 16
-- Name: assoccl_capital_social_id_seq; Type: SEQUENCE; Schema: basico_pessoa_juridica; Owner: -
--

CREATE SEQUENCE assoccl_capital_social_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4093 (class 0 OID 0)
-- Dependencies: 183
-- Name: assoccl_capital_social_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_pessoa_juridica; Owner: -
--

ALTER SEQUENCE assoccl_capital_social_id_seq OWNED BY assoccl_capital_social.id;


--
-- TOC entry 172 (class 1259 OID 57501370)
-- Dependencies: 2539 2540 16
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
-- TOC entry 171 (class 1259 OID 57501368)
-- Dependencies: 16 172
-- Name: assoccl_faturamento_id_seq; Type: SEQUENCE; Schema: basico_pessoa_juridica; Owner: -
--

CREATE SEQUENCE assoccl_faturamento_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4094 (class 0 OID 0)
-- Dependencies: 171
-- Name: assoccl_faturamento_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_pessoa_juridica; Owner: -
--

ALTER SEQUENCE assoccl_faturamento_id_seq OWNED BY assoccl_faturamento.id;


--
-- TOC entry 182 (class 1259 OID 57501445)
-- Dependencies: 2560 2561 16
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
-- TOC entry 181 (class 1259 OID 57501443)
-- Dependencies: 182 16
-- Name: assoccl_quadro_funcionario_id_seq; Type: SEQUENCE; Schema: basico_pessoa_juridica; Owner: -
--

CREATE SEQUENCE assoccl_quadro_funcionario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4095 (class 0 OID 0)
-- Dependencies: 181
-- Name: assoccl_quadro_funcionario_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_pessoa_juridica; Owner: -
--

ALTER SEQUENCE assoccl_quadro_funcionario_id_seq OWNED BY assoccl_quadro_funcionario.id;


--
-- TOC entry 174 (class 1259 OID 57501385)
-- Dependencies: 2542 2543 2544 2545 2546 16
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
-- TOC entry 173 (class 1259 OID 57501383)
-- Dependencies: 16 174
-- Name: capital_social_id_seq; Type: SEQUENCE; Schema: basico_pessoa_juridica; Owner: -
--

CREATE SEQUENCE capital_social_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4096 (class 0 OID 0)
-- Dependencies: 173
-- Name: capital_social_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_pessoa_juridica; Owner: -
--

ALTER SEQUENCE capital_social_id_seq OWNED BY capital_social.id;


--
-- TOC entry 186 (class 1259 OID 57501475)
-- Dependencies: 2566 2567 2568 2569 2570 16
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
-- TOC entry 185 (class 1259 OID 57501473)
-- Dependencies: 16 186
-- Name: natureza_id_seq; Type: SEQUENCE; Schema: basico_pessoa_juridica; Owner: -
--

CREATE SEQUENCE natureza_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4097 (class 0 OID 0)
-- Dependencies: 185
-- Name: natureza_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_pessoa_juridica; Owner: -
--

ALTER SEQUENCE natureza_id_seq OWNED BY natureza.id;


SET search_path = basico_sequencia, pg_catalog;

--
-- TOC entry 166 (class 1259 OID 57501324)
-- Dependencies: 2529 2530 2531 2532 2533 39
-- Name: assocsq_acao_aplicacao; Type: TABLE; Schema: basico_sequencia; Owner: -; Tablespace: 
--

CREATE TABLE assocsq_acao_aplicacao (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    id_sequencia integer NOT NULL,
    id_acao_aplicacao integer NOT NULL,
    nome character varying(200) NOT NULL,
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
-- TOC entry 165 (class 1259 OID 57501322)
-- Dependencies: 166 39
-- Name: assocsq_acao_aplicacao_id_seq; Type: SEQUENCE; Schema: basico_sequencia; Owner: -
--

CREATE SEQUENCE assocsq_acao_aplicacao_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4098 (class 0 OID 0)
-- Dependencies: 165
-- Name: assocsq_acao_aplicacao_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_sequencia; Owner: -
--

ALTER SEQUENCE assocsq_acao_aplicacao_id_seq OWNED BY assocsq_acao_aplicacao.id;


SET search_path = basico_template, pg_catalog;

--
-- TOC entry 162 (class 1259 OID 57501294)
-- Dependencies: 2525 31
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
-- TOC entry 161 (class 1259 OID 57501292)
-- Dependencies: 162 31
-- Name: assoccl_include_id_seq; Type: SEQUENCE; Schema: basico_template; Owner: -
--

CREATE SEQUENCE assoccl_include_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4099 (class 0 OID 0)
-- Dependencies: 161
-- Name: assoccl_include_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_template; Owner: -
--

ALTER SEQUENCE assoccl_include_id_seq OWNED BY assoccl_include.id;


--
-- TOC entry 164 (class 1259 OID 57501310)
-- Dependencies: 2527 31
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
-- TOC entry 163 (class 1259 OID 57501308)
-- Dependencies: 164 31
-- Name: assoccl_output_id_seq; Type: SEQUENCE; Schema: basico_template; Owner: -
--

CREATE SEQUENCE assoccl_output_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4100 (class 0 OID 0)
-- Dependencies: 163
-- Name: assoccl_output_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_template; Owner: -
--

ALTER SEQUENCE assoccl_output_id_seq OWNED BY assoccl_output.id;


SET search_path = basico, pg_catalog;

--
-- TOC entry 2935 (class 2604 OID 57502782)
-- Dependencies: 351 352 352
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE acao_aplicacao ALTER COLUMN id SET DEFAULT nextval('acao_aplicacao_id_seq'::regclass);


--
-- TOC entry 2814 (class 2604 OID 57502475)
-- Dependencies: 316 315 316
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ajuda ALTER COLUMN id SET DEFAULT nextval('ajuda_id_seq'::regclass);


--
-- TOC entry 2883 (class 2604 OID 57502648)
-- Dependencies: 335 336 336
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE area_conhecimento ALTER COLUMN id SET DEFAULT nextval('area_conhecimento_id_seq'::regclass);


--
-- TOC entry 2841 (class 2604 OID 57502542)
-- Dependencies: 324 323 324
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE area_economia ALTER COLUMN id SET DEFAULT nextval('area_economia_id_seq'::regclass);


--
-- TOC entry 2806 (class 2604 OID 57502457)
-- Dependencies: 313 314 314
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE arquivo ALTER COLUMN id SET DEFAULT nextval('arquivo_id_seq'::regclass);


--
-- TOC entry 2941 (class 2604 OID 57502800)
-- Dependencies: 354 353 354
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE categoria ALTER COLUMN id SET DEFAULT nextval('categoria_id_seq'::regclass);


--
-- TOC entry 2796 (class 2604 OID 57502423)
-- Dependencies: 310 309 310
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE codigo_acesso ALTER COLUMN id SET DEFAULT nextval('codigo_acesso_id_seq'::regclass);


--
-- TOC entry 2990 (class 2604 OID 57502941)
-- Dependencies: 371 372 372
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE componente ALTER COLUMN id SET DEFAULT nextval('componente_id_seq'::regclass);


--
-- TOC entry 2981 (class 2604 OID 57502910)
-- Dependencies: 367 368 368
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE dados_bancarios ALTER COLUMN id SET DEFAULT nextval('dados_bancarios_id_seq'::regclass);


--
-- TOC entry 2972 (class 2604 OID 57502881)
-- Dependencies: 363 364 364
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE dados_biometricos ALTER COLUMN id SET DEFAULT nextval('dados_biometricos_id_seq'::regclass);


--
-- TOC entry 2801 (class 2604 OID 57502440)
-- Dependencies: 312 311 312
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE dicionario_expressao ALTER COLUMN id SET DEFAULT nextval('dicionario_expressao_id_seq'::regclass);


--
-- TOC entry 2858 (class 2604 OID 57502581)
-- Dependencies: 327 328 328
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE documento_identificacao ALTER COLUMN id SET DEFAULT nextval('documento_identificacao_id_seq'::regclass);


--
-- TOC entry 2996 (class 2604 OID 57502957)
-- Dependencies: 374 373 374
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE evento ALTER COLUMN id SET DEFAULT nextval('evento_id_seq'::regclass);


--
-- TOC entry 2829 (class 2604 OID 57502510)
-- Dependencies: 319 320 320
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE filter ALTER COLUMN id SET DEFAULT nextval('filter_id_seq'::regclass);


--
-- TOC entry 2862 (class 2604 OID 57502597)
-- Dependencies: 329 330 330
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE formulario ALTER COLUMN id SET DEFAULT nextval('formulario_id_seq'::regclass);


--
-- TOC entry 2901 (class 2604 OID 57502696)
-- Dependencies: 342 341 342
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE include ALTER COLUMN id SET DEFAULT nextval('include_id_seq'::regclass);


--
-- TOC entry 2922 (class 2604 OID 57502747)
-- Dependencies: 347 348 348
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE link ALTER COLUMN id SET DEFAULT nextval('link_id_seq'::regclass);


--
-- TOC entry 2890 (class 2604 OID 57502665)
-- Dependencies: 338 337 338
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE log ALTER COLUMN id SET DEFAULT nextval('log_id_seq'::regclass);


--
-- TOC entry 2849 (class 2604 OID 57502560)
-- Dependencies: 325 326 326
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE login ALTER COLUMN id SET DEFAULT nextval('login_id_seq'::regclass);


--
-- TOC entry 2907 (class 2604 OID 57502712)
-- Dependencies: 343 344 344
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE mascara ALTER COLUMN id SET DEFAULT nextval('mascara_id_seq'::regclass);


--
-- TOC entry 2891 (class 2604 OID 57502676)
-- Dependencies: 340 339 340
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE mensagem ALTER COLUMN id SET DEFAULT nextval('mensagem_id_seq'::regclass);


--
-- TOC entry 2929 (class 2604 OID 57502766)
-- Dependencies: 350 349 350
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE metodo_validacao ALTER COLUMN id SET DEFAULT nextval('metodo_validacao_id_seq'::regclass);


--
-- TOC entry 2962 (class 2604 OID 57502851)
-- Dependencies: 359 360 360
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE modulo ALTER COLUMN id SET DEFAULT nextval('modulo_id_seq'::regclass);


--
-- TOC entry 2956 (class 2604 OID 57502835)
-- Dependencies: 358 357 358
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE output ALTER COLUMN id SET DEFAULT nextval('output_id_seq'::regclass);


--
-- TOC entry 2876 (class 2604 OID 57502631)
-- Dependencies: 333 334 334
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE perfil ALTER COLUMN id SET DEFAULT nextval('perfil_id_seq'::regclass);


--
-- TOC entry 2969 (class 2604 OID 57502868)
-- Dependencies: 362 361 362
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE pessoa ALTER COLUMN id SET DEFAULT nextval('pessoa_id_seq'::regclass);


--
-- TOC entry 2976 (class 2604 OID 57502895)
-- Dependencies: 366 365 366
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE pessoa_juridica ALTER COLUMN id SET DEFAULT nextval('pessoa_juridica_id_seq'::regclass);


--
-- TOC entry 2823 (class 2604 OID 57502494)
-- Dependencies: 317 318 318
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE produto ALTER COLUMN id SET DEFAULT nextval('produto_id_seq'::regclass);


--
-- TOC entry 2950 (class 2604 OID 57502819)
-- Dependencies: 356 355 356
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE profissao ALTER COLUMN id SET DEFAULT nextval('profissao_id_seq'::regclass);


--
-- TOC entry 2835 (class 2604 OID 57502526)
-- Dependencies: 322 321 322
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE sequencia ALTER COLUMN id SET DEFAULT nextval('sequencia_id_seq'::regclass);


--
-- TOC entry 2870 (class 2604 OID 57502615)
-- Dependencies: 331 332 332
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE template ALTER COLUMN id SET DEFAULT nextval('template_id_seq'::regclass);


--
-- TOC entry 2913 (class 2604 OID 57502728)
-- Dependencies: 346 345 346
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE tipo_categoria ALTER COLUMN id SET DEFAULT nextval('tipo_categoria_id_seq'::regclass);


--
-- TOC entry 2793 (class 2604 OID 57502410)
-- Dependencies: 308 307 308
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE token ALTER COLUMN id SET DEFAULT nextval('token_id_seq'::regclass);


--
-- TOC entry 2984 (class 2604 OID 57502925)
-- Dependencies: 369 370 370
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE validator ALTER COLUMN id SET DEFAULT nextval('validator_id_seq'::regclass);


SET search_path = basico_acao_aplic_assoc_visao, pg_catalog;

--
-- TOC entry 2791 (class 2604 OID 57502398)
-- Dependencies: 306 305 306
-- Name: id; Type: DEFAULT; Schema: basico_acao_aplic_assoc_visao; Owner: -
--

ALTER TABLE assoccl_atrib_met_rec_post ALTER COLUMN id SET DEFAULT nextval('assoccl_atrib_met_rec_post_id_seq'::regclass);


--
-- TOC entry 2787 (class 2604 OID 57502382)
-- Dependencies: 304 303 304
-- Name: id; Type: DEFAULT; Schema: basico_acao_aplic_assoc_visao; Owner: -
--

ALTER TABLE atributo_metodo_recup_post ALTER COLUMN id SET DEFAULT nextval('atributo_metodo_recup_post_id_seq'::regclass);


SET search_path = basico_acao_aplicacao, pg_catalog;

--
-- TOC entry 2777 (class 2604 OID 57502350)
-- Dependencies: 299 300 300
-- Name: id; Type: DEFAULT; Schema: basico_acao_aplicacao; Owner: -
--

ALTER TABLE assoc_visao ALTER COLUMN id SET DEFAULT nextval('assoc_visao_id_seq'::regclass);


--
-- TOC entry 2785 (class 2604 OID 57502368)
-- Dependencies: 302 301 302
-- Name: id; Type: DEFAULT; Schema: basico_acao_aplicacao; Owner: -
--

ALTER TABLE assoccl_metodo_validacao ALTER COLUMN id SET DEFAULT nextval('assoccl_metodo_validacao_id_seq'::regclass);


--
-- TOC entry 2775 (class 2604 OID 57502336)
-- Dependencies: 298 297 298
-- Name: id; Type: DEFAULT; Schema: basico_acao_aplicacao; Owner: -
--

ALTER TABLE assoccl_perfil ALTER COLUMN id SET DEFAULT nextval('assoccl_perfil_id_seq'::regclass);


SET search_path = basico_ajuda, pg_catalog;

--
-- TOC entry 2773 (class 2604 OID 57502322)
-- Dependencies: 295 296 296
-- Name: id; Type: DEFAULT; Schema: basico_ajuda; Owner: -
--

ALTER TABLE assoccl_link ALTER COLUMN id SET DEFAULT nextval('assoccl_link_id_seq'::regclass);


SET search_path = basico_assoc_banco, pg_catalog;

--
-- TOC entry 2768 (class 2604 OID 57502307)
-- Dependencies: 293 294 294
-- Name: id; Type: DEFAULT; Schema: basico_assoc_banco; Owner: -
--

ALTER TABLE assoc_tipo_conta ALTER COLUMN id SET DEFAULT nextval('assoc_tipo_conta_id_seq'::regclass);


SET search_path = basico_assoc_chave_estrangeira, pg_catalog;

--
-- TOC entry 2766 (class 2604 OID 57502287)
-- Dependencies: 291 292 292
-- Name: id; Type: DEFAULT; Schema: basico_assoc_chave_estrangeira; Owner: -
--

ALTER TABLE relacao ALTER COLUMN id SET DEFAULT nextval('relacao_id_seq'::regclass);


SET search_path = basico_assoc_dados_profis, pg_catalog;

--
-- TOC entry 2764 (class 2604 OID 57502273)
-- Dependencies: 289 290 290
-- Name: id; Type: DEFAULT; Schema: basico_assoc_dados_profis; Owner: -
--

ALTER TABLE assoccl_area_conhecimento ALTER COLUMN id SET DEFAULT nextval('assoccl_area_conhecimento_id_seq'::regclass);


SET search_path = basico_assoccl_pessoa_perfil, pg_catalog;

--
-- TOC entry 2761 (class 2604 OID 57502260)
-- Dependencies: 287 288 288
-- Name: id; Type: DEFAULT; Schema: basico_assoccl_pessoa_perfil; Owner: -
--

ALTER TABLE assoc_dados ALTER COLUMN id SET DEFAULT nextval('assoc_dados_id_seq'::regclass);


SET search_path = basico_assocl_vinculo_profissional, pg_catalog;

--
-- TOC entry 2758 (class 2604 OID 57502247)
-- Dependencies: 286 285 286
-- Name: id; Type: DEFAULT; Schema: basico_assocl_vinculo_profissional; Owner: -
--

ALTER TABLE assoc_dados ALTER COLUMN id SET DEFAULT nextval('assoc_dados_id_seq'::regclass);


SET search_path = basico_categoria, pg_catalog;

--
-- TOC entry 2755 (class 2604 OID 57502232)
-- Dependencies: 284 283 284
-- Name: id; Type: DEFAULT; Schema: basico_categoria; Owner: -
--

ALTER TABLE assoc_chave_estrangeira ALTER COLUMN id SET DEFAULT nextval('assoc_chave_estrangeira_id_seq'::regclass);


SET search_path = basico_componente, pg_catalog;

--
-- TOC entry 2753 (class 2604 OID 57502216)
-- Dependencies: 282 281 282
-- Name: id; Type: DEFAULT; Schema: basico_componente; Owner: -
--

ALTER TABLE assoccl_include ALTER COLUMN id SET DEFAULT nextval('assoccl_include_id_seq'::regclass);


SET search_path = basico_contato, pg_catalog;

--
-- TOC entry 2745 (class 2604 OID 57502196)
-- Dependencies: 280 279 280
-- Name: id; Type: DEFAULT; Schema: basico_contato; Owner: -
--

ALTER TABLE email ALTER COLUMN id SET DEFAULT nextval('email_id_seq'::regclass);


--
-- TOC entry 2738 (class 2604 OID 57502177)
-- Dependencies: 277 278 278
-- Name: id; Type: DEFAULT; Schema: basico_contato; Owner: -
--

ALTER TABLE telefone ALTER COLUMN id SET DEFAULT nextval('telefone_id_seq'::regclass);


SET search_path = basico_cvc, pg_catalog;

--
-- TOC entry 2733 (class 2604 OID 57502160)
-- Dependencies: 275 276 276
-- Name: id; Type: DEFAULT; Schema: basico_cvc; Owner: -
--

ALTER TABLE cvc ALTER COLUMN id SET DEFAULT nextval('cvc_id_seq'::regclass);


SET search_path = basico_dados_academicos, pg_catalog;

--
-- TOC entry 2727 (class 2604 OID 57502144)
-- Dependencies: 274 273 274
-- Name: id; Type: DEFAULT; Schema: basico_dados_academicos; Owner: -
--

ALTER TABLE titulacao ALTER COLUMN id SET DEFAULT nextval('titulacao_id_seq'::regclass);


SET search_path = basico_dados_biometricos, pg_catalog;

--
-- TOC entry 2721 (class 2604 OID 57502128)
-- Dependencies: 271 272 272
-- Name: id; Type: DEFAULT; Schema: basico_dados_biometricos; Owner: -
--

ALTER TABLE tipo_sanguineo ALTER COLUMN id SET DEFAULT nextval('tipo_sanguineo_id_seq'::regclass);


SET search_path = basico_dados_profissionais, pg_catalog;

--
-- TOC entry 2706 (class 2604 OID 57502093)
-- Dependencies: 267 268 268
-- Name: id; Type: DEFAULT; Schema: basico_dados_profissionais; Owner: -
--

ALTER TABLE regime_trabalho ALTER COLUMN id SET DEFAULT nextval('regime_trabalho_id_seq'::regclass);


--
-- TOC entry 2713 (class 2604 OID 57502110)
-- Dependencies: 269 270 270
-- Name: id; Type: DEFAULT; Schema: basico_dados_profissionais; Owner: -
--

ALTER TABLE tipo_vinculo ALTER COLUMN id SET DEFAULT nextval('tipo_vinculo_id_seq'::regclass);


--
-- TOC entry 2700 (class 2604 OID 57502077)
-- Dependencies: 265 266 266
-- Name: id; Type: DEFAULT; Schema: basico_dados_profissionais; Owner: -
--

ALTER TABLE vinculo_empregaticio ALTER COLUMN id SET DEFAULT nextval('vinculo_empregaticio_id_seq'::regclass);


SET search_path = basico_decorator, pg_catalog;

--
-- TOC entry 2698 (class 2604 OID 57502061)
-- Dependencies: 263 264 264
-- Name: id; Type: DEFAULT; Schema: basico_decorator; Owner: -
--

ALTER TABLE assoccl_include ALTER COLUMN id SET DEFAULT nextval('assoccl_include_id_seq'::regclass);


SET search_path = basico_form_assoccl_elem_grupo, pg_catalog;

--
-- TOC entry 2696 (class 2604 OID 57502049)
-- Dependencies: 261 262 262
-- Name: id; Type: DEFAULT; Schema: basico_form_assoccl_elem_grupo; Owner: -
--

ALTER TABLE assoccl_decorator ALTER COLUMN id SET DEFAULT nextval('assoccl_decorator_id_seq'::regclass);


SET search_path = basico_form_assoccl_elemento, pg_catalog;

--
-- TOC entry 2678 (class 2604 OID 57501971)
-- Dependencies: 251 252 252
-- Name: id; Type: DEFAULT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE assoccl_decorator ALTER COLUMN id SET DEFAULT nextval('assoccl_decorator_id_seq'::regclass);


--
-- TOC entry 2693 (class 2604 OID 57502036)
-- Dependencies: 260 259 260
-- Name: id; Type: DEFAULT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE assoccl_evento ALTER COLUMN id SET DEFAULT nextval('assoccl_evento_id_seq'::regclass);


--
-- TOC entry 2675 (class 2604 OID 57501956)
-- Dependencies: 249 250 250
-- Name: id; Type: DEFAULT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE assoccl_filter ALTER COLUMN id SET DEFAULT nextval('assoccl_filter_id_seq'::regclass);


--
-- TOC entry 2690 (class 2604 OID 57502019)
-- Dependencies: 258 257 258
-- Name: id; Type: DEFAULT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE assoccl_include ALTER COLUMN id SET DEFAULT nextval('assoccl_include_id_seq'::regclass);


--
-- TOC entry 2687 (class 2604 OID 57502004)
-- Dependencies: 256 255 256
-- Name: id; Type: DEFAULT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE assoccl_validator ALTER COLUMN id SET DEFAULT nextval('assoccl_validator_id_seq'::regclass);


--
-- TOC entry 2681 (class 2604 OID 57501988)
-- Dependencies: 254 253 254
-- Name: id; Type: DEFAULT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE grupo ALTER COLUMN id SET DEFAULT nextval('grupo_id_seq'::regclass);


SET search_path = basico_form_elemento, pg_catalog;

--
-- TOC entry 2673 (class 2604 OID 57501942)
-- Dependencies: 247 248 248
-- Name: id; Type: DEFAULT; Schema: basico_form_elemento; Owner: -
--

ALTER TABLE assoccl_evento ALTER COLUMN id SET DEFAULT nextval('assoccl_evento_id_seq'::regclass);


SET search_path = basico_formulario, pg_catalog;

--
-- TOC entry 2641 (class 2604 OID 57501818)
-- Dependencies: 232 231 232
-- Name: id; Type: DEFAULT; Schema: basico_formulario; Owner: -
--

ALTER TABLE assoccl_decorator ALTER COLUMN id SET DEFAULT nextval('assoccl_decorator_id_seq'::regclass);


--
-- TOC entry 2667 (class 2604 OID 57501924)
-- Dependencies: 246 245 246
-- Name: id; Type: DEFAULT; Schema: basico_formulario; Owner: -
--

ALTER TABLE assoccl_elemento ALTER COLUMN id SET DEFAULT nextval('assoccl_elemento_id_seq'::regclass);


--
-- TOC entry 2665 (class 2604 OID 57501910)
-- Dependencies: 244 243 244
-- Name: id; Type: DEFAULT; Schema: basico_formulario; Owner: -
--

ALTER TABLE assoccl_evento ALTER COLUMN id SET DEFAULT nextval('assoccl_evento_id_seq'::regclass);


--
-- TOC entry 2663 (class 2604 OID 57501894)
-- Dependencies: 242 241 242
-- Name: id; Type: DEFAULT; Schema: basico_formulario; Owner: -
--

ALTER TABLE assoccl_include ALTER COLUMN id SET DEFAULT nextval('assoccl_include_id_seq'::regclass);


--
-- TOC entry 2639 (class 2604 OID 57501806)
-- Dependencies: 229 230 230
-- Name: id; Type: DEFAULT; Schema: basico_formulario; Owner: -
--

ALTER TABLE assoccl_modulo ALTER COLUMN id SET DEFAULT nextval('assoccl_modulo_id_seq'::regclass);


--
-- TOC entry 2657 (class 2604 OID 57501866)
-- Dependencies: 237 238 238
-- Name: id; Type: DEFAULT; Schema: basico_formulario; Owner: -
--

ALTER TABLE assoccl_template ALTER COLUMN id SET DEFAULT nextval('assoccl_template_id_seq'::regclass);


--
-- TOC entry 2651 (class 2604 OID 57501850)
-- Dependencies: 236 235 236
-- Name: id; Type: DEFAULT; Schema: basico_formulario; Owner: -
--

ALTER TABLE decorator ALTER COLUMN id SET DEFAULT nextval('decorator_id_seq'::regclass);


--
-- TOC entry 2643 (class 2604 OID 57501832)
-- Dependencies: 233 234 234
-- Name: id; Type: DEFAULT; Schema: basico_formulario; Owner: -
--

ALTER TABLE elemento ALTER COLUMN id SET DEFAULT nextval('elemento_id_seq'::regclass);


--
-- TOC entry 2659 (class 2604 OID 57501880)
-- Dependencies: 240 239 240
-- Name: id; Type: DEFAULT; Schema: basico_formulario; Owner: -
--

ALTER TABLE rascunho ALTER COLUMN id SET DEFAULT nextval('rascunho_id_seq'::regclass);


SET search_path = basico_formulario_elemento, pg_catalog;

--
-- TOC entry 2633 (class 2604 OID 57501762)
-- Dependencies: 223 224 224
-- Name: id; Type: DEFAULT; Schema: basico_formulario_elemento; Owner: -
--

ALTER TABLE assoccl_decorator ALTER COLUMN id SET DEFAULT nextval('assoccl_decorator_id_seq'::regclass);


--
-- TOC entry 2637 (class 2604 OID 57501792)
-- Dependencies: 227 228 228
-- Name: id; Type: DEFAULT; Schema: basico_formulario_elemento; Owner: -
--

ALTER TABLE assoccl_filter ALTER COLUMN id SET DEFAULT nextval('assoccl_filter_id_seq'::regclass);


--
-- TOC entry 2635 (class 2604 OID 57501778)
-- Dependencies: 226 225 226
-- Name: id; Type: DEFAULT; Schema: basico_formulario_elemento; Owner: -
--

ALTER TABLE assoccl_validator ALTER COLUMN id SET DEFAULT nextval('assoccl_validator_id_seq'::regclass);


SET search_path = basico_formulario_rascunho, pg_catalog;

--
-- TOC entry 2630 (class 2604 OID 57501749)
-- Dependencies: 221 222 222
-- Name: id; Type: DEFAULT; Schema: basico_formulario_rascunho; Owner: -
--

ALTER TABLE assocag_grupo ALTER COLUMN id SET DEFAULT nextval('assocag_grupo_id_seq'::regclass);


SET search_path = basico_localizacao, pg_catalog;

--
-- TOC entry 2607 (class 2604 OID 57501670)
-- Dependencies: 212 211 212
-- Name: id; Type: DEFAULT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE assoc_bairro ALTER COLUMN id SET DEFAULT nextval('assoc_bairro_id_seq'::regclass);


--
-- TOC entry 2615 (class 2604 OID 57501700)
-- Dependencies: 215 216 216
-- Name: id; Type: DEFAULT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE assoc_estado ALTER COLUMN id SET DEFAULT nextval('assoc_estado_id_seq'::regclass);


--
-- TOC entry 2603 (class 2604 OID 57501656)
-- Dependencies: 210 209 210
-- Name: id; Type: DEFAULT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE assoc_logradouro ALTER COLUMN id SET DEFAULT nextval('assoc_logradouro_id_seq'::regclass);


--
-- TOC entry 2598 (class 2604 OID 57501639)
-- Dependencies: 207 208 208
-- Name: id; Type: DEFAULT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE assoc_municipio ALTER COLUMN id SET DEFAULT nextval('assoc_municipio_id_seq'::regclass);


--
-- TOC entry 2611 (class 2604 OID 57501684)
-- Dependencies: 214 213 214
-- Name: id; Type: DEFAULT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE codigo_postal ALTER COLUMN id SET DEFAULT nextval('codigo_postal_id_seq'::regclass);


--
-- TOC entry 2625 (class 2604 OID 57501734)
-- Dependencies: 219 220 220
-- Name: id; Type: DEFAULT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE endereco ALTER COLUMN id SET DEFAULT nextval('endereco_id_seq'::regclass);


--
-- TOC entry 2620 (class 2604 OID 57501717)
-- Dependencies: 217 218 218
-- Name: id; Type: DEFAULT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE pais ALTER COLUMN id SET DEFAULT nextval('pais_id_seq'::regclass);


SET search_path = basico_mascara, pg_catalog;

--
-- TOC entry 2596 (class 2604 OID 57501623)
-- Dependencies: 205 206 206
-- Name: id; Type: DEFAULT; Schema: basico_mascara; Owner: -
--

ALTER TABLE assoccl_include ALTER COLUMN id SET DEFAULT nextval('assoccl_include_id_seq'::regclass);


SET search_path = basico_mensagem, pg_catalog;

--
-- TOC entry 2593 (class 2604 OID 57501610)
-- Dependencies: 204 203 204
-- Name: id; Type: DEFAULT; Schema: basico_mensagem; Owner: -
--

ALTER TABLE assoc_email ALTER COLUMN id SET DEFAULT nextval('assoc_email_id_seq'::regclass);


--
-- TOC entry 2590 (class 2604 OID 57501597)
-- Dependencies: 201 202 202
-- Name: id; Type: DEFAULT; Schema: basico_mensagem; Owner: -
--

ALTER TABLE assoccl_assoccl_pessoa_perfil ALTER COLUMN id SET DEFAULT nextval('assoccl_assoccl_pessoa_perfil_id_seq'::regclass);


SET search_path = basico_mensagem_assoc_email, pg_catalog;

--
-- TOC entry 2588 (class 2604 OID 57501583)
-- Dependencies: 199 200 200
-- Name: id; Type: DEFAULT; Schema: basico_mensagem_assoc_email; Owner: -
--

ALTER TABLE assoccl_arquivo ALTER COLUMN id SET DEFAULT nextval('assoccl_arquivo_id_seq'::regclass);


SET search_path = basico_metodo_validacao, pg_catalog;

--
-- TOC entry 2586 (class 2604 OID 57501569)
-- Dependencies: 198 197 198
-- Name: id; Type: DEFAULT; Schema: basico_metodo_validacao; Owner: -
--

ALTER TABLE assoccl_include ALTER COLUMN id SET DEFAULT nextval('assoccl_include_id_seq'::regclass);


SET search_path = basico_output, pg_catalog;

--
-- TOC entry 2584 (class 2604 OID 57501553)
-- Dependencies: 195 196 196
-- Name: id; Type: DEFAULT; Schema: basico_output; Owner: -
--

ALTER TABLE assoccl_include ALTER COLUMN id SET DEFAULT nextval('assoccl_include_id_seq'::regclass);


SET search_path = basico_perfil, pg_catalog;

--
-- TOC entry 2582 (class 2604 OID 57501539)
-- Dependencies: 194 193 194
-- Name: id; Type: DEFAULT; Schema: basico_perfil; Owner: -
--

ALTER TABLE assoccl_modulo ALTER COLUMN id SET DEFAULT nextval('assoccl_modulo_id_seq'::regclass);


SET search_path = basico_pessoa, pg_catalog;

--
-- TOC entry 2571 (class 2604 OID 57501496)
-- Dependencies: 187 188 188
-- Name: id; Type: DEFAULT; Schema: basico_pessoa; Owner: -
--

ALTER TABLE assoc_dados ALTER COLUMN id SET DEFAULT nextval('assoc_dados_id_seq'::regclass);


--
-- TOC entry 2575 (class 2604 OID 57501510)
-- Dependencies: 190 189 190
-- Name: id; Type: DEFAULT; Schema: basico_pessoa; Owner: -
--

ALTER TABLE assoccl_perfil ALTER COLUMN id SET DEFAULT nextval('assoccl_perfil_id_seq'::regclass);


--
-- TOC entry 2579 (class 2604 OID 57501526)
-- Dependencies: 192 191 192
-- Name: id; Type: DEFAULT; Schema: basico_pessoa; Owner: -
--

ALTER TABLE assoccl_vinculo_profissional ALTER COLUMN id SET DEFAULT nextval('assoccl_vinculo_profissional_id_seq'::regclass);


SET search_path = basico_pessoa_juridica, pg_catalog;

--
-- TOC entry 2547 (class 2604 OID 57501404)
-- Dependencies: 175 176 176
-- Name: id; Type: DEFAULT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE assoc_banco ALTER COLUMN id SET DEFAULT nextval('assoc_banco_id_seq'::regclass);


--
-- TOC entry 2556 (class 2604 OID 57501435)
-- Dependencies: 180 179 180
-- Name: id; Type: DEFAULT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE assoc_dados ALTER COLUMN id SET DEFAULT nextval('assoc_dados_id_seq'::regclass);


--
-- TOC entry 2534 (class 2604 OID 57501345)
-- Dependencies: 168 167 168
-- Name: id; Type: DEFAULT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE assocag_incubadora ALTER COLUMN id SET DEFAULT nextval('assocag_incubadora_id_seq'::regclass);


--
-- TOC entry 2551 (class 2604 OID 57501418)
-- Dependencies: 177 178 178
-- Name: id; Type: DEFAULT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE assocag_parceria ALTER COLUMN id SET DEFAULT nextval('assocag_parceria_id_seq'::regclass);


--
-- TOC entry 2536 (class 2604 OID 57501359)
-- Dependencies: 170 169 170
-- Name: id; Type: DEFAULT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE assoccl_area_economia ALTER COLUMN id SET DEFAULT nextval('assoccl_area_economia_id_seq'::regclass);


--
-- TOC entry 2562 (class 2604 OID 57501463)
-- Dependencies: 183 184 184
-- Name: id; Type: DEFAULT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE assoccl_capital_social ALTER COLUMN id SET DEFAULT nextval('assoccl_capital_social_id_seq'::regclass);


--
-- TOC entry 2538 (class 2604 OID 57501373)
-- Dependencies: 171 172 172
-- Name: id; Type: DEFAULT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE assoccl_faturamento ALTER COLUMN id SET DEFAULT nextval('assoccl_faturamento_id_seq'::regclass);


--
-- TOC entry 2559 (class 2604 OID 57501448)
-- Dependencies: 181 182 182
-- Name: id; Type: DEFAULT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE assoccl_quadro_funcionario ALTER COLUMN id SET DEFAULT nextval('assoccl_quadro_funcionario_id_seq'::regclass);


--
-- TOC entry 2541 (class 2604 OID 57501388)
-- Dependencies: 173 174 174
-- Name: id; Type: DEFAULT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE capital_social ALTER COLUMN id SET DEFAULT nextval('capital_social_id_seq'::regclass);


--
-- TOC entry 2565 (class 2604 OID 57501478)
-- Dependencies: 186 185 186
-- Name: id; Type: DEFAULT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE natureza ALTER COLUMN id SET DEFAULT nextval('natureza_id_seq'::regclass);


SET search_path = basico_sequencia, pg_catalog;

--
-- TOC entry 2528 (class 2604 OID 57501327)
-- Dependencies: 166 165 166
-- Name: id; Type: DEFAULT; Schema: basico_sequencia; Owner: -
--

ALTER TABLE assocsq_acao_aplicacao ALTER COLUMN id SET DEFAULT nextval('assocsq_acao_aplicacao_id_seq'::regclass);


SET search_path = basico_template, pg_catalog;

--
-- TOC entry 2524 (class 2604 OID 57501297)
-- Dependencies: 161 162 162
-- Name: id; Type: DEFAULT; Schema: basico_template; Owner: -
--

ALTER TABLE assoccl_include ALTER COLUMN id SET DEFAULT nextval('assoccl_include_id_seq'::regclass);


--
-- TOC entry 2526 (class 2604 OID 57501313)
-- Dependencies: 163 164 164
-- Name: id; Type: DEFAULT; Schema: basico_template; Owner: -
--

ALTER TABLE assoccl_output ALTER COLUMN id SET DEFAULT nextval('assoccl_output_id_seq'::regclass);


SET search_path = basico, pg_catalog;

--
-- TOC entry 3595 (class 2606 OID 57502520)
-- Dependencies: 320 320
-- Name: filter_pkey; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY filter
    ADD CONSTRAINT filter_pkey PRIMARY KEY (id);


--
-- TOC entry 3613 (class 2606 OID 57502575)
-- Dependencies: 326 326
-- Name: login_login_key; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY login
    ADD CONSTRAINT login_login_key UNIQUE (login);


--
-- TOC entry 3677 (class 2606 OID 57502722)
-- Dependencies: 344 344
-- Name: mascara_pkey; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY mascara
    ADD CONSTRAINT mascara_pkey PRIMARY KEY (id);


--
-- TOC entry 3730 (class 2606 OID 57502845)
-- Dependencies: 358 358
-- Name: output_pkey; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY output
    ADD CONSTRAINT output_pkey PRIMARY KEY (id);


--
-- TOC entry 3707 (class 2606 OID 57502792)
-- Dependencies: 352 352
-- Name: pk_acao_aplicacao; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY acao_aplicacao
    ADD CONSTRAINT pk_acao_aplicacao PRIMARY KEY (id);


--
-- TOC entry 3580 (class 2606 OID 57502488)
-- Dependencies: 316 316
-- Name: pk_ajuda; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ajuda
    ADD CONSTRAINT pk_ajuda PRIMARY KEY (id);


--
-- TOC entry 3652 (class 2606 OID 57502659)
-- Dependencies: 336 336
-- Name: pk_area_conhecimento; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY area_conhecimento
    ADD CONSTRAINT pk_area_conhecimento PRIMARY KEY (id);


--
-- TOC entry 3609 (class 2606 OID 57502554)
-- Dependencies: 324 324
-- Name: pk_area_economia; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY area_economia
    ADD CONSTRAINT pk_area_economia PRIMARY KEY (id);


--
-- TOC entry 3571 (class 2606 OID 57502469)
-- Dependencies: 314 314
-- Name: pk_arquivo; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY arquivo
    ADD CONSTRAINT pk_arquivo PRIMARY KEY (id);


--
-- TOC entry 3597 (class 2606 OID 57502536)
-- Dependencies: 322 322
-- Name: pk_assocag_sequencia; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY sequencia
    ADD CONSTRAINT pk_assocag_sequencia PRIMARY KEY (id);


--
-- TOC entry 3717 (class 2606 OID 57502813)
-- Dependencies: 354 354
-- Name: pk_categoria; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY categoria
    ADD CONSTRAINT pk_categoria PRIMARY KEY (id);


--
-- TOC entry 3552 (class 2606 OID 57502432)
-- Dependencies: 310 310
-- Name: pk_codigo_acesso; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY codigo_acesso
    ADD CONSTRAINT pk_codigo_acesso PRIMARY KEY (id);


--
-- TOC entry 3772 (class 2606 OID 57502951)
-- Dependencies: 372 372
-- Name: pk_componente; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY componente
    ADD CONSTRAINT pk_componente PRIMARY KEY (id);


--
-- TOC entry 3756 (class 2606 OID 57502917)
-- Dependencies: 368 368
-- Name: pk_dados_bancarios; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY dados_bancarios
    ADD CONSTRAINT pk_dados_bancarios PRIMARY KEY (id);


--
-- TOC entry 3743 (class 2606 OID 57502889)
-- Dependencies: 364 364
-- Name: pk_dados_biometricos; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY dados_biometricos
    ADD CONSTRAINT pk_dados_biometricos PRIMARY KEY (id);


--
-- TOC entry 3559 (class 2606 OID 57502449)
-- Dependencies: 312 312
-- Name: pk_dicionario_expressao; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY dicionario_expressao
    ADD CONSTRAINT pk_dicionario_expressao PRIMARY KEY (id);


--
-- TOC entry 3622 (class 2606 OID 57502589)
-- Dependencies: 328 328
-- Name: pk_documento_identificacao; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY documento_identificacao
    ADD CONSTRAINT pk_documento_identificacao PRIMARY KEY (id);


--
-- TOC entry 3778 (class 2606 OID 57502967)
-- Dependencies: 374 374
-- Name: pk_evento; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY evento
    ADD CONSTRAINT pk_evento PRIMARY KEY (id);


--
-- TOC entry 3632 (class 2606 OID 57502609)
-- Dependencies: 330 330
-- Name: pk_formulario; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY formulario
    ADD CONSTRAINT pk_formulario PRIMARY KEY (id);


--
-- TOC entry 3670 (class 2606 OID 57502706)
-- Dependencies: 342 342
-- Name: pk_include; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY include
    ADD CONSTRAINT pk_include PRIMARY KEY (id);


--
-- TOC entry 3692 (class 2606 OID 57502758)
-- Dependencies: 348 348
-- Name: pk_link; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY link
    ADD CONSTRAINT pk_link PRIMARY KEY (id);


--
-- TOC entry 3657 (class 2606 OID 57502670)
-- Dependencies: 338 338
-- Name: pk_log; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY log
    ADD CONSTRAINT pk_log PRIMARY KEY (id);


--
-- TOC entry 3615 (class 2606 OID 57502573)
-- Dependencies: 326 326
-- Name: pk_login; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY login
    ADD CONSTRAINT pk_login PRIMARY KEY (id);


--
-- TOC entry 3663 (class 2606 OID 57502690)
-- Dependencies: 340 340
-- Name: pk_mensagem; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY mensagem
    ADD CONSTRAINT pk_mensagem PRIMARY KEY (id);


--
-- TOC entry 3700 (class 2606 OID 57502776)
-- Dependencies: 350 350
-- Name: pk_metodo_validacao; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY metodo_validacao
    ADD CONSTRAINT pk_metodo_validacao PRIMARY KEY (id);


--
-- TOC entry 3736 (class 2606 OID 57502862)
-- Dependencies: 360 360
-- Name: pk_modulo; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY modulo
    ADD CONSTRAINT pk_modulo PRIMARY KEY (id);


--
-- TOC entry 3644 (class 2606 OID 57502642)
-- Dependencies: 334 334
-- Name: pk_perfil; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY perfil
    ADD CONSTRAINT pk_perfil PRIMARY KEY (id);


--
-- TOC entry 3739 (class 2606 OID 57502875)
-- Dependencies: 362 362
-- Name: pk_pessoa; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY pessoa
    ADD CONSTRAINT pk_pessoa PRIMARY KEY (id);


--
-- TOC entry 3749 (class 2606 OID 57502904)
-- Dependencies: 366 366
-- Name: pk_pessoa_juridica; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY pessoa_juridica
    ADD CONSTRAINT pk_pessoa_juridica PRIMARY KEY (id);


--
-- TOC entry 3582 (class 2606 OID 57502504)
-- Dependencies: 318 318
-- Name: pk_produto; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY produto
    ADD CONSTRAINT pk_produto PRIMARY KEY (id);


--
-- TOC entry 3719 (class 2606 OID 57502829)
-- Dependencies: 356 356
-- Name: pk_profissao; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY profissao
    ADD CONSTRAINT pk_profissao PRIMARY KEY (id);


--
-- TOC entry 3634 (class 2606 OID 57502625)
-- Dependencies: 332 332
-- Name: pk_template; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY template
    ADD CONSTRAINT pk_template PRIMARY KEY (id);


--
-- TOC entry 3679 (class 2606 OID 57502741)
-- Dependencies: 346 346
-- Name: pk_tipo_categoria; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY tipo_categoria
    ADD CONSTRAINT pk_tipo_categoria PRIMARY KEY (id);


--
-- TOC entry 3540 (class 2606 OID 57502417)
-- Dependencies: 308 308
-- Name: pk_token; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY token
    ADD CONSTRAINT pk_token PRIMARY KEY (id);


--
-- TOC entry 3709 (class 2606 OID 57502794)
-- Dependencies: 352 352 352 352
-- Name: un_acao_aplicacao; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY acao_aplicacao
    ADD CONSTRAINT un_acao_aplicacao UNIQUE (id_modulo, controller, action);


--
-- TOC entry 3554 (class 2606 OID 57502434)
-- Dependencies: 310 310 310 310 310 310
-- Name: un_codigo_acesso; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY codigo_acesso
    ADD CONSTRAINT un_codigo_acesso UNIQUE (id_categoria_proprietario, id_generico_proprietario, id_categoria_acesso, id_generico_acesso, codigo);


--
-- TOC entry 3758 (class 2606 OID 57502919)
-- Dependencies: 368 368 368 368 368 368 368
-- Name: un_dados_bancarios; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY dados_bancarios
    ADD CONSTRAINT un_dados_bancarios UNIQUE (id_categoria, id_generico_proprietario, numero_banco, numero_agencia, numero_tipo_conta, numero_conta);


--
-- TOC entry 3561 (class 2606 OID 57502451)
-- Dependencies: 312 312 312
-- Name: un_dicionario_expressao; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY dicionario_expressao
    ADD CONSTRAINT un_dicionario_expressao UNIQUE (id_categoria, constante_textual);


--
-- TOC entry 3624 (class 2606 OID 57502591)
-- Dependencies: 328 328 328 328
-- Name: un_documento; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY documento_identificacao
    ADD CONSTRAINT un_documento UNIQUE (id_categoria, id_generico_proprietario, id_pessoa_juridica_emissor);


--
-- TOC entry 3694 (class 2606 OID 57502760)
-- Dependencies: 348 348 348 348
-- Name: un_link; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY link
    ADD CONSTRAINT un_link UNIQUE (id_categoria, id_generico_proprietario, url);


--
-- TOC entry 3765 (class 2606 OID 57502935)
-- Dependencies: 370 370
-- Name: validator_pkey; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY validator
    ADD CONSTRAINT validator_pkey PRIMARY KEY (id);


SET search_path = basico_acao_aplic_assoc_visao, pg_catalog;

--
-- TOC entry 3538 (class 2606 OID 57502404)
-- Dependencies: 306 306
-- Name: pk_assoccl_ref_atrib_met_rec_post; Type: CONSTRAINT; Schema: basico_acao_aplic_assoc_visao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_atrib_met_rec_post
    ADD CONSTRAINT pk_assoccl_ref_atrib_met_rec_post PRIMARY KEY (id);


--
-- TOC entry 3531 (class 2606 OID 57502390)
-- Dependencies: 304 304
-- Name: pk_atributo_metodo_recup_post; Type: CONSTRAINT; Schema: basico_acao_aplic_assoc_visao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY atributo_metodo_recup_post
    ADD CONSTRAINT pk_atributo_metodo_recup_post PRIMARY KEY (id);


--
-- TOC entry 3533 (class 2606 OID 57502392)
-- Dependencies: 304 304 304
-- Name: un_atributo_metodo_recup_post; Type: CONSTRAINT; Schema: basico_acao_aplic_assoc_visao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY atributo_metodo_recup_post
    ADD CONSTRAINT un_atributo_metodo_recup_post UNIQUE (atributo, metodo_recuperacao);


SET search_path = basico_acao_aplicacao, pg_catalog;

--
-- TOC entry 3517 (class 2606 OID 57502362)
-- Dependencies: 300 300
-- Name: pk_assoc_visao; Type: CONSTRAINT; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_visao
    ADD CONSTRAINT pk_assoc_visao PRIMARY KEY (id);


--
-- TOC entry 3523 (class 2606 OID 57502374)
-- Dependencies: 302 302
-- Name: pk_assoccl_metodo_validacao; Type: CONSTRAINT; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_metodo_validacao
    ADD CONSTRAINT pk_assoccl_metodo_validacao PRIMARY KEY (id);


--
-- TOC entry 3506 (class 2606 OID 57502342)
-- Dependencies: 298 298
-- Name: pk_assoccl_perfil; Type: CONSTRAINT; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_perfil
    ADD CONSTRAINT pk_assoccl_perfil PRIMARY KEY (id);


--
-- TOC entry 3525 (class 2606 OID 57502376)
-- Dependencies: 302 302 302 302
-- Name: un_assoccl_metodo_validacao; Type: CONSTRAINT; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_metodo_validacao
    ADD CONSTRAINT un_assoccl_metodo_validacao UNIQUE (id_acao_aplicacao, id_metodo_validacao, id_perfil);


--
-- TOC entry 3508 (class 2606 OID 57502344)
-- Dependencies: 298 298 298
-- Name: un_assoccl_perfil; Type: CONSTRAINT; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_perfil
    ADD CONSTRAINT un_assoccl_perfil UNIQUE (id_acao_aplicacao, id_perfil);


SET search_path = basico_ajuda, pg_catalog;

--
-- TOC entry 3499 (class 2606 OID 57502328)
-- Dependencies: 296 296
-- Name: pk_assoccl_link; Type: CONSTRAINT; Schema: basico_ajuda; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_link
    ADD CONSTRAINT pk_assoccl_link PRIMARY KEY (id);


--
-- TOC entry 3501 (class 2606 OID 57502330)
-- Dependencies: 296 296 296
-- Name: un_assoccl_link; Type: CONSTRAINT; Schema: basico_ajuda; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_link
    ADD CONSTRAINT un_assoccl_link UNIQUE (id_ajuda, id_link);


SET search_path = basico_assoc_banco, pg_catalog;

--
-- TOC entry 3494 (class 2606 OID 57502316)
-- Dependencies: 294 294
-- Name: pk_assoc_tipo_conta; Type: CONSTRAINT; Schema: basico_assoc_banco; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_tipo_conta
    ADD CONSTRAINT pk_assoc_tipo_conta PRIMARY KEY (id);


SET search_path = basico_assoc_chave_estrangeira, pg_catalog;

--
-- TOC entry 3481 (class 2606 OID 57502296)
-- Dependencies: 292 292
-- Name: pk_relacao; Type: CONSTRAINT; Schema: basico_assoc_chave_estrangeira; Owner: -; Tablespace: 
--

ALTER TABLE ONLY relacao
    ADD CONSTRAINT pk_relacao PRIMARY KEY (id);


--
-- TOC entry 3486 (class 2606 OID 57502301)
-- Dependencies: 292 292 292
-- Name: un_relacao; Type: CONSTRAINT; Schema: basico_assoc_chave_estrangeira; Owner: -; Tablespace: 
--

ALTER TABLE ONLY relacao
    ADD CONSTRAINT un_relacao UNIQUE (tabela_origem, campo_origem);


SET search_path = basico_assoc_dados_profis, pg_catalog;

--
-- TOC entry 3477 (class 2606 OID 57502279)
-- Dependencies: 290 290
-- Name: pk_assoccl_area_conhecimento; Type: CONSTRAINT; Schema: basico_assoc_dados_profis; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_area_conhecimento
    ADD CONSTRAINT pk_assoccl_area_conhecimento PRIMARY KEY (id);


--
-- TOC entry 3479 (class 2606 OID 57502281)
-- Dependencies: 290 290 290
-- Name: un_assoc_dados_profis_area_conhec; Type: CONSTRAINT; Schema: basico_assoc_dados_profis; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_area_conhecimento
    ADD CONSTRAINT un_assoc_dados_profis_area_conhec UNIQUE (id_area_conhecimento, id_assoc_dados_profissionais);


SET search_path = basico_assoccl_pessoa_perfil, pg_catalog;

--
-- TOC entry 3472 (class 2606 OID 57502267)
-- Dependencies: 288 288
-- Name: pk_assoccl_pessoa_perfil_dados; Type: CONSTRAINT; Schema: basico_assoccl_pessoa_perfil; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_dados
    ADD CONSTRAINT pk_assoccl_pessoa_perfil_dados PRIMARY KEY (id);


SET search_path = basico_assocl_vinculo_profissional, pg_catalog;

--
-- TOC entry 3468 (class 2606 OID 57502254)
-- Dependencies: 286 286
-- Name: pk_assoc_dados_profissionais; Type: CONSTRAINT; Schema: basico_assocl_vinculo_profissional; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_dados
    ADD CONSTRAINT pk_assoc_dados_profissionais PRIMARY KEY (id);


SET search_path = basico_categoria, pg_catalog;

--
-- TOC entry 3458 (class 2606 OID 57502239)
-- Dependencies: 284 284
-- Name: pk_assoc_categ_chave_estrang; Type: CONSTRAINT; Schema: basico_categoria; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_chave_estrangeira
    ADD CONSTRAINT pk_assoc_categ_chave_estrang PRIMARY KEY (id);


--
-- TOC entry 3460 (class 2606 OID 57502241)
-- Dependencies: 284 284 284
-- Name: un_assoc_cha_estran_mod_categ; Type: CONSTRAINT; Schema: basico_categoria; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_chave_estrangeira
    ADD CONSTRAINT un_assoc_cha_estran_mod_categ UNIQUE (id_modulo, id_categoria);


SET search_path = basico_componente, pg_catalog;

--
-- TOC entry 3447 (class 2606 OID 57502222)
-- Dependencies: 282 282
-- Name: pk_componente_assoccl_include; Type: CONSTRAINT; Schema: basico_componente; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT pk_componente_assoccl_include PRIMARY KEY (id);


--
-- TOC entry 3449 (class 2606 OID 57502224)
-- Dependencies: 282 282 282
-- Name: un_assoccl_include_componente; Type: CONSTRAINT; Schema: basico_componente; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT un_assoccl_include_componente UNIQUE (id_componente, id_include);


--
-- TOC entry 3451 (class 2606 OID 57502226)
-- Dependencies: 282 282 282
-- Name: un_assoccl_include_ordem6; Type: CONSTRAINT; Schema: basico_componente; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT un_assoccl_include_ordem6 UNIQUE (id_componente, ordem);


SET search_path = basico_contato, pg_catalog;

--
-- TOC entry 3440 (class 2606 OID 57502208)
-- Dependencies: 280 280
-- Name: pk_email; Type: CONSTRAINT; Schema: basico_contato; Owner: -; Tablespace: 
--

ALTER TABLE ONLY email
    ADD CONSTRAINT pk_email PRIMARY KEY (id);


--
-- TOC entry 3426 (class 2606 OID 57502188)
-- Dependencies: 278 278
-- Name: pk_telefone; Type: CONSTRAINT; Schema: basico_contato; Owner: -; Tablespace: 
--

ALTER TABLE ONLY telefone
    ADD CONSTRAINT pk_telefone PRIMARY KEY (id);


--
-- TOC entry 3442 (class 2606 OID 57502210)
-- Dependencies: 280 280 280 280
-- Name: un_email; Type: CONSTRAINT; Schema: basico_contato; Owner: -; Tablespace: 
--

ALTER TABLE ONLY email
    ADD CONSTRAINT un_email UNIQUE (id_generico_proprietario, id_categoria, email);


--
-- TOC entry 3432 (class 2606 OID 57502190)
-- Dependencies: 278 278 278 278 278 278 278
-- Name: un_telefone; Type: CONSTRAINT; Schema: basico_contato; Owner: -; Tablespace: 
--

ALTER TABLE ONLY telefone
    ADD CONSTRAINT un_telefone UNIQUE (id_categoria, id_generico_proprietario, codigo_pais, codigo_area, telefone, ramal);


SET search_path = basico_cvc, pg_catalog;

--
-- TOC entry 3422 (class 2606 OID 57502169)
-- Dependencies: 276 276
-- Name: pk_cvc; Type: CONSTRAINT; Schema: basico_cvc; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cvc
    ADD CONSTRAINT pk_cvc PRIMARY KEY (id);


--
-- TOC entry 3424 (class 2606 OID 57502171)
-- Dependencies: 276 276 276 276
-- Name: un_cvc; Type: CONSTRAINT; Schema: basico_cvc; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cvc
    ADD CONSTRAINT un_cvc UNIQUE (id_assoc_chave_estrangeira, id_generico, versao);


SET search_path = basico_dados_academicos, pg_catalog;

--
-- TOC entry 3413 (class 2606 OID 57502154)
-- Dependencies: 274 274
-- Name: pk_titulacao; Type: CONSTRAINT; Schema: basico_dados_academicos; Owner: -; Tablespace: 
--

ALTER TABLE ONLY titulacao
    ADD CONSTRAINT pk_titulacao PRIMARY KEY (id);


SET search_path = basico_dados_biometricos, pg_catalog;

--
-- TOC entry 3408 (class 2606 OID 57502138)
-- Dependencies: 272 272
-- Name: pk_tipo_sanguineo; Type: CONSTRAINT; Schema: basico_dados_biometricos; Owner: -; Tablespace: 
--

ALTER TABLE ONLY tipo_sanguineo
    ADD CONSTRAINT pk_tipo_sanguineo PRIMARY KEY (id);


SET search_path = basico_dados_profissionais, pg_catalog;

--
-- TOC entry 3393 (class 2606 OID 57502104)
-- Dependencies: 268 268
-- Name: pk_regime_trabalho; Type: CONSTRAINT; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

ALTER TABLE ONLY regime_trabalho
    ADD CONSTRAINT pk_regime_trabalho PRIMARY KEY (id);


--
-- TOC entry 3401 (class 2606 OID 57502122)
-- Dependencies: 270 270
-- Name: pk_tipo_vinculo; Type: CONSTRAINT; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

ALTER TABLE ONLY tipo_vinculo
    ADD CONSTRAINT pk_tipo_vinculo PRIMARY KEY (id);


--
-- TOC entry 3386 (class 2606 OID 57502087)
-- Dependencies: 266 266
-- Name: pk_vinculo_empregaticio; Type: CONSTRAINT; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

ALTER TABLE ONLY vinculo_empregaticio
    ADD CONSTRAINT pk_vinculo_empregaticio PRIMARY KEY (id);


SET search_path = basico_decorator, pg_catalog;

--
-- TOC entry 3380 (class 2606 OID 57502067)
-- Dependencies: 264 264
-- Name: pk_decorator_assoccl_include; Type: CONSTRAINT; Schema: basico_decorator; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT pk_decorator_assoccl_include PRIMARY KEY (id);


--
-- TOC entry 3382 (class 2606 OID 57502069)
-- Dependencies: 264 264 264
-- Name: un_assoccl_include_decorator; Type: CONSTRAINT; Schema: basico_decorator; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT un_assoccl_include_decorator UNIQUE (id_include, id_decorator);


--
-- TOC entry 3384 (class 2606 OID 57502071)
-- Dependencies: 264 264 264
-- Name: un_assoccl_include_ordem5; Type: CONSTRAINT; Schema: basico_decorator; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT un_assoccl_include_ordem5 UNIQUE (id_decorator, ordem);


SET search_path = basico_form_assoccl_elem_grupo, pg_catalog;

--
-- TOC entry 3375 (class 2606 OID 57502055)
-- Dependencies: 262 262
-- Name: pk_assoccl_decorator; Type: CONSTRAINT; Schema: basico_form_assoccl_elem_grupo; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT pk_assoccl_decorator PRIMARY KEY (id);


SET search_path = basico_form_assoccl_elemento, pg_catalog;

--
-- TOC entry 3353 (class 2606 OID 57502011)
-- Dependencies: 256 256
-- Name: assoccl_validator_pkey; Type: CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_validator
    ADD CONSTRAINT assoccl_validator_pkey PRIMARY KEY (id);


--
-- TOC entry 3338 (class 2606 OID 57501978)
-- Dependencies: 252 252
-- Name: pk_assoccl_elemento; Type: CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT pk_assoccl_elemento PRIMARY KEY (id);


--
-- TOC entry 3370 (class 2606 OID 57502043)
-- Dependencies: 260 260
-- Name: pk_assoccl_evento; Type: CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_evento
    ADD CONSTRAINT pk_assoccl_evento PRIMARY KEY (id);


--
-- TOC entry 3331 (class 2606 OID 57501963)
-- Dependencies: 250 250
-- Name: pk_assoccl_filter; Type: CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_filter
    ADD CONSTRAINT pk_assoccl_filter PRIMARY KEY (id);


--
-- TOC entry 3360 (class 2606 OID 57502026)
-- Dependencies: 258 258
-- Name: pk_assoccl_include; Type: CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT pk_assoccl_include PRIMARY KEY (id);


--
-- TOC entry 3348 (class 2606 OID 57501998)
-- Dependencies: 254 254
-- Name: pk_grupo; Type: CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY grupo
    ADD CONSTRAINT pk_grupo PRIMARY KEY (id);


--
-- TOC entry 3340 (class 2606 OID 57501982)
-- Dependencies: 252 252 252
-- Name: un_assoccl_decorator_assoccl_elemento; Type: CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT un_assoccl_decorator_assoccl_elemento UNIQUE (id_assoccl_elemento, id_decorator);


--
-- TOC entry 3342 (class 2606 OID 57501980)
-- Dependencies: 252 252 252
-- Name: un_assoccl_decorator_ordem1; Type: CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT un_assoccl_decorator_ordem1 UNIQUE (id_assoccl_elemento, ordem);


--
-- TOC entry 3355 (class 2606 OID 57502013)
-- Dependencies: 256 256 256
-- Name: un_assoccl_elemento1; Type: CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_validator
    ADD CONSTRAINT un_assoccl_elemento1 UNIQUE (id_assoccl_elemento, id_validator);


--
-- TOC entry 3333 (class 2606 OID 57501965)
-- Dependencies: 250 250 250
-- Name: un_assoccl_filter1; Type: CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_filter
    ADD CONSTRAINT un_assoccl_filter1 UNIQUE (id_assoccl_elemento, id_filter);


--
-- TOC entry 3362 (class 2606 OID 57502028)
-- Dependencies: 258 258 258
-- Name: un_assoccl_include_assoccl_elemento; Type: CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT un_assoccl_include_assoccl_elemento UNIQUE (id_assoccl_elemento, id_include);


--
-- TOC entry 3364 (class 2606 OID 57502030)
-- Dependencies: 258 258 258
-- Name: un_assoccl_include_ordem4; Type: CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT un_assoccl_include_ordem4 UNIQUE (id_assoccl_elemento, ordem);


SET search_path = basico_form_elemento, pg_catalog;

--
-- TOC entry 3324 (class 2606 OID 57501948)
-- Dependencies: 248 248
-- Name: pk_assoccl_evento; Type: CONSTRAINT; Schema: basico_form_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_evento
    ADD CONSTRAINT pk_assoccl_evento PRIMARY KEY (id);


--
-- TOC entry 3326 (class 2606 OID 57501950)
-- Dependencies: 248 248 248
-- Name: un_assoccl_evento1; Type: CONSTRAINT; Schema: basico_form_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_evento
    ADD CONSTRAINT un_assoccl_evento1 UNIQUE (id_elemento, id_evento);


SET search_path = basico_formulario, pg_catalog;

--
-- TOC entry 3261 (class 2606 OID 57501824)
-- Dependencies: 232 232
-- Name: assoccl_decorator_pkey; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT assoccl_decorator_pkey PRIMARY KEY (id);


--
-- TOC entry 3317 (class 2606 OID 57501934)
-- Dependencies: 246 246
-- Name: pk_assoccl_elemento; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_elemento
    ADD CONSTRAINT pk_assoccl_elemento PRIMARY KEY (id);


--
-- TOC entry 3309 (class 2606 OID 57501916)
-- Dependencies: 244 244
-- Name: pk_assoccl_evento; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_evento
    ADD CONSTRAINT pk_assoccl_evento PRIMARY KEY (id);


--
-- TOC entry 3256 (class 2606 OID 57501812)
-- Dependencies: 230 230
-- Name: pk_assoccl_modulo; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_modulo
    ADD CONSTRAINT pk_assoccl_modulo PRIMARY KEY (id);


--
-- TOC entry 3277 (class 2606 OID 57501860)
-- Dependencies: 236 236
-- Name: pk_decorator; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY decorator
    ADD CONSTRAINT pk_decorator PRIMARY KEY (id);


--
-- TOC entry 3271 (class 2606 OID 57501844)
-- Dependencies: 234 234
-- Name: pk_elemento; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY elemento
    ADD CONSTRAINT pk_elemento PRIMARY KEY (id);


--
-- TOC entry 3300 (class 2606 OID 57501900)
-- Dependencies: 242 242
-- Name: pk_formulario_assoccl_include; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT pk_formulario_assoccl_include PRIMARY KEY (id);


--
-- TOC entry 3282 (class 2606 OID 57501872)
-- Dependencies: 238 238
-- Name: pk_formulario_template; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_template
    ADD CONSTRAINT pk_formulario_template PRIMARY KEY (id);


--
-- TOC entry 3286 (class 2606 OID 57501888)
-- Dependencies: 240 240
-- Name: pk_rascunho; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rascunho
    ADD CONSTRAINT pk_rascunho PRIMARY KEY (id);


--
-- TOC entry 3263 (class 2606 OID 57501826)
-- Dependencies: 232 232 232
-- Name: un_assoccl_decorator; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT un_assoccl_decorator UNIQUE (id_formulario, id_decorator);


--
-- TOC entry 3319 (class 2606 OID 57501936)
-- Dependencies: 246 246 246 246
-- Name: un_assoccl_elemento; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_elemento
    ADD CONSTRAINT un_assoccl_elemento UNIQUE (id_formulario, id_elemento, ordem);


--
-- TOC entry 3311 (class 2606 OID 57501918)
-- Dependencies: 244 244 244
-- Name: un_assoccl_evento; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_evento
    ADD CONSTRAINT un_assoccl_evento UNIQUE (id_formulario, id_evento);


--
-- TOC entry 3302 (class 2606 OID 57501904)
-- Dependencies: 242 242 242
-- Name: un_assoccl_include_formulario; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT un_assoccl_include_formulario UNIQUE (id_formulario, id_include);


--
-- TOC entry 3304 (class 2606 OID 57501902)
-- Dependencies: 242 242 242
-- Name: un_assoccl_include_ordem3; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT un_assoccl_include_ordem3 UNIQUE (id_formulario, ordem);


--
-- TOC entry 3284 (class 2606 OID 57501874)
-- Dependencies: 238 238 238
-- Name: un_assoccl_template; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_template
    ADD CONSTRAINT un_assoccl_template UNIQUE (id_template, id_formulario);


SET search_path = basico_formulario_elemento, pg_catalog;

--
-- TOC entry 3242 (class 2606 OID 57501784)
-- Dependencies: 226 226
-- Name: assoccl_validator_pkey; Type: CONSTRAINT; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_validator
    ADD CONSTRAINT assoccl_validator_pkey PRIMARY KEY (id);


--
-- TOC entry 3233 (class 2606 OID 57501768)
-- Dependencies: 224 224
-- Name: pk_assoccl_decorator; Type: CONSTRAINT; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT pk_assoccl_decorator PRIMARY KEY (id);


--
-- TOC entry 3249 (class 2606 OID 57501798)
-- Dependencies: 228 228
-- Name: pk_assoccl_filter; Type: CONSTRAINT; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_filter
    ADD CONSTRAINT pk_assoccl_filter PRIMARY KEY (id);


--
-- TOC entry 3235 (class 2606 OID 57501772)
-- Dependencies: 224 224 224
-- Name: un_assoccl_decorator_elemento; Type: CONSTRAINT; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT un_assoccl_decorator_elemento UNIQUE (id_elemento, id_decorator);


--
-- TOC entry 3237 (class 2606 OID 57501770)
-- Dependencies: 224 224 224
-- Name: un_assoccl_decorator_ordem; Type: CONSTRAINT; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT un_assoccl_decorator_ordem UNIQUE (id_elemento, ordem);


--
-- TOC entry 3251 (class 2606 OID 57501800)
-- Dependencies: 228 228 228
-- Name: un_assoccl_filter; Type: CONSTRAINT; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_filter
    ADD CONSTRAINT un_assoccl_filter UNIQUE (id_elemento, id_filter);


--
-- TOC entry 3244 (class 2606 OID 57501786)
-- Dependencies: 226 226 226
-- Name: un_assoccl_validator; Type: CONSTRAINT; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_validator
    ADD CONSTRAINT un_assoccl_validator UNIQUE (id_validator, id_elemento);


SET search_path = basico_formulario_rascunho, pg_catalog;

--
-- TOC entry 3228 (class 2606 OID 57501756)
-- Dependencies: 222 222
-- Name: pk_assocag_grupo; Type: CONSTRAINT; Schema: basico_formulario_rascunho; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assocag_grupo
    ADD CONSTRAINT pk_assocag_grupo PRIMARY KEY (id);


SET search_path = basico_localizacao, pg_catalog;

--
-- TOC entry 3208 (class 2606 OID 57501711)
-- Dependencies: 216 216 216
-- Name: ck_estado_pais; Type: CONSTRAINT; Schema: basico_localizacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_estado
    ADD CONSTRAINT ck_estado_pais UNIQUE (id_pais, nome);


--
-- TOC entry 3212 (class 2606 OID 57501728)
-- Dependencies: 218 218
-- Name: pais_codigo_iso3166_key; Type: CONSTRAINT; Schema: basico_localizacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY pais
    ADD CONSTRAINT pais_codigo_iso3166_key UNIQUE (codigo_iso3166);


--
-- TOC entry 3188 (class 2606 OID 57501678)
-- Dependencies: 212 212
-- Name: pk_assoc_bairro; Type: CONSTRAINT; Schema: basico_localizacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_bairro
    ADD CONSTRAINT pk_assoc_bairro PRIMARY KEY (id);


--
-- TOC entry 3210 (class 2606 OID 57501709)
-- Dependencies: 216 216
-- Name: pk_assoc_estado; Type: CONSTRAINT; Schema: basico_localizacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_estado
    ADD CONSTRAINT pk_assoc_estado PRIMARY KEY (id);


--
-- TOC entry 3183 (class 2606 OID 57501664)
-- Dependencies: 210 210
-- Name: pk_assoc_logradouro; Type: CONSTRAINT; Schema: basico_localizacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_logradouro
    ADD CONSTRAINT pk_assoc_logradouro PRIMARY KEY (id);


--
-- TOC entry 3175 (class 2606 OID 57501648)
-- Dependencies: 208 208
-- Name: pk_assoc_municipio; Type: CONSTRAINT; Schema: basico_localizacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_municipio
    ADD CONSTRAINT pk_assoc_municipio PRIMARY KEY (id);


--
-- TOC entry 3198 (class 2606 OID 57501692)
-- Dependencies: 214 214
-- Name: pk_codigo_postal; Type: CONSTRAINT; Schema: basico_localizacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY codigo_postal
    ADD CONSTRAINT pk_codigo_postal PRIMARY KEY (id);


--
-- TOC entry 3224 (class 2606 OID 57501743)
-- Dependencies: 220 220
-- Name: pk_endereco; Type: CONSTRAINT; Schema: basico_localizacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY endereco
    ADD CONSTRAINT pk_endereco PRIMARY KEY (id);


--
-- TOC entry 3217 (class 2606 OID 57501726)
-- Dependencies: 218 218
-- Name: pk_pais; Type: CONSTRAINT; Schema: basico_localizacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY pais
    ADD CONSTRAINT pk_pais PRIMARY KEY (id);


--
-- TOC entry 3200 (class 2606 OID 57501694)
-- Dependencies: 214 214 214 214 214 214 214
-- Name: un_cep; Type: CONSTRAINT; Schema: basico_localizacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY codigo_postal
    ADD CONSTRAINT un_cep UNIQUE (codigo, id_pais, id_estado, id_municipio, id_bairro, id_logradouro);


--
-- TOC entry 3177 (class 2606 OID 57501650)
-- Dependencies: 208 208 208 208
-- Name: un_municipio_estado; Type: CONSTRAINT; Schema: basico_localizacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_municipio
    ADD CONSTRAINT un_municipio_estado UNIQUE (id_estado, nome, codigo_ddd);


SET search_path = basico_mascara, pg_catalog;

--
-- TOC entry 3163 (class 2606 OID 57501629)
-- Dependencies: 206 206
-- Name: pk_mascara_assoccl_include; Type: CONSTRAINT; Schema: basico_mascara; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT pk_mascara_assoccl_include PRIMARY KEY (id);


--
-- TOC entry 3165 (class 2606 OID 57501633)
-- Dependencies: 206 206 206
-- Name: un_assoccl_include_mascara; Type: CONSTRAINT; Schema: basico_mascara; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT un_assoccl_include_mascara UNIQUE (id_mascara, id_include);


--
-- TOC entry 3167 (class 2606 OID 57501631)
-- Dependencies: 206 206 206
-- Name: un_assoccl_include_ordem2; Type: CONSTRAINT; Schema: basico_mascara; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT un_assoccl_include_ordem2 UNIQUE (id_mascara, ordem);


SET search_path = basico_mensagem, pg_catalog;

--
-- TOC entry 3158 (class 2606 OID 57501617)
-- Dependencies: 204 204
-- Name: pk_assoc_email; Type: CONSTRAINT; Schema: basico_mensagem; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_email
    ADD CONSTRAINT pk_assoc_email PRIMARY KEY (id);


--
-- TOC entry 3154 (class 2606 OID 57501604)
-- Dependencies: 202 202
-- Name: pk_assocl_assocl_pessoa_perfil; Type: CONSTRAINT; Schema: basico_mensagem; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_assoccl_pessoa_perfil
    ADD CONSTRAINT pk_assocl_assocl_pessoa_perfil PRIMARY KEY (id);


SET search_path = basico_mensagem_assoc_email, pg_catalog;

--
-- TOC entry 3146 (class 2606 OID 57501589)
-- Dependencies: 200 200
-- Name: pk_assoccl_arquivo; Type: CONSTRAINT; Schema: basico_mensagem_assoc_email; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_arquivo
    ADD CONSTRAINT pk_assoccl_arquivo PRIMARY KEY (id);


--
-- TOC entry 3148 (class 2606 OID 57501591)
-- Dependencies: 200 200 200
-- Name: un_assoccl_arquivo; Type: CONSTRAINT; Schema: basico_mensagem_assoc_email; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_arquivo
    ADD CONSTRAINT un_assoccl_arquivo UNIQUE (id_assoc_email, id_arquivo);


SET search_path = basico_metodo_validacao, pg_catalog;

--
-- TOC entry 3139 (class 2606 OID 57501575)
-- Dependencies: 198 198
-- Name: pk_metodo_valid_assoccl_include; Type: CONSTRAINT; Schema: basico_metodo_validacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT pk_metodo_valid_assoccl_include PRIMARY KEY (id);


--
-- TOC entry 3141 (class 2606 OID 57501577)
-- Dependencies: 198 198 198
-- Name: un_assoccl_include; Type: CONSTRAINT; Schema: basico_metodo_validacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT un_assoccl_include UNIQUE (id_metodo_validacao, id_include);


SET search_path = basico_output, pg_catalog;

--
-- TOC entry 3130 (class 2606 OID 57501559)
-- Dependencies: 196 196
-- Name: pk_output_assoccl_include; Type: CONSTRAINT; Schema: basico_output; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT pk_output_assoccl_include PRIMARY KEY (id);


--
-- TOC entry 3132 (class 2606 OID 57501561)
-- Dependencies: 196 196 196
-- Name: un_assoccl_include_ordem1; Type: CONSTRAINT; Schema: basico_output; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT un_assoccl_include_ordem1 UNIQUE (id_output, ordem);


--
-- TOC entry 3134 (class 2606 OID 57501563)
-- Dependencies: 196 196 196
-- Name: un_assoccl_include_output; Type: CONSTRAINT; Schema: basico_output; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT un_assoccl_include_output UNIQUE (id_output, id_include);


SET search_path = basico_perfil, pg_catalog;

--
-- TOC entry 3123 (class 2606 OID 57501545)
-- Dependencies: 194 194
-- Name: pk_assoccl_modulo; Type: CONSTRAINT; Schema: basico_perfil; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_modulo
    ADD CONSTRAINT pk_assoccl_modulo PRIMARY KEY (id);


--
-- TOC entry 3125 (class 2606 OID 57501547)
-- Dependencies: 194 194 194
-- Name: un_assoccl_modulo; Type: CONSTRAINT; Schema: basico_perfil; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_modulo
    ADD CONSTRAINT un_assoccl_modulo UNIQUE (id_modulo, id_perfil);


SET search_path = basico_pessoa, pg_catalog;

--
-- TOC entry 3111 (class 2606 OID 57501518)
-- Dependencies: 190 190
-- Name: assoccl_perfil_pkey; Type: CONSTRAINT; Schema: basico_pessoa; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_perfil
    ADD CONSTRAINT assoccl_perfil_pkey PRIMARY KEY (id);


--
-- TOC entry 3106 (class 2606 OID 57501504)
-- Dependencies: 188 188
-- Name: pk_assoc_dados; Type: CONSTRAINT; Schema: basico_pessoa; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_dados
    ADD CONSTRAINT pk_assoc_dados PRIMARY KEY (id);


--
-- TOC entry 3118 (class 2606 OID 57501533)
-- Dependencies: 192 192
-- Name: pk_assoccl_vinculo_profissional; Type: CONSTRAINT; Schema: basico_pessoa; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_vinculo_profissional
    ADD CONSTRAINT pk_assoccl_vinculo_profissional PRIMARY KEY (id);


--
-- TOC entry 3113 (class 2606 OID 57501520)
-- Dependencies: 190 190 190
-- Name: un_assoccl_pessoa_perfil; Type: CONSTRAINT; Schema: basico_pessoa; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_perfil
    ADD CONSTRAINT un_assoccl_pessoa_perfil UNIQUE (id_pessoa, id_perfil);


SET search_path = basico_pessoa_juridica, pg_catalog;

--
-- TOC entry 3062 (class 2606 OID 57501412)
-- Dependencies: 176 176
-- Name: pk_assoc_banco; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_banco
    ADD CONSTRAINT pk_assoc_banco PRIMARY KEY (id);


--
-- TOC entry 3079 (class 2606 OID 57501442)
-- Dependencies: 180 180
-- Name: pk_assoc_dados_pj; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_dados
    ADD CONSTRAINT pk_assoc_dados_pj PRIMARY KEY (id);


--
-- TOC entry 3034 (class 2606 OID 57501351)
-- Dependencies: 168 168
-- Name: pk_assocag_incubadora; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assocag_incubadora
    ADD CONSTRAINT pk_assocag_incubadora PRIMARY KEY (id);


--
-- TOC entry 3070 (class 2606 OID 57501427)
-- Dependencies: 178 178
-- Name: pk_assocag_parceria; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assocag_parceria
    ADD CONSTRAINT pk_assocag_parceria PRIMARY KEY (id);


--
-- TOC entry 3041 (class 2606 OID 57501365)
-- Dependencies: 170 170
-- Name: pk_assoccl_area_economia; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_area_economia
    ADD CONSTRAINT pk_assoccl_area_economia PRIMARY KEY (id);


--
-- TOC entry 3092 (class 2606 OID 57501470)
-- Dependencies: 184 184
-- Name: pk_assoccl_capital_social; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_capital_social
    ADD CONSTRAINT pk_assoccl_capital_social PRIMARY KEY (id);


--
-- TOC entry 3048 (class 2606 OID 57501380)
-- Dependencies: 172 172
-- Name: pk_assoccl_faturamento; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_faturamento
    ADD CONSTRAINT pk_assoccl_faturamento PRIMARY KEY (id);


--
-- TOC entry 3085 (class 2606 OID 57501455)
-- Dependencies: 182 182
-- Name: pk_assoccl_quadro_funcionario; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_quadro_funcionario
    ADD CONSTRAINT pk_assoccl_quadro_funcionario PRIMARY KEY (id);


--
-- TOC entry 3056 (class 2606 OID 57501398)
-- Dependencies: 174 174
-- Name: pk_capital_social; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY capital_social
    ADD CONSTRAINT pk_capital_social PRIMARY KEY (id);


--
-- TOC entry 3101 (class 2606 OID 57501488)
-- Dependencies: 186 186
-- Name: pk_natureza; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY natureza
    ADD CONSTRAINT pk_natureza PRIMARY KEY (id);


--
-- TOC entry 3087 (class 2606 OID 57501457)
-- Dependencies: 182 182 182 182 182
-- Name: un_assoc_quadro_funcionarios; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_quadro_funcionario
    ADD CONSTRAINT un_assoc_quadro_funcionarios UNIQUE (id_categoria, id_pessoa_juridica, id_titulacao, id_area_conhecimento_predom);


--
-- TOC entry 3072 (class 2606 OID 57501429)
-- Dependencies: 178 178 178 178 178
-- Name: un_assocag_parceria; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assocag_parceria
    ADD CONSTRAINT un_assocag_parceria UNIQUE (id_categoria, id_pessoa_juridica, id_pessoa_juridica_parceira, id_assocag_parceria);


--
-- TOC entry 3043 (class 2606 OID 57501367)
-- Dependencies: 170 170 170
-- Name: un_assoccl_area_economia; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_area_economia
    ADD CONSTRAINT un_assoccl_area_economia UNIQUE (id_area_economia, id_pessoa_juridica);


--
-- TOC entry 3094 (class 2606 OID 57501472)
-- Dependencies: 184 184 184
-- Name: un_assoccl_capital_social; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_capital_social
    ADD CONSTRAINT un_assoccl_capital_social UNIQUE (id_pessoa_juridica, id_capital_social);


--
-- TOC entry 3050 (class 2606 OID 57501382)
-- Dependencies: 172 172 172 172 172
-- Name: un_assoccl_faturamento; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_faturamento
    ADD CONSTRAINT un_assoccl_faturamento UNIQUE (id_categoria, id_pessoa_juridica, ano_fiscal, mes_fiscal);


--
-- TOC entry 3036 (class 2606 OID 57501353)
-- Dependencies: 168 168 168 168
-- Name: un_incubadora; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assocag_incubadora
    ADD CONSTRAINT un_incubadora UNIQUE (id_categoria, id_pessoa_juridica, id_pessoa_juridica_incubada);


SET search_path = basico_sequencia, pg_catalog;

--
-- TOC entry 3026 (class 2606 OID 57501337)
-- Dependencies: 166 166
-- Name: pk_assocsq_acao_aplicacao; Type: CONSTRAINT; Schema: basico_sequencia; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assocsq_acao_aplicacao
    ADD CONSTRAINT pk_assocsq_acao_aplicacao PRIMARY KEY (id);


--
-- TOC entry 3028 (class 2606 OID 57501339)
-- Dependencies: 166 166 166 166 166
-- Name: un_assocsq_acao_aplicacao; Type: CONSTRAINT; Schema: basico_sequencia; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assocsq_acao_aplicacao
    ADD CONSTRAINT un_assocsq_acao_aplicacao UNIQUE (id_categoria, id_sequencia, id_acao_aplicacao, passo);


SET search_path = basico_template, pg_catalog;

--
-- TOC entry 3015 (class 2606 OID 57501319)
-- Dependencies: 164 164
-- Name: pk_assoccl_output; Type: CONSTRAINT; Schema: basico_template; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_output
    ADD CONSTRAINT pk_assoccl_output PRIMARY KEY (id);


--
-- TOC entry 3006 (class 2606 OID 57501303)
-- Dependencies: 162 162
-- Name: pk_template_assoccl_include; Type: CONSTRAINT; Schema: basico_template; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT pk_template_assoccl_include PRIMARY KEY (id);


--
-- TOC entry 3008 (class 2606 OID 57501307)
-- Dependencies: 162 162 162
-- Name: un_assoccl_include_ordem; Type: CONSTRAINT; Schema: basico_template; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT un_assoccl_include_ordem UNIQUE (id_template, ordem);


--
-- TOC entry 3010 (class 2606 OID 57501305)
-- Dependencies: 162 162 162
-- Name: un_assoccl_include_template; Type: CONSTRAINT; Schema: basico_template; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT un_assoccl_include_template UNIQUE (id_template, id_include);


--
-- TOC entry 3017 (class 2606 OID 57501321)
-- Dependencies: 164 164 164
-- Name: un_assoccl_output; Type: CONSTRAINT; Schema: basico_template; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_output
    ADD CONSTRAINT un_assoccl_output UNIQUE (id_template, id_output);


SET search_path = basico, pg_catalog;

--
-- TOC entry 3701 (class 1259 OID 57504402)
-- Dependencies: 352
-- Name: acao_aplicacao_action; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX acao_aplicacao_action ON acao_aplicacao USING btree (action);


--
-- TOC entry 3702 (class 1259 OID 57504403)
-- Dependencies: 352
-- Name: acao_aplicacao_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX acao_aplicacao_constante_textual ON acao_aplicacao USING btree (constante_textual);


--
-- TOC entry 3703 (class 1259 OID 57504401)
-- Dependencies: 352
-- Name: acao_aplicacao_controller; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX acao_aplicacao_controller ON acao_aplicacao USING btree (controller);


--
-- TOC entry 3704 (class 1259 OID 57504399)
-- Dependencies: 352
-- Name: acao_aplicacao_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX acao_aplicacao_id ON acao_aplicacao USING btree (id);


--
-- TOC entry 3705 (class 1259 OID 57504400)
-- Dependencies: 352
-- Name: acao_aplicacao_id_modulo; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX acao_aplicacao_id_modulo ON acao_aplicacao USING btree (id_modulo);


--
-- TOC entry 3572 (class 1259 OID 57504314)
-- Dependencies: 316
-- Name: ajuda_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX ajuda_constante_textual ON ajuda USING btree (constante_textual);


--
-- TOC entry 3573 (class 1259 OID 57504316)
-- Dependencies: 316
-- Name: ajuda_constante_textual_ajuda; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX ajuda_constante_textual_ajuda ON ajuda USING btree (constante_textual_ajuda);


--
-- TOC entry 3574 (class 1259 OID 57504315)
-- Dependencies: 316
-- Name: ajuda_constante_textual_descricao; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX ajuda_constante_textual_descricao ON ajuda USING btree (constante_textual_descricao);


--
-- TOC entry 3575 (class 1259 OID 57504317)
-- Dependencies: 316
-- Name: ajuda_constante_textual_hint; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX ajuda_constante_textual_hint ON ajuda USING btree (constante_textual_hint);


--
-- TOC entry 3576 (class 1259 OID 57504311)
-- Dependencies: 316
-- Name: ajuda_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX ajuda_id ON ajuda USING btree (id);


--
-- TOC entry 3577 (class 1259 OID 57504312)
-- Dependencies: 316
-- Name: ajuda_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX ajuda_id_categoria ON ajuda USING btree (id_categoria);


--
-- TOC entry 3578 (class 1259 OID 57504313)
-- Dependencies: 316
-- Name: ajuda_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX ajuda_nome ON ajuda USING btree (nome);


--
-- TOC entry 3645 (class 1259 OID 57504366)
-- Dependencies: 336
-- Name: area_conhecimento_codigo; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX area_conhecimento_codigo ON area_conhecimento USING btree (codigo);


--
-- TOC entry 3646 (class 1259 OID 57504365)
-- Dependencies: 336
-- Name: area_conhecimento_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX area_conhecimento_constante_textual ON area_conhecimento USING btree (constante_textual);


--
-- TOC entry 3647 (class 1259 OID 57504361)
-- Dependencies: 336
-- Name: area_conhecimento_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX area_conhecimento_id ON area_conhecimento USING btree (id);


--
-- TOC entry 3648 (class 1259 OID 57504362)
-- Dependencies: 336
-- Name: area_conhecimento_id_area_conhecimento_pai; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX area_conhecimento_id_area_conhecimento_pai ON area_conhecimento USING btree (id_area_conhecimento_pai);


--
-- TOC entry 3649 (class 1259 OID 57504363)
-- Dependencies: 336
-- Name: area_conhecimento_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX area_conhecimento_id_categoria ON area_conhecimento USING btree (id_categoria);


--
-- TOC entry 3650 (class 1259 OID 57504364)
-- Dependencies: 336
-- Name: area_conhecimento_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX area_conhecimento_nome ON area_conhecimento USING btree (nome);


--
-- TOC entry 3602 (class 1259 OID 57504338)
-- Dependencies: 324
-- Name: area_economia_codigo; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX area_economia_codigo ON area_economia USING btree (codigo);


--
-- TOC entry 3603 (class 1259 OID 57504337)
-- Dependencies: 324
-- Name: area_economia_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX area_economia_constante_textual ON area_economia USING btree (constante_textual);


--
-- TOC entry 3604 (class 1259 OID 57504333)
-- Dependencies: 324
-- Name: area_economia_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX area_economia_id ON area_economia USING btree (id);


--
-- TOC entry 3605 (class 1259 OID 57504334)
-- Dependencies: 324
-- Name: area_economia_id_area_economia_pai; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX area_economia_id_area_economia_pai ON area_economia USING btree (id_area_economia_pai);


--
-- TOC entry 3606 (class 1259 OID 57504335)
-- Dependencies: 324
-- Name: area_economia_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX area_economia_id_categoria ON area_economia USING btree (id_categoria);


--
-- TOC entry 3607 (class 1259 OID 57504336)
-- Dependencies: 324
-- Name: area_economia_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX area_economia_nome ON area_economia USING btree (nome);


--
-- TOC entry 3562 (class 1259 OID 57504310)
-- Dependencies: 314
-- Name: arquivo_full_filename; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX arquivo_full_filename ON arquivo USING btree (full_filename);


--
-- TOC entry 3563 (class 1259 OID 57504303)
-- Dependencies: 314
-- Name: arquivo_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX arquivo_id ON arquivo USING btree (id);


--
-- TOC entry 3564 (class 1259 OID 57504304)
-- Dependencies: 314
-- Name: arquivo_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX arquivo_id_categoria ON arquivo USING btree (id_categoria);


--
-- TOC entry 3565 (class 1259 OID 57504305)
-- Dependencies: 314
-- Name: arquivo_id_generico_proprietario; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX arquivo_id_generico_proprietario ON arquivo USING btree (id_generico_proprietario);


--
-- TOC entry 3566 (class 1259 OID 57504309)
-- Dependencies: 314
-- Name: arquivo_mime_type; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX arquivo_mime_type ON arquivo USING btree (mime_type);


--
-- TOC entry 3567 (class 1259 OID 57504306)
-- Dependencies: 314
-- Name: arquivo_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX arquivo_nome ON arquivo USING btree (nome);


--
-- TOC entry 3568 (class 1259 OID 57504307)
-- Dependencies: 314
-- Name: arquivo_nome_original; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX arquivo_nome_original ON arquivo USING btree (nome_original);


--
-- TOC entry 3569 (class 1259 OID 57504308)
-- Dependencies: 314
-- Name: arquivo_nome_sugestao; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX arquivo_nome_sugestao ON arquivo USING btree (nome_sugestao);


--
-- TOC entry 3710 (class 1259 OID 57504415)
-- Dependencies: 354
-- Name: categoria_codigo; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX categoria_codigo ON categoria USING btree (codigo);


--
-- TOC entry 3711 (class 1259 OID 57504414)
-- Dependencies: 354
-- Name: categoria_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX categoria_constante_textual ON categoria USING btree (constante_textual);


--
-- TOC entry 3712 (class 1259 OID 57504404)
-- Dependencies: 354
-- Name: categoria_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX categoria_id ON categoria USING btree (id);


--
-- TOC entry 3713 (class 1259 OID 57504406)
-- Dependencies: 354
-- Name: categoria_id_categoria_pai; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX categoria_id_categoria_pai ON categoria USING btree (id_categoria_pai);


--
-- TOC entry 3714 (class 1259 OID 57504405)
-- Dependencies: 354
-- Name: categoria_id_tipo_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX categoria_id_tipo_categoria ON categoria USING btree (id_tipo_categoria);


--
-- TOC entry 3715 (class 1259 OID 57504407)
-- Dependencies: 354
-- Name: categoria_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX categoria_nome ON categoria USING btree (nome);


--
-- TOC entry 3545 (class 1259 OID 57504299)
-- Dependencies: 310
-- Name: codigo_acesso_codigo; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX codigo_acesso_codigo ON codigo_acesso USING btree (codigo);


--
-- TOC entry 3546 (class 1259 OID 57504293)
-- Dependencies: 310
-- Name: codigo_acesso_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX codigo_acesso_id ON codigo_acesso USING btree (id);


--
-- TOC entry 3547 (class 1259 OID 57504297)
-- Dependencies: 310
-- Name: codigo_acesso_id_categoria_acesso; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX codigo_acesso_id_categoria_acesso ON codigo_acesso USING btree (id_categoria_acesso);


--
-- TOC entry 3548 (class 1259 OID 57504294)
-- Dependencies: 310
-- Name: codigo_acesso_id_categoria_proprietario; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX codigo_acesso_id_categoria_proprietario ON codigo_acesso USING btree (id_categoria_proprietario);


--
-- TOC entry 3549 (class 1259 OID 57504298)
-- Dependencies: 310
-- Name: codigo_acesso_id_generico_acesso; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX codigo_acesso_id_generico_acesso ON codigo_acesso USING btree (id_generico_acesso);


--
-- TOC entry 3550 (class 1259 OID 57504295)
-- Dependencies: 310
-- Name: codigo_acesso_id_generico_proprietario; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX codigo_acesso_id_generico_proprietario ON codigo_acesso USING btree (id_generico_proprietario);


--
-- TOC entry 3766 (class 1259 OID 57504449)
-- Dependencies: 372
-- Name: componente_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX componente_constante_textual ON componente USING btree (constante_textual);


--
-- TOC entry 3767 (class 1259 OID 57504450)
-- Dependencies: 372
-- Name: componente_constante_textual_descricao; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX componente_constante_textual_descricao ON componente USING btree (constante_textual_descricao);


--
-- TOC entry 3768 (class 1259 OID 57504446)
-- Dependencies: 372
-- Name: componente_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX componente_id ON componente USING btree (id);


--
-- TOC entry 3769 (class 1259 OID 57504447)
-- Dependencies: 372
-- Name: componente_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX componente_id_categoria ON componente USING btree (id_categoria);


--
-- TOC entry 3770 (class 1259 OID 57504448)
-- Dependencies: 372
-- Name: componente_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX componente_nome ON componente USING btree (nome);


--
-- TOC entry 3750 (class 1259 OID 57504436)
-- Dependencies: 368
-- Name: dados_bancarios_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX dados_bancarios_id ON dados_bancarios USING btree (id);


--
-- TOC entry 3751 (class 1259 OID 57504437)
-- Dependencies: 368
-- Name: dados_bancarios_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX dados_bancarios_id_categoria ON dados_bancarios USING btree (id_categoria);


--
-- TOC entry 3752 (class 1259 OID 57504438)
-- Dependencies: 368
-- Name: dados_bancarios_id_generico_proprietario; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX dados_bancarios_id_generico_proprietario ON dados_bancarios USING btree (id_generico_proprietario);


--
-- TOC entry 3753 (class 1259 OID 57504440)
-- Dependencies: 368
-- Name: dados_bancarios_nome_banco; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX dados_bancarios_nome_banco ON dados_bancarios USING btree (nome_banco);


--
-- TOC entry 3754 (class 1259 OID 57504439)
-- Dependencies: 368
-- Name: dados_bancarios_numero_banco; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX dados_bancarios_numero_banco ON dados_bancarios USING btree (numero_banco);


--
-- TOC entry 3740 (class 1259 OID 57504430)
-- Dependencies: 364
-- Name: dados_biometricos_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX dados_biometricos_id ON dados_biometricos USING btree (id);


--
-- TOC entry 3741 (class 1259 OID 57504431)
-- Dependencies: 364
-- Name: dados_biometricos_id_pessoa; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX dados_biometricos_id_pessoa ON dados_biometricos USING btree (id_pessoa);


--
-- TOC entry 3555 (class 1259 OID 57504302)
-- Dependencies: 312
-- Name: dicionario_expressao_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX dicionario_expressao_constante_textual ON dicionario_expressao USING btree (constante_textual);


--
-- TOC entry 3556 (class 1259 OID 57504300)
-- Dependencies: 312
-- Name: dicionario_expressao_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX dicionario_expressao_id ON dicionario_expressao USING btree (id);


--
-- TOC entry 3557 (class 1259 OID 57504301)
-- Dependencies: 312
-- Name: dicionario_expressao_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX dicionario_expressao_id_categoria ON dicionario_expressao USING btree (id_categoria);


--
-- TOC entry 3616 (class 1259 OID 57504342)
-- Dependencies: 328
-- Name: documento_identificacao_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX documento_identificacao_id ON documento_identificacao USING btree (id);


--
-- TOC entry 3617 (class 1259 OID 57504343)
-- Dependencies: 328
-- Name: documento_identificacao_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX documento_identificacao_id_categoria ON documento_identificacao USING btree (id_categoria);


--
-- TOC entry 3618 (class 1259 OID 57504344)
-- Dependencies: 328
-- Name: documento_identificacao_id_generico_proprietario; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX documento_identificacao_id_generico_proprietario ON documento_identificacao USING btree (id_generico_proprietario);


--
-- TOC entry 3619 (class 1259 OID 57504345)
-- Dependencies: 328
-- Name: documento_identificacao_id_pessoa_juridica_emissor; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX documento_identificacao_id_pessoa_juridica_emissor ON documento_identificacao USING btree (id_pessoa_juridica_emissor);


--
-- TOC entry 3620 (class 1259 OID 57504346)
-- Dependencies: 328
-- Name: documento_identificacao_identificador; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX documento_identificacao_identificador ON documento_identificacao USING btree (identificador);


--
-- TOC entry 3773 (class 1259 OID 57504454)
-- Dependencies: 374
-- Name: evento_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX evento_constante_textual ON evento USING btree (constante_textual);


--
-- TOC entry 3774 (class 1259 OID 57504451)
-- Dependencies: 374
-- Name: evento_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX evento_id ON evento USING btree (id);


--
-- TOC entry 3775 (class 1259 OID 57504452)
-- Dependencies: 374
-- Name: evento_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX evento_id_categoria ON evento USING btree (id_categoria);


--
-- TOC entry 3776 (class 1259 OID 57504453)
-- Dependencies: 374
-- Name: evento_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX evento_nome ON evento USING btree (nome);


--
-- TOC entry 3589 (class 1259 OID 57504327)
-- Dependencies: 320
-- Name: filter_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX filter_constante_textual ON filter USING btree (constante_textual);


--
-- TOC entry 3590 (class 1259 OID 57504328)
-- Dependencies: 320
-- Name: filter_constante_textual_descricao; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX filter_constante_textual_descricao ON filter USING btree (constante_textual_descricao);


--
-- TOC entry 3591 (class 1259 OID 57504324)
-- Dependencies: 320
-- Name: filter_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX filter_id ON filter USING btree (id);


--
-- TOC entry 3592 (class 1259 OID 57504325)
-- Dependencies: 320
-- Name: filter_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX filter_id_categoria ON filter USING btree (id_categoria);


--
-- TOC entry 3593 (class 1259 OID 57504326)
-- Dependencies: 320
-- Name: filter_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX filter_nome ON filter USING btree (nome);


--
-- TOC entry 3625 (class 1259 OID 57504351)
-- Dependencies: 330
-- Name: formulario_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX formulario_constante_textual ON formulario USING btree (constante_textual);


--
-- TOC entry 3626 (class 1259 OID 57504352)
-- Dependencies: 330
-- Name: formulario_form_name; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX formulario_form_name ON formulario USING btree (form_name);


--
-- TOC entry 3627 (class 1259 OID 57504347)
-- Dependencies: 330
-- Name: formulario_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX formulario_id ON formulario USING btree (id);


--
-- TOC entry 3628 (class 1259 OID 57504349)
-- Dependencies: 330
-- Name: formulario_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX formulario_id_categoria ON formulario USING btree (id_categoria);


--
-- TOC entry 3629 (class 1259 OID 57504348)
-- Dependencies: 330
-- Name: formulario_id_formulario_pai; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX formulario_id_formulario_pai ON formulario USING btree (id_formulario_pai);


--
-- TOC entry 3630 (class 1259 OID 57504350)
-- Dependencies: 330
-- Name: formulario_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX formulario_nome ON formulario USING btree (nome);


--
-- TOC entry 3664 (class 1259 OID 57504377)
-- Dependencies: 342
-- Name: include_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX include_constante_textual ON include USING btree (constante_textual);


--
-- TOC entry 3665 (class 1259 OID 57504378)
-- Dependencies: 342
-- Name: include_constante_textual_descricao; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX include_constante_textual_descricao ON include USING btree (constante_textual_descricao);


--
-- TOC entry 3666 (class 1259 OID 57504374)
-- Dependencies: 342
-- Name: include_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX include_id ON include USING btree (id);


--
-- TOC entry 3667 (class 1259 OID 57504375)
-- Dependencies: 342
-- Name: include_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX include_id_categoria ON include USING btree (id_categoria);


--
-- TOC entry 3668 (class 1259 OID 57504376)
-- Dependencies: 342
-- Name: include_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX include_nome ON include USING btree (nome);


--
-- TOC entry 3685 (class 1259 OID 57504393)
-- Dependencies: 348
-- Name: link_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX link_constante_textual ON link USING btree (constante_textual);


--
-- TOC entry 3686 (class 1259 OID 57504389)
-- Dependencies: 348
-- Name: link_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX link_id ON link USING btree (id);


--
-- TOC entry 3687 (class 1259 OID 57504390)
-- Dependencies: 348
-- Name: link_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX link_id_categoria ON link USING btree (id_categoria);


--
-- TOC entry 3688 (class 1259 OID 57504391)
-- Dependencies: 348
-- Name: link_id_generico_proprietario; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX link_id_generico_proprietario ON link USING btree (id_generico_proprietario);


--
-- TOC entry 3689 (class 1259 OID 57504392)
-- Dependencies: 348
-- Name: link_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX link_nome ON link USING btree (nome);


--
-- TOC entry 3690 (class 1259 OID 57504394)
-- Dependencies: 348
-- Name: link_url; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX link_url ON link USING btree (url);


--
-- TOC entry 3653 (class 1259 OID 57504367)
-- Dependencies: 338
-- Name: log_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX log_id ON log USING btree (id);


--
-- TOC entry 3654 (class 1259 OID 57504369)
-- Dependencies: 338
-- Name: log_id_assoccl_perfil; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX log_id_assoccl_perfil ON log USING btree (id_assoccl_perfil);


--
-- TOC entry 3655 (class 1259 OID 57504368)
-- Dependencies: 338
-- Name: log_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX log_id_categoria ON log USING btree (id_categoria);


--
-- TOC entry 3610 (class 1259 OID 57504339)
-- Dependencies: 326
-- Name: login_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX login_id ON login USING btree (id);


--
-- TOC entry 3611 (class 1259 OID 57504340)
-- Dependencies: 326
-- Name: login_id_pessoa; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX login_id_pessoa ON login USING btree (id_pessoa);


--
-- TOC entry 3671 (class 1259 OID 57504382)
-- Dependencies: 344
-- Name: mascara_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX mascara_constante_textual ON mascara USING btree (constante_textual);


--
-- TOC entry 3672 (class 1259 OID 57504383)
-- Dependencies: 344
-- Name: mascara_constante_textual_descricao; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX mascara_constante_textual_descricao ON mascara USING btree (constante_textual_descricao);


--
-- TOC entry 3673 (class 1259 OID 57504379)
-- Dependencies: 344
-- Name: mascara_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX mascara_id ON mascara USING btree (id);


--
-- TOC entry 3674 (class 1259 OID 57504380)
-- Dependencies: 344
-- Name: mascara_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX mascara_id_categoria ON mascara USING btree (id_categoria);


--
-- TOC entry 3675 (class 1259 OID 57504381)
-- Dependencies: 344
-- Name: mascara_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX mascara_nome ON mascara USING btree (nome);


--
-- TOC entry 3658 (class 1259 OID 57504370)
-- Dependencies: 340
-- Name: mensagem_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX mensagem_id ON mensagem USING btree (id);


--
-- TOC entry 3659 (class 1259 OID 57504371)
-- Dependencies: 340
-- Name: mensagem_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX mensagem_id_categoria ON mensagem USING btree (id_categoria);


--
-- TOC entry 3660 (class 1259 OID 57504372)
-- Dependencies: 340
-- Name: mensagem_id_generico_proprietario; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX mensagem_id_generico_proprietario ON mensagem USING btree (id_generico_proprietario);


--
-- TOC entry 3661 (class 1259 OID 57504373)
-- Dependencies: 340
-- Name: mensagem_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX mensagem_nome ON mensagem USING btree (nome);


--
-- TOC entry 3695 (class 1259 OID 57504398)
-- Dependencies: 350
-- Name: metodo_validacao_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX metodo_validacao_constante_textual ON metodo_validacao USING btree (constante_textual);


--
-- TOC entry 3696 (class 1259 OID 57504395)
-- Dependencies: 350
-- Name: metodo_validacao_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX metodo_validacao_id ON metodo_validacao USING btree (id);


--
-- TOC entry 3697 (class 1259 OID 57504396)
-- Dependencies: 350
-- Name: metodo_validacao_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX metodo_validacao_id_categoria ON metodo_validacao USING btree (id_categoria);


--
-- TOC entry 3698 (class 1259 OID 57504397)
-- Dependencies: 350
-- Name: metodo_validacao_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX metodo_validacao_nome ON metodo_validacao USING btree (nome);


--
-- TOC entry 3731 (class 1259 OID 57504428)
-- Dependencies: 360
-- Name: modulo_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX modulo_constante_textual ON modulo USING btree (constante_textual);


--
-- TOC entry 3732 (class 1259 OID 57504425)
-- Dependencies: 360
-- Name: modulo_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX modulo_id ON modulo USING btree (id);


--
-- TOC entry 3733 (class 1259 OID 57504426)
-- Dependencies: 360
-- Name: modulo_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX modulo_id_categoria ON modulo USING btree (id_categoria);


--
-- TOC entry 3734 (class 1259 OID 57504427)
-- Dependencies: 360
-- Name: modulo_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX modulo_nome ON modulo USING btree (nome);


--
-- TOC entry 3725 (class 1259 OID 57504424)
-- Dependencies: 358
-- Name: output_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX output_constante_textual ON output USING btree (constante_textual);


--
-- TOC entry 3726 (class 1259 OID 57504421)
-- Dependencies: 358
-- Name: output_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX output_id ON output USING btree (id);


--
-- TOC entry 3727 (class 1259 OID 57504422)
-- Dependencies: 358
-- Name: output_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX output_id_categoria ON output USING btree (id_categoria);


--
-- TOC entry 3728 (class 1259 OID 57504423)
-- Dependencies: 358
-- Name: output_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX output_nome ON output USING btree (nome);


--
-- TOC entry 3639 (class 1259 OID 57504360)
-- Dependencies: 334
-- Name: perfil_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX perfil_constante_textual ON perfil USING btree (constante_textual);


--
-- TOC entry 3640 (class 1259 OID 57504357)
-- Dependencies: 334
-- Name: perfil_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX perfil_id ON perfil USING btree (id);


--
-- TOC entry 3641 (class 1259 OID 57504358)
-- Dependencies: 334
-- Name: perfil_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX perfil_id_categoria ON perfil USING btree (id_categoria);


--
-- TOC entry 3642 (class 1259 OID 57504359)
-- Dependencies: 334
-- Name: perfil_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX perfil_nome ON perfil USING btree (nome);


--
-- TOC entry 3737 (class 1259 OID 57504429)
-- Dependencies: 362
-- Name: pessoa_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX pessoa_id ON pessoa USING btree (id);


--
-- TOC entry 3744 (class 1259 OID 57504432)
-- Dependencies: 366
-- Name: pessoa_juridica_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX pessoa_juridica_id ON pessoa_juridica USING btree (id);


--
-- TOC entry 3745 (class 1259 OID 57504433)
-- Dependencies: 366
-- Name: pessoa_juridica_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX pessoa_juridica_id_categoria ON pessoa_juridica USING btree (id_categoria);


--
-- TOC entry 3746 (class 1259 OID 57504434)
-- Dependencies: 366
-- Name: pessoa_juridica_id_natureza; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX pessoa_juridica_id_natureza ON pessoa_juridica USING btree (id_natureza);


--
-- TOC entry 3747 (class 1259 OID 57504435)
-- Dependencies: 366
-- Name: pessoa_juridica_id_pessoa_responsavel_cadastro; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX pessoa_juridica_id_pessoa_responsavel_cadastro ON pessoa_juridica USING btree (id_pessoa_responsavel_cadastro);


--
-- TOC entry 3583 (class 1259 OID 57504323)
-- Dependencies: 318
-- Name: produto_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX produto_constante_textual ON produto USING btree (constante_textual);


--
-- TOC entry 3584 (class 1259 OID 57504318)
-- Dependencies: 318
-- Name: produto_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX produto_id ON produto USING btree (id);


--
-- TOC entry 3585 (class 1259 OID 57504319)
-- Dependencies: 318
-- Name: produto_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX produto_id_categoria ON produto USING btree (id_categoria);


--
-- TOC entry 3586 (class 1259 OID 57504321)
-- Dependencies: 318
-- Name: produto_id_categoria_moeda; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX produto_id_categoria_moeda ON produto USING btree (id_categoria_moeda);


--
-- TOC entry 3587 (class 1259 OID 57504320)
-- Dependencies: 318
-- Name: produto_id_generico_proprietario; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX produto_id_generico_proprietario ON produto USING btree (id_generico_proprietario);


--
-- TOC entry 3588 (class 1259 OID 57504322)
-- Dependencies: 318
-- Name: produto_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX produto_nome ON produto USING btree (nome);


--
-- TOC entry 3720 (class 1259 OID 57504420)
-- Dependencies: 356
-- Name: profissao_codigo; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX profissao_codigo ON profissao USING btree (codigo);


--
-- TOC entry 3721 (class 1259 OID 57504419)
-- Dependencies: 356
-- Name: profissao_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX profissao_constante_textual ON profissao USING btree (constante_textual);


--
-- TOC entry 3722 (class 1259 OID 57504416)
-- Dependencies: 356
-- Name: profissao_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX profissao_id ON profissao USING btree (id);


--
-- TOC entry 3723 (class 1259 OID 57504417)
-- Dependencies: 356
-- Name: profissao_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX profissao_id_categoria ON profissao USING btree (id_categoria);


--
-- TOC entry 3724 (class 1259 OID 57504418)
-- Dependencies: 356
-- Name: profissao_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX profissao_nome ON profissao USING btree (nome);


--
-- TOC entry 3598 (class 1259 OID 57504332)
-- Dependencies: 322
-- Name: sequencia_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX sequencia_constante_textual ON sequencia USING btree (constante_textual);


--
-- TOC entry 3599 (class 1259 OID 57504329)
-- Dependencies: 322
-- Name: sequencia_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX sequencia_id ON sequencia USING btree (id);


--
-- TOC entry 3600 (class 1259 OID 57504330)
-- Dependencies: 322
-- Name: sequencia_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX sequencia_id_categoria ON sequencia USING btree (id_categoria);


--
-- TOC entry 3601 (class 1259 OID 57504331)
-- Dependencies: 322
-- Name: sequencia_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX sequencia_nome ON sequencia USING btree (nome);


--
-- TOC entry 3635 (class 1259 OID 57504356)
-- Dependencies: 332
-- Name: template_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX template_constante_textual ON template USING btree (constante_textual);


--
-- TOC entry 3636 (class 1259 OID 57504353)
-- Dependencies: 332
-- Name: template_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX template_id ON template USING btree (id);


--
-- TOC entry 3637 (class 1259 OID 57504354)
-- Dependencies: 332
-- Name: template_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX template_id_categoria ON template USING btree (id_categoria);


--
-- TOC entry 3638 (class 1259 OID 57504355)
-- Dependencies: 332
-- Name: template_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX template_nome ON template USING btree (nome);


--
-- TOC entry 3680 (class 1259 OID 57504388)
-- Dependencies: 346
-- Name: tipo_categoria_codigo; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX tipo_categoria_codigo ON tipo_categoria USING btree (codigo);


--
-- TOC entry 3681 (class 1259 OID 57504387)
-- Dependencies: 346
-- Name: tipo_categoria_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX tipo_categoria_constante_textual ON tipo_categoria USING btree (constante_textual);


--
-- TOC entry 3682 (class 1259 OID 57504384)
-- Dependencies: 346
-- Name: tipo_categoria_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX tipo_categoria_id ON tipo_categoria USING btree (id);


--
-- TOC entry 3683 (class 1259 OID 57504385)
-- Dependencies: 346
-- Name: tipo_categoria_id_tipo_categoria_pai; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX tipo_categoria_id_tipo_categoria_pai ON tipo_categoria USING btree (id_tipo_categoria_pai);


--
-- TOC entry 3684 (class 1259 OID 57504386)
-- Dependencies: 346
-- Name: tipo_categoria_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX tipo_categoria_nome ON tipo_categoria USING btree (nome);


--
-- TOC entry 3541 (class 1259 OID 57504289)
-- Dependencies: 308
-- Name: token_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX token_id ON token USING btree (id);


--
-- TOC entry 3542 (class 1259 OID 57504290)
-- Dependencies: 308
-- Name: token_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX token_id_categoria ON token USING btree (id_categoria);


--
-- TOC entry 3543 (class 1259 OID 57504291)
-- Dependencies: 308
-- Name: token_id_generico_proprietario; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX token_id_generico_proprietario ON token USING btree (id_generico_proprietario);


--
-- TOC entry 3544 (class 1259 OID 57504292)
-- Dependencies: 308
-- Name: token_token; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX token_token ON token USING btree (token);


--
-- TOC entry 3759 (class 1259 OID 57504444)
-- Dependencies: 370
-- Name: validator_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX validator_constante_textual ON validator USING btree (constante_textual);


--
-- TOC entry 3760 (class 1259 OID 57504445)
-- Dependencies: 370
-- Name: validator_constante_textual_descricao; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX validator_constante_textual_descricao ON validator USING btree (constante_textual_descricao);


--
-- TOC entry 3761 (class 1259 OID 57504441)
-- Dependencies: 370
-- Name: validator_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX validator_id ON validator USING btree (id);


--
-- TOC entry 3762 (class 1259 OID 57504442)
-- Dependencies: 370
-- Name: validator_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX validator_id_categoria ON validator USING btree (id_categoria);


--
-- TOC entry 3763 (class 1259 OID 57504443)
-- Dependencies: 370
-- Name: validator_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX validator_nome ON validator USING btree (nome);


SET search_path = basico_acao_aplic_assoc_visao, pg_catalog;

--
-- TOC entry 3534 (class 1259 OID 57504286)
-- Dependencies: 306
-- Name: assoccl_atrib_met_rec_post_id; Type: INDEX; Schema: basico_acao_aplic_assoc_visao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_atrib_met_rec_post_id ON assoccl_atrib_met_rec_post USING btree (id);


--
-- TOC entry 3535 (class 1259 OID 57504287)
-- Dependencies: 306
-- Name: assoccl_atrib_met_rec_post_id_assoc_referencia_post; Type: INDEX; Schema: basico_acao_aplic_assoc_visao; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_atrib_met_rec_post_id_assoc_referencia_post ON assoccl_atrib_met_rec_post USING btree (id_assoc_referencia_post);


--
-- TOC entry 3536 (class 1259 OID 57504288)
-- Dependencies: 306
-- Name: assoccl_atrib_met_rec_post_id_atributo_metodo_recup_post; Type: INDEX; Schema: basico_acao_aplic_assoc_visao; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_atrib_met_rec_post_id_atributo_metodo_recup_post ON assoccl_atrib_met_rec_post USING btree (id_atributo_metodo_recup_post);


--
-- TOC entry 3526 (class 1259 OID 57504284)
-- Dependencies: 304
-- Name: atributo_metodo_recup_post_atributo; Type: INDEX; Schema: basico_acao_aplic_assoc_visao; Owner: -; Tablespace: 
--

CREATE INDEX atributo_metodo_recup_post_atributo ON atributo_metodo_recup_post USING btree (atributo);


--
-- TOC entry 3527 (class 1259 OID 57504282)
-- Dependencies: 304
-- Name: atributo_metodo_recup_post_id; Type: INDEX; Schema: basico_acao_aplic_assoc_visao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX atributo_metodo_recup_post_id ON atributo_metodo_recup_post USING btree (id);


--
-- TOC entry 3528 (class 1259 OID 57504283)
-- Dependencies: 304
-- Name: atributo_metodo_recup_post_id_categoria; Type: INDEX; Schema: basico_acao_aplic_assoc_visao; Owner: -; Tablespace: 
--

CREATE INDEX atributo_metodo_recup_post_id_categoria ON atributo_metodo_recup_post USING btree (id_categoria);


--
-- TOC entry 3529 (class 1259 OID 57504285)
-- Dependencies: 304
-- Name: atributo_metodo_recup_post_metodo_recuperacao; Type: INDEX; Schema: basico_acao_aplic_assoc_visao; Owner: -; Tablespace: 
--

CREATE INDEX atributo_metodo_recup_post_metodo_recuperacao ON atributo_metodo_recup_post USING btree (metodo_recuperacao);


SET search_path = basico_acao_aplicacao, pg_catalog;

--
-- TOC entry 3509 (class 1259 OID 57504274)
-- Dependencies: 300
-- Name: assoc_visao_constante_textual; Type: INDEX; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_visao_constante_textual ON assoc_visao USING btree (constante_textual);


--
-- TOC entry 3510 (class 1259 OID 57504277)
-- Dependencies: 300
-- Name: assoc_visao_constante_textual_mensagem; Type: INDEX; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_visao_constante_textual_mensagem ON assoc_visao USING btree (constante_textual_mensagem);


--
-- TOC entry 3511 (class 1259 OID 57504276)
-- Dependencies: 300
-- Name: assoc_visao_constante_textual_subtitulo; Type: INDEX; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_visao_constante_textual_subtitulo ON assoc_visao USING btree (constante_textual_subtitulo);


--
-- TOC entry 3512 (class 1259 OID 57504275)
-- Dependencies: 300
-- Name: assoc_visao_constante_textual_titulo; Type: INDEX; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_visao_constante_textual_titulo ON assoc_visao USING btree (constante_textual_titulo);


--
-- TOC entry 3513 (class 1259 OID 57504271)
-- Dependencies: 300
-- Name: assoc_visao_id; Type: INDEX; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_visao_id ON assoc_visao USING btree (id);


--
-- TOC entry 3514 (class 1259 OID 57504273)
-- Dependencies: 300
-- Name: assoc_visao_id_acao_aplicacao; Type: INDEX; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_visao_id_acao_aplicacao ON assoc_visao USING btree (id_acao_aplicacao);


--
-- TOC entry 3515 (class 1259 OID 57504272)
-- Dependencies: 300
-- Name: assoc_visao_id_categoria; Type: INDEX; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_visao_id_categoria ON assoc_visao USING btree (id_categoria);


--
-- TOC entry 3518 (class 1259 OID 57504278)
-- Dependencies: 302
-- Name: assoccl_metodo_validacao_id; Type: INDEX; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_metodo_validacao_id ON assoccl_metodo_validacao USING btree (id);


--
-- TOC entry 3519 (class 1259 OID 57504279)
-- Dependencies: 302
-- Name: assoccl_metodo_validacao_id_acao_aplicacao; Type: INDEX; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_metodo_validacao_id_acao_aplicacao ON assoccl_metodo_validacao USING btree (id_acao_aplicacao);


--
-- TOC entry 3520 (class 1259 OID 57504280)
-- Dependencies: 302
-- Name: assoccl_metodo_validacao_id_metodo_validacao; Type: INDEX; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_metodo_validacao_id_metodo_validacao ON assoccl_metodo_validacao USING btree (id_metodo_validacao);


--
-- TOC entry 3521 (class 1259 OID 57504281)
-- Dependencies: 302
-- Name: assoccl_metodo_validacao_id_perfil; Type: INDEX; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_metodo_validacao_id_perfil ON assoccl_metodo_validacao USING btree (id_perfil);


--
-- TOC entry 3502 (class 1259 OID 57504268)
-- Dependencies: 298
-- Name: assoccl_perfil_id; Type: INDEX; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_perfil_id ON assoccl_perfil USING btree (id);


--
-- TOC entry 3503 (class 1259 OID 57504269)
-- Dependencies: 298
-- Name: assoccl_perfil_id_acao_aplicacao; Type: INDEX; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_perfil_id_acao_aplicacao ON assoccl_perfil USING btree (id_acao_aplicacao);


--
-- TOC entry 3504 (class 1259 OID 57504270)
-- Dependencies: 298
-- Name: assoccl_perfil_id_perfil; Type: INDEX; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_perfil_id_perfil ON assoccl_perfil USING btree (id_perfil);


SET search_path = basico_ajuda, pg_catalog;

--
-- TOC entry 3495 (class 1259 OID 57504265)
-- Dependencies: 296
-- Name: assoccl_link_id; Type: INDEX; Schema: basico_ajuda; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_link_id ON assoccl_link USING btree (id);


--
-- TOC entry 3496 (class 1259 OID 57504266)
-- Dependencies: 296
-- Name: assoccl_link_id_ajuda; Type: INDEX; Schema: basico_ajuda; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_link_id_ajuda ON assoccl_link USING btree (id_ajuda);


--
-- TOC entry 3497 (class 1259 OID 57504267)
-- Dependencies: 296
-- Name: assoccl_link_id_link; Type: INDEX; Schema: basico_ajuda; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_link_id_link ON assoccl_link USING btree (id_link);


SET search_path = basico_assoc_banco, pg_catalog;

--
-- TOC entry 3487 (class 1259 OID 57504264)
-- Dependencies: 294
-- Name: assoc_tipo_conta_codigo; Type: INDEX; Schema: basico_assoc_banco; Owner: -; Tablespace: 
--

CREATE INDEX assoc_tipo_conta_codigo ON assoc_tipo_conta USING btree (codigo);


--
-- TOC entry 3488 (class 1259 OID 57504263)
-- Dependencies: 294
-- Name: assoc_tipo_conta_constante_textual; Type: INDEX; Schema: basico_assoc_banco; Owner: -; Tablespace: 
--

CREATE INDEX assoc_tipo_conta_constante_textual ON assoc_tipo_conta USING btree (constante_textual);


--
-- TOC entry 3489 (class 1259 OID 57504259)
-- Dependencies: 294
-- Name: assoc_tipo_conta_id; Type: INDEX; Schema: basico_assoc_banco; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_tipo_conta_id ON assoc_tipo_conta USING btree (id);


--
-- TOC entry 3490 (class 1259 OID 57504260)
-- Dependencies: 294
-- Name: assoc_tipo_conta_id_assoc_banco; Type: INDEX; Schema: basico_assoc_banco; Owner: -; Tablespace: 
--

CREATE INDEX assoc_tipo_conta_id_assoc_banco ON assoc_tipo_conta USING btree (id_assoc_banco);


--
-- TOC entry 3491 (class 1259 OID 57504261)
-- Dependencies: 294
-- Name: assoc_tipo_conta_id_categoria; Type: INDEX; Schema: basico_assoc_banco; Owner: -; Tablespace: 
--

CREATE INDEX assoc_tipo_conta_id_categoria ON assoc_tipo_conta USING btree (id_categoria);


--
-- TOC entry 3492 (class 1259 OID 57504262)
-- Dependencies: 294
-- Name: assoc_tipo_conta_nome; Type: INDEX; Schema: basico_assoc_banco; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_tipo_conta_nome ON assoc_tipo_conta USING btree (nome);


SET search_path = basico_assoc_chave_estrangeira, pg_catalog;

--
-- TOC entry 3482 (class 1259 OID 57504258)
-- Dependencies: 292
-- Name: relacao_campo_origem; Type: INDEX; Schema: basico_assoc_chave_estrangeira; Owner: -; Tablespace: 
--

CREATE INDEX relacao_campo_origem ON relacao USING btree (campo_origem);


--
-- TOC entry 3483 (class 1259 OID 57504256)
-- Dependencies: 292
-- Name: relacao_id; Type: INDEX; Schema: basico_assoc_chave_estrangeira; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX relacao_id ON relacao USING btree (id);


--
-- TOC entry 3484 (class 1259 OID 57504257)
-- Dependencies: 292
-- Name: relacao_tabela_origem; Type: INDEX; Schema: basico_assoc_chave_estrangeira; Owner: -; Tablespace: 
--

CREATE INDEX relacao_tabela_origem ON relacao USING btree (tabela_origem);


SET search_path = basico_assoc_dados_profis, pg_catalog;

--
-- TOC entry 3473 (class 1259 OID 57504253)
-- Dependencies: 290
-- Name: assoccl_area_conhecimento_id; Type: INDEX; Schema: basico_assoc_dados_profis; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_area_conhecimento_id ON assoccl_area_conhecimento USING btree (id);


--
-- TOC entry 3474 (class 1259 OID 57504254)
-- Dependencies: 290
-- Name: assoccl_area_conhecimento_id_area_conhecimento; Type: INDEX; Schema: basico_assoc_dados_profis; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_area_conhecimento_id_area_conhecimento ON assoccl_area_conhecimento USING btree (id_area_conhecimento);


--
-- TOC entry 3475 (class 1259 OID 57504255)
-- Dependencies: 290
-- Name: assoccl_area_conhecimento_id_assoc_dados_profissionais; Type: INDEX; Schema: basico_assoc_dados_profis; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_area_conhecimento_id_assoc_dados_profissionais ON assoccl_area_conhecimento USING btree (id_assoc_dados_profissionais);


SET search_path = basico_assoccl_pessoa_perfil, pg_catalog;

--
-- TOC entry 3469 (class 1259 OID 57504251)
-- Dependencies: 288
-- Name: assoc_dados_id; Type: INDEX; Schema: basico_assoccl_pessoa_perfil; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_dados_id ON assoc_dados USING btree (id);


--
-- TOC entry 3470 (class 1259 OID 57504252)
-- Dependencies: 288
-- Name: assoc_dados_id_assoccl_pessoa_perfil; Type: INDEX; Schema: basico_assoccl_pessoa_perfil; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_dados_id_assoccl_pessoa_perfil ON assoc_dados USING btree (id_assoccl_pessoa_perfil);


SET search_path = basico_assocl_vinculo_profissional, pg_catalog;

--
-- TOC entry 3461 (class 1259 OID 57504245)
-- Dependencies: 286
-- Name: assoc_dados_id; Type: INDEX; Schema: basico_assocl_vinculo_profissional; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_dados_id ON assoc_dados USING btree (id);


--
-- TOC entry 3462 (class 1259 OID 57504246)
-- Dependencies: 286
-- Name: assoc_dados_id_assocl_vinculo_profissional; Type: INDEX; Schema: basico_assocl_vinculo_profissional; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_dados_id_assocl_vinculo_profissional ON assoc_dados USING btree (id_assocl_vinculo_profissional);


--
-- TOC entry 3463 (class 1259 OID 57504249)
-- Dependencies: 286
-- Name: assoc_dados_id_pessoa_juridica_vinculo; Type: INDEX; Schema: basico_assocl_vinculo_profissional; Owner: -; Tablespace: 
--

CREATE INDEX assoc_dados_id_pessoa_juridica_vinculo ON assoc_dados USING btree (id_pessoa_juridica_vinculo);


--
-- TOC entry 3464 (class 1259 OID 57504247)
-- Dependencies: 286
-- Name: assoc_dados_id_profissao; Type: INDEX; Schema: basico_assocl_vinculo_profissional; Owner: -; Tablespace: 
--

CREATE INDEX assoc_dados_id_profissao ON assoc_dados USING btree (id_profissao);


--
-- TOC entry 3465 (class 1259 OID 57504248)
-- Dependencies: 286
-- Name: assoc_dados_id_vinculo_empregaticio; Type: INDEX; Schema: basico_assocl_vinculo_profissional; Owner: -; Tablespace: 
--

CREATE INDEX assoc_dados_id_vinculo_empregaticio ON assoc_dados USING btree (id_vinculo_empregaticio);


--
-- TOC entry 3466 (class 1259 OID 57504250)
-- Dependencies: 286
-- Name: assoc_dados_matricula; Type: INDEX; Schema: basico_assocl_vinculo_profissional; Owner: -; Tablespace: 
--

CREATE INDEX assoc_dados_matricula ON assoc_dados USING btree (matricula);


SET search_path = basico_categoria, pg_catalog;

--
-- TOC entry 3452 (class 1259 OID 57504244)
-- Dependencies: 284
-- Name: assoc_chave_estrangeira_campo_estrangeiro; Type: INDEX; Schema: basico_categoria; Owner: -; Tablespace: 
--

CREATE INDEX assoc_chave_estrangeira_campo_estrangeiro ON assoc_chave_estrangeira USING btree (campo_estrangeiro);


--
-- TOC entry 3453 (class 1259 OID 57504240)
-- Dependencies: 284
-- Name: assoc_chave_estrangeira_id; Type: INDEX; Schema: basico_categoria; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_chave_estrangeira_id ON assoc_chave_estrangeira USING btree (id);


--
-- TOC entry 3454 (class 1259 OID 57504242)
-- Dependencies: 284
-- Name: assoc_chave_estrangeira_id_categoria; Type: INDEX; Schema: basico_categoria; Owner: -; Tablespace: 
--

CREATE INDEX assoc_chave_estrangeira_id_categoria ON assoc_chave_estrangeira USING btree (id_categoria);


--
-- TOC entry 3455 (class 1259 OID 57504241)
-- Dependencies: 284
-- Name: assoc_chave_estrangeira_id_modulo; Type: INDEX; Schema: basico_categoria; Owner: -; Tablespace: 
--

CREATE INDEX assoc_chave_estrangeira_id_modulo ON assoc_chave_estrangeira USING btree (id_modulo);


--
-- TOC entry 3456 (class 1259 OID 57504243)
-- Dependencies: 284
-- Name: assoc_chave_estrangeira_tabela_estrangeira; Type: INDEX; Schema: basico_categoria; Owner: -; Tablespace: 
--

CREATE INDEX assoc_chave_estrangeira_tabela_estrangeira ON assoc_chave_estrangeira USING btree (tabela_estrangeira);


SET search_path = basico_componente, pg_catalog;

--
-- TOC entry 3443 (class 1259 OID 57504237)
-- Dependencies: 282
-- Name: assoccl_include_id; Type: INDEX; Schema: basico_componente; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_include_id ON assoccl_include USING btree (id);


--
-- TOC entry 3444 (class 1259 OID 57504238)
-- Dependencies: 282
-- Name: assoccl_include_id_componente; Type: INDEX; Schema: basico_componente; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_componente ON assoccl_include USING btree (id_componente);


--
-- TOC entry 3445 (class 1259 OID 57504239)
-- Dependencies: 282
-- Name: assoccl_include_id_include; Type: INDEX; Schema: basico_componente; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_include ON assoccl_include USING btree (id_include);


SET search_path = basico_contato, pg_catalog;

--
-- TOC entry 3433 (class 1259 OID 57504236)
-- Dependencies: 280
-- Name: email_email; Type: INDEX; Schema: basico_contato; Owner: -; Tablespace: 
--

CREATE INDEX email_email ON email USING btree (email);


--
-- TOC entry 3434 (class 1259 OID 57504231)
-- Dependencies: 280
-- Name: email_id; Type: INDEX; Schema: basico_contato; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX email_id ON email USING btree (id);


--
-- TOC entry 3435 (class 1259 OID 57504232)
-- Dependencies: 280
-- Name: email_id_categoria; Type: INDEX; Schema: basico_contato; Owner: -; Tablespace: 
--

CREATE INDEX email_id_categoria ON email USING btree (id_categoria);


--
-- TOC entry 3436 (class 1259 OID 57504233)
-- Dependencies: 280
-- Name: email_id_generico_proprietario; Type: INDEX; Schema: basico_contato; Owner: -; Tablespace: 
--

CREATE INDEX email_id_generico_proprietario ON email USING btree (id_generico_proprietario);


--
-- TOC entry 3437 (class 1259 OID 57504234)
-- Dependencies: 280
-- Name: email_nome; Type: INDEX; Schema: basico_contato; Owner: -; Tablespace: 
--

CREATE INDEX email_nome ON email USING btree (nome);


--
-- TOC entry 3438 (class 1259 OID 57504235)
-- Dependencies: 280
-- Name: email_unique_id; Type: INDEX; Schema: basico_contato; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX email_unique_id ON email USING btree (unique_id);


--
-- TOC entry 3427 (class 1259 OID 57504227)
-- Dependencies: 278
-- Name: telefone_id; Type: INDEX; Schema: basico_contato; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX telefone_id ON telefone USING btree (id);


--
-- TOC entry 3428 (class 1259 OID 57504228)
-- Dependencies: 278
-- Name: telefone_id_categoria; Type: INDEX; Schema: basico_contato; Owner: -; Tablespace: 
--

CREATE INDEX telefone_id_categoria ON telefone USING btree (id_categoria);


--
-- TOC entry 3429 (class 1259 OID 57504229)
-- Dependencies: 278
-- Name: telefone_id_generico_proprietario; Type: INDEX; Schema: basico_contato; Owner: -; Tablespace: 
--

CREATE INDEX telefone_id_generico_proprietario ON telefone USING btree (id_generico_proprietario);


--
-- TOC entry 3430 (class 1259 OID 57504230)
-- Dependencies: 278
-- Name: telefone_nome; Type: INDEX; Schema: basico_contato; Owner: -; Tablespace: 
--

CREATE INDEX telefone_nome ON telefone USING btree (nome);


SET search_path = basico_cvc, pg_catalog;

--
-- TOC entry 3418 (class 1259 OID 57504224)
-- Dependencies: 276
-- Name: cvc_id; Type: INDEX; Schema: basico_cvc; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX cvc_id ON cvc USING btree (id);


--
-- TOC entry 3419 (class 1259 OID 57504225)
-- Dependencies: 276
-- Name: cvc_id_assoc_chave_estrangeira; Type: INDEX; Schema: basico_cvc; Owner: -; Tablespace: 
--

CREATE INDEX cvc_id_assoc_chave_estrangeira ON cvc USING btree (id_assoc_chave_estrangeira);


--
-- TOC entry 3420 (class 1259 OID 57504226)
-- Dependencies: 276
-- Name: cvc_id_generico; Type: INDEX; Schema: basico_cvc; Owner: -; Tablespace: 
--

CREATE INDEX cvc_id_generico ON cvc USING btree (id_generico);


SET search_path = basico_dados_academicos, pg_catalog;

--
-- TOC entry 3414 (class 1259 OID 57504223)
-- Dependencies: 274
-- Name: titulacao_constante_textual; Type: INDEX; Schema: basico_dados_academicos; Owner: -; Tablespace: 
--

CREATE INDEX titulacao_constante_textual ON titulacao USING btree (constante_textual);


--
-- TOC entry 3415 (class 1259 OID 57504220)
-- Dependencies: 274
-- Name: titulacao_id; Type: INDEX; Schema: basico_dados_academicos; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX titulacao_id ON titulacao USING btree (id);


--
-- TOC entry 3416 (class 1259 OID 57504221)
-- Dependencies: 274
-- Name: titulacao_id_categoria; Type: INDEX; Schema: basico_dados_academicos; Owner: -; Tablespace: 
--

CREATE INDEX titulacao_id_categoria ON titulacao USING btree (id_categoria);


--
-- TOC entry 3417 (class 1259 OID 57504222)
-- Dependencies: 274
-- Name: titulacao_nome; Type: INDEX; Schema: basico_dados_academicos; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX titulacao_nome ON titulacao USING btree (nome);


SET search_path = basico_dados_biometricos, pg_catalog;

--
-- TOC entry 3409 (class 1259 OID 57504219)
-- Dependencies: 272
-- Name: tipo_sanguineo_constante_textual; Type: INDEX; Schema: basico_dados_biometricos; Owner: -; Tablespace: 
--

CREATE INDEX tipo_sanguineo_constante_textual ON tipo_sanguineo USING btree (constante_textual);


--
-- TOC entry 3410 (class 1259 OID 57504217)
-- Dependencies: 272
-- Name: tipo_sanguineo_id; Type: INDEX; Schema: basico_dados_biometricos; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX tipo_sanguineo_id ON tipo_sanguineo USING btree (id);


--
-- TOC entry 3411 (class 1259 OID 57504218)
-- Dependencies: 272
-- Name: tipo_sanguineo_nome; Type: INDEX; Schema: basico_dados_biometricos; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX tipo_sanguineo_nome ON tipo_sanguineo USING btree (nome);


SET search_path = basico_dados_profissionais, pg_catalog;

--
-- TOC entry 3394 (class 1259 OID 57504211)
-- Dependencies: 268
-- Name: regime_trabalho_codigo; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX regime_trabalho_codigo ON regime_trabalho USING btree (codigo);


--
-- TOC entry 3395 (class 1259 OID 57504210)
-- Dependencies: 268
-- Name: regime_trabalho_constante_textual; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE INDEX regime_trabalho_constante_textual ON regime_trabalho USING btree (constante_textual);


--
-- TOC entry 3396 (class 1259 OID 57504206)
-- Dependencies: 268
-- Name: regime_trabalho_id; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX regime_trabalho_id ON regime_trabalho USING btree (id);


--
-- TOC entry 3397 (class 1259 OID 57504208)
-- Dependencies: 268
-- Name: regime_trabalho_id_categoria; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE INDEX regime_trabalho_id_categoria ON regime_trabalho USING btree (id_categoria);


--
-- TOC entry 3398 (class 1259 OID 57504207)
-- Dependencies: 268
-- Name: regime_trabalho_id_regime_trabalho_pai; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE INDEX regime_trabalho_id_regime_trabalho_pai ON regime_trabalho USING btree (id_regime_trabalho_pai);


--
-- TOC entry 3399 (class 1259 OID 57504209)
-- Dependencies: 268
-- Name: regime_trabalho_nome; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX regime_trabalho_nome ON regime_trabalho USING btree (nome);


--
-- TOC entry 3402 (class 1259 OID 57504216)
-- Dependencies: 270
-- Name: tipo_vinculo_codigo; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX tipo_vinculo_codigo ON tipo_vinculo USING btree (codigo);


--
-- TOC entry 3403 (class 1259 OID 57504215)
-- Dependencies: 270
-- Name: tipo_vinculo_constante_textual; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE INDEX tipo_vinculo_constante_textual ON tipo_vinculo USING btree (constante_textual);


--
-- TOC entry 3404 (class 1259 OID 57504212)
-- Dependencies: 270
-- Name: tipo_vinculo_id; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX tipo_vinculo_id ON tipo_vinculo USING btree (id);


--
-- TOC entry 3405 (class 1259 OID 57504213)
-- Dependencies: 270
-- Name: tipo_vinculo_id_categoria; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE INDEX tipo_vinculo_id_categoria ON tipo_vinculo USING btree (id_categoria);


--
-- TOC entry 3406 (class 1259 OID 57504214)
-- Dependencies: 270
-- Name: tipo_vinculo_nome; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX tipo_vinculo_nome ON tipo_vinculo USING btree (nome);


--
-- TOC entry 3387 (class 1259 OID 57504205)
-- Dependencies: 266
-- Name: vinculo_empregaticio_codigo; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX vinculo_empregaticio_codigo ON vinculo_empregaticio USING btree (codigo);


--
-- TOC entry 3388 (class 1259 OID 57504204)
-- Dependencies: 266
-- Name: vinculo_empregaticio_constante_textual; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE INDEX vinculo_empregaticio_constante_textual ON vinculo_empregaticio USING btree (constante_textual);


--
-- TOC entry 3389 (class 1259 OID 57504201)
-- Dependencies: 266
-- Name: vinculo_empregaticio_id; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX vinculo_empregaticio_id ON vinculo_empregaticio USING btree (id);


--
-- TOC entry 3390 (class 1259 OID 57504202)
-- Dependencies: 266
-- Name: vinculo_empregaticio_id_categoria; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE INDEX vinculo_empregaticio_id_categoria ON vinculo_empregaticio USING btree (id_categoria);


--
-- TOC entry 3391 (class 1259 OID 57504203)
-- Dependencies: 266
-- Name: vinculo_empregaticio_nome; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX vinculo_empregaticio_nome ON vinculo_empregaticio USING btree (nome);


SET search_path = basico_decorator, pg_catalog;

--
-- TOC entry 3376 (class 1259 OID 57504198)
-- Dependencies: 264
-- Name: assoccl_include_id; Type: INDEX; Schema: basico_decorator; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_include_id ON assoccl_include USING btree (id);


--
-- TOC entry 3377 (class 1259 OID 57504199)
-- Dependencies: 264
-- Name: assoccl_include_id_decorator; Type: INDEX; Schema: basico_decorator; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_decorator ON assoccl_include USING btree (id_decorator);


--
-- TOC entry 3378 (class 1259 OID 57504200)
-- Dependencies: 264
-- Name: assoccl_include_id_include; Type: INDEX; Schema: basico_decorator; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_include ON assoccl_include USING btree (id_include);


SET search_path = basico_form_assoccl_elem_grupo, pg_catalog;

--
-- TOC entry 3371 (class 1259 OID 57504195)
-- Dependencies: 262
-- Name: assoccl_decorator_id; Type: INDEX; Schema: basico_form_assoccl_elem_grupo; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_decorator_id ON assoccl_decorator USING btree (id);


--
-- TOC entry 3372 (class 1259 OID 57504197)
-- Dependencies: 262
-- Name: assoccl_decorator_id_decorator; Type: INDEX; Schema: basico_form_assoccl_elem_grupo; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_decorator_id_decorator ON assoccl_decorator USING btree (id_decorator);


--
-- TOC entry 3373 (class 1259 OID 57504196)
-- Dependencies: 262
-- Name: assoccl_decorator_id_grupo; Type: INDEX; Schema: basico_form_assoccl_elem_grupo; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_decorator_id_grupo ON assoccl_decorator USING btree (id_grupo);


SET search_path = basico_form_assoccl_elemento, pg_catalog;

--
-- TOC entry 3334 (class 1259 OID 57504177)
-- Dependencies: 252
-- Name: assoccl_decorator_id; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_decorator_id ON assoccl_decorator USING btree (id);


--
-- TOC entry 3335 (class 1259 OID 57504178)
-- Dependencies: 252
-- Name: assoccl_decorator_id_assoccl_elemento; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_decorator_id_assoccl_elemento ON assoccl_decorator USING btree (id_assoccl_elemento);


--
-- TOC entry 3336 (class 1259 OID 57504179)
-- Dependencies: 252
-- Name: assoccl_decorator_id_decorator; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_decorator_id_decorator ON assoccl_decorator USING btree (id_decorator);


--
-- TOC entry 3365 (class 1259 OID 57504191)
-- Dependencies: 260
-- Name: assoccl_evento_id; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_evento_id ON assoccl_evento USING btree (id);


--
-- TOC entry 3366 (class 1259 OID 57504193)
-- Dependencies: 260
-- Name: assoccl_evento_id_assoccl_elemento; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_evento_id_assoccl_elemento ON assoccl_evento USING btree (id_assoccl_elemento);


--
-- TOC entry 3367 (class 1259 OID 57504192)
-- Dependencies: 260
-- Name: assoccl_evento_id_categoria; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_evento_id_categoria ON assoccl_evento USING btree (id_categoria);


--
-- TOC entry 3368 (class 1259 OID 57504194)
-- Dependencies: 260
-- Name: assoccl_evento_id_evento; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_evento_id_evento ON assoccl_evento USING btree (id_evento);


--
-- TOC entry 3327 (class 1259 OID 57504174)
-- Dependencies: 250
-- Name: assoccl_filter_id; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_filter_id ON assoccl_filter USING btree (id);


--
-- TOC entry 3328 (class 1259 OID 57504175)
-- Dependencies: 250
-- Name: assoccl_filter_id_assoccl_elemento; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_filter_id_assoccl_elemento ON assoccl_filter USING btree (id_assoccl_elemento);


--
-- TOC entry 3329 (class 1259 OID 57504176)
-- Dependencies: 250
-- Name: assoccl_filter_id_filter; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_filter_id_filter ON assoccl_filter USING btree (id_filter);


--
-- TOC entry 3356 (class 1259 OID 57504187)
-- Dependencies: 258
-- Name: assoccl_include_id; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_include_id ON assoccl_include USING btree (id);


--
-- TOC entry 3357 (class 1259 OID 57504189)
-- Dependencies: 258
-- Name: assoccl_include_id_assoccl_elemento; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_assoccl_elemento ON assoccl_include USING btree (id_assoccl_elemento);


--
-- TOC entry 3358 (class 1259 OID 57504190)
-- Dependencies: 258
-- Name: assoccl_include_id_include; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_include ON assoccl_include USING btree (id_include);


--
-- TOC entry 3349 (class 1259 OID 57504184)
-- Dependencies: 256
-- Name: assoccl_validator_id; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_validator_id ON assoccl_validator USING btree (id);


--
-- TOC entry 3350 (class 1259 OID 57504185)
-- Dependencies: 256
-- Name: assoccl_validator_id_assoccl_elemento; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_validator_id_assoccl_elemento ON assoccl_validator USING btree (id_assoccl_elemento);


--
-- TOC entry 3351 (class 1259 OID 57504186)
-- Dependencies: 256
-- Name: assoccl_validator_id_validator; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_validator_id_validator ON assoccl_validator USING btree (id_validator);


--
-- TOC entry 3343 (class 1259 OID 57504182)
-- Dependencies: 254
-- Name: grupo_constante_textual; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE INDEX grupo_constante_textual ON grupo USING btree (constante_textual);


--
-- TOC entry 3344 (class 1259 OID 57504183)
-- Dependencies: 254
-- Name: grupo_constante_textual_label; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE INDEX grupo_constante_textual_label ON grupo USING btree (constante_textual_label);


--
-- TOC entry 3345 (class 1259 OID 57504180)
-- Dependencies: 254
-- Name: grupo_id; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX grupo_id ON grupo USING btree (id);


--
-- TOC entry 3346 (class 1259 OID 57504181)
-- Dependencies: 254
-- Name: grupo_nome; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX grupo_nome ON grupo USING btree (nome);


SET search_path = basico_form_elemento, pg_catalog;

--
-- TOC entry 3320 (class 1259 OID 57504171)
-- Dependencies: 248
-- Name: assoccl_evento_id; Type: INDEX; Schema: basico_form_elemento; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_evento_id ON assoccl_evento USING btree (id);


--
-- TOC entry 3321 (class 1259 OID 57504172)
-- Dependencies: 248
-- Name: assoccl_evento_id_elemento; Type: INDEX; Schema: basico_form_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_evento_id_elemento ON assoccl_evento USING btree (id_elemento);


--
-- TOC entry 3322 (class 1259 OID 57504173)
-- Dependencies: 248
-- Name: assoccl_evento_id_evento; Type: INDEX; Schema: basico_form_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_evento_id_evento ON assoccl_evento USING btree (id_evento);


SET search_path = basico_formulario, pg_catalog;

--
-- TOC entry 3257 (class 1259 OID 57504136)
-- Dependencies: 232
-- Name: assoccl_decorator_id; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_decorator_id ON assoccl_decorator USING btree (id);


--
-- TOC entry 3258 (class 1259 OID 57504138)
-- Dependencies: 232
-- Name: assoccl_decorator_id_decorator; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_decorator_id_decorator ON assoccl_decorator USING btree (id_decorator);


--
-- TOC entry 3259 (class 1259 OID 57504137)
-- Dependencies: 232
-- Name: assoccl_decorator_id_formulario; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_decorator_id_formulario ON assoccl_decorator USING btree (id_formulario);


--
-- TOC entry 3312 (class 1259 OID 57504170)
-- Dependencies: 246
-- Name: assoccl_elemento_constante_textual_label; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_elemento_constante_textual_label ON assoccl_elemento USING btree (constante_textual_label);


--
-- TOC entry 3313 (class 1259 OID 57504167)
-- Dependencies: 246
-- Name: assoccl_elemento_id; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_elemento_id ON assoccl_elemento USING btree (id);


--
-- TOC entry 3314 (class 1259 OID 57504169)
-- Dependencies: 246
-- Name: assoccl_elemento_id_elemento; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_elemento_id_elemento ON assoccl_elemento USING btree (id_elemento);


--
-- TOC entry 3315 (class 1259 OID 57504168)
-- Dependencies: 246
-- Name: assoccl_elemento_id_formulario; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_elemento_id_formulario ON assoccl_elemento USING btree (id_formulario);


--
-- TOC entry 3305 (class 1259 OID 57504164)
-- Dependencies: 244
-- Name: assoccl_evento_id; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_evento_id ON assoccl_evento USING btree (id);


--
-- TOC entry 3306 (class 1259 OID 57504166)
-- Dependencies: 244
-- Name: assoccl_evento_id_evento; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_evento_id_evento ON assoccl_evento USING btree (id_evento);


--
-- TOC entry 3307 (class 1259 OID 57504165)
-- Dependencies: 244
-- Name: assoccl_evento_id_formulario; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_evento_id_formulario ON assoccl_evento USING btree (id_formulario);


--
-- TOC entry 3296 (class 1259 OID 57504161)
-- Dependencies: 242
-- Name: assoccl_include_id; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_include_id ON assoccl_include USING btree (id);


--
-- TOC entry 3297 (class 1259 OID 57504162)
-- Dependencies: 242
-- Name: assoccl_include_id_formulario; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_formulario ON assoccl_include USING btree (id_formulario);


--
-- TOC entry 3298 (class 1259 OID 57504163)
-- Dependencies: 242
-- Name: assoccl_include_id_include; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_include ON assoccl_include USING btree (id_include);


--
-- TOC entry 3252 (class 1259 OID 57504133)
-- Dependencies: 230
-- Name: assoccl_modulo_id; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_modulo_id ON assoccl_modulo USING btree (id);


--
-- TOC entry 3253 (class 1259 OID 57504135)
-- Dependencies: 230
-- Name: assoccl_modulo_id_formulario; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_modulo_id_formulario ON assoccl_modulo USING btree (id_formulario);


--
-- TOC entry 3254 (class 1259 OID 57504134)
-- Dependencies: 230
-- Name: assoccl_modulo_id_modulo; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_modulo_id_modulo ON assoccl_modulo USING btree (id_modulo);


--
-- TOC entry 3278 (class 1259 OID 57504149)
-- Dependencies: 238
-- Name: assoccl_template_id; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_template_id ON assoccl_template USING btree (id);


--
-- TOC entry 3279 (class 1259 OID 57504151)
-- Dependencies: 238
-- Name: assoccl_template_id_formulario; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_template_id_formulario ON assoccl_template USING btree (id_formulario);


--
-- TOC entry 3280 (class 1259 OID 57504150)
-- Dependencies: 238
-- Name: assoccl_template_id_template; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_template_id_template ON assoccl_template USING btree (id_template);


--
-- TOC entry 3272 (class 1259 OID 57504148)
-- Dependencies: 236
-- Name: decorator_constante_textual; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX decorator_constante_textual ON decorator USING btree (constante_textual);


--
-- TOC entry 3273 (class 1259 OID 57504145)
-- Dependencies: 236
-- Name: decorator_id; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX decorator_id ON decorator USING btree (id);


--
-- TOC entry 3274 (class 1259 OID 57504146)
-- Dependencies: 236
-- Name: decorator_id_categoria; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX decorator_id_categoria ON decorator USING btree (id_categoria);


--
-- TOC entry 3275 (class 1259 OID 57504147)
-- Dependencies: 236
-- Name: decorator_nome; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX decorator_nome ON decorator USING btree (nome);


--
-- TOC entry 3264 (class 1259 OID 57504143)
-- Dependencies: 234
-- Name: elemento_constante_textual; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX elemento_constante_textual ON elemento USING btree (constante_textual);


--
-- TOC entry 3265 (class 1259 OID 57504144)
-- Dependencies: 234
-- Name: elemento_constante_textual_label; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX elemento_constante_textual_label ON elemento USING btree (constante_textual_label);


--
-- TOC entry 3266 (class 1259 OID 57504139)
-- Dependencies: 234
-- Name: elemento_id; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX elemento_id ON elemento USING btree (id);


--
-- TOC entry 3267 (class 1259 OID 57504140)
-- Dependencies: 234
-- Name: elemento_id_categoria; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX elemento_id_categoria ON elemento USING btree (id_categoria);


--
-- TOC entry 3268 (class 1259 OID 57504141)
-- Dependencies: 234
-- Name: elemento_id_componente; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX elemento_id_componente ON elemento USING btree (id_componente);


--
-- TOC entry 3269 (class 1259 OID 57504142)
-- Dependencies: 234
-- Name: elemento_nome; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX elemento_nome ON elemento USING btree (nome);


--
-- TOC entry 3287 (class 1259 OID 57504159)
-- Dependencies: 240
-- Name: rascunho_form_action; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX rascunho_form_action ON rascunho USING btree (form_action);


--
-- TOC entry 3288 (class 1259 OID 57504160)
-- Dependencies: 240
-- Name: rascunho_form_name; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX rascunho_form_name ON rascunho USING btree (form_name);


--
-- TOC entry 3289 (class 1259 OID 57504152)
-- Dependencies: 240
-- Name: rascunho_id; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX rascunho_id ON rascunho USING btree (id);


--
-- TOC entry 3290 (class 1259 OID 57504158)
-- Dependencies: 240
-- Name: rascunho_id_acao_aplicacao_origem; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX rascunho_id_acao_aplicacao_origem ON rascunho USING btree (id_acao_aplicacao_origem);


--
-- TOC entry 3291 (class 1259 OID 57504156)
-- Dependencies: 240
-- Name: rascunho_id_assocag_grupo; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX rascunho_id_assocag_grupo ON rascunho USING btree (id_assocag_grupo);


--
-- TOC entry 3292 (class 1259 OID 57504155)
-- Dependencies: 240
-- Name: rascunho_id_assoccl_perfil; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX rascunho_id_assoccl_perfil ON rascunho USING btree (id_assoccl_perfil);


--
-- TOC entry 3293 (class 1259 OID 57504157)
-- Dependencies: 240
-- Name: rascunho_id_assocsq_acao_aplicacao; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX rascunho_id_assocsq_acao_aplicacao ON rascunho USING btree (id_assocsq_acao_aplicacao);


--
-- TOC entry 3294 (class 1259 OID 57504154)
-- Dependencies: 240
-- Name: rascunho_id_categoria; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX rascunho_id_categoria ON rascunho USING btree (id_categoria);


--
-- TOC entry 3295 (class 1259 OID 57504153)
-- Dependencies: 240
-- Name: rascunho_id_rascunho_pai; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX rascunho_id_rascunho_pai ON rascunho USING btree (id_rascunho_pai);


SET search_path = basico_formulario_elemento, pg_catalog;

--
-- TOC entry 3229 (class 1259 OID 57504124)
-- Dependencies: 224
-- Name: assoccl_decorator_id; Type: INDEX; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_decorator_id ON assoccl_decorator USING btree (id);


--
-- TOC entry 3230 (class 1259 OID 57504126)
-- Dependencies: 224
-- Name: assoccl_decorator_id_decorator; Type: INDEX; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_decorator_id_decorator ON assoccl_decorator USING btree (id_decorator);


--
-- TOC entry 3231 (class 1259 OID 57504125)
-- Dependencies: 224
-- Name: assoccl_decorator_id_elemento; Type: INDEX; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_decorator_id_elemento ON assoccl_decorator USING btree (id_elemento);


--
-- TOC entry 3245 (class 1259 OID 57504130)
-- Dependencies: 228
-- Name: assoccl_filter_id; Type: INDEX; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_filter_id ON assoccl_filter USING btree (id);


--
-- TOC entry 3246 (class 1259 OID 57504131)
-- Dependencies: 228
-- Name: assoccl_filter_id_elemento; Type: INDEX; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_filter_id_elemento ON assoccl_filter USING btree (id_elemento);


--
-- TOC entry 3247 (class 1259 OID 57504132)
-- Dependencies: 228
-- Name: assoccl_filter_id_filter; Type: INDEX; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_filter_id_filter ON assoccl_filter USING btree (id_filter);


--
-- TOC entry 3238 (class 1259 OID 57504127)
-- Dependencies: 226
-- Name: assoccl_validator_id; Type: INDEX; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_validator_id ON assoccl_validator USING btree (id);


--
-- TOC entry 3239 (class 1259 OID 57504128)
-- Dependencies: 226
-- Name: assoccl_validator_id_elemento; Type: INDEX; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_validator_id_elemento ON assoccl_validator USING btree (id_elemento);


--
-- TOC entry 3240 (class 1259 OID 57504129)
-- Dependencies: 226
-- Name: assoccl_validator_id_validator; Type: INDEX; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_validator_id_validator ON assoccl_validator USING btree (id_validator);


SET search_path = basico_formulario_rascunho, pg_catalog;

--
-- TOC entry 3225 (class 1259 OID 57504122)
-- Dependencies: 222
-- Name: assocag_grupo_id; Type: INDEX; Schema: basico_formulario_rascunho; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assocag_grupo_id ON assocag_grupo USING btree (id);


--
-- TOC entry 3226 (class 1259 OID 57504123)
-- Dependencies: 222
-- Name: assocag_grupo_id_assoccl_perfil; Type: INDEX; Schema: basico_formulario_rascunho; Owner: -; Tablespace: 
--

CREATE INDEX assocag_grupo_id_assoccl_perfil ON assocag_grupo USING btree (id_assoccl_perfil);


SET search_path = basico_localizacao, pg_catalog;

--
-- TOC entry 3184 (class 1259 OID 57504097)
-- Dependencies: 212
-- Name: assoc_bairro_id; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_bairro_id ON assoc_bairro USING btree (id);


--
-- TOC entry 3185 (class 1259 OID 57504098)
-- Dependencies: 212
-- Name: assoc_bairro_id_municipio; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_bairro_id_municipio ON assoc_bairro USING btree (id_municipio);


--
-- TOC entry 3186 (class 1259 OID 57504099)
-- Dependencies: 212
-- Name: assoc_bairro_nome; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_bairro_nome ON assoc_bairro USING btree (nome);


--
-- TOC entry 3201 (class 1259 OID 57504108)
-- Dependencies: 216
-- Name: assoc_estado_id; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_estado_id ON assoc_estado USING btree (id);


--
-- TOC entry 3202 (class 1259 OID 57504109)
-- Dependencies: 216
-- Name: assoc_estado_id_categoria; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_estado_id_categoria ON assoc_estado USING btree (id_categoria);


--
-- TOC entry 3203 (class 1259 OID 57504110)
-- Dependencies: 216
-- Name: assoc_estado_id_estado_pai; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_estado_id_estado_pai ON assoc_estado USING btree (id_estado_pai);


--
-- TOC entry 3204 (class 1259 OID 57504111)
-- Dependencies: 216
-- Name: assoc_estado_id_pais; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_estado_id_pais ON assoc_estado USING btree (id_pais);


--
-- TOC entry 3205 (class 1259 OID 57504112)
-- Dependencies: 216
-- Name: assoc_estado_nome; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_estado_nome ON assoc_estado USING btree (nome);


--
-- TOC entry 3206 (class 1259 OID 57504113)
-- Dependencies: 216
-- Name: assoc_estado_sigla; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_estado_sigla ON assoc_estado USING btree (sigla);


--
-- TOC entry 3178 (class 1259 OID 57504093)
-- Dependencies: 210
-- Name: assoc_logradouro_id; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_logradouro_id ON assoc_logradouro USING btree (id);


--
-- TOC entry 3179 (class 1259 OID 57504095)
-- Dependencies: 210
-- Name: assoc_logradouro_id_bairro; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_logradouro_id_bairro ON assoc_logradouro USING btree (id_bairro);


--
-- TOC entry 3180 (class 1259 OID 57504094)
-- Dependencies: 210
-- Name: assoc_logradouro_id_categoria; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_logradouro_id_categoria ON assoc_logradouro USING btree (id_categoria);


--
-- TOC entry 3181 (class 1259 OID 57504096)
-- Dependencies: 210
-- Name: assoc_logradouro_nome; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_logradouro_nome ON assoc_logradouro USING btree (nome);


--
-- TOC entry 3168 (class 1259 OID 57504092)
-- Dependencies: 208
-- Name: assoc_municipio_codigo_ddd; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_municipio_codigo_ddd ON assoc_municipio USING btree (codigo_ddd);


--
-- TOC entry 3169 (class 1259 OID 57504087)
-- Dependencies: 208
-- Name: assoc_municipio_id; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_municipio_id ON assoc_municipio USING btree (id);


--
-- TOC entry 3170 (class 1259 OID 57504088)
-- Dependencies: 208
-- Name: assoc_municipio_id_categoria; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_municipio_id_categoria ON assoc_municipio USING btree (id_categoria);


--
-- TOC entry 3171 (class 1259 OID 57504090)
-- Dependencies: 208
-- Name: assoc_municipio_id_estado; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_municipio_id_estado ON assoc_municipio USING btree (id_estado);


--
-- TOC entry 3172 (class 1259 OID 57504089)
-- Dependencies: 208
-- Name: assoc_municipio_id_municipio_pai; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_municipio_id_municipio_pai ON assoc_municipio USING btree (id_municipio_pai);


--
-- TOC entry 3173 (class 1259 OID 57504091)
-- Dependencies: 208
-- Name: assoc_municipio_nome; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_municipio_nome ON assoc_municipio USING btree (nome);


--
-- TOC entry 3189 (class 1259 OID 57504102)
-- Dependencies: 214
-- Name: codigo_postal_codigo; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX codigo_postal_codigo ON codigo_postal USING btree (codigo);


--
-- TOC entry 3190 (class 1259 OID 57504100)
-- Dependencies: 214
-- Name: codigo_postal_id; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX codigo_postal_id ON codigo_postal USING btree (id);


--
-- TOC entry 3191 (class 1259 OID 57504106)
-- Dependencies: 214
-- Name: codigo_postal_id_bairro; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX codigo_postal_id_bairro ON codigo_postal USING btree (id_bairro);


--
-- TOC entry 3192 (class 1259 OID 57504101)
-- Dependencies: 214
-- Name: codigo_postal_id_categoria; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX codigo_postal_id_categoria ON codigo_postal USING btree (id_categoria);


--
-- TOC entry 3193 (class 1259 OID 57504104)
-- Dependencies: 214
-- Name: codigo_postal_id_estado; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX codigo_postal_id_estado ON codigo_postal USING btree (id_estado);


--
-- TOC entry 3194 (class 1259 OID 57504107)
-- Dependencies: 214
-- Name: codigo_postal_id_logradouro; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX codigo_postal_id_logradouro ON codigo_postal USING btree (id_logradouro);


--
-- TOC entry 3195 (class 1259 OID 57504105)
-- Dependencies: 214
-- Name: codigo_postal_id_municipio; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX codigo_postal_id_municipio ON codigo_postal USING btree (id_municipio);


--
-- TOC entry 3196 (class 1259 OID 57504103)
-- Dependencies: 214
-- Name: codigo_postal_id_pais; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX codigo_postal_id_pais ON codigo_postal USING btree (id_pais);


--
-- TOC entry 3218 (class 1259 OID 57504120)
-- Dependencies: 220
-- Name: endereco_codigo_postal; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX endereco_codigo_postal ON endereco USING btree (codigo_postal);


--
-- TOC entry 3219 (class 1259 OID 57504117)
-- Dependencies: 220
-- Name: endereco_id; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX endereco_id ON endereco USING btree (id);


--
-- TOC entry 3220 (class 1259 OID 57504121)
-- Dependencies: 220
-- Name: endereco_id_assoccl_perfil_validador; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX endereco_id_assoccl_perfil_validador ON endereco USING btree (id_assoccl_perfil_validador);


--
-- TOC entry 3221 (class 1259 OID 57504118)
-- Dependencies: 220
-- Name: endereco_id_categoria; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX endereco_id_categoria ON endereco USING btree (id_categoria);


--
-- TOC entry 3222 (class 1259 OID 57504119)
-- Dependencies: 220
-- Name: endereco_id_generico_proprietario; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX endereco_id_generico_proprietario ON endereco USING btree (id_generico_proprietario);


--
-- TOC entry 3213 (class 1259 OID 57504115)
-- Dependencies: 218
-- Name: pais_constante_textual; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX pais_constante_textual ON pais USING btree (constante_textual);


--
-- TOC entry 3214 (class 1259 OID 57504114)
-- Dependencies: 218
-- Name: pais_id; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX pais_id ON pais USING btree (id);


--
-- TOC entry 3215 (class 1259 OID 57504116)
-- Dependencies: 218
-- Name: pais_sigla; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX pais_sigla ON pais USING btree (sigla);


SET search_path = basico_mascara, pg_catalog;

--
-- TOC entry 3159 (class 1259 OID 57504084)
-- Dependencies: 206
-- Name: assoccl_include_id; Type: INDEX; Schema: basico_mascara; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_include_id ON assoccl_include USING btree (id);


--
-- TOC entry 3160 (class 1259 OID 57504086)
-- Dependencies: 206
-- Name: assoccl_include_id_include; Type: INDEX; Schema: basico_mascara; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_include ON assoccl_include USING btree (id_include);


--
-- TOC entry 3161 (class 1259 OID 57504085)
-- Dependencies: 206
-- Name: assoccl_include_id_mascara; Type: INDEX; Schema: basico_mascara; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_mascara ON assoccl_include USING btree (id_mascara);


SET search_path = basico_mensagem, pg_catalog;

--
-- TOC entry 3155 (class 1259 OID 57504082)
-- Dependencies: 204
-- Name: assoc_email_id; Type: INDEX; Schema: basico_mensagem; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_email_id ON assoc_email USING btree (id);


--
-- TOC entry 3156 (class 1259 OID 57504083)
-- Dependencies: 204
-- Name: assoc_email_id_mensagem; Type: INDEX; Schema: basico_mensagem; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_email_id_mensagem ON assoc_email USING btree (id_mensagem);


--
-- TOC entry 3149 (class 1259 OID 57504078)
-- Dependencies: 202
-- Name: assoccl_assoccl_pessoa_perfil_id; Type: INDEX; Schema: basico_mensagem; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_assoccl_pessoa_perfil_id ON assoccl_assoccl_pessoa_perfil USING btree (id);


--
-- TOC entry 3150 (class 1259 OID 57504081)
-- Dependencies: 202
-- Name: assoccl_assoccl_pessoa_perfil_id_assoccl_perfil; Type: INDEX; Schema: basico_mensagem; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_assoccl_pessoa_perfil_id_assoccl_perfil ON assoccl_assoccl_pessoa_perfil USING btree (id_assoccl_perfil);


--
-- TOC entry 3151 (class 1259 OID 57504079)
-- Dependencies: 202
-- Name: assoccl_assoccl_pessoa_perfil_id_categoria; Type: INDEX; Schema: basico_mensagem; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_assoccl_pessoa_perfil_id_categoria ON assoccl_assoccl_pessoa_perfil USING btree (id_categoria);


--
-- TOC entry 3152 (class 1259 OID 57504080)
-- Dependencies: 202
-- Name: assoccl_assoccl_pessoa_perfil_id_mensagem; Type: INDEX; Schema: basico_mensagem; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_assoccl_pessoa_perfil_id_mensagem ON assoccl_assoccl_pessoa_perfil USING btree (id_mensagem);


SET search_path = basico_mensagem_assoc_email, pg_catalog;

--
-- TOC entry 3142 (class 1259 OID 57504075)
-- Dependencies: 200
-- Name: assoccl_arquivo_id; Type: INDEX; Schema: basico_mensagem_assoc_email; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_arquivo_id ON assoccl_arquivo USING btree (id);


--
-- TOC entry 3143 (class 1259 OID 57504077)
-- Dependencies: 200
-- Name: assoccl_arquivo_id_arquivo; Type: INDEX; Schema: basico_mensagem_assoc_email; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_arquivo_id_arquivo ON assoccl_arquivo USING btree (id_arquivo);


--
-- TOC entry 3144 (class 1259 OID 57504076)
-- Dependencies: 200
-- Name: assoccl_arquivo_id_assoc_email; Type: INDEX; Schema: basico_mensagem_assoc_email; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_arquivo_id_assoc_email ON assoccl_arquivo USING btree (id_assoc_email);


SET search_path = basico_metodo_validacao, pg_catalog;

--
-- TOC entry 3135 (class 1259 OID 57504072)
-- Dependencies: 198
-- Name: assoccl_include_id; Type: INDEX; Schema: basico_metodo_validacao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_include_id ON assoccl_include USING btree (id);


--
-- TOC entry 3136 (class 1259 OID 57504074)
-- Dependencies: 198
-- Name: assoccl_include_id_include; Type: INDEX; Schema: basico_metodo_validacao; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_include ON assoccl_include USING btree (id_include);


--
-- TOC entry 3137 (class 1259 OID 57504073)
-- Dependencies: 198
-- Name: assoccl_include_id_metodo_validacao; Type: INDEX; Schema: basico_metodo_validacao; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_metodo_validacao ON assoccl_include USING btree (id_metodo_validacao);


SET search_path = basico_output, pg_catalog;

--
-- TOC entry 3126 (class 1259 OID 57504069)
-- Dependencies: 196
-- Name: assoccl_include_id; Type: INDEX; Schema: basico_output; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_include_id ON assoccl_include USING btree (id);


--
-- TOC entry 3127 (class 1259 OID 57504071)
-- Dependencies: 196
-- Name: assoccl_include_id_include; Type: INDEX; Schema: basico_output; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_include ON assoccl_include USING btree (id_include);


--
-- TOC entry 3128 (class 1259 OID 57504070)
-- Dependencies: 196
-- Name: assoccl_include_id_output; Type: INDEX; Schema: basico_output; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_output ON assoccl_include USING btree (id_output);


SET search_path = basico_perfil, pg_catalog;

--
-- TOC entry 3119 (class 1259 OID 57504066)
-- Dependencies: 194
-- Name: assoccl_modulo_id; Type: INDEX; Schema: basico_perfil; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_modulo_id ON assoccl_modulo USING btree (id);


--
-- TOC entry 3120 (class 1259 OID 57504067)
-- Dependencies: 194
-- Name: assoccl_modulo_id_modulo; Type: INDEX; Schema: basico_perfil; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_modulo_id_modulo ON assoccl_modulo USING btree (id_modulo);


--
-- TOC entry 3121 (class 1259 OID 57504068)
-- Dependencies: 194
-- Name: assoccl_modulo_id_perfil; Type: INDEX; Schema: basico_perfil; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_modulo_id_perfil ON assoccl_modulo USING btree (id_perfil);


SET search_path = basico_pessoa, pg_catalog;

--
-- TOC entry 3102 (class 1259 OID 57504057)
-- Dependencies: 188
-- Name: assoc_dados_id; Type: INDEX; Schema: basico_pessoa; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_dados_id ON assoc_dados USING btree (id);


--
-- TOC entry 3103 (class 1259 OID 57504058)
-- Dependencies: 188
-- Name: assoc_dados_id_pessoa; Type: INDEX; Schema: basico_pessoa; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_dados_id_pessoa ON assoc_dados USING btree (id_pessoa);


--
-- TOC entry 3104 (class 1259 OID 57504059)
-- Dependencies: 188
-- Name: assoc_dados_nome; Type: INDEX; Schema: basico_pessoa; Owner: -; Tablespace: 
--

CREATE INDEX assoc_dados_nome ON assoc_dados USING btree (nome);


--
-- TOC entry 3107 (class 1259 OID 57504060)
-- Dependencies: 190
-- Name: assoccl_perfil_id; Type: INDEX; Schema: basico_pessoa; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_perfil_id ON assoccl_perfil USING btree (id);


--
-- TOC entry 3108 (class 1259 OID 57504062)
-- Dependencies: 190
-- Name: assoccl_perfil_id_perfil; Type: INDEX; Schema: basico_pessoa; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_perfil_id_perfil ON assoccl_perfil USING btree (id_perfil);


--
-- TOC entry 3109 (class 1259 OID 57504061)
-- Dependencies: 190
-- Name: assoccl_perfil_id_pessoa; Type: INDEX; Schema: basico_pessoa; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_perfil_id_pessoa ON assoccl_perfil USING btree (id_pessoa);


--
-- TOC entry 3114 (class 1259 OID 57504063)
-- Dependencies: 192
-- Name: assoccl_vinculo_profissional_id; Type: INDEX; Schema: basico_pessoa; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_vinculo_profissional_id ON assoccl_vinculo_profissional USING btree (id);


--
-- TOC entry 3115 (class 1259 OID 57504064)
-- Dependencies: 192
-- Name: assoccl_vinculo_profissional_id_pessoa; Type: INDEX; Schema: basico_pessoa; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_vinculo_profissional_id_pessoa ON assoccl_vinculo_profissional USING btree (id_pessoa);


--
-- TOC entry 3116 (class 1259 OID 57504065)
-- Dependencies: 192
-- Name: assoccl_vinculo_profissional_id_tipo_vinculo; Type: INDEX; Schema: basico_pessoa; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_vinculo_profissional_id_tipo_vinculo ON assoccl_vinculo_profissional USING btree (id_tipo_vinculo);


SET search_path = basico_pessoa_juridica, pg_catalog;

--
-- TOC entry 3057 (class 1259 OID 57504033)
-- Dependencies: 176
-- Name: assoc_banco_codigo; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_banco_codigo ON assoc_banco USING btree (codigo);


--
-- TOC entry 3058 (class 1259 OID 57504030)
-- Dependencies: 176
-- Name: assoc_banco_id; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_banco_id ON assoc_banco USING btree (id);


--
-- TOC entry 3059 (class 1259 OID 57504032)
-- Dependencies: 176
-- Name: assoc_banco_id_categoria; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assoc_banco_id_categoria ON assoc_banco USING btree (id_categoria);


--
-- TOC entry 3060 (class 1259 OID 57504031)
-- Dependencies: 176
-- Name: assoc_banco_id_pessoa_juridica; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_banco_id_pessoa_juridica ON assoc_banco USING btree (id_pessoa_juridica);


--
-- TOC entry 3073 (class 1259 OID 57504040)
-- Dependencies: 180
-- Name: assoc_dados_id; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_dados_id ON assoc_dados USING btree (id);


--
-- TOC entry 3074 (class 1259 OID 57504041)
-- Dependencies: 180
-- Name: assoc_dados_id_pessoa_juridica; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_dados_id_pessoa_juridica ON assoc_dados USING btree (id_pessoa_juridica);


--
-- TOC entry 3075 (class 1259 OID 57504043)
-- Dependencies: 180
-- Name: assoc_dados_nome_fantasia; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assoc_dados_nome_fantasia ON assoc_dados USING btree (nome_fantasia);


--
-- TOC entry 3076 (class 1259 OID 57504042)
-- Dependencies: 180
-- Name: assoc_dados_razao_social; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assoc_dados_razao_social ON assoc_dados USING btree (razao_social);


--
-- TOC entry 3077 (class 1259 OID 57504044)
-- Dependencies: 180
-- Name: assoc_dados_sigla; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assoc_dados_sigla ON assoc_dados USING btree (sigla);


--
-- TOC entry 3029 (class 1259 OID 57504016)
-- Dependencies: 168
-- Name: assocag_incubadora_id; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assocag_incubadora_id ON assocag_incubadora USING btree (id);


--
-- TOC entry 3030 (class 1259 OID 57504017)
-- Dependencies: 168
-- Name: assocag_incubadora_id_categoria; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assocag_incubadora_id_categoria ON assocag_incubadora USING btree (id_categoria);


--
-- TOC entry 3031 (class 1259 OID 57504018)
-- Dependencies: 168
-- Name: assocag_incubadora_id_pessoa_juridica; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assocag_incubadora_id_pessoa_juridica ON assocag_incubadora USING btree (id_pessoa_juridica);


--
-- TOC entry 3032 (class 1259 OID 57504019)
-- Dependencies: 168
-- Name: assocag_incubadora_id_pessoa_juridica_incubada; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assocag_incubadora_id_pessoa_juridica_incubada ON assocag_incubadora USING btree (id_pessoa_juridica_incubada);


--
-- TOC entry 3063 (class 1259 OID 57504034)
-- Dependencies: 178
-- Name: assocag_parceria_id; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assocag_parceria_id ON assocag_parceria USING btree (id);


--
-- TOC entry 3064 (class 1259 OID 57504038)
-- Dependencies: 178
-- Name: assocag_parceria_id_assocag_parceria; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assocag_parceria_id_assocag_parceria ON assocag_parceria USING btree (id_assocag_parceria);


--
-- TOC entry 3065 (class 1259 OID 57504035)
-- Dependencies: 178
-- Name: assocag_parceria_id_categoria; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assocag_parceria_id_categoria ON assocag_parceria USING btree (id_categoria);


--
-- TOC entry 3066 (class 1259 OID 57504036)
-- Dependencies: 178
-- Name: assocag_parceria_id_pessoa_juridica; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assocag_parceria_id_pessoa_juridica ON assocag_parceria USING btree (id_pessoa_juridica);


--
-- TOC entry 3067 (class 1259 OID 57504037)
-- Dependencies: 178
-- Name: assocag_parceria_id_pessoa_juridica_parceira; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assocag_parceria_id_pessoa_juridica_parceira ON assocag_parceria USING btree (id_pessoa_juridica_parceira);


--
-- TOC entry 3068 (class 1259 OID 57504039)
-- Dependencies: 178
-- Name: assocag_parceria_nome; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assocag_parceria_nome ON assocag_parceria USING btree (nome);


--
-- TOC entry 3037 (class 1259 OID 57504020)
-- Dependencies: 170
-- Name: assoccl_area_economia_id; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_area_economia_id ON assoccl_area_economia USING btree (id);


--
-- TOC entry 3038 (class 1259 OID 57504021)
-- Dependencies: 170
-- Name: assoccl_area_economia_id_area_economia; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_area_economia_id_area_economia ON assoccl_area_economia USING btree (id_area_economia);


--
-- TOC entry 3039 (class 1259 OID 57504022)
-- Dependencies: 170
-- Name: assoccl_area_economia_id_pessoa_juridica; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_area_economia_id_pessoa_juridica ON assoccl_area_economia USING btree (id_pessoa_juridica);


--
-- TOC entry 3088 (class 1259 OID 57504049)
-- Dependencies: 184
-- Name: assoccl_capital_social_id; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_capital_social_id ON assoccl_capital_social USING btree (id);


--
-- TOC entry 3089 (class 1259 OID 57504051)
-- Dependencies: 184
-- Name: assoccl_capital_social_id_capital_social; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_capital_social_id_capital_social ON assoccl_capital_social USING btree (id_capital_social);


--
-- TOC entry 3090 (class 1259 OID 57504050)
-- Dependencies: 184
-- Name: assoccl_capital_social_id_pessoa_juridica; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_capital_social_id_pessoa_juridica ON assoccl_capital_social USING btree (id_pessoa_juridica);


--
-- TOC entry 3044 (class 1259 OID 57504023)
-- Dependencies: 172
-- Name: assoccl_faturamento_id; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_faturamento_id ON assoccl_faturamento USING btree (id);


--
-- TOC entry 3045 (class 1259 OID 57504024)
-- Dependencies: 172
-- Name: assoccl_faturamento_id_categoria; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_faturamento_id_categoria ON assoccl_faturamento USING btree (id_categoria);


--
-- TOC entry 3046 (class 1259 OID 57504025)
-- Dependencies: 172
-- Name: assoccl_faturamento_id_pessoa_juridica; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_faturamento_id_pessoa_juridica ON assoccl_faturamento USING btree (id_pessoa_juridica);


--
-- TOC entry 3080 (class 1259 OID 57504045)
-- Dependencies: 182
-- Name: assoccl_quadro_funcionario_id; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_quadro_funcionario_id ON assoccl_quadro_funcionario USING btree (id);


--
-- TOC entry 3081 (class 1259 OID 57504046)
-- Dependencies: 182
-- Name: assoccl_quadro_funcionario_id_categoria; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_quadro_funcionario_id_categoria ON assoccl_quadro_funcionario USING btree (id_categoria);


--
-- TOC entry 3082 (class 1259 OID 57504047)
-- Dependencies: 182
-- Name: assoccl_quadro_funcionario_id_pessoa_juridica; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_quadro_funcionario_id_pessoa_juridica ON assoccl_quadro_funcionario USING btree (id_pessoa_juridica);


--
-- TOC entry 3083 (class 1259 OID 57504048)
-- Dependencies: 182
-- Name: assoccl_quadro_funcionario_id_titulacao; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_quadro_funcionario_id_titulacao ON assoccl_quadro_funcionario USING btree (id_titulacao);


--
-- TOC entry 3051 (class 1259 OID 57504029)
-- Dependencies: 174
-- Name: capital_social_constante_textual; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX capital_social_constante_textual ON capital_social USING btree (constante_textual);


--
-- TOC entry 3052 (class 1259 OID 57504026)
-- Dependencies: 174
-- Name: capital_social_id; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX capital_social_id ON capital_social USING btree (id);


--
-- TOC entry 3053 (class 1259 OID 57504027)
-- Dependencies: 174
-- Name: capital_social_id_categoria; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX capital_social_id_categoria ON capital_social USING btree (id_categoria);


--
-- TOC entry 3054 (class 1259 OID 57504028)
-- Dependencies: 174
-- Name: capital_social_nome; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX capital_social_nome ON capital_social USING btree (nome);


--
-- TOC entry 3095 (class 1259 OID 57504056)
-- Dependencies: 186
-- Name: natureza_codigo; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX natureza_codigo ON natureza USING btree (codigo);


--
-- TOC entry 3096 (class 1259 OID 57504055)
-- Dependencies: 186
-- Name: natureza_constante_textual; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX natureza_constante_textual ON natureza USING btree (constante_textual);


--
-- TOC entry 3097 (class 1259 OID 57504052)
-- Dependencies: 186
-- Name: natureza_id; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX natureza_id ON natureza USING btree (id);


--
-- TOC entry 3098 (class 1259 OID 57504053)
-- Dependencies: 186
-- Name: natureza_id_categoria; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX natureza_id_categoria ON natureza USING btree (id_categoria);


--
-- TOC entry 3099 (class 1259 OID 57504054)
-- Dependencies: 186
-- Name: natureza_nome; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX natureza_nome ON natureza USING btree (nome);


SET search_path = basico_sequencia, pg_catalog;

--
-- TOC entry 3018 (class 1259 OID 57504014)
-- Dependencies: 166
-- Name: assocsq_acao_aplicacao_constante_textual; Type: INDEX; Schema: basico_sequencia; Owner: -; Tablespace: 
--

CREATE INDEX assocsq_acao_aplicacao_constante_textual ON assocsq_acao_aplicacao USING btree (constante_textual);


--
-- TOC entry 3019 (class 1259 OID 57504009)
-- Dependencies: 166
-- Name: assocsq_acao_aplicacao_id; Type: INDEX; Schema: basico_sequencia; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assocsq_acao_aplicacao_id ON assocsq_acao_aplicacao USING btree (id);


--
-- TOC entry 3020 (class 1259 OID 57504012)
-- Dependencies: 166
-- Name: assocsq_acao_aplicacao_id_acao_aplicacao; Type: INDEX; Schema: basico_sequencia; Owner: -; Tablespace: 
--

CREATE INDEX assocsq_acao_aplicacao_id_acao_aplicacao ON assocsq_acao_aplicacao USING btree (id_acao_aplicacao);


--
-- TOC entry 3021 (class 1259 OID 57504010)
-- Dependencies: 166
-- Name: assocsq_acao_aplicacao_id_categoria; Type: INDEX; Schema: basico_sequencia; Owner: -; Tablespace: 
--

CREATE INDEX assocsq_acao_aplicacao_id_categoria ON assocsq_acao_aplicacao USING btree (id_categoria);


--
-- TOC entry 3022 (class 1259 OID 57504011)
-- Dependencies: 166
-- Name: assocsq_acao_aplicacao_id_sequencia; Type: INDEX; Schema: basico_sequencia; Owner: -; Tablespace: 
--

CREATE INDEX assocsq_acao_aplicacao_id_sequencia ON assocsq_acao_aplicacao USING btree (id_sequencia);


--
-- TOC entry 3023 (class 1259 OID 57504013)
-- Dependencies: 166
-- Name: assocsq_acao_aplicacao_nome; Type: INDEX; Schema: basico_sequencia; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assocsq_acao_aplicacao_nome ON assocsq_acao_aplicacao USING btree (nome);


--
-- TOC entry 3024 (class 1259 OID 57504015)
-- Dependencies: 166
-- Name: assocsq_acao_aplicacao_passo; Type: INDEX; Schema: basico_sequencia; Owner: -; Tablespace: 
--

CREATE INDEX assocsq_acao_aplicacao_passo ON assocsq_acao_aplicacao USING btree (passo);


SET search_path = basico_template, pg_catalog;

--
-- TOC entry 3002 (class 1259 OID 57504003)
-- Dependencies: 162
-- Name: assoccl_include_id; Type: INDEX; Schema: basico_template; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_include_id ON assoccl_include USING btree (id);


--
-- TOC entry 3003 (class 1259 OID 57504005)
-- Dependencies: 162
-- Name: assoccl_include_id_include; Type: INDEX; Schema: basico_template; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_include ON assoccl_include USING btree (id_include);


--
-- TOC entry 3004 (class 1259 OID 57504004)
-- Dependencies: 162
-- Name: assoccl_include_id_template; Type: INDEX; Schema: basico_template; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_template ON assoccl_include USING btree (id_template);


--
-- TOC entry 3011 (class 1259 OID 57504006)
-- Dependencies: 164
-- Name: assoccl_output_id; Type: INDEX; Schema: basico_template; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_output_id ON assoccl_output USING btree (id);


--
-- TOC entry 3012 (class 1259 OID 57504008)
-- Dependencies: 164
-- Name: assoccl_output_id_output; Type: INDEX; Schema: basico_template; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_output_id_output ON assoccl_output USING btree (id_output);


--
-- TOC entry 3013 (class 1259 OID 57504007)
-- Dependencies: 164
-- Name: assoccl_output_id_template; Type: INDEX; Schema: basico_template; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_output_id_template ON assoccl_output USING btree (id_template);


SET search_path = basico, pg_catalog;

--
-- TOC entry 3955 (class 2606 OID 57503453)
-- Dependencies: 352 3735 360
-- Name: fk_acao_aplicacao_modulo; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY acao_aplicacao
    ADD CONSTRAINT fk_acao_aplicacao_modulo FOREIGN KEY (id_modulo) REFERENCES modulo(id);


--
-- TOC entry 3931 (class 2606 OID 57503738)
-- Dependencies: 316 354 3716
-- Name: fk_ajuda_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY ajuda
    ADD CONSTRAINT fk_ajuda_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 3946 (class 2606 OID 57503843)
-- Dependencies: 354 3716 336
-- Name: fk_area_conhecimento_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY area_conhecimento
    ADD CONSTRAINT fk_area_conhecimento_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 3947 (class 2606 OID 57503953)
-- Dependencies: 336 336 3651
-- Name: fk_area_conhecimento_pai; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY area_conhecimento
    ADD CONSTRAINT fk_area_conhecimento_pai FOREIGN KEY (id_area_conhecimento_pai) REFERENCES area_conhecimento(id);


--
-- TOC entry 3936 (class 2606 OID 57503818)
-- Dependencies: 3716 354 324
-- Name: fk_area_economia_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY area_economia
    ADD CONSTRAINT fk_area_economia_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 3937 (class 2606 OID 57503938)
-- Dependencies: 324 324 3608
-- Name: fk_area_economia_pai; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY area_economia
    ADD CONSTRAINT fk_area_economia_pai FOREIGN KEY (id_area_economia_pai) REFERENCES area_economia(id);


--
-- TOC entry 3930 (class 2606 OID 57503883)
-- Dependencies: 314 3716 354
-- Name: fk_arquivo_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY arquivo
    ADD CONSTRAINT fk_arquivo_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 3957 (class 2606 OID 57503923)
-- Dependencies: 354 354 3716
-- Name: fk_categoria_pai; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY categoria
    ADD CONSTRAINT fk_categoria_pai FOREIGN KEY (id_categoria_pai) REFERENCES categoria(id);


--
-- TOC entry 3956 (class 2606 OID 57503283)
-- Dependencies: 346 3678 354
-- Name: fk_categoria_tipo_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY categoria
    ADD CONSTRAINT fk_categoria_tipo_categoria FOREIGN KEY (id_tipo_categoria) REFERENCES tipo_categoria(id);


--
-- TOC entry 3927 (class 2606 OID 57503668)
-- Dependencies: 3716 310 354
-- Name: fk_codigo_acesso_categoria_acesso; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY codigo_acesso
    ADD CONSTRAINT fk_codigo_acesso_categoria_acesso FOREIGN KEY (id_categoria_acesso) REFERENCES categoria(id);


--
-- TOC entry 3928 (class 2606 OID 57503673)
-- Dependencies: 3716 310 354
-- Name: fk_codigo_acesso_categoria_prop; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY codigo_acesso
    ADD CONSTRAINT fk_codigo_acesso_categoria_prop FOREIGN KEY (id_categoria_proprietario) REFERENCES categoria(id);


--
-- TOC entry 3984 (class 2606 OID 57503713)
-- Dependencies: 372 354 3716
-- Name: fk_componente_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY componente
    ADD CONSTRAINT fk_componente_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 3983 (class 2606 OID 57503303)
-- Dependencies: 3633 332 372
-- Name: fk_componente_template; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY componente
    ADD CONSTRAINT fk_componente_template FOREIGN KEY (id_template) REFERENCES template(id);


--
-- TOC entry 3981 (class 2606 OID 57503758)
-- Dependencies: 368 354 3716
-- Name: fk_dados_bancarios_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY dados_bancarios
    ADD CONSTRAINT fk_dados_bancarios_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 3968 (class 2606 OID 57503228)
-- Dependencies: 272 3407 364
-- Name: fk_dados_bio_tipo_sanguineo; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY dados_biometricos
    ADD CONSTRAINT fk_dados_bio_tipo_sanguineo FOREIGN KEY (id_tipo_sanguineo) REFERENCES basico_dados_biometricos.tipo_sanguineo(id);


--
-- TOC entry 3970 (class 2606 OID 57503768)
-- Dependencies: 364 354 3716
-- Name: fk_dados_biom_categoria_raca; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY dados_biometricos
    ADD CONSTRAINT fk_dados_biom_categoria_raca FOREIGN KEY (id_categoria_raca) REFERENCES categoria(id);


--
-- TOC entry 3969 (class 2606 OID 57503398)
-- Dependencies: 364 3738 362
-- Name: fk_dados_biometricos_pessoa; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY dados_biometricos
    ADD CONSTRAINT fk_dados_biometricos_pessoa FOREIGN KEY (id_pessoa) REFERENCES pessoa(id);


--
-- TOC entry 3929 (class 2606 OID 57503908)
-- Dependencies: 3716 312 354
-- Name: fk_dic_expressao_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY dicionario_expressao
    ADD CONSTRAINT fk_dic_expressao_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 3940 (class 2606 OID 57503793)
-- Dependencies: 354 328 3716
-- Name: fk_doc_identificacao_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY documento_identificacao
    ADD CONSTRAINT fk_doc_identificacao_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 3939 (class 2606 OID 57503353)
-- Dependencies: 328 366 3748
-- Name: fk_doc_identificacao_pj_emissor; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY documento_identificacao
    ADD CONSTRAINT fk_doc_identificacao_pj_emissor FOREIGN KEY (id_pessoa_juridica_emissor) REFERENCES pessoa_juridica(id);


--
-- TOC entry 3985 (class 2606 OID 57503693)
-- Dependencies: 354 3716 374
-- Name: fk_evento_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY evento
    ADD CONSTRAINT fk_evento_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 3934 (class 2606 OID 57503703)
-- Dependencies: 320 3716 354
-- Name: fk_filter_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY filter
    ADD CONSTRAINT fk_filter_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 3943 (class 2606 OID 57503973)
-- Dependencies: 3579 316 330
-- Name: fk_formulario_ajuda; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY formulario
    ADD CONSTRAINT fk_formulario_ajuda FOREIGN KEY (id_ajuda) REFERENCES ajuda(id);


--
-- TOC entry 3942 (class 2606 OID 57503743)
-- Dependencies: 354 330 3716
-- Name: fk_formulario_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY formulario
    ADD CONSTRAINT fk_formulario_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 3941 (class 2606 OID 57503598)
-- Dependencies: 330 330 3631
-- Name: fk_formulario_pai; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY formulario
    ADD CONSTRAINT fk_formulario_pai FOREIGN KEY (id_formulario_pai) REFERENCES formulario(id);


--
-- TOC entry 3951 (class 2606 OID 57503663)
-- Dependencies: 3716 354 342
-- Name: fk_include_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY include
    ADD CONSTRAINT fk_include_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 3948 (class 2606 OID 57503028)
-- Dependencies: 190 3110 338
-- Name: fk_log_acccl_perfil; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY log
    ADD CONSTRAINT fk_log_acccl_perfil FOREIGN KEY (id_assoccl_perfil) REFERENCES basico_pessoa.assoccl_perfil(id);


--
-- TOC entry 3949 (class 2606 OID 57503893)
-- Dependencies: 338 354 3716
-- Name: fk_log_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY log
    ADD CONSTRAINT fk_log_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 3938 (class 2606 OID 57503403)
-- Dependencies: 3738 362 326
-- Name: fk_login_pessoa; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY login
    ADD CONSTRAINT fk_login_pessoa FOREIGN KEY (id_pessoa) REFERENCES pessoa(id);


--
-- TOC entry 3950 (class 2606 OID 57503888)
-- Dependencies: 354 3716 340
-- Name: fk_mensagem_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY mensagem
    ADD CONSTRAINT fk_mensagem_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 3954 (class 2606 OID 57503683)
-- Dependencies: 354 350 3716
-- Name: fk_metodo_validacao_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY metodo_validacao
    ADD CONSTRAINT fk_metodo_validacao_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 3961 (class 2606 OID 57503763)
-- Dependencies: 360 354 3716
-- Name: fk_modulo_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY modulo
    ADD CONSTRAINT fk_modulo_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 3960 (class 2606 OID 57503468)
-- Dependencies: 360 360 3735
-- Name: fk_modulo_pai; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY modulo
    ADD CONSTRAINT fk_modulo_pai FOREIGN KEY (id_modulo_pai) REFERENCES modulo(id);


--
-- TOC entry 3959 (class 2606 OID 57503718)
-- Dependencies: 3716 358 354
-- Name: fk_output_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY output
    ADD CONSTRAINT fk_output_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 3945 (class 2606 OID 57503903)
-- Dependencies: 3716 354 334
-- Name: fk_perfil_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY perfil
    ADD CONSTRAINT fk_perfil_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 3965 (class 2606 OID 57503248)
-- Dependencies: 362 3439 280
-- Name: fk_pessoa_email_default; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa
    ADD CONSTRAINT fk_pessoa_email_default FOREIGN KEY (id_email_default) REFERENCES basico_contato.email(id);


--
-- TOC entry 3963 (class 2606 OID 57503048)
-- Dependencies: 3223 220 362
-- Name: fk_pessoa_endereco_corresp; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa
    ADD CONSTRAINT fk_pessoa_endereco_corresp FOREIGN KEY (id_endereco_correspondencia) REFERENCES basico_localizacao.endereco(id);


--
-- TOC entry 3962 (class 2606 OID 57503053)
-- Dependencies: 362 220 3223
-- Name: fk_pessoa_endereco_default; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa
    ADD CONSTRAINT fk_pessoa_endereco_default FOREIGN KEY (id_endereco_default) REFERENCES basico_localizacao.endereco(id);


--
-- TOC entry 3972 (class 2606 OID 57502973)
-- Dependencies: 366 3100 186
-- Name: fk_pessoa_juridica_natureza; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa_juridica
    ADD CONSTRAINT fk_pessoa_juridica_natureza FOREIGN KEY (id_natureza) REFERENCES basico_pessoa_juridica.natureza(id);


--
-- TOC entry 3977 (class 2606 OID 57503383)
-- Dependencies: 3748 366 366
-- Name: fk_pessoa_juridica_pai; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa_juridica
    ADD CONSTRAINT fk_pessoa_juridica_pai FOREIGN KEY (id_pessoa_juridica_pai) REFERENCES pessoa_juridica(id);


--
-- TOC entry 3967 (class 2606 OID 57503513)
-- Dependencies: 3691 348 362
-- Name: fk_pessoa_link_default; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa
    ADD CONSTRAINT fk_pessoa_link_default FOREIGN KEY (id_link_default) REFERENCES link(id);


--
-- TOC entry 3966 (class 2606 OID 57503433)
-- Dependencies: 334 3643 362
-- Name: fk_pessoa_perfil_padrao; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa
    ADD CONSTRAINT fk_pessoa_perfil_padrao FOREIGN KEY (id_perfil_padrao) REFERENCES perfil(id);


--
-- TOC entry 3964 (class 2606 OID 57503238)
-- Dependencies: 278 3425 362
-- Name: fk_pessoa_telefone_default; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa
    ADD CONSTRAINT fk_pessoa_telefone_default FOREIGN KEY (id_telefone_default) REFERENCES basico_contato.telefone(id);


--
-- TOC entry 3973 (class 2606 OID 57502983)
-- Dependencies: 170 366 3040
-- Name: fk_pj_area_economia_default; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa_juridica
    ADD CONSTRAINT fk_pj_area_economia_default FOREIGN KEY (id_area_economia_default) REFERENCES basico_pessoa_juridica.assoccl_area_economia(id);


--
-- TOC entry 3980 (class 2606 OID 57503773)
-- Dependencies: 354 3716 366
-- Name: fk_pj_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa_juridica
    ADD CONSTRAINT fk_pj_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 3976 (class 2606 OID 57503253)
-- Dependencies: 366 280 3439
-- Name: fk_pj_email_default; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa_juridica
    ADD CONSTRAINT fk_pj_email_default FOREIGN KEY (id_email_default) REFERENCES basico_contato.email(id);


--
-- TOC entry 3974 (class 2606 OID 57503063)
-- Dependencies: 366 220 3223
-- Name: fk_pj_endereco_correspond; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa_juridica
    ADD CONSTRAINT fk_pj_endereco_correspond FOREIGN KEY (id_endereco_correspondencia) REFERENCES basico_localizacao.endereco(id);


--
-- TOC entry 3971 (class 2606 OID 57503058)
-- Dependencies: 366 220 3223
-- Name: fk_pj_endereco_default; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa_juridica
    ADD CONSTRAINT fk_pj_endereco_default FOREIGN KEY (id_endereco_default) REFERENCES basico_localizacao.endereco(id);


--
-- TOC entry 3979 (class 2606 OID 57503523)
-- Dependencies: 366 348 3691
-- Name: fk_pj_link_default; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa_juridica
    ADD CONSTRAINT fk_pj_link_default FOREIGN KEY (id_link_default) REFERENCES link(id);


--
-- TOC entry 3978 (class 2606 OID 57503388)
-- Dependencies: 366 3738 362
-- Name: fk_pj_pessoa_resp_cadastro; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa_juridica
    ADD CONSTRAINT fk_pj_pessoa_resp_cadastro FOREIGN KEY (id_pessoa_responsavel_cadastro) REFERENCES pessoa(id);


--
-- TOC entry 3975 (class 2606 OID 57503243)
-- Dependencies: 3425 366 278
-- Name: fk_pj_telefone_default; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa_juridica
    ADD CONSTRAINT fk_pj_telefone_default FOREIGN KEY (id_telefone_default) REFERENCES basico_contato.telefone(id);


--
-- TOC entry 3933 (class 2606 OID 57503833)
-- Dependencies: 3716 318 354
-- Name: fk_produto_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY produto
    ADD CONSTRAINT fk_produto_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 3932 (class 2606 OID 57503678)
-- Dependencies: 3716 318 354
-- Name: fk_produto_categoria_moeda; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY produto
    ADD CONSTRAINT fk_produto_categoria_moeda FOREIGN KEY (id_categoria_moeda) REFERENCES categoria(id);


--
-- TOC entry 3958 (class 2606 OID 57503838)
-- Dependencies: 356 3716 354
-- Name: fk_profissao_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY profissao
    ADD CONSTRAINT fk_profissao_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 3935 (class 2606 OID 57503653)
-- Dependencies: 354 322 3716
-- Name: fk_sequencia_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY sequencia
    ADD CONSTRAINT fk_sequencia_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 3944 (class 2606 OID 57503723)
-- Dependencies: 332 3716 354
-- Name: fk_template_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY template
    ADD CONSTRAINT fk_template_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 3952 (class 2606 OID 57503288)
-- Dependencies: 3678 346 346
-- Name: fk_tipo_categoria_pai; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY tipo_categoria
    ADD CONSTRAINT fk_tipo_categoria_pai FOREIGN KEY (id_tipo_categoria_pai) REFERENCES tipo_categoria(id);


--
-- TOC entry 3926 (class 2606 OID 57503913)
-- Dependencies: 308 354 3716
-- Name: fk_token_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY token
    ADD CONSTRAINT fk_token_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 3982 (class 2606 OID 57503698)
-- Dependencies: 354 3716 370
-- Name: fk_validator_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY validator
    ADD CONSTRAINT fk_validator_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 3953 (class 2606 OID 57503873)
-- Dependencies: 354 3716 348
-- Name: fk_website_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY link
    ADD CONSTRAINT fk_website_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


SET search_path = basico_acao_aplic_assoc_visao, pg_catalog;

--
-- TOC entry 3925 (class 2606 OID 57503268)
-- Dependencies: 306 3530 304
-- Name: fk_atr_met_rec_ref_atr_met_rec_post; Type: FK CONSTRAINT; Schema: basico_acao_aplic_assoc_visao; Owner: -
--

ALTER TABLE ONLY assoccl_atrib_met_rec_post
    ADD CONSTRAINT fk_atr_met_rec_ref_atr_met_rec_post FOREIGN KEY (id_atributo_metodo_recup_post) REFERENCES atributo_metodo_recup_post(id);


--
-- TOC entry 3924 (class 2606 OID 57503638)
-- Dependencies: 304 354 3716
-- Name: fk_atrib_met_rec_post_categoria; Type: FK CONSTRAINT; Schema: basico_acao_aplic_assoc_visao; Owner: -
--

ALTER TABLE ONLY atributo_metodo_recup_post
    ADD CONSTRAINT fk_atrib_met_rec_post_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


SET search_path = basico_acao_aplicacao, pg_catalog;

--
-- TOC entry 3920 (class 2606 OID 57503983)
-- Dependencies: 352 3706 300
-- Name: fk_assoc_visao_acao_aplicacao; Type: FK CONSTRAINT; Schema: basico_acao_aplicacao; Owner: -
--

ALTER TABLE ONLY assoc_visao
    ADD CONSTRAINT fk_assoc_visao_acao_aplicacao FOREIGN KEY (id_acao_aplicacao) REFERENCES basico.acao_aplicacao(id);


--
-- TOC entry 3919 (class 2606 OID 57503643)
-- Dependencies: 3716 300 354
-- Name: fk_assoc_visao_categoria; Type: FK CONSTRAINT; Schema: basico_acao_aplicacao; Owner: -
--

ALTER TABLE ONLY assoc_visao
    ADD CONSTRAINT fk_assoc_visao_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 3917 (class 2606 OID 57503423)
-- Dependencies: 334 298 3643
-- Name: fk_assoccl_acao_aplic_perfil_perfil; Type: FK CONSTRAINT; Schema: basico_acao_aplicacao; Owner: -
--

ALTER TABLE ONLY assoccl_perfil
    ADD CONSTRAINT fk_assoccl_acao_aplic_perfil_perfil FOREIGN KEY (id_perfil) REFERENCES basico.perfil(id);


--
-- TOC entry 3923 (class 2606 OID 57503993)
-- Dependencies: 352 302 3706
-- Name: fk_assoccl_met_valid_ac_aplic; Type: FK CONSTRAINT; Schema: basico_acao_aplicacao; Owner: -
--

ALTER TABLE ONLY assoccl_metodo_validacao
    ADD CONSTRAINT fk_assoccl_met_valid_ac_aplic FOREIGN KEY (id_acao_aplicacao) REFERENCES basico.acao_aplicacao(id);


--
-- TOC entry 3922 (class 2606 OID 57503483)
-- Dependencies: 302 350 3699
-- Name: fk_assoccl_met_valid_met_valid; Type: FK CONSTRAINT; Schema: basico_acao_aplicacao; Owner: -
--

ALTER TABLE ONLY assoccl_metodo_validacao
    ADD CONSTRAINT fk_assoccl_met_valid_met_valid FOREIGN KEY (id_metodo_validacao) REFERENCES basico.metodo_validacao(id);


--
-- TOC entry 3921 (class 2606 OID 57503418)
-- Dependencies: 3643 302 334
-- Name: fk_assoccl_met_valid_perfil; Type: FK CONSTRAINT; Schema: basico_acao_aplicacao; Owner: -
--

ALTER TABLE ONLY assoccl_metodo_validacao
    ADD CONSTRAINT fk_assoccl_met_valid_perfil FOREIGN KEY (id_perfil) REFERENCES basico.perfil(id);


--
-- TOC entry 3918 (class 2606 OID 57503998)
-- Dependencies: 298 352 3706
-- Name: fk_assoccl_perfil_acao_aplicacao; Type: FK CONSTRAINT; Schema: basico_acao_aplicacao; Owner: -
--

ALTER TABLE ONLY assoccl_perfil
    ADD CONSTRAINT fk_assoccl_perfil_acao_aplicacao FOREIGN KEY (id_acao_aplicacao) REFERENCES basico.acao_aplicacao(id);


SET search_path = basico_ajuda, pg_catalog;

--
-- TOC entry 3916 (class 2606 OID 57503958)
-- Dependencies: 3579 296 316
-- Name: fk_assoccl_link_ajuda; Type: FK CONSTRAINT; Schema: basico_ajuda; Owner: -
--

ALTER TABLE ONLY assoccl_link
    ADD CONSTRAINT fk_assoccl_link_ajuda FOREIGN KEY (id_ajuda) REFERENCES basico.ajuda(id);


--
-- TOC entry 3915 (class 2606 OID 57503518)
-- Dependencies: 348 296 3691
-- Name: fk_assoccl_link_link; Type: FK CONSTRAINT; Schema: basico_ajuda; Owner: -
--

ALTER TABLE ONLY assoccl_link
    ADD CONSTRAINT fk_assoccl_link_link FOREIGN KEY (id_link) REFERENCES basico.link(id);


SET search_path = basico_assoc_banco, pg_catalog;

--
-- TOC entry 3913 (class 2606 OID 57502993)
-- Dependencies: 294 176 3061
-- Name: fk_assoc_tipo_conta_banco; Type: FK CONSTRAINT; Schema: basico_assoc_banco; Owner: -
--

ALTER TABLE ONLY assoc_tipo_conta
    ADD CONSTRAINT fk_assoc_tipo_conta_banco FOREIGN KEY (id_assoc_banco) REFERENCES basico_pessoa_juridica.assoc_banco(id);


--
-- TOC entry 3914 (class 2606 OID 57503748)
-- Dependencies: 294 354 3716
-- Name: fk_assoc_tipo_conta_categoria; Type: FK CONSTRAINT; Schema: basico_assoc_banco; Owner: -
--

ALTER TABLE ONLY assoc_tipo_conta
    ADD CONSTRAINT fk_assoc_tipo_conta_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


SET search_path = basico_assoc_dados_profis, pg_catalog;

--
-- TOC entry 3912 (class 2606 OID 57503948)
-- Dependencies: 290 3651 336
-- Name: fk_assoccl_dados_profis_area_c; Type: FK CONSTRAINT; Schema: basico_assoc_dados_profis; Owner: -
--

ALTER TABLE ONLY assoccl_area_conhecimento
    ADD CONSTRAINT fk_assoccl_dados_profis_area_c FOREIGN KEY (id_area_conhecimento) REFERENCES basico.area_conhecimento(id);


--
-- TOC entry 3911 (class 2606 OID 57503263)
-- Dependencies: 290 3467 286
-- Name: fk_assoccl_dados_profis_dados; Type: FK CONSTRAINT; Schema: basico_assoc_dados_profis; Owner: -
--

ALTER TABLE ONLY assoccl_area_conhecimento
    ADD CONSTRAINT fk_assoccl_dados_profis_dados FOREIGN KEY (id_assoc_dados_profissionais) REFERENCES basico_assocl_vinculo_profissional.assoc_dados(id);


SET search_path = basico_assoccl_pessoa_perfil, pg_catalog;

--
-- TOC entry 3910 (class 2606 OID 57503023)
-- Dependencies: 288 3110 190
-- Name: fk_assoccl_pessoa_perfil; Type: FK CONSTRAINT; Schema: basico_assoccl_pessoa_perfil; Owner: -
--

ALTER TABLE ONLY assoc_dados
    ADD CONSTRAINT fk_assoccl_pessoa_perfil FOREIGN KEY (id_assoccl_pessoa_perfil) REFERENCES basico_pessoa.assoccl_perfil(id);


SET search_path = basico_assocl_vinculo_profissional, pg_catalog;

--
-- TOC entry 3905 (class 2606 OID 57502998)
-- Dependencies: 192 286 3117
-- Name: fk_assoc_dado_assoccl_vin_profi; Type: FK CONSTRAINT; Schema: basico_assocl_vinculo_profissional; Owner: -
--

ALTER TABLE ONLY assoc_dados
    ADD CONSTRAINT fk_assoc_dado_assoccl_vin_profi FOREIGN KEY (id_assocl_vinculo_profissional) REFERENCES basico_pessoa.assoccl_vinculo_profissional(id);


--
-- TOC entry 3909 (class 2606 OID 57503338)
-- Dependencies: 286 366 3748
-- Name: fk_assoc_dados_pj_vinculo; Type: FK CONSTRAINT; Schema: basico_assocl_vinculo_profissional; Owner: -
--

ALTER TABLE ONLY assoc_dados
    ADD CONSTRAINT fk_assoc_dados_pj_vinculo FOREIGN KEY (id_pessoa_juridica_vinculo) REFERENCES basico.pessoa_juridica(id);


--
-- TOC entry 3908 (class 2606 OID 57503318)
-- Dependencies: 286 356 3718
-- Name: fk_assoc_dados_profi_profissao; Type: FK CONSTRAINT; Schema: basico_assocl_vinculo_profissional; Owner: -
--

ALTER TABLE ONLY assoc_dados
    ADD CONSTRAINT fk_assoc_dados_profi_profissao FOREIGN KEY (id_profissao) REFERENCES basico.profissao(id);


--
-- TOC entry 3907 (class 2606 OID 57503218)
-- Dependencies: 3392 268 286
-- Name: fk_assoc_dados_profis_reg_trab; Type: FK CONSTRAINT; Schema: basico_assocl_vinculo_profissional; Owner: -
--

ALTER TABLE ONLY assoc_dados
    ADD CONSTRAINT fk_assoc_dados_profis_reg_trab FOREIGN KEY (id_regime_trabalho) REFERENCES basico_dados_profissionais.regime_trabalho(id);


--
-- TOC entry 3906 (class 2606 OID 57503208)
-- Dependencies: 266 3385 286
-- Name: fk_assoc_dados_vinc_empreg; Type: FK CONSTRAINT; Schema: basico_assocl_vinculo_profissional; Owner: -
--

ALTER TABLE ONLY assoc_dados
    ADD CONSTRAINT fk_assoc_dados_vinc_empreg FOREIGN KEY (id_vinculo_empregaticio) REFERENCES basico_dados_profissionais.vinculo_empregaticio(id);


SET search_path = basico_categoria, pg_catalog;

--
-- TOC entry 3904 (class 2606 OID 57503918)
-- Dependencies: 284 354 3716
-- Name: fk_assoc_chave_estran_categ; Type: FK CONSTRAINT; Schema: basico_categoria; Owner: -
--

ALTER TABLE ONLY assoc_chave_estrangeira
    ADD CONSTRAINT fk_assoc_chave_estran_categ FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 3903 (class 2606 OID 57503473)
-- Dependencies: 360 3735 284
-- Name: fk_assoc_chave_estran_mod; Type: FK CONSTRAINT; Schema: basico_categoria; Owner: -
--

ALTER TABLE ONLY assoc_chave_estrangeira
    ADD CONSTRAINT fk_assoc_chave_estran_mod FOREIGN KEY (id_modulo) REFERENCES basico.modulo(id);


SET search_path = basico_componente, pg_catalog;

--
-- TOC entry 3901 (class 2606 OID 57503553)
-- Dependencies: 282 3669 342
-- Name: fk_assoccl_componente_inc_inc; Type: FK CONSTRAINT; Schema: basico_componente; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_assoccl_componente_inc_inc FOREIGN KEY (id_include) REFERENCES basico.include(id);


--
-- TOC entry 3902 (class 2606 OID 57503628)
-- Dependencies: 3771 372 282
-- Name: fk_assoccl_include_componente; Type: FK CONSTRAINT; Schema: basico_componente; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_assoccl_include_componente FOREIGN KEY (id_componente) REFERENCES basico.componente(id);


SET search_path = basico_contato, pg_catalog;

--
-- TOC entry 3900 (class 2606 OID 57503898)
-- Dependencies: 3716 354 280
-- Name: fk_email_categoria; Type: FK CONSTRAINT; Schema: basico_contato; Owner: -
--

ALTER TABLE ONLY email
    ADD CONSTRAINT fk_email_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 3899 (class 2606 OID 57503878)
-- Dependencies: 354 278 3716
-- Name: fk_telefone_categoria; Type: FK CONSTRAINT; Schema: basico_contato; Owner: -
--

ALTER TABLE ONLY telefone
    ADD CONSTRAINT fk_telefone_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


SET search_path = basico_cvc, pg_catalog;

--
-- TOC entry 3898 (class 2606 OID 57503258)
-- Dependencies: 276 3457 284
-- Name: fk_cvc_assoc_chave_estrangeira; Type: FK CONSTRAINT; Schema: basico_cvc; Owner: -
--

ALTER TABLE ONLY cvc
    ADD CONSTRAINT fk_cvc_assoc_chave_estrangeira FOREIGN KEY (id_assoc_chave_estrangeira) REFERENCES basico_categoria.assoc_chave_estrangeira(id);


SET search_path = basico_dados_academicos, pg_catalog;

--
-- TOC entry 3897 (class 2606 OID 57503788)
-- Dependencies: 354 274 3716
-- Name: fk_titulacao_categoria; Type: FK CONSTRAINT; Schema: basico_dados_academicos; Owner: -
--

ALTER TABLE ONLY titulacao
    ADD CONSTRAINT fk_titulacao_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


SET search_path = basico_dados_profissionais, pg_catalog;

--
-- TOC entry 3895 (class 2606 OID 57503828)
-- Dependencies: 3716 268 354
-- Name: fk_regime_trabalho_categoria; Type: FK CONSTRAINT; Schema: basico_dados_profissionais; Owner: -
--

ALTER TABLE ONLY regime_trabalho
    ADD CONSTRAINT fk_regime_trabalho_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 3894 (class 2606 OID 57503223)
-- Dependencies: 268 3392 268
-- Name: fk_regime_trabalho_pai; Type: FK CONSTRAINT; Schema: basico_dados_profissionais; Owner: -
--

ALTER TABLE ONLY regime_trabalho
    ADD CONSTRAINT fk_regime_trabalho_pai FOREIGN KEY (id_regime_trabalho_pai) REFERENCES regime_trabalho(id);


--
-- TOC entry 3893 (class 2606 OID 57503778)
-- Dependencies: 354 266 3716
-- Name: fk_vinc_empreg_categoria; Type: FK CONSTRAINT; Schema: basico_dados_profissionais; Owner: -
--

ALTER TABLE ONLY vinculo_empregaticio
    ADD CONSTRAINT fk_vinc_empreg_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 3896 (class 2606 OID 57503823)
-- Dependencies: 3716 354 270
-- Name: fk_vinculo_categoria; Type: FK CONSTRAINT; Schema: basico_dados_profissionais; Owner: -
--

ALTER TABLE ONLY tipo_vinculo
    ADD CONSTRAINT fk_vinculo_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


SET search_path = basico_decorator, pg_catalog;

--
-- TOC entry 3892 (class 2606 OID 57503538)
-- Dependencies: 342 264 3669
-- Name: fk_assoccl_decorator_inc_inc; Type: FK CONSTRAINT; Schema: basico_decorator; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_assoccl_decorator_inc_inc FOREIGN KEY (id_include) REFERENCES basico.include(id);


--
-- TOC entry 3891 (class 2606 OID 57503148)
-- Dependencies: 264 236 3276
-- Name: fk_assoccl_include_decorator; Type: FK CONSTRAINT; Schema: basico_decorator; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_assoccl_include_decorator FOREIGN KEY (id_decorator) REFERENCES basico_formulario.decorator(id);


SET search_path = basico_form_assoccl_elem_grupo, pg_catalog;

--
-- TOC entry 3889 (class 2606 OID 57503153)
-- Dependencies: 262 236 3276
-- Name: fk_assoccl_decorator_decorator; Type: FK CONSTRAINT; Schema: basico_form_assoccl_elem_grupo; Owner: -
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT fk_assoccl_decorator_decorator FOREIGN KEY (id_decorator) REFERENCES basico_formulario.decorator(id);


--
-- TOC entry 3890 (class 2606 OID 57503198)
-- Dependencies: 3347 254 262
-- Name: fk_assoccl_decorator_grupo; Type: FK CONSTRAINT; Schema: basico_form_assoccl_elem_grupo; Owner: -
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT fk_assoccl_decorator_grupo FOREIGN KEY (id_grupo) REFERENCES basico_form_assoccl_elemento.grupo(id);


SET search_path = basico_form_assoccl_elemento, pg_catalog;

--
-- TOC entry 3888 (class 2606 OID 57503688)
-- Dependencies: 354 3716 260
-- Name: assoccl_evento_categoria; Type: FK CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_evento
    ADD CONSTRAINT assoccl_evento_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 3887 (class 2606 OID 57503623)
-- Dependencies: 374 260 3777
-- Name: fk_assoccl_assoccl_elem_even_even; Type: FK CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_evento
    ADD CONSTRAINT fk_assoccl_assoccl_elem_even_even FOREIGN KEY (id_evento) REFERENCES basico.evento(id);


--
-- TOC entry 3881 (class 2606 OID 57503193)
-- Dependencies: 3316 252 246
-- Name: fk_assoccl_dec_assoccl_elem; Type: FK CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT fk_assoccl_dec_assoccl_elem FOREIGN KEY (id_assoccl_elemento) REFERENCES basico_formulario.assoccl_elemento(id);


--
-- TOC entry 3880 (class 2606 OID 57503158)
-- Dependencies: 3276 236 252
-- Name: fk_assoccl_dec_decorator; Type: FK CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT fk_assoccl_dec_decorator FOREIGN KEY (id_decorator) REFERENCES basico_formulario.decorator(id);


--
-- TOC entry 3878 (class 2606 OID 57503188)
-- Dependencies: 3316 246 250
-- Name: fk_assoccl_elem_assoccl_filter_elemento; Type: FK CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_filter
    ADD CONSTRAINT fk_assoccl_elem_assoccl_filter_elemento FOREIGN KEY (id_assoccl_elemento) REFERENCES basico_formulario.assoccl_elemento(id);


--
-- TOC entry 3879 (class 2606 OID 57503603)
-- Dependencies: 320 250 3594
-- Name: fk_assoccl_elem_assoccl_filter_filter; Type: FK CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_filter
    ADD CONSTRAINT fk_assoccl_elem_assoccl_filter_filter FOREIGN KEY (id_filter) REFERENCES basico.filter(id);


--
-- TOC entry 3886 (class 2606 OID 57503178)
-- Dependencies: 260 3316 246
-- Name: fk_assoccl_evento_assoccl_elem; Type: FK CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_evento
    ADD CONSTRAINT fk_assoccl_evento_assoccl_elem FOREIGN KEY (id_assoccl_elemento) REFERENCES basico_formulario.assoccl_elemento(id);


--
-- TOC entry 3884 (class 2606 OID 57503173)
-- Dependencies: 246 258 3316
-- Name: fk_assoccl_include_assoccl_elem; Type: FK CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_assoccl_include_assoccl_elem FOREIGN KEY (id_assoccl_elemento) REFERENCES basico_formulario.assoccl_elemento(id);


--
-- TOC entry 3882 (class 2606 OID 57503183)
-- Dependencies: 3316 256 246
-- Name: fk_assoccl_valid_assoc_elem; Type: FK CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_validator
    ADD CONSTRAINT fk_assoccl_valid_assoc_elem FOREIGN KEY (id_assoccl_elemento) REFERENCES basico_formulario.assoccl_elemento(id);


--
-- TOC entry 3883 (class 2606 OID 57503273)
-- Dependencies: 256 3764 370
-- Name: fk_assoccl_valid_validator; Type: FK CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_validator
    ADD CONSTRAINT fk_assoccl_valid_validator FOREIGN KEY (id_validator) REFERENCES basico.validator(id);


--
-- TOC entry 3885 (class 2606 OID 57503543)
-- Dependencies: 258 342 3669
-- Name: fk_asssoccl_include_include; Type: FK CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_asssoccl_include_include FOREIGN KEY (id_include) REFERENCES basico.include(id);


SET search_path = basico_form_elemento, pg_catalog;

--
-- TOC entry 3876 (class 2606 OID 57503123)
-- Dependencies: 248 234 3270
-- Name: fk_assoc_evento_elemento; Type: FK CONSTRAINT; Schema: basico_form_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_evento
    ADD CONSTRAINT fk_assoc_evento_elemento FOREIGN KEY (id_elemento) REFERENCES basico_formulario.elemento(id);


--
-- TOC entry 3877 (class 2606 OID 57503613)
-- Dependencies: 3777 374 248
-- Name: fk_assoccl_form_elem_even_even; Type: FK CONSTRAINT; Schema: basico_form_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_evento
    ADD CONSTRAINT fk_assoccl_form_elem_even_even FOREIGN KEY (id_evento) REFERENCES basico.evento(id);


SET search_path = basico_formulario, pg_catalog;

--
-- TOC entry 3863 (class 2606 OID 57503113)
-- Dependencies: 222 3227 240
-- Name: fk_assocag_grupo_rascunho; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY rascunho
    ADD CONSTRAINT fk_assocag_grupo_rascunho FOREIGN KEY (id_assocag_grupo) REFERENCES basico_formulario_rascunho.assocag_grupo(id);


--
-- TOC entry 3853 (class 2606 OID 57503593)
-- Dependencies: 330 232 3631
-- Name: fk_assoccl_decorator_form; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT fk_assoccl_decorator_form FOREIGN KEY (id_formulario) REFERENCES basico.formulario(id);


--
-- TOC entry 3875 (class 2606 OID 57503963)
-- Dependencies: 3579 246 316
-- Name: fk_assoccl_elemento_ajuda; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_elemento
    ADD CONSTRAINT fk_assoccl_elemento_ajuda FOREIGN KEY (id_ajuda) REFERENCES basico.ajuda(id);


--
-- TOC entry 3871 (class 2606 OID 57503138)
-- Dependencies: 234 3270 246
-- Name: fk_assoccl_elemento_elemento; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_elemento
    ADD CONSTRAINT fk_assoccl_elemento_elemento FOREIGN KEY (id_elemento) REFERENCES elemento(id);


--
-- TOC entry 3874 (class 2606 OID 57503583)
-- Dependencies: 330 3631 246
-- Name: fk_assoccl_elemento_formulario; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_elemento
    ADD CONSTRAINT fk_assoccl_elemento_formulario FOREIGN KEY (id_formulario) REFERENCES basico.formulario(id);


--
-- TOC entry 3872 (class 2606 OID 57503203)
-- Dependencies: 254 246 3347
-- Name: fk_assoccl_elemento_grupo; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_elemento
    ADD CONSTRAINT fk_assoccl_elemento_grupo FOREIGN KEY (id_grupo) REFERENCES basico_form_assoccl_elemento.grupo(id);


--
-- TOC entry 3873 (class 2606 OID 57503503)
-- Dependencies: 344 3676 246
-- Name: fk_assoccl_elemento_mascara; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_elemento
    ADD CONSTRAINT fk_assoccl_elemento_mascara FOREIGN KEY (id_mascara) REFERENCES basico.mascara(id);


--
-- TOC entry 3869 (class 2606 OID 57503568)
-- Dependencies: 3631 244 330
-- Name: fk_assoccl_evento_formulario; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_evento
    ADD CONSTRAINT fk_assoccl_evento_formulario FOREIGN KEY (id_formulario) REFERENCES basico.formulario(id);


--
-- TOC entry 3870 (class 2606 OID 57503618)
-- Dependencies: 3777 374 244
-- Name: fk_assoccl_form_evento_evento; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_evento
    ADD CONSTRAINT fk_assoccl_form_evento_evento FOREIGN KEY (id_evento) REFERENCES basico.evento(id);


--
-- TOC entry 3867 (class 2606 OID 57503548)
-- Dependencies: 3669 242 342
-- Name: fk_assoccl_formulario_inc_inc; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_assoccl_formulario_inc_inc FOREIGN KEY (id_include) REFERENCES basico.include(id);


--
-- TOC entry 3868 (class 2606 OID 57503573)
-- Dependencies: 242 330 3631
-- Name: fk_assoccl_include_formulario; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_assoccl_include_formulario FOREIGN KEY (id_formulario) REFERENCES basico.formulario(id);


--
-- TOC entry 3851 (class 2606 OID 57503578)
-- Dependencies: 230 3631 330
-- Name: fk_assoccl_modulo_formulario; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_modulo
    ADD CONSTRAINT fk_assoccl_modulo_formulario FOREIGN KEY (id_formulario) REFERENCES basico.formulario(id);


--
-- TOC entry 3860 (class 2606 OID 57503588)
-- Dependencies: 3631 330 238
-- Name: fk_assoccl_template_formulario; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_template
    ADD CONSTRAINT fk_assoccl_template_formulario FOREIGN KEY (id_formulario) REFERENCES basico.formulario(id);


--
-- TOC entry 3859 (class 2606 OID 57503308)
-- Dependencies: 238 332 3633
-- Name: fk_assoccl_template_template; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_template
    ADD CONSTRAINT fk_assoccl_template_template FOREIGN KEY (id_template) REFERENCES basico.template(id);


--
-- TOC entry 3852 (class 2606 OID 57503168)
-- Dependencies: 236 3276 232
-- Name: fk_assocl_decorator_decorator; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT fk_assocl_decorator_decorator FOREIGN KEY (id_decorator) REFERENCES decorator(id);


--
-- TOC entry 3861 (class 2606 OID 57502968)
-- Dependencies: 166 3025 240
-- Name: fk_assocsq_acao_aplic_rascunho; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY rascunho
    ADD CONSTRAINT fk_assocsq_acao_aplic_rascunho FOREIGN KEY (id_assocsq_acao_aplicacao) REFERENCES basico_sequencia.assocsq_acao_aplicacao(id);


--
-- TOC entry 3858 (class 2606 OID 57503728)
-- Dependencies: 354 236 3716
-- Name: fk_decorator_categoria; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY decorator
    ADD CONSTRAINT fk_decorator_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 3857 (class 2606 OID 57503968)
-- Dependencies: 3579 234 316
-- Name: fk_elemento_ajuda; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY elemento
    ADD CONSTRAINT fk_elemento_ajuda FOREIGN KEY (id_ajuda) REFERENCES basico.ajuda(id);


--
-- TOC entry 3856 (class 2606 OID 57503708)
-- Dependencies: 3716 234 354
-- Name: fk_elemento_categoria; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY elemento
    ADD CONSTRAINT fk_elemento_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 3855 (class 2606 OID 57503633)
-- Dependencies: 3771 234 372
-- Name: fk_elemento_componente; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY elemento
    ADD CONSTRAINT fk_elemento_componente FOREIGN KEY (id_componente) REFERENCES basico.componente(id);


--
-- TOC entry 3854 (class 2606 OID 57503508)
-- Dependencies: 3676 234 344
-- Name: fk_elemento_mascara; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY elemento
    ADD CONSTRAINT fk_elemento_mascara FOREIGN KEY (id_mascara) REFERENCES basico.mascara(id);


--
-- TOC entry 3850 (class 2606 OID 57503458)
-- Dependencies: 360 230 3735
-- Name: fk_form_assoccl_modulo_modulo; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_modulo
    ADD CONSTRAINT fk_form_assoccl_modulo_modulo FOREIGN KEY (id_modulo) REFERENCES basico.modulo(id);


--
-- TOC entry 3866 (class 2606 OID 57503978)
-- Dependencies: 240 352 3706
-- Name: fk_rascunho_acao_aplicacao; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY rascunho
    ADD CONSTRAINT fk_rascunho_acao_aplicacao FOREIGN KEY (id_acao_aplicacao_origem) REFERENCES basico.acao_aplicacao(id);


--
-- TOC entry 3862 (class 2606 OID 57503008)
-- Dependencies: 3110 240 190
-- Name: fk_rascunho_assoccl_perfil; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY rascunho
    ADD CONSTRAINT fk_rascunho_assoccl_perfil FOREIGN KEY (id_assoccl_perfil) REFERENCES basico_pessoa.assoccl_perfil(id);


--
-- TOC entry 3865 (class 2606 OID 57503658)
-- Dependencies: 354 240 3716
-- Name: fk_rascunho_categoria; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY rascunho
    ADD CONSTRAINT fk_rascunho_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 3864 (class 2606 OID 57503118)
-- Dependencies: 240 3285 240
-- Name: fk_rascunho_pai; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY rascunho
    ADD CONSTRAINT fk_rascunho_pai FOREIGN KEY (id_rascunho_pai) REFERENCES rascunho(id);


SET search_path = basico_formulario_elemento, pg_catalog;

--
-- TOC entry 3848 (class 2606 OID 57503133)
-- Dependencies: 3270 234 228
-- Name: fk_assoccl_filter_elemento; Type: FK CONSTRAINT; Schema: basico_formulario_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_filter
    ADD CONSTRAINT fk_assoccl_filter_elemento FOREIGN KEY (id_elemento) REFERENCES basico_formulario.elemento(id);


--
-- TOC entry 3849 (class 2606 OID 57503608)
-- Dependencies: 3594 320 228
-- Name: fk_assoccl_filter_filter; Type: FK CONSTRAINT; Schema: basico_formulario_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_filter
    ADD CONSTRAINT fk_assoccl_filter_filter FOREIGN KEY (id_filter) REFERENCES basico.filter(id);


--
-- TOC entry 3846 (class 2606 OID 57503128)
-- Dependencies: 234 3270 226
-- Name: fk_assoccl_validator_elem; Type: FK CONSTRAINT; Schema: basico_formulario_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_validator
    ADD CONSTRAINT fk_assoccl_validator_elem FOREIGN KEY (id_elemento) REFERENCES basico_formulario.elemento(id);


--
-- TOC entry 3847 (class 2606 OID 57503278)
-- Dependencies: 226 370 3764
-- Name: fk_assoccl_validator_validator; Type: FK CONSTRAINT; Schema: basico_formulario_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_validator
    ADD CONSTRAINT fk_assoccl_validator_validator FOREIGN KEY (id_validator) REFERENCES basico.validator(id);


--
-- TOC entry 3844 (class 2606 OID 57503143)
-- Dependencies: 3270 224 234
-- Name: fk_assocl_elemento_elemento; Type: FK CONSTRAINT; Schema: basico_formulario_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT fk_assocl_elemento_elemento FOREIGN KEY (id_elemento) REFERENCES basico_formulario.elemento(id);


--
-- TOC entry 3845 (class 2606 OID 57503163)
-- Dependencies: 3276 236 224
-- Name: fk_form_assoccl_decorator_decorator; Type: FK CONSTRAINT; Schema: basico_formulario_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT fk_form_assoccl_decorator_decorator FOREIGN KEY (id_decorator) REFERENCES basico_formulario.decorator(id);


SET search_path = basico_formulario_rascunho, pg_catalog;

--
-- TOC entry 3843 (class 2606 OID 57503003)
-- Dependencies: 3110 222 190
-- Name: fk_assocag_grupo_assoccl_perfil; Type: FK CONSTRAINT; Schema: basico_formulario_rascunho; Owner: -
--

ALTER TABLE ONLY assocag_grupo
    ADD CONSTRAINT fk_assocag_grupo_assoccl_perfil FOREIGN KEY (id_assoccl_perfil) REFERENCES basico_pessoa.assoccl_perfil(id);


SET search_path = basico_localizacao, pg_catalog;

--
-- TOC entry 3840 (class 2606 OID 57503863)
-- Dependencies: 3716 216 354
-- Name: fk_assoc_estado_categoria; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY assoc_estado
    ADD CONSTRAINT fk_assoc_estado_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 3838 (class 2606 OID 57503038)
-- Dependencies: 218 216 3216
-- Name: fk_assoc_estado_pais; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY assoc_estado
    ADD CONSTRAINT fk_assoc_estado_pais FOREIGN KEY (id_pais) REFERENCES pais(id);


--
-- TOC entry 3829 (class 2606 OID 57503103)
-- Dependencies: 212 210 3187
-- Name: fk_assoc_logradouro_assoc_bairro; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY assoc_logradouro
    ADD CONSTRAINT fk_assoc_logradouro_assoc_bairro FOREIGN KEY (id_bairro) REFERENCES assoc_bairro(id);


--
-- TOC entry 3830 (class 2606 OID 57503853)
-- Dependencies: 210 3716 354
-- Name: fk_assoc_logradouro_categoria; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY assoc_logradouro
    ADD CONSTRAINT fk_assoc_logradouro_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 3831 (class 2606 OID 57503073)
-- Dependencies: 208 212 3174
-- Name: fk_assoc_municipio_assoc_bairro; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY assoc_bairro
    ADD CONSTRAINT fk_assoc_municipio_assoc_bairro FOREIGN KEY (id_municipio) REFERENCES assoc_municipio(id);


--
-- TOC entry 3827 (class 2606 OID 57503093)
-- Dependencies: 208 3209 216
-- Name: fk_assoc_municipio_assoc_estado; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY assoc_municipio
    ADD CONSTRAINT fk_assoc_municipio_assoc_estado FOREIGN KEY (id_estado) REFERENCES assoc_estado(id);


--
-- TOC entry 3828 (class 2606 OID 57503858)
-- Dependencies: 354 3716 208
-- Name: fk_assoc_municipio_categoria; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY assoc_municipio
    ADD CONSTRAINT fk_assoc_municipio_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 3836 (class 2606 OID 57503108)
-- Dependencies: 3187 212 214
-- Name: fk_cep_assoc_bairro; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY codigo_postal
    ADD CONSTRAINT fk_cep_assoc_bairro FOREIGN KEY (id_bairro) REFERENCES assoc_bairro(id);


--
-- TOC entry 3835 (class 2606 OID 57503098)
-- Dependencies: 216 3209 214
-- Name: fk_cep_assoc_estado; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY codigo_postal
    ADD CONSTRAINT fk_cep_assoc_estado FOREIGN KEY (id_estado) REFERENCES assoc_estado(id);


--
-- TOC entry 3834 (class 2606 OID 57503083)
-- Dependencies: 210 214 3182
-- Name: fk_cep_assoc_logradouro; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY codigo_postal
    ADD CONSTRAINT fk_cep_assoc_logradouro FOREIGN KEY (id_logradouro) REFERENCES assoc_logradouro(id);


--
-- TOC entry 3833 (class 2606 OID 57503078)
-- Dependencies: 3174 214 208
-- Name: fk_cep_assoc_municipio; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY codigo_postal
    ADD CONSTRAINT fk_cep_assoc_municipio FOREIGN KEY (id_municipio) REFERENCES assoc_municipio(id);


--
-- TOC entry 3837 (class 2606 OID 57503868)
-- Dependencies: 354 214 3716
-- Name: fk_cep_categoria; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY codigo_postal
    ADD CONSTRAINT fk_cep_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 3832 (class 2606 OID 57503043)
-- Dependencies: 214 218 3216
-- Name: fk_cep_pais; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY codigo_postal
    ADD CONSTRAINT fk_cep_pais FOREIGN KEY (id_pais) REFERENCES pais(id);


--
-- TOC entry 3841 (class 2606 OID 57503018)
-- Dependencies: 190 3110 220
-- Name: fk_endereco_assoc_perfil; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY endereco
    ADD CONSTRAINT fk_endereco_assoc_perfil FOREIGN KEY (id_assoccl_perfil_validador) REFERENCES basico_pessoa.assoccl_perfil(id);


--
-- TOC entry 3842 (class 2606 OID 57503848)
-- Dependencies: 354 220 3716
-- Name: fk_endereco_categoria; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY endereco
    ADD CONSTRAINT fk_endereco_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 3839 (class 2606 OID 57503088)
-- Dependencies: 216 3209 216
-- Name: fk_estado_pai; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY assoc_estado
    ADD CONSTRAINT fk_estado_pai FOREIGN KEY (id_estado_pai) REFERENCES assoc_estado(id);


--
-- TOC entry 3826 (class 2606 OID 57503068)
-- Dependencies: 208 208 3174
-- Name: fk_municipio_pai; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY assoc_municipio
    ADD CONSTRAINT fk_municipio_pai FOREIGN KEY (id_municipio_pai) REFERENCES assoc_municipio(id);


SET search_path = basico_mascara, pg_catalog;

--
-- TOC entry 3824 (class 2606 OID 57503498)
-- Dependencies: 3676 344 206
-- Name: fk_assoccl_include_mascara; Type: FK CONSTRAINT; Schema: basico_mascara; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_assoccl_include_mascara FOREIGN KEY (id_mascara) REFERENCES basico.mascara(id);


--
-- TOC entry 3825 (class 2606 OID 57503533)
-- Dependencies: 342 206 3669
-- Name: fk_assoccl_mascara_inc_inc; Type: FK CONSTRAINT; Schema: basico_mascara; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_assoccl_mascara_inc_inc FOREIGN KEY (id_include) REFERENCES basico.include(id);


SET search_path = basico_mensagem, pg_catalog;

--
-- TOC entry 3820 (class 2606 OID 57503013)
-- Dependencies: 202 3110 190
-- Name: fk_assoccl_assoccl_pes_per; Type: FK CONSTRAINT; Schema: basico_mensagem; Owner: -
--

ALTER TABLE ONLY assoccl_assoccl_pessoa_perfil
    ADD CONSTRAINT fk_assoccl_assoccl_pes_per FOREIGN KEY (id_assoccl_perfil) REFERENCES basico_pessoa.assoccl_perfil(id);


--
-- TOC entry 3822 (class 2606 OID 57503733)
-- Dependencies: 354 3716 202
-- Name: fk_assoccl_assoccl_pes_per_cat; Type: FK CONSTRAINT; Schema: basico_mensagem; Owner: -
--

ALTER TABLE ONLY assoccl_assoccl_pessoa_perfil
    ADD CONSTRAINT fk_assoccl_assoccl_pes_per_cat FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 3821 (class 2606 OID 57503488)
-- Dependencies: 3662 340 202
-- Name: fk_assoccl_assoccl_pes_per_m; Type: FK CONSTRAINT; Schema: basico_mensagem; Owner: -
--

ALTER TABLE ONLY assoccl_assoccl_pessoa_perfil
    ADD CONSTRAINT fk_assoccl_assoccl_pes_per_m FOREIGN KEY (id_mensagem) REFERENCES basico.mensagem(id);


--
-- TOC entry 3823 (class 2606 OID 57503493)
-- Dependencies: 204 340 3662
-- Name: fk_mensagem_email; Type: FK CONSTRAINT; Schema: basico_mensagem; Owner: -
--

ALTER TABLE ONLY assoc_email
    ADD CONSTRAINT fk_mensagem_email FOREIGN KEY (id_mensagem) REFERENCES basico.mensagem(id);


SET search_path = basico_mensagem_assoc_email, pg_catalog;

--
-- TOC entry 3819 (class 2606 OID 57503928)
-- Dependencies: 200 314 3570
-- Name: fk_assoccl_arquivo_arquivo; Type: FK CONSTRAINT; Schema: basico_mensagem_assoc_email; Owner: -
--

ALTER TABLE ONLY assoccl_arquivo
    ADD CONSTRAINT fk_assoccl_arquivo_arquivo FOREIGN KEY (id_arquivo) REFERENCES basico.arquivo(id);


--
-- TOC entry 3818 (class 2606 OID 57503033)
-- Dependencies: 204 200 3157
-- Name: fk_assoccl_arquivo_assoc_email; Type: FK CONSTRAINT; Schema: basico_mensagem_assoc_email; Owner: -
--

ALTER TABLE ONLY assoccl_arquivo
    ADD CONSTRAINT fk_assoccl_arquivo_assoc_email FOREIGN KEY (id_assoc_email) REFERENCES basico_mensagem.assoc_email(id);


SET search_path = basico_metodo_validacao, pg_catalog;

--
-- TOC entry 3816 (class 2606 OID 57503478)
-- Dependencies: 3699 350 198
-- Name: fk_assoccl_include_met_validacao; Type: FK CONSTRAINT; Schema: basico_metodo_validacao; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_assoccl_include_met_validacao FOREIGN KEY (id_metodo_validacao) REFERENCES basico.metodo_validacao(id);


--
-- TOC entry 3817 (class 2606 OID 57503528)
-- Dependencies: 3669 198 342
-- Name: fk_assoccl_met_valid_inc_inc; Type: FK CONSTRAINT; Schema: basico_metodo_validacao; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_assoccl_met_valid_inc_inc FOREIGN KEY (id_include) REFERENCES basico.include(id);


SET search_path = basico_output, pg_catalog;

--
-- TOC entry 3814 (class 2606 OID 57503443)
-- Dependencies: 358 196 3729
-- Name: fk_assoccl_include_output; Type: FK CONSTRAINT; Schema: basico_output; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_assoccl_include_output FOREIGN KEY (id_output) REFERENCES basico.output(id);


--
-- TOC entry 3815 (class 2606 OID 57503558)
-- Dependencies: 342 196 3669
-- Name: fk_assoccl_output_inc_inc; Type: FK CONSTRAINT; Schema: basico_output; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_assoccl_output_inc_inc FOREIGN KEY (id_include) REFERENCES basico.include(id);


SET search_path = basico_perfil, pg_catalog;

--
-- TOC entry 3812 (class 2606 OID 57503428)
-- Dependencies: 334 194 3643
-- Name: fk_assoccl_modulo_modulo; Type: FK CONSTRAINT; Schema: basico_perfil; Owner: -
--

ALTER TABLE ONLY assoccl_modulo
    ADD CONSTRAINT fk_assoccl_modulo_modulo FOREIGN KEY (id_perfil) REFERENCES basico.perfil(id);


--
-- TOC entry 3813 (class 2606 OID 57503463)
-- Dependencies: 3735 360 194
-- Name: fk_assoccl_modulo_perfil; Type: FK CONSTRAINT; Schema: basico_perfil; Owner: -
--

ALTER TABLE ONLY assoccl_modulo
    ADD CONSTRAINT fk_assoccl_modulo_perfil FOREIGN KEY (id_modulo) REFERENCES basico.modulo(id);


SET search_path = basico_pessoa, pg_catalog;

--
-- TOC entry 3807 (class 2606 OID 57503408)
-- Dependencies: 362 3738 188
-- Name: fk_assoc_dados_pessoa; Type: FK CONSTRAINT; Schema: basico_pessoa; Owner: -
--

ALTER TABLE ONLY assoc_dados
    ADD CONSTRAINT fk_assoc_dados_pessoa FOREIGN KEY (id_pessoa) REFERENCES basico.pessoa(id);


--
-- TOC entry 3808 (class 2606 OID 57503413)
-- Dependencies: 362 3738 190
-- Name: fk_assoccl_perfil_pessoa; Type: FK CONSTRAINT; Schema: basico_pessoa; Owner: -
--

ALTER TABLE ONLY assoccl_perfil
    ADD CONSTRAINT fk_assoccl_perfil_pessoa FOREIGN KEY (id_pessoa) REFERENCES basico.pessoa(id);


--
-- TOC entry 3809 (class 2606 OID 57503438)
-- Dependencies: 334 190 3643
-- Name: fk_assoccl_pessoa_perfil_perfil; Type: FK CONSTRAINT; Schema: basico_pessoa; Owner: -
--

ALTER TABLE ONLY assoccl_perfil
    ADD CONSTRAINT fk_assoccl_pessoa_perfil_perfil FOREIGN KEY (id_perfil) REFERENCES basico.perfil(id);


--
-- TOC entry 3811 (class 2606 OID 57503393)
-- Dependencies: 192 3738 362
-- Name: fk_assoccl_vinc_profi_pessoa; Type: FK CONSTRAINT; Schema: basico_pessoa; Owner: -
--

ALTER TABLE ONLY assoccl_vinculo_profissional
    ADD CONSTRAINT fk_assoccl_vinc_profi_pessoa FOREIGN KEY (id_pessoa) REFERENCES basico.pessoa(id);


--
-- TOC entry 3810 (class 2606 OID 57503213)
-- Dependencies: 270 3400 192
-- Name: fk_assoccl_vinc_profi_tipo_vinc; Type: FK CONSTRAINT; Schema: basico_pessoa; Owner: -
--

ALTER TABLE ONLY assoccl_vinculo_profissional
    ADD CONSTRAINT fk_assoccl_vinc_profi_tipo_vinc FOREIGN KEY (id_tipo_vinculo) REFERENCES basico_dados_profissionais.tipo_vinculo(id);


SET search_path = basico_pessoa_juridica, pg_catalog;

--
-- TOC entry 3794 (class 2606 OID 57503753)
-- Dependencies: 176 354 3716
-- Name: fk_assoc_banco_categoria; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoc_banco
    ADD CONSTRAINT fk_assoc_banco_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 3793 (class 2606 OID 57503323)
-- Dependencies: 176 366 3748
-- Name: fk_assoc_banco_pj; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoc_banco
    ADD CONSTRAINT fk_assoc_banco_pj FOREIGN KEY (id_pessoa_juridica) REFERENCES basico.pessoa_juridica(id);


--
-- TOC entry 3799 (class 2606 OID 57503328)
-- Dependencies: 180 366 3748
-- Name: fk_assoc_dados_pj; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoc_dados
    ADD CONSTRAINT fk_assoc_dados_pj FOREIGN KEY (id_pessoa_juridica) REFERENCES basico.pessoa_juridica(id);


--
-- TOC entry 3792 (class 2606 OID 57503803)
-- Dependencies: 3716 354 172
-- Name: fk_assoc_faturamento_categoria; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoccl_faturamento
    ADD CONSTRAINT fk_assoc_faturamento_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 3791 (class 2606 OID 57503368)
-- Dependencies: 3748 172 366
-- Name: fk_assoc_faturamento_pj; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoccl_faturamento
    ADD CONSTRAINT fk_assoc_faturamento_pj FOREIGN KEY (id_pessoa_juridica) REFERENCES basico.pessoa_juridica(id);


--
-- TOC entry 3802 (class 2606 OID 57503808)
-- Dependencies: 354 3716 182
-- Name: fk_assoc_quadro_func_categoria; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoccl_quadro_funcionario
    ADD CONSTRAINT fk_assoc_quadro_func_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 3786 (class 2606 OID 57503343)
-- Dependencies: 168 366 3748
-- Name: fk_assocag_incub_pj_incubada; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assocag_incubadora
    ADD CONSTRAINT fk_assocag_incub_pj_incubada FOREIGN KEY (id_pessoa_juridica_incubada) REFERENCES basico.pessoa_juridica(id);


--
-- TOC entry 3788 (class 2606 OID 57503783)
-- Dependencies: 168 3716 354
-- Name: fk_assocag_incubadora_categoria; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assocag_incubadora
    ADD CONSTRAINT fk_assocag_incubadora_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 3787 (class 2606 OID 57503348)
-- Dependencies: 168 366 3748
-- Name: fk_assocag_incubadora_pj; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assocag_incubadora
    ADD CONSTRAINT fk_assocag_incubadora_pj FOREIGN KEY (id_pessoa_juridica) REFERENCES basico.pessoa_juridica(id);


--
-- TOC entry 3795 (class 2606 OID 57502988)
-- Dependencies: 178 178 3069
-- Name: fk_assocag_parc_assocag_parc; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assocag_parceria
    ADD CONSTRAINT fk_assocag_parc_assocag_parc FOREIGN KEY (id_assocag_parceria) REFERENCES assocag_parceria(id);


--
-- TOC entry 3798 (class 2606 OID 57503798)
-- Dependencies: 3716 354 178
-- Name: fk_assocag_parceria_categoria; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assocag_parceria
    ADD CONSTRAINT fk_assocag_parceria_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 3797 (class 2606 OID 57503363)
-- Dependencies: 3748 178 366
-- Name: fk_assocag_parceria_pj; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assocag_parceria
    ADD CONSTRAINT fk_assocag_parceria_pj FOREIGN KEY (id_pessoa_juridica) REFERENCES basico.pessoa_juridica(id);


--
-- TOC entry 3796 (class 2606 OID 57503358)
-- Dependencies: 178 3748 366
-- Name: fk_assocag_parceria_pj_parc; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assocag_parceria
    ADD CONSTRAINT fk_assocag_parceria_pj_parc FOREIGN KEY (id_pessoa_juridica_parceira) REFERENCES basico.pessoa_juridica(id);


--
-- TOC entry 3790 (class 2606 OID 57503933)
-- Dependencies: 170 3608 324
-- Name: fk_assoccl_area_econ_area; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoccl_area_economia
    ADD CONSTRAINT fk_assoccl_area_econ_area FOREIGN KEY (id_area_economia) REFERENCES basico.area_economia(id);


--
-- TOC entry 3789 (class 2606 OID 57503378)
-- Dependencies: 170 366 3748
-- Name: fk_assoccl_area_econ_pj; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoccl_area_economia
    ADD CONSTRAINT fk_assoccl_area_econ_pj FOREIGN KEY (id_pessoa_juridica) REFERENCES basico.pessoa_juridica(id);


--
-- TOC entry 3804 (class 2606 OID 57502978)
-- Dependencies: 184 174 3055
-- Name: fk_assoccl_cap_social_cap; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoccl_capital_social
    ADD CONSTRAINT fk_assoccl_cap_social_cap FOREIGN KEY (id_capital_social) REFERENCES capital_social(id);


--
-- TOC entry 3805 (class 2606 OID 57503333)
-- Dependencies: 184 366 3748
-- Name: fk_assoccl_cap_social_pj; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoccl_capital_social
    ADD CONSTRAINT fk_assoccl_cap_social_pj FOREIGN KEY (id_pessoa_juridica) REFERENCES basico.pessoa_juridica(id);


--
-- TOC entry 3803 (class 2606 OID 57503943)
-- Dependencies: 3651 336 182
-- Name: fk_assoccl_quadro_func_area_conh; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoccl_quadro_funcionario
    ADD CONSTRAINT fk_assoccl_quadro_func_area_conh FOREIGN KEY (id_area_conhecimento_predom) REFERENCES basico.area_conhecimento(id);


--
-- TOC entry 3806 (class 2606 OID 57503813)
-- Dependencies: 354 3716 186
-- Name: fk_natureza_categoria; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY natureza
    ADD CONSTRAINT fk_natureza_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 3801 (class 2606 OID 57503373)
-- Dependencies: 366 182 3748
-- Name: fk_pj_quadro_funcionarios; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoccl_quadro_funcionario
    ADD CONSTRAINT fk_pj_quadro_funcionarios FOREIGN KEY (id_pessoa_juridica) REFERENCES basico.pessoa_juridica(id);


--
-- TOC entry 3800 (class 2606 OID 57503233)
-- Dependencies: 274 3412 182
-- Name: fk_quadro_func_titulacao; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoccl_quadro_funcionario
    ADD CONSTRAINT fk_quadro_func_titulacao FOREIGN KEY (id_titulacao) REFERENCES basico_dados_academicos.titulacao(id);


SET search_path = basico_sequencia, pg_catalog;

--
-- TOC entry 3784 (class 2606 OID 57503648)
-- Dependencies: 354 166 3716
-- Name: fk_assocsq_acao_apli_categoria; Type: FK CONSTRAINT; Schema: basico_sequencia; Owner: -
--

ALTER TABLE ONLY assocsq_acao_aplicacao
    ADD CONSTRAINT fk_assocsq_acao_apli_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 3785 (class 2606 OID 57503988)
-- Dependencies: 352 3706 166
-- Name: fk_assocsq_acao_aplic_acao_apl; Type: FK CONSTRAINT; Schema: basico_sequencia; Owner: -
--

ALTER TABLE ONLY assocsq_acao_aplicacao
    ADD CONSTRAINT fk_assocsq_acao_aplic_acao_apl FOREIGN KEY (id_acao_aplicacao) REFERENCES basico.acao_aplicacao(id);


--
-- TOC entry 3783 (class 2606 OID 57503313)
-- Dependencies: 166 322 3596
-- Name: fk_assocsq_acao_aplic_seq; Type: FK CONSTRAINT; Schema: basico_sequencia; Owner: -
--

ALTER TABLE ONLY assocsq_acao_aplicacao
    ADD CONSTRAINT fk_assocsq_acao_aplic_seq FOREIGN KEY (id_sequencia) REFERENCES basico.sequencia(id);


SET search_path = basico_template, pg_catalog;

--
-- TOC entry 3779 (class 2606 OID 57503293)
-- Dependencies: 332 162 3633
-- Name: fk_assoccl_include_template; Type: FK CONSTRAINT; Schema: basico_template; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_assoccl_include_template FOREIGN KEY (id_template) REFERENCES basico.template(id);


--
-- TOC entry 3782 (class 2606 OID 57503448)
-- Dependencies: 358 164 3729
-- Name: fk_assoccl_output_output; Type: FK CONSTRAINT; Schema: basico_template; Owner: -
--

ALTER TABLE ONLY assoccl_output
    ADD CONSTRAINT fk_assoccl_output_output FOREIGN KEY (id_output) REFERENCES basico.output(id);


--
-- TOC entry 3781 (class 2606 OID 57503298)
-- Dependencies: 164 332 3633
-- Name: fk_assoccl_output_template; Type: FK CONSTRAINT; Schema: basico_template; Owner: -
--

ALTER TABLE ONLY assoccl_output
    ADD CONSTRAINT fk_assoccl_output_template FOREIGN KEY (id_template) REFERENCES basico.template(id);


--
-- TOC entry 3780 (class 2606 OID 57503563)
-- Dependencies: 3669 342 162
-- Name: fk_assoccl_template_inc_inc; Type: FK CONSTRAINT; Schema: basico_template; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_assoccl_template_inc_inc FOREIGN KEY (id_include) REFERENCES basico.include(id);


--
-- TOC entry 3990 (class 0 OID 0)
-- Dependencies: 3
-- Name: public; Type: ACL; Schema: -; Owner: -
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2012-02-06 15:47:17 BRT

--
-- PostgreSQL database dump complete
--
