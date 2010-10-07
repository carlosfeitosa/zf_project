/*
* SCRIPT DE CRIACAO DA FUNÇÃO fn_CheckCategoriaChaveEstrangeiraCategoriaExists() DO SPRINT 0006
* 
* versao: 1.0 (MSSQL 2000)
* por: CARLOS FEITOSA (carlos.feitosa@rochedoproject.com)
* criacao: 06/10/2010
* ultimas modificacoes: 
* 						
*/
create function dbo.fn_CheckConstanteTextualExists(@constante_textual varchar (200))
returns int
as
begin
  declare @retval int
  set @retval = (select top 1 id
                 from dicionario_expressao
                 where constante_textual = @constante_textual)
  return @retval
end
