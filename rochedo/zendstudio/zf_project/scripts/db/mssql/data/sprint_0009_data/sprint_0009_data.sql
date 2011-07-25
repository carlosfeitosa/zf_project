/**
* SCRIPT DE POPULACAO DAS TABELAS DO SPRINT 0009
* 
* versao: 1.0 (MSSQL 2000)
* por: CARLOS FEITOSA (carlos.feitosa@rochedoproject.com)
* criacao: 16/03/2011
* ultimas modificacoes:
* 											03/05/2011 - criacao das constantes textuais para a view de ip do usuario diferente do ip do usuario autenticado durante o processo de logon;
* 											05/05/2011 - criacao das constantes textuais para traducao dos perfis;
* 											29/06/2011 - criacao das constantes textuais para a view ipusuariodiferentedoipdousuarioautenticadonasessao;
* 											25/07/2011 - criacao das constantes textuais para a view de host banido;
*/

-- DICIONARIO DE EXPRESSOES

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'VIEW_CONTROLE_ACESSO_ACAO_DESATIVADA_TITULO' AS constante_textual, 'Ação desativada!' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'VIEW_CONTROLE_ACESSO_ACAO_DESATIVADA_SUBTITULO' AS constante_textual, 'Esta ação foi desativada pelo administrador do sistema.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'VIEW_CONTROLE_ACESSO_ACAO_DESATIVADA_MENSAGEM' AS constante_textual, 'Caso deseje, clique @link para voltar a página que estava antes de tentar executar esta operação.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'VIEW_CONTROLE_ACESSO_ACAO_NAO_PERMITIDA_TITULO' AS constante_textual, 'Problemas de permissão!' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'VIEW_CONTROLE_ACESSO_ACAO_NAO_PERMITIDA_SUBTITULO' AS constante_textual, 'Esta ação requer um perfil não vinculado a seu usuário.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'VIEW_CONTROLE_ACESSO_ACAO_NAO_PERMITIDA_MENSAGEM' AS constante_textual, 'Caso deseje, clique @link para voltar a página que estava antes de tentar executar esta operação.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'VIEW_CONTROLE_ACESSO_METODO_VALIDACAO_FALHOU_TITULO' AS constante_textual, 'Problemas de permissão!' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'VIEW_CONTROLE_ACESSO_METODO_VALIDACAO_FALHOU_SUBTITULO' AS constante_textual, 'Esta ação não pode ser executada pois existe uma regra que impede sua execução.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'VIEW_CONTROLE_ACESSO_METODO_VALIDACAO_FALHOU_MENSAGEM' AS constante_textual, 'Caso deseje, clique @link para voltar a página que estava antes de tentar executar esta operação.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'VIEW_CONTROLE_ACESSO_IP_USUARIO_DIFERENTE_IP_USUARIO_AUTENTICADO_SESSAO_TITULO' AS constante_textual, 'Problemas com seu endereço IP!' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'VIEW_CONTROLE_ACESSO_IP_USUARIO_DIFERENTE_IP_USUARIO_AUTENTICADO_SESSAO_SUBTITULO' AS constante_textual, 'Seu atual endereço IP difere do endereço IP registrado durante seu processo de logon.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'VIEW_CONTROLE_ACESSO_IP_USUARIO_DIFERENTE_IP_USUARIO_AUTENTICADO_SESSAO_MENSAGEM' AS constante_textual, 'Este problema ocorre quando o usuário troca de rede/endereço IP após estar autenticado no sistema.<br>Efetue logout e login para resolver esta situação.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'VIEW_CONTROLE_ACESSO_HOST_BANIDO_TITULO' AS constante_textual, 'Host banido!' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'VIEW_CONTROLE_ACESSO_HOST_BANIDO_SUBTITULO' AS constante_textual, 'Seu atual endereço IP esta banido em nosso sistema.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'VIEW_CONTROLE_ACESSO_HOST_BANIDO_MENSAGEM' AS constante_textual, 'Entre em contato com o suporte para tentar desbanir seu host.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'DIALOG_DIV_CONTAINER_ERROR_TITLE_SESSAO_EXPIRADA' AS constante_textual, 'Sessão expirada.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'DIALOG_DIV_CONTAINER_ERROR_MSG_SESSAO_EXPIRADA' AS constante_textual, 'Por motivos de seguranca,<br>sua sessão foi encerrada.<br><br>Por favor,<br>logue novamente.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'PERFIL_USUARIO_PUBLICO' AS constante_textual, 'Público' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'PERFIL_USUARIO_ADMINISTRADOR' AS constante_textual, 'Administrador do sistema' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'PERFIL_USUARIO_DESENVOLVEDOR' AS constante_textual, 'Desenvolvedor do sistema' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'VIEW_CONTROLE_ACESSO_ACAO_DESATIVADA_TITULO' AS constante_textual, 'Action desabled!' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'VIEW_CONTROLE_ACESSO_ACAO_DESATIVADA_SUBTITULO' AS constante_textual, 'This action has been disabled by system administrator.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'VIEW_CONTROLE_ACESSO_ACAO_DESATIVADA_MENSAGEM' AS constante_textual, 'If desired, click @link to go back to the page that you was before trying to run this operation.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'VIEW_CONTROLE_ACESSO_ACAO_NAO_PERMITIDA_TITULO' AS constante_textual, 'Permission problems!' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'VIEW_CONTROLE_ACESSO_ACAO_NAO_PERMITIDA_SUBTITULO' AS constante_textual, 'This action requires a profile not linked to your user.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'VIEW_CONTROLE_ACESSO_ACAO_NAO_PERMITIDA_MENSAGEM' AS constante_textual, 'If desired, click @link to go back to the page that you was before trying to run this operation.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'VIEW_CONTROLE_ACESSO_METODO_VALIDACAO_FALHOU_TITULO' AS constante_textual, 'Permission problems!' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'VIEW_CONTROLE_ACESSO_METODO_VALIDACAO_FALHOU_SUBTITULO' AS constante_textual, 'This action cannot be performed because there''s a rule that prevents it''s execution.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'VIEW_CONTROLE_ACESSO_METODO_VALIDACAO_FALHOU_MENSAGEM' AS constante_textual, 'If desired, click @link to go back to the page that you was before trying to run this operation.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'VIEW_CONTROLE_ACESSO_IP_USUARIO_DIFERENTE_IP_USUARIO_AUTENTICADO_SESSAO_TITULO' AS constante_textual, 'Problems with your IP address!' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'VIEW_CONTROLE_ACESSO_IP_USUARIO_DIFERENTE_IP_USUARIO_AUTENTICADO_SESSAO_SUBTITULO' AS constante_textual, 'Your current IP address differs from the registered IP address for your login process.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'VIEW_CONTROLE_ACESSO_IP_USUARIO_DIFERENTE_IP_USUARIO_AUTENTICADO_SESSAO_MENSAGEM' AS constante_textual, 'This problem occurs when the user change the network / IP address after being authenticated to the the system.<br>Logout and login to resolve this situation.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'VIEW_CONTROLE_ACESSO_HOST_BANIDO_TITULO' AS constante_textual, 'Host banned!' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'VIEW_CONTROLE_ACESSO_HOST_BANIDO_SUBTITULO' AS constante_textual, 'Your current IP address is banned in our system.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'VIEW_CONTROLE_ACESSO_HOST_BANIDO_MENSAGEM' AS constante_textual, 'Please contact our support to try to unban your host.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'DIALOG_DIV_CONTAINER_ERROR_TITLE_SESSAO_EXPIRADA' AS constante_textual, 'Session expired.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'DIALOG_DIV_CONTAINER_ERROR_MSG_SESSAO_EXPIRADA' AS constante_textual, 'For security reasons,<br>your session has been<br>terminated.<br><br>Please, log again.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'PERFIL_USUARIO_PUBLICO' AS constante_textual, 'Public' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'PERFIL_USUARIO_ADMINISTRADOR' AS constante_textual, 'System administrator' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'PERFIL_USUARIO_DESENVOLVEDOR' AS constante_textual, 'System developer' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';


