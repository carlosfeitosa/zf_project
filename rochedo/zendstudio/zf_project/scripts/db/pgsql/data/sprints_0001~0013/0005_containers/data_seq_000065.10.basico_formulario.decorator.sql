/**
* SCRIPT DE POPULACAO DA TABELA basico_formulario.decorator
* 
* Esta tabela funciona como um banco de dados de decorators.
* 
* versao: 1.0 (POSTGRESQL 9.1.1)
* por: JOÃO VASCONCELOS (joao.vasconcelos@rochedoframework.com)
* criacao: 02/02/2012
* ultimas modificacoes: 20/06/2012 - Criação do script de insert do decorator AjaxForm (João Vasconcelos)
* 						29/06/2012 - Alteração nos scripts para adaptação do gerador de formularios a nova estrutura do sistema (João Vasconcelos)
* 								
*/

INSERT INTO basico_formulario.decorator (id_categoria, id_componente, nome, constante_textual, constante_textual_descricao, ativo, rowinfo)
SELECT c.id AS id_categoria,
	   (SELECT com.id 
		FROM basico.componente com
		LEFT JOIN basico.categoria c2 ON (com.id_categoria = c2.id)
		LEFT JOIN basico.tipo_categoria t2 ON (c2.id_tipo_categoria = t2.id)
		WHERE t2.nome = 'COMPONENTE'
		AND c2.nome = 'COMPONENTE_DECORATOR_JAVASCRIPT_ROCHEDO'
		AND com.nome = 'ROCHEDO_Decorator_AjaxForm') AS id_componente,
	   'ROCHEDO_AJAX_FORM' AS nome, 
	   'NOME_DECORATOR_ROCHEDO_AJAX_FORM' AS constante_textual,
	   'DESCRICAO_DECORATOR_ROCHEDO_AJAX_FORM' AS constante_textual_descricao,
	   true AS ativo, 
	   'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_DECORATOR_JAVASCRIPT_ROCHEDO';

INSERT INTO basico_formulario.decorator (id_categoria, id_componente, nome, constante_textual, constante_textual_descricao, ativo, rowinfo)
SELECT c.id AS id_categoria,
	   (SELECT com.id 
		FROM basico.componente com
		LEFT JOIN basico.categoria c2 ON (com.id_categoria = c2.id)
		LEFT JOIN basico.tipo_categoria t2 ON (c2.id_tipo_categoria = t2.id)
		WHERE t2.nome = 'COMPONENTE'
		AND c2.nome = 'COMPONENTE_DECORATOR_HTML_ZF'
		AND com.nome = 'ZF_Decorator_FormElements') AS id_componente,
	   'ZF_FORM_ELEMENTS' AS nome, 
	   'NOME_DECORATOR_ZF_FORM_ELEMENTS' AS constante_textual,
	   'DESCRICAO_DECORATOR_ZF_FORM_ELEMENTS' AS constante_textual_descricao,
	   true AS ativo, 
	   'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_DECORATOR_HTML_ZF';

INSERT INTO basico_formulario.decorator (id_categoria, id_componente, nome, constante_textual, attribs, ativo, rowinfo)
SELECT c.id AS id_categoria,
	   (SELECT com.id 
		FROM basico.componente com
		LEFT JOIN basico.categoria c2 ON (com.id_categoria = c2.id)
		LEFT JOIN basico.tipo_categoria t2 ON (c2.id_tipo_categoria = t2.id)
		WHERE t2.nome = 'COMPONENTE'
		AND c2.nome = 'COMPONENTE_DECORATOR_HTML_ZF'
		AND com.nome = 'ZF_Decorator_HtmlTag') AS id_componente,
	   'ZF_HTMLTAG_DL' AS nome, 
	   'NOME_DECORATOR_ZF_HTMLTAG_DL' AS constante_textual,
	   'array(''tag'' => ''dl'')' AS attribs,
	   true AS ativo, 
	   'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF';

