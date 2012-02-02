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
SELECT m.id AS id_modulo, 'email' AS controller, 'errotokeninvalido' AS action, true, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, ativo, rowinfo)
SELECT m.id AS id_modulo, 'rascunho' AS controller, 'exibirformadminrascunhos' AS action, true, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, ativo, rowinfo)
SELECT m.id AS id_modulo, 'rascunho' AS controller, 'excluir' AS action, true, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, ativo, rowinfo)
SELECT m.id AS id_modulo, 'rascunho' AS controller, 'salvar' AS action, true, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, ativo, rowinfo)
SELECT m.id AS id_modulo, 'email' AS controller, 'errotokenexpirado' AS action, true, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, ativo, rowinfo)
SELECT m.id AS id_modulo, 'fs' AS controller, 'download' AS action, true, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, ativo, rowinfo)
SELECT m.id AS id_modulo, 'login' AS controller, 'exibirformaceitetermosuso' AS action, true, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, ativo, rowinfo)
SELECT m.id AS id_modulo, 'login' AS controller, 'aceitetermouso' AS action, true, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, ativo, rowinfo)
SELECT m.id AS id_modulo, 'index' AS controller, 'index' AS action, true, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'DEFAULT';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, ativo, rowinfo)
SELECT m.id AS id_modulo, 'error' AS controller, 'error' AS action, true, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'DEFAULT';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, ativo, rowinfo)
SELECT m.id AS id_modulo, 'login' AS controller, 'cadastrarUsuarioNaoValidado' AS action, true, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, ativo, rowinfo)
SELECT m.id AS id_modulo, 'login' AS controller, 'verificadisponibilidadelogin' AS action, true, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, ativo, rowinfo)
SELECT m.id AS id_modulo, 'login' AS controller, 'SucessoSalvarUsuarioNaoValidado' AS action, true, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, ativo, rowinfo)
SELECT m.id AS id_modulo, 'login' AS controller, 'erroemailnaovalidadoexistentenosistema' AS action, true, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, ativo, rowinfo)
SELECT m.id AS id_modulo, 'login' AS controller, 'erroemailvalidadoexistentenosistema' AS action, true, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, ativo, rowinfo)
SELECT m.id AS id_modulo, 'login' AS controller, 'salvarUsuarioValidado' AS action, true, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, ativo, rowinfo)
SELECT m.id AS id_modulo, 'login' AS controller, 'salvarusuarionaovalidado' AS action, true, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, ativo, rowinfo)
SELECT m.id AS id_modulo, 'login' AS controller, 'sucessosalvarusuariovalidado' AS action, true, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, ativo, rowinfo)
SELECT m.id AS id_modulo, 'login' AS controller, 'verificaNovoLogin' AS action, true, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, ativo, rowinfo)
SELECT m.id AS id_modulo, 'autenticador' AS controller, 'autenticarusuario' AS action, true, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, ativo, rowinfo)
SELECT m.id AS id_modulo, 'autenticador' AS controller, 'verificaAutenticacaoUsuario' AS action, true, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, ativo, rowinfo)
SELECT m.id AS id_modulo, 'autenticador' AS controller, 'credenciaisinvalidas' AS action, true, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, ativo, rowinfo)
SELECT m.id AS id_modulo, 'autenticador' AS controller, 'problemaslogin' AS action, true, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, ativo, rowinfo)
SELECT m.id AS id_modulo, 'autenticador' AS controller, 'desautenticausuario' AS action, true, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, ativo, rowinfo)
SELECT m.id AS id_modulo, 'autenticador' AS controller, 'dialogautenticacao' AS action, true, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, ativo, rowinfo)
SELECT m.id AS id_modulo, 'controleacesso' AS controller, 'ipusuariodiferentedoipdousuarioautenticadonasessao' AS action, true, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, ativo, rowinfo)
SELECT m.id AS id_modulo, 'dadosusuario' AS controller, 'index' AS action, true, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, ativo, rowinfo)
SELECT m.id AS id_modulo, 'dadosusuario' AS controller, 'trocarsenhaexpirada' AS action, true, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, ativo, rowinfo)
SELECT m.id AS id_modulo, 'email' AS controller, 'validarEmail' AS action, true, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, ativo, rowinfo)
SELECT m.id AS id_modulo, 'administrador' AS controller, 'sucessoresetadb' AS action, true, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, ativo, rowinfo)
SELECT m.id AS id_modulo, 'administrador' AS controller, 'index' AS action, true, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, ativo, rowinfo)
SELECT m.id AS id_modulo, 'administrador' AS controller, 'resetadb' AS action, true, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, ativo, rowinfo)
SELECT m.id AS id_modulo, 'administrador' AS controller, 'regerarchecksummodelo' AS action, true, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, ativo, rowinfo)
SELECT m.id AS id_modulo, 'token' AS controller, 'decode' AS action, true, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, ativo, rowinfo)
SELECT m.id AS id_modulo, 'geradorformulario' AS controller, 'gerarformulario' AS action, true, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, ativo, rowinfo)
SELECT m.id AS id_modulo, 'geradorformulario' AS controller, 'gerartodosformularios' AS action, true, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, ativo, rowinfo)
SELECT m.id AS id_modulo, 'dadosusuario' AS controller, 'salvar' AS action, true, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, ativo, rowinfo)
SELECT m.id AS id_modulo, 'cvc' AS controller, 'resolveconflitoversaoobjeto' AS action, true, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';

INSERT into basico.acao_aplicacao (id_modulo, controller, action, ativo, rowinfo)
SELECT m.id AS id_modulo, 'login' AS controller, 'exibirformsugestaologin' AS action, true, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.modulo m
WHERE m.nome = 'BASICO';