/*
* SCRIPT DE DROP DAS TABELAS DO SPRINT 0001
* 
* versao: 1.0 (MSSQL 2000)
* por: CARLOS FEITOSA (carlos.feitosa@rochedoproject.com)
* criacao: 13/12/2009
* ultimas modificacoes: 
* 						- 23/12/2009
* 						- 29/12/2009 - drop table dados_pessoas_perfis;
* 						- 29/01/2010 - drop table categoria_chave_estrangeira e token;
* 						- 22/02/2010 - drop table dicionario_expressao;
* 						- 24/09/2010 - drop das funcoes do CVC;
* 						- 29/10/2010 - drop da tabela "modulo", proviniente do sprint 0004;
*/

if object_id('dicionario_expressao') is not null
begin
  drop table dicionario_expressao
end
;

if object_id('token') is not null
begin
  drop table token
end
;

if object_id('categoria_chave_estrangeira') is not null
begin
  drop table categoria_chave_estrangeira
end
;

if object_id('email') is not null
begin
  drop table email
end
;

if object_id('log') is not null
begin
  drop table log
end
;

if object_id('login') is not null
begin
  drop table login
end
;

if object_id('dados_pessoais') is not null
begin
  drop table dados_pessoais
end
;

if object_id('dados_pessoas_perfis') is not null
begin
  drop table dados_pessoas_perfis
end
;

if object_id('pessoas_perfis_mensagens_categorias') is not null
begin
  drop table pessoas_perfis_mensagens_categorias
end
;

if object_id('pessoas_perfis') is not null
begin
  drop table pessoas_perfis
end
;

if object_id('pessoa') is not null
begin
  drop table pessoa
end
;

if object_id('perfil') is not null
begin
  drop table perfil
end
;

if object_id('mensagem_email') is not null
begin
  drop table mensagem_email
end
;

if object_id('anexo_mensagem') is not null
begin
  drop table anexo_mensagem
end
;

if object_id('mensagem') is not null
begin
  drop table mensagem
end
;

if object_id('modulo') is not null
begin
drop table modulo;
end
;

if object_id('categoria') is not null
begin
  drop table categoria
end
;

if object_id('tipo_categoria') is not null
begin
  drop table tipo_categoria
end
;

if object_id('fn_CheckCategoriaChaveEstrangeiraCategoriaExists') is not null
begin
  drop function fn_CheckCategoriaChaveEstrangeiraCategoriaExists
end
;

if object_id('fn_CheckCategoriaCVC') is not null
begin
  drop function fn_CheckCategoriaCVC
end
;

if object_id('fn_CheckConstanteTextualExists') is not null
begin
  drop function fn_CheckConstanteTextualExists
end
;