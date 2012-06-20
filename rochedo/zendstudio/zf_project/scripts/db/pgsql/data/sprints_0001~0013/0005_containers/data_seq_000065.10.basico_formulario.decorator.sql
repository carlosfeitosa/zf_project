/**
* SCRIPT DE POPULACAO DA TABELA basico_formulario.decorator
* 
* Esta tabela funciona como um banco de dados de decorators.
* 
* versao: 1.0 (POSTGRESQL 9.1.1)
* por: JOÃO VASCONCELOS (joao.vasconcelos@rochedoframework.com)
* criacao: 02/02/2012
* ultimas modificacoes: 20/06/2012 - Criação do script de insert do decorator AjaxForm (João Vasconcelos)
* 								
*/

INSERT INTO basico_formulario.decorator (id_categoria, nome, constante_textual, ativo, decorator, rowinfo)
SELECT c.id AS id_categoria, 'DECORATOR_AJAX_FORM' AS nome, 'DECORATOR_AJAX_FORM' AS constante_textual,
	   true AS ativo,
       '''AjaxForm''' AS decorator, 
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_DECORATOR';

INSERT INTO basico_formulario.decorator (id_categoria, nome, constante_textual, ativo, decorator, rowinfo)
SELECT c.id AS id_categoria, 'DECORATOR_FORM_SUBMIT' AS nome, 'DECORATOR_FORM_SUBMIT' AS constante_textual,
	   true AS ativo,
       '''FormElements'', array(''HtmlTag'', array(''tag'' => ''dl'')), array(''DijitForm'')' AS decorator, 
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_DECORATOR';

INSERT INTO basico_formulario.decorator (id_categoria, nome, constante_textual, ativo, decorator, rowinfo)
SELECT c.id AS id_categoria, 'DECORATOR_FORM_LABEL_ESCAPE' AS nome,
'DECORATOR_FORM_LABEL_ESCAPE' AS constante_textual,
true AS ativo,
'''Label'', array(''escape'' => false, ''disableFor'' => true)' AS decorator, 
'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_DECORATOR';

INSERT INTO basico_formulario.decorator (id_categoria, nome, constante_textual, ativo, decorator, rowinfo)
SELECT c.id AS id_categoria, 'DECORATOR_FORM_LABEL_ESCAPE_WRAP_LABEL_RIGHT' AS nome,
'DECORATOR_FORM_LABEL_ESCAPE_WRAP_LABEL_RIGHT' AS constante_textual,
true AS ativo,
'''Label'', array(''escape'' => false, ''disableFor'' => true, ''placement'' => ''append'')' AS decorator, 
'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_DECORATOR';

INSERT INTO basico_formulario.decorator (id_categoria, nome, constante_textual, ativo, decorator, rowinfo)
SELECT c.id AS id_categoria, 'DECORATOR_FORM_TAB_CONTAINER1' AS nome,
'DECORATOR_FORM_TAB_CONTAINER1' AS constante_textual,
true AS ativo,
       '''FormElements'',
                array(''TabContainer'', array(''id'' => ''TabContainer'', ''style'' => ''width: 850px; height: 430px; top: 10px; position: relative; z-index: 3;'',
                      ''dijitParams'' => array(''tabPosition'' => ''top''),))' AS decorator, 
                      'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_TAB_CONTAINER1_DECORATOR';

INSERT INTO basico_formulario.decorator (id_categoria, nome, constante_textual, ativo, decorator, rowinfo)
SELECT c.id AS id_categoria, 'DECORATOR_FORM_ACCORDION_CONTAINER1' AS nome,
'DECORATOR_FORM_ACCORDION_CONTAINER1' AS constante_textual,
true AS ativo,
       '''FormElements'',
                array(''AccordionContainer'', array(''id'' => ''AccordionContainer'', ''style'' => ''width: 850px; height: 430px; position: relative; z-index: 3;'',
                      )),' AS decorator, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ACCORDEON_CONTAINER1_DECORATOR';

INSERT INTO basico_formulario.decorator (id_categoria, nome, constante_textual, ativo, decorator, rowinfo)
SELECT c.id AS id_categoria, 'DECORATOR_FORM_CONTENT_PANE1' AS nome,
'DECORATOR_FORM_CONTENT_PANE1' AS constante_textual,
true AS ativo,
       '''FormElements'',
                array(''ContentPane'', array(''id'' => ''ContentPane'', ''style'' => ''width: 850px; height: 430px; position: relative; z-index: 3;'',
                      )),' AS decorator, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_CONTENT_PANE1_DECORATOR';

