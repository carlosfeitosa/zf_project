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
SELECT (SELECT ffe.id
        FROM basico_formulario.assoccl_elemento ffe
        LEFT JOIN basico.formulario f ON (f.id = ffe.id_formulario)
        LEFT JOIN basico_formulario.elemento fe ON (fe.id = ffe.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_ADMIN_RASCUNHOS'
        AND fe.nome = 'FORM_FIELD_FILTERING_SELECT_FORMULARIO'
        AND (ffe.element_name IS NULL OR ffe.element_name = '')
        AND ffe.ordem = 1 ) AS id_assoccl_elemento,
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
SELECT (SELECT ffe.id
        FROM basico_formulario.assoccl_elemento ffe
        LEFT JOIN basico.formulario f ON (f.id = ffe.id_formulario)
        LEFT JOIN basico_formulario.elemento fe ON (fe.id = ffe.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_ADMIN_RASCUNHOS'
        AND fe.nome = 'FORM_FIELD_FILTERING_SELECT_TIPO_DATA') AS id_assoccl_elemento,
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
SELECT (SELECT ffe.id
        FROM basico_formulario.assoccl_elemento ffe
        LEFT JOIN basico.formulario f ON (f.id = ffe.id_formulario)
        LEFT JOIN basico_formulario.elemento fe ON (fe.id = ffe.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_ADMIN_RASCUNHOS'
        AND fe.nome = 'FORM_FIELD_DATE_TEXT_BOX_DATA_INICIO_PERIODO') AS id_assoccl_elemento,
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
SELECT (SELECT ffe.id
        FROM basico_formulario.assoccl_elemento ffe
        LEFT JOIN basico.formulario f ON (f.id = ffe.id_formulario)
        LEFT JOIN basico_formulario.elemento fe ON (fe.id = ffe.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_ADMIN_RASCUNHOS'
        AND fe.nome = 'FORM_FIELD_DATE_TEXT_BOX_DATA_TERMINO_PERIODO') AS id_assoccl_elemento,
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
SELECT (SELECT ffe.id
        FROM basico_formulario.assoccl_elemento ffe
        LEFT JOIN basico.formulario f ON (f.id = ffe.id_formulario)
        LEFT JOIN basico_formulario.elemento fe ON (fe.id = ffe.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_ADMIN_RASCUNHOS'
        AND fe.nome = 'FORM_FIELD_HTML_CONTENT_DINAMICO'
        AND ffe.element_name = 'divTreeResultado') AS id_assoccl_elemento,
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
SELECT (SELECT ffe.id
        FROM basico_formulario.assoccl_elemento ffe
        LEFT JOIN basico.formulario f ON (f.id = ffe.id_formulario)
        LEFT JOIN basico_formulario.elemento fe ON (fe.id = ffe.id_elemento)
        WHERE f.nome = 'FORM_DIALOG_ADMIN_RASCUNHOS'
        AND fe.nome = 'FORM_BUTTON'
        AND ffe.element_name = 'divLegenda') AS id_assoccl_elemento,
       (SELECT d.id
        FROM basico_formulario.decorator d
        LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;      