/**
* SCRIPT DE POPULACAO DA TABELA basico.categoria
* 
* versao: 1.0 (POSTGRESQL 9.1.1)
* por: JOÃO VASCONCELOS (joao.vasconcelos@rochedoproject.com)
* criacao: 31/01/2012
* ultimas modificacoes:
* 
*/

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT id, 'SISTEMA_EMAIL' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria
WHERE nome = 'SISTEMA';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT id, 'SISTEMA_MENSAGEM' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria
WHERE nome = 'SISTEMA';

INSERT into basico.categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria_pai, 2 AS nivel, 'SISTEMA_MENSAGEM_EMAIL' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'SISTEMA_MENSAGEM';

INSERT into basico.categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria_pai, 3 AS nivel, 'SISTEMA_MENSAGEM_EMAIL_TEMPLATE' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'SISTEMA_MENSAGEM_EMAIL';

INSERT into basico.categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria_pai, 4 AS nivel, 'SISTEMA_MENSAGEM_EMAIL_TEMPLATE_PROBLEMAS_LOGIN_PLAINTEXT' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'SISTEMA_MENSAGEM_EMAIL_TEMPLATE';

INSERT into basico.categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria_pai, 4 AS nivel, 'SISTEMA_MENSAGEM_EMAIL_TEMPLATE_REGISTRO_USUARIO_PLAINTEXT' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'SISTEMA_MENSAGEM_EMAIL_TEMPLATE';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'LOG' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'SISTEMA';

INSERT into basico.categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria_pai, 2 AS nivel, 'LOG_NOVA_CATEGORIA' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'LOG';

INSERT into basico.categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria_pai, 2 AS nivel, 'LOG_UPDATE_CATEGORIA' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'LOG';

INSERT into basico.categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria_pai, 2 AS nivel, 'LOG_DELETE_CATEGORIA' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'LOG';

INSERT into basico.categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria_pai, 2 AS nivel, 'LOG_CATEGORIA_CHAVE_ESTRANGEIRA' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'LOG';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'PERFIL_USUARIO' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'PERFIL';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'PERFIL_USUARIO_SISTEMA' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'PERFIL';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'MENSAGEM_EMAIL' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'MENSAGEM';

INSERT into basico.categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria_pai, 2 AS nivel, 'MENSAGEM_EMAIL_VALIDACAO_USUARIO' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'MENSAGEM'
AND c.nome = 'MENSAGEM_EMAIL';

INSERT into basico.categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria_pai, 3 AS nivel, 'MENSAGEM_EMAIL_VALIDACAO_USUARIO_PLAINTEXT' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'MENSAGEM'
AND c.nome = 'MENSAGEM_EMAIL_VALIDACAO_USUARIO';

INSERT into basico.categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria_pai, 2 AS nivel, 'MENSAGEM_EMAIL_ALERTA_PROBLEMAS_LOGIN' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'MENSAGEM'
AND c.nome = 'MENSAGEM_EMAIL';

INSERT into basico.categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria_pai, 3 AS nivel, 'MENSAGEM_EMAIL_ALERTA_PROBLEMAS_LOGIN_PLAINTEXT' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'MENSAGEM'
AND c.nome = 'MENSAGEM_EMAIL_ALERTA_PROBLEMAS_LOGIN';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'MENSAGEM_PESSOAS_ENVOLVIDAS' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'MENSAGEM';

INSERT into basico.categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria_pai, 2 AS nivel, 'MENSAGEM_PESSOAS_ENVOLVIDAS_REMETENTE' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'MENSAGEM'
AND c.nome = 'MENSAGEM_PESSOAS_ENVOLVIDAS';

INSERT into basico.categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria_pai, 2 AS nivel, 'MENSAGEM_PESSOAS_ENVOLVIDAS_DESTINATARIO' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'MENSAGEM'
AND c.nome = 'MENSAGEM_PESSOAS_ENVOLVIDAS';

INSERT into basico.categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria_pai, 2 AS nivel, 'MENSAGEM_PESSOAS_ENVOLVIDAS_DESTINATARIO_COPIA_CARBONADA' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'MENSAGEM'
AND c.nome = 'MENSAGEM_PESSOAS_ENVOLVIDAS';

INSERT into basico.categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria_pai, 2 AS nivel, 'MENSAGEM_PESSOAS_ENVOLVIDAS_DESTINATARIO_COPIA_CARBONADA_OCULTA' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'MENSAGEM'
AND c.nome = 'MENSAGEM_PESSOAS_ENVOLVIDAS';

