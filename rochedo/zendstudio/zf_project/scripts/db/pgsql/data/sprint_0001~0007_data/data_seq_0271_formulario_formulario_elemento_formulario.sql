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
        LEFT JOIN basico_formulario.elemento fe ON (ffe.id_formulario_elemento = fe.id)
        LEFT JOIN formulario f ON (ffe.id_formulario = f.id)
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)    
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE fe.nome = 'FORM_BUTTON_DIALOG_DOJO'
        AND t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_ACADEMICOS'
        AND ffe.ordem = 13) AS id_formulario_formulario_elemento,
       (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)    
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO' 
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_COORDENACAO_POS_GRADUACAO'
        AND f.nome = 'FORM_DIALOG_COORDENACAO_POS_GRADUACAO') AS id_formulario, 
        'FORM_BUTTON_ABRIR_DIALOG_VISUALIZAR_POS_GRADUACAO' AS constante_textual_label, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento_formulario (id_formulario_formulario_elemento, id_formulario, constante_textual_label, rowinfo )
SELECT (SELECT ffe.id
        FROM formulario_formulario_elemento ffe
        LEFT JOIN basico_formulario.elemento fe ON (ffe.id_formulario_elemento = fe.id)
        LEFT JOIN formulario f ON (ffe.id_formulario = f.id)
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)    
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE fe.nome = 'FORM_BUTTON_DIALOG_DOJO'
        AND t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_ACADEMICOS'
        AND ffe.ordem = 14) AS id_formulario_formulario_elemento,
       (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)    
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO' 
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_ORIENTACOES'
        AND f.nome = 'FORM_DIALOG_ORIENTACOES') AS id_formulario, 
        'FORM_BUTTON_ABRIR_DIALOG_VISUALIZAR_ORIENTACOES' AS constante_textual_label, 'SYSTEM_STARTUP' AS rowinfo;        

INSERT INTO formulario_formulario_elemento_formulario (id_formulario_formulario_elemento, id_formulario, constante_textual_label, rowinfo )
SELECT (SELECT ffe.id
        FROM formulario_formulario_elemento ffe
        LEFT JOIN basico_formulario.elemento fe ON (ffe.id_formulario_elemento = fe.id)
        LEFT JOIN formulario f ON (ffe.id_formulario = f.id)
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)    
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE fe.nome = 'FORM_BUTTON_DIALOG_DOJO'
        AND t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND f.nome = 'FORM_DIALOG_DOCUMENTOS_IDENTIFICACAO') AS id_formulario_formulario_elemento,
       (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)    
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO' 
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_DOCUMENTOS_IDENTIFICACAO'
        AND f.nome = 'FORM_DIALOG_DOCUMENTO') AS id_formulario, 
        'FORM_DOCUMENTO_TITULO' AS constante_textual_label, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento_formulario (id_formulario_formulario_elemento, id_formulario, constante_textual_label, rowinfo)
SELECT (SELECT ffe.id
        FROM formulario_formulario_elemento ffe
        LEFT JOIN basico_formulario.elemento fe ON (ffe.id_formulario_elemento = fe.id)
        LEFT JOIN formulario f ON (ffe.id_formulario = f.id)
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)    
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE fe.nome = 'FORM_BUTTON_DIALOG_DOJO'
        AND t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_PROFISSIONAIS') AS id_formulario_formulario_elemento,
       (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)    
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO' 
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL'
        AND f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL') AS id_formulario, 
        'FORM_BUTTON_ABRIR_DIALOG_NOVO_VINCULO_PROFISSIONAL' AS constante_textual_label, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento_formulario (id_formulario_formulario_elemento, id_formulario, constante_textual_label, rowinfo)
