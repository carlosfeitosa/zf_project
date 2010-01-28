/*
* SCRIPT DE POPULACAO DAS TABELAS DO SPRINT 0001
* 
* versao: 1.0 (POSTGRESQL 8.4.1)
* por: CARLOS FEITOSA (carlos.feitosa@rochedoproject.com)
* criacao: 14/12/2009
* ultimas modificacoes: 
* 						- 14/12/2009
* 						- 29/12/2009 - insert da assinatura de mensagem e-mail da pessoa_perfil do sistema;
* 									 - correcao da categoria SISTEMA_MENSAGEM_EMAIL_VALIDACAO_USUARIO_PLAINTEXT_REENVIO (SISTEMA_MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO_PLAINTEXT_REENVIO);
* 									 - insert da template de mensagem de email de validacao de usuario plaintext reenvio;
* 									 - insert de rowinfo em pessoas_perfis;
* 						- 28/01/2010 - insert da categoria LOG_TOKEN_VALIDACAO_USUARIO;
* 									 - insert em categoria_chave_estrangeira (email)
*/

// DADOS DO SISTEMA (TIPO CATEGORIA SISTEMA)

INSERT INTO tipo_categoria (nome, descricao, rowinfo)
VALUES ('SISTEMA', 'Tipo de categorias de sistema (imutáveis).', 'SYSTEM_STARTUP');


// DADOS DO SISTEMA (FILHOS DE TIPO CATEGORIA SISTEMA)

INSERT INTO categoria (id_tipo_categoria, nome, descricao, rowinfo)
SELECT id, 'SISTEMA_USUARIO' AS nome, 'Usuários utilizados pelo sistema.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria
WHERE nome = 'SISTEMA';

INSERT INTO perfil (id_categoria, nome, descricao, rowinfo)
SELECT id, 'SISTEMA' AS nome, 'Usuário sistema.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM categoria
WHERE nome = 'SISTEMA_USUARIO';

INSERT INTO perfil (id_categoria, nome, descricao, rowinfo)
SELECT id, 'USUARIO_NAO_VALIDADO' AS nome, 'Usuário não validado pelo sistema.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM categoria
WHERE nome = 'SISTEMA_USUARIO';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, rowinfo)
SELECT id, 'SISTEMA_EMAIL' AS nome, 'Email do sistema.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria
WHERE nome = 'SISTEMA';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, rowinfo)
SELECT id, 'SISTEMA_MENSAGEM' AS nome, 'Mensagens do sistema.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria
WHERE nome = 'SISTEMA';

INSERT INTO categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria_pai, 2 AS nivel, 'SISTEMA_MENSAGEM_EMAIL' AS nome, 'Envio de mensagens eletrônicas pelo sistema.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'SISTEMA_MENSAGEM';

INSERT INTO categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria_pai, 3 AS nivel, 'SISTEMA_MENSAGEM_EMAIL_TEMPLATE' AS nome, 'Templates de e-mails enviados pelo sistema.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'SISTEMA_MENSAGEM_EMAIL';

INSERT INTO categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria_pai, 4 AS nivel, 'SISTEMA_MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO_PLAINTEXT' AS nome, 'Template de mensagens PLAIN TEXT de validação de usuário.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'SISTEMA_MENSAGEM_EMAIL_TEMPLATE';

INSERT INTO categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria_pai, 4 AS nivel, 'SISTEMA_MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO_PLAINTEXT_REENVIO' AS nome, 'Reenvio de mensagens do tipo e-mail PLAIN TEXT de validação de usuário.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'SISTEMA_MENSAGEM_EMAIL_TEMPLATE';

INSERT INTO mensagem (remetente, destinatarios, assunto, mensagem, id_categoria, datahora_mensagem, rowinfo)
SELECT 'SYSTEM_STARTUP' AS remetente, 'SYSTEM_STARTUP' AS destinatarios, 'Confirmação de Registro' AS assunto,
'Prezado(a) sr.(a) [nome_usuario], 

Para continuar o seu registro em nosso servico, por favor clique no link abaixo, ou copie e cole o endereco em seu navegador: 
[link]


Caso voce nao tenha solicitado este registro, por favor apenas ignore esta mensagem.

Atenciosamente, 
[assinatura_mensagem]' as mensagem, c.id AS id_categoria, current_timestamp AS datahora_mensagem, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'SISTEMA_MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO_PLAINTEXT';

INSERT INTO mensagem (remetente, destinatarios, assunto, mensagem, id_categoria, datahora_mensagem, rowinfo)
SELECT 'SYSTEM_STARTUP' AS remetente, 'SYSTEM_STARTUP' AS destinatarios, 'Reenvio de confirmação de Registro' AS assunto,
'Prezado(a) sr.(a) [nome_usuario], 

Para continuar o seu registro em nosso servico, por favor clique no link abaixo, ou copie e cole o endereco em seu navegador: 
[link]


Caso voce nao tenha solicitado este registro, por favor apenas ignore esta mensagem.

