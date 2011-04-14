/*
* SCRIPT DE POPULACAO DAS TABELAS
* 
* versao: 1.0 (POSTGRESQL 8.4.1)
* por: ADRIANO DUPRAT LEMOS (adriano.lemos@rochedoproject.com)
* criacao: 21/10/2010
* ultimas modificacoes:
* 								22/10/2010 - criacao de formularios elementos para o formulario FORM_DIALOG_VINCULO_PROFISSIONAL;
* 								16/11/2010 - criacao de formularios elementos para o formulario FORM_DIALOG_EMAIL;
* 								
*/

/* FORMULARIO X FORMULARIO ELEMENTO */

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_BIOMETRICOS'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_BIOMETRICOS') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_RADIO_BUTTON_SEXO') AS id_formulario_elemento,
        (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT') AS id_decorator,
        false AS element_required, 1 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
        
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_BIOMETRICOS'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_BIOMETRICOS') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_FILTERING_SELECT_RACA') AS id_formulario_elemento,
        (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        false AS element_required, 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
        
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_BIOMETRICOS'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_BIOMETRICOS') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_NUMBER_TEXT_BOX_ALTURA') AS id_formulario_elemento,
        (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT') AS id_decorator,
        false AS element_required, 3 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_BIOMETRICOS'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_BIOMETRICOS') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_NUMBER_TEXT_BOX_PESO') AS id_formulario_elemento,
        (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        false AS element_required, 4 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
        
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_BIOMETRICOS'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_BIOMETRICOS') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_FILTERING_SELECT_TIPO_SANGUINEO') AS id_formulario_elemento,
        (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT') AS id_decorator,
        false AS element_required, 5 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
        
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_BIOMETRICOS'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_BIOMETRICOS') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_SIMPLE_TEXT_AREA_HISTORICO_MEDICO') AS id_formulario_elemento,
        (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        false AS element_required, 6 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
        
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_BIOMETRICOS'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_BIOMETRICOS') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_SUBMIT') AS id_formulario_elemento,
        (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        false AS element_required, 7 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_DOCUMENTOS_IDENTIFICACAO'
        AND f.nome = 'FORM_DIALOG_DOCUMENTOS_IDENTIFICACAO') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_HTML'
        AND fe.nome = 'FORM_LINHA_HORIZONTAL') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_WIDTH_100PERCENT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_WIDTH_100PERCENT_CLEAR_BOTH') AS id_decorator,
        false AS element_required, 1 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_DOCUMENTOS_IDENTIFICACAO'
        AND f.nome = 'FORM_DIALOG_DOCUMENTOS_IDENTIFICACAO') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND fe.nome = 'FORM_BUTTON_DIALOG_DOJO') AS id_formulario_elemento,
        (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT_CLEAR_BOTH') AS id_decorator,
        false AS element_required, 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
        
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_DOCUMENTOS_IDENTIFICACAO'
        AND f.nome = 'FORM_DIALOG_DOCUMENTOS_IDENTIFICACAO') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_CLOSE_DIALOG') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT') AS id_decorator,
        false AS element_required, 3 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_DOCUMENTOS_IDENTIFICACAO'
        AND f.nome = 'FORM_DIALOG_DOCUMENTO') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_VALIDATION_TEXT_BOX_NUMERO_DOCUMENTO') AS id_formulario_elemento, false AS element_required, 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
        
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_DOCUMENTOS_IDENTIFICACAO'
        AND f.nome = 'FORM_DIALOG_DOCUMENTO') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_SUBMIT') AS id_formulario_elemento, false AS element_required, 5 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
        
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_DOCUMENTOS_IDENTIFICACAO'
        AND f.nome = 'FORM_DIALOG_DOCUMENTO') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_RESET') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        false AS element_required, 6 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, id_grupo_formulario_elemento,element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO'
        AND f.nome = 'FORM_CADASTRAR_USUARIO_VALIDADO') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_VALIDATION_TEXT_BOX_NOME_USUARIO') AS id_formulario_elemento,
        (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        (SELECT g.id
       	FROM grupo_formulario_elemento g
       	WHERE g.nome = 'DADOS_USUARIO_DADOS_PESSOAIS') AS id_grupo_formulario_elemento,
        true AS element_required, 1 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, id_grupo_formulario_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO'
        AND f.nome = 'FORM_CADASTRAR_USUARIO_VALIDADO') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_DATE_TEXT_BOX_DATA_NASCIMENTO') AS id_formulario_elemento,
        (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        (SELECT g.id
       	FROM grupo_formulario_elemento g
       	WHERE g.nome = 'DADOS_USUARIO_DADOS_PESSOAIS') AS id_grupo_formulario_elemento,
        true AS element_required, 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, id_grupo_formulario_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO'
        AND f.nome = 'FORM_CADASTRAR_USUARIO_VALIDADO') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_RADIO_BUTTON_SEXO') AS id_formulario_elemento,
        (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        (SELECT g.id
       	FROM grupo_formulario_elemento g
       	WHERE g.nome = 'DADOS_USUARIO_DADOS_PESSOAIS') AS id_grupo_formulario_elemento,
        true AS element_required, 3 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
        
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, id_grupo_formulario_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO'
        AND f.nome = 'FORM_CADASTRAR_USUARIO_VALIDADO') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_VALIDATION_TEXT_BOX_LOGIN') AS id_formulario_elemento,
        (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT') AS id_decorator,
        (SELECT g.id
       	FROM grupo_formulario_elemento g
       	WHERE g.nome = 'DADOS_USUARIO_DADOS_USUARIO') AS id_grupo_formulario_elemento,
        true AS element_required, 4 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
        
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, id_grupo_formulario_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO'
        AND f.nome = 'FORM_CADASTRAR_USUARIO_VALIDADO') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_HTML'
        AND fe.nome = 'FORM_FIELD_HTML_LOGIN_DISPONIBILIDADE') AS id_formulario_elemento,
        (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT') AS id_decorator,
        (SELECT g.id
       	FROM grupo_formulario_elemento g
       	WHERE g.nome = 'DADOS_USUARIO_DADOS_USUARIO') AS id_grupo_formulario_elemento,
        false AS element_required, 5 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
        
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, id_grupo_formulario_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO'
        AND f.nome = 'FORM_CADASTRAR_USUARIO_VALIDADO') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_PASSWORD_TEXT_BOX_SENHA_WITH_CHECKER') AS id_formulario_elemento,
        (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        (SELECT g.id
       	FROM grupo_formulario_elemento g
       	WHERE g.nome = 'DADOS_USUARIO_DADOS_USUARIO') AS id_grupo_formulario_elemento,
        true AS element_required, 6 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
        
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, id_grupo_formulario_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO'
        AND f.nome = 'FORM_CADASTRAR_USUARIO_VALIDADO') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_HTML'
        AND fe.nome = 'FORM_FIELD_HTML_PASSWORD_STRENGTH_CHECKER') AS id_formulario_elemento,
        (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT') AS id_decorator,
        (SELECT g.id
       	FROM grupo_formulario_elemento g
       	WHERE g.nome = 'DADOS_USUARIO_DADOS_USUARIO') AS id_grupo_formulario_elemento,
        false AS element_required, 7 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, id_grupo_formulario_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO'
        AND f.nome = 'FORM_CADASTRAR_USUARIO_VALIDADO') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_PASSWORD_TEXT_BOX_SENHA_CONFIRMACAO') AS id_formulario_elemento,
        (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        (SELECT g.id
       	FROM grupo_formulario_elemento g
       	WHERE g.nome = 'DADOS_USUARIO_DADOS_USUARIO') AS id_grupo_formulario_elemento,
        true AS element_required, 8 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
                     
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO'
        AND f.nome = 'FORM_CADASTRAR_USUARIO_VALIDADO') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_SUBMIT') AS id_formulario_elemento,
        (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        false AS element_required, 9 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
        
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_ACADEMICOS'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_ACADEMICOS') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_FILTERING_SELECT_CATEGORIA_BOLSA_CNPQ') AS id_formulario_elemento, false AS element_required, 1 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, id_grupo_formulario_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_ACADEMICOS'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_ACADEMICOS') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_FILTERING_SELECT_MAIOR_TITULACAO') AS id_formulario_elemento, 
        (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        (SELECT g.id
       	FROM grupo_formulario_elemento g
       	WHERE g.nome = 'DADOS_USUARIO_DADOS_ACADEMICOS_MAIOR_TITULACAO') AS id_grupo_formulario_elemento,
        false AS element_required, 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
        
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, id_grupo_formulario_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_ACADEMICOS'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_ACADEMICOS') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_FILTERING_SELECT_INSTITUICAO_QUE_CONCEDEU') AS id_formulario_elemento, 
        (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        (SELECT g.id
       	FROM grupo_formulario_elemento g
       	WHERE g.nome = 'DADOS_USUARIO_DADOS_ACADEMICOS_MAIOR_TITULACAO') AS id_grupo_formulario_elemento,
        false AS element_required, 3 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, id_grupo_formulario_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_ACADEMICOS'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_ACADEMICOS') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_FILTERING_SELECT_AREA_DE_CONHECIMENTO') AS id_formulario_elemento,
        (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,        
       (SELECT g.id
       	FROM grupo_formulario_elemento g
       	WHERE g.nome = 'DADOS_USUARIO_DADOS_ACADEMICOS_MAIOR_TITULACAO') AS id_grupo_formulario_elemento,
        false AS element_required, 4 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;        
        
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, id_grupo_formulario_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
	    FROM formulario f
	    LEFT JOIN categoria c ON (f.id_categoria = c.id)
	    LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
	    WHERE t.nome = 'FORMULARIO'
	    AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_ACADEMICOS'
	    AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_ACADEMICOS') AS id_formulario,
	   (SELECT fe.id
	    FROM formulario_elemento fe
	    LEFT JOIN categoria c ON (fe.id_categoria = c.id)
	    LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
	    WHERE t.nome = 'FORMULARIO'
	    AND c.nome = 'FORMULARIO_ELEMENTO'
	    AND fe.nome = 'FORM_FIELD_VALIDATION_TEXT_BOX_NOME_CURSO') AS id_formulario_elemento,
        (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,	    
       (SELECT g.id
       	FROM grupo_formulario_elemento g
       	WHERE g.nome = 'DADOS_USUARIO_DADOS_ACADEMICOS_MAIOR_TITULACAO') AS id_grupo_formulario_elemento,
	    false AS element_required, 5 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;           	    

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, id_grupo_formulario_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
	    FROM formulario f
	    LEFT JOIN categoria c ON (f.id_categoria = c.id)
	    LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
	    WHERE t.nome = 'FORMULARIO'
	    AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_ACADEMICOS'
	    AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_ACADEMICOS') AS id_formulario,
	   (SELECT fe.id
	    FROM formulario_elemento fe
	    LEFT JOIN categoria c ON (fe.id_categoria = c.id)
	    LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
	    WHERE t.nome = 'FORMULARIO'
	    AND c.nome = 'FORMULARIO_ELEMENTO'
	    AND fe.nome = 'FORM_FIELD_DATE_TEXT_BOX_DATA_OBTENCAO') AS id_formulario_elemento,
        (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,	    
       (SELECT g.id
       	FROM grupo_formulario_elemento g
       	WHERE g.nome = 'DADOS_USUARIO_DADOS_ACADEMICOS_MAIOR_TITULACAO') AS id_grupo_formulario_elemento,	    
	    false AS element_required, 6 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;  

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, id_grupo_formulario_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
	    FROM formulario f
	    LEFT JOIN categoria c ON (f.id_categoria = c.id)
	    LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
	    WHERE t.nome = 'FORMULARIO'
	    AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_ACADEMICOS'
	    AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_ACADEMICOS') AS id_formulario,
	   (SELECT fe.id
	    FROM formulario_elemento fe
	    LEFT JOIN categoria c ON (fe.id_categoria = c.id)
	    LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
	    WHERE t.nome = 'FORMULARIO'
	    AND c.nome = 'FORMULARIO_ELEMENTO'
	    AND fe.nome = 'FORM_FIELD_FILTERING_SELECT_TITULACAO_ESPERADA') AS id_formulario_elemento, 
        (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
	    (SELECT g.id
       	FROM grupo_formulario_elemento g
       	WHERE g.nome = 'DADOS_USUARIO_DADOS_ACADEMICOS_CURSO_ATUAL') AS id_grupo_formulario_elemento,	    
	    false AS element_required, 7 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
	    
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, id_grupo_formulario_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
	    FROM formulario f
	    LEFT JOIN categoria c ON (f.id_categoria = c.id)
	    LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
	    WHERE t.nome = 'FORMULARIO'
	    AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_ACADEMICOS'
	    AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_ACADEMICOS') AS id_formulario,
	   (SELECT fe.id
	    FROM formulario_elemento fe
	    LEFT JOIN categoria c ON (fe.id_categoria = c.id)
	    LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
	    WHERE t.nome = 'FORMULARIO'
	    AND c.nome = 'FORMULARIO_ELEMENTO'
	    AND fe.nome = 'FORM_FIELD_FILTERING_SELECT_INSTITUICAO_CURSO_ATUAL') AS id_formulario_elemento,
        (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,	    
       (SELECT g.id
       	FROM grupo_formulario_elemento g
       	WHERE g.nome = 'DADOS_USUARIO_DADOS_ACADEMICOS_CURSO_ATUAL') AS id_grupo_formulario_elemento,	    
	    false AS element_required, 8 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
	    
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, id_grupo_formulario_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
	    FROM formulario f
	    LEFT JOIN categoria c ON (f.id_categoria = c.id)
	    LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
	    WHERE t.nome = 'FORMULARIO'
	    AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_ACADEMICOS'
	    AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_ACADEMICOS') AS id_formulario,
	   (SELECT fe.id
	    FROM formulario_elemento fe
	    LEFT JOIN categoria c ON (fe.id_categoria = c.id)
	    LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
	    WHERE t.nome = 'FORMULARIO'
	    AND c.nome = 'FORMULARIO_ELEMENTO'
	    AND fe.nome = 'FORM_FIELD_FILTERING_SELECT_AREA_CONHECIMENTO_CURSO_ATUAL') AS id_formulario_elemento,
        (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,	    
       (SELECT g.id
       	FROM grupo_formulario_elemento g
       	WHERE g.nome = 'DADOS_USUARIO_DADOS_ACADEMICOS_CURSO_ATUAL') AS id_grupo_formulario_elemento,	    
	    false AS element_required, 9 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
	    
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, id_grupo_formulario_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
	    FROM formulario f
	    LEFT JOIN categoria c ON (f.id_categoria = c.id)
	    LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
	    WHERE t.nome = 'FORMULARIO'
	    AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_ACADEMICOS'
	    AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_ACADEMICOS') AS id_formulario,
	   (SELECT fe.id
	    FROM formulario_elemento fe
	    LEFT JOIN categoria c ON (fe.id_categoria = c.id)
	    LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
	    WHERE t.nome = 'FORMULARIO'
	    AND c.nome = 'FORMULARIO_ELEMENTO'
	    AND fe.nome = 'FORM_FIELD_VALIDATION_TEXT_BOX_NOME_CURSO_ATUAL') AS id_formulario_elemento,
        (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,	    
       (SELECT g.id
       	FROM grupo_formulario_elemento g
       	WHERE g.nome = 'DADOS_USUARIO_DADOS_ACADEMICOS_CURSO_ATUAL') AS id_grupo_formulario_elemento,	    
	    false AS element_required, 10 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
	    
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, id_grupo_formulario_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
	    FROM formulario f
	    LEFT JOIN categoria c ON (f.id_categoria = c.id)
	    LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
	    WHERE t.nome = 'FORMULARIO'
	    AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_ACADEMICOS'
	    AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_ACADEMICOS') AS id_formulario,
	   (SELECT fe.id
	    FROM formulario_elemento fe
	    LEFT JOIN categoria c ON (fe.id_categoria = c.id)
	    LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
	    WHERE t.nome = 'FORMULARIO'
	    AND c.nome = 'FORMULARIO_ELEMENTO'
	    AND fe.nome = 'FORM_FIELD_FILTERING_SELECT_PERIODO') AS id_formulario_elemento,
        (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,	    
       (SELECT g.id
       	FROM grupo_formulario_elemento g
       	WHERE g.nome = 'DADOS_USUARIO_DADOS_ACADEMICOS_CURSO_ATUAL') AS id_grupo_formulario_elemento,	    
	    false AS element_required, 11 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
	    
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, id_grupo_formulario_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
	    FROM formulario f
	    LEFT JOIN categoria c ON (f.id_categoria = c.id)
	    LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
	    WHERE t.nome = 'FORMULARIO'
	    AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_ACADEMICOS'
	    AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_ACADEMICOS') AS id_formulario,
	   (SELECT fe.id
	    FROM formulario_elemento fe
	    LEFT JOIN categoria c ON (fe.id_categoria = c.id)
	    LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
	    WHERE t.nome = 'FORMULARIO'
	    AND c.nome = 'FORMULARIO_ELEMENTO'
	    AND fe.nome = 'FORM_FIELD_FILTERING_SELECT_TURNO') AS id_formulario_elemento,
        (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,	    
       (SELECT g.id
       	FROM grupo_formulario_elemento g
       	WHERE g.nome = 'DADOS_USUARIO_DADOS_ACADEMICOS_CURSO_ATUAL') AS id_grupo_formulario_elemento,	    
	    false AS element_required, 12 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;  
    
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_grupo_formulario_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_ACADEMICOS'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_ACADEMICOS') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND fe.nome = 'FORM_BUTTON_DIALOG_DOJO') AS id_formulario_elemento, 
       (SELECT g.id
       	FROM grupo_formulario_elemento g
       	WHERE g.nome = 'DADOS_USUARIO_DADOS_ACADEMICOS_COORDENACAO_POS_GRADUACAO') AS id_grupo_formulario_elemento,
        false AS element_required, 13 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
        
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_grupo_formulario_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id 
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_ACADEMICOS'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_ACADEMICOS') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND fe.nome = 'FORM_BUTTON_DIALOG_DOJO') AS id_formulario_elemento, 
       (SELECT g.id
       	FROM grupo_formulario_elemento g
       	WHERE g.nome = 'DADOS_USUARIO_DADOS_ACADEMICOS_ORIENTACOES') AS id_grupo_formulario_elemento,
        false AS element_required, 14 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;       
        
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_COORDENACAO_POS_GRADUACAO'
        AND f.nome = 'FORM_DIALOG_COORDENACAO_POS_GRADUACAO') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_HTML'
        AND fe.nome = 'FORM_LINHA_HORIZONTAL') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_WIDTH_100PERCENT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_WIDTH_100PERCENT_CLEAR_BOTH') AS id_decorator,
        false AS element_required, 1 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;        
        
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id 
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_COORDENACAO_POS_GRADUACAO'
        AND f.nome = 'FORM_DIALOG_COORDENACAO_POS_GRADUACAO') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_CLOSE_DIALOG') AS id_formulario_elemento, 
        false AS element_required, 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;               

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_ORIENTACOES'
        AND f.nome = 'FORM_DIALOG_ORIENTACOES') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_HTML'
        AND fe.nome = 'FORM_LINHA_HORIZONTAL') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_WIDTH_100PERCENT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_WIDTH_100PERCENT_CLEAR_BOTH') AS id_decorator,
        false AS element_required, 1 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;        
        
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id 
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_ORIENTACOES'
        AND f.nome = 'FORM_DIALOG_ORIENTACOES') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_CLOSE_DIALOG') AS id_formulario_elemento,
	   (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_WIDTH_100PERCENT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_WIDTH_100PERCENT_CLEAR_BOTH') AS id_decorator,        
        false AS element_required, 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;               
                 
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
	    FROM formulario f
	    LEFT JOIN categoria c ON (f.id_categoria = c.id)
	    LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
	    WHERE t.nome = 'FORMULARIO'
	    AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_PROFISSIONAIS'
	    AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_PROFISSIONAIS') AS id_formulario,
	   (SELECT fe.id
	    FROM formulario_elemento fe
	    LEFT JOIN categoria c ON (fe.id_categoria = c.id)
	    LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
	    WHERE t.nome = 'FORMULARIO'
	    AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
	    AND fe.nome = 'FORM_BUTTON_DIALOG_DOJO') AS id_formulario_elemento, 
	    false AS element_required, 1 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;        

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL'
        AND f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_FILTERING_SELECT_VINCULO_PROFISSIONAL') AS id_formulario_elemento,
        (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_MARGIN_RIGHT_10PX') AS id_decorator,
        true AS element_required, 1 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
        
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL'
        AND f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_FILTERING_SELECT_PROFISSAO') AS id_formulario_elemento,
        (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT') AS id_decorator,
        true AS element_required, 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL'
        AND f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_FILTERING_SELECT_PJ_VINCULO') AS id_formulario_elemento,
        (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH_MARGIN_RIGHT_10PX') AS id_decorator,
        false AS element_required, 3 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL'
        AND f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_FILTERING_SELECT_REGIME_TRABALHO') AS id_formulario_elemento,
        (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT') AS id_decorator,
        true AS element_required, 4 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL'
        AND f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_VALIDATION_TEXT_BOX_CARGO') AS id_formulario_elemento,
        (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH_MARGIN_RIGHT_10PX') AS id_decorator,
        true AS element_required, 5 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL'
        AND f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_VALIDATION_TEXT_BOX_FUNCAO') AS id_formulario_elemento,
        (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT') AS id_decorator,
        true AS element_required, 6 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
        
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL'
        AND f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_SIMPLE_TEXT_AREA_ATIVIDADES_DESENVOLVIDAS') AS id_formulario_elemento,
        (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        false AS element_required, 7 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL'
        AND f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_DATE_TEXT_BOX_DATA_ADMISSAO') AS id_formulario_elemento,
        (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH_MARGIN_RIGHT_10PX') AS id_decorator,
        false AS element_required, 8 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL'
        AND f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_DATE_TEXT_BOX_DATA_DESVINCULACAO') AS id_formulario_elemento, 
        (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_MARGIN_RIGHT_10PX') AS id_decorator,
        false AS element_required, 9 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL'
        AND f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_NUMBER_TEXT_BOX_CARGA_HORARIA_SEMANAL') AS id_formulario_elemento, 
        (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT') AS id_decorator,
        false AS element_required, 10 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL'
        AND f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_CURRENCY_TEXT_BOX_SALARIO_BRUTO') AS id_formulario_elemento, 
        (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH_MARGIN_RIGHT_10PX') AS id_decorator,
        false AS element_required, 11 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL'
        AND f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_CHECK_BOX_DEDICACAO_EXCLUSIVA') AS id_formulario_elemento, 
        (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT') AS id_decorator,
        false AS element_required, 12 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
        
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL'
        AND f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_SIMPLE_TEXT_AREA_OUTRAS_INFORMACOES') AS id_formulario_elemento, 
        (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        false AS element_required, 13 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, id_grupo_formulario_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL'
        AND f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND fe.nome = 'FORM_BUTTON_DIALOG_DOJO') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
       (SELECT g.id
       	FROM grupo_formulario_elemento g
       	WHERE g.nome = 'DADOS_USUARIO_DADOS_PROFISSIONAIS_VINCULO_PROFISSIONAL_INFORMACOES_CONTATO') AS id_grupo_formulario_elemento,
        false AS element_required, 14 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, id_grupo_formulario_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL'
        AND f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND fe.nome = 'FORM_BUTTON_DIALOG_DOJO') AS id_formulario_elemento,
        (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT') AS id_decorator,
       (SELECT g.id
       	FROM grupo_formulario_elemento g
       	WHERE g.nome = 'DADOS_USUARIO_DADOS_PROFISSIONAIS_VINCULO_PROFISSIONAL_INFORMACOES_CONTATO') AS id_grupo_formulario_elemento,
        false AS element_required, 15 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, id_grupo_formulario_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL'
        AND f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND fe.nome = 'FORM_BUTTON_DIALOG_DOJO') AS id_formulario_elemento,
        (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT') AS id_decorator,
       (SELECT g.id
       	FROM grupo_formulario_elemento g
       	WHERE g.nome = 'DADOS_USUARIO_DADOS_PROFISSIONAIS_VINCULO_PROFISSIONAL_INFORMACOES_CONTATO') AS id_grupo_formulario_elemento,
        false AS element_required, 16 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, id_grupo_formulario_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL'
        AND f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND fe.nome = 'FORM_BUTTON_DIALOG_DOJO') AS id_formulario_elemento,
        (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
       (SELECT g.id
       	FROM grupo_formulario_elemento g
       	WHERE g.nome = 'DADOS_USUARIO_DADOS_PROFISSIONAIS_VINCULO_PROFISSIONAL_INFORMACOES_CONTATO') AS id_grupo_formulario_elemento,
        false AS element_required, 17 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL'
        AND f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_HTML'
        AND fe.nome = 'FORM_LINHA_HORIZONTAL') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_WIDTH_100PERCENT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_WIDTH_100PERCENT_CLEAR_BOTH') AS id_decorator,
        false AS element_required, 18 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL'
        AND f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_SUBMIT') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT_CLEAR_BOTH') AS id_decorator,
        false AS element_required, 19 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL'
        AND f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_RESET') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT_MARGIN_RIGHT_10px') AS id_decorator,
        false AS element_required, 20 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL_TELEFONES_PROFISSIONAIS'
        AND f.nome = 'FORM_DIALOG_TELEFONES_PROFISSIONAIS') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_HTML'
        AND fe.nome = 'FORM_LINHA_HORIZONTAL') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_WIDTH_100PERCENT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_WIDTH_100PERCENT_CLEAR_BOTH') AS id_decorator,
        false AS element_required, 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL_TELEFONES_PROFISSIONAIS'
        AND f.nome = 'FORM_DIALOG_TELEFONES_PROFISSIONAIS') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND fe.nome = 'FORM_BUTTON_DIALOG_DOJO') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT_CLEAR_BOTH') AS id_decorator,
        false AS element_required, 3 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL_TELEFONES_PROFISSIONAIS'
        AND f.nome = 'FORM_DIALOG_TELEFONES_PROFISSIONAIS') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_CLOSE_DIALOG') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT') AS id_decorator,
        false AS element_required, 4 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL_EMAILS_PROFISSIONAIS'
        AND f.nome = 'FORM_DIALOG_EMAILS_PROFISSIONAIS') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_HTML'
        AND fe.nome = 'FORM_LINHA_HORIZONTAL') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_WIDTH_100PERCENT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_WIDTH_100PERCENT_CLEAR_BOTH') AS id_decorator,
        false AS element_required, 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL_EMAILS_PROFISSIONAIS'
        AND f.nome = 'FORM_DIALOG_EMAILS_PROFISSIONAIS') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND fe.nome = 'FORM_BUTTON_DIALOG_DOJO') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT_CLEAR_BOTH') AS id_decorator,
        false AS element_required, 3 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL_EMAILS_PROFISSIONAIS'
        AND f.nome = 'FORM_DIALOG_EMAILS_PROFISSIONAIS') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_CLOSE_DIALOG') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT') AS id_decorator,
        false AS element_required, 4 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL_WEBSITES_PROFISSIONAIS'
        AND f.nome = 'FORM_DIALOG_WEBSITES_PROFISSIONAIS') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_HTML'
        AND fe.nome = 'FORM_LINHA_HORIZONTAL') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_WIDTH_100PERCENT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_WIDTH_100PERCENT_CLEAR_BOTH') AS id_decorator,
        false AS element_required, 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;       
        
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL_WEBSITES_PROFISSIONAIS'
        AND f.nome = 'FORM_DIALOG_WEBSITES_PROFISSIONAIS') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_CLOSE_DIALOG') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        false AS element_required, 3 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
        
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL_WEBSITES_PROFISSIONAIS'
        AND f.nome = 'FORM_DIALOG_WEBSITES_PROFISSIONAIS') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND fe.nome = 'FORM_BUTTON_DIALOG_DOJO') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT') AS id_decorator,
        false AS element_required, 4 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL_ENDERECOS_PROFISSIONAIS'
        AND f.nome = 'FORM_DIALOG_ENDERECOS_PROFISSIONAIS') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_HTML'
        AND fe.nome = 'FORM_LINHA_HORIZONTAL') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_WIDTH_100PERCENT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_WIDTH_100PERCENT_CLEAR_BOTH') AS id_decorator,
        false AS element_required, 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;       

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL_ENDERECOS_PROFISSIONAIS'
        AND f.nome = 'FORM_DIALOG_ENDERECOS_PROFISSIONAIS') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_CLOSE_DIALOG') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        false AS element_required, 3 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL_ENDERECOS_PROFISSIONAIS'
        AND f.nome = 'FORM_DIALOG_ENDERECOS_PROFISSIONAIS') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND fe.nome = 'FORM_BUTTON_DIALOG_DOJO') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT') AS id_decorator,
        false AS element_required, 4 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_TELEFONE'
        AND f.nome = 'FORM_DIALOG_TELEFONE') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_FILTERING_SELECT_TELEFONE_TIPO') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        true AS element_required, 1 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_TELEFONE'
        AND f.nome = 'FORM_DIALOG_TELEFONE') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_NUMBER_TEXT_BOX_TELEFONE_CODIGO_PAIS') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        true AS element_required, 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_TELEFONE'
        AND f.nome = 'FORM_DIALOG_TELEFONE') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_NUMBER_TEXT_BOX_TELEFONE_CODIGO_AREA') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        true AS element_required, 3 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_TELEFONE'
        AND f.nome = 'FORM_DIALOG_TELEFONE') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_NUMBER_TEXT_BOX_TELEFONE') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH_MARGIN_RIGHT_10PX') AS id_decorator,
        true AS element_required, 4 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_TELEFONE'
        AND f.nome = 'FORM_DIALOG_TELEFONE') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_NUMBER_TEXT_BOX_TELEFONE_RAMAL') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT') AS id_decorator,
        false AS element_required, 5 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_TELEFONE'
        AND f.nome = 'FORM_DIALOG_TELEFONE') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_SIMPLE_TEXT_AREA_TELEFONE_DESCRICAO') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        false AS element_required, 6 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_TELEFONE'
        AND f.nome = 'FORM_DIALOG_TELEFONE') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_HTML'
        AND fe.nome = 'FORM_LINHA_HORIZONTAL') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_WIDTH_100PERCENT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_WIDTH_100PERCENT_CLEAR_BOTH') AS id_decorator,
        false AS element_required, 7 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_TELEFONE'
        AND f.nome = 'FORM_DIALOG_TELEFONE') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_SUBMIT') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT_CLEAR_BOTH') AS id_decorator,
        false AS element_required, 8 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_TELEFONE'
        AND f.nome = 'FORM_DIALOG_TELEFONE') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_RESET') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT_MARGIN_RIGHT_10px') AS id_decorator,
        false AS element_required, 9 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_EMAIL'
        AND f.nome = 'FORM_DIALOG_EMAIL') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_FILTERING_SELECT_EMAIL_TIPO') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        true AS element_required, 1 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_EMAIL'
        AND f.nome = 'FORM_DIALOG_EMAIL') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_VALIDATION_TEXT_BOX_EMAIL_USUARIO') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        true AS element_required, 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_EMAIL'
        AND f.nome = 'FORM_DIALOG_EMAIL') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_SIMPLE_TEXT_AREA_EMAIL_DESCRICAO') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        false AS element_required, 3 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_EMAIL'
        AND f.nome = 'FORM_DIALOG_EMAIL') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_HTML'
        AND fe.nome = 'FORM_LINHA_HORIZONTAL') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_WIDTH_100PERCENT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_WIDTH_100PERCENT_CLEAR_BOTH') AS id_decorator,
        false AS element_required, 4 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_EMAIL'
        AND f.nome = 'FORM_DIALOG_EMAIL') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_SUBMIT') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT_CLEAR_BOTH') AS id_decorator,
        false AS element_required, 5 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_EMAIL'
        AND f.nome = 'FORM_DIALOG_EMAIL') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_RESET') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT_MARGIN_RIGHT_10px') AS id_decorator,
        false AS element_required, 6 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
        
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_WEBSITE'
        AND f.nome = 'FORM_DIALOG_WEBSITE') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_FILTERING_SELECT_WEBSITE_TIPO') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        true AS element_required, 1 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_WEBSITE'
        AND f.nome = 'FORM_DIALOG_WEBSITE') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_VALIDATION_TEXT_BOX_WEBSITE_ENDERECO') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        true AS element_required, 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_WEBSITE'
        AND f.nome = 'FORM_DIALOG_WEBSITE') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_SIMPLE_TEXT_AREA_WEBSITE_DESCRICAO') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        false AS element_required, 3 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_WEBSITE'
        AND f.nome = 'FORM_DIALOG_WEBSITE') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_HTML'
        AND fe.nome = 'FORM_LINHA_HORIZONTAL') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_WIDTH_100PERCENT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_WIDTH_100PERCENT_CLEAR_BOTH') AS id_decorator,
        false AS element_required, 4 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_WEBSITE'
        AND f.nome = 'FORM_DIALOG_WEBSITE') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_SUBMIT') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT_CLEAR_BOTH') AS id_decorator,
        false AS element_required, 5 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_WEBSITE'
        AND f.nome = 'FORM_DIALOG_WEBSITE') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_RESET') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT_MARGIN_RIGHT_10px') AS id_decorator,
        false AS element_required, 6 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_PERFIL'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_PERFIL') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_MULTI_CHECK_BOX_PERFIS_DISPONIVEIS') AS id_formulario_elemento, 
        (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        false AS element_required, 1 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO'
        AND f.nome = 'FORM_CADASTRAR_USUARIO_NAO_VALIDADO') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_VALIDATION_TEXT_BOX_NOME_USUARIO') AS id_formulario_elemento, true AS element_required, 1 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO'
        AND f.nome = 'FORM_CADASTRAR_USUARIO_NAO_VALIDADO') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_VALIDATION_TEXT_BOX_EMAIL_USUARIO') AS id_formulario_elemento, true AS element_required, 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO'
        AND f.nome = 'FORM_CADASTRAR_USUARIO_NAO_VALIDADO') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_CAPTCHA'
        AND fe.nome = 'CAPTCHA_6') AS id_formulario_elemento, true AS element_required, 3 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO'
        AND f.nome = 'FORM_CADASTRAR_USUARIO_NAO_VALIDADO') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_SUBMIT') AS id_formulario_elemento, false AS element_required, 4 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_LOGIN'
        AND f.nome = 'FORM_AUTENTICACAO_USUARIO') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_VALIDATION_TEXT_BOX_LOGIN') AS id_formulario_elemento, true AS element_required, 1 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_LOGIN'
        AND f.nome = 'FORM_AUTENTICACAO_USUARIO') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_PASSWORD_TEXT_BOX_SENHA') AS id_formulario_elemento, true AS element_required, 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_LOGIN'
        AND f.nome = 'FORM_AUTENTICACAO_USUARIO') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_CHECKBOX_LOGIN_MANTER_LOGADO') AS id_formulario_elemento, false AS element_required, 3 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_LOGIN'
        AND f.nome = 'FORM_AUTENTICACAO_USUARIO') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_LINK_PROBLEMAS_LOGON') AS id_formulario_elemento, false AS element_required, 4 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_LOGIN'
        AND f.nome = 'FORM_AUTENTICACAO_USUARIO') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_LINK_NOVO_USUARIO') AS id_formulario_elemento, false AS element_required, 5 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_LOGIN'
        AND f.nome = 'FORM_AUTENTICACAO_USUARIO') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_HTML'
        AND fe.nome = 'FORM_LINHA_HORIZONTAL') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_WIDTH_100PERCENT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_WIDTH_100PERCENT_CLEAR_BOTH') AS id_decorator,
        false AS element_required, 6 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_LOGIN'
        AND f.nome = 'FORM_AUTENTICACAO_USUARIO') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_SUBMIT') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT_CLEAR_BOTH') AS id_decorator,
        false AS element_required, 7 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_LOGIN'
        AND f.nome = 'FORM_AUTENTICACAO_USUARIO') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_RESET') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT_MARGIN_RIGHT_10px') AS id_decorator,
        false AS element_required, 8 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_LOGIN'
        AND f.nome = 'FORM_AUTENTICACAO_USUARIO') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_HIDDEN'
        AND fe.nome = 'FORM_FIELD_HIDDEN_URLREDIRECT') AS id_formulario_elemento,
        false AS element_required, 9 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

