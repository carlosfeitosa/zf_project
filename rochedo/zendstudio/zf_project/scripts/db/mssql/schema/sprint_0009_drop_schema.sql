/*
* SCRIPT DE DROP DAS TABELAS DO SPRINT 0009
* 
* versao: 1.0 (MSSQL 2000)
* por: CARLOS FEITOSA (carlos.feitosa@rochedoproject.com)
* criacao: 16/03/2011
*/

if object_id('acoes_aplicacao_metodos_validacao') is not null
begin
  drop table acoes_aplicacao_metodos_validacao
end
;

if object_id('acoes_aplicacao_perfis') is not null
begin
  drop table acoes_aplicacao_perfis
end
;

if object_id('acao_aplicacao') is not null
begin
  drop table acao_aplicacao
end
;

if object_id('metodo_validacao') is not null
begin
  drop table metodo_validacao
end
;