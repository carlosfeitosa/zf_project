/**
* SCRIPT DE POPULACAO DA TABELA tipo_sanguineo
* 
* versao: 1.0 (MSSQL 2000)
* por: JOÃO VASCONCELOS (joao.vasconcelos@rochedoproject.com)
* criacao: 15/02/2011
* ultimas modificacoes:
* 
*/

INSERT INTO tipo_sanguineo (nome, descricao, rotulo,rowinfo)
VALUES ('A_POSITIVO', 'Tipo sanguineo A+', 'A+', 'SYSTEM_STARTUP');

INSERT INTO tipo_sanguineo (nome, descricao, rotulo,rowinfo)
VALUES ('A_NEGATIVO', 'Tipo sanguineo A-', 'A-', 'SYSTEM_STARTUP');

INSERT INTO tipo_sanguineo (nome, descricao, rotulo,rowinfo)
VALUES ('B_POSITIVO', 'Tipo sanguineo B+', 'B+', 'SYSTEM_STARTUP');

INSERT INTO tipo_sanguineo (nome, descricao, rotulo,rowinfo)
VALUES ('B_NEGATIVO', 'Tipo sanguineo B-', 'B-', 'SYSTEM_STARTUP');

INSERT INTO tipo_sanguineo (nome, descricao, rotulo,rowinfo)
VALUES ('AB_POSITIVO', 'Tipo sanguineo AB+', 'AB+', 'SYSTEM_STARTUP');

INSERT INTO tipo_sanguineo (nome, descricao, rotulo,rowinfo)
VALUES ('AB_NEGATIVO', 'Tipo sanguineo AB-', 'AB-', 'SYSTEM_STARTUP');

INSERT INTO tipo_sanguineo (nome, descricao, rotulo,rowinfo)
VALUES ('O_POSITIVO', 'Tipo sanguineo O+', 'O+', 'SYSTEM_STARTUP');

INSERT INTO tipo_sanguineo (nome, descricao, rotulo,rowinfo)
VALUES ('O_NEGATIVO', 'Tipo sanguineo O-', 'O-', 'SYSTEM_STARTUP');

INSERT INTO tipo_sanguineo (nome, descricao, rotulo,rowinfo)
VALUES ('NAO_DESEJO_INFORMAR', 'Opção Não desejo informar', '@NAO_DESEJO_INFORMAR', 'SYSTEM_STARTUP');