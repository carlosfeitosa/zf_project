/*
* SCRIPT DE POPULACAO DAS TABELAS
* 
* versao: 1.0 (MSSQL 2000)
* por: ADRIANO DUPRAT LEMOS (adriano.lemos@rochedoproject.com)
* criacao: 20/10/2010
* ultimas modificacoes:
* 								26/07/2011 - criação do output ajax
*/

/* OUTPUT */

INSERT INTO output (id_categoria, nome, descricao, rowinfo)
SELECT c.id AS id_categoria, 'OUTPUT_DOJO' AS nome, 'Formato de saida DOJO.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_OUTPUT_DOJO';

INSERT INTO output (id_categoria, nome, descricao, rowinfo)
SELECT c.id AS id_categoria, 'OUTPUT_HTML' AS nome, 'Formato de saida HTML.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_OUTPUT_HTML';

INSERT INTO output (id_categoria, nome, descricao, rowinfo)
SELECT c.id AS id_categoria, 'OUTPUT_AJAX' AS nome, 'Formato de saida AJAX.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_OUTPUT_HTML';