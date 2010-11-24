/*
* SCRIPT DE POPULACAO DAS TABELAS
* 
* versao: 1.0 (MSSQL 2000)
* por: ADRIANO DUPRAT LEMOS (adriano.lemos@rochedoproject.com)
* criacao: 21/10/2010
* ultimas modificacoes:
* 								22/10/2010 - vinculacao do modulo basico ao formulario FORM_DIALOG_TELEFONES_PROFISSIONAIS;
* 										   - vinculacao do modulo basico ao formulario FORM_DIALOG_TELEFONE;
* 								03/11/2010 - vinculacao do modulo basico ao formulario FORM_DIALOG_EMAILS_PROFISSIONAIS;
* 										   - vinculacao do modulo basico ao formulario FORM_DIALOG_EMAIL;
* 										   - vinculacao do modulo basico ao formulario FORM_DIALOG_WEBSITES_PROFISSIONAIS;
* 										   - vinculacao do modulo basico ao formulario FORM_DIALOG_WEBSITE;
*										   - vinculacao do modulo basico ao formulario FORM_DIALOG_ENDERECOS_PROFISSIONAIS;
* 										   - vinculacao do modulo basico ao formulario FORM_DIALOG_ENDERECO;
* 								23/11/2010 - vinculacao do modulo basico ao formulario SUBFORM_DADOS_USUARIO_PERFIL;
*  
*/

/* MODULO FORMULARIO */

INSERT INTO modulo_formulario (id_modulo, id_formulario, rowinfo)
SELECT (SELECT m.id
		FROM modulo m
		LEFT JOIN categoria c ON (m.id_categoria = c.id)
		LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'SISTEMA'
		AND c.nome = 'SISTEMA_MODULO'
		AND m.nome = 'BASICO') AS id_modulo,
	   (SELECT f.id
		FROM formulario f
		LEFT JOIN categoria c ON (f.id_categoria = c.id)
		LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'FORMULARIO'
		AND c.nome = 'FORMULARIO_INPUT_CADASTRO_DOCUMENTOS_IDENTIFICACAO'
		AND f.nome = 'FORM_DIALOG_DOCUMENTO') AS id_formulario,
		'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO modulo_formulario (id_modulo, id_formulario, rowinfo)
SELECT (SELECT m.id
		FROM modulo m
		LEFT JOIN categoria c ON (m.id_categoria = c.id)
		LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'SISTEMA'
		AND c.nome = 'SISTEMA_MODULO'
		AND m.nome = 'BASICO') AS id_modulo,
	   (SELECT f.id
		FROM formulario f
		LEFT JOIN categoria c ON (f.id_categoria = c.id)
		LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'FORMULARIO'
		AND c.nome = 'FORMULARIO_INPUT_CADASTRO_DOCUMENTOS_IDENTIFICACAO'
		AND f.nome = 'FORM_DIALOG_DOCUMENTOS_IDENTIFICACAO') AS id_formulario,
		'SYSTEM_STARTUP' AS rowinfo;


INSERT INTO modulo_formulario (id_modulo, id_formulario, rowinfo)
SELECT (SELECT m.id
		FROM modulo m
		LEFT JOIN categoria c ON (m.id_categoria = c.id)
		LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'SISTEMA'
		AND c.nome = 'SISTEMA_MODULO'
		AND m.nome = 'BASICO') AS id_modulo,
	   (SELECT f.id
		FROM formulario f
		LEFT JOIN categoria c ON (f.id_categoria = c.id)
		LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'FORMULARIO'
		AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO'
		AND f.nome = 'FORM_CADASTRAR_USUARIO_VALIDADO') AS id_formulario,
		'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO modulo_formulario (id_modulo, id_formulario, rowinfo)
