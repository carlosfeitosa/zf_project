/**
* SCRIPT DE POPULACAO DA TABELA tipo_sanguineo
* 
* versao: 1.0 (MSSQL 2000)
* por: JOÃO VASCONCELOS (joao.vasconcelos@rochedoproject.com)
* criacao: 15/02/2011
* ultimas modificacoes:
* 
*/

INSERT INTO basico_dados_biometricos.tipo_sanguineo (nome, descricao, constante_textual, ativo, rowinfo)
VALUES ('A_POSITIVO', 'Tipo sanguineo A+', 'A+', 1, 'SYSTEM_STARTUP');

INSERT INTO basico_dados_biometricos.tipo_sanguineo (nome, descricao, constante_textual, ativo, rowinfo)
VALUES ('A_NEGativo,', 'Tipo sanguineo A-', 'A-', 1, 'SYSTEM_STARTUP');

INSERT INTO basico_dados_biometricos.tipo_sanguineo (nome, descricao, constante_textual, ativo, rowinfo)
VALUES ('B_POSITIVO', 'Tipo sanguineo B+', 'B+', 1, 'SYSTEM_STARTUP');

INSERT INTO basico_dados_biometricos.tipo_sanguineo (nome, descricao, constante_textual, ativo, rowinfo)
VALUES ('B_NEGativo,', 'Tipo sanguineo B-', 'B-', 1, 'SYSTEM_STARTUP');

INSERT INTO basico_dados_biometricos.tipo_sanguineo (nome, descricao, constante_textual, ativo, rowinfo)
VALUES ('AB_POSITIVO', 'Tipo sanguineo AB+', 'AB+', 1, 'SYSTEM_STARTUP');

INSERT INTO basico_dados_biometricos.tipo_sanguineo (nome, descricao, constante_textual, ativo, rowinfo)
VALUES ('AB_NEGativo,', 'Tipo sanguineo AB-', 'AB-', 1, 'SYSTEM_STARTUP');

INSERT INTO basico_dados_biometricos.tipo_sanguineo (nome, descricao, constante_textual, ativo, rowinfo)
VALUES ('O_POSITIVO', 'Tipo sanguineo O+', 'O+', 1, 'SYSTEM_STARTUP');

INSERT INTO basico_dados_biometricos.tipo_sanguineo (nome, descricao, constante_textual, ativo, rowinfo)
VALUES ('O_NEGativo,', 'Tipo sanguineo O-', 'O-', 1, 'SYSTEM_STARTUP');

INSERT INTO basico_dados_biometricos.tipo_sanguineo (nome, descricao, constante_textual, ativo, rowinfo)
VALUES ('NAO_DESEJO_INFORMAR', 'Opção Não desejo informar', '@NAO_DESEJO_INFORMAR', 1, 'SYSTEM_STARTUP');