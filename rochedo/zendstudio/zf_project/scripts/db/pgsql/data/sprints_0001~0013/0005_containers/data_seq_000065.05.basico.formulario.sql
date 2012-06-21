/**
* SCRIPT DE POPULACAO DA TABELA basico.formulario
* 
* Esta tabela funciona como um banco de dados de formularios.
* 
* versao: 1.0 (POSTGRESQL 9.1.1)
* por: JOÃO VASCONCELOS (joao.vasconcelos@rochedoframework.com)
* criacao: 31/01/2012
* ultimas modificacoes:
* 															18/06/2012 - adição do componente do formulário;
* 								
*/

INSERT INTO basico.formulario  (id_componente, id_categoria, ativo, nivel, nome, constante_textual, form_name, form_method, form_action, 
                        form_attribs, permite_rascunho, rowinfo)
		SELECT	(SELECT comp.id
				 FROM basico.componente comp
				 LEFT JOIN basico.categoria c ON (comp.id_categoria = c.id)
				 LEFT JOIN basico.categoria cpai ON (c.id_categoria_pai = cpai.id)
				 LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
				 WHERE comp.nome = 'DOJO_Form'
				 AND c.nome = 'COMPONENTE_DOJO'
				 AND cpai.nome = 'COMPONENTE_HTML_JAVASCRIPT'
				 AND t.nome = 'COMPONENTE') AS id_componente,
		c.id AS id_categoria,
		true AS ativo,
		1 AS nivel,
		'FORM_DIALOG_ADMIN_RASCUNHOS' AS nome,
		'FORM_DIALOG_ADMIN_RASCUNHOS' AS constante_textual,
        'AdminRascunhos' AS form_name, 
        'post' AS form_method, NULL AS form_action, 
        NULL AS form_attribs, false AS permite_rascunho, 'SYSTEM_STARTUP' AS rowinfo       
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ADMIN_RASCUNHOS';

INSERT INTO basico.formulario  (id_componente, id_categoria, ativo, nivel, nome, constante_textual, form_name, form_method, 
								form_action, form_attribs, permite_rascunho, rowinfo)
		SELECT	(SELECT comp.id
				 FROM basico.componente comp
				 LEFT JOIN basico.categoria c ON (comp.id_categoria = c.id)
				 LEFT JOIN basico.categoria cpai ON (c.id_categoria_pai = cpai.id)
				 LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
				 WHERE comp.nome = 'DOJO_Form'
				 AND c.nome = 'COMPONENTE_DOJO'
				 AND cpai.nome = 'COMPONENTE_HTML_JAVASCRIPT'
				 AND t.nome = 'COMPONENTE') AS id_componente,
		c.id AS id_categoria,
	    true AS ativo,
	    1 AS nivel,
        'FORM_ACEITE_TERMOS_USO' AS nome,
        'FORM_ACEITE_TERMOS_USO' AS constante_textual,
        'AceiteTermosUso' AS form_name, 'post' AS form_method, NULL AS form_action, 
        '''onSubmit''=>"return(validateForm(''@nomeForm'', ''@title'', ''@message''))"' AS form_attribs, 
        false AS permite_rascunho, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO';

INSERT INTO basico.formulario  (id_componente, id_categoria, ativo, nivel, nome, constante_textual, form_name, form_method, 
								form_action, form_attribs, permite_rascunho, rowinfo)
		SELECT	(SELECT comp.id
				 FROM basico.componente comp
				 LEFT JOIN basico.categoria c ON (comp.id_categoria = c.id)
				 LEFT JOIN basico.categoria cpai ON (c.id_categoria_pai = cpai.id)
				 LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
				 WHERE comp.nome = 'DOJO_Form'
				 AND c.nome = 'COMPONENTE_DOJO'
				 AND cpai.nome = 'COMPONENTE_HTML_JAVASCRIPT'
				 AND t.nome = 'COMPONENTE') AS id_componente,
		c.id AS id_categoria,
	    true AS ativo,
	    1 AS nivel,
        'FORM_TROCA_DE_SENHA' AS nome,
        'FORM_TROCA_DE_SENHA' AS constante_textual,
        'TrocaDeSenha' AS form_name, 'post' AS form_method, NULL AS form_action, 
        '''onSubmit''=>"return(validateForm(''@nomeForm'', ''@title'', ''@message''))"' AS form_attribs, 
        false AS permite_rascunho, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO';

INSERT INTO basico.formulario  (id_componente, id_categoria, ativo, nivel, nome, constante_textual, form_name, form_method, form_action, 
                        form_attribs, permite_rascunho, rowinfo)
		SELECT	(SELECT comp.id
				 FROM basico.componente comp
				 LEFT JOIN basico.categoria c ON (comp.id_categoria = c.id)
				 LEFT JOIN basico.categoria cpai ON (c.id_categoria_pai = cpai.id)
				 LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
				 WHERE comp.nome = 'DOJO_Form'
				 AND c.nome = 'COMPONENTE_DOJO'
				 AND cpai.nome = 'COMPONENTE_HTML_JAVASCRIPT'
				 AND t.nome = 'COMPONENTE') AS id_componente,
		c.id AS id_categoria,
		true AS ativo,
		1 AS nivel,
		'FORM_DIALOG_SUGESTAO_LOGIN' AS nome,
		'FORM_DIALOG_SUGESTAO_LOGIN' AS constante_textual,
        'SugestaoLogin' AS form_name, 
        'post' AS form_method, NULL AS form_action, 
        NULL AS form_attribs, false AS permite_rascunho, 'SYSTEM_STARTUP' AS rowinfo       
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_SUGESTAO_LOGIN';

INSERT INTO basico.formulario  (id_componente, id_categoria, ativo, nivel, nome, constante_textual, form_name, permite_rascunho, rowinfo)
		SELECT	(SELECT comp.id
				 FROM basico.componente comp
				 LEFT JOIN basico.categoria c ON (comp.id_categoria = c.id)
				 LEFT JOIN basico.categoria cpai ON (c.id_categoria_pai = cpai.id)
				 LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
				 WHERE comp.nome = 'DOJO_Form'
				 AND c.nome = 'COMPONENTE_DOJO'
				 AND cpai.nome = 'COMPONENTE_HTML_JAVASCRIPT'
				 AND t.nome = 'COMPONENTE') AS id_componente,
		c.id AS id_categoria,
	   true AS ativo,
	   1 AS nivel,
       'FORM_DADOS_USUARIO' AS nome,
       'FORM_DADOS_USUARIO' AS constante_textual,
       'CadastrarDadosUsuario' AS form_name,
       false AS permite_rascunho, 
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO';

