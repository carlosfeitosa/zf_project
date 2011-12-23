/**
* SCRIPT DE POPULACAO DA TABELA basico_dados_biometricos.tipo_sanguineo
* 
* versao: 1.0 (PGSQL 2000)
* por: JOÃO VASCONCELOS (joao.vasconcelos@rochedoproject.com)
* criacao: 15/02/2011
* ultimas modificacoes:
* 						- 30/11/2011 - adaptação para novo modelo de banco de dados (Modularizado atraves de schemas) - João Vasconcelos;
* 
*/
INSERT INTO basico_dados_biometricos.tipo_sanguineo (nome, descricao, constante_textual, ativo,rowinfo)
VALUES ('A_POSITIVO', 'Tipo sanguineo A+', 'A+', true, 'SYSTEM_STARTUP');

INSERT INTO basico_dados_biometricos.tipo_sanguineo (nome, descricao, constante_textual, ativo,rowinfo)
VALUES ('A_NEGATIVO', 'Tipo sanguineo A-', 'A-', true, 'SYSTEM_STARTUP');

INSERT INTO basico_dados_biometricos.tipo_sanguineo (nome, descricao, constante_textual, ativo,rowinfo)
VALUES ('B_POSITIVO', 'Tipo sanguineo B+', 'B+', true, 'SYSTEM_STARTUP');

INSERT INTO basico_dados_biometricos.tipo_sanguineo (nome, descricao, constante_textual, ativo,rowinfo)
VALUES ('B_NEGATIVO', 'Tipo sanguineo B-', 'B-', true, 'SYSTEM_STARTUP');

INSERT INTO basico_dados_biometricos.tipo_sanguineo (nome, descricao, constante_textual, ativo,rowinfo)
VALUES ('AB_POSITIVO', 'Tipo sanguineo AB+', 'AB+', true, 'SYSTEM_STARTUP');

INSERT INTO basico_dados_biometricos.tipo_sanguineo (nome, descricao, constante_textual, ativo,rowinfo)
VALUES ('AB_NEGATIVO', 'Tipo sanguineo AB-', 'AB-', true, 'SYSTEM_STARTUP');

INSERT INTO basico_dados_biometricos.tipo_sanguineo (nome, descricao, constante_textual, ativo,rowinfo)
VALUES ('O_POSITIVO', 'Tipo sanguineo O+', 'O+', true, 'SYSTEM_STARTUP');

INSERT INTO basico_dados_biometricos.tipo_sanguineo (nome, descricao, constante_textual, ativo,rowinfo)
VALUES ('O_NEGATIVO', 'Tipo sanguineo O-', 'O-', true, 'SYSTEM_STARTUP');

INSERT INTO basico_dados_biometricos.tipo_sanguineo (nome, descricao, constante_textual, ativo,rowinfo)
VALUES ('NAO_DESEJO_INFORMAR', 'Opção Não desejo informar', '@NAO_DESEJO_INFORMAR', true, 'SYSTEM_STARTUP');