/**
* INICIO
*  
* ABA CADASTRO DE USUARIO - DADOS PESSOAIS
*/
        
-- formulario - cadastro usuario
-- dados pessoais - pais nascimento - FilteringSelect
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, id_grupo_formulario_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_PESSOAIS') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_PAIS_NASCIMENTO_FILTERING_SELECT') AS id_formulario_elemento,
        (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        (SELECT g.id
       	FROM grupo_formulario_elemento g
       	WHERE g.nome = 'DADOS_USUARIO_DADOS_PESSOAIS_DADOS_NASCIMENTO') AS id_grupo_formulario_elemento,
        false AS element_required, 1 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
-------------

-- formulario - cadastro usuario
-- dados pessoais - uf nascimento - FilteringSelect
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, id_grupo_formulario_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_PESSOAIS') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_UF_NASCIMENTO_FILTERING_SELECT') AS id_formulario_elemento, 
        (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        (SELECT g.id
       	FROM grupo_formulario_elemento g
       	WHERE g.nome = 'DADOS_USUARIO_DADOS_PESSOAIS_DADOS_NASCIMENTO') AS id_grupo_formulario_elemento,
        false AS element_required, 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
-------------
        
-- formulario - cadastro usuario
-- dados pessoais - uf nascimento - ValidationTextBox
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, id_grupo_formulario_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_PESSOAIS') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_UF_NASCIMENTO_VALIDATION_TEXT_BOX') AS id_formulario_elemento, 
        (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        (SELECT g.id
       	FROM grupo_formulario_elemento g
       	WHERE g.nome = 'DADOS_USUARIO_DADOS_PESSOAIS_DADOS_NASCIMENTO') AS id_grupo_formulario_elemento,
        false AS element_required, 3 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
-------------        

-- formulario - cadastro usuario
-- dados pessoais - municipio nascimento - FilteringSelect
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, id_grupo_formulario_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_PESSOAIS') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_MUNICIPIO_NASCIMENTO_FILTERING_SELECT') AS id_formulario_elemento,
        (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        (SELECT g.id
       	FROM grupo_formulario_elemento g
       	WHERE g.nome = 'DADOS_USUARIO_DADOS_PESSOAIS_DADOS_NASCIMENTO') AS id_grupo_formulario_elemento,
        false AS element_required, 4 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
-------------
 
-- formulario - cadastro usuario
-- dados pessoais - municipio nascimento - ValidationTextBox
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, id_grupo_formulario_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_PESSOAIS') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_MUNICIPIO_NASCIMENTO_VALIDATION_TEXT_BOX') AS id_formulario_elemento,
        (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        (SELECT g.id
       	FROM grupo_formulario_elemento g
       	WHERE g.nome = 'DADOS_USUARIO_DADOS_PESSOAIS_DADOS_NASCIMENTO') AS id_grupo_formulario_elemento,
        false AS element_required, 5 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
------------- 

-- formulario - cadastro usuario
-- dados pessoais - nome pai - ValidationTextBox
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, id_grupo_formulario_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_PESSOAIS') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_NOME_PAI_VALIDATION_TEXT_BOX') AS id_formulario_elemento,
        (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT') AS id_decorator,
        (SELECT g.id
       	FROM grupo_formulario_elemento g
       	WHERE g.nome = 'DADOS_USUARIO_DADOS_PESSOAIS_FILIACAO') AS id_grupo_formulario_elemento,
        false AS element_required, 6 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
-------------
        
-- formulario - cadastro usuario
-- dados pessoais - nome mae - ValidationTextBox
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, id_grupo_formulario_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_PESSOAIS') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_NOME_MAE_VALIDATION_TEXT_BOX') AS id_formulario_elemento,
        (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        (SELECT g.id
       	FROM grupo_formulario_elemento g
       	WHERE g.nome = 'DADOS_USUARIO_DADOS_PESSOAIS_FILIACAO') AS id_grupo_formulario_elemento,
        false AS element_required, 7 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
-------------
        
-- formulario - cadastro usuario
-- dados pessoais - documentos pessoais - button (botão para abrir o container com os documentos pessoais)
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, id_grupo_formulario_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_PESSOAIS') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND fe.nome = 'FORM_BUTTON_DIALOG_DOJO') AS id_formulario_elemento,
        (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT') AS id_decorator,
        (SELECT g.id
       	FROM grupo_formulario_elemento g
       	WHERE g.nome = 'DADOS_USUARIO_DADOS_PESSOAIS_DOCUMENTOS_PESSOAIS') AS id_grupo_formulario_elemento,
        false AS element_required, 8 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
-------------

-- formulario - cadastro usuario
-- dados pessoais - documentos pessoais - linha horizontal no dialog container de documentos pessoais 
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_PESSOAIS_DOCUMENTOS_PESSOAIS'
        AND f.nome = 'FORM_DIALOG_DOCUMENTOS_PESSOAIS') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_HTML'
        AND fe.nome = 'FORM_LINHA_HORIZONTAL') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_WIDTH_100PERCENT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_WIDTH_100PERCENT_CLEAR_BOTH') AS id_decorator,
        false AS element_required, 1 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
