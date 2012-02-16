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
VALUES ('SISTEMA', 'NOME_TIPO_CATEGORIA_SISTEMA' AS constante_textual, true AS ativo, 'SYSTEM_STARTUP');

INSERT INTO basico.tipo_categoria (nome, constante_textual, ativo, rowinfo)
VALUES ('PERFIL', 'NOME_TIPO_CATEGORIA_PERFIL' AS constante_textual, true AS ativo, 'SYSTEM_STARTUP');

INSERT INTO basico.tipo_categoria (nome, constante_textual, ativo, rowinfo)
VALUES('MENSAGEM', 'NOME_TIPO_CATEGORIA_MENSAGEM' AS constante_textual, true AS ativo, 'SYSTEM_STARTUP');

INSERT INTO basico.tipo_categoria (nome, constante_textual, ativo, rowinfo)
VALUES ('EMAIL', 'NOME_TIPO_CATEGORIA_EMAIL' AS constante_textual, true AS ativo, 'SYSTEM_STARTUP');

INSERT INTO basico.tipo_categoria(nome, constante_textual, ativo, rowinfo)
VALUES('WEBSITE', 'NOME_TIPO_CATEGORIA_WEBSITE' AS constante_textual, true AS ativo, 'SYSTEM_STARTUP');

INSERT INTO basico.tipo_categoria (nome, constante_textual, ativo, rowinfo)
VALUES ('FORMULARIO', 'NOME_TIPO_CATEGORIA_FORMULARIO' AS constante_textual, true AS ativo, 'SYSTEM_STARTUP');

INSERT INTO basico.tipo_categoria (nome, constante_textual, ativo, rowinfo)
VALUES ('AJUDA', 'NOME_TIPO_CATEGORIA_AJUDA' AS constante_textual, true AS ativo, 'SYSTEM_STARTUP');

INSERT INTO basico.tipo_categoria (nome, constante_textual, ativo, rowinfo)
VALUES ('COMPONENTE', 'NOME_TIPO_CATEGORIA_COMPONENTE' AS constante_textual, true AS ativo, 'SYSTEM_STARTUP');

INSERT INTO basico.tipo_categoria (nome, constante_textual, ativo, rowinfo)
VALUES ('CVC', 'NOME_TIPO_CATEGORIA_CVC' AS constante_textual, true AS ativo, 'SYSTEM_STARTUP');

INSERT INTO basico.tipo_categoria (nome, constante_textual, ativo, rowinfo)
VALUES ('LOCALIDADE', 'NOME_TIPO_CATEGORIA_LOCALIDADE' AS constante_textual, true AS ativo, 'SYSTEM_STARTUP');

INSERT INTO basico.tipo_categoria (nome, constante_textual, ativo, rowinfo)
VALUES ('DADOS_BIOMETRICOS', 'NOME_TIPO_CATEGORIA_DADOS_BIOMETRICOS' AS constante_textual, true AS ativo, 'SYSTEM_STARTUP');