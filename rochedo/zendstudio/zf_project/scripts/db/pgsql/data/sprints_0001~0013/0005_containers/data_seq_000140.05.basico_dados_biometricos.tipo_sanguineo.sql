/**
* SCRIPT DE POPULACAO DA TABELA basico_dados_biometricos.tipo_sanguineo
* 
* Esta tabela contêm os tipos sanguíneos cadastrados 
* no sistema
* 
* versao: 1.0 (POSTGRESQL 9.1.1)
* por: ADRIANO LEMOS (adriano.lemos@rochedoframework.com)
* criacao: 07/02/2012
* ultimas modificacoes:
* 								
*/

INSERT INTO basico_dados_biometricos.tipo_sanguineo (nome, constante_textual, constante_textual_descricao, ativo,rowinfo)
VALUES ('A_POSITIVO', 'FORM_ELEMENT_FILTERING_SELECT_TIPO_SANGUINEO_LABEL_A_POSITIVO', NULL, true, 'SYSTEM_STARTUP');

INSERT INTO basico_dados_biometricos.tipo_sanguineo (nome, constante_textual, constante_textual_descricao, ativo,rowinfo)
VALUES ('A_NEGATIVO', 'FORM_ELEMENT_FILTERING_SELECT_TIPO_SANGUINEO_LABEL_A_NEGATIVO', NULL, true, 'SYSTEM_STARTUP');

INSERT INTO basico_dados_biometricos.tipo_sanguineo (nome, constante_textual, constante_textual_descricao, ativo,rowinfo)
VALUES ('B_POSITIVO', 'FORM_ELEMENT_FILTERING_SELECT_TIPO_SANGUINEO_LABEL_B_POSITIVO', NULL, true, 'SYSTEM_STARTUP');

INSERT INTO basico_dados_biometricos.tipo_sanguineo (nome, constante_textual, constante_textual_descricao, ativo,rowinfo)
VALUES ('B_NEGATIVO', 'FORM_ELEMENT_FILTERING_SELECT_TIPO_SANGUINEO_LABEL_B_NEGATIVO', NULL, true, 'SYSTEM_STARTUP');

INSERT INTO basico_dados_biometricos.tipo_sanguineo (nome, constante_textual, constante_textual_descricao, ativo,rowinfo)
VALUES ('AB_POSITIVO', 'FORM_ELEMENT_FILTERING_SELECT_TIPO_SANGUINEO_LABEL_AB_POSITIVO', NULL, true, 'SYSTEM_STARTUP');

INSERT INTO basico_dados_biometricos.tipo_sanguineo (nome, constante_textual, constante_textual_descricao, ativo,rowinfo)
VALUES ('AB_NEGATIVO', 'FORM_ELEMENT_FILTERING_SELECT_TIPO_SANGUINEO_LABEL_AB_NEGATIVO', NULL, true, 'SYSTEM_STARTUP');

INSERT INTO basico_dados_biometricos.tipo_sanguineo (nome, constante_textual, constante_textual_descricao, ativo,rowinfo)
VALUES ('O_POSITIVO', 'FORM_ELEMENT_FILTERING_SELECT_TIPO_SANGUINEO_LABEL_O_POSITIVO', NULL, true, 'SYSTEM_STARTUP');

INSERT INTO basico_dados_biometricos.tipo_sanguineo (nome, constante_textual, constante_textual_descricao, ativo,rowinfo)
VALUES ('O_NEGATIVO', 'FORM_ELEMENT_FILTERING_SELECT_TIPO_SANGUINEO_LABEL_O_NEGATIVO', NULL, true, 'SYSTEM_STARTUP');

INSERT INTO basico_dados_biometricos.tipo_sanguineo (nome, constante_textual, constante_textual_descricao, ativo,rowinfo)
VALUES ('NAO_DESEJO_INFORMAR', 'SELECT_OPTION_NAO_DESEJO_INFORMAR', NULL, true, 'SYSTEM_STARTUP');