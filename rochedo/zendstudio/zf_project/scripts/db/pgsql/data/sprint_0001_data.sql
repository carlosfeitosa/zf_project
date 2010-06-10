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
* 						- 22/02/2010 - insert do tipo categoria LINGUAGEM;
* 									 - insert das categorias filhas de linguagem, assumindo o padrão ANSI de codificação;
* 						- 23/02/2010 - insert de dados no dicionario de expressões;
* 						- 05/03/2010 - insert de dados no dicionario de expressões: form hints;
* 						- 22/04/2010 - insert de dados no dicionario de expressões: subforms TAB legends; 
*/

/* DADOS DO SISTEMA (TIPO CATEGORIA SISTEMA) */

INSERT INTO tipo_categoria (nome, descricao, rowinfo)
VALUES ('SISTEMA', 'Tipo de categorias de sistema (imutáveis).', 'SYSTEM_STARTUP');


/* DADOS DO SISTEMA (FILHOS DE TIPO CATEGORIA SISTEMA) */

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

Para continuar o seu registro em nosso serviço, por favor clique no link abaixo, ou copie e cole o endereco abaixo em seu navegador: 
[link]


Caso voce não tenha solicitado este registro, apenas ignore esta mensagem.

Atenciosamente, 
[assinatura_mensagem]' as mensagem, c.id AS id_categoria, current_timestamp AS datahora_mensagem, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'SISTEMA_MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO_PLAINTEXT';

INSERT INTO mensagem (remetente, destinatarios, assunto, mensagem, id_categoria, datahora_mensagem, rowinfo)
SELECT 'SYSTEM_STARTUP' AS remetente, 'SYSTEM_STARTUP' AS destinatarios, 'Reenvio de confirmação de Registro' AS assunto,
'Prezado(a) sr.(a) [nome_usuario], 

Para continuar o seu registro em nosso serviço, por favor clique no link abaixo, ou copie e cole o endereco abaixo em seu navegador: 
[link]


Caso voce não tenha solicitado este registro, apenas ignore esta mensagem.

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


/* DADOS DE PERFIL */

INSERT INTO tipo_categoria (nome, descricao, rowinfo)
VALUES ('PERFIL', 'Perfis.', 'SYSTEM_STARTUP');