-- PERFIS

INSERT INTO perfil (id_categoria, nome, nivel, descricao, constante_textual, rowinfo)
SELECT id, 'USUARIO_PUBLICO' AS nome, 0 AS nivel, 'Perfil público' AS descricao, 'PERFIL_USUARIO_PUBLICO' AS constante_textual, 'SYSTEM_STARTUP' AS rowinfo
FROM categoria
WHERE nome = 'PERFIL_USUARIO';

INSERT INTO perfil (id_categoria, nome, nivel, descricao, constante_textual, rowinfo)
SELECT id, 'USUARIO_ADMINISTRADOR' AS nome, 1000 AS nivel, 'Perfil de administrador do sistema' AS descricao, 'PERFIL_USUARIO_ADMINISTRADOR' AS constante_textual, 'SYSTEM_STARTUP' AS rowinfo
FROM categoria
WHERE nome = 'PERFIL_USUARIO';

INSERT INTO perfil (id_categoria, nome, nivel, descricao, constante_textual, rowinfo)
SELECT id, 'USUARIO_DESENVOLVEDOR' AS nome, 9999 AS nivel, 'Perfil de desenvolvedor do sistema' AS descricao, 'PERFIL_USUARIO_DESENVOLVEDOR'  AS constante_textual, 'SYSTEM_STARTUP' AS rowinfo
FROM categoria
WHERE nome = 'PERFIL_USUARIO';

