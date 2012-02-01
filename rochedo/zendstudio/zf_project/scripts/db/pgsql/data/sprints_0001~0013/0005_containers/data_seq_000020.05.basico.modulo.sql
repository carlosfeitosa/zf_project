/**
* SCRIPT DE POPULACAO DA TABELA basico.modulo
* 
* versao: 1.0 (POSTGRESQL 8.4.1)
* por: JOÃO VASCONCELOS (joao.vasconcelos@rochedoframework.com)
* criacao: 31/01/2012
* ultimas modificacoes:
* 								
*/

INSERT INTO basico.modulo (id_categoria, nome, versao, path, instalado, ativo, xml_autoria, rowinfo)
SELECT c.id AS id_categoria, 'BASICO' AS nome,
	   '0.3' AS versao, 'basico/' AS path, true AS instalado, true AS ativo,
	   'SYSTEM_XML_STARTUP' AS xml_autoria, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'SISTEMA_MODULO';