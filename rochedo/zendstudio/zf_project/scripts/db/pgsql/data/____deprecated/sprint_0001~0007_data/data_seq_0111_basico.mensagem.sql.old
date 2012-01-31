/**
* SCRIPT DE POPULACAO DA TABELA MENSAGEM
* 
* versao: 1.0 (POSTGRESQL 8.4.1)
* por: CARLOS FEITOSA (carlos.feitosa@rochedoproject.com)
* criacao: 21/10/2010
* ultimas modificacoes:
* 
* 							20/06/2011 - criacao de templeta de mensagem de alerta sobre problemas com login;
*							30/11/2011 - adaptação para novo modelo de banco de dados (Modularizado atraves de schemas) - João Vasconcelos; 
* 
*/

INSERT INTO basico.mensagem (nome, remetente, destinatarios, assunto, mensagem, id_categoria, datahora_criacao, rowinfo)
SELECT 'SISTEMA_MENSAGEM_EMAIL_TEMPLATE_TENTATIVA_REGISTRO_UTILIZANDO_EMAIL_PRIMARIO_PLAINTEXT_en-us' AS nome, 'SYSTEM_STARTUP' AS remetente, 'SYSTEM_STARTUP' AS destinatarios,
'Trying to register using your primary email' AS assunto,
'@tratamento @nomeUsuario,
 
 
We recently received a request for registration in our system,
related to your e-mail to which this message was sent.

If you made this request, we inform you that your account is active. If you want to recover your password, please try to "reset" your password through the system rather than trying to re-register.

If you have not requested this record, it is possible that someone is trying to register using your primary e-mail, recipient of this message. If this is the case, rest easy knowing your information remains secure.


If you wish, please send us this message by e-mail @linkEmailSuporte so we can audit this inconvenience.


Sincerely,
@assinaturaMensagem' as mensagem, c.id AS id_categoria,
current_timestamp AS datahora_criacao, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'SISTEMA_MENSAGEM_EMAIL_TEMPLATE_TENTATIVA_REGISTRO_UTILIZANDO_EMAIL_PRIMARIO_PLAINTEXT_en-us';

INSERT INTO basico.mensagem (nome, remetente, destinatarios, assunto, mensagem, id_categoria, datahora_criacao, rowinfo)
SELECT 'SISTEMA_MENSAGEM_EMAIL_TEMPLATE_TENTATIVA_REGISTRO_UTILIZANDO_EMAIL_PRIMARIO_PLAINTEXT_pt-br' AS nome, 'SYSTEM_STARTUP' AS remetente, 'SYSTEM_STARTUP' AS destinatarios,
'Tentativa de registro utilizando seu email primário' AS assunto,
'@tratamento @nomeUsuario,
 
 
Recentemente recebemos uma solicitação de registro em nosso sistema,
relacionado ao seu endereço de e-mail a qual esta mensagem foi enviada.

Caso você tenha feito esta solicitação, informamos que sua conta encontra-se ativa. Caso deseje recuperar sua senha, por favor tente "resetar" sua senha através do sistema ao invés de tentar registrar-se novamente.

Caso você não tenha solicitado este registro, é possível que alguem esteja tentando se registrar utilizando seu email primario, destinatário desta mensagem. Se for este o caso, fique tranquilo pois suas informações continuam seguras.


Se desejar, por favor nos encaminhe esta mensagem, através do e-mail @linkEmailSuporte, para que possamos auditar este inconveniente.


Atenciosamente,
@assinaturaMensagem' as mensagem, c.id AS id_categoria,
current_timestamp AS datahora_criacao, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'SISTEMA_MENSAGEM_EMAIL_TEMPLATE_TENTATIVA_REGISTRO_UTILIZANDO_EMAIL_PRIMARIO_PLAINTEXT_pt-br';

INSERT INTO basico.mensagem (nome, remetente, destinatarios, assunto, mensagem, id_categoria, datahora_criacao, rowinfo)
SELECT 'SISTEMA_MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO_PLAINTEXT_pt-br' AS nome, 'SYSTEM_STARTUP' AS remetente, 'SYSTEM_STARTUP' AS destinatarios, 'Confirmação de Registro' AS assunto,
'Prezado(a) sr.(a) @nomeUsuario,


