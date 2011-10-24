/*
* SCRIPT DE DROP DAS TABELAS DO SPRINT 0013
* 
* versao: 1.0 (MSSQL 2000)
* por: João Vasconcelos (joao.vasconcelos@rochedoframework.com)
* criacao: 06/09/2011
* 
* 24/10/2011 - criacao do drop das entidades grupo_rascunho e sequencia_formulario (João Vasconcelos - Bione);
* 
*/

if object_id('sequencia_formulario') is not null
begin
  drop table sequencia_formulario
end
;

if object_id('grupo_rascunho') is not null
begin
  drop table grupo_rascunho
end
;

if object_id('rascunho') is not null
begin
  drop table rascunho
end
;