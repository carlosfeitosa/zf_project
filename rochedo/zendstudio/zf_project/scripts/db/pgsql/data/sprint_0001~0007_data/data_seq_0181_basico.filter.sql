/*
* SCRIPT DE POPULACAO DAS TABELAS
* 
* versao: 1.0 (POSTGRESQL 8.4.1)
* por: ADRIANO DUPRAT LEMOS (adriano.lemos@rochedoproject.com)
* criacao: 20/10/2010
* ultimas modificacoes:
*  
*/

/* FORMULARIO ELEMENTO FILTER */

INSERT INTO basico.filter (id_categoria, nome, descricao, filter, rowinfo)
SELECT c.id AS id_categoria, 'STRINGTRIM_STRIPTAGS' AS nome, 
       'Filtro que limpa espaços antes e depois do texto e remove todas as marcações de linguagens de programação.' AS descricao,
       '''StringTrim'', ''StripTags''' AS filter, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_FILTER';