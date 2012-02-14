/**
* SCRIPT DE POPULACAO DA TABELA basico.tipo_categoria
* 
* versao: 1.0 (POSTGRESQL 9.1.1)
* por: JOÃO VASCONCELOS (joao.vasconcelos@rochedoproject.com)
* criacao: 31/01/2012
* ultimas modificacoes:
* 
*/

INSERT INTO basico.tipo_categoria (nome, ativo, rowinfo)
VALUES ('SISTEMA', true AS ativo, 'SYSTEM_STARTUP');

INSERT INTO basico.tipo_categoria (nome, ativo, rowinfo)
VALUES ('PERFIL', true AS ativo, 'SYSTEM_STARTUP');

INSERT INTO basico.tipo_categoria (nome, ativo, rowinfo)
VALUES('MENSAGEM', true AS ativo, 'SYSTEM_STARTUP');

INSERT INTO basico.tipo_categoria (nome, ativo, rowinfo)
VALUES ('EMAIL', true AS ativo, 'SYSTEM_STARTUP');

INSERT INTO basico.tipo_categoria(nome, ativo, rowinfo)
VALUES('WEBSITE', true AS ativo, 'SYSTEM_STARTUP');

INSERT INTO basico.tipo_categoria (nome, ativo, rowinfo)
VALUES ('FORMULARIO', true AS ativo, 'SYSTEM_STARTUP');

INSERT INTO basico.tipo_categoria (nome, ativo, rowinfo)
VALUES ('AJUDA', true AS ativo, 'SYSTEM_STARTUP');

INSERT INTO basico.tipo_categoria (nome, ativo, rowinfo)
VALUES ('COMPONENTE', true AS ativo, 'SYSTEM_STARTUP');

INSERT INTO basico.tipo_categoria (nome, ativo, rowinfo)
VALUES ('CVC', true AS ativo, 'SYSTEM_STARTUP');

INSERT INTO basico.tipo_categoria (nome, ativo, rowinfo)
VALUES ('LOCALIDADE', true AS ativo, 'SYSTEM_STARTUP');