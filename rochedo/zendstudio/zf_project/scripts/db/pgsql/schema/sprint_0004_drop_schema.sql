/*
* SCRIPT DE DROP DAS TABELAS DO SPRINT 0004
* 
* versao: 1.0 (POSTGRESQL 8.4.1)
* por: CARLOS FEITOSA (carlos.feitosa@rochedoproject.com)
* criacao: 07/06/2010
* ultimas modificacoes:
* 						17/06/2010 - drop da tabela formulario_perfil;
* 						18/06/2010 - modificacao do nome da tabela formulario_template para template;
* 						09/07/2010 - drop das tabelas modulo_formulario, modulo_perifl e modulo;
* 						23/07/2010 - drop da tabela template_formulario;
* 						16/08/2010 - drop da tabela formulario_formulario_elemento_formulario;
*/

drop table formulario_formulario_elemento_formulario;
drop table template_formulario;
drop table template;
drop table formulario_perfil;
drop table formulario_formulario_elemento;
drop table formulario_elemento_formulario_elemento_validator;
drop table formulario_elemento;
drop table formulario_elemento_validator;
drop table formulario_elemento_filter;
drop table modulo_formulario;
drop table modulo_perfil;
drop table modulo;
drop table formulario;
drop table decorator;
drop table ajuda;
drop table output;
drop function fn_CheckConstanteTextualExists(character varying (200));