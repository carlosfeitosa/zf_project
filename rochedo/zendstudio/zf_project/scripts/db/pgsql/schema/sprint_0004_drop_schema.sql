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
* 						14/09/2010 - drop da tabela componente;
* 						14/10/2010 - modificacao da ordem de drop da tabela template
*/

drop table if exists formulario_formulario_elemento_formulario;
drop table if exists template_formulario;
drop table if exists formulario_perfil;
drop table if exists formulario_formulario_elemento;
drop table if exists formulario_elemento_formulario_elemento_validator;
drop table if exists formulario_elemento;
drop table if exists formulario_elemento_validator;
drop table if exists formulario_elemento_filter;
drop table if exists componente;
drop table if exists template;
drop table if exists modulo_formulario;
drop table if exists modulo_perfil;
drop table if exists modulo;
drop table if exists formulario;
drop table if exists decorator;
drop table if exists ajuda;
drop table if exists output;