INSERT INTO basico_formulario.decorator (id_categoria, id_componente, nome, constante_textual, ativo, rowinfo)
SELECT c.id AS id_categoria,
	   (SELECT com.id 
		FROM basico.componente com
		LEFT JOIN basico.categoria c2 ON (com.id_categoria = c2.id)
		LEFT JOIN basico.tipo_categoria t2 ON (c2.id_tipo_categoria = t2.id)
		WHERE t2.nome = 'COMPONENTE'
		AND c2.nome = 'COMPONENTE_DECORATOR_JAVASCRIPT_DOJO'
		AND com.nome = 'DOJO_Decorator_DijitForm') AS id_componente,
	   'DOJO_DIJITFORM' AS nome, 
	   'NOME_DECORATOR_DOJO_DIJITFORM' AS constante_textual,
	   true AS ativo, 
	   'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_DECORATOR_JAVASCRIPT_DOJO';

INSERT INTO basico_formulario.decorator (id_categoria, id_componente, nome, constante_textual, ativo, rowinfo)
SELECT c.id AS id_categoria,
	   (SELECT com.id 
		FROM basico.componente com
		LEFT JOIN basico.categoria c2 ON (com.id_categoria = c2.id)
		LEFT JOIN basico.tipo_categoria t2 ON (c2.id_tipo_categoria = t2.id)
		WHERE t2.nome = 'COMPONENTE'
		AND c2.nome = 'COMPONENTE_DECORATOR_JAVASCRIPT_DOJO'
		AND com.nome = 'DOJO_Decorator_DijitElement') AS id_componente,
	   'DOJO_DIJITELEMENT' AS nome, 
	   'NOME_DECORATOR_DOJO_DIJITELEMENT' AS constante_textual,
	   true AS ativo, 
	   'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_DECORATOR_JAVASCRIPT_DOJO';

INSERT INTO basico_formulario.decorator (id_categoria, id_componente, nome, constante_textual, attribs, ativo, rowinfo)
SELECT c.id AS id_categoria,
	   (SELECT com.id 
		FROM basico.componente com
		LEFT JOIN basico.categoria c2 ON (com.id_categoria = c2.id)
		LEFT JOIN basico.tipo_categoria t2 ON (c2.id_tipo_categoria = t2.id)
		WHERE t2.nome = 'COMPONENTE'
		AND c2.nome = 'COMPONENTE_DECORATOR_HTML_ZF'
		AND com.nome = 'ZF_Decorator_Label') AS id_componente,
	   'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO' AS nome, 
	   'NOME_DECORATOR_ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO' AS constante_textual,
	   'array(''escape'' => false, ''disableFor'' => true)' AS attribs,
	   true AS ativo, 
	   'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF';

INSERT INTO basico_formulario.decorator (id_categoria, id_componente, nome, constante_textual, attribs, ativo, rowinfo)
SELECT c.id AS id_categoria,
	   (SELECT com.id 
		FROM basico.componente com
		LEFT JOIN basico.categoria c2 ON (com.id_categoria = c2.id)
		LEFT JOIN basico.tipo_categoria t2 ON (c2.id_tipo_categoria = t2.id)
		WHERE t2.nome = 'COMPONENTE'
		AND c2.nome = 'COMPONENTE_DECORATOR_HTML_ZF'
		AND com.nome = 'ZF_Decorator_Label') AS id_componente,
	   'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO_A_DIREITA' AS nome, 
	   'NOME_DECORATOR_ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO_A_DIREITA' AS constante_textual,
	   'array(''escape'' => false, ''disableFor'' => true, ''placement'' => ''append'')' AS attribs,
	   true AS ativo, 
	   'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF';

