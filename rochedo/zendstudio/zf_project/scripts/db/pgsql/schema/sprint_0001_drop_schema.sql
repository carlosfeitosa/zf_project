/*
* SCRIPT DE DROP DAS TABELAS DO SPRINT 0001
* 
* versao: 1.0 (POSTGRESQL 8.4.1)
* por: CARLOS FEITOSA (carlos.feitosa@rochedoproject.com)
* criacao: 13/12/2009
* ultimas modificacoes: 
* 				      	- 13/12/2009
* 						- 29/12/2009 - drop table dados_pessoas_perfis;
* 						- 29/01/2010 - drop table categoria_chave_estrangeira e token;
* 						- 22/02/2010 - drop table dicionario_expressao;
* 						- 28/09/2010 - drop das funcoes do CVC;
* 						- 29/10/2010 - drop da tabela "modulo", proviniente do sprint 0004;
*/

drop table if exists dicionario_expressao;
drop table if exists token;
drop table if exists categoria_chave_estrangeira;
drop table if exists email;
drop table if exists log;
drop table if exists login;
drop table if exists dados_pessoais;
drop table if exists dados_pessoas_perfis;
drop table if exists pessoas_perfis_mensagens_categorias;
drop table if exists pessoas_perfis;
drop table if exists pessoa;
drop table if exists perfil;
drop table if exists mensagem_email;
drop table if exists anexo_mensagem;
drop table if exists mensagem;
drop table if exists modulo;
drop table if exists categoria;
drop table if exists tipo_categoria;
drop function if exists fn_CheckCategoriaChaveEstrangeiraCategoriaExists(int);
drop function if exists fn_CheckCategoriaCVC(int);
drop function if exists fn_CheckConstanteTextualExists(character varying (200));