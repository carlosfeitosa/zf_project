--
-- PostgreSQL database dump
--

-- Dumped from database version 8.3.17
-- Dumped by pg_dump version 9.1.4
-- Started on 2012-07-11 15:50:03 BRT

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
-- TOC entry 4222 (class 0 OID 0)
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
-- TOC entry 4223 (class 0 OID 0)
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
-- TOC entry 4224 (class 0 OID 0)
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
-- TOC entry 4225 (class 0 OID 0)
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
-- TOC entry 4226 (class 0 OID 0)
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
-- TOC entry 4227 (class 0 OID 0)
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
-- TOC entry 4228 (class 0 OID 0)
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
-- TOC entry 4229 (class 0 OID 0)
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
-- TOC entry 4230 (class 0 OID 0)
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
-- TOC entry 4231 (class 0 OID 0)
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
-- TOC entry 4232 (class 0 OID 0)
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
-- TOC entry 4233 (class 0 OID 0)
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
-- TOC entry 4234 (class 0 OID 0)
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
-- TOC entry 4235 (class 0 OID 0)
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
-- TOC entry 4236 (class 0 OID 0)
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
-- TOC entry 4237 (class 0 OID 0)
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
-- TOC entry 4238 (class 0 OID 0)
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
-- TOC entry 4239 (class 0 OID 0)
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
-- TOC entry 4240 (class 0 OID 0)
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
-- TOC entry 4241 (class 0 OID 0)
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
-- TOC entry 4242 (class 0 OID 0)
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
-- TOC entry 4243 (class 0 OID 0)
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
-- TOC entry 4244 (class 0 OID 0)
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
-- TOC entry 4245 (class 0 OID 0)
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
-- TOC entry 4246 (class 0 OID 0)
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
-- TOC entry 4247 (class 0 OID 0)
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
-- TOC entry 4248 (class 0 OID 0)
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
-- TOC entry 4249 (class 0 OID 0)
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
-- TOC entry 4250 (class 0 OID 0)
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
-- TOC entry 4251 (class 0 OID 0)
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
-- TOC entry 4252 (class 0 OID 0)
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
-- TOC entry 4253 (class 0 OID 0)
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
-- TOC entry 4254 (class 0 OID 0)
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
-- TOC entry 4255 (class 0 OID 0)
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
-- TOC entry 4256 (class 0 OID 0)
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
-- TOC entry 4257 (class 0 OID 0)
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
-- TOC entry 4258 (class 0 OID 0)
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
-- TOC entry 4259 (class 0 OID 0)
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
-- TOC entry 4262 (class 0 OID 0)
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
-- TOC entry 4263 (class 0 OID 0)
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
-- TOC entry 4264 (class 0 OID 0)
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
-- TOC entry 4265 (class 0 OID 0)
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
-- TOC entry 4266 (class 0 OID 0)
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
-- TOC entry 4267 (class 0 OID 0)
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
-- TOC entry 4268 (class 0 OID 0)
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
-- TOC entry 4269 (class 0 OID 0)
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
-- TOC entry 4270 (class 0 OID 0)
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
-- TOC entry 4271 (class 0 OID 0)
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
-- TOC entry 4272 (class 0 OID 0)
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
-- TOC entry 4273 (class 0 OID 0)
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
-- TOC entry 4274 (class 0 OID 0)
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
-- TOC entry 4275 (class 0 OID 0)
-- Dependencies: 417
-- Name: FUNCTION fn_checkincludeassocclelementoexists(id_assoccl_elemento integer, id_include integer); Type: COMMENT; Schema: basico_formulario_elemento; Owner: -
--

COMMENT ON FUNCTION fn_checkincludeassocclelementoexists(id_assoccl_elemento integer, id_include integer) IS 'Função que verifica se um include de uma associação de um formulário com um elemento já existe na associação do componente(do elemento) com o mesmo include, retornando o id da tupla se encontrado e null se não encontrado.';


SET search_path = basico, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 401 (class 1259 OID 61525900)
-- Dependencies: 3113 3114 3115 3116 3117 3
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
-- TOC entry 400 (class 1259 OID 61525898)
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
-- TOC entry 4276 (class 0 OID 0)
-- Dependencies: 400
-- Name: acao_aplicacao_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE acao_aplicacao_id_seq OWNED BY acao_aplicacao.id;


--
-- TOC entry 399 (class 1259 OID 61525882)
-- Dependencies: 3107 3108 3109 3110 3111 3
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
-- TOC entry 398 (class 1259 OID 61525880)
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
-- TOC entry 4277 (class 0 OID 0)
-- Dependencies: 398
-- Name: acao_evento_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE acao_evento_id_seq OWNED BY acao_evento.id;


--
-- TOC entry 397 (class 1259 OID 61525861)
-- Dependencies: 3098 3099 3100 3101 3102 3103 3104 3105 3
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
-- TOC entry 396 (class 1259 OID 61525859)
-- Dependencies: 397 3
-- Name: ajuda_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE ajuda_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4278 (class 0 OID 0)
-- Dependencies: 396
-- Name: ajuda_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE ajuda_id_seq OWNED BY ajuda.id;


--
-- TOC entry 395 (class 1259 OID 61525841)
-- Dependencies: 3090 3091 3092 3093 3094 3095 3096 3
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
-- TOC entry 394 (class 1259 OID 61525839)
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
-- TOC entry 4279 (class 0 OID 0)
-- Dependencies: 394
-- Name: area_conhecimento_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE area_conhecimento_id_seq OWNED BY area_conhecimento.id;


--
-- TOC entry 393 (class 1259 OID 61525821)
-- Dependencies: 3082 3083 3084 3085 3086 3087 3088 3
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
-- TOC entry 392 (class 1259 OID 61525819)
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
-- TOC entry 4280 (class 0 OID 0)
-- Dependencies: 392
-- Name: area_economia_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE area_economia_id_seq OWNED BY area_economia.id;


--
-- TOC entry 391 (class 1259 OID 61525801)
-- Dependencies: 3074 3075 3076 3077 3078 3079 3080 3
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
-- TOC entry 4281 (class 0 OID 0)
-- Dependencies: 391
-- Name: TABLE categoria; Type: COMMENT; Schema: basico; Owner: -
--

COMMENT ON TABLE categoria IS 'containner de categorias';


--
-- TOC entry 390 (class 1259 OID 61525799)
-- Dependencies: 3 391
-- Name: categoria_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE categoria_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4282 (class 0 OID 0)
-- Dependencies: 390
-- Name: categoria_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE categoria_id_seq OWNED BY categoria.id;


--
-- TOC entry 389 (class 1259 OID 61525783)
-- Dependencies: 3068 3069 3070 3071 3072 3
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
-- TOC entry 388 (class 1259 OID 61525781)
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
-- TOC entry 4283 (class 0 OID 0)
-- Dependencies: 388
-- Name: componente_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE componente_id_seq OWNED BY componente.id;


--
-- TOC entry 387 (class 1259 OID 61525763)
-- Dependencies: 3060 3061 3062 3063 3064 3065 3066 3
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
-- TOC entry 386 (class 1259 OID 61525761)
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
-- TOC entry 4284 (class 0 OID 0)
-- Dependencies: 386
-- Name: cpg_arquivo_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE cpg_arquivo_id_seq OWNED BY cpg_arquivo.id;


--
-- TOC entry 385 (class 1259 OID 61525746)
-- Dependencies: 3055 3056 3057 3058 3
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
-- TOC entry 384 (class 1259 OID 61525744)
-- Dependencies: 3 385
-- Name: cpg_codigo_acesso_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE cpg_codigo_acesso_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4285 (class 0 OID 0)
-- Dependencies: 384
-- Name: cpg_codigo_acesso_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE cpg_codigo_acesso_id_seq OWNED BY cpg_codigo_acesso.id;


--
-- TOC entry 383 (class 1259 OID 61525731)
-- Dependencies: 3052 3053 3
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
-- TOC entry 382 (class 1259 OID 61525729)
-- Dependencies: 383 3
-- Name: cpg_dados_bancarios_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE cpg_dados_bancarios_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4286 (class 0 OID 0)
-- Dependencies: 382
-- Name: cpg_dados_bancarios_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE cpg_dados_bancarios_id_seq OWNED BY cpg_dados_bancarios.id;


--
-- TOC entry 381 (class 1259 OID 61525715)
-- Dependencies: 3048 3049 3050 3
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
-- TOC entry 380 (class 1259 OID 61525713)
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
-- TOC entry 4287 (class 0 OID 0)
-- Dependencies: 380
-- Name: cpg_documento_identificacao_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE cpg_documento_identificacao_id_seq OWNED BY cpg_documento_identificacao.id;


--
-- TOC entry 379 (class 1259 OID 61525696)
-- Dependencies: 3041 3042 3043 3044 3045 3046 3
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
-- TOC entry 378 (class 1259 OID 61525694)
-- Dependencies: 379 3
-- Name: cpg_link_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE cpg_link_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4288 (class 0 OID 0)
-- Dependencies: 378
-- Name: cpg_link_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE cpg_link_id_seq OWNED BY cpg_link.id;


--
-- TOC entry 377 (class 1259 OID 61525681)
-- Dependencies: 3036 3037 3038 3039 3
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
-- TOC entry 376 (class 1259 OID 61525679)
-- Dependencies: 3 377
-- Name: cpg_produto_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE cpg_produto_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4289 (class 0 OID 0)
-- Dependencies: 376
-- Name: cpg_produto_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE cpg_produto_id_seq OWNED BY cpg_produto.id;


--
-- TOC entry 375 (class 1259 OID 61525668)
-- Dependencies: 3033 3034 3
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
-- TOC entry 374 (class 1259 OID 61525666)
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
-- TOC entry 4290 (class 0 OID 0)
-- Dependencies: 374
-- Name: cpg_token_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE cpg_token_id_seq OWNED BY cpg_token.id;


--
-- TOC entry 373 (class 1259 OID 61525653)
-- Dependencies: 3030 3031 3
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
-- TOC entry 372 (class 1259 OID 61525651)
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
-- TOC entry 4291 (class 0 OID 0)
-- Dependencies: 372
-- Name: dados_biometricos_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE dados_biometricos_id_seq OWNED BY dados_biometricos.id;


--
-- TOC entry 371 (class 1259 OID 61525636)
-- Dependencies: 3025 3026 3027 3028 3
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
-- TOC entry 370 (class 1259 OID 61525634)
-- Dependencies: 3 371
-- Name: dicionario_expressao_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE dicionario_expressao_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4292 (class 0 OID 0)
-- Dependencies: 370
-- Name: dicionario_expressao_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE dicionario_expressao_id_seq OWNED BY dicionario_expressao.id;


--
-- TOC entry 369 (class 1259 OID 61525618)
-- Dependencies: 3019 3020 3021 3022 3023 3
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
-- TOC entry 368 (class 1259 OID 61525616)
-- Dependencies: 3 369
-- Name: evento_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE evento_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4293 (class 0 OID 0)
-- Dependencies: 368
-- Name: evento_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE evento_id_seq OWNED BY evento.id;


--
-- TOC entry 367 (class 1259 OID 61525600)
-- Dependencies: 3013 3014 3015 3016 3017 3
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
-- TOC entry 366 (class 1259 OID 61525598)
-- Dependencies: 3 367
-- Name: filter_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE filter_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4294 (class 0 OID 0)
-- Dependencies: 366
-- Name: filter_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE filter_id_seq OWNED BY filter.id;


--
-- TOC entry 365 (class 1259 OID 61525580)
-- Dependencies: 3005 3006 3007 3008 3009 3010 3011 3
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
-- TOC entry 364 (class 1259 OID 61525578)
-- Dependencies: 365 3
-- Name: formulario_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE formulario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4295 (class 0 OID 0)
-- Dependencies: 364
-- Name: formulario_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE formulario_id_seq OWNED BY formulario.id;


--
-- TOC entry 363 (class 1259 OID 61525560)
-- Dependencies: 2999 3000 3001 3002 3003 3
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
-- TOC entry 362 (class 1259 OID 61525558)
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
-- TOC entry 4296 (class 0 OID 0)
-- Dependencies: 362
-- Name: include_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE include_id_seq OWNED BY include.id;


--
-- TOC entry 361 (class 1259 OID 61525549)
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
-- TOC entry 360 (class 1259 OID 61525547)
-- Dependencies: 3 361
-- Name: log_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4297 (class 0 OID 0)
-- Dependencies: 360
-- Name: log_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE log_id_seq OWNED BY log.id;


--
-- TOC entry 359 (class 1259 OID 61525536)
-- Dependencies: 2995 2996 3
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
-- TOC entry 358 (class 1259 OID 61525534)
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
-- TOC entry 4298 (class 0 OID 0)
-- Dependencies: 358
-- Name: mensagem_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE mensagem_id_seq OWNED BY mensagem.id;


--
-- TOC entry 357 (class 1259 OID 61525518)
-- Dependencies: 2989 2990 2991 2992 2993 3
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
-- TOC entry 356 (class 1259 OID 61525516)
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
-- TOC entry 4299 (class 0 OID 0)
-- Dependencies: 356
-- Name: metodo_validacao_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE metodo_validacao_id_seq OWNED BY metodo_validacao.id;


--
-- TOC entry 355 (class 1259 OID 61525501)
-- Dependencies: 2982 2983 2984 2985 2986 2987 3
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
-- TOC entry 354 (class 1259 OID 61525499)
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
-- TOC entry 4300 (class 0 OID 0)
-- Dependencies: 354
-- Name: modulo_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE modulo_id_seq OWNED BY modulo.id;


--
-- TOC entry 353 (class 1259 OID 61525485)
-- Dependencies: 2976 2977 2978 2979 2980 3
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
-- TOC entry 352 (class 1259 OID 61525483)
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
-- TOC entry 4301 (class 0 OID 0)
-- Dependencies: 352
-- Name: output_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE output_id_seq OWNED BY output.id;


--
-- TOC entry 351 (class 1259 OID 61525466)
-- Dependencies: 2969 2970 2971 2972 2973 2974 3
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
-- TOC entry 350 (class 1259 OID 61525464)
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
-- TOC entry 4302 (class 0 OID 0)
-- Dependencies: 350
-- Name: perfil_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE perfil_id_seq OWNED BY perfil.id;


--
-- TOC entry 349 (class 1259 OID 61525453)
-- Dependencies: 2966 2967 3
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
-- TOC entry 348 (class 1259 OID 61525451)
-- Dependencies: 349 3
-- Name: pessoa_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE pessoa_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4303 (class 0 OID 0)
-- Dependencies: 348
-- Name: pessoa_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE pessoa_id_seq OWNED BY pessoa.id;


--
-- TOC entry 347 (class 1259 OID 61525438)
-- Dependencies: 2961 2962 2963 2964 3
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
-- TOC entry 346 (class 1259 OID 61525436)
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
-- TOC entry 4304 (class 0 OID 0)
-- Dependencies: 346
-- Name: pessoa_juridica_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE pessoa_juridica_id_seq OWNED BY pessoa_juridica.id;


--
-- TOC entry 345 (class 1259 OID 61525422)
-- Dependencies: 2955 2956 2957 2958 2959 3
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
-- TOC entry 344 (class 1259 OID 61525420)
-- Dependencies: 3 345
-- Name: profissao_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE profissao_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4305 (class 0 OID 0)
-- Dependencies: 344
-- Name: profissao_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE profissao_id_seq OWNED BY profissao.id;


--
-- TOC entry 343 (class 1259 OID 61525404)
-- Dependencies: 2949 2950 2951 2952 2953 3
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
-- TOC entry 342 (class 1259 OID 61525402)
-- Dependencies: 3 343
-- Name: sequencia_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE sequencia_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4306 (class 0 OID 0)
-- Dependencies: 342
-- Name: sequencia_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE sequencia_id_seq OWNED BY sequencia.id;


--
-- TOC entry 341 (class 1259 OID 61525388)
-- Dependencies: 2943 2944 2945 2946 2947 3
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
-- TOC entry 340 (class 1259 OID 61525386)
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
-- TOC entry 4307 (class 0 OID 0)
-- Dependencies: 340
-- Name: template_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE template_id_seq OWNED BY template.id;


--
-- TOC entry 339 (class 1259 OID 61525367)
-- Dependencies: 2934 2935 2936 2937 2938 2939 2940 2941 3
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
-- TOC entry 4308 (class 0 OID 0)
-- Dependencies: 339
-- Name: TABLE tipo_categoria; Type: COMMENT; Schema: basico; Owner: -
--

COMMENT ON TABLE tipo_categoria IS 'containner de tipos de categoria';


--
-- TOC entry 338 (class 1259 OID 61525365)
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
-- TOC entry 4309 (class 0 OID 0)
-- Dependencies: 338
-- Name: tipo_categoria_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE tipo_categoria_id_seq OWNED BY tipo_categoria.id;


--
-- TOC entry 337 (class 1259 OID 61525350)
-- Dependencies: 2927 2928 2929 2930 2931 2932 3
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
-- TOC entry 336 (class 1259 OID 61525348)
-- Dependencies: 3 337
-- Name: validator_id_seq; Type: SEQUENCE; Schema: basico; Owner: -
--

CREATE SEQUENCE validator_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4310 (class 0 OID 0)
-- Dependencies: 336
-- Name: validator_id_seq; Type: SEQUENCE OWNED BY; Schema: basico; Owner: -
--

ALTER SEQUENCE validator_id_seq OWNED BY validator.id;


SET search_path = basico_acao_aplic_assoc_visao, pg_catalog;

--
-- TOC entry 335 (class 1259 OID 61525336)
-- Dependencies: 2925 6
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
-- TOC entry 334 (class 1259 OID 61525334)
-- Dependencies: 335 6
-- Name: assoccl_atrib_met_rec_post_id_seq; Type: SEQUENCE; Schema: basico_acao_aplic_assoc_visao; Owner: -
--

CREATE SEQUENCE assoccl_atrib_met_rec_post_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4311 (class 0 OID 0)
-- Dependencies: 334
-- Name: assoccl_atrib_met_rec_post_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_acao_aplic_assoc_visao; Owner: -
--

ALTER SEQUENCE assoccl_atrib_met_rec_post_id_seq OWNED BY assoccl_atrib_met_rec_post.id;


--
-- TOC entry 333 (class 1259 OID 61525319)
-- Dependencies: 2920 2921 2922 2923 6
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
-- TOC entry 332 (class 1259 OID 61525317)
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
-- TOC entry 4312 (class 0 OID 0)
-- Dependencies: 332
-- Name: atributo_metodo_recup_post_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_acao_aplic_assoc_visao; Owner: -
--

ALTER SEQUENCE atributo_metodo_recup_post_id_seq OWNED BY atributo_metodo_recup_post.id;


SET search_path = basico_acao_aplicacao, pg_catalog;

--
-- TOC entry 331 (class 1259 OID 61525301)
-- Dependencies: 2912 2913 2914 2915 2916 2917 2918 7
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
-- TOC entry 330 (class 1259 OID 61525299)
-- Dependencies: 331 7
-- Name: assoc_visao_id_seq; Type: SEQUENCE; Schema: basico_acao_aplicacao; Owner: -
--

CREATE SEQUENCE assoc_visao_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4313 (class 0 OID 0)
-- Dependencies: 330
-- Name: assoc_visao_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_acao_aplicacao; Owner: -
--

ALTER SEQUENCE assoc_visao_id_seq OWNED BY assoc_visao.id;


--
-- TOC entry 329 (class 1259 OID 61525287)
-- Dependencies: 2910 7
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
-- TOC entry 328 (class 1259 OID 61525285)
-- Dependencies: 329 7
-- Name: assoccl_metodo_validacao_id_seq; Type: SEQUENCE; Schema: basico_acao_aplicacao; Owner: -
--

CREATE SEQUENCE assoccl_metodo_validacao_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4314 (class 0 OID 0)
-- Dependencies: 328
-- Name: assoccl_metodo_validacao_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_acao_aplicacao; Owner: -
--

ALTER SEQUENCE assoccl_metodo_validacao_id_seq OWNED BY assoccl_metodo_validacao.id;


--
-- TOC entry 327 (class 1259 OID 61525273)
-- Dependencies: 2908 7
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
-- TOC entry 326 (class 1259 OID 61525271)
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
-- TOC entry 4315 (class 0 OID 0)
-- Dependencies: 326
-- Name: assoccl_perfil_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_acao_aplicacao; Owner: -
--

ALTER SEQUENCE assoccl_perfil_id_seq OWNED BY assoccl_perfil.id;


SET search_path = basico_acao_evento, pg_catalog;

--
-- TOC entry 325 (class 1259 OID 61525259)
-- Dependencies: 2906 9
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
-- TOC entry 324 (class 1259 OID 61525257)
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
-- TOC entry 4316 (class 0 OID 0)
-- Dependencies: 324
-- Name: assoccl_include_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_acao_evento; Owner: -
--

ALTER SEQUENCE assoccl_include_id_seq OWNED BY assoccl_include.id;


SET search_path = basico_ajuda, pg_catalog;

--
-- TOC entry 323 (class 1259 OID 61525245)
-- Dependencies: 2904 10
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
-- TOC entry 322 (class 1259 OID 61525243)
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
-- TOC entry 4317 (class 0 OID 0)
-- Dependencies: 322
-- Name: assoccl_link_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_ajuda; Owner: -
--

ALTER SEQUENCE assoccl_link_id_seq OWNED BY assoccl_link.id;


SET search_path = basico_assoc_banco, pg_catalog;

--
-- TOC entry 321 (class 1259 OID 61525226)
-- Dependencies: 2899 2900 2901 2902 11
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
-- TOC entry 320 (class 1259 OID 61525224)
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
-- TOC entry 4318 (class 0 OID 0)
-- Dependencies: 320
-- Name: assoc_tipo_conta_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_assoc_banco; Owner: -
--

ALTER SEQUENCE assoc_tipo_conta_id_seq OWNED BY assoc_tipo_conta.id;


SET search_path = basico_assoc_chave_estrangeira, pg_catalog;

--
-- TOC entry 319 (class 1259 OID 61525212)
-- Dependencies: 2897 12
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
-- TOC entry 318 (class 1259 OID 61525210)
-- Dependencies: 319 12
-- Name: relacao_id_seq; Type: SEQUENCE; Schema: basico_assoc_chave_estrangeira; Owner: -
--

CREATE SEQUENCE relacao_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4319 (class 0 OID 0)
-- Dependencies: 318
-- Name: relacao_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_assoc_chave_estrangeira; Owner: -
--

ALTER SEQUENCE relacao_id_seq OWNED BY relacao.id;


SET search_path = basico_assoc_dados_profis, pg_catalog;

--
-- TOC entry 317 (class 1259 OID 61525198)
-- Dependencies: 2895 13
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
-- TOC entry 316 (class 1259 OID 61525196)
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
-- TOC entry 4320 (class 0 OID 0)
-- Dependencies: 316
-- Name: assoccl_area_conhecimento_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_assoc_dados_profis; Owner: -
--

ALTER SEQUENCE assoccl_area_conhecimento_id_seq OWNED BY assoccl_area_conhecimento.id;


SET search_path = basico_assoccl_pessoa_perfil, pg_catalog;

--
-- TOC entry 315 (class 1259 OID 61525185)
-- Dependencies: 2892 2893 14
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
-- TOC entry 314 (class 1259 OID 61525183)
-- Dependencies: 14 315
-- Name: assoc_dados_id_seq; Type: SEQUENCE; Schema: basico_assoccl_pessoa_perfil; Owner: -
--

CREATE SEQUENCE assoc_dados_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4321 (class 0 OID 0)
-- Dependencies: 314
-- Name: assoc_dados_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_assoccl_pessoa_perfil; Owner: -
--

ALTER SEQUENCE assoc_dados_id_seq OWNED BY assoc_dados.id;


SET search_path = basico_assoccl_tipo_vinculo, pg_catalog;

--
-- TOC entry 313 (class 1259 OID 61525172)
-- Dependencies: 2889 2890 15
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
-- TOC entry 312 (class 1259 OID 61525170)
-- Dependencies: 15 313
-- Name: assoc_dados_id_seq; Type: SEQUENCE; Schema: basico_assoccl_tipo_vinculo; Owner: -
--

CREATE SEQUENCE assoc_dados_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4322 (class 0 OID 0)
-- Dependencies: 312
-- Name: assoc_dados_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_assoccl_tipo_vinculo; Owner: -
--

ALTER SEQUENCE assoc_dados_id_seq OWNED BY assoc_dados.id;


SET search_path = basico_categoria, pg_catalog;

--
-- TOC entry 311 (class 1259 OID 61525159)
-- Dependencies: 2886 2887 16
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
-- TOC entry 4323 (class 0 OID 0)
-- Dependencies: 311
-- Name: TABLE assoc_chave_estrangeira; Type: COMMENT; Schema: basico_categoria; Owner: -
--

COMMENT ON TABLE assoc_chave_estrangeira IS 'conteinner de relacao de uma categoria com uma relacao de chave estrangeira (tabela e campo)';


--
-- TOC entry 310 (class 1259 OID 61525157)
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
-- TOC entry 4324 (class 0 OID 0)
-- Dependencies: 310
-- Name: assoc_chave_estrangeira_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_categoria; Owner: -
--

ALTER SEQUENCE assoc_chave_estrangeira_id_seq OWNED BY assoc_chave_estrangeira.id;


--
-- TOC entry 309 (class 1259 OID 61525136)
-- Dependencies: 2884 16
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
-- TOC entry 308 (class 1259 OID 61525134)
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
-- TOC entry 4325 (class 0 OID 0)
-- Dependencies: 308
-- Name: assoc_evento_acao_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_categoria; Owner: -
--

ALTER SEQUENCE assoc_evento_acao_id_seq OWNED BY assoc_evento_acao.id;


SET search_path = basico_componente, pg_catalog;

--
-- TOC entry 307 (class 1259 OID 61525122)
-- Dependencies: 2882 17
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
-- TOC entry 306 (class 1259 OID 61525120)
-- Dependencies: 17 307
-- Name: assoccl_include_id_seq; Type: SEQUENCE; Schema: basico_componente; Owner: -
--

CREATE SEQUENCE assoccl_include_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4326 (class 0 OID 0)
-- Dependencies: 306
-- Name: assoccl_include_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_componente; Owner: -
--

ALTER SEQUENCE assoccl_include_id_seq OWNED BY assoccl_include.id;


SET search_path = basico_contato, pg_catalog;

--
-- TOC entry 305 (class 1259 OID 61525102)
-- Dependencies: 2874 2875 2876 2877 2878 2879 2880 18
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
-- TOC entry 304 (class 1259 OID 61525100)
-- Dependencies: 18 305
-- Name: cpg_email_id_seq; Type: SEQUENCE; Schema: basico_contato; Owner: -
--

CREATE SEQUENCE cpg_email_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4327 (class 0 OID 0)
-- Dependencies: 304
-- Name: cpg_email_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_contato; Owner: -
--

ALTER SEQUENCE cpg_email_id_seq OWNED BY cpg_email.id;


--
-- TOC entry 303 (class 1259 OID 61525083)
-- Dependencies: 2867 2868 2869 2870 2871 2872 18
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
-- TOC entry 302 (class 1259 OID 61525081)
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
-- TOC entry 4328 (class 0 OID 0)
-- Dependencies: 302
-- Name: cpg_telefone_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_contato; Owner: -
--

ALTER SEQUENCE cpg_telefone_id_seq OWNED BY cpg_telefone.id;


SET search_path = basico_cvc, pg_catalog;

--
-- TOC entry 301 (class 1259 OID 61525066)
-- Dependencies: 2862 2863 2864 2865 19
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
-- TOC entry 300 (class 1259 OID 61525064)
-- Dependencies: 301 19
-- Name: cvc_id_seq; Type: SEQUENCE; Schema: basico_cvc; Owner: -
--

CREATE SEQUENCE cvc_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4329 (class 0 OID 0)
-- Dependencies: 300
-- Name: cvc_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_cvc; Owner: -
--

ALTER SEQUENCE cvc_id_seq OWNED BY cvc.id;


SET search_path = basico_dados_academicos, pg_catalog;

--
-- TOC entry 299 (class 1259 OID 61525050)
-- Dependencies: 2856 2857 2858 2859 2860 20
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
-- TOC entry 298 (class 1259 OID 61525048)
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
-- TOC entry 4330 (class 0 OID 0)
-- Dependencies: 298
-- Name: titulacao_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_dados_academicos; Owner: -
--

ALTER SEQUENCE titulacao_id_seq OWNED BY titulacao.id;


SET search_path = basico_dados_biometricos, pg_catalog;

--
-- TOC entry 297 (class 1259 OID 61525037)
-- Dependencies: 2853 2854 21
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
-- TOC entry 296 (class 1259 OID 61525035)
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
-- TOC entry 4331 (class 0 OID 0)
-- Dependencies: 296
-- Name: assoc_pessoa_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_dados_biometricos; Owner: -
--

ALTER SEQUENCE assoc_pessoa_id_seq OWNED BY assoc_pessoa.id;


SET search_path = basico_dados_profissionais, pg_catalog;

--
-- TOC entry 295 (class 1259 OID 61525018)
-- Dependencies: 2846 2847 2848 2849 2850 2851 22
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
-- TOC entry 294 (class 1259 OID 61525016)
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
-- TOC entry 4332 (class 0 OID 0)
-- Dependencies: 294
-- Name: regime_trabalho_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_dados_profissionais; Owner: -
--

ALTER SEQUENCE regime_trabalho_id_seq OWNED BY regime_trabalho.id;


--
-- TOC entry 293 (class 1259 OID 61524998)
-- Dependencies: 2838 2839 2840 2841 2842 2843 2844 22
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
-- TOC entry 292 (class 1259 OID 61524996)
-- Dependencies: 22 293
-- Name: tipo_vinculo_id_seq; Type: SEQUENCE; Schema: basico_dados_profissionais; Owner: -
--

CREATE SEQUENCE tipo_vinculo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4333 (class 0 OID 0)
-- Dependencies: 292
-- Name: tipo_vinculo_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_dados_profissionais; Owner: -
--

ALTER SEQUENCE tipo_vinculo_id_seq OWNED BY tipo_vinculo.id;


--
-- TOC entry 291 (class 1259 OID 61524980)
-- Dependencies: 2832 2833 2834 2835 2836 22
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
-- TOC entry 290 (class 1259 OID 61524978)
-- Dependencies: 291 22
-- Name: vinculo_empregaticio_id_seq; Type: SEQUENCE; Schema: basico_dados_profissionais; Owner: -
--

CREATE SEQUENCE vinculo_empregaticio_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4334 (class 0 OID 0)
-- Dependencies: 290
-- Name: vinculo_empregaticio_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_dados_profissionais; Owner: -
--

ALTER SEQUENCE vinculo_empregaticio_id_seq OWNED BY vinculo_empregaticio.id;


SET search_path = basico_filter, pg_catalog;

--
-- TOC entry 281 (class 1259 OID 61524890)
-- Dependencies: 2826 2827 2828 2829 2830 41
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
-- TOC entry 280 (class 1259 OID 61524888)
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
-- TOC entry 4335 (class 0 OID 0)
-- Dependencies: 280
-- Name: grupo_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_filter; Owner: -
--

ALTER SEQUENCE grupo_id_seq OWNED BY grupo.id;


SET search_path = basico_filter_grupo, pg_catalog;

--
-- TOC entry 279 (class 1259 OID 61524877)
-- Dependencies: 2823 2824 42
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
-- TOC entry 278 (class 1259 OID 61524875)
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
-- TOC entry 4336 (class 0 OID 0)
-- Dependencies: 278
-- Name: assocag_grupo_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_filter_grupo; Owner: -
--

ALTER SEQUENCE assocag_grupo_id_seq OWNED BY assocag_grupo.id;


SET search_path = basico_form_assoccl_elem_grupo, pg_catalog;

--
-- TOC entry 277 (class 1259 OID 61524863)
-- Dependencies: 2821 23
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
-- TOC entry 276 (class 1259 OID 61524861)
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
-- TOC entry 4337 (class 0 OID 0)
-- Dependencies: 276
-- Name: assoccl_decorator_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_form_assoccl_elem_grupo; Owner: -
--

ALTER SEQUENCE assoccl_decorator_id_seq OWNED BY assoccl_decorator.id;


SET search_path = basico_form_assoccl_elemento, pg_catalog;

--
-- TOC entry 275 (class 1259 OID 61524847)
-- Dependencies: 2817 2818 2819 24
-- Name: assoccl_decorator; Type: TABLE; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE TABLE assoccl_decorator (
    id integer NOT NULL,
    id_assoccl_elemento integer NOT NULL,
    id_decorator integer,
    id_decorator_grupo integer,
    remove_flag boolean DEFAULT false NOT NULL,
    ordem integer NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT ck_form_assoccl_elem_assoccl_decorator CHECK ((((id_decorator IS NOT NULL) AND (id_decorator_grupo IS NULL)) OR ((id_decorator IS NULL) AND (id_decorator_grupo IS NOT NULL))))
);


--
-- TOC entry 274 (class 1259 OID 61524845)
-- Dependencies: 275 24
-- Name: assoccl_decorator_id_seq; Type: SEQUENCE; Schema: basico_form_assoccl_elemento; Owner: -
--

CREATE SEQUENCE assoccl_decorator_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4338 (class 0 OID 0)
-- Dependencies: 274
-- Name: assoccl_decorator_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER SEQUENCE assoccl_decorator_id_seq OWNED BY assoccl_decorator.id;


--
-- TOC entry 273 (class 1259 OID 61524832)
-- Dependencies: 2814 2815 24
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
-- TOC entry 272 (class 1259 OID 61524830)
-- Dependencies: 273 24
-- Name: assoccl_evento_id_seq; Type: SEQUENCE; Schema: basico_form_assoccl_elemento; Owner: -
--

CREATE SEQUENCE assoccl_evento_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4339 (class 0 OID 0)
-- Dependencies: 272
-- Name: assoccl_evento_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER SEQUENCE assoccl_evento_id_seq OWNED BY assoccl_evento.id;


--
-- TOC entry 271 (class 1259 OID 61524816)
-- Dependencies: 2810 2811 2812 24
-- Name: assoccl_filter; Type: TABLE; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE TABLE assoccl_filter (
    id integer NOT NULL,
    id_assoccl_elemento integer NOT NULL,
    id_filter integer,
    id_filter_grupo integer,
    ordem integer NOT NULL,
    remove_flag boolean DEFAULT false NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT ck_form_assoccl_elem_assoccl_filter CHECK ((((id_filter IS NOT NULL) AND (id_filter_grupo IS NULL)) OR ((id_filter IS NULL) AND (id_filter_grupo IS NOT NULL))))
);


--
-- TOC entry 270 (class 1259 OID 61524814)
-- Dependencies: 271 24
-- Name: assoccl_filter_id_seq; Type: SEQUENCE; Schema: basico_form_assoccl_elemento; Owner: -
--

CREATE SEQUENCE assoccl_filter_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4340 (class 0 OID 0)
-- Dependencies: 270
-- Name: assoccl_filter_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER SEQUENCE assoccl_filter_id_seq OWNED BY assoccl_filter.id;


--
-- TOC entry 269 (class 1259 OID 61524801)
-- Dependencies: 2807 2808 24
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
-- TOC entry 268 (class 1259 OID 61524799)
-- Dependencies: 269 24
-- Name: assoccl_include_id_seq; Type: SEQUENCE; Schema: basico_form_assoccl_elemento; Owner: -
--

CREATE SEQUENCE assoccl_include_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4341 (class 0 OID 0)
-- Dependencies: 268
-- Name: assoccl_include_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER SEQUENCE assoccl_include_id_seq OWNED BY assoccl_include.id;


--
-- TOC entry 267 (class 1259 OID 61524785)
-- Dependencies: 2803 2804 2805 24
-- Name: assoccl_validator; Type: TABLE; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE TABLE assoccl_validator (
    id integer NOT NULL,
    id_assoccl_elemento integer NOT NULL,
    id_validator integer,
    id_validator_grupo integer,
    remove_flag boolean DEFAULT false NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT ck_form_assoccl_elem_assoccl_validator CHECK ((((id_validator IS NOT NULL) AND (id_validator_grupo IS NULL)) OR ((id_validator IS NULL) AND (id_validator_grupo IS NOT NULL))))
);


--
-- TOC entry 266 (class 1259 OID 61524783)
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
-- TOC entry 4342 (class 0 OID 0)
-- Dependencies: 266
-- Name: assoccl_validator_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER SEQUENCE assoccl_validator_id_seq OWNED BY assoccl_validator.id;


--
-- TOC entry 265 (class 1259 OID 61524769)
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
-- TOC entry 264 (class 1259 OID 61524767)
-- Dependencies: 24 265
-- Name: grupo_id_seq; Type: SEQUENCE; Schema: basico_form_assoccl_elemento; Owner: -
--

CREATE SEQUENCE grupo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4343 (class 0 OID 0)
-- Dependencies: 264
-- Name: grupo_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER SEQUENCE grupo_id_seq OWNED BY grupo.id;


SET search_path = basico_form_decorator_grupo, pg_catalog;

--
-- TOC entry 263 (class 1259 OID 61524756)
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
-- TOC entry 262 (class 1259 OID 61524754)
-- Dependencies: 263 40
-- Name: assocag_grupo_id_seq; Type: SEQUENCE; Schema: basico_form_decorator_grupo; Owner: -
--

CREATE SEQUENCE assocag_grupo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4344 (class 0 OID 0)
-- Dependencies: 262
-- Name: assocag_grupo_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_form_decorator_grupo; Owner: -
--

ALTER SEQUENCE assocag_grupo_id_seq OWNED BY assocag_grupo.id;


SET search_path = basico_formulario, pg_catalog;

--
-- TOC entry 261 (class 1259 OID 61524740)
-- Dependencies: 2790 2791 2792 25
-- Name: assoccl_decorator; Type: TABLE; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE TABLE assoccl_decorator (
    id integer NOT NULL,
    id_formulario integer NOT NULL,
    id_decorator integer,
    id_decorator_grupo integer,
    exclude boolean DEFAULT false NOT NULL,
    ordem integer NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT ck_formulario_assoccl_decorator CHECK ((((id_decorator IS NOT NULL) AND (id_decorator_grupo IS NULL)) OR ((id_decorator IS NULL) AND (id_decorator_grupo IS NOT NULL))))
);


--
-- TOC entry 260 (class 1259 OID 61524738)
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
-- TOC entry 4345 (class 0 OID 0)
-- Dependencies: 260
-- Name: assoccl_decorator_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_formulario; Owner: -
--

ALTER SEQUENCE assoccl_decorator_id_seq OWNED BY assoccl_decorator.id;


--
-- TOC entry 259 (class 1259 OID 61524720)
-- Dependencies: 2784 2785 2786 2787 2788 25
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
-- TOC entry 258 (class 1259 OID 61524718)
-- Dependencies: 259 25
-- Name: assoccl_elemento_id_seq; Type: SEQUENCE; Schema: basico_formulario; Owner: -
--

CREATE SEQUENCE assoccl_elemento_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4346 (class 0 OID 0)
-- Dependencies: 258
-- Name: assoccl_elemento_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_formulario; Owner: -
--

ALTER SEQUENCE assoccl_elemento_id_seq OWNED BY assoccl_elemento.id;


--
-- TOC entry 257 (class 1259 OID 61524706)
-- Dependencies: 2782 25
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
-- TOC entry 256 (class 1259 OID 61524704)
-- Dependencies: 25 257
-- Name: assoccl_evento_id_seq; Type: SEQUENCE; Schema: basico_formulario; Owner: -
--

CREATE SEQUENCE assoccl_evento_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4347 (class 0 OID 0)
-- Dependencies: 256
-- Name: assoccl_evento_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_formulario; Owner: -
--

ALTER SEQUENCE assoccl_evento_id_seq OWNED BY assoccl_evento.id;


--
-- TOC entry 255 (class 1259 OID 61524692)
-- Dependencies: 2780 25
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
-- TOC entry 254 (class 1259 OID 61524690)
-- Dependencies: 25 255
-- Name: assoccl_include_id_seq; Type: SEQUENCE; Schema: basico_formulario; Owner: -
--

CREATE SEQUENCE assoccl_include_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4348 (class 0 OID 0)
-- Dependencies: 254
-- Name: assoccl_include_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_formulario; Owner: -
--

ALTER SEQUENCE assoccl_include_id_seq OWNED BY assoccl_include.id;


--
-- TOC entry 253 (class 1259 OID 61524678)
-- Dependencies: 2778 25
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
-- TOC entry 252 (class 1259 OID 61524676)
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
-- TOC entry 4349 (class 0 OID 0)
-- Dependencies: 252
-- Name: assoccl_modulo_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_formulario; Owner: -
--

ALTER SEQUENCE assoccl_modulo_id_seq OWNED BY assoccl_modulo.id;


--
-- TOC entry 251 (class 1259 OID 61524662)
-- Dependencies: 2772 2773 2774 2775 2776 25
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
-- TOC entry 250 (class 1259 OID 61524660)
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
-- TOC entry 4350 (class 0 OID 0)
-- Dependencies: 250
-- Name: decorator_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_formulario; Owner: -
--

ALTER SEQUENCE decorator_id_seq OWNED BY decorator.id;


--
-- TOC entry 249 (class 1259 OID 61524643)
-- Dependencies: 2765 2766 2767 2768 2769 2770 25
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
    ativo boolean DEFAULT false NOT NULL,
    datahora_criacao timestamp without time zone DEFAULT now() NOT NULL,
    datahora_ultima_atualizacao timestamp without time zone DEFAULT now() NOT NULL,
    rowinfo character varying(2000) NOT NULL,
    CONSTRAINT elemento_constante_textual_check CHECK (((constante_textual IS NULL) OR (basico.fn_checkconstantetextualexists(constante_textual) IS NOT NULL))),
    CONSTRAINT elemento_constante_textual_descricao_check CHECK (((constante_textual_descricao IS NULL) OR (basico.fn_checkconstantetextualexists(constante_textual_descricao) IS NOT NULL))),
    CONSTRAINT elemento_constante_textual_label_check CHECK (((constante_textual_label IS NULL) OR (basico.fn_checkconstantetextualexists(constante_textual_label) IS NOT NULL)))
);


--
-- TOC entry 248 (class 1259 OID 61524641)
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
-- TOC entry 4351 (class 0 OID 0)
-- Dependencies: 248
-- Name: elemento_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_formulario; Owner: -
--

ALTER SEQUENCE elemento_id_seq OWNED BY elemento.id;


--
-- TOC entry 247 (class 1259 OID 61524629)
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
-- TOC entry 246 (class 1259 OID 61524627)
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
-- TOC entry 4352 (class 0 OID 0)
-- Dependencies: 246
-- Name: rascunho_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_formulario; Owner: -
--

ALTER SEQUENCE rascunho_id_seq OWNED BY rascunho.id;


SET search_path = basico_formulario_decorator, pg_catalog;

--
-- TOC entry 245 (class 1259 OID 61524615)
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
-- TOC entry 244 (class 1259 OID 61524613)
-- Dependencies: 45 245
-- Name: assoccl_include_id_seq; Type: SEQUENCE; Schema: basico_formulario_decorator; Owner: -
--

CREATE SEQUENCE assoccl_include_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4353 (class 0 OID 0)
-- Dependencies: 244
-- Name: assoccl_include_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_formulario_decorator; Owner: -
--

ALTER SEQUENCE assoccl_include_id_seq OWNED BY assoccl_include.id;


--
-- TOC entry 243 (class 1259 OID 61524599)
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
-- TOC entry 242 (class 1259 OID 61524597)
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
-- TOC entry 4354 (class 0 OID 0)
-- Dependencies: 242
-- Name: grupo_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_formulario_decorator; Owner: -
--

ALTER SEQUENCE grupo_id_seq OWNED BY grupo.id;


SET search_path = basico_formulario_elemento, pg_catalog;

--
-- TOC entry 241 (class 1259 OID 61524583)
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
-- TOC entry 240 (class 1259 OID 61524581)
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
-- TOC entry 4355 (class 0 OID 0)
-- Dependencies: 240
-- Name: assoccl_decorator_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_formulario_elemento; Owner: -
--

ALTER SEQUENCE assoccl_decorator_id_seq OWNED BY assoccl_decorator.id;


--
-- TOC entry 239 (class 1259 OID 61524568)
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
-- TOC entry 238 (class 1259 OID 61524566)
-- Dependencies: 26 239
-- Name: assoccl_evento_id_seq; Type: SEQUENCE; Schema: basico_formulario_elemento; Owner: -
--

CREATE SEQUENCE assoccl_evento_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4356 (class 0 OID 0)
-- Dependencies: 238
-- Name: assoccl_evento_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_formulario_elemento; Owner: -
--

ALTER SEQUENCE assoccl_evento_id_seq OWNED BY assoccl_evento.id;


--
-- TOC entry 237 (class 1259 OID 61524552)
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
-- TOC entry 236 (class 1259 OID 61524550)
-- Dependencies: 26 237
-- Name: assoccl_filter_id_seq; Type: SEQUENCE; Schema: basico_formulario_elemento; Owner: -
--

CREATE SEQUENCE assoccl_filter_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4357 (class 0 OID 0)
-- Dependencies: 236
-- Name: assoccl_filter_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_formulario_elemento; Owner: -
--

ALTER SEQUENCE assoccl_filter_id_seq OWNED BY assoccl_filter.id;


--
-- TOC entry 235 (class 1259 OID 61524536)
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
-- TOC entry 234 (class 1259 OID 61524534)
-- Dependencies: 26 235
-- Name: assoccl_validator_id_seq; Type: SEQUENCE; Schema: basico_formulario_elemento; Owner: -
--

CREATE SEQUENCE assoccl_validator_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4358 (class 0 OID 0)
-- Dependencies: 234
-- Name: assoccl_validator_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_formulario_elemento; Owner: -
--

ALTER SEQUENCE assoccl_validator_id_seq OWNED BY assoccl_validator.id;


SET search_path = basico_formulario_rascunho, pg_catalog;

--
-- TOC entry 233 (class 1259 OID 61524523)
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
-- TOC entry 232 (class 1259 OID 61524521)
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
-- TOC entry 4359 (class 0 OID 0)
-- Dependencies: 232
-- Name: assocag_grupo_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_formulario_rascunho; Owner: -
--

ALTER SEQUENCE assocag_grupo_id_seq OWNED BY assocag_grupo.id;


SET search_path = basico_localizacao, pg_catalog;

--
-- TOC entry 231 (class 1259 OID 61524507)
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
-- TOC entry 230 (class 1259 OID 61524505)
-- Dependencies: 231 28
-- Name: assoc_bairro_id_seq; Type: SEQUENCE; Schema: basico_localizacao; Owner: -
--

CREATE SEQUENCE assoc_bairro_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4360 (class 0 OID 0)
-- Dependencies: 230
-- Name: assoc_bairro_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_localizacao; Owner: -
--

ALTER SEQUENCE assoc_bairro_id_seq OWNED BY assoc_bairro.id;


--
-- TOC entry 229 (class 1259 OID 61524490)
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
-- TOC entry 228 (class 1259 OID 61524488)
-- Dependencies: 28 229
-- Name: assoc_estado_id_seq; Type: SEQUENCE; Schema: basico_localizacao; Owner: -
--

CREATE SEQUENCE assoc_estado_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4361 (class 0 OID 0)
-- Dependencies: 228
-- Name: assoc_estado_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_localizacao; Owner: -
--

ALTER SEQUENCE assoc_estado_id_seq OWNED BY assoc_estado.id;


--
-- TOC entry 227 (class 1259 OID 61524474)
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
-- TOC entry 226 (class 1259 OID 61524472)
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
-- TOC entry 4362 (class 0 OID 0)
-- Dependencies: 226
-- Name: assoc_logradouro_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_localizacao; Owner: -
--

ALTER SEQUENCE assoc_logradouro_id_seq OWNED BY assoc_logradouro.id;


--
-- TOC entry 225 (class 1259 OID 61524457)
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
-- TOC entry 224 (class 1259 OID 61524455)
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
-- TOC entry 4363 (class 0 OID 0)
-- Dependencies: 224
-- Name: assoc_municipio_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_localizacao; Owner: -
--

ALTER SEQUENCE assoc_municipio_id_seq OWNED BY assoc_municipio.id;


--
-- TOC entry 223 (class 1259 OID 61524441)
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
-- TOC entry 222 (class 1259 OID 61524439)
-- Dependencies: 223 28
-- Name: codigo_postal_id_seq; Type: SEQUENCE; Schema: basico_localizacao; Owner: -
--

CREATE SEQUENCE codigo_postal_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4364 (class 0 OID 0)
-- Dependencies: 222
-- Name: codigo_postal_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_localizacao; Owner: -
--

ALTER SEQUENCE codigo_postal_id_seq OWNED BY codigo_postal.id;


--
-- TOC entry 221 (class 1259 OID 61524424)
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
-- TOC entry 220 (class 1259 OID 61524422)
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
-- TOC entry 4365 (class 0 OID 0)
-- Dependencies: 220
-- Name: cpg_endereco_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_localizacao; Owner: -
--

ALTER SEQUENCE cpg_endereco_id_seq OWNED BY cpg_endereco.id;


--
-- TOC entry 219 (class 1259 OID 61524407)
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
-- TOC entry 218 (class 1259 OID 61524405)
-- Dependencies: 28 219
-- Name: pais_id_seq; Type: SEQUENCE; Schema: basico_localizacao; Owner: -
--

CREATE SEQUENCE pais_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4366 (class 0 OID 0)
-- Dependencies: 218
-- Name: pais_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_localizacao; Owner: -
--

ALTER SEQUENCE pais_id_seq OWNED BY pais.id;


SET search_path = basico_mensagem, pg_catalog;

--
-- TOC entry 217 (class 1259 OID 61524395)
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
-- TOC entry 216 (class 1259 OID 61524393)
-- Dependencies: 29 217
-- Name: assoc_email_id_seq; Type: SEQUENCE; Schema: basico_mensagem; Owner: -
--

CREATE SEQUENCE assoc_email_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4367 (class 0 OID 0)
-- Dependencies: 216
-- Name: assoc_email_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_mensagem; Owner: -
--

ALTER SEQUENCE assoc_email_id_seq OWNED BY assoc_email.id;


--
-- TOC entry 215 (class 1259 OID 61524380)
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
-- TOC entry 214 (class 1259 OID 61524378)
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
-- TOC entry 4368 (class 0 OID 0)
-- Dependencies: 214
-- Name: assoccl_assoccl_pessoa_perfil_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_mensagem; Owner: -
--

ALTER SEQUENCE assoccl_assoccl_pessoa_perfil_id_seq OWNED BY assoccl_assoccl_pessoa_perfil.id;


--
-- TOC entry 213 (class 1259 OID 61524359)
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
-- TOC entry 212 (class 1259 OID 61524357)
-- Dependencies: 213 29
-- Name: template_id_seq; Type: SEQUENCE; Schema: basico_mensagem; Owner: -
--

CREATE SEQUENCE template_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4369 (class 0 OID 0)
-- Dependencies: 212
-- Name: template_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_mensagem; Owner: -
--

ALTER SEQUENCE template_id_seq OWNED BY template.id;


SET search_path = basico_mensagem_assoc_email, pg_catalog;

--
-- TOC entry 211 (class 1259 OID 61524346)
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
-- TOC entry 210 (class 1259 OID 61524344)
-- Dependencies: 211 30
-- Name: assoc_dados_id_seq; Type: SEQUENCE; Schema: basico_mensagem_assoc_email; Owner: -
--

CREATE SEQUENCE assoc_dados_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4370 (class 0 OID 0)
-- Dependencies: 210
-- Name: assoc_dados_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_mensagem_assoc_email; Owner: -
--

ALTER SEQUENCE assoc_dados_id_seq OWNED BY assoc_dados.id;


SET search_path = basico_metodo_validacao, pg_catalog;

--
-- TOC entry 209 (class 1259 OID 61524332)
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
-- TOC entry 208 (class 1259 OID 61524330)
-- Dependencies: 209 31
-- Name: assoccl_include_id_seq; Type: SEQUENCE; Schema: basico_metodo_validacao; Owner: -
--

CREATE SEQUENCE assoccl_include_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4371 (class 0 OID 0)
-- Dependencies: 208
-- Name: assoccl_include_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_metodo_validacao; Owner: -
--

ALTER SEQUENCE assoccl_include_id_seq OWNED BY assoccl_include.id;


SET search_path = basico_output, pg_catalog;

--
-- TOC entry 207 (class 1259 OID 61524318)
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
-- TOC entry 206 (class 1259 OID 61524316)
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
-- TOC entry 4372 (class 0 OID 0)
-- Dependencies: 206
-- Name: assoccl_include_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_output; Owner: -
--

ALTER SEQUENCE assoccl_include_id_seq OWNED BY assoccl_include.id;


SET search_path = basico_perfil, pg_catalog;

--
-- TOC entry 205 (class 1259 OID 61524304)
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
-- TOC entry 204 (class 1259 OID 61524302)
-- Dependencies: 205 33
-- Name: assoccl_modulo_id_seq; Type: SEQUENCE; Schema: basico_perfil; Owner: -
--

CREATE SEQUENCE assoccl_modulo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4373 (class 0 OID 0)
-- Dependencies: 204
-- Name: assoccl_modulo_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_perfil; Owner: -
--

ALTER SEQUENCE assoccl_modulo_id_seq OWNED BY assoccl_modulo.id;


SET search_path = basico_pessoa, pg_catalog;

--
-- TOC entry 203 (class 1259 OID 61524290)
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
-- TOC entry 202 (class 1259 OID 61524288)
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
-- TOC entry 4374 (class 0 OID 0)
-- Dependencies: 202
-- Name: assoc_dados_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_pessoa; Owner: -
--

ALTER SEQUENCE assoc_dados_id_seq OWNED BY assoc_dados.id;


--
-- TOC entry 201 (class 1259 OID 61524274)
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
-- TOC entry 200 (class 1259 OID 61524272)
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
-- TOC entry 4375 (class 0 OID 0)
-- Dependencies: 200
-- Name: assoccl_perfil_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_pessoa; Owner: -
--

ALTER SEQUENCE assoccl_perfil_id_seq OWNED BY assoccl_perfil.id;


--
-- TOC entry 199 (class 1259 OID 61524261)
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
-- TOC entry 198 (class 1259 OID 61524259)
-- Dependencies: 199 34
-- Name: assoccl_tipo_vinculo_id_seq; Type: SEQUENCE; Schema: basico_pessoa; Owner: -
--

CREATE SEQUENCE assoccl_tipo_vinculo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4376 (class 0 OID 0)
-- Dependencies: 198
-- Name: assoccl_tipo_vinculo_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_pessoa; Owner: -
--

ALTER SEQUENCE assoccl_tipo_vinculo_id_seq OWNED BY assoccl_tipo_vinculo.id;


--
-- TOC entry 197 (class 1259 OID 61524240)
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
-- TOC entry 196 (class 1259 OID 61524238)
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
-- TOC entry 4377 (class 0 OID 0)
-- Dependencies: 196
-- Name: login_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_pessoa; Owner: -
--

ALTER SEQUENCE login_id_seq OWNED BY login.id;


SET search_path = basico_pessoa_juridica, pg_catalog;

--
-- TOC entry 195 (class 1259 OID 61524226)
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
-- TOC entry 194 (class 1259 OID 61524224)
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
-- TOC entry 4378 (class 0 OID 0)
-- Dependencies: 194
-- Name: assoc_banco_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_pessoa_juridica; Owner: -
--

ALTER SEQUENCE assoc_banco_id_seq OWNED BY assoc_banco.id;


--
-- TOC entry 193 (class 1259 OID 61524213)
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
-- TOC entry 192 (class 1259 OID 61524211)
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
-- TOC entry 4379 (class 0 OID 0)
-- Dependencies: 192
-- Name: assoc_dados_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_pessoa_juridica; Owner: -
--

ALTER SEQUENCE assoc_dados_id_seq OWNED BY assoc_dados.id;


--
-- TOC entry 191 (class 1259 OID 61524199)
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
-- TOC entry 190 (class 1259 OID 61524197)
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
-- TOC entry 4380 (class 0 OID 0)
-- Dependencies: 190
-- Name: assocag_incubadora_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_pessoa_juridica; Owner: -
--

ALTER SEQUENCE assocag_incubadora_id_seq OWNED BY assocag_incubadora.id;


--
-- TOC entry 189 (class 1259 OID 61524182)
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
-- TOC entry 188 (class 1259 OID 61524180)
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
-- TOC entry 4381 (class 0 OID 0)
-- Dependencies: 188
-- Name: assocag_parceria_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_pessoa_juridica; Owner: -
--

ALTER SEQUENCE assocag_parceria_id_seq OWNED BY assocag_parceria.id;


--
-- TOC entry 187 (class 1259 OID 61524168)
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
-- TOC entry 186 (class 1259 OID 61524166)
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
-- TOC entry 4382 (class 0 OID 0)
-- Dependencies: 186
-- Name: assoccl_area_economia_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_pessoa_juridica; Owner: -
--

ALTER SEQUENCE assoccl_area_economia_id_seq OWNED BY assoccl_area_economia.id;


--
-- TOC entry 185 (class 1259 OID 61524153)
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
-- TOC entry 184 (class 1259 OID 61524151)
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
-- TOC entry 4383 (class 0 OID 0)
-- Dependencies: 184
-- Name: assoccl_capital_social_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_pessoa_juridica; Owner: -
--

ALTER SEQUENCE assoccl_capital_social_id_seq OWNED BY assoccl_capital_social.id;


--
-- TOC entry 183 (class 1259 OID 61524136)
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
-- TOC entry 182 (class 1259 OID 61524134)
-- Dependencies: 35 183
-- Name: assoccl_faturamento_id_seq; Type: SEQUENCE; Schema: basico_pessoa_juridica; Owner: -
--

CREATE SEQUENCE assoccl_faturamento_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4384 (class 0 OID 0)
-- Dependencies: 182
-- Name: assoccl_faturamento_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_pessoa_juridica; Owner: -
--

ALTER SEQUENCE assoccl_faturamento_id_seq OWNED BY assoccl_faturamento.id;


--
-- TOC entry 181 (class 1259 OID 61524121)
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
-- TOC entry 180 (class 1259 OID 61524119)
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
-- TOC entry 4385 (class 0 OID 0)
-- Dependencies: 180
-- Name: assoccl_quadro_funcionario_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_pessoa_juridica; Owner: -
--

ALTER SEQUENCE assoccl_quadro_funcionario_id_seq OWNED BY assoccl_quadro_funcionario.id;


--
-- TOC entry 179 (class 1259 OID 61524105)
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
-- TOC entry 178 (class 1259 OID 61524103)
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
-- TOC entry 4386 (class 0 OID 0)
-- Dependencies: 178
-- Name: capital_social_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_pessoa_juridica; Owner: -
--

ALTER SEQUENCE capital_social_id_seq OWNED BY capital_social.id;


--
-- TOC entry 177 (class 1259 OID 61524089)
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
-- TOC entry 176 (class 1259 OID 61524087)
-- Dependencies: 35 177
-- Name: natureza_id_seq; Type: SEQUENCE; Schema: basico_pessoa_juridica; Owner: -
--

CREATE SEQUENCE natureza_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4387 (class 0 OID 0)
-- Dependencies: 176
-- Name: natureza_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_pessoa_juridica; Owner: -
--

ALTER SEQUENCE natureza_id_seq OWNED BY natureza.id;


SET search_path = basico_sequencia, pg_catalog;

--
-- TOC entry 175 (class 1259 OID 61524071)
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
-- TOC entry 174 (class 1259 OID 61524069)
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
-- TOC entry 4388 (class 0 OID 0)
-- Dependencies: 174
-- Name: assocsq_acao_aplicacao_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_sequencia; Owner: -
--

ALTER SEQUENCE assocsq_acao_aplicacao_id_seq OWNED BY assocsq_acao_aplicacao.id;


SET search_path = basico_template, pg_catalog;

--
-- TOC entry 173 (class 1259 OID 61524057)
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
-- TOC entry 172 (class 1259 OID 61524055)
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
-- TOC entry 4389 (class 0 OID 0)
-- Dependencies: 172
-- Name: assoccl_include_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_template; Owner: -
--

ALTER SEQUENCE assoccl_include_id_seq OWNED BY assoccl_include.id;


--
-- TOC entry 171 (class 1259 OID 61524043)
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
-- TOC entry 170 (class 1259 OID 61524041)
-- Dependencies: 171 37
-- Name: assoccl_output_id_seq; Type: SEQUENCE; Schema: basico_template; Owner: -
--

CREATE SEQUENCE assoccl_output_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4390 (class 0 OID 0)
-- Dependencies: 170
-- Name: assoccl_output_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_template; Owner: -
--

ALTER SEQUENCE assoccl_output_id_seq OWNED BY assoccl_output.id;


SET search_path = basico_validator, pg_catalog;

--
-- TOC entry 169 (class 1259 OID 61524027)
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
-- TOC entry 168 (class 1259 OID 61524025)
-- Dependencies: 169 43
-- Name: grupo_id_seq; Type: SEQUENCE; Schema: basico_validator; Owner: -
--

CREATE SEQUENCE grupo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4391 (class 0 OID 0)
-- Dependencies: 168
-- Name: grupo_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_validator; Owner: -
--

ALTER SEQUENCE grupo_id_seq OWNED BY grupo.id;


SET search_path = basico_validator_grupo, pg_catalog;

--
-- TOC entry 167 (class 1259 OID 61524014)
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
-- TOC entry 166 (class 1259 OID 61524012)
-- Dependencies: 167 44
-- Name: assocag_grupo_id_seq; Type: SEQUENCE; Schema: basico_validator_grupo; Owner: -
--

CREATE SEQUENCE assocag_grupo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4392 (class 0 OID 0)
-- Dependencies: 166
-- Name: assocag_grupo_id_seq; Type: SEQUENCE OWNED BY; Schema: basico_validator_grupo; Owner: -
--

ALTER SEQUENCE assocag_grupo_id_seq OWNED BY assocag_grupo.id;


SET search_path = basico, pg_catalog;

--
-- TOC entry 3112 (class 2604 OID 61525903)
-- Dependencies: 401 400 401
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY acao_aplicacao ALTER COLUMN id SET DEFAULT nextval('acao_aplicacao_id_seq'::regclass);


--
-- TOC entry 3106 (class 2604 OID 61525885)
-- Dependencies: 398 399 399
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY acao_evento ALTER COLUMN id SET DEFAULT nextval('acao_evento_id_seq'::regclass);


--
-- TOC entry 3097 (class 2604 OID 61525864)
-- Dependencies: 397 396 397
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY ajuda ALTER COLUMN id SET DEFAULT nextval('ajuda_id_seq'::regclass);


--
-- TOC entry 3089 (class 2604 OID 61525844)
-- Dependencies: 394 395 395
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY area_conhecimento ALTER COLUMN id SET DEFAULT nextval('area_conhecimento_id_seq'::regclass);


--
-- TOC entry 3081 (class 2604 OID 61525824)
-- Dependencies: 393 392 393
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY area_economia ALTER COLUMN id SET DEFAULT nextval('area_economia_id_seq'::regclass);


--
-- TOC entry 3073 (class 2604 OID 61525804)
-- Dependencies: 390 391 391
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY categoria ALTER COLUMN id SET DEFAULT nextval('categoria_id_seq'::regclass);


--
-- TOC entry 3067 (class 2604 OID 61525786)
-- Dependencies: 389 388 389
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY componente ALTER COLUMN id SET DEFAULT nextval('componente_id_seq'::regclass);


--
-- TOC entry 3059 (class 2604 OID 61525766)
-- Dependencies: 386 387 387
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY cpg_arquivo ALTER COLUMN id SET DEFAULT nextval('cpg_arquivo_id_seq'::regclass);


--
-- TOC entry 3054 (class 2604 OID 61525749)
-- Dependencies: 385 384 385
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY cpg_codigo_acesso ALTER COLUMN id SET DEFAULT nextval('cpg_codigo_acesso_id_seq'::regclass);


--
-- TOC entry 3051 (class 2604 OID 61525734)
-- Dependencies: 382 383 383
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY cpg_dados_bancarios ALTER COLUMN id SET DEFAULT nextval('cpg_dados_bancarios_id_seq'::regclass);


--
-- TOC entry 3047 (class 2604 OID 61525718)
-- Dependencies: 380 381 381
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY cpg_documento_identificacao ALTER COLUMN id SET DEFAULT nextval('cpg_documento_identificacao_id_seq'::regclass);


--
-- TOC entry 3040 (class 2604 OID 61525699)
-- Dependencies: 378 379 379
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY cpg_link ALTER COLUMN id SET DEFAULT nextval('cpg_link_id_seq'::regclass);


--
-- TOC entry 3035 (class 2604 OID 61525684)
-- Dependencies: 376 377 377
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY cpg_produto ALTER COLUMN id SET DEFAULT nextval('cpg_produto_id_seq'::regclass);


--
-- TOC entry 3032 (class 2604 OID 61525671)
-- Dependencies: 375 374 375
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY cpg_token ALTER COLUMN id SET DEFAULT nextval('cpg_token_id_seq'::regclass);


--
-- TOC entry 3029 (class 2604 OID 61525656)
-- Dependencies: 373 372 373
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY dados_biometricos ALTER COLUMN id SET DEFAULT nextval('dados_biometricos_id_seq'::regclass);


--
-- TOC entry 3024 (class 2604 OID 61525639)
-- Dependencies: 370 371 371
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY dicionario_expressao ALTER COLUMN id SET DEFAULT nextval('dicionario_expressao_id_seq'::regclass);


--
-- TOC entry 3018 (class 2604 OID 61525621)
-- Dependencies: 369 368 369
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY evento ALTER COLUMN id SET DEFAULT nextval('evento_id_seq'::regclass);


--
-- TOC entry 3012 (class 2604 OID 61525603)
-- Dependencies: 367 366 367
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY filter ALTER COLUMN id SET DEFAULT nextval('filter_id_seq'::regclass);


--
-- TOC entry 3004 (class 2604 OID 61525583)
-- Dependencies: 364 365 365
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY formulario ALTER COLUMN id SET DEFAULT nextval('formulario_id_seq'::regclass);


--
-- TOC entry 2998 (class 2604 OID 61525563)
-- Dependencies: 363 362 363
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY include ALTER COLUMN id SET DEFAULT nextval('include_id_seq'::regclass);


--
-- TOC entry 2997 (class 2604 OID 61525552)
-- Dependencies: 361 360 361
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY log ALTER COLUMN id SET DEFAULT nextval('log_id_seq'::regclass);


--
-- TOC entry 2994 (class 2604 OID 61525539)
-- Dependencies: 359 358 359
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY mensagem ALTER COLUMN id SET DEFAULT nextval('mensagem_id_seq'::regclass);


--
-- TOC entry 2988 (class 2604 OID 61525521)
-- Dependencies: 356 357 357
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY metodo_validacao ALTER COLUMN id SET DEFAULT nextval('metodo_validacao_id_seq'::regclass);


--
-- TOC entry 2981 (class 2604 OID 61525504)
-- Dependencies: 354 355 355
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY modulo ALTER COLUMN id SET DEFAULT nextval('modulo_id_seq'::regclass);


--
-- TOC entry 2975 (class 2604 OID 61525488)
-- Dependencies: 353 352 353
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY output ALTER COLUMN id SET DEFAULT nextval('output_id_seq'::regclass);


--
-- TOC entry 2968 (class 2604 OID 61525469)
-- Dependencies: 350 351 351
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY perfil ALTER COLUMN id SET DEFAULT nextval('perfil_id_seq'::regclass);


--
-- TOC entry 2965 (class 2604 OID 61525456)
-- Dependencies: 349 348 349
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa ALTER COLUMN id SET DEFAULT nextval('pessoa_id_seq'::regclass);


--
-- TOC entry 2960 (class 2604 OID 61525441)
-- Dependencies: 346 347 347
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa_juridica ALTER COLUMN id SET DEFAULT nextval('pessoa_juridica_id_seq'::regclass);


--
-- TOC entry 2954 (class 2604 OID 61525425)
-- Dependencies: 344 345 345
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY profissao ALTER COLUMN id SET DEFAULT nextval('profissao_id_seq'::regclass);


--
-- TOC entry 2948 (class 2604 OID 61525407)
-- Dependencies: 343 342 343
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY sequencia ALTER COLUMN id SET DEFAULT nextval('sequencia_id_seq'::regclass);


--
-- TOC entry 2942 (class 2604 OID 61525391)
-- Dependencies: 340 341 341
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY template ALTER COLUMN id SET DEFAULT nextval('template_id_seq'::regclass);


--
-- TOC entry 2933 (class 2604 OID 61525370)
-- Dependencies: 339 338 339
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY tipo_categoria ALTER COLUMN id SET DEFAULT nextval('tipo_categoria_id_seq'::regclass);


--
-- TOC entry 2926 (class 2604 OID 61525353)
-- Dependencies: 336 337 337
-- Name: id; Type: DEFAULT; Schema: basico; Owner: -
--

ALTER TABLE ONLY validator ALTER COLUMN id SET DEFAULT nextval('validator_id_seq'::regclass);


SET search_path = basico_acao_aplic_assoc_visao, pg_catalog;

--
-- TOC entry 2924 (class 2604 OID 61525339)
-- Dependencies: 334 335 335
-- Name: id; Type: DEFAULT; Schema: basico_acao_aplic_assoc_visao; Owner: -
--

ALTER TABLE ONLY assoccl_atrib_met_rec_post ALTER COLUMN id SET DEFAULT nextval('assoccl_atrib_met_rec_post_id_seq'::regclass);


--
-- TOC entry 2919 (class 2604 OID 61525322)
-- Dependencies: 333 332 333
-- Name: id; Type: DEFAULT; Schema: basico_acao_aplic_assoc_visao; Owner: -
--

ALTER TABLE ONLY atributo_metodo_recup_post ALTER COLUMN id SET DEFAULT nextval('atributo_metodo_recup_post_id_seq'::regclass);


SET search_path = basico_acao_aplicacao, pg_catalog;

--
-- TOC entry 2911 (class 2604 OID 61525304)
-- Dependencies: 330 331 331
-- Name: id; Type: DEFAULT; Schema: basico_acao_aplicacao; Owner: -
--

ALTER TABLE ONLY assoc_visao ALTER COLUMN id SET DEFAULT nextval('assoc_visao_id_seq'::regclass);


--
-- TOC entry 2909 (class 2604 OID 61525290)
-- Dependencies: 329 328 329
-- Name: id; Type: DEFAULT; Schema: basico_acao_aplicacao; Owner: -
--

ALTER TABLE ONLY assoccl_metodo_validacao ALTER COLUMN id SET DEFAULT nextval('assoccl_metodo_validacao_id_seq'::regclass);


--
-- TOC entry 2907 (class 2604 OID 61525276)
-- Dependencies: 326 327 327
-- Name: id; Type: DEFAULT; Schema: basico_acao_aplicacao; Owner: -
--

ALTER TABLE ONLY assoccl_perfil ALTER COLUMN id SET DEFAULT nextval('assoccl_perfil_id_seq'::regclass);


SET search_path = basico_acao_evento, pg_catalog;

--
-- TOC entry 2905 (class 2604 OID 61525262)
-- Dependencies: 324 325 325
-- Name: id; Type: DEFAULT; Schema: basico_acao_evento; Owner: -
--

ALTER TABLE ONLY assoccl_include ALTER COLUMN id SET DEFAULT nextval('assoccl_include_id_seq'::regclass);


SET search_path = basico_ajuda, pg_catalog;

--
-- TOC entry 2903 (class 2604 OID 61525248)
-- Dependencies: 322 323 323
-- Name: id; Type: DEFAULT; Schema: basico_ajuda; Owner: -
--

ALTER TABLE ONLY assoccl_link ALTER COLUMN id SET DEFAULT nextval('assoccl_link_id_seq'::regclass);


SET search_path = basico_assoc_banco, pg_catalog;

--
-- TOC entry 2898 (class 2604 OID 61525229)
-- Dependencies: 320 321 321
-- Name: id; Type: DEFAULT; Schema: basico_assoc_banco; Owner: -
--

ALTER TABLE ONLY assoc_tipo_conta ALTER COLUMN id SET DEFAULT nextval('assoc_tipo_conta_id_seq'::regclass);


SET search_path = basico_assoc_chave_estrangeira, pg_catalog;

--
-- TOC entry 2896 (class 2604 OID 61525215)
-- Dependencies: 318 319 319
-- Name: id; Type: DEFAULT; Schema: basico_assoc_chave_estrangeira; Owner: -
--

ALTER TABLE ONLY relacao ALTER COLUMN id SET DEFAULT nextval('relacao_id_seq'::regclass);


SET search_path = basico_assoc_dados_profis, pg_catalog;

--
-- TOC entry 2894 (class 2604 OID 61525201)
-- Dependencies: 316 317 317
-- Name: id; Type: DEFAULT; Schema: basico_assoc_dados_profis; Owner: -
--

ALTER TABLE ONLY assoccl_area_conhecimento ALTER COLUMN id SET DEFAULT nextval('assoccl_area_conhecimento_id_seq'::regclass);


SET search_path = basico_assoccl_pessoa_perfil, pg_catalog;

--
-- TOC entry 2891 (class 2604 OID 61525188)
-- Dependencies: 315 314 315
-- Name: id; Type: DEFAULT; Schema: basico_assoccl_pessoa_perfil; Owner: -
--

ALTER TABLE ONLY assoc_dados ALTER COLUMN id SET DEFAULT nextval('assoc_dados_id_seq'::regclass);


SET search_path = basico_assoccl_tipo_vinculo, pg_catalog;

--
-- TOC entry 2888 (class 2604 OID 61525175)
-- Dependencies: 312 313 313
-- Name: id; Type: DEFAULT; Schema: basico_assoccl_tipo_vinculo; Owner: -
--

ALTER TABLE ONLY assoc_dados ALTER COLUMN id SET DEFAULT nextval('assoc_dados_id_seq'::regclass);


SET search_path = basico_categoria, pg_catalog;

--
-- TOC entry 2885 (class 2604 OID 61525162)
-- Dependencies: 310 311 311
-- Name: id; Type: DEFAULT; Schema: basico_categoria; Owner: -
--

ALTER TABLE ONLY assoc_chave_estrangeira ALTER COLUMN id SET DEFAULT nextval('assoc_chave_estrangeira_id_seq'::regclass);


--
-- TOC entry 2883 (class 2604 OID 61525139)
-- Dependencies: 308 309 309
-- Name: id; Type: DEFAULT; Schema: basico_categoria; Owner: -
--

ALTER TABLE ONLY assoc_evento_acao ALTER COLUMN id SET DEFAULT nextval('assoc_evento_acao_id_seq'::regclass);


SET search_path = basico_componente, pg_catalog;

--
-- TOC entry 2881 (class 2604 OID 61525125)
-- Dependencies: 307 306 307
-- Name: id; Type: DEFAULT; Schema: basico_componente; Owner: -
--

ALTER TABLE ONLY assoccl_include ALTER COLUMN id SET DEFAULT nextval('assoccl_include_id_seq'::regclass);


SET search_path = basico_contato, pg_catalog;

--
-- TOC entry 2873 (class 2604 OID 61525105)
-- Dependencies: 305 304 305
-- Name: id; Type: DEFAULT; Schema: basico_contato; Owner: -
--

ALTER TABLE ONLY cpg_email ALTER COLUMN id SET DEFAULT nextval('cpg_email_id_seq'::regclass);


--
-- TOC entry 2866 (class 2604 OID 61525086)
-- Dependencies: 303 302 303
-- Name: id; Type: DEFAULT; Schema: basico_contato; Owner: -
--

ALTER TABLE ONLY cpg_telefone ALTER COLUMN id SET DEFAULT nextval('cpg_telefone_id_seq'::regclass);


SET search_path = basico_cvc, pg_catalog;

--
-- TOC entry 2861 (class 2604 OID 61525069)
-- Dependencies: 300 301 301
-- Name: id; Type: DEFAULT; Schema: basico_cvc; Owner: -
--

ALTER TABLE ONLY cvc ALTER COLUMN id SET DEFAULT nextval('cvc_id_seq'::regclass);


SET search_path = basico_dados_academicos, pg_catalog;

--
-- TOC entry 2855 (class 2604 OID 61525053)
-- Dependencies: 298 299 299
-- Name: id; Type: DEFAULT; Schema: basico_dados_academicos; Owner: -
--

ALTER TABLE ONLY titulacao ALTER COLUMN id SET DEFAULT nextval('titulacao_id_seq'::regclass);


SET search_path = basico_dados_biometricos, pg_catalog;

--
-- TOC entry 2852 (class 2604 OID 61525040)
-- Dependencies: 296 297 297
-- Name: id; Type: DEFAULT; Schema: basico_dados_biometricos; Owner: -
--

ALTER TABLE ONLY assoc_pessoa ALTER COLUMN id SET DEFAULT nextval('assoc_pessoa_id_seq'::regclass);


SET search_path = basico_dados_profissionais, pg_catalog;

--
-- TOC entry 2845 (class 2604 OID 61525021)
-- Dependencies: 295 294 295
-- Name: id; Type: DEFAULT; Schema: basico_dados_profissionais; Owner: -
--

ALTER TABLE ONLY regime_trabalho ALTER COLUMN id SET DEFAULT nextval('regime_trabalho_id_seq'::regclass);


--
-- TOC entry 2837 (class 2604 OID 61525001)
-- Dependencies: 293 292 293
-- Name: id; Type: DEFAULT; Schema: basico_dados_profissionais; Owner: -
--

ALTER TABLE ONLY tipo_vinculo ALTER COLUMN id SET DEFAULT nextval('tipo_vinculo_id_seq'::regclass);


--
-- TOC entry 2831 (class 2604 OID 61524983)
-- Dependencies: 290 291 291
-- Name: id; Type: DEFAULT; Schema: basico_dados_profissionais; Owner: -
--

ALTER TABLE ONLY vinculo_empregaticio ALTER COLUMN id SET DEFAULT nextval('vinculo_empregaticio_id_seq'::regclass);


SET search_path = basico_filter, pg_catalog;

--
-- TOC entry 2825 (class 2604 OID 61524893)
-- Dependencies: 280 281 281
-- Name: id; Type: DEFAULT; Schema: basico_filter; Owner: -
--

ALTER TABLE ONLY grupo ALTER COLUMN id SET DEFAULT nextval('grupo_id_seq'::regclass);


SET search_path = basico_filter_grupo, pg_catalog;

--
-- TOC entry 2822 (class 2604 OID 61524880)
-- Dependencies: 279 278 279
-- Name: id; Type: DEFAULT; Schema: basico_filter_grupo; Owner: -
--

ALTER TABLE ONLY assocag_grupo ALTER COLUMN id SET DEFAULT nextval('assocag_grupo_id_seq'::regclass);


SET search_path = basico_form_assoccl_elem_grupo, pg_catalog;

--
-- TOC entry 2820 (class 2604 OID 61524866)
-- Dependencies: 276 277 277
-- Name: id; Type: DEFAULT; Schema: basico_form_assoccl_elem_grupo; Owner: -
--

ALTER TABLE ONLY assoccl_decorator ALTER COLUMN id SET DEFAULT nextval('assoccl_decorator_id_seq'::regclass);


SET search_path = basico_form_assoccl_elemento, pg_catalog;

--
-- TOC entry 2816 (class 2604 OID 61524850)
-- Dependencies: 275 274 275
-- Name: id; Type: DEFAULT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_decorator ALTER COLUMN id SET DEFAULT nextval('assoccl_decorator_id_seq'::regclass);


--
-- TOC entry 2813 (class 2604 OID 61524835)
-- Dependencies: 273 272 273
-- Name: id; Type: DEFAULT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_evento ALTER COLUMN id SET DEFAULT nextval('assoccl_evento_id_seq'::regclass);


--
-- TOC entry 2809 (class 2604 OID 61524819)
-- Dependencies: 270 271 271
-- Name: id; Type: DEFAULT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_filter ALTER COLUMN id SET DEFAULT nextval('assoccl_filter_id_seq'::regclass);


--
-- TOC entry 2806 (class 2604 OID 61524804)
-- Dependencies: 269 268 269
-- Name: id; Type: DEFAULT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_include ALTER COLUMN id SET DEFAULT nextval('assoccl_include_id_seq'::regclass);


--
-- TOC entry 2802 (class 2604 OID 61524788)
-- Dependencies: 266 267 267
-- Name: id; Type: DEFAULT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_validator ALTER COLUMN id SET DEFAULT nextval('assoccl_validator_id_seq'::regclass);


--
-- TOC entry 2796 (class 2604 OID 61524772)
-- Dependencies: 265 264 265
-- Name: id; Type: DEFAULT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY grupo ALTER COLUMN id SET DEFAULT nextval('grupo_id_seq'::regclass);


SET search_path = basico_form_decorator_grupo, pg_catalog;

--
-- TOC entry 2793 (class 2604 OID 61524759)
-- Dependencies: 262 263 263
-- Name: id; Type: DEFAULT; Schema: basico_form_decorator_grupo; Owner: -
--

ALTER TABLE ONLY assocag_grupo ALTER COLUMN id SET DEFAULT nextval('assocag_grupo_id_seq'::regclass);


SET search_path = basico_formulario, pg_catalog;

--
-- TOC entry 2789 (class 2604 OID 61524743)
-- Dependencies: 261 260 261
-- Name: id; Type: DEFAULT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_decorator ALTER COLUMN id SET DEFAULT nextval('assoccl_decorator_id_seq'::regclass);


--
-- TOC entry 2783 (class 2604 OID 61524723)
-- Dependencies: 258 259 259
-- Name: id; Type: DEFAULT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_elemento ALTER COLUMN id SET DEFAULT nextval('assoccl_elemento_id_seq'::regclass);


--
-- TOC entry 2781 (class 2604 OID 61524709)
-- Dependencies: 257 256 257
-- Name: id; Type: DEFAULT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_evento ALTER COLUMN id SET DEFAULT nextval('assoccl_evento_id_seq'::regclass);


--
-- TOC entry 2779 (class 2604 OID 61524695)
-- Dependencies: 254 255 255
-- Name: id; Type: DEFAULT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_include ALTER COLUMN id SET DEFAULT nextval('assoccl_include_id_seq'::regclass);


--
-- TOC entry 2777 (class 2604 OID 61524681)
-- Dependencies: 253 252 253
-- Name: id; Type: DEFAULT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_modulo ALTER COLUMN id SET DEFAULT nextval('assoccl_modulo_id_seq'::regclass);


--
-- TOC entry 2771 (class 2604 OID 61524665)
-- Dependencies: 250 251 251
-- Name: id; Type: DEFAULT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY decorator ALTER COLUMN id SET DEFAULT nextval('decorator_id_seq'::regclass);


--
-- TOC entry 2764 (class 2604 OID 61524646)
-- Dependencies: 249 248 249
-- Name: id; Type: DEFAULT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY elemento ALTER COLUMN id SET DEFAULT nextval('elemento_id_seq'::regclass);


--
-- TOC entry 2760 (class 2604 OID 61524632)
-- Dependencies: 246 247 247
-- Name: id; Type: DEFAULT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY rascunho ALTER COLUMN id SET DEFAULT nextval('rascunho_id_seq'::regclass);


SET search_path = basico_formulario_decorator, pg_catalog;

--
-- TOC entry 2758 (class 2604 OID 61524618)
-- Dependencies: 244 245 245
-- Name: id; Type: DEFAULT; Schema: basico_formulario_decorator; Owner: -
--

ALTER TABLE ONLY assoccl_include ALTER COLUMN id SET DEFAULT nextval('assoccl_include_id_seq'::regclass);


--
-- TOC entry 2752 (class 2604 OID 61524602)
-- Dependencies: 243 242 243
-- Name: id; Type: DEFAULT; Schema: basico_formulario_decorator; Owner: -
--

ALTER TABLE ONLY grupo ALTER COLUMN id SET DEFAULT nextval('grupo_id_seq'::regclass);


SET search_path = basico_formulario_elemento, pg_catalog;

--
-- TOC entry 2748 (class 2604 OID 61524586)
-- Dependencies: 241 240 241
-- Name: id; Type: DEFAULT; Schema: basico_formulario_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_decorator ALTER COLUMN id SET DEFAULT nextval('assoccl_decorator_id_seq'::regclass);


--
-- TOC entry 2745 (class 2604 OID 61524571)
-- Dependencies: 238 239 239
-- Name: id; Type: DEFAULT; Schema: basico_formulario_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_evento ALTER COLUMN id SET DEFAULT nextval('assoccl_evento_id_seq'::regclass);


--
-- TOC entry 2741 (class 2604 OID 61524555)
-- Dependencies: 236 237 237
-- Name: id; Type: DEFAULT; Schema: basico_formulario_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_filter ALTER COLUMN id SET DEFAULT nextval('assoccl_filter_id_seq'::regclass);


--
-- TOC entry 2737 (class 2604 OID 61524539)
-- Dependencies: 234 235 235
-- Name: id; Type: DEFAULT; Schema: basico_formulario_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_validator ALTER COLUMN id SET DEFAULT nextval('assoccl_validator_id_seq'::regclass);


SET search_path = basico_formulario_rascunho, pg_catalog;

--
-- TOC entry 2734 (class 2604 OID 61524526)
-- Dependencies: 233 232 233
-- Name: id; Type: DEFAULT; Schema: basico_formulario_rascunho; Owner: -
--

ALTER TABLE ONLY assocag_grupo ALTER COLUMN id SET DEFAULT nextval('assocag_grupo_id_seq'::regclass);


SET search_path = basico_localizacao, pg_catalog;

--
-- TOC entry 2730 (class 2604 OID 61524510)
-- Dependencies: 231 230 231
-- Name: id; Type: DEFAULT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY assoc_bairro ALTER COLUMN id SET DEFAULT nextval('assoc_bairro_id_seq'::regclass);


--
-- TOC entry 2725 (class 2604 OID 61524493)
-- Dependencies: 228 229 229
-- Name: id; Type: DEFAULT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY assoc_estado ALTER COLUMN id SET DEFAULT nextval('assoc_estado_id_seq'::regclass);


--
-- TOC entry 2721 (class 2604 OID 61524477)
-- Dependencies: 227 226 227
-- Name: id; Type: DEFAULT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY assoc_logradouro ALTER COLUMN id SET DEFAULT nextval('assoc_logradouro_id_seq'::regclass);


--
-- TOC entry 2716 (class 2604 OID 61524460)
-- Dependencies: 225 224 225
-- Name: id; Type: DEFAULT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY assoc_municipio ALTER COLUMN id SET DEFAULT nextval('assoc_municipio_id_seq'::regclass);


--
-- TOC entry 2712 (class 2604 OID 61524444)
-- Dependencies: 223 222 223
-- Name: id; Type: DEFAULT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY codigo_postal ALTER COLUMN id SET DEFAULT nextval('codigo_postal_id_seq'::regclass);


--
-- TOC entry 2707 (class 2604 OID 61524427)
-- Dependencies: 220 221 221
-- Name: id; Type: DEFAULT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY cpg_endereco ALTER COLUMN id SET DEFAULT nextval('cpg_endereco_id_seq'::regclass);


--
-- TOC entry 2702 (class 2604 OID 61524410)
-- Dependencies: 219 218 219
-- Name: id; Type: DEFAULT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY pais ALTER COLUMN id SET DEFAULT nextval('pais_id_seq'::regclass);


SET search_path = basico_mensagem, pg_catalog;

--
-- TOC entry 2700 (class 2604 OID 61524398)
-- Dependencies: 216 217 217
-- Name: id; Type: DEFAULT; Schema: basico_mensagem; Owner: -
--

ALTER TABLE ONLY assoc_email ALTER COLUMN id SET DEFAULT nextval('assoc_email_id_seq'::regclass);


--
-- TOC entry 2697 (class 2604 OID 61524383)
-- Dependencies: 215 214 215
-- Name: id; Type: DEFAULT; Schema: basico_mensagem; Owner: -
--

ALTER TABLE ONLY assoccl_assoccl_pessoa_perfil ALTER COLUMN id SET DEFAULT nextval('assoccl_assoccl_pessoa_perfil_id_seq'::regclass);


--
-- TOC entry 2688 (class 2604 OID 61524362)
-- Dependencies: 212 213 213
-- Name: id; Type: DEFAULT; Schema: basico_mensagem; Owner: -
--

ALTER TABLE ONLY template ALTER COLUMN id SET DEFAULT nextval('template_id_seq'::regclass);


SET search_path = basico_mensagem_assoc_email, pg_catalog;

--
-- TOC entry 2685 (class 2604 OID 61524349)
-- Dependencies: 210 211 211
-- Name: id; Type: DEFAULT; Schema: basico_mensagem_assoc_email; Owner: -
--

ALTER TABLE ONLY assoc_dados ALTER COLUMN id SET DEFAULT nextval('assoc_dados_id_seq'::regclass);


SET search_path = basico_metodo_validacao, pg_catalog;

--
-- TOC entry 2683 (class 2604 OID 61524335)
-- Dependencies: 209 208 209
-- Name: id; Type: DEFAULT; Schema: basico_metodo_validacao; Owner: -
--

ALTER TABLE ONLY assoccl_include ALTER COLUMN id SET DEFAULT nextval('assoccl_include_id_seq'::regclass);


SET search_path = basico_output, pg_catalog;

--
-- TOC entry 2681 (class 2604 OID 61524321)
-- Dependencies: 206 207 207
-- Name: id; Type: DEFAULT; Schema: basico_output; Owner: -
--

ALTER TABLE ONLY assoccl_include ALTER COLUMN id SET DEFAULT nextval('assoccl_include_id_seq'::regclass);


SET search_path = basico_perfil, pg_catalog;

--
-- TOC entry 2679 (class 2604 OID 61524307)
-- Dependencies: 204 205 205
-- Name: id; Type: DEFAULT; Schema: basico_perfil; Owner: -
--

ALTER TABLE ONLY assoccl_modulo ALTER COLUMN id SET DEFAULT nextval('assoccl_modulo_id_seq'::regclass);


SET search_path = basico_pessoa, pg_catalog;

--
-- TOC entry 2675 (class 2604 OID 61524293)
-- Dependencies: 203 202 203
-- Name: id; Type: DEFAULT; Schema: basico_pessoa; Owner: -
--

ALTER TABLE ONLY assoc_dados ALTER COLUMN id SET DEFAULT nextval('assoc_dados_id_seq'::regclass);


--
-- TOC entry 2671 (class 2604 OID 61524277)
-- Dependencies: 200 201 201
-- Name: id; Type: DEFAULT; Schema: basico_pessoa; Owner: -
--

ALTER TABLE ONLY assoccl_perfil ALTER COLUMN id SET DEFAULT nextval('assoccl_perfil_id_seq'::regclass);


--
-- TOC entry 2668 (class 2604 OID 61524264)
-- Dependencies: 198 199 199
-- Name: id; Type: DEFAULT; Schema: basico_pessoa; Owner: -
--

ALTER TABLE ONLY assoccl_tipo_vinculo ALTER COLUMN id SET DEFAULT nextval('assoccl_tipo_vinculo_id_seq'::regclass);


--
-- TOC entry 2659 (class 2604 OID 61524243)
-- Dependencies: 197 196 197
-- Name: id; Type: DEFAULT; Schema: basico_pessoa; Owner: -
--

ALTER TABLE ONLY login ALTER COLUMN id SET DEFAULT nextval('login_id_seq'::regclass);


SET search_path = basico_pessoa_juridica, pg_catalog;

--
-- TOC entry 2655 (class 2604 OID 61524229)
-- Dependencies: 195 194 195
-- Name: id; Type: DEFAULT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoc_banco ALTER COLUMN id SET DEFAULT nextval('assoc_banco_id_seq'::regclass);


--
-- TOC entry 2652 (class 2604 OID 61524216)
-- Dependencies: 193 192 193
-- Name: id; Type: DEFAULT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoc_dados ALTER COLUMN id SET DEFAULT nextval('assoc_dados_id_seq'::regclass);


--
-- TOC entry 2650 (class 2604 OID 61524202)
-- Dependencies: 190 191 191
-- Name: id; Type: DEFAULT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assocag_incubadora ALTER COLUMN id SET DEFAULT nextval('assocag_incubadora_id_seq'::regclass);


--
-- TOC entry 2645 (class 2604 OID 61524185)
-- Dependencies: 188 189 189
-- Name: id; Type: DEFAULT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assocag_parceria ALTER COLUMN id SET DEFAULT nextval('assocag_parceria_id_seq'::regclass);


--
-- TOC entry 2643 (class 2604 OID 61524171)
-- Dependencies: 186 187 187
-- Name: id; Type: DEFAULT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoccl_area_economia ALTER COLUMN id SET DEFAULT nextval('assoccl_area_economia_id_seq'::regclass);


--
-- TOC entry 2640 (class 2604 OID 61524156)
-- Dependencies: 184 185 185
-- Name: id; Type: DEFAULT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoccl_capital_social ALTER COLUMN id SET DEFAULT nextval('assoccl_capital_social_id_seq'::regclass);


--
-- TOC entry 2637 (class 2604 OID 61524139)
-- Dependencies: 182 183 183
-- Name: id; Type: DEFAULT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoccl_faturamento ALTER COLUMN id SET DEFAULT nextval('assoccl_faturamento_id_seq'::regclass);


--
-- TOC entry 2634 (class 2604 OID 61524124)
-- Dependencies: 180 181 181
-- Name: id; Type: DEFAULT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoccl_quadro_funcionario ALTER COLUMN id SET DEFAULT nextval('assoccl_quadro_funcionario_id_seq'::regclass);


--
-- TOC entry 2628 (class 2604 OID 61524108)
-- Dependencies: 178 179 179
-- Name: id; Type: DEFAULT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY capital_social ALTER COLUMN id SET DEFAULT nextval('capital_social_id_seq'::regclass);


--
-- TOC entry 2622 (class 2604 OID 61524092)
-- Dependencies: 176 177 177
-- Name: id; Type: DEFAULT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY natureza ALTER COLUMN id SET DEFAULT nextval('natureza_id_seq'::regclass);


SET search_path = basico_sequencia, pg_catalog;

--
-- TOC entry 2616 (class 2604 OID 61524074)
-- Dependencies: 174 175 175
-- Name: id; Type: DEFAULT; Schema: basico_sequencia; Owner: -
--

ALTER TABLE ONLY assocsq_acao_aplicacao ALTER COLUMN id SET DEFAULT nextval('assocsq_acao_aplicacao_id_seq'::regclass);


SET search_path = basico_template, pg_catalog;

--
-- TOC entry 2614 (class 2604 OID 61524060)
-- Dependencies: 172 173 173
-- Name: id; Type: DEFAULT; Schema: basico_template; Owner: -
--

ALTER TABLE ONLY assoccl_include ALTER COLUMN id SET DEFAULT nextval('assoccl_include_id_seq'::regclass);


--
-- TOC entry 2612 (class 2604 OID 61524046)
-- Dependencies: 171 170 171
-- Name: id; Type: DEFAULT; Schema: basico_template; Owner: -
--

ALTER TABLE ONLY assoccl_output ALTER COLUMN id SET DEFAULT nextval('assoccl_output_id_seq'::regclass);


SET search_path = basico_validator, pg_catalog;

--
-- TOC entry 2606 (class 2604 OID 61524030)
-- Dependencies: 168 169 169
-- Name: id; Type: DEFAULT; Schema: basico_validator; Owner: -
--

ALTER TABLE ONLY grupo ALTER COLUMN id SET DEFAULT nextval('grupo_id_seq'::regclass);


SET search_path = basico_validator_grupo, pg_catalog;

--
-- TOC entry 2603 (class 2604 OID 61524017)
-- Dependencies: 166 167 167
-- Name: id; Type: DEFAULT; Schema: basico_validator_grupo; Owner: -
--

ALTER TABLE ONLY assocag_grupo ALTER COLUMN id SET DEFAULT nextval('assocag_grupo_id_seq'::regclass);


SET search_path = basico, pg_catalog;

--
-- TOC entry 3975 (class 2606 OID 61525895)
-- Dependencies: 399 399
-- Name: acao_evento_pkey; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY acao_evento
    ADD CONSTRAINT acao_evento_pkey PRIMARY KEY (id);


--
-- TOC entry 3834 (class 2606 OID 61525633)
-- Dependencies: 369 369
-- Name: evento_evento_key; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY evento
    ADD CONSTRAINT evento_evento_key UNIQUE (evento);


--
-- TOC entry 3829 (class 2606 OID 61525613)
-- Dependencies: 367 367
-- Name: filter_pkey; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY filter
    ADD CONSTRAINT filter_pkey PRIMARY KEY (id);


--
-- TOC entry 3806 (class 2606 OID 61525575)
-- Dependencies: 363 363
-- Name: include_uri_key; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY include
    ADD CONSTRAINT include_uri_key UNIQUE (uri);


--
-- TOC entry 3775 (class 2606 OID 61525498)
-- Dependencies: 353 353
-- Name: output_pkey; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY output
    ADD CONSTRAINT output_pkey PRIMARY KEY (id);


--
-- TOC entry 3984 (class 2606 OID 61525913)
-- Dependencies: 401 401
-- Name: pk_acao_aplicacao; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY acao_aplicacao
    ADD CONSTRAINT pk_acao_aplicacao PRIMARY KEY (id);


--
-- TOC entry 3966 (class 2606 OID 61525877)
-- Dependencies: 397 397
-- Name: pk_ajuda; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ajuda
    ADD CONSTRAINT pk_ajuda PRIMARY KEY (id);


--
-- TOC entry 3955 (class 2606 OID 61525856)
-- Dependencies: 395 395
-- Name: pk_area_conhecimento; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY area_conhecimento
    ADD CONSTRAINT pk_area_conhecimento PRIMARY KEY (id);


--
-- TOC entry 3945 (class 2606 OID 61525836)
-- Dependencies: 393 393
-- Name: pk_area_economia; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY area_economia
    ADD CONSTRAINT pk_area_economia PRIMARY KEY (id);


--
-- TOC entry 3916 (class 2606 OID 61525778)
-- Dependencies: 387 387
-- Name: pk_arquivo; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cpg_arquivo
    ADD CONSTRAINT pk_arquivo PRIMARY KEY (id);


--
-- TOC entry 3739 (class 2606 OID 61525417)
-- Dependencies: 343 343
-- Name: pk_assocag_sequencia; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY sequencia
    ADD CONSTRAINT pk_assocag_sequencia PRIMARY KEY (id);


--
-- TOC entry 3935 (class 2606 OID 61525816)
-- Dependencies: 391 391
-- Name: pk_categoria; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY categoria
    ADD CONSTRAINT pk_categoria PRIMARY KEY (id);


--
-- TOC entry 3903 (class 2606 OID 61525758)
-- Dependencies: 385 385
-- Name: pk_codigo_acesso; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cpg_codigo_acesso
    ADD CONSTRAINT pk_codigo_acesso PRIMARY KEY (id);


--
-- TOC entry 3925 (class 2606 OID 61525796)
-- Dependencies: 389 389
-- Name: pk_componente; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY componente
    ADD CONSTRAINT pk_componente PRIMARY KEY (id);


--
-- TOC entry 3893 (class 2606 OID 61525741)
-- Dependencies: 383 383
-- Name: pk_dados_bancarios; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cpg_dados_bancarios
    ADD CONSTRAINT pk_dados_bancarios PRIMARY KEY (id);


--
-- TOC entry 3851 (class 2606 OID 61525663)
-- Dependencies: 373 373
-- Name: pk_dados_biometricos; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY dados_biometricos
    ADD CONSTRAINT pk_dados_biometricos PRIMARY KEY (id);


--
-- TOC entry 3844 (class 2606 OID 61525648)
-- Dependencies: 371 371
-- Name: pk_dicionario_expressao; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY dicionario_expressao
    ADD CONSTRAINT pk_dicionario_expressao PRIMARY KEY (id);


--
-- TOC entry 3884 (class 2606 OID 61525726)
-- Dependencies: 381 381
-- Name: pk_documento_identificacao; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cpg_documento_identificacao
    ADD CONSTRAINT pk_documento_identificacao PRIMARY KEY (id);


--
-- TOC entry 3839 (class 2606 OID 61525631)
-- Dependencies: 369 369
-- Name: pk_evento; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY evento
    ADD CONSTRAINT pk_evento PRIMARY KEY (id);


--
-- TOC entry 3819 (class 2606 OID 61525595)
-- Dependencies: 365 365
-- Name: pk_formulario; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY formulario
    ADD CONSTRAINT pk_formulario PRIMARY KEY (id);


--
-- TOC entry 3808 (class 2606 OID 61525573)
-- Dependencies: 363 363
-- Name: pk_include; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY include
    ADD CONSTRAINT pk_include PRIMARY KEY (id);


--
-- TOC entry 3875 (class 2606 OID 61525710)
-- Dependencies: 379 379
-- Name: pk_link; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cpg_link
    ADD CONSTRAINT pk_link PRIMARY KEY (id);


--
-- TOC entry 3799 (class 2606 OID 61525557)
-- Dependencies: 361 361
-- Name: pk_log; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY log
    ADD CONSTRAINT pk_log PRIMARY KEY (id);


--
-- TOC entry 3794 (class 2606 OID 61525546)
-- Dependencies: 359 359
-- Name: pk_mensagem; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY mensagem
    ADD CONSTRAINT pk_mensagem PRIMARY KEY (id);


--
-- TOC entry 3787 (class 2606 OID 61525531)
-- Dependencies: 357 357
-- Name: pk_metodo_validacao; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY metodo_validacao
    ADD CONSTRAINT pk_metodo_validacao PRIMARY KEY (id);


--
-- TOC entry 3781 (class 2606 OID 61525515)
-- Dependencies: 355 355
-- Name: pk_modulo; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY modulo
    ADD CONSTRAINT pk_modulo PRIMARY KEY (id);


--
-- TOC entry 3767 (class 2606 OID 61525480)
-- Dependencies: 351 351
-- Name: pk_perfil; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY perfil
    ADD CONSTRAINT pk_perfil PRIMARY KEY (id);


--
-- TOC entry 3761 (class 2606 OID 61525463)
-- Dependencies: 349 349
-- Name: pk_pessoa; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY pessoa
    ADD CONSTRAINT pk_pessoa PRIMARY KEY (id);


--
-- TOC entry 3758 (class 2606 OID 61525450)
-- Dependencies: 347 347
-- Name: pk_pessoa_juridica; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY pessoa_juridica
    ADD CONSTRAINT pk_pessoa_juridica PRIMARY KEY (id);


--
-- TOC entry 3867 (class 2606 OID 61525693)
-- Dependencies: 377 377
-- Name: pk_produto; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cpg_produto
    ADD CONSTRAINT pk_produto PRIMARY KEY (id);


--
-- TOC entry 3747 (class 2606 OID 61525435)
-- Dependencies: 345 345
-- Name: pk_profissao; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY profissao
    ADD CONSTRAINT pk_profissao PRIMARY KEY (id);


--
-- TOC entry 3733 (class 2606 OID 61525401)
-- Dependencies: 341 341
-- Name: pk_template; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY template
    ADD CONSTRAINT pk_template PRIMARY KEY (id);


--
-- TOC entry 3724 (class 2606 OID 61525383)
-- Dependencies: 339 339
-- Name: pk_tipo_categoria; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY tipo_categoria
    ADD CONSTRAINT pk_tipo_categoria PRIMARY KEY (id);


--
-- TOC entry 3859 (class 2606 OID 61525678)
-- Dependencies: 375 375
-- Name: pk_token; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cpg_token
    ADD CONSTRAINT pk_token PRIMARY KEY (id);


--
-- TOC entry 3986 (class 2606 OID 61525915)
-- Dependencies: 401 401 401 401
-- Name: un_acao_aplicacao; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY acao_aplicacao
    ADD CONSTRAINT un_acao_aplicacao UNIQUE (id_modulo, controller, action);


--
-- TOC entry 3977 (class 2606 OID 61525897)
-- Dependencies: 399 399 399
-- Name: un_acao_evento; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY acao_evento
    ADD CONSTRAINT un_acao_evento UNIQUE (id_categoria, nome);


--
-- TOC entry 3968 (class 2606 OID 61525879)
-- Dependencies: 397 397 397
-- Name: un_ajuda; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ajuda
    ADD CONSTRAINT un_ajuda UNIQUE (id_categoria, nome);


--
-- TOC entry 3957 (class 2606 OID 61525858)
-- Dependencies: 395 395 395 395
-- Name: un_area_conhecimento; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY area_conhecimento
    ADD CONSTRAINT un_area_conhecimento UNIQUE (id_area_conhecimento_pai, id_categoria, nome);


--
-- TOC entry 3947 (class 2606 OID 61525838)
-- Dependencies: 393 393 393 393
-- Name: un_area_economica; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY area_economia
    ADD CONSTRAINT un_area_economica UNIQUE (id_area_economia_pai, id_categoria, nome);


--
-- TOC entry 3937 (class 2606 OID 61525818)
-- Dependencies: 391 391 391 391
-- Name: un_categoria; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY categoria
    ADD CONSTRAINT un_categoria UNIQUE (id_tipo_categoria, id_categoria_pai, nome);


--
-- TOC entry 3905 (class 2606 OID 61525760)
-- Dependencies: 385 385 385 385 385 385
-- Name: un_codigo_acesso; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cpg_codigo_acesso
    ADD CONSTRAINT un_codigo_acesso UNIQUE (id_categoria_proprietario, id_generico_proprietario, id_categoria_acesso, id_generico_acesso, codigo);


--
-- TOC entry 3927 (class 2606 OID 61525798)
-- Dependencies: 389 389 389
-- Name: un_componente; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY componente
    ADD CONSTRAINT un_componente UNIQUE (id_categoria, nome);


--
-- TOC entry 3918 (class 2606 OID 61525780)
-- Dependencies: 387 387 387 387
-- Name: un_cpg_arquivo; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cpg_arquivo
    ADD CONSTRAINT un_cpg_arquivo UNIQUE (id_categoria, id_generico_proprietario, uri);


--
-- TOC entry 3895 (class 2606 OID 61525743)
-- Dependencies: 383 383 383 383 383 383 383
-- Name: un_dados_bancarios; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cpg_dados_bancarios
    ADD CONSTRAINT un_dados_bancarios UNIQUE (id_categoria, id_generico_proprietario, numero_banco, numero_agencia, numero_tipo_conta, numero_conta);


--
-- TOC entry 3853 (class 2606 OID 61525665)
-- Dependencies: 373 373 373
-- Name: un_dados_biometricos; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY dados_biometricos
    ADD CONSTRAINT un_dados_biometricos UNIQUE (id_categoria, id_generico_proprietario);


--
-- TOC entry 3846 (class 2606 OID 61525650)
-- Dependencies: 371 371 371
-- Name: un_dicionario_expressao; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY dicionario_expressao
    ADD CONSTRAINT un_dicionario_expressao UNIQUE (id_categoria, constante_textual);


--
-- TOC entry 3886 (class 2606 OID 61525728)
-- Dependencies: 381 381 381 381 381
-- Name: un_documento; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cpg_documento_identificacao
    ADD CONSTRAINT un_documento UNIQUE (id_categoria, id_generico_proprietario, id_pessoa_juridica_emissor, identificador);


--
-- TOC entry 3831 (class 2606 OID 61525615)
-- Dependencies: 367 367 367
-- Name: un_filter; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY filter
    ADD CONSTRAINT un_filter UNIQUE (id_categoria, nome);


--
-- TOC entry 3821 (class 2606 OID 61525597)
-- Dependencies: 365 365 365 365
-- Name: un_formulario; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY formulario
    ADD CONSTRAINT un_formulario UNIQUE (id_formulario_pai, id_categoria, nome);


--
-- TOC entry 3810 (class 2606 OID 61525577)
-- Dependencies: 363 363 363
-- Name: un_include; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY include
    ADD CONSTRAINT un_include UNIQUE (id_categoria, nome);


--
-- TOC entry 3877 (class 2606 OID 61525712)
-- Dependencies: 379 379 379 379 379
-- Name: un_link; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cpg_link
    ADD CONSTRAINT un_link UNIQUE (id_categoria, id_generico_proprietario, url, nome);


--
-- TOC entry 3789 (class 2606 OID 61525533)
-- Dependencies: 357 357 357
-- Name: un_metodo_validacao; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY metodo_validacao
    ADD CONSTRAINT un_metodo_validacao UNIQUE (id_categoria, nome);


--
-- TOC entry 3769 (class 2606 OID 61525482)
-- Dependencies: 351 351 351
-- Name: un_perfil; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY perfil
    ADD CONSTRAINT un_perfil UNIQUE (id_modulo, nome);


--
-- TOC entry 3745 (class 2606 OID 61525419)
-- Dependencies: 343 343 343
-- Name: un_sequencia; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY sequencia
    ADD CONSTRAINT un_sequencia UNIQUE (id_categoria, nome);


--
-- TOC entry 3731 (class 2606 OID 61525385)
-- Dependencies: 339 339 339
-- Name: un_tipo_categoria; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY tipo_categoria
    ADD CONSTRAINT un_tipo_categoria UNIQUE (id_tipo_categoria_pai, nome);


--
-- TOC entry 3722 (class 2606 OID 61525364)
-- Dependencies: 337 337
-- Name: validator_pkey; Type: CONSTRAINT; Schema: basico; Owner: -; Tablespace: 
--

ALTER TABLE ONLY validator
    ADD CONSTRAINT validator_pkey PRIMARY KEY (id);


SET search_path = basico_acao_aplic_assoc_visao, pg_catalog;

--
-- TOC entry 3712 (class 2606 OID 61525345)
-- Dependencies: 335 335
-- Name: pk_assoccl_ref_atrib_met_rec_post; Type: CONSTRAINT; Schema: basico_acao_aplic_assoc_visao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_atrib_met_rec_post
    ADD CONSTRAINT pk_assoccl_ref_atrib_met_rec_post PRIMARY KEY (id);


--
-- TOC entry 3704 (class 2606 OID 61525331)
-- Dependencies: 333 333
-- Name: pk_atributo_metodo_recup_post; Type: CONSTRAINT; Schema: basico_acao_aplic_assoc_visao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY atributo_metodo_recup_post
    ADD CONSTRAINT pk_atributo_metodo_recup_post PRIMARY KEY (id);


--
-- TOC entry 3714 (class 2606 OID 61525347)
-- Dependencies: 335 335 335 335
-- Name: un_assoccl_atrib_met_rec_post; Type: CONSTRAINT; Schema: basico_acao_aplic_assoc_visao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_atrib_met_rec_post
    ADD CONSTRAINT un_assoccl_atrib_met_rec_post UNIQUE (id_assoc_visao_ref_post, id_atributo_metodo_recup_post, ordem);


--
-- TOC entry 3706 (class 2606 OID 61525333)
-- Dependencies: 333 333 333
-- Name: un_atributo_metodo_recup_post; Type: CONSTRAINT; Schema: basico_acao_aplic_assoc_visao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY atributo_metodo_recup_post
    ADD CONSTRAINT un_atributo_metodo_recup_post UNIQUE (atributo, metodo_recuperacao);


SET search_path = basico_acao_aplicacao, pg_catalog;

--
-- TOC entry 3698 (class 2606 OID 61525316)
-- Dependencies: 331 331
-- Name: pk_assoc_visao; Type: CONSTRAINT; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_visao
    ADD CONSTRAINT pk_assoc_visao PRIMARY KEY (id);


--
-- TOC entry 3687 (class 2606 OID 61525296)
-- Dependencies: 329 329
-- Name: pk_assoccl_metodo_validacao; Type: CONSTRAINT; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_metodo_validacao
    ADD CONSTRAINT pk_assoccl_metodo_validacao PRIMARY KEY (id);


--
-- TOC entry 3679 (class 2606 OID 61525282)
-- Dependencies: 327 327
-- Name: pk_assoccl_perfil; Type: CONSTRAINT; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_perfil
    ADD CONSTRAINT pk_assoccl_perfil PRIMARY KEY (id);


--
-- TOC entry 3689 (class 2606 OID 61525298)
-- Dependencies: 329 329 329 329
-- Name: un_assoccl_metodo_validacao; Type: CONSTRAINT; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_metodo_validacao
    ADD CONSTRAINT un_assoccl_metodo_validacao UNIQUE (id_acao_aplicacao, id_metodo_validacao, id_perfil);


--
-- TOC entry 3681 (class 2606 OID 61525284)
-- Dependencies: 327 327 327
-- Name: un_assoccl_perfil; Type: CONSTRAINT; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_perfil
    ADD CONSTRAINT un_assoccl_perfil UNIQUE (id_acao_aplicacao, id_perfil);


SET search_path = basico_acao_evento, pg_catalog;

--
-- TOC entry 3672 (class 2606 OID 61525268)
-- Dependencies: 325 325
-- Name: assoccl_include_pkey; Type: CONSTRAINT; Schema: basico_acao_evento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT assoccl_include_pkey PRIMARY KEY (id);


--
-- TOC entry 3674 (class 2606 OID 61525270)
-- Dependencies: 325 325 325
-- Name: un_assoccl_include1; Type: CONSTRAINT; Schema: basico_acao_evento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT un_assoccl_include1 UNIQUE (id_acao_evento, id_include);


SET search_path = basico_ajuda, pg_catalog;

--
-- TOC entry 3665 (class 2606 OID 61525254)
-- Dependencies: 323 323
-- Name: pk_assoccl_link; Type: CONSTRAINT; Schema: basico_ajuda; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_link
    ADD CONSTRAINT pk_assoccl_link PRIMARY KEY (id);


--
-- TOC entry 3667 (class 2606 OID 61525256)
-- Dependencies: 323 323 323
-- Name: un_assoccl_link; Type: CONSTRAINT; Schema: basico_ajuda; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_link
    ADD CONSTRAINT un_assoccl_link UNIQUE (id_ajuda, id_link);


SET search_path = basico_assoc_banco, pg_catalog;

--
-- TOC entry 3656 (class 2606 OID 61525238)
-- Dependencies: 321 321
-- Name: pk_assoc_tipo_conta; Type: CONSTRAINT; Schema: basico_assoc_banco; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_tipo_conta
    ADD CONSTRAINT pk_assoc_tipo_conta PRIMARY KEY (id);


--
-- TOC entry 3658 (class 2606 OID 61525240)
-- Dependencies: 321 321 321
-- Name: un_assoc_tipo_conta_categoria; Type: CONSTRAINT; Schema: basico_assoc_banco; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_tipo_conta
    ADD CONSTRAINT un_assoc_tipo_conta_categoria UNIQUE (id_assoc_banco, id_categoria);


--
-- TOC entry 3660 (class 2606 OID 61525242)
-- Dependencies: 321 321 321
-- Name: un_assoc_tipo_conta_codigo; Type: CONSTRAINT; Schema: basico_assoc_banco; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_tipo_conta
    ADD CONSTRAINT un_assoc_tipo_conta_codigo UNIQUE (id_assoc_banco, codigo);


SET search_path = basico_assoc_chave_estrangeira, pg_catalog;

--
-- TOC entry 3643 (class 2606 OID 61525221)
-- Dependencies: 319 319
-- Name: pk_relacao; Type: CONSTRAINT; Schema: basico_assoc_chave_estrangeira; Owner: -; Tablespace: 
--

ALTER TABLE ONLY relacao
    ADD CONSTRAINT pk_relacao PRIMARY KEY (id);


--
-- TOC entry 3648 (class 2606 OID 61525223)
-- Dependencies: 319 319 319
-- Name: un_relacao; Type: CONSTRAINT; Schema: basico_assoc_chave_estrangeira; Owner: -; Tablespace: 
--

ALTER TABLE ONLY relacao
    ADD CONSTRAINT un_relacao UNIQUE (tabela_origem, campo_origem);


SET search_path = basico_assoc_dados_profis, pg_catalog;

--
-- TOC entry 3639 (class 2606 OID 61525207)
-- Dependencies: 317 317
-- Name: pk_assoccl_area_conhecimento; Type: CONSTRAINT; Schema: basico_assoc_dados_profis; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_area_conhecimento
    ADD CONSTRAINT pk_assoccl_area_conhecimento PRIMARY KEY (id);


--
-- TOC entry 3641 (class 2606 OID 61525209)
-- Dependencies: 317 317 317
-- Name: un_assoc_dados_profis_area_conhec; Type: CONSTRAINT; Schema: basico_assoc_dados_profis; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_area_conhecimento
    ADD CONSTRAINT un_assoc_dados_profis_area_conhec UNIQUE (id_area_conhecimento, id_assoc_dados_profissionais);


SET search_path = basico_assoccl_pessoa_perfil, pg_catalog;

--
-- TOC entry 3634 (class 2606 OID 61525195)
-- Dependencies: 315 315
-- Name: pk_assoccl_pessoa_perfil_dados; Type: CONSTRAINT; Schema: basico_assoccl_pessoa_perfil; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_dados
    ADD CONSTRAINT pk_assoccl_pessoa_perfil_dados PRIMARY KEY (id);


SET search_path = basico_assoccl_tipo_vinculo, pg_catalog;

--
-- TOC entry 3630 (class 2606 OID 61525182)
-- Dependencies: 313 313
-- Name: pk_assoc_dados_profissionais; Type: CONSTRAINT; Schema: basico_assoccl_tipo_vinculo; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_dados
    ADD CONSTRAINT pk_assoc_dados_profissionais PRIMARY KEY (id);


SET search_path = basico_categoria, pg_catalog;

--
-- TOC entry 3622 (class 2606 OID 61525169)
-- Dependencies: 311 311
-- Name: pk_assoc_categ_chave_estrang; Type: CONSTRAINT; Schema: basico_categoria; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_chave_estrangeira
    ADD CONSTRAINT pk_assoc_categ_chave_estrang PRIMARY KEY (id);


--
-- TOC entry 3615 (class 2606 OID 61525145)
-- Dependencies: 309 309
-- Name: pk_assoc_evento_acao; Type: CONSTRAINT; Schema: basico_categoria; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_evento_acao
    ADD CONSTRAINT pk_assoc_evento_acao PRIMARY KEY (id);


SET search_path = basico_componente, pg_catalog;

--
-- TOC entry 3609 (class 2606 OID 61525131)
-- Dependencies: 307 307
-- Name: pk_componente_assoccl_include; Type: CONSTRAINT; Schema: basico_componente; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT pk_componente_assoccl_include PRIMARY KEY (id);


--
-- TOC entry 3611 (class 2606 OID 61525133)
-- Dependencies: 307 307 307
-- Name: un_assoccl_include_componente; Type: CONSTRAINT; Schema: basico_componente; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT un_assoccl_include_componente UNIQUE (id_componente, id_include);


SET search_path = basico_contato, pg_catalog;

--
-- TOC entry 3602 (class 2606 OID 61525117)
-- Dependencies: 305 305
-- Name: pk_email; Type: CONSTRAINT; Schema: basico_contato; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cpg_email
    ADD CONSTRAINT pk_email PRIMARY KEY (id);


--
-- TOC entry 3592 (class 2606 OID 61525097)
-- Dependencies: 303 303
-- Name: pk_telefone; Type: CONSTRAINT; Schema: basico_contato; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cpg_telefone
    ADD CONSTRAINT pk_telefone PRIMARY KEY (id);


--
-- TOC entry 3604 (class 2606 OID 61525119)
-- Dependencies: 305 305 305 305
-- Name: un_email; Type: CONSTRAINT; Schema: basico_contato; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cpg_email
    ADD CONSTRAINT un_email UNIQUE (id_generico_proprietario, id_categoria, email);


--
-- TOC entry 3594 (class 2606 OID 61525099)
-- Dependencies: 303 303 303 303 303 303 303
-- Name: un_telefone; Type: CONSTRAINT; Schema: basico_contato; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cpg_telefone
    ADD CONSTRAINT un_telefone UNIQUE (id_categoria, id_generico_proprietario, codigo_pais, codigo_area, telefone, ramal);


SET search_path = basico_cvc, pg_catalog;

--
-- TOC entry 3584 (class 2606 OID 61525078)
-- Dependencies: 301 301
-- Name: pk_cvc; Type: CONSTRAINT; Schema: basico_cvc; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cvc
    ADD CONSTRAINT pk_cvc PRIMARY KEY (id);


--
-- TOC entry 3586 (class 2606 OID 61525080)
-- Dependencies: 301 301 301 301
-- Name: un_cvc; Type: CONSTRAINT; Schema: basico_cvc; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cvc
    ADD CONSTRAINT un_cvc UNIQUE (id_assoc_chave_estrangeira, id_generico, versao);


SET search_path = basico_dados_academicos, pg_catalog;

--
-- TOC entry 3575 (class 2606 OID 61525063)
-- Dependencies: 299 299
-- Name: pk_titulacao; Type: CONSTRAINT; Schema: basico_dados_academicos; Owner: -; Tablespace: 
--

ALTER TABLE ONLY titulacao
    ADD CONSTRAINT pk_titulacao PRIMARY KEY (id);


SET search_path = basico_dados_biometricos, pg_catalog;

--
-- TOC entry 3573 (class 2606 OID 61525047)
-- Dependencies: 297 297
-- Name: pk_assoc_pessoa; Type: CONSTRAINT; Schema: basico_dados_biometricos; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_pessoa
    ADD CONSTRAINT pk_assoc_pessoa PRIMARY KEY (id);


SET search_path = basico_dados_profissionais, pg_catalog;

--
-- TOC entry 3560 (class 2606 OID 61525032)
-- Dependencies: 295 295
-- Name: pk_regime_trabalho; Type: CONSTRAINT; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

ALTER TABLE ONLY regime_trabalho
    ADD CONSTRAINT pk_regime_trabalho PRIMARY KEY (id);


--
-- TOC entry 3551 (class 2606 OID 61525013)
-- Dependencies: 293 293
-- Name: pk_tipo_vinculo; Type: CONSTRAINT; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

ALTER TABLE ONLY tipo_vinculo
    ADD CONSTRAINT pk_tipo_vinculo PRIMARY KEY (id);


--
-- TOC entry 3542 (class 2606 OID 61524993)
-- Dependencies: 291 291
-- Name: pk_vinculo_empregaticio; Type: CONSTRAINT; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

ALTER TABLE ONLY vinculo_empregaticio
    ADD CONSTRAINT pk_vinculo_empregaticio PRIMARY KEY (id);


--
-- TOC entry 3568 (class 2606 OID 61525034)
-- Dependencies: 295 295 295 295 295
-- Name: un_regime_trabalho; Type: CONSTRAINT; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

ALTER TABLE ONLY regime_trabalho
    ADD CONSTRAINT un_regime_trabalho UNIQUE (id_regime_trabalho_pai, id_categoria, nome, codigo);


--
-- TOC entry 3558 (class 2606 OID 61525015)
-- Dependencies: 293 293 293 293
-- Name: un_tipo_vinculo; Type: CONSTRAINT; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

ALTER TABLE ONLY tipo_vinculo
    ADD CONSTRAINT un_tipo_vinculo UNIQUE (id_categoria, nome, codigo);


--
-- TOC entry 3544 (class 2606 OID 61524995)
-- Dependencies: 291 291 291 291
-- Name: un_vinculo_empregaticio; Type: CONSTRAINT; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

ALTER TABLE ONLY vinculo_empregaticio
    ADD CONSTRAINT un_vinculo_empregaticio UNIQUE (id_categoria, nome, codigo);


SET search_path = basico_filter, pg_catalog;

--
-- TOC entry 3540 (class 2606 OID 61524903)
-- Dependencies: 281 281
-- Name: pk_filter_grupo; Type: CONSTRAINT; Schema: basico_filter; Owner: -; Tablespace: 
--

ALTER TABLE ONLY grupo
    ADD CONSTRAINT pk_filter_grupo PRIMARY KEY (id);


SET search_path = basico_filter_grupo, pg_catalog;

--
-- TOC entry 3534 (class 2606 OID 61524887)
-- Dependencies: 279 279
-- Name: pk_grupo_assocag_filter; Type: CONSTRAINT; Schema: basico_filter_grupo; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assocag_grupo
    ADD CONSTRAINT pk_grupo_assocag_filter PRIMARY KEY (id);


SET search_path = basico_form_assoccl_elem_grupo, pg_catalog;

--
-- TOC entry 3526 (class 2606 OID 61524872)
-- Dependencies: 277 277
-- Name: pk_assoccl_decorator; Type: CONSTRAINT; Schema: basico_form_assoccl_elem_grupo; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT pk_assoccl_decorator PRIMARY KEY (id);


--
-- TOC entry 3528 (class 2606 OID 61524874)
-- Dependencies: 277 277 277
-- Name: un_assoccl_decorator1; Type: CONSTRAINT; Schema: basico_form_assoccl_elem_grupo; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT un_assoccl_decorator1 UNIQUE (id_grupo, id_decorator);


SET search_path = basico_form_assoccl_elemento, pg_catalog;

--
-- TOC entry 3519 (class 2606 OID 61524858)
-- Dependencies: 275 275
-- Name: pk_assoccl_elemento; Type: CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT pk_assoccl_elemento PRIMARY KEY (id);


--
-- TOC entry 3512 (class 2606 OID 61524842)
-- Dependencies: 273 273
-- Name: pk_assoccl_evento; Type: CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_evento
    ADD CONSTRAINT pk_assoccl_evento PRIMARY KEY (id);


--
-- TOC entry 3505 (class 2606 OID 61524827)
-- Dependencies: 271 271
-- Name: pk_assoccl_filter; Type: CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_filter
    ADD CONSTRAINT pk_assoccl_filter PRIMARY KEY (id);


--
-- TOC entry 3498 (class 2606 OID 61524811)
-- Dependencies: 269 269
-- Name: pk_assoccl_include; Type: CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT pk_assoccl_include PRIMARY KEY (id);


--
-- TOC entry 3491 (class 2606 OID 61524796)
-- Dependencies: 267 267
-- Name: pk_form_assoccl_elem_validator; Type: CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_validator
    ADD CONSTRAINT pk_form_assoccl_elem_validator PRIMARY KEY (id);


--
-- TOC entry 3486 (class 2606 OID 61524782)
-- Dependencies: 265 265
-- Name: pk_grupo; Type: CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY grupo
    ADD CONSTRAINT pk_grupo PRIMARY KEY (id);


--
-- TOC entry 3521 (class 2606 OID 61524860)
-- Dependencies: 275 275 275 275 275
-- Name: un_assoccl_decorator_assoccl_elemento; Type: CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT un_assoccl_decorator_assoccl_elemento UNIQUE (id_assoccl_elemento, id_decorator, ordem, id_decorator_grupo);


--
-- TOC entry 3493 (class 2606 OID 61524798)
-- Dependencies: 267 267 267 267
-- Name: un_assoccl_elemento1; Type: CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_validator
    ADD CONSTRAINT un_assoccl_elemento1 UNIQUE (id_assoccl_elemento, id_validator, id_validator_grupo);


--
-- TOC entry 3514 (class 2606 OID 61524844)
-- Dependencies: 273 273 273 273
-- Name: un_assoccl_evento2; Type: CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_evento
    ADD CONSTRAINT un_assoccl_evento2 UNIQUE (id_assoccl_elemento, id_evento, id_acao_evento);


--
-- TOC entry 3507 (class 2606 OID 61524829)
-- Dependencies: 271 271 271 271
-- Name: un_assoccl_filter1; Type: CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_filter
    ADD CONSTRAINT un_assoccl_filter1 UNIQUE (id_assoccl_elemento, id_filter, id_filter_grupo);


--
-- TOC entry 3500 (class 2606 OID 61524813)
-- Dependencies: 269 269 269
-- Name: un_assoccl_include_assoccl_elemento; Type: CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT un_assoccl_include_assoccl_elemento UNIQUE (id_assoccl_elemento, id_include);


SET search_path = basico_form_decorator_grupo, pg_catalog;

--
-- TOC entry 3480 (class 2606 OID 61524766)
-- Dependencies: 263 263
-- Name: pk_grupo_assocag_decorator; Type: CONSTRAINT; Schema: basico_form_decorator_grupo; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assocag_grupo
    ADD CONSTRAINT pk_grupo_assocag_decorator PRIMARY KEY (id);


SET search_path = basico_formulario, pg_catalog;

--
-- TOC entry 3472 (class 2606 OID 61524751)
-- Dependencies: 261 261
-- Name: pk_assoccl_decorator; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT pk_assoccl_decorator PRIMARY KEY (id);


--
-- TOC entry 3462 (class 2606 OID 61524733)
-- Dependencies: 259 259
-- Name: pk_assoccl_elemento; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_elemento
    ADD CONSTRAINT pk_assoccl_elemento PRIMARY KEY (id);


--
-- TOC entry 3454 (class 2606 OID 61524715)
-- Dependencies: 257 257
-- Name: pk_assoccl_evento; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_evento
    ADD CONSTRAINT pk_assoccl_evento PRIMARY KEY (id);


--
-- TOC entry 3439 (class 2606 OID 61524687)
-- Dependencies: 253 253
-- Name: pk_assoccl_modulo; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_modulo
    ADD CONSTRAINT pk_assoccl_modulo PRIMARY KEY (id);


--
-- TOC entry 3434 (class 2606 OID 61524675)
-- Dependencies: 251 251
-- Name: pk_decorator; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY decorator
    ADD CONSTRAINT pk_decorator PRIMARY KEY (id);


--
-- TOC entry 3425 (class 2606 OID 61524657)
-- Dependencies: 249 249
-- Name: pk_elemento; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY elemento
    ADD CONSTRAINT pk_elemento PRIMARY KEY (id);


--
-- TOC entry 3446 (class 2606 OID 61524701)
-- Dependencies: 255 255
-- Name: pk_formulario_assoccl_include; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT pk_formulario_assoccl_include PRIMARY KEY (id);


--
-- TOC entry 3408 (class 2606 OID 61524640)
-- Dependencies: 247 247
-- Name: pk_rascunho; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rascunho
    ADD CONSTRAINT pk_rascunho PRIMARY KEY (id);


--
-- TOC entry 3474 (class 2606 OID 61524753)
-- Dependencies: 261 261 261 261 261 261
-- Name: un_assoccl_decorator; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT un_assoccl_decorator UNIQUE (id_formulario, id_decorator, ordem, id_decorator_grupo, exclude);


--
-- TOC entry 3464 (class 2606 OID 61524737)
-- Dependencies: 259 259 259 259
-- Name: un_assoccl_elemento; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_elemento
    ADD CONSTRAINT un_assoccl_elemento UNIQUE (id_formulario, id_elemento, ordem);


--
-- TOC entry 3466 (class 2606 OID 61524735)
-- Dependencies: 259 259 259
-- Name: un_assoccl_elemento_element_name; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_elemento
    ADD CONSTRAINT un_assoccl_elemento_element_name UNIQUE (id_formulario, element_name);


--
-- TOC entry 3456 (class 2606 OID 61524717)
-- Dependencies: 257 257 257 257 257
-- Name: un_assoccl_evento1; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_evento
    ADD CONSTRAINT un_assoccl_evento1 UNIQUE (id_formulario, id_acao_evento, id_evento, ordem);


--
-- TOC entry 3448 (class 2606 OID 61524703)
-- Dependencies: 255 255 255
-- Name: un_assoccl_include_formulario; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT un_assoccl_include_formulario UNIQUE (id_formulario, id_include);


--
-- TOC entry 3441 (class 2606 OID 61524689)
-- Dependencies: 253 253 253
-- Name: un_assoccl_modulo1; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_modulo
    ADD CONSTRAINT un_assoccl_modulo1 UNIQUE (id_modulo, id_formulario);


--
-- TOC entry 3427 (class 2606 OID 61524659)
-- Dependencies: 249 249 249
-- Name: un_formulario_elemento; Type: CONSTRAINT; Schema: basico_formulario; Owner: -; Tablespace: 
--

ALTER TABLE ONLY elemento
    ADD CONSTRAINT un_formulario_elemento UNIQUE (id_categoria, nome);


SET search_path = basico_formulario_decorator, pg_catalog;

--
-- TOC entry 3404 (class 2606 OID 61524624)
-- Dependencies: 245 245
-- Name: pk_decorator_assoccl_include; Type: CONSTRAINT; Schema: basico_formulario_decorator; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT pk_decorator_assoccl_include PRIMARY KEY (id);


--
-- TOC entry 3399 (class 2606 OID 61524612)
-- Dependencies: 243 243
-- Name: pk_grupo_decorator; Type: CONSTRAINT; Schema: basico_formulario_decorator; Owner: -; Tablespace: 
--

ALTER TABLE ONLY grupo
    ADD CONSTRAINT pk_grupo_decorator PRIMARY KEY (id);


--
-- TOC entry 3406 (class 2606 OID 61524626)
-- Dependencies: 245 245 245
-- Name: un_assoccl_include_decorator; Type: CONSTRAINT; Schema: basico_formulario_decorator; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT un_assoccl_include_decorator UNIQUE (id_include, id_decorator);


SET search_path = basico_formulario_elemento, pg_catalog;

--
-- TOC entry 3368 (class 2606 OID 61524547)
-- Dependencies: 235 235
-- Name: assoccl_validator_pkey; Type: CONSTRAINT; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_validator
    ADD CONSTRAINT assoccl_validator_pkey PRIMARY KEY (id);


--
-- TOC entry 3391 (class 2606 OID 61524594)
-- Dependencies: 241 241
-- Name: pk_assoccl_decorator; Type: CONSTRAINT; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT pk_assoccl_decorator PRIMARY KEY (id);


--
-- TOC entry 3383 (class 2606 OID 61524578)
-- Dependencies: 239 239
-- Name: pk_assoccl_evento; Type: CONSTRAINT; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_evento
    ADD CONSTRAINT pk_assoccl_evento PRIMARY KEY (id);


--
-- TOC entry 3376 (class 2606 OID 61524563)
-- Dependencies: 237 237
-- Name: pk_assoccl_filter; Type: CONSTRAINT; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_filter
    ADD CONSTRAINT pk_assoccl_filter PRIMARY KEY (id);


--
-- TOC entry 3393 (class 2606 OID 61524596)
-- Dependencies: 241 241 241 241 241 241
-- Name: un_assoccl_decorator_elemento; Type: CONSTRAINT; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT un_assoccl_decorator_elemento UNIQUE (id_elemento, id_decorator, ordem, id_decorator_grupo, exclude);


--
-- TOC entry 3385 (class 2606 OID 61524580)
-- Dependencies: 239 239 239 239 239
-- Name: un_assoccl_evento; Type: CONSTRAINT; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_evento
    ADD CONSTRAINT un_assoccl_evento UNIQUE (id_elemento, id_evento, id_acao_evento, ordem);


--
-- TOC entry 3378 (class 2606 OID 61524565)
-- Dependencies: 237 237 237 237 237 237
-- Name: un_assoccl_filter; Type: CONSTRAINT; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_filter
    ADD CONSTRAINT un_assoccl_filter UNIQUE (id_elemento, id_filter, ordem, id_filter_grupo, exclude);


--
-- TOC entry 3370 (class 2606 OID 61524549)
-- Dependencies: 235 235 235 235 235
-- Name: un_assoccl_validator; Type: CONSTRAINT; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_validator
    ADD CONSTRAINT un_assoccl_validator UNIQUE (id_validator, id_elemento, id_validator_grupo, exclude);


SET search_path = basico_formulario_rascunho, pg_catalog;

--
-- TOC entry 3362 (class 2606 OID 61524533)
-- Dependencies: 233 233
-- Name: pk_assocag_grupo; Type: CONSTRAINT; Schema: basico_formulario_rascunho; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assocag_grupo
    ADD CONSTRAINT pk_assocag_grupo PRIMARY KEY (id);


SET search_path = basico_localizacao, pg_catalog;

--
-- TOC entry 3297 (class 2606 OID 61524421)
-- Dependencies: 219 219
-- Name: pais_codigo_iso3166_key; Type: CONSTRAINT; Schema: basico_localizacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY pais
    ADD CONSTRAINT pais_codigo_iso3166_key UNIQUE (codigo_iso3166);


--
-- TOC entry 3356 (class 2606 OID 61524518)
-- Dependencies: 231 231
-- Name: pk_assoc_bairro; Type: CONSTRAINT; Schema: basico_localizacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_bairro
    ADD CONSTRAINT pk_assoc_bairro PRIMARY KEY (id);


--
-- TOC entry 3349 (class 2606 OID 61524502)
-- Dependencies: 229 229
-- Name: pk_assoc_estado; Type: CONSTRAINT; Schema: basico_localizacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_estado
    ADD CONSTRAINT pk_assoc_estado PRIMARY KEY (id);


--
-- TOC entry 3339 (class 2606 OID 61524485)
-- Dependencies: 227 227
-- Name: pk_assoc_logradouro; Type: CONSTRAINT; Schema: basico_localizacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_logradouro
    ADD CONSTRAINT pk_assoc_logradouro PRIMARY KEY (id);


--
-- TOC entry 3331 (class 2606 OID 61524469)
-- Dependencies: 225 225
-- Name: pk_assoc_municipio; Type: CONSTRAINT; Schema: basico_localizacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_municipio
    ADD CONSTRAINT pk_assoc_municipio PRIMARY KEY (id);


--
-- TOC entry 3321 (class 2606 OID 61524452)
-- Dependencies: 223 223
-- Name: pk_codigo_postal; Type: CONSTRAINT; Schema: basico_localizacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY codigo_postal
    ADD CONSTRAINT pk_codigo_postal PRIMARY KEY (id);


--
-- TOC entry 3309 (class 2606 OID 61524436)
-- Dependencies: 221 221
-- Name: pk_endereco; Type: CONSTRAINT; Schema: basico_localizacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cpg_endereco
    ADD CONSTRAINT pk_endereco PRIMARY KEY (id);


--
-- TOC entry 3302 (class 2606 OID 61524419)
-- Dependencies: 219 219
-- Name: pk_pais; Type: CONSTRAINT; Schema: basico_localizacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY pais
    ADD CONSTRAINT pk_pais PRIMARY KEY (id);


--
-- TOC entry 3358 (class 2606 OID 61524520)
-- Dependencies: 231 231 231
-- Name: un_assoc_bairro; Type: CONSTRAINT; Schema: basico_localizacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_bairro
    ADD CONSTRAINT un_assoc_bairro UNIQUE (id_municipio, nome);


--
-- TOC entry 3341 (class 2606 OID 61524487)
-- Dependencies: 227 227 227 227
-- Name: un_assoc_logradouro; Type: CONSTRAINT; Schema: basico_localizacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_logradouro
    ADD CONSTRAINT un_assoc_logradouro UNIQUE (id_categoria, id_bairro, nome);


--
-- TOC entry 3323 (class 2606 OID 61524454)
-- Dependencies: 223 223 223
-- Name: un_cep; Type: CONSTRAINT; Schema: basico_localizacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY codigo_postal
    ADD CONSTRAINT un_cep UNIQUE (codigo, id_pais);


--
-- TOC entry 3311 (class 2606 OID 61524438)
-- Dependencies: 221 221 221
-- Name: un_endereco; Type: CONSTRAINT; Schema: basico_localizacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cpg_endereco
    ADD CONSTRAINT un_endereco UNIQUE (id_categoria, id_generico_proprietario);


--
-- TOC entry 3351 (class 2606 OID 61524504)
-- Dependencies: 229 229 229 229 229
-- Name: un_estado_pais; Type: CONSTRAINT; Schema: basico_localizacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_estado
    ADD CONSTRAINT un_estado_pais UNIQUE (id_pais, nome, id_categoria, id_estado_pai);


--
-- TOC entry 3333 (class 2606 OID 61524471)
-- Dependencies: 225 225 225 225 225
-- Name: un_municipio_estado; Type: CONSTRAINT; Schema: basico_localizacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_municipio
    ADD CONSTRAINT un_municipio_estado UNIQUE (id_estado, nome, id_categoria, id_municipio_pai);


SET search_path = basico_mensagem, pg_catalog;

--
-- TOC entry 3295 (class 2606 OID 61524404)
-- Dependencies: 217 217
-- Name: pk_assoc_email; Type: CONSTRAINT; Schema: basico_mensagem; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_email
    ADD CONSTRAINT pk_assoc_email PRIMARY KEY (id);


--
-- TOC entry 3289 (class 2606 OID 61524390)
-- Dependencies: 215 215
-- Name: pk_assocl_assocl_pessoa_perfil; Type: CONSTRAINT; Schema: basico_mensagem; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_assoccl_pessoa_perfil
    ADD CONSTRAINT pk_assocl_assocl_pessoa_perfil PRIMARY KEY (id);


--
-- TOC entry 3277 (class 2606 OID 61524375)
-- Dependencies: 213 213
-- Name: pk_mensagem_template; Type: CONSTRAINT; Schema: basico_mensagem; Owner: -; Tablespace: 
--

ALTER TABLE ONLY template
    ADD CONSTRAINT pk_mensagem_template PRIMARY KEY (id);


--
-- TOC entry 3291 (class 2606 OID 61524392)
-- Dependencies: 215 215 215 215
-- Name: un_assoccl_assoccl_pessoa_perfil; Type: CONSTRAINT; Schema: basico_mensagem; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_assoccl_pessoa_perfil
    ADD CONSTRAINT un_assoccl_assoccl_pessoa_perfil UNIQUE (id_categoria, id_mensagem, id_assoccl_perfil);


--
-- TOC entry 3283 (class 2606 OID 61524377)
-- Dependencies: 213 213 213 213
-- Name: un_mensagem_template; Type: CONSTRAINT; Schema: basico_mensagem; Owner: -; Tablespace: 
--

ALTER TABLE ONLY template
    ADD CONSTRAINT un_mensagem_template UNIQUE (id_categoria, id_generico_proprietario, nome);


SET search_path = basico_mensagem_assoc_email, pg_catalog;

--
-- TOC entry 3275 (class 2606 OID 61524356)
-- Dependencies: 211 211
-- Name: pk_assoc_dados; Type: CONSTRAINT; Schema: basico_mensagem_assoc_email; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_dados
    ADD CONSTRAINT pk_assoc_dados PRIMARY KEY (id);


SET search_path = basico_metodo_validacao, pg_catalog;

--
-- TOC entry 3269 (class 2606 OID 61524341)
-- Dependencies: 209 209
-- Name: pk_metodo_valid_assoccl_include; Type: CONSTRAINT; Schema: basico_metodo_validacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT pk_metodo_valid_assoccl_include PRIMARY KEY (id);


--
-- TOC entry 3271 (class 2606 OID 61524343)
-- Dependencies: 209 209 209
-- Name: un_assoccl_include; Type: CONSTRAINT; Schema: basico_metodo_validacao; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT un_assoccl_include UNIQUE (id_metodo_validacao, id_include);


SET search_path = basico_output, pg_catalog;

--
-- TOC entry 3262 (class 2606 OID 61524327)
-- Dependencies: 207 207
-- Name: pk_output_assoccl_include; Type: CONSTRAINT; Schema: basico_output; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT pk_output_assoccl_include PRIMARY KEY (id);


--
-- TOC entry 3264 (class 2606 OID 61524329)
-- Dependencies: 207 207 207
-- Name: un_assoccl_include_output; Type: CONSTRAINT; Schema: basico_output; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT un_assoccl_include_output UNIQUE (id_output, id_include);


SET search_path = basico_perfil, pg_catalog;

--
-- TOC entry 3255 (class 2606 OID 61524313)
-- Dependencies: 205 205
-- Name: pk_assoccl_modulo; Type: CONSTRAINT; Schema: basico_perfil; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_modulo
    ADD CONSTRAINT pk_assoccl_modulo PRIMARY KEY (id);


--
-- TOC entry 3257 (class 2606 OID 61524315)
-- Dependencies: 205 205 205
-- Name: un_assoccl_modulo; Type: CONSTRAINT; Schema: basico_perfil; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_modulo
    ADD CONSTRAINT un_assoccl_modulo UNIQUE (id_modulo, id_perfil);


SET search_path = basico_pessoa, pg_catalog;

--
-- TOC entry 3231 (class 2606 OID 61524258)
-- Dependencies: 197 197
-- Name: login_login_key; Type: CONSTRAINT; Schema: basico_pessoa; Owner: -; Tablespace: 
--

ALTER TABLE ONLY login
    ADD CONSTRAINT login_login_key UNIQUE (login);


--
-- TOC entry 3250 (class 2606 OID 61524301)
-- Dependencies: 203 203
-- Name: pk_assoc_dados; Type: CONSTRAINT; Schema: basico_pessoa; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_dados
    ADD CONSTRAINT pk_assoc_dados PRIMARY KEY (id);


--
-- TOC entry 3243 (class 2606 OID 61524285)
-- Dependencies: 201 201
-- Name: pk_assoccl_perfil; Type: CONSTRAINT; Schema: basico_pessoa; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_perfil
    ADD CONSTRAINT pk_assoccl_perfil PRIMARY KEY (id);


--
-- TOC entry 3238 (class 2606 OID 61524271)
-- Dependencies: 199 199
-- Name: pk_assoccl_vinculo_profissional; Type: CONSTRAINT; Schema: basico_pessoa; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_tipo_vinculo
    ADD CONSTRAINT pk_assoccl_vinculo_profissional PRIMARY KEY (id);


--
-- TOC entry 3233 (class 2606 OID 61524256)
-- Dependencies: 197 197
-- Name: pk_login; Type: CONSTRAINT; Schema: basico_pessoa; Owner: -; Tablespace: 
--

ALTER TABLE ONLY login
    ADD CONSTRAINT pk_login PRIMARY KEY (id);


--
-- TOC entry 3245 (class 2606 OID 61524287)
-- Dependencies: 201 201 201
-- Name: un_assoccl_pessoa_perfil; Type: CONSTRAINT; Schema: basico_pessoa; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_perfil
    ADD CONSTRAINT un_assoccl_pessoa_perfil UNIQUE (id_pessoa, id_perfil);


SET search_path = basico_pessoa_juridica, pg_catalog;

--
-- TOC entry 3227 (class 2606 OID 61524237)
-- Dependencies: 195 195
-- Name: pk_assoc_banco; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_banco
    ADD CONSTRAINT pk_assoc_banco PRIMARY KEY (id);


--
-- TOC entry 3221 (class 2606 OID 61524223)
-- Dependencies: 193 193
-- Name: pk_assoc_dados_pj; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoc_dados
    ADD CONSTRAINT pk_assoc_dados_pj PRIMARY KEY (id);


--
-- TOC entry 3212 (class 2606 OID 61524208)
-- Dependencies: 191 191
-- Name: pk_assocag_incubadora; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assocag_incubadora
    ADD CONSTRAINT pk_assocag_incubadora PRIMARY KEY (id);


--
-- TOC entry 3204 (class 2606 OID 61524194)
-- Dependencies: 189 189
-- Name: pk_assocag_parceria; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assocag_parceria
    ADD CONSTRAINT pk_assocag_parceria PRIMARY KEY (id);


--
-- TOC entry 3194 (class 2606 OID 61524177)
-- Dependencies: 187 187
-- Name: pk_assoccl_area_economia; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_area_economia
    ADD CONSTRAINT pk_assoccl_area_economia PRIMARY KEY (id);


--
-- TOC entry 3187 (class 2606 OID 61524163)
-- Dependencies: 185 185
-- Name: pk_assoccl_capital_social; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_capital_social
    ADD CONSTRAINT pk_assoccl_capital_social PRIMARY KEY (id);


--
-- TOC entry 3180 (class 2606 OID 61524146)
-- Dependencies: 183 183
-- Name: pk_assoccl_faturamento; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_faturamento
    ADD CONSTRAINT pk_assoccl_faturamento PRIMARY KEY (id);


--
-- TOC entry 3173 (class 2606 OID 61524131)
-- Dependencies: 181 181
-- Name: pk_assoccl_quadro_funcionario; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_quadro_funcionario
    ADD CONSTRAINT pk_assoccl_quadro_funcionario PRIMARY KEY (id);


--
-- TOC entry 3167 (class 2606 OID 61524118)
-- Dependencies: 179 179
-- Name: pk_capital_social; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY capital_social
    ADD CONSTRAINT pk_capital_social PRIMARY KEY (id);


--
-- TOC entry 3161 (class 2606 OID 61524102)
-- Dependencies: 177 177
-- Name: pk_natureza; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY natureza
    ADD CONSTRAINT pk_natureza PRIMARY KEY (id);


--
-- TOC entry 3175 (class 2606 OID 61524133)
-- Dependencies: 181 181 181 181 181
-- Name: un_assoc_quadro_funcionarios; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_quadro_funcionario
    ADD CONSTRAINT un_assoc_quadro_funcionarios UNIQUE (id_categoria, id_pessoa_juridica, id_titulacao, id_area_conhecimento_predom);


--
-- TOC entry 3206 (class 2606 OID 61524196)
-- Dependencies: 189 189 189 189 189
-- Name: un_assocag_parceria; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assocag_parceria
    ADD CONSTRAINT un_assocag_parceria UNIQUE (id_categoria, id_pessoa_juridica, id_pessoa_juridica_parceira, id_assocag_parceria);


--
-- TOC entry 3196 (class 2606 OID 61524179)
-- Dependencies: 187 187 187
-- Name: un_assoccl_area_economia; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_area_economia
    ADD CONSTRAINT un_assoccl_area_economia UNIQUE (id_area_economia, id_pessoa_juridica);


--
-- TOC entry 3189 (class 2606 OID 61524165)
-- Dependencies: 185 185 185
-- Name: un_assoccl_capital_social; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_capital_social
    ADD CONSTRAINT un_assoccl_capital_social UNIQUE (id_pessoa_juridica, id_capital_social);


--
-- TOC entry 3182 (class 2606 OID 61524148)
-- Dependencies: 183 183 183 183 183
-- Name: un_assoccl_faturamento; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_faturamento
    ADD CONSTRAINT un_assoccl_faturamento UNIQUE (id_categoria, id_pessoa_juridica, ano_fiscal, mes_fiscal);


--
-- TOC entry 3214 (class 2606 OID 61524210)
-- Dependencies: 191 191 191 191
-- Name: un_incubadora; Type: CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assocag_incubadora
    ADD CONSTRAINT un_incubadora UNIQUE (id_categoria, id_pessoa_juridica, id_pessoa_juridica_incubada);


SET search_path = basico_sequencia, pg_catalog;

--
-- TOC entry 3152 (class 2606 OID 61524084)
-- Dependencies: 175 175
-- Name: pk_assocsq_acao_aplicacao; Type: CONSTRAINT; Schema: basico_sequencia; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assocsq_acao_aplicacao
    ADD CONSTRAINT pk_assocsq_acao_aplicacao PRIMARY KEY (id);


--
-- TOC entry 3154 (class 2606 OID 61524086)
-- Dependencies: 175 175 175 175
-- Name: un_assocsq_acao_aplicacao; Type: CONSTRAINT; Schema: basico_sequencia; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assocsq_acao_aplicacao
    ADD CONSTRAINT un_assocsq_acao_aplicacao UNIQUE (id_sequencia, id_acao_aplicacao, passo);


SET search_path = basico_template, pg_catalog;

--
-- TOC entry 3134 (class 2606 OID 61524052)
-- Dependencies: 171 171
-- Name: pk_assoccl_output; Type: CONSTRAINT; Schema: basico_template; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_output
    ADD CONSTRAINT pk_assoccl_output PRIMARY KEY (id);


--
-- TOC entry 3141 (class 2606 OID 61524066)
-- Dependencies: 173 173
-- Name: pk_template_assoccl_include; Type: CONSTRAINT; Schema: basico_template; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT pk_template_assoccl_include PRIMARY KEY (id);


--
-- TOC entry 3143 (class 2606 OID 61524068)
-- Dependencies: 173 173 173
-- Name: un_assoccl_include_template; Type: CONSTRAINT; Schema: basico_template; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT un_assoccl_include_template UNIQUE (id_template, id_include);


--
-- TOC entry 3136 (class 2606 OID 61524054)
-- Dependencies: 171 171 171
-- Name: un_assoccl_output; Type: CONSTRAINT; Schema: basico_template; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assoccl_output
    ADD CONSTRAINT un_assoccl_output UNIQUE (id_template, id_output);


SET search_path = basico_validator, pg_catalog;

--
-- TOC entry 3129 (class 2606 OID 61524040)
-- Dependencies: 169 169
-- Name: pk_validator_grupo; Type: CONSTRAINT; Schema: basico_validator; Owner: -; Tablespace: 
--

ALTER TABLE ONLY grupo
    ADD CONSTRAINT pk_validator_grupo PRIMARY KEY (id);


SET search_path = basico_validator_grupo, pg_catalog;

--
-- TOC entry 3123 (class 2606 OID 61524024)
-- Dependencies: 167 167
-- Name: pk_validator_assocag_grupo; Type: CONSTRAINT; Schema: basico_validator_grupo; Owner: -; Tablespace: 
--

ALTER TABLE ONLY assocag_grupo
    ADD CONSTRAINT pk_validator_assocag_grupo PRIMARY KEY (id);


SET search_path = basico, pg_catalog;

--
-- TOC entry 3978 (class 1259 OID 61527631)
-- Dependencies: 401
-- Name: acao_aplicacao_action; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX acao_aplicacao_action ON acao_aplicacao USING btree (action);


--
-- TOC entry 3979 (class 1259 OID 61527632)
-- Dependencies: 401
-- Name: acao_aplicacao_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX acao_aplicacao_constante_textual ON acao_aplicacao USING btree (constante_textual);


--
-- TOC entry 3980 (class 1259 OID 61527630)
-- Dependencies: 401
-- Name: acao_aplicacao_controller; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX acao_aplicacao_controller ON acao_aplicacao USING btree (controller);


--
-- TOC entry 3981 (class 1259 OID 61527628)
-- Dependencies: 401
-- Name: acao_aplicacao_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX acao_aplicacao_id ON acao_aplicacao USING btree (id);


--
-- TOC entry 3982 (class 1259 OID 61527629)
-- Dependencies: 401
-- Name: acao_aplicacao_id_modulo; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX acao_aplicacao_id_modulo ON acao_aplicacao USING btree (id_modulo);


--
-- TOC entry 3969 (class 1259 OID 61527626)
-- Dependencies: 399
-- Name: acao_evento_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX acao_evento_constante_textual ON acao_evento USING btree (constante_textual);


--
-- TOC entry 3970 (class 1259 OID 61527627)
-- Dependencies: 399
-- Name: acao_evento_constante_textual_descricao; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX acao_evento_constante_textual_descricao ON acao_evento USING btree (constante_textual_descricao);


--
-- TOC entry 3971 (class 1259 OID 61527623)
-- Dependencies: 399
-- Name: acao_evento_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX acao_evento_id ON acao_evento USING btree (id);


--
-- TOC entry 3972 (class 1259 OID 61527624)
-- Dependencies: 399
-- Name: acao_evento_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX acao_evento_id_categoria ON acao_evento USING btree (id_categoria);


--
-- TOC entry 3973 (class 1259 OID 61527625)
-- Dependencies: 399
-- Name: acao_evento_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX acao_evento_nome ON acao_evento USING btree (nome);


--
-- TOC entry 3958 (class 1259 OID 61527619)
-- Dependencies: 397
-- Name: ajuda_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX ajuda_constante_textual ON ajuda USING btree (constante_textual);


--
-- TOC entry 3959 (class 1259 OID 61527621)
-- Dependencies: 397
-- Name: ajuda_constante_textual_ajuda; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX ajuda_constante_textual_ajuda ON ajuda USING btree (constante_textual_ajuda);


--
-- TOC entry 3960 (class 1259 OID 61527620)
-- Dependencies: 397
-- Name: ajuda_constante_textual_descricao; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX ajuda_constante_textual_descricao ON ajuda USING btree (constante_textual_descricao);


--
-- TOC entry 3961 (class 1259 OID 61527622)
-- Dependencies: 397
-- Name: ajuda_constante_textual_hint; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX ajuda_constante_textual_hint ON ajuda USING btree (constante_textual_hint);


--
-- TOC entry 3962 (class 1259 OID 61527616)
-- Dependencies: 397
-- Name: ajuda_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX ajuda_id ON ajuda USING btree (id);


--
-- TOC entry 3963 (class 1259 OID 61527617)
-- Dependencies: 397
-- Name: ajuda_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX ajuda_id_categoria ON ajuda USING btree (id_categoria);


--
-- TOC entry 3964 (class 1259 OID 61527618)
-- Dependencies: 397
-- Name: ajuda_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX ajuda_nome ON ajuda USING btree (nome);


--
-- TOC entry 3948 (class 1259 OID 61527615)
-- Dependencies: 395
-- Name: area_conhecimento_codigo; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX area_conhecimento_codigo ON area_conhecimento USING btree (codigo);


--
-- TOC entry 3949 (class 1259 OID 61527614)
-- Dependencies: 395
-- Name: area_conhecimento_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX area_conhecimento_constante_textual ON area_conhecimento USING btree (constante_textual);


--
-- TOC entry 3950 (class 1259 OID 61527610)
-- Dependencies: 395
-- Name: area_conhecimento_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX area_conhecimento_id ON area_conhecimento USING btree (id);


--
-- TOC entry 3951 (class 1259 OID 61527611)
-- Dependencies: 395
-- Name: area_conhecimento_id_area_conhecimento_pai; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX area_conhecimento_id_area_conhecimento_pai ON area_conhecimento USING btree (id_area_conhecimento_pai);


--
-- TOC entry 3952 (class 1259 OID 61527612)
-- Dependencies: 395
-- Name: area_conhecimento_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX area_conhecimento_id_categoria ON area_conhecimento USING btree (id_categoria);


--
-- TOC entry 3953 (class 1259 OID 61527613)
-- Dependencies: 395
-- Name: area_conhecimento_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX area_conhecimento_nome ON area_conhecimento USING btree (nome);


--
-- TOC entry 3938 (class 1259 OID 61527609)
-- Dependencies: 393
-- Name: area_economia_codigo; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX area_economia_codigo ON area_economia USING btree (codigo);


--
-- TOC entry 3939 (class 1259 OID 61527608)
-- Dependencies: 393
-- Name: area_economia_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX area_economia_constante_textual ON area_economia USING btree (constante_textual);


--
-- TOC entry 3940 (class 1259 OID 61527604)
-- Dependencies: 393
-- Name: area_economia_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX area_economia_id ON area_economia USING btree (id);


--
-- TOC entry 3941 (class 1259 OID 61527605)
-- Dependencies: 393
-- Name: area_economia_id_area_economia_pai; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX area_economia_id_area_economia_pai ON area_economia USING btree (id_area_economia_pai);


--
-- TOC entry 3942 (class 1259 OID 61527606)
-- Dependencies: 393
-- Name: area_economia_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX area_economia_id_categoria ON area_economia USING btree (id_categoria);


--
-- TOC entry 3943 (class 1259 OID 61527607)
-- Dependencies: 393
-- Name: area_economia_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX area_economia_nome ON area_economia USING btree (nome);


--
-- TOC entry 3928 (class 1259 OID 61527603)
-- Dependencies: 391
-- Name: categoria_codigo; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX categoria_codigo ON categoria USING btree (codigo);


--
-- TOC entry 3929 (class 1259 OID 61527602)
-- Dependencies: 391
-- Name: categoria_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX categoria_constante_textual ON categoria USING btree (constante_textual);


--
-- TOC entry 3930 (class 1259 OID 61527598)
-- Dependencies: 391
-- Name: categoria_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX categoria_id ON categoria USING btree (id);


--
-- TOC entry 3931 (class 1259 OID 61527600)
-- Dependencies: 391
-- Name: categoria_id_categoria_pai; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX categoria_id_categoria_pai ON categoria USING btree (id_categoria_pai);


--
-- TOC entry 3932 (class 1259 OID 61527599)
-- Dependencies: 391
-- Name: categoria_id_tipo_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX categoria_id_tipo_categoria ON categoria USING btree (id_tipo_categoria);


--
-- TOC entry 3933 (class 1259 OID 61527601)
-- Dependencies: 391
-- Name: categoria_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX categoria_nome ON categoria USING btree (nome);


--
-- TOC entry 3919 (class 1259 OID 61527596)
-- Dependencies: 389
-- Name: componente_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX componente_constante_textual ON componente USING btree (constante_textual);


--
-- TOC entry 3920 (class 1259 OID 61527597)
-- Dependencies: 389
-- Name: componente_constante_textual_descricao; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX componente_constante_textual_descricao ON componente USING btree (constante_textual_descricao);


--
-- TOC entry 3921 (class 1259 OID 61527593)
-- Dependencies: 389
-- Name: componente_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX componente_id ON componente USING btree (id);


--
-- TOC entry 3922 (class 1259 OID 61527594)
-- Dependencies: 389
-- Name: componente_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX componente_id_categoria ON componente USING btree (id_categoria);


--
-- TOC entry 3923 (class 1259 OID 61527595)
-- Dependencies: 389
-- Name: componente_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX componente_nome ON componente USING btree (nome);


--
-- TOC entry 3906 (class 1259 OID 61527584)
-- Dependencies: 387
-- Name: cpg_arquivo_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX cpg_arquivo_id ON cpg_arquivo USING btree (id);


--
-- TOC entry 3907 (class 1259 OID 61527585)
-- Dependencies: 387
-- Name: cpg_arquivo_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_arquivo_id_categoria ON cpg_arquivo USING btree (id_categoria);


--
-- TOC entry 3908 (class 1259 OID 61527586)
-- Dependencies: 387
-- Name: cpg_arquivo_id_generico_proprietario; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_arquivo_id_generico_proprietario ON cpg_arquivo USING btree (id_generico_proprietario);


--
-- TOC entry 3909 (class 1259 OID 61527590)
-- Dependencies: 387
-- Name: cpg_arquivo_mime_type; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_arquivo_mime_type ON cpg_arquivo USING btree (mime_type);


--
-- TOC entry 3910 (class 1259 OID 61527587)
-- Dependencies: 387
-- Name: cpg_arquivo_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_arquivo_nome ON cpg_arquivo USING btree (nome);


--
-- TOC entry 3911 (class 1259 OID 61527588)
-- Dependencies: 387
-- Name: cpg_arquivo_nome_original; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_arquivo_nome_original ON cpg_arquivo USING btree (nome_original);


--
-- TOC entry 3912 (class 1259 OID 61527589)
-- Dependencies: 387
-- Name: cpg_arquivo_nome_sugestao; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_arquivo_nome_sugestao ON cpg_arquivo USING btree (nome_sugestao);


--
-- TOC entry 3913 (class 1259 OID 61527592)
-- Dependencies: 387
-- Name: cpg_arquivo_remoto; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_arquivo_remoto ON cpg_arquivo USING btree (remoto);


--
-- TOC entry 3914 (class 1259 OID 61527591)
-- Dependencies: 387
-- Name: cpg_arquivo_uri; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_arquivo_uri ON cpg_arquivo USING btree (uri);


--
-- TOC entry 3896 (class 1259 OID 61527583)
-- Dependencies: 385
-- Name: cpg_codigo_acesso_codigo; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX cpg_codigo_acesso_codigo ON cpg_codigo_acesso USING btree (codigo);


--
-- TOC entry 3897 (class 1259 OID 61527578)
-- Dependencies: 385
-- Name: cpg_codigo_acesso_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX cpg_codigo_acesso_id ON cpg_codigo_acesso USING btree (id);


--
-- TOC entry 3898 (class 1259 OID 61527581)
-- Dependencies: 385
-- Name: cpg_codigo_acesso_id_categoria_acesso; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_codigo_acesso_id_categoria_acesso ON cpg_codigo_acesso USING btree (id_categoria_acesso);


--
-- TOC entry 3899 (class 1259 OID 61527579)
-- Dependencies: 385
-- Name: cpg_codigo_acesso_id_categoria_proprietario; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_codigo_acesso_id_categoria_proprietario ON cpg_codigo_acesso USING btree (id_categoria_proprietario);


--
-- TOC entry 3900 (class 1259 OID 61527582)
-- Dependencies: 385
-- Name: cpg_codigo_acesso_id_generico_acesso; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_codigo_acesso_id_generico_acesso ON cpg_codigo_acesso USING btree (id_generico_acesso);


--
-- TOC entry 3901 (class 1259 OID 61527580)
-- Dependencies: 385
-- Name: cpg_codigo_acesso_id_generico_proprietario; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_codigo_acesso_id_generico_proprietario ON cpg_codigo_acesso USING btree (id_generico_proprietario);


--
-- TOC entry 3887 (class 1259 OID 61527573)
-- Dependencies: 383
-- Name: cpg_dados_bancarios_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX cpg_dados_bancarios_id ON cpg_dados_bancarios USING btree (id);


--
-- TOC entry 3888 (class 1259 OID 61527574)
-- Dependencies: 383
-- Name: cpg_dados_bancarios_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_dados_bancarios_id_categoria ON cpg_dados_bancarios USING btree (id_categoria);


--
-- TOC entry 3889 (class 1259 OID 61527575)
-- Dependencies: 383
-- Name: cpg_dados_bancarios_id_generico_proprietario; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_dados_bancarios_id_generico_proprietario ON cpg_dados_bancarios USING btree (id_generico_proprietario);


--
-- TOC entry 3890 (class 1259 OID 61527577)
-- Dependencies: 383
-- Name: cpg_dados_bancarios_nome_banco; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_dados_bancarios_nome_banco ON cpg_dados_bancarios USING btree (nome_banco);


--
-- TOC entry 3891 (class 1259 OID 61527576)
-- Dependencies: 383
-- Name: cpg_dados_bancarios_numero_banco; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_dados_bancarios_numero_banco ON cpg_dados_bancarios USING btree (numero_banco);


--
-- TOC entry 3878 (class 1259 OID 61527568)
-- Dependencies: 381
-- Name: cpg_documento_identificacao_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX cpg_documento_identificacao_id ON cpg_documento_identificacao USING btree (id);


--
-- TOC entry 3879 (class 1259 OID 61527569)
-- Dependencies: 381
-- Name: cpg_documento_identificacao_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_documento_identificacao_id_categoria ON cpg_documento_identificacao USING btree (id_categoria);


--
-- TOC entry 3880 (class 1259 OID 61527570)
-- Dependencies: 381
-- Name: cpg_documento_identificacao_id_generico_proprietario; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_documento_identificacao_id_generico_proprietario ON cpg_documento_identificacao USING btree (id_generico_proprietario);


--
-- TOC entry 3881 (class 1259 OID 61527571)
-- Dependencies: 381
-- Name: cpg_documento_identificacao_id_pessoa_juridica_emissor; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_documento_identificacao_id_pessoa_juridica_emissor ON cpg_documento_identificacao USING btree (id_pessoa_juridica_emissor);


--
-- TOC entry 3882 (class 1259 OID 61527572)
-- Dependencies: 381
-- Name: cpg_documento_identificacao_identificador; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_documento_identificacao_identificador ON cpg_documento_identificacao USING btree (identificador);


--
-- TOC entry 3868 (class 1259 OID 61527566)
-- Dependencies: 379
-- Name: cpg_link_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_link_constante_textual ON cpg_link USING btree (constante_textual);


--
-- TOC entry 3869 (class 1259 OID 61527562)
-- Dependencies: 379
-- Name: cpg_link_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX cpg_link_id ON cpg_link USING btree (id);


--
-- TOC entry 3870 (class 1259 OID 61527563)
-- Dependencies: 379
-- Name: cpg_link_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_link_id_categoria ON cpg_link USING btree (id_categoria);


--
-- TOC entry 3871 (class 1259 OID 61527564)
-- Dependencies: 379
-- Name: cpg_link_id_generico_proprietario; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_link_id_generico_proprietario ON cpg_link USING btree (id_generico_proprietario);


--
-- TOC entry 3872 (class 1259 OID 61527565)
-- Dependencies: 379
-- Name: cpg_link_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_link_nome ON cpg_link USING btree (nome);


--
-- TOC entry 3873 (class 1259 OID 61527567)
-- Dependencies: 379
-- Name: cpg_link_url; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_link_url ON cpg_link USING btree (url);


--
-- TOC entry 3860 (class 1259 OID 61527561)
-- Dependencies: 377
-- Name: cpg_produto_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_produto_constante_textual ON cpg_produto USING btree (constante_textual);


--
-- TOC entry 3861 (class 1259 OID 61527554)
-- Dependencies: 377
-- Name: cpg_produto_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX cpg_produto_id ON cpg_produto USING btree (id);


--
-- TOC entry 3862 (class 1259 OID 61527557)
-- Dependencies: 377
-- Name: cpg_produto_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_produto_id_categoria ON cpg_produto USING btree (id_categoria);


--
-- TOC entry 3863 (class 1259 OID 61527559)
-- Dependencies: 377
-- Name: cpg_produto_id_categoria_moeda; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_produto_id_categoria_moeda ON cpg_produto USING btree (id_categoria_moeda);


--
-- TOC entry 3864 (class 1259 OID 61527558)
-- Dependencies: 377
-- Name: cpg_produto_id_generico_proprietario; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_produto_id_generico_proprietario ON cpg_produto USING btree (id_generico_proprietario);


--
-- TOC entry 3865 (class 1259 OID 61527560)
-- Dependencies: 377
-- Name: cpg_produto_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_produto_nome ON cpg_produto USING btree (nome);


--
-- TOC entry 3854 (class 1259 OID 61527550)
-- Dependencies: 375
-- Name: cpg_token_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX cpg_token_id ON cpg_token USING btree (id);


--
-- TOC entry 3855 (class 1259 OID 61527551)
-- Dependencies: 375
-- Name: cpg_token_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_token_id_categoria ON cpg_token USING btree (id_categoria);


--
-- TOC entry 3856 (class 1259 OID 61527552)
-- Dependencies: 375
-- Name: cpg_token_id_generico_proprietario; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX cpg_token_id_generico_proprietario ON cpg_token USING btree (id_generico_proprietario);


--
-- TOC entry 3857 (class 1259 OID 61527553)
-- Dependencies: 375
-- Name: cpg_token_token; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX cpg_token_token ON cpg_token USING btree (token);


--
-- TOC entry 3847 (class 1259 OID 61527547)
-- Dependencies: 373
-- Name: dados_biometricos_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX dados_biometricos_id ON dados_biometricos USING btree (id);


--
-- TOC entry 3848 (class 1259 OID 61527548)
-- Dependencies: 373
-- Name: dados_biometricos_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX dados_biometricos_id_categoria ON dados_biometricos USING btree (id_categoria);


--
-- TOC entry 3849 (class 1259 OID 61527549)
-- Dependencies: 373
-- Name: dados_biometricos_id_generico_proprietario; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX dados_biometricos_id_generico_proprietario ON dados_biometricos USING btree (id_generico_proprietario);


--
-- TOC entry 3840 (class 1259 OID 61527546)
-- Dependencies: 371
-- Name: dicionario_expressao_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX dicionario_expressao_constante_textual ON dicionario_expressao USING btree (constante_textual);


--
-- TOC entry 3841 (class 1259 OID 61527544)
-- Dependencies: 371
-- Name: dicionario_expressao_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX dicionario_expressao_id ON dicionario_expressao USING btree (id);


--
-- TOC entry 3842 (class 1259 OID 61527545)
-- Dependencies: 371
-- Name: dicionario_expressao_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX dicionario_expressao_id_categoria ON dicionario_expressao USING btree (id_categoria);


--
-- TOC entry 3832 (class 1259 OID 61527543)
-- Dependencies: 369
-- Name: evento_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX evento_constante_textual ON evento USING btree (constante_textual);


--
-- TOC entry 3835 (class 1259 OID 61527540)
-- Dependencies: 369
-- Name: evento_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX evento_id ON evento USING btree (id);


--
-- TOC entry 3836 (class 1259 OID 61527541)
-- Dependencies: 369
-- Name: evento_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX evento_id_categoria ON evento USING btree (id_categoria);


--
-- TOC entry 3837 (class 1259 OID 61527542)
-- Dependencies: 369
-- Name: evento_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX evento_nome ON evento USING btree (nome);


--
-- TOC entry 3822 (class 1259 OID 61527538)
-- Dependencies: 367
-- Name: filter_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX filter_constante_textual ON filter USING btree (constante_textual);


--
-- TOC entry 3823 (class 1259 OID 61527539)
-- Dependencies: 367
-- Name: filter_constante_textual_descricao; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX filter_constante_textual_descricao ON filter USING btree (constante_textual_descricao);


--
-- TOC entry 3824 (class 1259 OID 61527533)
-- Dependencies: 367
-- Name: filter_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX filter_id ON filter USING btree (id);


--
-- TOC entry 3825 (class 1259 OID 61527534)
-- Dependencies: 367
-- Name: filter_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX filter_id_categoria ON filter USING btree (id_categoria);


--
-- TOC entry 3826 (class 1259 OID 61527535)
-- Dependencies: 367
-- Name: filter_id_componente; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX filter_id_componente ON filter USING btree (id_componente);


--
-- TOC entry 3827 (class 1259 OID 61527537)
-- Dependencies: 367
-- Name: filter_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX filter_nome ON filter USING btree (nome);


--
-- TOC entry 3811 (class 1259 OID 61527531)
-- Dependencies: 365
-- Name: formulario_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX formulario_constante_textual ON formulario USING btree (constante_textual);


--
-- TOC entry 3812 (class 1259 OID 61527532)
-- Dependencies: 365
-- Name: formulario_form_name; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX formulario_form_name ON formulario USING btree (form_name);


--
-- TOC entry 3813 (class 1259 OID 61527526)
-- Dependencies: 365
-- Name: formulario_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX formulario_id ON formulario USING btree (id);


--
-- TOC entry 3814 (class 1259 OID 61527529)
-- Dependencies: 365
-- Name: formulario_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX formulario_id_categoria ON formulario USING btree (id_categoria);


--
-- TOC entry 3815 (class 1259 OID 61527528)
-- Dependencies: 365
-- Name: formulario_id_componente; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX formulario_id_componente ON formulario USING btree (id_componente);


--
-- TOC entry 3816 (class 1259 OID 61527527)
-- Dependencies: 365
-- Name: formulario_id_formulario_pai; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX formulario_id_formulario_pai ON formulario USING btree (id_formulario_pai);


--
-- TOC entry 3817 (class 1259 OID 61527530)
-- Dependencies: 365
-- Name: formulario_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX formulario_nome ON formulario USING btree (nome);


--
-- TOC entry 3800 (class 1259 OID 61527524)
-- Dependencies: 363
-- Name: include_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX include_constante_textual ON include USING btree (constante_textual);


--
-- TOC entry 3801 (class 1259 OID 61527525)
-- Dependencies: 363
-- Name: include_constante_textual_descricao; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX include_constante_textual_descricao ON include USING btree (constante_textual_descricao);


--
-- TOC entry 3802 (class 1259 OID 61527521)
-- Dependencies: 363
-- Name: include_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX include_id ON include USING btree (id);


--
-- TOC entry 3803 (class 1259 OID 61527522)
-- Dependencies: 363
-- Name: include_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX include_id_categoria ON include USING btree (id_categoria);


--
-- TOC entry 3804 (class 1259 OID 61527523)
-- Dependencies: 363
-- Name: include_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX include_nome ON include USING btree (nome);


--
-- TOC entry 3795 (class 1259 OID 61527518)
-- Dependencies: 361
-- Name: log_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX log_id ON log USING btree (id);


--
-- TOC entry 3796 (class 1259 OID 61527520)
-- Dependencies: 361
-- Name: log_id_assoccl_perfil; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX log_id_assoccl_perfil ON log USING btree (id_assoccl_perfil);


--
-- TOC entry 3797 (class 1259 OID 61527519)
-- Dependencies: 361
-- Name: log_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX log_id_categoria ON log USING btree (id_categoria);


--
-- TOC entry 3790 (class 1259 OID 61527515)
-- Dependencies: 359
-- Name: mensagem_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX mensagem_id ON mensagem USING btree (id);


--
-- TOC entry 3791 (class 1259 OID 61527516)
-- Dependencies: 359
-- Name: mensagem_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX mensagem_id_categoria ON mensagem USING btree (id_categoria);


--
-- TOC entry 3792 (class 1259 OID 61527517)
-- Dependencies: 359
-- Name: mensagem_id_generico_proprietario; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX mensagem_id_generico_proprietario ON mensagem USING btree (id_generico_proprietario);


--
-- TOC entry 3782 (class 1259 OID 61527514)
-- Dependencies: 357
-- Name: metodo_validacao_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX metodo_validacao_constante_textual ON metodo_validacao USING btree (constante_textual);


--
-- TOC entry 3783 (class 1259 OID 61527511)
-- Dependencies: 357
-- Name: metodo_validacao_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX metodo_validacao_id ON metodo_validacao USING btree (id);


--
-- TOC entry 3784 (class 1259 OID 61527512)
-- Dependencies: 357
-- Name: metodo_validacao_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX metodo_validacao_id_categoria ON metodo_validacao USING btree (id_categoria);


--
-- TOC entry 3785 (class 1259 OID 61527513)
-- Dependencies: 357
-- Name: metodo_validacao_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX metodo_validacao_nome ON metodo_validacao USING btree (nome);


--
-- TOC entry 3776 (class 1259 OID 61527510)
-- Dependencies: 355
-- Name: modulo_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX modulo_constante_textual ON modulo USING btree (constante_textual);


--
-- TOC entry 3777 (class 1259 OID 61527507)
-- Dependencies: 355
-- Name: modulo_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX modulo_id ON modulo USING btree (id);


--
-- TOC entry 3778 (class 1259 OID 61527508)
-- Dependencies: 355
-- Name: modulo_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX modulo_id_categoria ON modulo USING btree (id_categoria);


--
-- TOC entry 3779 (class 1259 OID 61527509)
-- Dependencies: 355
-- Name: modulo_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX modulo_nome ON modulo USING btree (nome);


--
-- TOC entry 3770 (class 1259 OID 61527506)
-- Dependencies: 353
-- Name: output_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX output_constante_textual ON output USING btree (constante_textual);


--
-- TOC entry 3771 (class 1259 OID 61527503)
-- Dependencies: 353
-- Name: output_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX output_id ON output USING btree (id);


--
-- TOC entry 3772 (class 1259 OID 61527504)
-- Dependencies: 353
-- Name: output_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX output_id_categoria ON output USING btree (id_categoria);


--
-- TOC entry 3773 (class 1259 OID 61527505)
-- Dependencies: 353
-- Name: output_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX output_nome ON output USING btree (nome);


--
-- TOC entry 3762 (class 1259 OID 61527502)
-- Dependencies: 351
-- Name: perfil_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX perfil_constante_textual ON perfil USING btree (constante_textual);


--
-- TOC entry 3763 (class 1259 OID 61527499)
-- Dependencies: 351
-- Name: perfil_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX perfil_id ON perfil USING btree (id);


--
-- TOC entry 3764 (class 1259 OID 61527500)
-- Dependencies: 351
-- Name: perfil_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX perfil_id_categoria ON perfil USING btree (id_categoria);


--
-- TOC entry 3765 (class 1259 OID 61527501)
-- Dependencies: 351
-- Name: perfil_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX perfil_nome ON perfil USING btree (nome);


--
-- TOC entry 3759 (class 1259 OID 61527498)
-- Dependencies: 349
-- Name: pessoa_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX pessoa_id ON pessoa USING btree (id);


--
-- TOC entry 3753 (class 1259 OID 61527494)
-- Dependencies: 347
-- Name: pessoa_juridica_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX pessoa_juridica_id ON pessoa_juridica USING btree (id);


--
-- TOC entry 3754 (class 1259 OID 61527495)
-- Dependencies: 347
-- Name: pessoa_juridica_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX pessoa_juridica_id_categoria ON pessoa_juridica USING btree (id_categoria);


--
-- TOC entry 3755 (class 1259 OID 61527496)
-- Dependencies: 347
-- Name: pessoa_juridica_id_natureza; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX pessoa_juridica_id_natureza ON pessoa_juridica USING btree (id_natureza);


--
-- TOC entry 3756 (class 1259 OID 61527497)
-- Dependencies: 347
-- Name: pessoa_juridica_id_pessoa_responsavel_cadastro; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX pessoa_juridica_id_pessoa_responsavel_cadastro ON pessoa_juridica USING btree (id_pessoa_responsavel_cadastro);


--
-- TOC entry 3748 (class 1259 OID 61527493)
-- Dependencies: 345
-- Name: profissao_codigo; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX profissao_codigo ON profissao USING btree (codigo);


--
-- TOC entry 3749 (class 1259 OID 61527492)
-- Dependencies: 345
-- Name: profissao_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX profissao_constante_textual ON profissao USING btree (constante_textual);


--
-- TOC entry 3750 (class 1259 OID 61527489)
-- Dependencies: 345
-- Name: profissao_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX profissao_id ON profissao USING btree (id);


--
-- TOC entry 3751 (class 1259 OID 61527490)
-- Dependencies: 345
-- Name: profissao_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX profissao_id_categoria ON profissao USING btree (id_categoria);


--
-- TOC entry 3752 (class 1259 OID 61527491)
-- Dependencies: 345
-- Name: profissao_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX profissao_nome ON profissao USING btree (nome);


--
-- TOC entry 3740 (class 1259 OID 61527488)
-- Dependencies: 343
-- Name: sequencia_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX sequencia_constante_textual ON sequencia USING btree (constante_textual);


--
-- TOC entry 3741 (class 1259 OID 61527485)
-- Dependencies: 343
-- Name: sequencia_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX sequencia_id ON sequencia USING btree (id);


--
-- TOC entry 3742 (class 1259 OID 61527486)
-- Dependencies: 343
-- Name: sequencia_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX sequencia_id_categoria ON sequencia USING btree (id_categoria);


--
-- TOC entry 3743 (class 1259 OID 61527487)
-- Dependencies: 343
-- Name: sequencia_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX sequencia_nome ON sequencia USING btree (nome);


--
-- TOC entry 3734 (class 1259 OID 61527484)
-- Dependencies: 341
-- Name: template_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX template_constante_textual ON template USING btree (constante_textual);


--
-- TOC entry 3735 (class 1259 OID 61527481)
-- Dependencies: 341
-- Name: template_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX template_id ON template USING btree (id);


--
-- TOC entry 3736 (class 1259 OID 61527482)
-- Dependencies: 341
-- Name: template_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX template_id_categoria ON template USING btree (id_categoria);


--
-- TOC entry 3737 (class 1259 OID 61527483)
-- Dependencies: 341
-- Name: template_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX template_nome ON template USING btree (nome);


--
-- TOC entry 3725 (class 1259 OID 61527480)
-- Dependencies: 339
-- Name: tipo_categoria_codigo; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX tipo_categoria_codigo ON tipo_categoria USING btree (codigo);


--
-- TOC entry 3726 (class 1259 OID 61527479)
-- Dependencies: 339
-- Name: tipo_categoria_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX tipo_categoria_constante_textual ON tipo_categoria USING btree (constante_textual);


--
-- TOC entry 3727 (class 1259 OID 61527476)
-- Dependencies: 339
-- Name: tipo_categoria_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX tipo_categoria_id ON tipo_categoria USING btree (id);


--
-- TOC entry 3728 (class 1259 OID 61527477)
-- Dependencies: 339
-- Name: tipo_categoria_id_tipo_categoria_pai; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX tipo_categoria_id_tipo_categoria_pai ON tipo_categoria USING btree (id_tipo_categoria_pai);


--
-- TOC entry 3729 (class 1259 OID 61527478)
-- Dependencies: 339
-- Name: tipo_categoria_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX tipo_categoria_nome ON tipo_categoria USING btree (nome);


--
-- TOC entry 3715 (class 1259 OID 61527474)
-- Dependencies: 337
-- Name: validator_constante_textual; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX validator_constante_textual ON validator USING btree (constante_textual);


--
-- TOC entry 3716 (class 1259 OID 61527475)
-- Dependencies: 337
-- Name: validator_constante_textual_descricao; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX validator_constante_textual_descricao ON validator USING btree (constante_textual_descricao);


--
-- TOC entry 3717 (class 1259 OID 61527470)
-- Dependencies: 337
-- Name: validator_id; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX validator_id ON validator USING btree (id);


--
-- TOC entry 3718 (class 1259 OID 61527471)
-- Dependencies: 337
-- Name: validator_id_categoria; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX validator_id_categoria ON validator USING btree (id_categoria);


--
-- TOC entry 3719 (class 1259 OID 61527472)
-- Dependencies: 337
-- Name: validator_id_componente; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE INDEX validator_id_componente ON validator USING btree (id_componente);


--
-- TOC entry 3720 (class 1259 OID 61527473)
-- Dependencies: 337
-- Name: validator_nome; Type: INDEX; Schema: basico; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX validator_nome ON validator USING btree (nome);


SET search_path = basico_acao_aplic_assoc_visao, pg_catalog;

--
-- TOC entry 3707 (class 1259 OID 61527466)
-- Dependencies: 335
-- Name: assoccl_atrib_met_rec_post_id; Type: INDEX; Schema: basico_acao_aplic_assoc_visao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_atrib_met_rec_post_id ON assoccl_atrib_met_rec_post USING btree (id);


--
-- TOC entry 3708 (class 1259 OID 61527467)
-- Dependencies: 335
-- Name: assoccl_atrib_met_rec_post_id_assoc_visao_ref_post; Type: INDEX; Schema: basico_acao_aplic_assoc_visao; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_atrib_met_rec_post_id_assoc_visao_ref_post ON assoccl_atrib_met_rec_post USING btree (id_assoc_visao_ref_post);


--
-- TOC entry 3709 (class 1259 OID 61527468)
-- Dependencies: 335
-- Name: assoccl_atrib_met_rec_post_id_atributo_metodo_recup_post; Type: INDEX; Schema: basico_acao_aplic_assoc_visao; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_atrib_met_rec_post_id_atributo_metodo_recup_post ON assoccl_atrib_met_rec_post USING btree (id_atributo_metodo_recup_post);


--
-- TOC entry 3710 (class 1259 OID 61527469)
-- Dependencies: 335
-- Name: assoccl_atrib_met_rec_post_ordem; Type: INDEX; Schema: basico_acao_aplic_assoc_visao; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_atrib_met_rec_post_ordem ON assoccl_atrib_met_rec_post USING btree (ordem);


--
-- TOC entry 3699 (class 1259 OID 61527464)
-- Dependencies: 333
-- Name: atributo_metodo_recup_post_atributo; Type: INDEX; Schema: basico_acao_aplic_assoc_visao; Owner: -; Tablespace: 
--

CREATE INDEX atributo_metodo_recup_post_atributo ON atributo_metodo_recup_post USING btree (atributo);


--
-- TOC entry 3700 (class 1259 OID 61527462)
-- Dependencies: 333
-- Name: atributo_metodo_recup_post_id; Type: INDEX; Schema: basico_acao_aplic_assoc_visao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX atributo_metodo_recup_post_id ON atributo_metodo_recup_post USING btree (id);


--
-- TOC entry 3701 (class 1259 OID 61527463)
-- Dependencies: 333
-- Name: atributo_metodo_recup_post_id_categoria; Type: INDEX; Schema: basico_acao_aplic_assoc_visao; Owner: -; Tablespace: 
--

CREATE INDEX atributo_metodo_recup_post_id_categoria ON atributo_metodo_recup_post USING btree (id_categoria);


--
-- TOC entry 3702 (class 1259 OID 61527465)
-- Dependencies: 333
-- Name: atributo_metodo_recup_post_metodo_recuperacao; Type: INDEX; Schema: basico_acao_aplic_assoc_visao; Owner: -; Tablespace: 
--

CREATE INDEX atributo_metodo_recup_post_metodo_recuperacao ON atributo_metodo_recup_post USING btree (metodo_recuperacao);


SET search_path = basico_acao_aplicacao, pg_catalog;

--
-- TOC entry 3690 (class 1259 OID 61527458)
-- Dependencies: 331
-- Name: assoc_visao_constante_textual; Type: INDEX; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_visao_constante_textual ON assoc_visao USING btree (constante_textual);


--
-- TOC entry 3691 (class 1259 OID 61527461)
-- Dependencies: 331
-- Name: assoc_visao_constante_textual_mensagem; Type: INDEX; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_visao_constante_textual_mensagem ON assoc_visao USING btree (constante_textual_mensagem);


--
-- TOC entry 3692 (class 1259 OID 61527460)
-- Dependencies: 331
-- Name: assoc_visao_constante_textual_subtitulo; Type: INDEX; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_visao_constante_textual_subtitulo ON assoc_visao USING btree (constante_textual_subtitulo);


--
-- TOC entry 3693 (class 1259 OID 61527459)
-- Dependencies: 331
-- Name: assoc_visao_constante_textual_titulo; Type: INDEX; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_visao_constante_textual_titulo ON assoc_visao USING btree (constante_textual_titulo);


--
-- TOC entry 3694 (class 1259 OID 61527455)
-- Dependencies: 331
-- Name: assoc_visao_id; Type: INDEX; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_visao_id ON assoc_visao USING btree (id);


--
-- TOC entry 3695 (class 1259 OID 61527457)
-- Dependencies: 331
-- Name: assoc_visao_id_acao_aplicacao; Type: INDEX; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_visao_id_acao_aplicacao ON assoc_visao USING btree (id_acao_aplicacao);


--
-- TOC entry 3696 (class 1259 OID 61527456)
-- Dependencies: 331
-- Name: assoc_visao_id_categoria; Type: INDEX; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_visao_id_categoria ON assoc_visao USING btree (id_categoria);


--
-- TOC entry 3682 (class 1259 OID 61527451)
-- Dependencies: 329
-- Name: assoccl_metodo_validacao_id; Type: INDEX; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_metodo_validacao_id ON assoccl_metodo_validacao USING btree (id);


--
-- TOC entry 3683 (class 1259 OID 61527452)
-- Dependencies: 329
-- Name: assoccl_metodo_validacao_id_acao_aplicacao; Type: INDEX; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_metodo_validacao_id_acao_aplicacao ON assoccl_metodo_validacao USING btree (id_acao_aplicacao);


--
-- TOC entry 3684 (class 1259 OID 61527453)
-- Dependencies: 329
-- Name: assoccl_metodo_validacao_id_metodo_validacao; Type: INDEX; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_metodo_validacao_id_metodo_validacao ON assoccl_metodo_validacao USING btree (id_metodo_validacao);


--
-- TOC entry 3685 (class 1259 OID 61527454)
-- Dependencies: 329
-- Name: assoccl_metodo_validacao_id_perfil; Type: INDEX; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_metodo_validacao_id_perfil ON assoccl_metodo_validacao USING btree (id_perfil);


--
-- TOC entry 3675 (class 1259 OID 61527448)
-- Dependencies: 327
-- Name: assoccl_perfil_id; Type: INDEX; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_perfil_id ON assoccl_perfil USING btree (id);


--
-- TOC entry 3676 (class 1259 OID 61527449)
-- Dependencies: 327
-- Name: assoccl_perfil_id_acao_aplicacao; Type: INDEX; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_perfil_id_acao_aplicacao ON assoccl_perfil USING btree (id_acao_aplicacao);


--
-- TOC entry 3677 (class 1259 OID 61527450)
-- Dependencies: 327
-- Name: assoccl_perfil_id_perfil; Type: INDEX; Schema: basico_acao_aplicacao; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_perfil_id_perfil ON assoccl_perfil USING btree (id_perfil);


SET search_path = basico_acao_evento, pg_catalog;

--
-- TOC entry 3668 (class 1259 OID 61527445)
-- Dependencies: 325
-- Name: assoccl_include_id; Type: INDEX; Schema: basico_acao_evento; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_include_id ON assoccl_include USING btree (id);


--
-- TOC entry 3669 (class 1259 OID 61527446)
-- Dependencies: 325
-- Name: assoccl_include_id_acao_evento; Type: INDEX; Schema: basico_acao_evento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_acao_evento ON assoccl_include USING btree (id_acao_evento);


--
-- TOC entry 3670 (class 1259 OID 61527447)
-- Dependencies: 325
-- Name: assoccl_include_id_include; Type: INDEX; Schema: basico_acao_evento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_include ON assoccl_include USING btree (id_include);


SET search_path = basico_ajuda, pg_catalog;

--
-- TOC entry 3661 (class 1259 OID 61527442)
-- Dependencies: 323
-- Name: assoccl_link_id; Type: INDEX; Schema: basico_ajuda; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_link_id ON assoccl_link USING btree (id);


--
-- TOC entry 3662 (class 1259 OID 61527443)
-- Dependencies: 323
-- Name: assoccl_link_id_ajuda; Type: INDEX; Schema: basico_ajuda; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_link_id_ajuda ON assoccl_link USING btree (id_ajuda);


--
-- TOC entry 3663 (class 1259 OID 61527444)
-- Dependencies: 323
-- Name: assoccl_link_id_link; Type: INDEX; Schema: basico_ajuda; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_link_id_link ON assoccl_link USING btree (id_link);


SET search_path = basico_assoc_banco, pg_catalog;

--
-- TOC entry 3649 (class 1259 OID 61527441)
-- Dependencies: 321
-- Name: assoc_tipo_conta_codigo; Type: INDEX; Schema: basico_assoc_banco; Owner: -; Tablespace: 
--

CREATE INDEX assoc_tipo_conta_codigo ON assoc_tipo_conta USING btree (codigo);


--
-- TOC entry 3650 (class 1259 OID 61527440)
-- Dependencies: 321
-- Name: assoc_tipo_conta_constante_textual; Type: INDEX; Schema: basico_assoc_banco; Owner: -; Tablespace: 
--

CREATE INDEX assoc_tipo_conta_constante_textual ON assoc_tipo_conta USING btree (constante_textual);


--
-- TOC entry 3651 (class 1259 OID 61527436)
-- Dependencies: 321
-- Name: assoc_tipo_conta_id; Type: INDEX; Schema: basico_assoc_banco; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_tipo_conta_id ON assoc_tipo_conta USING btree (id);


--
-- TOC entry 3652 (class 1259 OID 61527437)
-- Dependencies: 321
-- Name: assoc_tipo_conta_id_assoc_banco; Type: INDEX; Schema: basico_assoc_banco; Owner: -; Tablespace: 
--

CREATE INDEX assoc_tipo_conta_id_assoc_banco ON assoc_tipo_conta USING btree (id_assoc_banco);


--
-- TOC entry 3653 (class 1259 OID 61527438)
-- Dependencies: 321
-- Name: assoc_tipo_conta_id_categoria; Type: INDEX; Schema: basico_assoc_banco; Owner: -; Tablespace: 
--

CREATE INDEX assoc_tipo_conta_id_categoria ON assoc_tipo_conta USING btree (id_categoria);


--
-- TOC entry 3654 (class 1259 OID 61527439)
-- Dependencies: 321
-- Name: assoc_tipo_conta_nome; Type: INDEX; Schema: basico_assoc_banco; Owner: -; Tablespace: 
--

CREATE INDEX assoc_tipo_conta_nome ON assoc_tipo_conta USING btree (nome);


SET search_path = basico_assoc_chave_estrangeira, pg_catalog;

--
-- TOC entry 3644 (class 1259 OID 61527435)
-- Dependencies: 319
-- Name: relacao_campo_origem; Type: INDEX; Schema: basico_assoc_chave_estrangeira; Owner: -; Tablespace: 
--

CREATE INDEX relacao_campo_origem ON relacao USING btree (campo_origem);


--
-- TOC entry 3645 (class 1259 OID 61527433)
-- Dependencies: 319
-- Name: relacao_id; Type: INDEX; Schema: basico_assoc_chave_estrangeira; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX relacao_id ON relacao USING btree (id);


--
-- TOC entry 3646 (class 1259 OID 61527434)
-- Dependencies: 319
-- Name: relacao_tabela_origem; Type: INDEX; Schema: basico_assoc_chave_estrangeira; Owner: -; Tablespace: 
--

CREATE INDEX relacao_tabela_origem ON relacao USING btree (tabela_origem);


SET search_path = basico_assoc_dados_profis, pg_catalog;

--
-- TOC entry 3635 (class 1259 OID 61527430)
-- Dependencies: 317
-- Name: assoccl_area_conhecimento_id; Type: INDEX; Schema: basico_assoc_dados_profis; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_area_conhecimento_id ON assoccl_area_conhecimento USING btree (id);


--
-- TOC entry 3636 (class 1259 OID 61527431)
-- Dependencies: 317
-- Name: assoccl_area_conhecimento_id_area_conhecimento; Type: INDEX; Schema: basico_assoc_dados_profis; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_area_conhecimento_id_area_conhecimento ON assoccl_area_conhecimento USING btree (id_area_conhecimento);


--
-- TOC entry 3637 (class 1259 OID 61527432)
-- Dependencies: 317
-- Name: assoccl_area_conhecimento_id_assoc_dados_profissionais; Type: INDEX; Schema: basico_assoc_dados_profis; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_area_conhecimento_id_assoc_dados_profissionais ON assoccl_area_conhecimento USING btree (id_assoc_dados_profissionais);


SET search_path = basico_assoccl_pessoa_perfil, pg_catalog;

--
-- TOC entry 3631 (class 1259 OID 61527428)
-- Dependencies: 315
-- Name: assoc_dados_id; Type: INDEX; Schema: basico_assoccl_pessoa_perfil; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_dados_id ON assoc_dados USING btree (id);


--
-- TOC entry 3632 (class 1259 OID 61527429)
-- Dependencies: 315
-- Name: assoc_dados_id_assoccl_pessoa_perfil; Type: INDEX; Schema: basico_assoccl_pessoa_perfil; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_dados_id_assoccl_pessoa_perfil ON assoc_dados USING btree (id_assoccl_pessoa_perfil);


SET search_path = basico_assoccl_tipo_vinculo, pg_catalog;

--
-- TOC entry 3623 (class 1259 OID 61527422)
-- Dependencies: 313
-- Name: assoc_dados_id; Type: INDEX; Schema: basico_assoccl_tipo_vinculo; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_dados_id ON assoc_dados USING btree (id);


--
-- TOC entry 3624 (class 1259 OID 61527423)
-- Dependencies: 313
-- Name: assoc_dados_id_assoccl_vinculo_profissional; Type: INDEX; Schema: basico_assoccl_tipo_vinculo; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_dados_id_assoccl_vinculo_profissional ON assoc_dados USING btree (id_assoccl_vinculo_profissional);


--
-- TOC entry 3625 (class 1259 OID 61527426)
-- Dependencies: 313
-- Name: assoc_dados_id_pessoa_juridica_vinculo; Type: INDEX; Schema: basico_assoccl_tipo_vinculo; Owner: -; Tablespace: 
--

CREATE INDEX assoc_dados_id_pessoa_juridica_vinculo ON assoc_dados USING btree (id_pessoa_juridica_vinculo);


--
-- TOC entry 3626 (class 1259 OID 61527424)
-- Dependencies: 313
-- Name: assoc_dados_id_profissao; Type: INDEX; Schema: basico_assoccl_tipo_vinculo; Owner: -; Tablespace: 
--

CREATE INDEX assoc_dados_id_profissao ON assoc_dados USING btree (id_profissao);


--
-- TOC entry 3627 (class 1259 OID 61527425)
-- Dependencies: 313
-- Name: assoc_dados_id_vinculo_empregaticio; Type: INDEX; Schema: basico_assoccl_tipo_vinculo; Owner: -; Tablespace: 
--

CREATE INDEX assoc_dados_id_vinculo_empregaticio ON assoc_dados USING btree (id_vinculo_empregaticio);


--
-- TOC entry 3628 (class 1259 OID 61527427)
-- Dependencies: 313
-- Name: assoc_dados_matricula; Type: INDEX; Schema: basico_assoccl_tipo_vinculo; Owner: -; Tablespace: 
--

CREATE INDEX assoc_dados_matricula ON assoc_dados USING btree (matricula);


SET search_path = basico_categoria, pg_catalog;

--
-- TOC entry 3616 (class 1259 OID 61527421)
-- Dependencies: 311
-- Name: assoc_chave_estrangeira_campo_estrangeiro; Type: INDEX; Schema: basico_categoria; Owner: -; Tablespace: 
--

CREATE INDEX assoc_chave_estrangeira_campo_estrangeiro ON assoc_chave_estrangeira USING btree (campo_estrangeiro);


--
-- TOC entry 3617 (class 1259 OID 61527417)
-- Dependencies: 311
-- Name: assoc_chave_estrangeira_id; Type: INDEX; Schema: basico_categoria; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_chave_estrangeira_id ON assoc_chave_estrangeira USING btree (id);


--
-- TOC entry 3618 (class 1259 OID 61527419)
-- Dependencies: 311
-- Name: assoc_chave_estrangeira_id_categoria; Type: INDEX; Schema: basico_categoria; Owner: -; Tablespace: 
--

CREATE INDEX assoc_chave_estrangeira_id_categoria ON assoc_chave_estrangeira USING btree (id_categoria);


--
-- TOC entry 3619 (class 1259 OID 61527418)
-- Dependencies: 311
-- Name: assoc_chave_estrangeira_id_modulo; Type: INDEX; Schema: basico_categoria; Owner: -; Tablespace: 
--

CREATE INDEX assoc_chave_estrangeira_id_modulo ON assoc_chave_estrangeira USING btree (id_modulo);


--
-- TOC entry 3620 (class 1259 OID 61527420)
-- Dependencies: 311
-- Name: assoc_chave_estrangeira_tabela_estrangeira; Type: INDEX; Schema: basico_categoria; Owner: -; Tablespace: 
--

CREATE INDEX assoc_chave_estrangeira_tabela_estrangeira ON assoc_chave_estrangeira USING btree (tabela_estrangeira);


--
-- TOC entry 3612 (class 1259 OID 61527415)
-- Dependencies: 309
-- Name: assoc_evento_acao_id; Type: INDEX; Schema: basico_categoria; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_evento_acao_id ON assoc_evento_acao USING btree (id);


--
-- TOC entry 3613 (class 1259 OID 61527416)
-- Dependencies: 309
-- Name: assoc_evento_acao_id_categoria; Type: INDEX; Schema: basico_categoria; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_evento_acao_id_categoria ON assoc_evento_acao USING btree (id_categoria);


SET search_path = basico_componente, pg_catalog;

--
-- TOC entry 3605 (class 1259 OID 61527412)
-- Dependencies: 307
-- Name: assoccl_include_id; Type: INDEX; Schema: basico_componente; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_include_id ON assoccl_include USING btree (id);


--
-- TOC entry 3606 (class 1259 OID 61527413)
-- Dependencies: 307
-- Name: assoccl_include_id_componente; Type: INDEX; Schema: basico_componente; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_componente ON assoccl_include USING btree (id_componente);


--
-- TOC entry 3607 (class 1259 OID 61527414)
-- Dependencies: 307
-- Name: assoccl_include_id_include; Type: INDEX; Schema: basico_componente; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_include ON assoccl_include USING btree (id_include);


SET search_path = basico_contato, pg_catalog;

--
-- TOC entry 3595 (class 1259 OID 61527411)
-- Dependencies: 305
-- Name: cpg_email_email; Type: INDEX; Schema: basico_contato; Owner: -; Tablespace: 
--

CREATE INDEX cpg_email_email ON cpg_email USING btree (email);


--
-- TOC entry 3596 (class 1259 OID 61527406)
-- Dependencies: 305
-- Name: cpg_email_id; Type: INDEX; Schema: basico_contato; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX cpg_email_id ON cpg_email USING btree (id);


--
-- TOC entry 3597 (class 1259 OID 61527407)
-- Dependencies: 305
-- Name: cpg_email_id_categoria; Type: INDEX; Schema: basico_contato; Owner: -; Tablespace: 
--

CREATE INDEX cpg_email_id_categoria ON cpg_email USING btree (id_categoria);


--
-- TOC entry 3598 (class 1259 OID 61527408)
-- Dependencies: 305
-- Name: cpg_email_id_generico_proprietario; Type: INDEX; Schema: basico_contato; Owner: -; Tablespace: 
--

CREATE INDEX cpg_email_id_generico_proprietario ON cpg_email USING btree (id_generico_proprietario);


--
-- TOC entry 3599 (class 1259 OID 61527409)
-- Dependencies: 305
-- Name: cpg_email_nome; Type: INDEX; Schema: basico_contato; Owner: -; Tablespace: 
--

CREATE INDEX cpg_email_nome ON cpg_email USING btree (nome);


--
-- TOC entry 3600 (class 1259 OID 61527410)
-- Dependencies: 305
-- Name: cpg_email_unique_id; Type: INDEX; Schema: basico_contato; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX cpg_email_unique_id ON cpg_email USING btree (unique_id);


--
-- TOC entry 3587 (class 1259 OID 61527402)
-- Dependencies: 303
-- Name: cpg_telefone_id; Type: INDEX; Schema: basico_contato; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX cpg_telefone_id ON cpg_telefone USING btree (id);


--
-- TOC entry 3588 (class 1259 OID 61527403)
-- Dependencies: 303
-- Name: cpg_telefone_id_categoria; Type: INDEX; Schema: basico_contato; Owner: -; Tablespace: 
--

CREATE INDEX cpg_telefone_id_categoria ON cpg_telefone USING btree (id_categoria);


--
-- TOC entry 3589 (class 1259 OID 61527404)
-- Dependencies: 303
-- Name: cpg_telefone_id_generico_proprietario; Type: INDEX; Schema: basico_contato; Owner: -; Tablespace: 
--

CREATE INDEX cpg_telefone_id_generico_proprietario ON cpg_telefone USING btree (id_generico_proprietario);


--
-- TOC entry 3590 (class 1259 OID 61527405)
-- Dependencies: 303
-- Name: cpg_telefone_nome; Type: INDEX; Schema: basico_contato; Owner: -; Tablespace: 
--

CREATE INDEX cpg_telefone_nome ON cpg_telefone USING btree (nome);


SET search_path = basico_cvc, pg_catalog;

--
-- TOC entry 3580 (class 1259 OID 61527399)
-- Dependencies: 301
-- Name: cvc_id; Type: INDEX; Schema: basico_cvc; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX cvc_id ON cvc USING btree (id);


--
-- TOC entry 3581 (class 1259 OID 61527400)
-- Dependencies: 301
-- Name: cvc_id_assoc_chave_estrangeira; Type: INDEX; Schema: basico_cvc; Owner: -; Tablespace: 
--

CREATE INDEX cvc_id_assoc_chave_estrangeira ON cvc USING btree (id_assoc_chave_estrangeira);


--
-- TOC entry 3582 (class 1259 OID 61527401)
-- Dependencies: 301
-- Name: cvc_id_generico; Type: INDEX; Schema: basico_cvc; Owner: -; Tablespace: 
--

CREATE INDEX cvc_id_generico ON cvc USING btree (id_generico);


SET search_path = basico_dados_academicos, pg_catalog;

--
-- TOC entry 3576 (class 1259 OID 61527398)
-- Dependencies: 299
-- Name: titulacao_constante_textual; Type: INDEX; Schema: basico_dados_academicos; Owner: -; Tablespace: 
--

CREATE INDEX titulacao_constante_textual ON titulacao USING btree (constante_textual);


--
-- TOC entry 3577 (class 1259 OID 61527395)
-- Dependencies: 299
-- Name: titulacao_id; Type: INDEX; Schema: basico_dados_academicos; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX titulacao_id ON titulacao USING btree (id);


--
-- TOC entry 3578 (class 1259 OID 61527396)
-- Dependencies: 299
-- Name: titulacao_id_categoria; Type: INDEX; Schema: basico_dados_academicos; Owner: -; Tablespace: 
--

CREATE INDEX titulacao_id_categoria ON titulacao USING btree (id_categoria);


--
-- TOC entry 3579 (class 1259 OID 61527397)
-- Dependencies: 299
-- Name: titulacao_nome; Type: INDEX; Schema: basico_dados_academicos; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX titulacao_nome ON titulacao USING btree (nome);


SET search_path = basico_dados_biometricos, pg_catalog;

--
-- TOC entry 3569 (class 1259 OID 61527392)
-- Dependencies: 297
-- Name: assoc_pessoa_id; Type: INDEX; Schema: basico_dados_biometricos; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_pessoa_id ON assoc_pessoa USING btree (id);


--
-- TOC entry 3570 (class 1259 OID 61527394)
-- Dependencies: 297
-- Name: assoc_pessoa_id_categoria_sexo; Type: INDEX; Schema: basico_dados_biometricos; Owner: -; Tablespace: 
--

CREATE INDEX assoc_pessoa_id_categoria_sexo ON assoc_pessoa USING btree (id_categoria_sexo);


--
-- TOC entry 3571 (class 1259 OID 61527393)
-- Dependencies: 297
-- Name: assoc_pessoa_id_dados_biometricos; Type: INDEX; Schema: basico_dados_biometricos; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_pessoa_id_dados_biometricos ON assoc_pessoa USING btree (id_dados_biometricos);


SET search_path = basico_dados_profissionais, pg_catalog;

--
-- TOC entry 3561 (class 1259 OID 61527391)
-- Dependencies: 295
-- Name: regime_trabalho_codigo; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE INDEX regime_trabalho_codigo ON regime_trabalho USING btree (codigo);


--
-- TOC entry 3562 (class 1259 OID 61527390)
-- Dependencies: 295
-- Name: regime_trabalho_constante_textual; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE INDEX regime_trabalho_constante_textual ON regime_trabalho USING btree (constante_textual);


--
-- TOC entry 3563 (class 1259 OID 61527386)
-- Dependencies: 295
-- Name: regime_trabalho_id; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX regime_trabalho_id ON regime_trabalho USING btree (id);


--
-- TOC entry 3564 (class 1259 OID 61527388)
-- Dependencies: 295
-- Name: regime_trabalho_id_categoria; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE INDEX regime_trabalho_id_categoria ON regime_trabalho USING btree (id_categoria);


--
-- TOC entry 3565 (class 1259 OID 61527387)
-- Dependencies: 295
-- Name: regime_trabalho_id_regime_trabalho_pai; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE INDEX regime_trabalho_id_regime_trabalho_pai ON regime_trabalho USING btree (id_regime_trabalho_pai);


--
-- TOC entry 3566 (class 1259 OID 61527389)
-- Dependencies: 295
-- Name: regime_trabalho_nome; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE INDEX regime_trabalho_nome ON regime_trabalho USING btree (nome);


--
-- TOC entry 3552 (class 1259 OID 61527385)
-- Dependencies: 293
-- Name: tipo_vinculo_codigo; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE INDEX tipo_vinculo_codigo ON tipo_vinculo USING btree (codigo);


--
-- TOC entry 3553 (class 1259 OID 61527384)
-- Dependencies: 293
-- Name: tipo_vinculo_constante_textual; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE INDEX tipo_vinculo_constante_textual ON tipo_vinculo USING btree (constante_textual);


--
-- TOC entry 3554 (class 1259 OID 61527381)
-- Dependencies: 293
-- Name: tipo_vinculo_id; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX tipo_vinculo_id ON tipo_vinculo USING btree (id);


--
-- TOC entry 3555 (class 1259 OID 61527382)
-- Dependencies: 293
-- Name: tipo_vinculo_id_categoria; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE INDEX tipo_vinculo_id_categoria ON tipo_vinculo USING btree (id_categoria);


--
-- TOC entry 3556 (class 1259 OID 61527383)
-- Dependencies: 293
-- Name: tipo_vinculo_nome; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE INDEX tipo_vinculo_nome ON tipo_vinculo USING btree (nome);


--
-- TOC entry 3545 (class 1259 OID 61527380)
-- Dependencies: 291
-- Name: vinculo_empregaticio_codigo; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE INDEX vinculo_empregaticio_codigo ON vinculo_empregaticio USING btree (codigo);


--
-- TOC entry 3546 (class 1259 OID 61527379)
-- Dependencies: 291
-- Name: vinculo_empregaticio_constante_textual; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE INDEX vinculo_empregaticio_constante_textual ON vinculo_empregaticio USING btree (constante_textual);


--
-- TOC entry 3547 (class 1259 OID 61527376)
-- Dependencies: 291
-- Name: vinculo_empregaticio_id; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX vinculo_empregaticio_id ON vinculo_empregaticio USING btree (id);


--
-- TOC entry 3548 (class 1259 OID 61527377)
-- Dependencies: 291
-- Name: vinculo_empregaticio_id_categoria; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE INDEX vinculo_empregaticio_id_categoria ON vinculo_empregaticio USING btree (id_categoria);


--
-- TOC entry 3549 (class 1259 OID 61527378)
-- Dependencies: 291
-- Name: vinculo_empregaticio_nome; Type: INDEX; Schema: basico_dados_profissionais; Owner: -; Tablespace: 
--

CREATE INDEX vinculo_empregaticio_nome ON vinculo_empregaticio USING btree (nome);


SET search_path = basico_filter, pg_catalog;

--
-- TOC entry 3535 (class 1259 OID 61527353)
-- Dependencies: 281
-- Name: grupo_constante_textual; Type: INDEX; Schema: basico_filter; Owner: -; Tablespace: 
--

CREATE INDEX grupo_constante_textual ON grupo USING btree (constante_textual);


--
-- TOC entry 3536 (class 1259 OID 61527350)
-- Dependencies: 281
-- Name: grupo_id; Type: INDEX; Schema: basico_filter; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX grupo_id ON grupo USING btree (id);


--
-- TOC entry 3537 (class 1259 OID 61527351)
-- Dependencies: 281
-- Name: grupo_id_categoria; Type: INDEX; Schema: basico_filter; Owner: -; Tablespace: 
--

CREATE INDEX grupo_id_categoria ON grupo USING btree (id_categoria);


--
-- TOC entry 3538 (class 1259 OID 61527352)
-- Dependencies: 281
-- Name: grupo_nome; Type: INDEX; Schema: basico_filter; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX grupo_nome ON grupo USING btree (nome);


SET search_path = basico_filter_grupo, pg_catalog;

--
-- TOC entry 3529 (class 1259 OID 61527346)
-- Dependencies: 279
-- Name: assocag_grupo_id; Type: INDEX; Schema: basico_filter_grupo; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assocag_grupo_id ON assocag_grupo USING btree (id);


--
-- TOC entry 3530 (class 1259 OID 61527348)
-- Dependencies: 279
-- Name: assocag_grupo_id_filter; Type: INDEX; Schema: basico_filter_grupo; Owner: -; Tablespace: 
--

CREATE INDEX assocag_grupo_id_filter ON assocag_grupo USING btree (id_filter);


--
-- TOC entry 3531 (class 1259 OID 61527347)
-- Dependencies: 279
-- Name: assocag_grupo_id_filter_grupo; Type: INDEX; Schema: basico_filter_grupo; Owner: -; Tablespace: 
--

CREATE INDEX assocag_grupo_id_filter_grupo ON assocag_grupo USING btree (id_filter_grupo);


--
-- TOC entry 3532 (class 1259 OID 61527349)
-- Dependencies: 279
-- Name: assocag_grupo_id_filter_grupo_assoc; Type: INDEX; Schema: basico_filter_grupo; Owner: -; Tablespace: 
--

CREATE INDEX assocag_grupo_id_filter_grupo_assoc ON assocag_grupo USING btree (id_filter_grupo_assoc);


SET search_path = basico_form_assoccl_elem_grupo, pg_catalog;

--
-- TOC entry 3522 (class 1259 OID 61527343)
-- Dependencies: 277
-- Name: assoccl_decorator_id; Type: INDEX; Schema: basico_form_assoccl_elem_grupo; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_decorator_id ON assoccl_decorator USING btree (id);


--
-- TOC entry 3523 (class 1259 OID 61527345)
-- Dependencies: 277
-- Name: assoccl_decorator_id_decorator; Type: INDEX; Schema: basico_form_assoccl_elem_grupo; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_decorator_id_decorator ON assoccl_decorator USING btree (id_decorator);


--
-- TOC entry 3524 (class 1259 OID 61527344)
-- Dependencies: 277
-- Name: assoccl_decorator_id_grupo; Type: INDEX; Schema: basico_form_assoccl_elem_grupo; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_decorator_id_grupo ON assoccl_decorator USING btree (id_grupo);


SET search_path = basico_form_assoccl_elemento, pg_catalog;

--
-- TOC entry 3515 (class 1259 OID 61527340)
-- Dependencies: 275
-- Name: assoccl_decorator_id; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_decorator_id ON assoccl_decorator USING btree (id);


--
-- TOC entry 3516 (class 1259 OID 61527341)
-- Dependencies: 275
-- Name: assoccl_decorator_id_assoccl_elemento; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_decorator_id_assoccl_elemento ON assoccl_decorator USING btree (id_assoccl_elemento);


--
-- TOC entry 3517 (class 1259 OID 61527342)
-- Dependencies: 275
-- Name: assoccl_decorator_id_decorator; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_decorator_id_decorator ON assoccl_decorator USING btree (id_decorator);


--
-- TOC entry 3508 (class 1259 OID 61527337)
-- Dependencies: 273
-- Name: assoccl_evento_id; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_evento_id ON assoccl_evento USING btree (id);


--
-- TOC entry 3509 (class 1259 OID 61527338)
-- Dependencies: 273
-- Name: assoccl_evento_id_assoccl_elemento; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_evento_id_assoccl_elemento ON assoccl_evento USING btree (id_assoccl_elemento);


--
-- TOC entry 3510 (class 1259 OID 61527339)
-- Dependencies: 273
-- Name: assoccl_evento_id_evento; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_evento_id_evento ON assoccl_evento USING btree (id_evento);


--
-- TOC entry 3501 (class 1259 OID 61527334)
-- Dependencies: 271
-- Name: assoccl_filter_id; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_filter_id ON assoccl_filter USING btree (id);


--
-- TOC entry 3502 (class 1259 OID 61527335)
-- Dependencies: 271
-- Name: assoccl_filter_id_assoccl_elemento; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_filter_id_assoccl_elemento ON assoccl_filter USING btree (id_assoccl_elemento);


--
-- TOC entry 3503 (class 1259 OID 61527336)
-- Dependencies: 271
-- Name: assoccl_filter_id_filter; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_filter_id_filter ON assoccl_filter USING btree (id_filter);


--
-- TOC entry 3494 (class 1259 OID 61527331)
-- Dependencies: 269
-- Name: assoccl_include_id; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_include_id ON assoccl_include USING btree (id);


--
-- TOC entry 3495 (class 1259 OID 61527332)
-- Dependencies: 269
-- Name: assoccl_include_id_assoccl_elemento; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_assoccl_elemento ON assoccl_include USING btree (id_assoccl_elemento);


--
-- TOC entry 3496 (class 1259 OID 61527333)
-- Dependencies: 269
-- Name: assoccl_include_id_include; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_include ON assoccl_include USING btree (id_include);


--
-- TOC entry 3487 (class 1259 OID 61527328)
-- Dependencies: 267
-- Name: assoccl_validator_id; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_validator_id ON assoccl_validator USING btree (id);


--
-- TOC entry 3488 (class 1259 OID 61527329)
-- Dependencies: 267
-- Name: assoccl_validator_id_assoccl_elemento; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_validator_id_assoccl_elemento ON assoccl_validator USING btree (id_assoccl_elemento);


--
-- TOC entry 3489 (class 1259 OID 61527330)
-- Dependencies: 267
-- Name: assoccl_validator_id_validator; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_validator_id_validator ON assoccl_validator USING btree (id_validator);


--
-- TOC entry 3481 (class 1259 OID 61527326)
-- Dependencies: 265
-- Name: grupo_constante_textual; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE INDEX grupo_constante_textual ON grupo USING btree (constante_textual);


--
-- TOC entry 3482 (class 1259 OID 61527327)
-- Dependencies: 265
-- Name: grupo_constante_textual_label; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE INDEX grupo_constante_textual_label ON grupo USING btree (constante_textual_label);


--
-- TOC entry 3483 (class 1259 OID 61527324)
-- Dependencies: 265
-- Name: grupo_id; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX grupo_id ON grupo USING btree (id);


--
-- TOC entry 3484 (class 1259 OID 61527325)
-- Dependencies: 265
-- Name: grupo_nome; Type: INDEX; Schema: basico_form_assoccl_elemento; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX grupo_nome ON grupo USING btree (nome);


SET search_path = basico_form_decorator_grupo, pg_catalog;

--
-- TOC entry 3475 (class 1259 OID 61527320)
-- Dependencies: 263
-- Name: assocag_grupo_id; Type: INDEX; Schema: basico_form_decorator_grupo; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assocag_grupo_id ON assocag_grupo USING btree (id);


--
-- TOC entry 3476 (class 1259 OID 61527321)
-- Dependencies: 263
-- Name: assocag_grupo_id_form_decorator_grupo; Type: INDEX; Schema: basico_form_decorator_grupo; Owner: -; Tablespace: 
--

CREATE INDEX assocag_grupo_id_form_decorator_grupo ON assocag_grupo USING btree (id_form_decorator_grupo);


--
-- TOC entry 3477 (class 1259 OID 61527323)
-- Dependencies: 263
-- Name: assocag_grupo_id_form_decorator_grupo_assoc; Type: INDEX; Schema: basico_form_decorator_grupo; Owner: -; Tablespace: 
--

CREATE INDEX assocag_grupo_id_form_decorator_grupo_assoc ON assocag_grupo USING btree (id_form_decorator_grupo_assoc);


--
-- TOC entry 3478 (class 1259 OID 61527322)
-- Dependencies: 263
-- Name: assocag_grupo_id_formulario_decorator; Type: INDEX; Schema: basico_form_decorator_grupo; Owner: -; Tablespace: 
--

CREATE INDEX assocag_grupo_id_formulario_decorator ON assocag_grupo USING btree (id_formulario_decorator);


SET search_path = basico_formulario, pg_catalog;

--
-- TOC entry 3467 (class 1259 OID 61527316)
-- Dependencies: 261
-- Name: assoccl_decorator_id; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_decorator_id ON assoccl_decorator USING btree (id);


--
-- TOC entry 3468 (class 1259 OID 61527318)
-- Dependencies: 261
-- Name: assoccl_decorator_id_decorator; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_decorator_id_decorator ON assoccl_decorator USING btree (id_decorator);


--
-- TOC entry 3469 (class 1259 OID 61527319)
-- Dependencies: 261
-- Name: assoccl_decorator_id_decorator_grupo; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_decorator_id_decorator_grupo ON assoccl_decorator USING btree (id_decorator_grupo);


--
-- TOC entry 3470 (class 1259 OID 61527317)
-- Dependencies: 261
-- Name: assoccl_decorator_id_formulario; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_decorator_id_formulario ON assoccl_decorator USING btree (id_formulario);


--
-- TOC entry 3457 (class 1259 OID 61527315)
-- Dependencies: 259
-- Name: assoccl_elemento_constante_textual_label; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_elemento_constante_textual_label ON assoccl_elemento USING btree (constante_textual_label);


--
-- TOC entry 3458 (class 1259 OID 61527312)
-- Dependencies: 259
-- Name: assoccl_elemento_id; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_elemento_id ON assoccl_elemento USING btree (id);


--
-- TOC entry 3459 (class 1259 OID 61527314)
-- Dependencies: 259
-- Name: assoccl_elemento_id_elemento; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_elemento_id_elemento ON assoccl_elemento USING btree (id_elemento);


--
-- TOC entry 3460 (class 1259 OID 61527313)
-- Dependencies: 259
-- Name: assoccl_elemento_id_formulario; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_elemento_id_formulario ON assoccl_elemento USING btree (id_formulario);


--
-- TOC entry 3449 (class 1259 OID 61527308)
-- Dependencies: 257
-- Name: assoccl_evento_id; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_evento_id ON assoccl_evento USING btree (id);


--
-- TOC entry 3450 (class 1259 OID 61527311)
-- Dependencies: 257
-- Name: assoccl_evento_id_acao_evento; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_evento_id_acao_evento ON assoccl_evento USING btree (id_acao_evento);


--
-- TOC entry 3451 (class 1259 OID 61527310)
-- Dependencies: 257
-- Name: assoccl_evento_id_evento; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_evento_id_evento ON assoccl_evento USING btree (id_evento);


--
-- TOC entry 3452 (class 1259 OID 61527309)
-- Dependencies: 257
-- Name: assoccl_evento_id_formulario; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_evento_id_formulario ON assoccl_evento USING btree (id_formulario);


--
-- TOC entry 3442 (class 1259 OID 61527305)
-- Dependencies: 255
-- Name: assoccl_include_id; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_include_id ON assoccl_include USING btree (id);


--
-- TOC entry 3443 (class 1259 OID 61527306)
-- Dependencies: 255
-- Name: assoccl_include_id_formulario; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_formulario ON assoccl_include USING btree (id_formulario);


--
-- TOC entry 3444 (class 1259 OID 61527307)
-- Dependencies: 255
-- Name: assoccl_include_id_include; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_include ON assoccl_include USING btree (id_include);


--
-- TOC entry 3435 (class 1259 OID 61527302)
-- Dependencies: 253
-- Name: assoccl_modulo_id; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_modulo_id ON assoccl_modulo USING btree (id);


--
-- TOC entry 3436 (class 1259 OID 61527304)
-- Dependencies: 253
-- Name: assoccl_modulo_id_formulario; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_modulo_id_formulario ON assoccl_modulo USING btree (id_formulario);


--
-- TOC entry 3437 (class 1259 OID 61527303)
-- Dependencies: 253
-- Name: assoccl_modulo_id_modulo; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_modulo_id_modulo ON assoccl_modulo USING btree (id_modulo);


--
-- TOC entry 3428 (class 1259 OID 61527301)
-- Dependencies: 251
-- Name: decorator_constante_textual; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX decorator_constante_textual ON decorator USING btree (constante_textual);


--
-- TOC entry 3429 (class 1259 OID 61527297)
-- Dependencies: 251
-- Name: decorator_id; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX decorator_id ON decorator USING btree (id);


--
-- TOC entry 3430 (class 1259 OID 61527298)
-- Dependencies: 251
-- Name: decorator_id_categoria; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX decorator_id_categoria ON decorator USING btree (id_categoria);


--
-- TOC entry 3431 (class 1259 OID 61527299)
-- Dependencies: 251
-- Name: decorator_id_componente; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX decorator_id_componente ON decorator USING btree (id_componente);


--
-- TOC entry 3432 (class 1259 OID 61527300)
-- Dependencies: 251
-- Name: decorator_nome; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX decorator_nome ON decorator USING btree (nome);


--
-- TOC entry 3418 (class 1259 OID 61527295)
-- Dependencies: 249
-- Name: elemento_constante_textual; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX elemento_constante_textual ON elemento USING btree (constante_textual);


--
-- TOC entry 3419 (class 1259 OID 61527296)
-- Dependencies: 249
-- Name: elemento_constante_textual_label; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX elemento_constante_textual_label ON elemento USING btree (constante_textual_label);


--
-- TOC entry 3420 (class 1259 OID 61527291)
-- Dependencies: 249
-- Name: elemento_id; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX elemento_id ON elemento USING btree (id);


--
-- TOC entry 3421 (class 1259 OID 61527292)
-- Dependencies: 249
-- Name: elemento_id_categoria; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX elemento_id_categoria ON elemento USING btree (id_categoria);


--
-- TOC entry 3422 (class 1259 OID 61527293)
-- Dependencies: 249
-- Name: elemento_id_componente; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX elemento_id_componente ON elemento USING btree (id_componente);


--
-- TOC entry 3423 (class 1259 OID 61527294)
-- Dependencies: 249
-- Name: elemento_nome; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX elemento_nome ON elemento USING btree (nome);


--
-- TOC entry 3409 (class 1259 OID 61527289)
-- Dependencies: 247
-- Name: rascunho_form_action; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX rascunho_form_action ON rascunho USING btree (form_action);


--
-- TOC entry 3410 (class 1259 OID 61527290)
-- Dependencies: 247
-- Name: rascunho_form_name; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX rascunho_form_name ON rascunho USING btree (form_name);


--
-- TOC entry 3411 (class 1259 OID 61527282)
-- Dependencies: 247
-- Name: rascunho_id; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX rascunho_id ON rascunho USING btree (id);


--
-- TOC entry 3412 (class 1259 OID 61527288)
-- Dependencies: 247
-- Name: rascunho_id_assoc_visao_origem; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX rascunho_id_assoc_visao_origem ON rascunho USING btree (id_assoc_visao_origem);


--
-- TOC entry 3413 (class 1259 OID 61527286)
-- Dependencies: 247
-- Name: rascunho_id_assocag_grupo; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX rascunho_id_assocag_grupo ON rascunho USING btree (id_assocag_grupo);


--
-- TOC entry 3414 (class 1259 OID 61527285)
-- Dependencies: 247
-- Name: rascunho_id_assoccl_perfil; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX rascunho_id_assoccl_perfil ON rascunho USING btree (id_assoccl_perfil);


--
-- TOC entry 3415 (class 1259 OID 61527287)
-- Dependencies: 247
-- Name: rascunho_id_assocsq_acao_aplicacao; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX rascunho_id_assocsq_acao_aplicacao ON rascunho USING btree (id_assocsq_acao_aplicacao);


--
-- TOC entry 3416 (class 1259 OID 61527284)
-- Dependencies: 247
-- Name: rascunho_id_categoria; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX rascunho_id_categoria ON rascunho USING btree (id_categoria);


--
-- TOC entry 3417 (class 1259 OID 61527283)
-- Dependencies: 247
-- Name: rascunho_id_rascunho_pai; Type: INDEX; Schema: basico_formulario; Owner: -; Tablespace: 
--

CREATE INDEX rascunho_id_rascunho_pai ON rascunho USING btree (id_rascunho_pai);


SET search_path = basico_formulario_decorator, pg_catalog;

--
-- TOC entry 3400 (class 1259 OID 61527279)
-- Dependencies: 245
-- Name: assoccl_include_id; Type: INDEX; Schema: basico_formulario_decorator; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_include_id ON assoccl_include USING btree (id);


--
-- TOC entry 3401 (class 1259 OID 61527280)
-- Dependencies: 245
-- Name: assoccl_include_id_decorator; Type: INDEX; Schema: basico_formulario_decorator; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_decorator ON assoccl_include USING btree (id_decorator);


--
-- TOC entry 3402 (class 1259 OID 61527281)
-- Dependencies: 245
-- Name: assoccl_include_id_include; Type: INDEX; Schema: basico_formulario_decorator; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_include ON assoccl_include USING btree (id_include);


--
-- TOC entry 3394 (class 1259 OID 61527278)
-- Dependencies: 243
-- Name: grupo_constante_textual; Type: INDEX; Schema: basico_formulario_decorator; Owner: -; Tablespace: 
--

CREATE INDEX grupo_constante_textual ON grupo USING btree (constante_textual);


--
-- TOC entry 3395 (class 1259 OID 61527275)
-- Dependencies: 243
-- Name: grupo_id; Type: INDEX; Schema: basico_formulario_decorator; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX grupo_id ON grupo USING btree (id);


--
-- TOC entry 3396 (class 1259 OID 61527276)
-- Dependencies: 243
-- Name: grupo_id_categoria; Type: INDEX; Schema: basico_formulario_decorator; Owner: -; Tablespace: 
--

CREATE INDEX grupo_id_categoria ON grupo USING btree (id_categoria);


--
-- TOC entry 3397 (class 1259 OID 61527277)
-- Dependencies: 243
-- Name: grupo_nome; Type: INDEX; Schema: basico_formulario_decorator; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX grupo_nome ON grupo USING btree (nome);


SET search_path = basico_formulario_elemento, pg_catalog;

--
-- TOC entry 3386 (class 1259 OID 61527271)
-- Dependencies: 241
-- Name: assoccl_decorator_id; Type: INDEX; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_decorator_id ON assoccl_decorator USING btree (id);


--
-- TOC entry 3387 (class 1259 OID 61527273)
-- Dependencies: 241
-- Name: assoccl_decorator_id_decorator; Type: INDEX; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_decorator_id_decorator ON assoccl_decorator USING btree (id_decorator);


--
-- TOC entry 3388 (class 1259 OID 61527274)
-- Dependencies: 241
-- Name: assoccl_decorator_id_decorator_grupo; Type: INDEX; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_decorator_id_decorator_grupo ON assoccl_decorator USING btree (id_decorator_grupo);


--
-- TOC entry 3389 (class 1259 OID 61527272)
-- Dependencies: 241
-- Name: assoccl_decorator_id_elemento; Type: INDEX; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_decorator_id_elemento ON assoccl_decorator USING btree (id_elemento);


--
-- TOC entry 3379 (class 1259 OID 61527268)
-- Dependencies: 239
-- Name: assoccl_evento_id; Type: INDEX; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_evento_id ON assoccl_evento USING btree (id);


--
-- TOC entry 3380 (class 1259 OID 61527269)
-- Dependencies: 239
-- Name: assoccl_evento_id_elemento; Type: INDEX; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_evento_id_elemento ON assoccl_evento USING btree (id_elemento);


--
-- TOC entry 3381 (class 1259 OID 61527270)
-- Dependencies: 239
-- Name: assoccl_evento_id_evento; Type: INDEX; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_evento_id_evento ON assoccl_evento USING btree (id_evento);


--
-- TOC entry 3371 (class 1259 OID 61527264)
-- Dependencies: 237
-- Name: assoccl_filter_id; Type: INDEX; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_filter_id ON assoccl_filter USING btree (id);


--
-- TOC entry 3372 (class 1259 OID 61527265)
-- Dependencies: 237
-- Name: assoccl_filter_id_elemento; Type: INDEX; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_filter_id_elemento ON assoccl_filter USING btree (id_elemento);


--
-- TOC entry 3373 (class 1259 OID 61527266)
-- Dependencies: 237
-- Name: assoccl_filter_id_filter; Type: INDEX; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_filter_id_filter ON assoccl_filter USING btree (id_filter);


--
-- TOC entry 3374 (class 1259 OID 61527267)
-- Dependencies: 237
-- Name: assoccl_filter_id_filter_grupo; Type: INDEX; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_filter_id_filter_grupo ON assoccl_filter USING btree (id_filter_grupo);


--
-- TOC entry 3363 (class 1259 OID 61527260)
-- Dependencies: 235
-- Name: assoccl_validator_id; Type: INDEX; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_validator_id ON assoccl_validator USING btree (id);


--
-- TOC entry 3364 (class 1259 OID 61527261)
-- Dependencies: 235
-- Name: assoccl_validator_id_elemento; Type: INDEX; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_validator_id_elemento ON assoccl_validator USING btree (id_elemento);


--
-- TOC entry 3365 (class 1259 OID 61527262)
-- Dependencies: 235
-- Name: assoccl_validator_id_validator; Type: INDEX; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_validator_id_validator ON assoccl_validator USING btree (id_validator);


--
-- TOC entry 3366 (class 1259 OID 61527263)
-- Dependencies: 235
-- Name: assoccl_validator_id_validator_grupo; Type: INDEX; Schema: basico_formulario_elemento; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_validator_id_validator_grupo ON assoccl_validator USING btree (id_validator_grupo);


SET search_path = basico_formulario_rascunho, pg_catalog;

--
-- TOC entry 3359 (class 1259 OID 61527258)
-- Dependencies: 233
-- Name: assocag_grupo_id; Type: INDEX; Schema: basico_formulario_rascunho; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assocag_grupo_id ON assocag_grupo USING btree (id);


--
-- TOC entry 3360 (class 1259 OID 61527259)
-- Dependencies: 233
-- Name: assocag_grupo_id_assoccl_perfil; Type: INDEX; Schema: basico_formulario_rascunho; Owner: -; Tablespace: 
--

CREATE INDEX assocag_grupo_id_assoccl_perfil ON assocag_grupo USING btree (id_assoccl_perfil);


SET search_path = basico_localizacao, pg_catalog;

--
-- TOC entry 3352 (class 1259 OID 61527255)
-- Dependencies: 231
-- Name: assoc_bairro_id; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_bairro_id ON assoc_bairro USING btree (id);


--
-- TOC entry 3353 (class 1259 OID 61527256)
-- Dependencies: 231
-- Name: assoc_bairro_id_municipio; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_bairro_id_municipio ON assoc_bairro USING btree (id_municipio);


--
-- TOC entry 3354 (class 1259 OID 61527257)
-- Dependencies: 231
-- Name: assoc_bairro_nome; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_bairro_nome ON assoc_bairro USING btree (nome);


--
-- TOC entry 3342 (class 1259 OID 61527249)
-- Dependencies: 229
-- Name: assoc_estado_id; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_estado_id ON assoc_estado USING btree (id);


--
-- TOC entry 3343 (class 1259 OID 61527250)
-- Dependencies: 229
-- Name: assoc_estado_id_categoria; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_estado_id_categoria ON assoc_estado USING btree (id_categoria);


--
-- TOC entry 3344 (class 1259 OID 61527251)
-- Dependencies: 229
-- Name: assoc_estado_id_estado_pai; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_estado_id_estado_pai ON assoc_estado USING btree (id_estado_pai);


--
-- TOC entry 3345 (class 1259 OID 61527252)
-- Dependencies: 229
-- Name: assoc_estado_id_pais; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_estado_id_pais ON assoc_estado USING btree (id_pais);


--
-- TOC entry 3346 (class 1259 OID 61527253)
-- Dependencies: 229
-- Name: assoc_estado_nome; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_estado_nome ON assoc_estado USING btree (nome);


--
-- TOC entry 3347 (class 1259 OID 61527254)
-- Dependencies: 229
-- Name: assoc_estado_sigla; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_estado_sigla ON assoc_estado USING btree (sigla);


--
-- TOC entry 3334 (class 1259 OID 61527245)
-- Dependencies: 227
-- Name: assoc_logradouro_id; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_logradouro_id ON assoc_logradouro USING btree (id);


--
-- TOC entry 3335 (class 1259 OID 61527247)
-- Dependencies: 227
-- Name: assoc_logradouro_id_bairro; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_logradouro_id_bairro ON assoc_logradouro USING btree (id_bairro);


--
-- TOC entry 3336 (class 1259 OID 61527246)
-- Dependencies: 227
-- Name: assoc_logradouro_id_categoria; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_logradouro_id_categoria ON assoc_logradouro USING btree (id_categoria);


--
-- TOC entry 3337 (class 1259 OID 61527248)
-- Dependencies: 227
-- Name: assoc_logradouro_nome; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_logradouro_nome ON assoc_logradouro USING btree (nome);


--
-- TOC entry 3324 (class 1259 OID 61527244)
-- Dependencies: 225
-- Name: assoc_municipio_codigo_ddd; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_municipio_codigo_ddd ON assoc_municipio USING btree (codigo_ddd);


--
-- TOC entry 3325 (class 1259 OID 61527239)
-- Dependencies: 225
-- Name: assoc_municipio_id; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_municipio_id ON assoc_municipio USING btree (id);


--
-- TOC entry 3326 (class 1259 OID 61527240)
-- Dependencies: 225
-- Name: assoc_municipio_id_categoria; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_municipio_id_categoria ON assoc_municipio USING btree (id_categoria);


--
-- TOC entry 3327 (class 1259 OID 61527242)
-- Dependencies: 225
-- Name: assoc_municipio_id_estado; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_municipio_id_estado ON assoc_municipio USING btree (id_estado);


--
-- TOC entry 3328 (class 1259 OID 61527241)
-- Dependencies: 225
-- Name: assoc_municipio_id_municipio_pai; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_municipio_id_municipio_pai ON assoc_municipio USING btree (id_municipio_pai);


--
-- TOC entry 3329 (class 1259 OID 61527243)
-- Dependencies: 225
-- Name: assoc_municipio_nome; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX assoc_municipio_nome ON assoc_municipio USING btree (nome);


--
-- TOC entry 3312 (class 1259 OID 61527233)
-- Dependencies: 223
-- Name: codigo_postal_codigo; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX codigo_postal_codigo ON codigo_postal USING btree (codigo);


--
-- TOC entry 3313 (class 1259 OID 61527231)
-- Dependencies: 223
-- Name: codigo_postal_id; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX codigo_postal_id ON codigo_postal USING btree (id);


--
-- TOC entry 3314 (class 1259 OID 61527237)
-- Dependencies: 223
-- Name: codigo_postal_id_bairro; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX codigo_postal_id_bairro ON codigo_postal USING btree (id_bairro);


--
-- TOC entry 3315 (class 1259 OID 61527232)
-- Dependencies: 223
-- Name: codigo_postal_id_categoria; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX codigo_postal_id_categoria ON codigo_postal USING btree (id_categoria);


--
-- TOC entry 3316 (class 1259 OID 61527235)
-- Dependencies: 223
-- Name: codigo_postal_id_estado; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX codigo_postal_id_estado ON codigo_postal USING btree (id_estado);


--
-- TOC entry 3317 (class 1259 OID 61527238)
-- Dependencies: 223
-- Name: codigo_postal_id_logradouro; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX codigo_postal_id_logradouro ON codigo_postal USING btree (id_logradouro);


--
-- TOC entry 3318 (class 1259 OID 61527236)
-- Dependencies: 223
-- Name: codigo_postal_id_municipio; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX codigo_postal_id_municipio ON codigo_postal USING btree (id_municipio);


--
-- TOC entry 3319 (class 1259 OID 61527234)
-- Dependencies: 223
-- Name: codigo_postal_id_pais; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX codigo_postal_id_pais ON codigo_postal USING btree (id_pais);


--
-- TOC entry 3303 (class 1259 OID 61527229)
-- Dependencies: 221
-- Name: cpg_endereco_codigo_postal; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX cpg_endereco_codigo_postal ON cpg_endereco USING btree (codigo_postal);


--
-- TOC entry 3304 (class 1259 OID 61527226)
-- Dependencies: 221
-- Name: cpg_endereco_id; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX cpg_endereco_id ON cpg_endereco USING btree (id);


--
-- TOC entry 3305 (class 1259 OID 61527230)
-- Dependencies: 221
-- Name: cpg_endereco_id_assoccl_perfil_validador; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX cpg_endereco_id_assoccl_perfil_validador ON cpg_endereco USING btree (id_assoccl_perfil_validador);


--
-- TOC entry 3306 (class 1259 OID 61527227)
-- Dependencies: 221
-- Name: cpg_endereco_id_categoria; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX cpg_endereco_id_categoria ON cpg_endereco USING btree (id_categoria);


--
-- TOC entry 3307 (class 1259 OID 61527228)
-- Dependencies: 221
-- Name: cpg_endereco_id_generico_proprietario; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE INDEX cpg_endereco_id_generico_proprietario ON cpg_endereco USING btree (id_generico_proprietario);


--
-- TOC entry 3298 (class 1259 OID 61527224)
-- Dependencies: 219
-- Name: pais_constante_textual; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX pais_constante_textual ON pais USING btree (constante_textual);


--
-- TOC entry 3299 (class 1259 OID 61527223)
-- Dependencies: 219
-- Name: pais_id; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX pais_id ON pais USING btree (id);


--
-- TOC entry 3300 (class 1259 OID 61527225)
-- Dependencies: 219
-- Name: pais_sigla; Type: INDEX; Schema: basico_localizacao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX pais_sigla ON pais USING btree (sigla);


SET search_path = basico_mensagem, pg_catalog;

--
-- TOC entry 3292 (class 1259 OID 61527221)
-- Dependencies: 217
-- Name: assoc_email_id; Type: INDEX; Schema: basico_mensagem; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_email_id ON assoc_email USING btree (id);


--
-- TOC entry 3293 (class 1259 OID 61527222)
-- Dependencies: 217
-- Name: assoc_email_id_mensagem; Type: INDEX; Schema: basico_mensagem; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_email_id_mensagem ON assoc_email USING btree (id_mensagem);


--
-- TOC entry 3284 (class 1259 OID 61527217)
-- Dependencies: 215
-- Name: assoccl_assoccl_pessoa_perfil_id; Type: INDEX; Schema: basico_mensagem; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_assoccl_pessoa_perfil_id ON assoccl_assoccl_pessoa_perfil USING btree (id);


--
-- TOC entry 3285 (class 1259 OID 61527220)
-- Dependencies: 215
-- Name: assoccl_assoccl_pessoa_perfil_id_assoccl_perfil; Type: INDEX; Schema: basico_mensagem; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_assoccl_pessoa_perfil_id_assoccl_perfil ON assoccl_assoccl_pessoa_perfil USING btree (id_assoccl_perfil);


--
-- TOC entry 3286 (class 1259 OID 61527218)
-- Dependencies: 215
-- Name: assoccl_assoccl_pessoa_perfil_id_categoria; Type: INDEX; Schema: basico_mensagem; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_assoccl_pessoa_perfil_id_categoria ON assoccl_assoccl_pessoa_perfil USING btree (id_categoria);


--
-- TOC entry 3287 (class 1259 OID 61527219)
-- Dependencies: 215
-- Name: assoccl_assoccl_pessoa_perfil_id_mensagem; Type: INDEX; Schema: basico_mensagem; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_assoccl_pessoa_perfil_id_mensagem ON assoccl_assoccl_pessoa_perfil USING btree (id_mensagem);


--
-- TOC entry 3278 (class 1259 OID 61527213)
-- Dependencies: 213
-- Name: template_id; Type: INDEX; Schema: basico_mensagem; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX template_id ON template USING btree (id);


--
-- TOC entry 3279 (class 1259 OID 61527214)
-- Dependencies: 213
-- Name: template_id_categoria; Type: INDEX; Schema: basico_mensagem; Owner: -; Tablespace: 
--

CREATE INDEX template_id_categoria ON template USING btree (id_categoria);


--
-- TOC entry 3280 (class 1259 OID 61527215)
-- Dependencies: 213
-- Name: template_id_generico_proprietario; Type: INDEX; Schema: basico_mensagem; Owner: -; Tablespace: 
--

CREATE INDEX template_id_generico_proprietario ON template USING btree (id_generico_proprietario);


--
-- TOC entry 3281 (class 1259 OID 61527216)
-- Dependencies: 213
-- Name: template_nome; Type: INDEX; Schema: basico_mensagem; Owner: -; Tablespace: 
--

CREATE INDEX template_nome ON template USING btree (nome);


SET search_path = basico_mensagem_assoc_email, pg_catalog;

--
-- TOC entry 3272 (class 1259 OID 61527211)
-- Dependencies: 211
-- Name: assoc_dados_id; Type: INDEX; Schema: basico_mensagem_assoc_email; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_dados_id ON assoc_dados USING btree (id);


--
-- TOC entry 3273 (class 1259 OID 61527212)
-- Dependencies: 211
-- Name: assoc_dados_id_assoc_email; Type: INDEX; Schema: basico_mensagem_assoc_email; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_dados_id_assoc_email ON assoc_dados USING btree (id_assoc_email);


SET search_path = basico_metodo_validacao, pg_catalog;

--
-- TOC entry 3265 (class 1259 OID 61527208)
-- Dependencies: 209
-- Name: assoccl_include_id; Type: INDEX; Schema: basico_metodo_validacao; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_include_id ON assoccl_include USING btree (id);


--
-- TOC entry 3266 (class 1259 OID 61527210)
-- Dependencies: 209
-- Name: assoccl_include_id_include; Type: INDEX; Schema: basico_metodo_validacao; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_include ON assoccl_include USING btree (id_include);


--
-- TOC entry 3267 (class 1259 OID 61527209)
-- Dependencies: 209
-- Name: assoccl_include_id_metodo_validacao; Type: INDEX; Schema: basico_metodo_validacao; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_metodo_validacao ON assoccl_include USING btree (id_metodo_validacao);


SET search_path = basico_output, pg_catalog;

--
-- TOC entry 3258 (class 1259 OID 61527205)
-- Dependencies: 207
-- Name: assoccl_include_id; Type: INDEX; Schema: basico_output; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_include_id ON assoccl_include USING btree (id);


--
-- TOC entry 3259 (class 1259 OID 61527207)
-- Dependencies: 207
-- Name: assoccl_include_id_include; Type: INDEX; Schema: basico_output; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_include ON assoccl_include USING btree (id_include);


--
-- TOC entry 3260 (class 1259 OID 61527206)
-- Dependencies: 207
-- Name: assoccl_include_id_output; Type: INDEX; Schema: basico_output; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_output ON assoccl_include USING btree (id_output);


SET search_path = basico_perfil, pg_catalog;

--
-- TOC entry 3251 (class 1259 OID 61527202)
-- Dependencies: 205
-- Name: assoccl_modulo_id; Type: INDEX; Schema: basico_perfil; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_modulo_id ON assoccl_modulo USING btree (id);


--
-- TOC entry 3252 (class 1259 OID 61527203)
-- Dependencies: 205
-- Name: assoccl_modulo_id_modulo; Type: INDEX; Schema: basico_perfil; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_modulo_id_modulo ON assoccl_modulo USING btree (id_modulo);


--
-- TOC entry 3253 (class 1259 OID 61527204)
-- Dependencies: 205
-- Name: assoccl_modulo_id_perfil; Type: INDEX; Schema: basico_perfil; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_modulo_id_perfil ON assoccl_modulo USING btree (id_perfil);


SET search_path = basico_pessoa, pg_catalog;

--
-- TOC entry 3246 (class 1259 OID 61527199)
-- Dependencies: 203
-- Name: assoc_dados_id; Type: INDEX; Schema: basico_pessoa; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_dados_id ON assoc_dados USING btree (id);


--
-- TOC entry 3247 (class 1259 OID 61527200)
-- Dependencies: 203
-- Name: assoc_dados_id_pessoa; Type: INDEX; Schema: basico_pessoa; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_dados_id_pessoa ON assoc_dados USING btree (id_pessoa);


--
-- TOC entry 3248 (class 1259 OID 61527201)
-- Dependencies: 203
-- Name: assoc_dados_nome; Type: INDEX; Schema: basico_pessoa; Owner: -; Tablespace: 
--

CREATE INDEX assoc_dados_nome ON assoc_dados USING btree (nome);


--
-- TOC entry 3239 (class 1259 OID 61527196)
-- Dependencies: 201
-- Name: assoccl_perfil_id; Type: INDEX; Schema: basico_pessoa; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_perfil_id ON assoccl_perfil USING btree (id);


--
-- TOC entry 3240 (class 1259 OID 61527198)
-- Dependencies: 201
-- Name: assoccl_perfil_id_perfil; Type: INDEX; Schema: basico_pessoa; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_perfil_id_perfil ON assoccl_perfil USING btree (id_perfil);


--
-- TOC entry 3241 (class 1259 OID 61527197)
-- Dependencies: 201
-- Name: assoccl_perfil_id_pessoa; Type: INDEX; Schema: basico_pessoa; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_perfil_id_pessoa ON assoccl_perfil USING btree (id_pessoa);


--
-- TOC entry 3234 (class 1259 OID 61527193)
-- Dependencies: 199
-- Name: assoccl_tipo_vinculo_id; Type: INDEX; Schema: basico_pessoa; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_tipo_vinculo_id ON assoccl_tipo_vinculo USING btree (id);


--
-- TOC entry 3235 (class 1259 OID 61527194)
-- Dependencies: 199
-- Name: assoccl_tipo_vinculo_id_pessoa; Type: INDEX; Schema: basico_pessoa; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_tipo_vinculo_id_pessoa ON assoccl_tipo_vinculo USING btree (id_pessoa);


--
-- TOC entry 3236 (class 1259 OID 61527195)
-- Dependencies: 199
-- Name: assoccl_tipo_vinculo_id_tipo_vinculo; Type: INDEX; Schema: basico_pessoa; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_tipo_vinculo_id_tipo_vinculo ON assoccl_tipo_vinculo USING btree (id_tipo_vinculo);


--
-- TOC entry 3228 (class 1259 OID 61527191)
-- Dependencies: 197
-- Name: login_id; Type: INDEX; Schema: basico_pessoa; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX login_id ON login USING btree (id);


--
-- TOC entry 3229 (class 1259 OID 61527192)
-- Dependencies: 197
-- Name: login_id_pessoa; Type: INDEX; Schema: basico_pessoa; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX login_id_pessoa ON login USING btree (id_pessoa);


SET search_path = basico_pessoa_juridica, pg_catalog;

--
-- TOC entry 3222 (class 1259 OID 61527190)
-- Dependencies: 195
-- Name: assoc_banco_codigo; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_banco_codigo ON assoc_banco USING btree (codigo);


--
-- TOC entry 3223 (class 1259 OID 61527187)
-- Dependencies: 195
-- Name: assoc_banco_id; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_banco_id ON assoc_banco USING btree (id);


--
-- TOC entry 3224 (class 1259 OID 61527189)
-- Dependencies: 195
-- Name: assoc_banco_id_categoria; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assoc_banco_id_categoria ON assoc_banco USING btree (id_categoria);


--
-- TOC entry 3225 (class 1259 OID 61527188)
-- Dependencies: 195
-- Name: assoc_banco_id_pessoa_juridica; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_banco_id_pessoa_juridica ON assoc_banco USING btree (id_pessoa_juridica);


--
-- TOC entry 3215 (class 1259 OID 61527182)
-- Dependencies: 193
-- Name: assoc_dados_id; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_dados_id ON assoc_dados USING btree (id);


--
-- TOC entry 3216 (class 1259 OID 61527183)
-- Dependencies: 193
-- Name: assoc_dados_id_pessoa_juridica; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoc_dados_id_pessoa_juridica ON assoc_dados USING btree (id_pessoa_juridica);


--
-- TOC entry 3217 (class 1259 OID 61527185)
-- Dependencies: 193
-- Name: assoc_dados_nome_fantasia; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assoc_dados_nome_fantasia ON assoc_dados USING btree (nome_fantasia);


--
-- TOC entry 3218 (class 1259 OID 61527184)
-- Dependencies: 193
-- Name: assoc_dados_razao_social; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assoc_dados_razao_social ON assoc_dados USING btree (razao_social);


--
-- TOC entry 3219 (class 1259 OID 61527186)
-- Dependencies: 193
-- Name: assoc_dados_sigla; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assoc_dados_sigla ON assoc_dados USING btree (sigla);


--
-- TOC entry 3207 (class 1259 OID 61527178)
-- Dependencies: 191
-- Name: assocag_incubadora_id; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assocag_incubadora_id ON assocag_incubadora USING btree (id);


--
-- TOC entry 3208 (class 1259 OID 61527179)
-- Dependencies: 191
-- Name: assocag_incubadora_id_categoria; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assocag_incubadora_id_categoria ON assocag_incubadora USING btree (id_categoria);


--
-- TOC entry 3209 (class 1259 OID 61527180)
-- Dependencies: 191
-- Name: assocag_incubadora_id_pessoa_juridica; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assocag_incubadora_id_pessoa_juridica ON assocag_incubadora USING btree (id_pessoa_juridica);


--
-- TOC entry 3210 (class 1259 OID 61527181)
-- Dependencies: 191
-- Name: assocag_incubadora_id_pessoa_juridica_incubada; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assocag_incubadora_id_pessoa_juridica_incubada ON assocag_incubadora USING btree (id_pessoa_juridica_incubada);


--
-- TOC entry 3197 (class 1259 OID 61527172)
-- Dependencies: 189
-- Name: assocag_parceria_id; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assocag_parceria_id ON assocag_parceria USING btree (id);


--
-- TOC entry 3198 (class 1259 OID 61527176)
-- Dependencies: 189
-- Name: assocag_parceria_id_assocag_parceria; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assocag_parceria_id_assocag_parceria ON assocag_parceria USING btree (id_assocag_parceria);


--
-- TOC entry 3199 (class 1259 OID 61527173)
-- Dependencies: 189
-- Name: assocag_parceria_id_categoria; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assocag_parceria_id_categoria ON assocag_parceria USING btree (id_categoria);


--
-- TOC entry 3200 (class 1259 OID 61527174)
-- Dependencies: 189
-- Name: assocag_parceria_id_pessoa_juridica; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assocag_parceria_id_pessoa_juridica ON assocag_parceria USING btree (id_pessoa_juridica);


--
-- TOC entry 3201 (class 1259 OID 61527175)
-- Dependencies: 189
-- Name: assocag_parceria_id_pessoa_juridica_parceira; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assocag_parceria_id_pessoa_juridica_parceira ON assocag_parceria USING btree (id_pessoa_juridica_parceira);


--
-- TOC entry 3202 (class 1259 OID 61527177)
-- Dependencies: 189
-- Name: assocag_parceria_nome; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assocag_parceria_nome ON assocag_parceria USING btree (nome);


--
-- TOC entry 3190 (class 1259 OID 61527169)
-- Dependencies: 187
-- Name: assoccl_area_economia_id; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_area_economia_id ON assoccl_area_economia USING btree (id);


--
-- TOC entry 3191 (class 1259 OID 61527170)
-- Dependencies: 187
-- Name: assoccl_area_economia_id_area_economia; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_area_economia_id_area_economia ON assoccl_area_economia USING btree (id_area_economia);


--
-- TOC entry 3192 (class 1259 OID 61527171)
-- Dependencies: 187
-- Name: assoccl_area_economia_id_pessoa_juridica; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_area_economia_id_pessoa_juridica ON assoccl_area_economia USING btree (id_pessoa_juridica);


--
-- TOC entry 3183 (class 1259 OID 61527166)
-- Dependencies: 185
-- Name: assoccl_capital_social_id; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_capital_social_id ON assoccl_capital_social USING btree (id);


--
-- TOC entry 3184 (class 1259 OID 61527168)
-- Dependencies: 185
-- Name: assoccl_capital_social_id_capital_social; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_capital_social_id_capital_social ON assoccl_capital_social USING btree (id_capital_social);


--
-- TOC entry 3185 (class 1259 OID 61527167)
-- Dependencies: 185
-- Name: assoccl_capital_social_id_pessoa_juridica; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_capital_social_id_pessoa_juridica ON assoccl_capital_social USING btree (id_pessoa_juridica);


--
-- TOC entry 3176 (class 1259 OID 61527163)
-- Dependencies: 183
-- Name: assoccl_faturamento_id; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_faturamento_id ON assoccl_faturamento USING btree (id);


--
-- TOC entry 3177 (class 1259 OID 61527164)
-- Dependencies: 183
-- Name: assoccl_faturamento_id_categoria; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_faturamento_id_categoria ON assoccl_faturamento USING btree (id_categoria);


--
-- TOC entry 3178 (class 1259 OID 61527165)
-- Dependencies: 183
-- Name: assoccl_faturamento_id_pessoa_juridica; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_faturamento_id_pessoa_juridica ON assoccl_faturamento USING btree (id_pessoa_juridica);


--
-- TOC entry 3168 (class 1259 OID 61527159)
-- Dependencies: 181
-- Name: assoccl_quadro_funcionario_id; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_quadro_funcionario_id ON assoccl_quadro_funcionario USING btree (id);


--
-- TOC entry 3169 (class 1259 OID 61527160)
-- Dependencies: 181
-- Name: assoccl_quadro_funcionario_id_categoria; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_quadro_funcionario_id_categoria ON assoccl_quadro_funcionario USING btree (id_categoria);


--
-- TOC entry 3170 (class 1259 OID 61527161)
-- Dependencies: 181
-- Name: assoccl_quadro_funcionario_id_pessoa_juridica; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_quadro_funcionario_id_pessoa_juridica ON assoccl_quadro_funcionario USING btree (id_pessoa_juridica);


--
-- TOC entry 3171 (class 1259 OID 61527162)
-- Dependencies: 181
-- Name: assoccl_quadro_funcionario_id_titulacao; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_quadro_funcionario_id_titulacao ON assoccl_quadro_funcionario USING btree (id_titulacao);


--
-- TOC entry 3162 (class 1259 OID 61527158)
-- Dependencies: 179
-- Name: capital_social_constante_textual; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX capital_social_constante_textual ON capital_social USING btree (constante_textual);


--
-- TOC entry 3163 (class 1259 OID 61527155)
-- Dependencies: 179
-- Name: capital_social_id; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX capital_social_id ON capital_social USING btree (id);


--
-- TOC entry 3164 (class 1259 OID 61527156)
-- Dependencies: 179
-- Name: capital_social_id_categoria; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX capital_social_id_categoria ON capital_social USING btree (id_categoria);


--
-- TOC entry 3165 (class 1259 OID 61527157)
-- Dependencies: 179
-- Name: capital_social_nome; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX capital_social_nome ON capital_social USING btree (nome);


--
-- TOC entry 3155 (class 1259 OID 61527154)
-- Dependencies: 177
-- Name: natureza_codigo; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX natureza_codigo ON natureza USING btree (codigo);


--
-- TOC entry 3156 (class 1259 OID 61527153)
-- Dependencies: 177
-- Name: natureza_constante_textual; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX natureza_constante_textual ON natureza USING btree (constante_textual);


--
-- TOC entry 3157 (class 1259 OID 61527150)
-- Dependencies: 177
-- Name: natureza_id; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX natureza_id ON natureza USING btree (id);


--
-- TOC entry 3158 (class 1259 OID 61527151)
-- Dependencies: 177
-- Name: natureza_id_categoria; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE INDEX natureza_id_categoria ON natureza USING btree (id_categoria);


--
-- TOC entry 3159 (class 1259 OID 61527152)
-- Dependencies: 177
-- Name: natureza_nome; Type: INDEX; Schema: basico_pessoa_juridica; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX natureza_nome ON natureza USING btree (nome);


SET search_path = basico_sequencia, pg_catalog;

--
-- TOC entry 3144 (class 1259 OID 61527148)
-- Dependencies: 175
-- Name: assocsq_acao_aplicacao_constante_textual; Type: INDEX; Schema: basico_sequencia; Owner: -; Tablespace: 
--

CREATE INDEX assocsq_acao_aplicacao_constante_textual ON assocsq_acao_aplicacao USING btree (constante_textual);


--
-- TOC entry 3145 (class 1259 OID 61527143)
-- Dependencies: 175
-- Name: assocsq_acao_aplicacao_id; Type: INDEX; Schema: basico_sequencia; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assocsq_acao_aplicacao_id ON assocsq_acao_aplicacao USING btree (id);


--
-- TOC entry 3146 (class 1259 OID 61527146)
-- Dependencies: 175
-- Name: assocsq_acao_aplicacao_id_acao_aplicacao; Type: INDEX; Schema: basico_sequencia; Owner: -; Tablespace: 
--

CREATE INDEX assocsq_acao_aplicacao_id_acao_aplicacao ON assocsq_acao_aplicacao USING btree (id_acao_aplicacao);


--
-- TOC entry 3147 (class 1259 OID 61527144)
-- Dependencies: 175
-- Name: assocsq_acao_aplicacao_id_categoria; Type: INDEX; Schema: basico_sequencia; Owner: -; Tablespace: 
--

CREATE INDEX assocsq_acao_aplicacao_id_categoria ON assocsq_acao_aplicacao USING btree (id_categoria);


--
-- TOC entry 3148 (class 1259 OID 61527145)
-- Dependencies: 175
-- Name: assocsq_acao_aplicacao_id_sequencia; Type: INDEX; Schema: basico_sequencia; Owner: -; Tablespace: 
--

CREATE INDEX assocsq_acao_aplicacao_id_sequencia ON assocsq_acao_aplicacao USING btree (id_sequencia);


--
-- TOC entry 3149 (class 1259 OID 61527147)
-- Dependencies: 175
-- Name: assocsq_acao_aplicacao_nome; Type: INDEX; Schema: basico_sequencia; Owner: -; Tablespace: 
--

CREATE INDEX assocsq_acao_aplicacao_nome ON assocsq_acao_aplicacao USING btree (nome);


--
-- TOC entry 3150 (class 1259 OID 61527149)
-- Dependencies: 175
-- Name: assocsq_acao_aplicacao_passo; Type: INDEX; Schema: basico_sequencia; Owner: -; Tablespace: 
--

CREATE INDEX assocsq_acao_aplicacao_passo ON assocsq_acao_aplicacao USING btree (passo);


SET search_path = basico_template, pg_catalog;

--
-- TOC entry 3137 (class 1259 OID 61527140)
-- Dependencies: 173
-- Name: assoccl_include_id; Type: INDEX; Schema: basico_template; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_include_id ON assoccl_include USING btree (id);


--
-- TOC entry 3138 (class 1259 OID 61527142)
-- Dependencies: 173
-- Name: assoccl_include_id_include; Type: INDEX; Schema: basico_template; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_include ON assoccl_include USING btree (id_include);


--
-- TOC entry 3139 (class 1259 OID 61527141)
-- Dependencies: 173
-- Name: assoccl_include_id_template; Type: INDEX; Schema: basico_template; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_include_id_template ON assoccl_include USING btree (id_template);


--
-- TOC entry 3130 (class 1259 OID 61527137)
-- Dependencies: 171
-- Name: assoccl_output_id; Type: INDEX; Schema: basico_template; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assoccl_output_id ON assoccl_output USING btree (id);


--
-- TOC entry 3131 (class 1259 OID 61527139)
-- Dependencies: 171
-- Name: assoccl_output_id_output; Type: INDEX; Schema: basico_template; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_output_id_output ON assoccl_output USING btree (id_output);


--
-- TOC entry 3132 (class 1259 OID 61527138)
-- Dependencies: 171
-- Name: assoccl_output_id_template; Type: INDEX; Schema: basico_template; Owner: -; Tablespace: 
--

CREATE INDEX assoccl_output_id_template ON assoccl_output USING btree (id_template);


SET search_path = basico_validator, pg_catalog;

--
-- TOC entry 3124 (class 1259 OID 61527136)
-- Dependencies: 169
-- Name: grupo_constante_textual; Type: INDEX; Schema: basico_validator; Owner: -; Tablespace: 
--

CREATE INDEX grupo_constante_textual ON grupo USING btree (constante_textual);


--
-- TOC entry 3125 (class 1259 OID 61527133)
-- Dependencies: 169
-- Name: grupo_id; Type: INDEX; Schema: basico_validator; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX grupo_id ON grupo USING btree (id);


--
-- TOC entry 3126 (class 1259 OID 61527134)
-- Dependencies: 169
-- Name: grupo_id_categoria; Type: INDEX; Schema: basico_validator; Owner: -; Tablespace: 
--

CREATE INDEX grupo_id_categoria ON grupo USING btree (id_categoria);


--
-- TOC entry 3127 (class 1259 OID 61527135)
-- Dependencies: 169
-- Name: grupo_nome; Type: INDEX; Schema: basico_validator; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX grupo_nome ON grupo USING btree (nome);


SET search_path = basico_validator_grupo, pg_catalog;

--
-- TOC entry 3118 (class 1259 OID 61527129)
-- Dependencies: 167
-- Name: assocag_grupo_id; Type: INDEX; Schema: basico_validator_grupo; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX assocag_grupo_id ON assocag_grupo USING btree (id);


--
-- TOC entry 3119 (class 1259 OID 61527131)
-- Dependencies: 167
-- Name: assocag_grupo_id_validator; Type: INDEX; Schema: basico_validator_grupo; Owner: -; Tablespace: 
--

CREATE INDEX assocag_grupo_id_validator ON assocag_grupo USING btree (id_validator);


--
-- TOC entry 3120 (class 1259 OID 61527130)
-- Dependencies: 167
-- Name: assocag_grupo_id_validator_grupo; Type: INDEX; Schema: basico_validator_grupo; Owner: -; Tablespace: 
--

CREATE INDEX assocag_grupo_id_validator_grupo ON assocag_grupo USING btree (id_validator_grupo);


--
-- TOC entry 3121 (class 1259 OID 61527132)
-- Dependencies: 167
-- Name: assocag_grupo_id_validator_grupo_assoc; Type: INDEX; Schema: basico_validator_grupo; Owner: -; Tablespace: 
--

CREATE INDEX assocag_grupo_id_validator_grupo_assoc ON assocag_grupo USING btree (id_validator_grupo_assoc);


SET search_path = basico, pg_catalog;

--
-- TOC entry 4219 (class 2606 OID 61525936)
-- Dependencies: 3780 401 355
-- Name: fk_acao_aplicacao_modulo; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY acao_aplicacao
    ADD CONSTRAINT fk_acao_aplicacao_modulo FOREIGN KEY (id_modulo) REFERENCES modulo(id);


--
-- TOC entry 4218 (class 2606 OID 61527058)
-- Dependencies: 399 391 3934
-- Name: fk_acao_evento_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY acao_evento
    ADD CONSTRAINT fk_acao_evento_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4217 (class 2606 OID 61525946)
-- Dependencies: 397 391 3934
-- Name: fk_ajuda_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY ajuda
    ADD CONSTRAINT fk_ajuda_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4216 (class 2606 OID 61526798)
-- Dependencies: 3934 395 391
-- Name: fk_area_conhecimento_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY area_conhecimento
    ADD CONSTRAINT fk_area_conhecimento_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4215 (class 2606 OID 61526431)
-- Dependencies: 395 3954 395
-- Name: fk_area_conhecimento_pai; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY area_conhecimento
    ADD CONSTRAINT fk_area_conhecimento_pai FOREIGN KEY (id_area_conhecimento_pai) REFERENCES area_conhecimento(id);


--
-- TOC entry 4213 (class 2606 OID 61526653)
-- Dependencies: 393 391 3934
-- Name: fk_area_economia_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY area_economia
    ADD CONSTRAINT fk_area_economia_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4214 (class 2606 OID 61526753)
-- Dependencies: 393 3944 393
-- Name: fk_area_economia_pai; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY area_economia
    ADD CONSTRAINT fk_area_economia_pai FOREIGN KEY (id_area_economia_pai) REFERENCES area_economia(id);


--
-- TOC entry 4208 (class 2606 OID 61526583)
-- Dependencies: 387 391 3934
-- Name: fk_arquivo_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY cpg_arquivo
    ADD CONSTRAINT fk_arquivo_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4211 (class 2606 OID 61526351)
-- Dependencies: 391 391 3934
-- Name: fk_categoria_pai; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY categoria
    ADD CONSTRAINT fk_categoria_pai FOREIGN KEY (id_categoria_pai) REFERENCES categoria(id);


--
-- TOC entry 4212 (class 2606 OID 61526713)
-- Dependencies: 3723 339 391
-- Name: fk_categoria_tipo_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY categoria
    ADD CONSTRAINT fk_categoria_tipo_categoria FOREIGN KEY (id_tipo_categoria) REFERENCES tipo_categoria(id);


--
-- TOC entry 4207 (class 2606 OID 61526186)
-- Dependencies: 391 3934 385
-- Name: fk_codigo_acesso_categoria_acesso; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY cpg_codigo_acesso
    ADD CONSTRAINT fk_codigo_acesso_categoria_acesso FOREIGN KEY (id_categoria_acesso) REFERENCES categoria(id);


--
-- TOC entry 4206 (class 2606 OID 61526066)
-- Dependencies: 385 391 3934
-- Name: fk_codigo_acesso_categoria_prop; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY cpg_codigo_acesso
    ADD CONSTRAINT fk_codigo_acesso_categoria_prop FOREIGN KEY (id_categoria_proprietario) REFERENCES categoria(id);


--
-- TOC entry 4209 (class 2606 OID 61526226)
-- Dependencies: 389 391 3934
-- Name: fk_componente_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY componente
    ADD CONSTRAINT fk_componente_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4210 (class 2606 OID 61526743)
-- Dependencies: 341 389 3732
-- Name: fk_componente_template; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY componente
    ADD CONSTRAINT fk_componente_template FOREIGN KEY (id_template) REFERENCES template(id);


--
-- TOC entry 4205 (class 2606 OID 61525966)
-- Dependencies: 3934 383 391
-- Name: fk_dados_bancarios_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY cpg_dados_bancarios
    ADD CONSTRAINT fk_dados_bancarios_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4198 (class 2606 OID 61526828)
-- Dependencies: 391 373 3934
-- Name: fk_dados_biometricos_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY dados_biometricos
    ADD CONSTRAINT fk_dados_biometricos_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4197 (class 2606 OID 61526953)
-- Dependencies: 3934 391 371
-- Name: fk_dic_expressao_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY dicionario_expressao
    ADD CONSTRAINT fk_dic_expressao_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4204 (class 2606 OID 61526793)
-- Dependencies: 391 3934 381
-- Name: fk_doc_identificacao_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY cpg_documento_identificacao
    ADD CONSTRAINT fk_doc_identificacao_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4203 (class 2606 OID 61526628)
-- Dependencies: 381 347 3757
-- Name: fk_doc_identificacao_pj_emissor; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY cpg_documento_identificacao
    ADD CONSTRAINT fk_doc_identificacao_pj_emissor FOREIGN KEY (id_pessoa_juridica_emissor) REFERENCES pessoa_juridica(id);


--
-- TOC entry 4196 (class 2606 OID 61526231)
-- Dependencies: 3934 391 369
-- Name: fk_evento_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY evento
    ADD CONSTRAINT fk_evento_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4195 (class 2606 OID 61527023)
-- Dependencies: 367 391 3934
-- Name: fk_filter_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY filter
    ADD CONSTRAINT fk_filter_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4194 (class 2606 OID 61526056)
-- Dependencies: 3924 389 367
-- Name: fk_filter_componente; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY filter
    ADD CONSTRAINT fk_filter_componente FOREIGN KEY (id_componente) REFERENCES componente(id);


--
-- TOC entry 4191 (class 2606 OID 61526668)
-- Dependencies: 365 397 3965
-- Name: fk_formulario_ajuda; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY formulario
    ADD CONSTRAINT fk_formulario_ajuda FOREIGN KEY (id_ajuda) REFERENCES ajuda(id);


--
-- TOC entry 4193 (class 2606 OID 61526868)
-- Dependencies: 391 3934 365
-- Name: fk_formulario_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY formulario
    ADD CONSTRAINT fk_formulario_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4192 (class 2606 OID 61526778)
-- Dependencies: 365 389 3924
-- Name: fk_formulario_componente; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY formulario
    ADD CONSTRAINT fk_formulario_componente FOREIGN KEY (id_componente) REFERENCES componente(id);


--
-- TOC entry 4190 (class 2606 OID 61526468)
-- Dependencies: 365 365 3818
-- Name: fk_formulario_pai; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY formulario
    ADD CONSTRAINT fk_formulario_pai FOREIGN KEY (id_formulario_pai) REFERENCES formulario(id);


--
-- TOC entry 4189 (class 2606 OID 61526763)
-- Dependencies: 363 3934 391
-- Name: fk_include_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY include
    ADD CONSTRAINT fk_include_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4202 (class 2606 OID 61526296)
-- Dependencies: 379 3934 391
-- Name: fk_link_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY cpg_link
    ADD CONSTRAINT fk_link_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4187 (class 2606 OID 61526051)
-- Dependencies: 361 201 3242
-- Name: fk_log_assoccl_perfil; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY log
    ADD CONSTRAINT fk_log_assoccl_perfil FOREIGN KEY (id_assoccl_perfil) REFERENCES basico_pessoa.assoccl_perfil(id);


--
-- TOC entry 4188 (class 2606 OID 61526176)
-- Dependencies: 3934 361 391
-- Name: fk_log_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY log
    ADD CONSTRAINT fk_log_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4186 (class 2606 OID 61527109)
-- Dependencies: 3934 359 391
-- Name: fk_mensagem_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY mensagem
    ADD CONSTRAINT fk_mensagem_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4185 (class 2606 OID 61526533)
-- Dependencies: 357 391 3934
-- Name: fk_metodo_validacao_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY metodo_validacao
    ADD CONSTRAINT fk_metodo_validacao_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4184 (class 2606 OID 61527043)
-- Dependencies: 355 391 3934
-- Name: fk_modulo_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY modulo
    ADD CONSTRAINT fk_modulo_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4183 (class 2606 OID 61526251)
-- Dependencies: 3780 355 355
-- Name: fk_modulo_pai; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY modulo
    ADD CONSTRAINT fk_modulo_pai FOREIGN KEY (id_modulo_pai) REFERENCES modulo(id);


--
-- TOC entry 4182 (class 2606 OID 61527063)
-- Dependencies: 3934 353 391
-- Name: fk_output_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY output
    ADD CONSTRAINT fk_output_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4181 (class 2606 OID 61526553)
-- Dependencies: 351 391 3934
-- Name: fk_perfil_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY perfil
    ADD CONSTRAINT fk_perfil_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4180 (class 2606 OID 61526021)
-- Dependencies: 3780 355 351
-- Name: fk_perfil_modulo; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY perfil
    ADD CONSTRAINT fk_perfil_modulo FOREIGN KEY (id_modulo) REFERENCES modulo(id);


--
-- TOC entry 4175 (class 2606 OID 61526261)
-- Dependencies: 305 3601 349
-- Name: fk_pessoa_email_default; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa
    ADD CONSTRAINT fk_pessoa_email_default FOREIGN KEY (id_email_default) REFERENCES basico_contato.cpg_email(id);


--
-- TOC entry 4177 (class 2606 OID 61526623)
-- Dependencies: 349 221 3308
-- Name: fk_pessoa_endereco_corresp; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa
    ADD CONSTRAINT fk_pessoa_endereco_corresp FOREIGN KEY (id_endereco_correspondencia) REFERENCES basico_localizacao.cpg_endereco(id);


--
-- TOC entry 4178 (class 2606 OID 61526943)
-- Dependencies: 3308 349 221
-- Name: fk_pessoa_endereco_default; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa
    ADD CONSTRAINT fk_pessoa_endereco_default FOREIGN KEY (id_endereco_default) REFERENCES basico_localizacao.cpg_endereco(id);


--
-- TOC entry 4164 (class 2606 OID 61526006)
-- Dependencies: 347 3160 177
-- Name: fk_pessoa_juridica_natureza; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa_juridica
    ADD CONSTRAINT fk_pessoa_juridica_natureza FOREIGN KEY (id_natureza) REFERENCES basico_pessoa_juridica.natureza(id);


--
-- TOC entry 4171 (class 2606 OID 61526923)
-- Dependencies: 347 347 3757
-- Name: fk_pessoa_juridica_pai; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa_juridica
    ADD CONSTRAINT fk_pessoa_juridica_pai FOREIGN KEY (id_pessoa_juridica_pai) REFERENCES pessoa_juridica(id);


--
-- TOC entry 4176 (class 2606 OID 61526336)
-- Dependencies: 379 349 3874
-- Name: fk_pessoa_link_default; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa
    ADD CONSTRAINT fk_pessoa_link_default FOREIGN KEY (id_link_default) REFERENCES cpg_link(id);


--
-- TOC entry 4174 (class 2606 OID 61525976)
-- Dependencies: 3766 349 351
-- Name: fk_pessoa_perfil_padrao; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa
    ADD CONSTRAINT fk_pessoa_perfil_padrao FOREIGN KEY (id_perfil_default) REFERENCES perfil(id);


--
-- TOC entry 4179 (class 2606 OID 61526968)
-- Dependencies: 3591 349 303
-- Name: fk_pessoa_telefone_default; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa
    ADD CONSTRAINT fk_pessoa_telefone_default FOREIGN KEY (id_telefone_default) REFERENCES basico_contato.cpg_telefone(id);


--
-- TOC entry 4173 (class 2606 OID 61527033)
-- Dependencies: 3193 347 187
-- Name: fk_pj_area_economia_default; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa_juridica
    ADD CONSTRAINT fk_pj_area_economia_default FOREIGN KEY (id_area_economia_default) REFERENCES basico_pessoa_juridica.assoccl_area_economia(id);


--
-- TOC entry 4168 (class 2606 OID 61526613)
-- Dependencies: 347 391 3934
-- Name: fk_pj_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa_juridica
    ADD CONSTRAINT fk_pj_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4172 (class 2606 OID 61526983)
-- Dependencies: 3601 347 305
-- Name: fk_pj_email_default; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa_juridica
    ADD CONSTRAINT fk_pj_email_default FOREIGN KEY (id_email_default) REFERENCES basico_contato.cpg_email(id);


--
-- TOC entry 4167 (class 2606 OID 61526483)
-- Dependencies: 3308 347 221
-- Name: fk_pj_endereco_correspond; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa_juridica
    ADD CONSTRAINT fk_pj_endereco_correspond FOREIGN KEY (id_endereco_correspondencia) REFERENCES basico_localizacao.cpg_endereco(id);


--
-- TOC entry 4166 (class 2606 OID 61526271)
-- Dependencies: 347 3308 221
-- Name: fk_pj_endereco_default; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa_juridica
    ADD CONSTRAINT fk_pj_endereco_default FOREIGN KEY (id_endereco_default) REFERENCES basico_localizacao.cpg_endereco(id);


--
-- TOC entry 4170 (class 2606 OID 61526768)
-- Dependencies: 347 3874 379
-- Name: fk_pj_link_default; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa_juridica
    ADD CONSTRAINT fk_pj_link_default FOREIGN KEY (id_link_default) REFERENCES cpg_link(id);


--
-- TOC entry 4169 (class 2606 OID 61526698)
-- Dependencies: 3760 349 347
-- Name: fk_pj_pessoa_resp_cadastro; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa_juridica
    ADD CONSTRAINT fk_pj_pessoa_resp_cadastro FOREIGN KEY (id_pessoa_responsavel_cadastro) REFERENCES pessoa(id);


--
-- TOC entry 4165 (class 2606 OID 61526116)
-- Dependencies: 347 303 3591
-- Name: fk_pj_telefone_default; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY pessoa_juridica
    ADD CONSTRAINT fk_pj_telefone_default FOREIGN KEY (id_telefone_default) REFERENCES basico_contato.cpg_telefone(id);


--
-- TOC entry 4200 (class 2606 OID 61526748)
-- Dependencies: 3934 377 391
-- Name: fk_produto_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY cpg_produto
    ADD CONSTRAINT fk_produto_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4201 (class 2606 OID 61527104)
-- Dependencies: 3934 377 391
-- Name: fk_produto_categoria_moeda; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY cpg_produto
    ADD CONSTRAINT fk_produto_categoria_moeda FOREIGN KEY (id_categoria_moeda) REFERENCES categoria(id);


--
-- TOC entry 4163 (class 2606 OID 61526838)
-- Dependencies: 3934 391 345
-- Name: fk_profissao_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY profissao
    ADD CONSTRAINT fk_profissao_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4162 (class 2606 OID 61526638)
-- Dependencies: 343 391 3934
-- Name: fk_sequencia_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY sequencia
    ADD CONSTRAINT fk_sequencia_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4161 (class 2606 OID 61525921)
-- Dependencies: 3934 391 341
-- Name: fk_template_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY template
    ADD CONSTRAINT fk_template_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4160 (class 2606 OID 61526663)
-- Dependencies: 339 339 3723
-- Name: fk_tipo_categoria_pai; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY tipo_categoria
    ADD CONSTRAINT fk_tipo_categoria_pai FOREIGN KEY (id_tipo_categoria_pai) REFERENCES tipo_categoria(id);


--
-- TOC entry 4199 (class 2606 OID 61526171)
-- Dependencies: 391 3934 375
-- Name: fk_token_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY cpg_token
    ADD CONSTRAINT fk_token_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4158 (class 2606 OID 61526126)
-- Dependencies: 337 3934 391
-- Name: fk_validator_categoria; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY validator
    ADD CONSTRAINT fk_validator_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id);


--
-- TOC entry 4159 (class 2606 OID 61526246)
-- Dependencies: 3924 337 389
-- Name: fk_validator_componente; Type: FK CONSTRAINT; Schema: basico; Owner: -
--

ALTER TABLE ONLY validator
    ADD CONSTRAINT fk_validator_componente FOREIGN KEY (id_componente) REFERENCES componente(id);


SET search_path = basico_acao_aplic_assoc_visao, pg_catalog;

--
-- TOC entry 4157 (class 2606 OID 61526813)
-- Dependencies: 335 3703 333
-- Name: fk_atr_met_rec_ref_atr_met_rec_post; Type: FK CONSTRAINT; Schema: basico_acao_aplic_assoc_visao; Owner: -
--

ALTER TABLE ONLY assoccl_atrib_met_rec_post
    ADD CONSTRAINT fk_atr_met_rec_ref_atr_met_rec_post FOREIGN KEY (id_atributo_metodo_recup_post) REFERENCES atributo_metodo_recup_post(id);


--
-- TOC entry 4155 (class 2606 OID 61526086)
-- Dependencies: 333 3934 391
-- Name: fk_atrib_met_rec_post_categoria; Type: FK CONSTRAINT; Schema: basico_acao_aplic_assoc_visao; Owner: -
--

ALTER TABLE ONLY atributo_metodo_recup_post
    ADD CONSTRAINT fk_atrib_met_rec_post_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 4156 (class 2606 OID 61526513)
-- Dependencies: 335 331 3697
-- Name: fk_atrib_met_rec_post_visao; Type: FK CONSTRAINT; Schema: basico_acao_aplic_assoc_visao; Owner: -
--

ALTER TABLE ONLY assoccl_atrib_met_rec_post
    ADD CONSTRAINT fk_atrib_met_rec_post_visao FOREIGN KEY (id_assoc_visao_ref_post) REFERENCES basico_acao_aplicacao.assoc_visao(id);


SET search_path = basico_acao_aplicacao, pg_catalog;

--
-- TOC entry 4154 (class 2606 OID 61526181)
-- Dependencies: 3983 401 331
-- Name: fk_assoc_visao_acao_aplicacao; Type: FK CONSTRAINT; Schema: basico_acao_aplicacao; Owner: -
--

ALTER TABLE ONLY assoc_visao
    ADD CONSTRAINT fk_assoc_visao_acao_aplicacao FOREIGN KEY (id_acao_aplicacao) REFERENCES basico.acao_aplicacao(id);


--
-- TOC entry 4153 (class 2606 OID 61525941)
-- Dependencies: 391 331 3934
-- Name: fk_assoc_visao_categoria; Type: FK CONSTRAINT; Schema: basico_acao_aplicacao; Owner: -
--

ALTER TABLE ONLY assoc_visao
    ADD CONSTRAINT fk_assoc_visao_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 4149 (class 2606 OID 61526341)
-- Dependencies: 351 327 3766
-- Name: fk_assoccl_acao_aplic_perfil_perfil; Type: FK CONSTRAINT; Schema: basico_acao_aplicacao; Owner: -
--

ALTER TABLE ONLY assoccl_perfil
    ADD CONSTRAINT fk_assoccl_acao_aplic_perfil_perfil FOREIGN KEY (id_perfil) REFERENCES basico.perfil(id);


--
-- TOC entry 4151 (class 2606 OID 61526366)
-- Dependencies: 401 329 3983
-- Name: fk_assoccl_met_valid_ac_aplic; Type: FK CONSTRAINT; Schema: basico_acao_aplicacao; Owner: -
--

ALTER TABLE ONLY assoccl_metodo_validacao
    ADD CONSTRAINT fk_assoccl_met_valid_ac_aplic FOREIGN KEY (id_acao_aplicacao) REFERENCES basico.acao_aplicacao(id);


--
-- TOC entry 4150 (class 2606 OID 61526141)
-- Dependencies: 3786 329 357
-- Name: fk_assoccl_met_valid_met_valid; Type: FK CONSTRAINT; Schema: basico_acao_aplicacao; Owner: -
--

ALTER TABLE ONLY assoccl_metodo_validacao
    ADD CONSTRAINT fk_assoccl_met_valid_met_valid FOREIGN KEY (id_metodo_validacao) REFERENCES basico.metodo_validacao(id);


--
-- TOC entry 4152 (class 2606 OID 61526683)
-- Dependencies: 329 351 3766
-- Name: fk_assoccl_met_valid_perfil; Type: FK CONSTRAINT; Schema: basico_acao_aplicacao; Owner: -
--

ALTER TABLE ONLY assoccl_metodo_validacao
    ADD CONSTRAINT fk_assoccl_met_valid_perfil FOREIGN KEY (id_perfil) REFERENCES basico.perfil(id);


--
-- TOC entry 4148 (class 2606 OID 61526041)
-- Dependencies: 3983 401 327
-- Name: fk_assoccl_perfil_acao_aplicacao; Type: FK CONSTRAINT; Schema: basico_acao_aplicacao; Owner: -
--

ALTER TABLE ONLY assoccl_perfil
    ADD CONSTRAINT fk_assoccl_perfil_acao_aplicacao FOREIGN KEY (id_acao_aplicacao) REFERENCES basico.acao_aplicacao(id);


SET search_path = basico_acao_evento, pg_catalog;

--
-- TOC entry 4147 (class 2606 OID 61526426)
-- Dependencies: 399 3974 325
-- Name: fk_assoccl_include_evento; Type: FK CONSTRAINT; Schema: basico_acao_evento; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_assoccl_include_evento FOREIGN KEY (id_acao_evento) REFERENCES basico.acao_evento(id);


--
-- TOC entry 4146 (class 2606 OID 61526036)
-- Dependencies: 363 325 3807
-- Name: fk_assoccl_include_include; Type: FK CONSTRAINT; Schema: basico_acao_evento; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_assoccl_include_include FOREIGN KEY (id_include) REFERENCES basico.include(id);


SET search_path = basico_ajuda, pg_catalog;

--
-- TOC entry 4144 (class 2606 OID 61526106)
-- Dependencies: 397 323 3965
-- Name: fk_assoccl_link_ajuda; Type: FK CONSTRAINT; Schema: basico_ajuda; Owner: -
--

ALTER TABLE ONLY assoccl_link
    ADD CONSTRAINT fk_assoccl_link_ajuda FOREIGN KEY (id_ajuda) REFERENCES basico.ajuda(id);


--
-- TOC entry 4145 (class 2606 OID 61526548)
-- Dependencies: 323 379 3874
-- Name: fk_assoccl_link_link; Type: FK CONSTRAINT; Schema: basico_ajuda; Owner: -
--

ALTER TABLE ONLY assoccl_link
    ADD CONSTRAINT fk_assoccl_link_link FOREIGN KEY (id_link) REFERENCES basico.cpg_link(id);


SET search_path = basico_assoc_banco, pg_catalog;

--
-- TOC entry 4142 (class 2606 OID 61526603)
-- Dependencies: 321 195 3226
-- Name: fk_assoc_tipo_conta_banco; Type: FK CONSTRAINT; Schema: basico_assoc_banco; Owner: -
--

ALTER TABLE ONLY assoc_tipo_conta
    ADD CONSTRAINT fk_assoc_tipo_conta_banco FOREIGN KEY (id_assoc_banco) REFERENCES basico_pessoa_juridica.assoc_banco(id);


--
-- TOC entry 4143 (class 2606 OID 61526823)
-- Dependencies: 321 391 3934
-- Name: fk_assoc_tipo_conta_categoria; Type: FK CONSTRAINT; Schema: basico_assoc_banco; Owner: -
--

ALTER TABLE ONLY assoc_tipo_conta
    ADD CONSTRAINT fk_assoc_tipo_conta_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


SET search_path = basico_assoc_dados_profis, pg_catalog;

--
-- TOC entry 4140 (class 2606 OID 61527003)
-- Dependencies: 3954 317 395
-- Name: fk_assoccl_dados_profis_area_c; Type: FK CONSTRAINT; Schema: basico_assoc_dados_profis; Owner: -
--

ALTER TABLE ONLY assoccl_area_conhecimento
    ADD CONSTRAINT fk_assoccl_dados_profis_area_c FOREIGN KEY (id_area_conhecimento) REFERENCES basico.area_conhecimento(id);


--
-- TOC entry 4141 (class 2606 OID 61527008)
-- Dependencies: 317 313 3629
-- Name: fk_assoccl_dados_profis_dados; Type: FK CONSTRAINT; Schema: basico_assoc_dados_profis; Owner: -
--

ALTER TABLE ONLY assoccl_area_conhecimento
    ADD CONSTRAINT fk_assoccl_dados_profis_dados FOREIGN KEY (id_assoc_dados_profissionais) REFERENCES basico_assoccl_tipo_vinculo.assoc_dados(id);


SET search_path = basico_assoccl_pessoa_perfil, pg_catalog;

--
-- TOC entry 4139 (class 2606 OID 61526201)
-- Dependencies: 315 3242 201
-- Name: fk_assoccl_pessoa_perfil; Type: FK CONSTRAINT; Schema: basico_assoccl_pessoa_perfil; Owner: -
--

ALTER TABLE ONLY assoc_dados
    ADD CONSTRAINT fk_assoccl_pessoa_perfil FOREIGN KEY (id_assoccl_pessoa_perfil) REFERENCES basico_pessoa.assoccl_perfil(id);


SET search_path = basico_assoccl_tipo_vinculo, pg_catalog;

--
-- TOC entry 4134 (class 2606 OID 61526281)
-- Dependencies: 3237 313 199
-- Name: fk_assoc_dado_assoccl_vin_profi; Type: FK CONSTRAINT; Schema: basico_assoccl_tipo_vinculo; Owner: -
--

ALTER TABLE ONLY assoc_dados
    ADD CONSTRAINT fk_assoc_dado_assoccl_vin_profi FOREIGN KEY (id_assoccl_vinculo_profissional) REFERENCES basico_pessoa.assoccl_tipo_vinculo(id);


--
-- TOC entry 4135 (class 2606 OID 61526598)
-- Dependencies: 313 347 3757
-- Name: fk_assoc_dados_pj_vinculo; Type: FK CONSTRAINT; Schema: basico_assoccl_tipo_vinculo; Owner: -
--

ALTER TABLE ONLY assoc_dados
    ADD CONSTRAINT fk_assoc_dados_pj_vinculo FOREIGN KEY (id_pessoa_juridica_vinculo) REFERENCES basico.pessoa_juridica(id);


--
-- TOC entry 4138 (class 2606 OID 61526918)
-- Dependencies: 313 3746 345
-- Name: fk_assoc_dados_profi_profissao; Type: FK CONSTRAINT; Schema: basico_assoccl_tipo_vinculo; Owner: -
--

ALTER TABLE ONLY assoc_dados
    ADD CONSTRAINT fk_assoc_dados_profi_profissao FOREIGN KEY (id_profissao) REFERENCES basico.profissao(id);


--
-- TOC entry 4136 (class 2606 OID 61526633)
-- Dependencies: 313 295 3559
-- Name: fk_assoc_dados_profis_reg_trab; Type: FK CONSTRAINT; Schema: basico_assoccl_tipo_vinculo; Owner: -
--

ALTER TABLE ONLY assoc_dados
    ADD CONSTRAINT fk_assoc_dados_profis_reg_trab FOREIGN KEY (id_regime_trabalho) REFERENCES basico_dados_profissionais.regime_trabalho(id);


--
-- TOC entry 4137 (class 2606 OID 61526783)
-- Dependencies: 3541 313 291
-- Name: fk_assoc_dados_vinc_empreg; Type: FK CONSTRAINT; Schema: basico_assoccl_tipo_vinculo; Owner: -
--

ALTER TABLE ONLY assoc_dados
    ADD CONSTRAINT fk_assoc_dados_vinc_empreg FOREIGN KEY (id_vinculo_empregaticio) REFERENCES basico_dados_profissionais.vinculo_empregaticio(id);


SET search_path = basico_categoria, pg_catalog;

--
-- TOC entry 4133 (class 2606 OID 61526703)
-- Dependencies: 3934 311 391
-- Name: fk_assoc_chave_estran_categ; Type: FK CONSTRAINT; Schema: basico_categoria; Owner: -
--

ALTER TABLE ONLY assoc_chave_estrangeira
    ADD CONSTRAINT fk_assoc_chave_estran_categ FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 4132 (class 2606 OID 61526673)
-- Dependencies: 355 3780 311
-- Name: fk_assoc_chave_estran_mod; Type: FK CONSTRAINT; Schema: basico_categoria; Owner: -
--

ALTER TABLE ONLY assoc_chave_estrangeira
    ADD CONSTRAINT fk_assoc_chave_estran_mod FOREIGN KEY (id_modulo) REFERENCES basico.modulo(id);


--
-- TOC entry 4131 (class 2606 OID 61527073)
-- Dependencies: 309 3934 391
-- Name: fk_assoc_evento_acao_categoria; Type: FK CONSTRAINT; Schema: basico_categoria; Owner: -
--

ALTER TABLE ONLY assoc_evento_acao
    ADD CONSTRAINT fk_assoc_evento_acao_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


SET search_path = basico_componente, pg_catalog;

--
-- TOC entry 4129 (class 2606 OID 61526658)
-- Dependencies: 307 363 3807
-- Name: fk_assoccl_componente_inc_inc; Type: FK CONSTRAINT; Schema: basico_componente; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_assoccl_componente_inc_inc FOREIGN KEY (id_include) REFERENCES basico.include(id);


--
-- TOC entry 4130 (class 2606 OID 61526718)
-- Dependencies: 389 3924 307
-- Name: fk_assoccl_include_componente; Type: FK CONSTRAINT; Schema: basico_componente; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_assoccl_include_componente FOREIGN KEY (id_componente) REFERENCES basico.componente(id);


SET search_path = basico_contato, pg_catalog;

--
-- TOC entry 4128 (class 2606 OID 61526286)
-- Dependencies: 3934 391 305
-- Name: fk_email_categoria; Type: FK CONSTRAINT; Schema: basico_contato; Owner: -
--

ALTER TABLE ONLY cpg_email
    ADD CONSTRAINT fk_email_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 4127 (class 2606 OID 61526678)
-- Dependencies: 391 303 3934
-- Name: fk_telefone_categoria; Type: FK CONSTRAINT; Schema: basico_contato; Owner: -
--

ALTER TABLE ONLY cpg_telefone
    ADD CONSTRAINT fk_telefone_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


SET search_path = basico_cvc, pg_catalog;

--
-- TOC entry 4126 (class 2606 OID 61526933)
-- Dependencies: 311 301 3621
-- Name: fk_cvc_assoc_chave_estrangeira; Type: FK CONSTRAINT; Schema: basico_cvc; Owner: -
--

ALTER TABLE ONLY cvc
    ADD CONSTRAINT fk_cvc_assoc_chave_estrangeira FOREIGN KEY (id_assoc_chave_estrangeira) REFERENCES basico_categoria.assoc_chave_estrangeira(id);


SET search_path = basico_dados_academicos, pg_catalog;

--
-- TOC entry 4125 (class 2606 OID 61526156)
-- Dependencies: 391 3934 299
-- Name: fk_titulacao_categoria; Type: FK CONSTRAINT; Schema: basico_dados_academicos; Owner: -
--

ALTER TABLE ONLY titulacao
    ADD CONSTRAINT fk_titulacao_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


SET search_path = basico_dados_biometricos, pg_catalog;

--
-- TOC entry 4122 (class 2606 OID 61526076)
-- Dependencies: 3934 297 391
-- Name: fk_assoc_pessoa_cat_raca; Type: FK CONSTRAINT; Schema: basico_dados_biometricos; Owner: -
--

ALTER TABLE ONLY assoc_pessoa
    ADD CONSTRAINT fk_assoc_pessoa_cat_raca FOREIGN KEY (id_categoria_raca) REFERENCES basico.categoria(id);


--
-- TOC entry 4124 (class 2606 OID 61527048)
-- Dependencies: 3934 297 391
-- Name: fk_assoc_pessoa_cat_sexo; Type: FK CONSTRAINT; Schema: basico_dados_biometricos; Owner: -
--

ALTER TABLE ONLY assoc_pessoa
    ADD CONSTRAINT fk_assoc_pessoa_cat_sexo FOREIGN KEY (id_categoria_sexo) REFERENCES basico.categoria(id);


--
-- TOC entry 4123 (class 2606 OID 61526578)
-- Dependencies: 297 391 3934
-- Name: fk_assoc_pessoa_cat_tipo_sang; Type: FK CONSTRAINT; Schema: basico_dados_biometricos; Owner: -
--

ALTER TABLE ONLY assoc_pessoa
    ADD CONSTRAINT fk_assoc_pessoa_cat_tipo_sang FOREIGN KEY (id_categoria_tipo_sanguineo) REFERENCES basico.categoria(id);


--
-- TOC entry 4121 (class 2606 OID 61525956)
-- Dependencies: 297 3850 373
-- Name: fk_assoc_pessoa_dados_bio; Type: FK CONSTRAINT; Schema: basico_dados_biometricos; Owner: -
--

ALTER TABLE ONLY assoc_pessoa
    ADD CONSTRAINT fk_assoc_pessoa_dados_bio FOREIGN KEY (id_dados_biometricos) REFERENCES basico.dados_biometricos(id);


SET search_path = basico_dados_profissionais, pg_catalog;

--
-- TOC entry 4119 (class 2606 OID 61526221)
-- Dependencies: 295 391 3934
-- Name: fk_regime_trabalho_categoria; Type: FK CONSTRAINT; Schema: basico_dados_profissionais; Owner: -
--

ALTER TABLE ONLY regime_trabalho
    ADD CONSTRAINT fk_regime_trabalho_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 4120 (class 2606 OID 61526498)
-- Dependencies: 295 295 3559
-- Name: fk_regime_trabalho_pai; Type: FK CONSTRAINT; Schema: basico_dados_profissionais; Owner: -
--

ALTER TABLE ONLY regime_trabalho
    ADD CONSTRAINT fk_regime_trabalho_pai FOREIGN KEY (id_regime_trabalho_pai) REFERENCES regime_trabalho(id);


--
-- TOC entry 4117 (class 2606 OID 61526568)
-- Dependencies: 291 391 3934
-- Name: fk_vinc_empreg_categoria; Type: FK CONSTRAINT; Schema: basico_dados_profissionais; Owner: -
--

ALTER TABLE ONLY vinculo_empregaticio
    ADD CONSTRAINT fk_vinc_empreg_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 4118 (class 2606 OID 61526026)
-- Dependencies: 391 3934 293
-- Name: fk_vinculo_categoria; Type: FK CONSTRAINT; Schema: basico_dados_profissionais; Owner: -
--

ALTER TABLE ONLY tipo_vinculo
    ADD CONSTRAINT fk_vinculo_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


SET search_path = basico_filter, pg_catalog;

--
-- TOC entry 4116 (class 2606 OID 61527013)
-- Dependencies: 281 3934 391
-- Name: fk_filter_grupo_categoria; Type: FK CONSTRAINT; Schema: basico_filter; Owner: -
--

ALTER TABLE ONLY grupo
    ADD CONSTRAINT fk_filter_grupo_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


SET search_path = basico_filter_grupo, pg_catalog;

--
-- TOC entry 4114 (class 2606 OID 61526463)
-- Dependencies: 3828 279 367
-- Name: fk_assocag_grupo_filter; Type: FK CONSTRAINT; Schema: basico_filter_grupo; Owner: -
--

ALTER TABLE ONLY assocag_grupo
    ADD CONSTRAINT fk_assocag_grupo_filter FOREIGN KEY (id_filter) REFERENCES basico.filter(id);


--
-- TOC entry 4115 (class 2606 OID 61527053)
-- Dependencies: 3539 281 279
-- Name: fk_assocag_grupo_grupo_assoc; Type: FK CONSTRAINT; Schema: basico_filter_grupo; Owner: -
--

ALTER TABLE ONLY assocag_grupo
    ADD CONSTRAINT fk_assocag_grupo_grupo_assoc FOREIGN KEY (id_filter_grupo) REFERENCES basico_filter.grupo(id);


--
-- TOC entry 4113 (class 2606 OID 61526166)
-- Dependencies: 279 281 3539
-- Name: fk_filter_assocag_grupo_grupo; Type: FK CONSTRAINT; Schema: basico_filter_grupo; Owner: -
--

ALTER TABLE ONLY assocag_grupo
    ADD CONSTRAINT fk_filter_assocag_grupo_grupo FOREIGN KEY (id_filter_grupo_assoc) REFERENCES basico_filter.grupo(id);


SET search_path = basico_form_assoccl_elem_grupo, pg_catalog;

--
-- TOC entry 4112 (class 2606 OID 61527089)
-- Dependencies: 3433 251 277
-- Name: fk_assoccl_decorator_decorator; Type: FK CONSTRAINT; Schema: basico_form_assoccl_elem_grupo; Owner: -
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT fk_assoccl_decorator_decorator FOREIGN KEY (id_decorator) REFERENCES basico_formulario.decorator(id);


--
-- TOC entry 4111 (class 2606 OID 61526031)
-- Dependencies: 277 265 3485
-- Name: fk_assoccl_decorator_grupo; Type: FK CONSTRAINT; Schema: basico_form_assoccl_elem_grupo; Owner: -
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT fk_assoccl_decorator_grupo FOREIGN KEY (id_grupo) REFERENCES basico_form_assoccl_elemento.grupo(id);


SET search_path = basico_form_assoccl_elemento, pg_catalog;

--
-- TOC entry 4107 (class 2606 OID 61526898)
-- Dependencies: 3838 369 273
-- Name: fk_assoccl_assoccl_elem_even_even; Type: FK CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_evento
    ADD CONSTRAINT fk_assoccl_assoccl_elem_even_even FOREIGN KEY (id_evento) REFERENCES basico.evento(id);


--
-- TOC entry 4110 (class 2606 OID 61526958)
-- Dependencies: 259 275 3461
-- Name: fk_assoccl_dec_assoccl_elem; Type: FK CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT fk_assoccl_dec_assoccl_elem FOREIGN KEY (id_assoccl_elemento) REFERENCES basico_formulario.assoccl_elemento(id);


--
-- TOC entry 4108 (class 2606 OID 61526326)
-- Dependencies: 251 275 3433
-- Name: fk_assoccl_dec_decorator; Type: FK CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT fk_assoccl_dec_decorator FOREIGN KEY (id_decorator) REFERENCES basico_formulario.decorator(id);


--
-- TOC entry 4103 (class 2606 OID 61526381)
-- Dependencies: 271 3461 259
-- Name: fk_assoccl_elem_assoccl_filter_elemento; Type: FK CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_filter
    ADD CONSTRAINT fk_assoccl_elem_assoccl_filter_elemento FOREIGN KEY (id_assoccl_elemento) REFERENCES basico_formulario.assoccl_elemento(id);


--
-- TOC entry 4102 (class 2606 OID 61526256)
-- Dependencies: 271 3828 367
-- Name: fk_assoccl_elem_assoccl_filter_filter; Type: FK CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_filter
    ADD CONSTRAINT fk_assoccl_elem_assoccl_filter_filter FOREIGN KEY (id_filter) REFERENCES basico.filter(id);


--
-- TOC entry 4105 (class 2606 OID 61526266)
-- Dependencies: 273 3974 399
-- Name: fk_assoccl_evento_acao_evento; Type: FK CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_evento
    ADD CONSTRAINT fk_assoccl_evento_acao_evento FOREIGN KEY (id_acao_evento) REFERENCES basico.acao_evento(id);


--
-- TOC entry 4106 (class 2606 OID 61526723)
-- Dependencies: 259 3461 273
-- Name: fk_assoccl_evento_assoccl_elem; Type: FK CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_evento
    ADD CONSTRAINT fk_assoccl_evento_assoccl_elem FOREIGN KEY (id_assoccl_elemento) REFERENCES basico_formulario.assoccl_elemento(id);


--
-- TOC entry 4101 (class 2606 OID 61526543)
-- Dependencies: 269 259 3461
-- Name: fk_assoccl_include_assoccl_elem; Type: FK CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_assoccl_include_assoccl_elem FOREIGN KEY (id_assoccl_elemento) REFERENCES basico_formulario.assoccl_elemento(id);


--
-- TOC entry 4099 (class 2606 OID 61526888)
-- Dependencies: 259 267 3461
-- Name: fk_assoccl_valid_assoc_elem; Type: FK CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_validator
    ADD CONSTRAINT fk_assoccl_valid_assoc_elem FOREIGN KEY (id_assoccl_elemento) REFERENCES basico_formulario.assoccl_elemento(id);


--
-- TOC entry 4097 (class 2606 OID 61526111)
-- Dependencies: 3721 267 337
-- Name: fk_assoccl_valid_validator; Type: FK CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_validator
    ADD CONSTRAINT fk_assoccl_valid_validator FOREIGN KEY (id_validator) REFERENCES basico.validator(id);


--
-- TOC entry 4100 (class 2606 OID 61526091)
-- Dependencies: 269 363 3807
-- Name: fk_asssoccl_include_include; Type: FK CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_asssoccl_include_include FOREIGN KEY (id_include) REFERENCES basico.include(id);


--
-- TOC entry 4109 (class 2606 OID 61526573)
-- Dependencies: 275 243 3398
-- Name: fk_form_assoccl_elem_assoccl_decorator_grupo; Type: FK CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT fk_form_assoccl_elem_assoccl_decorator_grupo FOREIGN KEY (id_decorator_grupo) REFERENCES basico_formulario_decorator.grupo(id);


--
-- TOC entry 4104 (class 2606 OID 61527038)
-- Dependencies: 3539 281 271
-- Name: fk_form_assoccl_elem_assoccl_filter; Type: FK CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_filter
    ADD CONSTRAINT fk_form_assoccl_elem_assoccl_filter FOREIGN KEY (id_filter_grupo) REFERENCES basico_filter.grupo(id);


--
-- TOC entry 4098 (class 2606 OID 61526453)
-- Dependencies: 267 3128 169
-- Name: fk_form_assoccl_elem_assoccl_validator; Type: FK CONSTRAINT; Schema: basico_form_assoccl_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_validator
    ADD CONSTRAINT fk_form_assoccl_elem_assoccl_validator FOREIGN KEY (id_validator_grupo) REFERENCES basico_validator.grupo(id);


SET search_path = basico_form_decorator_grupo, pg_catalog;

--
-- TOC entry 4095 (class 2606 OID 61526331)
-- Dependencies: 251 263 3433
-- Name: fk_assocag_grupo_form_decorator; Type: FK CONSTRAINT; Schema: basico_form_decorator_grupo; Owner: -
--

ALTER TABLE ONLY assocag_grupo
    ADD CONSTRAINT fk_assocag_grupo_form_decorator FOREIGN KEY (id_formulario_decorator) REFERENCES basico_formulario.decorator(id);


--
-- TOC entry 4096 (class 2606 OID 61526538)
-- Dependencies: 263 243 3398
-- Name: fk_assocag_grupo_grupo; Type: FK CONSTRAINT; Schema: basico_form_decorator_grupo; Owner: -
--

ALTER TABLE ONLY assocag_grupo
    ADD CONSTRAINT fk_assocag_grupo_grupo FOREIGN KEY (id_form_decorator_grupo) REFERENCES basico_formulario_decorator.grupo(id);


--
-- TOC entry 4094 (class 2606 OID 61526146)
-- Dependencies: 263 3398 243
-- Name: fk_decorator_assocag_grupo_grupo_assoc; Type: FK CONSTRAINT; Schema: basico_form_decorator_grupo; Owner: -
--

ALTER TABLE ONLY assocag_grupo
    ADD CONSTRAINT fk_decorator_assocag_grupo_grupo_assoc FOREIGN KEY (id_form_decorator_grupo_assoc) REFERENCES basico_formulario_decorator.grupo(id);


SET search_path = basico_formulario, pg_catalog;

--
-- TOC entry 4073 (class 2606 OID 61526473)
-- Dependencies: 3361 247 233
-- Name: fk_assocag_grupo_rascunho; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY rascunho
    ADD CONSTRAINT fk_assocag_grupo_rascunho FOREIGN KEY (id_assocag_grupo) REFERENCES basico_formulario_rascunho.assocag_grupo(id);


--
-- TOC entry 4092 (class 2606 OID 61526196)
-- Dependencies: 261 365 3818
-- Name: fk_assoccl_decorator_form; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT fk_assoccl_decorator_form FOREIGN KEY (id_formulario) REFERENCES basico.formulario(id);


--
-- TOC entry 4087 (class 2606 OID 61526401)
-- Dependencies: 3965 259 397
-- Name: fk_assoccl_elemento_ajuda; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_elemento
    ADD CONSTRAINT fk_assoccl_elemento_ajuda FOREIGN KEY (id_ajuda) REFERENCES basico.ajuda(id);


--
-- TOC entry 4090 (class 2606 OID 61526843)
-- Dependencies: 3424 259 249
-- Name: fk_assoccl_elemento_elemento; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_elemento
    ADD CONSTRAINT fk_assoccl_elemento_elemento FOREIGN KEY (id_elemento) REFERENCES elemento(id);


--
-- TOC entry 4088 (class 2606 OID 61526421)
-- Dependencies: 365 3818 259
-- Name: fk_assoccl_elemento_formulario; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_elemento
    ADD CONSTRAINT fk_assoccl_elemento_formulario FOREIGN KEY (id_formulario) REFERENCES basico.formulario(id);


--
-- TOC entry 4089 (class 2606 OID 61526443)
-- Dependencies: 259 3485 265
-- Name: fk_assoccl_elemento_grupo; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_elemento
    ADD CONSTRAINT fk_assoccl_elemento_grupo FOREIGN KEY (id_grupo) REFERENCES basico_form_assoccl_elemento.grupo(id);


--
-- TOC entry 4086 (class 2606 OID 61527124)
-- Dependencies: 257 3818 365
-- Name: fk_assoccl_evento_formulario; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_evento
    ADD CONSTRAINT fk_assoccl_evento_formulario FOREIGN KEY (id_formulario) REFERENCES basico.formulario(id);


--
-- TOC entry 4085 (class 2606 OID 61526893)
-- Dependencies: 257 3838 369
-- Name: fk_assoccl_form_evento_evento; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_evento
    ADD CONSTRAINT fk_assoccl_form_evento_evento FOREIGN KEY (id_evento) REFERENCES basico.evento(id);


--
-- TOC entry 4083 (class 2606 OID 61526016)
-- Dependencies: 255 3807 363
-- Name: fk_assoccl_formulario_inc_inc; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_assoccl_formulario_inc_inc FOREIGN KEY (id_include) REFERENCES basico.include(id);


--
-- TOC entry 4084 (class 2606 OID 61526136)
-- Dependencies: 365 255 3818
-- Name: fk_assoccl_include_formulario; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_assoccl_include_formulario FOREIGN KEY (id_formulario) REFERENCES basico.formulario(id);


--
-- TOC entry 4081 (class 2606 OID 61526518)
-- Dependencies: 253 365 3818
-- Name: fk_assoccl_modulo_formulario; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_modulo
    ADD CONSTRAINT fk_assoccl_modulo_formulario FOREIGN KEY (id_formulario) REFERENCES basico.formulario(id);


--
-- TOC entry 4091 (class 2606 OID 61526151)
-- Dependencies: 3433 251 261
-- Name: fk_assocl_decorator_decorator; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT fk_assocl_decorator_decorator FOREIGN KEY (id_decorator) REFERENCES decorator(id);


--
-- TOC entry 4075 (class 2606 OID 61526938)
-- Dependencies: 3151 175 247
-- Name: fk_assocsq_acao_aplic_rascunho; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY rascunho
    ADD CONSTRAINT fk_assocsq_acao_aplic_rascunho FOREIGN KEY (id_assocsq_acao_aplicacao) REFERENCES basico_sequencia.assocsq_acao_aplicacao(id);


--
-- TOC entry 4079 (class 2606 OID 61525961)
-- Dependencies: 3934 251 391
-- Name: fk_decorator_categoria; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY decorator
    ADD CONSTRAINT fk_decorator_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 4080 (class 2606 OID 61526216)
-- Dependencies: 3924 251 389
-- Name: fk_decorator_componente; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY decorator
    ADD CONSTRAINT fk_decorator_componente FOREIGN KEY (id_componente) REFERENCES basico.componente(id);


--
-- TOC entry 4078 (class 2606 OID 61526988)
-- Dependencies: 397 249 3965
-- Name: fk_elemento_ajuda; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY elemento
    ADD CONSTRAINT fk_elemento_ajuda FOREIGN KEY (id_ajuda) REFERENCES basico.ajuda(id);


--
-- TOC entry 4077 (class 2606 OID 61526563)
-- Dependencies: 249 391 3934
-- Name: fk_elemento_categoria; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY elemento
    ADD CONSTRAINT fk_elemento_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 4076 (class 2606 OID 61526291)
-- Dependencies: 3924 389 249
-- Name: fk_elemento_componente; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY elemento
    ADD CONSTRAINT fk_elemento_componente FOREIGN KEY (id_componente) REFERENCES basico.componente(id);


--
-- TOC entry 4093 (class 2606 OID 61526808)
-- Dependencies: 261 3398 243
-- Name: fk_form_assoccl_decorator_grupo_decorator; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT fk_form_assoccl_decorator_grupo_decorator FOREIGN KEY (id_decorator_grupo) REFERENCES basico_formulario_decorator.grupo(id);


--
-- TOC entry 4082 (class 2606 OID 61526708)
-- Dependencies: 355 3780 253
-- Name: fk_form_assoccl_modulo_modulo; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY assoccl_modulo
    ADD CONSTRAINT fk_form_assoccl_modulo_modulo FOREIGN KEY (id_modulo) REFERENCES basico.modulo(id);


--
-- TOC entry 4071 (class 2606 OID 61526276)
-- Dependencies: 247 3697 331
-- Name: fk_rascunho_assoc_visao; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY rascunho
    ADD CONSTRAINT fk_rascunho_assoc_visao FOREIGN KEY (id_assoc_visao_origem) REFERENCES basico_acao_aplicacao.assoc_visao(id);


--
-- TOC entry 4074 (class 2606 OID 61526883)
-- Dependencies: 3242 201 247
-- Name: fk_rascunho_assoccl_perfil; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY rascunho
    ADD CONSTRAINT fk_rascunho_assoccl_perfil FOREIGN KEY (id_assoccl_perfil) REFERENCES basico_pessoa.assoccl_perfil(id);


--
-- TOC entry 4070 (class 2606 OID 61526241)
-- Dependencies: 3934 391 247
-- Name: fk_rascunho_categoria; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY rascunho
    ADD CONSTRAINT fk_rascunho_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 4072 (class 2606 OID 61526416)
-- Dependencies: 247 3407 247
-- Name: fk_rascunho_pai; Type: FK CONSTRAINT; Schema: basico_formulario; Owner: -
--

ALTER TABLE ONLY rascunho
    ADD CONSTRAINT fk_rascunho_pai FOREIGN KEY (id_rascunho_pai) REFERENCES rascunho(id);


SET search_path = basico_formulario_decorator, pg_catalog;

--
-- TOC entry 4068 (class 2606 OID 61526478)
-- Dependencies: 251 245 3433
-- Name: fk_form_decorator_assoccl_include_decorator; Type: FK CONSTRAINT; Schema: basico_formulario_decorator; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_form_decorator_assoccl_include_decorator FOREIGN KEY (id_decorator) REFERENCES basico_formulario.decorator(id);


--
-- TOC entry 4069 (class 2606 OID 61526873)
-- Dependencies: 245 363 3807
-- Name: fk_form_decorator_assoccl_include_include; Type: FK CONSTRAINT; Schema: basico_formulario_decorator; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_form_decorator_assoccl_include_include FOREIGN KEY (id_include) REFERENCES basico.include(id);


--
-- TOC entry 4067 (class 2606 OID 61527068)
-- Dependencies: 243 3934 391
-- Name: fk_grupo_form_decorator_categoria; Type: FK CONSTRAINT; Schema: basico_formulario_decorator; Owner: -
--

ALTER TABLE ONLY grupo
    ADD CONSTRAINT fk_grupo_form_decorator_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


SET search_path = basico_formulario_elemento, pg_catalog;

--
-- TOC entry 4062 (class 2606 OID 61526306)
-- Dependencies: 3424 239 249
-- Name: fk_assoccl_evento_elemento; Type: FK CONSTRAINT; Schema: basico_formulario_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_evento
    ADD CONSTRAINT fk_assoccl_evento_elemento FOREIGN KEY (id_elemento) REFERENCES basico_formulario.elemento(id);


--
-- TOC entry 4063 (class 2606 OID 61527099)
-- Dependencies: 239 3838 369
-- Name: fk_assoccl_evento_evento; Type: FK CONSTRAINT; Schema: basico_formulario_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_evento
    ADD CONSTRAINT fk_assoccl_evento_evento FOREIGN KEY (id_evento) REFERENCES basico.evento(id);


--
-- TOC entry 4058 (class 2606 OID 61525981)
-- Dependencies: 3424 237 249
-- Name: fk_assoccl_filter_elemento; Type: FK CONSTRAINT; Schema: basico_formulario_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_filter
    ADD CONSTRAINT fk_assoccl_filter_elemento FOREIGN KEY (id_elemento) REFERENCES basico_formulario.elemento(id);


--
-- TOC entry 4059 (class 2606 OID 61525996)
-- Dependencies: 367 237 3828
-- Name: fk_assoccl_filter_filter; Type: FK CONSTRAINT; Schema: basico_formulario_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_filter
    ADD CONSTRAINT fk_assoccl_filter_filter FOREIGN KEY (id_filter) REFERENCES basico.filter(id);


--
-- TOC entry 4055 (class 2606 OID 61526396)
-- Dependencies: 249 3424 235
-- Name: fk_assoccl_validator_elem; Type: FK CONSTRAINT; Schema: basico_formulario_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_validator
    ADD CONSTRAINT fk_assoccl_validator_elem FOREIGN KEY (id_elemento) REFERENCES basico_formulario.elemento(id);


--
-- TOC entry 4057 (class 2606 OID 61526788)
-- Dependencies: 235 3721 337
-- Name: fk_assoccl_validator_validator; Type: FK CONSTRAINT; Schema: basico_formulario_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_validator
    ADD CONSTRAINT fk_assoccl_validator_validator FOREIGN KEY (id_validator) REFERENCES basico.validator(id);


--
-- TOC entry 4066 (class 2606 OID 61527119)
-- Dependencies: 249 3424 241
-- Name: fk_assocl_elemento_elemento; Type: FK CONSTRAINT; Schema: basico_formulario_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT fk_assocl_elemento_elemento FOREIGN KEY (id_elemento) REFERENCES basico_formulario.elemento(id);


--
-- TOC entry 4065 (class 2606 OID 61526818)
-- Dependencies: 241 3433 251
-- Name: fk_form_assoccl_decorator_decorator; Type: FK CONSTRAINT; Schema: basico_formulario_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT fk_form_assoccl_decorator_decorator FOREIGN KEY (id_decorator) REFERENCES basico_formulario.decorator(id);


--
-- TOC entry 4056 (class 2606 OID 61526738)
-- Dependencies: 3128 235 169
-- Name: fk_form_elem_assoccl_validador_grupo_validator; Type: FK CONSTRAINT; Schema: basico_formulario_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_validator
    ADD CONSTRAINT fk_form_elem_assoccl_validador_grupo_validator FOREIGN KEY (id_validator_grupo) REFERENCES basico_validator.grupo(id);


--
-- TOC entry 4064 (class 2606 OID 61526376)
-- Dependencies: 3398 241 243
-- Name: fk_form_elemen_assoccl_decorator_grupo; Type: FK CONSTRAINT; Schema: basico_formulario_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_decorator
    ADD CONSTRAINT fk_form_elemen_assoccl_decorator_grupo FOREIGN KEY (id_decorator_grupo) REFERENCES basico_formulario_decorator.grupo(id);


--
-- TOC entry 4061 (class 2606 OID 61526206)
-- Dependencies: 239 3974 399
-- Name: fk_form_element_assoccl_evento_acao_evento; Type: FK CONSTRAINT; Schema: basico_formulario_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_evento
    ADD CONSTRAINT fk_form_element_assoccl_evento_acao_evento FOREIGN KEY (id_acao_evento) REFERENCES basico.acao_evento(id);


--
-- TOC entry 4060 (class 2606 OID 61526803)
-- Dependencies: 281 237 3539
-- Name: fk_form_elemento_assoccl_filter_grupo_filter; Type: FK CONSTRAINT; Schema: basico_formulario_elemento; Owner: -
--

ALTER TABLE ONLY assoccl_filter
    ADD CONSTRAINT fk_form_elemento_assoccl_filter_grupo_filter FOREIGN KEY (id_filter_grupo) REFERENCES basico_filter.grupo(id);


SET search_path = basico_formulario_rascunho, pg_catalog;

--
-- TOC entry 4054 (class 2606 OID 61526191)
-- Dependencies: 233 3242 201
-- Name: fk_assocag_grupo_assoccl_perfil; Type: FK CONSTRAINT; Schema: basico_formulario_rascunho; Owner: -
--

ALTER TABLE ONLY assocag_grupo
    ADD CONSTRAINT fk_assocag_grupo_assoccl_perfil FOREIGN KEY (id_assoccl_perfil) REFERENCES basico_pessoa.assoccl_perfil(id);


SET search_path = basico_localizacao, pg_catalog;

--
-- TOC entry 4051 (class 2606 OID 61526386)
-- Dependencies: 229 3934 391
-- Name: fk_assoc_estado_categoria; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY assoc_estado
    ADD CONSTRAINT fk_assoc_estado_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 4052 (class 2606 OID 61526863)
-- Dependencies: 219 229 3301
-- Name: fk_assoc_estado_pais; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY assoc_estado
    ADD CONSTRAINT fk_assoc_estado_pais FOREIGN KEY (id_pais) REFERENCES pais(id);


--
-- TOC entry 4049 (class 2606 OID 61526758)
-- Dependencies: 231 3355 227
-- Name: fk_assoc_logradouro_assoc_bairro; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY assoc_logradouro
    ADD CONSTRAINT fk_assoc_logradouro_assoc_bairro FOREIGN KEY (id_bairro) REFERENCES assoc_bairro(id);


--
-- TOC entry 4048 (class 2606 OID 61526371)
-- Dependencies: 3934 227 391
-- Name: fk_assoc_logradouro_categoria; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY assoc_logradouro
    ADD CONSTRAINT fk_assoc_logradouro_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 4053 (class 2606 OID 61526011)
-- Dependencies: 231 225 3330
-- Name: fk_assoc_municipio_assoc_bairro; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY assoc_bairro
    ADD CONSTRAINT fk_assoc_municipio_assoc_bairro FOREIGN KEY (id_municipio) REFERENCES assoc_municipio(id);


--
-- TOC entry 4045 (class 2606 OID 61525971)
-- Dependencies: 3348 229 225
-- Name: fk_assoc_municipio_assoc_estado; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY assoc_municipio
    ADD CONSTRAINT fk_assoc_municipio_assoc_estado FOREIGN KEY (id_estado) REFERENCES assoc_estado(id);


--
-- TOC entry 4047 (class 2606 OID 61526913)
-- Dependencies: 3934 225 391
-- Name: fk_assoc_municipio_categoria; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY assoc_municipio
    ADD CONSTRAINT fk_assoc_municipio_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 4039 (class 2606 OID 61526493)
-- Dependencies: 231 3355 223
-- Name: fk_cep_assoc_bairro; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY codigo_postal
    ADD CONSTRAINT fk_cep_assoc_bairro FOREIGN KEY (id_bairro) REFERENCES assoc_bairro(id);


--
-- TOC entry 4041 (class 2606 OID 61526688)
-- Dependencies: 229 223 3348
-- Name: fk_cep_assoc_estado; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY codigo_postal
    ADD CONSTRAINT fk_cep_assoc_estado FOREIGN KEY (id_estado) REFERENCES assoc_estado(id);


--
-- TOC entry 4044 (class 2606 OID 61526903)
-- Dependencies: 3338 223 227
-- Name: fk_cep_assoc_logradouro; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY codigo_postal
    ADD CONSTRAINT fk_cep_assoc_logradouro FOREIGN KEY (id_logradouro) REFERENCES assoc_logradouro(id);


--
-- TOC entry 4040 (class 2606 OID 61526508)
-- Dependencies: 223 225 3330
-- Name: fk_cep_assoc_municipio; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY codigo_postal
    ADD CONSTRAINT fk_cep_assoc_municipio FOREIGN KEY (id_municipio) REFERENCES assoc_municipio(id);


--
-- TOC entry 4042 (class 2606 OID 61526728)
-- Dependencies: 223 3934 391
-- Name: fk_cep_categoria; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY codigo_postal
    ADD CONSTRAINT fk_cep_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 4043 (class 2606 OID 61526848)
-- Dependencies: 219 3301 223
-- Name: fk_cep_pais; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY codigo_postal
    ADD CONSTRAINT fk_cep_pais FOREIGN KEY (id_pais) REFERENCES pais(id);


--
-- TOC entry 4037 (class 2606 OID 61526361)
-- Dependencies: 3242 221 201
-- Name: fk_endereco_assoc_perfil; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY cpg_endereco
    ADD CONSTRAINT fk_endereco_assoc_perfil FOREIGN KEY (id_assoccl_perfil_validador) REFERENCES basico_pessoa.assoccl_perfil(id);


--
-- TOC entry 4038 (class 2606 OID 61526978)
-- Dependencies: 221 391 3934
-- Name: fk_endereco_categoria; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY cpg_endereco
    ADD CONSTRAINT fk_endereco_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 4050 (class 2606 OID 61526346)
-- Dependencies: 229 229 3348
-- Name: fk_estado_pai; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY assoc_estado
    ADD CONSTRAINT fk_estado_pai FOREIGN KEY (id_estado_pai) REFERENCES assoc_estado(id);


--
-- TOC entry 4046 (class 2606 OID 61526853)
-- Dependencies: 225 3330 225
-- Name: fk_municipio_pai; Type: FK CONSTRAINT; Schema: basico_localizacao; Owner: -
--

ALTER TABLE ONLY assoc_municipio
    ADD CONSTRAINT fk_municipio_pai FOREIGN KEY (id_municipio_pai) REFERENCES assoc_municipio(id);


SET search_path = basico_mensagem, pg_catalog;

--
-- TOC entry 4035 (class 2606 OID 61527094)
-- Dependencies: 3242 201 215
-- Name: fk_assoccl_assoccl_pes_per; Type: FK CONSTRAINT; Schema: basico_mensagem; Owner: -
--

ALTER TABLE ONLY assoccl_assoccl_pessoa_perfil
    ADD CONSTRAINT fk_assoccl_assoccl_pes_per FOREIGN KEY (id_assoccl_perfil) REFERENCES basico_pessoa.assoccl_perfil(id);


--
-- TOC entry 4034 (class 2606 OID 61526001)
-- Dependencies: 391 215 3934
-- Name: fk_assoccl_assoccl_pes_per_cat; Type: FK CONSTRAINT; Schema: basico_mensagem; Owner: -
--

ALTER TABLE ONLY assoccl_assoccl_pessoa_perfil
    ADD CONSTRAINT fk_assoccl_assoccl_pes_per_cat FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 4033 (class 2606 OID 61525926)
-- Dependencies: 359 3793 215
-- Name: fk_assoccl_assoccl_pes_per_m; Type: FK CONSTRAINT; Schema: basico_mensagem; Owner: -
--

ALTER TABLE ONLY assoccl_assoccl_pessoa_perfil
    ADD CONSTRAINT fk_assoccl_assoccl_pes_per_m FOREIGN KEY (id_mensagem) REFERENCES basico.mensagem(id);


--
-- TOC entry 4036 (class 2606 OID 61526448)
-- Dependencies: 217 3793 359
-- Name: fk_mensagem_email; Type: FK CONSTRAINT; Schema: basico_mensagem; Owner: -
--

ALTER TABLE ONLY assoc_email
    ADD CONSTRAINT fk_mensagem_email FOREIGN KEY (id_mensagem) REFERENCES basico.mensagem(id);


--
-- TOC entry 4032 (class 2606 OID 61526693)
-- Dependencies: 213 3934 391
-- Name: fk_template_mensagem_categoria; Type: FK CONSTRAINT; Schema: basico_mensagem; Owner: -
--

ALTER TABLE ONLY template
    ADD CONSTRAINT fk_template_mensagem_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


SET search_path = basico_mensagem_assoc_email, pg_catalog;

--
-- TOC entry 4031 (class 2606 OID 61526593)
-- Dependencies: 211 217 3294
-- Name: fk_assoc_dados_assoc_email; Type: FK CONSTRAINT; Schema: basico_mensagem_assoc_email; Owner: -
--

ALTER TABLE ONLY assoc_dados
    ADD CONSTRAINT fk_assoc_dados_assoc_email FOREIGN KEY (id_assoc_email) REFERENCES basico_mensagem.assoc_email(id);


SET search_path = basico_metodo_validacao, pg_catalog;

--
-- TOC entry 4030 (class 2606 OID 61526608)
-- Dependencies: 209 357 3786
-- Name: fk_assoccl_include_met_validacao; Type: FK CONSTRAINT; Schema: basico_metodo_validacao; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_assoccl_include_met_validacao FOREIGN KEY (id_metodo_validacao) REFERENCES basico.metodo_validacao(id);


--
-- TOC entry 4029 (class 2606 OID 61526121)
-- Dependencies: 363 3807 209
-- Name: fk_assoccl_met_valid_inc_inc; Type: FK CONSTRAINT; Schema: basico_metodo_validacao; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_assoccl_met_valid_inc_inc FOREIGN KEY (id_include) REFERENCES basico.include(id);


SET search_path = basico_output, pg_catalog;

--
-- TOC entry 4028 (class 2606 OID 61526406)
-- Dependencies: 353 3774 207
-- Name: fk_assoccl_include_output; Type: FK CONSTRAINT; Schema: basico_output; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_assoccl_include_output FOREIGN KEY (id_output) REFERENCES basico.output(id);


--
-- TOC entry 4027 (class 2606 OID 61526321)
-- Dependencies: 363 207 3807
-- Name: fk_assoccl_output_inc_inc; Type: FK CONSTRAINT; Schema: basico_output; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_assoccl_output_inc_inc FOREIGN KEY (id_include) REFERENCES basico.include(id);


SET search_path = basico_perfil, pg_catalog;

--
-- TOC entry 4026 (class 2606 OID 61526588)
-- Dependencies: 205 351 3766
-- Name: fk_assoccl_modulo_modulo; Type: FK CONSTRAINT; Schema: basico_perfil; Owner: -
--

ALTER TABLE ONLY assoccl_modulo
    ADD CONSTRAINT fk_assoccl_modulo_modulo FOREIGN KEY (id_perfil) REFERENCES basico.perfil(id);


--
-- TOC entry 4025 (class 2606 OID 61526301)
-- Dependencies: 3780 205 355
-- Name: fk_assoccl_modulo_perfil; Type: FK CONSTRAINT; Schema: basico_perfil; Owner: -
--

ALTER TABLE ONLY assoccl_modulo
    ADD CONSTRAINT fk_assoccl_modulo_perfil FOREIGN KEY (id_modulo) REFERENCES basico.modulo(id);


SET search_path = basico_pessoa, pg_catalog;

--
-- TOC entry 4024 (class 2606 OID 61526773)
-- Dependencies: 3760 203 349
-- Name: fk_assoc_dados_pessoa; Type: FK CONSTRAINT; Schema: basico_pessoa; Owner: -
--

ALTER TABLE ONLY assoc_dados
    ADD CONSTRAINT fk_assoc_dados_pessoa FOREIGN KEY (id_pessoa) REFERENCES basico.pessoa(id);


--
-- TOC entry 4023 (class 2606 OID 61526993)
-- Dependencies: 201 349 3760
-- Name: fk_assoccl_perfil_pessoa; Type: FK CONSTRAINT; Schema: basico_pessoa; Owner: -
--

ALTER TABLE ONLY assoccl_perfil
    ADD CONSTRAINT fk_assoccl_perfil_pessoa FOREIGN KEY (id_pessoa) REFERENCES basico.pessoa(id);


--
-- TOC entry 4022 (class 2606 OID 61526908)
-- Dependencies: 351 201 3766
-- Name: fk_assoccl_pessoa_perfil_perfil; Type: FK CONSTRAINT; Schema: basico_pessoa; Owner: -
--

ALTER TABLE ONLY assoccl_perfil
    ADD CONSTRAINT fk_assoccl_pessoa_perfil_perfil FOREIGN KEY (id_perfil) REFERENCES basico.perfil(id);


--
-- TOC entry 4020 (class 2606 OID 61526061)
-- Dependencies: 3760 349 199
-- Name: fk_assoccl_vinc_profi_pessoa; Type: FK CONSTRAINT; Schema: basico_pessoa; Owner: -
--

ALTER TABLE ONLY assoccl_tipo_vinculo
    ADD CONSTRAINT fk_assoccl_vinc_profi_pessoa FOREIGN KEY (id_pessoa) REFERENCES basico.pessoa(id);


--
-- TOC entry 4021 (class 2606 OID 61526081)
-- Dependencies: 3550 293 199
-- Name: fk_assoccl_vinc_profi_tipo_vinc; Type: FK CONSTRAINT; Schema: basico_pessoa; Owner: -
--

ALTER TABLE ONLY assoccl_tipo_vinculo
    ADD CONSTRAINT fk_assoccl_vinc_profi_tipo_vinc FOREIGN KEY (id_tipo_vinculo) REFERENCES basico_dados_profissionais.tipo_vinculo(id);


--
-- TOC entry 4019 (class 2606 OID 61527028)
-- Dependencies: 349 197 3760
-- Name: fk_login_pessoa; Type: FK CONSTRAINT; Schema: basico_pessoa; Owner: -
--

ALTER TABLE ONLY login
    ADD CONSTRAINT fk_login_pessoa FOREIGN KEY (id_pessoa) REFERENCES basico.pessoa(id);


SET search_path = basico_pessoa_juridica, pg_catalog;

--
-- TOC entry 4017 (class 2606 OID 61526096)
-- Dependencies: 195 3934 391
-- Name: fk_assoc_banco_categoria; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoc_banco
    ADD CONSTRAINT fk_assoc_banco_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 4018 (class 2606 OID 61527018)
-- Dependencies: 347 195 3757
-- Name: fk_assoc_banco_pj; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoc_banco
    ADD CONSTRAINT fk_assoc_banco_pj FOREIGN KEY (id_pessoa_juridica) REFERENCES basico.pessoa_juridica(id);


--
-- TOC entry 4016 (class 2606 OID 61526503)
-- Dependencies: 347 193 3757
-- Name: fk_assoc_dados_pj; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoc_dados
    ADD CONSTRAINT fk_assoc_dados_pj FOREIGN KEY (id_pessoa_juridica) REFERENCES basico.pessoa_juridica(id);


--
-- TOC entry 4003 (class 2606 OID 61526046)
-- Dependencies: 183 3934 391
-- Name: fk_assoc_faturamento_categoria; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoccl_faturamento
    ADD CONSTRAINT fk_assoc_faturamento_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 4004 (class 2606 OID 61526311)
-- Dependencies: 183 347 3757
-- Name: fk_assoc_faturamento_pj; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoccl_faturamento
    ADD CONSTRAINT fk_assoc_faturamento_pj FOREIGN KEY (id_pessoa_juridica) REFERENCES basico.pessoa_juridica(id);


--
-- TOC entry 4002 (class 2606 OID 61526858)
-- Dependencies: 391 181 3934
-- Name: fk_assoc_quadro_func_categoria; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoccl_quadro_funcionario
    ADD CONSTRAINT fk_assoc_quadro_func_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 4014 (class 2606 OID 61526236)
-- Dependencies: 3757 347 191
-- Name: fk_assocag_incub_pj_incubada; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assocag_incubadora
    ADD CONSTRAINT fk_assocag_incub_pj_incubada FOREIGN KEY (id_pessoa_juridica_incubada) REFERENCES basico.pessoa_juridica(id);


--
-- TOC entry 4013 (class 2606 OID 61525931)
-- Dependencies: 391 191 3934
-- Name: fk_assocag_incubadora_categoria; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assocag_incubadora
    ADD CONSTRAINT fk_assocag_incubadora_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 4015 (class 2606 OID 61526973)
-- Dependencies: 3757 347 191
-- Name: fk_assocag_incubadora_pj; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assocag_incubadora
    ADD CONSTRAINT fk_assocag_incubadora_pj FOREIGN KEY (id_pessoa_juridica) REFERENCES basico.pessoa_juridica(id);


--
-- TOC entry 4011 (class 2606 OID 61526356)
-- Dependencies: 3203 189 189
-- Name: fk_assocag_parc_assocag_parc; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assocag_parceria
    ADD CONSTRAINT fk_assocag_parc_assocag_parc FOREIGN KEY (id_assocag_parceria) REFERENCES assocag_parceria(id);


--
-- TOC entry 4009 (class 2606 OID 61525951)
-- Dependencies: 3934 189 391
-- Name: fk_assocag_parceria_categoria; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assocag_parceria
    ADD CONSTRAINT fk_assocag_parceria_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 4010 (class 2606 OID 61526211)
-- Dependencies: 189 3757 347
-- Name: fk_assocag_parceria_pj; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assocag_parceria
    ADD CONSTRAINT fk_assocag_parceria_pj FOREIGN KEY (id_pessoa_juridica) REFERENCES basico.pessoa_juridica(id);


--
-- TOC entry 4012 (class 2606 OID 61526998)
-- Dependencies: 189 347 3757
-- Name: fk_assocag_parceria_pj_parc; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assocag_parceria
    ADD CONSTRAINT fk_assocag_parceria_pj_parc FOREIGN KEY (id_pessoa_juridica_parceira) REFERENCES basico.pessoa_juridica(id);


--
-- TOC entry 4007 (class 2606 OID 61526391)
-- Dependencies: 3944 393 187
-- Name: fk_assoccl_area_econ_area; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoccl_area_economia
    ADD CONSTRAINT fk_assoccl_area_econ_area FOREIGN KEY (id_area_economia) REFERENCES basico.area_economia(id);


--
-- TOC entry 4008 (class 2606 OID 61526928)
-- Dependencies: 187 3757 347
-- Name: fk_assoccl_area_econ_pj; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoccl_area_economia
    ADD CONSTRAINT fk_assoccl_area_econ_pj FOREIGN KEY (id_pessoa_juridica) REFERENCES basico.pessoa_juridica(id);


--
-- TOC entry 4006 (class 2606 OID 61526411)
-- Dependencies: 179 185 3166
-- Name: fk_assoccl_cap_social_cap; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoccl_capital_social
    ADD CONSTRAINT fk_assoccl_cap_social_cap FOREIGN KEY (id_capital_social) REFERENCES capital_social(id);


--
-- TOC entry 4005 (class 2606 OID 61525991)
-- Dependencies: 3757 185 347
-- Name: fk_assoccl_cap_social_pj; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoccl_capital_social
    ADD CONSTRAINT fk_assoccl_cap_social_pj FOREIGN KEY (id_pessoa_juridica) REFERENCES basico.pessoa_juridica(id);


--
-- TOC entry 4001 (class 2606 OID 61526558)
-- Dependencies: 181 395 3954
-- Name: fk_assoccl_quadro_func_area_conh; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoccl_quadro_funcionario
    ADD CONSTRAINT fk_assoccl_quadro_func_area_conh FOREIGN KEY (id_area_conhecimento_predom) REFERENCES basico.area_conhecimento(id);


--
-- TOC entry 3998 (class 2606 OID 61526161)
-- Dependencies: 3934 391 177
-- Name: fk_natureza_categoria; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY natureza
    ADD CONSTRAINT fk_natureza_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 4000 (class 2606 OID 61526528)
-- Dependencies: 181 347 3757
-- Name: fk_pj_quadro_funcionarios; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoccl_quadro_funcionario
    ADD CONSTRAINT fk_pj_quadro_funcionarios FOREIGN KEY (id_pessoa_juridica) REFERENCES basico.pessoa_juridica(id);


--
-- TOC entry 3999 (class 2606 OID 61526071)
-- Dependencies: 181 3574 299
-- Name: fk_quadro_func_titulacao; Type: FK CONSTRAINT; Schema: basico_pessoa_juridica; Owner: -
--

ALTER TABLE ONLY assoccl_quadro_funcionario
    ADD CONSTRAINT fk_quadro_func_titulacao FOREIGN KEY (id_titulacao) REFERENCES basico_dados_academicos.titulacao(id);


SET search_path = basico_sequencia, pg_catalog;

--
-- TOC entry 3997 (class 2606 OID 61526618)
-- Dependencies: 175 391 3934
-- Name: fk_assocsq_acao_apli_categoria; Type: FK CONSTRAINT; Schema: basico_sequencia; Owner: -
--

ALTER TABLE ONLY assocsq_acao_aplicacao
    ADD CONSTRAINT fk_assocsq_acao_apli_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


--
-- TOC entry 3996 (class 2606 OID 61526523)
-- Dependencies: 175 401 3983
-- Name: fk_assocsq_acao_aplic_acao_apl; Type: FK CONSTRAINT; Schema: basico_sequencia; Owner: -
--

ALTER TABLE ONLY assocsq_acao_aplicacao
    ADD CONSTRAINT fk_assocsq_acao_aplic_acao_apl FOREIGN KEY (id_acao_aplicacao) REFERENCES basico.acao_aplicacao(id);


--
-- TOC entry 3995 (class 2606 OID 61526131)
-- Dependencies: 175 3738 343
-- Name: fk_assocsq_acao_aplic_seq; Type: FK CONSTRAINT; Schema: basico_sequencia; Owner: -
--

ALTER TABLE ONLY assocsq_acao_aplicacao
    ADD CONSTRAINT fk_assocsq_acao_aplic_seq FOREIGN KEY (id_sequencia) REFERENCES basico.sequencia(id);


SET search_path = basico_template, pg_catalog;

--
-- TOC entry 3994 (class 2606 OID 61526733)
-- Dependencies: 3732 341 173
-- Name: fk_assoccl_include_template; Type: FK CONSTRAINT; Schema: basico_template; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_assoccl_include_template FOREIGN KEY (id_template) REFERENCES basico.template(id);


--
-- TOC entry 3991 (class 2606 OID 61526101)
-- Dependencies: 171 353 3774
-- Name: fk_assoccl_output_output; Type: FK CONSTRAINT; Schema: basico_template; Owner: -
--

ALTER TABLE ONLY assoccl_output
    ADD CONSTRAINT fk_assoccl_output_output FOREIGN KEY (id_output) REFERENCES basico.output(id);


--
-- TOC entry 3992 (class 2606 OID 61526648)
-- Dependencies: 171 341 3732
-- Name: fk_assoccl_output_template; Type: FK CONSTRAINT; Schema: basico_template; Owner: -
--

ALTER TABLE ONLY assoccl_output
    ADD CONSTRAINT fk_assoccl_output_template FOREIGN KEY (id_template) REFERENCES basico.template(id);


--
-- TOC entry 3993 (class 2606 OID 61526643)
-- Dependencies: 173 363 3807
-- Name: fk_assoccl_template_inc_inc; Type: FK CONSTRAINT; Schema: basico_template; Owner: -
--

ALTER TABLE ONLY assoccl_include
    ADD CONSTRAINT fk_assoccl_template_inc_inc FOREIGN KEY (id_include) REFERENCES basico.include(id);


SET search_path = basico_validator, pg_catalog;

--
-- TOC entry 3990 (class 2606 OID 61527114)
-- Dependencies: 391 169 3934
-- Name: fk_grupo_filter_categoria; Type: FK CONSTRAINT; Schema: basico_validator; Owner: -
--

ALTER TABLE ONLY grupo
    ADD CONSTRAINT fk_grupo_filter_categoria FOREIGN KEY (id_categoria) REFERENCES basico.categoria(id);


SET search_path = basico_validator_grupo, pg_catalog;

--
-- TOC entry 3987 (class 2606 OID 61526833)
-- Dependencies: 3721 337 167
-- Name: fk_assocag_grupo_validator; Type: FK CONSTRAINT; Schema: basico_validator_grupo; Owner: -
--

ALTER TABLE ONLY assocag_grupo
    ADD CONSTRAINT fk_assocag_grupo_validator FOREIGN KEY (id_validator) REFERENCES basico.validator(id);


--
-- TOC entry 3988 (class 2606 OID 61526878)
-- Dependencies: 3128 167 169
-- Name: fk_grupo_assocag_grupo; Type: FK CONSTRAINT; Schema: basico_validator_grupo; Owner: -
--

ALTER TABLE ONLY assocag_grupo
    ADD CONSTRAINT fk_grupo_assocag_grupo FOREIGN KEY (id_validator_grupo) REFERENCES basico_validator.grupo(id);


--
-- TOC entry 3989 (class 2606 OID 61526963)
-- Dependencies: 3128 169 167
-- Name: fk_validator_assocag_grupo_grupo_assoc; Type: FK CONSTRAINT; Schema: basico_validator_grupo; Owner: -
--

ALTER TABLE ONLY assocag_grupo
    ADD CONSTRAINT fk_validator_assocag_grupo_grupo_assoc FOREIGN KEY (id_validator_grupo_assoc) REFERENCES basico_validator.grupo(id);


--
-- TOC entry 4261 (class 0 OID 0)
-- Dependencies: 38
-- Name: public; Type: ACL; Schema: -; Owner: -
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2012-07-11 15:51:10 BRT

--
-- PostgreSQL database dump complete
--