INSERT INTO basico.formulario  (id_componente, id_categoria, id_formulario_pai, ativo, nivel, nome, constante_textual, form_name, form_method, form_action, 
                        form_attribs, ordem, rowinfo)
		SELECT	(SELECT comp.id
				 FROM basico.componente comp
				 LEFT JOIN basico.categoria c ON (comp.id_categoria = c.id)
				 LEFT JOIN basico.categoria cpai ON (c.id_categoria_pai = cpai.id)
				 LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
				 WHERE comp.nome = 'DOJO_Form_SubForm'
				 AND c.nome = 'COMPONENTE_DOJO'
				 AND cpai.nome = 'COMPONENTE_HTML_JAVASCRIPT'
				 AND t.nome = 'COMPONENTE') AS id_componente,
		c.id AS id_categoria,
		(SELECT f.id
         FROM basico.formulario  f
         WHERE f.nome = 'FORM_DADOS_USUARIO') AS id_formulario_pai,
         true AS ativo,
         2 AS nivel,
       'SUBFORM_DADOS_USUARIO_DADOS_ACADEMICOS' AS nome,
       'SUBFORM_DADOS_USUARIO_DADOS_ACADEMICOS' AS constante_textual,
       'CadastrarDadosUsuarioDadosAcademicos' AS form_name, 
       'post' AS form_method, 
       NULL AS form_action, 
       NULL AS form_attribs, 
       2 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_ACADEMICOS';

INSERT INTO basico.formulario  (id_componente, id_categoria, ativo, nivel, nome, constante_textual, form_name, form_method, form_action, 
                        form_attribs, permite_rascunho, rowinfo)
		SELECT	(SELECT comp.id
				 FROM basico.componente comp
				 LEFT JOIN basico.categoria c ON (comp.id_categoria = c.id)
				 LEFT JOIN basico.categoria cpai ON (c.id_categoria_pai = cpai.id)
				 LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
				 WHERE comp.nome = 'DOJO_Form'
				 AND c.nome = 'COMPONENTE_DOJO'
				 AND cpai.nome = 'COMPONENTE_HTML_JAVASCRIPT'
				 AND t.nome = 'COMPONENTE') AS id_componente,
		c.id AS id_categoria,
		true AS ativo,
		1 AS nivel,
		'FORM_DIALOG_COORDENACAO_POS_GRADUACAO' AS nome,
		'FORM_DIALOG_COORDENACAO_POS_GRADUACAO' AS constante_textual,
        'CadastrarDadosUsuarioDadosAcademicosCoordenacaoPosGraduacao' AS form_name, 
        'post' AS form_method, NULL AS form_action, 
        NULL AS form_attribs,
        false AS permite_rascunho, 
        'SYSTEM_STARTUP' AS rowinfo       
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_COORDENACAO_POS_GRADUACAO';

INSERT INTO basico.formulario  (id_componente, id_categoria, ativo, nivel, nome, constante_textual, form_name, form_method, form_action, 
                        form_attribs, permite_rascunho, rowinfo)
		SELECT	(SELECT comp.id
				 FROM basico.componente comp
				 LEFT JOIN basico.categoria c ON (comp.id_categoria = c.id)
				 LEFT JOIN basico.categoria cpai ON (c.id_categoria_pai = cpai.id)
				 LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
				 WHERE comp.nome = 'DOJO_Form'
				 AND c.nome = 'COMPONENTE_DOJO'
				 AND cpai.nome = 'COMPONENTE_HTML_JAVASCRIPT'
				 AND t.nome = 'COMPONENTE') AS id_componente,
		c.id AS id_categoria,
		true AS ativo,
		1 AS nivel,
		'FORM_DIALOG_ORIENTACOES' AS nome,
		'FORM_DIALOG_ORIENTACOES' AS constante_textual,
        'CadastrarDadosUsuarioDadosAcademicosOrientacoes' AS form_name, 
        'post' AS form_method, NULL AS form_action, 
        NULL AS form_attribs, false AS permite_rascunho, 'SYSTEM_STARTUP' AS rowinfo       
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_ORIENTACOES';


INSERT INTO basico.formulario  (id_componente, id_categoria, id_formulario_pai, ativo, nivel, nome, constante_textual, form_name, form_method, form_action, 
                        form_attribs, ordem, permite_rascunho, rowinfo)
		SELECT	(SELECT comp.id
				 FROM basico.componente comp
				 LEFT JOIN basico.categoria c ON (comp.id_categoria = c.id)
				 LEFT JOIN basico.categoria cpai ON (c.id_categoria_pai = cpai.id)
				 LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
				 WHERE comp.nome = 'DOJO_Form_SubForm'
				 AND c.nome = 'COMPONENTE_DOJO'
				 AND cpai.nome = 'COMPONENTE_HTML_JAVASCRIPT'
				 AND t.nome = 'COMPONENTE') AS id_componente,
		c.id AS id_categoria,
   	    (SELECT f.id
         FROM basico.formulario  f
         WHERE f.nome = 'FORM_DADOS_USUARIO') AS id_formulario_pai,
        true AS ativo,
        2 AS nivel,
        'SUBFORM_DADOS_USUARIO_DADOS_PROFISSIONAIS' AS nome,
        'SUBFORM_DADOS_USUARIO_DADOS_PROFISSIONAIS' AS constante_textual,
        'CadastrarDadosUsuarioDadosProfissionais' AS form_name, 
        'post' AS form_method, 
        NULL AS form_action, 
        NULL AS form_attribs,
        3 AS ordem,
        false AS permite_rascunho, 
        'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_PROFISSIONAIS';

