/*
* SCRIPT DE POPULACAO DAS TABELAS
* 
* versao: 1.0 (MSSQL 2000)
* por: ADRIANO DUPRAT LEMOS (adriano.lemos@rochedoproject.com)
* criacao: 20/10/2010
* ultimas modificacoes:
* 						26/07/2011 - criação do template output ajax
*						30/11/2011 - adaptação para novo modelo de banco de dados (Modularizado atraves de schemas) - João Vasconcelos;
* 
*/

/* TEMPLATE */

INSERT INTO basico.template (id_categoria, nome, descricao, stylesheet_full_filename, javascript_full_filename, id_output, rowinfo)
SELECT c.id AS id_categoria, 'TEMPLATE_PASSWORD_STRENGTH_CHECKER' AS nome, 'Template para o componente passwordStrengthChecker.' AS descricao,
       '/templates/3rd_party/password_strength_checker/passwordStrengthChecker.css' AS stylesheet_full_filename,
       '/templates/3rd_party/password_strength_checker/passwordStrengthChecker.js' AS javascript_full_filename,
       (SELECT o.id
        FROM basico.output o
        LEFT JOIN categoria c ON (o.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_OUTPUT_DOJO'
        AND o.nome = 'OUTPUT_DOJO') AS id_output, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_TEMPLATE';

INSERT INTO basico.template (id_categoria, nome, descricao, id_output, rowinfo)
SELECT c.id AS id_categoria, 'TEMPLATE_DOJO' AS nome, 'Template DOJO.' AS descricao,
       (SELECT o.id
        FROM basico.output o
        LEFT JOIN categoria c ON (o.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_OUTPUT_DOJO'
        AND o.nome = 'OUTPUT_DOJO') AS id_output, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_TEMPLATE';

INSERT INTO basico.template (id_categoria, nome, descricao, id_output, rowinfo)
SELECT c.id AS id_categoria, 'TEMPLATE_HTML' AS nome, 'Template HTML.' AS descricao,
       (SELECT o.id
        FROM basico.output o
        LEFT JOIN categoria c ON (o.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_OUTPUT_HTML'
        AND o.nome = 'OUTPUT_HTML') AS id_output, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_TEMPLATE';

INSERT INTO basico.template (id_categoria, nome, descricao, id_output, rowinfo)
SELECT c.id AS id_categoria, 'TEMPLATE_AJAX' AS nome, 'Template AJAX.' AS descricao,
       (SELECT o.id
        FROM basico.output o
        LEFT JOIN categoria c ON (o.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_OUTPUT_AJAX'
        AND o.nome = 'OUTPUT_AJAX') AS id_output, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_TEMPLATE';