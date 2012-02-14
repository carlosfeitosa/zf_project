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
*  
*/

/* COMPONENTE */

INSERT into basico.componente (id_categoria, nome, constante_textual, constante_textual_descricao, componente, ativo, rowinfo)
SELECT c.id AS id_categoria, 'DOJO_PasswordTextBox' AS nome, 'NOME_DOJO_PASSWORD_TEXTBOX' AS constante_textual, 'DESCRICAO_DOJO_PASSWORD_TEXTBOX' AS constante_textual_descricao,
	   '''PasswordTextBox''' AS componente, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'COMPONENTE'
AND c.nome = 'COMPONENTE_DOJO';

INSERT into basico.componente (id_categoria, id_template, nome, constante_textual, constante_textual_descricao, componente, ativo, rowinfo)
SELECT c.id AS id_categoria, 
(SELECT tp.id
 FROM basico.template tp
 LEFT JOIN basico.categoria ct ON ct.id = tp.id_categoria
 WHERE ct.nome = 'FORMULARIO_TEMPLATE'
 AND tp.nome = 'TEMPLATE_PASSWORD_STRENGTH_CHECKER') AS id_template,
'DOJO_PasswordTextBox_With_Checker' AS nome, 'NOME_DOJO_PASSWORD_TEXTBOX_WITH_CHECKER' AS constante_textual, 'DESCRICAO_DOJO_PASSWORD_TEXTBOX_WITH_CHECKER' AS constante_textual_descricao,
'''PasswordTextBox''' AS componente, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'COMPONENTE'
AND c.nome = 'COMPONENTE_AJAXTERCEIROS';

INSERT into basico.componente (id_categoria, nome, constante_textual, constante_textual_descricao, componente, ativo, rowinfo)
SELECT c.id AS id_categoria, 'DOJO_RadioButton' AS nome, 'NOME_DOJO_RADIOBUTTON' AS constante_textual, 'DESCRICAO_DOJO_RADIOBUTTON' AS constante_textual_descricao,
	   '''RadioButton''' AS componente, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'COMPONENTE'
AND c.nome = 'COMPONENTE_DOJO';

INSERT into basico.componente (id_categoria, nome, constante_textual, constante_textual_descricao, componente, ativo, rowinfo)
SELECT c.id AS id_categoria, 'ZF_Hidden' AS nome, 'NOME_ZF_HIDDEN' AS constante_textual, 'DESCRICAO_ZF_HIDDEN' AS constante_textual_descricao,
	   '''Hidden''' AS componente, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'COMPONENTE'
AND c.nome = 'COMPONENTE_ZF';
		
INSERT into basico.componente (id_categoria, nome, constante_textual, constante_textual_descricao, componente, ativo, rowinfo)
SELECT c.id AS id_categoria, 'DOJO_ValidationTextBox' AS nome, 'NOME_DOJO_VALIDATION_TEXTBOX' AS constante_textual, 'DESCRICAO_DOJO_VALIDATION_TEXTBOX' AS constante_textual_descricao,
	   '''ValidationTextBox''' AS componente, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'COMPONENTE'
AND c.nome = 'COMPONENTE_DOJO';

INSERT into basico.componente (id_categoria, nome, constante_textual, constante_textual_descricao, componente, ativo, rowinfo)
SELECT c.id AS id_categoria, 'DOJO_submitButton' AS nome, 'NOME_DOJO_SUBMIT_BUTTON' AS constante_textual, 'DESCRICAO_DOJO_SUBMIT_BUTTON' AS constante_textual_descricao,
	   '''SubmitButton''' AS componente, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'COMPONENTE'
AND c.nome = 'COMPONENTE_DOJO';

INSERT into basico.componente (id_categoria, nome, constante_textual, constante_textual_descricao, componente, ativo, rowinfo)
SELECT c.id AS id_categoria, 'ZF_button' AS nome, 'NOME_ZF_BUTTON' AS constante_textual, 'DESCRICAO_ZF_BUTTON' AS constante_textual_descricao,
	   '''Button''' AS componente, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'COMPONENTE'
AND c.nome = 'COMPONENTE_ZF';

INSERT into basico.componente(id_categoria, nome, constante_textual, constante_textual_descricao, componente, ativo, rowinfo)
SELECT c.id, 'DOJO_FilteringSelect' AS nome, 'NOME_DOJO_FILTERING_SELECT' AS constante_textual, 'DESCRICAO_DOJO_FILTERING_SELECT' AS constante_textual_descricao, 
		'''FilteringSelect''' AS componente, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'COMPONENTE'
AND c.nome = 'COMPONENTE_DOJO';
		
INSERT into basico.componente(id_categoria, nome, constante_textual, constante_textual_descricao, componente, ativo, rowinfo)
SELECT c.id, 'ZF_MultiCheckbox' AS nome, 'NOME_ZF_MULTI_CHECKBOX' AS constante_textual, 'DESCRICAO_ZF_MULTI_CHECKBOX' AS constante_textual_descricao, 
		'''MultiCheckbox''' AS componente, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'COMPONENTE'
