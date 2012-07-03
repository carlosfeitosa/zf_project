/*
* SCRIPT DE POPULACAO DAS TABELAS
* 
* versao: 1.0 (POSTGRESQL 8.4.1)
* por: ADRIANO DUPRAT LEMOS (adriano.lemos@rochedoproject.com)
* criacao: 20/10/2010
* ultimas modificacoes:
* 
* 											05/09/2011 - criacao do componente JavaScript;
*											30/11/2011 - adaptação para novo modelo de banco de dados (Modularizado atraves de schemas) - João Vasconcelos;
*											02/02/2012 - inclusão das constantes textuais para os nomes - Igor Pinho.;
*											16/06/2012 - adição da categoria pai da categoria do componente;
*													   - adição dos componentes dos formulários;
*  
*/

/* COMPONENTE */


INSERT INTO basico.componente (id_categoria, nome, constante_textual, constante_textual_descricao, componente, ativo, rowinfo)
SELECT c.id AS id_categoria, 'ZF_Form' AS nome, 'NOME_ZF_FORM' AS constante_textual, 'DESCRICAO_ZF_FORM' AS constante_textual_descricao,
	   'Zend_Form' AS componente, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
LEFT JOIN basico.categoria cpai on (c.id_categoria_pai = cpai.id)
WHERE t.nome = 'COMPONENTE'
AND cpai.nome = 'COMPONENTE_HTML'
AND c.nome = 'COMPONENTE_ZF';

INSERT INTO basico.componente (id_categoria, nome, constante_textual, constante_textual_descricao, componente, ativo, rowinfo)
SELECT c.id AS id_categoria, 'ZF_Form_SubForm' AS nome, 'NOME_ZF_FORM_SUBFORM' AS constante_textual, 'DESCRICAO_ZF_FORM_SUBFORM' AS constante_textual_descricao,
	   'Zend_Form_SubForm' AS componente, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
LEFT JOIN basico.categoria cpai on (c.id_categoria_pai = cpai.id)
WHERE t.nome = 'COMPONENTE'
AND cpai.nome = 'COMPONENTE_HTML'
AND c.nome = 'COMPONENTE_ZF';

INSERT INTO basico.componente (id_categoria, nome, constante_textual, constante_textual_descricao, componente, ativo, rowinfo)
SELECT c.id AS id_categoria, 'DOJO_Form' AS nome, 'NOME_DOJO_FORM' AS constante_textual, 'DESCRICAO_DOJO_FORM' AS constante_textual_descricao,
	   'Zend_Dojo_Form' AS componente, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
LEFT JOIN basico.categoria cpai on (c.id_categoria_pai = cpai.id)
WHERE t.nome = 'COMPONENTE'
AND cpai.nome = 'COMPONENTE_HTML_JAVASCRIPT'
AND c.nome = 'COMPONENTE_DOJO';

INSERT INTO basico.componente (id_categoria, nome, constante_textual, constante_textual_descricao, componente, ativo, rowinfo)
SELECT c.id AS id_categoria, 'DOJO_Form_SubForm' AS nome, 'NOME_DOJO_FORM_SUBFORM' AS constante_textual, 'DESCRICAO_DOJO_FORM_SUBFORM' AS constante_textual_descricao,
	   'Zend_Dojo_Form_SubForm' AS componente, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
LEFT JOIN basico.categoria cpai on (c.id_categoria_pai = cpai.id)
WHERE t.nome = 'COMPONENTE'
AND cpai.nome = 'COMPONENTE_HTML_JAVASCRIPT'
AND c.nome = 'COMPONENTE_DOJO';

INSERT INTO basico.componente (id_categoria, nome, constante_textual, constante_textual_descricao, componente, ativo, rowinfo)
SELECT c.id AS id_categoria, 'DOJO_PasswordTextBox' AS nome, 'NOME_DOJO_PASSWORD_TEXTBOX' AS constante_textual, 'DESCRICAO_DOJO_PASSWORD_TEXTBOX' AS constante_textual_descricao,
	   'PasswordTextBox' AS componente, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