SELECT (SELECT ffe.id
        FROM formulario_formulario_elemento ffe
        LEFT JOIN basico_formulario.elemento fe ON (ffe.id_formulario_elemento = fe.id)
        LEFT JOIN formulario f ON (ffe.id_formulario = f.id)
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)    
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE fe.nome = 'FORM_BUTTON_DIALOG_DOJO'
        AND t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL'
        AND ffe.ordem = 14) AS id_formulario_formulario_elemento,
       (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)    
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO' 
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL_TELEFONES_PROFISSIONAIS'
        AND f.nome = 'FORM_DIALOG_TELEFONES_PROFISSIONAIS') AS id_formulario, 
        'FORM_BUTTON_ABRIR_DIALOG_TELEFONES_PROFISSIONAIS' AS constante_textual_label, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento_formulario (id_formulario_formulario_elemento, id_formulario, constante_textual_label, rowinfo)
SELECT (SELECT ffe.id
        FROM formulario_formulario_elemento ffe
        LEFT JOIN basico_formulario.elemento fe ON (ffe.id_formulario_elemento = fe.id)
        LEFT JOIN formulario f ON (ffe.id_formulario = f.id)
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)    
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE fe.nome = 'FORM_BUTTON_DIALOG_DOJO'
        AND t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL'
        AND ffe.ordem = 15) AS id_formulario_formulario_elemento,
       (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)    
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO' 
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL_EMAILS_PROFISSIONAIS'
        AND f.nome = 'FORM_DIALOG_EMAILS_PROFISSIONAIS') AS id_formulario, 
        'FORM_BUTTON_ABRIR_DIALOG_EMAILS_PROFISSIONAIS' AS constante_textual_label, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento_formulario (id_formulario_formulario_elemento, id_formulario, constante_textual_label, rowinfo)
SELECT (SELECT ffe.id
        FROM formulario_formulario_elemento ffe
        LEFT JOIN basico_formulario.elemento fe ON (ffe.id_formulario_elemento = fe.id)
        LEFT JOIN formulario f ON (ffe.id_formulario = f.id)
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)    
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE fe.nome = 'FORM_BUTTON_DIALOG_DOJO'
        AND t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL'
        AND ffe.ordem = 16) AS id_formulario_formulario_elemento,
       (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)    
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO' 
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL_WEBSITES_PROFISSIONAIS'
        AND f.nome = 'FORM_DIALOG_WEBSITES_PROFISSIONAIS') AS id_formulario, 
        'FORM_BUTTON_ABRIR_DIALOG_WEBSITES_PROFISSIONAIS' AS constante_textual_label, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento_formulario (id_formulario_formulario_elemento, id_formulario, constante_textual_label, rowinfo)
SELECT (SELECT ffe.id
        FROM formulario_formulario_elemento ffe
        LEFT JOIN basico_formulario.elemento fe ON (ffe.id_formulario_elemento = fe.id)
        LEFT JOIN formulario f ON (ffe.id_formulario = f.id)
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)    
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE fe.nome = 'FORM_BUTTON_DIALOG_DOJO'
        AND t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL'
        AND ffe.ordem = 17) AS id_formulario_formulario_elemento,
       (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)    
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO' 
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL_ENDERECOS_PROFISSIONAIS'
        AND f.nome = 'FORM_DIALOG_ENDERECOS_PROFISSIONAIS') AS id_formulario, 
        'FORM_BUTTON_ABRIR_DIALOG_ENDERECOS_PROFISSIONAIS' AS constante_textual_label, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento_formulario (id_formulario_formulario_elemento, id_formulario, constante_textual_label, rowinfo)
SELECT (SELECT ffe.id
        FROM formulario_formulario_elemento ffe
        LEFT JOIN basico_formulario.elemento fe ON (ffe.id_formulario_elemento = fe.id)
        LEFT JOIN formulario f ON (ffe.id_formulario = f.id)
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)    
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE fe.nome = 'FORM_BUTTON_DIALOG_DOJO'
        AND t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND f.nome = 'FORM_DIALOG_TELEFONES_PROFISSIONAIS') AS id_formulario_formulario_elemento,
       (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)    
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO' 
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_TELEFONE'
        AND f.nome = 'FORM_DIALOG_TELEFONE') AS id_formulario, 
        'FORM_BUTTON_ABRIR_DIALOG_NOVO_TELEFONE' AS constante_textual_label, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento_formulario (id_formulario_formulario_elemento, id_formulario, constante_textual_label, rowinfo)