UPDATE perfil
SET nivel = 999999
WHERE nome = 'SISTEMA'
AND id_categoria = (SELECT c.id
                    FROM categoria c
                    LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
                    WHERE c.nome = 'SISTEMA_USUARIO'
                    AND t.nome = 'SISTEMA');

UPDATE perfil
SET nivel = 1
WHERE nome = 'USUARIO_NAO_VALIDADO'
AND id_categoria = (SELECT c.id
                    FROM categoria c
                    LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
                    WHERE c.nome = 'PERFIL_USUARIO_SISTEMA'
                    AND t.nome = 'PERFIL');

UPDATE perfil
SET nivel = 2
WHERE nome = 'USUARIO_VALIDADO'
AND id_categoria = (SELECT c.id
                    FROM categoria c
                    LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
                    WHERE c.nome = 'PERFIL_USUARIO_SISTEMA'
                    AND t.nome = 'PERFIL');


-- MODULO

INSERT INTO modulo (id_categoria, nome, descricao, versao, path, instalado, ativo, xml_autoria, rowinfo)
SELECT c.id AS id_categoria, 'DEFAULT' AS nome,
	   'Modulo default. Necessario para funcionamento do framework (index).' AS descricao,
	   '0.1' AS versao, '' AS path, 1 AS instalado, 1 AS ativo,
	   'SYSTEM_XML_STARTUP' AS xml_autoria, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'SISTEMA_MODULO';


-- ACAO_APLICACAO

INSERT INTO acao_aplicacao (id_modulo, controller, action, rowinfo)
SELECT m.id AS id_modulo, 'index' AS controller, 'index' AS action, 'SYSTEM_STARTUP' AS rowinfo
FROM modulo m
WHERE m.nome = 'DEFAULT';

INSERT INTO acao_aplicacao (id_modulo, controller, action, rowinfo)
SELECT m.id AS id_modulo, 'error' AS controller, 'error' AS action, 'SYSTEM_STARTUP' AS rowinfo
FROM modulo m
WHERE m.nome = 'DEFAULT';

INSERT INTO acao_aplicacao (id_modulo, controller, action, rowinfo)
SELECT m.id AS id_modulo, 'login' AS controller, 'cadastrarUsuarioNaoValidado' AS action, 'SYSTEM_STARTUP' AS rowinfo
FROM modulo m
WHERE m.nome = 'BASICO';

INSERT INTO acao_aplicacao (id_modulo, controller, action, rowinfo)
SELECT m.id AS id_modulo, 'login' AS controller, 'verificadisponibilidadelogin' AS action, 'SYSTEM_STARTUP' AS rowinfo
FROM modulo m
WHERE m.nome = 'BASICO';

INSERT INTO acao_aplicacao (id_modulo, controller, action, rowinfo)
SELECT m.id AS id_modulo, 'login' AS controller, 'SucessoSalvarUsuarioNaoValidado' AS action, 'SYSTEM_STARTUP' AS rowinfo
FROM modulo m
WHERE m.nome = 'BASICO';

INSERT INTO acao_aplicacao (id_modulo, controller, action, rowinfo)
SELECT m.id AS id_modulo, 'login' AS controller, 'ErroEmailNaoValidadoExistenteNoSistema' AS action, 'SYSTEM_STARTUP' AS rowinfo
FROM modulo m
WHERE m.nome = 'BASICO';

INSERT INTO acao_aplicacao (id_modulo, controller, action, rowinfo)
SELECT m.id AS id_modulo, 'login' AS controller, 'ErroEmailValidadoExistenteNoSistema' AS action, 'SYSTEM_STARTUP' AS rowinfo
FROM modulo m
WHERE m.nome = 'BASICO';

