/**
* SCRIPT DE POPULACAO DA TABELA basico.acao_aplicacao
* 
* versao: 1.0 (POSTGRESQL 8.4.1)
* por: IGOR PINHO (igor.pinho.souza@rochedoframework.com)
* criacao: 02/01/2012
* ultimas modificacoes:
* 								
*/

INSERT into basico.acao_aplicacao (id_modulo, controller, action, ativo, rowinfo)
SELECT m.id AS id_modulo, 'token' AS controller, 'validate' AS action, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, constante_textual, ativo, rowinfo)
SELECT m.id AS id_modulo, 'token' AS controller, 'errotokeninvalido' AS action, 'ACAO_ERRO_TOKEN_INVALIDO' AS constante_textual, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, constante_textual, ativo, rowinfo)
SELECT m.id AS id_modulo, 'rascunho' AS controller, 'exibirformadminrascunhos' AS action, 'ACAO_EXIBIR_FORM_ADMIN_RASCUNHO' AS constante_textual, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, constante_textual, ativo, rowinfo)
SELECT m.id AS id_modulo, 'rascunho' AS controller, 'excluir' AS action, 'ACAO_EXCLUIR' AS constante_textual, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, constante_textual, ativo, rowinfo)
SELECT m.id AS id_modulo, 'rascunho' AS controller, 'salvar' AS action, 'ACAO_SALVAR' AS constante_textual, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, constante_textual, ativo, rowinfo)
SELECT m.id AS id_modulo, 'token' AS controller, 'errotokenexpirado' AS action, 'ACAO_ERRO_TOKEN_EXPIRADO' AS constante_textual, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, constante_textual, ativo, rowinfo)
SELECT m.id AS id_modulo, 'fs' AS controller, 'download' AS action, 'ACAO_DOWNLOAD' AS constante_textual, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, constante_textual, ativo, rowinfo)
SELECT m.id AS id_modulo, 'login' AS controller, 'exibirformcadastrousuariovalidado' AS action, 'ACAO_EXIBIR_FORM_CADASTRO_USUARIO_VALIDADO' AS constante_textual, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, constante_textual, ativo, rowinfo)
SELECT m.id AS id_modulo, 'login' AS controller, 'exibirformaceitetermosuso' AS action, 'ACAO_EXIBIR_FORM_ACEITE' AS constante_textual, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, constante_textual, ativo, rowinfo)
SELECT m.id AS id_modulo, 'login' AS controller, 'salvaraceitetermosuso' AS action, 'ACAO_SALVAR_ACEITE_TERMOS_USO' AS constante_textual, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, constante_textual, ativo, rowinfo)
SELECT m.id AS id_modulo, 'login' AS controller, 'aceitetermouso' AS action, 'ACAO_ACEITE_TERMO_USO' AS constante_textual, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, constante_textual, ativo, rowinfo)
SELECT m.id AS id_modulo, 'index' AS controller, 'index' AS action, 'ACAO_INDEX' AS constante_textual, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'DEFAULT';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, constante_textual, ativo, rowinfo)
SELECT m.id AS id_modulo, 'error' AS controller, 'error' AS action, 'ACAO_ERROR' AS constante_textual, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'DEFAULT';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, constante_textual, ativo, rowinfo)
SELECT m.id AS id_modulo, 'login' AS controller, 'cadastrarusuarionaovalidado' AS action, 'ACAO_CADASTRAR_USUARIO_NAO_VALIDADO' AS constante_textual, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, constante_textual, ativo, rowinfo)
SELECT m.id AS id_modulo, 'login' AS controller, 'verificadisponibilidadelogin' AS action, 'ACAO_VERIFICA_DISPONIBILIDADE_LOGIN' AS constante_textual, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, constante_textual, ativo, rowinfo)
SELECT m.id AS id_modulo, 'login' AS controller, 'sucessosalvarusuarionaovalidado' AS action, 'ACAO_SUCESSO_SALVAR_USUARIO_NAO_VALIDADO' AS constante_textual, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, constante_textual, ativo, rowinfo)
SELECT m.id AS id_modulo, 'email' AS controller, 'erroemailnaovalidadoexistentenosistema' AS action, 'ACAO_ERRO_EMAIL_NAO_VALIDADO_EXISTENTE_NO_SISTEMA' AS constante_textual, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, constante_textual, ativo, rowinfo)
SELECT m.id AS id_modulo, 'email' AS controller, 'erroemailvalidadoexistentenosistema' AS action, 'ACAO_ERRO_EMAIL_VALIDADO_EXISTENTE_NO_SISTEMA' AS constante_textual, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, constante_textual, ativo, rowinfo)
SELECT m.id AS id_modulo, 'login' AS controller, 'salvarusuariovalidado' AS action, 'ACAO_SALVAR_USUARIO_VALIDADO' AS constante_textual, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, constante_textual, ativo, rowinfo)
SELECT m.id AS id_modulo, 'login' AS controller, 'salvarusuarionaovalidado' AS action, 'ACAO_SALVAR_USUARIO_NAO_VALIDADO' AS constante_textual, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, constante_textual, ativo, rowinfo)
SELECT m.id AS id_modulo, 'login' AS controller, 'sucessosalvarusuariovalidado' AS action, 'ACAO_SUCESSO_SALVAR_USUARIO_VALIDADO' AS constante_textual, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, constante_textual, ativo, rowinfo)
SELECT m.id AS id_modulo, 'login' AS controller, 'verificanovologin' AS action, 'ACAO_VERIFICA_NOVO_LOGIN' AS constante_textual, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, constante_textual, ativo, rowinfo)
SELECT m.id AS id_modulo, 'autenticador' AS controller, 'autenticarusuario' AS action, 'ACAO_AUTENTICAR_USUARIO' AS constante_textual, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, constante_textual, ativo, rowinfo)
SELECT m.id AS id_modulo, 'autenticador' AS controller, 'verificaautenticacaousuario' AS action, 'ACAO_VERIFICA_AUTENTICACAO_USUARIO' AS constante_textual, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, constante_textual, ativo, rowinfo)
SELECT m.id AS id_modulo, 'autenticador' AS controller, 'credenciaisinvalidas' AS action, 'ACAO_CREDENCIAS_INVALIDAS' AS constante_textual, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, constante_textual, ativo, rowinfo)
SELECT m.id AS id_modulo, 'autenticador' AS controller, 'problemaslogin' AS action, 'ACAO_PROBLEMAS_LOGIN' AS constante_textual, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, constante_textual, ativo, rowinfo)
SELECT m.id AS id_modulo, 'autenticador' AS controller, 'desautenticausuario' AS action, 'ACAO_DESAUTENTICA_USUARIO' AS constante_textual, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, constante_textual, ativo, rowinfo)
SELECT m.id AS id_modulo, 'autenticador' AS controller, 'dialogautenticacao' AS action, 'ACAO_DIALOG_AUTENTICACAO' AS constante_textual, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, constante_textual, ativo, rowinfo)
SELECT m.id AS id_modulo, 'controleacesso' AS controller, 'ipusuariodiferentedoipdousuarioautenticadonasessao' AS action, 'ACAO_IP_USUARIO_DIFERENTE_DO_IP_DO_USUARIO_AUTENTICADO_NA_SESSAO' AS constante_textual, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, constante_textual, ativo, rowinfo)
SELECT m.id AS id_modulo, 'dadosusuario' AS controller, 'index' AS action, 'ACAO_INDEX' AS constante_textual, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, constante_textual, ativo, rowinfo)
SELECT m.id AS id_modulo, 'dadosusuario' AS controller, 'trocarsenhaexpirada' AS action, 'ACAO_TROCAR_SENHA_EXPIRADA' AS constante_textual, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, constante_textual, ativo, rowinfo)
SELECT m.id AS id_modulo, 'email' AS controller, 'validaremail' AS action, 'ACAO_VALIDAR_EMAIL' AS constante_textual, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, constante_textual, ativo, rowinfo)
SELECT m.id AS id_modulo, 'administrador' AS controller, 'sucessoresetadb' AS action, 'ACAO_SUCESSO_RESETA_DB' AS constante_textual, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, constante_textual, ativo, rowinfo)
SELECT m.id AS id_modulo, 'administrador' AS controller, 'index' AS action, 'ACAO_INDEX' AS constante_textual, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, constante_textual, ativo, rowinfo)
SELECT m.id AS id_modulo, 'administrador' AS controller, 'resetadb' AS action, 'ACAO_RESETA_DB' AS constante_textual, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, constante_textual, ativo, rowinfo)
SELECT m.id AS id_modulo, 'administrador' AS controller, 'regerarchecksummodelo' AS action, 'ACAO_REGERAR_CHECKSUM_MODELO' AS constante_textual, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, constante_textual, ativo, rowinfo)
SELECT m.id AS id_modulo, 'token' AS controller, 'decode' AS action, 'ACAO_DECODE' AS constante_textual, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, constante_textual, ativo, rowinfo)
SELECT m.id AS id_modulo, 'geradorformulario' AS controller, 'gerarformulario' AS action, 'ACAO_GERAR_FORMULARIO' AS constante_textual, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, constante_textual, ativo, rowinfo)
SELECT m.id AS id_modulo, 'geradorformulario' AS controller, 'gerartodosformularios' AS action, 'ACAO_GERAR_TODOS_FORMULARIOS' AS constante_textual, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, constante_textual, ativo, rowinfo)
SELECT m.id AS id_modulo, 'dadosusuario' AS controller, 'salvar' AS action, 'ACAO_SALVAR' AS constante_textual, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, constante_textual, ativo, rowinfo)
SELECT m.id AS id_modulo, 'cvc' AS controller, 'resolveconflitoversaoobjeto' AS action, 'ACAO_RESOLVE_CONFLITO_VERSAO_OBJETO' AS constante_textual, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, constante_textual, ativo, rowinfo)
SELECT m.id AS id_modulo, 'login' AS controller, 'exibirformsugestaologin' AS action, 'ACAO_EXIBIR_FORM_SUGESTAO_LOGIN' AS constante_textual, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';