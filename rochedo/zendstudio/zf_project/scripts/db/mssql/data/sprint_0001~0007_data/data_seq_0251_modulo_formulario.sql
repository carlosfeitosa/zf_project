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
* 								02/05/2011 - vinculacao do modulo basico ao formulario FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO;
* 								28/06/2011 - vinculacao do modulo basico ao formulario FORM_DIALOG_SUGESTAO_LOGIN;
*								05/08/2011 - correcao da categoria do formulario SUBFORM_DADOS_USUARIO_DADOS_PESSOAIS
* 								22/08/2011 - vinculacao do modulo basico ao formulario FORM_TROCA_DE_SENHA;
* 								26/10/2011 - vinculacao do modulo basico ao formulario FORM_DIALOG_ADMIN_RASCUNHOS;
*  
*/

INSERT INTO basico_form_form_elemento.assoccl_validator (id_modulo, id_formulario, rowinfo)
SELECT (SELECT m.id
		FROM basico.modulo m
		LEFT JOIN categoria c ON (m.id_categoria = c.id)
		LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'SISTEMA'
		AND c.nome = 'SISTEMA_MODULO'
		AND m.nome = 'BASICO') AS id_modulo,
	   (SELECT f.id
		FROMFROM basico.formulario f
		LEFT JOIN categoria c ON (f.id_categoria = c.id)
		LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'FORMULARIO'
		AND c.nome = 'FORMULARIO_ADMIN_RASCUNHOS'
		AND f.nome = 'FORM_DIALOG_ADMIN_RASCUNHOS') AS id_formulario,
		'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_form_form_elemento.assoccl_validator (id_modulo, id_formulario, rowinfo)
SELECT (SELECT m.id
		FROM basico.modulo m
		LEFT JOIN categoria c ON (m.id_categoria = c.id)
		LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'SISTEMA'
		AND c.nome = 'SISTEMA_MODULO'
		AND m.nome = 'BASICO') AS id_modulo,
	   (SELECT f.id
		FROM basico.formulario f
		LEFT JOIN categoria c ON (f.id_categoria = c.id)
		LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'FORMULARIO'
		AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO'
		AND f.nome = 'FORM_ACEITE_TERMOS_USO') AS id_formulario,
		'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_form_form_elemento.assoccl_validator (id_modulo, id_formulario, rowinfo)
SELECT (SELECT m.id
		FROM basico.modulo m
		LEFT JOIN categoria c ON (m.id_categoria = c.id)
		LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'SISTEMA'
		AND c.nome = 'SISTEMA_MODULO'
		AND m.nome = 'BASICO') AS id_modulo,
	   (SELECT f.id
		FROM basico.formulario f
		LEFT JOIN categoria c ON (f.id_categoria = c.id)
		LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'FORMULARIO'
		AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO'
		AND f.nome = 'FORM_TROCA_DE_SENHA') AS id_formulario,
		'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_form_form_elemento.assoccl_validator (id_modulo, id_formulario, rowinfo)
SELECT (SELECT m.id
		FROM basico.modulo m
		LEFT JOIN categoria c ON (m.id_categoria = c.id)
		LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'SISTEMA'
		AND c.nome = 'SISTEMA_MODULO'
		AND m.nome = 'BASICO') AS id_modulo,
	   (SELECT f.id
		FROM basico.formulario f
		LEFT JOIN categoria c ON (f.id_categoria = c.id)
		LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'FORMULARIO'
		AND c.nome = 'FORMULARIO_INPUT_SUGESTAO_LOGIN'
		AND f.nome = 'FORM_DIALOG_SUGESTAO_LOGIN') AS id_formulario,
		'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_form_form_elemento.assoccl_validator (id_modulo, id_formulario, rowinfo)
SELECT (SELECT m.id
		FROM basico.modulo m
		LEFT JOIN categoria c ON (m.id_categoria = c.id)
		LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'SISTEMA'
		AND c.nome = 'SISTEMA_MODULO'
		AND m.nome = 'BASICO') AS id_modulo,
	   (SELECT f.id
		FROM basico.formulario f
		LEFT JOIN categoria c ON (f.id_categoria = c.id)
		LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'FORMULARIO'
		AND c.nome = 'FORMULARIO_INPUT_CADASTRO_DOCUMENTOS_IDENTIFICACAO'
		AND f.nome = 'FORM_DIALOG_DOCUMENTO') AS id_formulario,
		'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_form_form_elemento.assoccl_validator (id_modulo, id_formulario, rowinfo)
