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
'Prezado(a) sr.(a) @nomeUsuario,


Recentemente recebemos uma solicitação de registro em nosso sistema, relacionado ao seu endereço de e-mail a qual esta mensagem foi enviada.

Caso você tenha feito esta solicitação, continue o seu registro clicando no link abaixo, ou copie/cole o endereço em seu navegador de preferência: 
@linkValidacaoEmail


Caso você não tenha solicitado este registro, por favor ignore esta mensagem.

Atenciosamente,
@assinaturaMensagem' as mensagem, c.id AS id_categoria, current_timestamp AS datahora_mensagem, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'SISTEMA_MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO_PLAINTEXT_pt-br';

INSERT INTO mensagem (remetente, destinatarios, assunto, mensagem, id_categoria, datahora_mensagem, rowinfo)
SELECT 'SYSTEM_STARTUP' AS remetente, 'SYSTEM_STARTUP' AS destinatarios, 'Registration Confirmation' AS assunto,
'Dear @nomeUsuario,


We recently received a request for registration in our system, related to your e-mail to which this message was sent.

If you''ve made this request, continue your registration by clicking the link below or copy and paste the address into your browser of preference:
@linkValidacaoEmail


If you have not requested this registry, please ignore this message.

Sincerely,
@assinaturaMensagem' as mensagem, c.id AS id_categoria, current_timestamp AS datahora_mensagem, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'SISTEMA_MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO_PLAINTEXT_en-us';

INSERT INTO mensagem (remetente, destinatarios, assunto, mensagem, id_categoria, datahora_mensagem, rowinfo)
SELECT 'SYSTEM_STARTUP' AS remetente, 'SYSTEM_STARTUP' AS destinatarios, 'Reenvio de confirmação de Registro' AS assunto,
'Prezado(a) sr.(a) @nomeUsuario,


Recentemente recebemos uma solicitação de registro em nosso sistema, relacionado ao seu endereço de e-mail a qual esta mensagem foi enviada.

Caso você tenha feito esta solicitação, continue o seu registro clicando no link abaixo, ou copie/cole o endereço em seu navegador de preferência: 
@linkValidacaoEmail


Caso você não tenha solicitado este registro, por favor ignore esta mensagem.

Atenciosamente,
@assinaturaMensagem' as mensagem, c.id AS id_categoria, current_timestamp AS datahora_mensagem, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'SISTEMA_MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO_PLAINTEXT_REENVIO_pt-br';

INSERT INTO mensagem (remetente, destinatarios, assunto, mensagem, id_categoria, datahora_mensagem, rowinfo)
SELECT 'SYSTEM_STARTUP' AS remetente, 'SYSTEM_STARTUP' AS destinatarios, 'Forwarding confirmation of registration' AS assunto,
'Dear @nomeUsuario,


We recently received a request for registration in our system, related to your e-mail to which this message was sent.

If you''ve made this request, continue your registration by clicking the link below or copy and paste the address into your browser of preference:
@linkValidacaoEmail


If you have not requested this registry, please ignore this message.

Sincerely,
@assinaturaMensagem' as mensagem, c.id AS id_categoria, current_timestamp AS datahora_mensagem, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'SISTEMA_MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO_PLAINTEXT_REENVIO_en-us';

INSERT INTO mensagem (remetente, destinatarios, assunto, mensagem, id_categoria, datahora_mensagem, rowinfo)
SELECT 'SYSTEM_STARTUP' AS remetente, 'SYSTEM_STARTUP' AS destinatarios, 'Registro Concluído' AS assunto,
'@tratamento @nomeUsuario,


Seu cadastro em nosso sistema foi realizado com sucesso em @dataHoraFinalizacaoCadastro.

A partir de agora você pode acessar nosso sistema utilizando as seguintes credenciais de acesso:


LOGIN: @login
SENHA: CONFIDENCIAL


Desejamos boas vindas e nos colocamos a disposição para resolução de qualquer dificuldade encontrada neste ou em qualquer outro acesso a nossos serviços.


Atenciosamente,
@assinaturaMensagem' as mensagem, c.id AS id_categoria, current_timestamp AS datahora_mensagem, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'SISTEMA_MENSAGEM_EMAIL_TEMPLATE_CONFIRMACAO_CADASTRO_PLAINTEXT_pt-br';

INSERT INTO mensagem (remetente, destinatarios, assunto, mensagem, id_categoria, datahora_mensagem, rowinfo)
SELECT 'SYSTEM_STARTUP' AS remetente, 'SYSTEM_STARTUP' AS destinatarios, 'Registration Completed' AS assunto,
'@tratamento @nomeUsuario,


Your registration in our system was successful in @dataHoraFinalizacaoCadastro.

From now you can access our system using the following credentials:


LOGIN: @login
PASSWORD: CONFIDENTIAL


We wish and welcome available to put the resolution of any difficulties encountered in this or any other access to our services


Sincerely,
@assinaturaMensagem' as mensagem, c.id AS id_categoria, current_timestamp AS datahora_mensagem, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'SISTEMA_MENSAGEM_EMAIL_TEMPLATE_CONFIRMACAO_CADASTRO_PLAINTEXT_en-us';