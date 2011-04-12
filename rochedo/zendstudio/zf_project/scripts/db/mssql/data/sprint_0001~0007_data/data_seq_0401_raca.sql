/**
* SCRIPT DE POPULACAO DA TABELA RACA
* 
* versao: 1.0 (MSSQL 2000)
* por: JOÃO VASCONCELOS (joao.vasconcelos@rochedoproject.com)
* criacao: 15/02/2011
* ultimas modificacoes:
* 
*/

INSERT INTO raca (constante_textual, rowinfo)
SELECT d.constante_textual AS constante_textual, 'SYSTEM_STARTUP' AS rowinfo 
FROM dicionario_expressao d
LEFT JOIN categoria c ON (d.id_categoria = c.id)
WHERE d.constante_textual = 'COR_OU_RACA_BRANCA'
AND c.nome = 'pt-br';

INSERT INTO raca (constante_textual, rowinfo)
SELECT d.constante_textual AS constante_textual, 'SYSTEM_STARTUP' AS rowinfo 
FROM dicionario_expressao d
LEFT JOIN categoria c ON (d.id_categoria = c.id)
WHERE d.constante_textual = 'COR_OU_RACA_PRETA'
AND c.nome = 'pt-br';

INSERT INTO raca (constante_textual, rowinfo)
SELECT d.constante_textual AS constante_textual, 'SYSTEM_STARTUP' AS rowinfo 
FROM dicionario_expressao d
LEFT JOIN categoria c ON (d.id_categoria = c.id)
WHERE d.constante_textual = 'COR_OU_RACA_PARDA'
AND c.nome = 'pt-br';

INSERT INTO raca (constante_textual, rowinfo)
SELECT d.constante_textual AS constante_textual, 'SYSTEM_STARTUP' AS rowinfo 
FROM dicionario_expressao d
LEFT JOIN categoria c ON (d.id_categoria = c.id)
WHERE d.constante_textual = 'COR_OU_RACA_AMARELA_OU_INDIGENA'
AND c.nome = 'pt-br';

INSERT INTO raca (constante_textual, rowinfo)
SELECT d.constante_textual AS constante_textual, 'SYSTEM_STARTUP' AS rowinfo 
FROM dicionario_expressao d
LEFT JOIN categoria c ON (d.id_categoria = c.id)
WHERE d.constante_textual = 'SELECT_OPTION_NAO_DESEJO_INFORMAR'
AND c.nome = 'pt-br';