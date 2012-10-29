/*
* SCRIPT DE POPULACAO DA TABELA basico_formulario.assoccl_evento
* 
* versao: 1.0 (POSTGRESQL 8.4.1)
* por: Igor Pinho (igor.pinho.souza@rochedoframework.com)
* criacao: 06/02/2012
* ultimas modificacoes: - 25/10/2012 - Criacao dos primeiros inserts da entidade (Joao Vasconcelos - joao.vasconcelos@rochedoframework.com)
*
*/

INSERT INTO basico_formulario.assoccl_evento (id_formulario, id_evento, id_acao_evento, ordem, rowinfo)
SELECT (SELECT fcle.id
        FROM basico.formulario f
        LEFT JOIN basico.categoria c ON (f.id = c.id)
        WHERE f.nome = 'FORM_AUTENTICACAO_USUARIO'
        AND c.nome = 'FORMULARIO_INPUT_LOGIN') AS id_assoccl_elemento,
	   (SELECT e.id
	    FROM basico.evento e
	    LEFT JOIN basico.categoria c ON (e.id_categoria = c.id)
	    WHERE e.nome = 'HTML_ONSUBMIT'
	    AND c.nome = 'EVENTO_HTML_FORM')  AS id_evento,
	   (SELECT ae.id
	    FROM basico.acao_evento ae
	    LEFT JOIN basico.categoria c2 ON (ae.id_categoria = c2.id)
	    WHERE ae.nome = 'VERIFICA_DISPONIBILIDADE_LOGIN'
	    AND c2.nome = 'ACAO_EVENTO') AS id_acao_evento,
	   1 AS ordem,
	   'SYSTEM_STARTUP' AS rowinfo;