LEFT JOIN basico.categoria cpai on (c.id_categoria_pai = cpai.id)
WHERE t.nome = 'COMPONENTE'
AND cpai.nome = 'COMPONENTE_HTML_JAVASCRIPT'
AND c.nome = 'COMPONENTE_DOJO';

INSERT INTO basico.componente (id_categoria, id_template, nome, constante_textual, constante_textual_descricao, componente, ativo, rowinfo)
SELECT c.id AS id_categoria, 
(SELECT tp.id
 FROM basico.template tp
 LEFT JOIN basico.categoria ct ON ct.id = tp.id_categoria
 WHERE ct.nome = 'FORMULARIO_TEMPLATE'
 AND tp.nome = 'TEMPLATE_PASSWORD_STRENGTH_CHECKER') AS id_template,
'DOJO_PasswordTextBox_With_Checker' AS nome, 'NOME_DOJO_PASSWORD_TEXTBOX_WITH_CHECKER' AS constante_textual, 'DESCRICAO_DOJO_PASSWORD_TEXTBOX_WITH_CHECKER' AS constante_textual_descricao,
'PasswordTextBox' AS componente, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
LEFT JOIN basico.categoria cpai on (c.id_categoria_pai = cpai.id)
WHERE t.nome = 'COMPONENTE'
AND cpai.nome = 'COMPONENTE_HTML_JAVASCRIPT'
AND c.nome = 'COMPONENTE_AJAXTERCEIROS';

INSERT INTO basico.componente (id_categoria, nome, constante_textual, constante_textual_descricao, componente, ativo, rowinfo)
SELECT c.id AS id_categoria, 'DOJO_RadioButton' AS nome, 'NOME_DOJO_RADIOBUTTON' AS constante_textual, 'DESCRICAO_DOJO_RADIOBUTTON' AS constante_textual_descricao,
	   'RadioButton' AS componente, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
LEFT JOIN basico.categoria cpai on (c.id_categoria_pai = cpai.id)
WHERE t.nome = 'COMPONENTE'
AND cpai.nome = 'COMPONENTE_HTML_JAVASCRIPT'
AND c.nome = 'COMPONENTE_DOJO';

INSERT INTO basico.componente (id_categoria, nome, constante_textual, constante_textual_descricao, componente, ativo, rowinfo)
SELECT c.id AS id_categoria, 'ZF_Hidden' AS nome, 'NOME_ZF_HIDDEN' AS constante_textual, 'DESCRICAO_ZF_HIDDEN' AS constante_textual_descricao,
	   'Hidden' AS componente, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
LEFT JOIN basico.categoria cpai on (c.id_categoria_pai = cpai.id)
WHERE t.nome = 'COMPONENTE'
AND cpai.nome = 'COMPONENTE_HTML'
AND c.nome = 'COMPONENTE_ZF';
		
INSERT INTO basico.componente (id_categoria, nome, constante_textual, constante_textual_descricao, componente, ativo, rowinfo)
SELECT c.id AS id_categoria, 'DOJO_ValidationTextBox' AS nome, 'NOME_DOJO_VALIDATION_TEXTBOX' AS constante_textual, 'DESCRICAO_DOJO_VALIDATION_TEXTBOX' AS constante_textual_descricao,
	   'ValidationTextBox' AS componente, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
LEFT JOIN basico.categoria cpai on (c.id_categoria_pai = cpai.id)
WHERE t.nome = 'COMPONENTE'
AND cpai.nome = 'COMPONENTE_HTML_JAVASCRIPT'
AND c.nome = 'COMPONENTE_DOJO';

