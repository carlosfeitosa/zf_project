/*
* SCRIPT DE DROP DAS TABELAS DO SPRINT 0003.3
* 
* versao: 1.0 (POSTGRESQL 8.4.1)
* por: JOÃO HENRIQUE M.BIONE  (joao.henrique.bione@rochedoproject.com)
* criacao: 30/12/2010
* ultimas modificacoes:
* 	26/04/2011 - IGOR PINHO (igor.pinho.souza@rochedoframework.com)
* 						
*/

if object_id('website') is not null
begin
  drop table website
end
;

if object_id('basico_localizacao.municipio') is not null
begin
  drop table basico_localizacao.municipio
end
;