INSERT INTO basico.formulario  (id_componente, id_categoria, id_formulario_pai, ativo, nivel, nome, constante_textual, form_name, form_method, form_action, 
                        form_attribs, ordem, rowinfo)
		SELECT	(SELECT comp.id
				 FROM basico.componente comp
				 LEFT JOIN basico.categoria c ON (comp.id_categoria = c.id)
				 LEFT JOIN basico.categoria cpai ON (c.id_categoria_pai = cpai.id)
				 LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
				 WHERE comp.nome = 'DOJO_Form_SubForm'
				 AND c.nome = 'COMPONENTE_DOJO'
				 AND cpai.nome = 'COMPONENTE_HTML_JAVASCRIPT'
				 AND t.nome = 'COMPONENTE') AS id_componente,
		c.id AS id_categoria,
   	   (SELECT f.id
        FROM basico.formulario  f
        WHERE f.nome = 'FORM_DADOS_USUARIO') AS id_formulario_pai,
       true AS ativo,
	   2 AS nivel,
       'SUBFORM_DADOS_USUARIO_DADOS_BIOMETRICOS' AS nome,
       'SUBFORM_DADOS_USUARIO_DADOS_BIOMETRICOS' AS constante_textual,
       'CadastrarDadosUsuarioDadosBiometricos' AS form_name, 
       'post' AS form_method, 
       '/basico/dadosusuario/salvar' AS form_action, 
       '''onSubmit''=>"return(validateForm(''@nomeForm'', ''@title'', ''@message''))"' AS form_attribs,
       4 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_BIOMETRICOS';

INSERT INTO basico.formulario  (id_componente, id_categoria, id_formulario_pai, ativo, nivel, nome, constante_textual, form_name, form_method, form_action, 
                        form_attribs, ordem, permite_rascunho, rowinfo)
		SELECT	(SELECT comp.id
				 FROM basico.componente comp
				 LEFT JOIN basico.categoria c ON (comp.id_categoria = c.id)
				 LEFT JOIN basico.categoria cpai ON (c.id_categoria_pai = cpai.id)
				 LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
				 WHERE comp.nome = 'DOJO_Form_SubForm'
				 AND c.nome = 'COMPONENTE_DOJO'
				 AND cpai.nome = 'COMPONENTE_HTML_JAVASCRIPT'
				 AND t.nome = 'COMPONENTE') AS id_componente,
		c.id AS id_categoria,
   	   (SELECT f.id
        FROM basico.formulario  f
        WHERE f.nome = 'FORM_DADOS_USUARIO') AS id_formulario_pai,
       true AS ativo,
	   2 AS nivel,
       'SUBFORM_DADOS_USUARIO_CONTA' AS nome,
       'SUBFORM_DADOS_USUARIO_CONTA' AS constante_textual,
       'CadastrarDadosUsuarioConta' AS form_name, 
       'post' AS form_method, 
       '/basico/dadosusuario/salvar' AS form_action, 
       '''onSubmit''=>"return(validateForm(''@nomeForm'', ''@title'', ''@message''))"' AS form_attribs,
       7 AS ordem,
       false AS permite_rascunho, 
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_CONTA';

INSERT INTO basico.formulario  (id_componente, id_categoria, ativo, nivel, nome, constante_textual, form_name, form_method, form_action, 
                        form_attribs, rowinfo)
		SELECT	(SELECT comp.id
				 FROM basico.componente comp
				 LEFT JOIN basico.categoria c ON (comp.id_categoria = c.id)
				 LEFT JOIN basico.categoria cpai ON (c.id_categoria_pai = cpai.id)
				 LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
				 WHERE comp.nome = 'DOJO_Form'
				 AND c.nome = 'COMPONENTE_DOJO'
				 AND cpai.nome = 'COMPONENTE_HTML_JAVASCRIPT'
				 AND t.nome = 'COMPONENTE') AS id_componente,
		c.id AS id_categoria,
		true AS ativo,
		1 AS nivel,
		'FORM_DIALOG_VINCULO_PROFISSIONAL' AS nome,
		'FORM_DIALOG_VINCULO_PROFISSIONAL' AS constante_textual,
        'CadastrarDadosUsuarioDadosProfissionaisVinculoProfissional' AS form_name, 
        'post' AS form_method, NULL AS form_action, 
        NULL AS form_attribs, 'SYSTEM_STARTUP' AS rowinfo       
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL';

INSERT INTO basico.formulario  (id_componente, id_categoria, ativo, nivel, nome, constante_textual, form_name, form_method, form_action, 
                        form_attribs, permite_rascunho, rowinfo)
		SELECT	(SELECT comp.id
				 FROM basico.componente comp
				 LEFT JOIN basico.categoria c ON (comp.id_categoria = c.id)
				 LEFT JOIN basico.categoria cpai ON (c.id_categoria_pai = cpai.id)
				 LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
				 WHERE comp.nome = 'DOJO_Form'
				 AND c.nome = 'COMPONENTE_DOJO'
				 AND cpai.nome = 'COMPONENTE_HTML_JAVASCRIPT'
				 AND t.nome = 'COMPONENTE') AS id_componente,
		c.id AS id_categoria,
		true AS ativo,
		1 AS nivel,
		'FORM_DIALOG_TELEFONES_PROFISSIONAIS' AS nome,
		'FORM_DIALOG_TELEFONES_PROFISSIONAIS' AS constante_textual,
        'CadastrarDadosUsuarioDadosProfissionaisTelefonesProfissionais' AS form_name, 
        'post' AS form_method, NULL AS form_action, 
        NULL AS form_attribs, false AS permite_rascunho, 'SYSTEM_STARTUP' AS rowinfo       
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL_TELEFONES_PROFISSIONAIS';

INSERT INTO basico.formulario  (id_componente, id_categoria, ativo, nivel, nome, constante_textual, form_name, form_method, form_action, 
                        form_attribs, permite_rascunho, rowinfo)
		SELECT	(SELECT comp.id
				 FROM basico.componente comp
				 LEFT JOIN basico.categoria c ON (comp.id_categoria = c.id)
				 LEFT JOIN basico.categoria cpai ON (c.id_categoria_pai = cpai.id)
				 LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
				 WHERE comp.nome = 'DOJO_Form'
				 AND c.nome = 'COMPONENTE_DOJO'
				 AND cpai.nome = 'COMPONENTE_HTML_JAVASCRIPT'
				 AND t.nome = 'COMPONENTE') AS id_componente,
		c.id AS id_categoria,
		true AS ativo,
		1 AS nivel,
		'FORM_DIALOG_EMAILS_PROFISSIONAIS' AS nome,
		'FORM_DIALOG_EMAILS_PROFISSIONAIS' AS constante_textual,
        'CadastrarDadosUsuarioDadosProfissionaisEmailsProfissionais' AS form_name, 
        'post' AS form_method, NULL AS form_action, 
        NULL AS form_attribs, false AS permite_rascunho, 'SYSTEM_STARTUP' AS rowinfo       
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL_EMAILS_PROFISSIONAIS';

