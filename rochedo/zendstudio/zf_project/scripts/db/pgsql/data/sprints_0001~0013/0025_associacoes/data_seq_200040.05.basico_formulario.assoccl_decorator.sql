/*
* SCRIPT DE POPULACAO DA TABELA ANEXO_MENSAGEM
* 
* versao: 1.0 (POSTGRESQL 8.4.1)
* por: Igor Pinho (igor.pinho.souza@rochedoframework.com)
* criacao: 06/02/2012
* ultimas modificacoes 
*/

INSERT INTO basico_formulario.assoccl_decorator (id_formulario, id_decorator, rowinfo)
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
       'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_decorator (id_formulario, id_decorator, rowinfo)
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
       'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_decorator (id_formulario, id_decorator, rowinfo)
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
       'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_decorator (id_formulario, id_decorator, rowinfo)
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
       'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_decorator (id_formulario, id_decorator, rowinfo)
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
       'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_decorator (id_formulario, id_decorator, rowinfo)
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
       'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_decorator (id_formulario, id_decorator, rowinfo)
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
       'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_decorator (id_formulario, id_decorator, rowinfo)
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
       'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_decorator (id_formulario, id_decorator, rowinfo)
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
       'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_decorator (id_formulario, id_decorator, rowinfo)
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
       'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_decorator (id_formulario, id_decorator, rowinfo)
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
       'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_decorator (id_formulario, id_decorator, rowinfo)
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
       'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_decorator (id_formulario, id_decorator, rowinfo)
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
       'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_decorator (id_formulario, id_decorator, rowinfo)
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
       'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario.assoccl_decorator (id_formulario, id_decorator, rowinfo)
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
       'SYSTEM_STARTUP' AS rowinfo;