INSERT INTO basico.componente (id_categoria, nome, constante_textual, constante_textual_descricao, componente, ativo, rowinfo)
SELECT c.id AS id_categoria, 'DOJO_submitButton' AS nome, 'NOME_DOJO_SUBMIT_BUTTON' AS constante_textual, 'DESCRICAO_DOJO_SUBMIT_BUTTON' AS constante_textual_descricao,
	   'SubmitButton' AS componente, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
LEFT JOIN basico.categoria cpai on (c.id_categoria_pai = cpai.id)
WHERE t.nome = 'COMPONENTE'
AND cpai.nome = 'COMPONENTE_HTML_JAVASCRIPT'
AND c.nome = 'COMPONENTE_DOJO';

INSERT INTO basico.componente (id_categoria, nome, constante_textual, constante_textual_descricao, componente, ativo, rowinfo)
SELECT c.id AS id_categoria, 'ZF_button' AS nome, 'NOME_ZF_BUTTON' AS constante_textual, 'DESCRICAO_ZF_BUTTON' AS constante_textual_descricao,
	   'Button' AS componente, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
LEFT JOIN basico.categoria cpai on (c.id_categoria_pai = cpai.id)
WHERE t.nome = 'COMPONENTE'
AND cpai.nome = 'COMPONENTE_HTML'
AND c.nome = 'COMPONENTE_ZF';

INSERT INTO basico.componente(id_categoria, nome, constante_textual, constante_textual_descricao, componente, ativo, rowinfo)
SELECT c.id, 'DOJO_FilteringSelect' AS nome, 'NOME_DOJO_FILTERING_SELECT' AS constante_textual, 'DESCRICAO_DOJO_FILTERING_SELECT' AS constante_textual_descricao, 
		'FilteringSelect' AS componente, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
LEFT JOIN basico.categoria cpai on (c.id_categoria_pai = cpai.id)
WHERE t.nome = 'COMPONENTE'
AND cpai.nome = 'COMPONENTE_HTML_JAVASCRIPT'
AND c.nome = 'COMPONENTE_DOJO';
		
INSERT INTO basico.componente(id_categoria, nome, constante_textual, constante_textual_descricao, componente, ativo, rowinfo)
SELECT c.id, 'ZF_MultiCheckbox' AS nome, 'NOME_ZF_MULTI_CHECKBOX' AS constante_textual, 'DESCRICAO_ZF_MULTI_CHECKBOX' AS constante_textual_descricao, 
		'MultiCheckbox' AS componente, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
LEFT JOIN basico.categoria cpai on (c.id_categoria_pai = cpai.id)
WHERE t.nome = 'COMPONENTE'
AND cpai.nome = 'COMPONENTE_HTML'
AND c.nome = 'COMPONENTE_ZF';

INSERT INTO basico.componente(id_categoria, nome, constante_textual, constante_textual_descricao, componente, ativo, rowinfo)
SELECT c.id, 'DOJO_CheckBox' AS nome, 'NOME_DOJO_CHECKBOX' AS constante_textual, 'DESCRICAO_DOJO_CHECKBOX' AS constante_textual_descricao, 
		'CheckBox' AS componente, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
LEFT JOIN basico.categoria cpai on (c.id_categoria_pai = cpai.id)
WHERE t.nome = 'COMPONENTE'
AND cpai.nome = 'COMPONENTE_HTML_JAVASCRIPT'
AND c.nome = 'COMPONENTE_DOJO';

INSERT INTO basico.componente(id_categoria, nome, constante_textual, constante_textual_descricao, componente, ativo, rowinfo)
SELECT c.id, 'DOJO_Textarea' AS nome, 'NOME_DOJO_TEXTAREA' AS constante_textual, 'DESCRICAO_DOJO_TEXTAREA' AS constante_textual_descricao, 
		'Textarea' AS componente, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
LEFT JOIN basico.categoria cpai on (c.id_categoria_pai = cpai.id)
WHERE t.nome = 'COMPONENTE'
AND cpai.nome = 'COMPONENTE_HTML_JAVASCRIPT'
AND c.nome = 'COMPONENTE_DOJO';

