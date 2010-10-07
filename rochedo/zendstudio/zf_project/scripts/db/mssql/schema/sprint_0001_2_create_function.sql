/*
* SCRIPT DE CRIACAO DA FUNÇÃO fn_CheckCategoriaChaveEstrangeiraCategoriaExists() DO SPRINT 0001
* 
* versao: 1.0 (MSSQL 2000)
* por: CARLOS FEITOSA (carlos.feitosa@rochedoproject.com)
* criacao: 06/10/2010
* ultimas modificacoes: 
* 						
*/
create function dbo.fn_CheckCategoriaChaveEstrangeiraCategoriaExists(@id_categoria int)
returns int
as
begin
  declare @retval int
  set @retval = (select top 1 id
                 from categoria_chave_estrangeira
                 where id_categoria = @id_categoria)
  return @retval
end
