/**
* SCRIPT DE POPULACAO DA TABELA basico.formulario
* 
* versao: 1.0 (POSTGRESQL 9.1.1)
* por: JOÃO VASCONCELOS (joao.vasconcelos@rochedoframework.com)
* criacao: 31/01/2012
* ultimas modificacoes:
* 								
*/

INSERT INTO basico.formulario  (id_categoria, ativo, nivel, nome, form_name, form_method, form_action, 
                        form_attribs, permite_rascunho, rowinfo)
		SELECT c.id AS id_categoria,
		true AS ativo,
		1 AS nivel,
		'FORM_DIALOG_ADMIN_RASCUNHOS' AS nome,
        'AdminRascunhos' AS form_name, 
        'post' AS form_method, NULL AS form_action, 
        NULL AS form_attribs, false AS permite_rascunho, 'SYSTEM_STARTUP' AS rowinfo       
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ADMIN_RASCUNHOS';

INSERT INTO basico.formulario  (id_categoria, ativo, nivel, nome, form_name, form_method, 
								form_action, form_attribs, permite_rascunho, rowinfo)
SELECT c.id AS id_categoria,
	   true AS ativo,
	   1 AS nivel,
       'FORM_ACEITE_TERMOS_USO' AS nome,
       'AceiteTermosUso' AS form_name, 'post' AS form_method, NULL AS form_action, 
       '''onSubmit''=>"return(validateForm(''@nomeForm'', ''@title'', ''@message''))"' AS form_attribs, 
       false AS permite_rascunho, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO';

INSERT INTO basico.formulario  (id_categoria, ativo, nivel, nome, form_name, form_method, 
								form_action, form_attribs, permite_rascunho, rowinfo)
SELECT c.id AS id_categoria,
	   true AS ativo,
	   1 AS nivel,
       'FORM_TROCA_DE_SENHA' AS nome,
       'TrocaDeSenha' AS form_name, 'post' AS form_method, NULL AS form_action, 
       '''onSubmit''=>"return(validateForm(''@nomeForm'', ''@title'', ''@message''))"' AS form_attribs, 
       false AS permite_rascunho, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO';

INSERT INTO basico.formulario  (id_categoria, ativo, nivel, nome, form_name, form_method, form_action, 
                        form_attribs, permite_rascunho, rowinfo)
		SELECT c.id AS id_categoria,
		true AS ativo,
		1 AS nivel,
		'FORM_DIALOG_SUGESTAO_LOGIN' AS nome,
        'SugestaoLogin' AS form_name, 
        'post' AS form_method, NULL AS form_action, 
        NULL AS form_attribs, false AS permite_rascunho, 'SYSTEM_STARTUP' AS rowinfo       
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_SUGESTAO_LOGIN';

INSERT INTO basico.formulario  (id_categoria, ativo, nivel, nome, form_name, permite_rascunho, rowinfo)
SELECT c.id AS id_categoria,
	   true AS ativo,
	   1 AS nivel,
       'FORM_DADOS_USUARIO' AS nome,
       'CadastrarDadosUsuario' AS form_name,
       false AS permite_rascunho, 
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO';

INSERT INTO basico.formulario  (id_categoria, id_formulario_pai, ativo, nivel, nome, form_name, form_method, form_action, 
                        form_attribs, ordem, rowinfo)
		SELECT c.id AS id_categoria,
		(SELECT f.id
         FROM basico.formulario  f
         WHERE f.nome = 'FORM_DADOS_USUARIO') AS id_formulario_pai,
         true AS ativo,
         2 AS nivel,
       'SUBFORM_DADOS_USUARIO_DADOS_ACADEMICOS' AS nome,
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

INSERT INTO basico.formulario  (id_categoria, ativo, nivel, nome, form_name, form_method, form_action, 
                        form_attribs, permite_rascunho, rowinfo)
		SELECT c.id AS id_categoria,
		true AS ativo,
		1 AS nivel,
		'FORM_DIALOG_COORDENACAO_POS_GRADUACAO' AS nome,
        'CadastrarDadosUsuarioDadosAcademicosCoordenacaoPosGraduacao' AS form_name, 
        'post' AS form_method, NULL AS form_action, 
        NULL AS form_attribs,
        false AS permite_rascunho, 
        'SYSTEM_STARTUP' AS rowinfo       
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_COORDENACAO_POS_GRADUACAO';

