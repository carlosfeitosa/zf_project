/*
* SCRIPT DE POPULACAO DA TABELA basico_form_assoccl_elem_grupo.assoccl_decorator
* 
* versao: 1.0 (POSTGRESQL 8.4.1)
* por: Joao Vasconcelos (joao.vasconcelos@rochedoframework.com)
* criacao: 26/09/2012
* ultimas modificacoes 
*/

INSERT INTO basico_form_assoccl_elem_grupo.assoccl_decorator (id_grupo, id_decorator, ordem, rowinfo)
SELECT (SELECT g.id 
		 FROM basico_form_assoccl_elemento.grupo g
		 WHERE g.nome = 'DOWNLOAD') AS id_grupo,
		(SELECT d.id 
		 FROM basico_formulario.decorator d
		 LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
		 WHERE c.nome = 'FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
		 AND d.nome = 'FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
		1 AS ordem,
		'SYSTEM_STARTUP' AS rowinfo;
		
INSERT INTO basico_form_assoccl_elem_grupo.assoccl_decorator (id_grupo, id_decorator, ordem, rowinfo)
SELECT (SELECT g.id 
		 FROM basico_form_assoccl_elemento.grupo g
		 WHERE g.nome = 'ACEITE') AS id_grupo,
		(SELECT d.id 
		 FROM basico_formulario.decorator d
		 LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
		 WHERE c.nome = 'FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
		 AND d.nome = 'FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
		1 AS ordem,
		'SYSTEM_STARTUP' AS rowinfo;
		
INSERT INTO basico_form_assoccl_elem_grupo.assoccl_decorator (id_grupo, id_decorator, ordem, rowinfo)
SELECT (SELECT g.id 
		 FROM basico_form_assoccl_elemento.grupo g
		 WHERE g.nome = 'DADOS_USUARIO_DADOS_PESSOAIS') AS id_grupo,
		(SELECT d.id 
		 FROM basico_formulario.decorator d
		 LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
		 WHERE c.nome = 'FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
		 AND d.nome = 'FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
		1 AS ordem,
		'SYSTEM_STARTUP' AS rowinfo;
		
INSERT INTO basico_form_assoccl_elem_grupo.assoccl_decorator (id_grupo, id_decorator, ordem, rowinfo)
SELECT (SELECT g.id 
		 FROM basico_form_assoccl_elemento.grupo g
		 WHERE g.nome = 'DADOS_USUARIO_DADOS_USUARIO') AS id_grupo,
		(SELECT d.id 
		 FROM basico_formulario.decorator d
		 LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
		 WHERE c.nome = 'FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
		 AND d.nome = 'FORM_FIELD_DIV_FLOAT_LEFT') AS id_decorator,
		1 AS ordem,
		'SYSTEM_STARTUP' AS rowinfo;
		
INSERT INTO basico_form_assoccl_elem_grupo.assoccl_decorator (id_grupo, id_decorator, ordem, rowinfo)
SELECT (SELECT g.id 
		 FROM basico_form_assoccl_elemento.grupo g
		 WHERE g.nome = 'DADOS_USUARIO_CONTA_PERFIL_VINCULADO_PADRAO') AS id_grupo,
		(SELECT d.id 
		 FROM basico_formulario.decorator d
		 LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
		 WHERE c.nome = 'FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
		 AND d.nome = 'FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
		1 AS ordem,
		'SYSTEM_STARTUP' AS rowinfo;
		
INSERT INTO basico_form_assoccl_elem_grupo.assoccl_decorator (id_grupo, id_decorator, ordem, rowinfo)
SELECT (SELECT g.id 
		 FROM basico_form_assoccl_elemento.grupo g
		 WHERE g.nome = 'DADOS_USUARIO_CONTA_TROCA_DE_SENHA') AS id_grupo,
		(SELECT d.id 
		 FROM basico_formulario.decorator d
		 LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
		 WHERE c.nome = 'FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
		 AND d.nome = 'FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
		1 AS ordem,
		'SYSTEM_STARTUP' AS rowinfo;
		
INSERT INTO basico_form_assoccl_elem_grupo.assoccl_decorator (id_grupo, id_decorator, ordem, rowinfo)
SELECT (SELECT g.id 
		 FROM basico_form_assoccl_elemento.grupo g
		 WHERE g.nome = 'DADOS_USUARIO_DADOS_ACADEMICOS_MAIOR_TITULACAO') AS id_grupo,
		(SELECT d.id 
		 FROM basico_formulario.decorator d
		 LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
		 WHERE c.nome = 'FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
		 AND d.nome = 'FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
		1 AS ordem,
		'SYSTEM_STARTUP' AS rowinfo;
		
INSERT INTO basico_form_assoccl_elem_grupo.assoccl_decorator (id_grupo, id_decorator, ordem, rowinfo)
SELECT (SELECT g.id 
		 FROM basico_form_assoccl_elemento.grupo g
		 WHERE g.nome = 'DADOS_USUARIO_DADOS_ACADEMICOS_CURSO_ATUAL') AS id_grupo,
		(SELECT d.id 
		 FROM basico_formulario.decorator d
		 LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
		 WHERE c.nome = 'FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
		 AND d.nome = 'FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
		1 AS ordem,
		'SYSTEM_STARTUP' AS rowinfo;
		
INSERT INTO basico_form_assoccl_elem_grupo.assoccl_decorator (id_grupo, id_decorator, ordem, rowinfo)
SELECT (SELECT g.id 
		 FROM basico_form_assoccl_elemento.grupo g
		 WHERE g.nome = 'DADOS_USUARIO_DADOS_PESSOAIS_DADOS_NASCIMENTO') AS id_grupo,
		(SELECT d.id 
		 FROM basico_formulario.decorator d
		 LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
		 WHERE c.nome = 'FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
		 AND d.nome = 'FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
		1 AS ordem,
		'SYSTEM_STARTUP' AS rowinfo;
		
INSERT INTO basico_form_assoccl_elem_grupo.assoccl_decorator (id_grupo, id_decorator, ordem, rowinfo)
SELECT (SELECT g.id 
		 FROM basico_form_assoccl_elemento.grupo g
		 WHERE g.nome = 'DADOS_USUARIO_DADOS_PESSOAIS_FILIACAO') AS id_grupo,
		(SELECT d.id 
		 FROM basico_formulario.decorator d
		 LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
		 WHERE c.nome = 'FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
		 AND d.nome = 'FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
		1 AS ordem,
		'SYSTEM_STARTUP' AS rowinfo;
		
INSERT INTO basico_form_assoccl_elem_grupo.assoccl_decorator (id_grupo, id_decorator, ordem, rowinfo)
SELECT (SELECT g.id 
		 FROM basico_form_assoccl_elemento.grupo g
		 WHERE g.nome = 'DADOS_USUARIO_DADOS_PESSOAIS_DOCUMENTOS_PESSOAIS') AS id_grupo,
		(SELECT d.id 
		 FROM basico_formulario.decorator d
		 LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
		 WHERE c.nome = 'FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
		 AND d.nome = 'FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
		1 AS ordem,
		'SYSTEM_STARTUP' AS rowinfo;
		
INSERT INTO basico_form_assoccl_elem_grupo.assoccl_decorator (id_grupo, id_decorator, ordem, rowinfo)
SELECT (SELECT g.id 
		 FROM basico_form_assoccl_elemento.grupo g
		 WHERE g.nome = 'DADOS_USUARIO_DADOS_PESSOAIS_INFORMACOES_CONTATO') AS id_grupo,
		(SELECT d.id 
		 FROM basico_formulario.decorator d
		 LEFT JOIN basico.categoria c ON (d.id_categoria = c.id)
		 WHERE c.nome = 'FORMULARIO_ELEMENTO_DECORATOR_HTML_ZF'
		 AND d.nome = 'FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
		1 AS ordem,
		'SYSTEM_STARTUP' AS rowinfo;		