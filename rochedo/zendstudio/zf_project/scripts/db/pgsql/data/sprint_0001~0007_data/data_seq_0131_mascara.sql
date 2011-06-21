/**
* SCRIPT DE POPULACAO DA TABELA MASCARA
* 
* versao: 1.0 (POSTGRESQL 8.4.1)
* por: JOÃO VASCONCELOS (joao.vasconcelos@rochedoproject.com)
* criacao: 20/06/2011
* ultimas modificacoes:
* 
*/

INSERT INTO mascara (id_categoria, nome, descricao, mascara, rowinfo)
SELECT c.id AS id_categoria, 'MASCARA_MOEDA_BRL_SEM_SEPARADOR_MILHAR_2_DECIMAIS' AS nome,
       'Mascara para campos do tipo moeda no formato BRL, sem separador de milhar e com duas casas decimais' AS descricao,
       'maskMoney({decimal:",", precision: 2})' AS mascara, 'SYSTEM_STARTUP' AS rowinfo
FROM categoria c
LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
WHERE c.nome = 'MASCARA_NUMERICA'
AND t.nome = 'MASCARA';

INSERT INTO mascara (id_categoria, nome, descricao, mascara, rowinfo)
SELECT c.id AS id_categoria, 'MASCARA_MOEDA_BRL_SEM_SEPARADOR_MILHAR_3_DECIMAIS' AS nome,
       'Mascara para campos do tipo moeda no formato BRL, sem separador de milhar e com tres casas decimais' AS descricao,
       'maskMoney({decimal:",", precision: 3})' AS mascara, 'SYSTEM_STARTUP' AS rowinfo
FROM categoria c
LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
WHERE c.nome = 'MASCARA_NUMERICA'
AND t.nome = 'MASCARA';