-------------

-- formulario - cadastro usuario
-- dados pessoais - documentos pessoais - novo documento de identificacao - button (botão para abrir o dialog de cadastro de documento de identificação no container de documentos pessoais)
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_PESSOAIS_DOCUMENTOS_PESSOAIS'
        AND f.nome = 'FORM_DIALOG_DOCUMENTOS_PESSOAIS') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND fe.nome = 'FORM_BUTTON_DIALOG_DOJO') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT_CLEAR_BOTH') AS id_decorator,
        false AS element_required, 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
-------------

-- formulario - cadastro usuario
-- dados pessoais - documentos pessoais - fechar documentos pessoais - button (botão para fechar o container de documentos pessoais)
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_PESSOAIS_DOCUMENTOS_PESSOAIS'
        AND f.nome = 'FORM_DIALOG_DOCUMENTOS_PESSOAIS') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_CLOSE_DIALOG') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT') AS id_decorator,
        false AS element_required, 3 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
-------------

-- formulario - cadastro usuario
-- dados pessoais - telefones pessoais - button (botão para abrir o container com os telefones pessoais)
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, id_grupo_formulario_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_PESSOAIS') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND fe.nome = 'FORM_BUTTON_DIALOG_DOJO') AS id_formulario_elemento,
        (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT') AS id_decorator,
        (SELECT g.id
       	FROM grupo_formulario_elemento g
       	WHERE g.nome = 'DADOS_USUARIO_DADOS_PESSOAIS_INFORMACOES_CONTATO') AS id_grupo_formulario_elemento,
       	false AS element_required, 9 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
-------------

-- formulario - cadastro usuario
-- dados pessoais - telefones pessoais - linha horizontal no dialog container de telefones pessoais 
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_PESSOAIS_TELEFONES_PESSOAIS'
        AND f.nome = 'FORM_DIALOG_TELEFONES_PESSOAIS') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_HTML'
        AND fe.nome = 'FORM_LINHA_HORIZONTAL') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_WIDTH_100PERCENT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_WIDTH_100PERCENT_CLEAR_BOTH') AS id_decorator,
        false AS element_required, 1 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
