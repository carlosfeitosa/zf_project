/*
* SCRIPT DE POPULACAO DAS TABELAS
* 
* versao: 1.0 (POSTGRESQL 8.4.1)
* por: ADRIANO DUPRAT LEMOS (adriano.lemos@rochedoproject.com)
* criacao: 21/10/2010
* ultimas modificacoes:
* 								22/10/2010 - criacao de formularios elementos para o formulario FORM_DIALOG_VINCULO_PROFISSIONAL;
* 
*/

/* FORMULARIO X FORMULARIO ELEMENTO */

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, element_required, ordem, rowinfo)
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
        AND fe.nome = 'FIELD_NOME_USUARIO') AS id_formulario_elemento, true AS element_required, 1 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
        
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, element_required, ordem, rowinfo)
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
        AND fe.nome = 'FORM_BUTTON_SUBMIT') AS id_formulario_elemento, true AS element_required, 1 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, element_required, ordem, rowinfo)
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
        AND fe.nome = 'FORM_FIELD_DATA_NASCIMENTO') AS id_formulario_elemento, true AS element_required, 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;


INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, element_required, ordem, rowinfo)
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
        AND fe.nome = 'FORM_FIELD_SEXO') AS id_formulario_elemento, true AS element_required, 3 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
        
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, element_required, ordem, rowinfo)
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
        AND fe.nome = 'FORM_FIELD_LOGIN') AS id_formulario_elemento, true AS element_required, 4 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;        


INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, element_required, ordem, rowinfo)
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
        AND fe.nome = 'FORM_FIELD_SENHA') AS id_formulario_elemento, true AS element_required, 5 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;


INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, element_required, ordem, rowinfo)
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
        AND fe.nome = 'FORM_FIELD_SENHA_CONFIRMACAO') AS id_formulario_elemento, true AS element_required, 6 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
