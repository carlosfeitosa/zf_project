/*
* SCRIPT DE DROP DAS TABELAS DO SPRINT 0013
* 
* versao: 1.0 (POSTGRESQL 8.4.1)
* por: João Vasconcelos (joao.vasconcelos@rochedoframework.com)
* criacao: 06/09/2011
* 
* 24/10/2011 - criacao do drop das entidades grupo_rascunho e sequencia_formulario (João Vasconcelos - Bione);
* 
*/

drop table if exists basico_formulario.rascunho;
drop table if exists basico_formulario_rascunho.assocag_grupo;
drop table if exists basico_formulario.assocag_sequencia;