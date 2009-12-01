DECLARE @LAST_ID_TIPO_PAI INTEGER, @LAST_ID_PAI INTEGER, @LAST_ID_PAI2 INTEGER
INSERT INTO [dbo].[TIPO_CATEGORIA]([NOME], [DESCRICAO], [ROWINFO])
VALUES('SISTEMA', 'Categorias imutáveis.', 'SYSTEM STARTUP')
SET @LAST_ID_TIPO_PAI = @@IDENTITY
INSERT INTO [dbo].[CATEGORIA]([ID_TIPO_CATEGORIA], [NIVEL], [NOME], [DESCRICAO], [ROWINFO])
VALUES(@LAST_ID_TIPO_PAI, 1, 'SISTEMA_USUARIO', 'Usuários utilizados pelo sistema.', 'SYSTEM STARTUP')
SET @LAST_ID_PAI = @@IDENTITY
INSERT INTO [dbo].[PERFIL]([ID_CATEGORIA], [NOME], [DESCRICAO], [ROWINFO])
VALUES(@LAST_ID_PAI, 'SISTEMA', 'Usuário sistema.', 'SYSTEM STARTUP')
INSERT INTO [dbo].[PERFIL]([ID_CATEGORIA], [NOME], [DESCRICAO], [ROWINFO])
VALUES(@LAST_ID_PAI, 'USUARIO_NAO_VALIDADO', 'Usuário não validado pelo sistema.', 'SYSTEM STARTUP')
INSERT INTO [dbo].[CATEGORIA]([ID_TIPO_CATEGORIA], [NIVEL], [NOME], [DESCRICAO], [ROWINFO])
VALUES(@LAST_ID_TIPO_PAI, 1, 'SISTEMA_MENSAGEM', 'Mensagens do sistema.', 'SYSTEM STARTUP')
SET @LAST_ID_PAI = @@IDENTITY
INSERT INTO [dbo].[CATEGORIA]([ID_TIPO_CATEGORIA], [ID_CATEGORIA_PAI], [NIVEL], [NOME], [DESCRICAO], [ROWINFO])
VALUES(@LAST_ID_TIPO_PAI, @@IDENTITY, 2, 'SISTEMA_MENSAGEM_EMAIL', 'Envio de mensagens eletrônicas pelo sistema.', 'SYSTEM STARTUP')
SET @LAST_ID_PAI = @@IDENTITY
INSERT INTO [dbo].[CATEGORIA]([ID_TIPO_CATEGORIA], [ID_CATEGORIA_PAI], [NIVEL], [NOME], [DESCRICAO], [ROWINFO])
VALUES(@LAST_ID_TIPO_PAI, @@IDENTITY, 3, 'SISTEMA_MENSAGEM_EMAIL_TEMPLATE', 'Templates de e-mails enviados pelo sistema.', 'SYSTEM STARTUP')
INSERT INTO [dbo].[CATEGORIA]([ID_TIPO_CATEGORIA], [ID_CATEGORIA_PAI], [NIVEL], [NOME], [DESCRICAO], [ROWINFO])
VALUES(@LAST_ID_TIPO_PAI, @@IDENTITY, 4, 'SISTEMA_MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO_PLAINTEXT', 'Template de mensagens PLAIN TEXT de validação de usuário.', 'SYSTEM STARTUP')
SET @LAST_ID_PAI = @@IDENTITY
INSERT INTO [dbo].[MENSAGEM] ([REMETENTE], [DESTINATARIOS], [ASSUNTO], [MENSAGEM], [ID_CATEGORIA], [ROWINFO], [DATAHORA])
VALUES ('Rochedo Project <info@rochedoproject.com>', 'SYSTEM_STARTUP', 'Confirmação de Registro', 'Prezado(a) [nome_usuario], para continuar o seu cadastro no Rochedo Project, clique no link abaixo: [link]', @LAST_ID_PAI, 'SYSTEM_STARTUP', getDate())
INSERT INTO [dbo].[CATEGORIA]([ID_TIPO_CATEGORIA], [NIVEL], [NOME], [DESCRICAO], [ROWINFO])
VALUES(@LAST_ID_TIPO_PAI, 1, 'LOG', 'Histórico de operações do sistema.', 'SYSTEM STARTUP')
SET @LAST_ID_PAI = @@IDENTITY
INSERT INTO [dbo].[CATEGORIA]([ID_TIPO_CATEGORIA], [ID_CATEGORIA_PAI], [NIVEL], [NOME], [DESCRICAO], [ROWINFO])
VALUES(@LAST_ID_TIPO_PAI, @LAST_ID_PAI, 2, 'LOG_VALIDACAO_USUARIO', 'Operações de validação de usuário.', 'SYSTEM STARTUP')
INSERT INTO [dbo].[CATEGORIA]([ID_TIPO_CATEGORIA], [ID_CATEGORIA_PAI], [NIVEL], [NOME], [DESCRICAO], [ROWINFO])
VALUES(@LAST_ID_TIPO_PAI, @LAST_ID_PAI, 2, 'LOG_EMAIL', 'Operações de envio de e-mail.', 'SYSTEM STARTUP')
GO

