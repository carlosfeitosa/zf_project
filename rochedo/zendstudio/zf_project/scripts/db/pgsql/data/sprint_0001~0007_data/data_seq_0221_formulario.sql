/*
* SCRIPT DE POPULACAO DAS TABELAS
* 
* versao: 1.0 (POSTGRESQL 8.4.1)
* por: ADRIANO DUPRAT LEMOS (adriano.lemos@rochedoproject.com)
* criacao: 20/10/2010
* ultimas modificacoes:
* 							22/10/2010 - remocao do decorator do formulario SUBFORM_DADOS_USUARIO_DADOS_PROFISSIONAIS;
* 									   - criacao do formulario FORM_DIALOG_TELEFONES_COMERCIAIS;
* 									   - criacao do formulario FORM_FIALOG_TELEFONE;
* 							03/11/2010 - criacao do formulario FORM_DIALOG_EMAILS_COMERCIAIS;
* 									   - criacao do formulario FORM_DIALOG_EMAIL;
* 									   - criacao do formulario FORM_DIALOG_WEBSITES_COMERCIAIS;
* 									   - criacao do formulario FORM_DIALOG_WEBSITE;
*									   - criacao do formulario FORM_DIALOG_ENDERECO_COMERCIAIS;
* 									   - criacao do formulario FORM_DIALOG_ENDERECO;
*  
*/

/* FORMULARIO */

INSERT INTO formulario (id_categoria, id_decorator, nome, descricao, form_name, rowinfo)
SELECT c.id AS id_categoria, (SELECT d.id
                              FROM decorator d
                              LEFT JOIN categoria c ON (d.id_categoria = c.id)
                              LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'FORMULARIO'
                              AND c.nome = 'FORMULARIO_TAB_CONTAINER1_DECORATOR'
                              AND d.nome = 'DECORATOR_FORM_TAB_CONTAINER1') AS id_decorator,
       'FORM_DADOS_USUARIO' AS nome,
       'Formulário de cadastro do usuário validado.' AS descricao,
       'CadastrarDadosUsuario' AS form_name, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO';

INSERT INTO formulario (id_categoria, id_formulario_pai, nome, descricao, 
                        constante_textual_titulo,form_name, form_method, form_action, 
                        form_attribs, ordem, rowinfo)
		SELECT c.id AS id_categoria,(SELECT f.id
        		                     FROM formulario f
                		             WHERE f.nome = 'FORM_DADOS_USUARIO'),                          
       'SUBFORM_DADOS_USUARIO_DADOS_ACADEMICOS' AS nome,
       'Formulário de submissão de dados acadêmicos.' AS descricao, 
       'SUBFORM_TABTITLE_DADOS_ACADEMICOS' AS constante_textual_titulo,
       'CadastrarDadosUsuarioDadosAcademicos' AS form_name, 
       'post' AS form_method, 
       NULL AS form_action, 
       NULL AS form_attribs, 
       2 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_SUB_FORMULARIO';

INSERT INTO formulario (id_categoria, id_formulario_pai, nome, descricao, 
                        constante_textual_titulo,form_name, form_method, form_action, 
                        form_attribs, ordem, rowinfo)
		SELECT c.id AS id_categoria, 
      	(SELECT f.id
         FROM formulario f
         WHERE f.nome = 'FORM_DADOS_USUARIO') AS id_formulario_pai,                       
       'SUBFORM_DADOS_USUARIO_DADOS_PROFISSIONAIS' AS nome,
       'Formulário de submissão de dados profissionais.' AS descricao, 
       'SUBFORM_TABTITLE_DADOS_PROFISSIONAIS' AS constante_textual_titulo,
       'CadastrarDadosUsuarioDadosProfissionais' AS form_name, 
       'post' AS form_method, 
       NULL AS form_action, 
       NULL AS form_attribs,
       3 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_SUB_FORMULARIO';

INSERT INTO formulario (id_categoria, nome, descricao, 
                        constante_textual_titulo,form_name, form_method, form_action, 
                        form_attribs, rowinfo)
		SELECT c.id AS id_categoria, 
		'FORM_DIALOG_VINCULO_PROFISSIONAL' AS nome, 
		'Dialog de edicao de dados de vinculos profissionais.' AS descricao, 
        'FORM_TITLE_VINCULO_PROFISSIONAL' AS constante_textual_titulo, 
        'CadastrarDadosUsuarioDadosProfissionaisVinculoProfissional' AS form_name, 
        'post' AS form_method, NULL AS form_action, 
        NULL AS form_attribs, 'SYSTEM_STARTUP' AS rowinfo       
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL';

INSERT INTO formulario (id_categoria, nome, descricao, 
                        constante_textual_titulo,form_name, form_method, form_action, 
                        form_attribs, rowinfo)
		SELECT c.id AS id_categoria, 
		'FORM_DIALOG_TELEFONES_COMERCIAIS' AS nome, 
		'Dialog para visualizacao de telefones comerciais.' AS descricao, 
        'FORM_TITLE_TELEFONES_COMERCIAIS' AS constante_textual_titulo, 
        'CadastrarDadosUsuarioDadosProfissionaisTelefonesComerciais' AS form_name, 
        'post' AS form_method, NULL AS form_action, 
        NULL AS form_attribs, 'SYSTEM_STARTUP' AS rowinfo       
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL_TELEFONES_COMERCIAIS';

