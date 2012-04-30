/**
* SCRIPT DE POPULACAO DA TABELA basico.dicionario_expressao
* 
* versao: 1.0 (POSTGRESQL 9.1.1)
* por: CARLOS FEITOSA (carlos.feitosa@rochedoframework.com)
* criacao: 27/04/2012
* ultimas modificacoes:
* 								
*/

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_TIPO_CATEGORIA_DICIONARIO_DADOS' AS constante_textual, 'Dicionario de dados' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_TIPO_CATEGORIA_DICIONARIO_DADOS' AS constante_textual, 'Data dictionary' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_TIPO_TABELA_ESPECIALIZACAO' AS constante_textual, 'Tabela de especialização' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_TIPO_TABELA_ESPECIALIZACAO' AS constante_textual, 'Specialization table' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_TIPO_TABELA_AGRUPAMENTO' AS constante_textual, 'Tabela de agrupamento' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_TIPO_TABELA_AGRUPAMENTO' AS constante_textual, 'Grouping table' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_TIPO_TABELA_SEQUENCIA' AS constante_textual, 'Tabela de sequencia' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_TIPO_TABELA_SEQUENCIA' AS constante_textual, 'Sequence table' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_TIPO_TABELA_ASSOCIACAO' AS constante_textual, 'Tabela de associação' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_TIPO_TABELA_ASSOCIACAO' AS constante_textual, 'Association table' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_TIPO_TABELA_ESPECIALIZACAO_ASSOCIACAO' AS constante_textual, 'Tabela de especialização de associação' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_TIPO_TABELA_ESPECIALIZACAO_ASSOCIACAO' AS constante_textual, 'Specialization''s association table' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_TIPO_TABELA_CONTAINNER_PROPRIETARIO_GENERICO' AS constante_textual, 'Tabela de containner com proprietário genéricos' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_TIPO_TABELA_CONTAINNER_PROPRIETARIO_GENERICO' AS constante_textual, 'Generic owner containner table' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_TIPO_TABELA_CONTAINNER' AS constante_textual, 'Tabela containner' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_TIPO_TABELA_CONTAINNER' AS constante_textual, 'Containner table' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';