SELECT (SELECT ffe.id
        FROM formulario_formulario_elemento ffe
        LEFT JOIN basico_formulario.elemento fe ON (ffe.id_formulario_elemento = fe.id)
        LEFT JOIN formulario f ON (ffe.id_formulario = f.id)
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)    
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE fe.nome = 'FORM_BUTTON_DIALOG_DOJO'
        AND t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND f.nome = 'FORM_DIALOG_EMAILS_PROFISSIONAIS') AS id_formulario_formulario_elemento,
       (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)    
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO' 
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_EMAIL'
        AND f.nome = 'FORM_DIALOG_EMAIL') AS id_formulario, 
        'FORM_BUTTON_ABRIR_DIALOG_NOVO_EMAIL' AS constante_textual_label, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento_formulario (id_formulario_formulario_elemento, id_formulario, constante_textual_label, rowinfo)
SELECT (SELECT ffe.id
        FROM formulario_formulario_elemento ffe
        LEFT JOIN basico_formulario.elemento fe ON (ffe.id_formulario_elemento = fe.id)
        LEFT JOIN formulario f ON (ffe.id_formulario = f.id)
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)    
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE fe.nome = 'FORM_BUTTON_DIALOG_DOJO'
        AND t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND f.nome = 'FORM_DIALOG_WEBSITES_PROFISSIONAIS') AS id_formulario_formulario_elemento,
       (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)    
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO' 
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_WEBSITE'
        AND f.nome = 'FORM_DIALOG_WEBSITE') AS id_formulario, 
        'FORM_BUTTON_ABRIR_DIALOG_NOVO_WEBSITE' AS constante_textual_label, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento_formulario (id_formulario_formulario_elemento, id_formulario, constante_textual_label, rowinfo)
SELECT (SELECT ffe.id
        FROM formulario_formulario_elemento ffe
        LEFT JOIN basico_formulario.elemento fe ON (ffe.id_formulario_elemento = fe.id)
        LEFT JOIN formulario f ON (ffe.id_formulario = f.id)
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)    
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE fe.nome = 'FORM_BUTTON_DIALOG_DOJO'
        AND t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND f.nome = 'FORM_DIALOG_ENDERECOS_PROFISSIONAIS') AS id_formulario_formulario_elemento,
       (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)    
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO' 
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_ENDERECO'
        AND f.nome = 'FORM_DIALOG_ENDERECO') AS id_formulario, 
        'FORM_BUTTON_ABRIR_DIALOG_NOVO_ENDERECO' AS constante_textual_label, 'SYSTEM_STARTUP' AS rowinfo;
        
        
        
        
/**
* INICIO
*  
* ABA CADASTRO DE USUARIO - DADOS PESSOAIS
*/


-- cadastro dados pessoais - botão para abrir container com os documentos pessoais
INSERT INTO formulario_formulario_elemento_formulario (id_formulario_formulario_elemento, id_formulario, constante_textual_label, rowinfo)
SELECT (SELECT ffe.id
        FROM formulario_formulario_elemento ffe
        LEFT JOIN basico_formulario.elemento fe ON (ffe.id_formulario_elemento = fe.id)
        LEFT JOIN formulario f ON (ffe.id_formulario = f.id)
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)    
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE fe.nome = 'FORM_BUTTON_DIALOG_DOJO'
        AND t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_PESSOAIS'
        AND ffe.ordem = 8) AS id_formulario_formulario_elemento,
       (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)    
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO' 
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_PESSOAIS_DOCUMENTOS_PESSOAIS'
        AND f.nome = 'FORM_DIALOG_DOCUMENTOS_PESSOAIS') AS id_formulario, 
        'FORM_BUTTON_ABRIR_DIALOG_DOCUMENTOS_PESSOAIS' AS constante_textual_label, 'SYSTEM_STARTUP' AS rowinfo;
-------------

