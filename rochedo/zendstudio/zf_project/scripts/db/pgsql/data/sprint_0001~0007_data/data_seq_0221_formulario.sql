/*
* SCRIPT DE POPULACAO DAS TABELAS
* 
* versao: 1.0 (POSTGRESQL 8.4.1)
* por: ADRIANO DUPRAT LEMOS (adriano.lemos@rochedoproject.com)
* criacao: 20/10/2010
* ultimas modificacoes:
* 							22/10/2010 - remocao do decorator do formulario SUBFORM_DADOS_USUARIO_DADOS_PROFISSIONAIS;
* 									   - criacao do formulario FORM_DIALOG_TELEFONES_PROFISSIONAIS;
* 									   - criacao do formulario FORM_FIALOG_TELEFONE;
* 							03/11/2010 - criacao do formulario FORM_DIALOG_EMAILS_PROFISSIONAIS;
* 									   - criacao do formulario FORM_DIALOG_EMAIL;
* 									   - criacao do formulario FORM_DIALOG_WEBSITES_PROFISSIONAIS;
* 									   - criacao do formulario FORM_DIALOG_WEBSITE;
*									   - criacao do formulario FORM_DIALOG_ENDERECO_PROFISSIONAIS;
* 									   - criacao do formulario FORM_DIALOG_ENDERECO;
* 							13/12/2010 - criacao do formulario FORM_AUTENTICACAO_USUARIO;
* 							30/12/2010 - criacao do action e attribes do FORM_DIALOG_WEBSITE; 
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
		SELECT c.id AS id_categoria,
		(SELECT f.id
         FROM formulario f
         WHERE f.nome = 'FORM_DADOS_USUARIO') AS id_formulario_pai,
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
AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_ACADEMICOS';

INSERT INTO formulario (id_categoria, nome, descricao, 
                        constante_textual_titulo,form_name, form_method, form_action, 
                        form_attribs, rowinfo)
		SELECT c.id AS id_categoria, 
		'FORM_DIALOG_COORDENACAO_POS_GRADUACAO' AS nome, 
		'Dialog de selecao de cursos que nao estao amarrados a nenhum coordenador de pos-graduacao.' AS descricao, 
        'FORM_TITLE_COODENACAO_POS_GRADUACAO' AS constante_textual_titulo, 
        'CadastrarDadosUsuarioDadosAcademicosCoordenacaoPosGraduacao' AS form_name, 
        'post' AS form_method, NULL AS form_action, 
        NULL AS form_attribs, 'SYSTEM_STARTUP' AS rowinfo       
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_COORDENACAO_POS_GRADUACAO';

INSERT INTO formulario (id_categoria, nome, descricao, 
                        constante_textual_titulo,form_name, form_method, form_action, 
                        form_attribs, rowinfo)
		SELECT c.id AS id_categoria, 
		'FORM_DIALOG_ORIENTACOES' AS nome, 
		'Dialog de selecao de cursos que nao estao amarrados a nenhum coordenador de pos-graduacao.' AS descricao, 
        'FORM_TITLE_ORIENTACOES' AS constante_textual_titulo, 
        'CadastrarDadosUsuarioDadosAcademicosOrientacoes' AS form_name, 
        'post' AS form_method, NULL AS form_action, 
        NULL AS form_attribs, 'SYSTEM_STARTUP' AS rowinfo       
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_ORIENTACOES';


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
AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_PROFISSIONAIS';

INSERT INTO formulario (id_categoria, id_formulario_pai, nome, descricao, 
                        constante_textual_titulo,form_name, form_method, form_action, 
                        form_attribs, ordem, rowinfo)
SELECT c.id AS id_categoria, 
   	   (SELECT f.id
        FROM formulario f
        WHERE f.nome = 'FORM_DADOS_USUARIO') AS id_formulario_pai,
       'SUBFORM_DADOS_USUARIO_DADOS_BIOMETRICOS' AS nome,
       'Formulário de submissão de dados biométricos.' AS descricao, 
       'SUBFORM_TABTITLE_DADOS_BIOMETRICOS' AS constante_textual_titulo,
       'CadastrarDadosUsuarioDadosBiometricos' AS form_name, 
       'post' AS form_method, 
       '/basico/dadosbiometricos/salvar' AS form_action, 
       '''onSubmit''=>"loading();return(validateForm(''@nomeForm'', ''@title'', ''@message''))"' AS form_attribs,
       4 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_BIOMETRICOS';

INSERT INTO formulario (id_categoria, id_formulario_pai, nome, descricao, 
                        constante_textual_titulo,form_name, form_method, form_action, 
                        form_attribs, ordem, rowinfo)
SELECT c.id AS id_categoria, 
   	   (SELECT f.id
        FROM formulario f
        WHERE f.nome = 'FORM_DADOS_USUARIO') AS id_formulario_pai,
       'SUBFORM_DADOS_USUARIO_PERFIL' AS nome,
       'Formulário de vinculacao de perfis de usuario.' AS descricao, 
       'SUBFORM_TABTITLE_PERFIL' AS constante_textual_titulo,
       'CadastrarDadosUsuarioPerfil' AS form_name, 
       'post' AS form_method, 
       NULL AS form_action, 
       NULL AS form_attribs,
       7 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_PERFIL';

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
		'FORM_DIALOG_TELEFONES_PROFISSIONAIS' AS nome, 
		'Dialog para visualizacao de telefones profissionais.' AS descricao, 
        'FORM_TITLE_TELEFONES_PROFISSIONAIS' AS constante_textual_titulo, 
        'CadastrarDadosUsuarioDadosProfissionaisTelefonesProfissionais' AS form_name, 
        'post' AS form_method, NULL AS form_action, 
        NULL AS form_attribs, 'SYSTEM_STARTUP' AS rowinfo       
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL_TELEFONES_PROFISSIONAIS';

INSERT INTO formulario (id_categoria, nome, descricao, 
                        constante_textual_titulo,form_name, form_method, form_action, 
                        form_attribs, rowinfo)
		SELECT c.id AS id_categoria, 
		'FORM_DIALOG_EMAILS_PROFISSIONAIS' AS nome, 
		'Dialog para visualizacao de e-mails profissionais.' AS descricao, 
        'FORM_TITLE_EMAILS_PROFISSIONAIS' AS constante_textual_titulo, 
        'CadastrarDadosUsuarioDadosProfissionaisEmailsProfissionais' AS form_name, 
        'post' AS form_method, NULL AS form_action, 
        NULL AS form_attribs, 'SYSTEM_STARTUP' AS rowinfo       
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL_EMAILS_PROFISSIONAIS';

INSERT INTO formulario (id_categoria, nome, descricao, 
                        constante_textual_titulo,form_name, form_method, form_action, 
                        form_attribs, rowinfo)
		SELECT c.id AS id_categoria, 
		'FORM_DIALOG_WEBSITES_PROFISSIONAIS' AS nome, 
		'Dialog para visualizacao de websites profissionais.' AS descricao, 
        'FORM_TITLE_WEBSITES_PROFISSIONAIS' AS constante_textual_titulo, 
        'CadastrarDadosUsuarioDadosProfissionaisWebsitesProfissionais' AS form_name, 
        'post' AS form_method, NULL AS form_action, 
        NULL AS form_attribs, 'SYSTEM_STARTUP' AS rowinfo       
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL_WEBSITES_PROFISSIONAIS';

INSERT INTO formulario (id_categoria, nome, descricao, 
                        constante_textual_titulo,form_name, form_method, form_action, 
                        form_attribs, rowinfo)
		SELECT c.id AS id_categoria, 
		'FORM_DIALOG_ENDERECOS_PROFISSIONAIS' AS nome, 
		'Dialog para visualizacao de enderecos profissionais.' AS descricao, 
        'FORM_TITLE_ENDERECOS_PROFISSIONAIS' AS constante_textual_titulo, 
        'CadastrarDadosUsuarioDadosProfissionaisEnderecosProfissionais' AS form_name, 
        'post' AS form_method, NULL AS form_action, 
        NULL AS form_attribs, 'SYSTEM_STARTUP' AS rowinfo       
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL_ENDERECOS_PROFISSIONAIS';

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
        'post' AS form_method,
        '/basico/website/salvarwebsite' AS form_action, 
        '''onSubmit''=>"loading();return(validateForm(''@nomeForm'', ''@title'', ''@message''))"'  AS form_attribs,
        'SYSTEM_STARTUP' AS rowinfo       
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
       'CadastrarUsuarioNaoValidado' AS form_name, 'post' AS form_method, '/basico/login/verificaNovoLogin' AS form_action, 
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
       'CadastrarUsuarioValidado' AS form_name, 'post' AS form_method, '/basico/login/salvarUsuarioValidado' AS form_action, 
       '''onSubmit''=>"loading();return(validateForm(''@nomeForm'', ''@title'', ''@message''))"' AS form_attribs, 'SYSTEM_STARTUP' AS rowinfo
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
       '''onSubmit''=>"loading();return(validateForm(''@nomeForm'', id_decorator, ''@title'', ''@message''))"' AS form_attribs, 'SYSTEM_STARTUP' AS rowinfo
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
       '''onSubmit''=>"loading();return(validateForm(''@nomeForm'', ''@title'', ''@message''))"' AS form_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_DOCUMENTOS_IDENTIFICACAO';

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
       'FORM_AUTENTICACAO_USUARIO' AS nome,
       'Formulário para autenticação de usuário validado.' AS descricao, 
       'VIEW_LOGIN_AUTENTICACAO_USUARIO_TITULO' AS constante_textual_titulo,
       'VIEW_LOGIN_AUTENTICACAO_USUARIO_SUBTITULO' AS constante_textual_subtitulo,
       'AutenticacaoUsuario' AS form_name, 'post' AS form_method, '/basico/autenticador/verificaAutenticacaoUsuario' AS form_action, 
       '''onSubmit''=>"loading();return(validateForm(''@nomeForm'', ''@title'', ''@message''))"' AS form_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_LOGIN';


/**
* INICIO
*  
* DADSOS USUARIO - DADOS PESSOAIS
*/