INSERT INTO basico_formulario.decorator (id_categoria, nome, constante_textual, ativo, decorator, rowinfo)
SELECT c.id AS id_categoria, 'DECORATOR_SUBFORM_CONTENT_PANE1' AS nome,
'DECORATOR_SUBFORM_CONTENT_PANE1' AS constante_textual,
true AS ativo,
       '''DijitElement'',
                array(''ContentPane'', array(''id'' => ''@nomeElemento'', ''title'' => ''@tituloContentPane'',
                      )),' AS decorator, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_SUB_FORMULARIO_CONTENT_PANE1_DECORATOR';

INSERT INTO basico_formulario.decorator (id_categoria, nome, constante_textual, ativo, decorator, rowinfo)
SELECT c.id AS id_categoria, 'DECORATOR_FORM_FIELD_DIV' AS nome,
'DECORATOR_FORM_FIELD_DIV' AS constante_textual,
true AS ativo,
       'array(''row'' => ''HtmlTag''), array(''tag'' => ''div'')' AS decorator, 
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_DIV_DECORATOR';

INSERT INTO basico_formulario.decorator (id_categoria, nome, constante_textual, ativo, decorator, rowinfo)
SELECT c.id AS id_categoria, 'DECORATOR_FORM_FIELD_DIV_MARGIN_RIGHT_10PX' AS nome,
'DECORATOR_FORM_FIELD_DIV_MARGIN_RIGHT_10PX' AS constante_textual,
true AS ativo,
       'array(''row'' => ''HtmlTag''), array(''tag'' => ''div'', ''id'' => ''margin-right10px'')' AS decorator, 
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_DIV_DECORATOR';

INSERT INTO basico_formulario.decorator (id_categoria, nome, constante_textual, ativo, decorator, rowinfo)
SELECT c.id AS id_categoria, 'DECORATOR_FORM_FIELD_DIV_WIDTH_100PERCENT_CLEAR_BOTH' AS nome,
'DECORATOR_FORM_FIELD_DIV_WIDTH_100PERCENT_CLEAR_BOTH' AS constante_textual,
true AS ativo,
       'array(''row'' => ''HtmlTag''), array(''tag'' => ''div'', ''id'' => ''width100percent-clear-both'')' AS decorator, 
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_DIV_WIDTH_100PERCENT_CLEAR_BOTH_DECORATOR';

INSERT INTO basico_formulario.decorator (id_categoria, nome, constante_textual, ativo, decorator, rowinfo)
SELECT c.id AS id_categoria, 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT' AS nome,
'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT' AS constante_textual,
true AS ativo,
       'array(''row'' => ''HtmlTag''), array(''tag'' => ''div'', ''id'' => ''float-right'',)' AS decorator, 
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_DECORATOR';

INSERT INTO basico_formulario.decorator (id_categoria, nome, constante_textual, ativo, decorator, rowinfo)
SELECT c.id AS id_categoria, 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT_CLEAR_BOTH' AS nome,
'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT_CLEAR_BOTH' AS constante_textual,
true AS ativo,
       'array(''row'' => ''HtmlTag''), array(''tag'' => ''div'', ''id'' => ''float-right-clear-both'',)' AS decorator, 
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_CLEAR_BOTH_DECORATOR';

INSERT INTO basico_formulario.decorator (id_categoria, nome, constante_textual, ativo, decorator, rowinfo)
SELECT c.id AS id_categoria, 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT_MARGIN_RIGHT_10px' AS nome,
'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT_MARGIN_RIGHT_10px' AS constante_textual,
true AS ativo,
       'array(''row'' => ''HtmlTag''), array(''tag'' => ''div'', ''id'' => ''float-right-margin-right10px'',)' AS decorator, 
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_DECORATOR';

INSERT INTO basico_formulario.decorator (id_categoria, nome, constante_textual, ativo, decorator, rowinfo)
SELECT c.id AS id_categoria, 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_MARGIN_RIGHT_10PX' AS nome,
'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_MARGIN_RIGHT_10PX' AS constante_textual,
true AS ativo,
       'array(''row'' => ''HtmlTag''), array(''tag'' => ''div'', ''id'' => ''float-left-margin-right10px'',)' AS decorator, 
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR';

INSERT INTO basico_formulario.decorator (id_categoria, nome, constante_textual, ativo, decorator, rowinfo)
SELECT c.id AS id_categoria, 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT' AS nome,
'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT' AS constante_textual,
true AS ativo,
       'array(''row'' => ''HtmlTag''), array(''tag'' => ''div'', ''id'' => ''float-left'',)' AS decorator, 
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR';

INSERT INTO basico_formulario.decorator (id_categoria, nome, constante_textual, ativo, decorator, rowinfo)
SELECT c.id AS id_categoria, 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH_MARGIN_RIGHT_10PX' AS nome,
'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH_MARGIN_RIGHT_10PX' AS constante_textual,
true AS ativo,
       'array(''row'' => ''HtmlTag''), array(''tag'' => ''div'', ''id'' => ''float-left-clear-both-margin-right10px'',)' AS decorator, 
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR';

INSERT INTO basico_formulario.decorator (id_categoria, nome, constante_textual, ativo, decorator, rowinfo)
SELECT c.id AS id_categoria, 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH' AS nome,
'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH' AS constante_textual,
true AS ativo,
       'array(''row'' => ''HtmlTag''), array(''tag'' => ''div'', ''id'' => ''float-left-clear-both'',)' AS decorator, 
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR';

INSERT INTO basico_formulario.decorator (id_categoria, nome, constante_textual, ativo, decorator, rowinfo)
SELECT c.id AS id_categoria, 'DECORATOR_FORM_FIELD_DIV_CLEAR_BOTH' AS nome,
'DECORATOR_FORM_FIELD_DIV_CLEAR_BOTH' AS constante_textual,
true AS ativo,
       'array(''row'' => ''HtmlTag''), array(''tag'' => ''div'', ''id'' => ''clear-both'',)' AS decorator, 
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_DIV_CLEAR_BOTH_DECORATOR';

INSERT INTO basico_formulario.decorator (id_categoria, nome, constante_textual, ativo, decorator, rowinfo)
SELECT c.id AS id_categoria, 'DECORATOR_FORM_FIELD_DIV_WIDTH_300PX' AS nome,
'DECORATOR_FORM_FIELD_DIV_WIDTH_300PX' AS constante_textual,
true AS ativo,
       'array(''row'' => ''HtmlTag''), array(''tag'' => ''div'', ''style'' => ''width: 300px;'',)' AS decorator, 
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_DIV_WIDTH';