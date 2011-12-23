/**
* SCRIPT DE POPULACAO DA TABELA PERFIL
* 
* versao: 1.0 (MSSQL 2000)
* por: CARLOS FEITOSA (carlos.feitosa@rochedoproject.com)
* criacao: 21/10/2010
* ultimas modificacoes:
* 
*/

INSERT INTO basico.perfil (id_categoria, nome, descricao, constante_textual, rowinfo)
SELECT id, 'SISTEMA' AS nome, 'Perfil do usuário sistema.' AS descricao, 'PERFIL_SISTEMA' AS constante_textual, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria
WHERE nome = 'SISTEMA_USUARIO';

INSERT INTO basico.perfil (id_categoria, nome, descricao, constante_textual, rowinfo)
SELECT id, 'USUARIO_NAO_VALIDADO' AS nome, 'Perfil dos usuários não validados pelo sistema.' AS descricao, 'PERFIL_USUARIO_NAO_VALIDADO' AS constante_textual, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria
WHERE nome = 'PERFIL_USUARIO_SISTEMA';

INSERT INTO basico.perfil (id_categoria, nome, descricao, constante_textual, rowinfo)
SELECT id, 'USUARIO_VALIDADO' AS nome, 'Perfil dos usuários validados pelo sistema.' AS descricao, 'PERFIL_USUARIO_VALIDADO' AS constante_textual, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria
WHERE nome = 'PERFIL_USUARIO_SISTEMA';