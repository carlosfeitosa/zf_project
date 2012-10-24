/**
* SCRIPT DE POPULACAO DA TABELA basico.acao_evento
* 
* Esta tabela armazena acoes de eventos que podem ser utilizados pelo sistema.
* 
* versao: 1.0 (POSTGRESQL 9.1.1)
* por: JOÃO VASCONCELOS (joao.vasconcelos@rochedoframework.com)
* criacao: 22/03/2012
* ultimas modificacoes: 
* 						- 03/08/2012 - criacao dos inserts das acoes eventos do formulario cadastrarUsuarioValidado (João Vasconcelos - joao.vasconcelos@rochedoframework.com) 
*/

INSERT INTO basico.acao_evento (id_categoria, nome, constante_textual, constante_textual_descricao, acao, ativo, rowinfo)
SELECT c.id AS id_categoria,
	   'VERIFICA_DISPONIBILIDADE_LOGIN' AS nome,
	   'NOME_ACAO_EVENTO_VERIFICA_DISPONIBILIDADE_LOGIN' AS constante_textual,
	   'DESCRICAO_ACAO_EVENTO_VERIFICA_DISPONIBILIDADE_LOGIN' AS constante_textual_descricao,
	   'validaString(this, ''login''); verificaDisponibilidade(''login'', ''login'', this.value, document.getElementById(''idPessoa'').value ,dijit.byId(''BasicoCadastrarUsuarioValidadoNome'').getValue(), dijit.byId(''BasicoCadastrarUsuarioValidadoDataNascimento'').getValue(), ''" . Basico_OPController_UtilOPController::retornaServerHost() . Basico_OPController_CpgTokenOPController::getInstance()->gerarTokenPorUrl(''/basico/login/verificadisponibilidadelogin'') . "'')' AS acao,
	   true AS ativo,
	   'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
LEFT JOIN basico.tipo_categoria tc ON (c.id_tipo_categoria = tc.id)
WHERE c.nome = 'ACAO_EVENTO'
AND tc.nome = 'ACAO';

INSERT INTO basico.acao_evento (id_categoria, nome, constante_textual, constante_textual_descricao, acao, ativo, rowinfo)
SELECT c.id AS id_categoria,
	   'VERIFICA_FORCA_SENHA' AS nome,
	   'NOME_ACAO_EVENTO_VERIFICA_FORCA_SENHA' AS constante_textual,
	   'DESCRICAO_ACAO_EVENTO_VERIFICA_FORCA_SENHA' AS constante_textual_descricao,
	   'chkPass(document.forms[''BasicoCadastrarUsuarioValidado''].BasicoCadastrarUsuarioValidadoSenha.value, " . Basico_OPController_UtilOPController::retornaJsonMensagensPasswordStrengthChecker() . ")' AS acao,
	   true AS ativo,
	   'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
LEFT JOIN basico.tipo_categoria tc ON (c.id_tipo_categoria = tc.id)
WHERE c.nome = 'ACAO_EVENTO'
AND tc.nome = 'ACAO';

INSERT INTO basico.acao_evento (id_categoria, nome, constante_textual, constante_textual_descricao, acao, ativo, rowinfo)
SELECT c.id AS id_categoria,
	   'VALIDA_STRING' AS nome,
	   'NOME_ACAO_EVENTO_VALIDA_STRING' AS constante_textual,
	   'DESCRICAO_ACAO_EVENTO_VALIDA_STRING' AS constante_textual_descricao,
	   'validaString(this, ''login'')' AS acao,
	   true AS ativo,
	   'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
LEFT JOIN basico.tipo_categoria tc ON (c.id_tipo_categoria = tc.id)
WHERE c.nome = 'ACAO_EVENTO'
AND tc.nome = 'ACAO';

INSERT INTO basico.acao_evento (id_categoria, nome, constante_textual, constante_textual_descricao, acao, ativo, rowinfo)
SELECT c.id AS id_categoria,
	   'OCULTAR_DIALOG' AS nome,
	   'NOME_ACAO_EVENTO_OCULTAR_DIALOG' AS constante_textual,
	   'DESCRICAO_ACAO_EVENTO_OCULTAR_DIALOG' AS constante_textual_descricao,
	   'hideDialog(''@nomeFormulario'')' AS acao,
	   true AS ativo,
	   'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
LEFT JOIN basico.tipo_categoria tc ON (c.id_tipo_categoria = tc.id)
WHERE c.nome = 'ACAO_EVENTO'
AND tc.nome = 'ACAO';

INSERT INTO basico.acao_evento (id_categoria, nome, constante_textual, constante_textual_descricao, acao, ativo, rowinfo)
SELECT c.id AS id_categoria,
	   'OCULTAR_DIALOG_BASE_URL' AS nome,
	   'NOME_ACAO_EVENTO_OCULTAR_DIALOG_BASE_URL' AS constante_textual,
	   'DESCRICAO_ACAO_EVENTO_OCULTAR_DIALOG_BASE_URL' AS constante_textual_descricao,
	   'hideDialog(''@nomeFormulario'', ''@baseUrl'')' AS acao,
	   true AS ativo,
	   'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
LEFT JOIN basico.tipo_categoria tc ON (c.id_tipo_categoria = tc.id)
WHERE c.nome = 'ACAO_EVENTO'
AND tc.nome = 'ACAO';



