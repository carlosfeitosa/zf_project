/*
* SCRIPT DE POPULACAO DAS TABELAS
* 
* versao: 1.0 (MSSQL 2000)
* por: ADRIANO DUPRAT LEMOS (adriano.lemos@rochedoproject.com)
* criacao: 20/10/2010
* ultimas modificacoes:
* 
* 											05/09/2011 - criacao do componente JavaScript;
*               							30/11/2011 - adaptação para novo modelo de banco de dados (Modularizado atraves de schemas) - João Vasconcelos;
*  
*/

/* COMPONENTE */

INSERT into basico.componente (id_categoria, nome, descricao, componente, rowinfo)
SELECT c.id AS id_categoria, 'DOJO_PasswordTextBox' AS nome, 'Componente DOJO para caixas de texto do tipo Password.' AS descricao,
	   '''PasswordTextBox''' AS componente, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'COMPONENTE'
AND c.nome = 'COMPONENTE_DOJO';

INSERT into basico.componente (id_categoria, nome, descricao, componente, rowinfo)
SELECT c.id AS id_categoria, 'DOJO_PasswordTextBox_With_Checker' AS nome, 'Componente DOJO para caixas de texto do tipo Password com o componente Password strength checker acoplado.' AS descricao,
	   '''PasswordTextBox''' AS componente, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'COMPONENTE'
AND c.nome = 'COMPONENTE_AJAXTERCEIROS';

INSERT into basico.componente (id_categoria, nome, descricao, componente, rowinfo)
SELECT c.id AS id_categoria, 'DOJO_RadioButton' AS nome, 'Componente DOJO para RadioButtons.' AS descricao,
	   '''RadioButton''' AS componente, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'COMPONENTE'
AND c.nome = 'COMPONENTE_DOJO';

INSERT into basico.componente (id_categoria, nome, descricao, componente, rowinfo)
SELECT c.id AS id_categoria, 'ZF_Hidden' AS nome, 'Componente ZF para campos ocultos.' AS descricao,
	   '''hidden''' AS componente, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'COMPONENTE'
AND c.nome = 'COMPONENTE_ZF';
		
INSERT into basico.componente (id_categoria, nome, descricao, componente, rowinfo)
SELECT c.id AS id_categoria, 'DOJO_ValidationTextBox' AS nome, 'Componente DOJO para caixas de texto com validação.' AS descricao,
	   '''ValidationTextBox''' AS componente, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'COMPONENTE'
AND c.nome = 'COMPONENTE_DOJO';

INSERT into basico.componente (id_categoria, nome, descricao, componente, rowinfo)
SELECT c.id AS id_categoria, 'DOJO_submitButton' AS nome, 'Componente DOJO para botões de submissão.' AS descricao,
	   '''submitButton''' AS componente, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'COMPONENTE'
AND c.nome = 'COMPONENTE_DOJO';

INSERT into basico.componente (id_categoria, nome, descricao, componente, rowinfo)
SELECT c.id AS id_categoria, 'ZF_button' AS nome, 'Componente ZendFramework de botões.' AS descricao,
	   '''button''' AS componente, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'COMPONENTE'
AND c.nome = 'COMPONENTE_ZF';

INSERT into basico.componente(id_categoria, nome, descricao, componente, rowinfo)
SELECT c.id, 'DOJO_FilteringSelect' AS nome, 'Componente DOJO para ComboBox com filtragem' AS descricao, 
		'''FilteringSelect''' AS componente, 'SYSTEM_STARTUP' as rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'COMPONENTE'
AND c.nome = 'COMPONENTE_DOJO';
		
INSERT into basico.componente(id_categoria, nome, descricao, componente, rowinfo)
SELECT c.id, 'ZF_MultiCheckbox' AS nome, 'Componente ZF para multiplos CheckBoxs' AS descricao, 
		'''MultiCheckbox''' AS componente, 'SYSTEM_STARTUP' as rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'COMPONENTE'