/*        
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, element_required, ordem, rowinfo)
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
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND fe.nome = 'FORM_BUTTON_DIALOG_DOJO') AS id_formulario_elemento, false AS element_required, 7 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
*/
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_ACADEMICOS') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FIELD_CATEGORIA_BOLSA_CNPQ') AS id_formulario_elemento, true AS element_required, 1 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_ACADEMICOS') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND fe.nome = 'FORM_BUTTON_DIALOG_DOJO') AS id_formulario_elemento, false AS element_required, 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
        
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO'
        AND f.nome = 'FORM_DIALOG_MAIOR_TITULACAO') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FIELD_MAIOR_TITULACAO') AS id_formulario_elemento, true AS element_required, 1 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
        
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO'
        AND f.nome = 'FORM_DIALOG_MAIOR_TITULACAO') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FIELD_INSTITUICAO_QUE_CONCEDEU') AS id_formulario_elemento, true AS element_required, 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO'
        AND f.nome = 'FORM_DIALOG_MAIOR_TITULACAO') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FIELD_AREA_DE_CONHECIMENTO') AS id_formulario_elemento, true AS element_required, 3 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;        
        
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
	    FROM formulario f
	    LEFT JOIN categoria c ON (f.id_categoria = c.id)
	    LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
	    WHERE t.nome = 'FORMULARIO'
	    AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO'
	    AND f.nome = 'FORM_DIALOG_MAIOR_TITULACAO') AS id_formulario,
	   (SELECT fe.id
	    FROM formulario_elemento fe
	    LEFT JOIN categoria c ON (fe.id_categoria = c.id)
	    LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
	    WHERE t.nome = 'FORMULARIO'
	    AND c.nome = 'FORMULARIO_ELEMENTO'
	    AND fe.nome = 'FORM_FIELD_NOME_CURSO') AS id_formulario_elemento, true AS element_required, 4 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;         

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_PROFISSIONAIS') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND fe.nome = 'FORM_BUTTON_DIALOG_DOJO') AS id_formulario_elemento, false AS element_required, 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

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
        AND fe.nome = 'FORM_FIELD_VINCULO_PROFISSIONAL') AS id_formulario_elemento,
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
        AND fe.nome = 'FORM_FIELD_PROFISSAO') AS id_formulario_elemento,
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
        AND fe.nome = 'FORM_FIELD_PJ_VINCULO') AS id_formulario_elemento,
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
        AND fe.nome = 'FORM_FIELD_REGIME_TRABALHO') AS id_formulario_elemento,
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
        AND fe.nome = 'FORM_FIELD_CARGO') AS id_formulario_elemento,
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
        AND fe.nome = 'FORM_FIELD_FUNCAO') AS id_formulario_elemento,
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
        AND fe.nome = 'FORM_FIELD_ATIVIDADES_DESENVOLVIDAS') AS id_formulario_elemento,
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
        AND fe.nome = 'FORM_FIELD_DATA_ADMISSAO') AS id_formulario_elemento,
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
        AND fe.nome = 'FORM_FIELD_DATA_DESVINCULACAO') AS id_formulario_elemento, 
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
        AND fe.nome = 'FORM_FIELD_CARGA_HORARIA_SEMANAL') AS id_formulario_elemento, 
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
        AND fe.nome = 'FORM_FIELD_SALARIO_BRUTO') AS id_formulario_elemento, 
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
        AND fe.nome = 'FORM_FIELD_DEDICACAO_EXCLUSIVA') AS id_formulario_elemento, 
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
        AND fe.nome = 'FORM_FIELD_OUTRAS_INFORMACOES') AS id_formulario_elemento, 
        (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        false AS element_required, 13 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

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
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND fe.nome = 'FORM_BUTTON_DIALOG_DOJO') AS id_formulario_elemento,
        (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        false AS element_required, 14 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

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
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND fe.nome = 'FORM_BUTTON_DIALOG_DOJO') AS id_formulario_elemento,
        (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT') AS id_decorator,
        false AS element_required, 15 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

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
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND fe.nome = 'FORM_BUTTON_DIALOG_DOJO') AS id_formulario_elemento,
        (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT') AS id_decorator,
        false AS element_required, 16 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

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
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND fe.nome = 'FORM_BUTTON_DIALOG_DOJO') AS id_formulario_elemento,
        (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
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
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_SUBMIT') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH_MARGIN_RIGHT_10PX') AS id_decorator,
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
        AND fe.nome = 'FORM_BUTTON_RESET') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT') AS id_decorator,
        false AS element_required, 19 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, element_required, ordem, rowinfo)
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
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND fe.nome = 'FORM_FIELD_DIV_CLEAR_BOTH') AS id_formulario_elemento,
        false AS element_required, 20 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL_TELEFONES_COMERCIAIS'
        AND f.nome = 'FORM_DIALOG_TELEFONES_COMERCIAIS') AS id_formulario,
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
        false AS element_required, 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL_EMAILS_COMERCIAIS'
        AND f.nome = 'FORM_DIALOG_EMAILS_COMERCIAIS') AS id_formulario,
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
        false AS element_required, 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL_WEBSITES_COMERCIAIS'
        AND f.nome = 'FORM_DIALOG_WEBSITES_COMERCIAIS') AS id_formulario,
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
        false AS element_required, 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL_ENDERECOS_COMERCIAIS'
        AND f.nome = 'FORM_DIALOG_ENDERECOS_COMERCIAIS') AS id_formulario,
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
        false AS element_required, 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

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
        AND fe.nome = 'FORM_FIELD_TELEFONE_CODIGO_PAIS') AS id_formulario_elemento,
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
        AND fe.nome = 'FORM_FIELD_TELEFONE_CODIGO_AREA') AS id_formulario_elemento,
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
        AND fe.nome = 'FORM_FIELD_TELEFONE') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH_MARGIN_RIGHT_10PX') AS id_decorator,
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
        AND fe.nome = 'FORM_FIELD_TELEFONE_RAMAL') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT') AS id_decorator,
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
        AND fe.nome = 'FORM_FIELD_TELEFONE_DESCRICAO') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
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
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_SUBMIT') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH_MARGIN_RIGHT_10PX') AS id_decorator,
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
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_RESET') AS id_formulario_elemento,
       (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT') AS id_decorator,
        false AS element_required, 7 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, element_required, ordem, rowinfo)
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
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND fe.nome = 'FORM_FIELD_DIV_CLEAR_BOTH') AS id_formulario_elemento,
        false AS element_required, 8 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

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
        AND fe.nome = 'FIELD_NOME_USUARIO') AS id_formulario_elemento, true AS element_required, 1 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

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
        AND fe.nome = 'FIELD_EMAIL_USUARIO') AS id_formulario_elemento, true AS element_required, 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

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
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO'
        AND f.nome = 'FORM_CADASTRAR_USUARIO_NAO_VALIDADO') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_HASH'
        AND fe.nome = 'FORM_HASH') AS id_formulario_elemento, true AS element_required, 5 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;