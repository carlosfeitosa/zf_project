/*
* SCRIPT DE DROP DAS TABELAS DO SPRINT 0007
* 
* versao: 1.0 (MSSQL 2000)
* por: CARLOS FEITOSA (carlos.feitosa@rochedoproject.com)
* criacao: 05/10/2010
*/
if object_id('relacao_categoria_chave_estrangeira') is not null
begin
  drop table relacao_categoria_chave_estrangeira
end
;