INSERT INTO basico.formulario  (id_componente, id_categoria, ativo, nivel, nome, constante_textual, form_name, form_method, form_action, 
                        form_attribs, permite_rascunho, rowinfo)
		SELECT	(SELECT comp.id
				 FROM basico.componente comp
				 LEFT JOIN basico.categoria c ON (comp.id_categoria = c.id)
				 LEFT JOIN basico.categoria cpai ON (c.id_categoria_pai = cpai.id)
				 LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
				 WHERE comp.nome = 'DOJO_Form'
				 AND c.nome = 'COMPONENTE_DOJO'
				 AND cpai.nome = 'COMPONENTE_HTML_JAVASCRIPT'
				 AND t.nome = 'COMPONENTE') AS id_componente,
		c.id AS id_categoria,
		true AS ativo,
		1 AS nivel,
		'FORM_DIALOG_WEBSITES_PROFISSIONAIS' AS nome,
		'FORM_DIALOG_WEBSITES_PROFISSIONAIS' AS constante_textual,
        'CadastrarDadosUsuarioDadosProfissionaisWebsitesProfissionais' AS form_name, 
        'post' AS form_method, NULL AS form_action, 
        NULL AS form_attribs, false AS permite_rascunho, 'SYSTEM_STARTUP' AS rowinfo       
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL_WEBSITES_PROFISSIONAIS';

INSERT INTO basico.formulario  (id_componente, id_categoria, ativo, nivel, nome, constante_textual, form_name, form_method, form_action, 
                        form_attribs, permite_rascunho, rowinfo)
		SELECT	(SELECT comp.id
				 FROM basico.componente comp
				 LEFT JOIN basico.categoria c ON (comp.id_categoria = c.id)
				 LEFT JOIN basico.categoria cpai ON (c.id_categoria_pai = cpai.id)
				 LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
				 WHERE comp.nome = 'DOJO_Form'
				 AND c.nome = 'COMPONENTE_DOJO'
				 AND cpai.nome = 'COMPONENTE_HTML_JAVASCRIPT'
				 AND t.nome = 'COMPONENTE') AS id_componente,
		c.id AS id_categoria,
		true AS ativo,
		1 AS nivel,
		'FORM_DIALOG_ENDERECOS_PROFISSIONAIS' AS nome,
		'FORM_DIALOG_ENDERECOS_PROFISSIONAIS' AS constante_textual,
        'CadastrarDadosUsuarioDadosProfissionaisEnderecosProfissionais' AS form_name, 
        'post' AS form_method, NULL AS form_action, 
        NULL AS form_attribs, false AS permite_rascunho, 'SYSTEM_STARTUP' AS rowinfo       
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL_ENDERECOS_PROFISSIONAIS';

INSERT INTO basico.formulario  (id_componente, id_categoria, ativo, nivel, nome, constante_textual, form_name, form_method, form_action, 
                        form_attribs, rowinfo)
		SELECT	(SELECT comp.id
				 FROM basico.componente comp
				 LEFT JOIN basico.categoria c ON (comp.id_categoria = c.id)
				 LEFT JOIN basico.categoria cpai ON (c.id_categoria_pai = cpai.id)
				 LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
				 WHERE comp.nome = 'DOJO_Form'
				 AND c.nome = 'COMPONENTE_DOJO'
				 AND cpai.nome = 'COMPONENTE_HTML_JAVASCRIPT'
				 AND t.nome = 'COMPONENTE') AS id_componente,
		c.id AS id_categoria,
		true AS ativo,
		1 AS nivel,
		'FORM_DIALOG_TELEFONE' AS nome,
		'FORM_DIALOG_TELEFONE' AS constante_textual,
        'CadastrarTelefone' AS form_name, 
        'post' AS form_method, NULL AS form_action, 
        NULL AS form_attribs, 'SYSTEM_STARTUP' AS rowinfo       
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_TELEFONE';

INSERT INTO basico.formulario  (id_componente, id_categoria, ativo, nivel, nome, constante_textual, form_name, form_method, form_action, 
                        form_attribs, rowinfo)
		SELECT	(SELECT comp.id
				 FROM basico.componente comp
				 LEFT JOIN basico.categoria c ON (comp.id_categoria = c.id)
				 LEFT JOIN basico.categoria cpai ON (c.id_categoria_pai = cpai.id)
				 LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
				 WHERE comp.nome = 'DOJO_Form'
				 AND c.nome = 'COMPONENTE_DOJO'
				 AND cpai.nome = 'COMPONENTE_HTML_JAVASCRIPT'
				 AND t.nome = 'COMPONENTE') AS id_componente,
		c.id AS id_categoria,
		true AS ativo,
		1 AS nivel,
		'FORM_DIALOG_EMAIL' AS nome,
		'FORM_DIALOG_EMAIL' AS constante_textual,
        'CadastrarEmail' AS form_name, 
        'post' AS form_method, NULL AS form_action, 
        NULL AS form_attribs, 'SYSTEM_STARTUP' AS rowinfo       
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_EMAIL';


