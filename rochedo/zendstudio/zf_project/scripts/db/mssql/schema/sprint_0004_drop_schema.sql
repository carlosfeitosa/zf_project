/*
* SCRIPT DE DROP DAS TABELAS DO SPRINT 0004
* 
* versao: 1.0 (MSSQL 2000)
* por: CARLOS FEITOSA (carlos.feitosa@rochedoproject.com)
* criacao: 07/06/2010
* ultimas modificacoes:
* 						17/06/2010 - drop da tabela formulario_perfil;
* 						18/06/2010 - modificacao do nome da tabela formulario_template para template;
* 						08/07/2010 - drop das tabelas modulo_formulario, modulo_perifl e modulo;
* 						23/07/2010 - drop da tabela template_formulario;
* 						16/08/2010 - drop da tabela formulario_formulario_elemento_formulario;
* 						14/09/2010 - drop da tabela componente;
* 						14/10/2010 - modificacao da ordem de drop da tabela template;
* 						19/10/2010 - remocao do drop da tabela "modulo" para o sprint 0001;
* 						07/04/2011 - remocao do drop da tabela "formulario_perfil" - descontinuado;
* 						18/11/2011 - criacao dos drops das tabelasde relacionamento de filter, decorator, validator e evento_elemento com  formulario_elemento e formularios_formularios_elementos;
*/


if object_id('basico_form_form_elemento.assoccl_validator') is not null
begin
drop table basico_form_form_elemento.assoccl_validator;
end
;

if object_id('basico_form_form_elemento.assoccl_filter') is not null
begin
drop table basico_form_form_elemento.assoccl_filter;
end
;

if object_id('basico_form_form_elemento.assoccl_decorator') is not null
begin
drop table basico_form_form_elemento.assoccl_decorator;
end
;

if object_id('basico_form_form_elemento.assoccl_evento') is not null
begin
drop table basico_form_form_elemento.assoccl_evento;
end
;

if object_id('basico.evento ') is not null
begin
drop table basico.evento;
end
;


if object_id('template_formulario') is not null
begin
drop table template_formulario;
end
;

if object_id('basico_formulario.assoccl_elemento') is not null
begin
drop table basico_formulario.assoccl_elemento;
end
;

if object_id('formularios_elementos_formularios_elementos_validators') is not null
begin
drop table formularios_elementos_formularios_elementos_validators;
end
;

if object_id('formularios_elementos_formularios_elementos_filters') is not null
begin
drop table formularios_elementos_formularios_elementos_filters;
end
;

if object_id('basico_formulario_elemento.assoccl_decorator') is not null
begin
drop table basico_formulario_elemento.assoccl_decorator;
end
;

if object_id('basico_formulario.elemento') is not null
begin
drop table basico_formulario.elemento;
end
;

if object_id('basico.validator') is not null
begin
drop table basico.validator;
end
;

if object_id('basico.filter') is not null
begin
drop table basico.filter;
end
;

if object_id('basico.componente') is not null
begin
drop table basico.componente;
end
;

if object_id('template') is not null
begin
drop table template;
end
;

if object_id('basico_formulario.assoccl_modulo') is not null
begin
drop table basico_formulario.assoccl_modulo;
end
;

if object_id('basico_perfil.assoccl_modulo') is not null
begin
drop table basico_perfil.assoccl_modulo;
end
;

if object_id('basico.formulario') is not null
begin
drop table basico.formulario;
end
;

if object_id('basico_form_form_elemento.assoc_grupo') is not null
begin
drop table basico_form_form_elemento.assoc_grupo;
end
;

if object_id('basico_formulario.decorator') is not null
begin
drop table basico_formulario.decorator;
end
;

if object_id('ajuda') is not null
begin
drop table basico.ajuda;
end
;

if object_id('basico.output') is not null
begin
drop table basico.output;
end
;