-------------

-- formulario - cadastro usuario
-- dados pessoais - telefones pessoais - novo telefone pessoal - button (botão para abrir o dialog de cadastro de telefone no container de telefones pessoais)
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_PESSOAIS_TELEFONES_PESSOAIS'
        AND f.nome = 'FORM_DIALOG_TELEFONES_PESSOAIS') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND fe.nome = 'FORM_BUTTON_DIALOG_DOJO') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT_CLEAR_BOTH') AS id_decorator,
        false AS element_required, 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
-------------

-- formulario - cadastro usuario
-- dados pessoais - telefones pessoais - fechar telefones pessoais - button (botão para fechar o container de telefones pessoais)
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_PESSOAIS_TELEFONES_PESSOAIS'
        AND f.nome = 'FORM_DIALOG_TELEFONES_PESSOAIS') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_CLOSE_DIALOG') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT') AS id_decorator,
        false AS element_required, 3 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
-------------

-- formulario - cadastro usuario
-- dados pessoais - emails pessoais - button (botão para abrir o container com os e-mails pessoais)
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, id_grupo_formulario_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_PESSOAIS') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND fe.nome = 'FORM_BUTTON_DIALOG_DOJO') AS id_formulario_elemento,
        (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        (SELECT g.id
       	FROM grupo_formulario_elemento g
       	WHERE g.nome = 'DADOS_USUARIO_DADOS_PESSOAIS_INFORMACOES_CONTATO') AS id_grupo_formulario_elemento,
       	false AS element_required, 10 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
-------------
      
-- formulario - cadastro usuario
-- dados pessoais - emails pessoais - linha horizontal no dialog container de emails pessoais 
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_PESSOAIS_EMAILS_PESSOAIS'
        AND f.nome = 'FORM_DIALOG_EMAILS_PESSOAIS') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_HTML'
        AND fe.nome = 'FORM_LINHA_HORIZONTAL') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_WIDTH_100PERCENT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_WIDTH_100PERCENT_CLEAR_BOTH') AS id_decorator,
        false AS element_required, 1 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