INSERT INTO basico_formulario.decorator (id_categoria, id_componente, nome, constante_textual, attribs, ativo, rowinfo)
SELECT c.id AS id_categoria,
	   (SELECT com.id 
		FROM basico.componente com
		LEFT JOIN basico.categoria c2 ON (com.id_categoria = c2.id)
		LEFT JOIN basico.tipo_categoria t2 ON (c2.id_tipo_categoria = t2.id)
		WHERE t2.nome = 'COMPONENTE'
		AND c2.nome = 'COMPONENTE_DECORATOR_JAVASCRIPT_DOJO'
		AND com.nome = 'DOJO_Decorator_TabContainer') AS id_componente,
	   'DOJO_TABCONTAINER_850_x_430_TOP' AS nome, 
	   'NOME_DECORATOR_DOJO_TABCONTAINER1' AS constante_textual,
	   'array(''id'' => ''TabContainer'', ''style'' => ''width: 850px; height: 430px; top: 10px; position: relative; z-index: 3;'', ''dijitParams'' => array(''tabPosition'' => ''top''))' AS attribs,
	   true AS ativo, 
	   'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_DECORATOR_JAVASCRIPT_DOJO';


INSERT INTO basico_formulario.decorator (id_categoria, id_componente, nome, constante_textual, attribs, ativo, rowinfo)
SELECT c.id AS id_categoria,
	   (SELECT com.id 
		FROM basico.componente com
		LEFT JOIN basico.categoria c2 ON (com.id_categoria = c2.id)
		LEFT JOIN basico.tipo_categoria t2 ON (c2.id_tipo_categoria = t2.id)
		WHERE t2.nome = 'COMPONENTE'
		AND c2.nome = 'COMPONENTE_DECORATOR_JAVASCRIPT_DOJO'
		AND com.nome = 'DOJO_Decorator_AccordionContainer') AS id_componente,
	   'DOJO_ACCORDION_CONTAINER1' AS nome, 
	   'NOME_DECORATOR_DOJO_ACCORDION_CONTAINER1' AS constante_textual,
	   'array(''id'' => ''AccordionContainer'', ''style'' => ''width: 850px; height: 430px; position: relative; z-index: 3;'',)' AS attribs,
	   true AS ativo, 
	   'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_DECORATOR_JAVASCRIPT_DOJO';

INSERT INTO basico_formulario.decorator (id_categoria, id_componente, nome, constante_textual, attribs, ativo, rowinfo)
SELECT c.id AS id_categoria,
	   (SELECT com.id 
		FROM basico.componente com
		LEFT JOIN basico.categoria c2 ON (com.id_categoria = c2.id)
		LEFT JOIN basico.tipo_categoria t2 ON (c2.id_tipo_categoria = t2.id)
		WHERE t2.nome = 'COMPONENTE'
		AND c2.nome = 'COMPONENTE_DECORATOR_JAVASCRIPT_DOJO'
		AND com.nome = 'DOJO_Decorator_ContentPane') AS id_componente,
	   'DOJO_CONTENT_PANE1' AS nome, 
	   'NOME_DECORATOR_DOJO_CONTENT_PANE1' AS constante_textual,
	   'array(''id'' => ''ContentPane'', ''style'' => ''width: 850px; height: 430px; position: relative; z-index: 3;'',)' AS attribs,
	   true AS ativo, 
	   'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_DECORATOR_JAVASCRIPT_DOJO';

INSERT INTO basico_formulario.decorator (id_categoria, id_componente, nome, constante_textual, attribs, ativo, rowinfo)
SELECT c.id AS id_categoria,
	   (SELECT com.id 
		FROM basico.componente com
		LEFT JOIN basico.categoria c2 ON (com.id_categoria = c2.id)
		LEFT JOIN basico.tipo_categoria t2 ON (c2.id_tipo_categoria = t2.id)
		WHERE t2.nome = 'COMPONENTE'
		AND c2.nome = 'COMPONENTE_DECORATOR_JAVASCRIPT_DOJO'
		AND com.nome = 'DOJO_Decorator_ContentPane') AS id_componente,
	   'DOJO_SUBFORM_CONTENT_PANE1' AS nome, 
	   'NOME_DECORATOR_DOJO_SUBFORM_CONTENT_PANE1' AS constante_textual,
	   'array(''id'' => ''@nomeElemento'', ''title'' => ''@tituloContentPane'',)' AS attribs,
	   true AS ativo, 
	   'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_SUB_FORMULARIO_DECORATOR_JAVASCRIPT_DOJO';

