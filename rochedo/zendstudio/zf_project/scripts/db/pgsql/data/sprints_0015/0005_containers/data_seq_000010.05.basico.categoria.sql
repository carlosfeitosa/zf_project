/**
* SCRIPT DE POPULACAO DA TABELA basico.categoria
* 
* versao: 1.0 (POSTGRESQL 9.1.1)
* por: CARLOS FEITOSA (carlos.feitosa@rochedoproject.com)
* criacao: 27/04/2012
* ultimas modificacoes:
* 
*/

INSERT into basico.categoria (id_tipo_categoria, nivel, nome, constante_textual, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 1 AS nivel, 
    'TIPO_TABELA_ESPECIALIZACAO' AS nome, 'NOME_TIPO_TABELA_ESPECIALIZACAO' AS constante_textual, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'DICIONARIO_DADOS';

INSERT into basico.categoria (id_tipo_categoria, nivel, nome, constante_textual, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 1 AS nivel, 
    'TIPO_TABELA_AGRUPAMENTO' AS nome, 'NOME_TIPO_TABELA_AGRUPAMENTO' AS constante_textual, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'DICIONARIO_DADOS';

INSERT into basico.categoria (id_tipo_categoria, nivel, nome, constante_textual, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 1 AS nivel, 
    'TIPO_TABELA_SEQUENCIA' AS nome, 'NOME_TIPO_TABELA_SEQUENCIA' AS constante_textual, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'DICIONARIO_DADOS';

INSERT into basico.categoria (id_tipo_categoria, nivel, nome, constante_textual, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 1 AS nivel, 
    'TIPO_TABELA_ASSOCIACAO' AS nome, 'NOME_TIPO_TABELA_ASSOCIACAO' AS constante_textual, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'DICIONARIO_DADOS';

INSERT into basico.categoria (id_tipo_categoria, nivel, nome, constante_textual, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 1 AS nivel, 
    'TIPO_TABELA_ESPECIALIZACAO_ASSOCIACAO' AS nome, 'NOME_TIPO_TABELA_ESPECIALIZACAO_ASSOCIACAO' AS constante_textual, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'DICIONARIO_DADOS';

INSERT into basico.categoria (id_tipo_categoria, nivel, nome, constante_textual, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 1 AS nivel, 
    'TIPO_TABELA_CONTAINNER_PROPRIETARIO_GENERICO' AS nome, 'NOME_TIPO_TABELA_CONTAINNER_PROPRIETARIO_GENERICO' AS constante_textual, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'DICIONARIO_DADOS';

INSERT into basico.categoria (id_tipo_categoria, nivel, nome, constante_textual, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 1 AS nivel, 
    'TIPO_TABELA_CONTAINNER' AS nome, 'NOME_TIPO_TABELA_CONTAINNER' AS constante_textual, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'DICIONARIO_DADOS';