INSERT INTO acao_aplicacao (id_modulo, controller, action, rowinfo)
SELECT m.id AS id_modulo, 'login' AS controller, 'salvarUsuarioValidado' AS action, 'SYSTEM_STARTUP' AS rowinfo
FROM modulo m
WHERE m.nome = 'BASICO';

INSERT INTO acao_aplicacao (id_modulo, controller, action, rowinfo)
SELECT m.id AS id_modulo, 'login' AS controller, 'sucessosalvarusuariovalidado' AS action, 'SYSTEM_STARTUP' AS rowinfo
FROM modulo m
WHERE m.nome = 'BASICO';

INSERT INTO acao_aplicacao (id_modulo, controller, action, rowinfo)
SELECT m.id AS id_modulo, 'login' AS controller, 'verificaNovoLogin' AS action, 'SYSTEM_STARTUP' AS rowinfo
FROM modulo m
WHERE m.nome = 'BASICO';

INSERT INTO acao_aplicacao (id_modulo, controller, action, rowinfo)
SELECT m.id AS id_modulo, 'autenticador' AS controller, 'autenticarusuario' AS action, 'SYSTEM_STARTUP' AS rowinfo
FROM modulo m
WHERE m.nome = 'BASICO';

INSERT INTO acao_aplicacao (id_modulo, controller, action, rowinfo)
SELECT m.id AS id_modulo, 'autenticador' AS controller, 'verificaAutenticacaoUsuario' AS action, 'SYSTEM_STARTUP' AS rowinfo
FROM modulo m
WHERE m.nome = 'BASICO';

INSERT INTO acao_aplicacao (id_modulo, controller, action, rowinfo)
SELECT m.id AS id_modulo, 'autenticador' AS controller, 'credenciaisinvalidas' AS action, 'SYSTEM_STARTUP' AS rowinfo
FROM modulo m
WHERE m.nome = 'BASICO';

INSERT INTO acao_aplicacao (id_modulo, controller, action, rowinfo)
SELECT m.id AS id_modulo, 'autenticador' AS controller, 'problemaslogin' AS action, 'SYSTEM_STARTUP' AS rowinfo
FROM modulo m
WHERE m.nome = 'BASICO';

INSERT INTO acao_aplicacao (id_modulo, controller, action, rowinfo)
SELECT m.id AS id_modulo, 'autenticador' AS controller, 'desautenticausuario' AS action, 'SYSTEM_STARTUP' AS rowinfo
FROM modulo m
WHERE m.nome = 'BASICO';

INSERT INTO acao_aplicacao (id_modulo, controller, action, rowinfo)
SELECT m.id AS id_modulo, 'controleacesso' AS controller, 'ipusuariodiferentedoipdousuarioautenticadonasessao' AS action, 'SYSTEM_STARTUP' AS rowinfo
FROM modulo m
WHERE m.nome = 'BASICO';

INSERT INTO acao_aplicacao (id_modulo, controller, action, rowinfo)
SELECT m.id AS id_modulo, 'dadosusuario' AS controller, 'index' AS action, 'SYSTEM_STARTUP' AS rowinfo
FROM modulo m
WHERE m.nome = 'BASICO';

INSERT INTO acao_aplicacao (id_modulo, controller, action, rowinfo)
SELECT m.id AS id_modulo, 'email' AS controller, 'validarEmail' AS action, 'SYSTEM_STARTUP' AS rowinfo
FROM modulo m
WHERE m.nome = 'BASICO';

INSERT INTO acao_aplicacao (id_modulo, controller, action, rowinfo)
SELECT m.id AS id_modulo, 'administrador' AS controller, 'sucessoresetadb' AS action, 'SYSTEM_STARTUP' AS rowinfo
FROM modulo m
WHERE m.nome = 'BASICO';

INSERT INTO acao_aplicacao (id_modulo, controller, action, rowinfo)
SELECT m.id AS id_modulo, 'administrador' AS controller, 'index' AS action, 'SYSTEM_STARTUP' AS rowinfo
FROM modulo m
WHERE m.nome = 'BASICO';

INSERT INTO acao_aplicacao (id_modulo, controller, action, rowinfo)
SELECT m.id AS id_modulo, 'administrador' AS controller, 'resetadb' AS action, 'SYSTEM_STARTUP' AS rowinfo
FROM modulo m
WHERE m.nome = 'BASICO';

INSERT INTO acao_aplicacao (id_modulo, controller, action, rowinfo)
SELECT m.id AS id_modulo, 'token' AS controller, 'decode' AS action, 'SYSTEM_STARTUP' AS rowinfo
FROM modulo m
WHERE m.nome = 'BASICO';

