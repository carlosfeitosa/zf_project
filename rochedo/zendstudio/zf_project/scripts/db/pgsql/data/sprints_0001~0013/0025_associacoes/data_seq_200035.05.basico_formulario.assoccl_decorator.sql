/*
* SCRIPT DE POPULACAO DA TABELA basico_formulario.assoccl_decorator
* 
* versao: 1.0 (POSTGRESQL 8.4.1)
* por: Igor Pinho (igor.pinho.souza@rochedoframework.com)
* criacao: 06/02/2012
* ultimas modificacoes: 20/06/2012 - Adição do decorator AjaxForm para todos os formularios (João Vasconcelos)
*/

INSERT INTO basico_formulario.assoccl_decorator (id_formulario, id_decorator, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO'
        AND f.nome = 'FORM_ACEITE_TERMOS_USO') AS id_formulario,
       (SELECT d.id
	    FROM basico_formulario.decorator d
	    LEFT join basico.categoria c ON (d.id_categoria= c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_SUBMIT') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_decorator (id_formulario, id_decorator, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO'
        AND f.nome = 'FORM_TROCA_DE_SENHA') AS id_formulario,
       (SELECT d.id
	    FROM basico_formulario.decorator d
	    LEFT join basico.categoria c ON (d.id_categoria= c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_SUBMIT') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_decorator (id_formulario, id_decorator, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO'
        AND f.nome = 'FORM_DADOS_USUARIO') AS id_formulario,
       (SELECT d.id
	    FROM basico_formulario.decorator d
	    LEFT join basico.categoria c ON (d.id_categoria= c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_TAB_CONTAINER1_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_TAB_CONTAINER1') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_decorator (id_formulario, id_decorator, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_ACADEMICOS'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_ACADEMICOS') AS id_formulario,
       (SELECT d.id
	    FROM basico_formulario.decorator d
	    LEFT join basico.categoria c ON (d.id_categoria= c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_SUBMIT') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_decorator (id_formulario, id_decorator, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_PROFISSIONAIS'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_PROFISSIONAIS') AS id_formulario,
       (SELECT d.id
	    FROM basico_formulario.decorator d
	    LEFT join basico.categoria c ON (d.id_categoria= c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_SUBMIT') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_decorator (id_formulario, id_decorator, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_BIOMETRICOS'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_BIOMETRICOS') AS id_formulario,
       (SELECT d.id
	    FROM basico_formulario.decorator d
	    LEFT join basico.categoria c ON (d.id_categoria= c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_SUBMIT') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_decorator (id_formulario, id_decorator, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_CONTA'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_CONTA') AS id_formulario,
       (SELECT d.id
	    FROM basico_formulario.decorator d
	    LEFT join basico.categoria c ON (d.id_categoria= c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_SUBMIT') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_decorator (id_formulario, id_decorator, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO'
        AND f.nome = 'FORM_CADASTRAR_USUARIO_NAO_VALIDADO') AS id_formulario,
       (SELECT d.id
	    FROM basico_formulario.decorator d
	    LEFT join basico.categoria c ON (d.id_categoria= c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_SUBMIT') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_decorator (id_formulario, id_decorator, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO'
        AND f.nome = 'FORM_CADASTRAR_USUARIO_VALIDADO') AS id_formulario,
       (SELECT d.id
	    FROM basico_formulario.decorator d
	    LEFT join basico.categoria c ON (d.id_categoria= c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_SUBMIT') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_decorator (id_formulario, id_decorator, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_LOGIN'
        AND f.nome = 'FORM_AUTENTICACAO_USUARIO') AS id_formulario,
       (SELECT d.id
	    FROM basico_formulario.decorator d
	    LEFT join basico.categoria c ON (d.id_categoria= c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_SUBMIT') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_decorator (id_formulario, id_decorator, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_PESSOAIS'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_PESSOAIS') AS id_formulario,
       (SELECT d.id
	    FROM basico_formulario.decorator d
	    LEFT join basico.categoria c ON (d.id_categoria= c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_SUBMIT') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_decorator (id_formulario, id_decorator, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_INFORMACOES_BANCARIAS') AS id_formulario,
       (SELECT d.id
	    FROM basico_formulario.decorator d
	    LEFT join basico.categoria c ON (d.id_categoria= c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_SUBMIT') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_decorator (id_formulario, id_decorator, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_INFORMACOES_BANCARIAS_DADOS_BANCARIOS') AS id_formulario,
       (SELECT d.id
	    FROM basico_formulario.decorator d
	    LEFT join basico.categoria c ON (d.id_categoria= c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_SUBMIT') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_decorator (id_formulario, id_decorator, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_INFORMACOES_BANCARIAS_MOVIMENTACAO_FINANCEIRA') AS id_formulario,
       (SELECT d.id
	    FROM basico_formulario.decorator d
	    LEFT join basico.categoria c ON (d.id_categoria= c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_SUBMIT') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_decorator (id_formulario, id_decorator, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CVC'
        AND f.nome = 'FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO') AS id_formulario,
       (SELECT d.id
	    FROM basico_formulario.decorator d
	    LEFT join basico.categoria c ON (d.id_categoria= c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_SUBMIT') AS id_decorator,
        1 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_formulario.assoccl_decorator (id_formulario, id_decorator, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ADMIN_RASCUNHOS'
        AND f.nome = 'FORM_DIALOG_ADMIN_RASCUNHOS') AS id_formulario,
       (SELECT d.id
	    FROM basico_formulario.decorator d
	    LEFT join basico.categoria c ON (d.id_categoria= c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DECORATOR'
        AND d.nome = 'DECORATOR_AJAX_FORM') AS id_decorator,
        9999 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;  
       
INSERT INTO basico_formulario.assoccl_decorator (id_formulario, id_decorator, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO'
        AND f.nome = 'FORM_ACEITE_TERMOS_USO') AS id_formulario,
       (SELECT d.id
	    FROM basico_formulario.decorator d
	    LEFT join basico.categoria c ON (d.id_categoria= c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DECORATOR'
        AND d.nome = 'DECORATOR_AJAX_FORM') AS id_decorator,
        9999 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_formulario.assoccl_decorator (id_formulario, id_decorator, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO'
        AND f.nome = 'FORM_TROCA_DE_SENHA') AS id_formulario,
       (SELECT d.id
	    FROM basico_formulario.decorator d
	    LEFT join basico.categoria c ON (d.id_categoria= c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DECORATOR'
        AND d.nome = 'DECORATOR_AJAX_FORM') AS id_decorator,
        9999 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_formulario.assoccl_decorator (id_formulario, id_decorator, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_SUGESTAO_LOGIN'
        AND f.nome = 'FORM_DIALOG_SUGESTAO_LOGIN') AS id_formulario,
       (SELECT d.id
	    FROM basico_formulario.decorator d
	    LEFT join basico.categoria c ON (d.id_categoria= c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DECORATOR'
        AND d.nome = 'DECORATOR_AJAX_FORM') AS id_decorator,
        9999 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_formulario.assoccl_decorator (id_formulario, id_decorator, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO'
        AND f.nome = 'FORM_DADOS_USUARIO') AS id_formulario,
       (SELECT d.id
	    FROM basico_formulario.decorator d
	    LEFT join basico.categoria c ON (d.id_categoria= c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DECORATOR'
        AND d.nome = 'DECORATOR_AJAX_FORM') AS id_decorator,
        9999 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_formulario.assoccl_decorator (id_formulario, id_decorator, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_ACADEMICOS'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_ACADEMICOS') AS id_formulario,
       (SELECT d.id
	    FROM basico_formulario.decorator d
	    LEFT join basico.categoria c ON (d.id_categoria= c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DECORATOR'
        AND d.nome = 'DECORATOR_AJAX_FORM') AS id_decorator,
        9999 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_formulario.assoccl_decorator (id_formulario, id_decorator, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_COORDENACAO_POS_GRADUACAO'
        AND f.nome = 'FORM_DIALOG_COORDENACAO_POS_GRADUACAO') AS id_formulario,
       (SELECT d.id
	    FROM basico_formulario.decorator d
	    LEFT join basico.categoria c ON (d.id_categoria= c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DECORATOR'
        AND d.nome = 'DECORATOR_AJAX_FORM') AS id_decorator,
        9999 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_formulario.assoccl_decorator (id_formulario, id_decorator, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_ORIENTACOES'
        AND f.nome = 'FORM_DIALOG_ORIENTACOES') AS id_formulario,
       (SELECT d.id
	    FROM basico_formulario.decorator d
	    LEFT join basico.categoria c ON (d.id_categoria= c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DECORATOR'
        AND d.nome = 'DECORATOR_AJAX_FORM') AS id_decorator,
        9999 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_formulario.assoccl_decorator (id_formulario, id_decorator, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_PROFISSIONAIS'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_PROFISSIONAIS') AS id_formulario,
       (SELECT d.id
	    FROM basico_formulario.decorator d
	    LEFT join basico.categoria c ON (d.id_categoria= c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DECORATOR'
        AND d.nome = 'DECORATOR_AJAX_FORM') AS id_decorator,
        9999 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_formulario.assoccl_decorator (id_formulario, id_decorator, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_BIOMETRICOS'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_BIOMETRICOS') AS id_formulario,
       (SELECT d.id
	    FROM basico_formulario.decorator d
	    LEFT join basico.categoria c ON (d.id_categoria= c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DECORATOR'
        AND d.nome = 'DECORATOR_AJAX_FORM') AS id_decorator,
        9999 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_formulario.assoccl_decorator (id_formulario, id_decorator, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_CONTA'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_CONTA') AS id_formulario,
       (SELECT d.id
	    FROM basico_formulario.decorator d
	    LEFT join basico.categoria c ON (d.id_categoria= c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DECORATOR'
        AND d.nome = 'DECORATOR_AJAX_FORM') AS id_decorator,
        9999 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_formulario.assoccl_decorator (id_formulario, id_decorator, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL'
        AND f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL') AS id_formulario,
       (SELECT d.id
	    FROM basico_formulario.decorator d
	    LEFT join basico.categoria c ON (d.id_categoria= c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DECORATOR'
        AND d.nome = 'DECORATOR_AJAX_FORM') AS id_decorator,
        9999 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_formulario.assoccl_decorator (id_formulario, id_decorator, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL_TELEFONES_PROFISSIONAIS'
        AND f.nome = 'FORM_DIALOG_TELEFONES_PROFISSIONAIS') AS id_formulario,
       (SELECT d.id
	    FROM basico_formulario.decorator d
	    LEFT join basico.categoria c ON (d.id_categoria= c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DECORATOR'
        AND d.nome = 'DECORATOR_AJAX_FORM') AS id_decorator,
        9999 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_formulario.assoccl_decorator (id_formulario, id_decorator, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL_EMAILS_PROFISSIONAIS'
        AND f.nome = 'FORM_DIALOG_EMAILS_PROFISSIONAIS') AS id_formulario,
       (SELECT d.id
	    FROM basico_formulario.decorator d
	    LEFT join basico.categoria c ON (d.id_categoria= c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DECORATOR'
        AND d.nome = 'DECORATOR_AJAX_FORM') AS id_decorator,
        9999 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_formulario.assoccl_decorator (id_formulario, id_decorator, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL_WEBSITES_PROFISSIONAIS'
        AND f.nome = 'FORM_DIALOG_WEBSITES_PROFISSIONAIS') AS id_formulario,
       (SELECT d.id
	    FROM basico_formulario.decorator d
	    LEFT join basico.categoria c ON (d.id_categoria= c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DECORATOR'
        AND d.nome = 'DECORATOR_AJAX_FORM') AS id_decorator,
        9999 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_formulario.assoccl_decorator (id_formulario, id_decorator, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL_ENDERECOS_PROFISSIONAIS'
        AND f.nome = 'FORM_DIALOG_ENDERECOS_PROFISSIONAIS') AS id_formulario,
       (SELECT d.id
	    FROM basico_formulario.decorator d
	    LEFT join basico.categoria c ON (d.id_categoria= c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DECORATOR'
        AND d.nome = 'DECORATOR_AJAX_FORM') AS id_decorator,
        9999 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_formulario.assoccl_decorator (id_formulario, id_decorator, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_TELEFONE'
        AND f.nome = 'FORM_DIALOG_TELEFONE') AS id_formulario,
       (SELECT d.id
	    FROM basico_formulario.decorator d
	    LEFT join basico.categoria c ON (d.id_categoria= c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DECORATOR'
        AND d.nome = 'DECORATOR_AJAX_FORM') AS id_decorator,
        9999 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_formulario.assoccl_decorator (id_formulario, id_decorator, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_EMAIL'
        AND f.nome = 'FORM_DIALOG_EMAIL') AS id_formulario,
       (SELECT d.id
	    FROM basico_formulario.decorator d
	    LEFT join basico.categoria c ON (d.id_categoria= c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DECORATOR'
        AND d.nome = 'DECORATOR_AJAX_FORM') AS id_decorator,
        9999 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_formulario.assoccl_decorator (id_formulario, id_decorator, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_WEBSITE'
        AND f.nome = 'FORM_DIALOG_WEBSITE') AS id_formulario,
       (SELECT d.id
	    FROM basico_formulario.decorator d
	    LEFT join basico.categoria c ON (d.id_categoria= c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DECORATOR'
        AND d.nome = 'DECORATOR_AJAX_FORM') AS id_decorator,
        9999 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_formulario.assoccl_decorator (id_formulario, id_decorator, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_ENDERECO'
        AND f.nome = 'FORM_DIALOG_ENDERECO') AS id_formulario,
       (SELECT d.id
	    FROM basico_formulario.decorator d
	    LEFT join basico.categoria c ON (d.id_categoria= c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DECORATOR'
        AND d.nome = 'DECORATOR_AJAX_FORM') AS id_decorator,
        9999 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_formulario.assoccl_decorator (id_formulario, id_decorator, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO'
        AND f.nome = 'FORM_CADASTRAR_USUARIO_NAO_VALIDADO') AS id_formulario,
       (SELECT d.id
	    FROM basico_formulario.decorator d
	    LEFT join basico.categoria c ON (d.id_categoria= c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DECORATOR'
        AND d.nome = 'DECORATOR_AJAX_FORM') AS id_decorator,
        9999 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_formulario.assoccl_decorator (id_formulario, id_decorator, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO'
        AND f.nome = 'FORM_CADASTRAR_USUARIO_VALIDADO') AS id_formulario,
       (SELECT d.id
	    FROM basico_formulario.decorator d
	    LEFT join basico.categoria c ON (d.id_categoria= c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DECORATOR'
        AND d.nome = 'DECORATOR_AJAX_FORM') AS id_decorator,
        9999 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_formulario.assoccl_decorator (id_formulario, id_decorator, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_DOCUMENTOS_IDENTIFICACAO'
        AND f.nome = 'FORM_DIALOG_DOCUMENTOS_IDENTIFICACAO') AS id_formulario,
       (SELECT d.id
	    FROM basico_formulario.decorator d
	    LEFT join basico.categoria c ON (d.id_categoria= c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DECORATOR'
        AND d.nome = 'DECORATOR_AJAX_FORM') AS id_decorator,
        9999 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_formulario.assoccl_decorator (id_formulario, id_decorator, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_DOCUMENTOS_IDENTIFICACAO'
        AND f.nome = 'FORM_DIALOG_DOCUMENTO') AS id_formulario,
       (SELECT d.id
	    FROM basico_formulario.decorator d
	    LEFT join basico.categoria c ON (d.id_categoria= c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DECORATOR'
        AND d.nome = 'DECORATOR_AJAX_FORM') AS id_decorator,
        9999 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_formulario.assoccl_decorator (id_formulario, id_decorator, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_LOGIN'
        AND f.nome = 'FORM_AUTENTICACAO_USUARIO') AS id_formulario,
       (SELECT d.id
	    FROM basico_formulario.decorator d
	    LEFT join basico.categoria c ON (d.id_categoria= c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DECORATOR'
        AND d.nome = 'DECORATOR_AJAX_FORM') AS id_decorator,
        9999 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_formulario.assoccl_decorator (id_formulario, id_decorator, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_USUARIO_DADOS_PESSOAIS'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_PESSOAIS') AS id_formulario,
       (SELECT d.id
	    FROM basico_formulario.decorator d
	    LEFT join basico.categoria c ON (d.id_categoria= c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DECORATOR'
        AND d.nome = 'DECORATOR_AJAX_FORM') AS id_decorator,
        9999 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_formulario.assoccl_decorator (id_formulario, id_decorator, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_PESSOAIS_DOCUMENTOS_PESSOAIS'
        AND f.nome = 'FORM_DIALOG_DOCUMENTOS_PESSOAIS') AS id_formulario,
       (SELECT d.id
	    FROM basico_formulario.decorator d
	    LEFT join basico.categoria c ON (d.id_categoria= c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DECORATOR'
        AND d.nome = 'DECORATOR_AJAX_FORM') AS id_decorator,
        9999 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_formulario.assoccl_decorator (id_formulario, id_decorator, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_PESSOAIS_TELEFONES_PESSOAIS'
        AND f.nome = 'FORM_DIALOG_TELEFONES_PESSOAIS') AS id_formulario,
       (SELECT d.id
	    FROM basico_formulario.decorator d
	    LEFT join basico.categoria c ON (d.id_categoria= c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DECORATOR'
        AND d.nome = 'DECORATOR_AJAX_FORM') AS id_decorator,
        9999 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_decorator (id_formulario, id_decorator, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_PESSOAIS_EMAILS_PESSOAIS'
        AND f.nome = 'FORM_DIALOG_EMAILS_PESSOAIS') AS id_formulario,
       (SELECT d.id
	    FROM basico_formulario.decorator d
	    LEFT join basico.categoria c ON (d.id_categoria= c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DECORATOR'
        AND d.nome = 'DECORATOR_AJAX_FORM') AS id_decorator,
        9999 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_formulario.assoccl_decorator (id_formulario, id_decorator, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_PESSOAIS_WEBSITES_PESSOAIS'
        AND f.nome = 'FORM_DIALOG_WEBSITES_PESSOAIS') AS id_formulario,
       (SELECT d.id
	    FROM basico_formulario.decorator d
	    LEFT join basico.categoria c ON (d.id_categoria= c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DECORATOR'
        AND d.nome = 'DECORATOR_AJAX_FORM') AS id_decorator,
        9999 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_formulario.assoccl_decorator (id_formulario, id_decorator, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_PESSOAIS_ENDERECOS_PESSOAIS'
        AND f.nome = 'FORM_DIALOG_ENDERECOS_PESSOAIS') AS id_formulario,
       (SELECT d.id
	    FROM basico_formulario.decorator d
	    LEFT join basico.categoria c ON (d.id_categoria= c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DECORATOR'
        AND d.nome = 'DECORATOR_AJAX_FORM') AS id_decorator,
        9999 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_formulario.assoccl_decorator (id_formulario, id_decorator, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_INFORMACOES_BANCARIAS') AS id_formulario,
       (SELECT d.id
	    FROM basico_formulario.decorator d
	    LEFT join basico.categoria c ON (d.id_categoria= c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DECORATOR'
        AND d.nome = 'DECORATOR_AJAX_FORM') AS id_decorator,
        9999 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_formulario.assoccl_decorator (id_formulario, id_decorator, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_INFORMACOES_BANCARIAS_DADOS_BANCARIOS') AS id_formulario,
       (SELECT d.id
	    FROM basico_formulario.decorator d
	    LEFT join basico.categoria c ON (d.id_categoria= c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DECORATOR'
        AND d.nome = 'DECORATOR_AJAX_FORM') AS id_decorator,
        9999 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_formulario.assoccl_decorator (id_formulario, id_decorator, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_INFORMACOES_BANCARIAS_DADOS_BANCARIOS_CONTAS_BANCARIAS'
        AND f.nome = 'FORM_DIALOG_CONTAS_BANCARIAS') AS id_formulario,
       (SELECT d.id
	    FROM basico_formulario.decorator d
	    LEFT join basico.categoria c ON (d.id_categoria= c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DECORATOR'
        AND d.nome = 'DECORATOR_AJAX_FORM') AS id_decorator,
        9999 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_formulario.assoccl_decorator (id_formulario, id_decorator, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_INFORMACOES_BANCARIAS_MOVIMENTACAO_FINANCEIRA') AS id_formulario,
       (SELECT d.id
	    FROM basico_formulario.decorator d
	    LEFT join basico.categoria c ON (d.id_categoria= c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DECORATOR'
        AND d.nome = 'DECORATOR_AJAX_FORM') AS id_decorator,
        9999 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_formulario.assoccl_decorator (id_formulario, id_decorator, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_CONTA_BANCARIA'
        AND f.nome = 'FORM_DIALOG_CONTA_BANCARIA') AS id_formulario,
       (SELECT d.id
	    FROM basico_formulario.decorator d
	    LEFT join basico.categoria c ON (d.id_categoria= c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DECORATOR'
        AND d.nome = 'DECORATOR_AJAX_FORM') AS id_decorator,
        9999 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_formulario.assoccl_decorator (id_formulario, id_decorator, ordem, rowinfo)
SELECT (SELECT f.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CVC'
        AND f.nome = 'FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO') AS id_formulario,
       (SELECT d.id
	    FROM basico_formulario.decorator d
	    LEFT join basico.categoria c ON (d.id_categoria= c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DECORATOR'
        AND d.nome = 'DECORATOR_AJAX_FORM') AS id_decorator,
        9999 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo;