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

if object_id('rascunho') is not null
begin
  drop table rascunho
end
;

if object_id('basico_formulario_rascunho.assocag_grupo') is not null
begin
  drop table basico_formulario_rascunho.assocag_grupo
end
;

if object_id('sequencia_formulario') is not null
begin
  drop table sequencia_formulario
end
;
