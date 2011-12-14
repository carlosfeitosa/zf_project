/*
* SCRIPT DE POPULACAO DAS TABELAS
* 
* versao: 1.0 (POSTGRESQL 8.4.1)
* por: CARLOS FEITOSA (carlos.feitosa@rochedoproject.com)
* criacao: 21/10/2010
* ultimas modificacoes:
* 						11/05/2011 - criacao do grupo de perfil padrao, no subformulario conta do formulario dados do usuario;
* 						25/10/2011 - criacao do grupo filtros;
*  
*/

/* GRUPO FORMULARIO ELEMENTO */

INSERT INTO basico_form_form_elemento.assoc_grupo (nome, descricao, constante_textual_label, rowinfo)
VALUES ('FILTROS', 
        'Grupo para filtros de consultas.',
		'FORM_DISPLAY_GROUP_LABEL_FILTROS', 'SYSTEM_STARTUP');
		
INSERT INTO basico_form_form_elemento.assoc_grupo (nome, descricao, constante_textual_label, rowinfo)
VALUES ('LEGENDA', 
        'Grupo para legenda.',
		'FORM_DISPLAY_GROUP_LABEL_LEGENDA', 'SYSTEM_STARTUP');
		
INSERT INTO basico_form_form_elemento.assoc_grupo (nome, descricao, constante_textual_label, rowinfo)
VALUES ('ACOES', 
        'Grupo para ações.',
		'FORM_DISPLAY_GROUP_LABEL_ACOES', 'SYSTEM_STARTUP');

INSERT INTO basico_form_form_elemento.assoc_grupo (nome, descricao, constante_textual_label, rowinfo)
VALUES ('ACEITE', 
        'Grupo para de campo para aceitação de termos de uso.',
		'FORM_DISPLAY_GROUP_LABEL_ACEITE', 'SYSTEM_STARTUP');

INSERT INTO basico_form_form_elemento.assoc_grupo (nome, descricao, constante_textual_label, rowinfo)
VALUES ('DOWNLOAD', 
        'Grupo para exibicao de links para download.',
		'FORM_DISPLAY_GROUP_LABEL_DOWNLOAD', 'SYSTEM_STARTUP');

INSERT INTO basico_form_form_elemento.assoc_grupo (nome, descricao, constante_textual_label, rowinfo)
VALUES ('DADOS_USUARIO_DADOS_USUARIO', 
        'Grupo que mantêm os dados sobre informações do usuário',
		'FORM_DISPLAY_GROUP_LABEL_INFORMACOES_USUARIO', 'SYSTEM_STARTUP');

INSERT INTO basico_form_form_elemento.assoc_grupo (nome, descricao, constante_textual_label, rowinfo)
VALUES ('DADOS_USUARIO_DADOS_PROFISSIONAIS_VINCULO_PROFISSIONAL_INFORMACOES_CONTATO', 
        'Grupo que mantêm os dados sobre informações de contato profissionais',
		'FORM_DISPLAY_GROUP_LABEL_INFORMACOES_CONTATO', 'SYSTEM_STARTUP');
		
INSERT INTO basico_form_form_elemento.assoc_grupo (nome, descricao, constante_textual_label, rowinfo)
VALUES ('DADOS_USUARIO_DADOS_PESSOAIS', 
        'Grupo que mantêm os dados sobre informações pessoais',
		'FORM_DISPLAY_GROUP_LABEL_INFORMACOES_PESSOAIS', 'SYSTEM_STARTUP');
		
INSERT INTO basico_form_form_elemento.assoc_grupo (nome, descricao, constante_textual_label, rowinfo)
VALUES ('DADOS_USUARIO_DADOS_ACADEMICOS_MAIOR_TITULACAO', 
        'Grupo que mantêm os dados sobre informações de maior titulação',
		'FORM_FIELD_MAIOR_TITULACAO_DISPLAY_GROUP_LABEL', 'SYSTEM_STARTUP');
		
