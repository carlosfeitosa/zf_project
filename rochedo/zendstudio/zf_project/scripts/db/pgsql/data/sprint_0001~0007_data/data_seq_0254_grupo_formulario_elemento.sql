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
        'Grupo que mantêm os dados sobre informações de contato profissionais',
		'FORM_DISPLAY_GROUP_LABEL_INFORMACOES_CONTATO', 'SYSTEM_STARTUP');
		
INSERT INTO grupo_formulario_elemento (nome, descricao, constante_textual_label, rowinfo)
VALUES ('DADOS_USUARIO_DADOS_PESSOAIS', 
        'Grupo que mantêm os dados sobre informações pessoais',
		'FORM_DISPLAY_GROUP_LABEL_INFORMACOES_PESSOAIS', 'SYSTEM_STARTUP');
		
INSERT INTO grupo_formulario_elemento (nome, descricao, constante_textual_label, rowinfo)
VALUES ('DADOS_USUARIO_DADOS_USUARIO', 
        'Grupo que mantêm os dados sobre informações do usuário',
		'FORM_DISPLAY_GROUP_LABEL_INFORMACOES_USUARIO', 'SYSTEM_STARTUP');