INSERT INTO basico_formulario.decorator (id_categoria, id_componente, nome, constante_textual, attribs, alias, ativo, rowinfo)
SELECT c.id AS id_categoria,
	   (SELECT com.id 
		FROM basico.componente com
		LEFT JOIN basico.categoria c2 ON (com.id_categoria = c2.id)
		LEFT JOIN basico.tipo_categoria t2 ON (c2.id_tipo_categoria = t2.id)
		WHERE t2.nome = 'COMPONENTE'
		AND c2.nome = 'COMPONENTE_DECORATOR_HTML_ZF'
		AND com.nome = 'ZF_Decorator_HtmlTag') AS id_componente,
	   'FORM_FIELD_DIV' AS nome, 
	   'NOME_DECORATOR_FORM_FIELD_DIV' AS constante_textual,
	   'array(''tag'' => ''div'')' AS attribs,
	   'row' AS alias,
	   true AS ativo, 
	   'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF';

INSERT INTO basico_formulario.decorator (id_categoria, id_componente, nome, constante_textual, attribs, alias, ativo, rowinfo)
SELECT c.id AS id_categoria,
	   (SELECT com.id 
		FROM basico.componente com
		LEFT JOIN basico.categoria c2 ON (com.id_categoria = c2.id)
		LEFT JOIN basico.tipo_categoria t2 ON (c2.id_tipo_categoria = t2.id)
		WHERE t2.nome = 'COMPONENTE'
		AND c2.nome = 'COMPONENTE_DECORATOR_HTML_ZF'
		AND com.nome = 'ZF_Decorator_HtmlTag') AS id_componente,
	   'FORM_FIELD_DIV_MARGIN_RIGHT_10PX' AS nome, 
	   'NOME_DECORATOR_FORM_FIELD_DIV_MARGIN_RIGHT_10PX' AS constante_textual,
	   'array(''tag'' => ''div'', ''id'' => ''margin-right10px'')' AS attribs,
	   'row' AS alias,
	   true AS ativo, 
	   'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF';

INSERT INTO basico_formulario.decorator (id_categoria, id_componente, nome, constante_textual, attribs, alias, ativo, rowinfo)
SELECT c.id AS id_categoria,
	   (SELECT com.id 
		FROM basico.componente com
		LEFT JOIN basico.categoria c2 ON (com.id_categoria = c2.id)
		LEFT JOIN basico.tipo_categoria t2 ON (c2.id_tipo_categoria = t2.id)
		WHERE t2.nome = 'COMPONENTE'
		AND c2.nome = 'COMPONENTE_DECORATOR_HTML_ZF'
		AND com.nome = 'ZF_Decorator_HtmlTag') AS id_componente,
	   'FORM_FIELD_DIV_WIDTH_100PERCENT_CLEAR_BOTH' AS nome, 
	   'NOME_DECORATOR_FORM_FIELD_DIV_WIDTH_100PERCENT_CLEAR_BOTH' AS constante_textual,
	   'array(''tag'' => ''div'', ''id'' => ''width100percent-clear-both'')' AS attribs,
	   'row' AS alias,
	   true AS ativo, 
	   'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF';

INSERT INTO basico_formulario.decorator (id_categoria, id_componente, nome, constante_textual, attribs, alias, ativo, rowinfo)
SELECT c.id AS id_categoria,
	   (SELECT com.id 
		FROM basico.componente com
		LEFT JOIN basico.categoria c2 ON (com.id_categoria = c2.id)
		LEFT JOIN basico.tipo_categoria t2 ON (c2.id_tipo_categoria = t2.id)
		WHERE t2.nome = 'COMPONENTE'
		AND c2.nome = 'COMPONENTE_DECORATOR_HTML_ZF'
		AND com.nome = 'ZF_Decorator_HtmlTag') AS id_componente,
	   'FORM_FIELD_DIV_FLOAT_RIGHT' AS nome, 
	   'NOME_DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT' AS constante_textual,
	   'array(''tag'' => ''div'', ''id'' => ''float-right'')' AS attribs,
	   'row' AS alias,
	   true AS ativo, 
	   'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF';

