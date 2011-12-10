/*
* SCRIPT DE POPULACAO DA TABELA CATEGORIA_CHAVE_ESTRANGEIRA
* 
* versao: 1.0 (POSTGRESQL 8.4.1)
* por: JOÃO VASCONCELOS (joao.vasconcelos@rochedoproject.com)
* criacao: 20/10/2010
* ultimas modificacoes: 
*/

INSERT INTO categoria_chave_estrangeira (id_categoria, id_modulo, tabela_estrangeira, campo_estrangeiro, rowinfo)
SELECT c.id AS id_categoria, (SELECT id FROM basico.modulo where nome='BASICO') as id_modulo , 'pessoa' AS tabela_estrangeira, 'id' AS campo_estrangeiro, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'EMAIL'
AND c.nome = 'EMAIL_PRIMARIO';

INSERT INTO categoria_chave_estrangeira (id_categoria, id_modulo, tabela_estrangeira, campo_estrangeiro, rowinfo)
SELECT c.id AS id_categoria, (SELECT id FROM basico.modulo where nome='BASICO') as id_modulo, 'email' AS tabela_estrangeira, 'id' AS campo_estrangeiro, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'MENSAGEM'
AND c.nome = 'MENSAGEM_EMAIL_VALIDACAO_USUARIO_PLAINTEXT';

INSERT INTO categoria_chave_estrangeira (id_categoria, id_modulo, tabela_estrangeira, campo_estrangeiro, rowinfo)
SELECT c.id AS id_categoria, (SELECT id FROM basico.modulo where nome='BASICO') as id_modulo, 'pessoa' AS tabela_estrangeira, 'id' AS campo_estrangeiro, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'SISTEMA_EMAIL';