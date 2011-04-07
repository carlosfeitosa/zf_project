/**
* SCRIPT DE POPULACAO DA TABELA PERFIL
* 
* versao: 1.0 (POSTGRESQL 8.4.1)
* por: CARLOS FEITOSA (carlos.feitosa@rochedoproject.com)
* criacao: 21/10/2010
* ultimas modificacoes:
* 
*/

INSERT INTO perfil (id_categoria, nome, descricao, rowinfo)
SELECT id, 'SISTEMA' AS nome, 'Usuário sistema.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM categoria
WHERE nome = 'SISTEMA_USUARIO';

INSERT INTO perfil (id_categoria, nome, descricao, rowinfo)
SELECT id, 'USUARIO_NAO_VALIDADO' AS nome, 'Usuário não validado pelo sistema.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM categoria
WHERE nome = 'PERFIL_USUARIO_SISTEMA';

INSERT INTO perfil (id_categoria, nome, descricao, rowinfo)
SELECT id, 'USUARIO_VALIDADO' AS nome, 'Usuário validado pelo sistema.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM categoria
WHERE nome = 'PERFIL_USUARIO_SISTEMA';