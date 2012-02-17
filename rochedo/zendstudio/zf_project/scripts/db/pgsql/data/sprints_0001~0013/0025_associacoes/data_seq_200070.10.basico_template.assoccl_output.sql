/**
* SCRIPT DE POPULACAO DA TABELA basico_template.assoccl_output
* 
* Esta tabela contêm os dados de associacao das tabelas
* de basico.template com basico.output
* 
* versao: 1.0 (POSTGRESQL 9.1.1)
* por: ADRIANO LEMOS (adriano.lemos@rochedoframework.com)
* criacao: 07/02/2012
* ultimas modificacoes:
* 								
*/

INSERT INTO basico_template.assoccl_output (id_template, id_output, rowinfo)
SELECT (SELECT templ.id
        FROM basico.template templ
        LEFT JOIN basico.categoria c ON (templ.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_TEMPLATE'
        AND templ.nome = 'TEMPLATE_PASSWORD_STRENGTH_CHECKER' ) AS id_template, 
       (SELECT o.id
        FROM basico.output o
        LEFT JOIN basico.categoria c ON (o.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_OUTPUT_DOJO'
        AND o.nome = 'OUTPUT_DOJO') AS id_output, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_TEMPLATE';

INSERT INTO basico_template.assoccl_output (id_template, id_output, rowinfo)
SELECT (SELECT templ.id
        FROM basico.template templ
        LEFT JOIN basico.categoria c ON (templ.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_TEMPLATE'
        AND templ.nome = 'TEMPLATE_DOJO' ) AS id_template, 
       (SELECT o.id
        FROM basico.output o
        LEFT JOIN basico.categoria c ON (o.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_OUTPUT_DOJO'
        AND o.nome = 'OUTPUT_DOJO') AS id_output, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_TEMPLATE';

INSERT INTO basico_template.assoccl_output (id_template, id_output, rowinfo)
SELECT (SELECT templ.id
        FROM basico.template templ
        LEFT JOIN basico.categoria c ON (templ.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_TEMPLATE'
        AND templ.nome = 'TEMPLATE_HTML' ) AS id_template, 
       (SELECT o.id
        FROM basico.output o
        LEFT JOIN basico.categoria c ON (o.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_OUTPUT_HTML'
        AND o.nome = 'OUTPUT_HTML') AS id_output, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_TEMPLATE';

INSERT INTO basico_template.assoccl_output (id_template, id_output, rowinfo)
SELECT (SELECT templ.id
        FROM basico.template templ
        LEFT JOIN basico.categoria c ON (templ.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_TEMPLATE'
        AND templ.nome = 'TEMPLATE_AJAX' ) AS id_template, 
       (SELECT o.id
        FROM basico.output o
        LEFT JOIN basico.categoria c ON (o.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_OUTPUT_AJAX'
        AND o.nome = 'OUTPUT_AJAX') AS id_output, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_TEMPLATE';