-------------

-- formulario - cadastro usuario
-- dados pessoais - emails pessoais - novo email pessoal - button (botão para abrir o dialog de cadastro de email no container de emails pessoais)
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_PESSOAIS_EMAILS_PESSOAIS'
        AND f.nome = 'FORM_DIALOG_EMAILS_PESSOAIS') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND fe.nome = 'FORM_BUTTON_DIALOG_DOJO') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT_CLEAR_BOTH') AS id_decorator,
        false AS element_required, 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
-------------

-- formulario - cadastro usuario
-- dados pessoais - emails pessoais - fechar emails pessoais - button (botão para fechar o container de emails pessoais)
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_PESSOAIS_EMAILS_PESSOAIS'
        AND f.nome = 'FORM_DIALOG_EMAILS_PESSOAIS') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_CLOSE_DIALOG') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT') AS id_decorator,
        false AS element_required, 3 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
-------------

-- formulario - cadastro usuario
-- dados pessoais - websites pessoais - button (botão para abrir o container com os websites pessoais)
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, id_grupo_formulario_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_PESSOAIS') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND fe.nome = 'FORM_BUTTON_DIALOG_DOJO') AS id_formulario_elemento,
        (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT') AS id_decorator,
        (SELECT g.id
       	FROM grupo_formulario_elemento g
       	WHERE g.nome = 'DADOS_USUARIO_DADOS_PESSOAIS_INFORMACOES_CONTATO') AS id_grupo_formulario_elemento,
       	false AS element_required, 11 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
-------------

-- formulario - cadastro usuario
-- dados pessoais - websites pessoais - linha horizontal no dialog container de websites pessoais 
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_PESSOAIS_WEBSITES_PESSOAIS'
        AND f.nome = 'FORM_DIALOG_WEBSITES_PESSOAIS') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_HTML'
        AND fe.nome = 'FORM_LINHA_HORIZONTAL') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_WIDTH_100PERCENT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_WIDTH_100PERCENT_CLEAR_BOTH') AS id_decorator,
        false AS element_required, 1 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
