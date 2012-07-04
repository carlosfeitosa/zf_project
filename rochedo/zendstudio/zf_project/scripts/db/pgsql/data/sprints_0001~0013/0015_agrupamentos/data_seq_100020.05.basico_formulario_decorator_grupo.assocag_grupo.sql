/*
* SCRIPT DE POPULACAO DA TABELA DE ASSOCIAÇÃO DO GRUPO DECORATOR COM OS DECORATORS OU GRUPOS
* 
* versao: 1.0 (POSTGRESQL 8.4.1)
* por: João Vasconcelos (joao.vasconcelos@rochedoframework.com)
* criacao: 04/07/2012
* ultimas modificacoes: 
*  
*/

INSERT INTO basico_form_decorator_grupo.assocag_grupo (id_form_decorator_grupo, id_formulario_decorator, ordem, rowinfo)
SELECT (SELECT dg.id
		 FROM basico_formulario_decorator.grupo dg
		 LEFT JOIN basico.categoria cat ON (dg.id_categoria = cat.id)
		 LEFT JOIN basico.tipo_categoria tcat ON (cat.id_tipo_categoria = tcat.id)
		 WHERE dg.nome = 'GRUPO_DECORATOR_FORMULARIO_DIJITFORM_DL'
		 AND cat.nome = 'FORMULARIO_DECORATOR_GRUPO'
		 AND tcat.nome = 'FORMULARIO') AS id_form_decorator_grupo,
		(SELECT d.id
		 FROM basico_formulario.decorator d
		 LEFT JOIN basico.categoria cat ON (d.id_categoria = cat.id)
		 LEFT JOIN basico.tipo_categoria tcat ON (cat.id_tipo_categoria = tcat.id)
		 LEFT JOIN basico.categoria catpai ON (cat.id_categoria_pai = catpai.id)
		 WHERE d.nome = 'ZF_FORM_ELEMENTS'
		 AND cat.nome = 'FORMULARIO_DECORATOR_HTML_ZF'
		 AND tcat.nome = 'FORMULARIO'
		 AND catpai.nome = 'FORMULARIO_DECORATOR_HTML') AS id_formulario_decorator,
		 1 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
		 
