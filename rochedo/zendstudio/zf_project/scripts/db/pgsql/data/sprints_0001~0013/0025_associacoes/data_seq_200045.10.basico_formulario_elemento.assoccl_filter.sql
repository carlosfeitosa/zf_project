/**
* SCRIPT DE POPULACAO DA TABELA basico_formulario_elemento.assoccl_filter
* 
* Esta tabela relaciona os elementos de um formulario com um ou mais filtros.
* 
* versao: 1.0 (POSTGRESQL 9.1.1)
* por: JOÃO VASCONCELOS (joao.vasconcelos@rochedoframework.com)
* criacao: 03/02/2012
* ultimas modificacoes:  
* 						
*/

INSERT INTO basico_fomulario_elemento.assoccl_decorator (id_elemento, id_filter, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_FILTERING_SELECT_FORMULARIO'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT ff.id
          FROM basico.filter ff
          LEFT join basico.categoria c ON (ff.id_categoria = c.id)
          LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
          WHERE t.nome = 'FORMULARIO'
          AND c.nome = 'FORMULARIO_ELEMENTO_FILTER'
          AND ff.nome = 'STRINGTRIM_STRIPTAGS') AS id_filter,
	   'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_fomulario_elemento.assoccl_decorator (id_elemento, id_filter, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_FILTERING_SELECT_TIPO_DATA'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT ff.id
          FROM basico.filter ff
          LEFT join basico.categoria c ON (ff.id_categoria = c.id)
          LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
          WHERE t.nome = 'FORMULARIO'
          AND c.nome = 'FORMULARIO_ELEMENTO_FILTER'
          AND ff.nome = 'STRINGTRIM_STRIPTAGS') AS id_filter,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_fomulario_elemento.assoccl_decorator (id_elemento, id_filter, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_DATE_TEXT_BOX_DATA_INICIO_PERIODO'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT ff.id
          FROM basico.filter ff
          LEFT join basico.categoria c ON (ff.id_categoria = c.id)
          LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
          WHERE t.nome = 'FORMULARIO'
          AND c.nome = 'FORMULARIO_ELEMENTO_FILTER'
          AND ff.nome = 'STRINGTRIM_STRIPTAGS') AS id_filter,
	   'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_fomulario_elemento.assoccl_decorator (id_elemento, id_filter, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_DATE_TEXT_BOX_DATA_TERMINO_PERIODO'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT ff.id
          FROM basico.filter ff
          LEFT join basico.categoria c ON (ff.id_categoria = c.id)
          LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
          WHERE t.nome = 'FORMULARIO'
          AND c.nome = 'FORMULARIO_ELEMENTO_FILTER'
          AND ff.nome = 'STRINGTRIM_STRIPTAGS') AS id_filter,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_fomulario_elemento.assoccl_decorator (id_elemento, id_filter, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_VALIDATION_TEXT_BOX_ACEITE_TERMOS_USO'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT ff.id
          FROM basico.filter ff
          LEFT join basico.categoria c ON (ff.id_categoria = c.id)
          LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
          WHERE t.nome = 'FORMULARIO'
          AND c.nome = 'FORMULARIO_ELEMENTO_FILTER'
          AND ff.nome = 'STRINGTRIM_STRIPTAGS') AS id_filter,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_fomulario_elemento.assoccl_decorator (id_elemento, id_filter, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_SIMPLE_TEXT_AREA_TERMOS_USO'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT ff.id
          FROM basico.filter ff
          LEFT join basico.categoria c ON (ff.id_categoria = c.id)
          LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
          WHERE t.nome = 'FORMULARIO'
          AND c.nome = 'FORMULARIO_ELEMENTO_FILTER'
          AND ff.nome = 'STRINGTRIM_STRIPTAGS') AS id_filter,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_fomulario_elemento.assoccl_decorator (id_elemento, id_filter, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_SIMPLE_TEXT_AREA_HISTORICO_MEDICO'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT ff.id
          FROM basico.filter ff
          LEFT join basico.categoria c ON (ff.id_categoria = c.id)
          LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
          WHERE t.nome = 'FORMULARIO'
          AND c.nome = 'FORMULARIO_ELEMENTO_FILTER'
          AND ff.nome = 'STRINGTRIM_STRIPTAGS') AS id_filter,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_fomulario_elemento.assoccl_decorator (id_elemento, id_filter, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_FILTERING_SELECT_TIPO_SANGUINEO'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT ff.id
          FROM basico.filter ff
          LEFT join basico.categoria c ON (ff.id_categoria = c.id)
          LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
          WHERE t.nome = 'FORMULARIO'
          AND c.nome = 'FORMULARIO_ELEMENTO_FILTER'
          AND ff.nome = 'STRINGTRIM_STRIPTAGS') AS id_filter,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_fomulario_elemento.assoccl_decorator (id_elemento, id_filter, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_NUMBER_TEXT_BOX_ALTURA'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT ff.id
          FROM basico.filter ff
          LEFT join basico.categoria c ON (ff.id_categoria = c.id)
          LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
          WHERE t.nome = 'FORMULARIO'
          AND c.nome = 'FORMULARIO_ELEMENTO_FILTER'
          AND ff.nome = 'STRINGTRIM_STRIPTAGS') AS id_filter,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_fomulario_elemento.assoccl_decorator (id_elemento, id_filter, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_NUMBER_TEXT_BOX_PESO'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT ff.id
          FROM basico.filter ff
          LEFT join basico.categoria c ON (ff.id_categoria = c.id)
          LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
          WHERE t.nome = 'FORMULARIO'
          AND c.nome = 'FORMULARIO_ELEMENTO_FILTER'
          AND ff.nome = 'STRINGTRIM_STRIPTAGS') AS id_filter,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_fomulario_elemento.assoccl_decorator (id_elemento, id_filter, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_FILTERING_SELECT_RACA'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT ff.id
          FROM basico.filter ff
          LEFT join basico.categoria c ON (ff.id_categoria = c.id)
          LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
          WHERE t.nome = 'FORMULARIO'
          AND c.nome = 'FORMULARIO_ELEMENTO_FILTER'
          AND ff.nome = 'STRINGTRIM_STRIPTAGS') AS id_filter,
	   'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_fomulario_elemento.assoccl_decorator (id_elemento, id_filter, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_VALIDATION_TEXT_BOX_NUMERO_DOCUMENTO'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT ff.id
          FROM basico.filter ff
          LEFT join basico.categoria c ON (ff.id_categoria = c.id)
          LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
          WHERE t.nome = 'FORMULARIO'
          AND c.nome = 'FORMULARIO_ELEMENTO_FILTER'
          AND ff.nome = 'STRINGTRIM_STRIPTAGS') AS id_filter,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_fomulario_elemento.assoccl_decorator (id_elemento, id_filter, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_DATE_TEXT_BOX_DATA_NASCIMENTO'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT ff.id
          FROM basico.filter ff
          LEFT join basico.categoria c ON (ff.id_categoria = c.id)
          LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
          WHERE t.nome = 'FORMULARIO'
          AND c.nome = 'FORMULARIO_ELEMENTO_FILTER'
          AND ff.nome = 'STRINGTRIM_STRIPTAGS') AS id_filter,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_fomulario_elemento.assoccl_decorator (id_elemento, id_filter, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_VALIDATION_TEXT_BOX_LOGIN'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT ff.id
          FROM basico.filter ff
          LEFT join basico.categoria c ON (ff.id_categoria = c.id)
          LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
          WHERE t.nome = 'FORMULARIO'
          AND c.nome = 'FORMULARIO_ELEMENTO_FILTER'
          AND ff.nome = 'STRINGTRIM_STRIPTAGS') AS id_filter,
	   'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_fomulario_elemento.assoccl_decorator (id_elemento, id_filter, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_FILTERING_SELECT_CATEGORIA_BOLSA_CNPQ'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT ff.id
          FROM basico.filter ff
          LEFT join basico.categoria c ON (ff.id_categoria = c.id)
          LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
          WHERE t.nome = 'FORMULARIO'
          AND c.nome = 'FORMULARIO_ELEMENTO_FILTER'
          AND ff.nome = 'STRINGTRIM_STRIPTAGS') AS id_filter,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_fomulario_elemento.assoccl_decorator (id_elemento, id_filter, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_FILTERING_SELECT_MAIOR_TITULACAO'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT ff.id
          FROM basico.filter ff
          LEFT join basico.categoria c ON (ff.id_categoria = c.id)
          LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
          WHERE t.nome = 'FORMULARIO'
          AND c.nome = 'FORMULARIO_ELEMENTO_FILTER'
          AND ff.nome = 'STRINGTRIM_STRIPTAGS') AS id_filter,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_fomulario_elemento.assoccl_decorator (id_elemento, id_filter, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_FILTERING_SELECT_INSTITUICAO_QUE_CONCEDEU'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT ff.id
          FROM basico.filter ff
          LEFT join basico.categoria c ON (ff.id_categoria = c.id)
          LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
          WHERE t.nome = 'FORMULARIO'
          AND c.nome = 'FORMULARIO_ELEMENTO_FILTER'
          AND ff.nome = 'STRINGTRIM_STRIPTAGS') AS id_filter,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_fomulario_elemento.assoccl_decorator (id_elemento, id_filter, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_FILTERING_SELECT_AREA_DE_CONHECIMENTO'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT ff.id
          FROM basico.filter ff
          LEFT join basico.categoria c ON (ff.id_categoria = c.id)
          LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
          WHERE t.nome = 'FORMULARIO'
          AND c.nome = 'FORMULARIO_ELEMENTO_FILTER'
          AND ff.nome = 'STRINGTRIM_STRIPTAGS') AS id_filter,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_fomulario_elemento.assoccl_decorator (id_elemento, id_filter, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_VALIDATION_TEXT_BOX_NOME_CURSO'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT ff.id
          FROM basico.filter ff
          LEFT join basico.categoria c ON (ff.id_categoria = c.id)
          LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
          WHERE t.nome = 'FORMULARIO'
          AND c.nome = 'FORMULARIO_ELEMENTO_FILTER'
          AND ff.nome = 'STRINGTRIM_STRIPTAGS') AS id_filter,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_fomulario_elemento.assoccl_decorator (id_elemento, id_filter, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_DATE_TEXT_BOX_DATA_OBTENCAO'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT ff.id
          FROM basico.filter ff
          LEFT join basico.categoria c ON (ff.id_categoria = c.id)
          LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
          WHERE t.nome = 'FORMULARIO'
          AND c.nome = 'FORMULARIO_ELEMENTO_FILTER'
          AND ff.nome = 'STRINGTRIM_STRIPTAGS') AS id_filter,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_fomulario_elemento.assoccl_decorator (id_elemento, id_filter, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_FILTERING_SELECT_TITULACAO_ESPERADA'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT ff.id
          FROM basico.filter ff
          LEFT join basico.categoria c ON (ff.id_categoria = c.id)
          LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
          WHERE t.nome = 'FORMULARIO'
          AND c.nome = 'FORMULARIO_ELEMENTO_FILTER'
          AND ff.nome = 'STRINGTRIM_STRIPTAGS') AS id_filter,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_fomulario_elemento.assoccl_decorator (id_elemento, id_filter, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_FILTERING_SELECT_INSTITUICAO_CURSO_ATUAL'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT ff.id
          FROM basico.filter ff
          LEFT join basico.categoria c ON (ff.id_categoria = c.id)
          LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
          WHERE t.nome = 'FORMULARIO'
          AND c.nome = 'FORMULARIO_ELEMENTO_FILTER'
          AND ff.nome = 'STRINGTRIM_STRIPTAGS') AS id_filter,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_fomulario_elemento.assoccl_decorator (id_elemento, id_filter, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_FILTERING_SELECT_AREA_CONHECIMENTO_CURSO_ATUAL'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT ff.id
          FROM basico.filter ff
          LEFT join basico.categoria c ON (ff.id_categoria = c.id)
          LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
          WHERE t.nome = 'FORMULARIO'
          AND c.nome = 'FORMULARIO_ELEMENTO_FILTER'
          AND ff.nome = 'STRINGTRIM_STRIPTAGS') AS id_filter,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_fomulario_elemento.assoccl_decorator (id_elemento, id_filter, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_VALIDATION_TEXT_BOX_NOME_CURSO_ATUAL'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT ff.id
          FROM basico.filter ff
          LEFT join basico.categoria c ON (ff.id_categoria = c.id)
          LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
          WHERE t.nome = 'FORMULARIO'
          AND c.nome = 'FORMULARIO_ELEMENTO_FILTER'
          AND ff.nome = 'STRINGTRIM_STRIPTAGS') AS id_filter,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_fomulario_elemento.assoccl_decorator (id_elemento, id_filter, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_FILTERING_SELECT_PERIODO'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT ff.id
          FROM basico.filter ff
          LEFT join basico.categoria c ON (ff.id_categoria = c.id)
          LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
          WHERE t.nome = 'FORMULARIO'
          AND c.nome = 'FORMULARIO_ELEMENTO_FILTER'
          AND ff.nome = 'STRINGTRIM_STRIPTAGS') AS id_filter,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_fomulario_elemento.assoccl_decorator (id_elemento, id_filter, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_FILTERING_SELECT_TURNO'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT ff.id
          FROM basico.filter ff
          LEFT join basico.categoria c ON (ff.id_categoria = c.id)
          LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
          WHERE t.nome = 'FORMULARIO'
          AND c.nome = 'FORMULARIO_ELEMENTO_FILTER'
          AND ff.nome = 'STRINGTRIM_STRIPTAGS') AS id_filter,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_fomulario_elemento.assoccl_decorator (id_elemento, id_filter, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_VALIDATION_TEXT_BOX_CARGO'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT ff.id
          FROM basico.filter ff
          LEFT join basico.categoria c ON (ff.id_categoria = c.id)
          LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
          WHERE t.nome = 'FORMULARIO'
          AND c.nome = 'FORMULARIO_ELEMENTO_FILTER'
          AND ff.nome = 'STRINGTRIM_STRIPTAGS') AS id_filter,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_fomulario_elemento.assoccl_decorator (id_elemento, id_filter, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_VALIDATION_TEXT_BOX_FUNCAO'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT ff.id
          FROM basico.filter ff
          LEFT join basico.categoria c ON (ff.id_categoria = c.id)
          LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
          WHERE t.nome = 'FORMULARIO'
          AND c.nome = 'FORMULARIO_ELEMENTO_FILTER'
          AND ff.nome = 'STRINGTRIM_STRIPTAGS') AS id_filter,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_fomulario_elemento.assoccl_decorator (id_elemento, id_filter, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_SIMPLE_TEXT_AREA_ATIVIDADES_DESENVOLVIDAS'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT ff.id
          FROM basico.filter ff
          LEFT join basico.categoria c ON (ff.id_categoria = c.id)
          LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
          WHERE t.nome = 'FORMULARIO'
          AND c.nome = 'FORMULARIO_ELEMENTO_FILTER'
          AND ff.nome = 'STRINGTRIM_STRIPTAGS') AS id_filter,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_fomulario_elemento.assoccl_decorator (id_elemento, id_filter, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_SIMPLE_TEXT_AREA_OUTRAS_INFORMACOES'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT ff.id
          FROM basico.filter ff
          LEFT join basico.categoria c ON (ff.id_categoria = c.id)
          LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
          WHERE t.nome = 'FORMULARIO'
          AND c.nome = 'FORMULARIO_ELEMENTO_FILTER'
          AND ff.nome = 'STRINGTRIM_STRIPTAGS') AS id_filter,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_fomulario_elemento.assoccl_decorator (id_elemento, id_filter, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_FILTERING_SELECT_TELEFONE_TIPO'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT ff.id
          FROM basico.filter ff
          LEFT join basico.categoria c ON (ff.id_categoria = c.id)
          LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
          WHERE t.nome = 'FORMULARIO'
          AND c.nome = 'FORMULARIO_ELEMENTO_FILTER'
          AND ff.nome = 'STRINGTRIM_STRIPTAGS') AS id_filter,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_fomulario_elemento.assoccl_decorator (id_elemento, id_filter, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_NUMBER_TEXT_BOX_TELEFONE_CODIGO_PAIS'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT ff.id
          FROM basico.filter ff
          LEFT join basico.categoria c ON (ff.id_categoria = c.id)
          LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
          WHERE t.nome = 'FORMULARIO'
          AND c.nome = 'FORMULARIO_ELEMENTO_FILTER'
          AND ff.nome = 'STRINGTRIM_STRIPTAGS') AS id_filter,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_fomulario_elemento.assoccl_decorator (id_elemento, id_filter, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_NUMBER_TEXT_BOX_TELEFONE_CODIGO_AREA'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT ff.id
          FROM basico.filter ff
          LEFT join basico.categoria c ON (ff.id_categoria = c.id)
          LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
          WHERE t.nome = 'FORMULARIO'
          AND c.nome = 'FORMULARIO_ELEMENTO_FILTER'
          AND ff.nome = 'STRINGTRIM_STRIPTAGS') AS id_filter,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_fomulario_elemento.assoccl_decorator (id_elemento, id_filter, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_NUMBER_TEXT_BOX_TELEFONE'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT ff.id
          FROM basico.filter ff
          LEFT join basico.categoria c ON (ff.id_categoria = c.id)
          LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
          WHERE t.nome = 'FORMULARIO'
          AND c.nome = 'FORMULARIO_ELEMENTO_FILTER'
          AND ff.nome = 'STRINGTRIM_STRIPTAGS') AS id_filter,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_fomulario_elemento.assoccl_decorator (id_elemento, id_filter, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_NUMBER_TEXT_BOX_TELEFONE_RAMAL'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT ff.id
          FROM basico.filter ff
          LEFT join basico.categoria c ON (ff.id_categoria = c.id)
          LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
          WHERE t.nome = 'FORMULARIO'
          AND c.nome = 'FORMULARIO_ELEMENTO_FILTER'
          AND ff.nome = 'STRINGTRIM_STRIPTAGS') AS id_filter,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_fomulario_elemento.assoccl_decorator (id_elemento, id_filter, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_SIMPLE_TEXT_AREA_TELEFONE_DESCRICAO'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT ff.id
          FROM basico.filter ff
          LEFT join basico.categoria c ON (ff.id_categoria = c.id)
          LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
          WHERE t.nome = 'FORMULARIO'
          AND c.nome = 'FORMULARIO_ELEMENTO_FILTER'
          AND ff.nome = 'STRINGTRIM_STRIPTAGS') AS id_filter,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_fomulario_elemento.assoccl_decorator (id_elemento, id_filter, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_FILTERING_SELECT_EMAIL_TIPO'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT ff.id
          FROM basico.filter ff
          LEFT join basico.categoria c ON (ff.id_categoria = c.id)
          LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
          WHERE t.nome = 'FORMULARIO'
          AND c.nome = 'FORMULARIO_ELEMENTO_FILTER'
          AND ff.nome = 'STRINGTRIM_STRIPTAGS') AS id_filter,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_fomulario_elemento.assoccl_decorator (id_elemento, id_filter, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_SIMPLE_TEXT_AREA_EMAIL_DESCRICAO'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT ff.id
          FROM basico.filter ff
          LEFT join basico.categoria c ON (ff.id_categoria = c.id)
          LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
          WHERE t.nome = 'FORMULARIO'
          AND c.nome = 'FORMULARIO_ELEMENTO_FILTER'
          AND ff.nome = 'STRINGTRIM_STRIPTAGS') AS id_filter,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_fomulario_elemento.assoccl_decorator (id_elemento, id_filter, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_FILTERING_SELECT_WEBSITE_TIPO'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT ff.id
          FROM basico.filter ff
          LEFT join basico.categoria c ON (ff.id_categoria = c.id)
          LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
          WHERE t.nome = 'FORMULARIO'
          AND c.nome = 'FORMULARIO_ELEMENTO_FILTER'
          AND ff.nome = 'STRINGTRIM_STRIPTAGS') AS id_filter,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_fomulario_elemento.assoccl_decorator (id_elemento, id_filter, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_VALIDATION_TEXT_BOX_WEBSITE_ENDERECO'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT ff.id
          FROM basico.filter ff
          LEFT join basico.categoria c ON (ff.id_categoria = c.id)
          LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
          WHERE t.nome = 'FORMULARIO'
          AND c.nome = 'FORMULARIO_ELEMENTO_FILTER'
          AND ff.nome = 'STRINGTRIM_STRIPTAGS') AS id_filter,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_fomulario_elemento.assoccl_decorator (id_elemento, id_filter, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_SIMPLE_TEXT_AREA_WEBSITE_DESCRICAO'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT ff.id
          FROM basico.filter ff
          LEFT join basico.categoria c ON (ff.id_categoria = c.id)
          LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
          WHERE t.nome = 'FORMULARIO'
          AND c.nome = 'FORMULARIO_ELEMENTO_FILTER'
          AND ff.nome = 'STRINGTRIM_STRIPTAGS') AS id_filter,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_fomulario_elemento.assoccl_decorator (id_elemento, id_filter, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_VALIDATION_TEXT_BOX_NOME_USUARIO'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT ff.id
          FROM basico.filter ff
          LEFT join basico.categoria c ON (ff.id_categoria = c.id)
          LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
          WHERE t.nome = 'FORMULARIO'
          AND c.nome = 'FORMULARIO_ELEMENTO_FILTER'
          AND ff.nome = 'STRINGTRIM_STRIPTAGS') AS id_filter,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_fomulario_elemento.assoccl_decorator (id_elemento, id_filter, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_VALIDATION_TEXT_BOX_EMAIL_USUARIO'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT ff.id
          FROM basico.filter ff
          LEFT join basico.categoria c ON (ff.id_categoria = c.id)
          LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
          WHERE t.nome = 'FORMULARIO'
          AND c.nome = 'FORMULARIO_ELEMENTO_FILTER'
          AND ff.nome = 'STRINGTRIM_STRIPTAGS') AS id_filter,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_fomulario_elemento.assoccl_decorator (id_elemento, id_filter, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_PAIS_NASCIMENTO_FILTERING_SELECT'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT ff.id
          FROM basico.filter ff
          LEFT join basico.categoria c ON (ff.id_categoria = c.id)
          LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
          WHERE t.nome = 'FORMULARIO'
          AND c.nome = 'FORMULARIO_ELEMENTO_FILTER'
          AND ff.nome = 'STRINGTRIM_STRIPTAGS') AS id_filter,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_fomulario_elemento.assoccl_decorator (id_elemento, id_filter, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_ESTADO_NASCIMENTO_FILTERING_SELECT'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT ff.id
          FROM basico.filter ff
          LEFT join basico.categoria c ON (ff.id_categoria = c.id)
          LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
          WHERE t.nome = 'FORMULARIO'
          AND c.nome = 'FORMULARIO_ELEMENTO_FILTER'
          AND ff.nome = 'STRINGTRIM_STRIPTAGS') AS id_filter,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_fomulario_elemento.assoccl_decorator (id_elemento, id_filter, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_ESTADO_NASCIMENTO_VALIDATION_TEXT_BOX'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT ff.id
          FROM basico.filter ff
          LEFT join basico.categoria c ON (ff.id_categoria = c.id)
          LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
          WHERE t.nome = 'FORMULARIO'
          AND c.nome = 'FORMULARIO_ELEMENTO_FILTER'
          AND ff.nome = 'STRINGTRIM_STRIPTAGS') AS id_filter,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_fomulario_elemento.assoccl_decorator (id_elemento, id_filter, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_MUNICIPIO_NASCIMENTO_FILTERING_SELECT'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT ff.id
          FROM basico.filter ff
          LEFT join basico.categoria c ON (ff.id_categoria = c.id)
          LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
          WHERE t.nome = 'FORMULARIO'
          AND c.nome = 'FORMULARIO_ELEMENTO_FILTER'
          AND ff.nome = 'STRINGTRIM_STRIPTAGS') AS id_filter,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_fomulario_elemento.assoccl_decorator (id_elemento, id_filter, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_MUNICIPIO_NASCIMENTO_VALIDATION_TEXT_BOX'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT ff.id
          FROM basico.filter ff
          LEFT join basico.categoria c ON (ff.id_categoria = c.id)
          LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
          WHERE t.nome = 'FORMULARIO'
          AND c.nome = 'FORMULARIO_ELEMENTO_FILTER'
          AND ff.nome = 'STRINGTRIM_STRIPTAGS') AS id_filter,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_fomulario_elemento.assoccl_decorator (id_elemento, id_filter, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_NOME_PAI_VALIDATION_TEXT_BOX'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT ff.id
          FROM basico.filter ff
          LEFT join basico.categoria c ON (ff.id_categoria = c.id)
          LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
          WHERE t.nome = 'FORMULARIO'
          AND c.nome = 'FORMULARIO_ELEMENTO_FILTER'
          AND ff.nome = 'STRINGTRIM_STRIPTAGS') AS id_filter,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_fomulario_elemento.assoccl_decorator (id_elemento, id_filter, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_NOME_MAE_VALIDATION_TEXT_BOX'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT ff.id
          FROM basico.filter ff
          LEFT join basico.categoria c ON (ff.id_categoria = c.id)
          LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
          WHERE t.nome = 'FORMULARIO'
          AND c.nome = 'FORMULARIO_ELEMENTO_FILTER'
          AND ff.nome = 'STRINGTRIM_STRIPTAGS') AS id_filter,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_fomulario_elemento.assoccl_decorator (id_elemento, id_filter, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_ENDERECO_TIPO_FILTERING_SELECT'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT ff.id
          FROM basico.filter ff
          LEFT join basico.categoria c ON (ff.id_categoria = c.id)
          LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
          WHERE t.nome = 'FORMULARIO'
          AND c.nome = 'FORMULARIO_ELEMENTO_FILTER'
          AND ff.nome = 'STRINGTRIM_STRIPTAGS') AS id_filter,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_fomulario_elemento.assoccl_decorator (id_elemento, id_filter, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_ENDERECO_PAIS_FILTERING_SELECT'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT ff.id
          FROM basico.filter ff
          LEFT join basico.categoria c ON (ff.id_categoria = c.id)
          LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
          WHERE t.nome = 'FORMULARIO'
          AND c.nome = 'FORMULARIO_ELEMENTO_FILTER'
          AND ff.nome = 'STRINGTRIM_STRIPTAGS') AS id_filter,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_fomulario_elemento.assoccl_decorator (id_elemento, id_filter, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_ENDERECO_ESTADO_FILTERING_SELECT'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT ff.id
          FROM basico.filter ff
          LEFT join basico.categoria c ON (ff.id_categoria = c.id)
          LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
          WHERE t.nome = 'FORMULARIO'
          AND c.nome = 'FORMULARIO_ELEMENTO_FILTER'
          AND ff.nome = 'STRINGTRIM_STRIPTAGS') AS id_filter,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_fomulario_elemento.assoccl_decorator (id_elemento, id_filter, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_ENDERECO_ESTADO_VALIDATION_TEXT_BOX'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT ff.id
          FROM basico.filter ff
          LEFT join basico.categoria c ON (ff.id_categoria = c.id)
          LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
          WHERE t.nome = 'FORMULARIO'
          AND c.nome = 'FORMULARIO_ELEMENTO_FILTER'
          AND ff.nome = 'STRINGTRIM_STRIPTAGS') AS id_filter,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_fomulario_elemento.assoccl_decorator (id_elemento, id_filter, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_ENDERECO_MUNICIPIO_FILTERING_SELECT'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT ff.id
          FROM basico.filter ff
          LEFT join basico.categoria c ON (ff.id_categoria = c.id)
          LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
          WHERE t.nome = 'FORMULARIO'
          AND c.nome = 'FORMULARIO_ELEMENTO_FILTER'
          AND ff.nome = 'STRINGTRIM_STRIPTAGS') AS id_filter,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_fomulario_elemento.assoccl_decorator (id_elemento, id_filter, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_ENDERECO_MUNICIPIO_VALIDATION_TEXT_BOX'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT ff.id
          FROM basico.filter ff
          LEFT join basico.categoria c ON (ff.id_categoria = c.id)
          LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
          WHERE t.nome = 'FORMULARIO'
          AND c.nome = 'FORMULARIO_ELEMENTO_FILTER'
          AND ff.nome = 'STRINGTRIM_STRIPTAGS') AS id_filter,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_fomulario_elemento.assoccl_decorator (id_elemento, id_filter, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_ENDERECO_CEP_VALIDATION_TEXT_BOX'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT ff.id
          FROM basico.filter ff
          LEFT join basico.categoria c ON (ff.id_categoria = c.id)
          LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
          WHERE t.nome = 'FORMULARIO'
          AND c.nome = 'FORMULARIO_ELEMENTO_FILTER'
          AND ff.nome = 'STRINGTRIM_STRIPTAGS') AS id_filter,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_fomulario_elemento.assoccl_decorator (id_elemento, id_filter, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_ENDERECO_LOGRADOURO_VALIDATION_TEXT_BOX'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT ff.id
          FROM basico.filter ff
          LEFT join basico.categoria c ON (ff.id_categoria = c.id)
          LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
          WHERE t.nome = 'FORMULARIO'
          AND c.nome = 'FORMULARIO_ELEMENTO_FILTER'
          AND ff.nome = 'STRINGTRIM_STRIPTAGS') AS id_filter,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_fomulario_elemento.assoccl_decorator (id_elemento, id_filter, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_ENDERECO_NUMERO_VALIDATION_TEXT_BOX'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT ff.id
          FROM basico.filter ff
          LEFT join basico.categoria c ON (ff.id_categoria = c.id)
          LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
          WHERE t.nome = 'FORMULARIO'
          AND c.nome = 'FORMULARIO_ELEMENTO_FILTER'
          AND ff.nome = 'STRINGTRIM_STRIPTAGS') AS id_filter,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_fomulario_elemento.assoccl_decorator (id_elemento, id_filter, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_ENDERECO_COMPLEMENTO_VALIDATION_TEXT_BOX'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT ff.id
          FROM basico.filter ff
          LEFT join basico.categoria c ON (ff.id_categoria = c.id)
          LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
          WHERE t.nome = 'FORMULARIO'
          AND c.nome = 'FORMULARIO_ELEMENTO_FILTER'
          AND ff.nome = 'STRINGTRIM_STRIPTAGS') AS id_filter,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_fomulario_elemento.assoccl_decorator (id_elemento, id_filter, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_CONTA_BANCARIA_NUMERO_BANCO_VALIDATION_TEXT_BOX'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT ff.id
          FROM basico.filter ff
          LEFT join basico.categoria c ON (ff.id_categoria = c.id)
          LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
          WHERE t.nome = 'FORMULARIO'
          AND c.nome = 'FORMULARIO_ELEMENTO_FILTER'
          AND ff.nome = 'STRINGTRIM_STRIPTAGS') AS id_filter,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_fomulario_elemento.assoccl_decorator (id_elemento, id_filter, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_CONTA_BANCARIA_BANCO_FILTERING_SELECT'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT ff.id
          FROM basico.filter ff
          LEFT join basico.categoria c ON (ff.id_categoria = c.id)
          LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
          WHERE t.nome = 'FORMULARIO'
          AND c.nome = 'FORMULARIO_ELEMENTO_FILTER'
          AND ff.nome = 'STRINGTRIM_STRIPTAGS') AS id_filter,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_fomulario_elemento.assoccl_decorator (id_elemento, id_filter, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_CONTA_BANCARIA_AGENCIA_VALIDATION_TEXT_BOX'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT ff.id
          FROM basico.filter ff
          LEFT join basico.categoria c ON (ff.id_categoria = c.id)
          LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
          WHERE t.nome = 'FORMULARIO'
          AND c.nome = 'FORMULARIO_ELEMENTO_FILTER'
          AND ff.nome = 'STRINGTRIM_STRIPTAGS') AS id_filter,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_fomulario_elemento.assoccl_decorator (id_elemento, id_filter, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_CONTA_BANCARIA_TIPO_CONTA_FILTERING_SELECT'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT ff.id
          FROM basico.filter ff
          LEFT join basico.categoria c ON (ff.id_categoria = c.id)
          LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
          WHERE t.nome = 'FORMULARIO'
          AND c.nome = 'FORMULARIO_ELEMENTO_FILTER'
          AND ff.nome = 'STRINGTRIM_STRIPTAGS') AS id_filter,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_fomulario_elemento.assoccl_decorator (id_elemento, id_filter, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_CONTA_BANCARIA_NUMERO_CONTA_VALIDATION_TEXT_BOX'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT ff.id
          FROM basico.filter ff
          LEFT join basico.categoria c ON (ff.id_categoria = c.id)
          LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
          WHERE t.nome = 'FORMULARIO'
          AND c.nome = 'FORMULARIO_ELEMENTO_FILTER'
          AND ff.nome = 'STRINGTRIM_STRIPTAGS') AS id_filter,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_fomulario_elemento.assoccl_decorator (id_elemento, id_filter, rowinfo)
SELECT (SELECT fe.id 
		  FROM basico_formulario.elemento fe
		  LEFT join basico.categoria c ON (fe.id_categoria = c.id)
	      LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
	      WHERE fe.nome = 'FORM_FIELD_CONTA_BANCARIA_DESCRICAO_IDENTIFICACAO_CONTA_VALIDATION_TEXT_BOX'
	      AND t.nome = 'FORMULARIO'
		  AND c.nome = 'FORMULARIO_ELEMENTO') AS id_elemento,
	   (SELECT ff.id
          FROM basico.filter ff
          LEFT join basico.categoria c ON (ff.id_categoria = c.id)
          LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
          WHERE t.nome = 'FORMULARIO'
          AND c.nome = 'FORMULARIO_ELEMENTO_FILTER'
          AND ff.nome = 'STRINGTRIM_STRIPTAGS') AS id_filter,
	   'SYSTEM_STARTUP' AS rowinfo;   