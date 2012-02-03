/**
* SCRIPT DE POPULACAO DA TABELA MASCARA
* 
* versao: 1.0 (POSTGRESQL 8.4.1)
* por: JOÃO VASCONCELOS (joao.vasconcelos@rochedoproject.com)
* criacao: 20/06/2011
* ultimas modificacoes:
* 
*/

INSERT INTO basico.mascara (id_categoria, nome, constante_textual, constante_textual_descricao, mascara, rowinfo)
SELECT c.id AS id_categoria, 'MASCARA_MOEDA_BRL_SEM_SEPARADOR_MILHAR_2_DECIMAIS' AS nome,
	   'NOME_MASCARA_MOEDA_BRL_SEM_SEPARADOR_MILHAR_2_DECIMAIS' AS constante_textual,
	   'DESCRICAO_MASCARA_MOEDA_BRL_SEM_SEPARADOR_MILHAR_2_DECIMAIS' AS constante_textual_descricao,
       'maskMoney({decimal:",", precision: 2})' AS mascara, 'SYSTEM_STARTUP' AS rowinfo
from basico.categoria c
LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
WHERE c.nome = 'MASCARA_NUMERICA'
AND t.nome = 'MASCARA';

INSERT INTO basico.mascara (id_categoria, nome,  constante_textual, constante_textual_descricao, mascara, rowinfo)
SELECT c.id AS id_categoria, 'MASCARA_MOEDA_BRL_SEM_SEPARADOR_MILHAR_3_DECIMAIS' AS nome,
	   'NOME_MASCARA_MOEDA_BRL_SEM_SEPARADOR_MILHAR_3_DECIMAIS' AS constante_textual,
	   'DESCRICAO_MASCARA_MOEDA_BRL_SEM_SEPARADOR_MILHAR_3_DECIMAIS' AS constante_textual_descricao,
       'maskMoney({decimal:",", precision: 3})' AS mascara, 'SYSTEM_STARTUP' AS rowinfo
from basico.categoria c
LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
WHERE c.nome = 'MASCARA_NUMERICA'
AND t.nome = 'MASCARA';