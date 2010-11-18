/*
* SCRIPT DE POPULACAO DAS TABELAS
* 
* versao: 1.0 (POSTGRESQL 8.4.1)
* por: ADRIANO DUPRAT LEMOS (adriano.lemos@rochedoproject.com)
* criacao: 21/10/2010
* ultimas modificacoes:
*  
*/

/* FORMULARIO X FORMULARIO ELEMENTO X FORMULARIO */

INSERT INTO formulario_formulario_elemento_formulario (id_formulario_formulario_elemento, id_formulario, constante_textual_label, rowinfo )
SELECT (SELECT ffe.id
        FROM formulario_formulario_elemento ffe
        LEFT JOIN formulario_elemento fe ON (ffe.id_formulario_elemento = fe.id)
        LEFT JOIN formulario f ON (ffe.id_formulario = f.id)
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)    
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE fe.nome = 'FORM_BUTTON_DIALOG_DOJO'
        AND t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND f.nome = 'FORM_DIALOG_DOCUMENTOS_IDENTIFICACAO') AS id_formulario_formulario_elemento,
       (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)    
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO' 
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_DOCUMENTOS_IDENTIFICACAO'
        AND f.nome = 'FORM_DIALOG_DOCUMENTO') AS id_formulario, 
        'FORM_DOCUMENTO_TITULO' AS constante_textual_label, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento_formulario (id_formulario_formulario_elemento, id_formulario, constante_textual_label, rowinfo )
SELECT (SELECT ffe.id
        FROM formulario_formulario_elemento ffe
        LEFT JOIN formulario_elemento fe ON (ffe.id_formulario_elemento = fe.id)
        LEFT JOIN formulario f ON (ffe.id_formulario = f.id)
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)    
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE fe.nome = 'FORM_BUTTON_DIALOG_DOJO'
        AND t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_ACADEMICOS') AS id_formulario_formulario_elemento,
       (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)    
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO' 
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO'
        AND f.nome = 'FORM_DIALOG_MAIOR_TITULACAO') AS id_formulario, 
        'FORM_FIELD_MAIOR_TITULACAO' AS constante_textual_label, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento_formulario (id_formulario_formulario_elemento, id_formulario, constante_textual_label, rowinfo)
SELECT (SELECT ffe.id
        FROM formulario_formulario_elemento ffe
        LEFT JOIN formulario_elemento fe ON (ffe.id_formulario_elemento = fe.id)
        LEFT JOIN formulario f ON (ffe.id_formulario = f.id)
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)    
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE fe.nome = 'FORM_BUTTON_DIALOG_DOJO'
        AND t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_PROFISSIONAIS') AS id_formulario_formulario_elemento,
       (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)    
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO' 
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL'
        AND f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL') AS id_formulario, 
        'FORM_BUTTON_ABRIR_DIALOG_NOVO_VINCULO_PROFISSIONAL' AS constante_textual_label, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento_formulario (id_formulario_formulario_elemento, id_formulario, constante_textual_label, rowinfo)
SELECT (SELECT ffe.id
        FROM formulario_formulario_elemento ffe
        LEFT JOIN formulario_elemento fe ON (ffe.id_formulario_elemento = fe.id)
        LEFT JOIN formulario f ON (ffe.id_formulario = f.id)
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)    
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE fe.nome = 'FORM_BUTTON_DIALOG_DOJO'
        AND t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL'
        AND ffe.ordem = 14) AS id_formulario_formulario_elemento,
       (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)    
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO' 
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL_TELEFONES_PROFISSIONAIS'
        AND f.nome = 'FORM_DIALOG_TELEFONES_PROFISSIONAIS') AS id_formulario, 
        'FORM_BUTTON_ABRIR_DIALOG_TELEFONES_PROFISSIONAIS' AS constante_textual_label, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento_formulario (id_formulario_formulario_elemento, id_formulario, constante_textual_label, rowinfo)
SELECT (SELECT ffe.id
        FROM formulario_formulario_elemento ffe
        LEFT JOIN formulario_elemento fe ON (ffe.id_formulario_elemento = fe.id)
        LEFT JOIN formulario f ON (ffe.id_formulario = f.id)
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)    
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE fe.nome = 'FORM_BUTTON_DIALOG_DOJO'
        AND t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL'
        AND ffe.ordem = 15) AS id_formulario_formulario_elemento,
       (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)    
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO' 
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL_EMAILS_PROFISSIONAIS'
        AND f.nome = 'FORM_DIALOG_EMAILS_PROFISSIONAIS') AS id_formulario, 
        'FORM_BUTTON_ABRIR_DIALOG_EMAILS_PROFISSIONAIS' AS constante_textual_label, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento_formulario (id_formulario_formulario_elemento, id_formulario, constante_textual_label, rowinfo)