INSERT INTO basico_form_form_elemento.assoc_grupo (nome, descricao, constante_textual_label, rowinfo)
VALUES ('DADOS_USUARIO_DADOS_ACADEMICOS_CURSO_ATUAL', 
        'Grupo que mantêm os dados sobre informações de maior titulação',
		'FORM_FIELD_CURSO_ATUAL_DISPLAY_GROUP_LABEL', 'SYSTEM_STARTUP');		

INSERT INTO basico_form_form_elemento.assoc_grupo (nome, descricao, constante_textual_label, rowinfo)
VALUES ('DADOS_USUARIO_DADOS_ACADEMICOS_COORDENACAO_POS_GRADUACAO', 
        'Grupo que mantêm os dados sobre informações de maior titulação',
		'FORM_FIELD_COORDENACAO_POS_GRADUACAO_DISPLAY_GROUP_LABEL', 'SYSTEM_STARTUP');		
		
INSERT INTO basico_form_form_elemento.assoc_grupo (nome, descricao, constante_textual_label, rowinfo)
VALUES ('DADOS_USUARIO_DADOS_ACADEMICOS_ORIENTACOES', 
        'Grupo que mantêm os dados sobre informações de maior titulação',
		'FORM_FIELD_ORIENTACOES_DISPLAY_GROUP_LABEL', 'SYSTEM_STARTUP');

INSERT INTO basico_form_form_elemento.assoc_grupo (nome, descricao, constante_textual_label, rowinfo)
VALUES ('DADOS_USUARIO_DADOS_PESSOAIS_DADOS_NASCIMENTO', 
        'Grupo que mantêm os dados sobre dados do nascimento',
		'FORM_DISPLAY_GROUP_LABEL_DADOS_NASCIMENTO', 'SYSTEM_STARTUP');

INSERT INTO basico_form_form_elemento.assoc_grupo (nome, descricao, constante_textual_label, rowinfo)
VALUES ('DADOS_USUARIO_DADOS_PESSOAIS_FILIACAO', 
        'Grupo que mantêm os dados sobre dados do nascimento',
		'FORM_DISPLAY_GROUP_LABEL_FILIACAO', 'SYSTEM_STARTUP');

INSERT INTO basico_form_form_elemento.assoc_grupo (nome, descricao, constante_textual_label, rowinfo)
VALUES ('DADOS_USUARIO_DADOS_PESSOAIS_DOCUMENTOS_PESSOAIS', 
        'Grupo que mantêm os dados sobre dados do nascimento',
		'FORM_DISPLAY_GROUP_LABEL_DOCUMENTOS_PESSOAIS', 'SYSTEM_STARTUP');

INSERT INTO basico_form_form_elemento.assoc_grupo (nome, descricao, constante_textual_label, rowinfo)
VALUES ('DADOS_USUARIO_DADOS_PESSOAIS_INFORMACOES_CONTATO', 
        'Grupo que mantêm os dados sobre informações de contato pessoais',
		'FORM_DISPLAY_GROUP_LABEL_INFORMACOES_CONTATO', 'SYSTEM_STARTUP');

INSERT INTO basico_form_form_elemento.assoc_grupo (nome, descricao, constante_textual_label, rowinfo)
VALUES ('DADOS_USUARIO_CONTA_PERFIL_VINCULADO_PADRAO', 
        'Grupo que mantêm os dados sobre perfil padrao vinculado ao usuario',
		'FORM_DISPLAY_GROUP_LABEL_PERFIL_VINCULADO_PADRAO', 'SYSTEM_STARTUP');

INSERT INTO basico_form_form_elemento.assoc_grupo (nome, descricao, constante_textual_label, rowinfo)
VALUES ('DADOS_USUARIO_CONTA_TROCA_DE_SENHA', 
        'Grupo que mantêm os dados sobre troca de senha do usuario',
		'FORM_DISPLAY_GROUP_LABEL_TROCA_DE_SENHA', 'SYSTEM_STARTUP');