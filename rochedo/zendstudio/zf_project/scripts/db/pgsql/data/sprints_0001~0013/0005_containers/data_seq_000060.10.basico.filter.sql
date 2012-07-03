/*
* SCRIPT DE POPULACAO DAS TABELAS
* 
* versao: 1.0 (POSTGRESQL 8.4.1)
* por: ADRIANO DUPRAT LEMOS (adriano.lemos@rochedoproject.com)
* criacao: 20/10/2010
* ultimas modificacoes: 03/02/2012 - inclusão das constantes textuais para os nome e descricao. (Igor Pinho).
* 						02/07/2012 - transformação dos filters para novo paradigma (Carlos Feitosa)
*  
*/

INSERT INTO basico.filter (id_categoria, id_componente, nome, constante_textual, constante_textual_descricao, ativo, rowinfo)
SELECT c.id AS id_categoria, 
		(SELECT comp.id
		 FROM basico.componente comp
		 LEFT JOIN basico.categoria cat ON (comp.id_categoria = cat.id)
		 LEFT JOIN basico.tipo_categoria tcat ON (cat.id_tipo_categoria = tcat.id)
		 LEFT JOIN basico.categoria catpai ON (cat.id_categoria_pai = catpai.id)
		 WHERE comp.nome = 'ZF_Filter_StringTrim'
		 AND cat.nome = 'COMPONENTE_FILTER_ZF'
		 AND tcat.nome = 'COMPONENTE'
		 AND catpai.nome = 'COMPONENTE_FILTER') AS id_componente,
	    'STRINGTRIM' AS nome, 'NOME_FILTER_STRINGTRIM' AS constante_textual, 'DESCRICAO_FILTER_STRINGTRIM' AS constante_textual_descricao,
        true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_FILTER';

INSERT INTO basico.filter (id_categoria, id_componente, nome, constante_textual, constante_textual_descricao, ativo, rowinfo)
SELECT c.id AS id_categoria, 
		(SELECT comp.id
		 FROM basico.componente comp
		 LEFT JOIN basico.categoria cat ON (comp.id_categoria = cat.id)
		 LEFT JOIN basico.tipo_categoria tcat ON (cat.id_tipo_categoria = tcat.id)
		 LEFT JOIN basico.categoria catpai ON (cat.id_categoria_pai = catpai.id)
		 WHERE comp.nome = 'ZF_Filter_StripTags'
		 AND cat.nome = 'COMPONENTE_FILTER_ZF'
		 AND tcat.nome = 'COMPONENTE'
		 AND catpai.nome = 'COMPONENTE_FILTER') AS id_componente,
		'STRIPTAGS' AS nome, 'NOME_FILTER_STRIPTAGS' AS constante_textual, 'DESCRICAO_FILTER_STRIPTAGS' AS constante_textual_descricao,
        true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_FILTER';