INSERT INTO basico.formulario  (id_componente, id_categoria, ativo, nivel, nome, constante_textual, form_name, form_method, form_action, 
                        form_attribs, rowinfo)
		SELECT	(SELECT comp.id
				 FROM basico.componente comp
				 LEFT JOIN basico.categoria c ON (comp.id_categoria = c.id)
				 LEFT JOIN basico.categoria cpai ON (c.id_categoria_pai = cpai.id)
				 LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
				 WHERE comp.nome = 'DOJO_Form'
				 AND c.nome = 'COMPONENTE_DOJO'
				 AND cpai.nome = 'COMPONENTE_HTML_JAVASCRIPT'
				 AND t.nome = 'COMPONENTE') AS id_componente,
		c.id AS id_categoria,
		true AS ativo,
		1 AS nivel,
		'FORM_DIALOG_WEBSITE' AS nome,
		'FORM_DIALOG_WEBSITE' AS constante_textual,
        'CadastrarWebsite' AS form_name, 
        'post' AS form_method,
        '/basico/website/salvarwebsite' AS form_action, 
        '''onSubmit''=>"return(validateForm(''@nomeForm'', ''@title'', ''@message''))"'  AS form_attribs,
        'SYSTEM_STARTUP' AS rowinfo       
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_WEBSITE';

INSERT INTO basico.formulario  (id_componente, id_categoria, ativo, nivel, nome, constante_textual, form_name, form_method, form_action, 
                        form_attribs, rowinfo)
		SELECT	(SELECT comp.id
				 FROM basico.componente comp
				 LEFT JOIN basico.categoria c ON (comp.id_categoria = c.id)
				 LEFT JOIN basico.categoria cpai ON (c.id_categoria_pai = cpai.id)
				 LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
				 WHERE comp.nome = 'DOJO_Form'
				 AND c.nome = 'COMPONENTE_DOJO'
				 AND cpai.nome = 'COMPONENTE_HTML_JAVASCRIPT'
				 AND t.nome = 'COMPONENTE') AS id_componente,
		c.id AS id_categoria,
		true AS ativo,
		1 AS nivel,
		'FORM_DIALOG_ENDERECO' AS nome,
		'FORM_DIALOG_ENDERECO' AS constante_textual,
        'CadastrarEndereco' AS form_name, 
        'post' AS form_method, NULL AS form_action, 
        NULL AS form_attribs, 'SYSTEM_STARTUP' AS rowinfo       
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_ENDERECO';

INSERT INTO basico.formulario  (id_componente, id_categoria, ativo, nivel, nome, constante_textual, form_name, form_method, 
								form_action, form_attribs, permite_rascunho, rowinfo)
		SELECT	(SELECT comp.id
				 FROM basico.componente comp
				 LEFT JOIN basico.categoria c ON (comp.id_categoria = c.id)
				 LEFT JOIN basico.categoria cpai ON (c.id_categoria_pai = cpai.id)
				 LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
				 WHERE comp.nome = 'DOJO_Form'
				 AND c.nome = 'COMPONENTE_DOJO'
				 AND cpai.nome = 'COMPONENTE_HTML_JAVASCRIPT'
				 AND t.nome = 'COMPONENTE') AS id_componente,
		c.id AS id_categoria,
	   true AS ativo,
	   1 AS nivel,
       'FORM_CADASTRAR_USUARIO_NAO_VALIDADO' AS nome,
       'FORM_CADASTRAR_USUARIO_NAO_VALIDADO' AS constante_textual,
       'CadastrarUsuarioNaoValidado' AS form_name, 'post' AS form_method, '/basico/login/verificaNovoLogin' AS form_action, 
       '''onSubmit''=>"return(validateForm(''@nomeForm'', ''@title'', ''@message''))"' AS form_attribs, false AS permite_rascunho, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO';

INSERT INTO basico.formulario  (id_componente, id_categoria, ativo, nivel, nome, constante_textual, form_name, form_method, 
								form_action, form_attribs, permite_rascunho, rowinfo)
		SELECT	(SELECT comp.id
				 FROM basico.componente comp
				 LEFT JOIN basico.categoria c ON (comp.id_categoria = c.id)
				 LEFT JOIN basico.categoria cpai ON (c.id_categoria_pai = cpai.id)
				 LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
				 WHERE comp.nome = 'DOJO_Form'
				 AND c.nome = 'COMPONENTE_DOJO'
				 AND cpai.nome = 'COMPONENTE_HTML_JAVASCRIPT'
				 AND t.nome = 'COMPONENTE') AS id_componente,
		c.id AS id_categoria,
	   true AS ativo,
	   1 AS nivel,
       'FORM_CADASTRAR_USUARIO_VALIDADO' AS nome,
       'FORM_CADASTRAR_USUARIO_VALIDADO' AS constante_textual,
       'CadastrarUsuarioValidado' AS form_name, 'post' AS form_method, '/basico/login/salvarUsuarioValidado' AS form_action, 
       '''onSubmit''=>"return(validateForm(''@nomeForm'', ''@title'', ''@message''))"' AS form_attribs, false AS permite_rascunho, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO';

INSERT INTO basico.formulario  (id_componente, id_categoria, ativo, nivel, nome, constante_textual,
                        form_name, form_method, form_action, form_attribs, rowinfo)
		SELECT	(SELECT comp.id
				 FROM basico.componente comp
				 LEFT JOIN basico.categoria c ON (comp.id_categoria = c.id)
				 LEFT JOIN basico.categoria cpai ON (c.id_categoria_pai = cpai.id)
				 LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
				 WHERE comp.nome = 'DOJO_Form'
				 AND c.nome = 'COMPONENTE_DOJO'
				 AND cpai.nome = 'COMPONENTE_HTML_JAVASCRIPT'
				 AND t.nome = 'COMPONENTE') AS id_componente,
		c.id AS id_categoria,
        true AS ativo,
	    1 AS nivel,
        'FORM_DIALOG_DOCUMENTOS_IDENTIFICACAO' AS nome,
        'FORM_DIALOG_DOCUMENTOS_IDENTIFICACAO' AS constante_textual,
        'DocumentosIdentificacao' AS form_name, 'post' AS form_method, NULL AS form_action, 
        '''onSubmit''=>"return(validateForm(''@nomeForm'', ''@title'', ''@message''))"' AS form_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_DOCUMENTOS_IDENTIFICACAO';