Recentemente recebemos uma solicitação de registro em nosso sistema, relacionado ao seu endereço de e-mail a qual esta mensagem foi enviada.

Caso você tenha feito esta solicitação, continue o seu registro clicando no link abaixo, ou copie/cole o endereço em seu navegador de preferência: 
@linkValidacaoEmail


Caso você não tenha solicitado este registro, por favor ignore esta mensagem.

Atenciosamente,
@assinaturaMensagem' as mensagem, c.id AS id_categoria, current_timestamp AS datahora_criacao, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'SISTEMA_MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO_PLAINTEXT_pt-br';

INSERT INTO basico.mensagem (nome, remetente, destinatarios, assunto, mensagem, id_categoria, datahora_criacao, rowinfo)
SELECT 'SISTEMA_MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO_PLAINTEXT_en-us' AS nome, 'SYSTEM_STARTUP' AS remetente, 'SYSTEM_STARTUP' AS destinatarios, 'Registration Confirmation' AS assunto,
'Dear @nomeUsuario,


We recently received a request for registration in our system, related to your e-mail to which this message was sent.

If you''ve made this request, continue your registration by clicking the link below or copy and paste the address into your browser of preference:
@linkValidacaoEmail


If you have not requested this registry, please ignore this message.

Sincerely,
@assinaturaMensagem' as mensagem, c.id AS id_categoria, current_timestamp AS datahora_criacao, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'SISTEMA_MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO_PLAINTEXT_en-us';

INSERT INTO basico.mensagem (nome, remetente, destinatarios, assunto, mensagem, id_categoria, datahora_criacao, rowinfo)
SELECT 'SISTEMA_MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO_PLAINTEXT_REENVIO_pt-br' AS nome, 'SYSTEM_STARTUP' AS remetente, 'SYSTEM_STARTUP' AS destinatarios, 'Reenvio de confirmação de Registro' AS assunto,
'Prezado(a) sr.(a) @nomeUsuario,


Recentemente recebemos uma solicitação de registro em nosso sistema, relacionado ao seu endereço de e-mail a qual esta mensagem foi enviada.

Caso você tenha feito esta solicitação, continue o seu registro clicando no link abaixo, ou copie/cole o endereço em seu navegador de preferência: 
@linkValidacaoEmail


Caso você não tenha solicitado este registro, por favor ignore esta mensagem.

Atenciosamente,
@assinaturaMensagem' as mensagem, c.id AS id_categoria, current_timestamp AS datahora_criacao, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'SISTEMA_MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO_PLAINTEXT_REENVIO_pt-br';

INSERT INTO basico.mensagem (nome, remetente, destinatarios, assunto, mensagem, id_categoria, datahora_criacao, rowinfo)
SELECT 'SISTEMA_MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO_PLAINTEXT_REENVIO_en-us' AS nome, 'SYSTEM_STARTUP' AS remetente, 'SYSTEM_STARTUP' AS destinatarios, 'Forwarding confirmation of registration' AS assunto,
'Dear @nomeUsuario,


We recently received a request for registration in our system, related to your e-mail to which this message was sent.

If you''ve made this request, continue your registration by clicking the link below or copy and paste the address into your browser of preference:
@linkValidacaoEmail


If you have not requested this registry, please ignore this message.

Sincerely,
@assinaturaMensagem' as mensagem, c.id AS id_categoria, current_timestamp AS datahora_criacao, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'SISTEMA_MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO_PLAINTEXT_REENVIO_en-us';

INSERT INTO basico.mensagem (nome, remetente, destinatarios, assunto, mensagem, id_categoria, datahora_criacao, rowinfo)
SELECT 'SISTEMA_MENSAGEM_EMAIL_TEMPLATE_CONFIRMACAO_CADASTRO_PLAINTEXT_pt-br' AS nome, 'SYSTEM_STARTUP' AS remetente, 'SYSTEM_STARTUP' AS destinatarios, 'Registro Concluído' AS assunto,
'@tratamento @nomeUsuario,


Seu cadastro em nosso sistema foi realizado com sucesso em @dataHoraFinalizacaoCadastro.