INSERT INTO acao_aplicacao (id_modulo, controller, action, rowinfo)
SELECT m.id AS id_modulo, 'geradorformulario' AS controller, 'gerarformulario' AS action, 'SYSTEM_STARTUP' AS rowinfo
FROM modulo m
WHERE m.nome = 'BASICO';

INSERT INTO acao_aplicacao (id_modulo, controller, action, rowinfo)
SELECT m.id AS id_modulo, 'geradorformulario' AS controller, 'gerartodosformularios' AS action, 'SYSTEM_STARTUP' AS rowinfo
FROM modulo m
WHERE m.nome = 'BASICO';

INSERT INTO acao_aplicacao (id_modulo, controller, action, rowinfo)
SELECT m.id AS id_modulo, 'dadosusuario' AS controller, 'salvar' AS action, 'SYSTEM_STARTUP' AS rowinfo
FROM modulo m
WHERE m.nome = 'BASICO';

INSERT INTO acao_aplicacao (id_modulo, controller, action, rowinfo)
SELECT m.id AS id_modulo, 'cvc' AS controller, 'resolveconflitoversaoobjeto' AS action, 'SYSTEM_STARTUP' AS rowinfo
FROM modulo m
WHERE m.nome = 'BASICO';

INSERT INTO acao_aplicacao (id_modulo, controller, action, rowinfo)
SELECT m.id AS id_modulo, 'login' AS controller, 'exibirformsugestaologin' AS action, 'SYSTEM_STARTUP' AS rowinfo
FROM modulo m
WHERE m.nome = 'BASICO';


-- ACOES_APLICACAO_PERFIS

