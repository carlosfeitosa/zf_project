/*
* SCRIPT DE DROP DAS TABELAS DO SPRINT 0009
* 
* versao: 1.0 (MSSQL 2000)
* por: CARLOS FEITOSA (carlos.feitosa@rochedoproject.com)
* criacao: 16/03/2011
*/

if object_id('basico_acao_aplicacao.assoccl_metodo_validacao') is not null
begin
  drop table basico_acao_aplicacao.assoccl_metodo_validacao
end
;

if object_id('basico_acao_aplicacao.assoccl_perfil') is not null
begin
  drop table basico_acao_aplicacao.assoccl_perfil
end
;

if object_id('basico.acao_aplicacao') is not null
begin
  drop table basico.acao_aplicacao
end
;

if object_id('basico.metodo_validacao') is not null
begin
  drop table basico.metodo_validacao
end
;