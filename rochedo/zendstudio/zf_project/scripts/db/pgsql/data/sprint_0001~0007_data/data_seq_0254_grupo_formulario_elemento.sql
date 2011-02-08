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
VALUES ('DADOS_USUARIO_DADOS_ACADEMICOS_MAIOR_TITULACAO', 
        'Grupo que mantêm os dados sobre informações de maior titulação',
		'FORM_FIELD_MAIOR_TITULACAO_DISPLAY_GROUP_LABEL', 'SYSTEM_STARTUP');
		
INSERT INTO grupo_formulario_elemento (nome, descricao, constante_textual_label, rowinfo)
VALUES ('DADOS_USUARIO_DADOS_ACADEMICOS_CURSO_ATUAL', 
        'Grupo que mantêm os dados sobre informações de maior titulação',
		'FORM_FIELD_CURSO_ATUAL_DISPLAY_GROUP_LABEL', 'SYSTEM_STARTUP');		

INSERT INTO grupo_formulario_elemento (nome, descricao, constante_textual_label, rowinfo)
VALUES ('DADOS_USUARIO_DADOS_ACADEMICOS_COORDENACAO_POS_GRADUACAO', 
        'Grupo que mantêm os dados sobre informações de maior titulação',
		'FORM_FIELD_COORDENACAO_POS_GRADUACAO_DISPLAY_GROUP_LABEL', 'SYSTEM_STARTUP');		
		
INSERT INTO grupo_formulario_elemento (nome, descricao, constante_textual_label, rowinfo)
VALUES ('DADOS_USUARIO_DADOS_ACADEMICOS_ORIENTACOES', 
        'Grupo que mantêm os dados sobre informações de maior titulação',
		'FORM_FIELD_ORIENTACOES_DISPLAY_GROUP_LABEL', 'SYSTEM_STARTUP');		
		
		
/**
* INICIO
*  
* DADOS PESSOAIS
*/
INSERT INTO grupo_formulario_elemento (nome, descricao, constante_textual_label, rowinfo)
VALUES ('DADOS_USUARIO_DADOS_PESSOAIS_INFORMACOES_CONTATO', 
        'Grupo que mantêm os dados sobre informações de contato pessoais',
		'FORM_DISPLAY_GROUP_LABEL_INFORMACOES_CONTATO', 'SYSTEM_STARTUP');
		
/**
* FIM - DADOS PESSOAIS
*/