AND c.nome = 'COMPONENTE_ZF';

INSERT into basico.componente(id_categoria, nome, constante_textual, constante_textual_descricao, componente, ativo, rowinfo)
SELECT c.id, 'DOJO_CheckBox' AS nome, 'NOME_DOJO_CHECKBOX' AS constante_textual, 'DESCRICAO_DOJO_CHECKBOX' AS constante_textual_descricao, 
		'''CheckBox''' AS componente, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'COMPONENTE'
AND c.nome = 'COMPONENTE_DOJO';

INSERT into basico.componente(id_categoria, nome, constante_textual, constante_textual_descricao, componente, ativo, rowinfo)
SELECT c.id, 'DOJO_Textarea' AS nome, 'NOME_DOJO_TEXTAREA' AS constante_textual, 'DESCRICAO_DOJO_TEXTAREA' AS constante_textual_descricao, 
		'''Textarea''' AS componente, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'COMPONENTE'
AND c.nome = 'COMPONENTE_DOJO';

INSERT into basico.componente(id_categoria, nome, constante_textual, constante_textual_descricao, componente, ativo, rowinfo)
SELECT c.id, 'DOJO_SimpleTextarea' AS nome, 'NOME_DOJO_SIMPLE_TEXTAREA' AS constante_textual, 'DESCRICAO_DOJO_SIMPLE_TEXTAREA' AS constante_textual_descricao, 
		'''SimpleTextarea''' AS componente, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'COMPONENTE'
AND c.nome = 'COMPONENTE_DOJO';

INSERT into basico.componente(id_categoria, nome, constante_textual, constante_textual_descricao, componente, ativo, rowinfo)
SELECT c.id, 'DOJO_DateTextBox' AS nome, 'NOME_DOJO_DATE_TEXTBOX' AS constante_textual, 'DESCRICAO_DOJO_DATE_TEXTBOX' AS constante_textual_descricao, 
		'''DateTextBox''' AS componente, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'COMPONENTE'
AND c.nome = 'COMPONENTE_DOJO';

INSERT into basico.componente(id_categoria, nome, constante_textual, constante_textual_descricao, componente, ativo, rowinfo)
SELECT c.id, 'DOJO_NumberTextBox' AS nome, 'NOME_DOJO_NUMBER_TEXTBOX' AS constante_textual, 'DESCRICAO_DOJO_NUMBER_TEXTBOX' AS constante_textual_descricao, 
		'''NumberTextBox''' AS componente, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'COMPONENTE'
AND c.nome = 'COMPONENTE_DOJO';

INSERT into basico.componente(id_categoria, nome, constante_textual, constante_textual_descricao, componente, ativo, rowinfo)
SELECT c.id, 'DOJO_CurrencyTextBox' AS nome, 'NOME_DOJO_CURRENCY_TEXTBOX' AS constante_textual, 'DESCRICAO_DOJO_CURRENCY_TEXTBOX' AS constante_textual_descricao, 
		'''CurrencyTextBox''' AS componente, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'COMPONENTE'
AND c.nome = 'COMPONENTE_DOJO';

INSERT into basico.componente (id_categoria, nome, constante_textual, constante_textual_descricao, componente, ativo, rowinfo)
SELECT c.id AS id_categoria, 'ZF_captcha' AS nome, 'NOME_ZF_CAPTCHA' AS constante_textual, 'DESCRICAO_ZF_CAPTCHA' AS constante_textual_descricao,
	   '''Captcha''' AS componente, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'COMPONENTE'
AND c.nome = 'COMPONENTE_ZF';

INSERT into basico.componente (id_categoria, nome, constante_textual, constante_textual_descricao, componente, ativo, rowinfo)
SELECT c.id AS id_categoria, 'ZF_hash' AS nome, 'NOME_ZF_HASH' AS constante_textual, 'DESCRICAO_ZF_HASH' AS constante_textual_descricao,
	   '''Hash''' AS componente, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'COMPONENTE'
AND c.nome = 'COMPONENTE_ZF';

INSERT into basico.componente (id_categoria, nome, constante_textual, constante_textual_descricao, componente, ativo, rowinfo)
SELECT c.id AS id_categoria, 'ROCHEDO_html' AS nome, 'NOME_ROCHEDO_HTML' AS constante_textual, 'DESCRICAO_ROCHEDO_HTML' AS constante_textual_descricao,
	   '''Html''' AS componente, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'COMPONENTE'
AND c.nome = 'COMPONENTE_ROCHEDO';

INSERT into basico.componente (id_categoria, nome, constante_textual, constante_textual_descricao, componente, ativo, rowinfo)
SELECT c.id AS id_categoria, 'ROCHEDO_javascript' AS nome, 'NOME_ROCHEDO_JAVASCRIPT' AS constante_textual, 'DESCRICAO_ROCHEDO_JAVASCRIPT' AS constante_textual_descricao,
	   '''JavaScript''' AS componente, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'COMPONENTE'
AND c.nome = 'COMPONENTE_ROCHEDO';