-------------

-- formulario - cadastro usuario
-- dados pessoais - websites pessoais - novo website pessoal - button (botão para abrir o dialog de cadastro de website no container de websites pessoais)
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_PESSOAIS_WEBSITES_PESSOAIS'
        AND f.nome = 'FORM_DIALOG_WEBSITES_PESSOAIS') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND fe.nome = 'FORM_BUTTON_DIALOG_DOJO') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT_CLEAR_BOTH') AS id_decorator,
        false AS element_required, 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
-------------

-- formulario - cadastro usuario
-- dados pessoais - websites pessoais - fechar werbsites pessoas - button (botão para fechar o container de websites pessoais)
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_PESSOAIS_WEBSITES_PESSOAIS'
        AND f.nome = 'FORM_DIALOG_WEBSITES_PESSOAIS') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_CLOSE_DIALOG') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT') AS id_decorator,
        false AS element_required, 3 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
-------------

-- formulario - cadastro usuario
-- dados pessoais - enderecos pessoais - button (botão para abrir o container com os enderecos pessoais)
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, id_grupo_formulario_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_PESSOAIS') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND fe.nome = 'FORM_BUTTON_DIALOG_DOJO') AS id_formulario_elemento,
        (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        (SELECT g.id
       	FROM grupo_formulario_elemento g
       	WHERE g.nome = 'DADOS_USUARIO_DADOS_PESSOAIS_INFORMACOES_CONTATO') AS id_grupo_formulario_elemento,
       	false AS element_required, 12 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
-------------
 
-- formulario - cadastro usuario
-- dados pessoais - endereços pessoais - linha horizontal no dialog container de endereços pessoais 
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_PESSOAIS_ENDERECOS_PESSOAIS'
        AND f.nome = 'FORM_DIALOG_ENDERECOS_PESSOAIS') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_HTML'
        AND fe.nome = 'FORM_LINHA_HORIZONTAL') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_WIDTH_100PERCENT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_WIDTH_100PERCENT_CLEAR_BOTH') AS id_decorator,
        false AS element_required, 1 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
