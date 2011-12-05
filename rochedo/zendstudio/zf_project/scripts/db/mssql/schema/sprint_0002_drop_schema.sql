/*
* SCRIPT DE DROP DAS TABELAS DO SPRINT 0002
* 
* versao: 1.0 (MSSQL 2000)
* por: JOAO VASCONCELOS (joao.vasconcelos@rochedoproject.com)
* criacao: 28/09/2010
* ultimas modificacoes: 
* 
*/

if object_id('documento_identificacao') is not null
begin
  drop table documento_identificacao
end
;

if object_id('pessoa_juridica') is not null
begin
  drop table pessoa_juridica
end
;

if object_id('basico_localizacao.endereco') is not null
begin
  drop table basico_localizacao.endereco
end
;

if object_id('dados_biometricos') is not null
begin
  drop table dados_biometricos
end
;

if object_id('raca') is not null
begin
  drop table raca
end
;

if object_id('basico_localizacao.estado') is not null
begin
  drop table basico_localizacao.estado
end
;

if object_id('pais') is not null
begin
  drop table pais
end
;

if object_id('mascara') is not null
begin
  drop table mascara
end
;

