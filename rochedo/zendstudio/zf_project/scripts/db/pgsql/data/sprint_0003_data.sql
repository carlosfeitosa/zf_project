/*
* SCRIPT DE POPULACAO DAS TABELAS DO SPRINT 0004
* 
* versao: 1.0 (POSTGRESQL 8.4.1)
* por: ADRIANO LEMOS (adriano.lemos@rochedoproject.com)
* criacao: 27/09/2010
* ultimas modificacoes: 
* 
* 						
* 						27/09/2010 - insercao de dados em formulario
* 								   - insercao de template formulario
* 								   - insercao de componentes do dojo
* 
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
       'CadastrarDadosUsuarioDadosAcademicos' AS form_name, 'post' AS form_method, NULL AS form_action, 
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
	   
/* COMPONENTE */
	   
INSERT INTO componente(id_categoria, nome, descricao, componente, rowinfo)
SELECT c.id, 'DOJO_FilteringSelect' AS nome, 'Componente DOJO para ComboBox com filtragem' AS descricao, 
		'''FilteringSelect''' AS componente, 'SYSTEM_STARTUP' as rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'COMPONENTE'
AND c.nome = 'COMPONENTE_DOJO';
		
INSERT INTO componente(id_categoria, nome, descricao, componente, rowinfo)
SELECT c.id, 'ZF_MultiCheckbox' AS nome, 'Componente ZF para multiplos CheckBoxs' AS descricao, 
		'''MultiCheckbox''' AS componente, 'SYSTEM_STARTUP' as rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'COMPONENTE'
AND c.nome = 'COMPONENTE_ZF';

INSERT INTO componente(id_categoria, nome, descricao, componente, rowinfo)
SELECT c.id, 'DOJO_CheckBox' AS nome, 'Componente DOJO para CheckBox' AS descricao, 
		'''CheckBox''' AS componente, 'SYSTEM_STARTUP' as rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'COMPONENTE'
AND c.nome = 'COMPONENTE_DOJO';


/*
/* AJUDA */

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, constante_textual_hint, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_CAMPO_CATEGORIA_BOLSA_CNPQ' AS nome, 'Texto de ajuda para o campo categoria de bolsa do cnpq.' AS descricao,
       'FORM_FIELD_CATEGORIA_BOLSA_CNPQ' AS constante_textual_ajuda, 'FORM_FIELD_CATEGORIA_BOLSA_CNPQ_HINT' AS constante_textual_hint, 
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_CADASTRO_USUARIO';



INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, constante_textual_hint, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_CAMPO_EMAIL_USUARIO' AS nome, 'Texto de ajuda para o campo e-mail do usuário.' AS descricao,
       'FORM_FIELD_EMAIL_AJUDA' AS constante_textual_ajuda, 'FORM_FIELD_EMAIL_HINT' AS constante_textual_hint, 
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_CADASTRO_USUARIO';




/* DECORATOR */





/* FORMULARIO ELEMENTO */

INSERT INTO formulario_elemento (id_categoria, id_ajuda, id_formulario_elemento_filter, 
								 id_decorator, id_componente, nome, descricao, constante_textual_label, 
								 element_name, element_attribs, element, element_reloadable, 
								 rowinfo)

SELECT c.id AS id_categoria, (SELECT a.id
                              FROM ajuda a
                              LEFT JOIN categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_CADASTRO_USUARIO'
                              AND a.nome = 'AJUDA_CAMPO_NOME_USUARIO') AS id_ajuda,
                             (SELECT ff.id
                              FROM formulario_elemento_filter ff
                              LEFT JOIN categoria c ON (ff.id_categoria = c.id)
                              LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'FORMULARIO'
                              AND c.nome = 'FORMULARIO_ELEMENTO_FILTER'
                              AND ff.nome = 'STRINGTRIM_STRIPTAGS') AS id_formulario_elemento_filter,
                             (SELECT d.id
                              FROM decorator d
                              LEFT JOIN categoria c ON (d.id_categoria = c.id)
                              LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'FORMULARIO'
                              AND c.nome = 'FORMULARIO_ELEMENTO_DECORATOR'
                              AND d.nome = 'DECORATOR_FORM_LABEL_ESCAPE') AS id_decorator,
							 (SELECT cp.id
                              FROM componente cp
                              LEFT JOIN categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_ValidationTextBox') AS id_componente,
                              'FIELD_NOME_USUARIO' AS nome, 'Elemento campo nome do usuário, com filtro e validador.' AS descricao,
                              'FORM_FIELD_NOME' AS constante_textual_label,
                              'nome' AS element_name, '''size'' => 100' AS element_attribs,
                              '''nome''' AS element, 1 AS element_reloadable, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_SUB_FORMULARIO';




INSERT INTO "public"."formulario_elemento"("id_categoria", "id_ajuda", "id_formulario_elemento_filter", "id_decorator", "id_componente", "nome", "descricao", "constante_textual_label", "element_name", "element_attribs", "element", "element_reloadable", "rowinfo")
VALUES(160, NULL, NULL, 2, 6, 'FORM_FIELD_CHECKBOX_MODULOS_FORMULARIO', 'Elemento Checkbox para seleção de módulos de um Formulário.', 'FORM_FIELD_CHECKBOX_MODULOS_FORMULARIO', 'modulosFormulario', '''size'' => 100', '''modulosFormulario''', 1, 'SYSTEM_STARTUP')

	   
/* FORMULARIO x FORMULARIO ELEMENTO*/

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO'
        AND f.nome = 'FORM_CADASTRAR_USUARIO_NAO_VALIDADO') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO'
AND fe.nome = 'FIELD_NOME_USUARIO') AS id_formulario_elemento, 1 AS element_required, 1 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
*/