SELECT (SELECT m.id
		FROM basico.modulo m
		LEFT JOIN categoria c ON (m.id_categoria = c.id)
		LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'SISTEMA'
		AND c.nome = 'SISTEMA_MODULO'
		AND m.nome = 'BASICO') AS id_modulo,
	   (SELECT f.id
		FROM basico.formulario f
		LEFT JOIN categoria c ON (f.id_categoria = c.id)
		LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'FORMULARIO'
		AND c.nome = 'FORMULARIO_INPUT_CADASTRO_DOCUMENTOS_IDENTIFICACAO'
		AND f.nome = 'FORM_DIALOG_DOCUMENTOS_IDENTIFICACAO') AS id_formulario,
		'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_form_form_elemento.assoccl_validator (id_modulo, id_formulario, rowinfo)
SELECT (SELECT m.id
		FROM basico.modulo m
		LEFT JOIN categoria c ON (m.id_categoria = c.id)
		LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'SISTEMA'
		AND c.nome = 'SISTEMA_MODULO'
		AND m.nome = 'BASICO') AS id_modulo,
	   (SELECT f.id
		FROM basico.formulario f
		LEFT JOIN categoria c ON (f.id_categoria = c.id)
		LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'FORMULARIO'
		AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO'
		AND f.nome = 'FORM_CADASTRAR_USUARIO_VALIDADO') AS id_formulario,
		'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_form_form_elemento.assoccl_validator (id_modulo, id_formulario, rowinfo)