INSERT INTO basico.componente(id_categoria, nome, constante_textual, constante_textual_descricao, componente, ativo, rowinfo)
SELECT c.id, 'DOJO_SimpleTextarea' AS nome, 'NOME_DOJO_SIMPLE_TEXTAREA' AS constante_textual, 'DESCRICAO_DOJO_SIMPLE_TEXTAREA' AS constante_textual_descricao, 
		'SimpleTextarea' AS componente, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
LEFT JOIN basico.categoria cpai on (c.id_categoria_pai = cpai.id)
WHERE t.nome = 'COMPONENTE'
AND cpai.nome = 'COMPONENTE_HTML_JAVASCRIPT'
AND c.nome = 'COMPONENTE_DOJO';

INSERT INTO basico.componente(id_categoria, nome, constante_textual, constante_textual_descricao, componente, ativo, rowinfo)
SELECT c.id, 'DOJO_DateTextBox' AS nome, 'NOME_DOJO_DATE_TEXTBOX' AS constante_textual, 'DESCRICAO_DOJO_DATE_TEXTBOX' AS constante_textual_descricao, 
		'DateTextBox' AS componente, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
LEFT JOIN basico.categoria cpai on (c.id_categoria_pai = cpai.id)
WHERE t.nome = 'COMPONENTE'
AND cpai.nome = 'COMPONENTE_HTML_JAVASCRIPT'
AND c.nome = 'COMPONENTE_DOJO';

INSERT INTO basico.componente(id_categoria, nome, constante_textual, constante_textual_descricao, componente, ativo, rowinfo)
SELECT c.id, 'DOJO_NumberTextBox' AS nome, 'NOME_DOJO_NUMBER_TEXTBOX' AS constante_textual, 'DESCRICAO_DOJO_NUMBER_TEXTBOX' AS constante_textual_descricao, 
		'NumberTextBox' AS componente, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
LEFT JOIN basico.categoria cpai on (c.id_categoria_pai = cpai.id)
WHERE t.nome = 'COMPONENTE'
AND cpai.nome = 'COMPONENTE_HTML_JAVASCRIPT'
AND c.nome = 'COMPONENTE_DOJO';

INSERT INTO basico.componente(id_categoria, nome, constante_textual, constante_textual_descricao, componente, ativo, rowinfo)
SELECT c.id, 'DOJO_CurrencyTextBox' AS nome, 'NOME_DOJO_CURRENCY_TEXTBOX' AS constante_textual, 'DESCRICAO_DOJO_CURRENCY_TEXTBOX' AS constante_textual_descricao, 
		'CurrencyTextBox' AS componente, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
LEFT JOIN basico.categoria cpai on (c.id_categoria_pai = cpai.id)
WHERE t.nome = 'COMPONENTE'
AND cpai.nome = 'COMPONENTE_HTML_JAVASCRIPT'
AND c.nome = 'COMPONENTE_DOJO';

INSERT INTO basico.componente (id_categoria, nome, constante_textual, constante_textual_descricao, componente, ativo, rowinfo)
SELECT c.id AS id_categoria, 'ZF_captcha' AS nome, 'NOME_ZF_CAPTCHA' AS constante_textual, 'DESCRICAO_ZF_CAPTCHA' AS constante_textual_descricao,
	   'Captcha' AS componente, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
LEFT JOIN basico.categoria cpai on (c.id_categoria_pai = cpai.id)
WHERE t.nome = 'COMPONENTE'
AND cpai.nome = 'COMPONENTE_HTML'
AND c.nome = 'COMPONENTE_ZF';

INSERT INTO basico.componente (id_categoria, nome, constante_textual, constante_textual_descricao, componente, ativo, rowinfo)
SELECT c.id AS id_categoria, 'ZF_hash' AS nome, 'NOME_ZF_HASH' AS constante_textual, 'DESCRICAO_ZF_HASH' AS constante_textual_descricao,
	   'Hash' AS componente, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