DECLARE @LAST_ID_TIPO_PAI INTEGER, @LAST_ID_PAI INTEGER
INSERT INTO [dbo].[TIPO_CATEGORIA]([NOME], [DESCRICAO], [ROWINFO])
VALUES('PERFIL', 'Perfis.', 'SYSTEM STARTUP')
SET @LAST_ID_TIPO_PAI = @@IDENTITY
INSERT INTO [dbo].[CATEGORIA]([ID_TIPO_CATEGORIA], [NOME], [DESCRICAO], [ROWINFO])
VALUES(@LAST_ID_TIPO_PAI, 'PERFIL_USUARIO', 'Perfis de usuários.', 'SYSTEM STARTUP')
GO

DECLARE @LAST_ID_TIPO_PAI INTEGER, @LAST_ID_PAI INTEGER, @LAST_ID_AUX INTEGER
INSERT INTO [dbo].[TIPO_CATEGORIA]([NOME], [DESCRICAO], [ROWINFO])
VALUES('MENSAGEM', 'Mensagens.', 'SYSTEM STARTUP')
SET @LAST_ID_TIPO_PAI = @@IDENTITY
INSERT INTO [dbo].[CATEGORIA]([ID_TIPO_CATEGORIA], [NIVEL], [NOME], [DESCRICAO], [ROWINFO])
VALUES(@LAST_ID_TIPO_PAI, 1, 'MENSAGEM_EMAIL', 'Mensagens do tipo e-mail.', 'SYSTEM STARTUP')
SET @LAST_ID_PAI = @@IDENTITY
INSERT INTO [dbo].[CATEGORIA]([ID_TIPO_CATEGORIA], [ID_CATEGORIA_PAI], [NIVEL], [NOME], [DESCRICAO], [ROWINFO])
VALUES(@LAST_ID_TIPO_PAI, @LAST_ID_PAI, 2, 'MENSAGEM_EMAIL_VALIDACAO_USUARIO', 'Mensagens do tipo e-mail de validação de usuário.', 'SYSTEM STARTUP')
SET @LAST_ID_AUX = @@IDENTITY
INSERT INTO [dbo].[CATEGORIA]([ID_TIPO_CATEGORIA], [ID_CATEGORIA_PAI], [NIVEL], [NOME], [DESCRICAO], [ROWINFO])
VALUES(@LAST_ID_TIPO_PAI, @LAST_ID_AUX, 3, 'MENSAGEM_EMAIL_VALIDACAO_USUARIO_PLAINTEXT', 'Mensagens do tipo e-mail PLAIN TEXT de validação de usuário.', 'SYSTEM STARTUP')
GO

DECLARE @LAST_ID_TIPO_PAI INTEGER
INSERT INTO [dbo].[TIPO_CATEGORIA]([NOME], [DESCRICAO], [ROWINFO])
VALUES('EMAIL', 'Endereços de e-mail.', 'SYSTEM STARTUP')
SET @LAST_ID_TIPO_PAI = @@IDENTITY
INSERT INTO [dbo].[CATEGORIA]([ID_TIPO_CATEGORIA], [NIVEL], [NOME], [DESCRICAO], [ROWINFO])
VALUES(@LAST_ID_TIPO_PAI, 1, 'EMAIL_PRIMARIO', 'Endereços de e-mail principal validado pelo sistema.', 'SYSTEM STARTUP')
GO

DECLARE @LAST_ID INTEGER
INSERT INTO [dbo].[PESSOA]([ROWINFO])
VALUES('SYSTEM STARTUP')
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
VALUES(@LAST_ID, @login, @password, 0, NULL, 'SYSTEM STARTUP')

INSERT INTO [dbo].[PESSOAS_PERFIS]([ID_PESSOA], [ID_PERFIL])
SELECT @LAST_ID, perf.[ID]
FROM [dbo].[PERFIL] perf
LEFT JOIN [dbo].[CATEGORIA] cat ON (perf.[ID_CATEGORIA] = cat.[ID])
LEFT JOIN [dbo].[TIPO_CATEGORIA] tipo_cat ON (cat.[ID_TIPO_CATEGORIA] = tipo_cat.[ID])
WHERE tipo_cat.[NOME] = 'SISTEMA'
AND cat.[NOME] = 'SISTEMA_USUARIO'
AND perf.[NOME] = 'SISTEMA'

GO