INSERT INTO basico.formulario  (id_categoria, ativo, nivel, nome, form_name, form_method, form_action, 
                        form_attribs, permite_rascunho, rowinfo)
		SELECT c.id AS id_categoria,
		true AS ativo,
		1 AS nivel,
		'FORM_DIALOG_ORIENTACOES' AS nome,
        'CadastrarDadosUsuarioDadosAcademicosOrientacoes' AS form_name, 
        'post' AS form_method, NULL AS form_action, 
        NULL AS form_attribs, false AS permite_rascunho, 'SYSTEM_STARTUP' AS rowinfo       
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_ORIENTACOES';


INSERT INTO basico.formulario  (id_categoria, id_formulario_pai, ativo, nivel, nome, form_name, form_method, form_action, 
                        form_attribs, ordem, permite_rascunho, rowinfo)
SELECT c.id AS id_categoria,
   	   (SELECT f.id
        FROM basico.formulario  f
        WHERE f.nome = 'FORM_DADOS_USUARIO') AS id_formulario_pai,
        true AS ativo,
        2 AS nivel,
       'SUBFORM_DADOS_USUARIO_DADOS_PROFISSIONAIS' AS nome,
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

INSERT INTO basico.formulario  (id_categoria, id_formulario_pai, ativo, nivel, nome, form_name, form_method, form_action, 
                        form_attribs, ordem, rowinfo)
SELECT c.id AS id_categoria,
   	   (SELECT f.id
        FROM basico.formulario  f
        WHERE f.nome = 'FORM_DADOS_USUARIO') AS id_formulario_pai,
       true AS ativo,
	   2 AS nivel,
       'SUBFORM_DADOS_USUARIO_DADOS_BIOMETRICOS' AS nome,
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

INSERT INTO basico.formulario  (id_categoria, id_formulario_pai, ativo, nivel, nome, form_name, form_method, form_action, 
                        form_attribs, ordem, permite_rascunho, rowinfo)
SELECT c.id AS id_categoria,
   	   (SELECT f.id
        FROM basico.formulario  f
        WHERE f.nome = 'FORM_DADOS_USUARIO') AS id_formulario_pai,
       true AS ativo,
	   2 AS nivel,
       'SUBFORM_DADOS_USUARIO_CONTA' AS nome,
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

INSERT INTO basico.formulario  (id_categoria, ativo, nivel, nome, form_name, form_method, form_action, 
                        form_attribs, rowinfo)
		SELECT c.id AS id_categoria,
		true AS ativo,
		1 AS nivel,
		'FORM_DIALOG_VINCULO_PROFISSIONAL' AS nome,
        'CadastrarDadosUsuarioDadosProfissionaisVinculoProfissional' AS form_name, 
        'post' AS form_method, NULL AS form_action, 
        NULL AS form_attribs, 'SYSTEM_STARTUP' AS rowinfo       
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL';

INSERT INTO basico.formulario  (id_categoria, ativo, nivel, nome, form_name, form_method, form_action, 
                        form_attribs, permite_rascunho, rowinfo)
		SELECT c.id AS id_categoria,
		true AS ativo,
		1 AS nivel,
		'FORM_DIALOG_TELEFONES_PROFISSIONAIS' AS nome,
        'CadastrarDadosUsuarioDadosProfissionaisTelefonesProfissionais' AS form_name, 
        'post' AS form_method, NULL AS form_action, 
        NULL AS form_attribs, false AS permite_rascunho, 'SYSTEM_STARTUP' AS rowinfo       
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL_TELEFONES_PROFISSIONAIS';

INSERT INTO basico.formulario  (id_categoria, ativo, nivel, nome, form_name, form_method, form_action, 
                        form_attribs, permite_rascunho, rowinfo)
		SELECT c.id AS id_categoria,
		true AS ativo,
		1 AS nivel,
		'FORM_DIALOG_EMAILS_PROFISSIONAIS' AS nome,
        'CadastrarDadosUsuarioDadosProfissionaisEmailsProfissionais' AS form_name, 
        'post' AS form_method, NULL AS form_action, 
        NULL AS form_attribs, false AS permite_rascunho, 'SYSTEM_STARTUP' AS rowinfo       
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL_EMAILS_PROFISSIONAIS';

INSERT INTO basico.formulario  (id_categoria, ativo, nivel, nome, form_name, form_method, form_action, 
                        form_attribs, permite_rascunho, rowinfo)
		SELECT c.id AS id_categoria,
		true AS ativo,
		1 AS nivel,
		'FORM_DIALOG_WEBSITES_PROFISSIONAIS' AS nome,
        'CadastrarDadosUsuarioDadosProfissionaisWebsitesProfissionais' AS form_name, 
        'post' AS form_method, NULL AS form_action, 
        NULL AS form_attribs, false AS permite_rascunho, 'SYSTEM_STARTUP' AS rowinfo       
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL_WEBSITES_PROFISSIONAIS';