SELECT (SELECT m.id
		FROM modulo m
		LEFT JOIN categoria c ON (m.id_categoria = c.id)
		LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'SISTEMA'
		AND c.nome = 'SISTEMA_MODULO'
		AND m.nome = 'BASICO') AS id_modulo,
	   (SELECT f.id
		FROM formulario f
		LEFT JOIN categoria c ON (f.id_categoria = c.id)
		LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'FORMULARIO'
		AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_ACADEMICOS'
		AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_ACADEMICOS') AS id_formulario,
		'SYSTEM_STARTUP' AS rowinfo;	   

INSERT INTO modulo_formulario (id_modulo, id_formulario, rowinfo)
SELECT (SELECT m.id
		FROM modulo m
		LEFT JOIN categoria c ON (m.id_categoria = c.id)
		LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'SISTEMA'
		AND c.nome = 'SISTEMA_MODULO'
		AND m.nome = 'BASICO') AS id_modulo,
	   (SELECT f.id
		FROM formulario f
		LEFT JOIN categoria c ON (f.id_categoria = c.id)
		LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'FORMULARIO'
		AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_PROFISSIONAIS'
		AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_PROFISSIONAIS') AS id_formulario,
		'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO modulo_formulario (id_modulo, id_formulario, rowinfo)
SELECT (SELECT m.id
		FROM modulo m
		LEFT JOIN categoria c ON (m.id_categoria = c.id)
		LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'SISTEMA'
		AND c.nome = 'SISTEMA_MODULO'
		AND m.nome = 'BASICO') AS id_modulo,
	   (SELECT f.id
		FROM formulario f
		LEFT JOIN categoria c ON (f.id_categoria = c.id)
		LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'FORMULARIO'
		AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_PERFIL'
		AND f.nome = 'SUBFORM_DADOS_USUARIO_PERFIL') AS id_formulario,
		'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO modulo_formulario (id_modulo, id_formulario, rowinfo)
SELECT (SELECT m.id
		FROM modulo m
		LEFT JOIN categoria c ON (m.id_categoria = c.id)
		LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'SISTEMA'
		AND c.nome = 'SISTEMA_MODULO'
		AND m.nome = 'BASICO') AS id_modulo,
	   (SELECT f.id
		FROM formulario f
		LEFT JOIN categoria c ON (f.id_categoria = c.id)
		LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'FORMULARIO'
		AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO'
		AND f.nome = 'FORM_DIALOG_MAIOR_TITULACAO') AS id_formulario,
		'SYSTEM_STARTUP' AS rowinfo;	   

INSERT INTO modulo_formulario (id_modulo, id_formulario, rowinfo)
SELECT (SELECT m.id
		FROM modulo m
		LEFT JOIN categoria c ON (m.id_categoria = c.id)
		LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'SISTEMA'
		AND c.nome = 'SISTEMA_MODULO'
		AND m.nome = 'BASICO') AS id_modulo,
	   (SELECT f.id
		FROM formulario f
		LEFT JOIN categoria c ON (f.id_categoria = c.id)
		LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'FORMULARIO'
		AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL'
		AND f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL') AS id_formulario,
		'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO modulo_formulario (id_modulo, id_formulario, rowinfo)
SELECT (SELECT m.id
		FROM modulo m
		LEFT JOIN categoria c ON (m.id_categoria = c.id)
		LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'SISTEMA'
		AND c.nome = 'SISTEMA_MODULO'
		AND m.nome = 'BASICO') AS id_modulo,
	   (SELECT f.id
		FROM formulario f
		LEFT JOIN categoria c ON (f.id_categoria = c.id)
		LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'FORMULARIO'
		AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL_TELEFONES_PROFISSIONAIS'
		AND f.nome = 'FORM_DIALOG_TELEFONES_PROFISSIONAIS') AS id_formulario,
		'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO modulo_formulario (id_modulo, id_formulario, rowinfo)
SELECT (SELECT m.id
		FROM modulo m
		LEFT JOIN categoria c ON (m.id_categoria = c.id)
		LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'SISTEMA'
		AND c.nome = 'SISTEMA_MODULO'
		AND m.nome = 'BASICO') AS id_modulo,
	   (SELECT f.id
		FROM formulario f
		LEFT JOIN categoria c ON (f.id_categoria = c.id)
		LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'FORMULARIO'
		AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL_EMAILS_PROFISSIONAIS'
		AND f.nome = 'FORM_DIALOG_EMAILS_PROFISSIONAIS') AS id_formulario,
		'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO modulo_formulario (id_modulo, id_formulario, rowinfo)
SELECT (SELECT m.id
		FROM modulo m
		LEFT JOIN categoria c ON (m.id_categoria = c.id)
		LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'SISTEMA'
		AND c.nome = 'SISTEMA_MODULO'
		AND m.nome = 'BASICO') AS id_modulo,
	   (SELECT f.id
		FROM formulario f
		LEFT JOIN categoria c ON (f.id_categoria = c.id)
		LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'FORMULARIO'
		AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL_WEBSITES_PROFISSIONAIS'
		AND f.nome = 'FORM_DIALOG_WEBSITES_PROFISSIONAIS') AS id_formulario,
		'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO modulo_formulario (id_modulo, id_formulario, rowinfo)
SELECT (SELECT m.id
		FROM modulo m
		LEFT JOIN categoria c ON (m.id_categoria = c.id)
		LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'SISTEMA'
		AND c.nome = 'SISTEMA_MODULO'
		AND m.nome = 'BASICO') AS id_modulo,
	   (SELECT f.id
		FROM formulario f
		LEFT JOIN categoria c ON (f.id_categoria = c.id)
		LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'FORMULARIO'
		AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL_ENDERECOS_PROFISSIONAIS'
		AND f.nome = 'FORM_DIALOG_ENDERECOS_PROFISSIONAIS') AS id_formulario,
		'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO modulo_formulario (id_modulo, id_formulario, rowinfo)
SELECT (SELECT m.id
		FROM modulo m
		LEFT JOIN categoria c ON (m.id_categoria = c.id)
		LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'SISTEMA'
		AND c.nome = 'SISTEMA_MODULO'
		AND m.nome = 'BASICO') AS id_modulo,
	   (SELECT f.id
		FROM formulario f
		LEFT JOIN categoria c ON (f.id_categoria = c.id)
		LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'FORMULARIO'
		AND c.nome = 'FORMULARIO_INPUT_CADASTRO_TELEFONE'
		AND f.nome = 'FORM_DIALOG_TELEFONE') AS id_formulario,
		'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO modulo_formulario (id_modulo, id_formulario, rowinfo)
SELECT (SELECT m.id
		FROM modulo m
		LEFT JOIN categoria c ON (m.id_categoria = c.id)
		LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'SISTEMA'
		AND c.nome = 'SISTEMA_MODULO'
		AND m.nome = 'BASICO') AS id_modulo,
	   (SELECT f.id
		FROM formulario f
		LEFT JOIN categoria c ON (f.id_categoria = c.id)
		LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'FORMULARIO'
		AND c.nome = 'FORMULARIO_INPUT_CADASTRO_EMAIL'
		AND f.nome = 'FORM_DIALOG_EMAIL') AS id_formulario,
		'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO modulo_formulario (id_modulo, id_formulario, rowinfo)
SELECT (SELECT m.id
		FROM modulo m
		LEFT JOIN categoria c ON (m.id_categoria = c.id)
		LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'SISTEMA'
		AND c.nome = 'SISTEMA_MODULO'
		AND m.nome = 'BASICO') AS id_modulo,
	   (SELECT f.id
		FROM formulario f
		LEFT JOIN categoria c ON (f.id_categoria = c.id)
		LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'FORMULARIO'
		AND c.nome = 'FORMULARIO_INPUT_CADASTRO_WEBSITE'
		AND f.nome = 'FORM_DIALOG_WEBSITE') AS id_formulario,
		'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO modulo_formulario (id_modulo, id_formulario, rowinfo)
SELECT (SELECT m.id
		FROM modulo m
		LEFT JOIN categoria c ON (m.id_categoria = c.id)
		LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'SISTEMA'
		AND c.nome = 'SISTEMA_MODULO'
		AND m.nome = 'BASICO') AS id_modulo,
	   (SELECT f.id
		FROM formulario f
		LEFT JOIN categoria c ON (f.id_categoria = c.id)
		LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'FORMULARIO'
		AND c.nome = 'FORMULARIO_INPUT_CADASTRO_ENDERECO'
		AND f.nome = 'FORM_DIALOG_ENDERECO') AS id_formulario,
		'SYSTEM_STARTUP' AS rowinfo;
		
INSERT INTO modulo_formulario (id_modulo, id_formulario, rowinfo)
SELECT (SELECT m.id
		FROM modulo m
		LEFT JOIN categoria c ON (m.id_categoria = c.id)
		LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'SISTEMA'
		AND c.nome = 'SISTEMA_MODULO'
		AND m.nome = 'BASICO') AS id_modulo,
	   (SELECT f.id
		FROM formulario f
		LEFT JOIN categoria c ON (f.id_categoria = c.id)
		LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'FORMULARIO'
		AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO'
		AND f.nome = 'FORM_CADASTRAR_USUARIO_NAO_VALIDADO') AS id_formulario,
		'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO modulo_formulario (id_modulo, id_formulario, rowinfo)
SELECT (SELECT m.id
		FROM modulo m
		LEFT JOIN categoria c ON (m.id_categoria = c.id)
		LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'SISTEMA'
		AND c.nome = 'SISTEMA_MODULO'
		AND m.nome = 'BASICO') AS id_modulo,
	   (SELECT f.id
		FROM formulario f
		LEFT JOIN categoria c ON (f.id_categoria = c.id)
		LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'FORMULARIO'
		AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO'
		AND f.nome = 'FORM_DADOS_USUARIO') AS id_formulario,
		'SYSTEM_STARTUP' AS rowinfo;		