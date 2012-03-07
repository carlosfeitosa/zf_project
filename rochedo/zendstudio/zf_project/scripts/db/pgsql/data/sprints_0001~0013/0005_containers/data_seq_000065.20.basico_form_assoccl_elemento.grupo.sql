/**
* SCRIPT DE POPULACAO DA TABELA basico_form_assoccl_elemento.grupo
* 
* Esta tabela funciona como um banco de dados de grupos para elementos de formularios.
* 
* versao: 1.0 (POSTGRESQL 9.1.1)
* por: JOÃO VASCONCELOS (joao.vasconcelos@rochedoframework.com)
* criacao: 02/02/2012
* ultimas modificacoes: 06/02/2012
* 								
*/

INSERT INTO basico_form_assoccl_elemento.grupo (nome, constante_textual, constante_textual_label, rowinfo)
VALUES ('FILTROS', 'FILTROS',
		'FORM_DISPLAY_GROUP_LABEL_FILTROS', 'SYSTEM_STARTUP');
		
INSERT INTO basico_form_assoccl_elemento.grupo (nome, constante_textual, constante_textual_label, rowinfo)
VALUES ('LEGENDA', 'LEGENDA',
		'FORM_DISPLAY_GROUP_LABEL_LEGENDA', 'SYSTEM_STARTUP');
		
INSERT INTO basico_form_assoccl_elemento.grupo (nome, constante_textual, constante_textual_label, rowinfo)
VALUES ('ACOES', 'ACOES',
		'FORM_DISPLAY_GROUP_LABEL_ACOES', 'SYSTEM_STARTUP');

INSERT INTO basico_form_assoccl_elemento.grupo (nome, constante_textual, constante_textual_label, rowinfo)
VALUES ('ACEITE', 'ACEITE',
		'FORM_DISPLAY_GROUP_LABEL_ACEITE', 'SYSTEM_STARTUP');

INSERT INTO basico_form_assoccl_elemento.grupo (nome, constante_textual, constante_textual_label, rowinfo)
VALUES ('DOWNLOAD','DOWNLOAD',
		'FORM_DISPLAY_GROUP_LABEL_DOWNLOAD', 'SYSTEM_STARTUP');

INSERT INTO basico_form_assoccl_elemento.grupo (nome, constante_textual, constante_textual_label, rowinfo)
VALUES ('DADOS_USUARIO_DADOS_USUARIO','DADOS_USUARIO',
		'FORM_DISPLAY_GROUP_LABEL_INFORMACOES_USUARIO', 'SYSTEM_STARTUP');

INSERT INTO basico_form_assoccl_elemento.grupo (nome, constante_textual, constante_textual_label, rowinfo)
VALUES ('DADOS_USUARIO_DADOS_PROFISSIONAIS_VINCULO_PROFISSIONAL_INFORMACOES_CONTATO', 'INFORMACOES_CONTATO',
		'FORM_DISPLAY_GROUP_LABEL_INFORMACOES_CONTATO', 'SYSTEM_STARTUP');
		
INSERT INTO basico_form_assoccl_elemento.grupo (nome, constante_textual, constante_textual_label, rowinfo)
VALUES ('DADOS_USUARIO_DADOS_PESSOAIS', 'DADOS_PESSOAIS',
		'FORM_DISPLAY_GROUP_LABEL_INFORMACOES_PESSOAIS', 'SYSTEM_STARTUP');
		
INSERT INTO basico_form_assoccl_elemento.grupo (nome, constante_textual, constante_textual_label, rowinfo)
VALUES ('DADOS_USUARIO_DADOS_ACADEMICOS_MAIOR_TITULACAO', 'MAIOR_TITULACAO',
		'FORM_FIELD_MAIOR_TITULACAO_DISPLAY_GROUP_LABEL', 'SYSTEM_STARTUP');
		
INSERT INTO basico_form_assoccl_elemento.grupo (nome, constante_textual, constante_textual_label, rowinfo)
VALUES ('DADOS_USUARIO_DADOS_ACADEMICOS_CURSO_ATUAL', 'CURSO_ATUAL',
		'FORM_FIELD_CURSO_ATUAL_DISPLAY_GROUP_LABEL', 'SYSTEM_STARTUP');		

INSERT INTO basico_form_assoccl_elemento.grupo (nome, constante_textual, constante_textual_label, rowinfo)
VALUES ('DADOS_USUARIO_DADOS_ACADEMICOS_COORDENACAO_POS_GRADUACAO', 'COORDENACAO_POS_GRADUACAO',
		'FORM_FIELD_COORDENACAO_POS_GRADUACAO_DISPLAY_GROUP_LABEL', 'SYSTEM_STARTUP');		
		
INSERT INTO basico_form_assoccl_elemento.grupo (nome, constante_textual, constante_textual_label, rowinfo)
VALUES ('DADOS_USUARIO_DADOS_ACADEMICOS_ORIENTACOES', 'ORIENTACOES',
		'FORM_FIELD_ORIENTACOES_DISPLAY_GROUP_LABEL', 'SYSTEM_STARTUP');

INSERT INTO basico_form_assoccl_elemento.grupo (nome, constante_textual, constante_textual_label, rowinfo)
VALUES ('DADOS_USUARIO_DADOS_PESSOAIS_DADOS_NASCIMENTO', 'DADOS_NASCIMENTO',
		'FORM_DISPLAY_GROUP_LABEL_DADOS_NASCIMENTO', 'SYSTEM_STARTUP');

INSERT INTO basico_form_assoccl_elemento.grupo (nome, constante_textual, constante_textual_label, rowinfo)
VALUES ('DADOS_USUARIO_DADOS_PESSOAIS_FILIACAO', 'FILIACAO',
		'FORM_DISPLAY_GROUP_LABEL_FILIACAO', 'SYSTEM_STARTUP');

INSERT INTO basico_form_assoccl_elemento.grupo (nome, constante_textual, constante_textual_label, rowinfo)
VALUES ('DADOS_USUARIO_DADOS_PESSOAIS_DOCUMENTOS_PESSOAIS', 'DOCUMENTOS_PESSOAIS',
		'FORM_DISPLAY_GROUP_LABEL_DOCUMENTOS_PESSOAIS', 'SYSTEM_STARTUP');

INSERT INTO basico_form_assoccl_elemento.grupo (nome, constante_textual, constante_textual_label, rowinfo)
VALUES ('DADOS_USUARIO_DADOS_PESSOAIS_INFORMACOES_CONTATO', 'INFORMACOES_CONTATO',
		'FORM_DISPLAY_GROUP_LABEL_INFORMACOES_CONTATO', 'SYSTEM_STARTUP');

INSERT INTO basico_form_assoccl_elemento.grupo (nome, constante_textual, constante_textual_label, rowinfo)
VALUES ('DADOS_USUARIO_CONTA_PERFIL_VINCULADO_PADRAO', 'VINCULO_PADRAO',
		'FORM_DISPLAY_GROUP_LABEL_PERFIL_VINCULADO_PADRAO', 'SYSTEM_STARTUP');

INSERT INTO basico_form_assoccl_elemento.grupo (nome, constante_textual, constante_textual_label, rowinfo)
VALUES ('DADOS_USUARIO_CONTA_TROCA_DE_SENHA', 'TROCA_DE_SENHA',
		'FORM_DISPLAY_GROUP_LABEL_TROCA_DE_SENHA', 'SYSTEM_STARTUP');