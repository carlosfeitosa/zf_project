/*
* SCRIPT DE DROP DAS TABELAS DO SPRINT 0003.4
* 
* versao: 1.0 (POSTGRESQL 8.4.1)
* por: JOÃO VASCONCELOS  (joao.vasconcelos@rochedoproject.com)
* criacao: 14/02/2011
* ultimas modificacoes:
* 						
*/
if object_id('basico_dados_biometricos.tipo_sanguineo') is not null
begin
drop table tipo_sanguineo
end
;