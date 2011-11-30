/*
* SCRIPT DE POPULACAO DAS TABELAS
* 
* versao: 1.0 (POSTGRESQL 8.4.1)
* por: ADRIANO DUPRAT LEMOS (adriano.lemos@rochedoproject.com)
* criacao: 20/10/2010
* ultimas modificacoes:
* 							22/10/2010 - criacao do decorator FORMULARIO_SUB_FORMULARIO_CONTENT_PANE1_DECORATOR;
* 							30/11/2010 - criacao do decorator DECORATOR_FORM_FIELD_DIV_WIDTH_300PX;
* 							15/07/2011 - criacao do decorator DECORATOR_FORM_SUBMIT_AJAX;
* 							04/08/2011 - remoção do decorator DECORATOR_FORM_SUBMIT_AJAX;
*  
*/

/* DECORATOR */

INSERT INTO decorator (id_categoria, nome, descricao, decorator, rowinfo)
SELECT c.id AS id_categoria, 'DECORATOR_FORM_SUBMIT' AS nome, 'Decorator para submissão de formulários.' AS descricao,
       '''FormElements'', array(''HtmlTag'', array(''tag'' => ''dl'')), array(''DijitForm'')' AS decorator, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_DECORATOR';

INSERT INTO decorator (id_categoria, nome, descricao, decorator, rowinfo)
SELECT c.id AS id_categoria, 'DECORATOR_FORM_LABEL_ESCAPE' AS nome, 'Decorator que permite escapar tags html dentro de um label de um campo no formulários.' AS descricao,
       '''Label'', array(''escape'' => false, ''disableFor'' => true)' AS decorator, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_DECORATOR';

INSERT INTO decorator (id_categoria, nome, descricao, decorator, rowinfo)
SELECT c.id AS id_categoria, 'DECORATOR_FORM_LABEL_ESCAPE_WRAP_LABEL_RIGHT' AS nome, 'Decorator que permite escapar tags html dentro de um label de um campo no formulários.' AS descricao,
       '''Label'', array(''escape'' => false, ''disableFor'' => true, ''placement'' => ''append'')' AS decorator, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_DECORATOR';

INSERT INTO decorator (id_categoria, nome, descricao, decorator, rowinfo)
SELECT c.id AS id_categoria, 'DECORATOR_FORM_TAB_CONTAINER1' AS nome, 'Decorator para submissão de sub-formulários (em formato Abas).' AS descricao,
       '''FormElements'',
                array(''TabContainer'', array(''id'' => ''TabContainer'', ''style'' => ''width: 850px; height: 430px; top: 10px; position: relative; z-index: 3;'',
                      ''dijitParams'' => array(''tabPosition'' => ''top''),))' AS decorator, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_TAB_CONTAINER1_DECORATOR';

INSERT INTO decorator (id_categoria, nome, descricao, decorator, rowinfo)
SELECT c.id AS id_categoria, 'DECORATOR_FORM_ACCORDION_CONTAINER1' AS nome, 'Decorator para submissão de sub-formulários (em formato Acordeon).' AS descricao,
       '''FormElements'',
                array(''AccordionContainer'', array(''id'' => ''AccordionContainer'', ''style'' => ''width: 850px; height: 430px; position: relative; z-index: 3;'',
                      )),' AS decorator, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ACCORDEON_CONTAINER1_DECORATOR';

INSERT INTO decorator (id_categoria, nome, descricao, decorator, rowinfo)
SELECT c.id AS id_categoria, 'DECORATOR_FORM_CONTENT_PANE1' AS nome, 'Decorator para conteudo de containers.' AS descricao,
       '''FormElements'',
                array(''ContentPane'', array(''id'' => ''ContentPane'', ''style'' => ''width: 850px; height: 430px; position: relative; z-index: 3;'',
                      )),' AS decorator, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_CONTENT_PANE1_DECORATOR';