AND c.nome = 'COMPONENTE_ZF';

INSERT into basico.componente(id_categoria, nome, descricao, componente, rowinfo)
SELECT c.id, 'DOJO_CheckBox' AS nome, 'Componente DOJO para CheckBox' AS descricao, 
		'''CheckBox''' AS componente, 'SYSTEM_STARTUP' as rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'COMPONENTE'
AND c.nome = 'COMPONENTE_DOJO';

INSERT into basico.componente(id_categoria, nome, descricao, componente, rowinfo)
SELECT c.id, 'DOJO_Textarea' AS nome, 'Componente DOJO para campos do tipo texto (auto ajustavel)' AS descricao, 
		'''Textarea''' AS componente, 'SYSTEM_STARTUP' as rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'COMPONENTE'
AND c.nome = 'COMPONENTE_DOJO';

INSERT into basico.componente(id_categoria, nome, descricao, componente, rowinfo)
SELECT c.id, 'DOJO_SimpleTextarea' AS nome, 'Componente DOJO para campos do tipo texto (dimensoes fixas)' AS descricao, 
		'''SimpleTextarea''' AS componente, 'SYSTEM_STARTUP' as rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'COMPONENTE'
AND c.nome = 'COMPONENTE_DOJO';

INSERT into basico.componente(id_categoria, nome, descricao, componente, rowinfo)
SELECT c.id, 'DOJO_DateTextBox' AS nome, 'Componente DOJO para campos do tipo data' AS descricao, 
		'''DateTextBox''' AS componente, 'SYSTEM_STARTUP' as rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'COMPONENTE'
AND c.nome = 'COMPONENTE_DOJO';

INSERT into basico.componente(id_categoria, nome, descricao, componente, rowinfo)
SELECT c.id, 'DOJO_NumberTextBox' AS nome, 'Componente DOJO para digitação de números' AS descricao, 
		'''NumberTextBox''' AS componente, 'SYSTEM_STARTUP' as rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'COMPONENTE'
AND c.nome = 'COMPONENTE_DOJO';

INSERT into basico.componente(id_categoria, nome, descricao, componente, rowinfo)
SELECT c.id, 'DOJO_CurrencyTextBox' AS nome, 'Componente DOJO para digitação de valores numéricos (moeda)' AS descricao, 
		'''CurrencyTextBox''' AS componente, 'SYSTEM_STARTUP' as rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'COMPONENTE'
AND c.nome = 'COMPONENTE_DOJO';

INSERT into basico.componente (id_categoria, nome, descricao, componente, rowinfo)
SELECT c.id AS id_categoria, 'ZF_captcha' AS nome, 'Componente ZendFramework para validação anti-robo.' AS descricao,
	   '''captcha''' AS componente, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'COMPONENTE'
AND c.nome = 'COMPONENTE_ZF';

INSERT into basico.componente (id_categoria, nome, descricao, componente, rowinfo)
SELECT c.id AS id_categoria, 'ZF_hash' AS nome, 'Componente ZendFramework de hash para validação anti-cross-site script.' AS descricao,
	   '''hash''' AS componente, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'COMPONENTE'
AND c.nome = 'COMPONENTE_ZF';

INSERT into basico.componente (id_categoria, nome, descricao, componente, rowinfo)
SELECT c.id AS id_categoria, 'ROCHEDO_html' AS nome, 'Componente Rochedo de conteudo HTML.' AS descricao,
	   '''html''' AS componente, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'COMPONENTE'
AND c.nome = 'COMPONENTE_ROCHEDO';

INSERT into basico.componente (id_categoria, nome, descricao, componente, rowinfo)
SELECT c.id AS id_categoria, 'ROCHEDO_javascript' AS nome, 'Componente Rochedo de conteudo JavaScript.' AS descricao,
	   '''JavaScript''' AS componente, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'COMPONENTE'
AND c.nome = 'COMPONENTE_ROCHEDO';