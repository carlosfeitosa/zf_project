/**
* SCRIPT DE POPULACAO DA TABELA MENSAGEM
* 
* versao: 1.0 (POSTGRESQL 8.4.1)
* por: CARLOS FEITOSA (carlos.feitosa@rochedoproject.com)
* criacao: 21/10/2010
* ultimas modificacoes:
* 
*/

INSERT INTO mensagem (remetente, destinatarios, assunto, mensagem, id_categoria, datahora_mensagem, rowinfo)
SELECT 'SYSTEM_STARTUP' AS remetente, 'SYSTEM_STARTUP' AS destinatarios, 'Confirmação de Registro' AS assunto,
'Prezado(a) sr.(a) [nome_usuario],


Recentemente recebemos uma solicitação de registro em nosso sistema, relacionado ao seu endereço de e-mail a qual esta mensagem foi enviada.

Caso você tenha feito esta solicitação, continue o seu registro clicando no link abaixo, ou copie/cole o endereço em seu navegador de preferência: 
[link]


Caso você não tenha solicitado este registro, por favor ignore esta mensagem.

Atenciosamente,
[assinatura_mensagem]' as mensagem, c.id AS id_categoria, current_timestamp AS datahora_mensagem, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'SISTEMA_MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO_PLAINTEXT';

INSERT INTO mensagem (remetente, destinatarios, assunto, mensagem, id_categoria, datahora_mensagem, rowinfo)
SELECT 'SYSTEM_STARTUP' AS remetente, 'SYSTEM_STARTUP' AS destinatarios, 'Reenvio de confirmação de Registro' AS assunto,
'Prezado(a) sr.(a) [nome_usuario],


Recentemente recebemos uma solicitação de registro em nosso sistema, relacionado ao seu endereço de e-mail a qual esta mensagem foi enviada.

Caso você tenha feito esta solicitação, continue o seu registro clicando no link abaixo, ou copie/cole o endereço em seu navegador de preferência: 
[link]


Caso você não tenha solicitado este registro, por favor ignore esta mensagem.

Atenciosamente,
[assinatura_mensagem]' as mensagem, c.id AS id_categoria, current_timestamp AS datahora_mensagem, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'SISTEMA_MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO_PLAINTEXT_REENVIO';