INSERT INTO acoes_aplicacao_perfis (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM PERFIL p
        LEFT JOIN categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO'
        AND p.nome   = 'USUARIO_PUBLICO') AS id_perfil,
       (SELECT a.id
        FROM acao_aplicacao a
        LEFT JOIN modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'BASICO'
        AND a.controller = 'login'
        AND a.action = 'exibirformsugestaologin') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO acoes_aplicacao_perfis (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM PERFIL p
        LEFT JOIN categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO'
        AND p.nome   = 'USUARIO_PUBLICO') AS id_perfil,
       (SELECT a.id
        FROM acao_aplicacao a
        LEFT JOIN modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'DEFAULT'
        AND a.controller = 'index'
        AND a.action = 'index') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO acoes_aplicacao_perfis (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM PERFIL p
        LEFT JOIN categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO'
        AND p.nome   = 'USUARIO_PUBLICO') AS id_perfil,
       (SELECT a.id
        FROM acao_aplicacao a
        LEFT JOIN modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'DEFAULT'
        AND a.controller = 'error'
        AND a.action = 'error') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO acoes_aplicacao_perfis (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM PERFIL p
        LEFT JOIN categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO'
        AND p.nome   = 'USUARIO_PUBLICO') AS id_perfil,
       (SELECT a.id
        FROM acao_aplicacao a
        LEFT JOIN modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'BASICO'
        AND a.controller = 'login'
        AND a.action = 'cadastrarUsuarioNaoValidado') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO acoes_aplicacao_perfis (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM PERFIL p
        LEFT JOIN categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO'
        AND p.nome   = 'USUARIO_PUBLICO') AS id_perfil,
       (SELECT a.id
        FROM acao_aplicacao a
        LEFT JOIN modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'BASICO'
        AND a.controller = 'login'
        AND a.action = 'verificadisponibilidadelogin') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO acoes_aplicacao_perfis (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM PERFIL p
        LEFT JOIN categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO'
        AND p.nome   = 'USUARIO_PUBLICO') AS id_perfil,
       (SELECT a.id
        FROM acao_aplicacao a
        LEFT JOIN modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'BASICO'
        AND a.controller = 'login'
        AND a.action = 'SucessoSalvarUsuarioNaoValidado') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO acoes_aplicacao_perfis (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM PERFIL p
        LEFT JOIN categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO'
        AND p.nome   = 'USUARIO_PUBLICO') AS id_perfil,
       (SELECT a.id
        FROM acao_aplicacao a
        LEFT JOIN modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'BASICO'
        AND a.controller = 'login'
        AND a.action = 'ErroEmailNaoValidadoExistenteNoSistema') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO acoes_aplicacao_perfis (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM PERFIL p
        LEFT JOIN categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO'
        AND p.nome   = 'USUARIO_PUBLICO') AS id_perfil,
       (SELECT a.id
        FROM acao_aplicacao a
        LEFT JOIN modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'BASICO'
        AND a.controller = 'login'
        AND a.action = 'ErroEmailValidadoExistenteNoSistema') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO acoes_aplicacao_perfis (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM PERFIL p
        LEFT JOIN categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO'
        AND p.nome   = 'USUARIO_PUBLICO') AS id_perfil,
       (SELECT a.id
        FROM acao_aplicacao a
        LEFT JOIN modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'BASICO'
        AND a.controller = 'login'
        AND a.action = 'salvarUsuarioValidado') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO acoes_aplicacao_perfis (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM PERFIL p
        LEFT JOIN categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO_SISTEMA'
        AND p.nome   = 'USUARIO_VALIDADO') AS id_perfil,
       (SELECT a.id
        FROM acao_aplicacao a
        LEFT JOIN modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'BASICO'
        AND a.controller = 'login'
        AND a.action = 'sucessosalvarusuariovalidado') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO acoes_aplicacao_perfis (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM PERFIL p
        LEFT JOIN categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO'
        AND p.nome   = 'USUARIO_PUBLICO') AS id_perfil,
       (SELECT a.id
        FROM acao_aplicacao a
        LEFT JOIN modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'BASICO'
        AND a.controller = 'login'
        AND a.action = 'verificaNovoLogin') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO acoes_aplicacao_perfis (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM PERFIL p
        LEFT JOIN categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO'
        AND p.nome   = 'USUARIO_PUBLICO') AS id_perfil,
       (SELECT a.id
        FROM acao_aplicacao a
        LEFT JOIN modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'BASICO'
        AND a.controller = 'autenticador'
        AND a.action = 'autenticarusuario') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO acoes_aplicacao_perfis (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM PERFIL p
        LEFT JOIN categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO'
        AND p.nome   = 'USUARIO_PUBLICO') AS id_perfil,
       (SELECT a.id
        FROM acao_aplicacao a
        LEFT JOIN modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'BASICO'
        AND a.controller = 'autenticador'
        AND a.action = 'verificaAutenticacaoUsuario') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO acoes_aplicacao_perfis (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM PERFIL p
        LEFT JOIN categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO'
        AND p.nome   = 'USUARIO_PUBLICO') AS id_perfil,
       (SELECT a.id
        FROM acao_aplicacao a
        LEFT JOIN modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'BASICO'
        AND a.controller = 'autenticador'
        AND a.action = 'credenciaisinvalidas') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO acoes_aplicacao_perfis (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM PERFIL p
        LEFT JOIN categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO'
        AND p.nome   = 'USUARIO_PUBLICO') AS id_perfil,
       (SELECT a.id
        FROM acao_aplicacao a
        LEFT JOIN modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'BASICO'
        AND a.controller = 'autenticador'
        AND a.action = 'problemaslogin') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO acoes_aplicacao_perfis (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM PERFIL p
        LEFT JOIN categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO_SISTEMA'
        AND p.nome   = 'USUARIO_VALIDADO') AS id_perfil,
       (SELECT a.id
        FROM acao_aplicacao a
        LEFT JOIN modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'BASICO'
        AND a.controller = 'autenticador'
        AND a.action = 'desautenticausuario') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;
        
INSERT INTO acoes_aplicacao_perfis (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM PERFIL p
        LEFT JOIN categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO'
        AND p.nome   = 'USUARIO_PUBLICO') AS id_perfil,
       (SELECT a.id
        FROM acao_aplicacao a
        LEFT JOIN modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'BASICO'
        AND a.controller = 'controleacesso'
        AND a.action = 'ipusuariodiferentedoipdousuarioautenticadonasessao') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;        