-- botão para abrir o dialog de cadastro de documentos de identificação no container de documentos pessoais
INSERT INTO formulario_formulario_elemento_formulario (id_formulario_formulario_elemento, id_formulario, constante_textual_label, rowinfo)
SELECT (SELECT ffe.id
        FROM formulario_formulario_elemento ffe
        LEFT JOIN basico_formulario.elemento fe ON (ffe.id_formulario_elemento = fe.id)
        LEFT JOIN formulario f ON (ffe.id_formulario = f.id)
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)    
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE fe.nome = 'FORM_BUTTON_DIALOG_DOJO'
        AND t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND f.nome = 'FORM_DIALOG_DOCUMENTOS_PESSOAIS'
        AND ffe.ordem = 2) AS id_formulario_formulario_elemento,
       (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)    
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO' 
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_DOCUMENTOS_IDENTIFICACAO'
        AND f.nome = 'FORM_DIALOG_DOCUMENTO') AS id_formulario, 
        'FORM_DOCUMENTO_TITULO' AS constante_textual_label, 'SYSTEM_STARTUP' AS rowinfo;
-------------
        
-- botão para abrir o container com os telefones pessoais
INSERT INTO formulario_formulario_elemento_formulario (id_formulario_formulario_elemento, id_formulario, constante_textual_label, rowinfo)
SELECT (SELECT ffe.id
        FROM formulario_formulario_elemento ffe
        LEFT JOIN basico_formulario.elemento fe ON (ffe.id_formulario_elemento = fe.id)
        LEFT JOIN formulario f ON (ffe.id_formulario = f.id)
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)    
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE fe.nome = 'FORM_BUTTON_DIALOG_DOJO'
        AND t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_PESSOAIS'
        AND ffe.ordem = 9) AS id_formulario_formulario_elemento,
       (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)    
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO' 
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_PESSOAIS_TELEFONES_PESSOAIS'
        AND f.nome = 'FORM_DIALOG_TELEFONES_PESSOAIS') AS id_formulario, 
        'FORM_BUTTON_ABRIR_DIALOG_TELEFONES_PESSOAIS' AS constante_textual_label, 'SYSTEM_STARTUP' AS rowinfo;
-------------

-- botão para abrir o dialog de cadastro de telefones no container de telefones pessoais
INSERT INTO formulario_formulario_elemento_formulario (id_formulario_formulario_elemento, id_formulario, constante_textual_label, rowinfo)
SELECT (SELECT ffe.id
        FROM formulario_formulario_elemento ffe
        LEFT JOIN basico_formulario.elemento fe ON (ffe.id_formulario_elemento = fe.id)
        LEFT JOIN formulario f ON (ffe.id_formulario = f.id)
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)    
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE fe.nome = 'FORM_BUTTON_DIALOG_DOJO'
        AND t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND f.nome = 'FORM_DIALOG_TELEFONES_PESSOAIS'
        AND ffe.ordem = 2) AS id_formulario_formulario_elemento,
       (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)    
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO' 
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_TELEFONE'
        AND f.nome = 'FORM_DIALOG_TELEFONE') AS id_formulario, 
        'FORM_BUTTON_ABRIR_DIALOG_NOVO_TELEFONE' AS constante_textual_label, 'SYSTEM_STARTUP' AS rowinfo;
-------------

-- botão para abrir o container com os e-mails pessoais
INSERT INTO formulario_formulario_elemento_formulario (id_formulario_formulario_elemento, id_formulario, constante_textual_label, rowinfo)
SELECT (SELECT ffe.id
        FROM formulario_formulario_elemento ffe
        LEFT JOIN basico_formulario.elemento fe ON (ffe.id_formulario_elemento = fe.id)
        LEFT JOIN formulario f ON (ffe.id_formulario = f.id)
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)    
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE fe.nome = 'FORM_BUTTON_DIALOG_DOJO'
        AND t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_PESSOAIS'
        AND ffe.ordem = 10) AS id_formulario_formulario_elemento,
       (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)    
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO' 
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_PESSOAIS_EMAILS_PESSOAIS'
        AND f.nome = 'FORM_DIALOG_EMAILS_PESSOAIS') AS id_formulario, 
        'FORM_BUTTON_ABRIR_DIALOG_EMAILS_PESSOAIS' AS constante_textual_label, 'SYSTEM_STARTUP' AS rowinfo;
