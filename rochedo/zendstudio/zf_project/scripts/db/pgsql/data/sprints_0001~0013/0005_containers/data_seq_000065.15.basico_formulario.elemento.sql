/**
* SCRIPT DE POPULACAO DA TABELA basico_formulario.elemento
* 
* Esta tabela funciona como um banco de dados de elementos para formularios.
* 
* versao: 1.0 (POSTGRESQL 9.1.1)
* por: JOÃO VASCONCELOS (joao.vasconcelos@rochedoframework.com)
* criacao: 02/02/2012
* ultimas modificacoes:
* 								
*/

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda,
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_attribs, rowinfo)
SELECT c.id AS id_categoria, (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_FORMULARIO_FILTERING_SELECT') AS id_ajuda,
                             (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_FilteringSelect') AS id_componente,
                              'FORM_FIELD_FILTERING_SELECT_FORMULARIO' AS nome,
                              'FORM_FIELD_FILTERING_SELECT_FORMULARIO' AS constante_textual,
                              true AS ativo,
                              'FORM_FIELD_FORMULARIO' AS constante_textual_label,
                              'formulario' AS element_name, NULL AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda,
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_attribs, rowinfo)
SELECT c.id AS id_categoria, (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_SELECT_TIPO_DATA_FILTERING_SELECT') AS id_ajuda,
                             (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_FilteringSelect') AS id_componente,
                              'FORM_FIELD_FILTERING_SELECT_TIPO_DATA' AS nome,
                              'FORM_FIELD_FILTERING_SELECT_TIPO_DATA' AS constante_textual, true AS ativo,
                              'FORM_FIELD_SELECT_TIPO_DATA' AS constante_textual_label,
                              'selectTipoData' AS element_name, NULL AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda,
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_attribs, rowinfo)
SELECT c.id AS id_categoria,  (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_DATA_INICIO_PERIODO_DATE_TEXT_BOX') AS id_ajuda,
                             (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_DateTextBox') AS id_componente,
                              'FORM_FIELD_DATE_TEXT_BOX_DATA_INICIO_PERIODO' AS nome, 
                              'FORM_FIELD_DATE_TEXT_BOX_DATA_INICIO_PERIODO' AS constante_textual, true AS ativo,
                              'FORM_FIELD_DATA_INICIO_PERIODO' AS constante_textual_label,
                              'dataInicioPeriodo' AS element_name, '''style'' => ''width: 70px;''' AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda,
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_attribs, rowinfo)
SELECT c.id AS id_categoria,  (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_DATA_TERMINO_PERIODO_DATE_TEXT_BOX') AS id_ajuda,
                             (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_DateTextBox') AS id_componente,
                              'FORM_FIELD_DATE_TEXT_BOX_DATA_TERMINO_PERIODO' AS nome, 
                              'FORM_FIELD_DATE_TEXT_BOX_DATA_TERMINO_PERIODO' AS constante_textual, true AS ativo,
                              'FORM_FIELD_DATA_TERMINO_PERIODO' AS constante_textual_label,
                              'dataTerminoPeriodo' AS element_name, '''style'' => ''width: 70px;''' AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_componente, nome, constante_textual, ativo, constante_textual_label,
								 element_name, element_attribs, rowinfo)
SELECT c.id AS id_categoria, (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_ZF'
                              AND cp.nome = 'ZF_button') AS id_componente,
                              'FORM_BUTTON_CANCELAR' AS nome,
                              'FORM_BUTTON_CANCELAR' AS constante_textual, true AS ativo,
                              'FORM_BUTTON_CANCELAR_LABEL' AS constante_textual_label,
                              'htmlButtonCancelar' AS element_name, NULL AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda,
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_attribs, rowinfo)
SELECT c.id AS id_categoria,  (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_ACEITE_TERMOS_USO_TEXT_BOX') AS id_ajuda,
                              (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_ValidationTextBox') AS id_componente,
                              'FORM_FIELD_VALIDATION_TEXT_BOX_ACEITE_TERMOS_USO' AS nome, 
                              'FORM_FIELD_VALIDATION_TEXT_BOX_ACEITE_TERMOS_USO' AS constante_textual, true AS ativo,
                              'FORM_FIELD_ACEITE_TERMOS_USO' AS constante_textual_label,
                              'aceiteTermosUso' AS element_name, NULL AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_componente, nome, constante_textual, ativo, 
								 element_name, element_attribs, element_options, rowinfo)
SELECT c.id AS id_categoria, (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_ROCHEDO'
                              AND cp.nome = 'ROCHEDO_html') AS id_componente,
                              'FORM_FIELD_HTML_LINKS' AS nome,
                              'FORM_FIELD_HTML_LINKS' AS constante_textual, true AS ativo,
                              'links' AS element_name, NULL AS element_attribs,
                              '''value'' => ""' AS element_options, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_HTML';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda,
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_attribs, element_options, rowinfo)
SELECT c.id AS id_categoria, (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_TERMOS_USO_TEXT_AREA') AS id_ajuda,
                             (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_SimpleTextarea') AS id_componente,
                              'FORM_FIELD_SIMPLE_TEXT_AREA_TERMOS_USO' AS nome,
                              'FORM_FIELD_SIMPLE_TEXT_AREA_TERMOS_USO' AS constante_textual, true AS ativo,
                              'FORM_FIELD_TERMOS_USO' AS constante_textual_label,
                              'termosUso' AS element_name, '''style'' => ''width: 472px;''' AS element_attribs,
                              '''readOnly'' => true' AS element_options, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, nome, constante_textual, ativo, id_componente, constante_textual_label,
                                 element_name, rowinfo)
SELECT c.id AS id_categoria, 'FORM_BUTTON' AS nome, 'FORM_BUTTON' AS constante_textual, true AS ativo,
	   (SELECT cp.id
        from basico.componente cp
        LEFT join basico.categoria c ON (cp.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'COMPONENTE'
        AND c.nome = 'COMPONENTE_ZF'
        AND cp.nome = 'ZF_button') AS id_componente,
       'FORM_BUTTON_SUBMIT' AS constante_textual_label, 'enviar' AS element_name, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda,
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_attribs, rowinfo)
SELECT c.id AS id_categoria, (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_HISTORICO_MEDICO_TEXT_AREA') AS id_ajuda,
                             (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_SimpleTextarea') AS id_componente,
                              'FORM_FIELD_SIMPLE_TEXT_AREA_HISTORICO_MEDICO' AS nome, 
                              'FORM_FIELD_SIMPLE_TEXT_AREA_HISTORICO_MEDICO' AS constante_textual, true AS ativo,
                              'FORM_FIELD_HISTORICO_MEDICO' AS constante_textual_label,
                              'historicoMedico' AS element_name, '''style'' => ''width: 472px;''' AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda,
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_attribs, rowinfo)
SELECT c.id AS id_categoria, (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_TIPO_SANGUINEO_FILTERING_SELECT') AS id_ajuda,
                             (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_FilteringSelect') AS id_componente,
                              'FORM_FIELD_FILTERING_SELECT_TIPO_SANGUINEO' AS nome,
                              'FORM_FIELD_FILTERING_SELECT_TIPO_SANGUINEO' AS constante_textual, true AS ativo,
                              'FORM_FIELD_TIPO_SANGUINEO' AS constante_textual_label,
                              'tipoSanguineo' AS element_name, NULL AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';


INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda,
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_attribs, rowinfo)
SELECT c.id AS id_categoria, (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_ALTURA_TEXT_BOX') AS id_ajuda,
                             (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_NumberTextBox') AS id_componente,
                              'FORM_FIELD_NUMBER_TEXT_BOX_ALTURA' AS nome, 
                              'FORM_FIELD_NUMBER_TEXT_BOX_ALTURA' AS constante_textual, true AS ativo,
                              'FORM_FIELD_ALTURA' AS constante_textual_label,
                              'altura' AS element_name, '''maxlength'' => ''5'', ''style'' => ''width: 40px;''' AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda,
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_attribs, rowinfo)
SELECT c.id AS id_categoria, (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_PESO_TEXT_BOX') AS id_ajuda,
                             (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_NumberTextBox') AS id_componente,
                              'FORM_FIELD_NUMBER_TEXT_BOX_PESO' AS nome, 
                              'FORM_FIELD_NUMBER_TEXT_BOX_PESO' AS constante_textual, true AS ativo,
                              'FORM_FIELD_PESO' AS constante_textual_label,
                              'peso' AS element_name, '''maxlength'' => ''7'', ''style'' => ''width: 50px;''' AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda,
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_attribs, rowinfo)
SELECT c.id AS id_categoria, (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_RACA_FILTERING_SELECT') AS id_ajuda,
                             (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_FilteringSelect') AS id_componente,
                              'FORM_FIELD_FILTERING_SELECT_RACA' AS nome,
                              'FORM_FIELD_FILTERING_SELECT_RACA' AS constante_textual, true AS ativo,
                              'FORM_FIELD_RACA' AS constante_textual_label,
                              'raca' AS element_name, NULL AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_componente, nome, constante_textual, ativo, 
								 element_name, element_options, rowinfo)

SELECT c.id AS id_categoria, (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_ROCHEDO'
                              AND cp.nome = 'ROCHEDO_html') AS id_componente,
                              'FORM_FIELD_HTML_PASSWORD_STRENGTH_CHECKER' AS nome,
                              'FORM_FIELD_HTML_PASSWORD_STRENGTH_CHECKER' AS constante_textual, true AS ativo,
                              'passwordStrengthChecker' AS element_name, '''value'' => "<div id=''scorebarBorder''><div id=''score''>0%</div><div id=''scorebar''>&nbsp;</div></div><div id=''complexity''></div>"' AS element_options, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_HTML';

INSERT INTO basico_formulario.elemento(id_categoria, id_componente, nome, constante_textual, ativo, 
								 element_name, element_options, rowinfo)
SELECT c.id AS id_categoria, (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_ROCHEDO'
                              AND cp.nome = 'ROCHEDO_html') AS id_componente,
                              'FORM_FIELD_HTML_LOGIN_DISPONIBILIDADE' AS nome, 
                              'FORM_FIELD_HTML_LOGIN_DISPONIBILIDADE' AS constante_textual, true AS ativo,
                              'loginDisponivel' AS element_name, '''value'' => ""' AS element_options, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_HTML';

INSERT INTO basico_formulario.elemento(id_categoria, id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_options, rowinfo)
SELECT c.id AS id_categoria,(SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_RadioButton') AS id_componente,
                              'FORM_FIELD_RADIO_BUTTON_SUGESTAO_LOGIN' AS nome,
                              'FORM_FIELD_RADIO_BUTTON_SUGESTAO_LOGIN' AS constante_textual, true AS ativo,
                              'FORM_FIELD_SUGESTAO_LOGIN' AS constante_textual_label,
                              'sugestaoLogin' AS element_name, '''separator'' => ''<br>''' AS element_options, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_componente, nome, constante_textual, ativo, 
								 element_name, element_options, rowinfo)
SELECT c.id AS id_categoria, (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_ROCHEDO'
                              AND cp.nome = 'ROCHEDO_html') AS id_componente,
                              'FORM_FIELD_HTML_CONTENT_DINAMICO' AS nome,
                              'FORM_FIELD_HTML_CONTENT_DINAMICO' AS constante_textual, true AS ativo,
                              'contentDinamico' AS element_name, '''value'' => ""' AS element_options, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_HTML';


INSERT INTO basico_formulario.elemento(id_categoria, id_componente, nome, constante_textual, ativo, 
								 element_name, element_options, rowinfo)
SELECT c.id AS id_categoria, (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_ROCHEDO'
                              AND cp.nome = 'ROCHEDO_javascript') AS id_componente,
                              'FORM_FIELD_HTML_JAVASCRIPT' AS nome,
                              'FORM_FIELD_HTML_JAVASCRIPT' AS constante_textual, true AS ativo,
                              'javaScript' AS element_name, '''value'' => ""' AS element_options, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_HTML';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda,
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_attribs, rowinfo)
SELECT c.id AS id_categoria,  (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_CADASTRO_USUARIO_VALIDADO_RG') AS id_ajuda,
                              (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_ValidationTextBox') AS id_componente,
                              'FORM_FIELD_VALIDATION_TEXT_BOX_NUMERO_DOCUMENTO' AS nome,
                              'FORM_FIELD_VALIDATION_TEXT_BOX_NUMERO_DOCUMENTO' AS constante_textual, true AS ativo,
                              'FORM_FIELD_NUMERO_DOCUMENTO' AS constante_textual_label,
                              'numeroDocumento' AS element_name, NULL AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda,
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_options, rowinfo)
SELECT c.id AS id_categoria,  (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_SEXO_RADIO_BUTTON') AS id_ajuda,
                              (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_RadioButton') AS id_componente,
                              'FORM_FIELD_RADIO_BUTTON_SEXO' AS nome,
                              'FORM_FIELD_RADIO_BUTTON_SEXO' AS constante_textual, true AS ativo,
                              'FORM_FIELD_SEXO' AS constante_textual_label,
                              'sexo' AS element_name, '''separator'' => " "' AS element_options, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda,
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_attribs, rowinfo)
SELECT c.id AS id_categoria,  (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_DATA_NASCIMENTO_DATE_TEXT_BOX') AS id_ajuda,
                              (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_DateTextBox') AS id_componente,
                              'FORM_FIELD_DATE_TEXT_BOX_DATA_NASCIMENTO' AS nome, 
                              'FORM_FIELD_DATE_TEXT_BOX_DATA_NASCIMENTO' AS constante_textual, true AS ativo,
                              'FORM_FIELD_DATA_NASCIMENTO' AS constante_textual_label,
                              'dataNascimento' AS element_name, '''style'' => ''width: 70px;''' AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda,
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_attribs, rowinfo)
SELECT c.id AS id_categoria,  (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_LOGIN_TEXT_BOX') AS id_ajuda,
                              (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_ValidationTextBox') AS id_componente,
                              'FORM_FIELD_VALIDATION_TEXT_BOX_LOGIN' AS nome,
                              'FORM_FIELD_VALIDATION_TEXT_BOX_LOGIN' AS constante_textual, true AS ativo,
                              'FORM_FIELD_LOGIN' AS constante_textual_label,
                              'login' AS element_name, NULL AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda, 
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_attribs, rowinfo)
SELECT c.id AS id_categoria,  (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_SENHA_TEXT_BOX') AS id_ajuda,
                             (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_AJAXTERCEIROS'
                              AND cp.nome = 'DOJO_PasswordTextBox_With_Checker') AS id_componente,
                              'FORM_FIELD_PASSWORD_TEXT_BOX_SENHA_WITH_CHECKER' AS nome,
                              'FORM_FIELD_PASSWORD_TEXT_BOX_SENHA_WITH_CHECKER' AS constante_textual, true AS ativo,
                              'FORM_FIELD_SENHA' AS constante_textual_label,
                              'senha' AS element_name, NULL AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda, 
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, rowinfo)
SELECT c.id AS id_categoria,  (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_SENHA_TEXT_BOX') AS id_ajuda,
							  (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_PasswordTextBox') AS id_componente,
                              'FORM_FIELD_PASSWORD_TEXT_BOX_SENHA' AS nome, 
                              'FORM_FIELD_PASSWORD_TEXT_BOX_SENHA' AS constante_textual,true AS ativo,
                              'FORM_FIELD_SENHA' AS constante_textual_label,
                              'senha' AS element_name, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda, 
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_attribs, rowinfo)
SELECT c.id AS id_categoria,  (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_SENHA_CONFIRMACAO_TEXT_BOX') AS id_ajuda,
                              (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_PasswordTextBox') AS id_componente,
                              'FORM_FIELD_PASSWORD_TEXT_BOX_SENHA_CONFIRMACAO' AS nome, 
                              'FORM_FIELD_PASSWORD_TEXT_BOX_SENHA_CONFIRMACAO' AS constante_textual, true AS ativo,
                              'FORM_FIELD_SENHA_CONFIRMACAO' AS constante_textual_label,
                              'senhaConfirmacao' AS element_name, NULL AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda, 
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_options, rowinfo)
SELECT c.id AS id_categoria,  (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_LOGIN_MANTER_LOGADO_CHECKBOX') AS id_ajuda,
                              (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_CheckBox') AS id_componente,
                              'FORM_FIELD_CHECKBOX_LOGIN_MANTER_LOGADO' AS nome,
                              'NOME_FORM_FIELD_CHECKBOX_LOGIN_MANTER_LOGADO' AS constante_textual, true AS ativo,
                              'FORM_FIELD_CHECKBOX_LOGIN_MANTER_LOGADO' AS constante_textual_label,
                              'loginManterLogado' AS element_name, '''disableLoadDefaultDecorators'' => true, ''decorators'' => array(''DijitElement'', ''Errors'', ''Description'')' AS element_options, 
                              'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_componente, nome, constante_textual, ativo, element_name, element_options, rowinfo)
SELECT c.id AS id_categoria, (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_ROCHEDO'
                              AND cp.nome = 'ROCHEDO_html') AS id_componente,
                              'FORM_LINK_PROBLEMAS_LOGON' AS nome, 
                              'NOME_FORM_LINK_PROBLEMAS_LOGON' AS constante_textual, true AS ativo,
                              'linkProblemasLogon' AS element_name, '''value'' => "<br><a href=''{$this->getView()->url(array(''module'' => ''basico'', ''controller'' => ''login'', ''action'' => ''problemasLogin''), null, true)}''>{$this->getView()->tradutor(''FORM_LINK_PROBLEMAS_LOGON'')}</a>"' AS element_options, 
                              'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_HTML';

INSERT INTO basico_formulario.elemento(id_categoria, id_componente, nome, constante_textual, ativo,element_name, element_options, rowinfo)
SELECT c.id AS id_categoria, (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_ROCHEDO'
                              AND cp.nome = 'ROCHEDO_html') AS id_componente,
                              'FORM_LINK_NOVO_USUARIO' AS nome,
                              'NOME_FORM_LINK_NOVO_USUARIO' AS constante_textual, true AS ativo,
                              'linkNovoUsuario' AS element_name, '''value'' => "<a href=''{$this->getView()->url(array(''module'' => ''basico'', ''controller'' => ''login'', ''action'' => ''cadastrarUsuarioNaoValidado''), null, true)}''>{$this->getView()->tradutor(''FORM_LINK_NOVO_USUARIO'')}</a>"' AS element_options,
                              'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_HTML';

INSERT INTO basico_formulario.elemento(id_categoria, id_componente, nome, constante_textual, ativo, element_name, element_options, rowinfo)
SELECT c.id AS id_categoria, (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_ZF'
                              AND cp.nome = 'ZF_Hidden') AS id_componente,
                              'FORM_FIELD_HIDDEN_URLREDIRECT' AS nome, 
                              'FORM_FIELD_HIDDEN_URLREDIRECT' AS constante_textual, true AS ativo,
                              'urlRedirect' AS element_name, '''decorators'' => array(''ViewHelper'')' AS element_options, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_HIDDEN';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda, 
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_attribs, rowinfo)
SELECT c.id AS id_categoria, (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_CATEGORIA_BOLSA_CNPQ_FILTERING_SELECT') AS id_ajuda,
                             (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_FilteringSelect') AS id_componente,
                              'FORM_FIELD_FILTERING_SELECT_CATEGORIA_BOLSA_CNPQ' AS nome,
                              'FORM_FIELD_FILTERING_SELECT_CATEGORIA_BOLSA_CNPQ' AS constante_textual, true AS ativo,
                              'FORM_FIELD_CATEGORIA_BOLSA_CNPQ_LABEL' AS constante_textual_label,
                              'categoriaBolsaCnpq' AS element_name, NULL AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda, 
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_attribs, rowinfo)
SELECT c.id AS id_categoria, (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_MAIOR_TITULACAO_FILTERING_SELECT') AS id_ajuda,
                             (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_FilteringSelect') AS id_componente,
                              'FORM_FIELD_FILTERING_SELECT_MAIOR_TITULACAO' AS nome,
                              'FORM_FIELD_FILTERING_SELECT_MAIOR_TITULACAO' AS constante_textual, true AS ativo,
                              'FORM_FIELD_MAIOR_TITULACAO_LABEL' AS constante_textual_label,
                              'maiorTitulacao' AS element_name, NULL AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda, 
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_attribs, rowinfo)
SELECT c.id AS id_categoria, (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_INSTITUICAO_QUE_CONCEDEU_FILTERING_SELECT') AS id_ajuda,
                             (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_FilteringSelect') AS id_componente,
                              'FORM_FIELD_FILTERING_SELECT_INSTITUICAO_QUE_CONCEDEU' AS nome,
                              'FORM_FIELD_FILTERING_SELECT_INSTITUICAO_QUE_CONCEDEU' AS constante_textual, true AS ativo,
                              'FORM_FIELD_INSTITUICAO_QUE_CONCEDEU_LABEL' AS constante_textual_label,
                              'instituicaoQueConcedeu' AS element_name, NULL AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda, 
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_attribs, rowinfo)
SELECT c.id AS id_categoria, (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_AREA_DE_CONHECIMENTO_FILTERING_SELECT') AS id_ajuda,
                             (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_FilteringSelect') AS id_componente,
                              'FORM_FIELD_FILTERING_SELECT_AREA_DE_CONHECIMENTO' AS nome,
                              'FORM_FIELD_FILTERING_SELECT_AREA_DE_CONHECIMENTO' AS constante_textual, true AS ativo,
                              'FORM_FIELD_AREA_DE_CONHECIMENTO_LABEL' AS constante_textual_label,
                              'areaDeConhecimento' AS element_name, NULL AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda,
	                             id_componente, nome, constante_textual, ativo, constante_textual_label,
	                             element_name, element_attribs, rowinfo)
SELECT c.id AS id_categoria, (SELECT a.id
	                          from basico.ajuda a
	                          LEFT join basico.categoria c ON (a.id_categoria = c.id)
	                          LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	                          WHERE t.nome = 'AJUDA'
	                          AND c.nome = 'AJUDA_FORMULARIO_FIELD'
	                          AND a.nome = 'AJUDA_FORMULARIO_FIELD_NOME_CURSO_TEXT_BOX') AS id_ajuda,
	                         (SELECT cp.id
	                          from basico.componente cp
	                          LEFT join basico.categoria c ON (cp.id_categoria = c.id)
	                          LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	                          WHERE t.nome = 'COMPONENTE'
	                          AND c.nome = 'COMPONENTE_DOJO'
	                          AND cp.nome = 'DOJO_ValidationTextBox') AS id_componente,
	                          'FORM_FIELD_VALIDATION_TEXT_BOX_NOME_CURSO' AS nome, 
	                          'FORM_FIELD_VALIDATION_TEXT_BOX_NOME_CURSO' AS constante_textual, true AS ativo,
	                          'FORM_FIELD_NOME_CURSO_LABEL' AS constante_textual_label,
	                          'nomeCurso' AS element_name, NULL AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda,
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_attribs, rowinfo)
SELECT c.id AS id_categoria,  (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_DATA_OBTENCAO_DATE_TEXT_BOX') AS id_ajuda,
                              (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_DateTextBox') AS id_componente,
                              'FORM_FIELD_DATE_TEXT_BOX_DATA_OBTENCAO' AS nome, 
                              'FORM_FIELD_DATE_TEXT_BOX_DATA_OBTENCAO' AS constante_textual, true AS ativo,
                              'FORM_FIELD_DATA_OBTENCAO_LABEL' AS constante_textual_label,
                              'dataObtencao' AS element_name, NULL AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda,
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_attribs, rowinfo)
SELECT c.id AS id_categoria,  (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_TITULACAO_ESPERADA_FILTERING_SELECT') AS id_ajuda,
                              (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_FilteringSelect') AS id_componente,
                              'FORM_FIELD_FILTERING_SELECT_TITULACAO_ESPERADA' AS nome, 
                              'FORM_FIELD_FILTERING_SELECT_TITULACAO_ESPERADA' AS constante_textual, true AS ativo,
                              'FORM_FIELD_TITULACAO_ESPERADA_LABEL' AS constante_textual_label,
                              'titulacaoEsperada' AS element_name, NULL AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo 
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda,
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_attribs, rowinfo)
SELECT c.id AS id_categoria,  (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_INSTITUICAO_CURSO_ATUAL_FILTERING_SELECT') AS id_ajuda,
                              (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_FilteringSelect') AS id_componente,
                              'FORM_FIELD_FILTERING_SELECT_INSTITUICAO_CURSO_ATUAL' AS nome,
                              'FORM_FIELD_FILTERING_SELECT_INSTITUICAO_CURSO_ATUAL' AS constante_textual, true AS ativo,
                              'FORM_FIELD_INSTITUICAO_CURSO_ATUAL_LABEL' AS constante_textual_label,
                              'instituicaoCursoAtual' AS element_name, NULL AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo 
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda,
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_attribs, rowinfo)
SELECT c.id AS id_categoria,  (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_AREA_CONHECIMENTO_CURSO_ATUAL_FILTERING_SELECT') AS id_ajuda,
                              (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_FilteringSelect') AS id_componente,
                              'FORM_FIELD_FILTERING_SELECT_AREA_CONHECIMENTO_CURSO_ATUAL' AS nome, 
                              'FORM_FIELD_FILTERING_SELECT_AREA_CONHECIMENTO_CURSO_ATUAL' AS constante_textual, true AS ativo,
                              'FORM_FIELD_AREA_CONHECIMENTO_CURSO_ATUAL_LABEL' AS constante_textual_label,
                              'areaConhecimentoCursoAtual' AS element_name, NULL AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo 
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

                              
INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda,
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_attribs, rowinfo)
SELECT c.id AS id_categoria,  (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_NOME_CURSO_ATUAL_TEXT_BOX') AS id_ajuda,
                              (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_ValidationTextBox') AS id_componente,
                              'FORM_FIELD_VALIDATION_TEXT_BOX_NOME_CURSO_ATUAL' AS nome,
                              'FORM_FIELD_VALIDATION_TEXT_BOX_NOME_CURSO_ATUAL' AS constante_textual, true AS ativo,
                              'FORM_FIELD_NOME_CURSO_ATUAL_LABEL' AS constante_textual_label,
                              'nomeCursoAtual' AS element_name, NULL AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo 
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

                              
INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda,
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_attribs, rowinfo)
SELECT c.id AS id_categoria,  (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_PERIODO_FILTERING_SELECT') AS id_ajuda,
                              (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_FilteringSelect') AS id_componente,
                              'FORM_FIELD_FILTERING_SELECT_PERIODO' AS nome,
                              'FORM_FIELD_FILTERING_SELECT_PERIODO' AS constante_textual, true AS ativo,
                              'FORM_FIELD_PERIODO_LABEL' AS constante_textual_label,
                              'periodo' AS element_name, NULL AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda,
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_attribs, rowinfo)
SELECT c.id AS id_categoria,  (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_TURNO_FILTERING_SELECT') AS id_ajuda,
                              (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_FilteringSelect') AS id_componente,
                              'FORM_FIELD_FILTERING_SELECT_TURNO' AS nome,
                              'FORM_FIELD_FILTERING_SELECT_TURNO' AS constante_textual, true AS ativo,
                              'FORM_FIELD_TURNO_LABEL' AS constante_textual_label,
                              'turno' AS element_name, NULL AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo                             
FROM basico.tipo_categoria t 
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, nome, constante_textual, ativo, id_componente, constante_textual_label,
                                 element_name, rowinfo)
SELECT c.id AS id_categoria, 'FORM_BUTTON_SUBMIT' AS nome,
	   'NOME_FORM_BUTTON_SUBMIT' AS constante_textual, true AS ativo,
	   (SELECT cp.id
        from basico.componente cp
        LEFT join basico.categoria c ON (cp.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'COMPONENTE'
        AND c.nome = 'COMPONENTE_DOJO'
        AND cp.nome = 'DOJO_submitButton') AS id_componente,
       'FORM_BUTTON_SUBMIT' AS constante_textual_label, 'enviar' AS element_name, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON';

INSERT INTO basico_formulario.elemento(id_categoria, nome, constante_textual, ativo, id_componente, constante_textual_label,
                                 element_name, element_options, rowinfo)
SELECT c.id AS id_categoria, 'FORM_BUTTON_RESET' AS nome, 
	   'NOME_FORM_BUTTON_RESET' AS constante_textual, true AS ativo,
	   (SELECT cp.id
        from basico.componente cp
        LEFT join basico.categoria c ON (cp.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'COMPONENTE'
        AND c.nome = 'COMPONENTE_ZF'
        AND cp.nome = 'ZF_button') AS id_componente,
       'FORM_BUTTON_RESET' AS constante_textual_label, 'resetar' AS element_name, 
       '''type'' => ''reset''' AS element_options, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON';

INSERT INTO basico_formulario.elemento(id_categoria, nome, constante_textual, ativo, id_componente, constante_textual_label,
                                 element_name, rowinfo)
SELECT c.id AS id_categoria, 'FORM_BUTTON_CLOSE_DIALOG' AS nome,
	   'NOME_FORM_BUTTON_CLOSE_DIALOG' AS constante_textual, true AS ativo,
	   (SELECT cp.id
        from basico.componente cp
        LEFT join basico.categoria c ON (cp.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'COMPONENTE'
        AND c.nome = 'COMPONENTE_ZF'
        AND cp.nome = 'ZF_button') AS id_componente,
       'FORM_BUTTON_CLOSE_DIALOG' AS constante_textual_label, 'fechar' AS element_name, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON';

INSERT INTO basico_formulario.elemento(id_categoria, nome, constante_textual, ativo, id_componente, element_name, element_attribs, rowinfo)
SELECT c.id AS id_categoria, 'FORM_BUTTON_DIALOG_DOJO' AS nome,
	   'NOME_FORM_BUTTON_DIALOG_DOJO' AS constante_textual, true AS ativo,
	   (SELECT cp.id
        from basico.componente cp
        LEFT join basico.categoria c ON (cp.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'COMPONENTE'
        AND c.nome = 'COMPONENTE_ZF'
        AND cp.nome = 'ZF_button') AS id_componente,
       'buttonDialogDojo' AS element_name, 
       '''label'' => "{@tituloForm}", ''onClick'' => "exibirDialogUrl(\"@nomeFormulario\", \"@urlForm\", \"{@tituloForm}\")"' AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda,  
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_attribs, rowinfo)
SELECT c.id AS id_categoria, (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_PROFISSAO_FILTERING_SELECT') AS id_ajuda,
                             (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_FilteringSelect') AS id_componente,
                              'FORM_FIELD_FILTERING_SELECT_PROFISSAO' AS nome,
                              'FORM_FIELD_FILTERING_SELECT_PROFISSAO' AS constante_textual, true AS ativo,
                              'FORM_FIELD_PROFISSAO' AS constante_textual_label,
                              'profissao' AS element_name, NULL AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda,  
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_attribs, rowinfo)
SELECT c.id AS id_categoria, (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_VINCULO_PROFISSIONAL_FILTERING_SELECT') AS id_ajuda,
                             (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_FilteringSelect') AS id_componente,
                              'FORM_FIELD_FILTERING_SELECT_VINCULO_PROFISSIONAL' AS nome,
                              'FORM_FIELD_FILTERING_SELECT_VINCULO_PROFISSIONAL' AS constante_textual, true AS ativo,
                              'FORM_FIELD_VINCULO_PROFISSIONAL' AS constante_textual_label,
                              'vinculoProfissional' AS element_name, NULL AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda,  
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_attribs, rowinfo)
SELECT c.id AS id_categoria, (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_PJ_VINCULO_FILTERING_SELECT') AS id_ajuda,
                             (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_FilteringSelect') AS id_componente,
                              'FORM_FIELD_FILTERING_SELECT_PJ_VINCULO' AS nome,
                              'FORM_FIELD_FILTERING_SELECT_PJ_VINCULO' AS constante_textual, true AS ativo,
                              'FORM_FIELD_PJ_VINCULO' AS constante_textual_label,
                              'pjVinculo' AS element_name, NULL AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda,  
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_attribs, rowinfo)
SELECT c.id AS id_categoria, (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_REGIME_TRABALHO_FILTERING_SELECT') AS id_ajuda,
                             (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_FilteringSelect') AS id_componente,
                              'FORM_FIELD_FILTERING_SELECT_REGIME_TRABALHO' AS nome,
                              'FORM_FIELD_FILTERING_SELECT_REGIME_TRABALHO' AS constante_textual, true AS ativo,
                              'FORM_FIELD_REGIME_TRABALHO' AS constante_textual_label,
                              'regimeTrabalho' AS element_name, NULL AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda,
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_attribs, rowinfo)
SELECT c.id AS id_categoria, (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_CARGO_TEXT_BOX') AS id_ajuda,
                             (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_ValidationTextBox') AS id_componente,
                              'FORM_FIELD_VALIDATION_TEXT_BOX_CARGO' AS nome,
                              'FORM_FIELD_VALIDATION_TEXT_BOX_CARGO' AS constante_textual, true AS ativo,
                              'FORM_FIELD_CARGO' AS constante_textual_label,
                              'cargo' AS element_name, NULL AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda,
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_attribs, rowinfo)
SELECT c.id AS id_categoria, (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_FUNCAO_TEXT_BOX') AS id_ajuda,
                             (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_ValidationTextBox') AS id_componente,
                              'FORM_FIELD_VALIDATION_TEXT_BOX_FUNCAO' AS nome,
                              'FORM_FIELD_VALIDATION_TEXT_BOX_FUNCAO' AS constante_textual, true AS ativo,
                              'FORM_FIELD_FUNCAO' AS constante_textual_label,
                              'funcao' AS element_name, NULL AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda,
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_attribs, rowinfo)
SELECT c.id AS id_categoria, (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_ATIVIDADES_DESENVOLVIDAS_TEXT_AREA') AS id_ajuda,
                             (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_SimpleTextarea') AS id_componente,
                              'FORM_FIELD_SIMPLE_TEXT_AREA_ATIVIDADES_DESENVOLVIDAS' AS nome,
                              'FORM_FIELD_SIMPLE_TEXT_AREA_ATIVIDADES_DESENVOLVIDAS' AS constante_textual, true AS ativo,
                              'FORM_FIELD_ATIVIDADES_DESENVOLVIDAS' AS constante_textual_label,
                              'atividadesDesenvolvidas' AS element_name, '''style'' => ''width: 472px;''' AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda, 
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_attribs, rowinfo)
SELECT c.id AS id_categoria, (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_DATA_ADMISSAO_DATE_TEXT_BOX') AS id_ajuda,
                             (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_DateTextBox') AS id_componente,
                              'FORM_FIELD_DATE_TEXT_BOX_DATA_ADMISSAO' AS nome,
                              'FORM_FIELD_DATE_TEXT_BOX_DATA_ADMISSAO' AS constante_textual, true AS ativo,
                              'FORM_FIELD_DATA_ADMISSAO' AS constante_textual_label,
                              'dataAdmissao' AS element_name, '''style'' => ''width: 100px;''' AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda, 
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_attribs, rowinfo)
SELECT c.id AS id_categoria, (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_DATA_DESVINCULACAO_DATE_TEXT_BOX') AS id_ajuda,
                             (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_DateTextBox') AS id_componente,
                              'FORM_FIELD_DATE_TEXT_BOX_DATA_DESVINCULACAO' AS nome,
                              'FORM_FIELD_DATE_TEXT_BOX_DATA_DESVINCULACAO' AS constante_textual, true AS ativo,
                              'FORM_FIELD_DATA_DESVINCULACAO' AS constante_textual_label,
                              'dataDesvinculacao' AS element_name, '''style'' => ''width: 100px;''' AS element_attribs, 
                              'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda, 
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_attribs, element_options, rowinfo)
SELECT c.id AS id_categoria, (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_CARGA_HORARIA_SEMANAL_TEXT_BOX') AS id_ajuda,
                             (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_NumberTextBox') AS id_componente,
                              'FORM_FIELD_NUMBER_TEXT_BOX_CARGA_HORARIA_SEMANAL' AS nome,
                              'FORM_FIELD_NUMBER_TEXT_BOX_CARGA_HORARIA_SEMANAL' AS constante_textual, true AS ativo,
                              'FORM_FIELD_CARGA_HORARIA_SEMANAL' AS constante_textual_label,
                              'cargaHorariaSemanal' AS element_name, '''style'' => ''width: 40px;''' AS element_attribs, '''places'' => 0' AS element_options, 
                              'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda, 
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_attribs, element_options, rowinfo)
SELECT c.id AS id_categoria, (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_SALARIO_BRUTO_TEXT_BOX') AS id_ajuda,
                             (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_CurrencyTextBox') AS id_componente,
                              'FORM_FIELD_CURRENCY_TEXT_BOX_SALARIO_BRUTO' AS nome,
                              'FORM_FIELD_CURRENCY_TEXT_BOX_SALARIO_BRUTO' AS constante_textual, true AS ativo,
                              'FORM_FIELD_SALARIO_BRUTO' AS constante_textual_label,
                              'salarioBruto' AS element_name, '''style'' => ''width: 90px;''' AS element_attribs, '''currency'' => ''$ ''' AS element_options, 
                              'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda, 
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_attribs, rowinfo)

SELECT c.id AS id_categoria, (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_DEDICACAO_EXCLUSIVA_CHECK_BOX') AS id_ajuda,
                             (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_CheckBox') AS id_componente,
                              'FORM_FIELD_CHECK_BOX_DEDICACAO_EXCLUSIVA' AS nome,
                              'FORM_FIELD_CHECK_BOX_DEDICACAO_EXCLUSIVA' AS constante_textual, true AS ativo,
                              'FORM_FIELD_DEDICACAO_EXCLUSIVA' AS constante_textual_label,
                              'dedicacaoExclusiva' AS element_name, NULL AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda,
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_attribs, rowinfo)

SELECT c.id AS id_categoria, (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_OUTRAS_INFORMACOES_TEXT_AREA') AS id_ajuda,
                             (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_SimpleTextarea') AS id_componente,
                              'FORM_FIELD_SIMPLE_TEXT_AREA_OUTRAS_INFORMACOES' AS nome,
                              'FORM_FIELD_SIMPLE_TEXT_AREA_OUTRAS_INFORMACOES' AS constante_textual, true AS ativo,
                              'FORM_FIELD_OUTRAS_INFORMACOES' AS constante_textual_label,
                              'outrasInformacoes' AS element_name, '''style'' => ''width: 472px;''' AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_componente, nome, constante_textual, ativo, 
								 element_name, element_options, rowinfo)

SELECT c.id AS id_categoria, (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_ROCHEDO'
                              AND cp.nome = 'ROCHEDO_html') AS id_componente,
                              'FORM_LINHA_HORIZONTAL' AS nome,
                              'NOME_FORM_LINHA_HORIZONTAL' AS constante_textual, true AS ativo,
                              'linhaHorizontal' AS element_name, '''value'' => ''<hr>''' AS element_options, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_HTML';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda, 
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_attribs, rowinfo)
SELECT c.id AS id_categoria, (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_PERFIS_DISPONIVEIS_MULTI_CHECK_BOX') AS id_ajuda,
                             (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_ZF'
                              AND cp.nome = 'ZF_MultiCheckbox') AS id_componente,
                              'FORM_FIELD_MULTI_CHECK_BOX_PERFIS_DISPONIVEIS' AS nome,
                              'FORM_FIELD_MULTI_CHECK_BOX_PERFIS_DISPONIVEIS' AS constante_textual, true AS ativo,
                              'FORM_FIELD_PERFIS_DISPONIVEIS' AS constante_textual_label,
                              'perfisDisponiveis' AS element_name, NULL AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda, 
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_attribs, rowinfo)
SELECT c.id AS id_categoria, (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_SENHA_ATUAL_TEXT_BOX') AS id_ajuda,
                             (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_PasswordTextBox') AS id_componente,
                              'FORM_FIELD_PASSWORD_TEXT_BOX_SENHA_ATUAL' AS nome,
                              'FORM_FIELD_PASSWORD_TEXT_BOX_SENHA_ATUAL' AS constante_textual, true AS ativo,
                              'FORM_FIELD_SENHA_ATUAL' AS constante_textual_label,
                              'senhaAtual' AS element_name, NULL AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda, 
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_attribs, rowinfo)
SELECT c.id AS id_categoria, (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_NOVA_SENHA_TEXT_BOX') AS id_ajuda,
                             (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_AJAXTERCEIROS'
                              AND cp.nome = 'DOJO_PasswordTextBox_With_Checker') AS id_componente,
                              'FORM_FIELD_PASSWORD_TEXT_BOX_NOVA_SENHA' AS nome,
                              'FORM_FIELD_PASSWORD_TEXT_BOX_NOVA_SENHA' AS constante_textual, true AS ativo,
                              'FORM_FIELD_NOVA_SENHA' AS constante_textual_label,
                              'novaSenha' AS element_name, NULL AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda, 
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_attribs, rowinfo)
SELECT c.id AS id_categoria, (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_CONFIRMACAO_NOVA_SENHA_TEXT_BOX') AS id_ajuda,
                             (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_PasswordTextBox') AS id_componente,
                              'FORM_FIELD_PASSWORD_TEXT_BOX_CONFIRMACAO_NOVA_SENHA' AS nome,
                              'FORM_FIELD_PASSWORD_TEXT_BOX_CONFIRMACAO_NOVA_SENHA' AS constante_textual, true AS ativo,
                              'FORM_FIELD_CONFIRMACAO_NOVA_SENHA' AS constante_textual_label,
                              'confirmacaoNovaSenha' AS element_name, NULL AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria,  
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_attribs, rowinfo)
SELECT c.id AS id_categoria, (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_ROCHEDO'
                              AND cp.nome = 'ROCHEDO_html') AS id_componente,
                              'FORM_ELEMENT_HTML_TEXT_INSTRUCOES_MUDANCA_SENHA_SUBFORM_DADOS_USUARIO_CONTA' AS nome,
                              'NOME_FORM_ELEMENT_HTML_TEXT_INSTRUCOES_MUDANCA_SENHA_SUBFORM_DADOS_USUARIO_CONTA' AS constante_textual, true AS ativo,
                              'FORM_ELEMENT_HTML_TEXT_INSTRUCOES_MUDANCA_SENHA_SUBFORM_DADOS_USUARIO_CONTA' AS constante_textual_label,
                              'descricaoMudancaSenha' AS element_name, NULL AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_HTML';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda, 
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_attribs, rowinfo)
SELECT c.id AS id_categoria, (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_PERFIS_DISPONIVEIS_MULTI_CHECK_BOX') AS id_ajuda,
                             (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_FilteringSelect') AS id_componente,
                              'FORM_FIELD_FILTERING_SELECT_PERFIS_VINCULADOS_DISPONIVEIS' AS nome,
                              'FORM_FIELD_FILTERING_SELECT_PERFIS_VINCULADOS_DISPONIVEIS' AS constante_textual, true AS ativo,
                              'FORM_FIELD_PERFIS_VINCULADOS_DISPONIVEIS' AS constante_textual_label,
                              'perfisVinculadosDisponiveis' AS element_name, NULL AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda, 
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_attribs, rowinfo)
SELECT c.id AS id_categoria, (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_TELEFONE_TIPO_FILTERING_SELECT') AS id_ajuda,
                             (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_FilteringSelect') AS id_componente,
                              'FORM_FIELD_FILTERING_SELECT_TELEFONE_TIPO' AS nome,
                              'FORM_FIELD_FILTERING_SELECT_TELEFONE_TIPO' AS constante_textual, true AS ativo,
                              'FORM_FIELD_TELEFONE_TIPO' AS constante_textual_label,
                              'telefoneTipo' AS element_name, NULL AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda, 
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_attribs, element_options, rowinfo)
SELECT c.id AS id_categoria, (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_TELEFONE_CODIGO_PAIS_TEXT_BOX') AS id_ajuda,
                             (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_NumberTextBox') AS id_componente,
                              'FORM_FIELD_NUMBER_TEXT_BOX_TELEFONE_CODIGO_PAIS' AS nome,
                              'NOME_FORM_FIELD_NUMBER_TEXT_BOX_TELEFONE_CODIGO_PAIS' AS constante_textual, true AS ativo,
                              'FORM_FIELD_TELEFONE_CODIGO_PAIS' AS constante_textual_label,
                              'telefoneCodigoPais' AS element_name, '''style'' => ''width: 40px;''' AS element_attribs,
                              '''places'' => 0' AS element_options, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda, 
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_attribs, element_options, rowinfo)
SELECT c.id AS id_categoria, (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_TELEFONE_CODIGO_AREA_TEXT_BOX') AS id_ajuda,
                             (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_NumberTextBox') AS id_componente,
                              'FORM_FIELD_NUMBER_TEXT_BOX_TELEFONE_CODIGO_AREA' AS nome,
                              'FORM_FIELD_NUMBER_TEXT_BOX_TELEFONE_CODIGO_AREA' AS constante_textual, true AS ativo,
                              'FORM_FIELD_TELEFONE_CODIGO_AREA' AS constante_textual_label,
                              'telefoneCodigoArea' AS element_name, '''style'' => ''width: 40px;''' AS element_attribs,
                              '''places'' => 0' AS element_options, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda, 
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_attribs, element_options, rowinfo)
SELECT c.id AS id_categoria, (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_TELEFONE_TEXT_BOX') AS id_ajuda,
                             (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_NumberTextBox') AS id_componente,
                              'FORM_FIELD_NUMBER_TEXT_BOX_TELEFONE' AS nome,
                              'FORM_FIELD_NUMBER_TEXT_BOX_TELEFONE' AS constante_textual, true AS ativo,
                              'FORM_FIELD_TELEFONE' AS constante_textual_label,
                              'telefone' AS element_name, '''style'' => ''width: 70px;''' AS element_attribs,
                              '''places'' => 0' AS element_options, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda, 
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_attribs, element_options, rowinfo)
SELECT c.id AS id_categoria, (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_TELEFONE_RAMAL_TEXT_BOX') AS id_ajuda,
                             (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_NumberTextBox') AS id_componente,
                              'FORM_FIELD_NUMBER_TEXT_BOX_TELEFONE_RAMAL' AS nome,
                              'FORM_FIELD_NUMBER_TEXT_BOX_TELEFONE_RAMAL' AS constante_textual, true AS ativo,
                              'FORM_FIELD_TELEFONE_RAMAL' AS constante_textual_label,
                              'telefoneRamal' AS element_name, '''style'' => ''width: 40px;''' AS element_attribs,
                              '''places'' => 0' AS element_options, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda, 
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_attribs, rowinfo)

SELECT c.id AS id_categoria, (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_TELEFONE_DESCRICAO_TEXT_AREA') AS id_ajuda,
                             (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_SimpleTextarea') AS id_componente,
                              'FORM_FIELD_SIMPLE_TEXT_AREA_TELEFONE_DESCRICAO' AS nome,
                              'FORM_FIELD_SIMPLE_TEXT_AREA_TELEFONE_DESCRICAO' AS constante_textual, true AS ativo,
                              'FORM_FIELD_TELEFONE_DESCRICAO' AS constante_textual_label,
                              'telefoneDescricao' AS element_name, '''style'' => ''width: 300px;''' AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda, 
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_attribs, rowinfo)

SELECT c.id AS id_categoria, (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_EMAIL_TIPO_FILTERING_SELECT') AS id_ajuda,
                             (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_FilteringSelect') AS id_componente,
                              'FORM_FIELD_FILTERING_SELECT_EMAIL_TIPO' AS nome,
                              'FORM_FIELD_FILTERING_SELECT_EMAIL_TIPO' AS constante_textual, true AS ativo,
                              'FORM_FIELD_EMAIL_TIPO' AS constante_textual_label,
                              'emailTipo' AS element_name, NULL AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda, 
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_attribs, rowinfo)
SELECT c.id AS id_categoria, (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_EMAIL_DESCRICAO_TEXT_AREA') AS id_ajuda,
                             (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_SimpleTextarea') AS id_componente,
                              'FORM_FIELD_SIMPLE_TEXT_AREA_EMAIL_DESCRICAO' AS nome,
                              'FORM_FIELD_SIMPLE_TEXT_AREA_EMAIL_DESCRICAO' AS constante_textual, true AS ativo,
                              'FORM_FIELD_EMAIL_DESCRICAO' AS constante_textual_label,
                              'emailDescricao' AS element_name, '''style'' => ''width: 300px;''' AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda, 
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_attribs, rowinfo)
SELECT c.id AS id_categoria, (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_WEBSITE_TIPO_FILTERING_SELECT') AS id_ajuda,
                             (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_FilteringSelect') AS id_componente,
                              'FORM_FIELD_FILTERING_SELECT_WEBSITE_TIPO' AS nome,
                              'FORM_FIELD_FILTERING_SELECT_WEBSITE_TIPO' AS constante_textual, true AS ativo,
                              'FORM_FIELD_WEBSITE_TIPO' AS constante_textual_label,
                              'webSiteTipo' AS element_name, NULL AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda,
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_attribs, rowinfo)
SELECT c.id AS id_categoria, (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_WEBSITE_ENDERECO_TEXT_BOX') AS id_ajuda,
                              (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_ValidationTextBox') AS id_componente,
                              'FORM_FIELD_VALIDATION_TEXT_BOX_WEBSITE_ENDERECO' AS nome,
                              'FORM_FIELD_VALIDATION_TEXT_BOX_WEBSITE_ENDERECO' AS constante_textual, true AS ativo,
                              'FORM_FIELD_WEBSITE_ENDERECO' AS constante_textual_label,
                              'webSitelEndereco' AS element_name, '''size'' => 100, ''style'' => ''width: 300px;''' AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda, 
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_attribs, rowinfo)
SELECT c.id AS id_categoria, (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_WEBSITE_DESCRICAO_TEXT_AREA') AS id_ajuda,
                             (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_SimpleTextarea') AS id_componente,
                              'FORM_FIELD_SIMPLE_TEXT_AREA_WEBSITE_DESCRICAO' AS nome,
                              'FORM_FIELD_SIMPLE_TEXT_AREA_WEBSITE_DESCRICAO' AS constante_textual, true AS ativo,
                              'FORM_FIELD_WEBSITE_DESCRICAO' AS constante_textual_label,
                              'webSiteDescricao' AS element_name, '''style'' => ''width: 300px;''' AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda, 
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_attribs, rowinfo)

SELECT c.id AS id_categoria, (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_NOME_USUARIO_TEXT_BOX') AS id_ajuda,
                             (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_ValidationTextBox') AS id_componente,
                              'FORM_FIELD_VALIDATION_TEXT_BOX_NOME_USUARIO' AS nome,
                              'FORM_FIELD_VALIDATION_TEXT_BOX_NOME_USUARIO' AS constante_textual, true AS ativo,
                              'FORM_FIELD_NOME' AS constante_textual_label,
                              'nome' AS element_name, '''size'' => 100, ''style'' => ''width: 300px;''' AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda, 
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_attribs, rowinfo)

SELECT c.id AS id_categoria, (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_EMAIL_USUARIO_TEXT_BOX') AS id_ajuda,
                             (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_ValidationTextBox') AS id_componente,
                              'FORM_FIELD_VALIDATION_TEXT_BOX_EMAIL_USUARIO' AS nome,
                              'FORM_FIELD_VALIDATION_TEXT_BOX_EMAIL_USUARIO' AS constante_textual, true AS ativo,
                              'FORM_FIELD_EMAIL' AS constante_textual_label,
                              'email' AS element_name, '''size'' => 100, ''style'' => ''width: 300px;''' AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, nome, constante_textual, ativo, id_componente, constante_textual_label,
                                 element_name, element_attribs, rowinfo)
SELECT c.id AS id_categoria, 'CAPTCHA_6' AS nome, 'CAPTCHA_6' AS constante_textual, true AS ativo,
	   (SELECT cp.id
        from basico.componente cp
        LEFT join basico.categoria c ON (cp.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'COMPONENTE'
        AND c.nome = 'COMPONENTE_ZF'
        AND cp.nome = 'ZF_captcha') AS id_componente,
       'FORM_FIELD_CAPTCHA_6' AS constante_textual_label, 'verificador6digitos' AS element_name, 
	   '''class'' => ''dijitTextBox'', ''style'' => ''margin-top: 10px; margin-bottom: 10px;''' AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_CAPTCHA';

INSERT INTO basico_formulario.elemento(id_categoria, nome, constante_textual, ativo, id_componente, element_name, element_options, rowinfo)
SELECT c.id AS id_categoria, 'FORM_HASH' AS nome, 'FORM_HASH' AS constante_textual, true AS ativo,
	   (SELECT cp.id
        from basico.componente cp
        LEFT join basico.categoria c ON (cp.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'COMPONENTE'
        AND c.nome = 'COMPONENTE_ZF'
        AND cp.nome = 'ZF_hash') AS id_componente,
       'csrf' AS element_name, 
       '''ignore'' => true, ''salt'' => ''unique'',  ''errorMessages'' => array(''Identical'' => $this->getView()->tradutor(''FORM_ELEMENT_VALIDATOR_INVALID_CSRF''),),' AS element_options, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_HASH';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda,
                                 id_componente, nome, constante_textual, ativo, constante_textual_label, 
                                 element_name, element_attribs, rowinfo)
SELECT c.id AS id_categoria, (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_PAIS_NASCIMENTO_FILTERING_SELECT') AS id_ajuda,
                             (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_FilteringSelect') AS id_componente,
                              'FORM_FIELD_PAIS_NASCIMENTO_FILTERING_SELECT' AS nome,
                              'FORM_FIELD_PAIS_NASCIMENTO_FILTERING_SELECT' AS constante_textual, true AS ativo,
                              'FORM_FIELD_PAIS_NASCIMENTO_LABEL' AS constante_textual_label,
                              'comboBoxPaisNascimento' AS element_name, NULL AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda,
                                 id_componente, nome, constante_textual, ativo, constante_textual_label, 
                                 element_name, element_attribs, rowinfo)
SELECT c.id AS id_categoria, (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_ESTADO_NASCIMENTO_FILTERING_SELECT') AS id_ajuda,
                             (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_FilteringSelect') AS id_componente,
                              'FORM_FIELD_ESTADO_NASCIMENTO_FILTERING_SELECT' AS nome,
                              'FORM_FIELD_ESTADO_NASCIMENTO_FILTERING_SELECT' AS constante_textual, true AS ativo,
                              'FORM_FIELD_ESTADO_NASCIMENTO_LABEL' AS constante_textual_label,
                              'comboboxEstadoNascimento' AS element_name, NULL AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda,
                                 id_componente, nome, constante_textual, ativo, constante_textual_label, 
                                 element_name, element_attribs, rowinfo)
SELECT c.id AS id_categoria, (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_ESTADO_NASCIMENTO_TEXT_BOX') AS id_ajuda,
                             (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_ValidationTextBox') AS id_componente,
                              'FORM_FIELD_ESTADO_NASCIMENTO_VALIDATION_TEXT_BOX' AS nome,
                              'FORM_FIELD_ESTADO_NASCIMENTO_VALIDATION_TEXT_BOX' AS constante_textual, true AS ativo,
                              'FORM_FIELD_ESTADO_NASCIMENTO_LABEL' AS constante_textual_label,
                              'textboxEstadoNascimento' AS element_name, NULL AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda,
                                 id_componente, nome, constante_textual, ativo, constante_textual_label, 
                                 element_name, element_attribs, rowinfo)
SELECT c.id AS id_categoria, (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_MUNICIPIO_NASCIMENTO_FILTERING_SELECT') AS id_ajuda,
                             (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_FilteringSelect') AS id_componente,
                              'FORM_FIELD_MUNICIPIO_NASCIMENTO_FILTERING_SELECT' AS nome,
                              'FORM_FIELD_MUNICIPIO_NASCIMENTO_FILTERING_SELECT' AS constante_textual, true AS ativo,
                              'FORM_FIELD_MUNICIPIO_NASCIMENTO_LABEL' AS constante_textual_label,
                              'comboboxMunicipioNascimento' AS element_name, NULL AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda,
                                 id_componente, nome, constante_textual, ativo, constante_textual_label, 
                                 element_name, element_attribs, rowinfo)
SELECT c.id AS id_categoria, (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_MUNICIPIO_NASCIMENTO_TEXT_BOX') AS id_ajuda,
                             (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_ValidationTextBox') AS id_componente,
                              'FORM_FIELD_MUNICIPIO_NASCIMENTO_VALIDATION_TEXT_BOX' AS nome,
                              'FORM_FIELD_MUNICIPIO_NASCIMENTO_VALIDATION_TEXT_BOX' AS constante_textual, true AS ativo,
                              'FORM_FIELD_MUNICIPIO_NASCIMENTO_LABEL' AS constante_textual_label,
                              'textboxMunicipioNascimento' AS element_name, NULL AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda,
                                 id_componente, nome, constante_textual, ativo, constante_textual_label, 
                                 element_name, element_attribs, rowinfo)
SELECT c.id AS id_categoria, (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_NOME_PAI_TEXT_BOX') AS id_ajuda,
                             (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_ValidationTextBox') AS id_componente,
                              'FORM_FIELD_NOME_PAI_VALIDATION_TEXT_BOX' AS nome,
                              'FORM_FIELD_NOME_PAI_VALIDATION_TEXT_BOX' AS constante_textual, true AS ativo,
                              'FORM_FIELD_NOME_PAI_LABEL' AS constante_textual_label,
                              'textboxNomePai' AS element_name, NULL AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda,
                                 id_componente, nome, constante_textual, ativo, constante_textual_label, 
                                 element_name, element_attribs, rowinfo)
SELECT c.id AS id_categoria, (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_NOME_MAE_TEXT_BOX') AS id_ajuda,
                             (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_ValidationTextBox') AS id_componente,
                              'FORM_FIELD_NOME_MAE_VALIDATION_TEXT_BOX' AS nome,
                              'FORM_FIELD_NOME_MAE_VALIDATION_TEXT_BOX' AS constante_textual, true AS ativo,
                              'FORM_FIELD_NOME_MAE_LABEL' AS constante_textual_label,
                              'textboxNomeMae' AS element_name, NULL AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda, 
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_attribs, rowinfo)
SELECT c.id AS id_categoria, (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_ENDERECO_TIPO_FILTERING_SELECT') AS id_ajuda,
                             (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_FilteringSelect') AS id_componente,
                              'FORM_FIELD_ENDERECO_TIPO_FILTERING_SELECT' AS nome,
                              'FORM_FIELD_ENDERECO_TIPO_FILTERING_SELECT' AS constante_textual, true AS ativo,
                              'FORM_FIELD_ENDERECO_TIPO_LABEL' AS constante_textual_label,
                              'enderecoTipo' AS element_name, NULL AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda, 
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_attribs, rowinfo)
SELECT c.id AS id_categoria, (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_PAIS_FILTERING_SELECT') AS id_ajuda,
                             (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_FilteringSelect') AS id_componente,
                              'FORM_FIELD_ENDERECO_PAIS_FILTERING_SELECT' AS nome,
                              'FORM_FIELD_ENDERECO_PAIS_FILTERING_SELECT' AS constante_textual, true AS ativo,
                              'FORM_FIELD_ENDERECO_PAIS_LABEL' AS constante_textual_label,
                              'enderecoPais' AS element_name, NULL AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda, 
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_attribs, rowinfo)
SELECT c.id AS id_categoria, (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_ESTADO_FILTERING_SELECT') AS id_ajuda,
                             (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_FilteringSelect') AS id_componente,
                              'FORM_FIELD_ENDERECO_ESTADO_FILTERING_SELECT' AS nome,
                              'FORM_FIELD_ENDERECO_ESTADO_FILTERING_SELECT' AS constante_textual, true AS ativo,
                              'FORM_FIELD_ENDERECO_ESTADO_LABEL' AS constante_textual_label,
                              'enderecoEstado' AS element_name, NULL AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda, 
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_attribs, rowinfo)
SELECT c.id AS id_categoria, (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_ESTADO_TEXT_BOX') AS id_ajuda,
                             (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_ValidationTextBox') AS id_componente,
                              'FORM_FIELD_ENDERECO_ESTADO_VALIDATION_TEXT_BOX' AS nome,
                              'FORM_FIELD_ENDERECO_ESTADO_VALIDATION_TEXT_BOX' AS constante_textual, true AS ativo,
                              'FORM_FIELD_ENDERECO_ESTADO_LABEL' AS constante_textual_label,
                              'enderecoEstadoTextBox' AS element_name, NULL AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda, 
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_attribs, rowinfo)

SELECT c.id AS id_categoria, (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_MUNICIPIO_FILTERING_SELECT') AS id_ajuda,
                             (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_FilteringSelect') AS id_componente,
                              'FORM_FIELD_ENDERECO_MUNICIPIO_FILTERING_SELECT' AS nome,
                              'FORM_FIELD_ENDERECO_MUNICIPIO_FILTERING_SELECT' AS constante_textual, true AS ativo,
                              'FORM_FIELD_ENDERECO_MUNICIPIO_LABEL' AS constante_textual_label,
                              'enderecoMunicipio' AS element_name, NULL AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda, 
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_attribs, rowinfo)
SELECT c.id AS id_categoria, (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_MUNICIPIO_TEXT_BOX') AS id_ajuda,
                             (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_ValidationTextBox') AS id_componente,
                              'FORM_FIELD_ENDERECO_MUNICIPIO_VALIDATION_TEXT_BOX' AS nome,
                              'FORM_FIELD_ENDERECO_MUNICIPIO_VALIDATION_TEXT_BOX' AS constante_textual, true AS ativo,
                              'FORM_FIELD_ENDERECO_MUNICIPIO_LABEL' AS constante_textual_label,
                              'enderecoMunicipioTextBox' AS element_name, NULL AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda, 
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_attribs, rowinfo)

SELECT c.id AS id_categoria, (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_CEP_TEXT_BOX') AS id_ajuda,
                             (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_ValidationTextBox') AS id_componente,
                              'FORM_FIELD_ENDERECO_CEP_VALIDATION_TEXT_BOX' AS nome,
                              'FORM_FIELD_ENDERECO_CEP_VALIDATION_TEXT_BOX' AS constante_textual, true AS ativo,
                              'FORM_FIELD_ENDERECO_CEP_LABEL' AS constante_textual_label,
                              'enderecoCep' AS element_name, NULL AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda, 
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_attribs, rowinfo)
SELECT c.id AS id_categoria, (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_LOGRADOURO_TEXT_BOX') AS id_ajuda,
                             (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_ValidationTextBox') AS id_componente,
                              'FORM_FIELD_ENDERECO_LOGRADOURO_VALIDATION_TEXT_BOX' AS nome,
                              'FORM_FIELD_ENDERECO_LOGRADOURO_VALIDATION_TEXT_BOX' AS constante_textual, true AS ativo,
                              'FORM_FIELD_ENDERECO_LOGRADOURO_LABEL' AS constante_textual_label,
                              'enderecoLogradouro' AS element_name, NULL AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda, 
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_attribs, rowinfo)
SELECT c.id AS id_categoria, (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_ENDERECO_NUMERO_TEXT_BOX') AS id_ajuda,
                             (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_ValidationTextBox') AS id_componente,
                              'FORM_FIELD_ENDERECO_NUMERO_VALIDATION_TEXT_BOX' AS nome,
                              'FORM_FIELD_ENDERECO_NUMERO_VALIDATION_TEXT_BOX' AS constante_textual, true AS ativo,
                              'FORM_FIELD_ENDERECO_NUMERO_LABEL' AS constante_textual_label,
                              'enderecoNumero' AS element_name, NULL AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda, 
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_attribs, rowinfo)
SELECT c.id AS id_categoria, (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_ENDERECO_COMPLEMENTO_TEXT_BOX') AS id_ajuda,
                             (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_ValidationTextBox') AS id_componente,
                              'FORM_FIELD_ENDERECO_COMPLEMENTO_VALIDATION_TEXT_BOX' AS nome,
                              'FORM_FIELD_ENDERECO_COMPLEMENTO_VALIDATION_TEXT_BOX' AS constante_textual, true AS ativo,
                              'FORM_FIELD_ENDERECO_COMPLEMENTO_LABEL' AS constante_textual_label,
                              'enderecoComplemento' AS element_name, NULL AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda, 
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_attribs, rowinfo)
SELECT c.id AS id_categoria, (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_NUMERO_BANCO_TEXT_BOX') AS id_ajuda,
                             (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_ValidationTextBox') AS id_componente,
                              'FORM_FIELD_CONTA_BANCARIA_NUMERO_BANCO_VALIDATION_TEXT_BOX' AS nome,
                              'FORM_FIELD_CONTA_BANCARIA_NUMERO_BANCO_VALIDATION_TEXT_BOX' AS constante_textual, true AS ativo,
                              'FORM_FIELD_CONTA_BANCARIA_NUMERO_BANCO_LABEL' AS constante_textual_label,
                              'contaBancariaNumeroBancoTextBox' AS element_name, NULL AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda, 
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_attribs, rowinfo)
SELECT c.id AS id_categoria, (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_BANCO_FILTERING_SELECT') AS id_ajuda,
                             (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_FilteringSelect') AS id_componente,
                              'FORM_FIELD_CONTA_BANCARIA_BANCO_FILTERING_SELECT' AS nome,
                              'FORM_FIELD_CONTA_BANCARIA_BANCO_FILTERING_SELECT' AS constante_textual, true AS ativo,
                              'FORM_FIELD_CONTA_BANCARIA_BANCO_LABEL' AS constante_textual_label,
                              'contaBancariaBancoComboBox' AS element_name, NULL AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda, 
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_attribs, rowinfo)
SELECT c.id AS id_categoria, (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_AGENCIA_TEXT_BOX') AS id_ajuda,
                             (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_ValidationTextBox') AS id_componente,
                              'FORM_FIELD_CONTA_BANCARIA_AGENCIA_VALIDATION_TEXT_BOX' AS nome,
                              'FORM_FIELD_CONTA_BANCARIA_AGENCIA_VALIDATION_TEXT_BOX' AS constante_textual, true AS ativo,
                              'FORM_FIELD_CONTA_BANCARIA_AGENCIA_LABEL' AS constante_textual_label,
                              'contaBancariaAgenciaTextBox' AS element_name, NULL AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda, 
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_attribs, rowinfo)
SELECT c.id AS id_categoria, (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_TIPO_CONTA_FILTERING_SELECT') AS id_ajuda,
                             (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_FilteringSelect') AS id_componente,
                              'FORM_FIELD_CONTA_BANCARIA_TIPO_CONTA_FILTERING_SELECT' AS nome,
                              'FORM_FIELD_CONTA_BANCARIA_TIPO_CONTA_FILTERING_SELECT' AS constante_textual, true AS ativo,
                              'FORM_FIELD_CONTA_BANCARIA_TIPO_CONTA_LABEL' AS constante_textual_label,
                              'contaBancariaTipoContaComboBox' AS element_name, NULL AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda, 
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_attribs, rowinfo)
SELECT c.id AS id_categoria, (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_NUMERO_CONTA_TEXT_BOX') AS id_ajuda,
                             (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_ValidationTextBox') AS id_componente,
                              'FORM_FIELD_CONTA_BANCARIA_NUMERO_CONTA_VALIDATION_TEXT_BOX' AS nome,
                              'FORM_FIELD_CONTA_BANCARIA_NUMERO_CONTA_VALIDATION_TEXT_BOX' AS constante_textual, true AS ativo,
                              'FORM_FIELD_CONTA_BANCARIA_NUMERO_CONTA_LABEL' AS constante_textual_label,
                              'contaBancariaNumeroContaTextBox' AS element_name, NULL AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_ajuda, 
								 id_componente, nome, constante_textual, ativo, constante_textual_label, 
								 element_name, element_attribs, rowinfo)
SELECT c.id AS id_categoria, (SELECT a.id
                              from basico.ajuda a
                              LEFT join basico.categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_FIELD'
                              AND a.nome = 'AJUDA_FORMULARIO_FIELD_DESCRICAO_IDENTIFICACAO_CONTA_TEXT_BOX') AS id_ajuda,
                             (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_ValidationTextBox') AS id_componente,
                              'FORM_FIELD_CONTA_BANCARIA_DESCRICAO_IDENTIFICACAO_CONTA_VALIDATION_TEXT_BOX' AS nome,
                              'FORM_FIELD_CONTA_BANCARIA_DESCRICAO_IDENTIFICACAO_CONTA_VALIDATION_TEXT_BOX' AS constante_textual, true AS ativo,
                              'FORM_FIELD_CONTA_BANCARIA_DESCRICAO_IDENTIFICACAO_CONTA_LABEL' AS constante_textual_label,
                              'contaBancariaDescricaoIdentificacaoContaTextBox' AS element_name, NULL AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO basico_formulario.elemento(id_categoria, id_componente, nome, constante_textual, ativo, 
								 element_name, element_attribs, element_options, rowinfo)
SELECT c.id AS id_categoria, (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_ROCHEDO'
                              AND cp.nome = 'ROCHEDO_html') AS id_componente,
                              'FORM_HTML_TEXT_DESCRICAO_FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO' AS nome,
                              'FORM_HTML_TEXT_DESCRICAO_FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO' AS constante_textual, true AS ativo,
                              'htmlTextDescricaoFormResolvedorConflitoVersaoObjeto' AS element_name, NULL AS element_attribs,
                              '''value'' => $this->getView()->tradutor(''FORM_ELEMENT_HTML_TEXT_DESCRICAO_FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO'')' AS element_options, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_HTML';

INSERT INTO basico_formulario.elemento(id_categoria, id_componente, nome, constante_textual, ativo, constante_textual_label,
								 element_name, element_attribs, rowinfo)
SELECT c.id AS id_categoria, (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_ZF'
                              AND cp.nome = 'ZF_button') AS id_componente,
                              'FORM_BUTTON_VISUALIZAR_DADOS_ATUAIS_FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO' AS nome,
                              'FORM_BUTTON_VISUALIZAR_DADOS_ATUAIS_FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO' AS constante_textual, true AS ativo,
                              'FORM_BUTTON_VISUALIZAR_DADOS_ATUAIS_FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO' AS constante_textual_label,
                              'htmlButtonVisualizarDadosAtuaisFormResolvedorConflitoVersaoObjeto' AS element_name, NULL AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON';

INSERT INTO basico_formulario.elemento(id_categoria, id_componente, nome, constante_textual, ativo, 
								 element_name, element_attribs, element_options, rowinfo)
SELECT c.id AS id_categoria, (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_ROCHEDO'
                              AND cp.nome = 'ROCHEDO_html') AS id_componente,
                              'FORM_HTML_TEXT_DESCRICAO_BUTTON_VISUALIZAR_DADOS_ATUAIS_FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO' AS nome,
                              'FORM_HTML_TEXT_DESCRICAO_BUTTON_VISUALIZAR_DADOS_ATUAIS_FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO' AS constante_textual, true AS ativo,
                              'htmlTextDescricaoButtonVisualizarDadosAtuaisFormResolvedorConflitoVersaoObjeto' AS element_name, NULL AS element_attribs,
                              '''value'' => $this->getView()->tradutor(''FORM_ELEMENT_HTML_TEXT_DESCRICAO_BUTTON_VISUALIZAR_DADOS_ATUAIS_FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO'')' AS element_options, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_HTML';

INSERT INTO basico_formulario.elemento(id_categoria, id_componente, nome, constante_textual, ativo, constante_textual_label,
								 element_name, element_attribs, rowinfo)
SELECT c.id AS id_categoria, (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_ZF'
                              AND cp.nome = 'ZF_button') AS id_componente,
                              'FORM_BUTTON_REVISAR_DADOS_ATUAIS_FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO' AS nome,
                              'FORM_BUTTON_REVISAR_DADOS_ATUAIS_FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO' AS constante_textual, true AS ativo,
                              'FORM_BUTTON_REVISAR_DADOS_ATUAIS_FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO' AS constante_textual_label,
                              'htmlButtonRevisarDadosAtuaisFormResolvedorConflitoVersaoObjeto' AS element_name, NULL AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON';

INSERT INTO basico_formulario.elemento(id_categoria, id_componente, nome, constante_textual, ativo, 
								 element_name, element_attribs, element_options, rowinfo)
SELECT c.id AS id_categoria, (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_ROCHEDO'
                              AND cp.nome = 'ROCHEDO_html') AS id_componente,
                              'FORM_HTML_TEXT_DESCRICAO_BUTTON_REVISAR_DADOS_ATUAIS_FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO' AS nome,
                              'FORM_HTML_TEXT_DESCRICAO_BUTTON_REVISAR_DADOS_ATUAIS_FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO' AS constante_textual, true AS ativo,
                              'htmlTextDescricaoButtonRevisarDadosAtuaisFormResolvedorConflitoVersaoObjeto' AS element_name, NULL AS element_attribs,
                              '''value'' => $this->getView()->tradutor(''FORM_ELEMENT_HTML_TEXT_DESCRICAO_BUTTON_REVISAR_DADOS_ATUAIS_FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO'')' AS element_options, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_HTML';

INSERT INTO basico_formulario.elemento(id_categoria, id_componente, nome, constante_textual, ativo, constante_textual_label,
								 element_name, element_attribs, rowinfo)
SELECT c.id AS id_categoria, (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_ZF'
                              AND cp.nome = 'ZF_button') AS id_componente,
                              'FORM_BUTTON_SOBRESCREVER_ATUALIZACAO_FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO' AS nome,
                              'FORM_BUTTON_SOBRESCREVER_ATUALIZACAO_FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO' AS constante_textual, true AS ativo,
                              'FORM_BUTTON_SOBRESCREVER_ATUALIZACAO_FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO' AS constante_textual_label,
                              'htmlButtonSobrescreverAtualizacaoFormResolvedorConflitoVersaoObjeto' AS element_name, NULL AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON';

INSERT INTO basico_formulario.elemento(id_categoria, id_componente, nome, constante_textual, ativo, 
								 element_name, element_attribs, element_options, rowinfo)
SELECT c.id AS id_categoria, (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_ROCHEDO'
                              AND cp.nome = 'ROCHEDO_html') AS id_componente,
                              'FORM_ELEMENT_HTML_TEXT_DESCRICAO_BUTTON_SOBRESCREVER_ATUALIZACAO_FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO' AS nome,
                              'FORM_ELEMENT_HTML_TEXT_DESCRICAO_BUTTON_SOBRESCREVER_ATUALIZACAO_FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO' AS constante_textual, true AS ativo,
                              'htmlTextDescricaoButtonSobrescreverAtualizacaoFormResolvedorConflitoVersaoObjeto' AS element_name, NULL AS element_attribs,
                              '''value'' => $this->getView()->tradutor(''FORM_ELEMENT_HTML_TEXT_DESCRICAO_BUTTON_SOBRESCREVER_ATUALIZACAO_FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO'')' AS element_options, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_HTML';

INSERT INTO basico_formulario.elemento(id_categoria, id_componente, nome, constante_textual, ativo, constante_textual_label,
								 element_name, element_attribs, rowinfo)
SELECT c.id AS id_categoria, (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_ZF'
                              AND cp.nome = 'ZF_button') AS id_componente,
                              'FORM_BUTTON_CANCELAR_FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO' AS nome,
                              'FORM_BUTTON_CANCELAR_FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO' AS constante_textual, true AS ativo,
                              'FORM_BUTTON_CANCELAR_FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO' AS constante_textual_label,
                              'htmlButtonCancelarFormResolvedorConflitoVersaoObjeto' AS element_name, NULL AS element_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON';

INSERT INTO basico_formulario.elemento(id_categoria, id_componente, nome, constante_textual, ativo, 
								 element_name, element_attribs, element_options, rowinfo)
SELECT c.id AS id_categoria, (SELECT cp.id
                              from basico.componente cp
                              LEFT join basico.categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_ROCHEDO'
                              AND cp.nome = 'ROCHEDO_html') AS id_componente,
                              'FORM_ELEMENT_HTML_TEXT_DESCRICAO_BUTTON_CANCELAR_FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO' AS nome,
                              'FORM_ELEMENT_HTML_TEXT_DESCRICAO_BUTTON_CANCELAR_FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO' AS constante_textual, true AS ativo,
                              'htmlTextDescricaoButtonCancelarFormResolvedorConflitoVersaoObjeto' AS element_name, NULL AS element_attribs,
                              '''value'' => $this->getView()->tradutor(''FORM_ELEMENT_HTML_TEXT_DESCRICAO_BUTTON_CANCELAR_FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO'')' AS element_options, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_HTML';