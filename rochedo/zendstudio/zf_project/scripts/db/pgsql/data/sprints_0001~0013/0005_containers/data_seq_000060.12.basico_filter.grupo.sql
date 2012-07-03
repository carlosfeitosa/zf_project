/*
* SCRIPT DE POPULACAO DA TABELA DE GRUPO DE FILTER
* 
* versao: 1.0 (POSTGRESQL 8.4.1)
* por: CARLOS FEITOSA (carlos.feitosa@rochedoframework.com)
* criacao: 03/07/2012
* ultimas modificacoes: 
*  
*/

INSERT INTO basico_filter.grupo (id_categoria, nome, constante_textual, constante_textual_descricao, ativo, rowinfo)
SELECT cat.id, 'STRINGTRIM_STRIPTAGS' AS nome, 'NOME_GRUPO_STRINGTRIM_STRIPTAGS' AS constante_textual, 
        'DESCRICAO_GRUPO_STRINGTRIM_STRIPTAGS' AS constante_textual_descricao, true AS ativo,
        'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria cat
LEFT JOIN basico.tipo_categoria tcat ON (cat.id_tipo_categoria = tcat.id)
LEFT JOIN basico.categoria catpai ON (cat.id_categoria_pai = catpai.id)
WHERE cat.nome = 'FORMULARIO_ELEMENTO_FILTER_GRUPO'
AND tcat.nome = 'FORMULARIO'
AND catpai.nome = 'FORMULARIO_ELEMENTO_FILTER';