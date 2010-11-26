/**
* SCRIPT DE POPULACAO DA TABELA MASCARA
* 
* versao: 1.0 (POSTGRESQL 8.4.1)
* por: CARLOS FEITOSA (carlos.feitosa@rochedoproject.com)
* criacao: 21/10/2010
* ultimas modificacoes:
* 
*/

INSERT INTO mascara (id_categoria, nome, descricao, mascara, rowinfo)
SELECT c.id AS id_categoria, 'MASCARA_NUMERICA_SEM_SEPARADOR_DECIMAL' AS nome,
       'Mascara para remover separadores decimais' AS descricao,
       '''##0.##''' AS mascara, 'SYSTEM_STARTUP' AS rowinfo
FROM categoria c
LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
WHERE c.nome = 'MASCARA_NUMERICA'
AND t.nome = 'MASCARA';