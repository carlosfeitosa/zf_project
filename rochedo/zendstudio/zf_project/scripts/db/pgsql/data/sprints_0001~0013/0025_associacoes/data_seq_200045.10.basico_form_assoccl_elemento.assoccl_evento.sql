/*
* SCRIPT DE POPULACAO DA TABELA basico_form_assoccl_elemento.assoccl_evento
* 
* versao: 1.0 (POSTGRESQL 8.4.1)
* por: Igor Pinho (igor.pinho.souza@rochedoframework.com)
* criacao: 06/02/2012
* ultimas modificacoes:
*  						- 03/08/2012 - criacao dos inserts das especializacoes dos elementos do formulario cadastrarUsuarioValidado (João Vasconcelos - joao.vasconcelos@rochedoframework.com)
*/

INSERT INTO basico_form_assoccl_elemento.assoccl_evento (id_assoccl_elemento, id_evento, id_acao_evento, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_CADASTRAR_USUARIO_VALIDADO'
        AND e.nome = 'FORM_FIELD_VALIDATION_TEXT_BOX_LOGIN'
        AND fcle.ordem = 4) AS id_assoccl_elemento,
	   (SELECT e.id
	    FROM basico.evento e
	    LEFT JOIN basico.categoria c ON (e.id_categoria = c.id)
	    WHERE e.nome = 'HTML_ONBLUR'
	    AND c.nome = 'EVENTO_HTML_FORM')  AS id_evento,
	   (SELECT ae.id
	    FROM basico.acao_evento ae
	    LEFT JOIN basico.categoria c2 ON (ae.id_categoria = c2.id)
	    WHERE ae.nome = 'VERIFICA_DISPONIBILIDADE_LOGIN'
	    AND c2.nome = 'ACAO_EVENTO') AS id_acao_evento,
	   1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_form_assoccl_elemento.assoccl_evento (id_assoccl_elemento, id_evento, id_acao_evento, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_CADASTRAR_USUARIO_VALIDADO'
        AND e.nome = 'FORM_FIELD_VALIDATION_TEXT_BOX_LOGIN'
        AND fcle.ordem = 4) AS id_assoccl_elemento,
	   (SELECT e.id
	    FROM basico.evento e
	    LEFT JOIN basico.categoria c ON (e.id_categoria = c.id)
	    WHERE e.nome = 'HTML_ONKEYUP'
	    AND c.nome = 'EVENTO_HTML_TECLADO')  AS id_evento,
	   (SELECT ae.id
	    FROM basico.acao_evento ae
	    LEFT JOIN basico.categoria c2 ON (ae.id_categoria = c2.id)
	    WHERE ae.nome = 'VALIDA_STRING'
	    AND c2.nome = 'ACAO_EVENTO') AS id_acao_evento,
	   2 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_form_assoccl_elemento.assoccl_evento (id_assoccl_elemento, id_evento, id_acao_evento, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_CADASTRAR_USUARIO_VALIDADO'
        AND e.nome = 'FORM_FIELD_VALIDATION_TEXT_BOX_LOGIN'
        AND fcle.ordem = 4) AS id_assoccl_elemento,
	   (SELECT e.id
	    FROM basico.evento e
	    LEFT JOIN basico.categoria c ON (e.id_categoria = c.id)
	    WHERE e.nome = 'HTML_ONBLUR'
	    AND c.nome = 'EVENTO_HTML_FORM')  AS id_evento,
	   (SELECT ae.id
	    FROM basico.acao_evento ae
	    LEFT JOIN basico.categoria c2 ON (ae.id_categoria = c2.id)
	    WHERE ae.nome = 'VALIDA_STRING'
	    AND c2.nome = 'ACAO_EVENTO') AS id_acao_evento,
	   3 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;
	   
INSERT INTO basico_form_assoccl_elemento.assoccl_evento (id_assoccl_elemento, id_evento, id_acao_evento, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico_formulario.assoccl_elemento fcle
        LEFT JOIN basico.formulario f ON (f.id = fcle.id_formulario)
        LEFT JOIN basico_formulario.elemento e ON (e.id = fcle.id_elemento)
        WHERE f.nome = 'FORM_CADASTRAR_USUARIO_VALIDADO'
        AND e.nome = 'FORM_FIELD_PASSWORD_TEXT_BOX_SENHA_WITH_CHECKER'
        AND fcle.ordem = 6) AS id_assoccl_elemento,
	   (SELECT e.id
	    FROM basico.evento e
	    LEFT JOIN basico.categoria c ON (e.id_categoria = c.id)
	    WHERE e.nome = 'HTML_ONKEYUP'
	    AND c.nome = 'EVENTO_HTML_TECLADO')  AS id_evento,
	   (SELECT ae.id
	    FROM basico.acao_evento ae
	    LEFT JOIN basico.categoria c2 ON (ae.id_categoria = c2.id)
	    WHERE ae.nome = 'VERIFICA_FORCA_SENHA'
	    AND c2.nome = 'ACAO_EVENTO') AS id_acao_evento,
	   1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;	   
