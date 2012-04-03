/**
* SCRIPT DE POPULACAO DA TABELA basico.include
* 
* Esta tabela armazena os includes que podem ser utilizados pelo sistema.
* 
* versao: 1.0 (POSTGRESQL 9.1.1)
* por: JOÃO VASCONCELOS (joao.vasconcelos@rochedoframework.com)
* criacao: 22/03/2012
* ultimas modificacoes:
*/

INSERT INTO basico.include (id_categoria, nome, constante_textual, uri, ativo, rowinfo)
SELECT (SELECT c.id FROM basico.categoria c 
		LEFT JOIN basico.tipo_categoria tc ON (tc.id = c.id_tipo_categoria)
		WHERE c.nome ='INCLUDE_JS_LINKHTML'
		AND tc.nome = 'INCLUDE') AS id_categoria,
		'INCLUDE_JS_LINKHTML_PASSWORD_STRENGTH_CHECKER' AS nome,
		'INCLUDE_JS_LINKHTML_PASSWORD_STRENGTH_CHECKER' AS constante_textual,
		'http://@enderecoAplicacaoHTTP@/templates/3rd_party/password_strength_checker/passwordStrengthChecker.js' AS uri,
		true AS ativo,
		'SYSTEM_STARTUP' AS rowinfo;