-------------

-- formualrio - cadastro usuario
-- dados pessoais - endereços pessoais - novo endereco pessoal - button (botão para abrir o dialog de cadastro de endereço no container de endereços pessoais)
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_PESSOAIS_ENDERECOS_PESSOAIS'
        AND f.nome = 'FORM_DIALOG_ENDERECOS_PESSOAIS') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND fe.nome = 'FORM_BUTTON_DIALOG_DOJO') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT_CLEAR_BOTH') AS id_decorator,
        false AS element_required, 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
-------------

-- formulario - cadastro usuario
-- dados pessoais - endereços pessoais - fechar enderecos pessoais - button (botão para fechar o container de enderecos pessoais)
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_PESSOAIS_ENDERECOS_PESSOAIS'
        AND f.nome = 'FORM_DIALOG_ENDERECOS_PESSOAIS') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_CLOSE_DIALOG') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT') AS id_decorator,
        false AS element_required, 3 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
-------------

/**
* FIM - ABA CADASTRO DE USUARIO - DADOS PESSOAIS
*/


/**
* INICIO
* 
* CADASTRO DE ENDERECO
*/
-- formulario - cadastro endereco
-- tipo - combobox
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_ENDERECO'
        AND f.nome = 'FORM_DIALOG_ENDERECO') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_ENDERECO_TIPO_FILTERING_SELECT') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        true AS element_required, 1 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
-------------

-- formulario - cadastro endereco
-- pais - combobox
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_ENDERECO'
        AND f.nome = 'FORM_DIALOG_ENDERECO') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_ENDERECO_PAIS_FILTERING_SELECT') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT') AS id_decorator,
        true AS element_required, 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
-------------

--formulario - cadastro endereco
-- uf - combobox
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_ENDERECO'
        AND f.nome = 'FORM_DIALOG_ENDERECO') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_ENDERECO_UF_FILTERING_SELECT') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        true AS element_required, 3 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
-------------

-- formulario - cadastro endereco
-- uf - textbox
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_ENDERECO'
        AND f.nome = 'FORM_DIALOG_ENDERECO') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_ENDERECO_UF_VALIDATION_TEXT_BOX') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT') AS id_decorator,
        true AS element_required, 4 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
-------------
        
-- formulario - cadastro endereco
-- município - combobox
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_ENDERECO'
        AND f.nome = 'FORM_DIALOG_ENDERECO') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_ENDERECO_MUNICIPIO_FILTERING_SELECT') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        true AS element_required, 5 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
-------------

-- formulario - cadastro endereco
-- município - textbox.
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_ENDERECO'
        AND f.nome = 'FORM_DIALOG_ENDERECO') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_ENDERECO_MUNICIPIO_VALIDATION_TEXT_BOX') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT') AS id_decorator,
        true AS element_required, 6 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
-------------

-- formulario - cadastro endereco
-- cep - textbox
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_ENDERECO'
        AND f.nome = 'FORM_DIALOG_ENDERECO') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_ENDERECO_CEP_VALIDATION_TEXT_BOX') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        true AS element_required, 7 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
-------------