INSERT INTO basico.formulario  (id_categoria, ativo, nivel, nome, form_name, form_method, form_action, 
                        form_attribs, permite_rascunho, rowinfo)
		SELECT c.id AS id_categoria,
		true AS ativo,
		1 AS nivel,
		'FORM_DIALOG_ENDERECOS_PROFISSIONAIS' AS nome,
        'CadastrarDadosUsuarioDadosProfissionaisEnderecosProfissionais' AS form_name, 
        'post' AS form_method, NULL AS form_action, 
        NULL AS form_attribs, false AS permite_rascunho, 'SYSTEM_STARTUP' AS rowinfo       
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL_ENDERECOS_PROFISSIONAIS';

INSERT INTO basico.formulario  (id_categoria, ativo, nivel, nome, form_name, form_method, form_action, 
                        form_attribs, rowinfo)
		SELECT c.id AS id_categoria,
		true AS ativo,
		1 AS nivel,
		'FORM_DIALOG_TELEFONE' AS nome,
        'CadastrarTelefone' AS form_name, 
        'post' AS form_method, NULL AS form_action, 
        NULL AS form_attribs, 'SYSTEM_STARTUP' AS rowinfo       
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_TELEFONE';

INSERT INTO basico.formulario  (id_categoria, ativo, nivel, nome, form_name, form_method, form_action, 
                        form_attribs, rowinfo)
		SELECT c.id AS id_categoria,
		true AS ativo,
		1 AS nivel,
		'FORM_DIALOG_EMAIL' AS nome,
        'CadastrarEmail' AS form_name, 
        'post' AS form_method, NULL AS form_action, 
        NULL AS form_attribs, 'SYSTEM_STARTUP' AS rowinfo       
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_EMAIL';


INSERT INTO basico.formulario  (id_categoria, ativo, nivel, nome, form_name, form_method, form_action, 
                        form_attribs, rowinfo)
		SELECT c.id AS id_categoria,
		true AS ativo,
		1 AS nivel,
		'FORM_DIALOG_WEBSITE' AS nome,
        'CadastrarWebsite' AS form_name, 
        'post' AS form_method,
        '/basico/website/salvarwebsite' AS form_action, 
        '''onSubmit''=>"return(validateForm(''@nomeForm'', ''@title'', ''@message''))"'  AS form_attribs,
        'SYSTEM_STARTUP' AS rowinfo       
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_WEBSITE';

INSERT INTO basico.formulario  (id_categoria, ativo, nivel, nome, form_name, form_method, form_action, 
                        form_attribs, rowinfo)
		SELECT c.id AS id_categoria,
		true AS ativo,
		1 AS nivel,
		'FORM_DIALOG_ENDERECO' AS nome,
        'CadastrarEndereco' AS form_name, 
        'post' AS form_method, NULL AS form_action, 
        NULL AS form_attribs, 'SYSTEM_STARTUP' AS rowinfo       
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_ENDERECO';

INSERT INTO basico.formulario  (id_categoria, ativo, nivel, nome, form_name, form_method, 
								form_action, form_attribs, permite_rascunho, rowinfo)
SELECT c.id AS id_categoria,
	   true AS ativo,
	   1 AS nivel,
       'FORM_CADASTRAR_USUARIO_NAO_VALIDADO' AS nome,
       'CadastrarUsuarioNaoValidado' AS form_name, 'post' AS form_method, '/basico/login/verificaNovoLogin' AS form_action, 
       '''onSubmit''=>"return(validateForm(''@nomeForm'', ''@title'', ''@message''))"' AS form_attribs, false AS permite_rascunho, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO';

INSERT INTO basico.formulario  (id_categoria, ativo, nivel, nome, form_name, form_method, 
								form_action, form_attribs, permite_rascunho, rowinfo)
SELECT c.id AS id_categoria,
	   true AS ativo,
	   1 AS nivel,
       'FORM_CADASTRAR_USUARIO_VALIDADO' AS nome,
       'CadastrarUsuarioValidado' AS form_name, 'post' AS form_method, '/basico/login/salvarUsuarioValidado' AS form_action, 
       '''onSubmit''=>"return(validateForm(''@nomeForm'', ''@title'', ''@message''))"' AS form_attribs, false AS permite_rascunho, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO';

INSERT INTO basico.formulario  (id_categoria, ativo, nivel, nome, 
                        form_name, form_method, form_action, form_attribs, rowinfo)
SELECT c.id AS id_categoria,
       true AS ativo,
	   1 AS nivel,
       'FORM_DIALOG_DOCUMENTOS_IDENTIFICACAO' AS nome,
       'DocumentosIdentificacao' AS form_name, 'post' AS form_method, NULL AS form_action, 
       '''onSubmit''=>"return(validateForm(''@nomeForm'', ''@title'', ''@message''))"' AS form_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_DOCUMENTOS_IDENTIFICACAO';