-- aba de dados pessoais
INSERT INTO formulario (id_categoria, id_formulario_pai, nome, descricao, 
                        constante_textual_titulo,form_name, form_method, form_action, 
                        form_attribs, ordem, rowinfo)
        SELECT c.id AS id_categoria,(SELECT f.id
                                     FROM formulario f
                                     WHERE f.nome = 'FORM_DADOS_USUARIO') AS id_formulario_pai,
       'SUBFORM_DADOS_USUARIO_DADOS_PESSOAIS' AS nome,
       'Formulário de submissão de dados pessoais.' AS descricao, 
       'SUBFORM_TABTITLE_DADOS_PESSOAIS' AS constante_textual_titulo,
       'CadastrarDadosUsuarioDadosPessoais' AS form_name, 
       'post' AS form_method, 
       NULL AS form_action, 
       NULL AS form_attribs, 
       1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_SUB_FORMULARIO';
-------------

-- container de documentos pessoais
INSERT INTO formulario (id_categoria, nome, descricao, 
                        constante_textual_titulo,form_name, form_method, form_action, 
                        form_attribs, rowinfo)
		SELECT c.id AS id_categoria, 
		'FORM_DIALOG_DOCUMENTOS_PESSOAIS' AS nome, 
		'Dialog para visualizacao de documentos pessoais.' AS descricao, 
        'FORM_TITLE_DOCUMENTOS_PESSOAIS' AS constante_textual_titulo, 
        'CadastrarDadosUsuarioDadosPessoaisDocumentosPessoais' AS form_name, 
        'post' AS form_method, NULL AS form_action, 
        NULL AS form_attribs, 'SYSTEM_STARTUP' AS rowinfo       
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_PESSOAIS_DOCUMENTOS_PESSOAIS';
-------------

