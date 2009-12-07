DECLARE @LAST_ID_TIPO_PAI INTEGER, @LAST_ID_PAI INTEGER, @LAST_ID_PAI2 INTEGER, @MENSAGEM_CONFIRMACAO_REGISTRO VARCHAR(1000)
SET @MENSAGEM_CONFIRMACAO_REGISTRO = 
'Prezado(a) sr.(a) [nome_usuario], 

Para continuar o seu registro em nosso servico, por favor clique no link abaixo, ou copie e cole o endereco em seu navegador: 
[link]


Caso voce nao tenha solicitado este registro, por favor apenas ignore esta mensagem.

Atenciosamente, 
[assinatura_mensagem]'
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
VALUES(@LAST_ID_TIPO_PAI, 1, 'SISTEMA_EMAIL', 'Email do sistema.', 'SYSTEM STARTUP')
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
INSERT INTO [dbo].[MENSAGEM] ([REMETENTE], [DESTINATARIOS], [ASSUNTO], [MENSAGEM], [ID_CATEGORIA], [ROWINFO], [DATAHORA_MENSAGEM])
VALUES ('SYSTEM_STARTUP', 'SYSTEM_STARTUP', 'Confirmação de Registro', @MENSAGEM_CONFIRMACAO_REGISTRO, @LAST_ID_PAI, 'SYSTEM_STARTUP', getDate())
INSERT INTO [dbo].[CATEGORIA]([ID_TIPO_CATEGORIA], [NIVEL], [NOME], [DESCRICAO], [ROWINFO])
VALUES(@LAST_ID_TIPO_PAI, 1, 'LOG', 'Histórico de operações do sistema.', 'SYSTEM STARTUP')
SET @LAST_ID_PAI = @@IDENTITY
INSERT INTO [dbo].[CATEGORIA]([ID_TIPO_CATEGORIA], [ID_CATEGORIA_PAI], [NIVEL], [NOME], [DESCRICAO], [ROWINFO])
VALUES(@LAST_ID_TIPO_PAI, @LAST_ID_PAI, 2, 'LOG_VALIDACAO_USUARIO', 'Operações de validação de usuário.', 'SYSTEM STARTUP')
INSERT INTO [dbo].[CATEGORIA]([ID_TIPO_CATEGORIA], [ID_CATEGORIA_PAI], [NIVEL], [NOME], [DESCRICAO], [ROWINFO])
VALUES(@LAST_ID_TIPO_PAI, @LAST_ID_PAI, 2, 'LOG_EMAIL', 'Operações de envio de e-mail.', 'SYSTEM STARTUP')
INSERT INTO [dbo].[CATEGORIA]([ID_TIPO_CATEGORIA], [ID_CATEGORIA_PAI], [NIVEL], [NOME], [DESCRICAO], [ROWINFO])
VALUES(@LAST_ID_TIPO_PAI, @LAST_ID_PAI, 2, 'LOG_NOVA_PESSOA', 'Operação de criação de nova pessoa.', 'SYSTEM STARTUP')
INSERT INTO [dbo].[CATEGORIA]([ID_TIPO_CATEGORIA], [ID_CATEGORIA_PAI], [NIVEL], [NOME], [DESCRICAO], [ROWINFO])
VALUES(@LAST_ID_TIPO_PAI, @LAST_ID_PAI, 2, 'LOG_NOVA_PESSOA_PERFIL', 'Operação de associação de pessoa com perfil.', 'SYSTEM STARTUP')
INSERT INTO [dbo].[CATEGORIA]([ID_TIPO_CATEGORIA], [ID_CATEGORIA_PAI], [NIVEL], [NOME], [DESCRICAO], [ROWINFO])
VALUES(@LAST_ID_TIPO_PAI, @LAST_ID_PAI, 2, 'LOG_NOVO_DADOS_PESSOAIS', 'Operação criação de dados pessoais.', 'SYSTEM STARTUP')
INSERT INTO [dbo].[CATEGORIA]([ID_TIPO_CATEGORIA], [ID_CATEGORIA_PAI], [NIVEL], [NOME], [DESCRICAO], [ROWINFO])
VALUES(@LAST_ID_TIPO_PAI, @LAST_ID_PAI, 2, 'LOG_NOVO_EMAIL', 'Operação de inserção de e-mail.', 'SYSTEM STARTUP')
INSERT INTO [dbo].[CATEGORIA]([ID_TIPO_CATEGORIA], [ID_CATEGORIA_PAI], [NIVEL], [NOME], [DESCRICAO], [ROWINFO])
VALUES(@LAST_ID_TIPO_PAI, @LAST_ID_PAI, 2, 'LOG_NOVA_MENSAGEM', 'Operação de inserção de mensagem.', 'SYSTEM STARTUP')
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

