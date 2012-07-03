/*
* SCRIPT DE POPULACAO DA TABELA DE ASSOCIAÇÃO DO GRUPO FILTER COM OS FILTERS OU GRUPOS
* 
* versao: 1.0 (POSTGRESQL 8.4.1)
* por: CARLOS FEITOSA (carlos.feitosa@rochedoframework.com)
* criacao: 03/07/2012
* ultimas modificacoes: 
*  
*/

INSERT INTO basico_filter_grupo.assocag_grupo (id_filter_grupo, id_filter, ordem, rowinfo)
SELECT (SELECT gf.id
		 FROM basico_filter.grupo gf
		 LEFT JOIN basico.categoria cat ON (gf.id_categoria = cat.id)
		 LEFT JOIN basico.tipo_categoria tcat ON (cat.id_tipo_categoria = tcat.id)
		 LEFT JOIN basico.categoria catpai ON (cat.id_categoria_pai = catpai.id)
		 WHERE gf.nome = 'STRINGTRIM_STRIPTAGS'
		 AND cat.nome = 'FORMULARIO_ELEMENTO_FILTER_GRUPO'
		 AND tcat.nome = 'FORMULARIO'
		 AND catpai.nome = 'FORMULARIO_ELEMENTO_FILTER') AS id_filter_grupo,
		(SELECT f.id
		 FROM basico.filter f
		 LEFT JOIN basico.categoria cat ON (f.id_categoria = cat.id)
		 LEFT JOIN basico.tipo_categoria tcat ON (cat.id_tipo_categoria = tcat.id)
		 LEFT JOIN basico.categoria catpai ON (cat.id_categoria_pai = catpai.id)
		 WHERE f.nome = 'STRINGTRIM'
		 AND cat.nome = 'FORMULARIO_ELEMENTO_FILTER'
		 AND tcat.nome = 'FORMULARIO'
		 AND catpai.nome = 'FORMULARIO_ELEMENTO') AS id_filter,
		 1 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_filter_grupo.assocag_grupo (id_filter_grupo, id_filter, ordem, rowinfo)
SELECT (SELECT gf.id
		 FROM basico_filter.grupo gf
		 LEFT JOIN basico.categoria cat ON (gf.id_categoria = cat.id)
		 LEFT JOIN basico.tipo_categoria tcat ON (cat.id_tipo_categoria = tcat.id)
		 LEFT JOIN basico.categoria catpai ON (cat.id_categoria_pai = catpai.id)
		 WHERE gf.nome = 'STRINGTRIM_STRIPTAGS'
		 AND cat.nome = 'FORMULARIO_ELEMENTO_FILTER_GRUPO'
		 AND tcat.nome = 'FORMULARIO'
		 AND catpai.nome = 'FORMULARIO_ELEMENTO_FILTER') AS id_filter_grupo,
		(SELECT f.id
		 FROM basico.filter f
		 LEFT JOIN basico.categoria cat ON (f.id_categoria = cat.id)
		 LEFT JOIN basico.tipo_categoria tcat ON (cat.id_tipo_categoria = tcat.id)
		 LEFT JOIN basico.categoria catpai ON (cat.id_categoria_pai = catpai.id)
		 WHERE f.nome = 'STRIPTAGS'
		 AND cat.nome = 'FORMULARIO_ELEMENTO_FILTER'
		 AND tcat.nome = 'FORMULARIO'
		 AND catpai.nome = 'FORMULARIO_ELEMENTO') AS id_filter,
		 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;