-- container de telefones pessoais
INSERT INTO formulario (id_categoria, nome, descricao, 
                        constante_textual_titulo,form_name, form_method, form_action, 
                        form_attribs, rowinfo)
		SELECT c.id AS id_categoria, 
		'FORM_DIALOG_TELEFONES_PESSOAIS' AS nome, 
		'Dialog para visualizacao de telefones pessoais.' AS descricao, 
        'FORM_TITLE_TELEFONES_PESSOAIS' AS constante_textual_titulo, 
        'CadastrarDadosUsuarioDadosPessoaisTelefonesPessoais' AS form_name, 
        'post' AS form_method, NULL AS form_action, 
        NULL AS form_attribs, 'SYSTEM_STARTUP' AS rowinfo       
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_PESSOAIS_TELEFONES_PESSOAIS';
-------------

-- container de emails pessoais
INSERT INTO formulario (id_categoria, nome, descricao, 
                        constante_textual_titulo,form_name, form_method, form_action, 
                        form_attribs, rowinfo)
		SELECT c.id AS id_categoria, 
		'FORM_DIALOG_EMAILS_PESSOAIS' AS nome, 
		'Dialog para visualizacao de emails pessoais.' AS descricao, 
        'FORM_TITLE_TELEFONES_PESSOAIS' AS constante_textual_titulo, 
        'CadastrarDadosUsuarioDadosPessoaisEmailsPessoais' AS form_name, 
        'post' AS form_method, NULL AS form_action, 
        NULL AS form_attribs, 'SYSTEM_STARTUP' AS rowinfo       
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_PESSOAIS_EMAILS_PESSOAIS';
-------------