LEFT JOIN basico.categoria cpai on (c.id_categoria_pai = cpai.id)
WHERE t.nome = 'COMPONENTE'
AND cpai.nome = 'COMPONENTE_HTML'
AND c.nome = 'COMPONENTE_ZF';

INSERT INTO basico.componente (id_categoria, nome, constante_textual, constante_textual_descricao, componente, ativo, rowinfo)
SELECT c.id AS id_categoria, 'ROCHEDO_html' AS nome, 'NOME_ROCHEDO_HTML' AS constante_textual, 'DESCRICAO_ROCHEDO_HTML' AS constante_textual_descricao,
	   'Html' AS componente, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
LEFT JOIN basico.categoria cpai on (c.id_categoria_pai = cpai.id)
WHERE t.nome = 'COMPONENTE'
AND cpai.nome = 'COMPONENTE_HTML'
AND c.nome = 'COMPONENTE_ROCHEDO';

INSERT INTO basico.componente (id_categoria, nome, constante_textual, constante_textual_descricao, componente, ativo, rowinfo)
SELECT c.id AS id_categoria, 'ROCHEDO_javascript' AS nome, 'NOME_ROCHEDO_JAVASCRIPT' AS constante_textual, 'DESCRICAO_ROCHEDO_JAVASCRIPT' AS constante_textual_descricao,
	   'JavaScript' AS componente, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
LEFT JOIN basico.categoria cpai on (c.id_categoria_pai = cpai.id)
WHERE t.nome = 'COMPONENTE'
AND cpai.nome = 'COMPONENTE_HTML_JAVASCRIPT'
AND c.nome = 'COMPONENTE_ROCHEDO';

INSERT INTO basico.componente (id_categoria, nome, constante_textual, constante_textual_descricao, componente, ativo, rowinfo)
SELECT c.id AS id_categoria, 'ROCHEDO_Decorator_AjaxForm' AS nome, 'NOME_ROCHEDO_DECORATOR_AJAX_FORM' AS constante_textual, 'DESCRICAO_ROCHEDO_DECORATOR_AJAX_FORM' AS constante_textual_descricao,
	   'AjaxForm' AS componente, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
LEFT JOIN basico.categoria cpai on (c.id_categoria_pai = cpai.id)
WHERE t.nome = 'COMPONENTE'
AND cpai.nome = 'COMPONENTE_DECORATOR_JAVASCRIPT'
AND c.nome = 'COMPONENTE_DECORATOR_JAVASCRIPT_ROCHEDO';

INSERT INTO basico.componente (id_categoria, nome, constante_textual, constante_textual_descricao, componente, ativo, rowinfo)
SELECT c.id AS id_categoria, 'ZF_Decorator_FormElements' AS nome, 'NOME_ZF_DECORATOR_FORM_ELEMENTS' AS constante_textual, 'DESCRICAO_ZF_DECORATOR_FORM_ELEMENTS' AS constante_textual_descricao,
	   'FormElements' AS componente, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
LEFT JOIN basico.categoria cpai on (c.id_categoria_pai = cpai.id)
WHERE t.nome = 'COMPONENTE'
AND cpai.nome = 'COMPONENTE_DECORATOR_HTML'
AND c.nome = 'COMPONENTE_DECORATOR_HTML_ZF';

INSERT INTO basico.componente (id_categoria, nome, constante_textual, constante_textual_descricao, componente, ativo, rowinfo)
SELECT c.id AS id_categoria, 'ZF_Decorator_HtmlTag' AS nome, 'NOME_ZF_DECORATOR_HTML_TAG' AS constante_textual, 'DESCRICAO_ZF_DECORATOR_HTML_TAG' AS constante_textual_descricao,
	   'HtmlTag' AS componente, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