INSERT INTO basico.formulario  (id_categoria, ativo, nivel, nome, 
                        form_name, form_method, form_action, form_attribs, rowinfo)
SELECT c.id AS id_categoria,
	   true AS ativo,	
	   1 AS nivel,
       'FORM_DIALOG_DOCUMENTO' AS nome,
       'CadastrarDocumento' AS form_name, 'post' AS form_method, NULL AS form_action, 
       '''onSubmit''=>"return(validateForm(''@nomeForm'', ''@title'', ''@message''))"' AS form_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_DOCUMENTOS_IDENTIFICACAO';

INSERT INTO basico.formulario  (id_categoria, ativo, nivel, nome, form_name, form_method, 
								form_action, form_attribs, permite_rascunho, rowinfo)
SELECT c.id AS id_categoria,
	   true AS ativo,
	   1 AS nivel,
       'FORM_AUTENTICACAO_USUARIO' AS nome,
       'AutenticacaoUsuario' AS form_name, 'post' AS form_method, '/basico/autenticador/verificaAutenticacaoUsuario' AS form_action, 
       '''onSubmit''=>"return(validateForm(''@nomeForm'', ''@title'', ''@message''))"' AS form_attribs, false AS permite_rascunho, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_LOGIN';

INSERT INTO basico.formulario  (id_categoria, id_formulario_pai, ativo, nivel, nome, form_name, form_method, form_action, 
                        form_attribs, ordem, rowinfo)
        SELECT c.id AS id_categoria,
        (SELECT f.id
         FROM basico.formulario  f
         WHERE f.nome = 'FORM_DADOS_USUARIO') AS id_formulario_pai,
       true AS ativo,
       2 AS nivel,
       'SUBFORM_DADOS_USUARIO_DADOS_PESSOAIS' AS nome,
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

INSERT INTO basico.formulario  (id_categoria, ativo, nivel, nome, form_name, form_method, form_action, 
                        form_attribs, permite_rascunho, rowinfo)
		SELECT c.id AS id_categoria,
		true AS ativo,
		1 AS nivel,
		'FORM_DIALOG_DOCUMENTOS_PESSOAIS' AS nome,
        'CadastrarDadosUsuarioDadosPessoaisDocumentosPessoais' AS form_name, 
        'post' AS form_method, NULL AS form_action, 
        NULL AS form_attribs, false AS permite_rascunho, 'SYSTEM_STARTUP' AS rowinfo       
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_PESSOAIS_DOCUMENTOS_PESSOAIS';

INSERT INTO basico.formulario  (id_categoria, ativo, nivel, nome, form_name, form_method, form_action, 
                        form_attribs, rowinfo)
		SELECT c.id AS id_categoria,
		true AS ativo,
		1 AS nivel,
		'FORM_DIALOG_TELEFONES_PESSOAIS' AS nome, 
        'CadastrarDadosUsuarioDadosPessoaisTelefonesPessoais' AS form_name, 
        'post' AS form_method, NULL AS form_action, 
        NULL AS form_attribs, 'SYSTEM_STARTUP' AS rowinfo       
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_PESSOAIS_TELEFONES_PESSOAIS';

INSERT INTO basico.formulario  (id_categoria, ativo, nivel, nome, form_name, form_method, form_action, 
                        form_attribs, rowinfo)
		SELECT c.id AS id_categoria,
		true AS ativo,
		1 AS nivel,
		'FORM_DIALOG_EMAILS_PESSOAIS' AS nome,
        'CadastrarDadosUsuarioDadosPessoaisEmailsPessoais' AS form_name, 
        'post' AS form_method, NULL AS form_action, 
        NULL AS form_attribs, 'SYSTEM_STARTUP' AS rowinfo       
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_PESSOAIS_EMAILS_PESSOAIS';

INSERT INTO basico.formulario  (id_categoria, ativo, nivel, nome, form_name, form_method, form_action, 
                        form_attribs, rowinfo)
		SELECT c.id AS id_categoria,
		true AS ativo,
		1 AS nivel,
		'FORM_DIALOG_WEBSITES_PESSOAIS' AS nome,
        'CadastrarDadosUsuarioDadosPessoaisWebsitesPessoais' AS form_name, 
        'post' AS form_method, NULL AS form_action, 
        NULL AS form_attribs, 'SYSTEM_STARTUP' AS rowinfo       
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_PESSOAIS_WEBSITES_PESSOAIS';