-- container de websites pessoais
INSERT INTO formulario (id_categoria, nome, descricao, 
                        constante_textual_titulo,form_name, form_method, form_action, 
                        form_attribs, rowinfo)
		SELECT c.id AS id_categoria, 
		'FORM_DIALOG_WEBSITES_PESSOAIS' AS nome, 
		'Dialog para visualizacao de websites pessoais.' AS descricao, 
        'FORM_TITLE_WEBSITES_PESSOAIS' AS constante_textual_titulo, 
        'CadastrarDadosUsuarioDadosPessoaisWebsitesPessoais' AS form_name, 
        'post' AS form_method, NULL AS form_action, 
        NULL AS form_attribs, 'SYSTEM_STARTUP' AS rowinfo       
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_PESSOAIS_WEBSITES_PESSOAIS';
-------------

-- container de endereços pessoais
INSERT INTO formulario (id_categoria, nome, descricao, 
                        constante_textual_titulo,form_name, form_method, form_action, 
                        form_attribs, rowinfo)
		SELECT c.id AS id_categoria, 
		'FORM_DIALOG_ENDERECOS_PESSOAIS' AS nome, 
		'Dialog para visualizacao de endereços pessoais.' AS descricao, 
        'FORM_TITLE_ENDERECOS_PESSOAIS' AS constante_textual_titulo, 
        'CadastrarDadosUsuarioDadosPessoaisEnderecosPessoais' AS form_name, 
        'post' AS form_method, NULL AS form_action, 
        NULL AS form_attribs, 'SYSTEM_STARTUP' AS rowinfo       
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_PESSOAIS_ENDERECOS_PESSOAIS';
-------------

/**
* FIM DADSOS USUARIO - DADOS PESSOAIS
*/


/**
* INICIO
*  
* DADSOS USUARIO - INFORMACOES BANCARIAS
*/

-- aba de informações bancárias
INSERT INTO formulario (id_categoria, id_formulario_pai, nome, descricao, 
                        constante_textual_titulo,form_name, form_attribs, ordem, rowinfo)
        SELECT c.id AS id_categoria,
        (SELECT f.id
        FROM formulario f
        WHERE f.nome = 'FORM_DADOS_USUARIO') AS id_formulario_pai,
       'SUBFORM_DADOS_USUARIO_INFORMACOES_BANCARIAS' AS nome,
       'Formulário de submissão de informações bancárias.' AS descricao, 
       'SUBFORM_TABTITLE_INFORMACOES_BANCARIAS' AS constante_textual_titulo,
       'CadastrarDadosUsuarioInformacoesBancarias' AS form_name, 
       NULL AS form_attribs, 
       5 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_SUB_FORMULARIO';