SELECT (SELECT m.id
		FROM basico.modulo m
		LEFT JOIN categoria c ON (m.id_categoria = c.id)
		LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'SISTEMA'
		AND c.nome = 'SISTEMA_MODULO'
		AND m.nome = 'BASICO') AS id_modulo,
	   (SELECT f.id
		FROM basico.formulario f
		LEFT JOIN categoria c ON (f.id_categoria = c.id)
		LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'FORMULARIO'
		AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_ACADEMICOS'
		AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_ACADEMICOS') AS id_formulario,
		'SYSTEM_STARTUP' AS rowinfo;	
		
INSERT INTO basico_form_form_elemento.assoccl_validator (id_modulo, id_formulario, rowinfo)
SELECT (SELECT m.id
		FROM basico.modulo m
		LEFT JOIN categoria c ON (m.id_categoria = c.id)
		LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'SISTEMA'
		AND c.nome = 'SISTEMA_MODULO'
		AND m.nome = 'BASICO') AS id_modulo,
	   (SELECT f.id
		FROM basico.formulario f
		LEFT JOIN categoria c ON (f.id_categoria = c.id)
		LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'FORMULARIO'
		AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_BIOMETRICOS'
		AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_BIOMETRICOS') AS id_formulario,
		'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_form_form_elemento.assoccl_validator (id_modulo, id_formulario, rowinfo)
SELECT (SELECT m.id
		FROM basico.modulo m
		LEFT JOIN categoria c ON (m.id_categoria = c.id)
		LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'SISTEMA'
		AND c.nome = 'SISTEMA_MODULO'
		AND m.nome = 'BASICO') AS id_modulo,
	   (SELECT f.id
		FROM basico.formulario f
		LEFT JOIN categoria c ON (f.id_categoria = c.id)
		LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'FORMULARIO'
		AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_PROFISSIONAIS'
		AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_PROFISSIONAIS') AS id_formulario,
		'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_form_form_elemento.assoccl_validator (id_modulo, id_formulario, rowinfo)
SELECT (SELECT m.id
		FROM basico.modulo m
		LEFT JOIN categoria c ON (m.id_categoria = c.id)
		LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'SISTEMA'
		AND c.nome = 'SISTEMA_MODULO'
		AND m.nome = 'BASICO') AS id_modulo,
	   (SELECT f.id
		FROM basico.formulario f
		LEFT JOIN categoria c ON (f.id_categoria = c.id)
		LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'FORMULARIO'
		AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_CONTA'
		AND f.nome = 'SUBFORM_DADOS_USUARIO_CONTA') AS id_formulario,
		'SYSTEM_STARTUP' AS rowinfo;	   

INSERT INTO basico_form_form_elemento.assoccl_validator (id_modulo, id_formulario, rowinfo)
SELECT (SELECT m.id
		FROM basico.modulo m
		LEFT JOIN categoria c ON (m.id_categoria = c.id)
		LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'SISTEMA'
		AND c.nome = 'SISTEMA_MODULO'
		AND m.nome = 'BASICO') AS id_modulo,
	   (SELECT f.id
		FROM basico.formulario f
		LEFT JOIN categoria c ON (f.id_categoria = c.id)
		LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'FORMULARIO'
		AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL'
		AND f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL') AS id_formulario,
		'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_form_form_elemento.assoccl_validator (id_modulo, id_formulario, rowinfo)
SELECT (SELECT m.id
		FROM basico.modulo m
		LEFT JOIN categoria c ON (m.id_categoria = c.id)
		LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'SISTEMA'
		AND c.nome = 'SISTEMA_MODULO'
		AND m.nome = 'BASICO') AS id_modulo,
	   (SELECT f.id
		FROM basico.formulario f
		LEFT JOIN categoria c ON (f.id_categoria = c.id)
		LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'FORMULARIO'
		AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_COORDENACAO_POS_GRADUACAO'
		AND f.nome = 'FORM_DIALOG_COORDENACAO_POS_GRADUACAO') AS id_formulario,
		'SYSTEM_STARTUP' AS rowinfo;		

INSERT INTO basico_form_form_elemento.assoccl_validator (id_modulo, id_formulario, rowinfo)
SELECT (SELECT m.id
		FROM basico.modulo m
		LEFT JOIN categoria c ON (m.id_categoria = c.id)
		LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'SISTEMA'
		AND c.nome = 'SISTEMA_MODULO'
		AND m.nome = 'BASICO') AS id_modulo,
	   (SELECT f.id
		FROM basico.formulario f
		LEFT JOIN categoria c ON (f.id_categoria = c.id)
		LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'FORMULARIO'
		AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_ORIENTACOES'
		AND f.nome = 'FORM_DIALOG_ORIENTACOES') AS id_formulario,
		'SYSTEM_STARTUP' AS rowinfo;		


INSERT INTO basico_form_form_elemento.assoccl_validator (id_modulo, id_formulario, rowinfo)
SELECT (SELECT m.id
		FROM basico.modulo m
		LEFT JOIN categoria c ON (m.id_categoria = c.id)
		LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'SISTEMA'
		AND c.nome = 'SISTEMA_MODULO'
		AND m.nome = 'BASICO') AS id_modulo,
	   (SELECT f.id
		FROM basico.formulario f
		LEFT JOIN categoria c ON (f.id_categoria = c.id)
		LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'FORMULARIO'
		AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL_TELEFONES_PROFISSIONAIS'
		AND f.nome = 'FORM_DIALOG_TELEFONES_PROFISSIONAIS') AS id_formulario,
		'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_form_form_elemento.assoccl_validator (id_modulo, id_formulario, rowinfo)
SELECT (SELECT m.id
		FROM basico.modulo m
		LEFT JOIN categoria c ON (m.id_categoria = c.id)
		LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'SISTEMA'
		AND c.nome = 'SISTEMA_MODULO'
		AND m.nome = 'BASICO') AS id_modulo,
	   (SELECT f.id
		FROM basico.formulario f
		LEFT JOIN categoria c ON (f.id_categoria = c.id)
		LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'FORMULARIO'
		AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL_EMAILS_PROFISSIONAIS'
		AND f.nome = 'FORM_DIALOG_EMAILS_PROFISSIONAIS') AS id_formulario,
		'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_form_form_elemento.assoccl_validator (id_modulo, id_formulario, rowinfo)
SELECT (SELECT m.id
		FROM basico.modulo m
		LEFT JOIN categoria c ON (m.id_categoria = c.id)
		LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'SISTEMA'
		AND c.nome = 'SISTEMA_MODULO'
		AND m.nome = 'BASICO') AS id_modulo,
	   (SELECT f.id
		FROM basico.formulario f
		LEFT JOIN categoria c ON (f.id_categoria = c.id)
		LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'FORMULARIO'
		AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL_WEBSITES_PROFISSIONAIS'
		AND f.nome = 'FORM_DIALOG_WEBSITES_PROFISSIONAIS') AS id_formulario,
		'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_form_form_elemento.assoccl_validator (id_modulo, id_formulario, rowinfo)
SELECT (SELECT m.id
		FROM basico.modulo m
		LEFT JOIN categoria c ON (m.id_categoria = c.id)
		LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'SISTEMA'
		AND c.nome = 'SISTEMA_MODULO'
		AND m.nome = 'BASICO') AS id_modulo,
	   (SELECT f.id
		FROM basico.formulario f
		LEFT JOIN categoria c ON (f.id_categoria = c.id)
		LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'FORMULARIO'
		AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL_ENDERECOS_PROFISSIONAIS'
		AND f.nome = 'FORM_DIALOG_ENDERECOS_PROFISSIONAIS') AS id_formulario,
		'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_form_form_elemento.assoccl_validator (id_modulo, id_formulario, rowinfo)
SELECT (SELECT m.id
		FROM basico.modulo m
		LEFT JOIN categoria c ON (m.id_categoria = c.id)
		LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'SISTEMA'
		AND c.nome = 'SISTEMA_MODULO'
		AND m.nome = 'BASICO') AS id_modulo,
	   (SELECT f.id
		FROM basico.formulario f
		LEFT JOIN categoria c ON (f.id_categoria = c.id)
		LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'FORMULARIO'
		AND c.nome = 'FORMULARIO_INPUT_CADASTRO_TELEFONE'
		AND f.nome = 'FORM_DIALOG_TELEFONE') AS id_formulario,
		'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_form_form_elemento.assoccl_validator (id_modulo, id_formulario, rowinfo)
SELECT (SELECT m.id
		FROM basico.modulo m
		LEFT JOIN categoria c ON (m.id_categoria = c.id)
		LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'SISTEMA'
		AND c.nome = 'SISTEMA_MODULO'
		AND m.nome = 'BASICO') AS id_modulo,
	   (SELECT f.id
		FROM basico.formulario f
		LEFT JOIN categoria c ON (f.id_categoria = c.id)
		LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'FORMULARIO'
		AND c.nome = 'FORMULARIO_INPUT_CADASTRO_EMAIL'
		AND f.nome = 'FORM_DIALOG_EMAIL') AS id_formulario,
		'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_form_form_elemento.assoccl_validator (id_modulo, id_formulario, rowinfo)
SELECT (SELECT m.id
		FROM basico.modulo m
		LEFT JOIN categoria c ON (m.id_categoria = c.id)
		LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'SISTEMA'
		AND c.nome = 'SISTEMA_MODULO'
		AND m.nome = 'BASICO') AS id_modulo,
	   (SELECT f.id
		FROM basico.formulario f
		LEFT JOIN categoria c ON (f.id_categoria = c.id)
		LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'FORMULARIO'
		AND c.nome = 'FORMULARIO_INPUT_CADASTRO_WEBSITE'
		AND f.nome = 'FORM_DIALOG_WEBSITE') AS id_formulario,
		'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_form_form_elemento.assoccl_validator (id_modulo, id_formulario, rowinfo)
SELECT (SELECT m.id
		FROM basico.modulo m
		LEFT JOIN categoria c ON (m.id_categoria = c.id)
		LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'SISTEMA'
		AND c.nome = 'SISTEMA_MODULO'
		AND m.nome = 'BASICO') AS id_modulo,
	   (SELECT f.id
		FROM basico.formulario f
		LEFT JOIN categoria c ON (f.id_categoria = c.id)
		LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'FORMULARIO'
		AND c.nome = 'FORMULARIO_INPUT_CADASTRO_ENDERECO'
		AND f.nome = 'FORM_DIALOG_ENDERECO') AS id_formulario,
		'SYSTEM_STARTUP' AS rowinfo;
		
INSERT INTO basico_form_form_elemento.assoccl_validator (id_modulo, id_formulario, rowinfo)
SELECT (SELECT m.id
		FROM basico.modulo m
		LEFT JOIN categoria c ON (m.id_categoria = c.id)
		LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'SISTEMA'
		AND c.nome = 'SISTEMA_MODULO'
		AND m.nome = 'BASICO') AS id_modulo,
	   (SELECT f.id
		FROM basico.formulario f
		LEFT JOIN categoria c ON (f.id_categoria = c.id)
		LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'FORMULARIO'
		AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO'
		AND f.nome = 'FORM_CADASTRAR_USUARIO_NAO_VALIDADO') AS id_formulario,
		'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_form_form_elemento.assoccl_validator (id_modulo, id_formulario, rowinfo)
SELECT (SELECT m.id
		FROM basico.modulo m
		LEFT JOIN categoria c ON (m.id_categoria = c.id)
		LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'SISTEMA'
		AND c.nome = 'SISTEMA_MODULO'
		AND m.nome = 'BASICO') AS id_modulo,
	   (SELECT f.id
		FROM basico.formulario f
		LEFT JOIN categoria c ON (f.id_categoria = c.id)
		LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'FORMULARIO'
		AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO'
		AND f.nome = 'FORM_DADOS_USUARIO') AS id_formulario,
		'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_form_form_elemento.assoccl_validator (id_modulo, id_formulario, rowinfo)
SELECT (SELECT m.id
		FROM basico.modulo m
		LEFT JOIN categoria c ON (m.id_categoria = c.id)
		LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'SISTEMA'
		AND c.nome = 'SISTEMA_MODULO'
		AND m.nome = 'BASICO') AS id_modulo,
	   (SELECT f.id
		FROM basico.formulario f
		LEFT JOIN categoria c ON (f.id_categoria = c.id)
		LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'FORMULARIO'
		AND c.nome = 'FORMULARIO_INPUT_LOGIN'
		AND f.nome = 'FORM_AUTENTICACAO_USUARIO') AS id_formulario,
		'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_form_form_elemento.assoccl_validator (id_modulo, id_formulario, rowinfo)
SELECT (SELECT m.id
		FROM basico.modulo m
		LEFT JOIN categoria c ON (m.id_categoria = c.id)
		LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'SISTEMA'
		AND c.nome = 'SISTEMA_MODULO'
		AND m.nome = 'BASICO') AS id_modulo,
	   (SELECT f.id
		FROM basico.formulario f
		LEFT JOIN categoria c ON (f.id_categoria = c.id)
		LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'FORMULARIO'
		AND c.nome = 'FORMULARIO_INPUT_CVC'
		AND f.nome = 'FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO') AS id_formulario,
		'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_form_form_elemento.assoccl_validator (id_modulo, id_formulario, rowinfo)
SELECT (SELECT m.id
        FROM basico.modulo m
        LEFT JOIN categoria c ON (m.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'SISTEMA'
        AND c.nome = 'SISTEMA_MODULO'
        AND m.nome = 'BASICO') AS id_modulo,
       (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_PESSOAIS'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_PESSOAIS') AS id_formulario,
        'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_form_form_elemento.assoccl_validator (id_modulo, id_formulario, rowinfo)
SELECT (SELECT m.id
        FROM basico.modulo m
        LEFT JOIN categoria c ON (m.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'SISTEMA'
        AND c.nome = 'SISTEMA_MODULO'
        AND m.nome = 'BASICO') AS id_modulo,
       (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_PESSOAIS_DOCUMENTOS_PESSOAIS'
        AND f.nome = 'FORM_DIALOG_DOCUMENTOS_PESSOAIS') AS id_formulario,
        'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_form_form_elemento.assoccl_validator (id_modulo, id_formulario, rowinfo)
SELECT (SELECT m.id
        FROM basico.modulo m
        LEFT JOIN categoria c ON (m.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'SISTEMA'
        AND c.nome = 'SISTEMA_MODULO'
        AND m.nome = 'BASICO') AS id_modulo,
       (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_PESSOAIS_TELEFONES_PESSOAIS'
        AND f.nome = 'FORM_DIALOG_TELEFONES_PESSOAIS') AS id_formulario,
        'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_form_form_elemento.assoccl_validator (id_modulo, id_formulario, rowinfo)
SELECT (SELECT m.id
        FROM basico.modulo m
        LEFT JOIN categoria c ON (m.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'SISTEMA'
        AND c.nome = 'SISTEMA_MODULO'
        AND m.nome = 'BASICO') AS id_modulo,
       (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_PESSOAIS_EMAILS_PESSOAIS'
        AND f.nome = 'FORM_DIALOG_EMAILS_PESSOAIS') AS id_formulario,
        'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_form_form_elemento.assoccl_validator (id_modulo, id_formulario, rowinfo)
SELECT (SELECT m.id
        FROM basico.modulo m
        LEFT JOIN categoria c ON (m.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'SISTEMA'
        AND c.nome = 'SISTEMA_MODULO'
        AND m.nome = 'BASICO') AS id_modulo,
       (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_PESSOAIS_WEBSITES_PESSOAIS'
        AND f.nome = 'FORM_DIALOG_WEBSITES_PESSOAIS') AS id_formulario,
        'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_form_form_elemento.assoccl_validator (id_modulo, id_formulario, rowinfo)
SELECT (SELECT m.id
        FROM basico.modulo m
        LEFT JOIN categoria c ON (m.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'SISTEMA'
        AND c.nome = 'SISTEMA_MODULO'
        AND m.nome = 'BASICO') AS id_modulo,
       (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_PESSOAIS_ENDERECOS_PESSOAIS'
        AND f.nome = 'FORM_DIALOG_ENDERECOS_PESSOAIS') AS id_formulario,
        'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_form_form_elemento.assoccl_validator (id_modulo, id_formulario, rowinfo)
SELECT (SELECT m.id
        FROM basico.modulo m
        LEFT JOIN categoria c ON (m.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'SISTEMA'
        AND c.nome = 'SISTEMA_MODULO'
        AND m.nome = 'BASICO') AS id_modulo,
       (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_INFORMACOES_BANCARIAS') AS id_formulario,
        'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_form_form_elemento.assoccl_validator (id_modulo, id_formulario, rowinfo)
SELECT (SELECT m.id
        FROM basico.modulo m
        LEFT JOIN categoria c ON (m.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'SISTEMA'
        AND c.nome = 'SISTEMA_MODULO'
        AND m.nome = 'BASICO') AS id_modulo,
       (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_INFORMACOES_BANCARIAS_DADOS_BANCARIOS') AS id_formulario,
        'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_form_form_elemento.assoccl_validator (id_modulo, id_formulario, rowinfo)
SELECT (SELECT m.id
        FROM basico.modulo m
        LEFT JOIN categoria c ON (m.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'SISTEMA'
        AND c.nome = 'SISTEMA_MODULO'
        AND m.nome = 'BASICO') AS id_modulo,
       (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_INFORMACOES_BANCARIAS_DADOS_BANCARIOS_CONTAS_BANCARIAS'
        AND f.nome = 'FORM_DIALOG_CONTAS_BANCARIAS') AS id_formulario,
        'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_form_form_elemento.assoccl_validator (id_modulo, id_formulario, rowinfo)
SELECT (SELECT m.id
        FROM basico.modulo m
        LEFT JOIN categoria c ON (m.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'SISTEMA'
        AND c.nome = 'SISTEMA_MODULO'
        AND m.nome = 'BASICO') AS id_modulo,
       (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_INFORMACOES_BANCARIAS_MOVIMENTACAO_FINANCEIRA') AS id_formulario,
        'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_form_form_elemento.assoccl_validator (id_modulo, id_formulario, rowinfo)
SELECT (SELECT m.id
        FROM basico.modulo m
        LEFT JOIN categoria c ON (m.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'SISTEMA'
        AND c.nome = 'SISTEMA_MODULO'
        AND m.nome = 'BASICO') AS id_modulo,
       (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_CONTA_BANCARIA'
        AND f.nome = 'FORM_DIALOG_CONTA_BANCARIA') AS id_formulario,
        'SYSTEM_STARTUP' AS rowinfo;