-------------

-- botão para abrir o dialog de cadastro de email no container de emails pessoais
INSERT INTO formulario_formulario_elemento_formulario (id_formulario_formulario_elemento, id_formulario, constante_textual_label, rowinfo)
SELECT (SELECT ffe.id
        FROM formulario_formulario_elemento ffe
        LEFT JOIN basico_formulario.elemento fe ON (ffe.id_formulario_elemento = fe.id)
        LEFT JOIN formulario f ON (ffe.id_formulario = f.id)
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)    
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE fe.nome = 'FORM_BUTTON_DIALOG_DOJO'
        AND t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND f.nome = 'FORM_DIALOG_EMAILS_PESSOAIS'
        AND ffe.ordem = 2) AS id_formulario_formulario_elemento,
       (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)    
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO' 
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_EMAIL'
        AND f.nome = 'FORM_DIALOG_EMAIL') AS id_formulario, 
        'FORM_BUTTON_ABRIR_DIALOG_NOVO_EMAIL' AS constante_textual_label, 'SYSTEM_STARTUP' AS rowinfo;
-------------

-- botão para abrir o container com os websites pessoais
INSERT INTO formulario_formulario_elemento_formulario (id_formulario_formulario_elemento, id_formulario, constante_textual_label, rowinfo)
SELECT (SELECT ffe.id
        FROM formulario_formulario_elemento ffe
        LEFT JOIN basico_formulario.elemento fe ON (ffe.id_formulario_elemento = fe.id)
        LEFT JOIN formulario f ON (ffe.id_formulario = f.id)
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)    
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE fe.nome = 'FORM_BUTTON_DIALOG_DOJO'
        AND t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_PESSOAIS'
        AND ffe.ordem = 11) AS id_formulario_formulario_elemento,
       (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)    
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO' 
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_PESSOAIS_WEBSITES_PESSOAIS'
        AND f.nome = 'FORM_DIALOG_WEBSITES_PESSOAIS') AS id_formulario, 
        'FORM_BUTTON_ABRIR_DIALOG_WEBSITES_PESSOAIS' AS constante_textual_label, 'SYSTEM_STARTUP' AS rowinfo;
-------------

-- botão para abrir o dialog de cadastro de website no container de websites pessoais
INSERT INTO formulario_formulario_elemento_formulario (id_formulario_formulario_elemento, id_formulario, constante_textual_label, rowinfo)
SELECT (SELECT ffe.id
        FROM formulario_formulario_elemento ffe
        LEFT JOIN basico_formulario.elemento fe ON (ffe.id_formulario_elemento = fe.id)
        LEFT JOIN formulario f ON (ffe.id_formulario = f.id)
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)    
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE fe.nome = 'FORM_BUTTON_DIALOG_DOJO'
        AND t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND f.nome = 'FORM_DIALOG_WEBSITES_PESSOAIS'
        AND ffe.ordem = 2) AS id_formulario_formulario_elemento,
       (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)    
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO' 
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_WEBSITE'
        AND f.nome = 'FORM_DIALOG_WEBSITE') AS id_formulario, 
        'FORM_BUTTON_ABRIR_DIALOG_NOVO_WEBSITE' AS constante_textual_label, 'SYSTEM_STARTUP' AS rowinfo;
-------------

-- botão para abrir o container com os endereços pessoais
INSERT INTO formulario_formulario_elemento_formulario (id_formulario_formulario_elemento, id_formulario, constante_textual_label, rowinfo)
SELECT (SELECT ffe.id
        FROM formulario_formulario_elemento ffe
        LEFT JOIN basico_formulario.elemento fe ON (ffe.id_formulario_elemento = fe.id)
        LEFT JOIN formulario f ON (ffe.id_formulario = f.id)
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)    
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE fe.nome = 'FORM_BUTTON_DIALOG_DOJO'
        AND t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_PESSOAIS'
        AND ffe.ordem = 12) AS id_formulario_formulario_elemento,
       (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)    
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO' 
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_PESSOAIS_ENDERECOS_PESSOAIS'
        AND f.nome = 'FORM_DIALOG_ENDERECOS_PESSOAIS') AS id_formulario, 
        'FORM_BUTTON_ABRIR_DIALOG_ENDERECOS_PESSOAIS' AS constante_textual_label, 'SYSTEM_STARTUP' AS rowinfo;