-------------

-- dados usuario - aba informacoes bancarias - sub aba dados bancarios
INSERT INTO formulario (id_categoria, id_formulario_pai, nome, descricao, 
						constante_textual_titulo, form_name, form_method, form_action,
						form_attribs, ordem, rowinfo)
        SELECT c.id AS id_categoria, 
        (SELECT f.id
        FROM formulario f
        WHERE f.nome = 'SUBFORM_DADOS_USUARIO_INFORMACOES_BANCARIAS') AS id_formulario_pai, 
       'SUBFORM_DADOS_USUARIO_INFORMACOES_BANCARIAS_DADOS_BANCARIOS' AS nome,
       'Formulário de cadastro dos dados bancários' AS descricao,
       'SUBFORM_TABTITLE_INFORMACOES_BANCARIAS_DADOS_BANCARIOS' AS constante_textual_titulo,
       'CadastrarDadosUsuarioInformacoesBancariasDadosBancarios' AS form_name,
       'post' AS form_method, 
       NULL AS form_action, 
       NULL AS form_attribs, 
       1,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_SUB_FORMULARIO';
----------------

-- dados usuario - aba informacoes bancarias - sub aba dados bancarios
-- container de contas bancarias
INSERT INTO formulario (id_categoria, nome, descricao, 
                        constante_textual_titulo,form_name, form_method, form_action, 
                        form_attribs, rowinfo)
		SELECT c.id AS id_categoria, 
		'FORM_DIALOG_CONTAS_BANCARIAS' AS nome, 
		'Dialog para visualizacao de contas bancárias.' AS descricao, 
        'FORM_TITLE_CONTAS_BANCARIAS' AS constante_textual_titulo, 
        'CadastrarDadosUsuarioInformacoesBancariasContasBancarias' AS form_name, 
        'post' AS form_method, NULL AS form_action, 
        NULL AS form_attribs, 'SYSTEM_STARTUP' AS rowinfo       
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_INFORMACOES_BANCARIAS_DADOS_BANCARIOS_CONTAS_BANCARIAS';
-------------


-- dados usuario - informacoes bancarias - sub movimentacao financeira
INSERT INTO formulario (id_categoria, id_formulario_pai, nome, descricao, 
						constante_textual_titulo, form_name, form_method, form_action,
						form_attribs, ordem, rowinfo)
SELECT c.id AS id_categoria, (SELECT f.id
        		                     FROM formulario f
                		             WHERE f.nome = 'SUBFORM_DADOS_USUARIO_INFORMACOES_BANCARIAS'), 
       'SUBFORM_DADOS_USUARIO_INFORMACOES_BANCARIAS_MOVIMENTACAO_FINANCEIRA' AS nome,
       'Formulário de cadastro das movimentações financeiras' AS descricao,
       'SUBFORM_TABTITLE_INFORMACOES_BANCARIAS_MOVIMENTACAO_FINANCEIRA' AS constante_textual_titulo,
       'CadastrarDadosUsuarioInformacoesBancariasMovimentacaoFinanceira' AS form_name,
       'post' AS form_method, 
       NULL AS form_action, 
       NULL AS form_attribs, 
       2,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_SUB_FORMULARIO';
----------------


-- cadastro de conta bancaria
INSERT INTO formulario (id_categoria, nome, descricao, 
                        constante_textual_titulo,form_name, form_method, form_action, 
                        form_attribs, rowinfo)
		SELECT c.id AS id_categoria, 
		'FORM_DIALOG_CONTA_BANCARIA' AS nome, 
		'Dialog para edicao de conta bancária.' AS descricao, 
        'FORM_TITLE_CONTA_BANCARIA' AS constante_textual_titulo, 
        'CadastrarContaBancaria' AS form_name, 
        'post' AS form_method, NULL AS form_action, 
        NULL AS form_attribs, 'SYSTEM_STARTUP' AS rowinfo       
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_CONTA_BANCARIA';

/**
* FIM DADOS USUARIO - INFORMACOES BANCARIAS
*/