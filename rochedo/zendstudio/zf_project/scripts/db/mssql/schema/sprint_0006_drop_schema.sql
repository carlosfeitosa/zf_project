/*
* SCRIPT DE DROP DAS TABELAS DO SPRINT 0006
* 
* versao: 1.0 (MSSQL 2000)
* por: CARLOS FEITOSA (carlos.feitosa@rochedoproject.com)
* criacao: 10/09/2010
* ultimas modificacoes: 
* 						- 24/09/2010 - transferencia dos drops das funcoes criadas no
* 									   create schema do sprint 0006 para o drop
* 									   do script 0001
*/
if object_id('cvc') is not null
begin
  drop table cvc
end
;