-- formulario - cadastro endereco
-- logradouro - textbox
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_ENDERECO'
        AND f.nome = 'FORM_DIALOG_ENDERECO') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_ENDERECO_LOGRADOURO_VALIDATION_TEXT_BOX') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT') AS id_decorator,
        true AS element_required, 8 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
-------------

-- formulario - cadastro endereco
-- numero - textbox
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_ENDERECO'
        AND f.nome = 'FORM_DIALOG_ENDERECO') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_ENDERECO_NUMERO_VALIDATION_TEXT_BOX') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        true AS element_required, 9 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
-------------        
        
-- formulario - cadastro endereco
-- complemento - textbox
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_ENDERECO'
        AND f.nome = 'FORM_DIALOG_ENDERECO') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_ENDERECO_COMPLEMENTO_VALIDATION_TEXT_BOX') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT') AS id_decorator,
        true AS element_required, 10 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
-------------

-- formulario - cadastro endereco
-- linha horizontal  (linha horizontal no dialog de cadastro de endereço) 
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_ENDERECO'
        AND f.nome = 'FORM_DIALOG_ENDERECO') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_HTML'
        AND fe.nome = 'FORM_LINHA_HORIZONTAL') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_WIDTH_100PERCENT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_WIDTH_100PERCENT_CLEAR_BOTH') AS id_decorator,
        false AS element_required, 11 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
-------------

-- formulario - cadastro endereco
-- button submit (button submit do cadastro de endereço)
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_ENDERECO'
        AND f.nome = 'FORM_DIALOG_ENDERECO') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_SUBMIT') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT_CLEAR_BOTH') AS id_decorator,
        false AS element_required, 12 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
-------------
        
-- formulario - cadastro endereco
-- button reset (button reset do cadastro de endereco)
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_ENDERECO'
        AND f.nome = 'FORM_DIALOG_ENDERECO') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_RESET') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT_MARGIN_RIGHT_10px') AS id_decorator,
        false AS element_required, 13 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
-------------
        
/**
* FIM - CADASTRO DE ENDERECO
*/
        
        
/*
* INICIO
* 
* CADASTRO INFORMACOES BANCARIAS
*/
-- formulario - cadastro usuario
-- aba informacoes bancarias - subaba dados bancarios - button (botão para abrir o container com as contas bancarias)
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_INFORMACOES_BANCARIAS_DADOS_BANCARIOS') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND fe.nome = 'FORM_BUTTON_DIALOG_DOJO') AS id_formulario_elemento,
        (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT') AS id_decorator,
       	false AS element_required, 1 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
-------------


-- formulario - cadastro usuario
-- informacoes bancarias - dados bancarios - linha horizontal no dialog container de contas bancarias 
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_INFORMACOES_BANCARIAS_DADOS_BANCARIOS_CONTAS_BANCARIAS'
        AND f.nome = 'FORM_DIALOG_CONTAS_BANCARIAS') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_HTML'
        AND fe.nome = 'FORM_LINHA_HORIZONTAL') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_WIDTH_100PERCENT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_WIDTH_100PERCENT_CLEAR_BOTH') AS id_decorator,
        false AS element_required, 1 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
-------------

-- formualrio - cadastro usuario
-- informacoes bancarias - dados bancarios - nova conta bancaria - button (botão para abrir o dialog de cadastro de conta bancaria no container de contas bancarias)
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_INFORMACOES_BANCARIAS_DADOS_BANCARIOS_CONTAS_BANCARIAS'
        AND f.nome = 'FORM_DIALOG_CONTAS_BANCARIAS') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND fe.nome = 'FORM_BUTTON_DIALOG_DOJO') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT_CLEAR_BOTH') AS id_decorator,
        false AS element_required, 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
-------------

-- formulario - cadastro usuario
-- informacoes bancarias - dados bancarios - fechar contas bancarias - button (botão para fechar o container de contas bancarias)
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_INFORMACOES_BANCARIAS_DADOS_BANCARIOS_CONTAS_BANCARIAS'
        AND f.nome = 'FORM_DIALOG_CONTAS_BANCARIAS') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_CLOSE_DIALOG') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT') AS id_decorator,
        false AS element_required, 3 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
-------------
 
        
/*
 * FIM - CADASTRO INFORMACOES BANCARIAS 
*/

        
/**
* INICIO
* 
* CADASTRO DE CONTA BANCARIA
*/
        
-- formulario - cadastro conta bancaria
-- numero banco - textbox
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_CONTA_BANCARIA'
        AND f.nome = 'FORM_DIALOG_CONTA_BANCARIA') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_CONTA_BANCARIA_NUMERO_BANCO_VALIDATION_TEXT_BOX') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT') AS id_decorator,
        true AS element_required, 1 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
-------------
        
-- formulario - cadastro conta bancaria
-- banco - combobox
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_CONTA_BANCARIA'
        AND f.nome = 'FORM_DIALOG_CONTA_BANCARIA') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_CONTA_BANCARIA_BANCO_FILTERING_SELECT') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT') AS id_decorator,
        true AS element_required, 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
-------------

-- formulario - cadastro conta bancaria
-- agencia - textbox
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_CONTA_BANCARIA'
        AND f.nome = 'FORM_DIALOG_CONTA_BANCARIA') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_CONTA_BANCARIA_AGENCIA_VALIDATION_TEXT_BOX') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        true AS element_required, 3 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
-------------

-- formulario - cadastro conta bancaria
-- tipo conta - combobox
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_CONTA_BANCARIA'
        AND f.nome = 'FORM_DIALOG_CONTA_BANCARIA') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_CONTA_BANCARIA_TIPO_CONTA_FILTERING_SELECT') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT') AS id_decorator,
        true AS element_required, 4 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
-------------

-- formulario - cadastro conta bancaria
-- numero conta - textbox
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_CONTA_BANCARIA'
        AND f.nome = 'FORM_DIALOG_CONTA_BANCARIA') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_CONTA_BANCARIA_NUMERO_CONTA_VALIDATION_TEXT_BOX') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        true AS element_required, 5 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
-------------

-- formulario - cadastro conta bancaria
-- descricao identificacao - textbox
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_CONTA_BANCARIA'
        AND f.nome = 'FORM_DIALOG_CONTA_BANCARIA') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_CONTA_BANCARIA_DESCRICAO_IDENTIFICACAO_CONTA_VALIDATION_TEXT_BOX') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT') AS id_decorator,
        true AS element_required, 6 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
-------------
  
-- formulario - cadastro conta bancaria
-- linha horizontal  (linha horizontal no dialog de cadastro de endereço) 
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_CONTA_BANCARIA'
        AND f.nome = 'FORM_DIALOG_CONTA_BANCARIA') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_HTML'
        AND fe.nome = 'FORM_LINHA_HORIZONTAL') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_WIDTH_100PERCENT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_WIDTH_100PERCENT_CLEAR_BOTH') AS id_decorator,
        false AS element_required, 11 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
-------------        
      
-- formulario - cadastro conta bancaria
-- button submit (button submit do cadastro de conta bancaria)
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_CONTA_BANCARIA'
        AND f.nome = 'FORM_DIALOG_CONTA_BANCARIA') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_SUBMIT') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT_CLEAR_BOTH') AS id_decorator,
        false AS element_required, 12 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
-------------
 
-- formulario - cadastro endereco
-- button reset (button reset do cadastro de endereco)
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_CONTA_BANCARIA'
        AND f.nome = 'FORM_DIALOG_CONTA_BANCARIA') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_RESET') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT_MARGIN_RIGHT_10px') AS id_decorator,
        false AS element_required, 13 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
-------------
/**
* FIM - CADASTRO DE CONTA BANCARIA
*/