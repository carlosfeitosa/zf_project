/**
* SCRIPT DE POPULACAO DA TABELA TIPO_CATEGORIA
* 
* versao: 1.0 (MSSQL 2000)
* por: CARLOS FEITOSA (carlos.feitosa@rochedoproject.com)
* criacao: 20/10/2010
* ultimas modificacoes:
*	 						22/10/2010 - criacao da categoria FORMULARIO_SUB_FORMULARIO_CONTENT_PANE1_DECORATOR;
*									   - criacao da categoria FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL_TELEFONES_COMERCIAIS;
*							01/11/2010 - criacao da categoria FORMULARIO_INPUT_CADASTRO_TELEFONE;
* 
*/

INSERT INTO categoria (id_tipo_categoria, nome, descricao, rowinfo)
SELECT id, 'SISTEMA_USUARIO' AS nome, 'Usuários utilizados pelo sistema.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria
WHERE nome = 'SISTEMA';

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
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria_pai, 2 AS nivel, 'LOG_NOVO_TOKEN' AS nome, 'Operação de inserção de um novo token.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
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

INSERT INTO categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria_pai, 2 AS nivel, 'LOG_NOVA_PESSOA_PERFIL_MENSAGEM_CATEGORIA' AS nome, 'Operação de inserção na tabela de relacionamento de Pessoas, Perfis, Mensagem e Categoria.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'LOG';

INSERT INTO categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria_pai, 2 AS nivel, 'LOG_CATEGORIA_CHAVE_ESTRANGEIRA' AS nome, 'Operação de inserção na tabela de relacionamento Categoria Chave Estrangeiras.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'LOG';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, 'PERFIL_USUARIO' AS nome, 'Perfis de usuários.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'PERFIL';

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

INSERT INTO categoria (id_tipo_categoria, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, 'EMAIL_PRIMARIO' AS nome, 'Endereços de e-mail principal validado pelo sistema.' AS descricao, 'SYSTEM_STARTUP'
FROM tipo_categoria t
WHERE t.nome = 'EMAIL';

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

INSERT INTO categoria (id_tipo_categoria, nome, descricao, rowinfo)
SELECT id AS id_tipo_categoria, 'FORMULARIO_OUTPUT' AS nome, 'Tipo de saida de formulários.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria
WHERE nome = 'FORMULARIO';

INSERT INTO categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria, 2 AS nivel, 'FORMULARIO_OUTPUT_DOJO' AS nome, 'Saida DOJO.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_OUTPUT';

INSERT INTO categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria, 2 AS nivel, 'FORMULARIO_OUTPUT_HTML' AS nome, 'Saida HTML.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_OUTPUT';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, rowinfo)
SELECT id AS id_tipo_categoria, 'FORMULARIO_TEMPLATE' AS nome, 'Template de formulários.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria
WHERE nome = 'FORMULARIO';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, rowinfo)
SELECT id AS id_tipo_categoria, 'FORMULARIO_INPUT' AS nome, 'Formulários de manipulação de dados.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria
WHERE nome = 'FORMULARIO';

INSERT INTO categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria, 2 AS nivel, 'FORMULARIO_INPUT_CADASTRO' AS nome, 'Formulários de manipulação de dados cadastrais.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT';

INSERT INTO categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria, 3 AS nivel, 'FORMULARIO_INPUT_CADASTRO_USUARIO' AS nome, 'Formulários de manipulação de dados cadastrais do usuário.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO';

INSERT INTO categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria, 3 AS nivel, 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL' AS nome, 'Formulários de manipulação de dados de vinculos profissionais.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO';

INSERT INTO categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria, 4 AS nivel, 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL_TELEFONES_COMERCIAIS' AS nome, 'Formulários de manipulação de telefones comerciais de vinculos profissionais.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL';

INSERT INTO categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria, 3 AS nivel, 'FORMULARIO_INPUT_CADASTRO_TELEFONE' AS nome, 'Formulários de manipulação de dados telefonicos.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, rowinfo)
SELECT id AS id_tipo_categoria, 'FORMULARIO_SUB_FORMULARIO' AS nome, 'Sub-formulários de manipulação de dados.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria
WHERE nome = 'FORMULARIO';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, rowinfo)
SELECT id AS id_tipo_categoria, 'AJUDA_FORMULARIO' AS nome, 'Ajuda para preenchimento de formulários de manipulação de dados.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria
WHERE nome = 'AJUDA';

INSERT INTO categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria, 2 AS nivel, 'AJUDA_FORMULARIO_CADASTRO' AS nome, 'Ajuda para preenchimento de formulários de manipulação de dados cadastrais.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO';

INSERT INTO categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria, 3 AS nivel, 'AJUDA_FORMULARIO_CADASTRO_USUARIO' AS nome, 'Ajuda para preenchimento de formulários de manipulação de dados cadastrais.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_CADASTRO';

INSERT INTO categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria, 4 AS nivel, 'AJUDA_FORMULARIO_CADASTRO_USUARIO_VALIDADO' AS nome, 'Ajuda para preenchimento de formulários de manipulação de dados cadastrais (usuário validado).' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_CADASTRO_USUARIO';

