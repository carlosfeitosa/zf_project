/**
* SCRIPT DE POPULACAO DA TABELA basico_acao_aplicacao.assoc_visao
* 
* versao: 1.0 (POSTGRESQL 9.1.1)
* por: João Vasconcelos (joao.vasconcelos@rochedoframework.com)
* criacao: 23/04/2012
* ultimas modificacoes:
*/

INSERT INTO basico_acao_aplicacao.assoc_visao (id_categoria, id_acao_aplicacao, constante_textual, rowinfo)
SELECT c.id as id_categoria,
		(SELECT id from basico.acao_aplicacao a
		WHERE a.id_modulo = 1
		AND a.controller  = 'dadosusuario'
		AND a.action      = 'index') AS id_acao_aplicacao,
		'VISAO_DADOS_USUARIO' AS constante_textual,
		'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c        
LEFT JOIN basico.tipo_categoria tc ON (c.id_tipo_categoria = tc.id)
WHERE c.nome = 'VISAO_DADOS_USUARIO'
AND tc.nome  = 'VISAO';

INSERT INTO basico_acao_aplicacao.assoc_visao (id_categoria, id_acao_aplicacao, constante_textual, constante_textual_titulo, constante_textual_subtitulo, rowinfo)
SELECT c.id as id_categoria,
		(SELECT id from basico.acao_aplicacao a
		WHERE a.id_modulo = 1
		AND a.controller  = 'login'
		AND a.action      = 'cadastrarusuarionaovalidado') AS id_acao_aplicacao,
		'VISAO_FORM_CADASTRAR_USUARIO_NAO_VALIDADO' AS constante_textual,
		'VIEW_LOGIN_CADASTRAR_USUARIO_NAO_VALIDADO_TITULO' AS constante_textual_titulo,
		'VIEW_LOGIN_CADASTRAR_USUARIO_NAO_VALIDADO_SUBTITULO' AS constante_textual_subtitulo,
		'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c        
LEFT JOIN basico.tipo_categoria tc ON (c.id_tipo_categoria = tc.id)
WHERE c.nome = 'VISAO_FORM_CADASTRAR_USUARIO'
AND tc.nome  = 'VISAO';

INSERT INTO basico_acao_aplicacao.assoc_visao (id_categoria, id_acao_aplicacao, constante_textual, rowinfo)
SELECT c.id as id_categoria,
		(SELECT id from basico.acao_aplicacao a
		WHERE a.id_modulo = 1
		AND a.controller  = 'login'
		AND a.action      = 'salvarusuariovalidado') AS id_acao_aplicacao,
		'VISAO_SALVAR_USUARIO_VALIDADO' AS constante_textual,
		'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c        
LEFT JOIN basico.tipo_categoria tc ON (c.id_tipo_categoria = tc.id)
WHERE c.nome = 'VISAO_FORM_CADASTRAR_USUARIO'
AND tc.nome  = 'VISAO';

INSERT INTO basico_acao_aplicacao.assoc_visao (id_categoria, id_acao_aplicacao, constante_textual, constante_textual_titulo, constante_textual_subtitulo, rowinfo)
SELECT c.id as id_categoria,
		(SELECT id from basico.acao_aplicacao a
		WHERE a.id_modulo = 1
		AND a.controller  = 'login'
		AND a.action      = 'sucessosalvarusuariovalidado') AS id_acao_aplicacao,
		'VISAO_SUCESSO_CADASTRAR_USUARIO_VALIDADO' AS constante_textual,
		'VIEW_LOGIN_CADASTRAR_USUARIO_VALIDADO_SUCESSO_TITULO' AS constante_textual_titulo,
		'VIEW_LOGIN_CADASTRAR_USUARIO_VALIDADO_SUCESSO_SUBTITULO' AS constante_textual_subtitulo,
		'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c        
LEFT JOIN basico.tipo_categoria tc ON (c.id_tipo_categoria = tc.id)
WHERE c.nome = 'VISAO_FORM_CADASTRAR_USUARIO'
AND tc.nome  = 'VISAO';

INSERT INTO basico_acao_aplicacao.assoc_visao (id_categoria, id_acao_aplicacao, constante_textual, rowinfo)
SELECT c.id as id_categoria,
		(SELECT id from basico.acao_aplicacao a
		WHERE a.id_modulo = 1
		AND a.controller  = 'login'
		AND a.action      = 'verificadisponibilidadelogin') AS id_acao_aplicacao,
		'VISAO_VERIFICA_DISPONIBILIDADE_LOGIN' AS constante_textual,
		'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c        