INSERT INTO [dbo].[CATEGORIA]([ID_TIPO_CATEGORIA], [NIVEL], [NOME], [DESCRICAO], [ROWINFO])
VALUES(@LAST_ID_TIPO_PAI, 1, 'MENSAGEM_PESSOAS_ENVOLVIDAS', 'Pessoas envolvidas na mensagem.', 'SYSTEM STARTUP')
SET @LAST_ID_PAI = @@IDENTITY
INSERT INTO [dbo].[CATEGORIA]([ID_TIPO_CATEGORIA], [ID_CATEGORIA_PAI], [NIVEL], [NOME], [DESCRICAO], [ROWINFO])
VALUES(@LAST_ID_TIPO_PAI, @LAST_ID_PAI, 2, 'REMETENTE', 'Remetentes.', 'SYSTEM STARTUP')
INSERT INTO [dbo].[CATEGORIA]([ID_TIPO_CATEGORIA], [ID_CATEGORIA_PAI], [NIVEL], [NOME], [DESCRICAO], [ROWINFO])
VALUES(@LAST_ID_TIPO_PAI, @LAST_ID_PAI, 2, 'DESTINATARIO', 'Destinatarios.', 'SYSTEM STARTUP')
INSERT INTO [dbo].[CATEGORIA]([ID_TIPO_CATEGORIA], [ID_CATEGORIA_PAI], [NIVEL], [NOME], [DESCRICAO], [ROWINFO])
VALUES(@LAST_ID_TIPO_PAI, @LAST_ID_PAI, 2, 'DESTINATARIO_COPIA_CARBONADA', 'Destinatarios cópia Carbonada.', 'SYSTEM STARTUP')
INSERT INTO [dbo].[CATEGORIA]([ID_TIPO_CATEGORIA], [ID_CATEGORIA_PAI], [NIVEL], [NOME], [DESCRICAO], [ROWINFO])
VALUES(@LAST_ID_TIPO_PAI, @LAST_ID_PAI, 2, 'DESTINATARIO_COPIA_CARBONADA_OCULTA', 'Destinatarios cópia Carbonada oculta.', 'SYSTEM STARTUP')
INSERT INTO [dbo].[CATEGORIA]([ID_TIPO_CATEGORIA], [ID_CATEGORIA_PAI], [NIVEL], [NOME], [DESCRICAO], [ROWINFO])
VALUES(@LAST_ID_TIPO_PAI, @LAST_ID_PAI, 2, 'RESPONDER_PARA', 'Responder para', 'SYSTEM STARTUP')
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

SET @LAST_ID = @@IDENTITY
INSERT INTO [dbo].[PESSOAS_PERFIS_MENSAGEM_CATEGORIA]([ID_PESSOA_PERFIL], [ID_CATEGORIA], [ID_MENSAGEM], [ROWINFO])
SELECT @LAST_ID, c.[ID], m.[ID], 'SYSTEM_STARTUP'
FROM [dbo].[MENSAGEM] m, CATEGORIA C
WHERE c.[NOME] = 'REMETENTE'
AND M.id_categoria IN (SELECT ID FROM CATEGORIA WHERE NOME = 'SISTEMA_MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO_PLAINTEXT')

GO

INSERT INTO [dbo].[EMAIL]([ID_PESSOA], [ID_CATEGORIA], [UNIQUE_ID], [EMAIL], [VALIDADO], [DATAHORA_ULTIMA_VALIDACAO], [ATIVO],[ROWINFO])
SELECT TOP 1 P.[ID], C.ID, 'SYSTEM_STARTUP', 'info@rochedoproject.com', 1, getDate(), 1, 'SYSTEM_STARTUP'
FROM PESSOA P, CATEGORIA C 
WHERE C.NOME = 'SISTEMA_EMAIL' 