/*
* SCRIPT DE CREATE DA FUNÇÃO fn_CheckCategoriaCVC - SPRINT 0004
* 
* versao: 1.0 (MSSQL 2000)
* por: CARLOS FEITOSA (carlos.feitosa@rochedoproject.com)
* criacao: 10/09/2010
* ultimas modificacoes: 
* 						- 24/09/2010 - transferencia dos drops das funcoes criadas no
* 									   create schema do sprint 0006 para o drop
* 									   do script 0001
*                       - 06/10/2010 - Transferencia do create da funcao fn_CheckCategoriaCVC() para este aquivo.
*/

create function dbo.fn_CheckCategoriaCVC(@id_categoria int)
returns int
as
begin
  declare @retval int
  set @retval = (select top 1 c.id
                 from categoria c
                 left JOIN basico.tipo_categoria t on (c.id_tipo_categoria = t.id)
                 where c.id = @id_categoria
                 and t.nome = 'CVC'
                 and c.nome = 'CVC')
  return @retval
end