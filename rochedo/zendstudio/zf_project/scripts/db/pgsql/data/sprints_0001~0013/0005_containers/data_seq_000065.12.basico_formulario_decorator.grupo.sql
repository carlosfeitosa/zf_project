/**
* SCRIPT DE POPULACAO DA TABELA basico_formulario_decorator.grupo
* 
* Esta tabela funciona como um banco de dados de grupos de decorators.
* 
* versao: 1.0 (POSTGRESQL 9.1.1)
* por: JOÃO VASCONCELOS (joao.vasconcelos@rochedoframework.com)
* criacao: 03/07/2012
* ultimas modificacoes:
* 								
*/

INSERT INTO basico_formulario_decorator.grupo (id_categoria, nome, constante_textual, constante_textual_descricao, ativo, rowinfo)
SELECT c.id AS id_categoria,
	   'FORMULARIO_DIJITFORM_DL' AS nome,
	   'NOME_GRUPO_DECORATOR_FORMULARIO_DIJITFORM_DL' AS constante_textual,
	   'DESCRICAO_GRUPO_DECORATOR_FORMULARIO_DIJITFORM_DL' AS constante_textual_descricao,
	   true AS ativo,
	   'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
LEFT JOIN basico.tipo_categoria tc ON (c.id_tipo_categoria = tc.id)
WHERE c.nome = 'FORMULARIO_DECORATOR_GRUPO'
AND tc.nome = 'FORMULARIO';

INSERT INTO basico_formulario_decorator.grupo (id_categoria, nome, constante_textual, constante_textual_descricao, ativo, rowinfo)
SELECT c.id AS id_categoria,
	   'FORMULARIO_TABCONTAINER_850_x_430_TOP' AS nome,
	   'NOME_GRUPO_DECORATOR_FORMULARIO_TABCONTAINER_850_x_430_TOP' AS constante_textual,
	   'DESCRICAO_GRUPO_DECORATOR_FORMULARIO_TABCONTAINER_850_x_430_TOP' AS constante_textual_descricao,
	   true AS ativo,
	   'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
LEFT JOIN basico.tipo_categoria tc ON (c.id_tipo_categoria = tc.id)
WHERE c.nome = 'FORMULARIO_DECORATOR_GRUPO'
AND tc.nome = 'FORMULARIO';

INSERT INTO basico_formulario_decorator.grupo (id_categoria, nome, constante_textual, constante_textual_descricao, ativo, rowinfo)
SELECT c.id AS id_categoria,
	   'FORMULARIO_ACCORDION_CONTAINER_850_x_430' AS nome,
	   'NOME_GRUPO_DECORATOR_FORMULARIO_ACCORDION_CONTAINER_850_x_430' AS constante_textual,
	   'DESCRICAO_GRUPO_DECORATOR_FORMULARIO_ACCORDION_CONTAINER_850_x_430' AS constante_textual_descricao,
	   true AS ativo,
	   'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
LEFT JOIN basico.tipo_categoria tc ON (c.id_tipo_categoria = tc.id)
WHERE c.nome = 'FORMULARIO_DECORATOR_GRUPO'
AND tc.nome = 'FORMULARIO';

INSERT INTO basico_formulario_decorator.grupo (id_categoria, nome, constante_textual, constante_textual_descricao, ativo, rowinfo)
SELECT c.id AS id_categoria,
	   'FORMULARIO_CONTENT_PANE_850_x_430' AS nome,
	   'NOME_GRUPO_DECORATOR_FORMULARIO_CONTENT_PANE_850_x_430' AS constante_textual,
	   'DESCRICAO_GRUPO_DECORATOR_FORMULARIO_CONTENT_PANE_850_x_430' AS constante_textual_descricao,
	   true AS ativo,
	   'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
LEFT JOIN basico.tipo_categoria tc ON (c.id_tipo_categoria = tc.id)
WHERE c.nome = 'FORMULARIO_DECORATOR_GRUPO'
AND tc.nome = 'FORMULARIO';

INSERT INTO basico_formulario_decorator.grupo (id_categoria, nome, constante_textual, constante_textual_descricao, ativo, rowinfo)
SELECT c.id AS id_categoria,
	   'SUBFORM_CONTENT_PANE' AS nome,
	   'NOME_GRUPO_DECORATOR_SUBFORM_CONTENT_PANE' AS constante_textual,
	   'DESCRICAO_GRUPO_DECORATOR_SUBFORM_CONTENT_PANE' AS constante_textual_descricao,
	   true AS ativo,
	   'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
LEFT JOIN basico.tipo_categoria tc ON (c.id_tipo_categoria = tc.id)
WHERE c.nome = 'FORMULARIO_DECORATOR_GRUPO'
AND tc.nome = 'FORMULARIO';