LEFT JOIN basico.tipo_categoria tc ON (c.id_tipo_categoria = tc.id)
WHERE c.nome = 'VISAO_FORM_CADASTRAR_USUARIO'
AND tc.nome  = 'VISAO';

INSERT INTO basico_acao_aplicacao.assoc_visao (id_categoria, id_acao_aplicacao, constante_textual, constante_textual_titulo, constante_textual_subtitulo, rowinfo)
SELECT c.id as id_categoria,
		(SELECT id from basico.acao_aplicacao a
		WHERE a.id_modulo = 1
		AND a.controller  = 'login'
		AND a.action      = 'verificanovologin') AS id_acao_aplicacao,
		'VISAO_VERIFICA_NOVO_LOGIN' AS constante_textual,
		'VIEW_LOGIN_CADASTRAR_USUARIO_NAO_VALIDADO_TITULO' AS constante_textual_titulo,
		'VIEW_LOGIN_CADASTRAR_USUARIO_NAO_VALIDADO_SUBTITULO' AS constante_textual_subtitulo,
		'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c        
LEFT JOIN basico.tipo_categoria tc ON (c.id_tipo_categoria = tc.id)
WHERE c.nome = 'VISAO_FORM_CADASTRAR_USUARIO'
AND tc.nome  = 'VISAO';

INSERT INTO basico_acao_aplicacao.assoc_visao (id_categoria, id_acao_aplicacao, constante_textual, constante_textual_titulo, constante_textual_mensagem, constante_textual_subtitulo, rowinfo)
SELECT c.id as id_categoria,
		(SELECT id from basico.acao_aplicacao a
		WHERE a.id_modulo = 1
		AND a.controller  = 'login'
		AND a.action      = 'sucessosalvarusuarionaovalidado') AS id_acao_aplicacao,
		'VISAO_SUCESSO_CADASTRAR_USUARIO_NAO_VALIDADO' AS constante_textual,
		'VIEW_LOGIN_SUCESSO_SALVAR_USUARIO_NAO_VALIDADO_TITULO' AS constante_textual_titulo,
		'VIEW_LOGIN_SUCESSO_SALVAR_USUARIO_NAO_VALIDADO_SUBTITULO' AS constante_textual_subtitulo,
		'VIEW_LOGIN_SUCESSO_SALVAR_USUARIO_NAO_VALIDADO_MENSAGEM' AS constante_textual_mensagem,
		'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c        
LEFT JOIN basico.tipo_categoria tc ON (c.id_tipo_categoria = tc.id)
WHERE c.nome = 'VISAO_FORM_CADASTRAR_USUARIO'
AND tc.nome  = 'VISAO';

INSERT INTO basico_acao_aplicacao.assoc_visao (id_categoria, id_acao_aplicacao, constante_textual, constante_textual_titulo, constante_textual_mensagem, constante_textual_subtitulo, rowinfo)
SELECT c.id as id_categoria,
		(SELECT id from basico.acao_aplicacao a
		WHERE a.id_modulo = 1
		AND a.controller  = 'email'
		AND a.action      = 'erroemailvalidadoexistentenosistema') AS id_acao_aplicacao,
		'VISAO_ERRO_EMAIL_VALIDADO_EXISTENTE_NO_SISTEMA' AS constante_textual,
		'VIEW_LOGIN_SUCESSO_SALVAR_USUARIO_NAO_VALIDADO_TITULO' AS constante_textual_titulo,
		'VIEW_LOGIN_SUCESSO_SALVAR_USUARIO_NAO_VALIDADO_SUBTITULO' AS constante_textual_subtitulo,
		'VIEW_LOGIN_SUCESSO_SALVAR_USUARIO_NAO_VALIDADO_MENSAGEM' AS constante_textual_mensagem,
		'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c        
LEFT JOIN basico.tipo_categoria tc ON (c.id_tipo_categoria = tc.id)
WHERE c.nome = 'VISAO_FORM_CADASTRAR_USUARIO'
AND tc.nome  = 'VISAO';