INSERT INTO formulario (id_categoria, nome, descricao, 
                        constante_textual_titulo,form_name, form_method, form_action, 
                        form_attribs, rowinfo)
		SELECT c.id AS id_categoria, 
		'FORM_DIALOG_EMAILS_COMERCIAIS' AS nome, 
		'Dialog para visualizacao de e-mails comerciais.' AS descricao, 
        'FORM_TITLE_EMAILS_COMERCIAIS' AS constante_textual_titulo, 
        'CadastrarDadosUsuarioDadosProfissionaisEmailsComerciais' AS form_name, 
        'post' AS form_method, NULL AS form_action, 
        NULL AS form_attribs, 'SYSTEM_STARTUP' AS rowinfo       
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL_EMAILS_COMERCIAIS';

INSERT INTO formulario (id_categoria, nome, descricao, 
                        constante_textual_titulo,form_name, form_method, form_action, 
                        form_attribs, rowinfo)
		SELECT c.id AS id_categoria, 
		'FORM_DIALOG_WEBSITES_COMERCIAIS' AS nome, 
		'Dialog para visualizacao de websites comerciais.' AS descricao, 
        'FORM_TITLE_WEBSITES_COMERCIAIS' AS constante_textual_titulo, 
        'CadastrarDadosUsuarioDadosProfissionaisWebsitesComerciais' AS form_name, 
        'post' AS form_method, NULL AS form_action, 
        NULL AS form_attribs, 'SYSTEM_STARTUP' AS rowinfo       
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL_WEBSITES_COMERCIAIS';

INSERT INTO formulario (id_categoria, nome, descricao, 
                        constante_textual_titulo,form_name, form_method, form_action, 
                        form_attribs, rowinfo)
		SELECT c.id AS id_categoria, 
		'FORM_DIALOG_ENDERECOS_COMERCIAIS' AS nome, 
		'Dialog para visualizacao de enderecos comerciais.' AS descricao, 
        'FORM_TITLE_ENDERECOS_COMERCIAIS' AS constante_textual_titulo, 
        'CadastrarDadosUsuarioDadosProfissionaisEnderecosComerciais' AS form_name, 
        'post' AS form_method, NULL AS form_action, 
        NULL AS form_attribs, 'SYSTEM_STARTUP' AS rowinfo       
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL_ENDERECOS_COMERCIAIS';

INSERT INTO formulario (id_categoria, nome, descricao, 
                        constante_textual_titulo,form_name, form_method, form_action, 
                        form_attribs, rowinfo)
		SELECT c.id AS id_categoria, 
		'FORM_DIALOG_TELEFONE' AS nome, 
		'Dialog para edicao de telefone.' AS descricao, 
        'FORM_TITLE_TELEFONE' AS constante_textual_titulo, 
        'CadastrarTelefone' AS form_name, 
        'post' AS form_method, NULL AS form_action, 
        NULL AS form_attribs, 'SYSTEM_STARTUP' AS rowinfo       
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_TELEFONE';

INSERT INTO formulario (id_categoria, nome, descricao, 
                        constante_textual_titulo,form_name, form_method, form_action, 
                        form_attribs, rowinfo)
		SELECT c.id AS id_categoria, 
		'FORM_DIALOG_EMAIL' AS nome, 
		'Dialog para edicao de e-mail.' AS descricao, 
        'FORM_TITLE_EMAIL' AS constante_textual_titulo, 
        'CadastrarEmail' AS form_name, 
        'post' AS form_method, NULL AS form_action, 
        NULL AS form_attribs, 'SYSTEM_STARTUP' AS rowinfo       
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_EMAIL';

INSERT INTO formulario (id_categoria, nome, descricao, 
                        constante_textual_titulo,form_name, form_method, form_action, 
                        form_attribs, rowinfo)
		SELECT c.id AS id_categoria, 
		'FORM_DIALOG_WEBSITE' AS nome, 
		'Dialog para edicao de website.' AS descricao, 
        'FORM_TITLE_WEBSITE' AS constante_textual_titulo, 
        'CadastrarWebsite' AS form_name, 
        'post' AS form_method, NULL AS form_action, 
        NULL AS form_attribs, 'SYSTEM_STARTUP' AS rowinfo       
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_WEBSITE';

INSERT INTO formulario (id_categoria, nome, descricao, 
                        constante_textual_titulo,form_name, form_method, form_action, 
                        form_attribs, rowinfo)
		SELECT c.id AS id_categoria, 
		'FORM_DIALOG_ENDERECO' AS nome, 
		'Dialog para edicao de endereco.' AS descricao, 
        'FORM_TITLE_ENDERECO' AS constante_textual_titulo, 
        'CadastrarEndereco' AS form_name, 
        'post' AS form_method, NULL AS form_action, 
        NULL AS form_attribs, 'SYSTEM_STARTUP' AS rowinfo       
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_ENDERECO';