INSERT into basico.categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria_pai, 2 AS nivel, 'MENSAGEM_PESSOAS_ENVOLVIDAS_RESPONDER_PARA' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'MENSAGEM'
AND c.nome = 'MENSAGEM_PESSOAS_ENVOLVIDAS';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'EMAIL_PRIMARIO' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'EMAIL';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT id AS id_tipo_categoria, 'FORMULARIO_OUTPUT' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria
WHERE nome = 'FORMULARIO';

INSERT into basico.categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria, 2 AS nivel, 'FORMULARIO_OUTPUT_DOJO' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_OUTPUT';

INSERT into basico.categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria, 2 AS nivel, 'FORMULARIO_OUTPUT_HTML' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_OUTPUT';

INSERT into basico.categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria, 2 AS nivel, 'FORMULARIO_OUTPUT_AJAX' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_OUTPUT';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT id AS id_tipo_categoria, 'FORMULARIO_TEMPLATE' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria
WHERE nome = 'FORMULARIO';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT id AS id_tipo_categoria, 'FORMULARIO_INPUT' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria
WHERE nome = 'FORMULARIO';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT id AS id_tipo_categoria, 'FORMULARIO_ADMIN' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria
WHERE nome = 'FORMULARIO';

INSERT into basico.categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria, 2 AS nivel, 'FORMULARIO_INPUT_LOGIN' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT';

INSERT into basico.categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria, 2 AS nivel, 'FORMULARIO_INPUT_SUGESTAO_LOGIN' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT';

INSERT into basico.categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria, 2 AS nivel, 'FORMULARIO_INPUT_TROCA_DE_SENHA' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT';

INSERT into basico.categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria, 2 AS nivel, 'FORMULARIO_INPUT_CVC' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT';

INSERT into basico.categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria, 2 AS nivel, 'FORMULARIO_INPUT_CADASTRO' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT';

INSERT into basico.categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria, 3 AS nivel, 'FORMULARIO_ADMIN_RASCUNHOS' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ADMIN';

INSERT into basico.categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria, 3 AS nivel, 'FORMULARIO_INPUT_CADASTRO_USUARIO' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO';

INSERT into basico.categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria, 3 AS nivel, 'FORMULARIO_INPUT_CADASTRO_USUARIO_COORDENACAO_POS_GRADUACAO' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO';

INSERT into basico.categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria, 3 AS nivel, 'FORMULARIO_INPUT_CADASTRO_USUARIO_ORIENTACOES' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO';

INSERT into basico.categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria, 3 AS nivel, 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO';

INSERT into basico.categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria, 4 AS nivel, 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL_TELEFONES_PROFISSIONAIS' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL';

INSERT into basico.categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria, 3 AS nivel, 'FORMULARIO_INPUT_CADASTRO_TELEFONE' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO';

INSERT into basico.categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria, 4 AS nivel, 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL_EMAILS_PROFISSIONAIS' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL';

INSERT into basico.categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria, 3 AS nivel, 'FORMULARIO_INPUT_CADASTRO_EMAIL' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO';

INSERT into basico.categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria, 4 AS nivel, 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL_WEBSITES_PROFISSIONAIS' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL';

INSERT into basico.categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria, 3 AS nivel, 'FORMULARIO_INPUT_CADASTRO_WEBSITE' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO';

INSERT into basico.categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria, 3 AS nivel, 'FORMULARIO_INPUT_CADASTRO_DOCUMENTOS_IDENTIFICACAO' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO';

INSERT into basico.categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria, 4 AS nivel, 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL_ENDERECOS_PROFISSIONAIS' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL';

INSERT into basico.categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria, 3 AS nivel, 'FORMULARIO_INPUT_CADASTRO_ENDERECO' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT id AS id_tipo_categoria, 'FORMULARIO_SUB_FORMULARIO' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria
WHERE nome = 'FORMULARIO';

INSERT into basico.categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria, 2 AS nivel, 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_PESSOAIS' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_SUB_FORMULARIO';

INSERT into basico.categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria, 2 AS nivel, 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_ACADEMICOS' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_SUB_FORMULARIO';

INSERT into basico.categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria, 2 AS nivel, 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_PROFISSIONAIS' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_SUB_FORMULARIO';

INSERT into basico.categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria, 2 AS nivel, 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_BIOMETRICOS' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_SUB_FORMULARIO';

INSERT into basico.categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria, 2 AS nivel, 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_CONTA' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_SUB_FORMULARIO';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT id AS id_tipo_categoria, 'AJUDA_FORMULARIO' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria
WHERE nome = 'AJUDA';

INSERT into basico.categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria, 2 AS nivel, 'AJUDA_FORMULARIO_FIELD' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT id AS id_tipo_categoria, 'FORMULARIO_DECORATOR' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria
WHERE nome = 'FORMULARIO';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT id AS id_tipo_categoria, 'FORMULARIO_ELEMENTO' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria
WHERE nome = 'FORMULARIO';