A partir de agora você pode acessar nosso sistema utilizando as seguintes credenciais de acesso:


LOGIN: @login

O nosso sistema, por questões de segurança, não pode recuperar/informar a senha por você registrada em nosso banco de dados. 
Por esse motivo, se você esquecer sua senha, será necessário reseta-la, criando uma nova senha

Desejamos boas vindas e nos colocamos a disposição para resolução de qualquer dificuldade encontrada neste ou em qualquer outro acesso a nossos serviços.


Atenciosamente,
@assinaturaMensagem' as mensagem, c.id AS id_categoria, current_timestamp AS datahora_criacao, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'SISTEMA_MENSAGEM_EMAIL_TEMPLATE_CONFIRMACAO_CADASTRO_PLAINTEXT_pt-br';

INSERT INTO basico.mensagem (nome, remetente, destinatarios, assunto, mensagem, id_categoria, datahora_criacao, rowinfo)
SELECT 'SISTEMA_MENSAGEM_EMAIL_TEMPLATE_CONFIRMACAO_CADASTRO_PLAINTEXT_en-us' AS nome, 'SYSTEM_STARTUP' AS remetente, 'SYSTEM_STARTUP' AS destinatarios, 'Registration Completed' AS assunto,
'@tratamento @nomeUsuario,


Your registration in our system was successful in @dataHoraFinalizacaoCadastro.

From now you can access our system using the following credentials:


LOGIN: @login

For security reasons, our system can''t retrieve the password informed by you. 
If you forget your password, a new password must be created.

Welcome to our system, we are available to solve any dificulties that you may have in this or in any other access to our services. 


Sincerely,
@assinaturaMensagem' as mensagem, c.id AS id_categoria, current_timestamp AS datahora_criacao, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'SISTEMA_MENSAGEM_EMAIL_TEMPLATE_CONFIRMACAO_CADASTRO_PLAINTEXT_en-us';


INSERT INTO basico.mensagem (nome, remetente, destinatarios, assunto, mensagem, id_categoria, datahora_criacao, rowinfo)
SELECT 'SISTEMA_MENSAGEM_EMAIL_TEMPLATE_PROBLEMAS_LOGIN_PLAINTEXT_pt-br' AS nome, 'SYSTEM_STARTUP' AS remetente, 'SYSTEM_STARTUP' AS destinatarios, 'Problema(s) com seu login' AS assunto,
'@tratamento @nomeUsuario,


Nosso sistema encontrou problema(s) com seu login, abaixo infomado(s):


Login: @login
Problema(s):

@problemas
    

Para solucionar este inconveniente, por favor:

- acesse a documentação online do sistema onde é explicado como tentar resolver estes problemas;
- entre em contato com o suporte, informando seu login. Tenha em mãos seus documentos para comprovação e cadastro.


Atenciosamente,
@assinaturaMensagem' as mensagem, c.id AS id_categoria, current_timestamp AS datahora_criacao, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'SISTEMA_MENSAGEM_EMAIL_TEMPLATE_PROBLEMAS_LOGIN_PLAINTEXT_pt-br';

INSERT INTO basico.mensagem (nome, remetente, destinatarios, assunto, mensagem, id_categoria, datahora_criacao, rowinfo)
SELECT 'SISTEMA_MENSAGEM_EMAIL_TEMPLATE_PROBLEMAS_LOGIN_PLAINTEXT_en-us' AS nome, 'SYSTEM_STARTUP' AS remetente, 'SYSTEM_STARTUP' AS destinatarios, 'Problem(s) with your login' AS assunto,
'@tratamento @nomeUsuario,


Our system encountered problem(s) with your login below informed:


Login: @login
Problem(s):

@problemas
    

To solve this inconvenience, please:

- access the online documentation system. There you can find the explanation to solve these problems;
- contact the support, informing your login. Please have your documents for verification and registration.


Sincerely,
@assinaturaMensagem' as mensagem, c.id AS id_categoria, current_timestamp AS datahora_criacao, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'SISTEMA_MENSAGEM_EMAIL_TEMPLATE_PROBLEMAS_LOGIN_PLAINTEXT_en-us';