INSERT INTO basico.formulario  (id_componente, id_categoria, ativo, nivel, nome, constante_textual,
                        form_name, form_method, form_action, form_attribs, rowinfo)
		SELECT	(SELECT comp.id
				 FROM basico.componente comp
				 LEFT JOIN basico.categoria c ON (comp.id_categoria = c.id)
				 LEFT JOIN basico.categoria cpai ON (c.id_categoria_pai = cpai.id)
				 LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
				 WHERE comp.nome = 'DOJO_Form'
				 AND c.nome = 'COMPONENTE_DOJO'
				 AND cpai.nome = 'COMPONENTE_HTML_JAVASCRIPT'
				 AND t.nome = 'COMPONENTE') AS id_componente,
		c.id AS id_categoria,
 	    true AS ativo,	
  	    1 AS nivel,
        'FORM_DIALOG_DOCUMENTO' AS nome,
        'FORM_DIALOG_DOCUMENTO' AS constante_textual,
        'CadastrarDocumento' AS form_name, 'post' AS form_method, NULL AS form_action, 
        '''onSubmit''=>"return(validateForm(''@nomeForm'', ''@title'', ''@message''))"' AS form_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_DOCUMENTOS_IDENTIFICACAO';

INSERT INTO basico.formulario  (id_componente, id_categoria, ativo, nivel, nome, constante_textual, form_name, form_method, 
								form_action, form_attribs, permite_rascunho, rowinfo)
		SELECT	(SELECT comp.id
				 FROM basico.componente comp
				 LEFT JOIN basico.categoria c ON (comp.id_categoria = c.id)
				 LEFT JOIN basico.categoria cpai ON (c.id_categoria_pai = cpai.id)
				 LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
				 WHERE comp.nome = 'DOJO_Form'
				 AND c.nome = 'COMPONENTE_DOJO'
				 AND cpai.nome = 'COMPONENTE_HTML_JAVASCRIPT'
				 AND t.nome = 'COMPONENTE') AS id_componente,
		c.id AS id_categoria,
	    true AS ativo,
	    1 AS nivel,
        'FORM_AUTENTICACAO_USUARIO' AS nome,
        'FORM_AUTENTICACAO_USUARIO' AS constante_textual,
        'AutenticacaoUsuario' AS form_name, 'post' AS form_method, '/basico/autenticador/verificaAutenticacaoUsuario' AS form_action, 
        '''onSubmit''=>"return(validateForm(''@nomeForm'', ''@title'', ''@message''))"' AS form_attribs, false AS permite_rascunho, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_LOGIN';

