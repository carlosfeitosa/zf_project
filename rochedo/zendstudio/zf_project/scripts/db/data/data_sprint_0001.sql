DECLARE @LAST_ID_TIPO_PAI INTEGER, @LAST_ID_PAI INTEGER
INSERT INTO [dbo].[TIPO_CATEGORIA]([NOME], [DESCRICAO], [ROWINFO])
VALUES('PERFIL', 'Perfis de usuários do sistema.', 'SYSTEM STARTUP')
SET @LAST_ID_TIPO_PAI = @@IDENTITY
INSERT INTO [dbo].[CATEGORIA]([ID_TIPO_CATEGORIA], [NOME], [DESCRICAO], [ROWINFO])
VALUES(@LAST_ID_TIPO_PAI, 'USUARIO', 'Usuários do sistema.', 'SYSTEM STARTUP')
SET @LAST_ID_PAI = @@IDENTITY
INSERT INTO [dbo].[PERFIL]([ID_CATEGORIA], [NOME], [DESCRICAO], [ROWINFO])
VALUES(@LAST_ID_PAI, 'SISTEMA', 'Usuário sistema.', 'SYSTEM STARTUP')
INSERT INTO [dbo].[PERFIL]([ID_CATEGORIA], [NOME], [DESCRICAO], [ROWINFO])
VALUES(@LAST_ID_PAI, 'USUARIO_NAO_VALIDADO', 'Usuário não validado no sistema.', 'SYSTEM STARTUP')
GO

DECLARE @LAST_ID_TIPO_PAI INTEGER, @LAST_ID_PAI INTEGER
INSERT INTO [dbo].[TIPO_CATEGORIA]([NOME], [DESCRICAO], [ROWINFO])
VALUES('MENSAGEM', 'Mensagens do sistema.', 'SYSTEM STARTUP')
SET @LAST_ID_TIPO_PAI = @@IDENTITY
INSERT INTO [dbo].[CATEGORIA]([ID_TIPO_CATEGORIA], [NOME], [DESCRICAO], [ROWINFO])
VALUES(@LAST_ID_TIPO_PAI, 'EMAIL', 'Envio de mensagens eletrônicas.', 'SYSTEM STARTUP')
SET @LAST_ID_PAI = @@IDENTITY
INSERT INTO [dbo].[CATEGORIA]([ID_TIPO_CATEGORIA], [ID_CATEGORIA_PAI], [NIVEL], [NOME], [DESCRICAO], [ROWINFO])
VALUES(@LAST_ID_TIPO_PAI, @LAST_ID_PAI, 2, 'EMAIL_VALIDACAO_USUARIO', 'Mensagens de validação de usuário.', 'SYSTEM STARTUP')
INSERT INTO [dbo].[CATEGORIA]([ID_TIPO_CATEGORIA], [ID_CATEGORIA_PAI], [NIVEL], [NOME], [DESCRICAO], [ROWINFO])
VALUES(@LAST_ID_TIPO_PAI, @LAST_ID_PAI, 2, 'EMAIL_PRIMARIO', 'E-mail principal validado pelo sistema.', 'SYSTEM STARTUP')
GO

DECLARE @LAST_ID_TIPO_PAI INTEGER
INSERT INTO [dbo].[TIPO_CATEGORIA]([NOME], [DESCRICAO], [ROWINFO])
VALUES('LOG', 'LOGs do sistema.', 'SYSTEM STARTUP')
SET @LAST_ID_TIPO_PAI = @@IDENTITY
INSERT INTO [dbo].[CATEGORIA]([ID_TIPO_CATEGORIA], [NOME], [DESCRICAO], [ROWINFO])
VALUES(@LAST_ID_TIPO_PAI, 'LOG_VALIDACAO_USUARIO', 'Operações de validação de usuário.', 'SYSTEM STARTUP')
INSERT INTO [dbo].[CATEGORIA]([ID_TIPO_CATEGORIA], [NOME], [DESCRICAO], [ROWINFO])
VALUES(@LAST_ID_TIPO_PAI, 'LOG_EMAIL', 'Operações de envio de e-mail.', 'SYSTEM STARTUP')
GO

DECLARE @LAST_ID INTEGER
INSERT INTO [dbo].[PESSOA]([ROWINFO])
VALUES('(não disponível)')
SET @LAST_ID = @@IDENTITY

declare @login varchar(100), @password varchar(100)
set @login=''
select @login=@login+char(n) from
(
	select top 100 number  as n from master..spt_values 
	where type='p' and number between 48 and 122
	order by newid()
) as t
set @password=''
select @password=@password+char(n) from
(
	select top 100 number  as n from master..spt_values 
	where type='p' and number between 48 and 122
	order by newid()
) as t

INSERT INTO [dbo].[LOGIN]([ID_PESSOA], [LOGIN], [SENHA], [PODE_EXPIRAR], [DATAHORA_PROXIMA_EXPIRACAO], [ROWINFO])
VALUES(@LAST_ID, @login, @password, 0, NULL, '(não disponível)')

INSERT INTO [dbo].[PESSOAS_PERFIS]([ID_PESSOA], [ID_PERFIL])
SELECT @LAST_ID, perf.[ID]
FROM [dbo].[PERFIL] perf
LEFT JOIN [dbo].[CATEGORIA] cat ON (perf.[ID_CATEGORIA] = cat.[ID])
LEFT JOIN [dbo].[TIPO_CATEGORIA] tipo_cat ON (cat.[ID_TIPO_CATEGORIA] = tipo_cat.[ID])
WHERE tipo_cat.[NOME] = 'PERFIL'
AND cat.[NOME] = 'USUARIO'
AND perf.[NOME] = 'SISTEMA'

GO