INSERT INTO categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria, 4 AS nivel, 'AJUDA_FORMULARIO_CADASTRO_USUARIO_DADOS_PROFISSIONAIS' AS nome, 'Ajuda para preenchimento de formulários de manipulação de dados cadastrais (dados profissionais).' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_CADASTRO_USUARIO';

INSERT INTO categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria, 4 AS nivel, 'AJUDA_FORMULARIO_CADASTRO_USUARIO_DADOS_ACADEMICOS' AS nome, 'Ajuda para preenchimento de formulários de manipulação de dados cadastrais (dados acadêmicos).' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_CADASTRO_USUARIO';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, rowinfo)
SELECT id AS id_tipo_categoria, 'FORMULARIO_DECORATOR' AS nome, 'Decorator para formulários de manipulação de dados.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria
WHERE nome = 'FORMULARIO';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, rowinfo)
SELECT id AS id_tipo_categoria, 'FORMULARIO_ELEMENTO' AS nome, 'Elementos de formulários de manipulação de dados.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria
WHERE nome = 'FORMULARIO';

INSERT INTO categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria, 2 AS nivel, 'FORMULARIO_ELEMENTO_FILTER' AS nome, 'Filtros para elementos de formulários de manipulação de dados.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria, 2 AS nivel, 'FORMULARIO_ELEMENTO_VALIDATOR' AS nome, 'Validadores para elementos de formulários de manipulação de dados.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria, 2 AS nivel, 'FORMULARIO_ELEMENTO_DECORATOR' AS nome, 'Decorador para elementos de formulários de manipulação de dados.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria, 2 AS nivel, 'FORMULARIO_ELEMENTO_CAPTCHA' AS nome, 'Elementos CAPTCHA para formulários de manipulação de dados.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria, 2 AS nivel, 'FORMULARIO_ELEMENTO_BUTTON' AS nome, 'Botões para formulários de manipulação de dados.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria, 2 AS nivel, 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO' AS nome, 'Botões para chamada de caixas de dialogo DOJO, contendo formulários de manipulação de dados.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria, 2 AS nivel, 'FORMULARIO_ELEMENTO_HASH' AS nome, 'Hashs para formulários de manipulação de dados.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, rowinfo)
SELECT id AS id_tipo_categoria, 'FORMULARIO_TAB_CONTAINER1_DECORATOR' AS nome, 'Decorator para submissão de sub-formulários (em formato Abas).' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria
WHERE nome = 'FORMULARIO';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, rowinfo)
SELECT id AS id_tipo_categoria, 'FORMULARIO_ACCORDEON_CONTAINER1_DECORATOR' AS nome, 'Decorator para submissão de sub-formulários (em formato Acordeon)' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria
WHERE nome = 'FORMULARIO';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, rowinfo)
SELECT id AS id_tipo_categoria, 'FORMULARIO_CONTENT_PANE1_DECORATOR' AS nome, 'Decorator para conteudo de containers.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria
WHERE nome = 'FORMULARIO';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, 'FORMULARIO_SUB_FORMULARIO_CONTENT_PANE1_DECORATOR' AS nome, 'Decorator para conteudo de containers dentro de sub-formulários.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (c.id_tipo_categoria = t.id)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_SUB_FORMULARIO';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, rowinfo)
SELECT id AS id_tipo_categoria, 'FORMULARIO_DIV_DECORATOR' AS nome, 'Decorator para div float left.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria
WHERE nome = 'FORMULARIO';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, rowinfo)
SELECT id AS id_tipo_categoria, 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR' AS nome, 'Decorator para div float left.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria
WHERE nome = 'FORMULARIO';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, rowinfo)
SELECT id AS id_tipo_categoria, 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR' AS nome, 'Decorator para div float left clear both.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria
WHERE nome = 'FORMULARIO';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, rowinfo)
SELECT id AS id_tipo_categoria, 'FORMULARIO_DIV_CLEAR_BOTH_DECORATOR' AS nome, 'Decorator para clear both.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria
WHERE nome = 'FORMULARIO';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, 'SISTEMA_MODULO' AS nome, 'Modulos do sistema.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'SISTEMA';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, 'COMPONENTE_DOJO' AS nome, 'Componentes DOJO do sistema.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'COMPONENTE';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, 'COMPONENTE_ZF' AS nome, 'Componentes ZendFramework do sistema.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'COMPONENTE';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, rowinfo)
SELECT id, 'COMPONENTE_AJAX_TERCEIROS' AS nome, 'Componentes ajax de terceiros utilizados pelo sistema.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria
WHERE nome = 'COMPONENTE';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, rowinfo)
SELECT id AS id_tipo_categoria, 'CVC' AS nome, 'Control Version Class (classe de controle de versao).' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria
WHERE nome = 'CVC';

INSERT INTO categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria_pai, 2 AS nivel, 'LOG_RELACAO_CATEGORIA_CHAVE_ESTRANGEIRA' AS nome, 'Criação de relação categoria chave estrangeira.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'LOG';