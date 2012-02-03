/*
* SCRIPT DE POPULACAO DAS TABELAS
* 
* versao: 1.0 (POSTGRESQL 8.4.1)
* por: ADRIANO DUPRAT LEMOS (adriano.lemos@rochedoproject.com)
* criacao: 20/10/2010
* ultimas modificacoes: 03/02/2012 - inclusão das constantes textuais para os nome e descricao. (Igor Pinho).
*  
*/

/* FORMULARIO ELEMENTO FILTER */

INSERT INTO basico.filter (id_categoria, nome, constante_textual, constante_textual_descricao, filter, ativo, rowinfo)
SELECT c.id AS id_categoria, 'STRINGTRIM_STRIPTAGS' AS nome, 'NOME_STRINGTRIM_STRIPTAGS' AS constante_textual, 
       'DESCRICAO_STRINGTRIM_STRIPTAGS' AS constante_textual_descricao,
       '''StringTrim'', ''StripTags''' AS filter, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_FILTER';