INSERT INTO acoes_aplicacao_perfis (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM PERFIL p
        LEFT JOIN categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO_SISTEMA'
        AND p.nome   = 'USUARIO_VALIDADO') AS id_perfil,
       (SELECT a.id
        FROM acao_aplicacao a
        LEFT JOIN modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'BASICO'
        AND a.controller = 'dadosusuario'
        AND a.action = 'index') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO acoes_aplicacao_perfis (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM PERFIL p
        LEFT JOIN categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO'
        AND p.nome   = 'USUARIO_PUBLICO') AS id_perfil,
       (SELECT a.id
        FROM acao_aplicacao a
        LEFT JOIN modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'BASICO'
        AND a.controller = 'email'
        AND a.action = 'validarEmail') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO acoes_aplicacao_perfis (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM PERFIL p
        LEFT JOIN categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO'
        AND p.nome   = 'USUARIO_PUBLICO') AS id_perfil,
       (SELECT a.id
        FROM acao_aplicacao a
        LEFT JOIN modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'BASICO'
        AND a.controller = 'administrador'
        AND a.action = 'sucessoresetadb') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO acoes_aplicacao_perfis (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM PERFIL p
        LEFT JOIN categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO'
        AND p.nome   = 'USUARIO_PUBLICO') AS id_perfil,
       (SELECT a.id
        FROM acao_aplicacao a
        LEFT JOIN modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'BASICO'
        AND a.controller = 'token'
        AND a.action = 'decode') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO acoes_aplicacao_perfis (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM PERFIL p
        LEFT JOIN categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO'
        AND p.nome   = 'USUARIO_ADMINISTRADOR') AS id_perfil,
       (SELECT a.id
        FROM acao_aplicacao a
        LEFT JOIN modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'BASICO'
        AND a.controller = 'geradorformulario'
        AND a.action = 'gerarformulario') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO acoes_aplicacao_perfis (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM PERFIL p
        LEFT JOIN categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO'
        AND p.nome   = 'USUARIO_DESENVOLVEDOR') AS id_perfil,
       (SELECT a.id
        FROM acao_aplicacao a
        LEFT JOIN modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'BASICO'
        AND a.controller = 'geradorformulario'
        AND a.action = 'gerarformulario') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO acoes_aplicacao_perfis (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM PERFIL p
        LEFT JOIN categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO'
        AND p.nome   = 'USUARIO_ADMINISTRADOR') AS id_perfil,
       (SELECT a.id
        FROM acao_aplicacao a
        LEFT JOIN modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'BASICO'
        AND a.controller = 'administrador'
        AND a.action = 'index') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO acoes_aplicacao_perfis (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM PERFIL p
        LEFT JOIN categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO'
        AND p.nome   = 'USUARIO_DESENVOLVEDOR') AS id_perfil,
       (SELECT a.id
        FROM acao_aplicacao a
        LEFT JOIN modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'BASICO'
        AND a.controller = 'administrador'
        AND a.action = 'index') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO acoes_aplicacao_perfis (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM PERFIL p
        LEFT JOIN categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO'
        AND p.nome   = 'USUARIO_ADMINISTRADOR') AS id_perfil,
       (SELECT a.id
        FROM acao_aplicacao a
        LEFT JOIN modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'BASICO'
        AND a.controller = 'administrador'
        AND a.action = 'resetadb') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO acoes_aplicacao_perfis (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM PERFIL p
        LEFT JOIN categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO'
        AND p.nome   = 'USUARIO_DESENVOLVEDOR') AS id_perfil,
       (SELECT a.id
        FROM acao_aplicacao a
        LEFT JOIN modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'BASICO'
        AND a.controller = 'administrador'
        AND a.action = 'resetadb') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO acoes_aplicacao_perfis (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM PERFIL p
        LEFT JOIN categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO'
        AND p.nome   = 'USUARIO_ADMINISTRADOR') AS id_perfil,
       (SELECT a.id
        FROM acao_aplicacao a
        LEFT JOIN modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'BASICO'
        AND a.controller = 'geradorformulario'
        AND a.action = 'gerartodosformularios') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO acoes_aplicacao_perfis (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM PERFIL p
        LEFT JOIN categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO'
        AND p.nome   = 'USUARIO_DESENVOLVEDOR') AS id_perfil,
       (SELECT a.id
        FROM acao_aplicacao a
        LEFT JOIN modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'BASICO'
        AND a.controller = 'geradorformulario'
        AND a.action = 'gerartodosformularios') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;
        
INSERT INTO acoes_aplicacao_perfis (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM PERFIL p
        LEFT JOIN categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO_SISTEMA'
        AND p.nome   = 'USUARIO_VALIDADO') AS id_perfil,
       (SELECT a.id
        FROM acao_aplicacao a
        LEFT JOIN modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'BASICO'
        AND a.controller = 'dadosusuario'
        AND a.action = 'salvar') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO acoes_aplicacao_perfis (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM PERFIL p
        LEFT JOIN categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO_SISTEMA'
        AND p.nome   = 'USUARIO_VALIDADO') AS id_perfil,
       (SELECT a.id
        FROM acao_aplicacao a
        LEFT JOIN modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'BASICO'
        AND a.controller = 'cvc'
        AND a.action = 'resolveconflitoversaoobjeto') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;


