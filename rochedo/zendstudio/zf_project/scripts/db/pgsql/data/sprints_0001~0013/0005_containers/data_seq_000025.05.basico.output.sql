/**
* SCRIPT DE POPULACAO DA TABELA basico.output
* 
* versao: 1.0 (POSTGRESQL 8.4.1)
* por: JOÃO VASCONCELOS (joao.vasconcelos@rochedoframework.com)
* criacao: 31/01/2012
* ultimas modificacoes:
* 								
*/

INSERT INTO basico.output (id_categoria, nome, rowinfo)
SELECT c.id AS id_categoria, 'OUTPUT_DOJO' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_OUTPUT_DOJO';

INSERT INTO basico.output (id_categoria, nome, rowinfo)
SELECT c.id AS id_categoria, 'OUTPUT_HTML' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_OUTPUT_HTML';

INSERT INTO basico.output (id_categoria, nome, rowinfo)
SELECT c.id AS id_categoria, 'OUTPUT_AJAX' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_OUTPUT_AJAX';