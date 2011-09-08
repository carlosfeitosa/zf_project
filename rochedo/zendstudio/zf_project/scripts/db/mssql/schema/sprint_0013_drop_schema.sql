/*
* SCRIPT DE DROP DAS TABELAS DO SPRINT 0013
* 
* versao: 1.0 (MSSQL 2000)
* por: João Vasconcelos (joao.vasconcelos@rochedoframework.com)
* criacao: 06/09/2011
*/

if object_id('rascunho') is not null
begin
  drop table rascunho
end
;