INSERT into basico.categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria, 2 AS nivel, 'FORMULARIO_ELEMENTO_FILTER' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT into basico.categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria, 2 AS nivel, 'FORMULARIO_ELEMENTO_VALIDATOR' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT into basico.categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria, 2 AS nivel, 'FORMULARIO_ELEMENTO_DECORATOR' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT into basico.categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria, 2 AS nivel, 'FORMULARIO_ELEMENTO_CAPTCHA' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT into basico.categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria, 2 AS nivel, 'FORMULARIO_ELEMENTO_BUTTON' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT into basico.categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria, 2 AS nivel, 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT into basico.categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria, 2 AS nivel, 'FORMULARIO_ELEMENTO_HIDDEN' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT into basico.categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria, 2 AS nivel, 'FORMULARIO_ELEMENTO_HASH' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT into basico.categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria, 2 AS nivel, 'FORMULARIO_ELEMENTO_HTML' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT id AS id_tipo_categoria, 'FORMULARIO_TAB_CONTAINER1_DECORATOR' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria
WHERE nome = 'FORMULARIO';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT id AS id_tipo_categoria, 'FORMULARIO_ACCORDEON_CONTAINER1_DECORATOR' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria
WHERE nome = 'FORMULARIO';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT id AS id_tipo_categoria, 'FORMULARIO_CONTENT_PANE1_DECORATOR' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria
WHERE nome = 'FORMULARIO';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'FORMULARIO_SUB_FORMULARIO_CONTENT_PANE1_DECORATOR' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (c.id_tipo_categoria = t.id)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_SUB_FORMULARIO';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT id AS id_tipo_categoria, 'FORMULARIO_DIV_DECORATOR' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria
WHERE nome = 'FORMULARIO';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT id AS id_tipo_categoria, 'FORMULARIO_DIV_WIDTH_100PERCENT_CLEAR_BOTH_DECORATOR' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria
WHERE nome = 'FORMULARIO';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT id AS id_tipo_categoria, 'FORMULARIO_DIV_FLOAT_RIGHT_DECORATOR' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria
WHERE nome = 'FORMULARIO';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT id AS id_tipo_categoria, 'FORMULARIO_DIV_FLOAT_RIGHT_CLEAR_BOTH_DECORATOR' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria
WHERE nome = 'FORMULARIO';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT id AS id_tipo_categoria, 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria
WHERE nome = 'FORMULARIO';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT id AS id_tipo_categoria, 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria
WHERE nome = 'FORMULARIO';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT id AS id_tipo_categoria, 'FORMULARIO_DIV_CLEAR_BOTH_DECORATOR' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria
WHERE nome = 'FORMULARIO';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT id AS id_tipo_categoria, 'FORMULARIO_DIV_WIDTH' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria
WHERE nome = 'FORMULARIO';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'SISTEMA_MODULO' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'SISTEMA';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'COMPONENTE_DOJO' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'COMPONENTE';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'COMPONENTE_ZF' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'COMPONENTE';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT id, 'COMPONENTE_AJAXTERCEIROS' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria
WHERE nome = 'COMPONENTE';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'COMPONENTE_ROCHEDO' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'COMPONENTE';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT id AS id_tipo_categoria, 'CVC' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria
WHERE nome = 'CVC';

INSERT into basico.categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria_pai, 2 AS nivel, 'LOG_RELACAO_CATEGORIA_CHAVE_ESTRANGEIRA' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'LOG';

INSERT into basico.categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria, 3 AS nivel, 'FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_PESSOAIS_DOCUMENTOS_PESSOAIS' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO';

INSERT into basico.categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria, 3 AS nivel, 'FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_PESSOAIS_TELEFONES_PESSOAIS' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO';

INSERT into basico.categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria, 3 AS nivel, 'FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_PESSOAIS_EMAILS_PESSOAIS' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO';

INSERT into basico.categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria, 3 AS nivel, 'FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_PESSOAIS_WEBSITES_PESSOAIS' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO';

INSERT into basico.categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria, 3 AS nivel, 'FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_PESSOAIS_ENDERECOS_PESSOAIS' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO';

INSERT into basico.categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria, 3 AS nivel, 'FORMULARIO_INPUT_CADASTRO_USUARIO_INFORMACOES_BANCARIAS_DADOS_BANCARIOS_CONTAS_BANCARIAS' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO';

