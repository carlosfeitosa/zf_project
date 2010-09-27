/*
* SCRIPT DE POPULACAO DAS TABELAS DO SPRINT 0004
* 
* versao: 1.0 (POSTGRESQL 8.4.1)
* por: ADRIANO LEMOS (adriano.lemos@rochedoproject.com)
* criacao: 27/09/2010
* ultimas modificacoes: 

* 
* 					à partir daqui:
* 						
* 						27/09/2010 - insercao de dados em formulario
* 								   - insercao de template formulario 
* 
*/



/* FORMULARIO */

INSERT INTO formulario (id_categoria, id_decorator, id_formulario_pai, nome, descricao, 
                        constante_textual_titulo,form_name, form_method, form_action, 
                        form_attribs, rowinfo)
SELECT c.id AS id_categoria, (SELECT d.id
                              FROM decorator d
                              LEFT JOIN categoria c ON (d.id_categoria= c.id)
                              LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'FORMULARIO'
                              AND c.nome = 'FORMULARIO_TAB_CONTAINER1_DECORATOR'
                              AND d.nome = 'DECORATOR_FORM_TAB_CONTAINER1') AS id_decorator,
                             (SELECT f.id
                              FROM formulario f
                              WHERE f.nome = 'FORM_DADOS_USUARIO'),                          
       'SUBFORM_DADOS_ACADEMICOS' AS nome,
       'Formulário de submissão de dados acadêmicos.' AS descricao, 
       'SUBFORM_TABTITLE_DADOS_ACADEMICOS' AS constante_textual_titulo,
       'CadastrarDadosUsuarioDadosAcademicos' AS form_name, 'post' AS form_method, '' AS form_action, 
       '''onSubmit''=>"loading();return(validateForm(''CadastrarDadosUsuarioDadosAcademicos''))"' AS form_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_SUB_FORMULARIO';


/* FORMULARIO TEMPLATE */

INSERT INTO template_formulario (id_formulario, id_template, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO'
        AND f.nome = 'SUBFORM_DADOS_ACADEMICOS') AS id_formulario,
       (SELECT p.id
		FROM template p
		LEFT JOIN categoria c ON (p.id_categoria = c.id)
		LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'FORMULARIO'
		AND c.nome = 'FORMULARIO_TEMPLATE'
		AND p.nome = 'TEMPLATE_DOJO') AS id_template,
	   'SYSTEM_STARTUP' AS rowinfo;	   