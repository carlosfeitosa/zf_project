--
-- PostgreSQL database dump
--

-- Dumped from database version 8.3.17
-- Dumped by pg_dump version 9.1.4
-- Started on 2012-07-04 10:45:56 BRT

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
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
-- TOC entry 4216 (class 0 OID 0)
-- Dependencies: 3
-- Name: SCHEMA basico; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA basico IS 'Tabelas de uso geral do módulo BÁSICO.';


--
-- TOC entry 6 (class 2615 OID 58318285)
-- Name: basico_acao_aplic_assoc_visao; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_acao_aplic_assoc_visao;


--
-- TOC entry 4217 (class 0 OID 0)
-- Dependencies: 6
-- Name: SCHEMA basico_acao_aplic_assoc_visao; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA basico_acao_aplic_assoc_visao IS 'Tabelas de uso específico (especialização de uma "ação aplicação" em "visão") do módulo BÁSICO.';


--
-- TOC entry 7 (class 2615 OID 58318286)
-- Name: basico_acao_aplicacao; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_acao_aplicacao;


--
-- TOC entry 4218 (class 0 OID 0)
-- Dependencies: 7
-- Name: SCHEMA basico_acao_aplicacao; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA basico_acao_aplicacao IS 'Tabelas de uso específico ("ação aplicação") do módulo BÁSICO.';


--
-- TOC entry 9 (class 2615 OID 58318287)
-- Name: basico_acao_evento; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_acao_evento;


--
-- TOC entry 4219 (class 0 OID 0)
-- Dependencies: 9
-- Name: SCHEMA basico_acao_evento; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA basico_acao_evento IS 'Tabelas de uso específico ("ação evento") do módulo BÁSICO.';


--
-- TOC entry 10 (class 2615 OID 58318288)
-- Name: basico_ajuda; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_ajuda;


--
-- TOC entry 4220 (class 0 OID 0)
-- Dependencies: 10
-- Name: SCHEMA basico_ajuda; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA basico_ajuda IS 'Tabelas de uso específico ("ajuda") do módulo BÁSICO.';


--
-- TOC entry 11 (class 2615 OID 58318289)
-- Name: basico_assoc_banco; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_assoc_banco;


--
-- TOC entry 4221 (class 0 OID 0)
-- Dependencies: 11
-- Name: SCHEMA basico_assoc_banco; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA basico_assoc_banco IS 'Tabelas de uso específico (especialização de "pessoa jurídica" em "banco") do módulo BÁSICO.';


--
-- TOC entry 12 (class 2615 OID 58318290)
-- Name: basico_assoc_chave_estrangeira; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_assoc_chave_estrangeira;


--
-- TOC entry 4222 (class 0 OID 0)
-- Dependencies: 12
-- Name: SCHEMA basico_assoc_chave_estrangeira; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA basico_assoc_chave_estrangeira IS 'Tabelas de uso específico (especializaçao de "categoria" em "chave estrangeira") do módulo BÁSICO.';


--
-- TOC entry 13 (class 2615 OID 58318291)
-- Name: basico_assoc_dados_profis; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_assoc_dados_profis;


--
-- TOC entry 4223 (class 0 OID 0)
-- Dependencies: 13
-- Name: SCHEMA basico_assoc_dados_profis; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA basico_assoc_dados_profis IS 'Tabelas de uso específico (especialização de "vinculo profissional" em "dados profissionais") do módulo BÁSICO.';


--
-- TOC entry 14 (class 2615 OID 58318292)
-- Name: basico_assoccl_pessoa_perfil; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_assoccl_pessoa_perfil;


--
-- TOC entry 4224 (class 0 OID 0)
-- Dependencies: 14
-- Name: SCHEMA basico_assoccl_pessoa_perfil; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA basico_assoccl_pessoa_perfil IS 'Tabelas de uso específico (associação de "pessoa" com "perfil") do módulo BÁSICO.';


--
-- TOC entry 15 (class 2615 OID 58318293)
-- Name: basico_assoccl_tipo_vinculo; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_assoccl_tipo_vinculo;


--
-- TOC entry 4225 (class 0 OID 0)
-- Dependencies: 15
-- Name: SCHEMA basico_assoccl_tipo_vinculo; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA basico_assoccl_tipo_vinculo IS 'Tabelas de uso específico (associação de "pessoa" com "tipo de vínculo profissional") do módulo BÁSICO.';


--
-- TOC entry 16 (class 2615 OID 58318294)
-- Name: basico_categoria; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_categoria;


--
-- TOC entry 4226 (class 0 OID 0)
-- Dependencies: 16
-- Name: SCHEMA basico_categoria; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA basico_categoria IS 'Tabelas de uso específico ("categoria") do módulo BÁSICO.';


--
-- TOC entry 17 (class 2615 OID 58318295)
-- Name: basico_componente; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_componente;


--
-- TOC entry 4227 (class 0 OID 0)
-- Dependencies: 17
-- Name: SCHEMA basico_componente; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA basico_componente IS 'Tabelas de uso específico ("componente") do módulo BÁSICO.';


--
-- TOC entry 18 (class 2615 OID 58318296)
-- Name: basico_contato; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_contato;


--
-- TOC entry 4228 (class 0 OID 0)
-- Dependencies: 18
-- Name: SCHEMA basico_contato; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA basico_contato IS 'Tabelas de uso específico (todos os tipos de contato) do módulo BÁSICO.';


--
-- TOC entry 19 (class 2615 OID 58318297)
-- Name: basico_cvc; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_cvc;


--
-- TOC entry 4229 (class 0 OID 0)
-- Dependencies: 19
-- Name: SCHEMA basico_cvc; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA basico_cvc IS 'Tabelas de uso específico (Control Version Class - CVC) do módulo BÁSICO.';


--
-- TOC entry 20 (class 2615 OID 58318298)
-- Name: basico_dados_academicos; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_dados_academicos;


--
-- TOC entry 4230 (class 0 OID 0)
-- Dependencies: 20
-- Name: SCHEMA basico_dados_academicos; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA basico_dados_academicos IS 'Tabelas de uso específico ("dados acadêmicos") do módulo BÁSICO.';


--
-- TOC entry 21 (class 2615 OID 58318299)
-- Name: basico_dados_biometricos; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_dados_biometricos;


--
-- TOC entry 4231 (class 0 OID 0)
-- Dependencies: 21
-- Name: SCHEMA basico_dados_biometricos; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA basico_dados_biometricos IS 'Tabelas de uso específico ("dados biométricos") do módulo BÁSICO.';


--
-- TOC entry 22 (class 2615 OID 58318300)
-- Name: basico_dados_profissionais; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_dados_profissionais;


--
-- TOC entry 4232 (class 0 OID 0)
-- Dependencies: 22
-- Name: SCHEMA basico_dados_profissionais; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA basico_dados_profissionais IS 'Tabelas de uso específico ("dados profissionais") do módulo BÁSICO.';


--
-- TOC entry 41 (class 2615 OID 61362034)
-- Name: basico_filter; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_filter;


--
-- TOC entry 4233 (class 0 OID 0)
-- Dependencies: 41
-- Name: SCHEMA basico_filter; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA basico_filter IS 'Tabelas de uso específico ("filter") do módulo BÁSICO.';


--
-- TOC entry 42 (class 2615 OID 61362046)
-- Name: basico_filter_grupo; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_filter_grupo;


--
-- TOC entry 4234 (class 0 OID 0)
-- Dependencies: 42
-- Name: SCHEMA basico_filter_grupo; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA basico_filter_grupo IS 'Tabelas de uso específico ("grupo de filters") do módulo BÁSICO.';


--
-- TOC entry 23 (class 2615 OID 58318302)
-- Name: basico_form_assoccl_elem_grupo; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_form_assoccl_elem_grupo;


--
-- TOC entry 4235 (class 0 OID 0)
-- Dependencies: 23
-- Name: SCHEMA basico_form_assoccl_elem_grupo; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA basico_form_assoccl_elem_grupo IS 'Tabelas de uso específico (associação de "elementos do formulário" com "display group") do módulo BÁSICO.';


--
-- TOC entry 24 (class 2615 OID 58318303)
-- Name: basico_form_assoccl_elemento; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_form_assoccl_elemento;


--
-- TOC entry 4236 (class 0 OID 0)
-- Dependencies: 24
-- Name: SCHEMA basico_form_assoccl_elemento; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA basico_form_assoccl_elemento IS 'Tabelas de uso específico (associação de "formulário" com "elemento") do módulo BÁSICO.';


--
-- TOC entry 40 (class 2615 OID 61361850)
-- Name: basico_form_decorator_grupo; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_form_decorator_grupo;


--
-- TOC entry 4237 (class 0 OID 0)
-- Dependencies: 40
-- Name: SCHEMA basico_form_decorator_grupo; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA basico_form_decorator_grupo IS 'Tabelas de uso específico (especialização de "formulario decorator grupo") do módulo BÁSICO.';


--
-- TOC entry 25 (class 2615 OID 58318304)
-- Name: basico_formulario; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_formulario;


--
-- TOC entry 4238 (class 0 OID 0)
-- Dependencies: 25
-- Name: SCHEMA basico_formulario; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA basico_formulario IS 'Tabelas de uso específico ("formulário") do módulo BÁSICO.';


--
-- TOC entry 45 (class 2615 OID 61365978)
-- Name: basico_formulario_decorator; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_formulario_decorator;


--
-- TOC entry 4239 (class 0 OID 0)
-- Dependencies: 45
-- Name: SCHEMA basico_formulario_decorator; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA basico_formulario_decorator IS 'Tabelas de uso específico ("decorator") do módulo BÁSICO.';


--
-- TOC entry 26 (class 2615 OID 58318305)
-- Name: basico_formulario_elemento; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_formulario_elemento;


--
-- TOC entry 4240 (class 0 OID 0)
-- Dependencies: 26
-- Name: SCHEMA basico_formulario_elemento; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA basico_formulario_elemento IS 'Tabelas de uso específico ("elemento de formulário") do módulo BÁSICO.';


--
-- TOC entry 27 (class 2615 OID 58318306)
-- Name: basico_formulario_rascunho; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_formulario_rascunho;


--
-- TOC entry 4241 (class 0 OID 0)
-- Dependencies: 27
-- Name: SCHEMA basico_formulario_rascunho; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA basico_formulario_rascunho IS 'Tabelas de uso específico ("rascunho de formulário") do módulo BÁSICO.';


--
-- TOC entry 28 (class 2615 OID 58318307)
-- Name: basico_localizacao; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_localizacao;


--
-- TOC entry 4242 (class 0 OID 0)
-- Dependencies: 28
-- Name: SCHEMA basico_localizacao; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA basico_localizacao IS 'Tabelas de uso específico (todos os tipos de "localização") do módulo BÁSICO.';


--
-- TOC entry 29 (class 2615 OID 58318308)
-- Name: basico_mensagem; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_mensagem;


--
-- TOC entry 4243 (class 0 OID 0)
-- Dependencies: 29
-- Name: SCHEMA basico_mensagem; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA basico_mensagem IS 'Tabelas de uso específico ("mensagem") do módulo BÁSICO.';


--
-- TOC entry 30 (class 2615 OID 58318309)
-- Name: basico_mensagem_assoc_email; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_mensagem_assoc_email;


--
-- TOC entry 4244 (class 0 OID 0)
-- Dependencies: 30
-- Name: SCHEMA basico_mensagem_assoc_email; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA basico_mensagem_assoc_email IS 'Tabelas de uso específico (especialização de "mensagem" em "e-mail") do módulo BÁSICO.';


--
-- TOC entry 31 (class 2615 OID 58318310)
-- Name: basico_metodo_validacao; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_metodo_validacao;


--
-- TOC entry 4245 (class 0 OID 0)
-- Dependencies: 31
-- Name: SCHEMA basico_metodo_validacao; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA basico_metodo_validacao IS 'Tabelas de uso específico ("metodo de validação") do módulo BÁSICO.';


--
-- TOC entry 32 (class 2615 OID 58318311)
-- Name: basico_output; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_output;


--
-- TOC entry 4246 (class 0 OID 0)
-- Dependencies: 32
-- Name: SCHEMA basico_output; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA basico_output IS 'Tabelas de uso específico ("output") do módulo BÁSICO.';


--
-- TOC entry 33 (class 2615 OID 58318312)
-- Name: basico_perfil; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_perfil;


--
-- TOC entry 4247 (class 0 OID 0)
-- Dependencies: 33
-- Name: SCHEMA basico_perfil; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA basico_perfil IS 'Tabelas de uso específico ("perfil") do módulo BÁSICO.';


--
-- TOC entry 34 (class 2615 OID 58318313)
-- Name: basico_pessoa; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_pessoa;


--
-- TOC entry 4248 (class 0 OID 0)
-- Dependencies: 34
-- Name: SCHEMA basico_pessoa; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA basico_pessoa IS 'Tabelas de uso específico ("pessoa") do módulo BÁSICO.';


--
-- TOC entry 35 (class 2615 OID 58318314)
-- Name: basico_pessoa_juridica; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_pessoa_juridica;


--
-- TOC entry 4249 (class 0 OID 0)
-- Dependencies: 35
-- Name: SCHEMA basico_pessoa_juridica; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA basico_pessoa_juridica IS 'Tabelas de uso específico ("pessoa jurídica") do módulo BÁSICO.';


--
-- TOC entry 36 (class 2615 OID 58318315)
-- Name: basico_sequencia; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_sequencia;


--
-- TOC entry 4250 (class 0 OID 0)
-- Dependencies: 36
-- Name: SCHEMA basico_sequencia; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA basico_sequencia IS 'Tabelas de uso específico ("sequência") do módulo BÁSICO.';


--
-- TOC entry 37 (class 2615 OID 58318316)
-- Name: basico_template; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_template;


--
-- TOC entry 4251 (class 0 OID 0)
-- Dependencies: 37
-- Name: SCHEMA basico_template; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA basico_template IS 'Tabelas de uso específico ("template") do módulo BÁSICO.';


--
-- TOC entry 43 (class 2615 OID 61362282)
-- Name: basico_validator; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_validator;


--
-- TOC entry 4252 (class 0 OID 0)
-- Dependencies: 43
-- Name: SCHEMA basico_validator; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA basico_validator IS 'Tabelas de uso específico ("validator") do módulo BÁSICO.';


--
-- TOC entry 44 (class 2615 OID 61362321)
-- Name: basico_validator_grupo; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA basico_validator_grupo;


--
-- TOC entry 4253 (class 0 OID 0)
-- Dependencies: 44
-- Name: SCHEMA basico_validator_grupo; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA basico_validator_grupo IS 'Tabelas de uso específico ("validator grupo") do módulo BÁSICO.';


SET search_path = basico, pg_catalog;

--
-- TOC entry 423 (class 1255 OID 58318317)
-- Dependencies: 3
-- Name: fn_checkcodigoareaconhecimentoexists(character varying); Type: FUNCTION; Schema: basico; Owner: -
--

CREATE FUNCTION fn_checkcodigoareaconhecimentoexists(character varying) RETURNS integer
    LANGUAGE sql
    AS $_$select id from basico.area_conhecimento where codigo = $1 limit 1$_$;


--
-- TOC entry 4256 (class 0 OID 0)
-- Dependencies: 423
-- Name: FUNCTION fn_checkcodigoareaconhecimentoexists(character varying); Type: COMMENT; Schema: basico; Owner: -
--

COMMENT ON FUNCTION fn_checkcodigoareaconhecimentoexists(character varying) IS 'Função que verifica se um código de área de conhecimento existe, retornando o id da tupla se encontrado e null se não encontrado.';


--
-- TOC entry 424 (class 1255 OID 58318318)
-- Dependencies: 3
-- Name: fn_checkcodigoareaeconomiaexists(character varying); Type: FUNCTION; Schema: basico; Owner: -
--

CREATE FUNCTION fn_checkcodigoareaeconomiaexists(character varying) RETURNS integer
    LANGUAGE sql
    AS $_$select id from basico.area_economia where codigo = $1 limit 1$_$;


--
-- TOC entry 4257 (class 0 OID 0)
-- Dependencies: 424
-- Name: FUNCTION fn_checkcodigoareaeconomiaexists(character varying); Type: COMMENT; Schema: basico; Owner: -
--

COMMENT ON FUNCTION fn_checkcodigoareaeconomiaexists(character varying) IS 'Função que verifica se um código de área de economia existe, retornando o id da tupla se encontrado e null se não encontrado.';


--
-- TOC entry 425 (class 1255 OID 58318319)
-- Dependencies: 3
-- Name: fn_checkcodigocategoriaexists(character varying); Type: FUNCTION; Schema: basico; Owner: -
--

CREATE FUNCTION fn_checkcodigocategoriaexists(character varying) RETURNS integer
    LANGUAGE sql
    AS $_$select id from basico.categoria where codigo = $1 limit 1$_$;


--
-- TOC entry 4258 (class 0 OID 0)
-- Dependencies: 425
-- Name: FUNCTION fn_checkcodigocategoriaexists(character varying); Type: COMMENT; Schema: basico; Owner: -
--

COMMENT ON FUNCTION fn_checkcodigocategoriaexists(character varying) IS 'Função que verifica se um código de categoria existe, retornando o id da tupla se encontrado e null se não encontrado.';


--
-- TOC entry 426 (class 1255 OID 58318320)
-- Dependencies: 3
-- Name: fn_checkcodigotipocategoriaexists(character varying); Type: FUNCTION; Schema: basico; Owner: -
--

CREATE FUNCTION fn_checkcodigotipocategoriaexists(character varying) RETURNS integer
    LANGUAGE sql
    AS $_$select id from basico.tipo_categoria where codigo = $1 limit 1$_$;


--
-- TOC entry 4259 (class 0 OID 0)
-- Dependencies: 426
-- Name: FUNCTION fn_checkcodigotipocategoriaexists(character varying); Type: COMMENT; Schema: basico; Owner: -
--

COMMENT ON FUNCTION fn_checkcodigotipocategoriaexists(character varying) IS 'Função que verifica se um código de tipo categoria existe, retornando o id da tupla se encontrado e null se não encontrado.';


--
-- TOC entry 427 (class 1255 OID 58318321)
-- Dependencies: 3
-- Name: fn_checkconstantetextualexists(character varying); Type: FUNCTION; Schema: basico; Owner: -
--

CREATE FUNCTION fn_checkconstantetextualexists(character varying) RETURNS integer
    LANGUAGE sql
    AS $_$select id from basico.dicionario_expressao where constante_textual = $1 limit 1$_$;


--
-- TOC entry 4260 (class 0 OID 0)
-- Dependencies: 427
-- Name: FUNCTION fn_checkconstantetextualexists(character varying); Type: COMMENT; Schema: basico; Owner: -
--

COMMENT ON FUNCTION fn_checkconstantetextualexists(character varying) IS 'Função que verifica se uma tradução existe, retornando o id da tupla se encontrado e null se não encontrado.';


--
-- TOC entry 428 (class 1255 OID 58318322)
-- Dependencies: 3
-- Name: fn_checknomearquivoexists(character varying); Type: FUNCTION; Schema: basico; Owner: -
--

CREATE FUNCTION fn_checknomearquivoexists(character varying) RETURNS integer
    LANGUAGE sql
    AS $_$select id from basico.arquivo where nome = $1 limit 1$_$;


--
-- TOC entry 4261 (class 0 OID 0)
-- Dependencies: 428
-- Name: FUNCTION fn_checknomearquivoexists(character varying); Type: COMMENT; Schema: basico; Owner: -
--

COMMENT ON FUNCTION fn_checknomearquivoexists(character varying) IS 'Função que verifica se um arquivo, através do nome, existe, retornando o id da tupla se encontrado e null se não encontrado.';


--
-- TOC entry 418 (class 1255 OID 58318323)
-- Dependencies: 3
-- Name: fn_checknomelinkexists(character varying); Type: FUNCTION; Schema: basico; Owner: -
--

CREATE FUNCTION fn_checknomelinkexists(character varying) RETURNS integer
    LANGUAGE sql
    AS $_$select id from basico.link where nome = $1 limit 1$_$;


--
-- TOC entry 4262 (class 0 OID 0)
-- Dependencies: 418
-- Name: FUNCTION fn_checknomelinkexists(character varying); Type: COMMENT; Schema: basico; Owner: -
--

COMMENT ON FUNCTION fn_checknomelinkexists(character varying) IS 'Função que verifica se um link, através do nome, existe, retornando o id da tupla se encontrado e null se não encontrado.';


--
-- TOC entry 419 (class 1255 OID 58318324)
-- Dependencies: 3
-- Name: fn_checknomeprodutoexists(character varying); Type: FUNCTION; Schema: basico; Owner: -
--

CREATE FUNCTION fn_checknomeprodutoexists(character varying) RETURNS integer
    LANGUAGE sql
    AS $_$select id from basico.produto where nome = $1 limit 1$_$;


--
-- TOC entry 4263 (class 0 OID 0)
-- Dependencies: 419
-- Name: FUNCTION fn_checknomeprodutoexists(character varying); Type: COMMENT; Schema: basico; Owner: -
--

COMMENT ON FUNCTION fn_checknomeprodutoexists(character varying) IS 'Função que verifica se um produto, através do nome, existe, retornando o id da tupla se encontrado e null se não encontrado.';


SET search_path = basico_categoria, pg_catalog;

--
-- TOC entry 420 (class 1255 OID 58318325)
-- Dependencies: 16
-- Name: fn_checkcategoriachaveestrangeiracategoriaexists(integer); Type: FUNCTION; Schema: basico_categoria; Owner: -
--

CREATE FUNCTION fn_checkcategoriachaveestrangeiracategoriaexists(integer) RETURNS integer
    LANGUAGE sql
    AS $_$select id from basico_categoria.assoc_chave_estrangeira where id_categoria = $1 limit 1$_$;


--
-- TOC entry 4264 (class 0 OID 0)
-- Dependencies: 420
-- Name: FUNCTION fn_checkcategoriachaveestrangeiracategoriaexists(integer); Type: COMMENT; Schema: basico_categoria; Owner: -
--

COMMENT ON FUNCTION fn_checkcategoriachaveestrangeiracategoriaexists(integer) IS 'Função que verifica se a categoria da chave estrangeira existe, retornando o id da tupla se encontrado e null se não encontrado.';


--
-- TOC entry 415 (class 1255 OID 58325456)
-- Dependencies: 16
-- Name: fn_retornaidcategoriacvc(); Type: FUNCTION; Schema: basico_categoria; Owner: -
--

CREATE FUNCTION fn_retornaidcategoriacvc() RETURNS integer
    LANGUAGE sql IMMUTABLE
    AS $$select c.id from basico.categoria c left join basico.tipo_categoria t on (c.id_tipo_categoria = t.id) where c.nome = 'CVC' and t.nome = 'CVC'$$;


--
-- TOC entry 4265 (class 0 OID 0)
-- Dependencies: 415
-- Name: FUNCTION fn_retornaidcategoriacvc(); Type: COMMENT; Schema: basico_categoria; Owner: -
--

COMMENT ON FUNCTION fn_retornaidcategoriacvc() IS 'Retorna o id da categoria cujo nome é ''CVC'' e o nome do tipo categoria também é ''CVC''.';


SET search_path = basico_contato, pg_catalog;

--
-- TOC entry 421 (class 1255 OID 58318326)
-- Dependencies: 18
-- Name: fn_checknomeemailexists(character varying); Type: FUNCTION; Schema: basico_contato; Owner: -
--

CREATE FUNCTION fn_checknomeemailexists(character varying) RETURNS integer
    LANGUAGE sql
    AS $_$select id from basico_contato.cpg_email where nome = $1 limit 1$_$;


--
-- TOC entry 4266 (class 0 OID 0)
-- Dependencies: 421
-- Name: FUNCTION fn_checknomeemailexists(character varying); Type: COMMENT; Schema: basico_contato; Owner: -
--

COMMENT ON FUNCTION fn_checknomeemailexists(character varying) IS 'Função que verifica se um e-mail, através do nome, existe, retornando o id da tupla se encontrado e null se não encontrado.';


--
-- TOC entry 422 (class 1255 OID 58318327)
-- Dependencies: 18
-- Name: fn_checknometelefoneexists(character varying); Type: FUNCTION; Schema: basico_contato; Owner: -
--

CREATE FUNCTION fn_checknometelefoneexists(character varying) RETURNS integer
    LANGUAGE sql
    AS $_$select id from basico_contato.cpg_telefone where nome = $1 limit 1$_$;


--
-- TOC entry 4267 (class 0 OID 0)
-- Dependencies: 422
-- Name: FUNCTION fn_checknometelefoneexists(character varying); Type: COMMENT; Schema: basico_contato; Owner: -
--

COMMENT ON FUNCTION fn_checknometelefoneexists(character varying) IS 'Função que verifica se um telefone, através do nome, existe, retornando o id da tupla se encontrado e null se não encontrado.';


SET search_path = basico_cvc, pg_catalog;

--
-- TOC entry 416 (class 1255 OID 58318328)
-- Dependencies: 19
-- Name: fn_checkcategoriacvc(integer); Type: FUNCTION; Schema: basico_cvc; Owner: -
--

CREATE FUNCTION fn_checkcategoriacvc(integer) RETURNS integer
    LANGUAGE sql
    AS $_$select c.id from basico.categoria c left join basico.tipo_categoria t on (c.id_tipo_categoria = t.id) where c.id = $1 and t.nome = $$CVC$$ and c.nome = $$CVC$$limit 1$_$;


--
-- TOC entry 4268 (class 0 OID 0)
-- Dependencies: 416
-- Name: FUNCTION fn_checkcategoriacvc(integer); Type: COMMENT; Schema: basico_cvc; Owner: -
--

COMMENT ON FUNCTION fn_checkcategoriacvc(integer) IS 'Função que verifica se existe uma categoria do CVC associada a categoria(id) passado por parametro, retornando o id da tupla se encontrado e null se não encontrado.';


SET search_path = basico_formulario_elemento, pg_catalog;

--
-- TOC entry 417 (class 1255 OID 58318329)
-- Dependencies: 26
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


--
-- TOC entry 4269 (class 0 OID 0)
-- Dependencies: 417
-- Name: FUNCTION fn_checkincludeassocclelementoexists(id_assoccl_elemento integer, id_include integer); Type: COMMENT; Schema: basico_formulario_elemento; Owner: -
--

COMMENT ON FUNCTION fn_checkincludeassocclelementoexists(id_assoccl_elemento integer, id_include integer) IS 'Função que verifica se um include de uma associação de um formulário com um elemento já existe na associação do componente(do elemento) com o mesmo include, retornando o id da tupla se encontrado e null se não encontrado.';


SET search_path = basico, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 401 (class 1259 OID 61451918)
-- Dependencies: 3110 3111 3112 3113 3114 3
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
-- TOC entry 400 (class 1259 OID 61451916)
-- Dependencies: 3 401
-- Name: acao_aplicacao_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE acao_aplicacao_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4270 (class 0 OID 0)
-- Dependencies: 400
-- Name: acao_aplicacao_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE acao_aplicacao_id_seq OWNED BY acao_aplicacao.id;


--
-- TOC entry 399 (class 1259 OID 61451900)
-- Dependencies: 3104 3105 3106 3107 3108 3
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
-- TOC entry 398 (class 1259 OID 61451898)
-- Dependencies: 399 3
-- Name: acao_evento_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE acao_evento_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4271 (class 0 OID 0)
-- Dependencies: 398
-- Name: acao_evento_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE acao_evento_id_seq OWNED BY acao_evento.id;


--
-- TOC entry 397 (class 1259 OID 61451879)
-- Dependencies: 3095 3096 3097 3098 3099 3100 3101 3102 3
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
-- TOC entry 396 (class 1259 OID 61451877)
-- Dependencies: 3 397
-- Name: ajuda_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE ajuda_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4272 (class 0 OID 0)
-- Dependencies: 396
-- Name: ajuda_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE ajuda_id_seq OWNED BY ajuda.id;


--
-- TOC entry 395 (class 1259 OID 61451859)
-- Dependencies: 3087 3088 3089 3090 3091 3092 3093 3
-- Name: area_conhecimento; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE area_conhecimento (
    id integer NOT NULL,
    id_area_conhecimento_pai integer,
    nivel integer DEFAULT 1,
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
-- TOC entry 394 (class 1259 OID 61451857)
-- Dependencies: 395 3
-- Name: area_conhecimento_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE area_conhecimento_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4273 (class 0 OID 0)
-- Dependencies: 394
-- Name: area_conhecimento_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE area_conhecimento_id_seq OWNED BY area_conhecimento.id;


--
-- TOC entry 393 (class 1259 OID 61451839)
-- Dependencies: 3079 3080 3081 3082 3083 3084 3085 3
-- Name: area_economia; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE area_economia (
    id integer NOT NULL,
    id_area_economia_pai integer,
    nivel integer DEFAULT 1,
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
-- TOC entry 392 (class 1259 OID 61451837)
-- Dependencies: 3 393
-- Name: area_economia_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE area_economia_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4274 (class 0 OID 0)
-- Dependencies: 392
-- Name: area_economia_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE area_economia_id_seq OWNED BY area_economia.id;


--
-- TOC entry 391 (class 1259 OID 61451819)
-- Dependencies: 3071 3072 3073 3074 3075 3076 3077 3
-- Name: categoria; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE categoria (
    id integer NOT NULL,
    id_tipo_categoria integer NOT NULL,
    id_categoria_pai integer,
    nivel integer DEFAULT 1,
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
-- TOC entry 4275 (class 0 OID 0)
-- Dependencies: 391
-- Name: TABLE categoria; Type: COMMENT; Schema: basico; Owner: -
--

COMMENT ON TABLE categoria IS 'containner de categorias';


--
-- TOC entry 390 (class 1259 OID 61451817)
-- Dependencies: 391 3
-- Name: categoria_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE categoria_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4276 (class 0 OID 0)
-- Dependencies: 390
-- Name: categoria_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE categoria_id_seq OWNED BY categoria.id;


--
-- TOC entry 389 (class 1259 OID 61451801)
-- Dependencies: 3065 3066 3067 3068 3069 3
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
-- TOC entry 388 (class 1259 OID 61451799)
-- Dependencies: 389 3
-- Name: componente_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE componente_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4277 (class 0 OID 0)
-- Dependencies: 388
-- Name: componente_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE componente_id_seq OWNED BY componente.id;


--
-- TOC entry 387 (class 1259 OID 61451781)
-- Dependencies: 3057 3058 3059 3060 3061 3062 3063 3
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
-- TOC entry 386 (class 1259 OID 61451779)
-- Dependencies: 3 387
-- Name: cpg_arquivo_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE cpg_arquivo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4278 (class 0 OID 0)
-- Dependencies: 386
-- Name: cpg_arquivo_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE cpg_arquivo_id_seq OWNED BY cpg_arquivo.id;


--
-- TOC entry 385 (class 1259 OID 61451764)
-- Dependencies: 3052 3053 3054 3055 3
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
-- TOC entry 384 (class 1259 OID 61451762)
-- Dependencies: 385 3
-- Name: cpg_codigo_acesso_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE cpg_codigo_acesso_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4279 (class 0 OID 0)
-- Dependencies: 384
-- Name: cpg_codigo_acesso_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE cpg_codigo_acesso_id_seq OWNED BY cpg_codigo_acesso.id;


--
-- TOC entry 383 (class 1259 OID 61451749)
-- Dependencies: 3049 3050 3
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
-- TOC entry 382 (class 1259 OID 61451747)
-- Dependencies: 3 383
-- Name: cpg_dados_bancarios_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE cpg_dados_bancarios_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4280 (class 0 OID 0)
-- Dependencies: 382
-- Name: cpg_dados_bancarios_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE cpg_dados_bancarios_id_seq OWNED BY cpg_dados_bancarios.id;


--
-- TOC entry 381 (class 1259 OID 61451733)
-- Dependencies: 3045 3046 3047 3
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
-- TOC entry 380 (class 1259 OID 61451731)
-- Dependencies: 381 3
-- Name: cpg_documento_identificacao_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE cpg_documento_identificacao_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4281 (class 0 OID 0)
-- Dependencies: 380
-- Name: cpg_documento_identificacao_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE cpg_documento_identificacao_id_seq OWNED BY cpg_documento_identificacao.id;


--
-- TOC entry 379 (class 1259 OID 61451714)
-- Dependencies: 3038 3039 3040 3041 3042 3043 3
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
-- TOC entry 378 (class 1259 OID 61451712)
-- Dependencies: 3 379
-- Name: cpg_link_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE cpg_link_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4282 (class 0 OID 0)
-- Dependencies: 378
-- Name: cpg_link_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE cpg_link_id_seq OWNED BY cpg_link.id;


--
-- TOC entry 377 (class 1259 OID 61451699)
-- Dependencies: 3033 3034 3035 3036 3
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
-- TOC entry 376 (class 1259 OID 61451697)
-- Dependencies: 377 3
-- Name: cpg_produto_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE cpg_produto_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4283 (class 0 OID 0)
-- Dependencies: 376
-- Name: cpg_produto_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE cpg_produto_id_seq OWNED BY cpg_produto.id;


--
-- TOC entry 375 (class 1259 OID 61451686)
-- Dependencies: 3030 3031 3
-- Name: cpg_token; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE cpg_token (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    id_generico_proprietario integer NOT NULL,
    token character varying(100) NOT NULL,
    datahora_expiracao timestamp without time zone DEFAULT (now() + '36:00:00'::interval) NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 374 (class 1259 OID 61451684)
-- Dependencies: 375 3
-- Name: cpg_token_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE cpg_token_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4284 (class 0 OID 0)
-- Dependencies: 374
-- Name: cpg_token_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE cpg_token_id_seq OWNED BY cpg_token.id;


--
-- TOC entry 373 (class 1259 OID 61451671)
-- Dependencies: 3027 3028 3
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
-- TOC entry 372 (class 1259 OID 61451669)
-- Dependencies: 373 3
-- Name: dados_biometricos_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE dados_biometricos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4285 (class 0 OID 0)
-- Dependencies: 372
-- Name: dados_biometricos_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE dados_biometricos_id_seq OWNED BY dados_biometricos.id;


--
-- TOC entry 371 (class 1259 OID 61451654)
-- Dependencies: 3022 3023 3024 3025 3
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
-- TOC entry 370 (class 1259 OID 61451652)
-- Dependencies: 371 3
-- Name: dicionario_expressao_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE dicionario_expressao_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4286 (class 0 OID 0)
-- Dependencies: 370
-- Name: dicionario_expressao_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE dicionario_expressao_id_seq OWNED BY dicionario_expressao.id;


--
-- TOC entry 369 (class 1259 OID 61451636)
-- Dependencies: 3016 3017 3018 3019 3020 3
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
-- TOC entry 368 (class 1259 OID 61451634)
-- Dependencies: 369 3
-- Name: evento_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE evento_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4287 (class 0 OID 0)
-- Dependencies: 368
-- Name: evento_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE evento_id_seq OWNED BY evento.id;


--
-- TOC entry 367 (class 1259 OID 61451618)
-- Dependencies: 3010 3011 3012 3013 3014 3
-- Name: filter; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE filter (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    id_componente integer NOT NULL,
    nome character varying(200) NOT NULL,
    constante_textual character varying(200) NOT NULL,
    constante_textual_descricao character varying(200),
    attribs character varying(2000),
    ativo boolean DEFAULT false NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT filter_constante_textual_check CHECK ((fn_checkconstantetextualexists(constante_textual) IS NOT NULL)),
    CONSTRAINT filter_constante_textual_descricao_check CHECK (((constante_textual_descricao IS NULL) OR (fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL)))
);


--
-- TOC entry 366 (class 1259 OID 61451616)
-- Dependencies: 367 3
-- Name: filter_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE filter_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4288 (class 0 OID 0)
-- Dependencies: 366
-- Name: filter_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE filter_id_seq OWNED BY filter.id;


--
-- TOC entry 365 (class 1259 OID 61451598)
-- Dependencies: 3002 3003 3004 3005 3006 3007 3008 3
-- Name: formulario; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE formulario (
    id integer NOT NULL,
    id_formulario_pai integer,
    nivel integer DEFAULT 1,
    id_componente integer NOT NULL,
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
-- TOC entry 364 (class 1259 OID 61451596)
-- Dependencies: 3 365
-- Name: formulario_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE formulario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4289 (class 0 OID 0)
-- Dependencies: 364
-- Name: formulario_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE formulario_id_seq OWNED BY formulario.id;


--
-- TOC entry 363 (class 1259 OID 61451578)
-- Dependencies: 2996 2997 2998 2999 3000 3
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
-- TOC entry 362 (class 1259 OID 61451576)
-- Dependencies: 363 3
-- Name: include_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE include_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4290 (class 0 OID 0)
-- Dependencies: 362
-- Name: include_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE include_id_seq OWNED BY include.id;


--
-- TOC entry 361 (class 1259 OID 61451567)
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
-- TOC entry 360 (class 1259 OID 61451565)
-- Dependencies: 361 3
-- Name: log_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4291 (class 0 OID 0)
-- Dependencies: 360
-- Name: log_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE log_id_seq OWNED BY log.id;


--
-- TOC entry 359 (class 1259 OID 61451554)
-- Dependencies: 2992 2993 3
-- Name: mensagem; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE mensagem (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    id_generico_proprietario integer NOT NULL,
    remetente character varying(200) NOT NULL,
    remetente_nome character varying(2000),
    destinatarios character varying(3000),
    destinatarios_nomes character varying(2000),
    assunto character varying(200),
    mensagem character varying(2000),
    datahora_envio timestamp without time zone,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 358 (class 1259 OID 61451552)
-- Dependencies: 359 3
-- Name: mensagem_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE mensagem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4292 (class 0 OID 0)
-- Dependencies: 358
-- Name: mensagem_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE mensagem_id_seq OWNED BY mensagem.id;


--
-- TOC entry 357 (class 1259 OID 61451536)
-- Dependencies: 2986 2987 2988 2989 2990 3
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
-- TOC entry 356 (class 1259 OID 61451534)
-- Dependencies: 357 3
-- Name: metodo_validacao_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE metodo_validacao_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4293 (class 0 OID 0)
-- Dependencies: 356
-- Name: metodo_validacao_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE metodo_validacao_id_seq OWNED BY metodo_validacao.id;


--
-- TOC entry 355 (class 1259 OID 61451519)
-- Dependencies: 2979 2980 2981 2982 2983 2984 3
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
-- TOC entry 354 (class 1259 OID 61451517)
-- Dependencies: 3 355
-- Name: modulo_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE modulo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4294 (class 0 OID 0)
-- Dependencies: 354
-- Name: modulo_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE modulo_id_seq OWNED BY modulo.id;


--
-- TOC entry 353 (class 1259 OID 61451503)
-- Dependencies: 2973 2974 2975 2976 2977 3
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
-- TOC entry 352 (class 1259 OID 61451501)
-- Dependencies: 353 3
-- Name: output_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE output_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4295 (class 0 OID 0)
-- Dependencies: 352
-- Name: output_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE output_id_seq OWNED BY output.id;


--
-- TOC entry 351 (class 1259 OID 61451484)
-- Dependencies: 2966 2967 2968 2969 2970 2971 3
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
-- TOC entry 350 (class 1259 OID 61451482)
-- Dependencies: 351 3
-- Name: perfil_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE perfil_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4296 (class 0 OID 0)
-- Dependencies: 350
-- Name: perfil_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE perfil_id_seq OWNED BY perfil.id;


--
-- TOC entry 349 (class 1259 OID 61451471)
-- Dependencies: 2963 2964 3
-- Name: pessoa; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE pessoa (
    id integer NOT NULL,
    id_perfil_default integer,
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
-- TOC entry 348 (class 1259 OID 61451469)
-- Dependencies: 3 349
-- Name: pessoa_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE pessoa_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4297 (class 0 OID 0)
-- Dependencies: 348
-- Name: pessoa_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE pessoa_id_seq OWNED BY pessoa.id;


--
-- TOC entry 347 (class 1259 OID 61451456)
-- Dependencies: 2958 2959 2960 2961 3
-- Name: pessoa_juridica; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE pessoa_juridica (
    id integer NOT NULL,
    id_pessoa_juridica_pai integer,
    nivel integer DEFAULT 1,
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
-- TOC entry 346 (class 1259 OID 61451454)
-- Dependencies: 3 347
-- Name: pessoa_juridica_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE pessoa_juridica_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4298 (class 0 OID 0)
-- Dependencies: 346
-- Name: pessoa_juridica_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE pessoa_juridica_id_seq OWNED BY pessoa_juridica.id;


--
-- TOC entry 345 (class 1259 OID 61451440)
-- Dependencies: 2952 2953 2954 2955 2956 3
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
-- TOC entry 344 (class 1259 OID 61451438)
-- Dependencies: 345 3
-- Name: profissao_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE profissao_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4299 (class 0 OID 0)
-- Dependencies: 344
-- Name: profissao_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE profissao_id_seq OWNED BY profissao.id;


--
-- TOC entry 343 (class 1259 OID 61451422)
-- Dependencies: 2946 2947 2948 2949 2950 3
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
-- TOC entry 342 (class 1259 OID 61451420)
-- Dependencies: 343 3
-- Name: sequencia_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE sequencia_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4300 (class 0 OID 0)
-- Dependencies: 342
-- Name: sequencia_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE sequencia_id_seq OWNED BY sequencia.id;


--
-- TOC entry 341 (class 1259 OID 61451406)
-- Dependencies: 2940 2941 2942 2943 2944 3
-- Name: template; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE template (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    nome character varying(200) NOT NULL,
    constante_textual character varying(200) NOT NULL,
    constante_textual_descricao character varying(200),
    template text NOT NULL,
    full_file_name character varying(1000),
    ativo boolean DEFAULT false NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT template_constante_textual_check CHECK ((fn_checkconstantetextualexists(constante_textual) IS NOT NULL)),
    CONSTRAINT template_constante_textual_descricao_check CHECK (((constante_textual_descricao IS NULL) OR (fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL)))
);


--
-- TOC entry 340 (class 1259 OID 61451404)
-- Dependencies: 3 341
-- Name: template_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE template_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4301 (class 0 OID 0)
-- Dependencies: 340
-- Name: template_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE template_id_seq OWNED BY template.id;


--
-- TOC entry 339 (class 1259 OID 61451385)
-- Dependencies: 2931 2932 2933 2934 2935 2936 2937 2938 3
-- Name: tipo_categoria; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE tipo_categoria (
    id integer NOT NULL,
    id_tipo_categoria_pai integer,
    nivel integer DEFAULT 1,
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
-- TOC entry 4302 (class 0 OID 0)
-- Dependencies: 339
-- Name: TABLE tipo_categoria; Type: COMMENT; Schema: basico; Owner: -
--

COMMENT ON TABLE tipo_categoria IS 'containner de tipos de categoria';


--
-- TOC entry 338 (class 1259 OID 61451383)
-- Dependencies: 3 339
-- Name: tipo_categoria_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE tipo_categoria_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4303 (class 0 OID 0)
-- Dependencies: 338
-- Name: tipo_categoria_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE tipo_categoria_id_seq OWNED BY tipo_categoria.id;


--
-- TOC entry 337 (class 1259 OID 61451368)
-- Dependencies: 2924 2925 2926 2927 2928 2929 3
-- Name: validator; Type: TABLE; Schema: basico; Owner: -; Tablespace: 
--

CREATE TABLE validator (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    id_componente integer NOT NULL,
    nome character varying(200) NOT NULL,
    constante_textual character varying(200) NOT NULL,
    constante_textual_descricao character varying(200),
    parar_validacao_apos_falha boolean DEFAULT false NOT NULL,
    attribs character varying(2000),
    ativo boolean DEFAULT false NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT validator_constante_textual_check CHECK ((fn_checkconstantetextualexists(constante_textual) IS NOT NULL)),
    CONSTRAINT validator_constante_textual_descricao_check CHECK (((constante_textual_descricao IS NULL) OR (fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL)))
);


--
-- TOC entry 336 (class 1259 OID 61451366)
-- Dependencies: 337 3
-- Name: validator_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE validator_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4304 (class 0 OID 0)
-- Dependencies: 336
-- Name: validator_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE validator_id_seq OWNED BY validator.id;


SET search_path = basico_acao_aplic_assoc_visao, pg_catalog;

--
-- TOC entry 335 (class 1259 OID 61451354)
-- Dependencies: 2922 6
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
-- TOC entry 334 (class 1259 OID 61451352)
-- Dependencies: 6 335
-- Name: assoccl_atrib_met_rec_post_id_seq; Type: SEQUENCE; Schema: basico_acao_aplic_assoc_visao; Owner: -
--

CREATE SEQUENCE assoccl_atrib_met_rec_post_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4305 (class 0 OID 0)
-- Dependencies: 334
-- Name: assoccl_atrib_met_rec_post_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_acao_aplic_assoc_visao; Owner: -
--

ALTER SEQUENCE assoccl_atrib_met_rec_post_id_seq OWNED BY assoccl_atrib_met_rec_post.id;


--
-- TOC entry 333 (class 1259 OID 61451337)
-- Dependencies: 2917 2918 2919 2920 6
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
-- TOC entry 332 (class 1259 OID 61451335)
-- Dependencies: 333 6
-- Name: atributo_metodo_recup_post_id_seq; Type: SEQUENCE; Schema: basico_acao_aplic_assoc_visao; Owner: -
--

CREATE SEQUENCE atributo_metodo_recup_post_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4306 (class 0 OID 0)
-- Dependencies: 332
-- Name: atributo_metodo_recup_post_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_acao_aplic_assoc_visao; Owner: -
--

ALTER SEQUENCE atributo_metodo_recup_post_id_seq OWNED BY atributo_metodo_recup_post.id;


SET search_path = basico_acao_aplicacao, pg_catalog;

--
-- TOC entry 331 (class 1259 OID 61451319)
-- Dependencies: 2909 2910 2911 2912 2913 2914 2915 7
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
-- TOC entry 330 (class 1259 OID 61451317)
-- Dependencies: 7 331
-- Name: assoc_visao_id_seq; Type: SEQUENCE; Schema: basico_acao_aplicacao; Owner: -
--

CREATE SEQUENCE assoc_visao_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4307 (class 0 OID 0)
-- Dependencies: 330
-- Name: assoc_visao_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_acao_aplicacao; Owner: -
--

ALTER SEQUENCE assoc_visao_id_seq OWNED BY assoc_visao.id;


--
-- TOC entry 329 (class 1259 OID 61451305)
-- Dependencies: 2907 7
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
-- TOC entry 328 (class 1259 OID 61451303)
-- Dependencies: 7 329
-- Name: assoccl_metodo_validacao_id_seq; Type: SEQUENCE; Schema: basico_acao_aplicacao; Owner: -
--

CREATE SEQUENCE assoccl_metodo_validacao_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4308 (class 0 OID 0)
-- Dependencies: 328
-- Name: assoccl_metodo_validacao_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_acao_aplicacao; Owner: -
--

ALTER SEQUENCE assoccl_metodo_validacao_id_seq OWNED BY assoccl_metodo_validacao.id;


--
-- TOC entry 327 (class 1259 OID 61451291)
-- Dependencies: 2905 7
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
-- TOC entry 326 (class 1259 OID 61451289)
-- Dependencies: 7 327
-- Name: assoccl_perfil_id_seq; Type: SEQUENCE; Schema: basico_acao_aplicacao; Owner: -
--

CREATE SEQUENCE assoccl_perfil_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4309 (class 0 OID 0)
-- Dependencies: 326
-- Name: assoccl_perfil_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_acao_aplicacao; Owner: -
--

ALTER SEQUENCE assoccl_perfil_id_seq OWNED BY assoccl_perfil.id;


SET search_path = basico_acao_evento, pg_catalog;

--
-- TOC entry 325 (class 1259 OID 61451277)
-- Dependencies: 2903 9
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
-- TOC entry 324 (class 1259 OID 61451275)
-- Dependencies: 325 9
-- Name: assoccl_include_id_seq; Type: SEQUENCE; Schema: basico_acao_evento; Owner: -
--

CREATE SEQUENCE assoccl_include_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4310 (class 0 OID 0)
-- Dependencies: 324
-- Name: assoccl_include_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_acao_evento; Owner: -
--

ALTER SEQUENCE assoccl_include_id_seq OWNED BY assoccl_include.id;


SET search_path = basico_ajuda, pg_catalog;

--
-- TOC entry 323 (class 1259 OID 61451263)
-- Dependencies: 2901 10
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
-- TOC entry 322 (class 1259 OID 61451261)
-- Dependencies: 323 10
-- Name: assoccl_link_id_seq; Type: SEQUENCE; Schema: basico_ajuda; Owner: -
--

CREATE SEQUENCE assoccl_link_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4311 (class 0 OID 0)
-- Dependencies: 322
-- Name: assoccl_link_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_ajuda; Owner: -
--

ALTER SEQUENCE assoccl_link_id_seq OWNED BY assoccl_link.id;


SET search_path = basico_assoc_banco, pg_catalog;

--
-- TOC entry 321 (class 1259 OID 61451244)
-- Dependencies: 2896 2897 2898 2899 11
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
-- TOC entry 320 (class 1259 OID 61451242)
-- Dependencies: 11 321
-- Name: assoc_tipo_conta_id_seq; Type: SEQUENCE; Schema: basico_assoc_banco; Owner: -
--

CREATE SEQUENCE assoc_tipo_conta_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4312 (class 0 OID 0)
-- Dependencies: 320
-- Name: assoc_tipo_conta_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_assoc_banco; Owner: -
--

ALTER SEQUENCE assoc_tipo_conta_id_seq OWNED BY assoc_tipo_conta.id;


SET search_path = basico_assoc_chave_estrangeira, pg_catalog;

--
-- TOC entry 319 (class 1259 OID 61451230)
-- Dependencies: 2894 12
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
-- TOC entry 318 (class 1259 OID 61451228)
-- Dependencies: 12 319
-- Name: relacao_id_seq; Type: SEQUENCE; Schema: basico_assoc_chave_estrangeira; Owner: -
--

CREATE SEQUENCE relacao_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4313 (class 0 OID 0)
-- Dependencies: 318
-- Name: relacao_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_assoc_chave_estrangeira; Owner: -
--

ALTER SEQUENCE relacao_id_seq OWNED BY relacao.id;


SET search_path = basico_assoc_dados_profis, pg_catalog;

--
-- TOC entry 317 (class 1259 OID 61451216)
-- Dependencies: 2892 13
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
-- TOC entry 316 (class 1259 OID 61451214)
-- Dependencies: 317 13
-- Name: assoccl_area_conhecimento_id_seq; Type: SEQUENCE; Schema: basico_assoc_dados_profis; Owner: -
--

CREATE SEQUENCE assoccl_area_conhecimento_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4314 (class 0 OID 0)
-- Dependencies: 316
-- Name: assoccl_area_conhecimento_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_assoc_dados_profis; Owner: -
--

ALTER SEQUENCE assoccl_area_conhecimento_id_seq OWNED BY assoccl_area_conhecimento.id;


SET search_path = basico_assoccl_pessoa_perfil, pg_catalog;

--
-- TOC entry 315 (class 1259 OID 61451203)
-- Dependencies: 2889 2890 14
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
-- TOC entry 314 (class 1259 OID 61451201)
-- Dependencies: 315 14
-- Name: assoc_dados_id_seq; Type: SEQUENCE; Schema: basico_assoccl_pessoa_perfil; Owner: -
--

CREATE SEQUENCE assoc_dados_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4315 (class 0 OID 0)
-- Dependencies: 314
-- Name: assoc_dados_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_assoccl_pessoa_perfil; Owner: -
--

ALTER SEQUENCE assoc_dados_id_seq OWNED BY assoc_dados.id;


SET search_path = basico_assoccl_tipo_vinculo, pg_catalog;

--
-- TOC entry 313 (class 1259 OID 61451190)
-- Dependencies: 2886 2887 15
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
-- TOC entry 312 (class 1259 OID 61451188)
-- Dependencies: 313 15
-- Name: assoc_dados_id_seq; Type: SEQUENCE; Schema: basico_assoccl_tipo_vinculo; Owner: -
--

CREATE SEQUENCE assoc_dados_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4316 (class 0 OID 0)
-- Dependencies: 312
-- Name: assoc_dados_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_assoccl_tipo_vinculo; Owner: -
--

ALTER SEQUENCE assoc_dados_id_seq OWNED BY assoc_dados.id;


SET search_path = basico_categoria, pg_catalog;

--
-- TOC entry 311 (class 1259 OID 61451177)
-- Dependencies: 2883 2884 16
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
-- TOC entry 4317 (class 0 OID 0)
-- Dependencies: 311
-- Name: TABLE assoc_chave_estrangeira; Type: COMMENT; Schema: basico_categoria; Owner: -
--

COMMENT ON TABLE assoc_chave_estrangeira IS 'conteinner de relacao de uma categoria com uma relacao de chave estrangeira (tabela e campo)';


--
-- TOC entry 310 (class 1259 OID 61451175)
-- Dependencies: 16 311
-- Name: assoc_chave_estrangeira_id_seq; Type: SEQUENCE; Schema: basico_categoria; Owner: -
--

CREATE SEQUENCE assoc_chave_estrangeira_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4318 (class 0 OID 0)
-- Dependencies: 310
-- Name: assoc_chave_estrangeira_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_categoria; Owner: -
--

ALTER SEQUENCE assoc_chave_estrangeira_id_seq OWNED BY assoc_chave_estrangeira.id;


--
-- TOC entry 309 (class 1259 OID 61451165)
-- Dependencies: 2881 16
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
-- TOC entry 308 (class 1259 OID 61451163)
-- Dependencies: 309 16
-- Name: assoc_evento_acao_id_seq; Type: SEQUENCE; Schema: basico_categoria; Owner: -
--

CREATE SEQUENCE assoc_evento_acao_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4319 (class 0 OID 0)
-- Dependencies: 308
-- Name: assoc_evento_acao_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_categoria; Owner: -
--

ALTER SEQUENCE assoc_evento_acao_id_seq OWNED BY assoc_evento_acao.id;


SET search_path = basico_componente, pg_catalog;

--
-- TOC entry 307 (class 1259 OID 61451151)
-- Dependencies: 2879 17
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
-- TOC entry 306 (class 1259 OID 61451149)
-- Dependencies: 307 17
-- Name: assoccl_include_id_seq; Type: SEQUENCE; Schema: basico_componente; Owner: -
--

CREATE SEQUENCE assoccl_include_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4320 (class 0 OID 0)
-- Dependencies: 306
-- Name: assoccl_include_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_componente; Owner: -
--

ALTER SEQUENCE assoccl_include_id_seq OWNED BY assoccl_include.id;


SET search_path = basico_contato, pg_catalog;

--
-- TOC entry 305 (class 1259 OID 61451131)
-- Dependencies: 2871 2872 2873 2874 2875 2876 2877 18
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
-- TOC entry 304 (class 1259 OID 61451129)
-- Dependencies: 305 18
-- Name: cpg_email_id_seq; Type: SEQUENCE; Schema: basico_contato; Owner: -
--

CREATE SEQUENCE cpg_email_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4321 (class 0 OID 0)
-- Dependencies: 304
-- Name: cpg_email_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_contato; Owner: -
--

ALTER SEQUENCE cpg_email_id_seq OWNED BY cpg_email.id;


--
-- TOC entry 303 (class 1259 OID 61451112)
-- Dependencies: 2864 2865 2866 2867 2868 2869 18
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
-- TOC entry 302 (class 1259 OID 61451110)
-- Dependencies: 303 18
-- Name: cpg_telefone_id_seq; Type: SEQUENCE; Schema: basico_contato; Owner: -
--

CREATE SEQUENCE cpg_telefone_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4322 (class 0 OID 0)
-- Dependencies: 302
-- Name: cpg_telefone_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_contato; Owner: -
--

ALTER SEQUENCE cpg_telefone_id_seq OWNED BY cpg_telefone.id;


SET search_path = basico_cvc, pg_catalog;

--
-- TOC entry 301 (class 1259 OID 61451095)
-- Dependencies: 2859 2860 2861 2862 19
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
-- TOC entry 300 (class 1259 OID 61451093)
-- Dependencies: 19 301
-- Name: cvc_id_seq; Type: SEQUENCE; Schema: basico_cvc; Owner: -
--

CREATE SEQUENCE cvc_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4323 (class 0 OID 0)
-- Dependencies: 300
-- Name: cvc_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_cvc; Owner: -
--

ALTER SEQUENCE cvc_id_seq OWNED BY cvc.id;


SET search_path = basico_dados_academicos, pg_catalog;

--
-- TOC entry 299 (class 1259 OID 61451079)
-- Dependencies: 2853 2854 2855 2856 2857 20
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
-- TOC entry 298 (class 1259 OID 61451077)
-- Dependencies: 299 20
-- Name: titulacao_id_seq; Type: SEQUENCE; Schema: basico_dados_academicos; Owner: -
--

CREATE SEQUENCE titulacao_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4324 (class 0 OID 0)
-- Dependencies: 298
-- Name: titulacao_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_dados_academicos; Owner: -
--

ALTER SEQUENCE titulacao_id_seq OWNED BY titulacao.id;


SET search_path = basico_dados_biometricos, pg_catalog;

--
-- TOC entry 297 (class 1259 OID 61451066)
-- Dependencies: 2850 2851 21
-- Name: assoc_pessoa; Type: TABLE; Schema: basico_dados_biometricos; Owner: -; Tablespace: 
--

CREATE TABLE assoc_pessoa (
    id integer NOT NULL,
    id_dados_biometricos integer NOT NULL,
    id_categoria_sexo integer NOT NULL,
    id_categoria_raca integer,
    id_categoria_tipo_sanguineo integer,
    altura numeric(3,2),
    peso numeric(6,3),
    historico_medico character varying(2000),
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 296 (class 1259 OID 61451064)
-- Dependencies: 21 297
-- Name: assoc_pessoa_id_seq; Type: SEQUENCE; Schema: basico_dados_biometricos; Owner: -
--

CREATE SEQUENCE assoc_pessoa_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4325 (class 0 OID 0)
-- Dependencies: 296
-- Name: assoc_pessoa_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_dados_biometricos; Owner: -
--

ALTER SEQUENCE assoc_pessoa_id_seq OWNED BY assoc_pessoa.id;


SET search_path = basico_dados_profissionais, pg_catalog;

--
-- TOC entry 295 (class 1259 OID 61451047)
-- Dependencies: 2843 2844 2845 2846 2847 2848 22
-- Name: regime_trabalho; Type: TABLE; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE TABLE regime_trabalho (
    id integer NOT NULL,
    id_regime_trabalho_pai integer,
    nivel integer DEFAULT 1,
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
-- TOC entry 294 (class 1259 OID 61451045)
-- Dependencies: 22 295
-- Name: regime_trabalho_id_seq; Type: SEQUENCE; Schema: basico_dados_profissionais; Owner: -
--

CREATE SEQUENCE regime_trabalho_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4326 (class 0 OID 0)
-- Dependencies: 294
-- Name: regime_trabalho_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_dados_profissionais; Owner: -
--

ALTER SEQUENCE regime_trabalho_id_seq OWNED BY regime_trabalho.id;


--
-- TOC entry 293 (class 1259 OID 61451027)
-- Dependencies: 2835 2836 2837 2838 2839 2840 2841 22
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
-- TOC entry 292 (class 1259 OID 61451025)
-- Dependencies: 293 22
-- Name: tipo_vinculo_id_seq; Type: SEQUENCE; Schema: basico_dados_profissionais; Owner: -
--

CREATE SEQUENCE tipo_vinculo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4327 (class 0 OID 0)
-- Dependencies: 292
-- Name: tipo_vinculo_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_dados_profissionais; Owner: -
--

ALTER SEQUENCE tipo_vinculo_id_seq OWNED BY tipo_vinculo.id;


--
-- TOC entry 291 (class 1259 OID 61451009)
-- Dependencies: 2829 2830 2831 2832 2833 22
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
-- TOC entry 290 (class 1259 OID 61451007)
-- Dependencies: 22 291
-- Name: vinculo_empregaticio_id_seq; Type: SEQUENCE; Schema: basico_dados_profissionais; Owner: -
--

CREATE SEQUENCE vinculo_empregaticio_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4328 (class 0 OID 0)
-- Dependencies: 290
-- Name: vinculo_empregaticio_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_dados_profissionais; Owner: -
--

ALTER SEQUENCE vinculo_empregaticio_id_seq OWNED BY vinculo_empregaticio.id;


SET search_path = basico_filter, pg_catalog;

--
-- TOC entry 281 (class 1259 OID 61450919)
-- Dependencies: 2823 2824 2825 2826 2827 41
-- Name: grupo; Type: TABLE; Schema: basico_filter; Owner: -; Tablespace: 
--

CREATE TABLE grupo (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    nome character varying(200) NOT NULL,
    constante_textual character varying(200) NOT NULL,
    constante_textual_descricao character varying(200),
    ativo boolean DEFAULT false NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT grupo_constante_textual_check CHECK (((constante_textual IS NULL) OR (basico.fn_checkconstantetextualexists(constante_textual) IS NOT NULL))),
    CONSTRAINT grupo_constante_textual_descricao_check CHECK (((constante_textual_descricao IS NULL) OR (basico.fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL)))
);


--
-- TOC entry 280 (class 1259 OID 61450917)
-- Dependencies: 41 281
-- Name: grupo_id_seq; Type: SEQUENCE; Schema: basico_filter; Owner: -
--

CREATE SEQUENCE grupo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4329 (class 0 OID 0)
-- Dependencies: 280
-- Name: grupo_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_filter; Owner: -
--

ALTER SEQUENCE grupo_id_seq OWNED BY grupo.id;


SET search_path = basico_filter_grupo, pg_catalog;

--
-- TOC entry 279 (class 1259 OID 61450906)
-- Dependencies: 2820 2821 42
-- Name: assocag_grupo; Type: TABLE; Schema: basico_filter_grupo; Owner: -; Tablespace: 
--

CREATE TABLE assocag_grupo (
    id integer NOT NULL,
    id_filter_grupo integer NOT NULL,
    id_filter integer,
    id_filter_grupo_assoc integer,
    ordem integer NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT ck_filter_grupo_assocag_grupo CHECK ((((id_filter IS NOT NULL) AND (id_filter_grupo_assoc IS NULL)) OR ((id_filter IS NOT NULL) AND (id_filter_grupo_assoc IS NULL))))
);


--
-- TOC entry 278 (class 1259 OID 61450904)
-- Dependencies: 42 279
-- Name: assocag_grupo_id_seq; Type: SEQUENCE; Schema: basico_filter_grupo; Owner: -
--

CREATE SEQUENCE assocag_grupo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4330 (class 0 OID 0)
-- Dependencies: 278
-- Name: assocag_grupo_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_filter_grupo; Owner: -
--

ALTER SEQUENCE assocag_grupo_id_seq OWNED BY assocag_grupo.id;


SET search_path = basico_form_assoccl_elem_grupo, pg_catalog;

--
-- TOC entry 277 (class 1259 OID 61450892)
-- Dependencies: 2818 23
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
-- TOC entry 276 (class 1259 OID 61450890)
-- Dependencies: 23 277
-- Name: assoccl_decorator_id_seq; Type: SEQUENCE; Schema: basico_form_assoccl_elem_grupo; Owner: -
--

CREATE SEQUENCE assoccl_decorator_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4331 (class 0 OID 0)
-- Dependencies: 276
-- Name: assoccl_decorator_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_form_assoccl_elem_grupo; Owner: -
--

ALTER SEQUENCE assoccl_decorator_id_seq OWNED BY assoccl_decorator.id;


SET search_path = basico_form_assoccl_elemento, pg_catalog;

--
-- TOC entry 275 (class 1259 OID 61450877)
-- Dependencies: 2815 2816 24
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
-- TOC entry 274 (class 1259 OID 61450875)
-- Dependencies: 24 275
-- Name: assoccl_decorator_id_seq; Type: SEQUENCE; Schema: basico_form_assoccl_elemento; Owner: -
--

CREATE SEQUENCE assoccl_decorator_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4332 (class 0 OID 0)
-- Dependencies: 274
-- Name: assoccl_decorator_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER SEQUENCE assoccl_decorator_id_seq OWNED BY assoccl_decorator.id;


--
-- TOC entry 273 (class 1259 OID 61450862)
-- Dependencies: 2812 2813 24
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
-- TOC entry 272 (class 1259 OID 61450860)
-- Dependencies: 24 273
-- Name: assoccl_evento_id_seq; Type: SEQUENCE; Schema: basico_form_assoccl_elemento; Owner: -
--

CREATE SEQUENCE assoccl_evento_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4333 (class 0 OID 0)
-- Dependencies: 272
-- Name: assoccl_evento_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER SEQUENCE assoccl_evento_id_seq OWNED BY assoccl_evento.id;


--
-- TOC entry 271 (class 1259 OID 61450847)
-- Dependencies: 2809 2810 24
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
-- TOC entry 270 (class 1259 OID 61450845)
-- Dependencies: 24 271
-- Name: assoccl_filter_id_seq; Type: SEQUENCE; Schema: basico_form_assoccl_elemento; Owner: -
--

CREATE SEQUENCE assoccl_filter_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4334 (class 0 OID 0)
-- Dependencies: 270
-- Name: assoccl_filter_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER SEQUENCE assoccl_filter_id_seq OWNED BY assoccl_filter.id;


--
-- TOC entry 269 (class 1259 OID 61450832)
-- Dependencies: 2806 2807 24
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
-- TOC entry 268 (class 1259 OID 61450830)
-- Dependencies: 24 269
-- Name: assoccl_include_id_seq; Type: SEQUENCE; Schema: basico_form_assoccl_elemento; Owner: -
--

CREATE SEQUENCE assoccl_include_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4335 (class 0 OID 0)
-- Dependencies: 268
-- Name: assoccl_include_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER SEQUENCE assoccl_include_id_seq OWNED BY assoccl_include.id;


--
-- TOC entry 267 (class 1259 OID 61450817)
-- Dependencies: 2803 2804 24
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
-- TOC entry 266 (class 1259 OID 61450815)
-- Dependencies: 24 267
-- Name: assoccl_validator_id_seq; Type: SEQUENCE; Schema: basico_form_assoccl_elemento; Owner: -
--

CREATE SEQUENCE assoccl_validator_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4336 (class 0 OID 0)
-- Dependencies: 266
-- Name: assoccl_validator_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER SEQUENCE assoccl_validator_id_seq OWNED BY assoccl_validator.id;


--
-- TOC entry 265 (class 1259 OID 61450800)
-- Dependencies: 2797 2798 2799 2800 2801 24
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
-- TOC entry 264 (class 1259 OID 61450798)
-- Dependencies: 265 24
-- Name: grupo_id_seq; Type: SEQUENCE; Schema: basico_form_assoccl_elemento; Owner: -
--

CREATE SEQUENCE grupo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4337 (class 0 OID 0)
-- Dependencies: 264
-- Name: grupo_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER SEQUENCE grupo_id_seq OWNED BY grupo.id;


SET search_path = basico_form_decorator_grupo, pg_catalog;

--
-- TOC entry 263 (class 1259 OID 61450787)
-- Dependencies: 2794 2795 40
-- Name: assocag_grupo; Type: TABLE; Schema: basico_form_decorator_grupo; Owner: -; Tablespace: 
--

CREATE TABLE assocag_grupo (
    id integer NOT NULL,
    id_form_decorator_grupo integer NOT NULL,
    id_formulario_decorator integer,
    id_form_decorator_grupo_assoc integer,
    ordem integer NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT ck_form_decorator_assoc_grupo CHECK ((((id_formulario_decorator IS NOT NULL) AND (id_form_decorator_grupo_assoc IS NULL)) OR ((id_formulario_decorator IS NULL) AND (id_form_decorator_grupo_assoc IS NOT NULL))))
);


--
-- TOC entry 262 (class 1259 OID 61450785)
-- Dependencies: 40 263
-- Name: assocag_grupo_id_seq; Type: SEQUENCE; Schema: basico_form_decorator_grupo; Owner: -
--

CREATE SEQUENCE assocag_grupo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4338 (class 0 OID 0)
-- Dependencies: 262
-- Name: assocag_grupo_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_form_decorator_grupo; Owner: -
--

ALTER SEQUENCE assocag_grupo_id_seq OWNED BY assocag_grupo.id;


SET search_path = basico_formulario, pg_catalog;

--
-- TOC entry 261 (class 1259 OID 61450772)
-- Dependencies: 2791 2792 25
-- Name: assoccl_decorator; Type: TABLE; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE TABLE assoccl_decorator (
    id integer NOT NULL,
    id_formulario integer NOT NULL,
    id_decorator integer,
    id_decorator_grupo integer NOT NULL,
    exclude boolean DEFAULT false NOT NULL,
    ordem integer NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 260 (class 1259 OID 61450770)
-- Dependencies: 25 261
-- Name: assoccl_decorator_id_seq; Type: SEQUENCE; Schema: basico_formulario; Owner: -
--

CREATE SEQUENCE assoccl_decorator_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4339 (class 0 OID 0)
-- Dependencies: 260
-- Name: assoccl_decorator_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_formulario; Owner: -
--

ALTER SEQUENCE assoccl_decorator_id_seq OWNED BY assoccl_decorator.id;


--
-- TOC entry 259 (class 1259 OID 61450751)
-- Dependencies: 2785 2786 2787 2788 2789 25
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
-- TOC entry 258 (class 1259 OID 61450749)
-- Dependencies: 25 259
-- Name: assoccl_elemento_id_seq; Type: SEQUENCE; Schema: basico_formulario; Owner: -
--

CREATE SEQUENCE assoccl_elemento_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4340 (class 0 OID 0)
-- Dependencies: 258
-- Name: assoccl_elemento_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_formulario; Owner: -
--

ALTER SEQUENCE assoccl_elemento_id_seq OWNED BY assoccl_elemento.id;


--
-- TOC entry 257 (class 1259 OID 61450737)
-- Dependencies: 2783 25
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
-- TOC entry 256 (class 1259 OID 61450735)
-- Dependencies: 257 25
-- Name: assoccl_evento_id_seq; Type: SEQUENCE; Schema: basico_formulario; Owner: -
--

CREATE SEQUENCE assoccl_evento_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4341 (class 0 OID 0)
-- Dependencies: 256
-- Name: assoccl_evento_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_formulario; Owner: -
--

ALTER SEQUENCE assoccl_evento_id_seq OWNED BY assoccl_evento.id;


--
-- TOC entry 255 (class 1259 OID 61450723)
-- Dependencies: 2781 25
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
-- TOC entry 254 (class 1259 OID 61450721)
-- Dependencies: 255 25
-- Name: assoccl_include_id_seq; Type: SEQUENCE; Schema: basico_formulario; Owner: -
--

CREATE SEQUENCE assoccl_include_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4342 (class 0 OID 0)
-- Dependencies: 254
-- Name: assoccl_include_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_formulario; Owner: -
--

ALTER SEQUENCE assoccl_include_id_seq OWNED BY assoccl_include.id;


--
-- TOC entry 253 (class 1259 OID 61450709)
-- Dependencies: 2779 25
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
-- TOC entry 252 (class 1259 OID 61450707)
-- Dependencies: 25 253
-- Name: assoccl_modulo_id_seq; Type: SEQUENCE; Schema: basico_formulario; Owner: -
--

CREATE SEQUENCE assoccl_modulo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4343 (class 0 OID 0)
-- Dependencies: 252
-- Name: assoccl_modulo_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_formulario; Owner: -
--

ALTER SEQUENCE assoccl_modulo_id_seq OWNED BY assoccl_modulo.id;


--
-- TOC entry 251 (class 1259 OID 61450693)
-- Dependencies: 2773 2774 2775 2776 2777 25
-- Name: decorator; Type: TABLE; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE TABLE decorator (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    id_componente integer NOT NULL,
    nome character varying(100) NOT NULL,
    constante_textual character varying(200) NOT NULL,
    constante_textual_descricao character varying(200),
    attribs character varying(2000),
    alias character varying(100),
    ativo boolean DEFAULT false NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT decorator_constante_textual_check CHECK (((constante_textual IS NULL) OR (basico.fn_checkconstantetextualexists(constante_textual) IS NOT NULL))),
    CONSTRAINT decorator_constante_textual_descricao_check CHECK (((constante_textual_descricao IS NULL) OR (basico.fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL)))
);


--
-- TOC entry 250 (class 1259 OID 61450691)
-- Dependencies: 251 25
-- Name: decorator_id_seq; Type: SEQUENCE; Schema: basico_formulario; Owner: -
--

CREATE SEQUENCE decorator_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4344 (class 0 OID 0)
-- Dependencies: 250
-- Name: decorator_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_formulario; Owner: -
--

ALTER SEQUENCE decorator_id_seq OWNED BY decorator.id;


--
-- TOC entry 249 (class 1259 OID 61450673)
-- Dependencies: 2765 2766 2767 2768 2769 2770 2771 25
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
-- TOC entry 248 (class 1259 OID 61450671)
-- Dependencies: 25 249
-- Name: elemento_id_seq; Type: SEQUENCE; Schema: basico_formulario; Owner: -
--

CREATE SEQUENCE elemento_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4345 (class 0 OID 0)
-- Dependencies: 248
-- Name: elemento_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_formulario; Owner: -
--

ALTER SEQUENCE elemento_id_seq OWNED BY elemento.id;


--
-- TOC entry 247 (class 1259 OID 61450659)
-- Dependencies: 2761 2762 2763 25
-- Name: rascunho; Type: TABLE; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE TABLE rascunho (
    id integer NOT NULL,
    id_rascunho_pai integer,
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
-- TOC entry 246 (class 1259 OID 61450657)
-- Dependencies: 247 25
-- Name: rascunho_id_seq; Type: SEQUENCE; Schema: basico_formulario; Owner: -
--

CREATE SEQUENCE rascunho_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4346 (class 0 OID 0)
-- Dependencies: 246
-- Name: rascunho_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_formulario; Owner: -
--

ALTER SEQUENCE rascunho_id_seq OWNED BY rascunho.id;


SET search_path = basico_formulario_decorator, pg_catalog;

--
-- TOC entry 245 (class 1259 OID 61450645)
-- Dependencies: 2759 45
-- Name: assoccl_include; Type: TABLE; Schema: basico_formulario_decorator; Owner: -; Tablespace: 
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
-- TOC entry 244 (class 1259 OID 61450643)
-- Dependencies: 245 45
-- Name: assoccl_include_id_seq; Type: SEQUENCE; Schema: basico_formulario_decorator; Owner: -
--

CREATE SEQUENCE assoccl_include_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4347 (class 0 OID 0)
-- Dependencies: 244
-- Name: assoccl_include_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_formulario_decorator; Owner: -
--

ALTER SEQUENCE assoccl_include_id_seq OWNED BY assoccl_include.id;


--
-- TOC entry 243 (class 1259 OID 61450629)
-- Dependencies: 2753 2754 2755 2756 2757 45
-- Name: grupo; Type: TABLE; Schema: basico_formulario_decorator; Owner: -; Tablespace: 
--

CREATE TABLE grupo (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    nome character varying(200) NOT NULL,
    constante_textual character varying(200) NOT NULL,
    constante_textual_descricao character varying(200),
    ativo boolean DEFAULT false NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT grupo_constante_textual_check CHECK (((constante_textual IS NULL) OR (basico.fn_checkconstantetextualexists(constante_textual) IS NOT NULL))),
    CONSTRAINT grupo_constante_textual_descricao_check CHECK (((constante_textual_descricao IS NULL) OR (basico.fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL)))
);


--
-- TOC entry 242 (class 1259 OID 61450627)
-- Dependencies: 243 45
-- Name: grupo_id_seq; Type: SEQUENCE; Schema: basico_formulario_decorator; Owner: -
--

CREATE SEQUENCE grupo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4348 (class 0 OID 0)
-- Dependencies: 242
-- Name: grupo_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_formulario_decorator; Owner: -
--

ALTER SEQUENCE grupo_id_seq OWNED BY grupo.id;


SET search_path = basico_formulario_elemento, pg_catalog;

--
-- TOC entry 241 (class 1259 OID 61450612)
-- Dependencies: 2749 2750 2751 26
-- Name: assoccl_decorator; Type: TABLE; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

CREATE TABLE assoccl_decorator (
    id integer NOT NULL,
    id_elemento integer NOT NULL,
    id_decorator integer,
    id_decorator_grupo integer,
    exclude boolean DEFAULT false NOT NULL,
    ordem integer NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT ck_form_elemento_assoccl_decorator CHECK ((((id_decorator IS NOT NULL) AND (id_decorator_grupo IS NULL)) OR ((id_decorator IS NULL) AND (id_decorator_grupo IS NOT NULL))))
);


--
-- TOC entry 240 (class 1259 OID 61450610)
-- Dependencies: 241 26
-- Name: assoccl_decorator_id_seq; Type: SEQUENCE; Schema: basico_formulario_elemento; Owner: -
--

CREATE SEQUENCE assoccl_decorator_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4349 (class 0 OID 0)
-- Dependencies: 240
-- Name: assoccl_decorator_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_formulario_elemento; Owner: -
--

ALTER SEQUENCE assoccl_decorator_id_seq OWNED BY assoccl_decorator.id;


--
-- TOC entry 239 (class 1259 OID 61450597)
-- Dependencies: 2746 2747 26
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
-- TOC entry 238 (class 1259 OID 61450595)
-- Dependencies: 239 26
-- Name: assoccl_evento_id_seq; Type: SEQUENCE; Schema: basico_formulario_elemento; Owner: -
--

CREATE SEQUENCE assoccl_evento_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4350 (class 0 OID 0)
-- Dependencies: 238
-- Name: assoccl_evento_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_formulario_elemento; Owner: -
--

ALTER SEQUENCE assoccl_evento_id_seq OWNED BY assoccl_evento.id;


--
-- TOC entry 237 (class 1259 OID 61450581)
-- Dependencies: 2742 2743 2744 26
-- Name: assoccl_filter; Type: TABLE; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

CREATE TABLE assoccl_filter (
    id integer NOT NULL,
    id_elemento integer NOT NULL,
    id_filter integer,
    id_filter_grupo integer,
    exclude boolean DEFAULT false NOT NULL,
    ordem integer NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT ck_form_elemento_assoccl_filter CHECK ((((id_filter IS NOT NULL) AND (id_filter_grupo IS NULL)) OR ((id_filter IS NULL) AND (id_filter_grupo IS NOT NULL))))
);


--
-- TOC entry 236 (class 1259 OID 61450579)
-- Dependencies: 237 26
-- Name: assoccl_filter_id_seq; Type: SEQUENCE; Schema: basico_formulario_elemento; Owner: -
--

CREATE SEQUENCE assoccl_filter_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4351 (class 0 OID 0)
-- Dependencies: 236
-- Name: assoccl_filter_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_formulario_elemento; Owner: -
--

ALTER SEQUENCE assoccl_filter_id_seq OWNED BY assoccl_filter.id;


--
-- TOC entry 235 (class 1259 OID 61450565)
-- Dependencies: 2738 2739 2740 26
-- Name: assoccl_validator; Type: TABLE; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

CREATE TABLE assoccl_validator (
    id integer NOT NULL,
    id_elemento integer NOT NULL,
    id_validator integer,
    id_validator_grupo integer,
    exclude boolean DEFAULT false NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT ck_form_elemento_assoccl_validator CHECK ((((id_validator IS NOT NULL) AND (id_validator_grupo IS NULL)) OR ((id_validator IS NULL) AND (id_validator_grupo IS NOT NULL))))
);


--
-- TOC entry 234 (class 1259 OID 61450563)
-- Dependencies: 235 26
-- Name: assoccl_validator_id_seq; Type: SEQUENCE; Schema: basico_formulario_elemento; Owner: -
--

CREATE SEQUENCE assoccl_validator_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4352 (class 0 OID 0)
-- Dependencies: 234
-- Name: assoccl_validator_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_formulario_elemento; Owner: -
--

ALTER SEQUENCE assoccl_validator_id_seq OWNED BY assoccl_validator.id;


SET search_path = basico_formulario_rascunho, pg_catalog;

--
-- TOC entry 233 (class 1259 OID 61450552)
-- Dependencies: 2735 2736 27
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
-- TOC entry 232 (class 1259 OID 61450550)
-- Dependencies: 27 233
-- Name: assocag_grupo_id_seq; Type: SEQUENCE; Schema: basico_formulario_rascunho; Owner: -
--

CREATE SEQUENCE assocag_grupo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4353 (class 0 OID 0)
-- Dependencies: 232
-- Name: assocag_grupo_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_formulario_rascunho; Owner: -
--

ALTER SEQUENCE assocag_grupo_id_seq OWNED BY assocag_grupo.id;


SET search_path = basico_localizacao, pg_catalog;

--
-- TOC entry 231 (class 1259 OID 61450536)
-- Dependencies: 2731 2732 2733 28
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
-- TOC entry 230 (class 1259 OID 61450534)
-- Dependencies: 28 231
-- Name: assoc_bairro_id_seq; Type: SEQUENCE; Schema: basico_localizacao; Owner: -
--

CREATE SEQUENCE assoc_bairro_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4354 (class 0 OID 0)
-- Dependencies: 230
-- Name: assoc_bairro_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_localizacao; Owner: -
--

ALTER SEQUENCE assoc_bairro_id_seq OWNED BY assoc_bairro.id;


--
-- TOC entry 229 (class 1259 OID 61450519)
-- Dependencies: 2726 2727 2728 2729 28
-- Name: assoc_estado; Type: TABLE; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE TABLE assoc_estado (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    id_estado_pai integer,
    nivel integer DEFAULT 1,
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
-- TOC entry 228 (class 1259 OID 61450517)
-- Dependencies: 229 28
-- Name: assoc_estado_id_seq; Type: SEQUENCE; Schema: basico_localizacao; Owner: -
--

CREATE SEQUENCE assoc_estado_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4355 (class 0 OID 0)
-- Dependencies: 228
-- Name: assoc_estado_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_localizacao; Owner: -
--

ALTER SEQUENCE assoc_estado_id_seq OWNED BY assoc_estado.id;


--
-- TOC entry 227 (class 1259 OID 61450503)
-- Dependencies: 2722 2723 2724 28
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
-- TOC entry 226 (class 1259 OID 61450501)
-- Dependencies: 28 227
-- Name: assoc_logradouro_id_seq; Type: SEQUENCE; Schema: basico_localizacao; Owner: -
--

CREATE SEQUENCE assoc_logradouro_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4356 (class 0 OID 0)
-- Dependencies: 226
-- Name: assoc_logradouro_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_localizacao; Owner: -
--

ALTER SEQUENCE assoc_logradouro_id_seq OWNED BY assoc_logradouro.id;


--
-- TOC entry 225 (class 1259 OID 61450486)
-- Dependencies: 2717 2718 2719 2720 28
-- Name: assoc_municipio; Type: TABLE; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE TABLE assoc_municipio (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    id_municipio_pai integer,
    nivel integer DEFAULT 1,
    id_estado integer NOT NULL,
    nome character varying(200) NOT NULL,
    codigo_ddd character varying(10) NOT NULL,
    ativo boolean DEFAULT false NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 224 (class 1259 OID 61450484)
-- Dependencies: 28 225
-- Name: assoc_municipio_id_seq; Type: SEQUENCE; Schema: basico_localizacao; Owner: -
--

CREATE SEQUENCE assoc_municipio_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4357 (class 0 OID 0)
-- Dependencies: 224
-- Name: assoc_municipio_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_localizacao; Owner: -
--

ALTER SEQUENCE assoc_municipio_id_seq OWNED BY assoc_municipio.id;


--
-- TOC entry 223 (class 1259 OID 61450470)
-- Dependencies: 2713 2714 2715 28
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
-- TOC entry 222 (class 1259 OID 61450468)
-- Dependencies: 28 223
-- Name: codigo_postal_id_seq; Type: SEQUENCE; Schema: basico_localizacao; Owner: -
--

CREATE SEQUENCE codigo_postal_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4358 (class 0 OID 0)
-- Dependencies: 222
-- Name: codigo_postal_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_localizacao; Owner: -
--

ALTER SEQUENCE codigo_postal_id_seq OWNED BY codigo_postal.id;


--
-- TOC entry 221 (class 1259 OID 61450453)
-- Dependencies: 2708 2709 2710 2711 28
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
-- TOC entry 220 (class 1259 OID 61450451)
-- Dependencies: 28 221
-- Name: cpg_endereco_id_seq; Type: SEQUENCE; Schema: basico_localizacao; Owner: -
--

CREATE SEQUENCE cpg_endereco_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4359 (class 0 OID 0)
-- Dependencies: 220
-- Name: cpg_endereco_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_localizacao; Owner: -
--

ALTER SEQUENCE cpg_endereco_id_seq OWNED BY cpg_endereco.id;


--
-- TOC entry 219 (class 1259 OID 61450436)
-- Dependencies: 2703 2704 2705 2706 28
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
-- TOC entry 218 (class 1259 OID 61450434)
-- Dependencies: 219 28
-- Name: pais_id_seq; Type: SEQUENCE; Schema: basico_localizacao; Owner: -
--

CREATE SEQUENCE pais_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4360 (class 0 OID 0)
-- Dependencies: 218
-- Name: pais_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_localizacao; Owner: -
--

ALTER SEQUENCE pais_id_seq OWNED BY pais.id;


SET search_path = basico_mensagem, pg_catalog;

--
-- TOC entry 217 (class 1259 OID 61450424)
-- Dependencies: 2701 29
-- Name: assoc_email; Type: TABLE; Schema: basico_mensagem; Owner: -; Tablespace: 
--

CREATE TABLE assoc_email (
    id integer NOT NULL,
    id_mensagem integer NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 216 (class 1259 OID 61450422)
-- Dependencies: 217 29
-- Name: assoc_email_id_seq; Type: SEQUENCE; Schema: basico_mensagem; Owner: -
--

CREATE SEQUENCE assoc_email_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4361 (class 0 OID 0)
-- Dependencies: 216
-- Name: assoc_email_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_mensagem; Owner: -
--

ALTER SEQUENCE assoc_email_id_seq OWNED BY assoc_email.id;


--
-- TOC entry 215 (class 1259 OID 61450409)
-- Dependencies: 2698 2699 29
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
-- TOC entry 214 (class 1259 OID 61450407)
-- Dependencies: 215 29
-- Name: assoccl_assoccl_pessoa_perfil_id_seq; Type: SEQUENCE; Schema: basico_mensagem; Owner: -
--

CREATE SEQUENCE assoccl_assoccl_pessoa_perfil_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4362 (class 0 OID 0)
-- Dependencies: 214
-- Name: assoccl_assoccl_pessoa_perfil_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_mensagem; Owner: -
--

ALTER SEQUENCE assoccl_assoccl_pessoa_perfil_id_seq OWNED BY assoccl_assoccl_pessoa_perfil.id;


--
-- TOC entry 213 (class 1259 OID 61450388)
-- Dependencies: 2689 2690 2691 2692 2693 2694 2695 2696 29
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
-- TOC entry 212 (class 1259 OID 61450386)
-- Dependencies: 29 213
-- Name: template_id_seq; Type: SEQUENCE; Schema: basico_mensagem; Owner: -
--

CREATE SEQUENCE template_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4363 (class 0 OID 0)
-- Dependencies: 212
-- Name: template_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_mensagem; Owner: -
--

ALTER SEQUENCE template_id_seq OWNED BY template.id;


SET search_path = basico_mensagem_assoc_email, pg_catalog;

--
-- TOC entry 211 (class 1259 OID 61450375)
-- Dependencies: 2686 2687 30
-- Name: assoc_dados; Type: TABLE; Schema: basico_mensagem_assoc_email; Owner: -; Tablespace: 
--

CREATE TABLE assoc_dados (
    id integer NOT NULL,
    id_assoc_email integer NOT NULL,
    destinatarios_copia_carbonada character varying(2000),
    destinatarios_copia_carbonada_nomes character varying(2000),
    destinatarios_copia_carbonada_oculta character varying(2000),
    destinatarios_copia_carbonada_oculta_nomes character varying(2000),
    responder_para character varying(200),
    prioridade integer NOT NULL,
    solicitacao_confirm_leitura boolean,
    datahora_confirmacao_leitura timestamp without time zone,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL
);


--
-- TOC entry 210 (class 1259 OID 61450373)
-- Dependencies: 30 211
-- Name: assoc_dados_id_seq; Type: SEQUENCE; Schema: basico_mensagem_assoc_email; Owner: -
--

CREATE SEQUENCE assoc_dados_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4364 (class 0 OID 0)
-- Dependencies: 210
-- Name: assoc_dados_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_mensagem_assoc_email; Owner: -
--

ALTER SEQUENCE assoc_dados_id_seq OWNED BY assoc_dados.id;


SET search_path = basico_metodo_validacao, pg_catalog;

--
-- TOC entry 209 (class 1259 OID 61450361)
-- Dependencies: 2684 31
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
-- TOC entry 208 (class 1259 OID 61450359)
-- Dependencies: 31 209
-- Name: assoccl_include_id_seq; Type: SEQUENCE; Schema: basico_metodo_validacao; Owner: -
--

CREATE SEQUENCE assoccl_include_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4365 (class 0 OID 0)
-- Dependencies: 208
-- Name: assoccl_include_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_metodo_validacao; Owner: -
--

ALTER SEQUENCE assoccl_include_id_seq OWNED BY assoccl_include.id;


SET search_path = basico_output, pg_catalog;

--
-- TOC entry 207 (class 1259 OID 61450347)
-- Dependencies: 2682 32
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
-- TOC entry 206 (class 1259 OID 61450345)
-- Dependencies: 32 207
-- Name: assoccl_include_id_seq; Type: SEQUENCE; Schema: basico_output; Owner: -
--

CREATE SEQUENCE assoccl_include_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4366 (class 0 OID 0)
-- Dependencies: 206
-- Name: assoccl_include_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_output; Owner: -
--

ALTER SEQUENCE assoccl_include_id_seq OWNED BY assoccl_include.id;


SET search_path = basico_perfil, pg_catalog;

--
-- TOC entry 205 (class 1259 OID 61450333)
-- Dependencies: 2680 33
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
-- TOC entry 204 (class 1259 OID 61450331)
-- Dependencies: 33 205
-- Name: assoccl_modulo_id_seq; Type: SEQUENCE; Schema: basico_perfil; Owner: -
--

CREATE SEQUENCE assoccl_modulo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4367 (class 0 OID 0)
-- Dependencies: 204
-- Name: assoccl_modulo_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_perfil; Owner: -
--

ALTER SEQUENCE assoccl_modulo_id_seq OWNED BY assoccl_modulo.id;


SET search_path = basico_pessoa, pg_catalog;

--
-- TOC entry 203 (class 1259 OID 61450319)
-- Dependencies: 2676 2677 2678 34
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
-- TOC entry 202 (class 1259 OID 61450317)
-- Dependencies: 203 34
-- Name: assoc_dados_id_seq; Type: SEQUENCE; Schema: basico_pessoa; Owner: -
--

CREATE SEQUENCE assoc_dados_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4368 (class 0 OID 0)
-- Dependencies: 202
-- Name: assoc_dados_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_pessoa; Owner: -
--

ALTER SEQUENCE assoc_dados_id_seq OWNED BY assoc_dados.id;


--
-- TOC entry 201 (class 1259 OID 61450303)
-- Dependencies: 2672 2673 2674 34
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
-- TOC entry 200 (class 1259 OID 61450301)
-- Dependencies: 201 34
-- Name: assoccl_perfil_id_seq; Type: SEQUENCE; Schema: basico_pessoa; Owner: -
--

CREATE SEQUENCE assoccl_perfil_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4369 (class 0 OID 0)
-- Dependencies: 200
-- Name: assoccl_perfil_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_pessoa; Owner: -
--

ALTER SEQUENCE assoccl_perfil_id_seq OWNED BY assoccl_perfil.id;


--
-- TOC entry 199 (class 1259 OID 61450290)
-- Dependencies: 2669 2670 34
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
-- TOC entry 198 (class 1259 OID 61450288)
-- Dependencies: 34 199
-- Name: assoccl_tipo_vinculo_id_seq; Type: SEQUENCE; Schema: basico_pessoa; Owner: -
--

CREATE SEQUENCE assoccl_tipo_vinculo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4370 (class 0 OID 0)
-- Dependencies: 198
-- Name: assoccl_tipo_vinculo_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_pessoa; Owner: -
--

ALTER SEQUENCE assoccl_tipo_vinculo_id_seq OWNED BY assoccl_tipo_vinculo.id;


--
-- TOC entry 197 (class 1259 OID 61450269)
-- Dependencies: 2660 2661 2662 2663 2664 2665 2666 2667 34
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
-- TOC entry 196 (class 1259 OID 61450267)
-- Dependencies: 34 197
-- Name: login_id_seq; Type: SEQUENCE; Schema: basico_pessoa; Owner: -
--

CREATE SEQUENCE login_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4371 (class 0 OID 0)
-- Dependencies: 196
-- Name: login_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_pessoa; Owner: -
--

ALTER SEQUENCE login_id_seq OWNED BY login.id;


SET search_path = basico_pessoa_juridica, pg_catalog;

--
-- TOC entry 195 (class 1259 OID 61450255)
-- Dependencies: 2656 2657 2658 35
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
-- TOC entry 194 (class 1259 OID 61450253)
-- Dependencies: 195 35
-- Name: assoc_banco_id_seq; Type: SEQUENCE; Schema: basico_pessoa_juridica; Owner: -
--

CREATE SEQUENCE assoc_banco_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4372 (class 0 OID 0)
-- Dependencies: 194
-- Name: assoc_banco_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_pessoa_juridica; Owner: -
--

ALTER SEQUENCE assoc_banco_id_seq OWNED BY assoc_banco.id;


--
-- TOC entry 193 (class 1259 OID 61450242)
-- Dependencies: 2653 2654 35
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
-- TOC entry 192 (class 1259 OID 61450240)
-- Dependencies: 193 35
-- Name: assoc_dados_id_seq; Type: SEQUENCE; Schema: basico_pessoa_juridica; Owner: -
--

CREATE SEQUENCE assoc_dados_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4373 (class 0 OID 0)
-- Dependencies: 192
-- Name: assoc_dados_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_pessoa_juridica; Owner: -
--

ALTER SEQUENCE assoc_dados_id_seq OWNED BY assoc_dados.id;


--
-- TOC entry 191 (class 1259 OID 61450228)
-- Dependencies: 2651 35
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
-- TOC entry 190 (class 1259 OID 61450226)
-- Dependencies: 191 35
-- Name: assocag_incubadora_id_seq; Type: SEQUENCE; Schema: basico_pessoa_juridica; Owner: -
--

CREATE SEQUENCE assocag_incubadora_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4374 (class 0 OID 0)
-- Dependencies: 190
-- Name: assocag_incubadora_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_pessoa_juridica; Owner: -
--

ALTER SEQUENCE assocag_incubadora_id_seq OWNED BY assocag_incubadora.id;


--
-- TOC entry 189 (class 1259 OID 61450211)
-- Dependencies: 2646 2647 2648 2649 35
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
-- TOC entry 188 (class 1259 OID 61450209)
-- Dependencies: 189 35
-- Name: assocag_parceria_id_seq; Type: SEQUENCE; Schema: basico_pessoa_juridica; Owner: -
--

CREATE SEQUENCE assocag_parceria_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4375 (class 0 OID 0)
-- Dependencies: 188
-- Name: assocag_parceria_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_pessoa_juridica; Owner: -
--

ALTER SEQUENCE assocag_parceria_id_seq OWNED BY assocag_parceria.id;


--
-- TOC entry 187 (class 1259 OID 61450197)
-- Dependencies: 2644 35
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
-- TOC entry 186 (class 1259 OID 61450195)
-- Dependencies: 187 35
-- Name: assoccl_area_economia_id_seq; Type: SEQUENCE; Schema: basico_pessoa_juridica; Owner: -
--

CREATE SEQUENCE assoccl_area_economia_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4376 (class 0 OID 0)
-- Dependencies: 186
-- Name: assoccl_area_economia_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_pessoa_juridica; Owner: -
--

ALTER SEQUENCE assoccl_area_economia_id_seq OWNED BY assoccl_area_economia.id;


--
-- TOC entry 185 (class 1259 OID 61450182)
-- Dependencies: 2641 2642 35
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
-- TOC entry 184 (class 1259 OID 61450180)
-- Dependencies: 35 185
-- Name: assoccl_capital_social_id_seq; Type: SEQUENCE; Schema: basico_pessoa_juridica; Owner: -
--

CREATE SEQUENCE assoccl_capital_social_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4377 (class 0 OID 0)
-- Dependencies: 184
-- Name: assoccl_capital_social_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_pessoa_juridica; Owner: -
--

ALTER SEQUENCE assoccl_capital_social_id_seq OWNED BY assoccl_capital_social.id;


--
-- TOC entry 183 (class 1259 OID 61450167)
-- Dependencies: 2638 2639 35
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
-- TOC entry 182 (class 1259 OID 61450165)
-- Dependencies: 183 35
-- Name: assoccl_faturamento_id_seq; Type: SEQUENCE; Schema: basico_pessoa_juridica; Owner: -
--

CREATE SEQUENCE assoccl_faturamento_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4378 (class 0 OID 0)
-- Dependencies: 182
-- Name: assoccl_faturamento_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_pessoa_juridica; Owner: -
--

ALTER SEQUENCE assoccl_faturamento_id_seq OWNED BY assoccl_faturamento.id;


--
-- TOC entry 181 (class 1259 OID 61450152)
-- Dependencies: 2635 2636 35
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
-- TOC entry 180 (class 1259 OID 61450150)
-- Dependencies: 181 35
-- Name: assoccl_quadro_funcionario_id_seq; Type: SEQUENCE; Schema: basico_pessoa_juridica; Owner: -
--

CREATE SEQUENCE assoccl_quadro_funcionario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4379 (class 0 OID 0)
-- Dependencies: 180
-- Name: assoccl_quadro_funcionario_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_pessoa_juridica; Owner: -
--

ALTER SEQUENCE assoccl_quadro_funcionario_id_seq OWNED BY assoccl_quadro_funcionario.id;


--
-- TOC entry 179 (class 1259 OID 61450136)
-- Dependencies: 2629 2630 2631 2632 2633 35
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
-- TOC entry 178 (class 1259 OID 61450134)
-- Dependencies: 35 179
-- Name: capital_social_id_seq; Type: SEQUENCE; Schema: basico_pessoa_juridica; Owner: -
--

CREATE SEQUENCE capital_social_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4380 (class 0 OID 0)
-- Dependencies: 178
-- Name: capital_social_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_pessoa_juridica; Owner: -
--

ALTER SEQUENCE capital_social_id_seq OWNED BY capital_social.id;


--
-- TOC entry 177 (class 1259 OID 61450120)
-- Dependencies: 2623 2624 2625 2626 2627 35
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
-- TOC entry 176 (class 1259 OID 61450118)
-- Dependencies: 177 35
-- Name: natureza_id_seq; Type: SEQUENCE; Schema: basico_pessoa_juridica; Owner: -
--

CREATE SEQUENCE natureza_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4381 (class 0 OID 0)
-- Dependencies: 176
-- Name: natureza_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_pessoa_juridica; Owner: -
--

ALTER SEQUENCE natureza_id_seq OWNED BY natureza.id;


SET search_path = basico_sequencia, pg_catalog;

--
-- TOC entry 175 (class 1259 OID 61450102)
-- Dependencies: 2617 2618 2619 2620 2621 36
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
-- TOC entry 174 (class 1259 OID 61450100)
-- Dependencies: 175 36
-- Name: assocsq_acao_aplicacao_id_seq; Type: SEQUENCE; Schema: basico_sequencia; Owner: -
--

CREATE SEQUENCE assocsq_acao_aplicacao_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4382 (class 0 OID 0)
-- Dependencies: 174
-- Name: assocsq_acao_aplicacao_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_sequencia; Owner: -
--

ALTER SEQUENCE assocsq_acao_aplicacao_id_seq OWNED BY assocsq_acao_aplicacao.id;


SET search_path = basico_template, pg_catalog;

--
-- TOC entry 173 (class 1259 OID 61450088)
-- Dependencies: 2615 37
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
-- TOC entry 172 (class 1259 OID 61450086)
-- Dependencies: 37 173
-- Name: assoccl_include_id_seq; Type: SEQUENCE; Schema: basico_template; Owner: -
--

CREATE SEQUENCE assoccl_include_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4383 (class 0 OID 0)
-- Dependencies: 172
-- Name: assoccl_include_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_template; Owner: -
--

ALTER SEQUENCE assoccl_include_id_seq OWNED BY assoccl_include.id;


--
-- TOC entry 171 (class 1259 OID 61450074)
-- Dependencies: 2613 37
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
-- TOC entry 170 (class 1259 OID 61450072)
-- Dependencies: 37 171
-- Name: assoccl_output_id_seq; Type: SEQUENCE; Schema: basico_template; Owner: -
--

CREATE SEQUENCE assoccl_output_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4384 (class 0 OID 0)
-- Dependencies: 170
-- Name: assoccl_output_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_template; Owner: -
--

ALTER SEQUENCE assoccl_output_id_seq OWNED BY assoccl_output.id;


SET search_path = basico_validator, pg_catalog;

--
-- TOC entry 169 (class 1259 OID 61450058)
-- Dependencies: 2607 2608 2609 2610 2611 43
-- Name: grupo; Type: TABLE; Schema: basico_validator; Owner: -; Tablespace: 
--

CREATE TABLE grupo (
    id integer NOT NULL,
    id_categoria integer NOT NULL,
    nome character varying(200) NOT NULL,
    constante_textual character varying(200) NOT NULL,
    constante_textual_descricao character varying(200),
    ativo boolean DEFAULT false NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT grupo_constante_textual_check CHECK (((constante_textual IS NULL) OR (basico.fn_checkconstantetextualexists(constante_textual) IS NOT NULL))),
    CONSTRAINT grupo_constante_textual_descricao_check CHECK (((constante_textual_descricao IS NULL) OR (basico.fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL)))
);


--
-- TOC entry 168 (class 1259 OID 61450056)
-- Dependencies: 43 169
-- Name: grupo_id_seq; Type: SEQUENCE; Schema: basico_validator; Owner: -
--

CREATE SEQUENCE grupo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4385 (class 0 OID 0)
-- Dependencies: 168
-- Name: grupo_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_validator; Owner: -
--

ALTER SEQUENCE grupo_id_seq OWNED BY grupo.id;


SET search_path = basico_validator_grupo, pg_catalog;

--
-- TOC entry 167 (class 1259 OID 61450045)
-- Dependencies: 2604 2605 44
-- Name: assocag_grupo; Type: TABLE; Schema: basico_validator_grupo; Owner: -; Tablespace: 
--

CREATE TABLE assocag_grupo (
    id integer NOT NULL,
    id_validator_grupo integer NOT NULL,
    id_validator integer,
    id_validator_grupo_assoc integer,
    ordem integer NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT ck_validator_grupo_assocag_grupo CHECK ((((id_validator IS NOT NULL) AND (id_validator_grupo_assoc IS NULL)) OR ((id_validator IS NULL) AND (id_validator_grupo_assoc IS NOT NULL))))
);


--
-- TOC entry 166 (class 1259 OID 61450043)
-- Dependencies: 44 167
-- Name: assocag_grupo_id_seq; Type: SEQUENCE; Schema: basico_validator_grupo; Owner: -
--

CREATE SEQUENCE assocag_grupo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4386 (class 0 OID 0)
-- Dependencies: 166
-- Name: assocag_grupo_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_validator_grupo; Owner: -
--

ALTER SEQUENCE assocag_grupo_id_seq OWNED BY assocag_grupo.id;


SET search_path = basico, pg_catalog;

--
-- TOC entry 3109 (class 2604 OID 61451921)
-- Dependencies: 400 401 401
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY acao_aplicacao ALTER COLUMN id SET DEFAULT nextval('acao_aplicacao_id_seq'::regclass);


--
-- TOC entry 3103 (class 2604 OID 61451903)
-- Dependencies: 398 399 399
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY acao_evento ALTER COLUMN id SET DEFAULT nextval('acao_evento_id_seq'::regclass);


--
-- TOC entry 3094 (class 2604 OID 61451882)
-- Dependencies: 397 396 397
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY ajuda ALTER COLUMN id SET DEFAULT nextval('ajuda_id_seq'::regclass);


--
-- TOC entry 3086 (class 2604 OID 61451862)
-- Dependencies: 394 395 395
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY area_conhecimento ALTER COLUMN id SET DEFAULT nextval('area_conhecimento_id_seq'::regclass);


--
-- TOC entry 3078 (class 2604 OID 61451842)
-- Dependencies: 392 393 393
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY area_economia ALTER COLUMN id SET DEFAULT nextval('area_economia_id_seq'::regclass);


--
-- TOC entry 3070 (class 2604 OID 61451822)
-- Dependencies: 390 391 391
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY categoria ALTER COLUMN id SET DEFAULT nextval('categoria_id_seq'::regclass);


--
-- TOC entry 3064 (class 2604 OID 61451804)
-- Dependencies: 388 389 389
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY componente ALTER COLUMN id SET DEFAULT nextval('componente_id_seq'::regclass);


--
-- TOC entry 3056 (class 2604 OID 61451784)
-- Dependencies: 386 387 387
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY cpg_arquivo ALTER COLUMN id SET DEFAULT nextval('cpg_arquivo_id_seq'::regclass);


--
-- TOC entry 3051 (class 2604 OID 61451767)
-- Dependencies: 384 385 385
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY cpg_codigo_acesso ALTER COLUMN id SET DEFAULT nextval('cpg_codigo_acesso_id_seq'::regclass);


--
-- TOC entry 3048 (class 2604 OID 61451752)
-- Dependencies: 383 382 383
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY cpg_dados_bancarios ALTER COLUMN id SET DEFAULT nextval('cpg_dados_bancarios_id_seq'::regclass);


--
-- TOC entry 3044 (class 2604 OID 61451736)
-- Dependencies: 381 380 381
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY cpg_documento_identificacao ALTER COLUMN id SET DEFAULT nextval('cpg_documento_identificacao_id_seq'::regclass);


--
-- TOC entry 3037 (class 2604 OID 61451717)
-- Dependencies: 378 379 379
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY cpg_link ALTER COLUMN id SET DEFAULT nextval('cpg_link_id_seq'::regclass);


--
-- TOC entry 3032 (class 2604 OID 61451702)
-- Dependencies: 377 376 377
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY cpg_produto ALTER COLUMN id SET DEFAULT nextval('cpg_produto_id_seq'::regclass);


--
-- TOC entry 3029 (class 2604 OID 61451689)
-- Dependencies: 374 375 375
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY cpg_token ALTER COLUMN id SET DEFAULT nextval('cpg_token_id_seq'::regclass);


--
-- TOC entry 3026 (class 2604 OID 61451674)
-- Dependencies: 373 372 373
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY dados_biometricos ALTER COLUMN id SET DEFAULT nextval('dados_biometricos_id_seq'::regclass);


--
-- TOC entry 3021 (class 2604 OID 61451657)
-- Dependencies: 371 370 371
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY dicionario_expressao ALTER COLUMN id SET DEFAULT nextval('dicionario_expressao_id_seq'::regclass);


--
-- TOC entry 3015 (class 2604 OID 61451639)
-- Dependencies: 369 368 369
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY evento ALTER COLUMN id SET DEFAULT nextval('evento_id_seq'::regclass);


--
-- TOC entry 3009 (class 2604 OID 61451621)
-- Dependencies: 366 367 367
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY filter ALTER COLUMN id SET DEFAULT nextval('filter_id_seq'::regclass);


--
-- TOC entry 3001 (class 2604 OID 61451601)
-- Dependencies: 365 364 365
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY formulario ALTER COLUMN id SET DEFAULT nextval('formulario_id_seq'::regclass);


--
-- TOC entry 2995 (class 2604 OID 61451581)
-- Dependencies: 362 363 363
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY include ALTER COLUMN id SET DEFAULT nextval('include_id_seq'::regclass);


--
-- TOC entry 2994 (class 2604 OID 61451570)
-- Dependencies: 361 360 361
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY log ALTER COLUMN id SET DEFAULT nextval('log_id_seq'::regclass);


--
-- TOC entry 2991 (class 2604 OID 61451557)
-- Dependencies: 359 358 359
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY mensagem ALTER COLUMN id SET DEFAULT nextval('mensagem_id_seq'::regclass);


--
-- TOC entry 2985 (class 2604 OID 61451539)
-- Dependencies: 356 357 357
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY metodo_validacao ALTER COLUMN id SET DEFAULT nextval('metodo_validacao_id_seq'::regclass);


--
-- TOC entry 2978 (class 2604 OID 61451522)
-- Dependencies: 354 355 355
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY modulo ALTER COLUMN id SET DEFAULT nextval('modulo_id_seq'::regclass);


--
-- TOC entry 2972 (class 2604 OID 61451506)
-- Dependencies: 353 352 353
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY output ALTER COLUMN id SET DEFAULT nextval('output_id_seq'::regclass);


--
-- TOC entry 2965 (class 2604 OID 61451487)
-- Dependencies: 351 350 351
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY perfil ALTER COLUMN id SET DEFAULT nextval('perfil_id_seq'::regclass);


--
-- TOC entry 2962 (class 2604 OID 61451474)
-- Dependencies: 349 348 349
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa ALTER COLUMN id SET DEFAULT nextval('pessoa_id_seq'::regclass);


--
-- TOC entry 2957 (class 2604 OID 61451459)
-- Dependencies: 347 346 347
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa_juridica ALTER COLUMN id SET DEFAULT nextval('pessoa_juridica_id_seq'::regclass);


--
-- TOC entry 2951 (class 2604 OID 61451443)
-- Dependencies: 345 344 345
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY profissao ALTER COLUMN id SET DEFAULT nextval('profissao_id_seq'::regclass);


--
-- TOC entry 2945 (class 2604 OID 61451425)
-- Dependencies: 343 342 343
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY sequencia ALTER COLUMN id SET DEFAULT nextval('sequencia_id_seq'::regclass);


--
-- TOC entry 2939 (class 2604 OID 61451409)
-- Dependencies: 340 341 341
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY template ALTER COLUMN id SET DEFAULT nextval('template_id_seq'::regclass);


--
-- TOC entry 2930 (class 2604 OID 61451388)
-- Dependencies: 338 339 339
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY tipo_categoria ALTER COLUMN id SET DEFAULT nextval('tipo_categoria_id_seq'::regclass);


--
-- TOC entry 2923 (class 2604 OID 61451371)
-- Dependencies: 337 336 337
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY validator ALTER COLUMN id SET DEFAULT nextval('validator_id_seq'::regclass);


SET search_path = basico_acao_aplic_assoc_visao, pg_catalog;

--
-- TOC entry 2921 (class 2604 OID 61451357)
-- Dependencies: 334 335 335
-- Name: id; Type: DEFAULT; Schema: basico_acao_aplic_assoc_visao; Owner: -
--

ALTER TABLE ONLY assoccl_atrib_met_rec_post ALTER COLUMN id SET DEFAULT nextval('assoccl_atrib_met_rec_post_id_seq'::regclass);


--
-- TOC entry 2916 (class 2604 OID 61451340)
-- Dependencies: 333 332 333
-- Name: id; Type: DEFAULT; Schema: basico_acao_aplic_assoc_visao; Owner: -
--

ALTER TABLE ONLY atributo_metodo_recup_post ALTER COLUMN id SET DEFAULT nextval('atributo_metodo_recup_post_id_seq'::regclass);


SET search_path = basico_acao_aplicacao, pg_catalog;

--
-- TOC entry 2908 (class 2604 OID 61451322)
-- Dependencies: 330 331 331
-- Name: id; Type: DEFAULT; Schema: basico_acao_aplicacao; Owner: -
--

ALTER TABLE ONLY assoc_visao ALTER COLUMN id SET DEFAULT nextval('assoc_visao_id_seq'::regclass);


--
-- TOC entry 2906 (class 2604 OID 61451308)
-- Dependencies: 329 328 329
-- Name: id; Type: DEFAULT; Schema: basico_acao_aplicacao; Owner: -
--

ALTER TABLE ONLY assoccl_metodo_validacao ALTER COLUMN id SET DEFAULT nextval('assoccl_metodo_validacao_id_seq'::regclass);


--
-- TOC entry 2904 (class 2604 OID 61451294)
-- Dependencies: 327 326 327
-- Name: id; Type: DEFAULT; Schema: basico_acao_aplicacao; Owner: -
--

ALTER TABLE ONLY assoccl_perfil ALTER COLUMN id SET DEFAULT nextval('assoccl_perfil_id_seq'::regclass);


SET search_path = basico_acao_evento, pg_catalog;

--
-- TOC entry 2902 (class 2604 OID 61451280)
-- Dependencies: 325 324 325
-- Name: id; Type: DEFAULT; Schema: basico_acao_evento; Owner: -
--

ALTER TABLE ONLY assoccl_include ALTER COLUMN id SET DEFAULT nextval('assoccl_include_id_seq'::regclass);


SET search_path = basico_ajuda, pg_catalog;

--
-- TOC entry 2900 (class 2604 OID 61451266)
-- Dependencies: 323 322 323
-- Name: id; Type: DEFAULT; Schema: basico_ajuda; Owner: -
--

ALTER TABLE ONLY assoccl_link ALTER COLUMN id SET DEFAULT nextval('assoccl_link_id_seq'::regclass);


SET search_path = basico_assoc_banco, pg_catalog;

--
-- TOC entry 2895 (class 2604 OID 61451247)
-- Dependencies: 320 321 321
-- Name: id; Type: DEFAULT; Schema: basico_assoc_banco; Owner: -
--

ALTER TABLE ONLY assoc_tipo_conta ALTER COLUMN id SET DEFAULT nextval('assoc_tipo_conta_id_seq'::regclass);


SET search_path = basico_assoc_chave_estrangeira, pg_catalog;

--
-- TOC entry 2893 (class 2604 OID 61451233)
-- Dependencies: 319 318 319
-- Name: id; Type: DEFAULT; Schema: basico_assoc_chave_estrangeira; Owner: -
--

ALTER TABLE ONLY relacao ALTER COLUMN id SET DEFAULT nextval('relacao_id_seq'::regclass);


SET search_path = basico_assoc_dados_profis, pg_catalog;

--
-- TOC entry 2891 (class 2604 OID 61451219)
-- Dependencies: 317 316 317
-- Name: id; Type: DEFAULT; Schema: basico_assoc_dados_profis; Owner: -
--

ALTER TABLE ONLY assoccl_area_conhecimento ALTER COLUMN id SET DEFAULT nextval('assoccl_area_conhecimento_id_seq'::regclass);


SET search_path = basico_assoccl_pessoa_perfil, pg_catalog;

--
-- TOC entry 2888 (class 2604 OID 61451206)
-- Dependencies: 314 315 315
-- Name: id; Type: DEFAULT; Schema: basico_assoccl_pessoa_perfil; Owner: -
--

ALTER TABLE ONLY assoc_dados ALTER COLUMN id SET DEFAULT nextval('assoc_dados_id_seq'::regclass);


SET search_path = basico_assoccl_tipo_vinculo, pg_catalog;

--
-- TOC entry 2885 (class 2604 OID 61451193)
-- Dependencies: 313 312 313
-- Name: id; Type: DEFAULT; Schema: basico_assoccl_tipo_vinculo; Owner: -
--

ALTER TABLE ONLY assoc_dados ALTER COLUMN id SET DEFAULT nextval('assoc_dados_id_seq'::regclass);


SET search_path = basico_categoria, pg_catalog;

--
-- TOC entry 2882 (class 2604 OID 61451180)
-- Dependencies: 311 310 311
-- Name: id; Type: DEFAULT; Schema: basico_categoria; Owner: -
--

ALTER TABLE ONLY assoc_chave_estrangeira ALTER COLUMN id SET DEFAULT nextval('assoc_chave_estrangeira_id_seq'::regclass);


--
-- TOC entry 2880 (class 2604 OID 61451168)
-- Dependencies: 309 308 309
-- Name: id; Type: DEFAULT; Schema: basico_categoria; Owner: -
--

ALTER TABLE ONLY assoc_evento_acao ALTER COLUMN id SET DEFAULT nextval('assoc_evento_acao_id_seq'::regclass);


SET search_path = basico_componente, pg_catalog;

--
-- TOC entry 2878 (class 2604 OID 61451154)
-- Dependencies: 307 306 307
-- Name: id; Type: DEFAULT; Schema: basico_componente; Owner: -
--

ALTER TABLE ONLY assoccl_include ALTER COLUMN id SET DEFAULT nextval('assoccl_include_id_seq'::regclass);


SET search_path = basico_contato, pg_catalog;

--
-- TOC entry 2870 (class 2604 OID 61451134)
-- Dependencies: 305 304 305
-- Name: id; Type: DEFAULT; Schema: basico_contato; Owner: -
--

ALTER TABLE ONLY cpg_email ALTER COLUMN id SET DEFAULT nextval('cpg_email_id_seq'::regclass);


--
-- TOC entry 2863 (class 2604 OID 61451115)
-- Dependencies: 303 302 303
-- Name: id; Type: DEFAULT; Schema: basico_contato; Owner: -
--

ALTER TABLE ONLY cpg_telefone ALTER COLUMN id SET DEFAULT nextval('cpg_telefone_id_seq'::regclass);


SET search_path = basico_cvc, pg_catalog;

--
-- TOC entry 2858 (class 2604 OID 61451098)
-- Dependencies: 301 300 301
-- Name: id; Type: DEFAULT; Schema: basico_cvc; Owner: -
--

ALTER TABLE ONLY cvc ALTER COLUMN id SET DEFAULT nextval('cvc_id_seq'::regclass);


SET search_path = basico_dados_academicos, pg_catalog;

--
-- TOC entry 2852 (class 2604 OID 61451082)
-- Dependencies: 298 299 299
-- Name: id; Type: DEFAULT; Schema: basico_dados_academicos; Owner: -
--

ALTER TABLE ONLY titulacao ALTER COLUMN id SET DEFAULT nextval('titulacao_id_seq'::regclass);


SET search_path = basico_dados_biometricos, pg_catalog;

--
-- TOC entry 2849 (class 2604 OID 61451069)
-- Dependencies: 297 296 297
-- Name: id; Type: DEFAULT; Schema: basico_dados_biometricos; Owner: -
--

ALTER TABLE ONLY assoc_pessoa ALTER COLUMN id SET DEFAULT nextval('assoc_pessoa_id_seq'::regclass);


SET search_path = basico_dados_profissionais, pg_catalog;

--
-- TOC entry 2842 (class 2604 OID 61451050)
-- Dependencies: 295 294 295
-- Name: id; Type: DEFAULT; Schema: basico_dados_profissionais; Owner: -
--

ALTER TABLE ONLY regime_trabalho ALTER COLUMN id SET DEFAULT nextval('regime_trabalho_id_seq'::regclass);


--
-- TOC entry 2834 (class 2604 OID 61451030)
-- Dependencies: 292 293 293
-- Name: id; Type: DEFAULT; Schema: basico_dados_profissionais; Owner: -
--

ALTER TABLE ONLY tipo_vinculo ALTER COLUMN id SET DEFAULT nextval('tipo_vinculo_id_seq'::regclass);


--
-- TOC entry 2828 (class 2604 OID 61451012)
-- Dependencies: 291 290 291
-- Name: id; Type: DEFAULT; Schema: basico_dados_profissionais; Owner: -
--

ALTER TABLE ONLY vinculo_empregaticio ALTER COLUMN id SET DEFAULT nextval('vinculo_empregaticio_id_seq'::regclass);


SET search_path = basico_filter, pg_catalog;

--
-- TOC entry 2822 (class 2604 OID 61450922)
-- Dependencies: 280 281 281
-- Name: id; Type: DEFAULT; Schema: basico_filter; Owner: -
--

ALTER TABLE ONLY grupo ALTER COLUMN id SET DEFAULT nextval('grupo_id_seq'::regclass);


SET search_path = basico_filter_grupo, pg_catalog;

--
-- TOC entry 2819 (class 2604 OID 61450909)
-- Dependencies: 279 278 279
-- Name: id; Type: DEFAULT; Schema: basico_filter_grupo; Owner: -
--

ALTER TABLE ONLY assocag_grupo ALTER COLUMN id SET DEFAULT nextval('assocag_grupo_id_seq'::regclass);


SET search_path = basico_form_assoccl_elem_grupo, pg_catalog;

--
-- TOC entry 2817 (class 2604 OID 61450895)
-- Dependencies: 277 276 277
-- Name: id; Type: DEFAULT; Schema: basico_form_assoccl_elem_grupo; Owner: -
--

ALTER TABLE ONLY assoccl_decorator ALTER COLUMN id SET DEFAULT nextval('assoccl_decorator_id_seq'::regclass);


SET search_path = basico_form_assoccl_elemento, pg_catalog;

--
-- TOC entry 2814 (class 2604 OID 61450880)
-- Dependencies: 275 274 275
-- Name: id; Type: DEFAULT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_decorator ALTER COLUMN id SET DEFAULT nextval('assoccl_decorator_id_seq'::regclass);


--
-- TOC entry 2811 (class 2604 OID 61450865)
-- Dependencies: 273 272 273
-- Name: id; Type: DEFAULT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_evento ALTER COLUMN id SET DEFAULT nextval('assoccl_evento_id_seq'::regclass);


--
-- TOC entry 2808 (class 2604 OID 61450850)
-- Dependencies: 271 270 271
-- Name: id; Type: DEFAULT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_filter ALTER COLUMN id SET DEFAULT nextval('assoccl_filter_id_seq'::regclass);


--
-- TOC entry 2805 (class 2604 OID 61450835)
-- Dependencies: 268 269 269
-- Name: id; Type: DEFAULT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_include ALTER COLUMN id SET DEFAULT nextval('assoccl_include_id_seq'::regclass);


--
-- TOC entry 2802 (class 2604 OID 61450820)
-- Dependencies: 266 267 267
-- Name: id; Type: DEFAULT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_validator ALTER COLUMN id SET DEFAULT nextval('assoccl_validator_id_seq'::regclass);


--
-- TOC entry 2796 (class 2604 OID 61450803)
-- Dependencies: 265 264 265
-- Name: id; Type: DEFAULT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY grupo ALTER COLUMN id SET DEFAULT nextval('grupo_id_seq'::regclass);


SET search_path = basico_form_decorator_grupo, pg_catalog;

--
-- TOC entry 2793 (class 2604 OID 61450790)
-- Dependencies: 262 263 263
-- Name: id; Type: DEFAULT; Schema: basico_form_decorator_grupo; Owner: -
--

ALTER TABLE ONLY assocag_grupo ALTER COLUMN id SET DEFAULT nextval('assocag_grupo_id_seq'::regclass);


SET search_path = basico_formulario, pg_catalog;

--
-- TOC entry 2790 (class 2604 OID 61450775)
-- Dependencies: 260 261 261
-- Name: id; Type: DEFAULT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_decorator ALTER COLUMN id SET DEFAULT nextval('assoccl_decorator_id_seq'::regclass);


--
-- TOC entry 2784 (class 2604 OID 61450754)
-- Dependencies: 259 258 259
-- Name: id; Type: DEFAULT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_elemento ALTER COLUMN id SET DEFAULT nextval('assoccl_elemento_id_seq'::regclass);


--
-- TOC entry 2782 (class 2604 OID 61450740)
-- Dependencies: 257 256 257
-- Name: id; Type: DEFAULT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_evento ALTER COLUMN id SET DEFAULT nextval('assoccl_evento_id_seq'::regclass);


--
-- TOC entry 2780 (class 2604 OID 61450726)
-- Dependencies: 254 255 255
-- Name: id; Type: DEFAULT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_include ALTER COLUMN id SET DEFAULT nextval('assoccl_include_id_seq'::regclass);


--
-- TOC entry 2778 (class 2604 OID 61450712)
-- Dependencies: 252 253 253
-- Name: id; Type: DEFAULT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_modulo ALTER COLUMN id SET DEFAULT nextval('assoccl_modulo_id_seq'::regclass);


--
-- TOC entry 2772 (class 2604 OID 61450696)
-- Dependencies: 250 251 251
-- Name: id; Type: DEFAULT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY decorator ALTER COLUMN id SET DEFAULT nextval('decorator_id_seq'::regclass);


--
-- TOC entry 2764 (class 2604 OID 61450676)
-- Dependencies: 248 249 249
-- Name: id; Type: DEFAULT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY elemento ALTER COLUMN id SET DEFAULT nextval('elemento_id_seq'::regclass);


--
-- TOC entry 2760 (class 2604 OID 61450662)
-- Dependencies: 246 247 247
-- Name: id; Type: DEFAULT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY rascunho ALTER COLUMN id SET DEFAULT nextval('rascunho_id_seq'::regclass);


SET search_path = basico_formulario_decorator, pg_catalog;

--
-- TOC entry 2758 (class 2604 OID 61450648)
-- Dependencies: 245 244 245
-- Name: id; Type: DEFAULT; Schema: basico_formulario_decorator; Owner: -
--

ALTER TABLE ONLY assoccl_include ALTER COLUMN id SET DEFAULT nextval('assoccl_include_id_seq'::regclass);


--
-- TOC entry 2752 (class 2604 OID 61450632)
-- Dependencies: 243 242 243
-- Name: id; Type: DEFAULT; Schema: basico_formulario_decorator; Owner: -
--

ALTER TABLE ONLY grupo ALTER COLUMN id SET DEFAULT nextval('grupo_id_seq'::regclass);


SET search_path = basico_formulario_elemento, pg_catalog;

--
-- TOC entry 2748 (class 2604 OID 61450615)
-- Dependencies: 241 240 241
-- Name: id; Type: DEFAULT; Schema: basico_formulario_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_decorator ALTER COLUMN id SET DEFAULT nextval('assoccl_decorator_id_seq'::regclass);


--
-- TOC entry 2745 (class 2604 OID 61450600)
-- Dependencies: 238 239 239
-- Name: id; Type: DEFAULT; Schema: basico_formulario_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_evento ALTER COLUMN id SET DEFAULT nextval('assoccl_evento_id_seq'::regclass);


--
-- TOC entry 2741 (class 2604 OID 61450584)
-- Dependencies: 237 236 237
-- Name: id; Type: DEFAULT; Schema: basico_formulario_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_filter ALTER COLUMN id SET DEFAULT nextval('assoccl_filter_id_seq'::regclass);


--
-- TOC entry 2737 (class 2604 OID 61450568)
-- Dependencies: 234 235 235
-- Name: id; Type: DEFAULT; Schema: basico_formulario_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_validator ALTER COLUMN id SET DEFAULT nextval('assoccl_validator_id_seq'::regclass);


SET search_path = basico_formulario_rascunho, pg_catalog;

--
-- TOC entry 2734 (class 2604 OID 61450555)
-- Dependencies: 233 232 233
-- Name: id; Type: DEFAULT; Schema: basico_formulario_rascunho; Owner: -
--

ALTER TABLE ONLY assocag_grupo ALTER COLUMN id SET DEFAULT nextval('assocag_grupo_id_seq'::regclass);


SET search_path = basico_localizacao, pg_catalog;

--
-- TOC entry 2730 (class 2604 OID 61450539)
-- Dependencies: 230 231 231
-- Name: id; Type: DEFAULT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY assoc_bairro ALTER COLUMN id SET DEFAULT nextval('assoc_bairro_id_seq'::regclass);


--
-- TOC entry 2725 (class 2604 OID 61450522)
-- Dependencies: 229 228 229
-- Name: id; Type: DEFAULT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY assoc_estado ALTER COLUMN id SET DEFAULT nextval('assoc_estado_id_seq'::regclass);


--
-- TOC entry 2721 (class 2604 OID 61450506)
-- Dependencies: 226 227 227
-- Name: id; Type: DEFAULT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY assoc_logradouro ALTER COLUMN id SET DEFAULT nextval('assoc_logradouro_id_seq'::regclass);


--
-- TOC entry 2716 (class 2604 OID 61450489)
-- Dependencies: 225 224 225
-- Name: id; Type: DEFAULT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY assoc_municipio ALTER COLUMN id SET DEFAULT nextval('assoc_municipio_id_seq'::regclass);


--
-- TOC entry 2712 (class 2604 OID 61450473)
-- Dependencies: 223 222 223
-- Name: id; Type: DEFAULT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY codigo_postal ALTER COLUMN id SET DEFAULT nextval('codigo_postal_id_seq'::regclass);


--
-- TOC entry 2707 (class 2604 OID 61450456)
-- Dependencies: 220 221 221
-- Name: id; Type: DEFAULT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY cpg_endereco ALTER COLUMN id SET DEFAULT nextval('cpg_endereco_id_seq'::regclass);


--
-- TOC entry 2702 (class 2604 OID 61450439)
-- Dependencies: 219 218 219
-- Name: id; Type: DEFAULT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY pais ALTER COLUMN id SET DEFAULT nextval('pais_id_seq'::regclass);


SET search_path = basico_mensagem, pg_catalog;

--
-- TOC entry 2700 (class 2604 OID 61450427)
-- Dependencies: 216 217 217
-- Name: id; Type: DEFAULT; Schema: basico_mensagem; Owner: -
--

ALTER TABLE ONLY assoc_email ALTER COLUMN id SET DEFAULT nextval('assoc_email_id_seq'::regclass);


--
-- TOC entry 2697 (class 2604 OID 61450412)
-- Dependencies: 215 214 215
-- Name: id; Type: DEFAULT; Schema: basico_mensagem; Owner: -
--

ALTER TABLE ONLY assoccl_assoccl_pessoa_perfil ALTER COLUMN id SET DEFAULT nextval('assoccl_assoccl_pessoa_perfil_id_seq'::regclass);


--
-- TOC entry 2688 (class 2604 OID 61450391)
-- Dependencies: 212 213 213
-- Name: id; Type: DEFAULT; Schema: basico_mensagem; Owner: -
--

ALTER TABLE ONLY template ALTER COLUMN id SET DEFAULT nextval('template_id_seq'::regclass);


SET search_path = basico_mensagem_assoc_email, pg_catalog;

--
-- TOC entry 2685 (class 2604 OID 61450378)
-- Dependencies: 210 211 211
-- Name: id; Type: DEFAULT; Schema: basico_mensagem_assoc_email; Owner: -
--

ALTER TABLE ONLY assoc_dados ALTER COLUMN id SET DEFAULT nextval('assoc_dados_id_seq'::regclass);


SET search_path = basico_metodo_validacao, pg_catalog;

--
-- TOC entry 2683 (class 2604 OID 61450364)
-- Dependencies: 208 209 209
-- Name: id; Type: DEFAULT; Schema: basico_metodo_validacao; Owner: -
--

ALTER TABLE ONLY assoccl_include ALTER COLUMN id SET DEFAULT nextval('assoccl_include_id_seq'::regclass);


SET search_path = basico_output, pg_catalog;

--
-- TOC entry 2681 (class 2604 OID 61450350)
-- Dependencies: 207 206 207
-- Name: id; Type: DEFAULT; Schema: basico_output; Owner: -
--

ALTER TABLE ONLY assoccl_include ALTER COLUMN id SET DEFAULT nextval('assoccl_include_id_seq'::regclass);


SET search_path = basico_perfil, pg_catalog;

--
-- TOC entry 2679 (class 2604 OID 61450336)
-- Dependencies: 204 205 205
-- Name: id; Type: DEFAULT; Schema: basico_perfil; Owner: -
--

ALTER TABLE ONLY assoccl_modulo ALTER COLUMN id SET DEFAULT nextval('assoccl_modulo_id_seq'::regclass);


SET search_path = basico_pessoa, pg_catalog;

--
-- TOC entry 2675 (class 2604 OID 61450322)
-- Dependencies: 203 202 203
-- Name: id; Type: DEFAULT; Schema: basico_pessoa; Owner: -
--

ALTER TABLE ONLY assoc_dados ALTER COLUMN id SET DEFAULT nextval('assoc_dados_id_seq'::regclass);


--
-- TOC entry 2671 (class 2604 OID 61450306)
-- Dependencies: 201 200 201
-- Name: id; Type: DEFAULT; Schema: basico_pessoa; Owner: -
--

ALTER TABLE ONLY assoccl_perfil ALTER COLUMN id SET DEFAULT nextval('assoccl_perfil_id_seq'::regclass);


--
-- TOC entry 2668 (class 2604 OID 61450293)
-- Dependencies: 198 199 199
-- Name: id; Type: DEFAULT; Schema: basico_pessoa; Owner: -
--

ALTER TABLE ONLY assoccl_tipo_vinculo ALTER COLUMN id SET DEFAULT nextval('assoccl_tipo_vinculo_id_seq'::regclass);


--
-- TOC entry 2659 (class 2604 OID 61450272)
-- Dependencies: 196 197 197
-- Name: id; Type: DEFAULT; Schema: basico_pessoa; Owner: -
--

ALTER TABLE ONLY login ALTER COLUMN id SET DEFAULT nextval('login_id_seq'::regclass);


SET search_path = basico_pessoa_juridica, pg_catalog;

--
-- TOC entry 2655 (class 2604 OID 61450258)
-- Dependencies: 195 194 195
-- Name: id; Type: DEFAULT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoc_banco ALTER COLUMN id SET DEFAULT nextval('assoc_banco_id_seq'::regclass);


--
-- TOC entry 2652 (class 2604 OID 61450245)
-- Dependencies: 193 192 193
-- Name: id; Type: DEFAULT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoc_dados ALTER COLUMN id SET DEFAULT nextval('assoc_dados_id_seq'::regclass);


--
-- TOC entry 2650 (class 2604 OID 61450231)
-- Dependencies: 190 191 191
-- Name: id; Type: DEFAULT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assocag_incubadora ALTER COLUMN id SET DEFAULT nextval('assocag_incubadora_id_seq'::regclass);


--
-- TOC entry 2645 (class 2604 OID 61450214)
-- Dependencies: 189 188 189
-- Name: id; Type: DEFAULT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assocag_parceria ALTER COLUMN id SET DEFAULT nextval('assocag_parceria_id_seq'::regclass);


--
-- TOC entry 2643 (class 2604 OID 61450200)
-- Dependencies: 187 186 187
-- Name: id; Type: DEFAULT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoccl_area_economia ALTER COLUMN id SET DEFAULT nextval('assoccl_area_economia_id_seq'::regclass);


--
-- TOC entry 2640 (class 2604 OID 61450185)
-- Dependencies: 184 185 185
-- Name: id; Type: DEFAULT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoccl_capital_social ALTER COLUMN id SET DEFAULT nextval('assoccl_capital_social_id_seq'::regclass);


--
-- TOC entry 2637 (class 2604 OID 61450170)
-- Dependencies: 182 183 183
-- Name: id; Type: DEFAULT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoccl_faturamento ALTER COLUMN id SET DEFAULT nextval('assoccl_faturamento_id_seq'::regclass);


--
-- TOC entry 2634 (class 2604 OID 61450155)
-- Dependencies: 181 180 181
-- Name: id; Type: DEFAULT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoccl_quadro_funcionario ALTER COLUMN id SET DEFAULT nextval('assoccl_quadro_funcionario_id_seq'::regclass);


--
-- TOC entry 2628 (class 2604 OID 61450139)
-- Dependencies: 179 178 179
-- Name: id; Type: DEFAULT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY capital_social ALTER COLUMN id SET DEFAULT nextval('capital_social_id_seq'::regclass);


--
-- TOC entry 2622 (class 2604 OID 61450123)
-- Dependencies: 176 177 177
-- Name: id; Type: DEFAULT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY natureza ALTER COLUMN id SET DEFAULT nextval('natureza_id_seq'::regclass);


SET search_path = basico_sequencia, pg_catalog;

--
-- TOC entry 2616 (class 2604 OID 61450105)
-- Dependencies: 174 175 175
-- Name: id; Type: DEFAULT; Schema: basico_sequencia; Owner: -
--

ALTER TABLE ONLY assocsq_acao_aplicacao ALTER COLUMN id SET DEFAULT nextval('assocsq_acao_aplicacao_id_seq'::regclass);


SET search_path = basico_template, pg_catalog;

--
-- TOC entry 2614 (class 2604 OID 61450091)
-- Dependencies: 173 172 173
-- Name: id; Type: DEFAULT; Schema: basico_template; Owner: -
--

ALTER TABLE ONLY assoccl_include ALTER COLUMN id SET DEFAULT nextval('assoccl_include_id_seq'::regclass);


--
-- TOC entry 2612 (class 2604 OID 61450077)
-- Dependencies: 170 171 171
-- Name: id; Type: DEFAULT; Schema: basico_template; Owner: -
--

ALTER TABLE ONLY assoccl_output ALTER COLUMN id SET DEFAULT nextval('assoccl_output_id_seq'::regclass);


SET search_path = basico_validator, pg_catalog;

--
-- TOC entry 2606 (class 2604 OID 61450061)
-- Dependencies: 169 168 169
-- Name: id; Type: DEFAULT; Schema: basico_validator; Owner: -
--

ALTER TABLE ONLY grupo ALTER COLUMN id SET DEFAULT nextval('grupo_id_seq'::regclass);


SET search_path = basico_validator_grupo, pg_catalog;

--
-- TOC entry 2603 (class 2604 OID 61450048)
-- Dependencies: 167 166 167
-- Name: id; Type: DEFAULT; Schema: basico_validator_grupo; Owner: -
--

ALTER TABLE ONLY assocag_grupo ALTER COLUMN id SET DEFAULT nextval('assocag_grupo_id_seq'::regclass);


SET search_path = basico, pg_catalog;

--
-- TOC entry 3972 (class 2606 OID 61451913)
-- Dependencies: 399 399
-- Name: acao_evento_pkey; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY acao_evento
    ADD CONSTRAINT acao_evento_pkey PRIMARY KEY (id);


--
-- TOC entry 3831 (class 2606 OID 61451651)
-- Dependencies: 369 369
-- Name: evento_evento_key; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY evento
    ADD CONSTRAINT evento_evento_key UNIQUE (evento);


--
-- TOC entry 3826 (class 2606 OID 61451631)
-- Dependencies: 367 367
-- Name: filter_pkey; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY filter
    ADD CONSTRAINT filter_pkey PRIMARY KEY (id);


--
-- TOC entry 3803 (class 2606 OID 61451593)
-- Dependencies: 363 363
-- Name: include_uri_key; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY include
    ADD CONSTRAINT include_uri_key UNIQUE (uri);


--
-- TOC entry 3772 (class 2606 OID 61451516)
-- Dependencies: 353 353
-- Name: output_pkey; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY output
    ADD CONSTRAINT output_pkey PRIMARY KEY (id);


--
-- TOC entry 3981 (class 2606 OID 61451931)
-- Dependencies: 401 401
-- Name: pk_acao_aplicacao; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY acao_aplicacao
    ADD CONSTRAINT pk_acao_aplicacao PRIMARY KEY (id);


--
-- TOC entry 3963 (class 2606 OID 61451895)
-- Dependencies: 397 397
-- Name: pk_ajuda; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ajuda
    ADD CONSTRAINT pk_ajuda PRIMARY KEY (id);


--
-- TOC entry 3952 (class 2606 OID 61451874)
-- Dependencies: 395 395
-- Name: pk_area_conhecimento; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY area_conhecimento
    ADD CONSTRAINT pk_area_conhecimento PRIMARY KEY (id);


--
-- TOC entry 3942 (class 2606 OID 61451854)
-- Dependencies: 393 393
-- Name: pk_area_economia; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY area_economia
    ADD CONSTRAINT pk_area_economia PRIMARY KEY (id);


--
-- TOC entry 3913 (class 2606 OID 61451796)
-- Dependencies: 387 387
-- Name: pk_arquivo; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cpg_arquivo
    ADD CONSTRAINT pk_arquivo PRIMARY KEY (id);


--
-- TOC entry 3736 (class 2606 OID 61451435)
-- Dependencies: 343 343
-- Name: pk_assocag_sequencia; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY sequencia
    ADD CONSTRAINT pk_assocag_sequencia PRIMARY KEY (id);


--
-- TOC entry 3932 (class 2606 OID 61451834)
-- Dependencies: 391 391
-- Name: pk_categoria; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY categoria
    ADD CONSTRAINT pk_categoria PRIMARY KEY (id);


--
-- TOC entry 3900 (class 2606 OID 61451776)
-- Dependencies: 385 385
-- Name: pk_codigo_acesso; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cpg_codigo_acesso
    ADD CONSTRAINT pk_codigo_acesso PRIMARY KEY (id);


--
-- TOC entry 3922 (class 2606 OID 61451814)
-- Dependencies: 389 389
-- Name: pk_componente; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY componente
    ADD CONSTRAINT pk_componente PRIMARY KEY (id);


--
-- TOC entry 3890 (class 2606 OID 61451759)
-- Dependencies: 383 383
-- Name: pk_dados_bancarios; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cpg_dados_bancarios
    ADD CONSTRAINT pk_dados_bancarios PRIMARY KEY (id);


--
-- TOC entry 3848 (class 2606 OID 61451681)
-- Dependencies: 373 373
-- Name: pk_dados_biometricos; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY dados_biometricos
    ADD CONSTRAINT pk_dados_biometricos PRIMARY KEY (id);


--
-- TOC entry 3841 (class 2606 OID 61451666)
-- Dependencies: 371 371
-- Name: pk_dicionario_expressao; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY dicionario_expressao
    ADD CONSTRAINT pk_dicionario_expressao PRIMARY KEY (id);


--
-- TOC entry 3881 (class 2606 OID 61451744)
-- Dependencies: 381 381
-- Name: pk_documento_identificacao; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cpg_documento_identificacao
    ADD CONSTRAINT pk_documento_identificacao PRIMARY KEY (id);


--
-- TOC entry 3836 (class 2606 OID 61451649)
-- Dependencies: 369 369
-- Name: pk_evento; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY evento
    ADD CONSTRAINT pk_evento PRIMARY KEY (id);


--
-- TOC entry 3816 (class 2606 OID 61451613)
-- Dependencies: 365 365
-- Name: pk_formulario; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY formulario
    ADD CONSTRAINT pk_formulario PRIMARY KEY (id);


--
-- TOC entry 3805 (class 2606 OID 61451591)
-- Dependencies: 363 363
-- Name: pk_include; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY include
    ADD CONSTRAINT pk_include PRIMARY KEY (id);


--
-- TOC entry 3872 (class 2606 OID 61451728)
-- Dependencies: 379 379
-- Name: pk_link; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cpg_link
    ADD CONSTRAINT pk_link PRIMARY KEY (id);


--
-- TOC entry 3796 (class 2606 OID 61451575)
-- Dependencies: 361 361
-- Name: pk_log; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY log
    ADD CONSTRAINT pk_log PRIMARY KEY (id);


--
-- TOC entry 3791 (class 2606 OID 61451564)
-- Dependencies: 359 359
-- Name: pk_mensagem; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY mensagem
    ADD CONSTRAINT pk_mensagem PRIMARY KEY (id);


--
-- TOC entry 3784 (class 2606 OID 61451549)
-- Dependencies: 357 357
-- Name: pk_metodo_validacao; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY metodo_validacao
    ADD CONSTRAINT pk_metodo_validacao PRIMARY KEY (id);


--
-- TOC entry 3778 (class 2606 OID 61451533)
-- Dependencies: 355 355
-- Name: pk_modulo; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY modulo
    ADD CONSTRAINT pk_modulo PRIMARY KEY (id);


--
-- TOC entry 3764 (class 2606 OID 61451498)
-- Dependencies: 351 351
-- Name: pk_perfil; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY perfil
    ADD CONSTRAINT pk_perfil PRIMARY KEY (id);


--
-- TOC entry 3758 (class 2606 OID 61451481)
-- Dependencies: 349 349
-- Name: pk_pessoa; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY pessoa
    ADD CONSTRAINT pk_pessoa PRIMARY KEY (id);


--
-- TOC entry 3755 (class 2606 OID 61451468)
-- Dependencies: 347 347
-- Name: pk_pessoa_juridica; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY pessoa_juridica
    ADD CONSTRAINT pk_pessoa_juridica PRIMARY KEY (id);


--
-- TOC entry 3864 (class 2606 OID 61451711)
-- Dependencies: 377 377
-- Name: pk_produto; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cpg_produto
    ADD CONSTRAINT pk_produto PRIMARY KEY (id);


--
-- TOC entry 3744 (class 2606 OID 61451453)
-- Dependencies: 345 345
-- Name: pk_profissao; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY profissao
    ADD CONSTRAINT pk_profissao PRIMARY KEY (id);


--
-- TOC entry 3730 (class 2606 OID 61451419)
-- Dependencies: 341 341
-- Name: pk_template; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY template
    ADD CONSTRAINT pk_template PRIMARY KEY (id);


--
-- TOC entry 3721 (class 2606 OID 61451401)
-- Dependencies: 339 339
-- Name: pk_tipo_categoria; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY tipo_categoria
    ADD CONSTRAINT pk_tipo_categoria PRIMARY KEY (id);


--
-- TOC entry 3856 (class 2606 OID 61451696)
-- Dependencies: 375 375
-- Name: pk_token; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cpg_token
    ADD CONSTRAINT pk_token PRIMARY KEY (id);


--
-- TOC entry 3983 (class 2606 OID 61451933)
-- Dependencies: 401 401 401 401
-- Name: un_acao_aplicacao; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY acao_aplicacao
    ADD CONSTRAINT un_acao_aplicacao UNIQUE (id_modulo, controller, action);


--
-- TOC entry 3974 (class 2606 OID 61451915)
-- Dependencies: 399 399 399
-- Name: un_acao_evento; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY acao_evento
    ADD CONSTRAINT un_acao_evento UNIQUE (id_categoria, nome);


--
-- TOC entry 3965 (class 2606 OID 61451897)
-- Dependencies: 397 397 397
-- Name: un_ajuda; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ajuda
    ADD CONSTRAINT un_ajuda UNIQUE (id_categoria, nome);


--
-- TOC entry 3954 (class 2606 OID 61451876)
-- Dependencies: 395 395 395 395
-- Name: un_area_conhecimento; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY area_conhecimento
    ADD CONSTRAINT un_area_conhecimento UNIQUE (id_area_conhecimento_pai, id_categoria, nome);


--
-- TOC entry 3944 (class 2606 OID 61451856)
-- Dependencies: 393 393 393 393
-- Name: un_area_economica; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY area_economia
    ADD CONSTRAINT un_area_economica UNIQUE (id_area_economia_pai, id_categoria, nome);


--
-- TOC entry 3934 (class 2606 OID 61451836)
-- Dependencies: 391 391 391 391
-- Name: un_categoria; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY categoria
    ADD CONSTRAINT un_categoria UNIQUE (id_tipo_categoria, id_categoria_pai, nome);


--
-- TOC entry 3902 (class 2606 OID 61451778)
-- Dependencies: 385 385 385 385 385 385
-- Name: un_codigo_acesso; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cpg_codigo_acesso
    ADD CONSTRAINT un_codigo_acesso UNIQUE (id_categoria_proprietario, id_generico_proprietario, id_categoria_acesso, id_generico_acesso, codigo);


--
-- TOC entry 3924 (class 2606 OID 61451816)
-- Dependencies: 389 389 389
-- Name: un_componente; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY componente
    ADD CONSTRAINT un_componente UNIQUE (id_categoria, nome);


--
-- TOC entry 3915 (class 2606 OID 61451798)
-- Dependencies: 387 387 387 387
-- Name: un_cpg_arquivo; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cpg_arquivo
    ADD CONSTRAINT un_cpg_arquivo UNIQUE (id_categoria, id_generico_proprietario, uri);


--
-- TOC entry 3892 (class 2606 OID 61451761)
-- Dependencies: 383 383 383 383 383 383 383
-- Name: un_dados_bancarios; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cpg_dados_bancarios
    ADD CONSTRAINT un_dados_bancarios UNIQUE (id_categoria, id_generico_proprietario, numero_banco, numero_agencia, numero_tipo_conta, numero_conta);


--
-- TOC entry 3850 (class 2606 OID 61451683)
-- Dependencies: 373 373 373
-- Name: un_dados_biometricos; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY dados_biometricos
    ADD CONSTRAINT un_dados_biometricos UNIQUE (id_categoria, id_generico_proprietario);


--
-- TOC entry 3843 (class 2606 OID 61451668)
-- Dependencies: 371 371 371
-- Name: un_dicionario_expressao; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY dicionario_expressao
    ADD CONSTRAINT un_dicionario_expressao UNIQUE (id_categoria, constante_textual);


--
-- TOC entry 3883 (class 2606 OID 61451746)
-- Dependencies: 381 381 381 381 381
-- Name: un_documento; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cpg_documento_identificacao
    ADD CONSTRAINT un_documento UNIQUE (id_categoria, id_generico_proprietario, id_pessoa_juridica_emissor, identificador);


--
-- TOC entry 3828 (class 2606 OID 61451633)
-- Dependencies: 367 367 367
-- Name: un_filter; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY filter
    ADD CONSTRAINT un_filter UNIQUE (id_categoria, nome);


--
-- TOC entry 3818 (class 2606 OID 61451615)
-- Dependencies: 365 365 365 365
-- Name: un_formulario; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY formulario
    ADD CONSTRAINT un_formulario UNIQUE (id_formulario_pai, id_categoria, nome);


--
-- TOC entry 3807 (class 2606 OID 61451595)
-- Dependencies: 363 363 363
-- Name: un_include; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY include
    ADD CONSTRAINT un_include UNIQUE (id_categoria, nome);


--
-- TOC entry 3874 (class 2606 OID 61451730)
-- Dependencies: 379 379 379 379 379
-- Name: un_link; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cpg_link
    ADD CONSTRAINT un_link UNIQUE (id_categoria, id_generico_proprietario, url, nome);


--
-- TOC entry 3786 (class 2606 OID 61451551)
-- Dependencies: 357 357 357
-- Name: un_metodo_validacao; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY metodo_validacao
    ADD CONSTRAINT un_metodo_validacao UNIQUE (id_categoria, nome);


--
-- TOC entry 3766 (class 2606 OID 61451500)
-- Dependencies: 351 351 351
-- Name: un_perfil; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY perfil
    ADD CONSTRAINT un_perfil UNIQUE (id_modulo, nome);


--
-- TOC entry 3742 (class 2606 OID 61451437)
-- Dependencies: 343 343 343
-- Name: un_sequencia; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY sequencia
    ADD CONSTRAINT un_sequencia UNIQUE (id_categoria, nome);


--
-- TOC entry 3728 (class 2606 OID 61451403)
-- Dependencies: 339 339 339
-- Name: un_tipo_categoria; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY tipo_categoria
    ADD CONSTRAINT un_tipo_categoria UNIQUE (id_tipo_categoria_pai, nome);


--
-- TOC entry 3719 (class 2606 OID 61451382)
-- Dependencies: 337 337
-- Name: validator_pkey; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY validator
    ADD CONSTRAINT validator_pkey PRIMARY KEY (id);


SET search_path = basico_acao_aplic_assoc_visao, pg_catalog;

--
-- TOC entry 3709 (class 2606 OID 61451363)
-- Dependencies: 335 335
-- Name: pk_assoccl_ref_atrib_met_rec_post; Type: CONSTRAINT; Schema: basico_acao_aplic_assoc_visao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_atrib_met_rec_post
    ADD CONSTRAINT pk_assoccl_ref_atrib_met_rec_post PRIMARY KEY (id);


--
-- TOC entry 3701 (class 2606 OID 61451349)
-- Dependencies: 333 333
-- Name: pk_atributo_metodo_recup_post; Type: CONSTRAINT; Schema: basico_acao_aplic_assoc_visao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY atributo_metodo_recup_post
    ADD CONSTRAINT pk_atributo_metodo_recup_post PRIMARY KEY (id);


--
-- TOC entry 3711 (class 2606 OID 61451365)
-- Dependencies: 335 335 335 335
-- Name: un_assoccl_atrib_met_rec_post; Type: CONSTRAINT; Schema: basico_acao_aplic_assoc_visao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_atrib_met_rec_post
    ADD CONSTRAINT un_assoccl_atrib_met_rec_post UNIQUE (id_assoc_visao_ref_post, id_atributo_metodo_recup_post, ordem);


--
-- TOC entry 3703 (class 2606 OID 61451351)
-- Dependencies: 333 333 333
-- Name: un_atributo_metodo_recup_post; Type: CONSTRAINT; Schema: basico_acao_aplic_assoc_visao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY atributo_metodo_recup_post
    ADD CONSTRAINT un_atributo_metodo_recup_post UNIQUE (atributo, metodo_recuperacao);


SET search_path = basico_acao_aplicacao, pg_catalog;

--
-- TOC entry 3695 (class 2606 OID 61451334)
-- Dependencies: 331 331
-- Name: pk_assoc_visao; Type: CONSTRAINT; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_visao
    ADD CONSTRAINT pk_assoc_visao PRIMARY KEY (id);


--
-- TOC entry 3684 (class 2606 OID 61451314)
-- Dependencies: 329 329
-- Name: pk_assoccl_metodo_validacao; Type: CONSTRAINT; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_metodo_validacao
    ADD CONSTRAINT pk_assoccl_metodo_validacao PRIMARY KEY (id);


--
-- TOC entry 3676 (class 2606 OID 61451300)
-- Dependencies: 327 327
-- Name: pk_assoccl_perfil; Type: CONSTRAINT; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_perfil
    ADD CONSTRAINT pk_assoccl_perfil PRIMARY KEY (id);


--
-- TOC entry 3686 (class 2606 OID 61451316)
-- Dependencies: 329 329 329 329
-- Name: un_assoccl_metodo_validacao; Type: CONSTRAINT; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_metodo_validacao
    ADD CONSTRAINT un_assoccl_metodo_validacao UNIQUE (id_acao_aplicacao, id_metodo_validacao, id_perfil);


--
-- TOC entry 3678 (class 2606 OID 61451302)
-- Dependencies: 327 327 327
-- Name: un_assoccl_perfil; Type: CONSTRAINT; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_perfil
    ADD CONSTRAINT un_assoccl_perfil UNIQUE (id_acao_aplicacao, id_perfil);


SET search_path = basico_acao_evento, pg_catalog;

--
-- TOC entry 3669 (class 2606 OID 61451286)
-- Dependencies: 325 325
-- Name: assoccl_include_pkey; Type: CONSTRAINT; Schema: basico_acao_evento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT assoccl_include_pkey PRIMARY KEY (id);


--
-- TOC entry 3671 (class 2606 OID 61451288)
-- Dependencies: 325 325 325
-- Name: un_assoccl_include1; Type: CONSTRAINT; Schema: basico_acao_evento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT un_assoccl_include1 UNIQUE (id_acao_evento, id_include);


SET search_path = basico_ajuda, pg_catalog;

--
-- TOC entry 3662 (class 2606 OID 61451272)
-- Dependencies: 323 323
-- Name: pk_assoccl_link; Type: CONSTRAINT; Schema: basico_ajuda; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_link
    ADD CONSTRAINT pk_assoccl_link PRIMARY KEY (id);


--
-- TOC entry 3664 (class 2606 OID 61451274)
-- Dependencies: 323 323 323
-- Name: un_assoccl_link; Type: CONSTRAINT; Schema: basico_ajuda; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_link
    ADD CONSTRAINT un_assoccl_link UNIQUE (id_ajuda, id_link);


SET search_path = basico_assoc_banco, pg_catalog;

--
-- TOC entry 3653 (class 2606 OID 61451256)
-- Dependencies: 321 321
-- Name: pk_assoc_tipo_conta; Type: CONSTRAINT; Schema: basico_assoc_banco; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_tipo_conta
    ADD CONSTRAINT pk_assoc_tipo_conta PRIMARY KEY (id);


--
-- TOC entry 3655 (class 2606 OID 61451258)
-- Dependencies: 321 321 321
-- Name: un_assoc_tipo_conta_categoria; Type: CONSTRAINT; Schema: basico_assoc_banco; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_tipo_conta
    ADD CONSTRAINT un_assoc_tipo_conta_categoria UNIQUE (id_assoc_banco, id_categoria);


--
-- TOC entry 3657 (class 2606 OID 61451260)
-- Dependencies: 321 321 321
-- Name: un_assoc_tipo_conta_codigo; Type: CONSTRAINT; Schema: basico_assoc_banco; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_tipo_conta
    ADD CONSTRAINT un_assoc_tipo_conta_codigo UNIQUE (id_assoc_banco, codigo);


SET search_path = basico_assoc_chave_estrangeira, pg_catalog;

--
-- TOC entry 3640 (class 2606 OID 61451239)
-- Dependencies: 319 319
-- Name: pk_relacao; Type: CONSTRAINT; Schema: basico_assoc_chave_estrangeira; Owner: -; Tablespace: 
--

ALTER TABLE ONLY relacao
    ADD CONSTRAINT pk_relacao PRIMARY KEY (id);


--
-- TOC entry 3645 (class 2606 OID 61451241)
-- Dependencies: 319 319 319
-- Name: un_relacao; Type: CONSTRAINT; Schema: basico_assoc_chave_estrangeira; Owner: -; Tablespace: 
--

ALTER TABLE ONLY relacao
    ADD CONSTRAINT un_relacao UNIQUE (tabela_origem, campo_origem);


SET search_path = basico_assoc_dados_profis, pg_catalog;

--
-- TOC entry 3636 (class 2606 OID 61451225)
-- Dependencies: 317 317
-- Name: pk_assoccl_area_conhecimento; Type: CONSTRAINT; Schema: basico_assoc_dados_profis; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_area_conhecimento
    ADD CONSTRAINT pk_assoccl_area_conhecimento PRIMARY KEY (id);


--
-- TOC entry 3638 (class 2606 OID 61451227)
-- Dependencies: 317 317 317
-- Name: un_assoc_dados_profis_area_conhec; Type: CONSTRAINT; Schema: basico_assoc_dados_profis; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_area_conhecimento
    ADD CONSTRAINT un_assoc_dados_profis_area_conhec UNIQUE (id_area_conhecimento, id_assoc_dados_profissionais);


SET search_path = basico_assoccl_pessoa_perfil, pg_catalog;

--
-- TOC entry 3631 (class 2606 OID 61451213)
-- Dependencies: 315 315
-- Name: pk_assoccl_pessoa_perfil_dados; Type: CONSTRAINT; Schema: basico_assoccl_pessoa_perfil; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_dados
    ADD CONSTRAINT pk_assoccl_pessoa_perfil_dados PRIMARY KEY (id);


SET search_path = basico_assoccl_tipo_vinculo, pg_catalog;

--
-- TOC entry 3627 (class 2606 OID 61451200)
-- Dependencies: 313 313
-- Name: pk_assoc_dados_profissionais; Type: CONSTRAINT; Schema: basico_assoccl_tipo_vinculo; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_dados
    ADD CONSTRAINT pk_assoc_dados_profissionais PRIMARY KEY (id);


SET search_path = basico_categoria, pg_catalog;

--
-- TOC entry 3619 (class 2606 OID 61451187)
-- Dependencies: 311 311
-- Name: pk_assoc_categ_chave_estrang; Type: CONSTRAINT; Schema: basico_categoria; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_chave_estrangeira
    ADD CONSTRAINT pk_assoc_categ_chave_estrang PRIMARY KEY (id);


--
-- TOC entry 3612 (class 2606 OID 61451174)
-- Dependencies: 309 309
-- Name: pk_assoc_evento_acao; Type: CONSTRAINT; Schema: basico_categoria; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_evento_acao
    ADD CONSTRAINT pk_assoc_evento_acao PRIMARY KEY (id);


SET search_path = basico_componente, pg_catalog;

--
-- TOC entry 3606 (class 2606 OID 61451160)
-- Dependencies: 307 307
-- Name: pk_componente_assoccl_include; Type: CONSTRAINT; Schema: basico_componente; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT pk_componente_assoccl_include PRIMARY KEY (id);


--
-- TOC entry 3608 (class 2606 OID 61451162)
-- Dependencies: 307 307 307
-- Name: un_assoccl_include_componente; Type: CONSTRAINT; Schema: basico_componente; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT un_assoccl_include_componente UNIQUE (id_componente, id_include);


SET search_path = basico_contato, pg_catalog;

--
-- TOC entry 3599 (class 2606 OID 61451146)
-- Dependencies: 305 305
-- Name: pk_email; Type: CONSTRAINT; Schema: basico_contato; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cpg_email
    ADD CONSTRAINT pk_email PRIMARY KEY (id);


--
-- TOC entry 3589 (class 2606 OID 61451126)
-- Dependencies: 303 303
-- Name: pk_telefone; Type: CONSTRAINT; Schema: basico_contato; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cpg_telefone
    ADD CONSTRAINT pk_telefone PRIMARY KEY (id);


--
-- TOC entry 3601 (class 2606 OID 61451148)
-- Dependencies: 305 305 305 305
-- Name: un_email; Type: CONSTRAINT; Schema: basico_contato; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cpg_email
    ADD CONSTRAINT un_email UNIQUE (id_generico_proprietario, id_categoria, email);


--
-- TOC entry 3591 (class 2606 OID 61451128)
-- Dependencies: 303 303 303 303 303 303 303
-- Name: un_telefone; Type: CONSTRAINT; Schema: basico_contato; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cpg_telefone
    ADD CONSTRAINT un_telefone UNIQUE (id_categoria, id_generico_proprietario, codigo_pais, codigo_area, telefone, ramal);


SET search_path = basico_cvc, pg_catalog;

--
-- TOC entry 3581 (class 2606 OID 61451107)
-- Dependencies: 301 301
-- Name: pk_cvc; Type: CONSTRAINT; Schema: basico_cvc; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cvc
    ADD CONSTRAINT pk_cvc PRIMARY KEY (id);


--
-- TOC entry 3583 (class 2606 OID 61451109)
-- Dependencies: 301 301 301 301
-- Name: un_cvc; Type: CONSTRAINT; Schema: basico_cvc; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cvc
    ADD CONSTRAINT un_cvc UNIQUE (id_assoc_chave_estrangeira, id_generico, versao);


SET search_path = basico_dados_academicos, pg_catalog;

--
-- TOC entry 3572 (class 2606 OID 61451092)
-- Dependencies: 299 299
-- Name: pk_titulacao; Type: CONSTRAINT; Schema: basico_dados_academicos; Owner: -; Tablespace: 
--

ALTER TABLE ONLY titulacao
    ADD CONSTRAINT pk_titulacao PRIMARY KEY (id);


SET search_path = basico_dados_biometricos, pg_catalog;

--
-- TOC entry 3570 (class 2606 OID 61451076)
-- Dependencies: 297 297
-- Name: pk_assoc_pessoa; Type: CONSTRAINT; Schema: basico_dados_biometricos; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_pessoa
    ADD CONSTRAINT pk_assoc_pessoa PRIMARY KEY (id);


SET search_path = basico_dados_profissionais, pg_catalog;

--
-- TOC entry 3557 (class 2606 OID 61451061)
-- Dependencies: 295 295
-- Name: pk_regime_trabalho; Type: CONSTRAINT; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

ALTER TABLE ONLY regime_trabalho
    ADD CONSTRAINT pk_regime_trabalho PRIMARY KEY (id);


--
-- TOC entry 3548 (class 2606 OID 61451042)
-- Dependencies: 293 293
-- Name: pk_tipo_vinculo; Type: CONSTRAINT; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

ALTER TABLE ONLY tipo_vinculo
    ADD CONSTRAINT pk_tipo_vinculo PRIMARY KEY (id);


--
-- TOC entry 3539 (class 2606 OID 61451022)
-- Dependencies: 291 291
-- Name: pk_vinculo_empregaticio; Type: CONSTRAINT; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

ALTER TABLE ONLY vinculo_empregaticio
    ADD CONSTRAINT pk_vinculo_empregaticio PRIMARY KEY (id);


--
-- TOC entry 3565 (class 2606 OID 61451063)
-- Dependencies: 295 295 295 295 295
-- Name: un_regime_trabalho; Type: CONSTRAINT; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

ALTER TABLE ONLY regime_trabalho
    ADD CONSTRAINT un_regime_trabalho UNIQUE (id_regime_trabalho_pai, id_categoria, nome, codigo);


--
-- TOC entry 3555 (class 2606 OID 61451044)
-- Dependencies: 293 293 293 293
-- Name: un_tipo_vinculo; Type: CONSTRAINT; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

ALTER TABLE ONLY tipo_vinculo
    ADD CONSTRAINT un_tipo_vinculo UNIQUE (id_categoria, nome, codigo);


--
-- TOC entry 3541 (class 2606 OID 61451024)
-- Dependencies: 291 291 291 291
-- Name: un_vinculo_empregaticio; Type: CONSTRAINT; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

ALTER TABLE ONLY vinculo_empregaticio
    ADD CONSTRAINT un_vinculo_empregaticio UNIQUE (id_categoria, nome, codigo);


SET search_path = basico_filter, pg_catalog;

--
-- TOC entry 3537 (class 2606 OID 61450932)
-- Dependencies: 281 281
-- Name: pk_filter_grupo; Type: CONSTRAINT; Schema: basico_filter; Owner: -; Tablespace: 
--

ALTER TABLE ONLY grupo
    ADD CONSTRAINT pk_filter_grupo PRIMARY KEY (id);


SET search_path = basico_filter_grupo, pg_catalog;

--
-- TOC entry 3531 (class 2606 OID 61450916)
-- Dependencies: 279 279
-- Name: pk_grupo_assocag_filter; Type: CONSTRAINT; Schema: basico_filter_grupo; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assocag_grupo
    ADD CONSTRAINT pk_grupo_assocag_filter PRIMARY KEY (id);


SET search_path = basico_form_assoccl_elem_grupo, pg_catalog;

--
-- TOC entry 3523 (class 2606 OID 61450901)
-- Dependencies: 277 277
-- Name: pk_assoccl_decorator; Type: CONSTRAINT; Schema: basico_form_assoccl_elem_grupo; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT pk_assoccl_decorator PRIMARY KEY (id);


--
-- TOC entry 3525 (class 2606 OID 61450903)
-- Dependencies: 277 277 277
-- Name: un_assoccl_decorator1; Type: CONSTRAINT; Schema: basico_form_assoccl_elem_grupo; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT un_assoccl_decorator1 UNIQUE (id_grupo, id_decorator);


SET search_path = basico_form_assoccl_elemento, pg_catalog;

--
-- TOC entry 3488 (class 2606 OID 61450827)
-- Dependencies: 267 267
-- Name: assoccl_validator_pkey; Type: CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_validator
    ADD CONSTRAINT assoccl_validator_pkey PRIMARY KEY (id);


--
-- TOC entry 3516 (class 2606 OID 61450887)
-- Dependencies: 275 275
-- Name: pk_assoccl_elemento; Type: CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT pk_assoccl_elemento PRIMARY KEY (id);


--
-- TOC entry 3509 (class 2606 OID 61450872)
-- Dependencies: 273 273
-- Name: pk_assoccl_evento; Type: CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_evento
    ADD CONSTRAINT pk_assoccl_evento PRIMARY KEY (id);


--
-- TOC entry 3502 (class 2606 OID 61450857)
-- Dependencies: 271 271
-- Name: pk_assoccl_filter; Type: CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_filter
    ADD CONSTRAINT pk_assoccl_filter PRIMARY KEY (id);


--
-- TOC entry 3495 (class 2606 OID 61450842)
-- Dependencies: 269 269
-- Name: pk_assoccl_include; Type: CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT pk_assoccl_include PRIMARY KEY (id);


--
-- TOC entry 3483 (class 2606 OID 61450813)
-- Dependencies: 265 265
-- Name: pk_grupo; Type: CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY grupo
    ADD CONSTRAINT pk_grupo PRIMARY KEY (id);


--
-- TOC entry 3518 (class 2606 OID 61450889)
-- Dependencies: 275 275 275 275
-- Name: un_assoccl_decorator_assoccl_elemento; Type: CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT un_assoccl_decorator_assoccl_elemento UNIQUE (id_assoccl_elemento, id_decorator, ordem);


--
-- TOC entry 3490 (class 2606 OID 61450829)
-- Dependencies: 267 267 267
-- Name: un_assoccl_elemento1; Type: CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_validator
    ADD CONSTRAINT un_assoccl_elemento1 UNIQUE (id_assoccl_elemento, id_validator);


--
-- TOC entry 3511 (class 2606 OID 61450874)
-- Dependencies: 273 273 273 273
-- Name: un_assoccl_evento2; Type: CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_evento
    ADD CONSTRAINT un_assoccl_evento2 UNIQUE (id_assoccl_elemento, id_evento, id_acao_evento);


--
-- TOC entry 3504 (class 2606 OID 61450859)
-- Dependencies: 271 271 271
-- Name: un_assoccl_filter1; Type: CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_filter
    ADD CONSTRAINT un_assoccl_filter1 UNIQUE (id_assoccl_elemento, id_filter);


--
-- TOC entry 3497 (class 2606 OID 61450844)
-- Dependencies: 269 269 269
-- Name: un_assoccl_include_assoccl_elemento; Type: CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT un_assoccl_include_assoccl_elemento UNIQUE (id_assoccl_elemento, id_include);


SET search_path = basico_form_decorator_grupo, pg_catalog;

--
-- TOC entry 3477 (class 2606 OID 61450797)
-- Dependencies: 263 263
-- Name: pk_grupo_assocag_decorator; Type: CONSTRAINT; Schema: basico_form_decorator_grupo; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assocag_grupo
    ADD CONSTRAINT pk_grupo_assocag_decorator PRIMARY KEY (id);


SET search_path = basico_formulario, pg_catalog;

--
-- TOC entry 3469 (class 2606 OID 61450782)
-- Dependencies: 261 261
-- Name: pk_assoccl_decorator; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT pk_assoccl_decorator PRIMARY KEY (id);


--
-- TOC entry 3459 (class 2606 OID 61450764)
-- Dependencies: 259 259
-- Name: pk_assoccl_elemento; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_elemento
    ADD CONSTRAINT pk_assoccl_elemento PRIMARY KEY (id);


--
-- TOC entry 3451 (class 2606 OID 61450746)
-- Dependencies: 257 257
-- Name: pk_assoccl_evento; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_evento
    ADD CONSTRAINT pk_assoccl_evento PRIMARY KEY (id);


--
-- TOC entry 3436 (class 2606 OID 61450718)
-- Dependencies: 253 253
-- Name: pk_assoccl_modulo; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_modulo
    ADD CONSTRAINT pk_assoccl_modulo PRIMARY KEY (id);


--
-- TOC entry 3431 (class 2606 OID 61450706)
-- Dependencies: 251 251
-- Name: pk_decorator; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY decorator
    ADD CONSTRAINT pk_decorator PRIMARY KEY (id);


--
-- TOC entry 3422 (class 2606 OID 61450688)
-- Dependencies: 249 249
-- Name: pk_elemento; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY elemento
    ADD CONSTRAINT pk_elemento PRIMARY KEY (id);


--
-- TOC entry 3443 (class 2606 OID 61450732)
-- Dependencies: 255 255
-- Name: pk_formulario_assoccl_include; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT pk_formulario_assoccl_include PRIMARY KEY (id);


--
-- TOC entry 3405 (class 2606 OID 61450670)
-- Dependencies: 247 247
-- Name: pk_rascunho; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rascunho
    ADD CONSTRAINT pk_rascunho PRIMARY KEY (id);


--
-- TOC entry 3471 (class 2606 OID 61450784)
-- Dependencies: 261 261 261 261 261 261
-- Name: un_assoccl_decorator; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT un_assoccl_decorator UNIQUE (id_formulario, id_decorator, ordem, id_decorator_grupo, exclude);


--
-- TOC entry 3461 (class 2606 OID 61450768)
-- Dependencies: 259 259 259 259
-- Name: un_assoccl_elemento; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_elemento
    ADD CONSTRAINT un_assoccl_elemento UNIQUE (id_formulario, id_elemento, ordem);


--
-- TOC entry 3463 (class 2606 OID 61450766)
-- Dependencies: 259 259 259
-- Name: un_assoccl_elemento_element_name; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_elemento
    ADD CONSTRAINT un_assoccl_elemento_element_name UNIQUE (id_formulario, element_name);


--
-- TOC entry 3453 (class 2606 OID 61450748)
-- Dependencies: 257 257 257 257 257
-- Name: un_assoccl_evento1; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_evento
    ADD CONSTRAINT un_assoccl_evento1 UNIQUE (id_formulario, id_acao_evento, id_evento, ordem);


--
-- TOC entry 3445 (class 2606 OID 61450734)
-- Dependencies: 255 255 255
-- Name: un_assoccl_include_formulario; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT un_assoccl_include_formulario UNIQUE (id_formulario, id_include);


--
-- TOC entry 3438 (class 2606 OID 61450720)
-- Dependencies: 253 253 253
-- Name: un_assoccl_modulo1; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_modulo
    ADD CONSTRAINT un_assoccl_modulo1 UNIQUE (id_modulo, id_formulario);


--
-- TOC entry 3424 (class 2606 OID 61450690)
-- Dependencies: 249 249 249
-- Name: un_formulario_elemento; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY elemento
    ADD CONSTRAINT un_formulario_elemento UNIQUE (id_categoria, nome);


SET search_path = basico_formulario_decorator, pg_catalog;

--
-- TOC entry 3401 (class 2606 OID 61450654)
-- Dependencies: 245 245
-- Name: pk_decorator_assoccl_include; Type: CONSTRAINT; Schema: basico_formulario_decorator; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT pk_decorator_assoccl_include PRIMARY KEY (id);


--
-- TOC entry 3396 (class 2606 OID 61450642)
-- Dependencies: 243 243
-- Name: pk_grupo_decorator; Type: CONSTRAINT; Schema: basico_formulario_decorator; Owner: -; Tablespace: 
--

ALTER TABLE ONLY grupo
    ADD CONSTRAINT pk_grupo_decorator PRIMARY KEY (id);


--
-- TOC entry 3403 (class 2606 OID 61450656)
-- Dependencies: 245 245 245
-- Name: un_assoccl_include_decorator; Type: CONSTRAINT; Schema: basico_formulario_decorator; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT un_assoccl_include_decorator UNIQUE (id_include, id_decorator);


SET search_path = basico_formulario_elemento, pg_catalog;

--
-- TOC entry 3365 (class 2606 OID 61450576)
-- Dependencies: 235 235
-- Name: assoccl_validator_pkey; Type: CONSTRAINT; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_validator
    ADD CONSTRAINT assoccl_validator_pkey PRIMARY KEY (id);


--
-- TOC entry 3388 (class 2606 OID 61450623)
-- Dependencies: 241 241
-- Name: pk_assoccl_decorator; Type: CONSTRAINT; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT pk_assoccl_decorator PRIMARY KEY (id);


--
-- TOC entry 3380 (class 2606 OID 61450607)
-- Dependencies: 239 239
-- Name: pk_assoccl_evento; Type: CONSTRAINT; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_evento
    ADD CONSTRAINT pk_assoccl_evento PRIMARY KEY (id);


--
-- TOC entry 3373 (class 2606 OID 61450592)
-- Dependencies: 237 237
-- Name: pk_assoccl_filter; Type: CONSTRAINT; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_filter
    ADD CONSTRAINT pk_assoccl_filter PRIMARY KEY (id);


--
-- TOC entry 3390 (class 2606 OID 61450625)
-- Dependencies: 241 241 241 241 241 241
-- Name: un_assoccl_decorator_elemento; Type: CONSTRAINT; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT un_assoccl_decorator_elemento UNIQUE (id_elemento, id_decorator, ordem, id_decorator_grupo, exclude);


--
-- TOC entry 3382 (class 2606 OID 61450609)
-- Dependencies: 239 239 239 239 239
-- Name: un_assoccl_evento; Type: CONSTRAINT; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_evento
    ADD CONSTRAINT un_assoccl_evento UNIQUE (id_elemento, id_evento, id_acao_evento, ordem);


--
-- TOC entry 3375 (class 2606 OID 61450594)
-- Dependencies: 237 237 237 237 237 237
-- Name: un_assoccl_filter; Type: CONSTRAINT; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_filter
    ADD CONSTRAINT un_assoccl_filter UNIQUE (id_elemento, id_filter, ordem, id_filter_grupo, exclude);


--
-- TOC entry 3367 (class 2606 OID 61450578)
-- Dependencies: 235 235 235 235 235
-- Name: un_assoccl_validator; Type: CONSTRAINT; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_validator
    ADD CONSTRAINT un_assoccl_validator UNIQUE (id_validator, id_elemento, id_validator_grupo, exclude);


SET search_path = basico_formulario_rascunho, pg_catalog;

--
-- TOC entry 3359 (class 2606 OID 61450562)
-- Dependencies: 233 233
-- Name: pk_assocag_grupo; Type: CONSTRAINT; Schema: basico_formulario_rascunho; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assocag_grupo
    ADD CONSTRAINT pk_assocag_grupo PRIMARY KEY (id);


SET search_path = basico_localizacao, pg_catalog;

--
-- TOC entry 3294 (class 2606 OID 61450450)
-- Dependencies: 219 219
-- Name: pais_codigo_iso3166_key; Type: CONSTRAINT; Schema: basico_localizacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY pais
    ADD CONSTRAINT pais_codigo_iso3166_key UNIQUE (codigo_iso3166);


--
-- TOC entry 3353 (class 2606 OID 61450547)
-- Dependencies: 231 231
-- Name: pk_assoc_bairro; Type: CONSTRAINT; Schema: basico_localizacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_bairro
    ADD CONSTRAINT pk_assoc_bairro PRIMARY KEY (id);


--
-- TOC entry 3346 (class 2606 OID 61450531)
-- Dependencies: 229 229
-- Name: pk_assoc_estado; Type: CONSTRAINT; Schema: basico_localizacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_estado
    ADD CONSTRAINT pk_assoc_estado PRIMARY KEY (id);


--
-- TOC entry 3336 (class 2606 OID 61450514)
-- Dependencies: 227 227
-- Name: pk_assoc_logradouro; Type: CONSTRAINT; Schema: basico_localizacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_logradouro
    ADD CONSTRAINT pk_assoc_logradouro PRIMARY KEY (id);


--
-- TOC entry 3328 (class 2606 OID 61450498)
-- Dependencies: 225 225
-- Name: pk_assoc_municipio; Type: CONSTRAINT; Schema: basico_localizacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_municipio
    ADD CONSTRAINT pk_assoc_municipio PRIMARY KEY (id);


--
-- TOC entry 3318 (class 2606 OID 61450481)
-- Dependencies: 223 223
-- Name: pk_codigo_postal; Type: CONSTRAINT; Schema: basico_localizacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY codigo_postal
    ADD CONSTRAINT pk_codigo_postal PRIMARY KEY (id);


--
-- TOC entry 3306 (class 2606 OID 61450465)
-- Dependencies: 221 221
-- Name: pk_endereco; Type: CONSTRAINT; Schema: basico_localizacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cpg_endereco
    ADD CONSTRAINT pk_endereco PRIMARY KEY (id);


--
-- TOC entry 3299 (class 2606 OID 61450448)
-- Dependencies: 219 219
-- Name: pk_pais; Type: CONSTRAINT; Schema: basico_localizacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY pais
    ADD CONSTRAINT pk_pais PRIMARY KEY (id);


--
-- TOC entry 3355 (class 2606 OID 61450549)
-- Dependencies: 231 231 231
-- Name: un_assoc_bairro; Type: CONSTRAINT; Schema: basico_localizacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_bairro
    ADD CONSTRAINT un_assoc_bairro UNIQUE (id_municipio, nome);


--
-- TOC entry 3338 (class 2606 OID 61450516)
-- Dependencies: 227 227 227 227
-- Name: un_assoc_logradouro; Type: CONSTRAINT; Schema: basico_localizacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_logradouro
    ADD CONSTRAINT un_assoc_logradouro UNIQUE (id_categoria, id_bairro, nome);


--
-- TOC entry 3320 (class 2606 OID 61450483)
-- Dependencies: 223 223 223
-- Name: un_cep; Type: CONSTRAINT; Schema: basico_localizacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY codigo_postal
    ADD CONSTRAINT un_cep UNIQUE (codigo, id_pais);


--
-- TOC entry 3308 (class 2606 OID 61450467)
-- Dependencies: 221 221 221
-- Name: un_endereco; Type: CONSTRAINT; Schema: basico_localizacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cpg_endereco
    ADD CONSTRAINT un_endereco UNIQUE (id_categoria, id_generico_proprietario);


--
-- TOC entry 3348 (class 2606 OID 61450533)
-- Dependencies: 229 229 229 229 229
-- Name: un_estado_pais; Type: CONSTRAINT; Schema: basico_localizacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_estado
    ADD CONSTRAINT un_estado_pais UNIQUE (id_pais, nome, id_categoria, id_estado_pai);


--
-- TOC entry 3330 (class 2606 OID 61450500)
-- Dependencies: 225 225 225 225 225
-- Name: un_municipio_estado; Type: CONSTRAINT; Schema: basico_localizacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_municipio
    ADD CONSTRAINT un_municipio_estado UNIQUE (id_estado, nome, id_categoria, id_municipio_pai);


SET search_path = basico_mensagem, pg_catalog;

--
-- TOC entry 3292 (class 2606 OID 61450433)
-- Dependencies: 217 217
-- Name: pk_assoc_email; Type: CONSTRAINT; Schema: basico_mensagem; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_email
    ADD CONSTRAINT pk_assoc_email PRIMARY KEY (id);


--
-- TOC entry 3286 (class 2606 OID 61450419)
-- Dependencies: 215 215
-- Name: pk_assocl_assocl_pessoa_perfil; Type: CONSTRAINT; Schema: basico_mensagem; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_assoccl_pessoa_perfil
    ADD CONSTRAINT pk_assocl_assocl_pessoa_perfil PRIMARY KEY (id);


--
-- TOC entry 3274 (class 2606 OID 61450404)
-- Dependencies: 213 213
-- Name: pk_template; Type: CONSTRAINT; Schema: basico_mensagem; Owner: -; Tablespace: 
--

ALTER TABLE ONLY template
    ADD CONSTRAINT pk_template PRIMARY KEY (id);


--
-- TOC entry 3288 (class 2606 OID 61450421)
-- Dependencies: 215 215 215 215
-- Name: un_assoccl_assoccl_pessoa_perfil; Type: CONSTRAINT; Schema: basico_mensagem; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_assoccl_pessoa_perfil
    ADD CONSTRAINT un_assoccl_assoccl_pessoa_perfil UNIQUE (id_categoria, id_mensagem, id_assoccl_perfil);


--
-- TOC entry 3280 (class 2606 OID 61450406)
-- Dependencies: 213 213 213 213
-- Name: un_mensagem_template; Type: CONSTRAINT; Schema: basico_mensagem; Owner: -; Tablespace: 
--

ALTER TABLE ONLY template
    ADD CONSTRAINT un_mensagem_template UNIQUE (id_categoria, id_generico_proprietario, nome);


SET search_path = basico_mensagem_assoc_email, pg_catalog;

--
-- TOC entry 3272 (class 2606 OID 61450385)
-- Dependencies: 211 211
-- Name: pk_assoc_dados; Type: CONSTRAINT; Schema: basico_mensagem_assoc_email; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_dados
    ADD CONSTRAINT pk_assoc_dados PRIMARY KEY (id);


SET search_path = basico_metodo_validacao, pg_catalog;

--
-- TOC entry 3266 (class 2606 OID 61450370)
-- Dependencies: 209 209
-- Name: pk_metodo_valid_assoccl_include; Type: CONSTRAINT; Schema: basico_metodo_validacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT pk_metodo_valid_assoccl_include PRIMARY KEY (id);


--
-- TOC entry 3268 (class 2606 OID 61450372)
-- Dependencies: 209 209 209
-- Name: un_assoccl_include; Type: CONSTRAINT; Schema: basico_metodo_validacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT un_assoccl_include UNIQUE (id_metodo_validacao, id_include);


SET search_path = basico_output, pg_catalog;

--
-- TOC entry 3259 (class 2606 OID 61450356)
-- Dependencies: 207 207
-- Name: pk_output_assoccl_include; Type: CONSTRAINT; Schema: basico_output; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT pk_output_assoccl_include PRIMARY KEY (id);


--
-- TOC entry 3261 (class 2606 OID 61450358)
-- Dependencies: 207 207 207
-- Name: un_assoccl_include_output; Type: CONSTRAINT; Schema: basico_output; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT un_assoccl_include_output UNIQUE (id_output, id_include);


SET search_path = basico_perfil, pg_catalog;

--
-- TOC entry 3252 (class 2606 OID 61450342)
-- Dependencies: 205 205
-- Name: pk_assoccl_modulo; Type: CONSTRAINT; Schema: basico_perfil; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_modulo
    ADD CONSTRAINT pk_assoccl_modulo PRIMARY KEY (id);


--
-- TOC entry 3254 (class 2606 OID 61450344)
-- Dependencies: 205 205 205
-- Name: un_assoccl_modulo; Type: CONSTRAINT; Schema: basico_perfil; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_modulo
    ADD CONSTRAINT un_assoccl_modulo UNIQUE (id_modulo, id_perfil);


SET search_path = basico_pessoa, pg_catalog;

--
-- TOC entry 3228 (class 2606 OID 61450287)
-- Dependencies: 197 197
-- Name: login_login_key; Type: CONSTRAINT; Schema: basico_pessoa; Owner: -; Tablespace: 
--

ALTER TABLE ONLY login
    ADD CONSTRAINT login_login_key UNIQUE (login);


--
-- TOC entry 3247 (class 2606 OID 61450330)
-- Dependencies: 203 203
-- Name: pk_assoc_dados; Type: CONSTRAINT; Schema: basico_pessoa; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_dados
    ADD CONSTRAINT pk_assoc_dados PRIMARY KEY (id);


--
-- TOC entry 3240 (class 2606 OID 61450314)
-- Dependencies: 201 201
-- Name: pk_assoccl_perfil; Type: CONSTRAINT; Schema: basico_pessoa; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_perfil
    ADD CONSTRAINT pk_assoccl_perfil PRIMARY KEY (id);


--
-- TOC entry 3235 (class 2606 OID 61450300)
-- Dependencies: 199 199
-- Name: pk_assoccl_vinculo_profissional; Type: CONSTRAINT; Schema: basico_pessoa; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_tipo_vinculo
    ADD CONSTRAINT pk_assoccl_vinculo_profissional PRIMARY KEY (id);


--
-- TOC entry 3230 (class 2606 OID 61450285)
-- Dependencies: 197 197
-- Name: pk_login; Type: CONSTRAINT; Schema: basico_pessoa; Owner: -; Tablespace: 
--

ALTER TABLE ONLY login
    ADD CONSTRAINT pk_login PRIMARY KEY (id);


--
-- TOC entry 3242 (class 2606 OID 61450316)
-- Dependencies: 201 201 201
-- Name: un_assoccl_pessoa_perfil; Type: CONSTRAINT; Schema: basico_pessoa; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_perfil
    ADD CONSTRAINT un_assoccl_pessoa_perfil UNIQUE (id_pessoa, id_perfil);


SET search_path = basico_pessoa_juridica, pg_catalog;

--
-- TOC entry 3224 (class 2606 OID 61450266)
-- Dependencies: 195 195
-- Name: pk_assoc_banco; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_banco
    ADD CONSTRAINT pk_assoc_banco PRIMARY KEY (id);


--
-- TOC entry 3218 (class 2606 OID 61450252)
-- Dependencies: 193 193
-- Name: pk_assoc_dados_pj; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_dados
    ADD CONSTRAINT pk_assoc_dados_pj PRIMARY KEY (id);


--
-- TOC entry 3209 (class 2606 OID 61450237)
-- Dependencies: 191 191
-- Name: pk_assocag_incubadora; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assocag_incubadora
    ADD CONSTRAINT pk_assocag_incubadora PRIMARY KEY (id);


--
-- TOC entry 3201 (class 2606 OID 61450223)
-- Dependencies: 189 189
-- Name: pk_assocag_parceria; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assocag_parceria
    ADD CONSTRAINT pk_assocag_parceria PRIMARY KEY (id);


--
-- TOC entry 3191 (class 2606 OID 61450206)
-- Dependencies: 187 187
-- Name: pk_assoccl_area_economia; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_area_economia
    ADD CONSTRAINT pk_assoccl_area_economia PRIMARY KEY (id);


--
-- TOC entry 3184 (class 2606 OID 61450192)
-- Dependencies: 185 185
-- Name: pk_assoccl_capital_social; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_capital_social
    ADD CONSTRAINT pk_assoccl_capital_social PRIMARY KEY (id);


--
-- TOC entry 3177 (class 2606 OID 61450177)
-- Dependencies: 183 183
-- Name: pk_assoccl_faturamento; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_faturamento
    ADD CONSTRAINT pk_assoccl_faturamento PRIMARY KEY (id);


--
-- TOC entry 3170 (class 2606 OID 61450162)
-- Dependencies: 181 181
-- Name: pk_assoccl_quadro_funcionario; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_quadro_funcionario
    ADD CONSTRAINT pk_assoccl_quadro_funcionario PRIMARY KEY (id);


--
-- TOC entry 3164 (class 2606 OID 61450149)
-- Dependencies: 179 179
-- Name: pk_capital_social; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY capital_social
    ADD CONSTRAINT pk_capital_social PRIMARY KEY (id);


--
-- TOC entry 3158 (class 2606 OID 61450133)
-- Dependencies: 177 177
-- Name: pk_natureza; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY natureza
    ADD CONSTRAINT pk_natureza PRIMARY KEY (id);


--
-- TOC entry 3172 (class 2606 OID 61450164)
-- Dependencies: 181 181 181 181 181
-- Name: un_assoc_quadro_funcionarios; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_quadro_funcionario
    ADD CONSTRAINT un_assoc_quadro_funcionarios UNIQUE (id_categoria, id_pessoa_juridica, id_titulacao, id_area_conhecimento_predom);


--
-- TOC entry 3203 (class 2606 OID 61450225)
-- Dependencies: 189 189 189 189 189
-- Name: un_assocag_parceria; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assocag_parceria
    ADD CONSTRAINT un_assocag_parceria UNIQUE (id_categoria, id_pessoa_juridica, id_pessoa_juridica_parceira, id_assocag_parceria);


--
-- TOC entry 3193 (class 2606 OID 61450208)
-- Dependencies: 187 187 187
-- Name: un_assoccl_area_economia; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_area_economia
    ADD CONSTRAINT un_assoccl_area_economia UNIQUE (id_area_economia, id_pessoa_juridica);


--
-- TOC entry 3186 (class 2606 OID 61450194)
-- Dependencies: 185 185 185
-- Name: un_assoccl_capital_social; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_capital_social
    ADD CONSTRAINT un_assoccl_capital_social UNIQUE (id_pessoa_juridica, id_capital_social);


--
-- TOC entry 3179 (class 2606 OID 61450179)
-- Dependencies: 183 183 183 183 183
-- Name: un_assoccl_faturamento; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_faturamento
    ADD CONSTRAINT un_assoccl_faturamento UNIQUE (id_categoria, id_pessoa_juridica, ano_fiscal, mes_fiscal);


--
-- TOC entry 3211 (class 2606 OID 61450239)
-- Dependencies: 191 191 191 191
-- Name: un_incubadora; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assocag_incubadora
    ADD CONSTRAINT un_incubadora UNIQUE (id_categoria, id_pessoa_juridica, id_pessoa_juridica_incubada);


SET search_path = basico_sequencia, pg_catalog;

--
-- TOC entry 3149 (class 2606 OID 61450115)
-- Dependencies: 175 175
-- Name: pk_assocsq_acao_aplicacao; Type: CONSTRAINT; Schema: basico_sequencia; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assocsq_acao_aplicacao
    ADD CONSTRAINT pk_assocsq_acao_aplicacao PRIMARY KEY (id);


--
-- TOC entry 3151 (class 2606 OID 61450117)
-- Dependencies: 175 175 175 175
-- Name: un_assocsq_acao_aplicacao; Type: CONSTRAINT; Schema: basico_sequencia; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assocsq_acao_aplicacao
    ADD CONSTRAINT un_assocsq_acao_aplicacao UNIQUE (id_sequencia, id_acao_aplicacao, passo);


SET search_path = basico_template, pg_catalog;

--
-- TOC entry 3131 (class 2606 OID 61450083)
-- Dependencies: 171 171
-- Name: pk_assoccl_output; Type: CONSTRAINT; Schema: basico_template; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_output
    ADD CONSTRAINT pk_assoccl_output PRIMARY KEY (id);


--
-- TOC entry 3138 (class 2606 OID 61450097)
-- Dependencies: 173 173
-- Name: pk_template_assoccl_include; Type: CONSTRAINT; Schema: basico_template; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT pk_template_assoccl_include PRIMARY KEY (id);


--
-- TOC entry 3140 (class 2606 OID 61450099)
-- Dependencies: 173 173 173
-- Name: un_assoccl_include_template; Type: CONSTRAINT; Schema: basico_template; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT un_assoccl_include_template UNIQUE (id_template, id_include);


--
-- TOC entry 3133 (class 2606 OID 61450085)
-- Dependencies: 171 171 171
-- Name: un_assoccl_output; Type: CONSTRAINT; Schema: basico_template; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_output
    ADD CONSTRAINT un_assoccl_output UNIQUE (id_template, id_output);


SET search_path = basico_validator, pg_catalog;

--
-- TOC entry 3126 (class 2606 OID 61450071)
-- Dependencies: 169 169
-- Name: pk_validator_grupo; Type: CONSTRAINT; Schema: basico_validator; Owner: -; Tablespace: 
--

ALTER TABLE ONLY grupo
    ADD CONSTRAINT pk_validator_grupo PRIMARY KEY (id);


SET search_path = basico_validator_grupo, pg_catalog;

--
-- TOC entry 3120 (class 2606 OID 61450055)
-- Dependencies: 167 167
-- Name: pk_validator_assocag_grupo; Type: CONSTRAINT; Schema: basico_validator_grupo; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assocag_grupo
    ADD CONSTRAINT pk_validator_assocag_grupo PRIMARY KEY (id);


SET search_path = basico, pg_catalog;

--
-- TOC entry 3975 (class 1259 OID 61453625)
-- Dependencies: 401
-- Name: acao_aplicacao_action; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX acao_aplicacao_action ON acao_aplicacao USING btree (action);


--
-- TOC entry 3976 (class 1259 OID 61453626)
-- Dependencies: 401
-- Name: acao_aplicacao_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX acao_aplicacao_constante_textual ON acao_aplicacao USING btree (constante_textual);


--
-- TOC entry 3977 (class 1259 OID 61453624)
-- Dependencies: 401
-- Name: acao_aplicacao_controller; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX acao_aplicacao_controller ON acao_aplicacao USING btree (controller);


--
-- TOC entry 3978 (class 1259 OID 61453622)
-- Dependencies: 401
-- Name: acao_aplicacao_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX acao_aplicacao_id ON acao_aplicacao USING btree (id);


--
-- TOC entry 3979 (class 1259 OID 61453623)
-- Dependencies: 401
-- Name: acao_aplicacao_id_modulo; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX acao_aplicacao_id_modulo ON acao_aplicacao USING btree (id_modulo);


--
-- TOC entry 3966 (class 1259 OID 61453620)
-- Dependencies: 399
-- Name: acao_evento_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX acao_evento_constante_textual ON acao_evento USING btree (constante_textual);


--
-- TOC entry 3967 (class 1259 OID 61453621)
-- Dependencies: 399
-- Name: acao_evento_constante_textual_descricao; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX acao_evento_constante_textual_descricao ON acao_evento USING btree (constante_textual_descricao);


--
-- TOC entry 3968 (class 1259 OID 61453617)
-- Dependencies: 399
-- Name: acao_evento_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX acao_evento_id ON acao_evento USING btree (id);


--
-- TOC entry 3969 (class 1259 OID 61453618)
-- Dependencies: 399
-- Name: acao_evento_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX acao_evento_id_categoria ON acao_evento USING btree (id_categoria);


--
-- TOC entry 3970 (class 1259 OID 61453619)
-- Dependencies: 399
-- Name: acao_evento_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX acao_evento_nome ON acao_evento USING btree (nome);


--
-- TOC entry 3955 (class 1259 OID 61453613)
-- Dependencies: 397
-- Name: ajuda_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX ajuda_constante_textual ON ajuda USING btree (constante_textual);


--
-- TOC entry 3956 (class 1259 OID 61453615)
-- Dependencies: 397
-- Name: ajuda_constante_textual_ajuda; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX ajuda_constante_textual_ajuda ON ajuda USING btree (constante_textual_ajuda);


--
-- TOC entry 3957 (class 1259 OID 61453614)
-- Dependencies: 397
-- Name: ajuda_constante_textual_descricao; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX ajuda_constante_textual_descricao ON ajuda USING btree (constante_textual_descricao);


--
-- TOC entry 3958 (class 1259 OID 61453616)
-- Dependencies: 397
-- Name: ajuda_constante_textual_hint; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX ajuda_constante_textual_hint ON ajuda USING btree (constante_textual_hint);


--
-- TOC entry 3959 (class 1259 OID 61453610)
-- Dependencies: 397
-- Name: ajuda_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX ajuda_id ON ajuda USING btree (id);


--
-- TOC entry 3960 (class 1259 OID 61453611)
-- Dependencies: 397
-- Name: ajuda_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX ajuda_id_categoria ON ajuda USING btree (id_categoria);


--
-- TOC entry 3961 (class 1259 OID 61453612)
-- Dependencies: 397
-- Name: ajuda_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX ajuda_nome ON ajuda USING btree (nome);


--
-- TOC entry 3945 (class 1259 OID 61453609)
-- Dependencies: 395
-- Name: area_conhecimento_codigo; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX area_conhecimento_codigo ON area_conhecimento USING btree (codigo);


--
-- TOC entry 3946 (class 1259 OID 61453608)
-- Dependencies: 395
-- Name: area_conhecimento_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX area_conhecimento_constante_textual ON area_conhecimento USING btree (constante_textual);


--
-- TOC entry 3947 (class 1259 OID 61453604)
-- Dependencies: 395
-- Name: area_conhecimento_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX area_conhecimento_id ON area_conhecimento USING btree (id);


--
-- TOC entry 3948 (class 1259 OID 61453605)
-- Dependencies: 395
-- Name: area_conhecimento_id_area_conhecimento_pai; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX area_conhecimento_id_area_conhecimento_pai ON area_conhecimento USING btree (id_area_conhecimento_pai);


--
-- TOC entry 3949 (class 1259 OID 61453606)
-- Dependencies: 395
-- Name: area_conhecimento_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX area_conhecimento_id_categoria ON area_conhecimento USING btree (id_categoria);


--
-- TOC entry 3950 (class 1259 OID 61453607)
-- Dependencies: 395
-- Name: area_conhecimento_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX area_conhecimento_nome ON area_conhecimento USING btree (nome);


--
-- TOC entry 3935 (class 1259 OID 61453603)
-- Dependencies: 393
-- Name: area_economia_codigo; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX area_economia_codigo ON area_economia USING btree (codigo);


--
-- TOC entry 3936 (class 1259 OID 61453602)
-- Dependencies: 393
-- Name: area_economia_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX area_economia_constante_textual ON area_economia USING btree (constante_textual);


--
-- TOC entry 3937 (class 1259 OID 61453598)
-- Dependencies: 393
-- Name: area_economia_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX area_economia_id ON area_economia USING btree (id);


--
-- TOC entry 3938 (class 1259 OID 61453599)
-- Dependencies: 393
-- Name: area_economia_id_area_economia_pai; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX area_economia_id_area_economia_pai ON area_economia USING btree (id_area_economia_pai);


--
-- TOC entry 3939 (class 1259 OID 61453600)
-- Dependencies: 393
-- Name: area_economia_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX area_economia_id_categoria ON area_economia USING btree (id_categoria);


--
-- TOC entry 3940 (class 1259 OID 61453601)
-- Dependencies: 393
-- Name: area_economia_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX area_economia_nome ON area_economia USING btree (nome);


--
-- TOC entry 3925 (class 1259 OID 61453597)
-- Dependencies: 391
-- Name: categoria_codigo; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX categoria_codigo ON categoria USING btree (codigo);


--
-- TOC entry 3926 (class 1259 OID 61453596)
-- Dependencies: 391
-- Name: categoria_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX categoria_constante_textual ON categoria USING btree (constante_textual);


--
-- TOC entry 3927 (class 1259 OID 61453592)
-- Dependencies: 391
-- Name: categoria_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX categoria_id ON categoria USING btree (id);


--
-- TOC entry 3928 (class 1259 OID 61453594)
-- Dependencies: 391
-- Name: categoria_id_categoria_pai; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX categoria_id_categoria_pai ON categoria USING btree (id_categoria_pai);


--
-- TOC entry 3929 (class 1259 OID 61453593)
-- Dependencies: 391
-- Name: categoria_id_tipo_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX categoria_id_tipo_categoria ON categoria USING btree (id_tipo_categoria);


--
-- TOC entry 3930 (class 1259 OID 61453595)
-- Dependencies: 391
-- Name: categoria_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX categoria_nome ON categoria USING btree (nome);


--
-- TOC entry 3916 (class 1259 OID 61453590)
-- Dependencies: 389
-- Name: componente_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX componente_constante_textual ON componente USING btree (constante_textual);


--
-- TOC entry 3917 (class 1259 OID 61453591)
-- Dependencies: 389
-- Name: componente_constante_textual_descricao; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX componente_constante_textual_descricao ON componente USING btree (constante_textual_descricao);


--
-- TOC entry 3918 (class 1259 OID 61453587)
-- Dependencies: 389
-- Name: componente_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX componente_id ON componente USING btree (id);


--
-- TOC entry 3919 (class 1259 OID 61453588)
-- Dependencies: 389
-- Name: componente_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX componente_id_categoria ON componente USING btree (id_categoria);


--
-- TOC entry 3920 (class 1259 OID 61453589)
-- Dependencies: 389
-- Name: componente_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX componente_nome ON componente USING btree (nome);


--
-- TOC entry 3903 (class 1259 OID 61453578)
-- Dependencies: 387
-- Name: cpg_arquivo_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX cpg_arquivo_id ON cpg_arquivo USING btree (id);


--
-- TOC entry 3904 (class 1259 OID 61453579)
-- Dependencies: 387
-- Name: cpg_arquivo_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_arquivo_id_categoria ON cpg_arquivo USING btree (id_categoria);


--
-- TOC entry 3905 (class 1259 OID 61453580)
-- Dependencies: 387
-- Name: cpg_arquivo_id_generico_proprietario; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_arquivo_id_generico_proprietario ON cpg_arquivo USING btree (id_generico_proprietario);


--
-- TOC entry 3906 (class 1259 OID 61453584)
-- Dependencies: 387
-- Name: cpg_arquivo_mime_type; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_arquivo_mime_type ON cpg_arquivo USING btree (mime_type);


--
-- TOC entry 3907 (class 1259 OID 61453581)
-- Dependencies: 387
-- Name: cpg_arquivo_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_arquivo_nome ON cpg_arquivo USING btree (nome);


--
-- TOC entry 3908 (class 1259 OID 61453582)
-- Dependencies: 387
-- Name: cpg_arquivo_nome_original; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_arquivo_nome_original ON cpg_arquivo USING btree (nome_original);


--
-- TOC entry 3909 (class 1259 OID 61453583)
-- Dependencies: 387
-- Name: cpg_arquivo_nome_sugestao; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_arquivo_nome_sugestao ON cpg_arquivo USING btree (nome_sugestao);


--
-- TOC entry 3910 (class 1259 OID 61453586)
-- Dependencies: 387
-- Name: cpg_arquivo_remoto; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_arquivo_remoto ON cpg_arquivo USING btree (remoto);


--
-- TOC entry 3911 (class 1259 OID 61453585)
-- Dependencies: 387
-- Name: cpg_arquivo_uri; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_arquivo_uri ON cpg_arquivo USING btree (uri);


--
-- TOC entry 3893 (class 1259 OID 61453577)
-- Dependencies: 385
-- Name: cpg_codigo_acesso_codigo; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX cpg_codigo_acesso_codigo ON cpg_codigo_acesso USING btree (codigo);


--
-- TOC entry 3894 (class 1259 OID 61453572)
-- Dependencies: 385
-- Name: cpg_codigo_acesso_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX cpg_codigo_acesso_id ON cpg_codigo_acesso USING btree (id);


--
-- TOC entry 3895 (class 1259 OID 61453575)
-- Dependencies: 385
-- Name: cpg_codigo_acesso_id_categoria_acesso; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_codigo_acesso_id_categoria_acesso ON cpg_codigo_acesso USING btree (id_categoria_acesso);


--
-- TOC entry 3896 (class 1259 OID 61453573)
-- Dependencies: 385
-- Name: cpg_codigo_acesso_id_categoria_proprietario; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_codigo_acesso_id_categoria_proprietario ON cpg_codigo_acesso USING btree (id_categoria_proprietario);


--
-- TOC entry 3897 (class 1259 OID 61453576)
-- Dependencies: 385
-- Name: cpg_codigo_acesso_id_generico_acesso; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_codigo_acesso_id_generico_acesso ON cpg_codigo_acesso USING btree (id_generico_acesso);


--
-- TOC entry 3898 (class 1259 OID 61453574)
-- Dependencies: 385
-- Name: cpg_codigo_acesso_id_generico_proprietario; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_codigo_acesso_id_generico_proprietario ON cpg_codigo_acesso USING btree (id_generico_proprietario);


--
-- TOC entry 3884 (class 1259 OID 61453567)
-- Dependencies: 383
-- Name: cpg_dados_bancarios_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX cpg_dados_bancarios_id ON cpg_dados_bancarios USING btree (id);


--
-- TOC entry 3885 (class 1259 OID 61453568)
-- Dependencies: 383
-- Name: cpg_dados_bancarios_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_dados_bancarios_id_categoria ON cpg_dados_bancarios USING btree (id_categoria);


--
-- TOC entry 3886 (class 1259 OID 61453569)
-- Dependencies: 383
-- Name: cpg_dados_bancarios_id_generico_proprietario; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_dados_bancarios_id_generico_proprietario ON cpg_dados_bancarios USING btree (id_generico_proprietario);


--
-- TOC entry 3887 (class 1259 OID 61453571)
-- Dependencies: 383
-- Name: cpg_dados_bancarios_nome_banco; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_dados_bancarios_nome_banco ON cpg_dados_bancarios USING btree (nome_banco);


--
-- TOC entry 3888 (class 1259 OID 61453570)
-- Dependencies: 383
-- Name: cpg_dados_bancarios_numero_banco; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_dados_bancarios_numero_banco ON cpg_dados_bancarios USING btree (numero_banco);


--
-- TOC entry 3875 (class 1259 OID 61453561)
-- Dependencies: 381
-- Name: cpg_documento_identificacao_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX cpg_documento_identificacao_id ON cpg_documento_identificacao USING btree (id);


--
-- TOC entry 3876 (class 1259 OID 61453563)
-- Dependencies: 381
-- Name: cpg_documento_identificacao_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_documento_identificacao_id_categoria ON cpg_documento_identificacao USING btree (id_categoria);


--
-- TOC entry 3877 (class 1259 OID 61453564)
-- Dependencies: 381
-- Name: cpg_documento_identificacao_id_generico_proprietario; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_documento_identificacao_id_generico_proprietario ON cpg_documento_identificacao USING btree (id_generico_proprietario);


--
-- TOC entry 3878 (class 1259 OID 61453565)
-- Dependencies: 381
-- Name: cpg_documento_identificacao_id_pessoa_juridica_emissor; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_documento_identificacao_id_pessoa_juridica_emissor ON cpg_documento_identificacao USING btree (id_pessoa_juridica_emissor);


--
-- TOC entry 3879 (class 1259 OID 61453566)
-- Dependencies: 381
-- Name: cpg_documento_identificacao_identificador; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_documento_identificacao_identificador ON cpg_documento_identificacao USING btree (identificador);


--
-- TOC entry 3865 (class 1259 OID 61453559)
-- Dependencies: 379
-- Name: cpg_link_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_link_constante_textual ON cpg_link USING btree (constante_textual);


--
-- TOC entry 3866 (class 1259 OID 61453555)
-- Dependencies: 379
-- Name: cpg_link_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX cpg_link_id ON cpg_link USING btree (id);


--
-- TOC entry 3867 (class 1259 OID 61453556)
-- Dependencies: 379
-- Name: cpg_link_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_link_id_categoria ON cpg_link USING btree (id_categoria);


--
-- TOC entry 3868 (class 1259 OID 61453557)
-- Dependencies: 379
-- Name: cpg_link_id_generico_proprietario; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_link_id_generico_proprietario ON cpg_link USING btree (id_generico_proprietario);


--
-- TOC entry 3869 (class 1259 OID 61453558)
-- Dependencies: 379
-- Name: cpg_link_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_link_nome ON cpg_link USING btree (nome);


--
-- TOC entry 3870 (class 1259 OID 61453560)
-- Dependencies: 379
-- Name: cpg_link_url; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_link_url ON cpg_link USING btree (url);


--
-- TOC entry 3857 (class 1259 OID 61453554)
-- Dependencies: 377
-- Name: cpg_produto_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_produto_constante_textual ON cpg_produto USING btree (constante_textual);


--
-- TOC entry 3858 (class 1259 OID 61453549)
-- Dependencies: 377
-- Name: cpg_produto_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX cpg_produto_id ON cpg_produto USING btree (id);


--
-- TOC entry 3859 (class 1259 OID 61453550)
-- Dependencies: 377
-- Name: cpg_produto_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_produto_id_categoria ON cpg_produto USING btree (id_categoria);


--
-- TOC entry 3860 (class 1259 OID 61453552)
-- Dependencies: 377
-- Name: cpg_produto_id_categoria_moeda; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_produto_id_categoria_moeda ON cpg_produto USING btree (id_categoria_moeda);


--
-- TOC entry 3861 (class 1259 OID 61453551)
-- Dependencies: 377
-- Name: cpg_produto_id_generico_proprietario; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_produto_id_generico_proprietario ON cpg_produto USING btree (id_generico_proprietario);


--
-- TOC entry 3862 (class 1259 OID 61453553)
-- Dependencies: 377
-- Name: cpg_produto_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_produto_nome ON cpg_produto USING btree (nome);


--
-- TOC entry 3851 (class 1259 OID 61453545)
-- Dependencies: 375
-- Name: cpg_token_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX cpg_token_id ON cpg_token USING btree (id);


--
-- TOC entry 3852 (class 1259 OID 61453546)
-- Dependencies: 375
-- Name: cpg_token_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_token_id_categoria ON cpg_token USING btree (id_categoria);


--
-- TOC entry 3853 (class 1259 OID 61453547)
-- Dependencies: 375
-- Name: cpg_token_id_generico_proprietario; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_token_id_generico_proprietario ON cpg_token USING btree (id_generico_proprietario);


--
-- TOC entry 3854 (class 1259 OID 61453548)
-- Dependencies: 375
-- Name: cpg_token_token; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX cpg_token_token ON cpg_token USING btree (token);


--
-- TOC entry 3844 (class 1259 OID 61453542)
-- Dependencies: 373
-- Name: dados_biometricos_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX dados_biometricos_id ON dados_biometricos USING btree (id);


--
-- TOC entry 3845 (class 1259 OID 61453543)
-- Dependencies: 373
-- Name: dados_biometricos_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX dados_biometricos_id_categoria ON dados_biometricos USING btree (id_categoria);


--
-- TOC entry 3846 (class 1259 OID 61453544)
-- Dependencies: 373
-- Name: dados_biometricos_id_generico_proprietario; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX dados_biometricos_id_generico_proprietario ON dados_biometricos USING btree (id_generico_proprietario);


--
-- TOC entry 3837 (class 1259 OID 61453541)
-- Dependencies: 371
-- Name: dicionario_expressao_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX dicionario_expressao_constante_textual ON dicionario_expressao USING btree (constante_textual);


--
-- TOC entry 3838 (class 1259 OID 61453539)
-- Dependencies: 371
-- Name: dicionario_expressao_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX dicionario_expressao_id ON dicionario_expressao USING btree (id);


--
-- TOC entry 3839 (class 1259 OID 61453540)
-- Dependencies: 371
-- Name: dicionario_expressao_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX dicionario_expressao_id_categoria ON dicionario_expressao USING btree (id_categoria);


--
-- TOC entry 3829 (class 1259 OID 61453538)
-- Dependencies: 369
-- Name: evento_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX evento_constante_textual ON evento USING btree (constante_textual);


--
-- TOC entry 3832 (class 1259 OID 61453535)
-- Dependencies: 369
-- Name: evento_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX evento_id ON evento USING btree (id);


--
-- TOC entry 3833 (class 1259 OID 61453536)
-- Dependencies: 369
-- Name: evento_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX evento_id_categoria ON evento USING btree (id_categoria);


--
-- TOC entry 3834 (class 1259 OID 61453537)
-- Dependencies: 369
-- Name: evento_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX evento_nome ON evento USING btree (nome);


--
-- TOC entry 3819 (class 1259 OID 61453532)
-- Dependencies: 367
-- Name: filter_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX filter_constante_textual ON filter USING btree (constante_textual);


--
-- TOC entry 3820 (class 1259 OID 61453533)
-- Dependencies: 367
-- Name: filter_constante_textual_descricao; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX filter_constante_textual_descricao ON filter USING btree (constante_textual_descricao);


--
-- TOC entry 3821 (class 1259 OID 61453528)
-- Dependencies: 367
-- Name: filter_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX filter_id ON filter USING btree (id);


--
-- TOC entry 3822 (class 1259 OID 61453529)
-- Dependencies: 367
-- Name: filter_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX filter_id_categoria ON filter USING btree (id_categoria);


--
-- TOC entry 3823 (class 1259 OID 61453530)
-- Dependencies: 367
-- Name: filter_id_componente; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX filter_id_componente ON filter USING btree (id_componente);


--
-- TOC entry 3824 (class 1259 OID 61453531)
-- Dependencies: 367
-- Name: filter_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX filter_nome ON filter USING btree (nome);


--
-- TOC entry 3808 (class 1259 OID 61453526)
-- Dependencies: 365
-- Name: formulario_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX formulario_constante_textual ON formulario USING btree (constante_textual);


--
-- TOC entry 3809 (class 1259 OID 61453527)
-- Dependencies: 365
-- Name: formulario_form_name; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX formulario_form_name ON formulario USING btree (form_name);


--
-- TOC entry 3810 (class 1259 OID 61453521)
-- Dependencies: 365
-- Name: formulario_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX formulario_id ON formulario USING btree (id);


--
-- TOC entry 3811 (class 1259 OID 61453524)
-- Dependencies: 365
-- Name: formulario_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX formulario_id_categoria ON formulario USING btree (id_categoria);


--
-- TOC entry 3812 (class 1259 OID 61453523)
-- Dependencies: 365
-- Name: formulario_id_componente; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX formulario_id_componente ON formulario USING btree (id_componente);


--
-- TOC entry 3813 (class 1259 OID 61453522)
-- Dependencies: 365
-- Name: formulario_id_formulario_pai; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX formulario_id_formulario_pai ON formulario USING btree (id_formulario_pai);


--
-- TOC entry 3814 (class 1259 OID 61453525)
-- Dependencies: 365
-- Name: formulario_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX formulario_nome ON formulario USING btree (nome);


--
-- TOC entry 3797 (class 1259 OID 61453519)
-- Dependencies: 363
-- Name: include_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX include_constante_textual ON include USING btree (constante_textual);


--
-- TOC entry 3798 (class 1259 OID 61453520)
-- Dependencies: 363
-- Name: include_constante_textual_descricao; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX include_constante_textual_descricao ON include USING btree (constante_textual_descricao);


--
-- TOC entry 3799 (class 1259 OID 61453516)
-- Dependencies: 363
-- Name: include_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX include_id ON include USING btree (id);


--
-- TOC entry 3800 (class 1259 OID 61453517)
-- Dependencies: 363
-- Name: include_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX include_id_categoria ON include USING btree (id_categoria);


--
-- TOC entry 3801 (class 1259 OID 61453518)
-- Dependencies: 363
-- Name: include_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX include_nome ON include USING btree (nome);


--
-- TOC entry 3792 (class 1259 OID 61453513)
-- Dependencies: 361
-- Name: log_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX log_id ON log USING btree (id);


--
-- TOC entry 3793 (class 1259 OID 61453515)
-- Dependencies: 361
-- Name: log_id_assoccl_perfil; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX log_id_assoccl_perfil ON log USING btree (id_assoccl_perfil);


--
-- TOC entry 3794 (class 1259 OID 61453514)
-- Dependencies: 361
-- Name: log_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX log_id_categoria ON log USING btree (id_categoria);


--
-- TOC entry 3787 (class 1259 OID 61453510)
-- Dependencies: 359
-- Name: mensagem_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX mensagem_id ON mensagem USING btree (id);


--
-- TOC entry 3788 (class 1259 OID 61453511)
-- Dependencies: 359
-- Name: mensagem_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX mensagem_id_categoria ON mensagem USING btree (id_categoria);


--
-- TOC entry 3789 (class 1259 OID 61453512)
-- Dependencies: 359
-- Name: mensagem_id_generico_proprietario; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX mensagem_id_generico_proprietario ON mensagem USING btree (id_generico_proprietario);


--
-- TOC entry 3779 (class 1259 OID 61453509)
-- Dependencies: 357
-- Name: metodo_validacao_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX metodo_validacao_constante_textual ON metodo_validacao USING btree (constante_textual);


--
-- TOC entry 3780 (class 1259 OID 61453506)
-- Dependencies: 357
-- Name: metodo_validacao_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX metodo_validacao_id ON metodo_validacao USING btree (id);


--
-- TOC entry 3781 (class 1259 OID 61453507)
-- Dependencies: 357
-- Name: metodo_validacao_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX metodo_validacao_id_categoria ON metodo_validacao USING btree (id_categoria);


--
-- TOC entry 3782 (class 1259 OID 61453508)
-- Dependencies: 357
-- Name: metodo_validacao_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX metodo_validacao_nome ON metodo_validacao USING btree (nome);


--
-- TOC entry 3773 (class 1259 OID 61453505)
-- Dependencies: 355
-- Name: modulo_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX modulo_constante_textual ON modulo USING btree (constante_textual);


--
-- TOC entry 3774 (class 1259 OID 61453502)
-- Dependencies: 355
-- Name: modulo_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX modulo_id ON modulo USING btree (id);


--
-- TOC entry 3775 (class 1259 OID 61453503)
-- Dependencies: 355
-- Name: modulo_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX modulo_id_categoria ON modulo USING btree (id_categoria);


--
-- TOC entry 3776 (class 1259 OID 61453504)
-- Dependencies: 355
-- Name: modulo_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX modulo_nome ON modulo USING btree (nome);


--
-- TOC entry 3767 (class 1259 OID 61453501)
-- Dependencies: 353
-- Name: output_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX output_constante_textual ON output USING btree (constante_textual);


--
-- TOC entry 3768 (class 1259 OID 61453498)
-- Dependencies: 353
-- Name: output_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX output_id ON output USING btree (id);


--
-- TOC entry 3769 (class 1259 OID 61453499)
-- Dependencies: 353
-- Name: output_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX output_id_categoria ON output USING btree (id_categoria);


--
-- TOC entry 3770 (class 1259 OID 61453500)
-- Dependencies: 353
-- Name: output_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX output_nome ON output USING btree (nome);


--
-- TOC entry 3759 (class 1259 OID 61453497)
-- Dependencies: 351
-- Name: perfil_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX perfil_constante_textual ON perfil USING btree (constante_textual);


--
-- TOC entry 3760 (class 1259 OID 61453494)
-- Dependencies: 351
-- Name: perfil_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX perfil_id ON perfil USING btree (id);


--
-- TOC entry 3761 (class 1259 OID 61453495)
-- Dependencies: 351
-- Name: perfil_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX perfil_id_categoria ON perfil USING btree (id_categoria);


--
-- TOC entry 3762 (class 1259 OID 61453496)
-- Dependencies: 351
-- Name: perfil_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX perfil_nome ON perfil USING btree (nome);


--
-- TOC entry 3756 (class 1259 OID 61453493)
-- Dependencies: 349
-- Name: pessoa_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX pessoa_id ON pessoa USING btree (id);


--
-- TOC entry 3750 (class 1259 OID 61453489)
-- Dependencies: 347
-- Name: pessoa_juridica_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX pessoa_juridica_id ON pessoa_juridica USING btree (id);


--
-- TOC entry 3751 (class 1259 OID 61453490)
-- Dependencies: 347
-- Name: pessoa_juridica_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX pessoa_juridica_id_categoria ON pessoa_juridica USING btree (id_categoria);


--
-- TOC entry 3752 (class 1259 OID 61453491)
-- Dependencies: 347
-- Name: pessoa_juridica_id_natureza; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX pessoa_juridica_id_natureza ON pessoa_juridica USING btree (id_natureza);


--
-- TOC entry 3753 (class 1259 OID 61453492)
-- Dependencies: 347
-- Name: pessoa_juridica_id_pessoa_responsavel_cadastro; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX pessoa_juridica_id_pessoa_responsavel_cadastro ON pessoa_juridica USING btree (id_pessoa_responsavel_cadastro);


--
-- TOC entry 3745 (class 1259 OID 61453488)
-- Dependencies: 345
-- Name: profissao_codigo; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX profissao_codigo ON profissao USING btree (codigo);


--
-- TOC entry 3746 (class 1259 OID 61453487)
-- Dependencies: 345
-- Name: profissao_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX profissao_constante_textual ON profissao USING btree (constante_textual);


--
-- TOC entry 3747 (class 1259 OID 61453484)
-- Dependencies: 345
-- Name: profissao_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX profissao_id ON profissao USING btree (id);


--
-- TOC entry 3748 (class 1259 OID 61453485)
-- Dependencies: 345
-- Name: profissao_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX profissao_id_categoria ON profissao USING btree (id_categoria);


--
-- TOC entry 3749 (class 1259 OID 61453486)
-- Dependencies: 345
-- Name: profissao_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX profissao_nome ON profissao USING btree (nome);


--
-- TOC entry 3737 (class 1259 OID 61453483)
-- Dependencies: 343
-- Name: sequencia_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX sequencia_constante_textual ON sequencia USING btree (constante_textual);


--
-- TOC entry 3738 (class 1259 OID 61453480)
-- Dependencies: 343
-- Name: sequencia_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX sequencia_id ON sequencia USING btree (id);


--
-- TOC entry 3739 (class 1259 OID 61453481)
-- Dependencies: 343
-- Name: sequencia_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX sequencia_id_categoria ON sequencia USING btree (id_categoria);


--
-- TOC entry 3740 (class 1259 OID 61453482)
-- Dependencies: 343
-- Name: sequencia_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX sequencia_nome ON sequencia USING btree (nome);


--
-- TOC entry 3731 (class 1259 OID 61453479)
-- Dependencies: 341
-- Name: template_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX template_constante_textual ON template USING btree (constante_textual);


--
-- TOC entry 3732 (class 1259 OID 61453476)
-- Dependencies: 341
-- Name: template_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX template_id ON template USING btree (id);


--
-- TOC entry 3733 (class 1259 OID 61453477)
-- Dependencies: 341
-- Name: template_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX template_id_categoria ON template USING btree (id_categoria);


--
-- TOC entry 3734 (class 1259 OID 61453478)
-- Dependencies: 341
-- Name: template_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX template_nome ON template USING btree (nome);


--
-- TOC entry 3722 (class 1259 OID 61453475)
-- Dependencies: 339
-- Name: tipo_categoria_codigo; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX tipo_categoria_codigo ON tipo_categoria USING btree (codigo);


--
-- TOC entry 3723 (class 1259 OID 61453474)
-- Dependencies: 339
-- Name: tipo_categoria_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX tipo_categoria_constante_textual ON tipo_categoria USING btree (constante_textual);


--
-- TOC entry 3724 (class 1259 OID 61453471)
-- Dependencies: 339
-- Name: tipo_categoria_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX tipo_categoria_id ON tipo_categoria USING btree (id);


--
-- TOC entry 3725 (class 1259 OID 61453472)
-- Dependencies: 339
-- Name: tipo_categoria_id_tipo_categoria_pai; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX tipo_categoria_id_tipo_categoria_pai ON tipo_categoria USING btree (id_tipo_categoria_pai);


--
-- TOC entry 3726 (class 1259 OID 61453473)
-- Dependencies: 339
-- Name: tipo_categoria_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX tipo_categoria_nome ON tipo_categoria USING btree (nome);


--
-- TOC entry 3712 (class 1259 OID 61453469)
-- Dependencies: 337
-- Name: validator_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX validator_constante_textual ON validator USING btree (constante_textual);


--
-- TOC entry 3713 (class 1259 OID 61453470)
-- Dependencies: 337
-- Name: validator_constante_textual_descricao; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX validator_constante_textual_descricao ON validator USING btree (constante_textual_descricao);


--
-- TOC entry 3714 (class 1259 OID 61453465)
-- Dependencies: 337
-- Name: validator_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX validator_id ON validator USING btree (id);


--
-- TOC entry 3715 (class 1259 OID 61453466)
-- Dependencies: 337
-- Name: validator_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX validator_id_categoria ON validator USING btree (id_categoria);


--
-- TOC entry 3716 (class 1259 OID 61453467)
-- Dependencies: 337
-- Name: validator_id_componente; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX validator_id_componente ON validator USING btree (id_componente);


--
-- TOC entry 3717 (class 1259 OID 61453468)
-- Dependencies: 337
-- Name: validator_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX validator_nome ON validator USING btree (nome);


SET search_path = basico_acao_aplic_assoc_visao, pg_catalog;

--
-- TOC entry 3704 (class 1259 OID 61453461)
-- Dependencies: 335
-- Name: assoccl_atrib_met_rec_post_id; Type: INDEX; Schema: basico_acao_aplic_assoc_visao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_atrib_met_rec_post_id ON assoccl_atrib_met_rec_post USING btree (id);


--
-- TOC entry 3705 (class 1259 OID 61453462)
-- Dependencies: 335
-- Name: assoccl_atrib_met_rec_post_id_assoc_visao_ref_post; Type: INDEX; Schema: basico_acao_aplic_assoc_visao; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_atrib_met_rec_post_id_assoc_visao_ref_post ON assoccl_atrib_met_rec_post USING btree (id_assoc_visao_ref_post);


--
-- TOC entry 3706 (class 1259 OID 61453463)
-- Dependencies: 335
-- Name: assoccl_atrib_met_rec_post_id_atributo_metodo_recup_post; Type: INDEX; Schema: basico_acao_aplic_assoc_visao; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_atrib_met_rec_post_id_atributo_metodo_recup_post ON assoccl_atrib_met_rec_post USING btree (id_atributo_metodo_recup_post);


--
-- TOC entry 3707 (class 1259 OID 61453464)
-- Dependencies: 335
-- Name: assoccl_atrib_met_rec_post_ordem; Type: INDEX; Schema: basico_acao_aplic_assoc_visao; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_atrib_met_rec_post_ordem ON assoccl_atrib_met_rec_post USING btree (ordem);


--
-- TOC entry 3696 (class 1259 OID 61453459)
-- Dependencies: 333
-- Name: atributo_metodo_recup_post_atributo; Type: INDEX; Schema: basico_acao_aplic_assoc_visao; Owner: -; Tablespace: 
--

CREATE INDEX atributo_metodo_recup_post_atributo ON atributo_metodo_recup_post USING btree (atributo);


--
-- TOC entry 3697 (class 1259 OID 61453457)
-- Dependencies: 333
-- Name: atributo_metodo_recup_post_id; Type: INDEX; Schema: basico_acao_aplic_assoc_visao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX atributo_metodo_recup_post_id ON atributo_metodo_recup_post USING btree (id);


--
-- TOC entry 3698 (class 1259 OID 61453458)
-- Dependencies: 333
-- Name: atributo_metodo_recup_post_id_categoria; Type: INDEX; Schema: basico_acao_aplic_assoc_visao; Owner: -; Tablespace: 
--

CREATE INDEX atributo_metodo_recup_post_id_categoria ON atributo_metodo_recup_post USING btree (id_categoria);


--
-- TOC entry 3699 (class 1259 OID 61453460)
-- Dependencies: 333
-- Name: atributo_metodo_recup_post_metodo_recuperacao; Type: INDEX; Schema: basico_acao_aplic_assoc_visao; Owner: -; Tablespace: 
--

CREATE INDEX atributo_metodo_recup_post_metodo_recuperacao ON atributo_metodo_recup_post USING btree (metodo_recuperacao);


SET search_path = basico_acao_aplicacao, pg_catalog;

--
-- TOC entry 3687 (class 1259 OID 61453453)
-- Dependencies: 331
-- Name: assoc_visao_constante_textual; Type: INDEX; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_visao_constante_textual ON assoc_visao USING btree (constante_textual);


--
-- TOC entry 3688 (class 1259 OID 61453456)
-- Dependencies: 331
-- Name: assoc_visao_constante_textual_mensagem; Type: INDEX; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_visao_constante_textual_mensagem ON assoc_visao USING btree (constante_textual_mensagem);


--
-- TOC entry 3689 (class 1259 OID 61453455)
-- Dependencies: 331
-- Name: assoc_visao_constante_textual_subtitulo; Type: INDEX; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_visao_constante_textual_subtitulo ON assoc_visao USING btree (constante_textual_subtitulo);


--
-- TOC entry 3690 (class 1259 OID 61453454)
-- Dependencies: 331
-- Name: assoc_visao_constante_textual_titulo; Type: INDEX; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_visao_constante_textual_titulo ON assoc_visao USING btree (constante_textual_titulo);


--
-- TOC entry 3691 (class 1259 OID 61453450)
-- Dependencies: 331
-- Name: assoc_visao_id; Type: INDEX; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_visao_id ON assoc_visao USING btree (id);


--
-- TOC entry 3692 (class 1259 OID 61453452)
-- Dependencies: 331
-- Name: assoc_visao_id_acao_aplicacao; Type: INDEX; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_visao_id_acao_aplicacao ON assoc_visao USING btree (id_acao_aplicacao);


--
-- TOC entry 3693 (class 1259 OID 61453451)
-- Dependencies: 331
-- Name: assoc_visao_id_categoria; Type: INDEX; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_visao_id_categoria ON assoc_visao USING btree (id_categoria);


--
-- TOC entry 3679 (class 1259 OID 61453446)
-- Dependencies: 329
-- Name: assoccl_metodo_validacao_id; Type: INDEX; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_metodo_validacao_id ON assoccl_metodo_validacao USING btree (id);


--
-- TOC entry 3680 (class 1259 OID 61453447)
-- Dependencies: 329
-- Name: assoccl_metodo_validacao_id_acao_aplicacao; Type: INDEX; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_metodo_validacao_id_acao_aplicacao ON assoccl_metodo_validacao USING btree (id_acao_aplicacao);


--
-- TOC entry 3681 (class 1259 OID 61453448)
-- Dependencies: 329
-- Name: assoccl_metodo_validacao_id_metodo_validacao; Type: INDEX; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_metodo_validacao_id_metodo_validacao ON assoccl_metodo_validacao USING btree (id_metodo_validacao);


--
-- TOC entry 3682 (class 1259 OID 61453449)
-- Dependencies: 329
-- Name: assoccl_metodo_validacao_id_perfil; Type: INDEX; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_metodo_validacao_id_perfil ON assoccl_metodo_validacao USING btree (id_perfil);


--
-- TOC entry 3672 (class 1259 OID 61453443)
-- Dependencies: 327
-- Name: assoccl_perfil_id; Type: INDEX; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_perfil_id ON assoccl_perfil USING btree (id);


--
-- TOC entry 3673 (class 1259 OID 61453444)
-- Dependencies: 327
-- Name: assoccl_perfil_id_acao_aplicacao; Type: INDEX; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_perfil_id_acao_aplicacao ON assoccl_perfil USING btree (id_acao_aplicacao);


--
-- TOC entry 3674 (class 1259 OID 61453445)
-- Dependencies: 327
-- Name: assoccl_perfil_id_perfil; Type: INDEX; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_perfil_id_perfil ON assoccl_perfil USING btree (id_perfil);


SET search_path = basico_acao_evento, pg_catalog;

--
-- TOC entry 3665 (class 1259 OID 61453440)
-- Dependencies: 325
-- Name: assoccl_include_id; Type: INDEX; Schema: basico_acao_evento; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_include_id ON assoccl_include USING btree (id);


--
-- TOC entry 3666 (class 1259 OID 61453441)
-- Dependencies: 325
-- Name: assoccl_include_id_acao_evento; Type: INDEX; Schema: basico_acao_evento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_acao_evento ON assoccl_include USING btree (id_acao_evento);


--
-- TOC entry 3667 (class 1259 OID 61453442)
-- Dependencies: 325
-- Name: assoccl_include_id_include; Type: INDEX; Schema: basico_acao_evento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_include ON assoccl_include USING btree (id_include);


SET search_path = basico_ajuda, pg_catalog;

--
-- TOC entry 3658 (class 1259 OID 61453437)
-- Dependencies: 323
-- Name: assoccl_link_id; Type: INDEX; Schema: basico_ajuda; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_link_id ON assoccl_link USING btree (id);


--
-- TOC entry 3659 (class 1259 OID 61453438)
-- Dependencies: 323
-- Name: assoccl_link_id_ajuda; Type: INDEX; Schema: basico_ajuda; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_link_id_ajuda ON assoccl_link USING btree (id_ajuda);


--
-- TOC entry 3660 (class 1259 OID 61453439)
-- Dependencies: 323
-- Name: assoccl_link_id_link; Type: INDEX; Schema: basico_ajuda; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_link_id_link ON assoccl_link USING btree (id_link);


SET search_path = basico_assoc_banco, pg_catalog;

--
-- TOC entry 3646 (class 1259 OID 61453436)
-- Dependencies: 321
-- Name: assoc_tipo_conta_codigo; Type: INDEX; Schema: basico_assoc_banco; Owner: -; Tablespace: 
--

CREATE INDEX assoc_tipo_conta_codigo ON assoc_tipo_conta USING btree (codigo);


--
-- TOC entry 3647 (class 1259 OID 61453435)
-- Dependencies: 321
-- Name: assoc_tipo_conta_constante_textual; Type: INDEX; Schema: basico_assoc_banco; Owner: -; Tablespace: 
--

CREATE INDEX assoc_tipo_conta_constante_textual ON assoc_tipo_conta USING btree (constante_textual);


--
-- TOC entry 3648 (class 1259 OID 61453431)
-- Dependencies: 321
-- Name: assoc_tipo_conta_id; Type: INDEX; Schema: basico_assoc_banco; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_tipo_conta_id ON assoc_tipo_conta USING btree (id);


--
-- TOC entry 3649 (class 1259 OID 61453432)
-- Dependencies: 321
-- Name: assoc_tipo_conta_id_assoc_banco; Type: INDEX; Schema: basico_assoc_banco; Owner: -; Tablespace: 
--

CREATE INDEX assoc_tipo_conta_id_assoc_banco ON assoc_tipo_conta USING btree (id_assoc_banco);


--
-- TOC entry 3650 (class 1259 OID 61453433)
-- Dependencies: 321
-- Name: assoc_tipo_conta_id_categoria; Type: INDEX; Schema: basico_assoc_banco; Owner: -; Tablespace: 
--

CREATE INDEX assoc_tipo_conta_id_categoria ON assoc_tipo_conta USING btree (id_categoria);


--
-- TOC entry 3651 (class 1259 OID 61453434)
-- Dependencies: 321
-- Name: assoc_tipo_conta_nome; Type: INDEX; Schema: basico_assoc_banco; Owner: -; Tablespace: 
--

CREATE INDEX assoc_tipo_conta_nome ON assoc_tipo_conta USING btree (nome);


SET search_path = basico_assoc_chave_estrangeira, pg_catalog;

--
-- TOC entry 3641 (class 1259 OID 61453430)
-- Dependencies: 319
-- Name: relacao_campo_origem; Type: INDEX; Schema: basico_assoc_chave_estrangeira; Owner: -; Tablespace: 
--

CREATE INDEX relacao_campo_origem ON relacao USING btree (campo_origem);


--
-- TOC entry 3642 (class 1259 OID 61453428)
-- Dependencies: 319
-- Name: relacao_id; Type: INDEX; Schema: basico_assoc_chave_estrangeira; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX relacao_id ON relacao USING btree (id);


--
-- TOC entry 3643 (class 1259 OID 61453429)
-- Dependencies: 319
-- Name: relacao_tabela_origem; Type: INDEX; Schema: basico_assoc_chave_estrangeira; Owner: -; Tablespace: 
--

CREATE INDEX relacao_tabela_origem ON relacao USING btree (tabela_origem);


SET search_path = basico_assoc_dados_profis, pg_catalog;

--
-- TOC entry 3632 (class 1259 OID 61453425)
-- Dependencies: 317
-- Name: assoccl_area_conhecimento_id; Type: INDEX; Schema: basico_assoc_dados_profis; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_area_conhecimento_id ON assoccl_area_conhecimento USING btree (id);


--
-- TOC entry 3633 (class 1259 OID 61453426)
-- Dependencies: 317
-- Name: assoccl_area_conhecimento_id_area_conhecimento; Type: INDEX; Schema: basico_assoc_dados_profis; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_area_conhecimento_id_area_conhecimento ON assoccl_area_conhecimento USING btree (id_area_conhecimento);


--
-- TOC entry 3634 (class 1259 OID 61453427)
-- Dependencies: 317
-- Name: assoccl_area_conhecimento_id_assoc_dados_profissionais; Type: INDEX; Schema: basico_assoc_dados_profis; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_area_conhecimento_id_assoc_dados_profissionais ON assoccl_area_conhecimento USING btree (id_assoc_dados_profissionais);


SET search_path = basico_assoccl_pessoa_perfil, pg_catalog;

--
-- TOC entry 3628 (class 1259 OID 61453423)
-- Dependencies: 315
-- Name: assoc_dados_id; Type: INDEX; Schema: basico_assoccl_pessoa_perfil; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_dados_id ON assoc_dados USING btree (id);


--
-- TOC entry 3629 (class 1259 OID 61453424)
-- Dependencies: 315
-- Name: assoc_dados_id_assoccl_pessoa_perfil; Type: INDEX; Schema: basico_assoccl_pessoa_perfil; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_dados_id_assoccl_pessoa_perfil ON assoc_dados USING btree (id_assoccl_pessoa_perfil);


SET search_path = basico_assoccl_tipo_vinculo, pg_catalog;

--
-- TOC entry 3620 (class 1259 OID 61453417)
-- Dependencies: 313
-- Name: assoc_dados_id; Type: INDEX; Schema: basico_assoccl_tipo_vinculo; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_dados_id ON assoc_dados USING btree (id);


--
-- TOC entry 3621 (class 1259 OID 61453418)
-- Dependencies: 313
-- Name: assoc_dados_id_assoccl_vinculo_profissional; Type: INDEX; Schema: basico_assoccl_tipo_vinculo; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_dados_id_assoccl_vinculo_profissional ON assoc_dados USING btree (id_assoccl_vinculo_profissional);


--
-- TOC entry 3622 (class 1259 OID 61453421)
-- Dependencies: 313
-- Name: assoc_dados_id_pessoa_juridica_vinculo; Type: INDEX; Schema: basico_assoccl_tipo_vinculo; Owner: -; Tablespace: 
--

CREATE INDEX assoc_dados_id_pessoa_juridica_vinculo ON assoc_dados USING btree (id_pessoa_juridica_vinculo);


--
-- TOC entry 3623 (class 1259 OID 61453419)
-- Dependencies: 313
-- Name: assoc_dados_id_profissao; Type: INDEX; Schema: basico_assoccl_tipo_vinculo; Owner: -; Tablespace: 
--

CREATE INDEX assoc_dados_id_profissao ON assoc_dados USING btree (id_profissao);


--
-- TOC entry 3624 (class 1259 OID 61453420)
-- Dependencies: 313
-- Name: assoc_dados_id_vinculo_empregaticio; Type: INDEX; Schema: basico_assoccl_tipo_vinculo; Owner: -; Tablespace: 
--

CREATE INDEX assoc_dados_id_vinculo_empregaticio ON assoc_dados USING btree (id_vinculo_empregaticio);


--
-- TOC entry 3625 (class 1259 OID 61453422)
-- Dependencies: 313
-- Name: assoc_dados_matricula; Type: INDEX; Schema: basico_assoccl_tipo_vinculo; Owner: -; Tablespace: 
--

CREATE INDEX assoc_dados_matricula ON assoc_dados USING btree (matricula);


SET search_path = basico_categoria, pg_catalog;

--
-- TOC entry 3613 (class 1259 OID 61453416)
-- Dependencies: 311
-- Name: assoc_chave_estrangeira_campo_estrangeiro; Type: INDEX; Schema: basico_categoria; Owner: -; Tablespace: 
--

CREATE INDEX assoc_chave_estrangeira_campo_estrangeiro ON assoc_chave_estrangeira USING btree (campo_estrangeiro);


--
-- TOC entry 3614 (class 1259 OID 61453412)
-- Dependencies: 311
-- Name: assoc_chave_estrangeira_id; Type: INDEX; Schema: basico_categoria; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_chave_estrangeira_id ON assoc_chave_estrangeira USING btree (id);


--
-- TOC entry 3615 (class 1259 OID 61453414)
-- Dependencies: 311
-- Name: assoc_chave_estrangeira_id_categoria; Type: INDEX; Schema: basico_categoria; Owner: -; Tablespace: 
--

CREATE INDEX assoc_chave_estrangeira_id_categoria ON assoc_chave_estrangeira USING btree (id_categoria);


--
-- TOC entry 3616 (class 1259 OID 61453413)
-- Dependencies: 311
-- Name: assoc_chave_estrangeira_id_modulo; Type: INDEX; Schema: basico_categoria; Owner: -; Tablespace: 
--

CREATE INDEX assoc_chave_estrangeira_id_modulo ON assoc_chave_estrangeira USING btree (id_modulo);


--
-- TOC entry 3617 (class 1259 OID 61453415)
-- Dependencies: 311
-- Name: assoc_chave_estrangeira_tabela_estrangeira; Type: INDEX; Schema: basico_categoria; Owner: -; Tablespace: 
--

CREATE INDEX assoc_chave_estrangeira_tabela_estrangeira ON assoc_chave_estrangeira USING btree (tabela_estrangeira);


--
-- TOC entry 3609 (class 1259 OID 61453410)
-- Dependencies: 309
-- Name: assoc_evento_acao_id; Type: INDEX; Schema: basico_categoria; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_evento_acao_id ON assoc_evento_acao USING btree (id);


--
-- TOC entry 3610 (class 1259 OID 61453411)
-- Dependencies: 309
-- Name: assoc_evento_acao_id_categoria; Type: INDEX; Schema: basico_categoria; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_evento_acao_id_categoria ON assoc_evento_acao USING btree (id_categoria);


SET search_path = basico_componente, pg_catalog;

--
-- TOC entry 3602 (class 1259 OID 61453407)
-- Dependencies: 307
-- Name: assoccl_include_id; Type: INDEX; Schema: basico_componente; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_include_id ON assoccl_include USING btree (id);


--
-- TOC entry 3603 (class 1259 OID 61453408)
-- Dependencies: 307
-- Name: assoccl_include_id_componente; Type: INDEX; Schema: basico_componente; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_componente ON assoccl_include USING btree (id_componente);


--
-- TOC entry 3604 (class 1259 OID 61453409)
-- Dependencies: 307
-- Name: assoccl_include_id_include; Type: INDEX; Schema: basico_componente; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_include ON assoccl_include USING btree (id_include);


SET search_path = basico_contato, pg_catalog;

--
-- TOC entry 3592 (class 1259 OID 61453406)
-- Dependencies: 305
-- Name: cpg_email_email; Type: INDEX; Schema: basico_contato; Owner: -; Tablespace: 
--

CREATE INDEX cpg_email_email ON cpg_email USING btree (email);


--
-- TOC entry 3593 (class 1259 OID 61453401)
-- Dependencies: 305
-- Name: cpg_email_id; Type: INDEX; Schema: basico_contato; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX cpg_email_id ON cpg_email USING btree (id);


--
-- TOC entry 3594 (class 1259 OID 61453402)
-- Dependencies: 305
-- Name: cpg_email_id_categoria; Type: INDEX; Schema: basico_contato; Owner: -; Tablespace: 
--

CREATE INDEX cpg_email_id_categoria ON cpg_email USING btree (id_categoria);


--
-- TOC entry 3595 (class 1259 OID 61453403)
-- Dependencies: 305
-- Name: cpg_email_id_generico_proprietario; Type: INDEX; Schema: basico_contato; Owner: -; Tablespace: 
--

CREATE INDEX cpg_email_id_generico_proprietario ON cpg_email USING btree (id_generico_proprietario);


--
-- TOC entry 3596 (class 1259 OID 61453404)
-- Dependencies: 305
-- Name: cpg_email_nome; Type: INDEX; Schema: basico_contato; Owner: -; Tablespace: 
--

CREATE INDEX cpg_email_nome ON cpg_email USING btree (nome);


--
-- TOC entry 3597 (class 1259 OID 61453405)
-- Dependencies: 305
-- Name: cpg_email_unique_id; Type: INDEX; Schema: basico_contato; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX cpg_email_unique_id ON cpg_email USING btree (unique_id);


--
-- TOC entry 3584 (class 1259 OID 61453397)
-- Dependencies: 303
-- Name: cpg_telefone_id; Type: INDEX; Schema: basico_contato; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX cpg_telefone_id ON cpg_telefone USING btree (id);


--
-- TOC entry 3585 (class 1259 OID 61453398)
-- Dependencies: 303
-- Name: cpg_telefone_id_categoria; Type: INDEX; Schema: basico_contato; Owner: -; Tablespace: 
--

CREATE INDEX cpg_telefone_id_categoria ON cpg_telefone USING btree (id_categoria);


--
-- TOC entry 3586 (class 1259 OID 61453399)
-- Dependencies: 303
-- Name: cpg_telefone_id_generico_proprietario; Type: INDEX; Schema: basico_contato; Owner: -; Tablespace: 
--

CREATE INDEX cpg_telefone_id_generico_proprietario ON cpg_telefone USING btree (id_generico_proprietario);


--
-- TOC entry 3587 (class 1259 OID 61453400)
-- Dependencies: 303
-- Name: cpg_telefone_nome; Type: INDEX; Schema: basico_contato; Owner: -; Tablespace: 
--

CREATE INDEX cpg_telefone_nome ON cpg_telefone USING btree (nome);


SET search_path = basico_cvc, pg_catalog;

--
-- TOC entry 3577 (class 1259 OID 61453394)
-- Dependencies: 301
-- Name: cvc_id; Type: INDEX; Schema: basico_cvc; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX cvc_id ON cvc USING btree (id);


--
-- TOC entry 3578 (class 1259 OID 61453395)
-- Dependencies: 301
-- Name: cvc_id_assoc_chave_estrangeira; Type: INDEX; Schema: basico_cvc; Owner: -; Tablespace: 
--

CREATE INDEX cvc_id_assoc_chave_estrangeira ON cvc USING btree (id_assoc_chave_estrangeira);


--
-- TOC entry 3579 (class 1259 OID 61453396)
-- Dependencies: 301
-- Name: cvc_id_generico; Type: INDEX; Schema: basico_cvc; Owner: -; Tablespace: 
--

CREATE INDEX cvc_id_generico ON cvc USING btree (id_generico);


SET search_path = basico_dados_academicos, pg_catalog;

--
-- TOC entry 3573 (class 1259 OID 61453393)
-- Dependencies: 299
-- Name: titulacao_constante_textual; Type: INDEX; Schema: basico_dados_academicos; Owner: -; Tablespace: 
--

CREATE INDEX titulacao_constante_textual ON titulacao USING btree (constante_textual);


--
-- TOC entry 3574 (class 1259 OID 61453390)
-- Dependencies: 299
-- Name: titulacao_id; Type: INDEX; Schema: basico_dados_academicos; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX titulacao_id ON titulacao USING btree (id);


--
-- TOC entry 3575 (class 1259 OID 61453391)
-- Dependencies: 299
-- Name: titulacao_id_categoria; Type: INDEX; Schema: basico_dados_academicos; Owner: -; Tablespace: 
--

CREATE INDEX titulacao_id_categoria ON titulacao USING btree (id_categoria);


--
-- TOC entry 3576 (class 1259 OID 61453392)
-- Dependencies: 299
-- Name: titulacao_nome; Type: INDEX; Schema: basico_dados_academicos; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX titulacao_nome ON titulacao USING btree (nome);


SET search_path = basico_dados_biometricos, pg_catalog;

--
-- TOC entry 3566 (class 1259 OID 61453387)
-- Dependencies: 297
-- Name: assoc_pessoa_id; Type: INDEX; Schema: basico_dados_biometricos; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_pessoa_id ON assoc_pessoa USING btree (id);


--
-- TOC entry 3567 (class 1259 OID 61453389)
-- Dependencies: 297
-- Name: assoc_pessoa_id_categoria_sexo; Type: INDEX; Schema: basico_dados_biometricos; Owner: -; Tablespace: 
--

CREATE INDEX assoc_pessoa_id_categoria_sexo ON assoc_pessoa USING btree (id_categoria_sexo);


--
-- TOC entry 3568 (class 1259 OID 61453388)
-- Dependencies: 297
-- Name: assoc_pessoa_id_dados_biometricos; Type: INDEX; Schema: basico_dados_biometricos; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_pessoa_id_dados_biometricos ON assoc_pessoa USING btree (id_dados_biometricos);


SET search_path = basico_dados_profissionais, pg_catalog;

--
-- TOC entry 3558 (class 1259 OID 61453386)
-- Dependencies: 295
-- Name: regime_trabalho_codigo; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE INDEX regime_trabalho_codigo ON regime_trabalho USING btree (codigo);


--
-- TOC entry 3559 (class 1259 OID 61453385)
-- Dependencies: 295
-- Name: regime_trabalho_constante_textual; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE INDEX regime_trabalho_constante_textual ON regime_trabalho USING btree (constante_textual);


--
-- TOC entry 3560 (class 1259 OID 61453381)
-- Dependencies: 295
-- Name: regime_trabalho_id; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX regime_trabalho_id ON regime_trabalho USING btree (id);


--
-- TOC entry 3561 (class 1259 OID 61453383)
-- Dependencies: 295
-- Name: regime_trabalho_id_categoria; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE INDEX regime_trabalho_id_categoria ON regime_trabalho USING btree (id_categoria);


--
-- TOC entry 3562 (class 1259 OID 61453382)
-- Dependencies: 295
-- Name: regime_trabalho_id_regime_trabalho_pai; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE INDEX regime_trabalho_id_regime_trabalho_pai ON regime_trabalho USING btree (id_regime_trabalho_pai);


--
-- TOC entry 3563 (class 1259 OID 61453384)
-- Dependencies: 295
-- Name: regime_trabalho_nome; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE INDEX regime_trabalho_nome ON regime_trabalho USING btree (nome);


--
-- TOC entry 3549 (class 1259 OID 61453380)
-- Dependencies: 293
-- Name: tipo_vinculo_codigo; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE INDEX tipo_vinculo_codigo ON tipo_vinculo USING btree (codigo);


--
-- TOC entry 3550 (class 1259 OID 61453379)
-- Dependencies: 293
-- Name: tipo_vinculo_constante_textual; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE INDEX tipo_vinculo_constante_textual ON tipo_vinculo USING btree (constante_textual);


--
-- TOC entry 3551 (class 1259 OID 61453376)
-- Dependencies: 293
-- Name: tipo_vinculo_id; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX tipo_vinculo_id ON tipo_vinculo USING btree (id);


--
-- TOC entry 3552 (class 1259 OID 61453377)
-- Dependencies: 293
-- Name: tipo_vinculo_id_categoria; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE INDEX tipo_vinculo_id_categoria ON tipo_vinculo USING btree (id_categoria);


--
-- TOC entry 3553 (class 1259 OID 61453378)
-- Dependencies: 293
-- Name: tipo_vinculo_nome; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE INDEX tipo_vinculo_nome ON tipo_vinculo USING btree (nome);


--
-- TOC entry 3542 (class 1259 OID 61453375)
-- Dependencies: 291
-- Name: vinculo_empregaticio_codigo; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE INDEX vinculo_empregaticio_codigo ON vinculo_empregaticio USING btree (codigo);


--
-- TOC entry 3543 (class 1259 OID 61453374)
-- Dependencies: 291
-- Name: vinculo_empregaticio_constante_textual; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE INDEX vinculo_empregaticio_constante_textual ON vinculo_empregaticio USING btree (constante_textual);


--
-- TOC entry 3544 (class 1259 OID 61453371)
-- Dependencies: 291
-- Name: vinculo_empregaticio_id; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX vinculo_empregaticio_id ON vinculo_empregaticio USING btree (id);


--
-- TOC entry 3545 (class 1259 OID 61453372)
-- Dependencies: 291
-- Name: vinculo_empregaticio_id_categoria; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE INDEX vinculo_empregaticio_id_categoria ON vinculo_empregaticio USING btree (id_categoria);


--
-- TOC entry 3546 (class 1259 OID 61453373)
-- Dependencies: 291
-- Name: vinculo_empregaticio_nome; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE INDEX vinculo_empregaticio_nome ON vinculo_empregaticio USING btree (nome);


SET search_path = basico_filter, pg_catalog;

--
-- TOC entry 3532 (class 1259 OID 61453347)
-- Dependencies: 281
-- Name: grupo_constante_textual; Type: INDEX; Schema: basico_filter; Owner: -; Tablespace: 
--

CREATE INDEX grupo_constante_textual ON grupo USING btree (constante_textual);


--
-- TOC entry 3533 (class 1259 OID 61453344)
-- Dependencies: 281
-- Name: grupo_id; Type: INDEX; Schema: basico_filter; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX grupo_id ON grupo USING btree (id);


--
-- TOC entry 3534 (class 1259 OID 61453345)
-- Dependencies: 281
-- Name: grupo_id_categoria; Type: INDEX; Schema: basico_filter; Owner: -; Tablespace: 
--

CREATE INDEX grupo_id_categoria ON grupo USING btree (id_categoria);


--
-- TOC entry 3535 (class 1259 OID 61453346)
-- Dependencies: 281
-- Name: grupo_nome; Type: INDEX; Schema: basico_filter; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX grupo_nome ON grupo USING btree (nome);


SET search_path = basico_filter_grupo, pg_catalog;

--
-- TOC entry 3526 (class 1259 OID 61453340)
-- Dependencies: 279
-- Name: assocag_grupo_id; Type: INDEX; Schema: basico_filter_grupo; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assocag_grupo_id ON assocag_grupo USING btree (id);


--
-- TOC entry 3527 (class 1259 OID 61453342)
-- Dependencies: 279
-- Name: assocag_grupo_id_filter; Type: INDEX; Schema: basico_filter_grupo; Owner: -; Tablespace: 
--

CREATE INDEX assocag_grupo_id_filter ON assocag_grupo USING btree (id_filter);


--
-- TOC entry 3528 (class 1259 OID 61453341)
-- Dependencies: 279
-- Name: assocag_grupo_id_filter_grupo; Type: INDEX; Schema: basico_filter_grupo; Owner: -; Tablespace: 
--

CREATE INDEX assocag_grupo_id_filter_grupo ON assocag_grupo USING btree (id_filter_grupo);


--
-- TOC entry 3529 (class 1259 OID 61453343)
-- Dependencies: 279
-- Name: assocag_grupo_id_filter_grupo_assoc; Type: INDEX; Schema: basico_filter_grupo; Owner: -; Tablespace: 
--

CREATE INDEX assocag_grupo_id_filter_grupo_assoc ON assocag_grupo USING btree (id_filter_grupo_assoc);


SET search_path = basico_form_assoccl_elem_grupo, pg_catalog;

--
-- TOC entry 3519 (class 1259 OID 61453337)
-- Dependencies: 277
-- Name: assoccl_decorator_id; Type: INDEX; Schema: basico_form_assoccl_elem_grupo; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_decorator_id ON assoccl_decorator USING btree (id);


--
-- TOC entry 3520 (class 1259 OID 61453339)
-- Dependencies: 277
-- Name: assoccl_decorator_id_decorator; Type: INDEX; Schema: basico_form_assoccl_elem_grupo; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_decorator_id_decorator ON assoccl_decorator USING btree (id_decorator);


--
-- TOC entry 3521 (class 1259 OID 61453338)
-- Dependencies: 277
-- Name: assoccl_decorator_id_grupo; Type: INDEX; Schema: basico_form_assoccl_elem_grupo; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_decorator_id_grupo ON assoccl_decorator USING btree (id_grupo);


SET search_path = basico_form_assoccl_elemento, pg_catalog;

--
-- TOC entry 3512 (class 1259 OID 61453334)
-- Dependencies: 275
-- Name: assoccl_decorator_id; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_decorator_id ON assoccl_decorator USING btree (id);


--
-- TOC entry 3513 (class 1259 OID 61453335)
-- Dependencies: 275
-- Name: assoccl_decorator_id_assoccl_elemento; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_decorator_id_assoccl_elemento ON assoccl_decorator USING btree (id_assoccl_elemento);


--
-- TOC entry 3514 (class 1259 OID 61453336)
-- Dependencies: 275
-- Name: assoccl_decorator_id_decorator; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_decorator_id_decorator ON assoccl_decorator USING btree (id_decorator);


--
-- TOC entry 3505 (class 1259 OID 61453331)
-- Dependencies: 273
-- Name: assoccl_evento_id; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_evento_id ON assoccl_evento USING btree (id);


--
-- TOC entry 3506 (class 1259 OID 61453332)
-- Dependencies: 273
-- Name: assoccl_evento_id_assoccl_elemento; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_evento_id_assoccl_elemento ON assoccl_evento USING btree (id_assoccl_elemento);


--
-- TOC entry 3507 (class 1259 OID 61453333)
-- Dependencies: 273
-- Name: assoccl_evento_id_evento; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_evento_id_evento ON assoccl_evento USING btree (id_evento);


--
-- TOC entry 3498 (class 1259 OID 61453328)
-- Dependencies: 271
-- Name: assoccl_filter_id; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_filter_id ON assoccl_filter USING btree (id);


--
-- TOC entry 3499 (class 1259 OID 61453329)
-- Dependencies: 271
-- Name: assoccl_filter_id_assoccl_elemento; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_filter_id_assoccl_elemento ON assoccl_filter USING btree (id_assoccl_elemento);


--
-- TOC entry 3500 (class 1259 OID 61453330)
-- Dependencies: 271
-- Name: assoccl_filter_id_filter; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_filter_id_filter ON assoccl_filter USING btree (id_filter);


--
-- TOC entry 3491 (class 1259 OID 61453325)
-- Dependencies: 269
-- Name: assoccl_include_id; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_include_id ON assoccl_include USING btree (id);


--
-- TOC entry 3492 (class 1259 OID 61453326)
-- Dependencies: 269
-- Name: assoccl_include_id_assoccl_elemento; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_assoccl_elemento ON assoccl_include USING btree (id_assoccl_elemento);


--
-- TOC entry 3493 (class 1259 OID 61453327)
-- Dependencies: 269
-- Name: assoccl_include_id_include; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_include ON assoccl_include USING btree (id_include);


--
-- TOC entry 3484 (class 1259 OID 61453321)
-- Dependencies: 267
-- Name: assoccl_validator_id; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_validator_id ON assoccl_validator USING btree (id);


--
-- TOC entry 3485 (class 1259 OID 61453323)
-- Dependencies: 267
-- Name: assoccl_validator_id_assoccl_elemento; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_validator_id_assoccl_elemento ON assoccl_validator USING btree (id_assoccl_elemento);


--
-- TOC entry 3486 (class 1259 OID 61453324)
-- Dependencies: 267
-- Name: assoccl_validator_id_validator; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_validator_id_validator ON assoccl_validator USING btree (id_validator);


--
-- TOC entry 3478 (class 1259 OID 61453319)
-- Dependencies: 265
-- Name: grupo_constante_textual; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE INDEX grupo_constante_textual ON grupo USING btree (constante_textual);


--
-- TOC entry 3479 (class 1259 OID 61453320)
-- Dependencies: 265
-- Name: grupo_constante_textual_label; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE INDEX grupo_constante_textual_label ON grupo USING btree (constante_textual_label);


--
-- TOC entry 3480 (class 1259 OID 61453317)
-- Dependencies: 265
-- Name: grupo_id; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX grupo_id ON grupo USING btree (id);


--
-- TOC entry 3481 (class 1259 OID 61453318)
-- Dependencies: 265
-- Name: grupo_nome; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX grupo_nome ON grupo USING btree (nome);


SET search_path = basico_form_decorator_grupo, pg_catalog;

--
-- TOC entry 3472 (class 1259 OID 61453313)
-- Dependencies: 263
-- Name: assocag_grupo_id; Type: INDEX; Schema: basico_form_decorator_grupo; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assocag_grupo_id ON assocag_grupo USING btree (id);


--
-- TOC entry 3473 (class 1259 OID 61453314)
-- Dependencies: 263
-- Name: assocag_grupo_id_form_decorator_grupo; Type: INDEX; Schema: basico_form_decorator_grupo; Owner: -; Tablespace: 
--

CREATE INDEX assocag_grupo_id_form_decorator_grupo ON assocag_grupo USING btree (id_form_decorator_grupo);


--
-- TOC entry 3474 (class 1259 OID 61453316)
-- Dependencies: 263
-- Name: assocag_grupo_id_form_decorator_grupo_assoc; Type: INDEX; Schema: basico_form_decorator_grupo; Owner: -; Tablespace: 
--

CREATE INDEX assocag_grupo_id_form_decorator_grupo_assoc ON assocag_grupo USING btree (id_form_decorator_grupo_assoc);


--
-- TOC entry 3475 (class 1259 OID 61453315)
-- Dependencies: 263
-- Name: assocag_grupo_id_formulario_decorator; Type: INDEX; Schema: basico_form_decorator_grupo; Owner: -; Tablespace: 
--

CREATE INDEX assocag_grupo_id_formulario_decorator ON assocag_grupo USING btree (id_formulario_decorator);


SET search_path = basico_formulario, pg_catalog;

--
-- TOC entry 3464 (class 1259 OID 61453309)
-- Dependencies: 261
-- Name: assoccl_decorator_id; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_decorator_id ON assoccl_decorator USING btree (id);


--
-- TOC entry 3465 (class 1259 OID 61453311)
-- Dependencies: 261
-- Name: assoccl_decorator_id_decorator; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_decorator_id_decorator ON assoccl_decorator USING btree (id_decorator);


--
-- TOC entry 3466 (class 1259 OID 61453312)
-- Dependencies: 261
-- Name: assoccl_decorator_id_decorator_grupo; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_decorator_id_decorator_grupo ON assoccl_decorator USING btree (id_decorator_grupo);


--
-- TOC entry 3467 (class 1259 OID 61453310)
-- Dependencies: 261
-- Name: assoccl_decorator_id_formulario; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_decorator_id_formulario ON assoccl_decorator USING btree (id_formulario);


--
-- TOC entry 3454 (class 1259 OID 61453308)
-- Dependencies: 259
-- Name: assoccl_elemento_constante_textual_label; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_elemento_constante_textual_label ON assoccl_elemento USING btree (constante_textual_label);


--
-- TOC entry 3455 (class 1259 OID 61453304)
-- Dependencies: 259
-- Name: assoccl_elemento_id; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_elemento_id ON assoccl_elemento USING btree (id);


--
-- TOC entry 3456 (class 1259 OID 61453306)
-- Dependencies: 259
-- Name: assoccl_elemento_id_elemento; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_elemento_id_elemento ON assoccl_elemento USING btree (id_elemento);


--
-- TOC entry 3457 (class 1259 OID 61453305)
-- Dependencies: 259
-- Name: assoccl_elemento_id_formulario; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_elemento_id_formulario ON assoccl_elemento USING btree (id_formulario);


--
-- TOC entry 3446 (class 1259 OID 61453300)
-- Dependencies: 257
-- Name: assoccl_evento_id; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_evento_id ON assoccl_evento USING btree (id);


--
-- TOC entry 3447 (class 1259 OID 61453303)
-- Dependencies: 257
-- Name: assoccl_evento_id_acao_evento; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_evento_id_acao_evento ON assoccl_evento USING btree (id_acao_evento);


--
-- TOC entry 3448 (class 1259 OID 61453302)
-- Dependencies: 257
-- Name: assoccl_evento_id_evento; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_evento_id_evento ON assoccl_evento USING btree (id_evento);


--
-- TOC entry 3449 (class 1259 OID 61453301)
-- Dependencies: 257
-- Name: assoccl_evento_id_formulario; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_evento_id_formulario ON assoccl_evento USING btree (id_formulario);


--
-- TOC entry 3439 (class 1259 OID 61453297)
-- Dependencies: 255
-- Name: assoccl_include_id; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_include_id ON assoccl_include USING btree (id);


--
-- TOC entry 3440 (class 1259 OID 61453298)
-- Dependencies: 255
-- Name: assoccl_include_id_formulario; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_formulario ON assoccl_include USING btree (id_formulario);


--
-- TOC entry 3441 (class 1259 OID 61453299)
-- Dependencies: 255
-- Name: assoccl_include_id_include; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_include ON assoccl_include USING btree (id_include);


--
-- TOC entry 3432 (class 1259 OID 61453294)
-- Dependencies: 253
-- Name: assoccl_modulo_id; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_modulo_id ON assoccl_modulo USING btree (id);


--
-- TOC entry 3433 (class 1259 OID 61453296)
-- Dependencies: 253
-- Name: assoccl_modulo_id_formulario; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_modulo_id_formulario ON assoccl_modulo USING btree (id_formulario);


--
-- TOC entry 3434 (class 1259 OID 61453295)
-- Dependencies: 253
-- Name: assoccl_modulo_id_modulo; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_modulo_id_modulo ON assoccl_modulo USING btree (id_modulo);


--
-- TOC entry 3425 (class 1259 OID 61453293)
-- Dependencies: 251
-- Name: decorator_constante_textual; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX decorator_constante_textual ON decorator USING btree (constante_textual);


--
-- TOC entry 3426 (class 1259 OID 61453288)
-- Dependencies: 251
-- Name: decorator_id; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX decorator_id ON decorator USING btree (id);


--
-- TOC entry 3427 (class 1259 OID 61453289)
-- Dependencies: 251
-- Name: decorator_id_categoria; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX decorator_id_categoria ON decorator USING btree (id_categoria);


--
-- TOC entry 3428 (class 1259 OID 61453290)
-- Dependencies: 251
-- Name: decorator_id_componente; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX decorator_id_componente ON decorator USING btree (id_componente);


--
-- TOC entry 3429 (class 1259 OID 61453292)
-- Dependencies: 251
-- Name: decorator_nome; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX decorator_nome ON decorator USING btree (nome);


--
-- TOC entry 3415 (class 1259 OID 61453286)
-- Dependencies: 249
-- Name: elemento_constante_textual; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX elemento_constante_textual ON elemento USING btree (constante_textual);


--
-- TOC entry 3416 (class 1259 OID 61453287)
-- Dependencies: 249
-- Name: elemento_constante_textual_label; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX elemento_constante_textual_label ON elemento USING btree (constante_textual_label);


--
-- TOC entry 3417 (class 1259 OID 61453282)
-- Dependencies: 249
-- Name: elemento_id; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX elemento_id ON elemento USING btree (id);


--
-- TOC entry 3418 (class 1259 OID 61453283)
-- Dependencies: 249
-- Name: elemento_id_categoria; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX elemento_id_categoria ON elemento USING btree (id_categoria);


--
-- TOC entry 3419 (class 1259 OID 61453284)
-- Dependencies: 249
-- Name: elemento_id_componente; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX elemento_id_componente ON elemento USING btree (id_componente);


--
-- TOC entry 3420 (class 1259 OID 61453285)
-- Dependencies: 249
-- Name: elemento_nome; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX elemento_nome ON elemento USING btree (nome);


--
-- TOC entry 3406 (class 1259 OID 61453280)
-- Dependencies: 247
-- Name: rascunho_form_action; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX rascunho_form_action ON rascunho USING btree (form_action);


--
-- TOC entry 3407 (class 1259 OID 61453281)
-- Dependencies: 247
-- Name: rascunho_form_name; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX rascunho_form_name ON rascunho USING btree (form_name);


--
-- TOC entry 3408 (class 1259 OID 61453273)
-- Dependencies: 247
-- Name: rascunho_id; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX rascunho_id ON rascunho USING btree (id);


--
-- TOC entry 3409 (class 1259 OID 61453279)
-- Dependencies: 247
-- Name: rascunho_id_assoc_visao_origem; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX rascunho_id_assoc_visao_origem ON rascunho USING btree (id_assoc_visao_origem);


--
-- TOC entry 3410 (class 1259 OID 61453277)
-- Dependencies: 247
-- Name: rascunho_id_assocag_grupo; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX rascunho_id_assocag_grupo ON rascunho USING btree (id_assocag_grupo);


--
-- TOC entry 3411 (class 1259 OID 61453276)
-- Dependencies: 247
-- Name: rascunho_id_assoccl_perfil; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX rascunho_id_assoccl_perfil ON rascunho USING btree (id_assoccl_perfil);


--
-- TOC entry 3412 (class 1259 OID 61453278)
-- Dependencies: 247
-- Name: rascunho_id_assocsq_acao_aplicacao; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX rascunho_id_assocsq_acao_aplicacao ON rascunho USING btree (id_assocsq_acao_aplicacao);


--
-- TOC entry 3413 (class 1259 OID 61453275)
-- Dependencies: 247
-- Name: rascunho_id_categoria; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX rascunho_id_categoria ON rascunho USING btree (id_categoria);


--
-- TOC entry 3414 (class 1259 OID 61453274)
-- Dependencies: 247
-- Name: rascunho_id_rascunho_pai; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX rascunho_id_rascunho_pai ON rascunho USING btree (id_rascunho_pai);


SET search_path = basico_formulario_decorator, pg_catalog;

--
-- TOC entry 3397 (class 1259 OID 61453270)
-- Dependencies: 245
-- Name: assoccl_include_id; Type: INDEX; Schema: basico_formulario_decorator; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_include_id ON assoccl_include USING btree (id);


--
-- TOC entry 3398 (class 1259 OID 61453271)
-- Dependencies: 245
-- Name: assoccl_include_id_decorator; Type: INDEX; Schema: basico_formulario_decorator; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_decorator ON assoccl_include USING btree (id_decorator);


--
-- TOC entry 3399 (class 1259 OID 61453272)
-- Dependencies: 245
-- Name: assoccl_include_id_include; Type: INDEX; Schema: basico_formulario_decorator; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_include ON assoccl_include USING btree (id_include);


--
-- TOC entry 3391 (class 1259 OID 61453269)
-- Dependencies: 243
-- Name: grupo_constante_textual; Type: INDEX; Schema: basico_formulario_decorator; Owner: -; Tablespace: 
--

CREATE INDEX grupo_constante_textual ON grupo USING btree (constante_textual);


--
-- TOC entry 3392 (class 1259 OID 61453266)
-- Dependencies: 243
-- Name: grupo_id; Type: INDEX; Schema: basico_formulario_decorator; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX grupo_id ON grupo USING btree (id);


--
-- TOC entry 3393 (class 1259 OID 61453267)
-- Dependencies: 243
-- Name: grupo_id_categoria; Type: INDEX; Schema: basico_formulario_decorator; Owner: -; Tablespace: 
--

CREATE INDEX grupo_id_categoria ON grupo USING btree (id_categoria);


--
-- TOC entry 3394 (class 1259 OID 61453268)
-- Dependencies: 243
-- Name: grupo_nome; Type: INDEX; Schema: basico_formulario_decorator; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX grupo_nome ON grupo USING btree (nome);


SET search_path = basico_formulario_elemento, pg_catalog;

--
-- TOC entry 3383 (class 1259 OID 61453262)
-- Dependencies: 241
-- Name: assoccl_decorator_id; Type: INDEX; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_decorator_id ON assoccl_decorator USING btree (id);


--
-- TOC entry 3384 (class 1259 OID 61453264)
-- Dependencies: 241
-- Name: assoccl_decorator_id_decorator; Type: INDEX; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_decorator_id_decorator ON assoccl_decorator USING btree (id_decorator);


--
-- TOC entry 3385 (class 1259 OID 61453265)
-- Dependencies: 241
-- Name: assoccl_decorator_id_decorator_grupo; Type: INDEX; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_decorator_id_decorator_grupo ON assoccl_decorator USING btree (id_decorator_grupo);


--
-- TOC entry 3386 (class 1259 OID 61453263)
-- Dependencies: 241
-- Name: assoccl_decorator_id_elemento; Type: INDEX; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_decorator_id_elemento ON assoccl_decorator USING btree (id_elemento);


--
-- TOC entry 3376 (class 1259 OID 61453259)
-- Dependencies: 239
-- Name: assoccl_evento_id; Type: INDEX; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_evento_id ON assoccl_evento USING btree (id);


--
-- TOC entry 3377 (class 1259 OID 61453260)
-- Dependencies: 239
-- Name: assoccl_evento_id_elemento; Type: INDEX; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_evento_id_elemento ON assoccl_evento USING btree (id_elemento);


--
-- TOC entry 3378 (class 1259 OID 61453261)
-- Dependencies: 239
-- Name: assoccl_evento_id_evento; Type: INDEX; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_evento_id_evento ON assoccl_evento USING btree (id_evento);


--
-- TOC entry 3368 (class 1259 OID 61453255)
-- Dependencies: 237
-- Name: assoccl_filter_id; Type: INDEX; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_filter_id ON assoccl_filter USING btree (id);


--
-- TOC entry 3369 (class 1259 OID 61453256)
-- Dependencies: 237
-- Name: assoccl_filter_id_elemento; Type: INDEX; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_filter_id_elemento ON assoccl_filter USING btree (id_elemento);


--
-- TOC entry 3370 (class 1259 OID 61453257)
-- Dependencies: 237
-- Name: assoccl_filter_id_filter; Type: INDEX; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_filter_id_filter ON assoccl_filter USING btree (id_filter);


--
-- TOC entry 3371 (class 1259 OID 61453258)
-- Dependencies: 237
-- Name: assoccl_filter_id_filter_grupo; Type: INDEX; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_filter_id_filter_grupo ON assoccl_filter USING btree (id_filter_grupo);


--
-- TOC entry 3360 (class 1259 OID 61453251)
-- Dependencies: 235
-- Name: assoccl_validator_id; Type: INDEX; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_validator_id ON assoccl_validator USING btree (id);


--
-- TOC entry 3361 (class 1259 OID 61453252)
-- Dependencies: 235
-- Name: assoccl_validator_id_elemento; Type: INDEX; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_validator_id_elemento ON assoccl_validator USING btree (id_elemento);


--
-- TOC entry 3362 (class 1259 OID 61453253)
-- Dependencies: 235
-- Name: assoccl_validator_id_validator; Type: INDEX; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_validator_id_validator ON assoccl_validator USING btree (id_validator);


--
-- TOC entry 3363 (class 1259 OID 61453254)
-- Dependencies: 235
-- Name: assoccl_validator_id_validator_grupo; Type: INDEX; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_validator_id_validator_grupo ON assoccl_validator USING btree (id_validator_grupo);


SET search_path = basico_formulario_rascunho, pg_catalog;

--
-- TOC entry 3356 (class 1259 OID 61453249)
-- Dependencies: 233
-- Name: assocag_grupo_id; Type: INDEX; Schema: basico_formulario_rascunho; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assocag_grupo_id ON assocag_grupo USING btree (id);


--
-- TOC entry 3357 (class 1259 OID 61453250)
-- Dependencies: 233
-- Name: assocag_grupo_id_assoccl_perfil; Type: INDEX; Schema: basico_formulario_rascunho; Owner: -; Tablespace: 
--

CREATE INDEX assocag_grupo_id_assoccl_perfil ON assocag_grupo USING btree (id_assoccl_perfil);


SET search_path = basico_localizacao, pg_catalog;

--
-- TOC entry 3349 (class 1259 OID 61453246)
-- Dependencies: 231
-- Name: assoc_bairro_id; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_bairro_id ON assoc_bairro USING btree (id);


--
-- TOC entry 3350 (class 1259 OID 61453247)
-- Dependencies: 231
-- Name: assoc_bairro_id_municipio; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_bairro_id_municipio ON assoc_bairro USING btree (id_municipio);


--
-- TOC entry 3351 (class 1259 OID 61453248)
-- Dependencies: 231
-- Name: assoc_bairro_nome; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_bairro_nome ON assoc_bairro USING btree (nome);


--
-- TOC entry 3339 (class 1259 OID 61453240)
-- Dependencies: 229
-- Name: assoc_estado_id; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_estado_id ON assoc_estado USING btree (id);


--
-- TOC entry 3340 (class 1259 OID 61453241)
-- Dependencies: 229
-- Name: assoc_estado_id_categoria; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_estado_id_categoria ON assoc_estado USING btree (id_categoria);


--
-- TOC entry 3341 (class 1259 OID 61453242)
-- Dependencies: 229
-- Name: assoc_estado_id_estado_pai; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_estado_id_estado_pai ON assoc_estado USING btree (id_estado_pai);


--
-- TOC entry 3342 (class 1259 OID 61453243)
-- Dependencies: 229
-- Name: assoc_estado_id_pais; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_estado_id_pais ON assoc_estado USING btree (id_pais);


--
-- TOC entry 3343 (class 1259 OID 61453244)
-- Dependencies: 229
-- Name: assoc_estado_nome; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_estado_nome ON assoc_estado USING btree (nome);


--
-- TOC entry 3344 (class 1259 OID 61453245)
-- Dependencies: 229
-- Name: assoc_estado_sigla; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_estado_sigla ON assoc_estado USING btree (sigla);


--
-- TOC entry 3331 (class 1259 OID 61453236)
-- Dependencies: 227
-- Name: assoc_logradouro_id; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_logradouro_id ON assoc_logradouro USING btree (id);


--
-- TOC entry 3332 (class 1259 OID 61453238)
-- Dependencies: 227
-- Name: assoc_logradouro_id_bairro; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_logradouro_id_bairro ON assoc_logradouro USING btree (id_bairro);


--
-- TOC entry 3333 (class 1259 OID 61453237)
-- Dependencies: 227
-- Name: assoc_logradouro_id_categoria; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_logradouro_id_categoria ON assoc_logradouro USING btree (id_categoria);


--
-- TOC entry 3334 (class 1259 OID 61453239)
-- Dependencies: 227
-- Name: assoc_logradouro_nome; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_logradouro_nome ON assoc_logradouro USING btree (nome);


--
-- TOC entry 3321 (class 1259 OID 61453235)
-- Dependencies: 225
-- Name: assoc_municipio_codigo_ddd; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_municipio_codigo_ddd ON assoc_municipio USING btree (codigo_ddd);


--
-- TOC entry 3322 (class 1259 OID 61453230)
-- Dependencies: 225
-- Name: assoc_municipio_id; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_municipio_id ON assoc_municipio USING btree (id);


--
-- TOC entry 3323 (class 1259 OID 61453231)
-- Dependencies: 225
-- Name: assoc_municipio_id_categoria; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_municipio_id_categoria ON assoc_municipio USING btree (id_categoria);


--
-- TOC entry 3324 (class 1259 OID 61453233)
-- Dependencies: 225
-- Name: assoc_municipio_id_estado; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_municipio_id_estado ON assoc_municipio USING btree (id_estado);


--
-- TOC entry 3325 (class 1259 OID 61453232)
-- Dependencies: 225
-- Name: assoc_municipio_id_municipio_pai; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_municipio_id_municipio_pai ON assoc_municipio USING btree (id_municipio_pai);


--
-- TOC entry 3326 (class 1259 OID 61453234)
-- Dependencies: 225
-- Name: assoc_municipio_nome; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_municipio_nome ON assoc_municipio USING btree (nome);


--
-- TOC entry 3309 (class 1259 OID 61453224)
-- Dependencies: 223
-- Name: codigo_postal_codigo; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX codigo_postal_codigo ON codigo_postal USING btree (codigo);


--
-- TOC entry 3310 (class 1259 OID 61453222)
-- Dependencies: 223
-- Name: codigo_postal_id; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX codigo_postal_id ON codigo_postal USING btree (id);


--
-- TOC entry 3311 (class 1259 OID 61453228)
-- Dependencies: 223
-- Name: codigo_postal_id_bairro; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX codigo_postal_id_bairro ON codigo_postal USING btree (id_bairro);


--
-- TOC entry 3312 (class 1259 OID 61453223)
-- Dependencies: 223
-- Name: codigo_postal_id_categoria; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX codigo_postal_id_categoria ON codigo_postal USING btree (id_categoria);


--
-- TOC entry 3313 (class 1259 OID 61453226)
-- Dependencies: 223
-- Name: codigo_postal_id_estado; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX codigo_postal_id_estado ON codigo_postal USING btree (id_estado);


--
-- TOC entry 3314 (class 1259 OID 61453229)
-- Dependencies: 223
-- Name: codigo_postal_id_logradouro; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX codigo_postal_id_logradouro ON codigo_postal USING btree (id_logradouro);


--
-- TOC entry 3315 (class 1259 OID 61453227)
-- Dependencies: 223
-- Name: codigo_postal_id_municipio; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX codigo_postal_id_municipio ON codigo_postal USING btree (id_municipio);


--
-- TOC entry 3316 (class 1259 OID 61453225)
-- Dependencies: 223
-- Name: codigo_postal_id_pais; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX codigo_postal_id_pais ON codigo_postal USING btree (id_pais);


--
-- TOC entry 3300 (class 1259 OID 61453220)
-- Dependencies: 221
-- Name: cpg_endereco_codigo_postal; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX cpg_endereco_codigo_postal ON cpg_endereco USING btree (codigo_postal);


--
-- TOC entry 3301 (class 1259 OID 61453217)
-- Dependencies: 221
-- Name: cpg_endereco_id; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX cpg_endereco_id ON cpg_endereco USING btree (id);


--
-- TOC entry 3302 (class 1259 OID 61453221)
-- Dependencies: 221
-- Name: cpg_endereco_id_assoccl_perfil_validador; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX cpg_endereco_id_assoccl_perfil_validador ON cpg_endereco USING btree (id_assoccl_perfil_validador);


--
-- TOC entry 3303 (class 1259 OID 61453218)
-- Dependencies: 221
-- Name: cpg_endereco_id_categoria; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX cpg_endereco_id_categoria ON cpg_endereco USING btree (id_categoria);


--
-- TOC entry 3304 (class 1259 OID 61453219)
-- Dependencies: 221
-- Name: cpg_endereco_id_generico_proprietario; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX cpg_endereco_id_generico_proprietario ON cpg_endereco USING btree (id_generico_proprietario);


--
-- TOC entry 3295 (class 1259 OID 61453215)
-- Dependencies: 219
-- Name: pais_constante_textual; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX pais_constante_textual ON pais USING btree (constante_textual);


--
-- TOC entry 3296 (class 1259 OID 61453214)
-- Dependencies: 219
-- Name: pais_id; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX pais_id ON pais USING btree (id);


--
-- TOC entry 3297 (class 1259 OID 61453216)
-- Dependencies: 219
-- Name: pais_sigla; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX pais_sigla ON pais USING btree (sigla);


SET search_path = basico_mensagem, pg_catalog;

--
-- TOC entry 3289 (class 1259 OID 61453212)
-- Dependencies: 217
-- Name: assoc_email_id; Type: INDEX; Schema: basico_mensagem; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_email_id ON assoc_email USING btree (id);


--
-- TOC entry 3290 (class 1259 OID 61453213)
-- Dependencies: 217
-- Name: assoc_email_id_mensagem; Type: INDEX; Schema: basico_mensagem; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_email_id_mensagem ON assoc_email USING btree (id_mensagem);


--
-- TOC entry 3281 (class 1259 OID 61453208)
-- Dependencies: 215
-- Name: assoccl_assoccl_pessoa_perfil_id; Type: INDEX; Schema: basico_mensagem; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_assoccl_pessoa_perfil_id ON assoccl_assoccl_pessoa_perfil USING btree (id);


--
-- TOC entry 3282 (class 1259 OID 61453211)
-- Dependencies: 215
-- Name: assoccl_assoccl_pessoa_perfil_id_assoccl_perfil; Type: INDEX; Schema: basico_mensagem; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_assoccl_pessoa_perfil_id_assoccl_perfil ON assoccl_assoccl_pessoa_perfil USING btree (id_assoccl_perfil);


--
-- TOC entry 3283 (class 1259 OID 61453209)
-- Dependencies: 215
-- Name: assoccl_assoccl_pessoa_perfil_id_categoria; Type: INDEX; Schema: basico_mensagem; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_assoccl_pessoa_perfil_id_categoria ON assoccl_assoccl_pessoa_perfil USING btree (id_categoria);


--
-- TOC entry 3284 (class 1259 OID 61453210)
-- Dependencies: 215
-- Name: assoccl_assoccl_pessoa_perfil_id_mensagem; Type: INDEX; Schema: basico_mensagem; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_assoccl_pessoa_perfil_id_mensagem ON assoccl_assoccl_pessoa_perfil USING btree (id_mensagem);


--
-- TOC entry 3275 (class 1259 OID 61453204)
-- Dependencies: 213
-- Name: template_id; Type: INDEX; Schema: basico_mensagem; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX template_id ON template USING btree (id);


--
-- TOC entry 3276 (class 1259 OID 61453205)
-- Dependencies: 213
-- Name: template_id_categoria; Type: INDEX; Schema: basico_mensagem; Owner: -; Tablespace: 
--

CREATE INDEX template_id_categoria ON template USING btree (id_categoria);


--
-- TOC entry 3277 (class 1259 OID 61453206)
-- Dependencies: 213
-- Name: template_id_generico_proprietario; Type: INDEX; Schema: basico_mensagem; Owner: -; Tablespace: 
--

CREATE INDEX template_id_generico_proprietario ON template USING btree (id_generico_proprietario);


--
-- TOC entry 3278 (class 1259 OID 61453207)
-- Dependencies: 213
-- Name: template_nome; Type: INDEX; Schema: basico_mensagem; Owner: -; Tablespace: 
--

CREATE INDEX template_nome ON template USING btree (nome);


SET search_path = basico_mensagem_assoc_email, pg_catalog;

--
-- TOC entry 3269 (class 1259 OID 61453202)
-- Dependencies: 211
-- Name: assoc_dados_id; Type: INDEX; Schema: basico_mensagem_assoc_email; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_dados_id ON assoc_dados USING btree (id);


--
-- TOC entry 3270 (class 1259 OID 61453203)
-- Dependencies: 211
-- Name: assoc_dados_id_assoc_email; Type: INDEX; Schema: basico_mensagem_assoc_email; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_dados_id_assoc_email ON assoc_dados USING btree (id_assoc_email);


SET search_path = basico_metodo_validacao, pg_catalog;

--
-- TOC entry 3262 (class 1259 OID 61453199)
-- Dependencies: 209
-- Name: assoccl_include_id; Type: INDEX; Schema: basico_metodo_validacao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_include_id ON assoccl_include USING btree (id);


--
-- TOC entry 3263 (class 1259 OID 61453201)
-- Dependencies: 209
-- Name: assoccl_include_id_include; Type: INDEX; Schema: basico_metodo_validacao; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_include ON assoccl_include USING btree (id_include);


--
-- TOC entry 3264 (class 1259 OID 61453200)
-- Dependencies: 209
-- Name: assoccl_include_id_metodo_validacao; Type: INDEX; Schema: basico_metodo_validacao; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_metodo_validacao ON assoccl_include USING btree (id_metodo_validacao);


SET search_path = basico_output, pg_catalog;

--
-- TOC entry 3255 (class 1259 OID 61453196)
-- Dependencies: 207
-- Name: assoccl_include_id; Type: INDEX; Schema: basico_output; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_include_id ON assoccl_include USING btree (id);


--
-- TOC entry 3256 (class 1259 OID 61453198)
-- Dependencies: 207
-- Name: assoccl_include_id_include; Type: INDEX; Schema: basico_output; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_include ON assoccl_include USING btree (id_include);


--
-- TOC entry 3257 (class 1259 OID 61453197)
-- Dependencies: 207
-- Name: assoccl_include_id_output; Type: INDEX; Schema: basico_output; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_output ON assoccl_include USING btree (id_output);


SET search_path = basico_perfil, pg_catalog;

--
-- TOC entry 3248 (class 1259 OID 61453193)
-- Dependencies: 205
-- Name: assoccl_modulo_id; Type: INDEX; Schema: basico_perfil; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_modulo_id ON assoccl_modulo USING btree (id);


--
-- TOC entry 3249 (class 1259 OID 61453194)
-- Dependencies: 205
-- Name: assoccl_modulo_id_modulo; Type: INDEX; Schema: basico_perfil; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_modulo_id_modulo ON assoccl_modulo USING btree (id_modulo);


--
-- TOC entry 3250 (class 1259 OID 61453195)
-- Dependencies: 205
-- Name: assoccl_modulo_id_perfil; Type: INDEX; Schema: basico_perfil; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_modulo_id_perfil ON assoccl_modulo USING btree (id_perfil);


SET search_path = basico_pessoa, pg_catalog;

--
-- TOC entry 3243 (class 1259 OID 61453190)
-- Dependencies: 203
-- Name: assoc_dados_id; Type: INDEX; Schema: basico_pessoa; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_dados_id ON assoc_dados USING btree (id);


--
-- TOC entry 3244 (class 1259 OID 61453191)
-- Dependencies: 203
-- Name: assoc_dados_id_pessoa; Type: INDEX; Schema: basico_pessoa; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_dados_id_pessoa ON assoc_dados USING btree (id_pessoa);


--
-- TOC entry 3245 (class 1259 OID 61453192)
-- Dependencies: 203
-- Name: assoc_dados_nome; Type: INDEX; Schema: basico_pessoa; Owner: -; Tablespace: 
--

CREATE INDEX assoc_dados_nome ON assoc_dados USING btree (nome);


--
-- TOC entry 3236 (class 1259 OID 61453187)
-- Dependencies: 201
-- Name: assoccl_perfil_id; Type: INDEX; Schema: basico_pessoa; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_perfil_id ON assoccl_perfil USING btree (id);


--
-- TOC entry 3237 (class 1259 OID 61453189)
-- Dependencies: 201
-- Name: assoccl_perfil_id_perfil; Type: INDEX; Schema: basico_pessoa; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_perfil_id_perfil ON assoccl_perfil USING btree (id_perfil);


--
-- TOC entry 3238 (class 1259 OID 61453188)
-- Dependencies: 201
-- Name: assoccl_perfil_id_pessoa; Type: INDEX; Schema: basico_pessoa; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_perfil_id_pessoa ON assoccl_perfil USING btree (id_pessoa);


--
-- TOC entry 3231 (class 1259 OID 61453184)
-- Dependencies: 199
-- Name: assoccl_tipo_vinculo_id; Type: INDEX; Schema: basico_pessoa; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_tipo_vinculo_id ON assoccl_tipo_vinculo USING btree (id);


--
-- TOC entry 3232 (class 1259 OID 61453185)
-- Dependencies: 199
-- Name: assoccl_tipo_vinculo_id_pessoa; Type: INDEX; Schema: basico_pessoa; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_tipo_vinculo_id_pessoa ON assoccl_tipo_vinculo USING btree (id_pessoa);


--
-- TOC entry 3233 (class 1259 OID 61453186)
-- Dependencies: 199
-- Name: assoccl_tipo_vinculo_id_tipo_vinculo; Type: INDEX; Schema: basico_pessoa; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_tipo_vinculo_id_tipo_vinculo ON assoccl_tipo_vinculo USING btree (id_tipo_vinculo);


--
-- TOC entry 3225 (class 1259 OID 61453182)
-- Dependencies: 197
-- Name: login_id; Type: INDEX; Schema: basico_pessoa; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX login_id ON login USING btree (id);


--
-- TOC entry 3226 (class 1259 OID 61453183)
-- Dependencies: 197
-- Name: login_id_pessoa; Type: INDEX; Schema: basico_pessoa; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX login_id_pessoa ON login USING btree (id_pessoa);


SET search_path = basico_pessoa_juridica, pg_catalog;

--
-- TOC entry 3219 (class 1259 OID 61453181)
-- Dependencies: 195
-- Name: assoc_banco_codigo; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_banco_codigo ON assoc_banco USING btree (codigo);


--
-- TOC entry 3220 (class 1259 OID 61453178)
-- Dependencies: 195
-- Name: assoc_banco_id; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_banco_id ON assoc_banco USING btree (id);


--
-- TOC entry 3221 (class 1259 OID 61453180)
-- Dependencies: 195
-- Name: assoc_banco_id_categoria; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assoc_banco_id_categoria ON assoc_banco USING btree (id_categoria);


--
-- TOC entry 3222 (class 1259 OID 61453179)
-- Dependencies: 195
-- Name: assoc_banco_id_pessoa_juridica; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_banco_id_pessoa_juridica ON assoc_banco USING btree (id_pessoa_juridica);


--
-- TOC entry 3212 (class 1259 OID 61453173)
-- Dependencies: 193
-- Name: assoc_dados_id; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_dados_id ON assoc_dados USING btree (id);


--
-- TOC entry 3213 (class 1259 OID 61453174)
-- Dependencies: 193
-- Name: assoc_dados_id_pessoa_juridica; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_dados_id_pessoa_juridica ON assoc_dados USING btree (id_pessoa_juridica);


--
-- TOC entry 3214 (class 1259 OID 61453176)
-- Dependencies: 193
-- Name: assoc_dados_nome_fantasia; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assoc_dados_nome_fantasia ON assoc_dados USING btree (nome_fantasia);


--
-- TOC entry 3215 (class 1259 OID 61453175)
-- Dependencies: 193
-- Name: assoc_dados_razao_social; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assoc_dados_razao_social ON assoc_dados USING btree (razao_social);


--
-- TOC entry 3216 (class 1259 OID 61453177)
-- Dependencies: 193
-- Name: assoc_dados_sigla; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assoc_dados_sigla ON assoc_dados USING btree (sigla);


--
-- TOC entry 3204 (class 1259 OID 61453169)
-- Dependencies: 191
-- Name: assocag_incubadora_id; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assocag_incubadora_id ON assocag_incubadora USING btree (id);


--
-- TOC entry 3205 (class 1259 OID 61453170)
-- Dependencies: 191
-- Name: assocag_incubadora_id_categoria; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assocag_incubadora_id_categoria ON assocag_incubadora USING btree (id_categoria);


--
-- TOC entry 3206 (class 1259 OID 61453171)
-- Dependencies: 191
-- Name: assocag_incubadora_id_pessoa_juridica; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assocag_incubadora_id_pessoa_juridica ON assocag_incubadora USING btree (id_pessoa_juridica);


--
-- TOC entry 3207 (class 1259 OID 61453172)
-- Dependencies: 191
-- Name: assocag_incubadora_id_pessoa_juridica_incubada; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assocag_incubadora_id_pessoa_juridica_incubada ON assocag_incubadora USING btree (id_pessoa_juridica_incubada);


--
-- TOC entry 3194 (class 1259 OID 61453163)
-- Dependencies: 189
-- Name: assocag_parceria_id; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assocag_parceria_id ON assocag_parceria USING btree (id);


--
-- TOC entry 3195 (class 1259 OID 61453167)
-- Dependencies: 189
-- Name: assocag_parceria_id_assocag_parceria; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assocag_parceria_id_assocag_parceria ON assocag_parceria USING btree (id_assocag_parceria);


--
-- TOC entry 3196 (class 1259 OID 61453164)
-- Dependencies: 189
-- Name: assocag_parceria_id_categoria; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assocag_parceria_id_categoria ON assocag_parceria USING btree (id_categoria);


--
-- TOC entry 3197 (class 1259 OID 61453165)
-- Dependencies: 189
-- Name: assocag_parceria_id_pessoa_juridica; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assocag_parceria_id_pessoa_juridica ON assocag_parceria USING btree (id_pessoa_juridica);


--
-- TOC entry 3198 (class 1259 OID 61453166)
-- Dependencies: 189
-- Name: assocag_parceria_id_pessoa_juridica_parceira; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assocag_parceria_id_pessoa_juridica_parceira ON assocag_parceria USING btree (id_pessoa_juridica_parceira);


--
-- TOC entry 3199 (class 1259 OID 61453168)
-- Dependencies: 189
-- Name: assocag_parceria_nome; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assocag_parceria_nome ON assocag_parceria USING btree (nome);


--
-- TOC entry 3187 (class 1259 OID 61453160)
-- Dependencies: 187
-- Name: assoccl_area_economia_id; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_area_economia_id ON assoccl_area_economia USING btree (id);


--
-- TOC entry 3188 (class 1259 OID 61453161)
-- Dependencies: 187
-- Name: assoccl_area_economia_id_area_economia; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_area_economia_id_area_economia ON assoccl_area_economia USING btree (id_area_economia);


--
-- TOC entry 3189 (class 1259 OID 61453162)
-- Dependencies: 187
-- Name: assoccl_area_economia_id_pessoa_juridica; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_area_economia_id_pessoa_juridica ON assoccl_area_economia USING btree (id_pessoa_juridica);


--
-- TOC entry 3180 (class 1259 OID 61453157)
-- Dependencies: 185
-- Name: assoccl_capital_social_id; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_capital_social_id ON assoccl_capital_social USING btree (id);


--
-- TOC entry 3181 (class 1259 OID 61453159)
-- Dependencies: 185
-- Name: assoccl_capital_social_id_capital_social; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_capital_social_id_capital_social ON assoccl_capital_social USING btree (id_capital_social);


--
-- TOC entry 3182 (class 1259 OID 61453158)
-- Dependencies: 185
-- Name: assoccl_capital_social_id_pessoa_juridica; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_capital_social_id_pessoa_juridica ON assoccl_capital_social USING btree (id_pessoa_juridica);


--
-- TOC entry 3173 (class 1259 OID 61453154)
-- Dependencies: 183
-- Name: assoccl_faturamento_id; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_faturamento_id ON assoccl_faturamento USING btree (id);


--
-- TOC entry 3174 (class 1259 OID 61453155)
-- Dependencies: 183
-- Name: assoccl_faturamento_id_categoria; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_faturamento_id_categoria ON assoccl_faturamento USING btree (id_categoria);


--
-- TOC entry 3175 (class 1259 OID 61453156)
-- Dependencies: 183
-- Name: assoccl_faturamento_id_pessoa_juridica; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_faturamento_id_pessoa_juridica ON assoccl_faturamento USING btree (id_pessoa_juridica);


--
-- TOC entry 3165 (class 1259 OID 61453150)
-- Dependencies: 181
-- Name: assoccl_quadro_funcionario_id; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_quadro_funcionario_id ON assoccl_quadro_funcionario USING btree (id);


--
-- TOC entry 3166 (class 1259 OID 61453151)
-- Dependencies: 181
-- Name: assoccl_quadro_funcionario_id_categoria; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_quadro_funcionario_id_categoria ON assoccl_quadro_funcionario USING btree (id_categoria);


--
-- TOC entry 3167 (class 1259 OID 61453152)
-- Dependencies: 181
-- Name: assoccl_quadro_funcionario_id_pessoa_juridica; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_quadro_funcionario_id_pessoa_juridica ON assoccl_quadro_funcionario USING btree (id_pessoa_juridica);


--
-- TOC entry 3168 (class 1259 OID 61453153)
-- Dependencies: 181
-- Name: assoccl_quadro_funcionario_id_titulacao; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_quadro_funcionario_id_titulacao ON assoccl_quadro_funcionario USING btree (id_titulacao);


--
-- TOC entry 3159 (class 1259 OID 61453149)
-- Dependencies: 179
-- Name: capital_social_constante_textual; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX capital_social_constante_textual ON capital_social USING btree (constante_textual);


--
-- TOC entry 3160 (class 1259 OID 61453146)
-- Dependencies: 179
-- Name: capital_social_id; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX capital_social_id ON capital_social USING btree (id);


--
-- TOC entry 3161 (class 1259 OID 61453147)
-- Dependencies: 179
-- Name: capital_social_id_categoria; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX capital_social_id_categoria ON capital_social USING btree (id_categoria);


--
-- TOC entry 3162 (class 1259 OID 61453148)
-- Dependencies: 179
-- Name: capital_social_nome; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX capital_social_nome ON capital_social USING btree (nome);


--
-- TOC entry 3152 (class 1259 OID 61453145)
-- Dependencies: 177
-- Name: natureza_codigo; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX natureza_codigo ON natureza USING btree (codigo);


--
-- TOC entry 3153 (class 1259 OID 61453144)
-- Dependencies: 177
-- Name: natureza_constante_textual; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX natureza_constante_textual ON natureza USING btree (constante_textual);


--
-- TOC entry 3154 (class 1259 OID 61453141)
-- Dependencies: 177
-- Name: natureza_id; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX natureza_id ON natureza USING btree (id);


--
-- TOC entry 3155 (class 1259 OID 61453142)
-- Dependencies: 177
-- Name: natureza_id_categoria; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX natureza_id_categoria ON natureza USING btree (id_categoria);


--
-- TOC entry 3156 (class 1259 OID 61453143)
-- Dependencies: 177
-- Name: natureza_nome; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX natureza_nome ON natureza USING btree (nome);


SET search_path = basico_sequencia, pg_catalog;

--
-- TOC entry 3141 (class 1259 OID 61453139)
-- Dependencies: 175
-- Name: assocsq_acao_aplicacao_constante_textual; Type: INDEX; Schema: basico_sequencia; Owner: -; Tablespace: 
--

CREATE INDEX assocsq_acao_aplicacao_constante_textual ON assocsq_acao_aplicacao USING btree (constante_textual);


--
-- TOC entry 3142 (class 1259 OID 61453134)
-- Dependencies: 175
-- Name: assocsq_acao_aplicacao_id; Type: INDEX; Schema: basico_sequencia; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assocsq_acao_aplicacao_id ON assocsq_acao_aplicacao USING btree (id);


--
-- TOC entry 3143 (class 1259 OID 61453137)
-- Dependencies: 175
-- Name: assocsq_acao_aplicacao_id_acao_aplicacao; Type: INDEX; Schema: basico_sequencia; Owner: -; Tablespace: 
--

CREATE INDEX assocsq_acao_aplicacao_id_acao_aplicacao ON assocsq_acao_aplicacao USING btree (id_acao_aplicacao);


--
-- TOC entry 3144 (class 1259 OID 61453135)
-- Dependencies: 175
-- Name: assocsq_acao_aplicacao_id_categoria; Type: INDEX; Schema: basico_sequencia; Owner: -; Tablespace: 
--

CREATE INDEX assocsq_acao_aplicacao_id_categoria ON assocsq_acao_aplicacao USING btree (id_categoria);


--
-- TOC entry 3145 (class 1259 OID 61453136)
-- Dependencies: 175
-- Name: assocsq_acao_aplicacao_id_sequencia; Type: INDEX; Schema: basico_sequencia; Owner: -; Tablespace: 
--

CREATE INDEX assocsq_acao_aplicacao_id_sequencia ON assocsq_acao_aplicacao USING btree (id_sequencia);


--
-- TOC entry 3146 (class 1259 OID 61453138)
-- Dependencies: 175
-- Name: assocsq_acao_aplicacao_nome; Type: INDEX; Schema: basico_sequencia; Owner: -; Tablespace: 
--

CREATE INDEX assocsq_acao_aplicacao_nome ON assocsq_acao_aplicacao USING btree (nome);


--
-- TOC entry 3147 (class 1259 OID 61453140)
-- Dependencies: 175
-- Name: assocsq_acao_aplicacao_passo; Type: INDEX; Schema: basico_sequencia; Owner: -; Tablespace: 
--

CREATE INDEX assocsq_acao_aplicacao_passo ON assocsq_acao_aplicacao USING btree (passo);


SET search_path = basico_template, pg_catalog;

--
-- TOC entry 3134 (class 1259 OID 61453131)
-- Dependencies: 173
-- Name: assoccl_include_id; Type: INDEX; Schema: basico_template; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_include_id ON assoccl_include USING btree (id);


--
-- TOC entry 3135 (class 1259 OID 61453133)
-- Dependencies: 173
-- Name: assoccl_include_id_include; Type: INDEX; Schema: basico_template; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_include ON assoccl_include USING btree (id_include);


--
-- TOC entry 3136 (class 1259 OID 61453132)
-- Dependencies: 173
-- Name: assoccl_include_id_template; Type: INDEX; Schema: basico_template; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_template ON assoccl_include USING btree (id_template);


--
-- TOC entry 3127 (class 1259 OID 61453128)
-- Dependencies: 171
-- Name: assoccl_output_id; Type: INDEX; Schema: basico_template; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_output_id ON assoccl_output USING btree (id);


--
-- TOC entry 3128 (class 1259 OID 61453130)
-- Dependencies: 171
-- Name: assoccl_output_id_output; Type: INDEX; Schema: basico_template; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_output_id_output ON assoccl_output USING btree (id_output);


--
-- TOC entry 3129 (class 1259 OID 61453129)
-- Dependencies: 171
-- Name: assoccl_output_id_template; Type: INDEX; Schema: basico_template; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_output_id_template ON assoccl_output USING btree (id_template);


SET search_path = basico_validator, pg_catalog;

--
-- TOC entry 3121 (class 1259 OID 61453127)
-- Dependencies: 169
-- Name: grupo_constante_textual; Type: INDEX; Schema: basico_validator; Owner: -; Tablespace: 
--

CREATE INDEX grupo_constante_textual ON grupo USING btree (constante_textual);


--
-- TOC entry 3122 (class 1259 OID 61453124)
-- Dependencies: 169
-- Name: grupo_id; Type: INDEX; Schema: basico_validator; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX grupo_id ON grupo USING btree (id);


--
-- TOC entry 3123 (class 1259 OID 61453125)
-- Dependencies: 169
-- Name: grupo_id_categoria; Type: INDEX; Schema: basico_validator; Owner: -; Tablespace: 
--

CREATE INDEX grupo_id_categoria ON grupo USING btree (id_categoria);


--
-- TOC entry 3124 (class 1259 OID 61453126)
-- Dependencies: 169
-- Name: grupo_nome; Type: INDEX; Schema: basico_validator; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX grupo_nome ON grupo USING btree (nome);


SET search_path = basico_validator_grupo, pg_catalog;

--
-- TOC entry 3115 (class 1259 OID 61453120)
-- Dependencies: 167
-- Name: assocag_grupo_id; Type: INDEX; Schema: basico_validator_grupo; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assocag_grupo_id ON assocag_grupo USING btree (id);


--
-- TOC entry 3116 (class 1259 OID 61453122)
-- Dependencies: 167
-- Name: assocag_grupo_id_validator; Type: INDEX; Schema: basico_validator_grupo; Owner: -; Tablespace: 
--

CREATE INDEX assocag_grupo_id_validator ON assocag_grupo USING btree (id_validator);


--
-- TOC entry 3117 (class 1259 OID 61453121)
-- Dependencies: 167
-- Name: assocag_grupo_id_validator_grupo; Type: INDEX; Schema: basico_validator_grupo; Owner: -; Tablespace: 
--

CREATE INDEX assocag_grupo_id_validator_grupo ON assocag_grupo USING btree (id_validator_grupo);


--
-- TOC entry 3118 (class 1259 OID 61453123)
-- Dependencies: 167
-- Name: assocag_grupo_id_validator_grupo_assoc; Type: INDEX; Schema: basico_validator_grupo; Owner: -; Tablespace: 
--

CREATE INDEX assocag_grupo_id_validator_grupo_assoc ON assocag_grupo USING btree (id_validator_grupo_assoc);


SET search_path = basico, pg_catalog;

--
-- TOC entry 4213 (class 2606 OID 61452039)
-- Dependencies: 401 355 3777
-- Name: fk_acao_aplicacao_modulo; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY acao_aplicacao
    ADD CONSTRAINT fk_acao_aplicacao_modulo FOREIGN KEY (id_modulo) REFERENCES modulo(id);


--
-- TOC entry 4212 (class 2606 OID 61452574)
-- Dependencies: 3931 399 391
-- Name: fk_acao_evento_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY acao_evento
    ADD CONSTRAINT fk_acao_evento_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4211 (class 2606 OID 61452049)
-- Dependencies: 397 391 3931
-- Name: fk_ajuda_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY ajuda
    ADD CONSTRAINT fk_ajuda_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4210 (class 2606 OID 61452945)
-- Dependencies: 3931 391 395
-- Name: fk_area_conhecimento_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY area_conhecimento
    ADD CONSTRAINT fk_area_conhecimento_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4209 (class 2606 OID 61452810)
-- Dependencies: 395 3951 395
-- Name: fk_area_conhecimento_pai; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY area_conhecimento
    ADD CONSTRAINT fk_area_conhecimento_pai FOREIGN KEY (id_area_conhecimento_pai) REFERENCES area_conhecimento(id);


--
-- TOC entry 4207 (class 2606 OID 61452094)
-- Dependencies: 393 391 3931
-- Name: fk_area_economia_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY area_economia
    ADD CONSTRAINT fk_area_economia_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4208 (class 2606 OID 61452725)
-- Dependencies: 393 393 3941
-- Name: fk_area_economia_pai; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY area_economia
    ADD CONSTRAINT fk_area_economia_pai FOREIGN KEY (id_area_economia_pai) REFERENCES area_economia(id);


--
-- TOC entry 4202 (class 2606 OID 61452930)
-- Dependencies: 391 387 3931
-- Name: fk_arquivo_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY cpg_arquivo
    ADD CONSTRAINT fk_arquivo_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4206 (class 2606 OID 61452955)
-- Dependencies: 391 391 3931
-- Name: fk_categoria_pai; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY categoria
    ADD CONSTRAINT fk_categoria_pai FOREIGN KEY (id_categoria_pai) REFERENCES categoria(id);


--
-- TOC entry 4205 (class 2606 OID 61452334)
-- Dependencies: 391 339 3720
-- Name: fk_categoria_tipo_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY categoria
    ADD CONSTRAINT fk_categoria_tipo_categoria FOREIGN KEY (id_tipo_categoria) REFERENCES tipo_categoria(id);


--
-- TOC entry 4201 (class 2606 OID 61453055)
-- Dependencies: 385 3931 391
-- Name: fk_codigo_acesso_categoria_acesso; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY cpg_codigo_acesso
    ADD CONSTRAINT fk_codigo_acesso_categoria_acesso FOREIGN KEY (id_categoria_acesso) REFERENCES categoria(id);


--
-- TOC entry 4200 (class 2606 OID 61452224)
-- Dependencies: 3931 385 391
-- Name: fk_codigo_acesso_categoria_prop; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY cpg_codigo_acesso
    ADD CONSTRAINT fk_codigo_acesso_categoria_prop FOREIGN KEY (id_categoria_proprietario) REFERENCES categoria(id);


--
-- TOC entry 4203 (class 2606 OID 61452419)
-- Dependencies: 391 389 3931
-- Name: fk_componente_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY componente
    ADD CONSTRAINT fk_componente_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4204 (class 2606 OID 61452635)
-- Dependencies: 389 3729 341
-- Name: fk_componente_template; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY componente
    ADD CONSTRAINT fk_componente_template FOREIGN KEY (id_template) REFERENCES template(id);


--
-- TOC entry 4199 (class 2606 OID 61451954)
-- Dependencies: 391 383 3931
-- Name: fk_dados_bancarios_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY cpg_dados_bancarios
    ADD CONSTRAINT fk_dados_bancarios_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4192 (class 2606 OID 61453090)
-- Dependencies: 3931 391 373
-- Name: fk_dados_biometricos_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY dados_biometricos
    ADD CONSTRAINT fk_dados_biometricos_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4191 (class 2606 OID 61453040)
-- Dependencies: 3931 371 391
-- Name: fk_dic_expressao_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY dicionario_expressao
    ADD CONSTRAINT fk_dic_expressao_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4198 (class 2606 OID 61452364)
-- Dependencies: 3931 391 381
-- Name: fk_doc_identificacao_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY cpg_documento_identificacao
    ADD CONSTRAINT fk_doc_identificacao_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4197 (class 2606 OID 61452064)
-- Dependencies: 381 347 3754
-- Name: fk_doc_identificacao_pj_emissor; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY cpg_documento_identificacao
    ADD CONSTRAINT fk_doc_identificacao_pj_emissor FOREIGN KEY (id_pessoa_juridica_emissor) REFERENCES pessoa_juridica(id);


--
-- TOC entry 4190 (class 2606 OID 61453080)
-- Dependencies: 3931 391 369
-- Name: fk_evento_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY evento
    ADD CONSTRAINT fk_evento_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4189 (class 2606 OID 61453010)
-- Dependencies: 3931 367 391
-- Name: fk_filter_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY filter
    ADD CONSTRAINT fk_filter_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4188 (class 2606 OID 61452259)
-- Dependencies: 367 3921 389
-- Name: fk_filter_componente; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY filter
    ADD CONSTRAINT fk_filter_componente FOREIGN KEY (id_componente) REFERENCES componente(id);


--
-- TOC entry 4184 (class 2606 OID 61451934)
-- Dependencies: 3962 365 397
-- Name: fk_formulario_ajuda; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY formulario
    ADD CONSTRAINT fk_formulario_ajuda FOREIGN KEY (id_ajuda) REFERENCES ajuda(id);


--
-- TOC entry 4187 (class 2606 OID 61452404)
-- Dependencies: 391 365 3931
-- Name: fk_formulario_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY formulario
    ADD CONSTRAINT fk_formulario_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4186 (class 2606 OID 61452244)
-- Dependencies: 365 389 3921
-- Name: fk_formulario_componente; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY formulario
    ADD CONSTRAINT fk_formulario_componente FOREIGN KEY (id_componente) REFERENCES componente(id);


--
-- TOC entry 4185 (class 2606 OID 61452159)
-- Dependencies: 365 365 3815
-- Name: fk_formulario_pai; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY formulario
    ADD CONSTRAINT fk_formulario_pai FOREIGN KEY (id_formulario_pai) REFERENCES formulario(id);


--
-- TOC entry 4183 (class 2606 OID 61452600)
-- Dependencies: 391 363 3931
-- Name: fk_include_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY include
    ADD CONSTRAINT fk_include_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4196 (class 2606 OID 61452344)
-- Dependencies: 391 3931 379
-- Name: fk_link_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY cpg_link
    ADD CONSTRAINT fk_link_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4181 (class 2606 OID 61452519)
-- Dependencies: 361 3239 201
-- Name: fk_log_assoccl_perfil; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY log
    ADD CONSTRAINT fk_log_assoccl_perfil FOREIGN KEY (id_assoccl_perfil) REFERENCES basico_pessoa.assoccl_perfil(id);


--
-- TOC entry 4182 (class 2606 OID 61452850)
-- Dependencies: 3931 361 391
-- Name: fk_log_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY log
    ADD CONSTRAINT fk_log_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4180 (class 2606 OID 61452019)
-- Dependencies: 359 3931 391
-- Name: fk_mensagem_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY mensagem
    ADD CONSTRAINT fk_mensagem_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4179 (class 2606 OID 61452199)
-- Dependencies: 391 357 3931
-- Name: fk_metodo_validacao_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY metodo_validacao
    ADD CONSTRAINT fk_metodo_validacao_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4178 (class 2606 OID 61452179)
-- Dependencies: 391 355 3931
-- Name: fk_modulo_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY modulo
    ADD CONSTRAINT fk_modulo_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4177 (class 2606 OID 61451974)
-- Dependencies: 3777 355 355
-- Name: fk_modulo_pai; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY modulo
    ADD CONSTRAINT fk_modulo_pai FOREIGN KEY (id_modulo_pai) REFERENCES modulo(id);


--
-- TOC entry 4176 (class 2606 OID 61452254)
-- Dependencies: 3931 353 391
-- Name: fk_output_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY output
    ADD CONSTRAINT fk_output_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4175 (class 2606 OID 61452660)
-- Dependencies: 391 351 3931
-- Name: fk_perfil_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY perfil
    ADD CONSTRAINT fk_perfil_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4174 (class 2606 OID 61452620)
-- Dependencies: 355 351 3777
-- Name: fk_perfil_modulo; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY perfil
    ADD CONSTRAINT fk_perfil_modulo FOREIGN KEY (id_modulo) REFERENCES modulo(id);


--
-- TOC entry 4169 (class 2606 OID 61452379)
-- Dependencies: 349 3598 305
-- Name: fk_pessoa_email_default; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa
    ADD CONSTRAINT fk_pessoa_email_default FOREIGN KEY (id_email_default) REFERENCES basico_contato.cpg_email(id);


--
-- TOC entry 4170 (class 2606 OID 61452650)
-- Dependencies: 349 3305 221
-- Name: fk_pessoa_endereco_corresp; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa
    ADD CONSTRAINT fk_pessoa_endereco_corresp FOREIGN KEY (id_endereco_correspondencia) REFERENCES basico_localizacao.cpg_endereco(id);


--
-- TOC entry 4173 (class 2606 OID 61452835)
-- Dependencies: 349 221 3305
-- Name: fk_pessoa_endereco_default; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa
    ADD CONSTRAINT fk_pessoa_endereco_default FOREIGN KEY (id_endereco_default) REFERENCES basico_localizacao.cpg_endereco(id);


--
-- TOC entry 4166 (class 2606 OID 61452975)
-- Dependencies: 177 3157 347
-- Name: fk_pessoa_juridica_natureza; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa_juridica
    ADD CONSTRAINT fk_pessoa_juridica_natureza FOREIGN KEY (id_natureza) REFERENCES basico_pessoa_juridica.natureza(id);


--
-- TOC entry 4165 (class 2606 OID 61452880)
-- Dependencies: 3754 347 347
-- Name: fk_pessoa_juridica_pai; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa_juridica
    ADD CONSTRAINT fk_pessoa_juridica_pai FOREIGN KEY (id_pessoa_juridica_pai) REFERENCES pessoa_juridica(id);


--
-- TOC entry 4171 (class 2606 OID 61452785)
-- Dependencies: 3871 349 379
-- Name: fk_pessoa_link_default; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa
    ADD CONSTRAINT fk_pessoa_link_default FOREIGN KEY (id_link_default) REFERENCES cpg_link(id);


--
-- TOC entry 4168 (class 2606 OID 61452169)
-- Dependencies: 349 351 3763
-- Name: fk_pessoa_perfil_padrao; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa
    ADD CONSTRAINT fk_pessoa_perfil_padrao FOREIGN KEY (id_perfil_default) REFERENCES perfil(id);


--
-- TOC entry 4172 (class 2606 OID 61452825)
-- Dependencies: 3588 303 349
-- Name: fk_pessoa_telefone_default; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa
    ADD CONSTRAINT fk_pessoa_telefone_default FOREIGN KEY (id_telefone_default) REFERENCES basico_contato.cpg_telefone(id);


--
-- TOC entry 4158 (class 2606 OID 61451964)
-- Dependencies: 3190 347 187
-- Name: fk_pj_area_economia_default; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa_juridica
    ADD CONSTRAINT fk_pj_area_economia_default FOREIGN KEY (id_area_economia_default) REFERENCES basico_pessoa_juridica.assoccl_area_economia(id);


--
-- TOC entry 4161 (class 2606 OID 61452349)
-- Dependencies: 3931 391 347
-- Name: fk_pj_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa_juridica
    ADD CONSTRAINT fk_pj_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4160 (class 2606 OID 61452269)
-- Dependencies: 347 3598 305
-- Name: fk_pj_email_default; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa_juridica
    ADD CONSTRAINT fk_pj_email_default FOREIGN KEY (id_email_default) REFERENCES basico_contato.cpg_email(id);


--
-- TOC entry 4163 (class 2606 OID 61452715)
-- Dependencies: 347 221 3305
-- Name: fk_pj_endereco_correspond; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa_juridica
    ADD CONSTRAINT fk_pj_endereco_correspond FOREIGN KEY (id_endereco_correspondencia) REFERENCES basico_localizacao.cpg_endereco(id);


--
-- TOC entry 4162 (class 2606 OID 61452605)
-- Dependencies: 3305 347 221
-- Name: fk_pj_endereco_default; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa_juridica
    ADD CONSTRAINT fk_pj_endereco_default FOREIGN KEY (id_endereco_default) REFERENCES basico_localizacao.cpg_endereco(id);


--
-- TOC entry 4167 (class 2606 OID 61453095)
-- Dependencies: 3871 379 347
-- Name: fk_pj_link_default; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa_juridica
    ADD CONSTRAINT fk_pj_link_default FOREIGN KEY (id_link_default) REFERENCES cpg_link(id);


--
-- TOC entry 4164 (class 2606 OID 61452840)
-- Dependencies: 3757 347 349
-- Name: fk_pj_pessoa_resp_cadastro; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa_juridica
    ADD CONSTRAINT fk_pj_pessoa_resp_cadastro FOREIGN KEY (id_pessoa_responsavel_cadastro) REFERENCES pessoa(id);


--
-- TOC entry 4159 (class 2606 OID 61452029)
-- Dependencies: 347 303 3588
-- Name: fk_pj_telefone_default; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa_juridica
    ADD CONSTRAINT fk_pj_telefone_default FOREIGN KEY (id_telefone_default) REFERENCES basico_contato.cpg_telefone(id);


--
-- TOC entry 4194 (class 2606 OID 61452414)
-- Dependencies: 3931 377 391
-- Name: fk_produto_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY cpg_produto
    ADD CONSTRAINT fk_produto_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4195 (class 2606 OID 61452765)
-- Dependencies: 3931 377 391
-- Name: fk_produto_categoria_moeda; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY cpg_produto
    ADD CONSTRAINT fk_produto_categoria_moeda FOREIGN KEY (id_categoria_moeda) REFERENCES categoria(id);


--
-- TOC entry 4157 (class 2606 OID 61452409)
-- Dependencies: 3931 345 391
-- Name: fk_profissao_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY profissao
    ADD CONSTRAINT fk_profissao_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4156 (class 2606 OID 61452770)
-- Dependencies: 391 343 3931
-- Name: fk_sequencia_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY sequencia
    ADD CONSTRAINT fk_sequencia_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4155 (class 2606 OID 61452665)
-- Dependencies: 3931 341 391
-- Name: fk_template_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY template
    ADD CONSTRAINT fk_template_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4154 (class 2606 OID 61452980)
-- Dependencies: 3720 339 339
-- Name: fk_tipo_categoria_pai; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY tipo_categoria
    ADD CONSTRAINT fk_tipo_categoria_pai FOREIGN KEY (id_tipo_categoria_pai) REFERENCES tipo_categoria(id);


--
-- TOC entry 4193 (class 2606 OID 61452705)
-- Dependencies: 375 391 3931
-- Name: fk_token_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY cpg_token
    ADD CONSTRAINT fk_token_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4152 (class 2606 OID 61452439)
-- Dependencies: 3931 337 391
-- Name: fk_validator_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY validator
    ADD CONSTRAINT fk_validator_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4153 (class 2606 OID 61452459)
-- Dependencies: 337 3921 389
-- Name: fk_validator_componente; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY validator
    ADD CONSTRAINT fk_validator_componente FOREIGN KEY (id_componente) REFERENCES componente(id);


SET search_path = basico_acao_aplic_assoc_visao, pg_catalog;

--
-- TOC entry 4150 (class 2606 OID 61451984)
-- Dependencies: 335 333 3700
-- Name: fk_atr_met_rec_ref_atr_met_rec_post; Type: FK CONSTRAINT; Schema: basico_acao_aplic_assoc_visao; Owner: -
--

ALTER TABLE ONLY assoccl_atrib_met_rec_post
    ADD CONSTRAINT fk_atr_met_rec_ref_atr_met_rec_post FOREIGN KEY (id_atributo_metodo_recup_post) REFERENCES atributo_metodo_recup_post(id);


--
-- TOC entry 4149 (class 2606 OID 61452369)
-- Dependencies: 391 333 3931
-- Name: fk_atrib_met_rec_post_categoria; Type: FK CONSTRAINT; Schema: basico_acao_aplic_assoc_visao; Owner: -
--

ALTER TABLE ONLY atributo_metodo_recup_post
    ADD CONSTRAINT fk_atrib_met_rec_post_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 4151 (class 2606 OID 61452034)
-- Dependencies: 335 331 3694
-- Name: fk_atrib_met_rec_post_visao; Type: FK CONSTRAINT; Schema: basico_acao_aplic_assoc_visao; Owner: -
--

ALTER TABLE ONLY assoccl_atrib_met_rec_post
    ADD CONSTRAINT fk_atrib_met_rec_post_visao FOREIGN KEY (id_assoc_visao_ref_post) REFERENCES basico_acao_aplicacao.assoc_visao(id);


SET search_path = basico_acao_aplicacao, pg_catalog;

--
-- TOC entry 4147 (class 2606 OID 61452149)
-- Dependencies: 331 401 3980
-- Name: fk_assoc_visao_acao_aplicacao; Type: FK CONSTRAINT; Schema: basico_acao_aplicacao; Owner: -
--

ALTER TABLE ONLY assoc_visao
    ADD CONSTRAINT fk_assoc_visao_acao_aplicacao FOREIGN KEY (id_acao_aplicacao) REFERENCES basico.acao_aplicacao(id);


--
-- TOC entry 4148 (class 2606 OID 61452354)
-- Dependencies: 391 3931 331
-- Name: fk_assoc_visao_categoria; Type: FK CONSTRAINT; Schema: basico_acao_aplicacao; Owner: -
--

ALTER TABLE ONLY assoc_visao
    ADD CONSTRAINT fk_assoc_visao_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 4142 (class 2606 OID 61452494)
-- Dependencies: 3763 351 327
-- Name: fk_assoccl_acao_aplic_perfil_perfil; Type: FK CONSTRAINT; Schema: basico_acao_aplicacao; Owner: -
--

ALTER TABLE ONLY assoccl_perfil
    ADD CONSTRAINT fk_assoccl_acao_aplic_perfil_perfil FOREIGN KEY (id_perfil) REFERENCES basico.perfil(id);


--
-- TOC entry 4145 (class 2606 OID 61452469)
-- Dependencies: 401 3980 329
-- Name: fk_assoccl_met_valid_ac_aplic; Type: FK CONSTRAINT; Schema: basico_acao_aplicacao; Owner: -
--

ALTER TABLE ONLY assoccl_metodo_validacao
    ADD CONSTRAINT fk_assoccl_met_valid_ac_aplic FOREIGN KEY (id_acao_aplicacao) REFERENCES basico.acao_aplicacao(id);


--
-- TOC entry 4144 (class 2606 OID 61452429)
-- Dependencies: 357 329 3783
-- Name: fk_assoccl_met_valid_met_valid; Type: FK CONSTRAINT; Schema: basico_acao_aplicacao; Owner: -
--

ALTER TABLE ONLY assoccl_metodo_validacao
    ADD CONSTRAINT fk_assoccl_met_valid_met_valid FOREIGN KEY (id_metodo_validacao) REFERENCES basico.metodo_validacao(id);


--
-- TOC entry 4146 (class 2606 OID 61452755)
-- Dependencies: 351 3763 329
-- Name: fk_assoccl_met_valid_perfil; Type: FK CONSTRAINT; Schema: basico_acao_aplicacao; Owner: -
--

ALTER TABLE ONLY assoccl_metodo_validacao
    ADD CONSTRAINT fk_assoccl_met_valid_perfil FOREIGN KEY (id_perfil) REFERENCES basico.perfil(id);


--
-- TOC entry 4143 (class 2606 OID 61452509)
-- Dependencies: 327 3980 401
-- Name: fk_assoccl_perfil_acao_aplicacao; Type: FK CONSTRAINT; Schema: basico_acao_aplicacao; Owner: -
--

ALTER TABLE ONLY assoccl_perfil
    ADD CONSTRAINT fk_assoccl_perfil_acao_aplicacao FOREIGN KEY (id_acao_aplicacao) REFERENCES basico.acao_aplicacao(id);


SET search_path = basico_acao_evento, pg_catalog;

--
-- TOC entry 4140 (class 2606 OID 61452549)
-- Dependencies: 325 3971 399
-- Name: fk_assoccl_include_evento; Type: FK CONSTRAINT; Schema: basico_acao_evento; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_assoccl_include_evento FOREIGN KEY (id_acao_evento) REFERENCES basico.acao_evento(id);


--
-- TOC entry 4141 (class 2606 OID 61453070)
-- Dependencies: 3804 363 325
-- Name: fk_assoccl_include_include; Type: FK CONSTRAINT; Schema: basico_acao_evento; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_assoccl_include_include FOREIGN KEY (id_include) REFERENCES basico.include(id);


SET search_path = basico_ajuda, pg_catalog;

--
-- TOC entry 4139 (class 2606 OID 61453105)
-- Dependencies: 323 397 3962
-- Name: fk_assoccl_link_ajuda; Type: FK CONSTRAINT; Schema: basico_ajuda; Owner: -
--

ALTER TABLE ONLY assoccl_link
    ADD CONSTRAINT fk_assoccl_link_ajuda FOREIGN KEY (id_ajuda) REFERENCES basico.ajuda(id);


--
-- TOC entry 4138 (class 2606 OID 61453085)
-- Dependencies: 3871 379 323
-- Name: fk_assoccl_link_link; Type: FK CONSTRAINT; Schema: basico_ajuda; Owner: -
--

ALTER TABLE ONLY assoccl_link
    ADD CONSTRAINT fk_assoccl_link_link FOREIGN KEY (id_link) REFERENCES basico.cpg_link(id);


SET search_path = basico_assoc_banco, pg_catalog;

--
-- TOC entry 4136 (class 2606 OID 61452119)
-- Dependencies: 321 195 3223
-- Name: fk_assoc_tipo_conta_banco; Type: FK CONSTRAINT; Schema: basico_assoc_banco; Owner: -
--

ALTER TABLE ONLY assoc_tipo_conta
    ADD CONSTRAINT fk_assoc_tipo_conta_banco FOREIGN KEY (id_assoc_banco) REFERENCES basico_pessoa_juridica.assoc_banco(id);


--
-- TOC entry 4137 (class 2606 OID 61453015)
-- Dependencies: 3931 321 391
-- Name: fk_assoc_tipo_conta_categoria; Type: FK CONSTRAINT; Schema: basico_assoc_banco; Owner: -
--

ALTER TABLE ONLY assoc_tipo_conta
    ADD CONSTRAINT fk_assoc_tipo_conta_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


SET search_path = basico_assoc_dados_profis, pg_catalog;

--
-- TOC entry 4135 (class 2606 OID 61452579)
-- Dependencies: 317 3951 395
-- Name: fk_assoccl_dados_profis_area_c; Type: FK CONSTRAINT; Schema: basico_assoc_dados_profis; Owner: -
--

ALTER TABLE ONLY assoccl_area_conhecimento
    ADD CONSTRAINT fk_assoccl_dados_profis_area_c FOREIGN KEY (id_area_conhecimento) REFERENCES basico.area_conhecimento(id);


--
-- TOC entry 4134 (class 2606 OID 61452174)
-- Dependencies: 317 313 3626
-- Name: fk_assoccl_dados_profis_dados; Type: FK CONSTRAINT; Schema: basico_assoc_dados_profis; Owner: -
--

ALTER TABLE ONLY assoccl_area_conhecimento
    ADD CONSTRAINT fk_assoccl_dados_profis_dados FOREIGN KEY (id_assoc_dados_profissionais) REFERENCES basico_assoccl_tipo_vinculo.assoc_dados(id);


SET search_path = basico_assoccl_pessoa_perfil, pg_catalog;

--
-- TOC entry 4133 (class 2606 OID 61452569)
-- Dependencies: 315 3239 201
-- Name: fk_assoccl_pessoa_perfil; Type: FK CONSTRAINT; Schema: basico_assoccl_pessoa_perfil; Owner: -
--

ALTER TABLE ONLY assoc_dados
    ADD CONSTRAINT fk_assoccl_pessoa_perfil FOREIGN KEY (id_assoccl_pessoa_perfil) REFERENCES basico_pessoa.assoccl_perfil(id);


SET search_path = basico_assoccl_tipo_vinculo, pg_catalog;

--
-- TOC entry 4130 (class 2606 OID 61452504)
-- Dependencies: 3234 313 199
-- Name: fk_assoc_dado_assoccl_vin_profi; Type: FK CONSTRAINT; Schema: basico_assoccl_tipo_vinculo; Owner: -
--

ALTER TABLE ONLY assoc_dados
    ADD CONSTRAINT fk_assoc_dado_assoccl_vin_profi FOREIGN KEY (id_assoccl_vinculo_profissional) REFERENCES basico_pessoa.assoccl_tipo_vinculo(id);


--
-- TOC entry 4128 (class 2606 OID 61452069)
-- Dependencies: 313 347 3754
-- Name: fk_assoc_dados_pj_vinculo; Type: FK CONSTRAINT; Schema: basico_assoccl_tipo_vinculo; Owner: -
--

ALTER TABLE ONLY assoc_dados
    ADD CONSTRAINT fk_assoc_dados_pj_vinculo FOREIGN KEY (id_pessoa_juridica_vinculo) REFERENCES basico.pessoa_juridica(id);


--
-- TOC entry 4131 (class 2606 OID 61452895)
-- Dependencies: 313 345 3743
-- Name: fk_assoc_dados_profi_profissao; Type: FK CONSTRAINT; Schema: basico_assoccl_tipo_vinculo; Owner: -
--

ALTER TABLE ONLY assoc_dados
    ADD CONSTRAINT fk_assoc_dados_profi_profissao FOREIGN KEY (id_profissao) REFERENCES basico.profissao(id);


--
-- TOC entry 4132 (class 2606 OID 61453115)
-- Dependencies: 3556 313 295
-- Name: fk_assoc_dados_profis_reg_trab; Type: FK CONSTRAINT; Schema: basico_assoccl_tipo_vinculo; Owner: -
--

ALTER TABLE ONLY assoc_dados
    ADD CONSTRAINT fk_assoc_dados_profis_reg_trab FOREIGN KEY (id_regime_trabalho) REFERENCES basico_dados_profissionais.regime_trabalho(id);


--
-- TOC entry 4129 (class 2606 OID 61452394)
-- Dependencies: 291 313 3538
-- Name: fk_assoc_dados_vinc_empreg; Type: FK CONSTRAINT; Schema: basico_assoccl_tipo_vinculo; Owner: -
--

ALTER TABLE ONLY assoc_dados
    ADD CONSTRAINT fk_assoc_dados_vinc_empreg FOREIGN KEY (id_vinculo_empregaticio) REFERENCES basico_dados_profissionais.vinculo_empregaticio(id);


SET search_path = basico_categoria, pg_catalog;

--
-- TOC entry 4127 (class 2606 OID 61452264)
-- Dependencies: 3931 311 391
-- Name: fk_assoc_chave_estran_categ; Type: FK CONSTRAINT; Schema: basico_categoria; Owner: -
--

ALTER TABLE ONLY assoc_chave_estrangeira
    ADD CONSTRAINT fk_assoc_chave_estran_categ FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 4126 (class 2606 OID 61452009)
-- Dependencies: 355 3777 311
-- Name: fk_assoc_chave_estran_mod; Type: FK CONSTRAINT; Schema: basico_categoria; Owner: -
--

ALTER TABLE ONLY assoc_chave_estrangeira
    ADD CONSTRAINT fk_assoc_chave_estran_mod FOREIGN KEY (id_modulo) REFERENCES basico.modulo(id);


--
-- TOC entry 4125 (class 2606 OID 61452219)
-- Dependencies: 391 3931 309
-- Name: fk_assoc_evento_acao_categoria; Type: FK CONSTRAINT; Schema: basico_categoria; Owner: -
--

ALTER TABLE ONLY assoc_evento_acao
    ADD CONSTRAINT fk_assoc_evento_acao_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


SET search_path = basico_componente, pg_catalog;

--
-- TOC entry 4124 (class 2606 OID 61452710)
-- Dependencies: 307 363 3804
-- Name: fk_assoccl_componente_inc_inc; Type: FK CONSTRAINT; Schema: basico_componente; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_assoccl_componente_inc_inc FOREIGN KEY (id_include) REFERENCES basico.include(id);


--
-- TOC entry 4123 (class 2606 OID 61452239)
-- Dependencies: 3921 389 307
-- Name: fk_assoccl_include_componente; Type: FK CONSTRAINT; Schema: basico_componente; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_assoccl_include_componente FOREIGN KEY (id_componente) REFERENCES basico.componente(id);


SET search_path = basico_contato, pg_catalog;

--
-- TOC entry 4122 (class 2606 OID 61452915)
-- Dependencies: 3931 391 305
-- Name: fk_email_categoria; Type: FK CONSTRAINT; Schema: basico_contato; Owner: -
--

ALTER TABLE ONLY cpg_email
    ADD CONSTRAINT fk_email_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 4121 (class 2606 OID 61452294)
-- Dependencies: 391 3931 303
-- Name: fk_telefone_categoria; Type: FK CONSTRAINT; Schema: basico_contato; Owner: -
--

ALTER TABLE ONLY cpg_telefone
    ADD CONSTRAINT fk_telefone_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


SET search_path = basico_cvc, pg_catalog;

--
-- TOC entry 4120 (class 2606 OID 61452339)
-- Dependencies: 301 3618 311
-- Name: fk_cvc_assoc_chave_estrangeira; Type: FK CONSTRAINT; Schema: basico_cvc; Owner: -
--

ALTER TABLE ONLY cvc
    ADD CONSTRAINT fk_cvc_assoc_chave_estrangeira FOREIGN KEY (id_assoc_chave_estrangeira) REFERENCES basico_categoria.assoc_chave_estrangeira(id);


SET search_path = basico_dados_academicos, pg_catalog;

--
-- TOC entry 4119 (class 2606 OID 61452539)
-- Dependencies: 299 391 3931
-- Name: fk_titulacao_categoria; Type: FK CONSTRAINT; Schema: basico_dados_academicos; Owner: -
--

ALTER TABLE ONLY titulacao
    ADD CONSTRAINT fk_titulacao_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


SET search_path = basico_dados_biometricos, pg_catalog;

--
-- TOC entry 4117 (class 2606 OID 61452695)
-- Dependencies: 297 391 3931
-- Name: fk_assoc_pessoa_cat_raca; Type: FK CONSTRAINT; Schema: basico_dados_biometricos; Owner: -
--

ALTER TABLE ONLY assoc_pessoa
    ADD CONSTRAINT fk_assoc_pessoa_cat_raca FOREIGN KEY (id_categoria_raca) REFERENCES basico.categoria(id);


--
-- TOC entry 4116 (class 2606 OID 61452559)
-- Dependencies: 3931 297 391
-- Name: fk_assoc_pessoa_cat_sexo; Type: FK CONSTRAINT; Schema: basico_dados_biometricos; Owner: -
--

ALTER TABLE ONLY assoc_pessoa
    ADD CONSTRAINT fk_assoc_pessoa_cat_sexo FOREIGN KEY (id_categoria_sexo) REFERENCES basico.categoria(id);


--
-- TOC entry 4118 (class 2606 OID 61453000)
-- Dependencies: 297 3931 391
-- Name: fk_assoc_pessoa_cat_tipo_sang; Type: FK CONSTRAINT; Schema: basico_dados_biometricos; Owner: -
--

ALTER TABLE ONLY assoc_pessoa
    ADD CONSTRAINT fk_assoc_pessoa_cat_tipo_sang FOREIGN KEY (id_categoria_tipo_sanguineo) REFERENCES basico.categoria(id);


--
-- TOC entry 4115 (class 2606 OID 61452314)
-- Dependencies: 3847 373 297
-- Name: fk_assoc_pessoa_dados_bio; Type: FK CONSTRAINT; Schema: basico_dados_biometricos; Owner: -
--

ALTER TABLE ONLY assoc_pessoa
    ADD CONSTRAINT fk_assoc_pessoa_dados_bio FOREIGN KEY (id_dados_biometricos) REFERENCES basico.dados_biometricos(id);


SET search_path = basico_dados_profissionais, pg_catalog;

--
-- TOC entry 4113 (class 2606 OID 61452274)
-- Dependencies: 295 391 3931
-- Name: fk_regime_trabalho_categoria; Type: FK CONSTRAINT; Schema: basico_dados_profissionais; Owner: -
--

ALTER TABLE ONLY regime_trabalho
    ADD CONSTRAINT fk_regime_trabalho_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 4114 (class 2606 OID 61452680)
-- Dependencies: 3556 295 295
-- Name: fk_regime_trabalho_pai; Type: FK CONSTRAINT; Schema: basico_dados_profissionais; Owner: -
--

ALTER TABLE ONLY regime_trabalho
    ADD CONSTRAINT fk_regime_trabalho_pai FOREIGN KEY (id_regime_trabalho_pai) REFERENCES regime_trabalho(id);


--
-- TOC entry 4111 (class 2606 OID 61453050)
-- Dependencies: 3931 291 391
-- Name: fk_vinc_empreg_categoria; Type: FK CONSTRAINT; Schema: basico_dados_profissionais; Owner: -
--

ALTER TABLE ONLY vinculo_empregaticio
    ADD CONSTRAINT fk_vinc_empreg_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 4112 (class 2606 OID 61452775)
-- Dependencies: 293 391 3931
-- Name: fk_vinculo_categoria; Type: FK CONSTRAINT; Schema: basico_dados_profissionais; Owner: -
--

ALTER TABLE ONLY tipo_vinculo
    ADD CONSTRAINT fk_vinculo_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


SET search_path = basico_filter, pg_catalog;

--
-- TOC entry 4110 (class 2606 OID 61452004)
-- Dependencies: 281 391 3931
-- Name: fk_filter_grupo_categoria; Type: FK CONSTRAINT; Schema: basico_filter; Owner: -
--

ALTER TABLE ONLY grupo
    ADD CONSTRAINT fk_filter_grupo_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


SET search_path = basico_filter_grupo, pg_catalog;

--
-- TOC entry 4108 (class 2606 OID 61452950)
-- Dependencies: 279 367 3825
-- Name: fk_assocag_grupo_filter; Type: FK CONSTRAINT; Schema: basico_filter_grupo; Owner: -
--

ALTER TABLE ONLY assocag_grupo
    ADD CONSTRAINT fk_assocag_grupo_filter FOREIGN KEY (id_filter) REFERENCES basico.filter(id);


--
-- TOC entry 4107 (class 2606 OID 61452720)
-- Dependencies: 279 281 3536
-- Name: fk_assocag_grupo_grupo_assoc; Type: FK CONSTRAINT; Schema: basico_filter_grupo; Owner: -
--

ALTER TABLE ONLY assocag_grupo
    ADD CONSTRAINT fk_assocag_grupo_grupo_assoc FOREIGN KEY (id_filter_grupo) REFERENCES basico_filter.grupo(id);


--
-- TOC entry 4109 (class 2606 OID 61452995)
-- Dependencies: 281 279 3536
-- Name: fk_filter_assocag_grupo_grupo; Type: FK CONSTRAINT; Schema: basico_filter_grupo; Owner: -
--

ALTER TABLE ONLY assocag_grupo
    ADD CONSTRAINT fk_filter_assocag_grupo_grupo FOREIGN KEY (id_filter_grupo_assoc) REFERENCES basico_filter.grupo(id);


SET search_path = basico_form_assoccl_elem_grupo, pg_catalog;

--
-- TOC entry 4105 (class 2606 OID 61452319)
-- Dependencies: 251 3430 277
-- Name: fk_assoccl_decorator_decorator; Type: FK CONSTRAINT; Schema: basico_form_assoccl_elem_grupo; Owner: -
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT fk_assoccl_decorator_decorator FOREIGN KEY (id_decorator) REFERENCES basico_formulario.decorator(id);


--
-- TOC entry 4106 (class 2606 OID 61452790)
-- Dependencies: 3482 265 277
-- Name: fk_assoccl_decorator_grupo; Type: FK CONSTRAINT; Schema: basico_form_assoccl_elem_grupo; Owner: -
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT fk_assoccl_decorator_grupo FOREIGN KEY (id_grupo) REFERENCES basico_form_assoccl_elemento.grupo(id);


SET search_path = basico_form_assoccl_elemento, pg_catalog;

--
-- TOC entry 4102 (class 2606 OID 61453060)
-- Dependencies: 3835 369 273
-- Name: fk_assoccl_assoccl_elem_even_even; Type: FK CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_evento
    ADD CONSTRAINT fk_assoccl_assoccl_elem_even_even FOREIGN KEY (id_evento) REFERENCES basico.evento(id);


--
-- TOC entry 4103 (class 2606 OID 61452044)
-- Dependencies: 275 259 3458
-- Name: fk_assoccl_dec_assoccl_elem; Type: FK CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT fk_assoccl_dec_assoccl_elem FOREIGN KEY (id_assoccl_elemento) REFERENCES basico_formulario.assoccl_elemento(id);


--
-- TOC entry 4104 (class 2606 OID 61452514)
-- Dependencies: 275 3430 251
-- Name: fk_assoccl_dec_decorator; Type: FK CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT fk_assoccl_dec_decorator FOREIGN KEY (id_decorator) REFERENCES basico_formulario.decorator(id);


--
-- TOC entry 4098 (class 2606 OID 61452234)
-- Dependencies: 3458 259 271
-- Name: fk_assoccl_elem_assoccl_filter_elemento; Type: FK CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_filter
    ADD CONSTRAINT fk_assoccl_elem_assoccl_filter_elemento FOREIGN KEY (id_assoccl_elemento) REFERENCES basico_formulario.assoccl_elemento(id);


--
-- TOC entry 4099 (class 2606 OID 61452424)
-- Dependencies: 271 3825 367
-- Name: fk_assoccl_elem_assoccl_filter_filter; Type: FK CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_filter
    ADD CONSTRAINT fk_assoccl_elem_assoccl_filter_filter FOREIGN KEY (id_filter) REFERENCES basico.filter(id);


--
-- TOC entry 4100 (class 2606 OID 61452229)
-- Dependencies: 399 273 3971
-- Name: fk_assoccl_evento_acao_evento; Type: FK CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_evento
    ADD CONSTRAINT fk_assoccl_evento_acao_evento FOREIGN KEY (id_acao_evento) REFERENCES basico.acao_evento(id);


--
-- TOC entry 4101 (class 2606 OID 61452359)
-- Dependencies: 259 273 3458
-- Name: fk_assoccl_evento_assoccl_elem; Type: FK CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_evento
    ADD CONSTRAINT fk_assoccl_evento_assoccl_elem FOREIGN KEY (id_assoccl_elemento) REFERENCES basico_formulario.assoccl_elemento(id);


--
-- TOC entry 4097 (class 2606 OID 61452830)
-- Dependencies: 269 3458 259
-- Name: fk_assoccl_include_assoccl_elem; Type: FK CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_assoccl_include_assoccl_elem FOREIGN KEY (id_assoccl_elemento) REFERENCES basico_formulario.assoccl_elemento(id);


--
-- TOC entry 4094 (class 2606 OID 61452449)
-- Dependencies: 259 267 3458
-- Name: fk_assoccl_valid_assoc_elem; Type: FK CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_validator
    ADD CONSTRAINT fk_assoccl_valid_assoc_elem FOREIGN KEY (id_assoccl_elemento) REFERENCES basico_formulario.assoccl_elemento(id);


--
-- TOC entry 4095 (class 2606 OID 61452524)
-- Dependencies: 3718 267 337
-- Name: fk_assoccl_valid_validator; Type: FK CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_validator
    ADD CONSTRAINT fk_assoccl_valid_validator FOREIGN KEY (id_validator) REFERENCES basico.validator(id);


--
-- TOC entry 4096 (class 2606 OID 61452740)
-- Dependencies: 269 3804 363
-- Name: fk_asssoccl_include_include; Type: FK CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_asssoccl_include_include FOREIGN KEY (id_include) REFERENCES basico.include(id);


SET search_path = basico_form_decorator_grupo, pg_catalog;

--
-- TOC entry 4091 (class 2606 OID 61451939)
-- Dependencies: 251 263 3430
-- Name: fk_assocag_grupo_form_decorator; Type: FK CONSTRAINT; Schema: basico_form_decorator_grupo; Owner: -
--

ALTER TABLE ONLY assocag_grupo
    ADD CONSTRAINT fk_assocag_grupo_form_decorator FOREIGN KEY (id_formulario_decorator) REFERENCES basico_formulario.decorator(id);


--
-- TOC entry 4093 (class 2606 OID 61453100)
-- Dependencies: 243 3395 263
-- Name: fk_assocag_grupo_grupo; Type: FK CONSTRAINT; Schema: basico_form_decorator_grupo; Owner: -
--

ALTER TABLE ONLY assocag_grupo
    ADD CONSTRAINT fk_assocag_grupo_grupo FOREIGN KEY (id_form_decorator_grupo) REFERENCES basico_formulario_decorator.grupo(id);


--
-- TOC entry 4092 (class 2606 OID 61452640)
-- Dependencies: 3395 263 243
-- Name: fk_decorator_assocag_grupo_grupo_assoc; Type: FK CONSTRAINT; Schema: basico_form_decorator_grupo; Owner: -
--

ALTER TABLE ONLY assocag_grupo
    ADD CONSTRAINT fk_decorator_assocag_grupo_grupo_assoc FOREIGN KEY (id_form_decorator_grupo_assoc) REFERENCES basico_formulario_decorator.grupo(id);


SET search_path = basico_formulario, pg_catalog;

--
-- TOC entry 4070 (class 2606 OID 61452655)
-- Dependencies: 247 3358 233
-- Name: fk_assocag_grupo_rascunho; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY rascunho
    ADD CONSTRAINT fk_assocag_grupo_rascunho FOREIGN KEY (id_assocag_grupo) REFERENCES basico_formulario_rascunho.assocag_grupo(id);


--
-- TOC entry 4090 (class 2606 OID 61452875)
-- Dependencies: 3815 261 365
-- Name: fk_assoccl_decorator_form; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT fk_assoccl_decorator_form FOREIGN KEY (id_formulario) REFERENCES basico.formulario(id);


--
-- TOC entry 4085 (class 2606 OID 61452900)
-- Dependencies: 259 397 3962
-- Name: fk_assoccl_elemento_ajuda; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_elemento
    ADD CONSTRAINT fk_assoccl_elemento_ajuda FOREIGN KEY (id_ajuda) REFERENCES basico.ajuda(id);


--
-- TOC entry 4086 (class 2606 OID 61453075)
-- Dependencies: 3421 249 259
-- Name: fk_assoccl_elemento_elemento; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_elemento
    ADD CONSTRAINT fk_assoccl_elemento_elemento FOREIGN KEY (id_elemento) REFERENCES elemento(id);


--
-- TOC entry 4087 (class 2606 OID 61453110)
-- Dependencies: 3815 259 365
-- Name: fk_assoccl_elemento_formulario; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_elemento
    ADD CONSTRAINT fk_assoccl_elemento_formulario FOREIGN KEY (id_formulario) REFERENCES basico.formulario(id);


--
-- TOC entry 4084 (class 2606 OID 61452454)
-- Dependencies: 3482 259 265
-- Name: fk_assoccl_elemento_grupo; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_elemento
    ADD CONSTRAINT fk_assoccl_elemento_grupo FOREIGN KEY (id_grupo) REFERENCES basico_form_assoccl_elemento.grupo(id);


--
-- TOC entry 4082 (class 2606 OID 61452534)
-- Dependencies: 3815 365 257
-- Name: fk_assoccl_evento_formulario; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_evento
    ADD CONSTRAINT fk_assoccl_evento_formulario FOREIGN KEY (id_formulario) REFERENCES basico.formulario(id);


--
-- TOC entry 4083 (class 2606 OID 61452544)
-- Dependencies: 257 369 3835
-- Name: fk_assoccl_form_evento_evento; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_evento
    ADD CONSTRAINT fk_assoccl_form_evento_evento FOREIGN KEY (id_evento) REFERENCES basico.evento(id);


--
-- TOC entry 4081 (class 2606 OID 61452479)
-- Dependencies: 363 255 3804
-- Name: fk_assoccl_formulario_inc_inc; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_assoccl_formulario_inc_inc FOREIGN KEY (id_include) REFERENCES basico.include(id);


--
-- TOC entry 4080 (class 2606 OID 61452324)
-- Dependencies: 255 365 3815
-- Name: fk_assoccl_include_formulario; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_assoccl_include_formulario FOREIGN KEY (id_formulario) REFERENCES basico.formulario(id);


--
-- TOC entry 4079 (class 2606 OID 61452860)
-- Dependencies: 3815 365 253
-- Name: fk_assoccl_modulo_formulario; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_modulo
    ADD CONSTRAINT fk_assoccl_modulo_formulario FOREIGN KEY (id_formulario) REFERENCES basico.formulario(id);


--
-- TOC entry 4089 (class 2606 OID 61452564)
-- Dependencies: 251 261 3430
-- Name: fk_assocl_decorator_decorator; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT fk_assocl_decorator_decorator FOREIGN KEY (id_decorator) REFERENCES decorator(id);


--
-- TOC entry 4067 (class 2606 OID 61452099)
-- Dependencies: 247 3148 175
-- Name: fk_assocsq_acao_aplic_rascunho; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY rascunho
    ADD CONSTRAINT fk_assocsq_acao_aplic_rascunho FOREIGN KEY (id_assocsq_acao_aplicacao) REFERENCES basico_sequencia.assocsq_acao_aplicacao(id);


--
-- TOC entry 4077 (class 2606 OID 61452329)
-- Dependencies: 391 251 3931
-- Name: fk_decorator_categoria; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY decorator
    ADD CONSTRAINT fk_decorator_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 4076 (class 2606 OID 61452104)
-- Dependencies: 251 389 3921
-- Name: fk_decorator_componente; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY decorator
    ADD CONSTRAINT fk_decorator_componente FOREIGN KEY (id_componente) REFERENCES basico.componente(id);


--
-- TOC entry 4074 (class 2606 OID 61452054)
-- Dependencies: 249 397 3962
-- Name: fk_elemento_ajuda; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY elemento
    ADD CONSTRAINT fk_elemento_ajuda FOREIGN KEY (id_ajuda) REFERENCES basico.ajuda(id);


--
-- TOC entry 4075 (class 2606 OID 61452374)
-- Dependencies: 249 3931 391
-- Name: fk_elemento_categoria; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY elemento
    ADD CONSTRAINT fk_elemento_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 4073 (class 2606 OID 61451989)
-- Dependencies: 389 3921 249
-- Name: fk_elemento_componente; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY elemento
    ADD CONSTRAINT fk_elemento_componente FOREIGN KEY (id_componente) REFERENCES basico.componente(id);


--
-- TOC entry 4088 (class 2606 OID 61452389)
-- Dependencies: 243 3395 261
-- Name: fk_form_assoccl_decorator_grupo_decorator; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT fk_form_assoccl_decorator_grupo_decorator FOREIGN KEY (id_decorator_grupo) REFERENCES basico_formulario_decorator.grupo(id);


--
-- TOC entry 4078 (class 2606 OID 61452399)
-- Dependencies: 355 253 3777
-- Name: fk_form_assoccl_modulo_modulo; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_modulo
    ADD CONSTRAINT fk_form_assoccl_modulo_modulo FOREIGN KEY (id_modulo) REFERENCES basico.modulo(id);


--
-- TOC entry 4068 (class 2606 OID 61452114)
-- Dependencies: 247 331 3694
-- Name: fk_rascunho_assoc_visao; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY rascunho
    ADD CONSTRAINT fk_rascunho_assoc_visao FOREIGN KEY (id_assoc_visao_origem) REFERENCES basico_acao_aplicacao.assoc_visao(id);


--
-- TOC entry 4069 (class 2606 OID 61452189)
-- Dependencies: 247 3239 201
-- Name: fk_rascunho_assoccl_perfil; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY rascunho
    ADD CONSTRAINT fk_rascunho_assoccl_perfil FOREIGN KEY (id_assoccl_perfil) REFERENCES basico_pessoa.assoccl_perfil(id);


--
-- TOC entry 4072 (class 2606 OID 61452970)
-- Dependencies: 3931 247 391
-- Name: fk_rascunho_categoria; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY rascunho
    ADD CONSTRAINT fk_rascunho_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 4071 (class 2606 OID 61452940)
-- Dependencies: 247 3404 247
-- Name: fk_rascunho_pai; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY rascunho
    ADD CONSTRAINT fk_rascunho_pai FOREIGN KEY (id_rascunho_pai) REFERENCES rascunho(id);


SET search_path = basico_formulario_decorator, pg_catalog;

--
-- TOC entry 4066 (class 2606 OID 61453045)
-- Dependencies: 245 251 3430
-- Name: fk_form_decorator_assoccl_include_decorator; Type: FK CONSTRAINT; Schema: basico_formulario_decorator; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_form_decorator_assoccl_include_decorator FOREIGN KEY (id_decorator) REFERENCES basico_formulario.decorator(id);


--
-- TOC entry 4065 (class 2606 OID 61452595)
-- Dependencies: 245 363 3804
-- Name: fk_form_decorator_assoccl_include_include; Type: FK CONSTRAINT; Schema: basico_formulario_decorator; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_form_decorator_assoccl_include_include FOREIGN KEY (id_include) REFERENCES basico.include(id);


--
-- TOC entry 4064 (class 2606 OID 61452820)
-- Dependencies: 3931 243 391
-- Name: fk_grupo_form_decorator_categoria; Type: FK CONSTRAINT; Schema: basico_formulario_decorator; Owner: -
--

ALTER TABLE ONLY grupo
    ADD CONSTRAINT fk_grupo_form_decorator_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


SET search_path = basico_formulario_elemento, pg_catalog;

--
-- TOC entry 4058 (class 2606 OID 61451994)
-- Dependencies: 249 239 3421
-- Name: fk_assoccl_evento_elemento; Type: FK CONSTRAINT; Schema: basico_formulario_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_evento
    ADD CONSTRAINT fk_assoccl_evento_elemento FOREIGN KEY (id_elemento) REFERENCES basico_formulario.elemento(id);


--
-- TOC entry 4059 (class 2606 OID 61452935)
-- Dependencies: 239 369 3835
-- Name: fk_assoccl_evento_evento; Type: FK CONSTRAINT; Schema: basico_formulario_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_evento
    ADD CONSTRAINT fk_assoccl_evento_evento FOREIGN KEY (id_evento) REFERENCES basico.evento(id);


--
-- TOC entry 4055 (class 2606 OID 61452154)
-- Dependencies: 237 249 3421
-- Name: fk_assoccl_filter_elemento; Type: FK CONSTRAINT; Schema: basico_formulario_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_filter
    ADD CONSTRAINT fk_assoccl_filter_elemento FOREIGN KEY (id_elemento) REFERENCES basico_formulario.elemento(id);


--
-- TOC entry 4056 (class 2606 OID 61452554)
-- Dependencies: 3825 367 237
-- Name: fk_assoccl_filter_filter; Type: FK CONSTRAINT; Schema: basico_formulario_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_filter
    ADD CONSTRAINT fk_assoccl_filter_filter FOREIGN KEY (id_filter) REFERENCES basico.filter(id);


--
-- TOC entry 4054 (class 2606 OID 61452730)
-- Dependencies: 249 3421 235
-- Name: fk_assoccl_validator_elem; Type: FK CONSTRAINT; Schema: basico_formulario_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_validator
    ADD CONSTRAINT fk_assoccl_validator_elem FOREIGN KEY (id_elemento) REFERENCES basico_formulario.elemento(id);


--
-- TOC entry 4052 (class 2606 OID 61452089)
-- Dependencies: 235 337 3718
-- Name: fk_assoccl_validator_validator; Type: FK CONSTRAINT; Schema: basico_formulario_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_validator
    ADD CONSTRAINT fk_assoccl_validator_validator FOREIGN KEY (id_validator) REFERENCES basico.validator(id);


--
-- TOC entry 4062 (class 2606 OID 61452690)
-- Dependencies: 241 249 3421
-- Name: fk_assocl_elemento_elemento; Type: FK CONSTRAINT; Schema: basico_formulario_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT fk_assocl_elemento_elemento FOREIGN KEY (id_elemento) REFERENCES basico_formulario.elemento(id);


--
-- TOC entry 4061 (class 2606 OID 61451944)
-- Dependencies: 3430 241 251
-- Name: fk_form_assoccl_decorator_decorator; Type: FK CONSTRAINT; Schema: basico_formulario_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT fk_form_assoccl_decorator_decorator FOREIGN KEY (id_decorator) REFERENCES basico_formulario.decorator(id);


--
-- TOC entry 4053 (class 2606 OID 61452289)
-- Dependencies: 169 235 3125
-- Name: fk_form_elem_assoccl_validador_grupo_validator; Type: FK CONSTRAINT; Schema: basico_formulario_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_validator
    ADD CONSTRAINT fk_form_elem_assoccl_validador_grupo_validator FOREIGN KEY (id_validator_grupo) REFERENCES basico_validator.grupo(id);


--
-- TOC entry 4063 (class 2606 OID 61452845)
-- Dependencies: 243 241 3395
-- Name: fk_form_elemen_assoccl_decorator_grupo; Type: FK CONSTRAINT; Schema: basico_formulario_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT fk_form_elemen_assoccl_decorator_grupo FOREIGN KEY (id_decorator_grupo) REFERENCES basico_formulario_decorator.grupo(id);


--
-- TOC entry 4060 (class 2606 OID 61452990)
-- Dependencies: 3971 399 239
-- Name: fk_form_element_assoccl_evento_acao_evento; Type: FK CONSTRAINT; Schema: basico_formulario_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_evento
    ADD CONSTRAINT fk_form_element_assoccl_evento_acao_evento FOREIGN KEY (id_acao_evento) REFERENCES basico.acao_evento(id);


--
-- TOC entry 4057 (class 2606 OID 61452675)
-- Dependencies: 281 237 3536
-- Name: fk_form_elemento_assoccl_filter_grupo_filter; Type: FK CONSTRAINT; Schema: basico_formulario_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_filter
    ADD CONSTRAINT fk_form_elemento_assoccl_filter_grupo_filter FOREIGN KEY (id_filter_grupo) REFERENCES basico_filter.grupo(id);


SET search_path = basico_formulario_rascunho, pg_catalog;

--
-- TOC entry 4051 (class 2606 OID 61452795)
-- Dependencies: 3239 201 233
-- Name: fk_assocag_grupo_assoccl_perfil; Type: FK CONSTRAINT; Schema: basico_formulario_rascunho; Owner: -
--

ALTER TABLE ONLY assocag_grupo
    ADD CONSTRAINT fk_assocag_grupo_assoccl_perfil FOREIGN KEY (id_assoccl_perfil) REFERENCES basico_pessoa.assoccl_perfil(id);


SET search_path = basico_localizacao, pg_catalog;

--
-- TOC entry 4049 (class 2606 OID 61452735)
-- Dependencies: 229 3931 391
-- Name: fk_assoc_estado_categoria; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY assoc_estado
    ADD CONSTRAINT fk_assoc_estado_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 4048 (class 2606 OID 61452610)
-- Dependencies: 3298 219 229
-- Name: fk_assoc_estado_pais; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY assoc_estado
    ADD CONSTRAINT fk_assoc_estado_pais FOREIGN KEY (id_pais) REFERENCES pais(id);


--
-- TOC entry 4046 (class 2606 OID 61452124)
-- Dependencies: 227 231 3352
-- Name: fk_assoc_logradouro_assoc_bairro; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY assoc_logradouro
    ADD CONSTRAINT fk_assoc_logradouro_assoc_bairro FOREIGN KEY (id_bairro) REFERENCES assoc_bairro(id);


--
-- TOC entry 4045 (class 2606 OID 61452014)
-- Dependencies: 227 391 3931
-- Name: fk_assoc_logradouro_categoria; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY assoc_logradouro
    ADD CONSTRAINT fk_assoc_logradouro_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 4050 (class 2606 OID 61452144)
-- Dependencies: 231 225 3327
-- Name: fk_assoc_municipio_assoc_bairro; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY assoc_bairro
    ADD CONSTRAINT fk_assoc_municipio_assoc_bairro FOREIGN KEY (id_municipio) REFERENCES assoc_municipio(id);


--
-- TOC entry 4043 (class 2606 OID 61452615)
-- Dependencies: 229 225 3345
-- Name: fk_assoc_municipio_assoc_estado; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY assoc_municipio
    ADD CONSTRAINT fk_assoc_municipio_assoc_estado FOREIGN KEY (id_estado) REFERENCES assoc_estado(id);


--
-- TOC entry 4044 (class 2606 OID 61452910)
-- Dependencies: 391 3931 225
-- Name: fk_assoc_municipio_categoria; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY assoc_municipio
    ADD CONSTRAINT fk_assoc_municipio_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 4038 (class 2606 OID 61452309)
-- Dependencies: 223 231 3352
-- Name: fk_cep_assoc_bairro; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY codigo_postal
    ADD CONSTRAINT fk_cep_assoc_bairro FOREIGN KEY (id_bairro) REFERENCES assoc_bairro(id);


--
-- TOC entry 4036 (class 2606 OID 61452109)
-- Dependencies: 223 229 3345
-- Name: fk_cep_assoc_estado; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY codigo_postal
    ADD CONSTRAINT fk_cep_assoc_estado FOREIGN KEY (id_estado) REFERENCES assoc_estado(id);


--
-- TOC entry 4039 (class 2606 OID 61452760)
-- Dependencies: 3335 227 223
-- Name: fk_cep_assoc_logradouro; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY codigo_postal
    ADD CONSTRAINT fk_cep_assoc_logradouro FOREIGN KEY (id_logradouro) REFERENCES assoc_logradouro(id);


--
-- TOC entry 4041 (class 2606 OID 61452920)
-- Dependencies: 225 223 3327
-- Name: fk_cep_assoc_municipio; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY codigo_postal
    ADD CONSTRAINT fk_cep_assoc_municipio FOREIGN KEY (id_municipio) REFERENCES assoc_municipio(id);


--
-- TOC entry 4037 (class 2606 OID 61452139)
-- Dependencies: 223 391 3931
-- Name: fk_cep_categoria; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY codigo_postal
    ADD CONSTRAINT fk_cep_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 4040 (class 2606 OID 61452800)
-- Dependencies: 3298 223 219
-- Name: fk_cep_pais; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY codigo_postal
    ADD CONSTRAINT fk_cep_pais FOREIGN KEY (id_pais) REFERENCES pais(id);


--
-- TOC entry 4034 (class 2606 OID 61452164)
-- Dependencies: 221 201 3239
-- Name: fk_endereco_assoc_perfil; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY cpg_endereco
    ADD CONSTRAINT fk_endereco_assoc_perfil FOREIGN KEY (id_assoccl_perfil_validador) REFERENCES basico_pessoa.assoccl_perfil(id);


--
-- TOC entry 4035 (class 2606 OID 61452249)
-- Dependencies: 391 221 3931
-- Name: fk_endereco_categoria; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY cpg_endereco
    ADD CONSTRAINT fk_endereco_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 4047 (class 2606 OID 61452084)
-- Dependencies: 229 229 3345
-- Name: fk_estado_pai; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY assoc_estado
    ADD CONSTRAINT fk_estado_pai FOREIGN KEY (id_estado_pai) REFERENCES assoc_estado(id);


--
-- TOC entry 4042 (class 2606 OID 61452134)
-- Dependencies: 225 225 3327
-- Name: fk_municipio_pai; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY assoc_municipio
    ADD CONSTRAINT fk_municipio_pai FOREIGN KEY (id_municipio_pai) REFERENCES assoc_municipio(id);


SET search_path = basico_mensagem, pg_catalog;

--
-- TOC entry 4032 (class 2606 OID 61452960)
-- Dependencies: 215 201 3239
-- Name: fk_assoccl_assoccl_pes_per; Type: FK CONSTRAINT; Schema: basico_mensagem; Owner: -
--

ALTER TABLE ONLY assoccl_assoccl_pessoa_perfil
    ADD CONSTRAINT fk_assoccl_assoccl_pes_per FOREIGN KEY (id_assoccl_perfil) REFERENCES basico_pessoa.assoccl_perfil(id);


--
-- TOC entry 4031 (class 2606 OID 61452299)
-- Dependencies: 3931 215 391
-- Name: fk_assoccl_assoccl_pes_per_cat; Type: FK CONSTRAINT; Schema: basico_mensagem; Owner: -
--

ALTER TABLE ONLY assoccl_assoccl_pessoa_perfil
    ADD CONSTRAINT fk_assoccl_assoccl_pes_per_cat FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 4030 (class 2606 OID 61452279)
-- Dependencies: 359 215 3790
-- Name: fk_assoccl_assoccl_pes_per_m; Type: FK CONSTRAINT; Schema: basico_mensagem; Owner: -
--

ALTER TABLE ONLY assoccl_assoccl_pessoa_perfil
    ADD CONSTRAINT fk_assoccl_assoccl_pes_per_m FOREIGN KEY (id_mensagem) REFERENCES basico.mensagem(id);


--
-- TOC entry 4033 (class 2606 OID 61451999)
-- Dependencies: 359 3790 217
-- Name: fk_mensagem_email; Type: FK CONSTRAINT; Schema: basico_mensagem; Owner: -
--

ALTER TABLE ONLY assoc_email
    ADD CONSTRAINT fk_mensagem_email FOREIGN KEY (id_mensagem) REFERENCES basico.mensagem(id);


--
-- TOC entry 4029 (class 2606 OID 61452885)
-- Dependencies: 3931 391 213
-- Name: fk_template_mensagem_categoria; Type: FK CONSTRAINT; Schema: basico_mensagem; Owner: -
--

ALTER TABLE ONLY template
    ADD CONSTRAINT fk_template_mensagem_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


SET search_path = basico_mensagem_assoc_email, pg_catalog;

--
-- TOC entry 4028 (class 2606 OID 61453025)
-- Dependencies: 3291 217 211
-- Name: fk_assoc_dados_assoc_email; Type: FK CONSTRAINT; Schema: basico_mensagem_assoc_email; Owner: -
--

ALTER TABLE ONLY assoc_dados
    ADD CONSTRAINT fk_assoc_dados_assoc_email FOREIGN KEY (id_assoc_email) REFERENCES basico_mensagem.assoc_email(id);


SET search_path = basico_metodo_validacao, pg_catalog;

--
-- TOC entry 4026 (class 2606 OID 61452079)
-- Dependencies: 209 357 3783
-- Name: fk_assoccl_include_met_validacao; Type: FK CONSTRAINT; Schema: basico_metodo_validacao; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_assoccl_include_met_validacao FOREIGN KEY (id_metodo_validacao) REFERENCES basico.metodo_validacao(id);


--
-- TOC entry 4027 (class 2606 OID 61453030)
-- Dependencies: 209 363 3804
-- Name: fk_assoccl_met_valid_inc_inc; Type: FK CONSTRAINT; Schema: basico_metodo_validacao; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_assoccl_met_valid_inc_inc FOREIGN KEY (id_include) REFERENCES basico.include(id);


SET search_path = basico_output, pg_catalog;

--
-- TOC entry 4024 (class 2606 OID 61452985)
-- Dependencies: 207 3771 353
-- Name: fk_assoccl_include_output; Type: FK CONSTRAINT; Schema: basico_output; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_assoccl_include_output FOREIGN KEY (id_output) REFERENCES basico.output(id);


--
-- TOC entry 4025 (class 2606 OID 61453065)
-- Dependencies: 207 3804 363
-- Name: fk_assoccl_output_inc_inc; Type: FK CONSTRAINT; Schema: basico_output; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_assoccl_output_inc_inc FOREIGN KEY (id_include) REFERENCES basico.include(id);


SET search_path = basico_perfil, pg_catalog;

--
-- TOC entry 4022 (class 2606 OID 61452434)
-- Dependencies: 205 351 3763
-- Name: fk_assoccl_modulo_modulo; Type: FK CONSTRAINT; Schema: basico_perfil; Owner: -
--

ALTER TABLE ONLY assoccl_modulo
    ADD CONSTRAINT fk_assoccl_modulo_modulo FOREIGN KEY (id_perfil) REFERENCES basico.perfil(id);


--
-- TOC entry 4023 (class 2606 OID 61452630)
-- Dependencies: 3777 205 355
-- Name: fk_assoccl_modulo_perfil; Type: FK CONSTRAINT; Schema: basico_perfil; Owner: -
--

ALTER TABLE ONLY assoccl_modulo
    ADD CONSTRAINT fk_assoccl_modulo_perfil FOREIGN KEY (id_modulo) REFERENCES basico.modulo(id);


SET search_path = basico_pessoa, pg_catalog;

--
-- TOC entry 4021 (class 2606 OID 61452905)
-- Dependencies: 3757 203 349
-- Name: fk_assoc_dados_pessoa; Type: FK CONSTRAINT; Schema: basico_pessoa; Owner: -
--

ALTER TABLE ONLY assoc_dados
    ADD CONSTRAINT fk_assoc_dados_pessoa FOREIGN KEY (id_pessoa) REFERENCES basico.pessoa(id);


--
-- TOC entry 4019 (class 2606 OID 61452194)
-- Dependencies: 3757 349 201
-- Name: fk_assoccl_perfil_pessoa; Type: FK CONSTRAINT; Schema: basico_pessoa; Owner: -
--

ALTER TABLE ONLY assoccl_perfil
    ADD CONSTRAINT fk_assoccl_perfil_pessoa FOREIGN KEY (id_pessoa) REFERENCES basico.pessoa(id);


--
-- TOC entry 4020 (class 2606 OID 61452489)
-- Dependencies: 351 3763 201
-- Name: fk_assoccl_pessoa_perfil_perfil; Type: FK CONSTRAINT; Schema: basico_pessoa; Owner: -
--

ALTER TABLE ONLY assoccl_perfil
    ADD CONSTRAINT fk_assoccl_pessoa_perfil_perfil FOREIGN KEY (id_perfil) REFERENCES basico.perfil(id);


--
-- TOC entry 4018 (class 2606 OID 61452870)
-- Dependencies: 349 199 3757
-- Name: fk_assoccl_vinc_profi_pessoa; Type: FK CONSTRAINT; Schema: basico_pessoa; Owner: -
--

ALTER TABLE ONLY assoccl_tipo_vinculo
    ADD CONSTRAINT fk_assoccl_vinc_profi_pessoa FOREIGN KEY (id_pessoa) REFERENCES basico.pessoa(id);


--
-- TOC entry 4017 (class 2606 OID 61452670)
-- Dependencies: 199 293 3547
-- Name: fk_assoccl_vinc_profi_tipo_vinc; Type: FK CONSTRAINT; Schema: basico_pessoa; Owner: -
--

ALTER TABLE ONLY assoccl_tipo_vinculo
    ADD CONSTRAINT fk_assoccl_vinc_profi_tipo_vinc FOREIGN KEY (id_tipo_vinculo) REFERENCES basico_dados_profissionais.tipo_vinculo(id);


--
-- TOC entry 4016 (class 2606 OID 61452464)
-- Dependencies: 349 3757 197
-- Name: fk_login_pessoa; Type: FK CONSTRAINT; Schema: basico_pessoa; Owner: -
--

ALTER TABLE ONLY login
    ADD CONSTRAINT fk_login_pessoa FOREIGN KEY (id_pessoa) REFERENCES basico.pessoa(id);


SET search_path = basico_pessoa_juridica, pg_catalog;

--
-- TOC entry 4015 (class 2606 OID 61452204)
-- Dependencies: 391 195 3931
-- Name: fk_assoc_banco_categoria; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoc_banco
    ADD CONSTRAINT fk_assoc_banco_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 4014 (class 2606 OID 61451969)
-- Dependencies: 3754 195 347
-- Name: fk_assoc_banco_pj; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoc_banco
    ADD CONSTRAINT fk_assoc_banco_pj FOREIGN KEY (id_pessoa_juridica) REFERENCES basico.pessoa_juridica(id);


--
-- TOC entry 4013 (class 2606 OID 61452484)
-- Dependencies: 347 193 3754
-- Name: fk_assoc_dados_pj; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoc_dados
    ADD CONSTRAINT fk_assoc_dados_pj FOREIGN KEY (id_pessoa_juridica) REFERENCES basico.pessoa_juridica(id);


--
-- TOC entry 4000 (class 2606 OID 61452284)
-- Dependencies: 3931 183 391
-- Name: fk_assoc_faturamento_categoria; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoccl_faturamento
    ADD CONSTRAINT fk_assoc_faturamento_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 4001 (class 2606 OID 61452965)
-- Dependencies: 3754 183 347
-- Name: fk_assoc_faturamento_pj; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoccl_faturamento
    ADD CONSTRAINT fk_assoc_faturamento_pj FOREIGN KEY (id_pessoa_juridica) REFERENCES basico.pessoa_juridica(id);


--
-- TOC entry 3999 (class 2606 OID 61453035)
-- Dependencies: 3931 391 181
-- Name: fk_assoc_quadro_func_categoria; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoccl_quadro_funcionario
    ADD CONSTRAINT fk_assoc_quadro_func_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 4010 (class 2606 OID 61451949)
-- Dependencies: 3754 347 191
-- Name: fk_assocag_incub_pj_incubada; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assocag_incubadora
    ADD CONSTRAINT fk_assocag_incub_pj_incubada FOREIGN KEY (id_pessoa_juridica_incubada) REFERENCES basico.pessoa_juridica(id);


--
-- TOC entry 4012 (class 2606 OID 61452474)
-- Dependencies: 391 3931 191
-- Name: fk_assocag_incubadora_categoria; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assocag_incubadora
    ADD CONSTRAINT fk_assocag_incubadora_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 4011 (class 2606 OID 61452074)
-- Dependencies: 191 347 3754
-- Name: fk_assocag_incubadora_pj; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assocag_incubadora
    ADD CONSTRAINT fk_assocag_incubadora_pj FOREIGN KEY (id_pessoa_juridica) REFERENCES basico.pessoa_juridica(id);


--
-- TOC entry 4006 (class 2606 OID 61452444)
-- Dependencies: 3200 189 189
-- Name: fk_assocag_parc_assocag_parc; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assocag_parceria
    ADD CONSTRAINT fk_assocag_parc_assocag_parc FOREIGN KEY (id_assocag_parceria) REFERENCES assocag_parceria(id);


--
-- TOC entry 4009 (class 2606 OID 61452750)
-- Dependencies: 391 189 3931
-- Name: fk_assocag_parceria_categoria; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assocag_parceria
    ADD CONSTRAINT fk_assocag_parceria_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 4007 (class 2606 OID 61452645)
-- Dependencies: 3754 189 347
-- Name: fk_assocag_parceria_pj; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assocag_parceria
    ADD CONSTRAINT fk_assocag_parceria_pj FOREIGN KEY (id_pessoa_juridica) REFERENCES basico.pessoa_juridica(id);


--
-- TOC entry 4008 (class 2606 OID 61452745)
-- Dependencies: 3754 347 189
-- Name: fk_assocag_parceria_pj_parc; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assocag_parceria
    ADD CONSTRAINT fk_assocag_parceria_pj_parc FOREIGN KEY (id_pessoa_juridica_parceira) REFERENCES basico.pessoa_juridica(id);


--
-- TOC entry 4005 (class 2606 OID 61452815)
-- Dependencies: 3941 187 393
-- Name: fk_assoccl_area_econ_area; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoccl_area_economia
    ADD CONSTRAINT fk_assoccl_area_econ_area FOREIGN KEY (id_area_economia) REFERENCES basico.area_economia(id);


--
-- TOC entry 4004 (class 2606 OID 61452059)
-- Dependencies: 187 347 3754
-- Name: fk_assoccl_area_econ_pj; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoccl_area_economia
    ADD CONSTRAINT fk_assoccl_area_econ_pj FOREIGN KEY (id_pessoa_juridica) REFERENCES basico.pessoa_juridica(id);


--
-- TOC entry 4002 (class 2606 OID 61452209)
-- Dependencies: 179 3163 185
-- Name: fk_assoccl_cap_social_cap; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoccl_capital_social
    ADD CONSTRAINT fk_assoccl_cap_social_cap FOREIGN KEY (id_capital_social) REFERENCES capital_social(id);


--
-- TOC entry 4003 (class 2606 OID 61452700)
-- Dependencies: 347 185 3754
-- Name: fk_assoccl_cap_social_pj; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoccl_capital_social
    ADD CONSTRAINT fk_assoccl_cap_social_pj FOREIGN KEY (id_pessoa_juridica) REFERENCES basico.pessoa_juridica(id);


--
-- TOC entry 3998 (class 2606 OID 61452925)
-- Dependencies: 3951 181 395
-- Name: fk_assoccl_quadro_func_area_conh; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoccl_quadro_funcionario
    ADD CONSTRAINT fk_assoccl_quadro_func_area_conh FOREIGN KEY (id_area_conhecimento_predom) REFERENCES basico.area_conhecimento(id);


--
-- TOC entry 3995 (class 2606 OID 61452780)
-- Dependencies: 177 3931 391
-- Name: fk_natureza_categoria; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY natureza
    ADD CONSTRAINT fk_natureza_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 3996 (class 2606 OID 61452024)
-- Dependencies: 181 347 3754
-- Name: fk_pj_quadro_funcionarios; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoccl_quadro_funcionario
    ADD CONSTRAINT fk_pj_quadro_funcionarios FOREIGN KEY (id_pessoa_juridica) REFERENCES basico.pessoa_juridica(id);


--
-- TOC entry 3997 (class 2606 OID 61452855)
-- Dependencies: 181 3571 299
-- Name: fk_quadro_func_titulacao; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoccl_quadro_funcionario
    ADD CONSTRAINT fk_quadro_func_titulacao FOREIGN KEY (id_titulacao) REFERENCES basico_dados_academicos.titulacao(id);


SET search_path = basico_sequencia, pg_catalog;

--
-- TOC entry 3992 (class 2606 OID 61451959)
-- Dependencies: 3931 175 391
-- Name: fk_assocsq_acao_apli_categoria; Type: FK CONSTRAINT; Schema: basico_sequencia; Owner: -
--

ALTER TABLE ONLY assocsq_acao_aplicacao
    ADD CONSTRAINT fk_assocsq_acao_apli_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 3994 (class 2606 OID 61453005)
-- Dependencies: 3980 175 401
-- Name: fk_assocsq_acao_aplic_acao_apl; Type: FK CONSTRAINT; Schema: basico_sequencia; Owner: -
--

ALTER TABLE ONLY assocsq_acao_aplicacao
    ADD CONSTRAINT fk_assocsq_acao_aplic_acao_apl FOREIGN KEY (id_acao_aplicacao) REFERENCES basico.acao_aplicacao(id);


--
-- TOC entry 3993 (class 2606 OID 61452590)
-- Dependencies: 175 3735 343
-- Name: fk_assocsq_acao_aplic_seq; Type: FK CONSTRAINT; Schema: basico_sequencia; Owner: -
--

ALTER TABLE ONLY assocsq_acao_aplicacao
    ADD CONSTRAINT fk_assocsq_acao_aplic_seq FOREIGN KEY (id_sequencia) REFERENCES basico.sequencia(id);


SET search_path = basico_template, pg_catalog;

--
-- TOC entry 3990 (class 2606 OID 61451979)
-- Dependencies: 173 341 3729
-- Name: fk_assoccl_include_template; Type: FK CONSTRAINT; Schema: basico_template; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_assoccl_include_template FOREIGN KEY (id_template) REFERENCES basico.template(id);


--
-- TOC entry 3989 (class 2606 OID 61452805)
-- Dependencies: 171 3771 353
-- Name: fk_assoccl_output_output; Type: FK CONSTRAINT; Schema: basico_template; Owner: -
--

ALTER TABLE ONLY assoccl_output
    ADD CONSTRAINT fk_assoccl_output_output FOREIGN KEY (id_output) REFERENCES basico.output(id);


--
-- TOC entry 3988 (class 2606 OID 61452304)
-- Dependencies: 171 341 3729
-- Name: fk_assoccl_output_template; Type: FK CONSTRAINT; Schema: basico_template; Owner: -
--

ALTER TABLE ONLY assoccl_output
    ADD CONSTRAINT fk_assoccl_output_template FOREIGN KEY (id_template) REFERENCES basico.template(id);


--
-- TOC entry 3991 (class 2606 OID 61452214)
-- Dependencies: 3804 363 173
-- Name: fk_assoccl_template_inc_inc; Type: FK CONSTRAINT; Schema: basico_template; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_assoccl_template_inc_inc FOREIGN KEY (id_include) REFERENCES basico.include(id);


SET search_path = basico_validator, pg_catalog;

--
-- TOC entry 3987 (class 2606 OID 61452865)
-- Dependencies: 391 169 3931
-- Name: fk_grupo_filter_categoria; Type: FK CONSTRAINT; Schema: basico_validator; Owner: -
--

ALTER TABLE ONLY grupo
    ADD CONSTRAINT fk_grupo_filter_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


SET search_path = basico_validator_grupo, pg_catalog;

--
-- TOC entry 3985 (class 2606 OID 61452585)
-- Dependencies: 167 337 3718
-- Name: fk_assocag_grupo_validator; Type: FK CONSTRAINT; Schema: basico_validator_grupo; Owner: -
--

ALTER TABLE ONLY assocag_grupo
    ADD CONSTRAINT fk_assocag_grupo_validator FOREIGN KEY (id_validator) REFERENCES basico.validator(id);


--
-- TOC entry 3986 (class 2606 OID 61452685)
-- Dependencies: 169 167 3125
-- Name: fk_grupo_assocag_grupo; Type: FK CONSTRAINT; Schema: basico_validator_grupo; Owner: -
--

ALTER TABLE ONLY assocag_grupo
    ADD CONSTRAINT fk_grupo_assocag_grupo FOREIGN KEY (id_validator_grupo) REFERENCES basico_validator.grupo(id);


--
-- TOC entry 3984 (class 2606 OID 61452184)
-- Dependencies: 167 169 3125
-- Name: fk_validator_assocag_grupo_grupo_assoc; Type: FK CONSTRAINT; Schema: basico_validator_grupo; Owner: -
--

ALTER TABLE ONLY assocag_grupo
    ADD CONSTRAINT fk_validator_assocag_grupo_grupo_assoc FOREIGN KEY (id_validator_grupo_assoc) REFERENCES basico_validator.grupo(id);


--
-- TOC entry 4255 (class 0 OID 0)
-- Dependencies: 38
-- Name: public; Type: ACL; Schema: -; Owner: -
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2012-07-04 10:46:59 BRT

--
-- PostgreSQL database dump complete
--
