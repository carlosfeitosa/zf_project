/*
* SCRIPT DE POPULACAO DAS TABELAS
* 
* versao: 1.0 (MSSQL 2000)
* por: ADRIANO DUPRAT LEMOS (adriano.lemos@rochedoproject.com)
* criacao: 21/10/2010
* ultimas modificacoes:
* 								22/10/2010 - criacao de formularios elementos para o formulario FORM_DIALOG_VINCULO_PROFISSIONAL;
* 								16/11/2010 - criacao de formularios elementos para o formulario FORM_DIALOG_EMAIL;
* 								26/04/2011 - criacao do botao de submit do formulario SUBFORM_DADOS_USUARIO_PERFIL;
* 								02/05/2011 - criacao dos elementos do formulario FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO;
*	 							05/08/2011 - correcao da categoria no SUBFORM_DADOS_USUARIO_DADOS_PESSOAIS
*								25/10/2011 - inicio da vinculacao dos elementos do form FORM_DIALOG_ADMIN_RASCUNHOS
* 								07/11/2011 - Modificacao dos nomes das UF(Unidade da federacao) para Estado.
*  
*/

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, id_grupo, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ADMIN_RASCUNHOS'
        AND f.nome = 'FORM_DIALOG_ADMIN_RASCUNHOS') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_FILTERING_SELECT_FORMULARIO') AS id_elemento,
        (SELECT g.id
       	FROM basico_form_assoccl_elemento.grupo g
       	WHERE g.nome = 'FILTROS') AS id_grupo,
        false AS element_required, 1 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, id_grupo, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ADMIN_RASCUNHOS'
        AND f.nome = 'FORM_DIALOG_ADMIN_RASCUNHOS') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_FILTERING_SELECT_TIPO_DATA') AS id_elemento,
       (SELECT g.id
       	FROM basico_form_assoccl_elemento.grupo g
       	WHERE g.nome = 'FILTROS') AS id_grupo,
        false AS element_required, 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
        
INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, id_grupo, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ADMIN_RASCUNHOS'
        AND f.nome = 'FORM_DIALOG_ADMIN_RASCUNHOS') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_DATE_TEXT_BOX_DATA_INICIO_PERIODO') AS id_elemento,
        (SELECT g.id
       	FROM basico_form_assoccl_elemento.grupo g
       	WHERE g.nome = 'FILTROS') AS id_grupo,
        false AS element_required, 3 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
        
INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, id_grupo, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ADMIN_RASCUNHOS'
        AND f.nome = 'FORM_DIALOG_ADMIN_RASCUNHOS') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_DATE_TEXT_BOX_DATA_TERMINO_PERIODO') AS id_elemento,
        (SELECT g.id
       	FROM basico_form_assoccl_elemento.grupo g
       	WHERE g.nome = 'FILTROS') AS id_grupo,
        false AS element_required, 4 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
        
INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_name, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ADMIN_RASCUNHOS'
        AND f.nome = 'FORM_DIALOG_ADMIN_RASCUNHOS') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_HTML'
        AND fe.nome = 'FORM_FIELD_HTML_CONTENT_DINAMICO') AS id_elemento,
        'divTreeResultado' as element_name,
        false AS element_required, 5 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
        
INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_name, id_grupo, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ADMIN_RASCUNHOS'
        AND f.nome = 'FORM_DIALOG_ADMIN_RASCUNHOS') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_HTML'
        AND fe.nome = 'FORM_FIELD_HTML_CONTENT_DINAMICO') AS id_elemento,
        'divLegenda' as element_name,
        (SELECT g.id
       	FROM basico_form_assoccl_elemento.grupo g
       	WHERE g.nome = 'LEGENDA') AS id_grupo,
        false AS element_required, 6 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
        
INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_name, id_grupo, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ADMIN_RASCUNHOS'
        AND f.nome = 'FORM_DIALOG_ADMIN_RASCUNHOS') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON') AS id_elemento,
        'htmlButtonAbrir' as element_name,
        (SELECT g.id
       	FROM basico_form_assoccl_elemento.grupo g
       	WHERE g.nome = 'ACOES') AS id_grupo,
        false AS element_required, 7 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
        
INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_name, id_grupo, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ADMIN_RASCUNHOS'
        AND f.nome = 'FORM_DIALOG_ADMIN_RASCUNHOS') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON') AS id_elemento,
        'htmlButtonFinalizar' as element_name,
        (SELECT g.id
       	FROM basico_form_assoccl_elemento.grupo g
       	WHERE g.nome = 'ACOES') AS id_grupo,
        false AS element_required, 8 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
        
INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_name, id_grupo, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ADMIN_RASCUNHOS'
        AND f.nome = 'FORM_DIALOG_ADMIN_RASCUNHOS') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON') AS id_elemento,
        'htmlButtonDescartar' as element_name,
        (SELECT g.id
       	FROM basico_form_assoccl_elemento.grupo g
       	WHERE g.nome = 'ACOES') AS id_grupo,
        false AS element_required, 9 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_name, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ADMIN_RASCUNHOS'
        AND f.nome = 'FORM_DIALOG_ADMIN_RASCUNHOS') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON') AS id_elemento,
        'htmlButtonFechar' as element_name,
        false AS element_required, 10 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;  
        
INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO'
        AND f.nome = 'FORM_ACEITE_TERMOS_USO') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_SIMPLE_TEXT_AREA_TERMOS_USO') AS id_elemento,
        false AS element_required, 1 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
        
INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, id_grupo, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO'
        AND f.nome = 'FORM_ACEITE_TERMOS_USO') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_HTML'
        AND fe.nome = 'FORM_FIELD_HTML_LINKS') AS id_elemento,
        (SELECT g.id
       	FROM basico_form_assoccl_elemento.grupo g
       	WHERE g.nome = 'DOWNLOAD') AS id_grupo,
        false AS element_required, 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
        
INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, id_grupo, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO'
        AND f.nome = 'FORM_ACEITE_TERMOS_USO') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_VALIDATION_TEXT_BOX_ACEITE_TERMOS_USO') AS id_elemento,
        (SELECT g.id
       	FROM basico_form_assoccl_elemento.grupo g
       	WHERE g.nome = 'ACEITE') AS id_grupo,
        true AS element_required, 3 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
        
INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO'
        AND f.nome = 'FORM_ACEITE_TERMOS_USO') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_SUBMIT') AS id_elemento,
        false AS element_required, 4 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
        
INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO'
        AND f.nome = 'FORM_ACEITE_TERMOS_USO') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_CANCELAR') AS id_elemento,
        false AS element_required, 5 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO'
        AND f.nome = 'FORM_TROCA_DE_SENHA') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_PASSWORD_TEXT_BOX_SENHA_ATUAL') AS id_elemento, 
        true AS element_required, 1 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO'
        AND f.nome = 'FORM_TROCA_DE_SENHA') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_PASSWORD_TEXT_BOX_NOVA_SENHA') AS id_elemento,
        true AS element_required, 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, id_grupo, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO'
        AND f.nome = 'FORM_TROCA_DE_SENHA') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_HTML'
        AND fe.nome = 'FORM_FIELD_HTML_PASSWORD_STRENGTH_CHECKER') AS id_elemento,
        (SELECT g.id
       	FROM basico_form_assoccl_elemento.grupo g
       	WHERE g.nome = 'DADOS_USUARIO_CONTA_TROCA_DE_SENHA') AS id_grupo,
        false AS element_required, 3 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO'
        AND f.nome = 'FORM_TROCA_DE_SENHA') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_PASSWORD_TEXT_BOX_CONFIRMACAO_NOVA_SENHA') AS id_elemento,
        true AS element_required, 4 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO'
        AND f.nome = 'FORM_TROCA_DE_SENHA') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_SUBMIT') AS id_elemento,
        false AS element_required, 5 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_SUGESTAO_LOGIN'
        AND f.nome = 'FORM_DIALOG_SUGESTAO_LOGIN') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_RADIO_BUTTON_SUGESTAO_LOGIN') AS id_elemento,
        false AS element_required, 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
        
INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_SUGESTAO_LOGIN'
        AND f.nome = 'FORM_DIALOG_SUGESTAO_LOGIN') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_HTML'
        AND fe.nome = 'FORM_LINHA_HORIZONTAL') AS id_elemento,
        false AS element_required, 3 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
        
INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_SUGESTAO_LOGIN'
        AND f.nome = 'FORM_DIALOG_SUGESTAO_LOGIN') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON') AS id_elemento,
        false AS element_required, 4 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_SUGESTAO_LOGIN'
        AND f.nome = 'FORM_DIALOG_SUGESTAO_LOGIN') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_CLOSE_DIALOG') AS id_elemento,
        false AS element_required, 5 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_BIOMETRICOS'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_BIOMETRICOS') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_RADIO_BUTTON_SEXO') AS id_elemento,
        false AS element_required, 1 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;        
        
INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_BIOMETRICOS'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_BIOMETRICOS') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_FILTERING_SELECT_RACA') AS id_elemento,
        false AS element_required, 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
        
INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_BIOMETRICOS'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_BIOMETRICOS') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_NUMBER_TEXT_BOX_ALTURA') AS id_elemento,
        false AS element_required, 3 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_BIOMETRICOS'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_BIOMETRICOS') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_NUMBER_TEXT_BOX_PESO') AS id_elemento,
        false AS element_required, 4 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
        
INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_BIOMETRICOS'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_BIOMETRICOS') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_FILTERING_SELECT_TIPO_SANGUINEO') AS id_elemento,
        false AS element_required, 5 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
        
INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_BIOMETRICOS'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_BIOMETRICOS') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_SIMPLE_TEXT_AREA_HISTORICO_MEDICO') AS id_elemento,
        false AS element_required, 6 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
        
INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_BIOMETRICOS'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_BIOMETRICOS') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_SUBMIT') AS id_elemento,
        false AS element_required, 7 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;        

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_DOCUMENTOS_IDENTIFICACAO'
        AND f.nome = 'FORM_DIALOG_DOCUMENTOS_IDENTIFICACAO') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_HTML'
        AND fe.nome = 'FORM_LINHA_HORIZONTAL') AS id_elemento,
        false AS element_required, 1 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_DOCUMENTOS_IDENTIFICACAO'
        AND f.nome = 'FORM_DIALOG_DOCUMENTOS_IDENTIFICACAO') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND fe.nome = 'FORM_BUTTON_DIALOG_DOJO') AS id_elemento,
        false AS element_required, 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
        
INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_DOCUMENTOS_IDENTIFICACAO'
        AND f.nome = 'FORM_DIALOG_DOCUMENTOS_IDENTIFICACAO') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_CLOSE_DIALOG') AS id_elemento,
        false AS element_required, 3 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_DOCUMENTOS_IDENTIFICACAO'
        AND f.nome = 'FORM_DIALOG_DOCUMENTO') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_VALIDATION_TEXT_BOX_NUMERO_DOCUMENTO') AS id_elemento, false AS element_required, 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
        
INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_DOCUMENTOS_IDENTIFICACAO'
        AND f.nome = 'FORM_DIALOG_DOCUMENTO') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_SUBMIT') AS id_elemento, false AS element_required, 5 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
        
INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_DOCUMENTOS_IDENTIFICACAO'
        AND f.nome = 'FORM_DIALOG_DOCUMENTO') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_RESET') AS id_elemento,
        false AS element_required, 6 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, id_grupo,element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO'
        AND f.nome = 'FORM_CADASTRAR_USUARIO_VALIDADO') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_VALIDATION_TEXT_BOX_NOME_USUARIO') AS id_elemento,
        (SELECT g.id
       	FROM basico_form_assoccl_elemento.grupo g
       	WHERE g.nome = 'DADOS_USUARIO_DADOS_PESSOAIS') AS id_grupo,
        true AS element_required, 1 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, id_grupo, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO'
        AND f.nome = 'FORM_CADASTRAR_USUARIO_VALIDADO') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_DATE_TEXT_BOX_DATA_NASCIMENTO') AS id_elemento,
        (SELECT g.id
       	FROM basico_form_assoccl_elemento.grupo g
       	WHERE g.nome = 'DADOS_USUARIO_DADOS_PESSOAIS') AS id_grupo,
        true AS element_required, 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, id_grupo, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO'
        AND f.nome = 'FORM_CADASTRAR_USUARIO_VALIDADO') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_RADIO_BUTTON_SEXO') AS id_elemento,
        (SELECT g.id
       	FROM basico_form_assoccl_elemento.grupo g
       	WHERE g.nome = 'DADOS_USUARIO_DADOS_PESSOAIS') AS id_grupo,
        true AS element_required, 3 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
        
INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, id_grupo, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO'
        AND f.nome = 'FORM_CADASTRAR_USUARIO_VALIDADO') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_VALIDATION_TEXT_BOX_LOGIN') AS id_elemento,
        (SELECT g.id
       	FROM basico_form_assoccl_elemento.grupo g
       	WHERE g.nome = 'DADOS_USUARIO_DADOS_USUARIO') AS id_grupo,
        true AS element_required, 4 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
        
INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, id_grupo, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO'
        AND f.nome = 'FORM_CADASTRAR_USUARIO_VALIDADO') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_HTML'
        AND fe.nome = 'FORM_FIELD_HTML_LOGIN_DISPONIBILIDADE') AS id_elemento,
        (SELECT g.id
       	FROM basico_form_assoccl_elemento.grupo g
       	WHERE g.nome = 'DADOS_USUARIO_DADOS_USUARIO') AS id_grupo,
        false AS element_required, 5 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
        
INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, id_grupo, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO'
        AND f.nome = 'FORM_CADASTRAR_USUARIO_VALIDADO') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_PASSWORD_TEXT_BOX_SENHA_WITH_CHECKER') AS id_elemento,
        (SELECT g.id
       	FROM basico_form_assoccl_elemento.grupo g
       	WHERE g.nome = 'DADOS_USUARIO_DADOS_USUARIO') AS id_grupo,
        true AS element_required, 6 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
        
INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, id_grupo, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO'
        AND f.nome = 'FORM_CADASTRAR_USUARIO_VALIDADO') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_HTML'
        AND fe.nome = 'FORM_FIELD_HTML_PASSWORD_STRENGTH_CHECKER') AS id_elemento,
        (SELECT g.id
       	FROM basico_form_assoccl_elemento.grupo g
       	WHERE g.nome = 'DADOS_USUARIO_DADOS_USUARIO') AS id_grupo,
        false AS element_required, 7 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, id_grupo, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO'
        AND f.nome = 'FORM_CADASTRAR_USUARIO_VALIDADO') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_PASSWORD_TEXT_BOX_SENHA_CONFIRMACAO') AS id_elemento,
        (SELECT g.id
       	FROM basico_form_assoccl_elemento.grupo g
       	WHERE g.nome = 'DADOS_USUARIO_DADOS_USUARIO') AS id_grupo,
        true AS element_required, 8 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
                     
INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO'
        AND f.nome = 'FORM_CADASTRAR_USUARIO_VALIDADO') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_SUBMIT') AS id_elemento,
        false AS element_required, 9 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
        
INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_ACADEMICOS'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_ACADEMICOS') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_FILTERING_SELECT_CATEGORIA_BOLSA_CNPQ') AS id_elemento, false AS element_required, 1 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, id_grupo, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_ACADEMICOS'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_ACADEMICOS') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_FILTERING_SELECT_MAIOR_TITULACAO') AS id_elemento,
        (SELECT g.id
       	FROM basico_form_assoccl_elemento.grupo g
       	WHERE g.nome = 'DADOS_USUARIO_DADOS_ACADEMICOS_MAIOR_TITULACAO') AS id_grupo,
        false AS element_required, 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
        
INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, id_grupo, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_ACADEMICOS'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_ACADEMICOS') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_FILTERING_SELECT_INSTITUICAO_QUE_CONCEDEU') AS id_elemento,
        (SELECT g.id
       	FROM basico_form_assoccl_elemento.grupo g
       	WHERE g.nome = 'DADOS_USUARIO_DADOS_ACADEMICOS_MAIOR_TITULACAO') AS id_grupo,
        false AS element_required, 3 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, id_grupo, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_ACADEMICOS'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_ACADEMICOS') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_FILTERING_SELECT_AREA_DE_CONHECIMENTO') AS id_elemento,     
       (SELECT g.id
       	FROM basico_form_assoccl_elemento.grupo g
       	WHERE g.nome = 'DADOS_USUARIO_DADOS_ACADEMICOS_MAIOR_TITULACAO') AS id_grupo,
        false AS element_required, 4 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;        
        
INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, id_grupo, element_required, ordem, rowinfo)
SELECT (SELECT f.id
	    FROM basico.formulario f
	    LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
	    LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	    WHERE t.nome = 'FORMULARIO'
	    AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_ACADEMICOS'
	    AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_ACADEMICOS') AS id_formulario,
	   (SELECT fe.id
	    FROM basico_formulario.elemento fe
	    LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
	    LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	    WHERE t.nome = 'FORMULARIO'
	    AND c.nome = 'FORMULARIO_ELEMENTO'
	    AND fe.nome = 'FORM_FIELD_VALIDATION_TEXT_BOX_NOME_CURSO') AS id_elemento,
       (SELECT g.id
       	FROM basico_form_assoccl_elemento.grupo g
       	WHERE g.nome = 'DADOS_USUARIO_DADOS_ACADEMICOS_MAIOR_TITULACAO') AS id_grupo,
	    false AS element_required, 5 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;           	    

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, id_grupo, element_required, ordem, rowinfo)
SELECT (SELECT f.id
	    FROM basico.formulario f
	    LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
	    LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	    WHERE t.nome = 'FORMULARIO'
	    AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_ACADEMICOS'
	    AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_ACADEMICOS') AS id_formulario,
	   (SELECT fe.id
	    FROM basico_formulario.elemento fe
	    LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
	    LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	    WHERE t.nome = 'FORMULARIO'
	    AND c.nome = 'FORMULARIO_ELEMENTO'
	    AND fe.nome = 'FORM_FIELD_DATE_TEXT_BOX_DATA_OBTENCAO') AS id_elemento,   
       (SELECT g.id
       	FROM basico_form_assoccl_elemento.grupo g
       	WHERE g.nome = 'DADOS_USUARIO_DADOS_ACADEMICOS_MAIOR_TITULACAO') AS id_grupo,	    
	    false AS element_required, 6 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;  

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, id_grupo, element_required, ordem, rowinfo)
SELECT (SELECT f.id
	    FROM basico.formulario f
	    LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
	    LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	    WHERE t.nome = 'FORMULARIO'
	    AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_ACADEMICOS'
	    AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_ACADEMICOS') AS id_formulario,
	   (SELECT fe.id
	    FROM basico_formulario.elemento fe
	    LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
	    LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	    WHERE t.nome = 'FORMULARIO'
	    AND c.nome = 'FORMULARIO_ELEMENTO'
	    AND fe.nome = 'FORM_FIELD_FILTERING_SELECT_TITULACAO_ESPERADA') AS id_elemento,
	    (SELECT g.id
       	FROM basico_form_assoccl_elemento.grupo g
       	WHERE g.nome = 'DADOS_USUARIO_DADOS_ACADEMICOS_CURSO_ATUAL') AS id_grupo,	    
	    false AS element_required, 7 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
	    
INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, id_grupo, element_required, ordem, rowinfo)
SELECT (SELECT f.id
	    FROM basico.formulario f
	    LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
	    LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	    WHERE t.nome = 'FORMULARIO'
	    AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_ACADEMICOS'
	    AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_ACADEMICOS') AS id_formulario,
	   (SELECT fe.id
	    FROM basico_formulario.elemento fe
	    LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
	    LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	    WHERE t.nome = 'FORMULARIO'
	    AND c.nome = 'FORMULARIO_ELEMENTO'
	    AND fe.nome = 'FORM_FIELD_FILTERING_SELECT_INSTITUICAO_CURSO_ATUAL') AS id_elemento,   
       (SELECT g.id
       	FROM basico_form_assoccl_elemento.grupo g
       	WHERE g.nome = 'DADOS_USUARIO_DADOS_ACADEMICOS_CURSO_ATUAL') AS id_grupo,	    
	    false AS element_required, 8 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
	    
INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, id_grupo, element_required, ordem, rowinfo)
SELECT (SELECT f.id
	    FROM basico.formulario f
	    LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
	    LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	    WHERE t.nome = 'FORMULARIO'
	    AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_ACADEMICOS'
	    AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_ACADEMICOS') AS id_formulario,
	   (SELECT fe.id
	    FROM basico_formulario.elemento fe
	    LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
	    LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	    WHERE t.nome = 'FORMULARIO'
	    AND c.nome = 'FORMULARIO_ELEMENTO'
	    AND fe.nome = 'FORM_FIELD_FILTERING_SELECT_AREA_CONHECIMENTO_CURSO_ATUAL') AS id_elemento,  
       (SELECT g.id
       	FROM basico_form_assoccl_elemento.grupo g
       	WHERE g.nome = 'DADOS_USUARIO_DADOS_ACADEMICOS_CURSO_ATUAL') AS id_grupo,	    
	    false AS element_required, 9 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
	    
INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, id_grupo, element_required, ordem, rowinfo)
SELECT (SELECT f.id
	    FROM basico.formulario f
	    LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
	    LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	    WHERE t.nome = 'FORMULARIO'
	    AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_ACADEMICOS'
	    AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_ACADEMICOS') AS id_formulario,
	   (SELECT fe.id
	    FROM basico_formulario.elemento fe
	    LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
	    LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	    WHERE t.nome = 'FORMULARIO'
	    AND c.nome = 'FORMULARIO_ELEMENTO'
	    AND fe.nome = 'FORM_FIELD_VALIDATION_TEXT_BOX_NOME_CURSO_ATUAL') AS id_elemento,   
       (SELECT g.id
       	FROM basico_form_assoccl_elemento.grupo g
       	WHERE g.nome = 'DADOS_USUARIO_DADOS_ACADEMICOS_CURSO_ATUAL') AS id_grupo,	    
	    false AS element_required, 10 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
	    
INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, id_grupo, element_required, ordem, rowinfo)
SELECT (SELECT f.id
	    FROM basico.formulario f
	    LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
	    LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	    WHERE t.nome = 'FORMULARIO'
	    AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_ACADEMICOS'
	    AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_ACADEMICOS') AS id_formulario,
	   (SELECT fe.id
	    FROM basico_formulario.elemento fe
	    LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
	    LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	    WHERE t.nome = 'FORMULARIO'
	    AND c.nome = 'FORMULARIO_ELEMENTO'
	    AND fe.nome = 'FORM_FIELD_FILTERING_SELECT_PERIODO') AS id_elemento,
       (SELECT g.id
       	FROM basico_form_assoccl_elemento.grupo g
       	WHERE g.nome = 'DADOS_USUARIO_DADOS_ACADEMICOS_CURSO_ATUAL') AS id_grupo,	    
	    false AS element_required, 11 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
	    
INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, id_grupo, element_required, ordem, rowinfo)
SELECT (SELECT f.id
	    FROM basico.formulario f
	    LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
	    LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	    WHERE t.nome = 'FORMULARIO'
	    AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_ACADEMICOS'
	    AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_ACADEMICOS') AS id_formulario,
	   (SELECT fe.id
	    FROM basico_formulario.elemento fe
	    LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
	    LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	    WHERE t.nome = 'FORMULARIO'
	    AND c.nome = 'FORMULARIO_ELEMENTO'
	    AND fe.nome = 'FORM_FIELD_FILTERING_SELECT_TURNO') AS id_elemento,  
       (SELECT g.id
       	FROM basico_form_assoccl_elemento.grupo g
       	WHERE g.nome = 'DADOS_USUARIO_DADOS_ACADEMICOS_CURSO_ATUAL') AS id_grupo,	    
	    false AS element_required, 12 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;  
    
INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, id_grupo, element_name, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_ACADEMICOS'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_ACADEMICOS') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND fe.nome = 'FORM_BUTTON_DIALOG_DOJO') AS id_elemento, 
       (SELECT g.id
       	FROM basico_form_assoccl_elemento.grupo g
       	WHERE g.nome = 'DADOS_USUARIO_DADOS_ACADEMICOS_COORDENACAO_POS_GRADUACAO') AS id_grupo,
       	'FormButtonDialogDojoCoordenacaoPosGraduacao' AS element_name,
        false AS element_required, 13 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
        
INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, id_grupo, element_name, element_required, ordem, rowinfo)
SELECT (SELECT f.id 
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_ACADEMICOS'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_ACADEMICOS') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND fe.nome = 'FORM_BUTTON_DIALOG_DOJO') AS id_elemento, 
       (SELECT g.id
       	FROM basico_form_assoccl_elemento.grupo g
       	WHERE g.nome = 'DADOS_USUARIO_DADOS_ACADEMICOS_ORIENTACOES') AS id_grupo,
       	'FormButtonDialogDojoOrientacoes' AS element_name, 
        false AS element_required, 14 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;       
        
INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_COORDENACAO_POS_GRADUACAO'
        AND f.nome = 'FORM_DIALOG_COORDENACAO_POS_GRADUACAO') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_HTML'
        AND fe.nome = 'FORM_LINHA_HORIZONTAL') AS id_elemento,
        false AS element_required, 1 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;        
        
INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id 
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_COORDENACAO_POS_GRADUACAO'
        AND f.nome = 'FORM_DIALOG_COORDENACAO_POS_GRADUACAO') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_CLOSE_DIALOG') AS id_elemento, 
        false AS element_required, 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;               

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_ORIENTACOES'
        AND f.nome = 'FORM_DIALOG_ORIENTACOES') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_HTML'
        AND fe.nome = 'FORM_LINHA_HORIZONTAL') AS id_elemento,
        false AS element_required, 1 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;        
        
INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id 
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_ORIENTACOES'
        AND f.nome = 'FORM_DIALOG_ORIENTACOES') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_CLOSE_DIALOG') AS id_elemento,      
        false AS element_required, 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;               
                 
INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
	    FROM basico.formulario f
	    LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
	    LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	    WHERE t.nome = 'FORMULARIO'
	    AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_PROFISSIONAIS'
	    AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_PROFISSIONAIS') AS id_formulario,
	   (SELECT fe.id
	    FROM basico_formulario.elemento fe
	    LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
	    LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	    WHERE t.nome = 'FORMULARIO'
	    AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
	    AND fe.nome = 'FORM_BUTTON_DIALOG_DOJO') AS id_elemento, 
	    false AS element_required, 1 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;        

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL'
        AND f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_FILTERING_SELECT_VINCULO_PROFISSIONAL') AS id_elemento,
        true AS element_required, 1 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
        
INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL'
        AND f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_FILTERING_SELECT_PROFISSAO') AS id_elemento,
        true AS element_required, 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL'
        AND f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_FILTERING_SELECT_PJ_VINCULO') AS id_elemento,
        false AS element_required, 3 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL'
        AND f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_FILTERING_SELECT_REGIME_TRABALHO') AS id_elemento,
        true AS element_required, 4 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL'
        AND f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_VALIDATION_TEXT_BOX_CARGO') AS id_elemento,
        true AS element_required, 5 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL'
        AND f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_VALIDATION_TEXT_BOX_FUNCAO') AS id_elemento,
        true AS element_required, 6 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
        
INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL'
        AND f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_SIMPLE_TEXT_AREA_ATIVIDADES_DESENVOLVIDAS') AS id_elemento,
        false AS element_required, 7 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL'
        AND f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_DATE_TEXT_BOX_DATA_ADMISSAO') AS id_elemento,
        false AS element_required, 8 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL'
        AND f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_DATE_TEXT_BOX_DATA_DESVINCULACAO') AS id_elemento,
        false AS element_required, 9 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL'
        AND f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_NUMBER_TEXT_BOX_CARGA_HORARIA_SEMANAL') AS id_elemento,
        false AS element_required, 10 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL'
        AND f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_CURRENCY_TEXT_BOX_SALARIO_BRUTO') AS id_elemento,
        false AS element_required, 11 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL'
        AND f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_CHECK_BOX_DEDICACAO_EXCLUSIVA') AS id_elemento, 
        false AS element_required, 12 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
        
INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL'
        AND f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_SIMPLE_TEXT_AREA_OUTRAS_INFORMACOES') AS id_elemento,
        false AS element_required, 13 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, id_grupo, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL'
        AND f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND fe.nome = 'FORM_BUTTON_DIALOG_DOJO') AS id_elemento,
       (SELECT g.id
       	FROM basico_form_assoccl_elemento.grupo g
       	WHERE g.nome = 'DADOS_USUARIO_DADOS_PROFISSIONAIS_VINCULO_PROFISSIONAL_INFORMACOES_CONTATO') AS id_grupo,
        false AS element_required, 14 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, id_grupo, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL'
        AND f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND fe.nome = 'FORM_BUTTON_DIALOG_DOJO') AS id_elemento,
       (SELECT g.id
       	FROM basico_form_assoccl_elemento.grupo g
       	WHERE g.nome = 'DADOS_USUARIO_DADOS_PROFISSIONAIS_VINCULO_PROFISSIONAL_INFORMACOES_CONTATO') AS id_grupo,
        false AS element_required, 15 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, id_grupo, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL'
        AND f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND fe.nome = 'FORM_BUTTON_DIALOG_DOJO') AS id_elemento,
       (SELECT g.id
       	FROM basico_form_assoccl_elemento.grupo g
       	WHERE g.nome = 'DADOS_USUARIO_DADOS_PROFISSIONAIS_VINCULO_PROFISSIONAL_INFORMACOES_CONTATO') AS id_grupo,
        false AS element_required, 16 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, id_grupo, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL'
        AND f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND fe.nome = 'FORM_BUTTON_DIALOG_DOJO') AS id_elemento,
       (SELECT g.id
       	FROM basico_form_assoccl_elemento.grupo g
       	WHERE g.nome = 'DADOS_USUARIO_DADOS_PROFISSIONAIS_VINCULO_PROFISSIONAL_INFORMACOES_CONTATO') AS id_grupo,
        false AS element_required, 17 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL'
        AND f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_HTML'
        AND fe.nome = 'FORM_LINHA_HORIZONTAL') AS id_elemento,
        false AS element_required, 18 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL'
        AND f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_SUBMIT') AS id_elemento,
        false AS element_required, 19 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL'
        AND f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_RESET') AS id_elemento,
        false AS element_required, 20 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL_TELEFONES_PROFISSIONAIS'
        AND f.nome = 'FORM_DIALOG_TELEFONES_PROFISSIONAIS') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_HTML'
        AND fe.nome = 'FORM_LINHA_HORIZONTAL') AS id_elemento,
        false AS element_required, 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL_TELEFONES_PROFISSIONAIS'
        AND f.nome = 'FORM_DIALOG_TELEFONES_PROFISSIONAIS') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND fe.nome = 'FORM_BUTTON_DIALOG_DOJO') AS id_elemento,
        false AS element_required, 3 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL_TELEFONES_PROFISSIONAIS'
        AND f.nome = 'FORM_DIALOG_TELEFONES_PROFISSIONAIS') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_CLOSE_DIALOG') AS id_elemento,
        false AS element_required, 4 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL_EMAILS_PROFISSIONAIS'
        AND f.nome = 'FORM_DIALOG_EMAILS_PROFISSIONAIS') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_HTML'
        AND fe.nome = 'FORM_LINHA_HORIZONTAL') AS id_elemento,
        false AS element_required, 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL_EMAILS_PROFISSIONAIS'
        AND f.nome = 'FORM_DIALOG_EMAILS_PROFISSIONAIS') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND fe.nome = 'FORM_BUTTON_DIALOG_DOJO') AS id_elemento,
        false AS element_required, 3 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL_EMAILS_PROFISSIONAIS'
        AND f.nome = 'FORM_DIALOG_EMAILS_PROFISSIONAIS') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_CLOSE_DIALOG') AS id_elemento,
        false AS element_required, 4 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL_WEBSITES_PROFISSIONAIS'
        AND f.nome = 'FORM_DIALOG_WEBSITES_PROFISSIONAIS') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_HTML'
        AND fe.nome = 'FORM_LINHA_HORIZONTAL') AS id_elemento,
        false AS element_required, 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;       
        
INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL_WEBSITES_PROFISSIONAIS'
        AND f.nome = 'FORM_DIALOG_WEBSITES_PROFISSIONAIS') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_CLOSE_DIALOG') AS id_elemento,
        false AS element_required, 3 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
        
INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL_WEBSITES_PROFISSIONAIS'
        AND f.nome = 'FORM_DIALOG_WEBSITES_PROFISSIONAIS') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND fe.nome = 'FORM_BUTTON_DIALOG_DOJO') AS id_elemento,
        false AS element_required, 4 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL_ENDERECOS_PROFISSIONAIS'
        AND f.nome = 'FORM_DIALOG_ENDERECOS_PROFISSIONAIS') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_HTML'
        AND fe.nome = 'FORM_LINHA_HORIZONTAL') AS id_elemento,
        false AS element_required, 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;       

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL_ENDERECOS_PROFISSIONAIS'
        AND f.nome = 'FORM_DIALOG_ENDERECOS_PROFISSIONAIS') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_CLOSE_DIALOG') AS id_elemento,
        false AS element_required, 3 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL_ENDERECOS_PROFISSIONAIS'
        AND f.nome = 'FORM_DIALOG_ENDERECOS_PROFISSIONAIS') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND fe.nome = 'FORM_BUTTON_DIALOG_DOJO') AS id_elemento,
        false AS element_required, 4 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_TELEFONE'
        AND f.nome = 'FORM_DIALOG_TELEFONE') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_FILTERING_SELECT_TELEFONE_TIPO') AS id_elemento,
        true AS element_required, 1 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_TELEFONE'
        AND f.nome = 'FORM_DIALOG_TELEFONE') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_NUMBER_TEXT_BOX_TELEFONE_CODIGO_PAIS') AS id_elemento,
        true AS element_required, 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_TELEFONE'
        AND f.nome = 'FORM_DIALOG_TELEFONE') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_NUMBER_TEXT_BOX_TELEFONE_CODIGO_AREA') AS id_elemento,
        true AS element_required, 3 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_TELEFONE'
        AND f.nome = 'FORM_DIALOG_TELEFONE') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_NUMBER_TEXT_BOX_TELEFONE') AS id_elemento,
        true AS element_required, 4 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_TELEFONE'
        AND f.nome = 'FORM_DIALOG_TELEFONE') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_NUMBER_TEXT_BOX_TELEFONE_RAMAL') AS id_elemento,
        false AS element_required, 5 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_TELEFONE'
        AND f.nome = 'FORM_DIALOG_TELEFONE') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_SIMPLE_TEXT_AREA_TELEFONE_DESCRICAO') AS id_elemento,
        false AS element_required, 6 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_TELEFONE'
        AND f.nome = 'FORM_DIALOG_TELEFONE') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_HTML'
        AND fe.nome = 'FORM_LINHA_HORIZONTAL') AS id_elemento,
        false AS element_required, 7 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_TELEFONE'
        AND f.nome = 'FORM_DIALOG_TELEFONE') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_SUBMIT') AS id_elemento,
        false AS element_required, 8 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_TELEFONE'
        AND f.nome = 'FORM_DIALOG_TELEFONE') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_RESET') AS id_elemento,
        false AS element_required, 9 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_EMAIL'
        AND f.nome = 'FORM_DIALOG_EMAIL') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_FILTERING_SELECT_EMAIL_TIPO') AS id_elemento,
        true AS element_required, 1 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_EMAIL'
        AND f.nome = 'FORM_DIALOG_EMAIL') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_VALIDATION_TEXT_BOX_EMAIL_USUARIO') AS id_elemento,
        true AS element_required, 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_EMAIL'
        AND f.nome = 'FORM_DIALOG_EMAIL') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_SIMPLE_TEXT_AREA_EMAIL_DESCRICAO') AS id_elemento,
        false AS element_required, 3 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_EMAIL'
        AND f.nome = 'FORM_DIALOG_EMAIL') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_HTML'
        AND fe.nome = 'FORM_LINHA_HORIZONTAL') AS id_elemento,
        false AS element_required, 4 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_EMAIL'
        AND f.nome = 'FORM_DIALOG_EMAIL') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_SUBMIT') AS id_elemento,
        false AS element_required, 5 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_EMAIL'
        AND f.nome = 'FORM_DIALOG_EMAIL') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_RESET') AS id_elemento,
        false AS element_required, 6 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
        
INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_WEBSITE'
        AND f.nome = 'FORM_DIALOG_WEBSITE') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_FILTERING_SELECT_WEBSITE_TIPO') AS id_elemento,
        true AS element_required, 1 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_WEBSITE'
        AND f.nome = 'FORM_DIALOG_WEBSITE') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_VALIDATION_TEXT_BOX_WEBSITE_ENDERECO') AS id_elemento,
        true AS element_required, 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_WEBSITE'
        AND f.nome = 'FORM_DIALOG_WEBSITE') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_SIMPLE_TEXT_AREA_WEBSITE_DESCRICAO') AS id_elemento,
        false AS element_required, 3 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_WEBSITE'
        AND f.nome = 'FORM_DIALOG_WEBSITE') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_HTML'
        AND fe.nome = 'FORM_LINHA_HORIZONTAL') AS id_elemento,
        false AS element_required, 4 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_WEBSITE'
        AND f.nome = 'FORM_DIALOG_WEBSITE') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_SUBMIT') AS id_elemento,
        false AS element_required, 5 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_WEBSITE'
        AND f.nome = 'FORM_DIALOG_WEBSITE') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_RESET') AS id_elemento,
        false AS element_required, 6 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, id_grupo, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_CONTA'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_CONTA') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_FILTERING_SELECT_PERFIS_VINCULADOS_DISPONIVEIS') AS id_elemento,
        (SELECT g.id
       	FROM basico_form_assoccl_elemento.grupo g
       	WHERE g.nome = 'DADOS_USUARIO_CONTA_PERFIL_VINCULADO_PADRAO') AS id_grupo,
        false AS element_required, 1 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, id_grupo, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_CONTA'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_CONTA') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_PASSWORD_TEXT_BOX_SENHA_ATUAL') AS id_elemento,
        (SELECT g.id
       	FROM basico_form_assoccl_elemento.grupo g
       	WHERE g.nome = 'DADOS_USUARIO_CONTA_TROCA_DE_SENHA') AS id_grupo,
        false AS element_required, 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, id_grupo, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_CONTA'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_CONTA') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_PASSWORD_TEXT_BOX_NOVA_SENHA') AS id_elemento,
        (SELECT g.id
       	FROM basico_form_assoccl_elemento.grupo g
       	WHERE g.nome = 'DADOS_USUARIO_CONTA_TROCA_DE_SENHA') AS id_grupo,
        false AS element_required, 3 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, id_grupo, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_CONTA'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_CONTA') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_HTML'
        AND fe.nome = 'FORM_FIELD_HTML_PASSWORD_STRENGTH_CHECKER') AS id_elemento,
        (SELECT g.id
       	FROM basico_form_assoccl_elemento.grupo g
       	WHERE g.nome = 'DADOS_USUARIO_CONTA_TROCA_DE_SENHA') AS id_grupo,
        false AS element_required, 4 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, id_grupo, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_CONTA'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_CONTA') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_PASSWORD_TEXT_BOX_CONFIRMACAO_NOVA_SENHA') AS id_elemento,
        (SELECT g.id
       	FROM basico_form_assoccl_elemento.grupo g
       	WHERE g.nome = 'DADOS_USUARIO_CONTA_TROCA_DE_SENHA') AS id_grupo,
        false AS element_required, 5 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_CONTA'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_CONTA') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_HTML'
        AND fe.nome = 'FORM_ELEMENT_HTML_TEXT_INSTRUCOES_MUDANCA_SENHA_SUBFORM_DADOS_USUARIO_CONTA') AS id_elemento,
        false AS element_required, 6 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_CONTA'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_CONTA') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_SUBMIT') AS id_elemento,
        false AS element_required, 7 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO'
        AND f.nome = 'FORM_CADASTRAR_USUARIO_NAO_VALIDADO') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_VALIDATION_TEXT_BOX_NOME_USUARIO') AS id_elemento, true AS element_required, 1 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO'
        AND f.nome = 'FORM_CADASTRAR_USUARIO_NAO_VALIDADO') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_VALIDATION_TEXT_BOX_EMAIL_USUARIO') AS id_elemento, true AS element_required, 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO'
        AND f.nome = 'FORM_CADASTRAR_USUARIO_NAO_VALIDADO') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_CAPTCHA'
        AND fe.nome = 'CAPTCHA_6') AS id_elemento, true AS element_required, 3 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO'
        AND f.nome = 'FORM_CADASTRAR_USUARIO_NAO_VALIDADO') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_SUBMIT') AS id_elemento, false AS element_required, 4 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_LOGIN'
        AND f.nome = 'FORM_AUTENTICACAO_USUARIO') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_VALIDATION_TEXT_BOX_LOGIN') AS id_elemento, true AS element_required, 1 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_LOGIN'
        AND f.nome = 'FORM_AUTENTICACAO_USUARIO') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_PASSWORD_TEXT_BOX_SENHA') AS id_elemento, true AS element_required, 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_LOGIN'
        AND f.nome = 'FORM_AUTENTICACAO_USUARIO') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_CHECKBOX_LOGIN_MANTER_LOGADO') AS id_elemento, false AS element_required, 3 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_LOGIN'
        AND f.nome = 'FORM_AUTENTICACAO_USUARIO') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_HTML'
        AND fe.nome = 'FORM_LINK_PROBLEMAS_LOGON') AS id_elemento, false AS element_required, 4 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_LOGIN'
        AND f.nome = 'FORM_AUTENTICACAO_USUARIO') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_HTML'
        AND fe.nome = 'FORM_LINK_NOVO_USUARIO') AS id_elemento, false AS element_required, 5 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_LOGIN'
        AND f.nome = 'FORM_AUTENTICACAO_USUARIO') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_HTML'
        AND fe.nome = 'FORM_LINHA_HORIZONTAL') AS id_elemento,
        false AS element_required, 6 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_LOGIN'
        AND f.nome = 'FORM_AUTENTICACAO_USUARIO') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_SUBMIT') AS id_elemento,
        false AS element_required, 7 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_LOGIN'
        AND f.nome = 'FORM_AUTENTICACAO_USUARIO') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_RESET') AS id_elemento,
        false AS element_required, 8 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_LOGIN'
        AND f.nome = 'FORM_AUTENTICACAO_USUARIO') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_HIDDEN'
        AND fe.nome = 'FORM_FIELD_HIDDEN_URLREDIRECT') AS id_elemento,
        false AS element_required, 9 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, id_grupo, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_PESSOAIS'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_PESSOAIS') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_PAIS_NASCIMENTO_FILTERING_SELECT') AS id_elemento,
        (SELECT g.id
       	FROM basico_form_assoccl_elemento.grupo g
       	WHERE g.nome = 'DADOS_USUARIO_DADOS_PESSOAIS_DADOS_NASCIMENTO') AS id_grupo,
        false AS element_required, 1 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, id_grupo, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_PESSOAIS'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_PESSOAIS') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_ESTADO_NASCIMENTO_FILTERING_SELECT') AS id_elemento,
        (SELECT g.id
       	FROM basico_form_assoccl_elemento.grupo g
       	WHERE g.nome = 'DADOS_USUARIO_DADOS_PESSOAIS_DADOS_NASCIMENTO') AS id_grupo,
        false AS element_required, 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, id_grupo, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_PESSOAIS'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_PESSOAIS') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_ESTADO_NASCIMENTO_VALIDATION_TEXT_BOX') AS id_elemento,
        (SELECT g.id
       	FROM basico_form_assoccl_elemento.grupo g
       	WHERE g.nome = 'DADOS_USUARIO_DADOS_PESSOAIS_DADOS_NASCIMENTO') AS id_grupo,
        false AS element_required, 3 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, id_grupo, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_PESSOAIS'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_PESSOAIS') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_MUNICIPIO_NASCIMENTO_FILTERING_SELECT') AS id_elemento,
        (SELECT g.id
       	FROM basico_form_assoccl_elemento.grupo g
       	WHERE g.nome = 'DADOS_USUARIO_DADOS_PESSOAIS_DADOS_NASCIMENTO') AS id_grupo,
        false AS element_required, 4 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, id_grupo, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_PESSOAIS'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_PESSOAIS') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_MUNICIPIO_NASCIMENTO_VALIDATION_TEXT_BOX') AS id_elemento,
        (SELECT g.id
       	FROM basico_form_assoccl_elemento.grupo g
       	WHERE g.nome = 'DADOS_USUARIO_DADOS_PESSOAIS_DADOS_NASCIMENTO') AS id_grupo,
        false AS element_required, 5 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, id_grupo, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_PESSOAIS'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_PESSOAIS') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_NOME_PAI_VALIDATION_TEXT_BOX') AS id_elemento,
        (SELECT g.id
       	FROM basico_form_assoccl_elemento.grupo g
       	WHERE g.nome = 'DADOS_USUARIO_DADOS_PESSOAIS_FILIACAO') AS id_grupo,
        false AS element_required, 6 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, id_grupo, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_PESSOAIS'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_PESSOAIS') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_NOME_MAE_VALIDATION_TEXT_BOX') AS id_elemento,
        (SELECT g.id
       	FROM basico_form_assoccl_elemento.grupo g
       	WHERE g.nome = 'DADOS_USUARIO_DADOS_PESSOAIS_FILIACAO') AS id_grupo,
        false AS element_required, 7 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, id_grupo, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_PESSOAIS'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_PESSOAIS') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND fe.nome = 'FORM_BUTTON_DIALOG_DOJO') AS id_elemento,
        (SELECT g.id
       	FROM basico_form_assoccl_elemento.grupo g
       	WHERE g.nome = 'DADOS_USUARIO_DADOS_PESSOAIS_INFORMACOES_CONTATO') AS id_grupo,
        false AS element_required, 8 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_PESSOAIS_DOCUMENTOS_PESSOAIS'
        AND f.nome = 'FORM_DIALOG_DOCUMENTOS_PESSOAIS') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_HTML'
        AND fe.nome = 'FORM_LINHA_HORIZONTAL') AS id_elemento,
        false AS element_required, 1 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_PESSOAIS_DOCUMENTOS_PESSOAIS'
        AND f.nome = 'FORM_DIALOG_DOCUMENTOS_PESSOAIS') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND fe.nome = 'FORM_BUTTON_DIALOG_DOJO') AS id_elemento,
        false AS element_required, 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_PESSOAIS_DOCUMENTOS_PESSOAIS'
        AND f.nome = 'FORM_DIALOG_DOCUMENTOS_PESSOAIS') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_CLOSE_DIALOG') AS id_elemento,
        false AS element_required, 3 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, id_grupo, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_PESSOAIS'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_PESSOAIS') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND fe.nome = 'FORM_BUTTON_DIALOG_DOJO') AS id_elemento,
        (SELECT g.id
       	FROM basico_form_assoccl_elemento.grupo g
       	WHERE g.nome = 'DADOS_USUARIO_DADOS_PESSOAIS_INFORMACOES_CONTATO') AS id_grupo,
       	false AS element_required, 9 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_PESSOAIS_TELEFONES_PESSOAIS'
        AND f.nome = 'FORM_DIALOG_TELEFONES_PESSOAIS') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_HTML'
        AND fe.nome = 'FORM_LINHA_HORIZONTAL') AS id_elemento,
        false AS element_required, 1 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_PESSOAIS_TELEFONES_PESSOAIS'
        AND f.nome = 'FORM_DIALOG_TELEFONES_PESSOAIS') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND fe.nome = 'FORM_BUTTON_DIALOG_DOJO') AS id_elemento,
        false AS element_required, 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_PESSOAIS_TELEFONES_PESSOAIS'
        AND f.nome = 'FORM_DIALOG_TELEFONES_PESSOAIS') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_CLOSE_DIALOG') AS id_elemento,
        false AS element_required, 3 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, id_grupo, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_PESSOAIS'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_PESSOAIS') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND fe.nome = 'FORM_BUTTON_DIALOG_DOJO') AS id_elemento,
        (SELECT g.id
       	FROM basico_form_assoccl_elemento.grupo g
       	WHERE g.nome = 'DADOS_USUARIO_DADOS_PESSOAIS_INFORMACOES_CONTATO') AS id_grupo,
       	false AS element_required, 10 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_PESSOAIS_EMAILS_PESSOAIS'
        AND f.nome = 'FORM_DIALOG_EMAILS_PESSOAIS') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_HTML'
        AND fe.nome = 'FORM_LINHA_HORIZONTAL') AS id_elemento,
        false AS element_required, 1 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_PESSOAIS_EMAILS_PESSOAIS'
        AND f.nome = 'FORM_DIALOG_EMAILS_PESSOAIS') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND fe.nome = 'FORM_BUTTON_DIALOG_DOJO') AS id_elemento,
        false AS element_required, 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_PESSOAIS_EMAILS_PESSOAIS'
        AND f.nome = 'FORM_DIALOG_EMAILS_PESSOAIS') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_CLOSE_DIALOG') AS id_elemento,
        false AS element_required, 3 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, id_grupo, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_PESSOAIS'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_PESSOAIS') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND fe.nome = 'FORM_BUTTON_DIALOG_DOJO') AS id_elemento,
        (SELECT g.id
       	FROM basico_form_assoccl_elemento.grupo g
       	WHERE g.nome = 'DADOS_USUARIO_DADOS_PESSOAIS_INFORMACOES_CONTATO') AS id_grupo,
       	false AS element_required, 11 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_PESSOAIS_WEBSITES_PESSOAIS'
        AND f.nome = 'FORM_DIALOG_WEBSITES_PESSOAIS') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_HTML'
        AND fe.nome = 'FORM_LINHA_HORIZONTAL') AS id_elemento,
        false AS element_required, 1 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_PESSOAIS_WEBSITES_PESSOAIS'
        AND f.nome = 'FORM_DIALOG_WEBSITES_PESSOAIS') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND fe.nome = 'FORM_BUTTON_DIALOG_DOJO') AS id_elemento,
        false AS element_required, 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_PESSOAIS_WEBSITES_PESSOAIS'
        AND f.nome = 'FORM_DIALOG_WEBSITES_PESSOAIS') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_CLOSE_DIALOG') AS id_elemento,
        false AS element_required, 3 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, id_grupo, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_PESSOAIS'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_PESSOAIS') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND fe.nome = 'FORM_BUTTON_DIALOG_DOJO') AS id_elemento,
        (SELECT g.id
       	FROM basico_form_assoccl_elemento.grupo g
       	WHERE g.nome = 'DADOS_USUARIO_DADOS_PESSOAIS_INFORMACOES_CONTATO') AS id_grupo,
       	false AS element_required, 12 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_PESSOAIS_ENDERECOS_PESSOAIS'
        AND f.nome = 'FORM_DIALOG_ENDERECOS_PESSOAIS') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_HTML'
        AND fe.nome = 'FORM_LINHA_HORIZONTAL') AS id_elemento,
        false AS element_required, 1 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_PESSOAIS_ENDERECOS_PESSOAIS'
        AND f.nome = 'FORM_DIALOG_ENDERECOS_PESSOAIS') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND fe.nome = 'FORM_BUTTON_DIALOG_DOJO') AS id_elemento,
        false AS element_required, 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_PESSOAIS_ENDERECOS_PESSOAIS'
        AND f.nome = 'FORM_DIALOG_ENDERECOS_PESSOAIS') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_CLOSE_DIALOG') AS id_elemento,
        false AS element_required, 3 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_ENDERECO'
        AND f.nome = 'FORM_DIALOG_ENDERECO') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_ENDERECO_TIPO_FILTERING_SELECT') AS id_elemento,
        true AS element_required, 1 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_ENDERECO'
        AND f.nome = 'FORM_DIALOG_ENDERECO') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_ENDERECO_PAIS_FILTERING_SELECT') AS id_elemento,
        true AS element_required, 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_ENDERECO'
        AND f.nome = 'FORM_DIALOG_ENDERECO') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_ENDERECO_ESTADO_FILTERING_SELECT') AS id_elemento,
        true AS element_required, 3 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_ENDERECO'
        AND f.nome = 'FORM_DIALOG_ENDERECO') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_ENDERECO_ESTADO_VALIDATION_TEXT_BOX') AS id_elemento,
        true AS element_required, 4 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_ENDERECO'
        AND f.nome = 'FORM_DIALOG_ENDERECO') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_ENDERECO_MUNICIPIO_FILTERING_SELECT') AS id_elemento,
        true AS element_required, 5 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_ENDERECO'
        AND f.nome = 'FORM_DIALOG_ENDERECO') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_ENDERECO_MUNICIPIO_VALIDATION_TEXT_BOX') AS id_elemento,
        true AS element_required, 6 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_ENDERECO'
        AND f.nome = 'FORM_DIALOG_ENDERECO') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_ENDERECO_CEP_VALIDATION_TEXT_BOX') AS id_elemento,
        true AS element_required, 7 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_ENDERECO'
        AND f.nome = 'FORM_DIALOG_ENDERECO') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_ENDERECO_LOGRADOURO_VALIDATION_TEXT_BOX') AS id_elemento,
        true AS element_required, 8 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_ENDERECO'
        AND f.nome = 'FORM_DIALOG_ENDERECO') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_ENDERECO_NUMERO_VALIDATION_TEXT_BOX') AS id_elemento,
        true AS element_required, 9 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_ENDERECO'
        AND f.nome = 'FORM_DIALOG_ENDERECO') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_ENDERECO_COMPLEMENTO_VALIDATION_TEXT_BOX') AS id_elemento,
        true AS element_required, 10 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_ENDERECO'
        AND f.nome = 'FORM_DIALOG_ENDERECO') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_HTML'
        AND fe.nome = 'FORM_LINHA_HORIZONTAL') AS id_elemento,
        false AS element_required, 11 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_ENDERECO'
        AND f.nome = 'FORM_DIALOG_ENDERECO') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_SUBMIT') AS id_elemento,
        false AS element_required, 12 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_ENDERECO'
        AND f.nome = 'FORM_DIALOG_ENDERECO') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_RESET') AS id_elemento,
        false AS element_required, 13 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_INFORMACOES_BANCARIAS_DADOS_BANCARIOS') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND fe.nome = 'FORM_BUTTON_DIALOG_DOJO') AS id_elemento,
       	false AS element_required, 1 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_INFORMACOES_BANCARIAS_DADOS_BANCARIOS_CONTAS_BANCARIAS'
        AND f.nome = 'FORM_DIALOG_CONTAS_BANCARIAS') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_HTML'
        AND fe.nome = 'FORM_LINHA_HORIZONTAL') AS id_elemento,
        false AS element_required, 1 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_INFORMACOES_BANCARIAS_DADOS_BANCARIOS_CONTAS_BANCARIAS'
        AND f.nome = 'FORM_DIALOG_CONTAS_BANCARIAS') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND fe.nome = 'FORM_BUTTON_DIALOG_DOJO') AS id_elemento,
        false AS element_required, 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_INFORMACOES_BANCARIAS_DADOS_BANCARIOS_CONTAS_BANCARIAS'
        AND f.nome = 'FORM_DIALOG_CONTAS_BANCARIAS') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_CLOSE_DIALOG') AS id_elemento,
        false AS element_required, 3 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_CONTA_BANCARIA'
        AND f.nome = 'FORM_DIALOG_CONTA_BANCARIA') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_CONTA_BANCARIA_NUMERO_BANCO_VALIDATION_TEXT_BOX') AS id_elemento,
        true AS element_required, 1 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_CONTA_BANCARIA'
        AND f.nome = 'FORM_DIALOG_CONTA_BANCARIA') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_CONTA_BANCARIA_BANCO_FILTERING_SELECT') AS id_elemento,
        true AS element_required, 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_CONTA_BANCARIA'
        AND f.nome = 'FORM_DIALOG_CONTA_BANCARIA') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_CONTA_BANCARIA_AGENCIA_VALIDATION_TEXT_BOX') AS id_elemento,
        true AS element_required, 3 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_CONTA_BANCARIA'
        AND f.nome = 'FORM_DIALOG_CONTA_BANCARIA') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_CONTA_BANCARIA_TIPO_CONTA_FILTERING_SELECT') AS id_elemento,
        true AS element_required, 4 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_CONTA_BANCARIA'
        AND f.nome = 'FORM_DIALOG_CONTA_BANCARIA') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_CONTA_BANCARIA_NUMERO_CONTA_VALIDATION_TEXT_BOX') AS id_elemento,
        true AS element_required, 5 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_CONTA_BANCARIA'
        AND f.nome = 'FORM_DIALOG_CONTA_BANCARIA') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_CONTA_BANCARIA_DESCRICAO_IDENTIFICACAO_CONTA_VALIDATION_TEXT_BOX') AS id_elemento,
        true AS element_required, 6 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_CONTA_BANCARIA'
        AND f.nome = 'FORM_DIALOG_CONTA_BANCARIA') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_HTML'
        AND fe.nome = 'FORM_LINHA_HORIZONTAL') AS id_elemento,
        true AS element_required, 11 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_CONTA_BANCARIA'
        AND f.nome = 'FORM_DIALOG_CONTA_BANCARIA') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_SUBMIT') AS id_elemento,
        true AS element_required, 12 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_CONTA_BANCARIA'
        AND f.nome = 'FORM_DIALOG_CONTA_BANCARIA') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_RESET') AS id_elemento,
        true AS element_required, 13 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CVC'
        AND f.nome = 'FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_HTML'
        AND fe.nome = 'FORM_HTML_TEXT_DESCRICAO_FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO') AS id_elemento,
        false AS element_required, 1 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CVC'
        AND f.nome = 'FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_VISUALIZAR_DADOS_ATUAIS_FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO') AS id_elemento,
        false AS element_required, 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CVC'
        AND f.nome = 'FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_HTML'
        AND fe.nome = 'FORM_HTML_TEXT_DESCRICAO_BUTTON_VISUALIZAR_DADOS_ATUAIS_FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO') AS id_elemento,
        false AS element_required, 3 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CVC'
        AND f.nome = 'FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_REVISAR_DADOS_ATUAIS_FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO') AS id_elemento,
        false AS element_required, 4 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CVC'
        AND f.nome = 'FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_HTML'
        AND fe.nome = 'FORM_HTML_TEXT_DESCRICAO_BUTTON_REVISAR_DADOS_ATUAIS_FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO') AS id_elemento,
        false AS element_required, 5 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CVC'
        AND f.nome = 'FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_SOBRESCREVER_ATUALIZACAO_FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO') AS id_elemento,
        false AS element_required, 6 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CVC'
        AND f.nome = 'FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_HTML'
        AND fe.nome = 'FORM_ELEMENT_HTML_TEXT_DESCRICAO_BUTTON_SOBRESCREVER_ATUALIZACAO_FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO') AS id_elemento,
        false AS element_required, 7 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CVC'
        AND f.nome = 'FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_CANCELAR_FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO') AS id_elemento,
        false AS element_required, 8 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_elemento (id_formulario, id_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CVC'
        AND f.nome = 'FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO') AS id_formulario,
       (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_HTML'
        AND fe.nome = 'FORM_ELEMENT_HTML_TEXT_DESCRICAO_BUTTON_CANCELAR_FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO') AS id_elemento,
        false AS element_required, 9 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;