/**
* SCRIPT DE POPULACAO DA TABELA MODULO
* 
* versao: 1.0 (MSSQL 2000)
* por: CARLOS FEITOSA (carlos.feitosa@rochedoproject.com)
* criacao: 20/10/2010
* ultimas modificacoes:
* 
*/

INSERT INTO basico.modulo (id_categoria, nome, descricao, versao, path, instalado, ativo, xml_autoria, rowinfo)
SELECT c.id AS id_categoria, 'BASICO' AS nome,
	   'Modulo basico. Necessario para funcionamento minimo do sistema.' AS descricao,
	   '0.3' AS versao, 'basico/' AS path, 1 AS instalado, 1 AS ativo,
	   'SYSTEM_XML_STARTUP' AS xml_autoria, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'SISTEMA_MODULO';