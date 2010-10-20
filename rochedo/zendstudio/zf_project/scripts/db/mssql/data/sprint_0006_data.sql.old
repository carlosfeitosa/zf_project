/*
* SCRIPT DE POPULACAO DAS TABELAS DO SPRINT 0006
* 
* versao: 1.0 (MSSQL 2000)
* por: CARLOS FEITOSA (carlos.feitosa@rochedoproject.com)
* criacao: 10/09/2010
*/

/* TIPO CATEGORIA */

INSERT INTO tipo_categoria (nome, descricao, rowinfo)
VALUES ('CVC', 'Control Version Class (classe de controle de versao).', 'SYSTEM_STARTUP');


/* CATEGORIA */

INSERT INTO categoria (id_tipo_categoria, nome, descricao, rowinfo)
SELECT id AS id_tipo_categoria, 'CVC' AS nome, 'Control Version Class (classe de controle de versao).' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria
WHERE nome = 'CVC';