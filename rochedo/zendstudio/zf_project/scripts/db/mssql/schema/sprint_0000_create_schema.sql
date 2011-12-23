/*
* SCRIPT DE CRIACAO DAS TABELAS DO SPRINT 0000
* 
* versao: 1.0 (MSSQL 2005)
* por: JOÃO VASCONCELOS (joao.vasconcelos@rochedoproject.com)
* criacao: 29/11/2011
* ultimas modificacoes: 
* 						- 29/11/2011 - CRIACAO DOS SCHEMAS PARA MODULARIZAR O BANCO DE DADOS DA APLICACAO
*/

/* CRIACAO DOS SCHEMAS */
create schema basico 						 authorization rochedo_user;
create schema basico_acao_aplicacao 		 authorization rochedo_user;
create schema basico_categoria 				 authorization rochedo_user;
create schema basico_pessoa 				 authorization rochedo_user;
create schema basico_pessoa_juridica 		 authorization rochedo_user;
create schema basico_conteudo 				 authorization rochedo_user;
create schema basico_assoccl_pessoa_perfil   authorization rochedo_user;
create schema basico_formulario 			 authorization rochedo_user;
create schema basico_formulario_elemento 	 authorization rochedo_user;
create schema basico_form_form_elemento 	 authorization rochedo_user;
create schema basico_formulario_rascunho 	 authorization rochedo_user;
create schema basico_mensagem 				 authorization rochedo_user;
create schema basico_perfil 				 authorization rochedo_user;
create schema basico_categoria_chave_estrang authorization rochedo_user;
create schema basico_dados_biometricos 		 authorization rochedo_user;
create schema basico_dados_academicos 		 authorization rochedo_user;
create schema basico_dados_profis 			 authorization rochedo_user;
create schema basico_localizacao 			 authorization rochedo_user;
create schema basico_contato 				 authorization rochedo_user;