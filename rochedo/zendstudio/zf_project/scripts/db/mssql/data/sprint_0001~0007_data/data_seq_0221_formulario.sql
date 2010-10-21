/*
* SCRIPT DE POPULACAO DAS TABELAS
* 
* versao: 1.0 (MSSQL 2000)
* por: ADRIANO DUPRAT LEMOS (adriano.lemos@rochedoproject.com)
* criacao: 20/10/2010
* ultimas modificacoes:
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

INSERT INTO formulario (id_categoria, id_decorator, id_formulario_pai, nome, descricao, 
                        constante_textual_titulo,form_name, form_method, form_action, 
                        form_attribs, ordem, rowinfo)
		SELECT c.id AS id_categoria, 
		(SELECT d.id
		 FROM decorator d
         LEFT JOIN categoria c ON (d.id_categoria = c.id)
         LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
         WHERE t.nome = 'FORMULARIO'
         AND c.nome = 'FORMULARIO_ACCORDEON_CONTAINER1_DECORATOR'
         AND d.nome = 'DECORATOR_FORM_ACCORDION_CONTAINER1') AS id_decorator,
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