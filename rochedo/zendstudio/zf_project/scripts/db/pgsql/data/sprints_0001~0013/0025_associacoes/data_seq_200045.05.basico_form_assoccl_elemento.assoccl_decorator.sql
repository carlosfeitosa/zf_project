/**
* SCRIPT DE POPULACAO DA TABELA basico_form_assoccl_elemento.assoccl_decorator
* 
* Esta tabela associa um elemento de um formulario (basico_formulario.assoccl_elemento) a um ou mais decorators (basico_formulario.decorator).
* 
* versao: 1.0 (POSTGRESQL 9.1.1)
* por: JOÃO VASCONCELOS (joao.vasconcelos@rochedoframework.com)
* criacao: 08/02/2012
* ultimas modificacoes:  
* 						
*/

INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_ADMIN_RASCUNHOS'
        AND e.nome = 'FORM_FIELD_FILTERING_SELECT_FORMULARIO'
        AND fcle.ordem = 1) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_ADMIN_RASCUNHOS'
        AND e.nome = 'FORM_FIELD_FILTERING_SELECT_TIPO_DATA'
        AND fcle.ordem = 2) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_ADMIN_RASCUNHOS'
        AND e.nome = 'FORM_FIELD_DATE_TEXT_BOX_DATA_INICIO_PERIODO'
        AND fcle.ordem = 3) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_ADMIN_RASCUNHOS'
        AND e.nome = 'FORM_FIELD_DATE_TEXT_BOX_DATA_TERMINO_PERIODO'
        AND fcle.ordem = 4) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_ADMIN_RASCUNHOS'
        AND e.nome = 'FORM_FIELD_HTML_CONTENT_DINAMICO'
        AND fcle.ordem = 5) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_ADMIN_RASCUNHOS'
        AND e.nome = 'FORM_FIELD_HTML_CONTENT_DINAMICO'
        AND fcle.ordem = 6) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_ADMIN_RASCUNHOS'
        AND e.nome = 'FORM_BUTTON'
        AND fcle.ordem = 7) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_ADMIN_RASCUNHOS'
        AND e.nome = 'FORM_BUTTON'
        AND fcle.ordem = 8) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_ADMIN_RASCUNHOS'
        AND e.nome = 'FORM_BUTTON'
        AND fcle.ordem = 9) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_ADMIN_RASCUNHOS'
        AND e.nome = 'FORM_BUTTON'
        AND fcle.ordem = 10) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_ACEITE_TERMOS_USO'
        AND e.nome = 'FORM_FIELD_SIMPLE_TEXT_AREA_TERMOS_USO'
        AND fcle.ordem = 1) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_ACEITE_TERMOS_USO'
        AND e.nome = 'FORM_FIELD_HTML_LINKS'
        AND fcle.ordem = 2) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_ACEITE_TERMOS_USO'
        AND e.nome = 'FORM_FIELD_VALIDATION_TEXT_BOX_ACEITE_TERMOS_USO'
        AND fcle.ordem = 3) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_ACEITE_TERMOS_USO'
        AND e.nome = 'FORM_BUTTON_SUBMIT'
        AND fcle.ordem = 4) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_ACEITE_TERMOS_USO'
        AND e.nome = 'FORM_BUTTON_CANCELAR'
        AND fcle.ordem = 5) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_TROCA_DE_SENHA'
        AND e.nome = 'FORM_FIELD_PASSWORD_TEXT_BOX_SENHA_ATUAL'
        AND fcle.ordem = 1) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_TROCA_DE_SENHA'
        AND e.nome = 'FORM_FIELD_PASSWORD_TEXT_BOX_NOVA_SENHA'
        AND fcle.ordem = 2) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_TROCA_DE_SENHA'
        AND e.nome = 'FORM_FIELD_HTML_PASSWORD_STRENGTH_CHECKER'
        AND fcle.ordem = 3) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_TROCA_DE_SENHA'
        AND e.nome = 'FORM_FIELD_PASSWORD_TEXT_BOX_CONFIRMACAO_NOVA_SENHA'
        AND fcle.ordem = 4) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_TROCA_DE_SENHA'
        AND e.nome = 'FORM_BUTTON_SUBMIT'
        AND fcle.ordem = 5) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_SUGESTAO_LOGIN'
        AND e.nome = 'FORM_FIELD_RADIO_BUTTON_SUGESTAO_LOGIN'
        AND fcle.ordem = 1) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_SUGESTAO_LOGIN'
        AND e.nome = 'FORM_LINHA_HORIZONTAL'
        AND fcle.ordem = 2) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_WIDTH_100PERCENT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_WIDTH_100PERCENT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_SUGESTAO_LOGIN'
        AND e.nome = 'FORM_BUTTON'
        AND fcle.ordem = 3) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_SUGESTAO_LOGIN'
        AND e.nome = 'FORM_BUTTON_CLOSE_DIALOG'
        AND fcle.ordem = 4) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_ACADEMICOS'
        AND e.nome = 'FORM_FIELD_FILTERING_SELECT_MAIOR_TITULACAO'
        AND fcle.ordem = 2) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_ACADEMICOS'
        AND e.nome = 'FORM_FIELD_FILTERING_SELECT_INSTITUICAO_QUE_CONCEDEU'
        AND fcle.ordem = 3) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_ACADEMICOS'
        AND e.nome = 'FORM_FIELD_FILTERING_SELECT_AREA_DE_CONHECIMENTO'
        AND fcle.ordem = 4) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_ACADEMICOS'
        AND e.nome = 'FORM_FIELD_VALIDATION_TEXT_BOX_NOME_CURSO'
        AND fcle.ordem = 5) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_ACADEMICOS'
        AND e.nome = 'FORM_FIELD_DATE_TEXT_BOX_DATA_OBTENCAO'
        AND fcle.ordem = 6) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_ACADEMICOS'
        AND e.nome = 'FORM_FIELD_FILTERING_SELECT_TITULACAO_ESPERADA'
        AND fcle.ordem = 7) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_ACADEMICOS'
        AND e.nome = 'FORM_FIELD_FILTERING_SELECT_INSTITUICAO_CURSO_ATUAL'
        AND fcle.ordem = 8) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_ACADEMICOS'
        AND e.nome = 'FORM_FIELD_FILTERING_SELECT_AREA_CONHECIMENTO_CURSO_ATUAL'
        AND fcle.ordem = 9) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_ACADEMICOS'
        AND e.nome = 'FORM_FIELD_VALIDATION_TEXT_BOX_NOME_CURSO_ATUAL'
        AND fcle.ordem = 10) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_ACADEMICOS'
        AND e.nome = 'FORM_FIELD_FILTERING_SELECT_PERIODO'
        AND fcle.ordem = 11) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_ACADEMICOS'
        AND e.nome = 'FORM_FIELD_FILTERING_SELECT_TURNO'
        AND fcle.ordem = 12) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_COORDENACAO_POS_GRADUACAO'
        AND e.nome = 'FORM_LINHA_HORIZONTAL'
        AND fcle.ordem = 1) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_WIDTH_100PERCENT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_WIDTH_100PERCENT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_ORIENTACOES'
        AND e.nome = 'FORM_LINHA_HORIZONTAL'
        AND fcle.ordem = 1) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_WIDTH_100PERCENT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_WIDTH_100PERCENT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_ORIENTACOES'
        AND e.nome = 'FORM_BUTTON_CLOSE_DIALOG'
        AND fcle.ordem = 2) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_WIDTH_100PERCENT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_WIDTH_100PERCENT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_BIOMETRICOS'
        AND e.nome = 'FORM_FIELD_RADIO_BUTTON_SEXO'
        AND fcle.ordem = 1) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_BIOMETRICOS'
        AND e.nome = 'FORM_FIELD_FILTERING_SELECT_RACA'
        AND fcle.ordem = 2) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_BIOMETRICOS'
        AND e.nome = 'FORM_FIELD_NUMBER_TEXT_BOX_ALTURA'
        AND fcle.ordem = 3) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_BIOMETRICOS'
        AND e.nome = 'FORM_FIELD_NUMBER_TEXT_BOX_PESO'
        AND fcle.ordem = 4) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_BIOMETRICOS'
        AND e.nome = 'FORM_FIELD_FILTERING_SELECT_TIPO_SANGUINEO'
        AND fcle.ordem = 5) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_BIOMETRICOS'
        AND e.nome = 'FORM_FIELD_SIMPLE_TEXT_AREA_HISTORICO_MEDICO'
        AND fcle.ordem = 6) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_BIOMETRICOS'
        AND e.nome = 'FORM_BUTTON_SUBMIT'
        AND fcle.ordem = 7) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'SUBFORM_DADOS_USUARIO_CONTA'
        AND e.nome = 'FORM_FIELD_FILTERING_SELECT_PERFIS_VINCULADOS_DISPONIVEIS'
        AND fcle.ordem = 1) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'SUBFORM_DADOS_USUARIO_CONTA'
        AND e.nome = 'FORM_FIELD_PASSWORD_TEXT_BOX_SENHA_ATUAL'
        AND fcle.ordem = 2) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'SUBFORM_DADOS_USUARIO_CONTA'
        AND e.nome = 'FORM_FIELD_PASSWORD_TEXT_BOX_NOVA_SENHA'
        AND fcle.ordem = 3) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'SUBFORM_DADOS_USUARIO_CONTA'
        AND e.nome = 'FORM_FIELD_HTML_PASSWORD_STRENGTH_CHECKER'
        AND fcle.ordem = 4) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'SUBFORM_DADOS_USUARIO_CONTA'
        AND e.nome = 'FORM_FIELD_PASSWORD_TEXT_BOX_CONFIRMACAO_NOVA_SENHA'
        AND fcle.ordem = 5) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'SUBFORM_DADOS_USUARIO_CONTA'
        AND e.nome = 'FORM_BUTTON_SUBMIT'
        AND fcle.ordem = 7) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL'
        AND e.nome = 'FORM_FIELD_FILTERING_SELECT_VINCULO_PROFISSIONAL'
        AND fcle.ordem = 1) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_MARGIN_RIGHT_10PX') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL'
        AND e.nome = 'FORM_FIELD_FILTERING_SELECT_PROFISSAO'
        AND fcle.ordem = 2) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL'
        AND e.nome = 'FORM_FIELD_FILTERING_SELECT_PJ_VINCULO'
        AND fcle.ordem = 3) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH_MARGIN_RIGHT_10PX') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL'
        AND e.nome = 'FORM_FIELD_FILTERING_SELECT_REGIME_TRABALHO'
        AND fcle.ordem = 4) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL'
        AND e.nome = 'FORM_FIELD_VALIDATION_TEXT_BOX_CARGO'
        AND fcle.ordem = 5) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH_MARGIN_RIGHT_10PX') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL'
        AND e.nome = 'FORM_FIELD_VALIDATION_TEXT_BOX_FUNCAO'
        AND fcle.ordem = 6) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL'
        AND e.nome = 'FORM_FIELD_SIMPLE_TEXT_AREA_ATIVIDADES_DESENVOLVIDAS'
        AND fcle.ordem = 7) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL'
        AND e.nome = 'FORM_FIELD_DATE_TEXT_BOX_DATA_ADMISSAO'
        AND fcle.ordem = 8) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH_MARGIN_RIGHT_10PX') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL'
        AND e.nome = 'FORM_FIELD_DATE_TEXT_BOX_DATA_DESVINCULACAO'
        AND fcle.ordem = 9) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_MARGIN_RIGHT_10PX') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL'
        AND e.nome = 'FORM_FIELD_NUMBER_TEXT_BOX_CARGA_HORARIA_SEMANAL'
        AND fcle.ordem = 10) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL'
        AND e.nome = 'FORM_FIELD_CURRENCY_TEXT_BOX_SALARIO_BRUTO'
        AND fcle.ordem = 11) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH_MARGIN_RIGHT_10PX') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL'
        AND e.nome = 'FORM_FIELD_CHECK_BOX_DEDICACAO_EXCLUSIVA'
        AND fcle.ordem = 12) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL'
        AND e.nome = 'FORM_FIELD_SIMPLE_TEXT_AREA_OUTRAS_INFORMACOES'
        AND fcle.ordem = 13) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL'
        AND e.nome = 'FORM_BUTTON_DIALOG_DOJO'
        AND fcle.ordem = 14) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL'
        AND e.nome = 'FORM_BUTTON_DIALOG_DOJO'
        AND fcle.ordem = 15) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL'
        AND e.nome = 'FORM_BUTTON_DIALOG_DOJO'
        AND fcle.ordem = 16) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL'
        AND e.nome = 'FORM_BUTTON_DIALOG_DOJO'
        AND fcle.ordem = 17) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL'
        AND e.nome = 'FORM_LINHA_HORIZONTAL'
        AND fcle.ordem = 18) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_WIDTH_100PERCENT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_WIDTH_100PERCENT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL'
        AND e.nome = 'FORM_BUTTON_SUBMIT'
        AND fcle.ordem = 19) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL'
        AND e.nome = 'FORM_BUTTON_RESET'
        AND fcle.ordem = 20) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT_MARGIN_RIGHT_10px') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_TELEFONES_PROFISSIONAIS'
        AND e.nome = 'FORM_LINHA_HORIZONTAL'
        AND fcle.ordem = 2) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_WIDTH_100PERCENT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_WIDTH_100PERCENT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_TELEFONES_PROFISSIONAIS'
        AND e.nome = 'FORM_BUTTON_DIALOG_DOJO'
        AND fcle.ordem = 3) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_TELEFONES_PROFISSIONAIS'
        AND e.nome = 'FORM_BUTTON_CLOSE_DIALOG'
        AND fcle.ordem = 4) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_EMAILS_PROFISSIONAIS'
        AND e.nome = 'FORM_LINHA_HORIZONTAL'
        AND fcle.ordem = 2) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_WIDTH_100PERCENT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_WIDTH_100PERCENT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_EMAILS_PROFISSIONAIS'
        AND e.nome = 'FORM_BUTTON_DIALOG_DOJO'
        AND fcle.ordem = 3) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_EMAILS_PROFISSIONAIS'
        AND e.nome = 'FORM_BUTTON_CLOSE_DIALOG'
        AND fcle.ordem = 4) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_WEBSITES_PROFISSIONAIS'
        AND e.nome = 'FORM_LINHA_HORIZONTAL'
        AND fcle.ordem = 2) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_WIDTH_100PERCENT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_WIDTH_100PERCENT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_WEBSITES_PROFISSIONAIS'
        AND e.nome = 'FORM_BUTTON_CLOSE_DIALOG'
        AND fcle.ordem = 3) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_WEBSITES_PROFISSIONAIS'
        AND e.nome = 'FORM_BUTTON_DIALOG_DOJO'
        AND fcle.ordem = 4) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_ENDERECOS_PROFISSIONAIS'
        AND e.nome = 'FORM_LINHA_HORIZONTAL'
        AND fcle.ordem = 2) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_WIDTH_100PERCENT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_WIDTH_100PERCENT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_ENDERECOS_PROFISSIONAIS'
        AND e.nome = 'FORM_BUTTON_CLOSE_DIALOG'
        AND fcle.ordem = 3) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_ENDERECOS_PROFISSIONAIS'
        AND e.nome = 'FORM_BUTTON_DIALOG_DOJO'
        AND fcle.ordem = 4) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_TELEFONE'
        AND e.nome = 'FORM_FIELD_FILTERING_SELECT_TELEFONE_TIPO'
        AND fcle.ordem = 1) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_TELEFONE'
        AND e.nome = 'FORM_FIELD_NUMBER_TEXT_BOX_TELEFONE_CODIGO_PAIS'
        AND fcle.ordem = 2) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_TELEFONE'
        AND e.nome = 'FORM_FIELD_NUMBER_TEXT_BOX_TELEFONE_CODIGO_AREA'
        AND fcle.ordem = 3) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_TELEFONE'
        AND e.nome = 'FORM_FIELD_NUMBER_TEXT_BOX_TELEFONE'
        AND fcle.ordem = 4) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH_MARGIN_RIGHT_10PX') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_TELEFONE'
        AND e.nome = 'FORM_FIELD_NUMBER_TEXT_BOX_TELEFONE_RAMAL'
        AND fcle.ordem = 5) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_TELEFONE'
        AND e.nome = 'FORM_FIELD_SIMPLE_TEXT_AREA_TELEFONE_DESCRICAO'
        AND fcle.ordem = 6) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_TELEFONE'
        AND e.nome = 'FORM_LINHA_HORIZONTAL'
        AND fcle.ordem = 7) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_WIDTH_100PERCENT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_WIDTH_100PERCENT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_TELEFONE'
        AND e.nome = 'FORM_BUTTON_SUBMIT'
        AND fcle.ordem = 8) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_TELEFONE'
        AND e.nome = 'FORM_BUTTON_RESET'
        AND fcle.ordem = 9) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT_MARGIN_RIGHT_10px') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_EMAIL'
        AND e.nome = 'FORM_FIELD_FILTERING_SELECT_EMAIL_TIPO'
        AND fcle.ordem = 1) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_EMAIL'
        AND e.nome = 'FORM_FIELD_VALIDATION_TEXT_BOX_EMAIL_USUARIO'
        AND fcle.ordem = 2) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_EMAIL'
        AND e.nome = 'FORM_FIELD_SIMPLE_TEXT_AREA_EMAIL_DESCRICAO'
        AND fcle.ordem = 3) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_EMAIL'
        AND e.nome = 'FORM_LINHA_HORIZONTAL'
        AND fcle.ordem = 4) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_WIDTH_100PERCENT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_WIDTH_100PERCENT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_EMAIL'
        AND e.nome = 'FORM_BUTTON_SUBMIT'
        AND fcle.ordem = 5) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_EMAIL'
        AND e.nome = 'FORM_BUTTON_RESET'
        AND fcle.ordem = 6) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT_MARGIN_RIGHT_10px') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_WEBSITE'
        AND e.nome = 'FORM_FIELD_FILTERING_SELECT_WEBSITE_TIPO'
        AND fcle.ordem = 1) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_WEBSITE'
        AND e.nome = 'FORM_FIELD_VALIDATION_TEXT_BOX_WEBSITE_ENDERECO'
        AND fcle.ordem = 2) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_WEBSITE'
        AND e.nome = 'FORM_FIELD_SIMPLE_TEXT_AREA_WEBSITE_DESCRICAO'
        AND fcle.ordem = 3) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_WEBSITE'
        AND e.nome = 'FORM_LINHA_HORIZONTAL'
        AND fcle.ordem = 4) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_WIDTH_100PERCENT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_WIDTH_100PERCENT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_WEBSITE'
        AND e.nome = 'FORM_BUTTON_SUBMIT'
        AND fcle.ordem = 5) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_WEBSITE'
        AND e.nome = 'FORM_BUTTON_RESET'
        AND fcle.ordem = 6) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT_MARGIN_RIGHT_10px') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_ENDERECO'
        AND e.nome = 'FORM_FIELD_ENDERECO_TIPO_FILTERING_SELECT'
        AND fcle.ordem = 1) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_ENDERECO'
        AND e.nome = 'FORM_FIELD_ENDERECO_PAIS_FILTERING_SELECT'
        AND fcle.ordem = 2) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_ENDERECO'
        AND e.nome = 'FORM_FIELD_ENDERECO_ESTADO_FILTERING_SELECT'
        AND fcle.ordem = 3) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_ENDERECO'
        AND e.nome = 'FORM_FIELD_ENDERECO_ESTADO_VALIDATION_TEXT_BOX'
        AND fcle.ordem = 4) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_ENDERECO'
        AND e.nome = 'FORM_FIELD_ENDERECO_MUNICIPIO_FILTERING_SELECT'
        AND fcle.ordem = 5) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_ENDERECO'
        AND e.nome = 'FORM_FIELD_ENDERECO_MUNICIPIO_VALIDATION_TEXT_BOX'
        AND fcle.ordem = 6) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_ENDERECO'
        AND e.nome = 'FORM_FIELD_ENDERECO_CEP_VALIDATION_TEXT_BOX'
        AND fcle.ordem = 7) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_ENDERECO'
        AND e.nome = 'FORM_FIELD_ENDERECO_LOGRADOURO_VALIDATION_TEXT_BOX'
        AND fcle.ordem = 8) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_ENDERECO'
        AND e.nome = 'FORM_FIELD_ENDERECO_NUMERO_VALIDATION_TEXT_BOX'
        AND fcle.ordem = 9) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_ENDERECO'
        AND e.nome = 'FORM_FIELD_ENDERECO_COMPLEMENTO_VALIDATION_TEXT_BOX'
        AND fcle.ordem = 10) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_ENDERECO'
        AND e.nome = 'FORM_LINHA_HORIZONTAL'
        AND fcle.ordem = 11) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_WIDTH_100PERCENT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_WIDTH_100PERCENT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_ENDERECO'
        AND e.nome = 'FORM_BUTTON_SUBMIT'
        AND fcle.ordem = 12) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_ENDERECO'
        AND e.nome = 'FORM_BUTTON_RESET'
        AND fcle.ordem = 13) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT_MARGIN_RIGHT_10px') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_CADASTRAR_USUARIO_VALIDADO'
        AND e.nome = 'FORM_FIELD_VALIDATION_TEXT_BOX_NOME_USUARIO'
        AND fcle.ordem = 1) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_CADASTRAR_USUARIO_VALIDADO'
        AND e.nome = 'FORM_FIELD_DATE_TEXT_BOX_DATA_NASCIMENTO'
        AND fcle.ordem = 2) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_CADASTRAR_USUARIO_VALIDADO'
        AND e.nome = 'FORM_FIELD_RADIO_BUTTON_SEXO'
        AND fcle.ordem = 3) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_CADASTRAR_USUARIO_VALIDADO'
        AND e.nome = 'FORM_FIELD_VALIDATION_TEXT_BOX_LOGIN'
        AND fcle.ordem = 4) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_CADASTRAR_USUARIO_VALIDADO'
        AND e.nome = 'FORM_FIELD_HTML_LOGIN_DISPONIBILIDADE'
        AND fcle.ordem = 5) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_CADASTRAR_USUARIO_VALIDADO'
        AND e.nome = 'FORM_FIELD_PASSWORD_TEXT_BOX_SENHA_WITH_CHECKER'
        AND fcle.ordem = 6) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_CADASTRAR_USUARIO_VALIDADO'
        AND e.nome = 'FORM_FIELD_HTML_PASSWORD_STRENGTH_CHECKER'
        AND fcle.ordem = 7) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_CADASTRAR_USUARIO_VALIDADO'
        AND e.nome = 'FORM_FIELD_PASSWORD_TEXT_BOX_SENHA_CONFIRMACAO'
        AND fcle.ordem = 8) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_CADASTRAR_USUARIO_VALIDADO'
        AND e.nome = 'FORM_BUTTON_SUBMIT'
        AND fcle.ordem = 9) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_DOCUMENTOS_IDENTIFICACAO'
        AND e.nome = 'FORM_LINHA_HORIZONTAL'
        AND fcle.ordem = 1) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_WIDTH_100PERCENT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_WIDTH_100PERCENT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_DOCUMENTOS_IDENTIFICACAO'
        AND e.nome = 'FORM_BUTTON_DIALOG_DOJO'
        AND fcle.ordem = 2) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_DOCUMENTOS_IDENTIFICACAO'
        AND e.nome = 'FORM_BUTTON_CLOSE_DIALOG'
        AND fcle.ordem = 3) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_AUTENTICACAO_USUARIO'
        AND e.nome = 'FORM_LINHA_HORIZONTAL'
        AND fcle.ordem = 6) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_WIDTH_100PERCENT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_WIDTH_100PERCENT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_AUTENTICACAO_USUARIO'
        AND e.nome = 'FORM_BUTTON_SUBMIT'
        AND fcle.ordem = 7) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_AUTENTICACAO_USUARIO'
        AND e.nome = 'FORM_BUTTON_RESET'
        AND fcle.ordem = 8) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT_MARGIN_RIGHT_10px') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_PESSOAIS'
        AND e.nome = 'FORM_FIELD_PAIS_NASCIMENTO_FILTERING_SELECT'
        AND fcle.ordem = 1) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_PESSOAIS'
        AND e.nome = 'FORM_FIELD_ESTADO_NASCIMENTO_FILTERING_SELECT'
        AND fcle.ordem = 2) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_PESSOAIS'
        AND e.nome = 'FORM_FIELD_ESTADO_NASCIMENTO_VALIDATION_TEXT_BOX'
        AND fcle.ordem = 3) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_PESSOAIS'
        AND e.nome = 'FORM_FIELD_MUNICIPIO_NASCIMENTO_FILTERING_SELECT'
        AND fcle.ordem = 4) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_PESSOAIS'
        AND e.nome = 'FORM_FIELD_MUNICIPIO_NASCIMENTO_VALIDATION_TEXT_BOX'
        AND fcle.ordem = 5) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_PESSOAIS'
        AND e.nome = 'FORM_FIELD_NOME_PAI_VALIDATION_TEXT_BOX'
        AND fcle.ordem = 6) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_PESSOAIS'
        AND e.nome = 'FORM_FIELD_NOME_MAE_VALIDATION_TEXT_BOX'
        AND fcle.ordem = 7) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_PESSOAIS'
        AND e.nome = 'FORM_BUTTON_DIALOG_DOJO'
        AND fcle.ordem = 8) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_PESSOAIS'
        AND e.nome = 'FORM_BUTTON_DIALOG_DOJO'
        AND fcle.ordem = 9) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_PESSOAIS'
        AND e.nome = 'FORM_BUTTON_DIALOG_DOJO'
        AND fcle.ordem = 10) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_PESSOAIS'
        AND e.nome = 'FORM_BUTTON_DIALOG_DOJO'
        AND fcle.ordem = 11) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_PESSOAIS'
        AND e.nome = 'FORM_BUTTON_DIALOG_DOJO'
        AND fcle.ordem = 12) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_DOCUMENTOS_PESSOAIS'
        AND e.nome = 'FORM_LINHA_HORIZONTAL'
        AND fcle.ordem = 1) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_WIDTH_100PERCENT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_WIDTH_100PERCENT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_DOCUMENTOS_PESSOAIS'
        AND e.nome = 'FORM_BUTTON_DIALOG_DOJO'
        AND fcle.ordem = 2) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_DOCUMENTOS_PESSOAIS'
        AND e.nome = 'FORM_BUTTON_CLOSE_DIALOG'
        AND fcle.ordem = 3) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_TELEFONES_PESSOAIS'
        AND e.nome = 'FORM_LINHA_HORIZONTAL'
        AND fcle.ordem = 1) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_WIDTH_100PERCENT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_WIDTH_100PERCENT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_TELEFONES_PESSOAIS'
        AND e.nome = 'FORM_BUTTON_DIALOG_DOJO'
        AND fcle.ordem = 2) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_TELEFONES_PESSOAIS'
        AND e.nome = 'FORM_BUTTON_CLOSE_DIALOG'
        AND fcle.ordem = 3) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_EMAILS_PESSOAIS'
        AND e.nome = 'FORM_LINHA_HORIZONTAL'
        AND fcle.ordem = 1) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_WIDTH_100PERCENT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_WIDTH_100PERCENT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_EMAILS_PESSOAIS'
        AND e.nome = 'FORM_BUTTON_DIALOG_DOJO'
        AND fcle.ordem = 2) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_EMAILS_PESSOAIS'
        AND e.nome = 'FORM_BUTTON_CLOSE_DIALOG'
        AND fcle.ordem = 3) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_WEBSITES_PESSOAIS'
        AND e.nome = 'FORM_LINHA_HORIZONTAL'
        AND fcle.ordem = 1) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_WIDTH_100PERCENT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_WIDTH_100PERCENT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_WEBSITES_PESSOAIS'
        AND e.nome = 'FORM_BUTTON_DIALOG_DOJO'
        AND fcle.ordem = 2) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_WEBSITES_PESSOAIS'
        AND e.nome = 'FORM_BUTTON_CLOSE_DIALOG'
        AND fcle.ordem = 3) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_ENDERECOS_PESSOAIS'
        AND e.nome = 'FORM_LINHA_HORIZONTAL'
        AND fcle.ordem = 1) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_WIDTH_100PERCENT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_WIDTH_100PERCENT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_ENDERECOS_PESSOAIS'
        AND e.nome = 'FORM_BUTTON_DIALOG_DOJO'
        AND fcle.ordem = 2) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_ENDERECOS_PESSOAIS'
        AND e.nome = 'FORM_BUTTON_CLOSE_DIALOG'
        AND fcle.ordem = 3) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'SUBFORM_DADOS_USUARIO_INFORMACOES_BANCARIAS_DADOS_BANCARIOS'
        AND e.nome = 'FORM_BUTTON_DIALOG_DOJO'
        AND fcle.ordem = 1) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_CONTAS_BANCARIAS'
        AND e.nome = 'FORM_LINHA_HORIZONTAL'
        AND fcle.ordem = 1) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_WIDTH_100PERCENT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_WIDTH_100PERCENT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_CONTAS_BANCARIAS'
        AND e.nome = 'FORM_BUTTON_DIALOG_DOJO'
        AND fcle.ordem = 2) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_CONTAS_BANCARIAS'
        AND e.nome = 'FORM_BUTTON_CLOSE_DIALOG'
        AND fcle.ordem = 3) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_CONTA_BANCARIA'
        AND e.nome = 'FORM_FIELD_CONTA_BANCARIA_NUMERO_BANCO_VALIDATION_TEXT_BOX'
        AND fcle.ordem = 1) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_CONTA_BANCARIA'
        AND e.nome = 'FORM_FIELD_CONTA_BANCARIA_BANCO_FILTERING_SELECT'
        AND fcle.ordem = 2) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_CONTA_BANCARIA'
        AND e.nome = 'FORM_FIELD_CONTA_BANCARIA_AGENCIA_VALIDATION_TEXT_BOX'
        AND fcle.ordem = 3) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_CONTA_BANCARIA'
        AND e.nome = 'FORM_FIELD_CONTA_BANCARIA_TIPO_CONTA_FILTERING_SELECT'
        AND fcle.ordem = 4) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_CONTA_BANCARIA'
        AND e.nome = 'FORM_FIELD_CONTA_BANCARIA_NUMERO_CONTA_VALIDATION_TEXT_BOX'
        AND fcle.ordem = 5) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_CONTA_BANCARIA'
        AND e.nome = 'FORM_FIELD_CONTA_BANCARIA_DESCRICAO_IDENTIFICACAO_CONTA_VALIDATION_TEXT_BOX'
        AND fcle.ordem = 6) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_CONTA_BANCARIA'
        AND e.nome = 'FORM_LINHA_HORIZONTAL'
        AND fcle.ordem = 11) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_WIDTH_100PERCENT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_WIDTH_100PERCENT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_CONTA_BANCARIA'
        AND e.nome = 'FORM_BUTTON_SUBMIT'
        AND fcle.ordem = 12) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_form_assoccl_elemento.assoccl_decorator (id_assoccl_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_CONTA_BANCARIA'
        AND e.nome = 'FORM_BUTTON_RESET'
        AND fcle.ordem = 13) AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_RIGHT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_RIGHT_MARGIN_RIGHT_10px') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;