-- CATEGORIA

INSERT INTO categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria_pai, 2 AS nivel, 'LOG_NOVA_ACAO_APLICACAO' AS nome, 'Operação de inserção de acao aplicacao no banco de dados.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'LOG';

INSERT INTO categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria_pai, 2 AS nivel, 'LOG_UPDATE_ACAO_APLICACAO' AS nome, 'Operação de atualização de acao aplicacao no banco de dados.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'LOG';

INSERT INTO categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria_pai, 2 AS nivel, 'LOG_DELETE_ACAO_APLICACAO' AS nome, 'Operação de exclusão de acao aplicacao do banco de dados.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'LOG';

INSERT INTO categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria_pai, 2 AS nivel, 'LOG_NOVA_ACOES_APLICACAO_METODOS_VALIDACAO' AS nome, 'Operação de inserção de associacao entre acao aplicacao e metodo validacao no banco de dados.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'LOG';

INSERT INTO categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria_pai, 2 AS nivel, 'LOG_UPDATE_ACOES_APLICACAO_METODOS_VALIDACAO' AS nome, 'Operação de atualização de associacao entre acao aplicacao e metodo validacao no banco de dados.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'LOG';

INSERT INTO categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria_pai, 2 AS nivel, 'LOG_DELETE_ACOES_APLICACAO_METODOS_VALIDACAO' AS nome, 'Operação de exclusão de associacao entre acao aplicacao e metodo validacao no banco de dados.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'LOG';

INSERT INTO categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria_pai, 2 AS nivel, 'LOG_NOVA_ACOES_APLICACAO_PERFIS' AS nome, 'Operação de inserção de associacao entre acao aplicacao e perfil no banco de dados.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'LOG';

INSERT INTO categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria_pai, 2 AS nivel, 'LOG_UPDATE_ACOES_APLICACAO_PERFIS' AS nome, 'Operação de atualização de associacao entre acao aplicacao e perfil no banco de dados.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'LOG';

INSERT INTO categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria_pai, 2 AS nivel, 'LOG_DELETE_ACOES_APLICACAO_PERFIS' AS nome, 'Operação de exclusão de associacao entre acao aplicacao e perfil no banco de dados.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'LOG';

INSERT INTO categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria_pai, 2 AS nivel, 'LOG_NOVO_METODO_VALIDACAO' AS nome, 'Operação de inserção de metodo de validacao no banco de dados.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'LOG';

INSERT INTO categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria_pai, 2 AS nivel, 'LOG_UPDATE_METODO_VALIDACAO' AS nome, 'Operação de atualização de metodo de validacao no banco de dados.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'LOG';

INSERT INTO categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria_pai, 2 AS nivel, 'LOG_DELETE_METODO_VALIDACAO' AS nome, 'Operação de exclusão de metodo de validacao no banco de dados.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'LOG';

INSERT INTO categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria_pai, 2 AS nivel, 'LOG_SUCESSO_AUTENTICACAO_USUARIO' AS nome, 'Sucesso na tentativa de autenticacao de usuario.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'LOG';

INSERT INTO categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria_pai, 2 AS nivel, 'LOG_SUCESSO_DESAUTENTICACAO_USUARIO' AS nome, 'Sucesso na tentativa de autenticacao de usuario.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'LOG';

INSERT INTO categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria_pai, 2 AS nivel, 'LOG_ACAO_DESATIVADA' AS nome, 'Tentativa de acesso a acao desativada.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'LOG';

INSERT INTO categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria_pai, 2 AS nivel, 'LOG_ACAO_NAO_PERMITIDA' AS nome, 'Tentativa de acesso a acao nao permitida.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'LOG';

INSERT INTO categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria_pai, 2 AS nivel, 'LOG_ACAO_INDISPONIVEL_ATRAVES_DE_URL' AS nome, 'Tentativa de acesso a acao indisponivel atraves de url.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'LOG';

INSERT INTO categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria_pai, 2 AS nivel, 'LOG_MANTER_USUARIO_LOGADO' AS nome, 'Tentativa de acesso a acao indisponivel atraves de url.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'LOG';