INSERT INTO basico_formulario.decorator (id_categoria, id_componente, nome, constante_textual, attribs, alias, ativo, rowinfo)
SELECT c.id AS id_categoria,
	   (SELECT com.id 
		FROM basico.componente com
		LEFT JOIN basico.categoria c2 ON (com.id_categoria = c2.id)
		LEFT JOIN basico.tipo_categoria t2 ON (c2.id_tipo_categoria = t2.id)
		WHERE t2.nome = 'COMPONENTE'
		AND c2.nome = 'COMPONENTE_DECORATOR_HTML_ZF'
		AND com.nome = 'ZF_Decorator_HtmlTag') AS id_componente,
	   'FORM_FIELD_DIV_FLOAT_RIGHT_CLEAR_BOTH' AS nome, 
	   'NOME_DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT_CLEAR_BOTH' AS constante_textual,
	   'array(''tag'' => ''div'', ''id'' => ''float-right-clear-both'')' AS attribs,
	   'row' AS alias,
	   true AS ativo, 
	   'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF';

INSERT INTO basico_formulario.decorator (id_categoria, id_componente, nome, constante_textual, attribs, alias, ativo, rowinfo)
SELECT c.id AS id_categoria,
	   (SELECT com.id 
		FROM basico.componente com
		LEFT JOIN basico.categoria c2 ON (com.id_categoria = c2.id)
		LEFT JOIN basico.tipo_categoria t2 ON (c2.id_tipo_categoria = t2.id)
		WHERE t2.nome = 'COMPONENTE'
		AND c2.nome = 'COMPONENTE_DECORATOR_HTML_ZF'
		AND com.nome = 'ZF_Decorator_HtmlTag') AS id_componente,
	   'FORM_FIELD_DIV_FLOAT_RIGHT_MARGIN_RIGHT_10PX' AS nome, 
	   'NOME_DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT_MARGIN_RIGHT_10PX' AS constante_textual,
	   'array(''tag'' => ''div'', ''id'' => ''float-right-margin-right10px'')' AS attribs,
	   'row' AS alias,
	   true AS ativo, 
	   'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF';

INSERT INTO basico_formulario.decorator (id_categoria, id_componente, nome, constante_textual, attribs, alias, ativo, rowinfo)
SELECT c.id AS id_categoria,
	   (SELECT com.id 
		FROM basico.componente com
		LEFT JOIN basico.categoria c2 ON (com.id_categoria = c2.id)
		LEFT JOIN basico.tipo_categoria t2 ON (c2.id_tipo_categoria = t2.id)
		WHERE t2.nome = 'COMPONENTE'
		AND c2.nome = 'COMPONENTE_DECORATOR_HTML_ZF'
		AND com.nome = 'ZF_Decorator_HtmlTag') AS id_componente,
	   'FORM_FIELD_DIV_FLOAT_LEFT_MARGIN_RIGHT_10PX' AS nome, 
	   'NOME_DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_MARGIN_RIGHT_10PX' AS constante_textual,
	   'array(''tag'' => ''div'', ''id'' => ''float-left-margin-right10px'')' AS attribs,
	   'row' AS alias,
	   true AS ativo, 
	   'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF';

INSERT INTO basico_formulario.decorator (id_categoria, id_componente, nome, constante_textual, attribs, alias, ativo, rowinfo)
SELECT c.id AS id_categoria,
	   (SELECT com.id 
		FROM basico.componente com
		LEFT JOIN basico.categoria c2 ON (com.id_categoria = c2.id)
		LEFT JOIN basico.tipo_categoria t2 ON (c2.id_tipo_categoria = t2.id)
		WHERE t2.nome = 'COMPONENTE'
		AND c2.nome = 'COMPONENTE_DECORATOR_HTML_ZF'
		AND com.nome = 'ZF_Decorator_HtmlTag') AS id_componente,
	   'FORM_FIELD_DIV_FLOAT_LEFT' AS nome, 
	   'NOME_DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT' AS constante_textual,
	   'array(''tag'' => ''div'', ''id'' => ''float-left'')' AS attribs,
	   'row' AS alias,
	   true AS ativo, 
	   'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF';