INSERT INTO basico_form_decorator_grupo.assocag_grupo (id_form_decorator_grupo, id_formulario_decorator, ordem, rowinfo)
SELECT (SELECT dg.id
		 FROM basico_formulario_decorator.grupo dg
		 LEFT JOIN basico.categoria cat ON (dg.id_categoria = cat.id)
		 LEFT JOIN basico.tipo_categoria tcat ON (cat.id_tipo_categoria = tcat.id)
		 WHERE dg.nome = 'GRUPO_DECORATOR_FORMULARIO_DIJITFORM_DL'
		 AND cat.nome = 'FORMULARIO_DECORATOR_GRUPO'
		 AND tcat.nome = 'FORMULARIO') AS id_form_decorator_grupo,
		(SELECT d.id
		 FROM basico_formulario.decorator d
		 LEFT JOIN basico.categoria cat ON (d.id_categoria = cat.id)
		 LEFT JOIN basico.tipo_categoria tcat ON (cat.id_tipo_categoria = tcat.id)
		 LEFT JOIN basico.categoria catpai ON (cat.id_categoria_pai = catpai.id)
		 WHERE d.nome = 'ZF_HTMLTAG_DL'
		 AND cat.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
		 AND tcat.nome = 'FORMULARIO'
		 AND catpai.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML') AS id_formulario_decorator,
		 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
		 
INSERT INTO basico_form_decorator_grupo.assocag_grupo (id_form_decorator_grupo, id_formulario_decorator, ordem, rowinfo)
SELECT (SELECT dg.id
		 FROM basico_formulario_decorator.grupo dg
		 LEFT JOIN basico.categoria cat ON (dg.id_categoria = cat.id)
		 LEFT JOIN basico.tipo_categoria tcat ON (cat.id_tipo_categoria = tcat.id)
		 WHERE dg.nome = 'GRUPO_DECORATOR_FORMULARIO_DIJITFORM_DL'
		 AND cat.nome = 'FORMULARIO_DECORATOR_GRUPO'
		 AND tcat.nome = 'FORMULARIO') AS id_form_decorator_grupo,
		(SELECT d.id
		 FROM basico_formulario.decorator d
		 LEFT JOIN basico.categoria cat ON (d.id_categoria = cat.id)
		 LEFT JOIN basico.tipo_categoria tcat ON (cat.id_tipo_categoria = tcat.id)
		 LEFT JOIN basico.categoria catpai ON (cat.id_categoria_pai = catpai.id)
		 WHERE d.nome = 'DOJO_DIJITFORM'
		 AND cat.nome = 'FORMULARIO_DECORATOR_JAVASCRIPT_DOJO'
		 AND tcat.nome = 'FORMULARIO'
		 AND catpai.nome = 'FORMULARIO_DECORATOR_JAVASCRIPT') AS id_formulario_decorator,
		 3 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
		 
INSERT INTO basico_form_decorator_grupo.assocag_grupo (id_form_decorator_grupo, id_formulario_decorator, ordem, rowinfo)
SELECT (SELECT dg.id
		 FROM basico_formulario_decorator.grupo dg
		 LEFT JOIN basico.categoria cat ON (dg.id_categoria = cat.id)
		 LEFT JOIN basico.tipo_categoria tcat ON (cat.id_tipo_categoria = tcat.id)
		 WHERE dg.nome = 'GRUPO_DECORATOR_FORMULARIO_TABCONTAINER_850_x_430_TOP'
		 AND cat.nome = 'FORMULARIO_DECORATOR_GRUPO'
		 AND tcat.nome = 'FORMULARIO') AS id_form_decorator_grupo,
		(SELECT d.id
		 FROM basico_formulario.decorator d
		 LEFT JOIN basico.categoria cat ON (d.id_categoria = cat.id)
		 LEFT JOIN basico.tipo_categoria tcat ON (cat.id_tipo_categoria = tcat.id)
		 LEFT JOIN basico.categoria catpai ON (cat.id_categoria_pai = catpai.id)
		 WHERE d.nome = 'ZF_FORM_ELEMENTS'
		 AND cat.nome = 'FORMULARIO_DECORATOR_HTML_ZF'
		 AND tcat.nome = 'FORMULARIO'
		 AND catpai.nome = 'FORMULARIO_DECORATOR_HTML') AS id_formulario_decorator,
		 1 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
		 
INSERT INTO basico_form_decorator_grupo.assocag_grupo (id_form_decorator_grupo, id_formulario_decorator, ordem, rowinfo)
SELECT (SELECT dg.id
		 FROM basico_formulario_decorator.grupo dg
		 LEFT JOIN basico.categoria cat ON (dg.id_categoria = cat.id)
		 LEFT JOIN basico.tipo_categoria tcat ON (cat.id_tipo_categoria = tcat.id)
		 WHERE dg.nome = 'GRUPO_DECORATOR_FORMULARIO_TABCONTAINER_850_x_430_TOP'
		 AND cat.nome = 'FORMULARIO_DECORATOR_GRUPO'
		 AND tcat.nome = 'FORMULARIO') AS id_form_decorator_grupo,
		(SELECT d.id
		 FROM basico_formulario.decorator d
		 LEFT JOIN basico.categoria cat ON (d.id_categoria = cat.id)
		 LEFT JOIN basico.tipo_categoria tcat ON (cat.id_tipo_categoria = tcat.id)
		 LEFT JOIN basico.categoria catpai ON (cat.id_categoria_pai = catpai.id)
		 WHERE d.nome = 'DOJO_TABCONTAINER_850_x_430_TOP'
		 AND cat.nome = 'FORMULARIO_DECORATOR_JAVASCRIPT_DOJO'
		 AND tcat.nome = 'FORMULARIO'
		 AND catpai.nome = 'FORMULARIO_DECORATOR_JAVASCRIPT') AS id_formulario_decorator,
		 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
		 
INSERT INTO basico_form_decorator_grupo.assocag_grupo (id_form_decorator_grupo, id_formulario_decorator, ordem, rowinfo)
SELECT (SELECT dg.id
		 FROM basico_formulario_decorator.grupo dg
		 LEFT JOIN basico.categoria cat ON (dg.id_categoria = cat.id)
		 LEFT JOIN basico.tipo_categoria tcat ON (cat.id_tipo_categoria = tcat.id)
		 WHERE dg.nome = 'GRUPO_DECORATOR_FORMULARIO_ACCORDION_CONTAINER_850_x_430'
		 AND cat.nome = 'FORMULARIO_DECORATOR_GRUPO'
		 AND tcat.nome = 'FORMULARIO') AS id_form_decorator_grupo,
		(SELECT d.id
		 FROM basico_formulario.decorator d
		 LEFT JOIN basico.categoria cat ON (d.id_categoria = cat.id)
		 LEFT JOIN basico.tipo_categoria tcat ON (cat.id_tipo_categoria = tcat.id)
		 LEFT JOIN basico.categoria catpai ON (cat.id_categoria_pai = catpai.id)
		 WHERE d.nome = 'ZF_FORM_ELEMENTS'
		 AND cat.nome = 'FORMULARIO_DECORATOR_HTML_ZF'
		 AND tcat.nome = 'FORMULARIO'
		 AND catpai.nome = 'FORMULARIO_DECORATOR_HTML') AS id_formulario_decorator,
		 1 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
		 
INSERT INTO basico_form_decorator_grupo.assocag_grupo (id_form_decorator_grupo, id_formulario_decorator, ordem, rowinfo)
SELECT (SELECT dg.id
		 FROM basico_formulario_decorator.grupo dg
		 LEFT JOIN basico.categoria cat ON (dg.id_categoria = cat.id)
		 LEFT JOIN basico.tipo_categoria tcat ON (cat.id_tipo_categoria = tcat.id)
		 WHERE dg.nome = 'GRUPO_DECORATOR_FORMULARIO_ACCORDION_CONTAINER_850_x_430'
		 AND cat.nome = 'FORMULARIO_DECORATOR_GRUPO'
		 AND tcat.nome = 'FORMULARIO') AS id_form_decorator_grupo,
		(SELECT d.id
		 FROM basico_formulario.decorator d
		 LEFT JOIN basico.categoria cat ON (d.id_categoria = cat.id)
		 LEFT JOIN basico.tipo_categoria tcat ON (cat.id_tipo_categoria = tcat.id)
		 LEFT JOIN basico.categoria catpai ON (cat.id_categoria_pai = catpai.id)
		 WHERE d.nome = 'DOJO_ACCORDION_CONTAINER_850_x_430'
		 AND cat.nome = 'FORMULARIO_DECORATOR_JAVASCRIPT_DOJO'
		 AND tcat.nome = 'FORMULARIO'
		 AND catpai.nome = 'FORMULARIO_DECORATOR_JAVASCRIPT') AS id_formulario_decorator,
		 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;	
		 
INSERT INTO basico_form_decorator_grupo.assocag_grupo (id_form_decorator_grupo, id_formulario_decorator, ordem, rowinfo)
SELECT (SELECT dg.id
		 FROM basico_formulario_decorator.grupo dg
		 LEFT JOIN basico.categoria cat ON (dg.id_categoria = cat.id)
		 LEFT JOIN basico.tipo_categoria tcat ON (cat.id_tipo_categoria = tcat.id)
		 WHERE dg.nome = 'GRUPO_DECORATOR_FORMULARIO_CONTENT_PANE_850_x_430'
		 AND cat.nome = 'FORMULARIO_DECORATOR_GRUPO'
		 AND tcat.nome = 'FORMULARIO') AS id_form_decorator_grupo,
		(SELECT d.id
		 FROM basico_formulario.decorator d
		 LEFT JOIN basico.categoria cat ON (d.id_categoria = cat.id)
		 LEFT JOIN basico.tipo_categoria tcat ON (cat.id_tipo_categoria = tcat.id)
		 LEFT JOIN basico.categoria catpai ON (cat.id_categoria_pai = catpai.id)
		 WHERE d.nome = 'ZF_FORM_ELEMENTS'
		 AND cat.nome = 'FORMULARIO_DECORATOR_HTML_ZF'
		 AND tcat.nome = 'FORMULARIO'
		 AND catpai.nome = 'FORMULARIO_DECORATOR_HTML') AS id_formulario_decorator,
		 1 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
		 
INSERT INTO basico_form_decorator_grupo.assocag_grupo (id_form_decorator_grupo, id_formulario_decorator, ordem, rowinfo)
SELECT (SELECT dg.id
		 FROM basico_formulario_decorator.grupo dg
		 LEFT JOIN basico.categoria cat ON (dg.id_categoria = cat.id)
		 LEFT JOIN basico.tipo_categoria tcat ON (cat.id_tipo_categoria = tcat.id)
		 WHERE dg.nome = 'GRUPO_DECORATOR_FORMULARIO_CONTENT_PANE_850_x_430'
		 AND cat.nome = 'FORMULARIO_DECORATOR_GRUPO'
		 AND tcat.nome = 'FORMULARIO') AS id_form_decorator_grupo,
		(SELECT d.id
		 FROM basico_formulario.decorator d
		 LEFT JOIN basico.categoria cat ON (d.id_categoria = cat.id)
		 LEFT JOIN basico.tipo_categoria tcat ON (cat.id_tipo_categoria = tcat.id)
		 LEFT JOIN basico.categoria catpai ON (cat.id_categoria_pai = catpai.id)
		 WHERE d.nome = 'DOJO_CONTENT_PANE_850_x_430'
		 AND cat.nome = 'FORMULARIO_DECORATOR_JAVASCRIPT_DOJO'
		 AND tcat.nome = 'FORMULARIO'
		 AND catpai.nome = 'FORMULARIO_DECORATOR_JAVASCRIPT') AS id_formulario_decorator,
		 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
		 
INSERT INTO basico_form_decorator_grupo.assocag_grupo (id_form_decorator_grupo, id_formulario_decorator, ordem, rowinfo)
SELECT (SELECT dg.id
		 FROM basico_formulario_decorator.grupo dg
		 LEFT JOIN basico.categoria cat ON (dg.id_categoria = cat.id)
		 LEFT JOIN basico.tipo_categoria tcat ON (cat.id_tipo_categoria = tcat.id)
		 WHERE dg.nome = 'GRUPO_DECORATOR_SUBFORM_CONTENT_PANE'
		 AND cat.nome = 'FORMULARIO_DECORATOR_GRUPO'
		 AND tcat.nome = 'FORMULARIO') AS id_form_decorator_grupo,
		(SELECT d.id
		 FROM basico_formulario.decorator d
		 LEFT JOIN basico.categoria cat ON (d.id_categoria = cat.id)
		 LEFT JOIN basico.tipo_categoria tcat ON (cat.id_tipo_categoria = tcat.id)
		 LEFT JOIN basico.categoria catpai ON (cat.id_categoria_pai = catpai.id)
		 WHERE d.nome = 'DOJO_DIJITELEMENT'
		 AND cat.nome = 'FORMULARIO_DECORATOR_JAVASCRIPT_DOJO'
		 AND tcat.nome = 'FORMULARIO'
		 AND catpai.nome = 'FORMULARIO_DECORATOR_JAVASCRIPT') AS id_formulario_decorator,
		 1 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
		 
INSERT INTO basico_form_decorator_grupo.assocag_grupo (id_form_decorator_grupo, id_formulario_decorator, ordem, rowinfo)
SELECT (SELECT dg.id
		 FROM basico_formulario_decorator.grupo dg
		 LEFT JOIN basico.categoria cat ON (dg.id_categoria = cat.id)
		 LEFT JOIN basico.tipo_categoria tcat ON (cat.id_tipo_categoria = tcat.id)
		 WHERE dg.nome = 'GRUPO_DECORATOR_SUBFORM_CONTENT_PANE'
		 AND cat.nome = 'FORMULARIO_DECORATOR_GRUPO'
		 AND tcat.nome = 'FORMULARIO') AS id_form_decorator_grupo,
		(SELECT d.id
		 FROM basico_formulario.decorator d
		 LEFT JOIN basico.categoria cat ON (d.id_categoria = cat.id)
		 LEFT JOIN basico.tipo_categoria tcat ON (cat.id_tipo_categoria = tcat.id)
		 LEFT JOIN basico.categoria catpai ON (cat.id_categoria_pai = catpai.id)
		 WHERE d.nome = 'DOJO_SUBFORM_CONTENT_PANE'
		 AND cat.nome = 'FORMULARIO_SUB_FORMULARIO_DECORATOR_JAVASCRIPT_DOJO'
		 AND tcat.nome = 'FORMULARIO'
		 AND catpai.nome = 'FORMULARIO_SUB_FORMULARIO_DECORATOR_JAVASCRIPT') AS id_formulario_decorator,
		 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;		 
		 