LEFT JOIN basico.categoria cpai on (c.id_categoria_pai = cpai.id)
WHERE t.nome = 'COMPONENTE'
AND cpai.nome = 'COMPONENTE_DECORATOR_HTML'
AND c.nome = 'COMPONENTE_DECORATOR_HTML_ZF';

INSERT INTO basico.componente (id_categoria, nome, constante_textual, constante_textual_descricao, componente, ativo, rowinfo)
SELECT c.id AS id_categoria, 'DOJO_Decorator_DijitForm' AS nome, 'NOME_DOJO_DECORATOR_DIJIT_FORM' AS constante_textual, 'DESCRICAO_DOJO_DECORATOR_DIJIT_FORM' AS constante_textual_descricao,
	   'DijitForm' AS componente, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
LEFT JOIN basico.categoria cpai on (c.id_categoria_pai = cpai.id)
WHERE t.nome = 'COMPONENTE'
AND cpai.nome = 'COMPONENTE_DECORATOR_JAVASCRIPT'
AND c.nome = 'COMPONENTE_DECORATOR_JAVASCRIPT_DOJO';

INSERT INTO basico.componente (id_categoria, nome, constante_textual, constante_textual_descricao, componente, ativo, rowinfo)
SELECT c.id AS id_categoria, 'ZF_Decorator_Label' AS nome, 'NOME_ZF_DECORATOR_LABEL' AS constante_textual, 'DESCRICAO_ZF_DECORATOR_LABEL' AS constante_textual_descricao,
	   'Label' AS componente, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
LEFT JOIN basico.categoria cpai on (c.id_categoria_pai = cpai.id)
WHERE t.nome = 'COMPONENTE'
AND cpai.nome = 'COMPONENTE_DECORATOR_HTML'
AND c.nome = 'COMPONENTE_DECORATOR_HTML_ZF';

INSERT INTO basico.componente (id_categoria, nome, constante_textual, constante_textual_descricao, componente, ativo, rowinfo)
SELECT c.id AS id_categoria, 'DOJO_Decorator_DijitElement' AS nome, 'NOME_DOJO_DECORATOR_DIJIT_ELEMENT' AS constante_textual, 'DESCRICAO_DOJO_DECORATOR_DIJIT_ELEMENT' AS constante_textual_descricao,
	   'DijitElement' AS componente, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
LEFT JOIN basico.categoria cpai on (c.id_categoria_pai = cpai.id)
WHERE t.nome = 'COMPONENTE'
AND cpai.nome = 'COMPONENTE_DECORATOR_JAVASCRIPT'
AND c.nome = 'COMPONENTE_DECORATOR_JAVASCRIPT_DOJO';

INSERT INTO basico.componente (id_categoria, nome, constante_textual, constante_textual_descricao, componente, ativo, rowinfo)
SELECT c.id AS id_categoria, 'DOJO_Decorator_TabContainer' AS nome, 'NOME_DOJO_DECORATOR_TAB_CONTAINER' AS constante_textual, 'DESCRICAO_DOJO_DECORATOR_TAB_CONTAINER' AS constante_textual_descricao,
	   'TabContainer' AS componente, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
LEFT JOIN basico.categoria cpai on (c.id_categoria_pai = cpai.id)
WHERE t.nome = 'COMPONENTE'
AND cpai.nome = 'COMPONENTE_DECORATOR_JAVASCRIPT'
AND c.nome = 'COMPONENTE_DECORATOR_JAVASCRIPT_DOJO';

INSERT INTO basico.componente (id_categoria, nome, constante_textual, constante_textual_descricao, componente, ativo, rowinfo)
SELECT c.id AS id_categoria, 'DOJO_Decorator_AccordionContainer' AS nome, 'NOME_DOJO_DECORATOR_ACCORDION_CONTAINER' AS constante_textual, 'DESCRICAO_DOJO_DECORATOR_ACCORDION_CONTAINER' AS constante_textual_descricao,
	   'AccordionContainer' AS componente, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
