/*
* SCRIPT DE POPULACAO DAS TABELAS
* 
* versao: 1.0 (POSTGRESQL 8.4.1)
* por: CARLOS FEITOSA (carlos.feitosa@rochedoproject.com)
* criacao: 21/10/2010
* ultimas modificacoes:
*  
*/

/* GRUPO FORMULARIO ELEMENTO */

INSERT INTO grupo_formulario_elemento (nome, descricao, constante_textual_label, rowinfo)
VALUES ('DADOS_USUARIO_DADOS_PROFISSIONAIS_VINCULO_PROFISSIONAL_INFORMACOES_CONTATO', 
        'Grupo que mantem os dados sobre informacoes de contato profissionais',
		'FORM_DISPLAY_GROUP_LABEL_INFORMACOES_CONTATO', 'SYSTEM_STARTUP');