INSERT INTO basico.formulario  (id_componente, id_categoria, id_formulario_pai, ativo, nivel, nome, constante_textual, form_name, form_method, form_action, 
                        form_attribs, ordem, rowinfo)
		SELECT	(SELECT comp.id
				 FROM basico.componente comp
				 LEFT JOIN basico.categoria c ON (comp.id_categoria = c.id)
				 LEFT JOIN basico.categoria cpai ON (c.id_categoria_pai = cpai.id)
				 LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
				 WHERE comp.nome = 'DOJO_Form_SubForm'
				 AND c.nome = 'COMPONENTE_DOJO'
				 AND cpai.nome = 'COMPONENTE_HTML_JAVASCRIPT'
				 AND t.nome = 'COMPONENTE') AS id_componente,
		c.id AS id_categoria,
        (SELECT f.id
         FROM basico.formulario  f
         WHERE f.nome = 'FORM_DADOS_USUARIO') AS id_formulario_pai,
        true AS ativo,
        2 AS nivel,
        'SUBFORM_DADOS_USUARIO_DADOS_PESSOAIS' AS nome,
        'SUBFORM_DADOS_USUARIO_DADOS_PESSOAIS' AS constante_textual,
        'CadastrarDadosUsuarioDadosPessoais' AS form_name, 
        'post' AS form_method, 
        '/basico/dadosusuario/salvar' AS form_action, 
        '''onSubmit''=>"return(validateForm(''@nomeForm'', ''@title'', ''@message''))"' AS form_attribs, 
        1 AS ordem,
        'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_PESSOAIS';

INSERT INTO basico.formulario  (id_componente, id_categoria, ativo, nivel, nome, constante_textual, form_name, form_method, form_action, 
                        form_attribs, permite_rascunho, rowinfo)
		SELECT	(SELECT comp.id
				 FROM basico.componente comp
				 LEFT JOIN basico.categoria c ON (comp.id_categoria = c.id)
				 LEFT JOIN basico.categoria cpai ON (c.id_categoria_pai = cpai.id)
				 LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
				 WHERE comp.nome = 'DOJO_Form'
				 AND c.nome = 'COMPONENTE_DOJO'
				 AND cpai.nome = 'COMPONENTE_HTML_JAVASCRIPT'
				 AND t.nome = 'COMPONENTE') AS id_componente,
		c.id AS id_categoria,
		true AS ativo,
		1 AS nivel,
		'FORM_DIALOG_DOCUMENTOS_PESSOAIS' AS nome,
		'FORM_DIALOG_DOCUMENTOS_PESSOAIS' AS constante_textual,
        'CadastrarDadosUsuarioDadosPessoaisDocumentosPessoais' AS form_name, 
        'post' AS form_method, NULL AS form_action, 
        NULL AS form_attribs, false AS permite_rascunho, 'SYSTEM_STARTUP' AS rowinfo       
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_PESSOAIS_DOCUMENTOS_PESSOAIS';

INSERT INTO basico.formulario  (id_componente, id_categoria, ativo, nivel, nome, constante_textual, form_name, form_method, form_action, 
                        form_attribs, rowinfo)
		SELECT	(SELECT comp.id
				 FROM basico.componente comp
				 LEFT JOIN basico.categoria c ON (comp.id_categoria = c.id)
				 LEFT JOIN basico.categoria cpai ON (c.id_categoria_pai = cpai.id)
				 LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
				 WHERE comp.nome = 'DOJO_Form'
				 AND c.nome = 'COMPONENTE_DOJO'
				 AND cpai.nome = 'COMPONENTE_HTML_JAVASCRIPT'
				 AND t.nome = 'COMPONENTE') AS id_componente,
		c.id AS id_categoria,
		true AS ativo,
		1 AS nivel,
		'FORM_DIALOG_TELEFONES_PESSOAIS' AS nome,
		'FORM_DIALOG_TELEFONES_PESSOAIS' AS constante_textual,
        'CadastrarDadosUsuarioDadosPessoaisTelefonesPessoais' AS form_name, 
        'post' AS form_method, NULL AS form_action, 
        NULL AS form_attribs, 'SYSTEM_STARTUP' AS rowinfo       
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_PESSOAIS_TELEFONES_PESSOAIS';

INSERT INTO basico.formulario  (id_componente, id_categoria, ativo, nivel, nome, constante_textual, form_name, form_method, form_action, 
                        form_attribs, rowinfo)
		SELECT	(SELECT comp.id
				 FROM basico.componente comp
				 LEFT JOIN basico.categoria c ON (comp.id_categoria = c.id)
				 LEFT JOIN basico.categoria cpai ON (c.id_categoria_pai = cpai.id)
				 LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
				 WHERE comp.nome = 'DOJO_Form'
				 AND c.nome = 'COMPONENTE_DOJO'
				 AND cpai.nome = 'COMPONENTE_HTML_JAVASCRIPT'
				 AND t.nome = 'COMPONENTE') AS id_componente,
		c.id AS id_categoria,
		true AS ativo,
		1 AS nivel,
		'FORM_DIALOG_EMAILS_PESSOAIS' AS nome,
		'FORM_DIALOG_EMAILS_PESSOAIS' AS constante_textual,
        'CadastrarDadosUsuarioDadosPessoaisEmailsPessoais' AS form_name, 
        'post' AS form_method, NULL AS form_action, 
        NULL AS form_attribs, 'SYSTEM_STARTUP' AS rowinfo       
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_PESSOAIS_EMAILS_PESSOAIS';

INSERT INTO basico.formulario  (id_componente, id_categoria, ativo, nivel, nome, constante_textual, form_name, form_method, form_action, 
                        form_attribs, rowinfo)
		SELECT	(SELECT comp.id
				 FROM basico.componente comp
				 LEFT JOIN basico.categoria c ON (comp.id_categoria = c.id)
				 LEFT JOIN basico.categoria cpai ON (c.id_categoria_pai = cpai.id)
				 LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
				 WHERE comp.nome = 'DOJO_Form'
				 AND c.nome = 'COMPONENTE_DOJO'
				 AND cpai.nome = 'COMPONENTE_HTML_JAVASCRIPT'
				 AND t.nome = 'COMPONENTE') AS id_componente,
		c.id AS id_categoria,
		true AS ativo,
		1 AS nivel,
		'FORM_DIALOG_WEBSITES_PESSOAIS' AS nome,
		'FORM_DIALOG_WEBSITES_PESSOAIS' AS constante_textual,
        'CadastrarDadosUsuarioDadosPessoaisWebsitesPessoais' AS form_name, 
        'post' AS form_method, NULL AS form_action, 
        NULL AS form_attribs, 'SYSTEM_STARTUP' AS rowinfo       
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_PESSOAIS_WEBSITES_PESSOAIS';

INSERT INTO basico.formulario  (id_componente, id_categoria, ativo, nivel, nome, constante_textual, form_name, form_method, form_action, 
                        form_attribs, rowinfo)
		SELECT	(SELECT comp.id
				 FROM basico.componente comp
				 LEFT JOIN basico.categoria c ON (comp.id_categoria = c.id)
				 LEFT JOIN basico.categoria cpai ON (c.id_categoria_pai = cpai.id)
				 LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
				 WHERE comp.nome = 'DOJO_Form'
				 AND c.nome = 'COMPONENTE_DOJO'
				 AND cpai.nome = 'COMPONENTE_HTML_JAVASCRIPT'
				 AND t.nome = 'COMPONENTE') AS id_componente,
		c.id AS id_categoria,
		true AS ativo,
		1 AS nivel,
		'FORM_DIALOG_ENDERECOS_PESSOAIS' AS nome,
		'FORM_DIALOG_ENDERECOS_PESSOAIS' AS constante_textual,
        'CadastrarDadosUsuarioDadosPessoaisEnderecosPessoais' AS form_name, 
        'post' AS form_method, NULL AS form_action, 
        NULL AS form_attribs, 'SYSTEM_STARTUP' AS rowinfo       
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_PESSOAIS_ENDERECOS_PESSOAIS';

INSERT INTO basico.formulario  (id_componente, id_categoria, id_formulario_pai, ativo, nivel, nome, constante_textual, form_name, form_attribs, ordem, permite_rascunho, rowinfo)
		SELECT	(SELECT comp.id
				 FROM basico.componente comp
				 LEFT JOIN basico.categoria c ON (comp.id_categoria = c.id)
				 LEFT JOIN basico.categoria cpai ON (c.id_categoria_pai = cpai.id)
				 LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
				 WHERE comp.nome = 'DOJO_Form_SubForm'
				 AND c.nome = 'COMPONENTE_DOJO'
				 AND cpai.nome = 'COMPONENTE_HTML_JAVASCRIPT'
				 AND t.nome = 'COMPONENTE') AS id_componente,
		c.id AS id_categoria,
        (SELECT f.id
        FROM basico.formulario  f
        WHERE f.nome = 'FORM_DADOS_USUARIO') AS id_formulario_pai,
        true AS ativo,
        2 AS nivel,
       'SUBFORM_DADOS_USUARIO_INFORMACOES_BANCARIAS' AS nome,
       'SUBFORM_DADOS_USUARIO_INFORMACOES_BANCARIAS' AS constante_textual,
       'CadastrarDadosUsuarioInformacoesBancarias' AS form_name, 
       NULL AS form_attribs, 
       5 AS ordem,
       false AS permite_rascunho, 
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_SUB_FORMULARIO';

INSERT INTO basico.formulario  (id_componente, id_categoria, id_formulario_pai, ativo, nivel, nome, constante_textual, form_name, form_method, form_action,
						form_attribs, ordem, rowinfo)
		SELECT	(SELECT comp.id
				 FROM basico.componente comp
				 LEFT JOIN basico.categoria c ON (comp.id_categoria = c.id)
				 LEFT JOIN basico.categoria cpai ON (c.id_categoria_pai = cpai.id)
				 LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
				 WHERE comp.nome = 'DOJO_Form_SubForm'
				 AND c.nome = 'COMPONENTE_DOJO'
				 AND cpai.nome = 'COMPONENTE_HTML_JAVASCRIPT'
				 AND t.nome = 'COMPONENTE') AS id_componente,
		c.id AS id_categoria,
        (SELECT f.id
        FROM basico.formulario  f
        WHERE f.nome = 'SUBFORM_DADOS_USUARIO_INFORMACOES_BANCARIAS') AS id_formulario_pai,
        true AS ativo,
        2 AS nivel,
       'SUBFORM_DADOS_USUARIO_INFORMACOES_BANCARIAS_DADOS_BANCARIOS' AS nome,
       'SUBFORM_DADOS_USUARIO_INFORMACOES_BANCARIAS_DADOS_BANCARIOS' AS constante_textual,
       'CadastrarDadosUsuarioInformacoesBancariasDadosBancarios' AS form_name,
       'post' AS form_method, 
       NULL AS form_action, 
       NULL AS form_attribs, 
       1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_SUB_FORMULARIO';

INSERT INTO basico.formulario  (id_componente, id_categoria, ativo, nivel, nome, constante_textual, form_name, form_method, form_action, 
                        form_attribs, permite_rascunho, rowinfo)
		SELECT	(SELECT comp.id
				 FROM basico.componente comp
				 LEFT JOIN basico.categoria c ON (comp.id_categoria = c.id)
				 LEFT JOIN basico.categoria cpai ON (c.id_categoria_pai = cpai.id)
				 LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
				 WHERE comp.nome = 'DOJO_Form'
				 AND c.nome = 'COMPONENTE_DOJO'
				 AND cpai.nome = 'COMPONENTE_HTML_JAVASCRIPT'
				 AND t.nome = 'COMPONENTE') AS id_componente,
		c.id AS id_categoria,
		true AS ativo,
		1 AS nivel,
		'FORM_DIALOG_CONTAS_BANCARIAS' AS nome,
		'FORM_DIALOG_CONTAS_BANCARIAS' AS constante_textual,
        'CadastrarDadosUsuarioInformacoesBancariasContasBancarias' AS form_name, 
        'post' AS form_method, NULL AS form_action, 
        NULL AS form_attribs, false AS permite_rascunho, 'SYSTEM_STARTUP' AS rowinfo       
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_INFORMACOES_BANCARIAS_DADOS_BANCARIOS_CONTAS_BANCARIAS';

INSERT INTO basico.formulario  (id_componente, id_categoria, id_formulario_pai, ativo, nivel, nome, constante_textual, form_name, form_method, form_action,
						form_attribs, ordem, permite_rascunho, rowinfo)
		SELECT	(SELECT comp.id
				 FROM basico.componente comp
				 LEFT JOIN basico.categoria c ON (comp.id_categoria = c.id)
				 LEFT JOIN basico.categoria cpai ON (c.id_categoria_pai = cpai.id)
				 LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
				 WHERE comp.nome = 'DOJO_Form_SubForm'
				 AND c.nome = 'COMPONENTE_DOJO'
				 AND cpai.nome = 'COMPONENTE_HTML_JAVASCRIPT'
				 AND t.nome = 'COMPONENTE') AS id_componente,
		c.id AS id_categoria,
		(SELECT f.id
             FROM basico.formulario  f
             WHERE f.nome = 'SUBFORM_DADOS_USUARIO_INFORMACOES_BANCARIAS') AS id_formulario_pai,
       true AS ativo,
       2 AS nivel,
       'SUBFORM_DADOS_USUARIO_INFORMACOES_BANCARIAS_MOVIMENTACAO_FINANCEIRA' AS nome,
       'SUBFORM_DADOS_USUARIO_INFORMACOES_BANCARIAS_MOVIMENTACAO_FINANCEIRA' AS constante_textual,
       'CadastrarDadosUsuarioInformacoesBancariasMovimentacaoFinanceira' AS form_name,
       'post' AS form_method, 
       NULL AS form_action, 
       NULL AS form_attribs, 
       2 AS ordem,
       false AS permite_rascunho, 
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_SUB_FORMULARIO';

INSERT INTO basico.formulario  (id_componente, id_categoria, ativo, nivel, nome, constante_textual, form_name, form_method, form_action, 
                        form_attribs, rowinfo)
		SELECT	(SELECT comp.id
				 FROM basico.componente comp
				 LEFT JOIN basico.categoria c ON (comp.id_categoria = c.id)
				 LEFT JOIN basico.categoria cpai ON (c.id_categoria_pai = cpai.id)
				 LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
				 WHERE comp.nome = 'DOJO_Form'
				 AND c.nome = 'COMPONENTE_DOJO'
				 AND cpai.nome = 'COMPONENTE_HTML_JAVASCRIPT'
				 AND t.nome = 'COMPONENTE') AS id_componente,
		c.id AS id_categoria,
		true AS ativo,
		1 AS nivel,
		'FORM_DIALOG_CONTA_BANCARIA' AS nome,
		'FORM_DIALOG_CONTA_BANCARIA' AS constante_textual,
        'CadastrarContaBancaria' AS form_name, 
        'post' AS form_method, NULL AS form_action, 
        NULL AS form_attribs, 'SYSTEM_STARTUP' AS rowinfo       
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_CONTA_BANCARIA';

INSERT INTO basico.formulario  (id_componente, id_categoria, ativo, nivel, nome, constante_textual, form_name, form_method, form_action, form_attribs, permite_rascunho, rowinfo)
		SELECT	(SELECT comp.id
				 FROM basico.componente comp
				 LEFT JOIN basico.categoria c ON (comp.id_categoria = c.id)
				 LEFT JOIN basico.categoria cpai ON (c.id_categoria_pai = cpai.id)
				 LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
				 WHERE comp.nome = 'DOJO_Form'
				 AND c.nome = 'COMPONENTE_DOJO'
				 AND cpai.nome = 'COMPONENTE_HTML_JAVASCRIPT'
				 AND t.nome = 'COMPONENTE') AS id_componente,
		c.id AS id_categoria,
	   true AS ativo,
	   1 AS nivel,
       'FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO' AS nome,
       'FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO' AS constante_textual,
       'ResolvedorConflitoVersaoObjeto' AS form_name, 'post' AS form_method, '/basico/cvc/resolveConflitoVersaoObjeto' AS form_action, 
       '''onSubmit''=>"return(validateForm(''@nomeForm'', ''@title'', ''@message''))"' AS form_attribs, false AS permite_rascunho, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CVC';