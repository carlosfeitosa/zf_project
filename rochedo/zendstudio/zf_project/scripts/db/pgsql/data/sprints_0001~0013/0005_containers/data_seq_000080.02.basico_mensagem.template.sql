/**
* SCRIPT DE POPULACAO DA TABELA basico_mensagem.template
* 
* Esta tabela funciona como um banco de dados de templates de mensagens.
* 
* versao: 1.0 (POSTGRESQL 9.1.1)
* por: JOÃO VASCONCELOS (joao.vasconcelos@rochedoframework.com)
* criacao: 27/02/2012
* ultimas modificacoes:
* 								
*/

INSERT INTO basico_mensagem.template (nome, ativo, constante_textual_assunto, constante_textual_mensagem, id_categoria, datahora_criacao, rowinfo)
SELECT 'SISTEMA_MENSAGEM_EMAIL_TEMPLATE_TENTATIVA_REGISTRO_UTILIZANDO_EMAIL_PRIMARIO_PLAINTEXT' AS nome,
		true AS ativo,
		'ASSUNTO_MENSAGEM_EMAIL_TEMPLATE_TENTATIVA_REGISTRO_UTILIZANDO_EMAIL_PRIMARIO' AS constante_textual_assunto,
		'MENSAGEM_EMAIL_TEMPLATE_TENTATIVA_REGISTRO_UTILIZANDO_EMAIL_PRIMARIO' as constante_textual_mensagem, 
		c.id AS id_categoria,
		current_timestamp AS datahora_criacao, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'SISTEMA_MENSAGEM_EMAIL_TEMPLATE_REGISTRO_USUARIO_PLAINTEXT';

INSERT INTO basico_mensagem.template (nome, ativo, remetente, destinatarios, constante_textual_assunto, constante_textual_mensagem, id_categoria, datahora_criacao, rowinfo)
SELECT 'SISTEMA_MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO_PLAINTEXT' AS nome, 
		true AS ativo, 
		'ASSUNTO_MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO' AS constante_textual_assunto,
		'MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO' as constante_textual_mensagem, 
		c.id AS id_categoria, current_timestamp AS datahora_criacao, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'SISTEMA_MENSAGEM_EMAIL_TEMPLATE_REGISTRO_USUARIO_PLAINTEXT';

INSERT INTO basico_mensagem.template (nome, ativo, remetente, destinatarios, constante_textual_assunto, constante_textual_mensagem, id_categoria, datahora_criacao, rowinfo)
SELECT 'SISTEMA_MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO_PLAINTEXT_REENVIO' AS nome, 
		true AS ativo, 
		'ASSUNTO_MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO_REENVIO' AS constante_textual_assunto,
		'MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO_REENVIO' as constante_textual_mensagem, c.id AS id_categoria, current_timestamp AS datahora_criacao, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'SISTEMA_MENSAGEM_EMAIL_TEMPLATE_REGISTRO_USUARIO_PLAINTEXT';

INSERT INTO basico_mensagem.template (nome, ativo, remetente, destinatarios, constante_textual_assunto, constante_textual_mensagem, id_categoria, datahora_criacao, rowinfo)
SELECT 'SISTEMA_MENSAGEM_EMAIL_TEMPLATE_CONFIRMACAO_CADASTRO_PLAINTEXT' AS nome, 
		true AS ativo, 
		'ASSUNTO_MENSAGEM_EMAIL_TEMPLATE_CONFIRMACAO_CADASTRO' AS constante_textual_assunto,
		'MENSAGEM_EMAIL_TEMPLATE_CONFIRMACAO_CADASTRO' as constante_textual_mensagem, 
		c.id AS id_categoria, current_timestamp AS datahora_criacao, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'SISTEMA_MENSAGEM_EMAIL_TEMPLATE_REGISTRO_USUARIO_PLAINTEXT';


INSERT INTO basico_mensagem.template (nome, ativo, remetente, destinatarios, constante_textual_assunto, constante_textual_mensagem, id_categoria, datahora_criacao, rowinfo)
SELECT 'SISTEMA_MENSAGEM_EMAIL_TEMPLATE_PROBLEMAS_LOGIN_PLAINTEXT' AS nome, 
		true AS ativo, 
		'ASSUNTO_MENSAGEM_EMAIL_TEMPLATE_PROBLEMAS_LOGIN' AS constante_textual_assunto,
		'MENSAGEM_EMAIL_TEMPLATE_PROBLEMAS_LOGIN' as constante_textual_mensagem, 
		c.id AS id_categoria, current_timestamp AS datahora_criacao, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'SISTEMA_MENSAGEM_EMAIL_TEMPLATE_PROBLEMAS_LOGIN_PLAINTEXT';