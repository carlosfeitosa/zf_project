DECLARE @LAST_ID_TIPO_PAI INTEGER, @LAST_ID_PAI INTEGER
INSERT INTO [dbo].[TIPO_CATEGORIA]([NOME], [DESCRICAO], [ROWINFO])
VALUES('PERFIL', 'Perfis de usuários do sistema.', '(falta implementar)')
SET @LAST_ID_TIPO_PAI = @@IDENTITY
INSERT INTO [dbo].[CATEGORIA]([ID_TIPO_CATEGORIA], [NOME], [DESCRICAO], [ROWINFO])
VALUES(@LAST_ID_TIPO_PAI, 'USUARIO', 'Usuários do sistema.', '(falta implementar)')
SET @LAST_ID_PAI = @@IDENTITY
INSERT INTO [dbo].[PERFIL]([ID_CATEGORIA], [NOME], [DESCRICAO], [ROWINFO])
VALUES(@LAST_ID_PAI, 'USUARIO_NAO_VALIDADO', 'Usuário não validado no sistema.', '(falta implementar)')
GO

DECLARE @LAST_ID_TIPO_PAI INTEGER, @LAST_ID_PAI INTEGER
INSERT INTO [dbo].[TIPO_CATEGORIA]([NOME], [DESCRICAO], [ROWINFO])
VALUES('MENSAGEM', 'Mensagens do sistema.', '(falta implementar)')
SET @LAST_ID_TIPO_PAI = @@IDENTITY
INSERT INTO [dbo].[CATEGORIA]([ID_TIPO_CATEGORIA], [NOME], [DESCRICAO], [ROWINFO])
VALUES(@LAST_ID_TIPO_PAI, 'EMAIL', 'Envio de mensagens eletrônicas.', '(falta implementar)')
SET @LAST_ID_PAI = @@IDENTITY
INSERT INTO [dbo].[CATEGORIA]([ID_TIPO_CATEGORIA], [ID_CATEGORIA_PAI], [NIVEL], [NOME], [DESCRICAO], [ROWINFO])
VALUES(@LAST_ID_TIPO_PAI, @LAST_ID_PAI, 2, 'EMAIL_VALIDACAO_USUARIO', 'Mensagens de validação de usuário.', '(falta implementar)')
INSERT INTO [dbo].[CATEGORIA]([ID_TIPO_CATEGORIA], [ID_CATEGORIA_PAI], [NIVEL], [NOME], [DESCRICAO], [ROWINFO])
VALUES(@LAST_ID_TIPO_PAI, @LAST_ID_PAI, 2, 'EMAIL_PRIMARIO', 'E-mail principal validado pelo sistema.', '(falta implementar)')
GO

DECLARE @LAST_ID_TIPO_PAI INTEGER
INSERT INTO [dbo].[TIPO_CATEGORIA]([NOME], [DESCRICAO], [ROWINFO])
VALUES('LOG', 'LOGs do sistema.', '(falta implementar)')
SET @LAST_ID_TIPO_PAI = @@IDENTITY
INSERT INTO [dbo].[CATEGORIA]([ID_TIPO_CATEGORIA], [NOME], [DESCRICAO], [ROWINFO])
VALUES(@LAST_ID_TIPO_PAI, 'LOG_VALIDACAO_USUARIO', 'Operações de validação de usuário.', '(falta implementar)')
INSERT INTO [dbo].[CATEGORIA]([ID_TIPO_CATEGORIA], [NOME], [DESCRICAO], [ROWINFO])
VALUES(@LAST_ID_TIPO_PAI, 'LOG_EMAIL', 'Operações de envio de e-mail.', '(falta implementar)')
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
GO