SELECT (SELECT ffe.id
        FROM formulario_formulario_elemento ffe
        LEFT JOIN formulario_elemento fe ON (ffe.id_formulario_elemento = fe.id)
        LEFT JOIN formulario f ON (ffe.id_formulario = f.id)
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)    
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE fe.nome = 'FORM_BUTTON_DIALOG_DOJO'
        AND t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL'
        AND ffe.ordem = 16) AS id_formulario_formulario_elemento,
       (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)    
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO' 
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL_WEBSITES_PROFISSIONAIS'
        AND f.nome = 'FORM_DIALOG_WEBSITES_PROFISSIONAIS') AS id_formulario, 
        'FORM_BUTTON_ABRIR_DIALOG_WEBSITES_PROFISSIONAIS' AS constante_textual_label, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento_formulario (id_formulario_formulario_elemento, id_formulario, constante_textual_label, rowinfo)
SELECT (SELECT ffe.id
        FROM formulario_formulario_elemento ffe
        LEFT JOIN formulario_elemento fe ON (ffe.id_formulario_elemento = fe.id)
        LEFT JOIN formulario f ON (ffe.id_formulario = f.id)
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)    
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE fe.nome = 'FORM_BUTTON_DIALOG_DOJO'
        AND t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL'
        AND ffe.ordem = 17) AS id_formulario_formulario_elemento,
       (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)    
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO' 
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL_ENDERECOS_PROFISSIONAIS'
        AND f.nome = 'FORM_DIALOG_ENDERECOS_PROFISSIONAIS') AS id_formulario, 
        'FORM_BUTTON_ABRIR_DIALOG_ENDERECOS_PROFISSIONAIS' AS constante_textual_label, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento_formulario (id_formulario_formulario_elemento, id_formulario, constante_textual_label, rowinfo)
SELECT (SELECT ffe.id
        FROM formulario_formulario_elemento ffe
        LEFT JOIN formulario_elemento fe ON (ffe.id_formulario_elemento = fe.id)
        LEFT JOIN formulario f ON (ffe.id_formulario = f.id)
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)    
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE fe.nome = 'FORM_BUTTON_DIALOG_DOJO'
        AND t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND f.nome = 'FORM_DIALOG_TELEFONES_PROFISSIONAIS') AS id_formulario_formulario_elemento,
       (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)    
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO' 
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_TELEFONE'
        AND f.nome = 'FORM_DIALOG_TELEFONE') AS id_formulario, 
        'FORM_BUTTON_ABRIR_DIALOG_NOVO_TELEFONE' AS constante_textual_label, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento_formulario (id_formulario_formulario_elemento, id_formulario, constante_textual_label, rowinfo)
SELECT (SELECT ffe.id
        FROM formulario_formulario_elemento ffe
        LEFT JOIN formulario_elemento fe ON (ffe.id_formulario_elemento = fe.id)
        LEFT JOIN formulario f ON (ffe.id_formulario = f.id)
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)    
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE fe.nome = 'FORM_BUTTON_DIALOG_DOJO'
        AND t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND f.nome = 'FORM_DIALOG_EMAILS_PROFISSIONAIS') AS id_formulario_formulario_elemento,
       (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)    
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO' 
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_EMAIL'
        AND f.nome = 'FORM_DIALOG_EMAIL') AS id_formulario, 
        'FORM_BUTTON_ABRIR_DIALOG_NOVO_EMAIL' AS constante_textual_label, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento_formulario (id_formulario_formulario_elemento, id_formulario, constante_textual_label, rowinfo)
SELECT (SELECT ffe.id
        FROM formulario_formulario_elemento ffe
        LEFT JOIN formulario_elemento fe ON (ffe.id_formulario_elemento = fe.id)
        LEFT JOIN formulario f ON (ffe.id_formulario = f.id)
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)    
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE fe.nome = 'FORM_BUTTON_DIALOG_DOJO'
        AND t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND f.nome = 'FORM_DIALOG_WEBSITES_PROFISSIONAIS') AS id_formulario_formulario_elemento,
       (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)    
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO' 
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_WEBSITE'
        AND f.nome = 'FORM_DIALOG_WEBSITE') AS id_formulario, 
        'FORM_BUTTON_ABRIR_DIALOG_NOVO_WEBSITE' AS constante_textual_label, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento_formulario (id_formulario_formulario_elemento, id_formulario, constante_textual_label, rowinfo)
SELECT (SELECT ffe.id
        FROM formulario_formulario_elemento ffe
        LEFT JOIN formulario_elemento fe ON (ffe.id_formulario_elemento = fe.id)
        LEFT JOIN formulario f ON (ffe.id_formulario = f.id)
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)    
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE fe.nome = 'FORM_BUTTON_DIALOG_DOJO'
        AND t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND f.nome = 'FORM_DIALOG_ENDERECOS_PROFISSIONAIS') AS id_formulario_formulario_elemento,
       (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)    
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO' 
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_ENDERECO'
        AND f.nome = 'FORM_DIALOG_ENDERECO') AS id_formulario, 
        'FORM_BUTTON_ABRIR_DIALOG_NOVO_ENDERECO' AS constante_textual_label, 'SYSTEM_STARTUP' AS rowinfo;