Atenciosamente, 
[assinatura_mensagem]' as mensagem, c.id AS id_categoria, current_timestamp AS datahora_mensagem, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'SISTEMA_MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO_PLAINTEXT_REENVIO';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, 'LOG' AS nome, 'Histórico de operações do sistema.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'SISTEMA';

INSERT INTO categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria_pai, 2 AS nivel, 'LOG_VALIDACAO_USUARIO' AS nome, 'Operações de validação de usuário.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'LOG';

INSERT INTO categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria_pai, 2 AS nivel, 'LOG_TOKEN_VALIDACAO_USUARIO' AS nome, 'Operações de validação de usuário.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'LOG';

INSERT INTO categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria_pai, 2 AS nivel, 'LOG_EMAIL' AS nome, 'Operações de envio de e-mail.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'LOG';

INSERT INTO categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria_pai, 2 AS nivel, 'LOG_NOVA_PESSOA' AS nome, 'Operação de criação de nova pessoa.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'LOG';

INSERT INTO categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria_pai, 2 AS nivel, 'LOG_NOVA_PESSOA_PERFIL' AS nome, 'Operação de associação de pessoa com perfil.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'LOG';

INSERT INTO categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria_pai, 2 AS nivel, 'LOG_NOVO_DADOS_PESSOAIS' AS nome, 'Operação criação de dados pessoais.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'LOG';

INSERT INTO categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria_pai, 2 AS nivel, 'LOG_NOVO_EMAIL' AS nome, 'Operação de inserção de e-mail.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'LOG';

INSERT INTO categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria_pai, 2 AS nivel, 'LOG_NOVA_MENSAGEM' AS nome, 'Operação de inserção de mensagem.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'LOG';


// DADOS DE PERFIL

INSERT INTO tipo_categoria (nome, descricao, rowinfo)
VALUES ('PERFIL', 'Perfis.', 'SYSTEM_STARTUP');