-------------

-- botão para abrir o dialog de cadastro de endereço no container de endereços pessoais
INSERT INTO formulario_formulario_elemento_formulario (id_formulario_formulario_elemento, id_formulario, constante_textual_label, rowinfo)
SELECT (SELECT ffe.id
        FROM formulario_formulario_elemento ffe
        LEFT JOIN basico_formulario.elemento fe ON (ffe.id_formulario_elemento = fe.id)
        LEFT JOIN formulario f ON (ffe.id_formulario = f.id)
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)    
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE fe.nome = 'FORM_BUTTON_DIALOG_DOJO'
        AND t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND f.nome = 'FORM_DIALOG_ENDERECOS_PESSOAIS'
        AND ffe.ordem = 2) AS id_formulario_formulario_elemento,
       (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)    
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO' 
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_ENDERECO'
        AND f.nome = 'FORM_DIALOG_ENDERECO') AS id_formulario, 
        'FORM_BUTTON_ABRIR_DIALOG_NOVO_ENDERECO' AS constante_textual_label, 'SYSTEM_STARTUP' AS rowinfo;
-------------
        
/**
* FIM - ABA CADASTRO DE USUARIO - DADOS PESSOAIS
*/


/**
* INICIO
*  
* ABA INFORMACOES BANCARIAS - DADOS BANCARIOS
*/
        
-- botão para abrir o container com as contas bancarias
INSERT INTO formulario_formulario_elemento_formulario (id_formulario_formulario_elemento, id_formulario, constante_textual_label, rowinfo)
SELECT (SELECT ffe.id
        FROM formulario_formulario_elemento ffe
        LEFT JOIN basico_formulario.elemento fe ON (ffe.id_formulario_elemento = fe.id)
        LEFT JOIN formulario f ON (ffe.id_formulario = f.id)
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)    
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE fe.nome = 'FORM_BUTTON_DIALOG_DOJO'
        AND t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_INFORMACOES_BANCARIAS_DADOS_BANCARIOS'
        AND ffe.ordem = 1) AS id_formulario_formulario_elemento,
       (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)    
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO' 
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_INFORMACOES_BANCARIAS_DADOS_BANCARIOS_CONTAS_BANCARIAS'
        AND f.nome = 'FORM_DIALOG_CONTAS_BANCARIAS') AS id_formulario, 
        'FORM_BUTTON_ABRIR_DIALOG_CONTAS_BANCARIAS' AS constante_textual_label, 'SYSTEM_STARTUP' AS rowinfo;
-------------


-- botão para abrir o dialog de cadastro de conta bancaria no container de contas bancarias
INSERT INTO formulario_formulario_elemento_formulario (id_formulario_formulario_elemento, id_formulario, constante_textual_label, rowinfo)
SELECT (SELECT ffe.id
        FROM formulario_formulario_elemento ffe
        LEFT JOIN basico_formulario.elemento fe ON (ffe.id_formulario_elemento = fe.id)
        LEFT JOIN formulario f ON (ffe.id_formulario = f.id)
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)    
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE fe.nome = 'FORM_BUTTON_DIALOG_DOJO'
        AND t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND f.nome = 'FORM_DIALOG_CONTAS_BANCARIAS'
        AND ffe.ordem = 2) AS id_formulario_formulario_elemento,
       (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)    
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO' 
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_CONTA_BANCARIA'
        AND f.nome = 'FORM_DIALOG_CONTA_BANCARIA') AS id_formulario, 
        'FORM_BUTTON_ABRIR_DIALOG_NOVO_CONTA_BANCARIA' AS constante_textual_label, 'SYSTEM_STARTUP' AS rowinfo;
-------------
/**
* FIM - ABA INFORMACOES BANCARIAS - DADOS BANCARIOS
*/