INSERT INTO categoria (id_tipo_categoria, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, 'PERFIL_USUARIO' AS nome, 'Perfis de usuários.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'PERFIL';


/* DADOS DE MENSAGENS */

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


/* DADOS DE E-MAIL */

INSERT INTO tipo_categoria (nome, descricao, rowinfo)
VALUES ('EMAIL', 'Endereços de e-mail.', 'SYSTEM_STARTUP');

INSERT INTO categoria (id_tipo_categoria, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, 'EMAIL_PRIMARIO' AS nome, 'Endereços de e-mail principal validado pelo sistema.' AS descricao, 'SYSTEM_STARTUP'
FROM tipo_categoria t
WHERE t.nome = 'EMAIL';


/* DADOS DO USUARIO DO SISTEMA (MASTER) */

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


/* LINGUAGEM */

INSERT INTO tipo_categoria (nome, descricao, rowinfo)
VALUES ('LINGUAGEM', 'Linguagens utilizadas pelo sistema.', 'SYSTEM_STARTUP');

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'af' AS nome, 'Afrikaans.' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'sq' AS nome, 'Albanian.' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ar-sa' AS nome, 'Arabic (Saudi Arabia).' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ar-iq' AS nome, 'Arabic (Iraq).' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ar-eg' AS nome, 'Arabic (Egypt).' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ar-ly' AS nome, 'Arabic (Libya).' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ar-dz' AS nome, 'Arabic (Algeria).' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ar-ma' AS nome, 'Arabic (Morocco).' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ar-tn' AS nome, 'Arabic (Tunisia).' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ar-om' AS nome, 'Arabic (Oman).' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ar-ye' AS nome, 'Arabic (Yemen).' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ar-sy' AS nome, 'Arabic (Syria).' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ar-jo' AS nome, 'Arabic (Jordan).' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ar-lb' AS nome, 'Arabic (Lebanon).' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ar-kw' AS nome, 'Arabic (Kuwait).' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ar-ae' AS nome, 'Arabic (U.A.E.).' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ar-bh' AS nome, 'Arabic (Bahrain).' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ar-qa' AS nome, 'Arabic (Qatar).' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'eu' AS nome, 'Basque.' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'bg' AS nome, 'Bulgarian.' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'be' AS nome, 'Belarusian.' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ca' AS nome, 'Catalan.' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'zh-tw' AS nome, 'Chinese (Taiwan).' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'zh-cn' AS nome, 'Chinese (PRC).' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'zh-hk' AS nome, 'Chinese (Hong Kong SAR).' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'zh-sg' AS nome, 'Chinese (Singapore).' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'hr' AS nome, 'Croatian.' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'cs' AS nome, 'Czech.' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'da' AS nome, 'Danish.' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'nl' AS nome, 'Dutch (Standard).' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'nl-be' AS nome, 'Dutch (Belgium).' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'en' AS nome, 'English / English (Caribbean).' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, 'en-us' AS nome, 'English (United States).' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'en-gb' AS nome, 'English (United Kingdom).' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'en-au' AS nome, 'English (Australia).' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'en-ca' AS nome, 'English (Canada).' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'en-nz' AS nome, 'English (New Zealand).' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'en-ie' AS nome, 'English (Ireland).' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'en-za' AS nome, 'English (South Africa).' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'en-jm' AS nome, 'English (Jamaica).' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'en-bz' AS nome, 'English (Belize).' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'en-tt' AS nome, 'English (Trinidad).' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'et' AS nome, 'Estonian.' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'fo' AS nome, 'Faeroese.' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'fa' AS nome, 'Farsi.' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'fi' AS nome, 'Finnish.' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'fr' AS nome, 'French (Standard).' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'fr-be' AS nome, 'French (Belgium).' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'fr-ca' AS nome, 'French (Canada).' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'fr-ch' AS nome, 'French (Switzerland).' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'fr-lu' AS nome, 'French (Luxembourg).' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'gd' AS nome, 'Gaelic (Scotland).' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ga' AS nome, 'Irish.' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'de' AS nome, 'German (Standard).' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'de-ch' AS nome, 'German (Switzerland).' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'de-at' AS nome, 'German (Austria).' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'de-lu' AS nome, 'German (Luxembourg).' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'de-li' AS nome, 'German (Liechtenstein).' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'el' AS nome, 'Greek.' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'he' AS nome, 'Hebrew.' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'hi' AS nome, 'Hindi.' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'hu' AS nome, 'Hungarian.' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'is' AS nome, 'Icelandic.' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'id' AS nome, 'Indonesian.' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'it' AS nome, 'Italian (Standard).' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'it-ch' AS nome, 'Italian (Switzerland).' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ja' AS nome, 'Japanese.' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ko' AS nome, 'Korean / Korean (Johab).' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'lv' AS nome, 'Latvian.' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'lt' AS nome, 'Lithuanian.' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'mk' AS nome, 'Macedonian (FYROM).' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ms' AS nome, 'Malaysian.' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'mt' AS nome, 'Maltese.' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'no' AS nome, 'Norwegian (Bokmal) / Norwegian (Nynorsk).' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'pl' AS nome, 'Polish.' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, 'pt-br' AS nome, 'Portuguese (Brazil).' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'pt' AS nome, 'Portuguese (Portugal).' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'rm' AS nome, 'Rhaeto-Romanic.' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ro' AS nome, 'Romanian.' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ro-mo' AS nome, 'Romanian (Republic of Moldova).' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ru' AS nome, 'Russian.' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ru-mo' AS nome, 'Russian (Republic of Moldova).' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'sz' AS nome, 'Sami (Lappish).' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'sr' AS nome, 'Serbian (Cyrillic) / Serbian (Latin).' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'sk' AS nome, 'Slovak.' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'sl' AS nome, 'Slovenian.' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'sb' AS nome, 'Sorbian.' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'es' AS nome, 'Spanish (Spain).' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'es-mx' AS nome, 'Spanish (Mexico).' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'es-gt' AS nome, 'Spanish (Guatemala).' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'es-cr' AS nome, 'Spanish (Costa Rica).' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'es-pa' AS nome, 'Spanish (Panama).' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'es-do' AS nome, 'Spanish (Dominican Republic).' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'es-ve' AS nome, 'Spanish (Venezuela).' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'es-co' AS nome, 'Spanish (Colombia).' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'es-pe' AS nome, 'Spanish (Peru).' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'es-ar' AS nome, 'Spanish (Argentina).' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'es-ec' AS nome, 'Spanish (Ecuador).' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'es-cl' AS nome, 'Spanish (Chile).' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'es-uy' AS nome, 'Spanish (Uruguay).' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'es-py' AS nome, 'Spanish (Paraguay).' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'es-bo' AS nome, 'Spanish (Bolivia).' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'es-sv' AS nome, 'Spanish (El Salvador).' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'es-hn' AS nome, 'Spanish (Honduras).' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'es-ni' AS nome, 'Spanish (Nicaragua).' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'es-pr' AS nome, 'Spanish (Puerto Rico).' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'sx' AS nome, 'Sutu.' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'sv' AS nome, 'Swedish.' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'sv-fi' AS nome, 'Swedish (Finland).' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'th' AS nome, 'Thai.' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ts' AS nome, 'Tsonga.' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'tn' AS nome, 'Tswana.' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'tr' AS nome, 'Turkish.' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'uk' AS nome, 'Ukrainian.' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ur' AS nome, 'Urdu.' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 've' AS nome, 'Venda.' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'vi' AS nome, 'Vietnamese.' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'xh' AS nome, 'Xhosa.' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ji' AS nome, 'Yiddish.' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'zu' AS nome, 'Zulu.' AS descricao, 0 AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'LINGUAGEM';


/* DICIONARIO DE EXPRESSÕES */

/*
 * (Português do Brasil - PT_BR)
 * registro de novo usuário
*/
INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'VIEW_LOGIN_CADASTRAR_USUARIO_NAO_VALIDADO_TITULO' AS constante_textual, 'Registro de novo usuário:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'VIEW_LOGIN_CADASTRAR_USUARIO_NAO_VALIDADO_SUBTITULO' AS constante_textual, 'Preencha os dados abaixo para iniciar seu processo de registro.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

/* e-mail não validado já existente no sistema */
INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'VIEW_LOGIN_ERRO_EMAIL_NAO_VALIDADO_EXISTENTE_NO_SISTEMA_TITULO' AS constante_textual, 'Atenção!' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'VIEW_LOGIN_ERRO_EMAIL_NAO_VALIDADO_EXISTENTE_NO_SISTEMA_SUBTITULO' AS constante_textual, 'Um novo e-mail de confirmação foi enviado para o endereço por você informado.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'VIEW_LOGIN_ERRO_EMAIL_NAO_VALIDADO_EXISTENTE_NO_SISTEMA_MENSAGEM' AS constante_textual, 'Acesse sua caixa postal e siga as instruções contidas na mensagem para validar seu cadastro no sistema.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

/* e-mail já validado no sistema */
INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'VIEW_LOGIN_ERRO_EMAIL_VALIDADO_EXISTENTE_NO_SISTEMA_TITULO' AS constante_textual, 'Atenção!' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'VIEW_LOGIN_ERRO_EMAIL_VALIDADO_EXISTENTE_NO_SISTEMA_SUBTITULO' AS constante_textual, 'Usuário já cadastrado e validado no sistema.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'VIEW_LOGIN_ERRO_EMAIL_VALIDADO_EXISTENTE_NO_SISTEMA_MENSAGEM' AS constante_textual, 'Utilize suas credenciais de acesso ou tente resetar sua senha.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

/* sucesso ao cadastrar usuário não validado */
INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'VIEW_LOGIN_SUCESSO_SALVAR_USUARIO_NAO_VALIDADO_TITULO' AS constante_textual, 'Sucesso!' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'VIEW_LOGIN_SUCESSO_SALVAR_USUARIO_NAO_VALIDADO_SUBTITULO' AS constante_textual, 'Um e-mail de confirmação foi enviado para o endereço por você informado.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'VIEW_LOGIN_SUCESSO_SALVAR_USUARIO_NAO_VALIDADO_MENSAGEM' AS constante_textual, 'Acesse sua caixa postal e siga as instruções contidas na mensagem para validar seu cadastro no sistema.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

/* campos de formulários */
INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_NOME' AS constante_textual, 'Nome:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_NOME_HINT' AS constante_textual, 'Preencha este campo com seu nome completo.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_EMAIL' AS constante_textual, 'E-mail:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_EMAIL_HINT' AS constante_textual, 'Preencha este campo com seu e-mail.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_NOME_CONFIRMACAO' AS constante_textual, 'Confirme seu nome:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_NOME_CONFIRMACAO_HINT' AS constante_textual, 'Preencha este campo para confirmar seu nome.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_NOME_USUARIO' AS constante_textual, 'Nome de Usuário:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_NOME_USUARIO_HINT' AS constante_textual, 'Digite o seu nome de usuário.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_SENHA' AS constante_textual, 'Senha:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_SENHA_HINT' AS constante_textual, 'Digite neste campo a senha que será usada por você no nosso sistema.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_SENHA_CONFIRMACAO' AS constante_textual, 'Repita sua senha:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_SENHA_CONFIRMACAO_HINT' AS constante_textual, 'Repita neste campo a senha que será usada por você no nosso sistema.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_SENHA_SUGESTAO' AS constante_textual, 'Gerar Senha' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_SENHA_SUGESTAO_HINT' AS constante_textual, 'Clique aqui para o sistema gerar automaticamente uma senha.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_SENHA_FORCA' AS constante_textual, 'Força da senha:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_SENHA_FORCA_HINT' AS constante_textual, 'Força da senha.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_DATA_NASCIMENTO' AS constante_textual, 'Data de Nascimento:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_DATA_NASCIMENTO_HINT' AS constante_textual, 'Digite ou selecione aqui sua data de nascimento.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_SEXO' AS constante_textual, 'Sexo:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_SEXO_HINT' AS constante_textual, 'Marque o seu sexo:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_RG' AS constante_textual, 'RG:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_RG_HINT' AS constante_textual, 'Digite aqui o seu RG (Registro Geral).' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_CPF' AS constante_textual, 'CPF:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_CPF_HINT' AS constante_textual, 'Digite aqui o seu CPF (Cadastro Nacional de Pessoas Físicas).' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_PASSAPORTE' AS constante_textual, 'Passaporte:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_PASSAPORTE_HINT' AS constante_textual, 'Digite aqui o nomero do seu passaporte.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_CNH' AS constante_textual, 'CNH:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_CNH_HINT' AS constante_textual, 'Digite aqui o seu CNH (Carteira Nacional de Habilitação).' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

/* SubForm Legends TAB */
INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'SUBFORM_TABTITLE_DADOS_PESSOAIS' AS constante_textual, 'DADOS PESSOAIS' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'SUBFORM_TABTITLE_DADOS_PROFISSIONAIS' AS constante_textual, 'DADOS PROFISSIONAIS' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'SUBFORM_TABTITLE_DADOS_ACADEMICOS' AS constante_textual, 'DADOS ACADÊMICOS' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'SUBFORM_TABTITLE_DADOS_BIOMETRICOS' AS constante_textual, 'DADOS BIOMÉTRICOS' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'SUBFORM_TABTITLE_INFORMACOES_BANCARIAS' AS constante_textual, 'INFORMAÇÕES BANCÁRIAS' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'SUBFORM_TABTITLE_DADOS_PJ' AS constante_textual, 'DADOS EMPRESA/INSTITUIÇÃO' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'SUBFORM_TABTITLE_PERFIL' AS constante_textual, 'PERFIL' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'SUBFORM_TABTITLE_RESUMO' AS constante_textual, 'RESUMO' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

/* ítens de menus */
INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'MENU_ITEM_REGISTRE_SE' AS constante_textual, 'Registre-se' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

/*Titulo e subtitulo da tela de validação e de cadastro de novos usuarios */
INSERT INTO dicionario_expressao(id_categoria, constante_textual, traducao)
SELECT c.id, 'VIEW_LOGIN_SUCESSO_VALIDAR_EMAIL_TITULO' AS constante_textual, 'Email validado com sucesso.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

/* mensagem token email de validacao expirado */
INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id , 'LINK_FORM_CADASTRO_USUARIO_NAO_VALIDADO' AS constante_textual, 'Clique aqui para recomeçar o seu cadastro.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'MSG_TOKEN_EMAIL_VALIDACAO_EXPIRADO' AS constante_textual, 'Link para validação do seu e-mail expirado, por favor, recomeçe o seu cadastro.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao(id_categoria, constante_textual, traducao)
SELECT c.id, 'VIEW_LOGIN_SUCESSO_VALIDAR_EMAIL_SUBTITULO' AS constante_textual, 'Preencha o formulário abaixo para continuar o seu cadastro.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';


/* 
 * (Inglês dos E.U.A. - EN_US)
 * registro de novo usuário
*/ 
INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'VIEW_LOGIN_CADASTRAR_USUARIO_NAO_VALIDADO_TITULO' AS constante_textual, 'New user registry:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'VIEW_LOGIN_CADASTRAR_USUARIO_NAO_VALIDADO_SUBTITULO' AS constante_textual, 'Fill the fields below to start your registration process.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

/* e-mail não validado já existente no sistema */
INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'VIEW_LOGIN_ERRO_EMAIL_NAO_VALIDADO_EXISTENTE_NO_SISTEMA_TITULO' AS constante_textual, 'Warning!' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'VIEW_LOGIN_ERRO_EMAIL_NAO_VALIDADO_EXISTENTE_NO_SISTEMA_SUBTITULO' AS constante_textual, 'A new confirmation e-mail was sent to the address provided by you.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'VIEW_LOGIN_ERRO_EMAIL_NAO_VALIDADO_EXISTENTE_NO_SISTEMA_MENSAGEM' AS constante_textual, 'Access your mailbox and follow the e-mail instructions to validate your registry in our system.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

/* e-mail já validado no sistema */
INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'VIEW_LOGIN_ERRO_EMAIL_VALIDADO_EXISTENTE_NO_SISTEMA_TITULO' AS constante_textual, 'Warning!' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'VIEW_LOGIN_ERRO_EMAIL_VALIDADO_EXISTENTE_NO_SISTEMA_SUBTITULO' AS constante_textual, 'User already registered and validated on system.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'VIEW_LOGIN_ERRO_EMAIL_VALIDADO_EXISTENTE_NO_SISTEMA_MENSAGEM' AS constante_textual, 'Use your credentials ou try to reset you password.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

/* sucesso ao cadastrar usuário não validado */
INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'VIEW_LOGIN_SUCESSO_SALVAR_USUARIO_NAO_VALIDADO_TITULO' AS constante_textual, 'Success!' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'VIEW_LOGIN_SUCESSO_SALVAR_USUARIO_NAO_VALIDADO_SUBTITULO' AS constante_textual, 'A confirmation e-mail was sent to the address provided by you.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'VIEW_LOGIN_SUCESSO_SALVAR_USUARIO_NAO_VALIDADO_MENSAGEM' AS constante_textual, 'Access your mailbox and follow the e-mail instructions to validate your registry in our system.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

/* campos de formulários */
INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_NOME' AS constante_textual, 'Name:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_NOME_HINT' AS constante_textual, 'Fill this field with you complete name.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_EMAIL' AS constante_textual, 'E-mail:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_EMAIL_HINT' AS constante_textual, 'Fill this field with you e-mail address.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_NOME_CONFIRMACAO' AS constante_textual, 'Confirm your name:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_NOME_CONFIRMACAO_HINT' AS constante_textual, 'Fill in this field to cofirm your name.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_NOME_USUARIO' AS constante_textual, 'Username:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_NOME_USUARIO_HINT' AS constante_textual, 'Type your username.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_SENHA' AS constante_textual, 'Password:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_SENHA_HINT' AS constante_textual, 'Type the password which will be used by you in our system.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_SENHA_CONFIRMACAO' AS constante_textual, 'Re-type your password:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_SENHA_CONFIRMACAO_HINT' AS constante_textual, 'For confirmation, re-type the password which will be used by you in our system.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_SENHA_SUGESTAO' AS constante_textual, 'Generate password' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_SENHA_SUGESTAO_HINT' AS constante_textual, 'Click here to out system generate a password for you.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_SENHA_FORCA' AS constante_textual, 'Password strength:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_SENHA_FORCA_HINT' AS constante_textual, 'Password strength.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_DATA_NASCIMENTO' AS constante_textual, 'Birth date:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_DATA_NASCIMENTO_HINT' AS constante_textual, 'Type or select your birth date.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_SEXO' AS constante_textual, 'Genre:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_SEXO_HINT' AS constante_textual, 'Select your genre:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_RG' AS constante_textual, 'RG:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_RG_HINT' AS constante_textual, 'Type the Brazilian General Registration number.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_CPF' AS constante_textual, 'CPF:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_CPF_HINT' AS constante_textual, 'Type your brazilian CPF number.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_PASSAPORTE' AS constante_textual, 'Passport:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_PASSAPORTE_HINT' AS constante_textual, 'Type your passport number.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_CNH' AS constante_textual, 'CNH:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_CNH_HINT' AS constante_textual, 'Type your driver''s license number.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

/* SubForm Legends TAB */
INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'SUBFORM_TABTITLE_DADOS_PESSOAIS' AS constante_textual, 'PERSONAL INFORMATION' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'SUBFORM_TABTITLE_DADOS_PROFISSIONAIS' AS constante_textual, 'PROFESSIONAL INFORMATION' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'SUBFORM_TABTITLE_DADOS_ACADEMICOS' AS constante_textual, 'ACADEMIC INFORMATION' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'SUBFORM_TABTITLE_DADOS_BIOMETRICOS' AS constante_textual, 'BIOMETRIC INFORMATION' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'SUBFORM_TABTITLE_INFORMACOES_BANCARIAS' AS constante_textual, 'BANKING INFORMATION' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'SUBFORM_TABTITLE_DADOS_PJ' AS constante_textual, 'COMPANY/INSTITUTIONAL INFORMATION' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'SUBFORM_TABTITLE_PERFIL' AS constante_textual, 'PROFILE' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'SUBFORM_TABTITLE_RESUMO' AS constante_textual, 'SUMMARY' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';


/* ítens de menus */
INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'MENU_ITEM_REGISTRE_SE' AS constante_textual, 'Register' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

/* Titulo e subtitulo da tela de validação e de cadastro de novos usuarios */
INSERT INTO dicionario_expressao(id_categoria, constante_textual, traducao)
SELECT c.id, 'VIEW_LOGIN_SUCESSO_VALIDAR_EMAIL_TITULO' AS constante_textual, 'Email sucessfully checked!' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

/* mensagem token validacao email expirado */
INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'LINK_FORM_CADASTRO_USUARIO_NAO_VALIDADO' AS constante_textual, 'Click here to restart your registration process.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'MSG_TOKEN_EMAIL_VALIDACAO_EXPIRADO' AS constante_textual, 'E-mail validation link expired, please restart your registration process.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao(id_categoria, constante_textual, traducao)
SELECT c.id, 'VIEW_LOGIN_SUCESSO_VALIDAR_EMAIL_SUBTITULO' AS constante_textual, 'Fill this form below to continue your registration.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';