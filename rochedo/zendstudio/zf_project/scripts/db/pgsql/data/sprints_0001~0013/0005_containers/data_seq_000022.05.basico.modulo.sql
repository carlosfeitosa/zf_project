/**
* SCRIPT DE POPULACAO DA TABELA basico.modulo
* 
* versao: 1.0 (POSTGRESQL 9.1.1)
* por: JOÃO VASCONCELOS (joao.vasconcelos@rochedoframework.com)
* criacao: 31/01/2012
* ultimas modificacoes: 03/02/2012 - inclusão do módulo DEFAULT
* 								
*/

INSERT INTO basico.modulo (id_categoria, nome, constante_textual, constante_textual_descricao, versao, path, instalado, ativo, xml_autoria, rowinfo)
SELECT c.id AS id_categoria, 'BASICO' AS nome,
	   'NOME_MODULO_BASICO' AS constante_textual,
	   'DESCRICAO_MODULO_BASICO' AS constante_textual_descricao,
	   '0.3' AS versao, 'basico/' AS path, true AS instalado, true AS ativo,
	   'SYSTEM_XML_STARTUP' AS xml_autoria, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'SISTEMA_MODULO';

INSERT INTO basico.modulo (id_categoria, nome, constante_textual, constante_textual_descricao, versao, instalado, ativo, xml_autoria, rowinfo)
SELECT c.id AS id_categoria, 'DEFAULT' AS nome,
	   'NOME_MODULO_DEFAULT' AS constante_textual,
	   'DESCRICAO_MODULO_DEFAULT' AS constante_textual_descricao,
	   '0.1' AS versao, true AS instalado, true AS ativo,
	   'SYSTEM_XML_STARTUP' AS xml_autoria, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'SISTEMA_MODULO';