INSERT INTO decorator (id_categoria, nome, descricao, decorator, rowinfo)
SELECT c.id AS id_categoria, 'DECORATOR_SUBFORM_CONTENT_PANE1' AS nome, 'Decorator para conteudo de containers dentro de subforms.' AS descricao,
       '''DijitElement'',
                array(''ContentPane'', array(''id'' => ''@nomeElemento'', ''title'' => ''@tituloContentPane'',
                      )),' AS decorator, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_SUB_FORMULARIO_CONTENT_PANE1_DECORATOR';

INSERT INTO decorator (id_categoria, nome, descricao, decorator, rowinfo)
SELECT c.id AS id_categoria, 'DECORATOR_FORM_FIELD_DIV' AS nome, 'Decorator para posicionar o elemento dentro de um div.' AS descricao,
       'array(''row'' => ''HtmlTag''), array(''tag'' => ''div'')' AS decorator, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_DIV_DECORATOR';

INSERT INTO decorator (id_categoria, nome, descricao, decorator, rowinfo)
SELECT c.id AS id_categoria, 'DECORATOR_FORM_FIELD_DIV_MARGIN_RIGHT_10PX' AS nome, 'Decorator para posicionar o elemento dentro de um div.' AS descricao,
       'array(''row'' => ''HtmlTag''), array(''tag'' => ''div'', ''id'' => ''margin-right10px'')' AS decorator, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_DIV_DECORATOR';

INSERT INTO decorator (id_categoria, nome, descricao, decorator, rowinfo)
SELECT c.id AS id_categoria, 'DECORATOR_FORM_FIELD_DIV_WIDTH_100PERCENT_CLEAR_BOTH' AS nome, 'Decorator para posicionar o elemento dentro de um div width 100%.' AS descricao,
       'array(''row'' => ''HtmlTag''), array(''tag'' => ''div'', ''id'' => ''width100percent-clear-both'')' AS decorator, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_DIV_WIDTH_100PERCENT_CLEAR_BOTH_DECORATOR';

INSERT INTO decorator (id_categoria, nome, descricao, decorator, rowinfo)
SELECT c.id AS id_categoria, 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT' AS nome, 'Decorator para posicionar o elemento dentro de um div float right.' AS descricao,
       'array(''row'' => ''HtmlTag''), array(''tag'' => ''div'', ''id'' => ''float-right'',)' AS decorator, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_DECORATOR';

INSERT INTO decorator (id_categoria, nome, descricao, decorator, rowinfo)
SELECT c.id AS id_categoria, 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT_CLEAR_BOTH' AS nome, 'Decorator para posicionar o elemento dentro de um div float right clear both.' AS descricao,
       'array(''row'' => ''HtmlTag''), array(''tag'' => ''div'', ''id'' => ''float-right-clear-both'',)' AS decorator, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_CLEAR_BOTH_DECORATOR';

INSERT INTO decorator (id_categoria, nome, descricao, decorator, rowinfo)
SELECT c.id AS id_categoria, 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT_MARGIN_RIGHT_10px' AS nome, 'Decorator para posicionar o elemento dentro de um div float right margin right 10px.' AS descricao,
       'array(''row'' => ''HtmlTag''), array(''tag'' => ''div'', ''id'' => ''float-right-margin-right10px'',)' AS decorator, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_DECORATOR';

INSERT INTO decorator (id_categoria, nome, descricao, decorator, rowinfo)
SELECT c.id AS id_categoria, 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_MARGIN_RIGHT_10PX' AS nome, 'Decorator para posicionar o elemento dentro de um div float left.' AS descricao,
       'array(''row'' => ''HtmlTag''), array(''tag'' => ''div'', ''id'' => ''float-left-margin-right10px'',)' AS decorator, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR';

INSERT INTO decorator (id_categoria, nome, descricao, decorator, rowinfo)
SELECT c.id AS id_categoria, 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT' AS nome, 'Decorator para posicionar o elemento dentro de um div float left.' AS descricao,
       'array(''row'' => ''HtmlTag''), array(''tag'' => ''div'', ''id'' => ''float-left'',)' AS decorator, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR';

INSERT INTO decorator (id_categoria, nome, descricao, decorator, rowinfo)
SELECT c.id AS id_categoria, 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH_MARGIN_RIGHT_10PX' AS nome, 'Decorator para posicionar o elemento dentro de um div float left.' AS descricao,
       'array(''row'' => ''HtmlTag''), array(''tag'' => ''div'', ''id'' => ''float-left-clear-both-margin-right10px'',)' AS decorator, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR';

INSERT INTO decorator (id_categoria, nome, descricao, decorator, rowinfo)
SELECT c.id AS id_categoria, 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH' AS nome, 'Decorator para posicionar o elemento dentro de um div float left.' AS descricao,
       'array(''row'' => ''HtmlTag''), array(''tag'' => ''div'', ''id'' => ''float-left-clear-both'',)' AS decorator, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR';

INSERT INTO decorator (id_categoria, nome, descricao, decorator, rowinfo)
SELECT c.id AS id_categoria, 'DECORATOR_FORM_FIELD_DIV_CLEAR_BOTH' AS nome, 'Decorator para posicionar o elemento dentro de um div e limpar o float.' AS descricao,
       'array(''row'' => ''HtmlTag''), array(''tag'' => ''div'', ''id'' => ''clear-both'',)' AS decorator, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_DIV_CLEAR_BOTH_DECORATOR';

INSERT INTO decorator (id_categoria, nome, descricao, decorator, rowinfo)
SELECT c.id AS id_categoria, 'DECORATOR_FORM_FIELD_DIV_WIDTH_300PX' AS nome, 'Decorator para posicionar o elemento dentro de um div com 300px de largura.' AS descricao,
       'array(''row'' => ''HtmlTag''), array(''tag'' => ''div'', ''style'' => ''width: 300px;'',)' AS decorator, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_DIV_WIDTH';