INSERT INTO basico.formulario  (id_categoria, ativo, nivel, nome, form_name, form_method, form_action, 
                        form_attribs, rowinfo)
		SELECT c.id AS id_categoria,
		true AS ativo,
		1 AS nivel,
		'FORM_DIALOG_ENDERECOS_PESSOAIS' AS nome,
        'CadastrarDadosUsuarioDadosPessoaisEnderecosPessoais' AS form_name, 
        'post' AS form_method, NULL AS form_action, 
        NULL AS form_attribs, 'SYSTEM_STARTUP' AS rowinfo       
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_PESSOAIS_ENDERECOS_PESSOAIS';

INSERT INTO basico.formulario  (id_categoria, id_formulario_pai, ativo, nivel, nome, form_name, form_attribs, ordem, permite_rascunho, rowinfo)
        SELECT c.id AS id_categoria,
        (SELECT f.id
        FROM basico.formulario  f
        WHERE f.nome = 'FORM_DADOS_USUARIO') AS id_formulario_pai,
        true AS ativo,
        2 AS nivel,
       'SUBFORM_DADOS_USUARIO_INFORMACOES_BANCARIAS' AS nome,
       'CadastrarDadosUsuarioInformacoesBancarias' AS form_name, 
       NULL AS form_attribs, 
       5 AS ordem,
       false AS permite_rascunho, 
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_SUB_FORMULARIO';

INSERT INTO basico.formulario  (id_categoria, id_formulario_pai, ativo, nivel, nome, form_name, form_method, form_action,
						form_attribs, ordem, rowinfo)
        SELECT c.id AS id_categoria,
        (SELECT f.id
        FROM basico.formulario  f
        WHERE f.nome = 'SUBFORM_DADOS_USUARIO_INFORMACOES_BANCARIAS') AS id_formulario_pai,
        true AS ativo,
        2 AS nivel,
       'SUBFORM_DADOS_USUARIO_INFORMACOES_BANCARIAS_DADOS_BANCARIOS' AS nome,
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

INSERT INTO basico.formulario  (id_categoria, ativo, nivel, nome, form_name, form_method, form_action, 
                        form_attribs, permite_rascunho, rowinfo)
		SELECT c.id AS id_categoria,
		true AS ativo,
		1 AS nivel,
		'FORM_DIALOG_CONTAS_BANCARIAS' AS nome,
        'CadastrarDadosUsuarioInformacoesBancariasContasBancarias' AS form_name, 
        'post' AS form_method, NULL AS form_action, 
        NULL AS form_attribs, false AS permite_rascunho, 'SYSTEM_STARTUP' AS rowinfo       
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_INFORMACOES_BANCARIAS_DADOS_BANCARIOS_CONTAS_BANCARIAS';

INSERT INTO basico.formulario  (id_categoria, id_formulario_pai, ativo, nivel, nome,form_name, form_method, form_action,
						form_attribs, ordem, permite_rascunho, rowinfo)
		SELECT c.id AS id_categoria,
		(SELECT f.id
             FROM basico.formulario  f
             WHERE f.nome = 'SUBFORM_DADOS_USUARIO_INFORMACOES_BANCARIAS') AS id_formulario_pai,
       true AS ativo,
       2 AS nivel,
       'SUBFORM_DADOS_USUARIO_INFORMACOES_BANCARIAS_MOVIMENTACAO_FINANCEIRA' AS nome,
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

INSERT INTO basico.formulario  (id_categoria, ativo, nivel, nome, form_name, form_method, form_action, 
                        form_attribs, rowinfo)
		SELECT c.id AS id_categoria,
		true AS ativo,
		1 AS nivel,
		'FORM_DIALOG_CONTA_BANCARIA' AS nome, 
        'CadastrarContaBancaria' AS form_name, 
        'post' AS form_method, NULL AS form_action, 
        NULL AS form_attribs, 'SYSTEM_STARTUP' AS rowinfo       
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_CONTA_BANCARIA';

INSERT INTO basico.formulario  (id_categoria, ativo, nivel, nome, form_name, form_method, form_action, form_attribs, permite_rascunho, rowinfo)
SELECT c.id AS id_categoria,
	   true AS ativo,
	   1 AS nivel,
       'FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO' AS nome,
       'ResolvedorConflitoVersaoObjeto' AS form_name, 'post' AS form_method, '/basico/cvc/resolveConflitoVersaoObjeto' AS form_action, 
       '''onSubmit''=>"return(validateForm(''@nomeForm'', ''@title'', ''@message''))"' AS form_attribs, false AS permite_rascunho, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CVC';