INSERT INTO formulario (id_categoria, nome, descricao, 
                        constante_textual_titulo,form_name, form_method, form_action, 
                        form_attribs, rowinfo)
		SELECT c.id AS id_categoria, 
		'FORM_DIALOG_MAIOR_TITULACAO' AS nome, 
		'Dialog de edicao de dados de maior titulacao.' AS descricao, 
        'FORM_FIELD_MAIOR_TITULACAO' AS constante_textual_titulo, 
        'CadastrarDadosUsuarioDadosAcademicosMaiorTitulacao' AS form_name, 
        'post' AS form_method, NULL AS form_action, 
        NULL AS form_attribs, 'SYSTEM_STARTUP' AS rowinfo       
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO';

INSERT INTO formulario (id_categoria, id_decorator, nome, descricao, 
                        constante_textual_titulo, constante_textual_subtitulo,
                        form_name, form_method, form_action, form_attribs, rowinfo)
SELECT c.id AS id_categoria, (SELECT d.id
                              FROM decorator d
                              LEFT JOIN categoria c ON (d.id_categoria= c.id)
                              LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'FORMULARIO'
                              AND c.nome = 'FORMULARIO_DECORATOR'
                              AND d.nome = 'DECORATOR_FORM_SUBMIT') AS id_decorator,
       'FORM_CADASTRAR_USUARIO_NAO_VALIDADO' AS nome,
       'Formulário de cadastro de usuário não validado. É a porta de entrada para validação do usuário no sistema.' AS descricao, 
       'VIEW_LOGIN_CADASTRAR_USUARIO_NAO_VALIDADO_TITULO' AS constante_textual_titulo,
       'VIEW_LOGIN_CADASTRAR_USUARIO_NAO_VALIDADO_SUBTITULO' AS constante_textual_subtitulo,
       'CadastrarUsuarioNaoValidado' AS form_name, 'post' AS form_method, 'verificaNovoLogin' AS form_action, 
       '''onSubmit''=>"loading();return(validateForm(''@nomeForm'', ''@title'', ''@message''))"' AS form_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO';

INSERT INTO formulario (id_categoria, id_decorator, nome, descricao, 
                        constante_textual_titulo, constante_textual_subtitulo,
                        form_name, form_method, form_action, form_attribs, rowinfo)
SELECT c.id AS id_categoria, (SELECT d.id
                              FROM decorator d
                              LEFT JOIN categoria c ON (d.id_categoria= c.id)
                              LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'FORMULARIO'
                              AND c.nome = 'FORMULARIO_DECORATOR'
                              AND d.nome = 'DECORATOR_FORM_SUBMIT') AS id_decorator,
       'FORM_CADASTRAR_USUARIO_VALIDADO' AS nome,
       'Formulário de cadastro de usuário validado. É a etapa para confirmação dos dados e do cadastro.' AS descricao, 
       'VIEW_LOGIN_CADASTRAR_USUARIO_VALIDADO_TITULO' AS constante_textual_titulo,
       'VIEW_LOGIN_CADASTRAR_USUARIO_VALIDADO_SUBTITULO' AS constante_textual_subtitulo,
       'CadastrarUsuarioValidado' AS form_name, 'post' AS form_method, 'cadastrarUsuarioValidado' AS form_action, 
       '''onSubmit''=>"loading();return(validateForm(''CadastrarUsuarioValidado''))"' AS form_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO';

INSERT INTO formulario (id_categoria, nome, descricao, 
                        constante_textual_titulo,
                        form_name, form_method, form_action, form_attribs, rowinfo)
SELECT c.id AS id_categoria, 
       'FORM_DIALOG_DOCUMENTOS_IDENTIFICACAO' AS nome,
       'Formulário de cadastro de documentos de identificação.' AS descricao, 
       'FORM_DOCUMENTOS_IDENTIFICACAO_TITULO' AS constante_textual_titulo,
       'DocumentosIdentificacao' AS form_name, 'post' AS form_method, NULL AS form_action, 
       '''onSubmit''=>"loading();return(validateForm(''DocumentosIdentificacao''))"' AS form_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_DOCUMENTOS_IDENTIFICACAO';

INSERT INTO formulario (id_categoria, nome, descricao, 
                        constante_textual_titulo,
                        form_name, form_method, form_action, form_attribs, rowinfo)
SELECT c.id AS id_categoria, 
       'FORM_DIALOG_DOCUMENTO' AS nome,
       'Formulário de cadastro de documento.' AS descricao, 
       'FORM_DOCUMENTO_TITULO' AS constante_textual_titulo,
       'CadastrarDocumento' AS form_name, 'post' AS form_method, NULL AS form_action, 
       '''onSubmit''=>"loading();return(validateForm(''CadastrarDocumento''))"' AS form_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_DOCUMENTOS_IDENTIFICACAO';