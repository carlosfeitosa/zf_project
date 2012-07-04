/**
* SCRIPT DE POPULACAO DA TABELA basico_formulario_elemento.assoccl_decorator
* 
* Esta tabela relaciona os elementos de um formulario com um ou mais decorators
* 
* versao: 1.0 (POSTGRESQL 9.1.1)
* por: JOÃO VASCONCELOS (joao.vasconcelos@rochedoframework.com)
* criacao: 03/02/2012
* ultimas modificacoes:  
* 						
*/

INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_FILTERING_SELECT_FORMULARIO'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_FILTERING_SELECT_TIPO_DATA'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_DATE_TEXT_BOX_DATA_INICIO_PERIODO'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_DATE_TEXT_BOX_DATA_TERMINO_PERIODO'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_VALIDATION_TEXT_BOX_ACEITE_TERMOS_USO'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_SIMPLE_TEXT_AREA_TERMOS_USO'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_SIMPLE_TEXT_AREA_HISTORICO_MEDICO'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_FILTERING_SELECT_TIPO_SANGUINEO'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_NUMBER_TEXT_BOX_ALTURA'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_NUMBER_TEXT_BOX_PESO'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_FILTERING_SELECT_RACA'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_RADIO_BUTTON_SUGESTAO_LOGIN'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_VALIDATION_TEXT_BOX_NUMERO_DOCUMENTO'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_RADIO_BUTTON_SEXO'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_DATE_TEXT_BOX_DATA_NASCIMENTO'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_VALIDATION_TEXT_BOX_LOGIN'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_PASSWORD_TEXT_BOX_SENHA_WITH_CHECKER'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_PASSWORD_TEXT_BOX_SENHA'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_PASSWORD_TEXT_BOX_SENHA_CONFIRMACAO'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_CHECKBOX_LOGIN_MANTER_LOGADO'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_LINK_PROBLEMAS_LOGON'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO_HTML') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_LINK_NOVO_USUARIO'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO_HTML') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_FILTERING_SELECT_CATEGORIA_BOLSA_CNPQ'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_FILTERING_SELECT_MAIOR_TITULACAO'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_FILTERING_SELECT_INSTITUICAO_QUE_CONCEDEU'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_FILTERING_SELECT_AREA_DE_CONHECIMENTO'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_VALIDATION_TEXT_BOX_NOME_CURSO'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_DATE_TEXT_BOX_DATA_OBTENCAO'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_FILTERING_SELECT_TITULACAO_ESPERADA'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_FILTERING_SELECT_INSTITUICAO_CURSO_ATUAL'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_FILTERING_SELECT_AREA_CONHECIMENTO_CURSO_ATUAL'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_VALIDATION_TEXT_BOX_NOME_CURSO_ATUAL'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_FILTERING_SELECT_PERIODO'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_FILTERING_SELECT_TURNO'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_FILTERING_SELECT_PROFISSAO'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_FILTERING_SELECT_VINCULO_PROFISSIONAL'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_FILTERING_SELECT_PJ_VINCULO'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_FILTERING_SELECT_REGIME_TRABALHO'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_VALIDATION_TEXT_BOX_CARGO'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_VALIDATION_TEXT_BOX_FUNCAO'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_SIMPLE_TEXT_AREA_ATIVIDADES_DESENVOLVIDAS'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_DATE_TEXT_BOX_DATA_ADMISSAO'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_DATE_TEXT_BOX_DATA_DESVINCULACAO'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_NUMBER_TEXT_BOX_CARGA_HORARIA_SEMANAL'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_CURRENCY_TEXT_BOX_SALARIO_BRUTO'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_CHECK_BOX_DEDICACAO_EXCLUSIVA'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_SIMPLE_TEXT_AREA_OUTRAS_INFORMACOES'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_MULTI_CHECK_BOX_PERFIS_DISPONIVEIS'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_PASSWORD_TEXT_BOX_SENHA_ATUAL'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_PASSWORD_TEXT_BOX_NOVA_SENHA'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_PASSWORD_TEXT_BOX_CONFIRMACAO_NOVA_SENHA'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_ELEMENT_HTML_TEXT_INSTRUCOES_MUDANCA_SENHA_SUBFORM_DADOS_USUARIO_CONTA'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO_HTML') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_FILTERING_SELECT_PERFIS_VINCULADOS_DISPONIVEIS'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_FILTERING_SELECT_TELEFONE_TIPO'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_NUMBER_TEXT_BOX_TELEFONE_CODIGO_PAIS'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_NUMBER_TEXT_BOX_TELEFONE_CODIGO_AREA'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_NUMBER_TEXT_BOX_TELEFONE'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_NUMBER_TEXT_BOX_TELEFONE_RAMAL'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_SIMPLE_TEXT_AREA_TELEFONE_DESCRICAO'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_FILTERING_SELECT_EMAIL_TIPO'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_SIMPLE_TEXT_AREA_EMAIL_DESCRICAO'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_FILTERING_SELECT_WEBSITE_TIPO'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_VALIDATION_TEXT_BOX_WEBSITE_ENDERECO'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_SIMPLE_TEXT_AREA_WEBSITE_DESCRICAO'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_VALIDATION_TEXT_BOX_NOME_USUARIO'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_VALIDATION_TEXT_BOX_EMAIL_USUARIO'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'CAPTCHA_6'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO_CAPTCHA') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'FORM_FIELD_DIV_WIDTH_300PX') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_PAIS_NASCIMENTO_FILTERING_SELECT'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_ESTADO_NASCIMENTO_FILTERING_SELECT'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_ESTADO_NASCIMENTO_VALIDATION_TEXT_BOX'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_MUNICIPIO_NASCIMENTO_FILTERING_SELECT'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_MUNICIPIO_NASCIMENTO_VALIDATION_TEXT_BOX'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_NOME_PAI_VALIDATION_TEXT_BOX'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_NOME_MAE_VALIDATION_TEXT_BOX'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_ENDERECO_TIPO_FILTERING_SELECT'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_ENDERECO_PAIS_FILTERING_SELECT'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_ENDERECO_ESTADO_FILTERING_SELECT'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_ENDERECO_ESTADO_VALIDATION_TEXT_BOX'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_ENDERECO_MUNICIPIO_FILTERING_SELECT'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_ENDERECO_MUNICIPIO_VALIDATION_TEXT_BOX'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_ENDERECO_CEP_VALIDATION_TEXT_BOX'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_ENDERECO_LOGRADOURO_VALIDATION_TEXT_BOX'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_ENDERECO_NUMERO_VALIDATION_TEXT_BOX'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_ENDERECO_COMPLEMENTO_VALIDATION_TEXT_BOX'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_CONTA_BANCARIA_NUMERO_BANCO_VALIDATION_TEXT_BOX'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_CONTA_BANCARIA_BANCO_FILTERING_SELECT'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_CONTA_BANCARIA_AGENCIA_VALIDATION_TEXT_BOX'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_CONTA_BANCARIA_TIPO_CONTA_FILTERING_SELECT'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_CONTA_BANCARIA_NUMERO_CONTA_VALIDATION_TEXT_BOX'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_CONTA_BANCARIA_DESCRICAO_IDENTIFICACAO_CONTA_VALIDATION_TEXT_BOX'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_HTML_TEXT_DESCRICAO_FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO_HTML') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_HTML_TEXT_DESCRICAO_BUTTON_VISUALIZAR_DADOS_ATUAIS_FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO_HTML') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_HTML_TEXT_DESCRICAO_BUTTON_REVISAR_DADOS_ATUAIS_FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO_HTML') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_ELEMENT_HTML_TEXT_DESCRICAO_BUTTON_SOBRESCREVER_ATUALIZACAO_FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO_HTML') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_formulario_elemento.assoccl_decorator (id_elemento, id_decorator, ordem, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_ELEMENT_HTML_TEXT_DESCRICAO_BUTTON_CANCELAR_FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO_HTML') AS id_elemento,
	   (SELECT d.id
	      FROM basico_formulario.decorator d
	      LEFT join basico.categoria c ON (d.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE t.nome = 'FORMULARIO'
	      AND c.nome = 'FORMULARIO_FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
	      AND d.nome = 'ZF_LABEL_SEM_ESCAPE_SEM_LINK_ELEMENTO') AS id_decorator,
	      1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;	   