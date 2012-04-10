/**
* SCRIPT DE POPULACAO DA TABELA basico.tipo_categoria
* 
* versao: 1.0 (POSTGRESQL 9.1.1)
* por: JOÃO VASCONCELOS (joao.vasconcelos@rochedoproject.com)
* criacao: 31/01/2012
* ultimas modificacoes:
* 
*/

INSERT INTO basico.tipo_categoria (nome, constante_textual, ativo, rowinfo)
VALUES ('SISTEMA', 'NOME_TIPO_CATEGORIA_SISTEMA', true, 'SYSTEM_STARTUP');

INSERT INTO basico.tipo_categoria (nome, constante_textual, ativo, rowinfo)
VALUES ('PERFIL', 'NOME_TIPO_CATEGORIA_PERFIL', true, 'SYSTEM_STARTUP');

INSERT INTO basico.tipo_categoria (nome, constante_textual, ativo, rowinfo)
VALUES('MENSAGEM', 'NOME_TIPO_CATEGORIA_MENSAGEM', true, 'SYSTEM_STARTUP');

INSERT INTO basico.tipo_categoria (nome, constante_textual, ativo, rowinfo)
VALUES ('EMAIL', 'NOME_TIPO_CATEGORIA_EMAIL', true, 'SYSTEM_STARTUP');

INSERT INTO basico.tipo_categoria(nome, constante_textual, ativo, rowinfo)
VALUES('WEBSITE', 'NOME_TIPO_CATEGORIA_WEBSITE', true, 'SYSTEM_STARTUP');

INSERT INTO basico.tipo_categoria (nome, constante_textual, ativo, rowinfo)
VALUES ('FORMULARIO', 'NOME_TIPO_CATEGORIA_FORMULARIO', true, 'SYSTEM_STARTUP');

INSERT INTO basico.tipo_categoria (nome, constante_textual, ativo, rowinfo)
VALUES ('AJUDA', 'NOME_TIPO_CATEGORIA_AJUDA', true, 'SYSTEM_STARTUP');

INSERT INTO basico.tipo_categoria (nome, constante_textual, ativo, rowinfo)
VALUES ('COMPONENTE', 'NOME_TIPO_CATEGORIA_COMPONENTE', true, 'SYSTEM_STARTUP');

INSERT INTO basico.tipo_categoria (nome, constante_textual, ativo, rowinfo)
VALUES ('CVC', 'NOME_TIPO_CATEGORIA_CVC', true, 'SYSTEM_STARTUP');

INSERT INTO basico.tipo_categoria (nome, constante_textual, ativo, rowinfo)
VALUES ('LOCALIDADE', 'NOME_TIPO_CATEGORIA_LOCALIDADE', true, 'SYSTEM_STARTUP');

INSERT INTO basico.tipo_categoria (nome, constante_textual, ativo, rowinfo)
VALUES ('DADOS_BIOMETRICOS', 'NOME_TIPO_CATEGORIA_DADOS_BIOMETRICOS', true, 'SYSTEM_STARTUP');

INSERT INTO basico.tipo_categoria (nome, constante_textual, ativo, rowinfo)
VALUES ('INCLUDE', 'NOME_TIPO_CATEGORIA_INCLUDE', true, 'SYSTEM_STARTUP');

INSERT INTO basico.tipo_categoria (nome, constante_textual, ativo, rowinfo)
VALUES ('DADOS_GENERICOS', 'NOME_TIPO_CATEGORIA_DADOS_GENERICOS', true, 'SYSTEM_STARTUP');

INSERT INTO basico.tipo_categoria (nome, constante_textual, ativo, rowinfo)
VALUES ('VISAO', 'NOME_TIPO_CATEGORIA_VISAO', true, 'SYSTEM_STARTUP');