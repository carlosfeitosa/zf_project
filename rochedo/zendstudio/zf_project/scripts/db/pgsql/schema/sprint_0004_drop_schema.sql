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
* 						19/10/2010 - remocao do drop da tabela "modulo" para o sprint 0001;
* 						07/04/2011 - remocao do drop da tabela "formulario_perfil" - descontinuado;
* 						18/11/2011 - criacao dos drops das tabelasde relacionamento de filter, decorator, validator e evento_elemento com  formulario_elemento e formularios_formularios_elementos;
*/


drop table if exists basico_form_form_elemento.assoccl_validator;
drop table if exists basico_form_form_elemento.assoccl_filter;
drop table if exists basico_form_form_elemento.assoccl_decorator;
drop table if exists basico_form_form_elemento.assoccl_evento;
drop table if exists basico.evento;
drop table if exists template_formulario;
drop table if exists basico_formulario.assoccl_elemento;
drop table if exists formularios_elementos_formularios_elementos_validators;
drop table if exists formularios_elementos_formularios_elementos_filters;
drop table if exists basico_formulario_elemento.assoccl_decorator;
drop table if exists basico_formulario.elemento;
drop table if exists formulario_elemento_validator;
drop table if exists basico.filter;
drop table if exists basico.componente;
drop table if exists template;
drop table if exists basico_formulario.assoccl_modulo;
drop table if exists basico_perfil.assoccl_modulo;
drop table if exists formulario;
drop table if exists basico_form_form_elemento.assoc_grupo;
drop table if exists basico_formulario.decorator;
drop table if exists basico.ajuda;
drop table if exists basico.output;