INSERT into basico.categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria, 3 AS nivel, 'FORMULARIO_INPUT_CADASTRO_CONTA_BANCARIA' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT id, 'LOCALIDADE_ESTADO' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria
WHERE nome = 'LOCALIDADE';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT id, 'LOCALIDADE_NAO_DETERMINADA' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria
WHERE nome = 'LOCALIDADE';

INSERT into basico.categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria_pai, 2 AS nivel, 
    'LOCALIDADE_ESTADO_MUNICIPIO' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
    LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LOCALIDADE'
AND c.nome = 'LOCALIDADE_ESTADO';

INSERT into basico.categoria (id_tipo_categoria, nivel, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 2 AS nivel, 
    'GENERO' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'DADOS_BIOMETRICOS';

INSERT into basico.categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, constante_textual, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria_pai, 2 AS nivel, 
    'GENERO_MASCULINO' AS nome, 'GENERO_MASCULINO' AS constante_textual, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
    LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'DADOS_BIOMETRICOS'
AND c.nome = 'GENERO';

INSERT into basico.categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, constante_textual, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria_pai, 2 AS nivel, 
    'GENERO_FEMININO' AS nome, 'GENERO_FEMININO' AS constante_textual, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
    LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'DADOS_BIOMETRICOS'
AND c.nome = 'GENERO';

INSERT into basico.categoria (id_tipo_categoria, nivel, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 2 AS nivel, 
    'TIPO_SANGUINEO' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'DADOS_BIOMETRICOS';

INSERT into basico.categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, constante_textual, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria_pai, 2 AS nivel, 
    'TIPO_SANGUINEO_A_POSITIVO' AS nome, 'TIPO_SANGUINEO_A_POSITIVO' AS constante_textual, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
    LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'DADOS_BIOMETRICOS'
AND c.nome = 'TIPO_SANGUINEO';

INSERT into basico.categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, constante_textual, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria_pai, 2 AS nivel, 
    'TIPO_SANGUINEO_A_NEGATIVO' AS nome, 'TIPO_SANGUINEO_A_NEGATIVO' AS constante_textual, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
    LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'DADOS_BIOMETRICOS'
AND c.nome = 'TIPO_SANGUINEO';

INSERT into basico.categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, constante_textual, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria_pai, 2 AS nivel, 
    'TIPO_SANGUINEO_B_POSITIVO' AS nome, 'TIPO_SANGUINEO_B_POSITIVO' AS constante_textual, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
    LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'DADOS_BIOMETRICOS'
AND c.nome = 'TIPO_SANGUINEO';

INSERT into basico.categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, constante_textual, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria_pai, 2 AS nivel, 
    'TIPO_SANGUINEO_B_NEGATIVO' AS nome, 'TIPO_SANGUINEO_B_NEGATIVO' AS constante_textual, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
    LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'DADOS_BIOMETRICOS'
AND c.nome = 'TIPO_SANGUINEO';

INSERT into basico.categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, constante_textual, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria_pai, 2 AS nivel, 
    'TIPO_SANGUINEO_AB_POSITIVO' AS nome, 'TIPO_SANGUINEO_AB_POSITIVO' AS constante_textual, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
    LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'DADOS_BIOMETRICOS'
AND c.nome = 'TIPO_SANGUINEO';

INSERT into basico.categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, constante_textual, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria_pai, 2 AS nivel, 
    'TIPO_SANGUINEO_AB_NEGATIVO' AS nome, 'TIPO_SANGUINEO_AB_NEGATIVO' AS constante_textual, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
    LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'DADOS_BIOMETRICOS'
AND c.nome = 'TIPO_SANGUINEO';

INSERT into basico.categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, constante_textual, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria_pai, 2 AS nivel, 
    'TIPO_SANGUINEO_O_POSITIVO' AS nome, 'TIPO_SANGUINEO_O_POSITIVO' AS constante_textual, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
    LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'DADOS_BIOMETRICOS'
AND c.nome = 'TIPO_SANGUINEO';

INSERT into basico.categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, constante_textual, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria_pai, 2 AS nivel, 
    'TIPO_SANGUINEO_O_NEGATIVO' AS nome, 'TIPO_SANGUINEO_O_NEGATIVO' AS constante_textual, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
    LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'DADOS_BIOMETRICOS'
AND c.nome = 'TIPO_SANGUINEO';

INSERT into basico.categoria (id_tipo_categoria, nivel, nome, constante_textual, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 1 AS nivel, 
    'INCLUDE_JS_LINKHTML' AS nome, 'INCLUDE_JS_LINKHTML' AS constante_textual, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'INCLUDE';

INSERT into basico.categoria (id_tipo_categoria, nivel, nome, constante_textual, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 1 AS nivel, 
    'INCLUDE_CSS_LINKHTML' AS nome, 'INCLUDE_CSS_LINKHTML' AS constante_textual, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'INCLUDE';