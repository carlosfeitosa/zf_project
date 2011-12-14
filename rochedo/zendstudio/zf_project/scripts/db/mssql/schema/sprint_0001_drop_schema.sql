/*
* SCRIPT DE DROP DAS TABELAS DO SPRINT 0001
* 
* versao: 1.0 (MSSQL 2000)
* por: CARLOS FEITOSA (carlos.feitosa@rochedoproject.com)
* criacao: 13/12/2009
* ultimas modificacoes: 
* 						- 23/12/2009
* 						- 29/12/2009 - drop table basico_assoccl_pessoa_perfil.assoc_dados;
* 						- 29/01/2010 - drop table basico_categoria.assoc_chave_estrangeira e token;
* 						- 22/02/2010 - drop table dicionario_expressao;
* 						- 24/09/2010 - drop das funcoes do CVC;
* 						- 29/10/2010 - drop da tabela "modulo", proviniente do sprint 0004;
*/

if object_id('basico.dicionario_expressao') is not null
begin
  drop table dicionario_expressao
end
;

if object_id('basico.token') is not null
begin
  drop table token
end
;

if object_id('basico_categoria.assoc_chave_estrangeira') is not null
begin
  drop table basico_categoria.assoc_chave_estrangeira
end
;

if object_id('basico_localizacao.email') is not null
begin
  drop table basico_localizacao.email
end
;

if object_id('basico.log') is not null
begin
  drop table basico.log
end
;

if object_id('basico.login') is not null
begin
  drop table basico.login
end
;

if object_id('basico_pessoa.assoc_dados') is not null
begin
  drop table basico_pessoa.assoc_dados
end
;

if object_id('basico_assoccl_pessoa_perfil.assoc_dados') is not null
begin
  drop table basico_assoccl_pessoa_perfil.assoc_dados
end
;

if object_id('basico_mensagem.assoccl_assoccl_pessoa_perfil') is not null
begin
  drop table basico_mensagem.assoccl_assoccl_pessoa_perfil
end
;

if object_id('pessoas_perfis') is not null
begin
  drop table basico_pessoa.assoccl_perfil
end
;

if object_id('basico.pessoa') is not null
begin
  drop table basico.pessoa
end
;

if object_id('basico.perfil') is not null
begin
  drop table basico.perfil
end
;

if object_id('basico_mensagem.assoc_email') is not null
begin
  drop table basico_mensagem.assoc_email
end
;

if object_id('anexo_mensagem') is not null
begin
  drop table anexo_mensagem
end
;

if object_id('basico.mensagem') is not null
begin
  drop table basico.mensagem
end
;

if object_id('basico.modulo') is not null
begin
drop table basico.modulo;
end
;

if object_id('basico.categoria') is not null
begin
  drop table categoria
end
;

if object_id('basico.tipo_categoria') is not null
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