LEFT JOIN basico.categoria cpai on (c.id_categoria_pai = cpai.id)
WHERE t.nome = 'COMPONENTE'
AND cpai.nome = 'COMPONENTE_DECORATOR_JAVASCRIPT'
AND c.nome = 'COMPONENTE_DECORATOR_JAVASCRIPT_DOJO';

INSERT INTO basico.componente (id_categoria, nome, constante_textual, constante_textual_descricao, componente, ativo, rowinfo)
SELECT c.id AS id_categoria, 'DOJO_Decorator_ContentPane' AS nome, 'NOME_DOJO_DECORATOR_CONTENT_PANE' AS constante_textual, 'DESCRICAO_DOJO_DECORATOR_CONTENT_PANE' AS constante_textual_descricao,
	   'ContentPane' AS componente, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
LEFT JOIN basico.categoria cpai on (c.id_categoria_pai = cpai.id)
WHERE t.nome = 'COMPONENTE'
AND cpai.nome = 'COMPONENTE_DECORATOR_JAVASCRIPT'
AND c.nome = 'COMPONENTE_DECORATOR_JAVASCRIPT_DOJO';

INSERT INTO basico.componente (id_categoria, nome, constante_textual, constante_textual_descricao, componente, ativo, rowinfo)
SELECT c.id AS id_categoria, 'ZF_Validator_Regex' AS nome, 'NOME_ZF_VALIDATOR_REGEX' AS constante_textual, 'DESCRICAO_ZF_VALIDATOR_REGEX' AS constante_textual_descricao,
	   'Regex' AS componente, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
LEFT JOIN basico.categoria cpai on (c.id_categoria_pai = cpai.id)
WHERE t.nome = 'COMPONENTE'
AND cpai.nome = 'COMPONENTE_VALIDATOR'
AND c.nome = 'COMPONENTE_VALIDATOR_ZF';

INSERT INTO basico.componente (id_categoria, nome, constante_textual, constante_textual_descricao, componente, ativo, rowinfo)
SELECT c.id AS id_categoria, 'ZF_Validator_Alnum' AS nome, 'NOME_ZF_VALIDATOR_ALNUM' AS constante_textual, 'DESCRICAO_ZF_VALIDATOR_ALNUM' AS constante_textual_descricao,
	   'Alnum' AS componente, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
LEFT JOIN basico.categoria cpai on (c.id_categoria_pai = cpai.id)
WHERE t.nome = 'COMPONENTE'
AND cpai.nome = 'COMPONENTE_VALIDATOR'
AND c.nome = 'COMPONENTE_VALIDATOR_ZF';

INSERT INTO basico.componente (id_categoria, nome, constante_textual, constante_textual_descricao, componente, ativo, rowinfo)
SELECT c.id AS id_categoria, 'ZF_Validator_Identical' AS nome, 'NOME_ZF_VALIDATOR_IDENTICAL' AS constante_textual, 'DESCRICAO_ZF_VALIDATOR_IDENTICAL' AS constante_textual_descricao,
	   'Identical' AS componente, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
LEFT JOIN basico.categoria cpai on (c.id_categoria_pai = cpai.id)
WHERE t.nome = 'COMPONENTE'
AND cpai.nome = 'COMPONENTE_VALIDATOR'
AND c.nome = 'COMPONENTE_VALIDATOR_ZF';

INSERT INTO basico.componente (id_categoria, nome, constante_textual, constante_textual_descricao, componente, ativo, rowinfo)
SELECT c.id AS id_categoria, 'ZF_Validator_StringLength' AS nome, 'NOME_ZF_VALIDATOR_STRING_LENGTH' AS constante_textual, 'DESCRICAO_ZF_VALIDATOR_STRING_LENGTH' AS constante_textual_descricao,
	   'StringLength' AS componente, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