INSERT INTO basico_formulario.decorator (id_categoria, id_componente, nome, constante_textual, attribs, alias, ativo, rowinfo)
SELECT c.id AS id_categoria,
	   (SELECT com.id 
		FROM basico.componente com
		LEFT JOIN basico.categoria c2 ON (com.id_categoria = c2.id)
		LEFT JOIN basico.tipo_categoria t2 ON (c2.id_tipo_categoria = t2.id)
		WHERE t2.nome = 'COMPONENTE'
		AND c2.nome = 'COMPONENTE_DECORATOR_HTML_ZF'
		AND com.nome = 'ZF_Decorator_HtmlTag') AS id_componente,
	   'FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH_MARGIN_RIGHT_10PX' AS nome, 
	   'NOME_DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH_MARGIN_RIGHT_10PX' AS constante_textual,
	   'array(''tag'' => ''div'', ''id'' => ''float-left-clear-both-margin-right10px'')' AS attribs,
	   'row' AS alias,
	   true AS ativo, 
	   'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF';

INSERT INTO basico_formulario.decorator (id_categoria, id_componente, nome, constante_textual, attribs, alias, ativo, rowinfo)
SELECT c.id AS id_categoria,
	   (SELECT com.id 
		FROM basico.componente com
		LEFT JOIN basico.categoria c2 ON (com.id_categoria = c2.id)
		LEFT JOIN basico.tipo_categoria t2 ON (c2.id_tipo_categoria = t2.id)
		WHERE t2.nome = 'COMPONENTE'
		AND c2.nome = 'COMPONENTE_DECORATOR_HTML_ZF'
		AND com.nome = 'ZF_Decorator_HtmlTag') AS id_componente,
	   'FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH' AS nome, 
	   'NOME_DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH' AS constante_textual,
	   'array(''tag'' => ''div'', ''id'' => ''float-left-clear-both'')' AS attribs,
	   'row' AS alias,
	   true AS ativo, 
	   'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF';

INSERT INTO basico_formulario.decorator (id_categoria, id_componente, nome, constante_textual, attribs, alias, ativo, rowinfo)
SELECT c.id AS id_categoria,
	   (SELECT com.id 
		FROM basico.componente com
		LEFT JOIN basico.categoria c2 ON (com.id_categoria = c2.id)
		LEFT JOIN basico.tipo_categoria t2 ON (c2.id_tipo_categoria = t2.id)
		WHERE t2.nome = 'COMPONENTE'
		AND c2.nome = 'COMPONENTE_DECORATOR_HTML_ZF'
		AND com.nome = 'ZF_Decorator_HtmlTag') AS id_componente,
	   'FORM_FIELD_DIV_CLEAR_BOTH' AS nome, 
	   'NOME_DECORATOR_FORM_FIELD_DIV_CLEAR_BOTH' AS constante_textual,
	   'array(''tag'' => ''div'', ''id'' => ''clear-both'')' AS attribs,
	   'row' AS alias,
	   true AS ativo, 
	   'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF';

INSERT INTO basico_formulario.decorator (id_categoria, id_componente, nome, constante_textual, attribs, alias, ativo, rowinfo)
SELECT c.id AS id_categoria,
	   (SELECT com.id 
		FROM basico.componente com
		LEFT JOIN basico.categoria c2 ON (com.id_categoria = c2.id)
		LEFT JOIN basico.tipo_categoria t2 ON (c2.id_tipo_categoria = t2.id)
		WHERE t2.nome = 'COMPONENTE'
		AND c2.nome = 'COMPONENTE_DECORATOR_HTML_ZF'
		AND com.nome = 'ZF_Decorator_HtmlTag') AS id_componente,
	   'FORM_FIELD_DIV_WIDTH_300PX' AS nome, 
	   'NOME_DECORATOR_FORM_FIELD_DIV_WIDTH_300PX' AS constante_textual,
	   'array(''tag'' => ''div'', ''style'' => ''width: 300px;'')' AS attribs,
	   'row' AS alias,
	   true AS ativo, 
	   'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF';