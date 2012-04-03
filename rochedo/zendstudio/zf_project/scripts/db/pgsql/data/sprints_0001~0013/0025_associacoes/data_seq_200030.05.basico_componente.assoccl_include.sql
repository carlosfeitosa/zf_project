/** 
* SCRIPT DE POPULACAO DA TABELA basico_componente.assoccl_include
* 
* versao: 1.0 (POSTGRESQL 9.1.1)
* por: JOÃO HENRIQUE M.BIONE (joao.henrique.bione@rochedoproject.com)
* criacao: 01/02/2012
* ultimas modificacoes:
*
*/

INSERT INTO basico_componente.assoccl_include (id_componente, id_include, ordem, rowinfo)
SELECT (SELECT co.id FROM basico.componente co
		LEFT JOIN basico.categoria c ON (c.id = co.id_categoria)
		LEFT JOIN basico.tipo_categoria tc ON (tc.id = c.id_tipo_categoria)
		WHERE c.nome = 'COMPONENTE_AJAXTERCEIROS'
		AND tc.nome = 'COMPONENTE'
		AND co.nome = 'DOJO_PasswordTextBox_With_Checker') AS id_componente,
	   (SELECT i.id FROM basico.include i
		LEFT JOIN basico.categoria c ON (c.id = i.id_categoria)
		LEFT JOIN basico.tipo_categoria tc ON (tc.id = c.id_tipo_categoria)
		WHERE c.nome = 'INCLUDE_JS_LINKHTML'
		AND tc.nome = 'INCLUDE'
		AND i.nome = 'INCLUDE_JS_LINKHTML_PASSWORD_STRENGTH_CHECKER') AS id_include,
	   1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;