INSERT INTO categoria (id_tipo_categoria, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, 'PERFIL_USUARIO' AS nome, 'Perfis de usuários.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'PERFIL';


// DADOS DE MENSAGENS

INSERT INTO tipo_categoria (nome, descricao, rowinfo)
VALUES('MENSAGEM', 'Mensagens.', 'SYSTEM_STARTUP');

INSERT INTO categoria (id_tipo_categoria, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, 'MENSAGEM_EMAIL' AS nome, 'Mensagens do tipo e-mail.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'MENSAGEM';

INSERT INTO categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria_pai, 2 AS nivel, 'MENSAGEM_EMAIL_VALIDACAO_USUARIO' AS nome, 'Mensagens do tipo e-mail de validação de usuário.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'MENSAGEM'
AND c.nome = 'MENSAGEM_EMAIL';

INSERT INTO categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria_pai, 3 AS nivel, 'MENSAGEM_EMAIL_VALIDACAO_USUARIO_PLAINTEXT' AS nome, 'Mensagens do tipo e-mail PLAIN TEXT de validação de usuário.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'MENSAGEM'
AND c.nome = 'MENSAGEM_EMAIL_VALIDACAO_USUARIO';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, 'MENSAGEM_PESSOAS_ENVOLVIDAS' AS nome, 'Pessoas envolvidas na mensagem.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'MENSAGEM';

INSERT INTO categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria_pai, 2 AS nivel, 'MENSAGEM_PESSOAS_ENVOLVIDAS_REMETENTE' AS nome, 'Remetente de uma mensagem.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'MENSAGEM'
AND c.nome = 'MENSAGEM_PESSOAS_ENVOLVIDAS';

INSERT INTO categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria_pai, 2 AS nivel, 'MENSAGEM_PESSOAS_ENVOLVIDAS_DESTINATARIO' AS nome, 'Destinatarios de uma mensagem.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'MENSAGEM'
AND c.nome = 'MENSAGEM_PESSOAS_ENVOLVIDAS';

INSERT INTO categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria_pai, 2 AS nivel, 'MENSAGEM_PESSOAS_ENVOLVIDAS_DESTINATARIO_COPIA_CARBONADA' AS nome, 'Destinatarios em cópia carbonada de uma mensagem.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'MENSAGEM'
AND c.nome = 'MENSAGEM_PESSOAS_ENVOLVIDAS';

INSERT INTO categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria_pai, 2 AS nivel, 'MENSAGEM_PESSOAS_ENVOLVIDAS_DESTINATARIO_COPIA_CARBONADA_OCULTA' AS nome, 'Destinatarios em cópia carbonada oculta de uma mensagem.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'MENSAGEM'
AND c.nome = 'MENSAGEM_PESSOAS_ENVOLVIDAS';

INSERT INTO categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria_pai, 2 AS nivel, 'MENSAGEM_PESSOAS_ENVOLVIDAS_RESPONDER_PARA' AS nome, 'Responder para (reply-to) de uma mensagem.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'MENSAGEM'
AND c.nome = 'MENSAGEM_PESSOAS_ENVOLVIDAS';


// DADOS DE E-MAIL

INSERT INTO tipo_categoria (nome, descricao, rowinfo)
VALUES ('EMAIL', 'Endereços de e-mail.', 'SYSTEM_STARTUP');

INSERT INTO categoria (id_tipo_categoria, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, 'EMAIL_PRIMARIO' AS nome, 'Endereços de e-mail principal validado pelo sistema.' AS descricao, 'SYSTEM_STARTUP'
FROM tipo_categoria t
WHERE t.nome = 'EMAIL';


// DADOS DO USUARIO DO SISTEMA (MASTER)

INSERT INTO pessoa (rowinfo)
VALUES ('SYSTEM_STARTUP');

INSERT INTO pessoas_perfis (id_pessoa, id_perfil, rowinfo)
SELECT lastval() AS id_pessoa, perf.id AS id_perfil, 'SYSTEM_STARTUP' AS rowinfo
FROM perfil perf
LEFT JOIN categoria cat ON (perf.id_categoria = cat.id)
LEFT JOIN tipo_categoria tipo_cat ON (cat.id_tipo_categoria = tipo_cat.id)
WHERE tipo_cat.nome = 'SISTEMA'
AND cat.nome = 'SISTEMA_USUARIO'
AND perf.nome = 'SISTEMA';

INSERT INTO dados_pessoas_perfis (id_pessoa_perfil, assinatura_mensagem_email, rowinfo)
VALUES (lastval(), 'Equipe ROCHEDO project', 'SYSTEM_STARTUP');

INSERT INTO login (id_pessoa, login, senha, pode_expirar, datahora_proxima_expiracao, rowinfo)
SELECT pp.id_pessoa, LPAD(MD5(RANDOM()::TEXT), 100, MD5(RANDOM()::TEXT)) AS login, 
       LPAD(MD5(RANDOM()::TEXT), 100, MD5(RANDOM()::TEXT)) AS password, 0, NULL, 'SYSTEM_STARTUP'
FROM pessoas_perfis pp
LEFT JOIN perfil perf ON (pp.id_perfil = perf.id)
LEFT JOIN categoria cat ON (perf.id_categoria = cat.id)
LEFT JOIN tipo_categoria tipo_cat ON (cat.id_tipo_categoria = tipo_cat.id)
WHERE perf.nome = 'SISTEMA'
AND cat.nome = 'SISTEMA_USUARIO'
AND perf.nome = 'SISTEMA';

INSERT INTO pessoas_perfis_mensagem_categoria (id_pessoa_perfil, id_categoria, id_mensagem, rowinfo)
SELECT pp.id AS id_pessoa_perfil, 
       (SELECT id AS id_categoria 
        FROM categoria 
        WHERE nome = 'MENSAGEM_PESSOAS_ENVOLVIDAS_REMETENTE') AS id_categoria,
       (SELECT m.id AS id_mensagem
        FROM mensagem m
        LEFT JOIN categoria c ON (m.id_categoria = c.id)
        WHERE c.nome = 'SISTEMA_MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO_PLAINTEXT') AS id_mensagem,
        'SYSTEM_STARTUP' AS rowinfo
FROM pessoas_perfis pp
LEFT JOIN perfil perf ON (pp.id_perfil = perf.id)
LEFT JOIN categoria cat ON (perf.id_categoria = cat.id)
LEFT JOIN tipo_categoria tipo_cat ON (cat.id_tipo_categoria = tipo_cat.id)
WHERE perf.nome = 'SISTEMA'
AND cat.nome = 'SISTEMA_USUARIO'
AND perf.nome = 'SISTEMA';

INSERT INTO email (id_pessoa, id_categoria, unique_id, email, validado, datahora_ultima_validacao, ativo, rowinfo)
SELECT pp.id_pessoa,
       (SELECT id FROM categoria WHERE nome = 'SISTEMA_EMAIL') AS id_categoria,
       'SYSTEM_STARTUP' AS unique_id, 'info@rochedoproject.com' AS email, 1 AS validado, current_timestamp AS datahora_ultima_validacao, 1 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM pessoas_perfis pp
LEFT JOIN perfil perf ON (pp.id_perfil = perf.id)
LEFT JOIN categoria cat ON (perf.id_categoria = cat.id)
LEFT JOIN tipo_categoria tipo_cat ON (cat.id_tipo_categoria = tipo_cat.id)
WHERE perf.nome = 'SISTEMA'
AND cat.nome = 'SISTEMA_USUARIO'
AND perf.nome = 'SISTEMA';

INSERT INTO categoria_chave_estrangeira (id_categoria, tabela_estrangeira, campo_estrangeiro, rowinfo)
SELECT c.id AS id_categoria, 'email' AS tabela_estrangeira, 'id' AS campo_estrangeiro, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'MENSAGEM'
AND c.nome = 'MENSAGEM_EMAIL_VALIDACAO_USUARIO_PLAINTEXT';