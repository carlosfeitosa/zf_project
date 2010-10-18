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
* 						14/10/2010 - modificacao da ordem de drop da tabela template
*/

if object_id('cvc') is not null
begin
  drop table cvc
end
;

if object_id('formulario_formulario_elemento_formulario') is not null
begin
drop table formulario_formulario_elemento_formulario;
end
;

if object_id('template_formulario') is not null
begin
drop table template_formulario;
end
;

if object_id('formulario_perfil') is not null
begin
drop table formulario_perfil;
end
;

if object_id('formulario_formulario_elemento') is not null
begin
drop table formulario_formulario_elemento;
end
;

if object_id('formulario_elemento_formulario_elemento_validator') is not null
begin
drop table formulario_elemento_formulario_elemento_validator;
end
;

if object_id('formulario_elemento') is not null
begin
drop table formulario_elemento;
end
;

if object_id('formulario_elemento_validator') is not null
begin
drop table formulario_elemento_validator;
end
;

if object_id('formulario_elemento_filter') is not null
begin
drop table formulario_elemento_filter;
end
;

if object_id('componente') is not null
begin
drop table componente;
end
;

if object_id('template') is not null
begin
drop table template;
end
;

if object_id('modulo_formulario') is not null
begin
drop table modulo_formulario;
end
;

if object_id('modulo_perfil') is not null
begin
drop table modulo_perfil;
end
;

if object_id('modulo') is not null
begin
drop table modulo;
end
;

if object_id('formulario') is not null
begin
drop table formulario;
end
;

if object_id('decorator') is not null
begin
drop table decorator;
end
;

if object_id('ajuda') is not null
begin
drop table ajuda;
end
;

if object_id('output') is not null
begin
drop table output;
end
;

if object_id('grupo_formulario_elemento') is not null
begin
drop table grupo_formulario_elemento;
end
;