LEFT JOIN basico.categoria cpai on (c.id_categoria_pai = cpai.id)
WHERE t.nome = 'COMPONENTE'
AND cpai.nome = 'COMPONENTE_VALIDATOR'
AND c.nome = 'COMPONENTE_VALIDATOR_ZF';

INSERT INTO basico.componente (id_categoria, nome, constante_textual, constante_textual_descricao, componente, ativo, rowinfo)
SELECT c.id AS id_categoria, 'ZF_Validator_NotEmpty' AS nome, 'NOME_ZF_VALIDATOR_NOT_EMPTY' AS constante_textual, 'DESCRICAO_ZF_VALIDATOR_NOT_EMPTY' AS constante_textual_descricao,
	   'NotEmpty' AS componente, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
LEFT JOIN basico.categoria cpai on (c.id_categoria_pai = cpai.id)
WHERE t.nome = 'COMPONENTE'
AND cpai.nome = 'COMPONENTE_VALIDATOR'
AND c.nome = 'COMPONENTE_VALIDATOR_ZF';

INSERT INTO basico.componente (id_categoria, nome, constante_textual, constante_textual_descricao, componente, ativo, rowinfo)
SELECT c.id AS id_categoria, 'ZF_Validator_Int' AS nome, 'NOME_ZF_VALIDATOR_INT' AS constante_textual, 'DESCRICAO_ZF_VALIDATOR_INT' AS constante_textual_descricao,
	   'Int' AS componente, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
LEFT JOIN basico.categoria cpai on (c.id_categoria_pai = cpai.id)
WHERE t.nome = 'COMPONENTE'
AND cpai.nome = 'COMPONENTE_VALIDATOR'
AND c.nome = 'COMPONENTE_VALIDATOR_ZF';

INSERT INTO basico.componente (id_categoria, nome, constante_textual, constante_textual_descricao, componente, ativo, rowinfo)
SELECT c.id AS id_categoria, 'ZF_Validator_EmailAddress' AS nome, 'NOME_ZF_VALIDATOR_EMAIL_ADDRESS' AS constante_textual, 'DESCRICAO_ZF_VALIDATOR_EMAIL_ADDRESS' AS constante_textual_descricao,
	   'EmailAddress' AS componente, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
LEFT JOIN basico.categoria cpai on (c.id_categoria_pai = cpai.id)
WHERE t.nome = 'COMPONENTE'
AND cpai.nome = 'COMPONENTE_VALIDATOR'
AND c.nome = 'COMPONENTE_VALIDATOR_ZF';

INSERT INTO basico.componente (id_categoria, nome, constante_textual, constante_textual_descricao, componente, ativo, rowinfo)
SELECT c.id AS id_categoria, 'ZF_Filter_StringTrim' AS nome, 'NOME_ZF_FILTER_STRING_TRIM' AS constante_textual, 'DESCRICAO_ZF_FILTER_STRING_TRIM' AS constante_textual_descricao,
	   'StringTrim' AS componente, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
LEFT JOIN basico.categoria cpai on (c.id_categoria_pai = cpai.id)
WHERE t.nome = 'COMPONENTE'
AND cpai.nome = 'COMPONENTE_FILTER'
AND c.nome = 'COMPONENTE_FILTER_ZF';

INSERT INTO basico.componente (id_categoria, nome, constante_textual, constante_textual_descricao, componente, ativo, rowinfo)
SELECT c.id AS id_categoria, 'ZF_Filter_StripTags' AS nome, 'NOME_ZF_FILTER_STRIP_TAGS' AS constante_textual, 'DESCRICAO_ZF_FILTER_STRIP_TAGS' AS constante_textual_descricao,
	   'StripTags' AS componente, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
LEFT JOIN basico.categoria cpai on (c.id_categoria_pai = cpai.id)
WHERE t.nome = 'COMPONENTE'
AND cpai.nome = 'COMPONENTE_FILTER'
AND c.nome = 'COMPONENTE_FILTER_ZF';