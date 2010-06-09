/*
* SCRIPT DE DROP DAS TABELAS DO SPRINT 0004
* 
* versao: 1.0 (POSTGRESQL 8.4.1)
* por: CARLOS FEITOSA (carlos.feitosa@rochedoproject.com)
* criacao: 07/06/2010
* ultimas modificacoes:
*/

drop table formulario_template;
drop table formulario_formulario_elemento;
drop table formulario_elemento_formulario_elemento_validator;
drop table formulario_elemento;
drop table formulario_elemento_validator;
drop table formulario_elemento_filter;
drop table formulario;
drop table decorator;
drop table ajuda;
drop table output;
drop function fn_CheckConstanteTextualExists(character varying (200));