INSERT INTO basico_acao_aplicacao.assoc_visao (id_categoria, id_acao_aplicacao, constante_textual, constante_textual_titulo, constante_textual_mensagem, constante_textual_subtitulo, rowinfo)
SELECT c.id as id_categoria,
		(SELECT id from basico.acao_aplicacao a
		WHERE a.id_modulo = 1
		AND a.controller  = 'email'
		AND a.action      = 'erroemailnaovalidadoexistentenosistema') AS id_acao_aplicacao,
		'VISAO_ERRO_EMAIL_NAO_VALIDADO_EXISTENTE_NO_SISTEMA' AS constante_textual,
		'VIEW_LOGIN_SUCESSO_SALVAR_USUARIO_NAO_VALIDADO_TITULO' AS constante_textual_titulo,
		'VIEW_LOGIN_SUCESSO_SALVAR_USUARIO_NAO_VALIDADO_SUBTITULO' AS constante_textual_subtitulo,
		'VIEW_LOGIN_SUCESSO_SALVAR_USUARIO_NAO_VALIDADO_MENSAGEM' AS constante_textual_mensagem,
		'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c        
LEFT JOIN basico.tipo_categoria tc ON (c.id_tipo_categoria = tc.id)
WHERE c.nome = 'VISAO_FORM_CADASTRAR_USUARIO'
AND tc.nome  = 'VISAO';

INSERT INTO basico_acao_aplicacao.assoc_visao (id_categoria, id_acao_aplicacao, constante_textual, rowinfo)
SELECT c.id as id_categoria,
		(SELECT id from basico.acao_aplicacao a
		WHERE a.id_modulo = 1
		AND a.controller  = 'login'
		AND a.action      = 'exibirformsugestaologin') AS id_acao_aplicacao,
		'VISAO_EXIBIR_FORM_SUGESTAO_LOGIN' AS constante_textual,
		'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c        
LEFT JOIN basico.tipo_categoria tc ON (c.id_tipo_categoria = tc.id)
WHERE c.nome = 'VISAO_FORM_CADASTRAR_USUARIO'
AND tc.nome  = 'VISAO';

INSERT INTO basico_acao_aplicacao.assoc_visao (id_categoria, id_acao_aplicacao, constante_textual, constante_textual_titulo, constante_textual_subtitulo, rowinfo)
SELECT c.id as id_categoria,
		(SELECT id from basico.acao_aplicacao a
		WHERE a.id_modulo = 1
		AND a.controller  = 'login'
		AND a.action      = 'exibirformaceitetermosuso') AS id_acao_aplicacao,
		'VISAO_EXIBIR_FORM_ACEITE_TERMOS_USO' AS constante_textual,
		'VIEW_ACEITE_TERMOS_USO_TITULO' AS constante_textual_titulo,
		'VIEW_ACEITE_TERMOS_USO_SUBTITULO' AS constante_textual_subtitulo,
		'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c        
LEFT JOIN basico.tipo_categoria tc ON (c.id_tipo_categoria = tc.id)
WHERE c.nome = 'VISAO_FORM_CADASTRAR_USUARIO'
AND tc.nome  = 'VISAO';

INSERT INTO basico_acao_aplicacao.assoc_visao (id_categoria, id_acao_aplicacao, constante_textual, constante_textual_titulo, rowinfo)
SELECT c.id as id_categoria,
		(SELECT id from basico.acao_aplicacao a
		WHERE a.id_modulo = 1
		AND a.controller  = 'token'
		AND a.action      = 'errotokeninvalido') AS id_acao_aplicacao,
		'VISAO_ERRO_TOKEN_INVALIDO' AS constante_textual,
		'MSG_TOKEN_EMAIL_VALIDACAO_INVALIDO' AS constante_textual_titulo,
		'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c        
LEFT JOIN basico.tipo_categoria tc ON (c.id_tipo_categoria = tc.id)
WHERE c.nome = 'VISAO_FORM_CADASTRAR_USUARIO'
AND tc.nome  = 'VISAO';

INSERT INTO basico_acao_aplicacao.assoc_visao (id_categoria, id_acao_aplicacao, constante_textual, constante_textual_titulo, rowinfo)
SELECT c.id as id_categoria,
		(SELECT id from basico.acao_aplicacao a
		WHERE a.id_modulo = 1
		AND a.controller  = 'token'
		AND a.action      = 'errotokenexpirado') AS id_acao_aplicacao,
		'VISAO_ERRO_TOKEN_EXPIRADO' AS constante_textual,
		'MSG_TOKEN_EMAIL_VALIDACAO_EXPIRADO' AS constante_textual_titulo,
		'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c        
LEFT JOIN basico.tipo_categoria tc ON (c.id_tipo_categoria = tc.id)
WHERE c.nome = 'VISAO_FORM_CADASTRAR_USUARIO'
AND tc.nome  = 'VISAO';