/**
* SCRIPT DE POPULACAO DA TABELA basico.eventos
* 
* Esta tabela armazena os eventos que podem ser utilizados pelo sistema.
* 
* versao: 1.0 (POSTGRESQL 9.1.1)
* por: JOÃO VASCONCELOS (joao.vasconcelos@rochedoframework.com)
* criacao: 22/03/2012
* ultimas modificacoes: 
* 						- 02/08/2012 - criação dos inserts dos eventos html existentes (João Vasconcelos - joao.vasconcelos@rochedoframework.com) 					
*/

INSERT INTO basico.evento (id_categoria, nome, constante_textual, constante_textual_descricao, evento, ativo, rowinfo)
SELECT c.id AS id_categoria,
	   'HTML_ONLOAD' AS nome,
	   'NOME_EVENTO_HTML_ONLOAD' AS constante_textual,
	   'DESCRICAO_EVENTO_HTML_ONLOAD' AS constante_textual_descricao,
	   'onload' AS evento,
	   true AS ativo,
	   'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
LEFT JOIN basico.categoria cpai ON (c.id_categoria_pai = cpai.id)
LEFT JOIN basico.tipo_categoria tc ON (c.id_tipo_categoria = tc.id)
WHERE c.nome = 'EVENTO_HTML_BODY_FRAMESET'
AND cpai.nome  = 'EVENTO_HTML'
AND tc.nome = 'EVENTO';

INSERT INTO basico.evento (id_categoria, nome, constante_textual, constante_textual_descricao, evento, ativo, rowinfo)
SELECT c.id AS id_categoria,
	   'HTML_ONUNLOAD' AS nome,
	   'NOME_EVENTO_HTML_ONUNLOAD' AS constante_textual,
	   'DESCRICAO_EVENTO_HTML_ONUNLOAD' AS constante_textual_descricao,
	   'onunload' AS evento,
	   true AS ativo,
	   'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
LEFT JOIN basico.categoria cpai ON (c.id_categoria_pai = cpai.id)
LEFT JOIN basico.tipo_categoria tc ON (c.id_tipo_categoria = tc.id)
WHERE c.nome = 'EVENTO_HTML_BODY_FRAMESET'
AND cpai.nome  = 'EVENTO_HTML'
AND tc.nome = 'EVENTO';

INSERT INTO basico.evento (id_categoria, nome, constante_textual, constante_textual_descricao, evento, ativo, rowinfo)
SELECT c.id AS id_categoria,
	   'HTML_ONBLUR' AS nome,
	   'NOME_EVENTO_HTML_ONBLUR' AS constante_textual,
	   'DESCRICAO_EVENTO_HTML_ONBLUR' AS constante_textual_descricao,
	   'onblur' AS evento,
	   true AS ativo,
	   'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
LEFT JOIN basico.categoria cpai ON (c.id_categoria_pai = cpai.id)
LEFT JOIN basico.tipo_categoria tc ON (c.id_tipo_categoria = tc.id)
WHERE c.nome = 'EVENTO_HTML_FORM'
AND cpai.nome  = 'EVENTO_HTML'
AND tc.nome = 'EVENTO';

INSERT INTO basico.evento (id_categoria, nome, constante_textual, constante_textual_descricao, evento, ativo, rowinfo)
SELECT c.id AS id_categoria,
	   'HTML_ONCHANGE' AS nome,
	   'NOME_EVENTO_HTML_ONCHANGE' AS constante_textual,
	   'DESCRICAO_EVENTO_HTML_ONCHANGE' AS constante_textual_descricao,
	   'onchange' AS evento,
	   true AS ativo,
	   'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
LEFT JOIN basico.categoria cpai ON (c.id_categoria_pai = cpai.id)
LEFT JOIN basico.tipo_categoria tc ON (c.id_tipo_categoria = tc.id)
WHERE c.nome = 'EVENTO_HTML_FORM'
AND cpai.nome  = 'EVENTO_HTML'
AND tc.nome = 'EVENTO';

INSERT INTO basico.evento (id_categoria, nome, constante_textual, constante_textual_descricao, evento, ativo, rowinfo)
SELECT c.id AS id_categoria,
	   'HTML_ONFOCUS' AS nome,
	   'NOME_EVENTO_HTML_ONFOCUS' AS constante_textual,
	   'DESCRICAO_EVENTO_HTML_ONFOCUS' AS constante_textual_descricao,
	   'onfocus' AS evento,
	   true AS ativo,
	   'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
LEFT JOIN basico.categoria cpai ON (c.id_categoria_pai = cpai.id)
LEFT JOIN basico.tipo_categoria tc ON (c.id_tipo_categoria = tc.id)
WHERE c.nome = 'EVENTO_HTML_FORM'
AND cpai.nome  = 'EVENTO_HTML'
AND tc.nome = 'EVENTO';

INSERT INTO basico.evento (id_categoria, nome, constante_textual, constante_textual_descricao, evento, ativo, rowinfo)
SELECT c.id AS id_categoria,
	   'HTML_ONRESET' AS nome,
	   'NOME_EVENTO_HTML_ONRESET' AS constante_textual,
	   'DESCRICAO_EVENTO_HTML_ONRESET' AS constante_textual_descricao,
	   'onreset' AS evento,
	   true AS ativo,
	   'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
LEFT JOIN basico.categoria cpai ON (c.id_categoria_pai = cpai.id)
LEFT JOIN basico.tipo_categoria tc ON (c.id_tipo_categoria = tc.id)
WHERE c.nome = 'EVENTO_HTML_FORM'
AND cpai.nome  = 'EVENTO_HTML'
AND tc.nome = 'EVENTO';
	
INSERT INTO basico.evento (id_categoria, nome, constante_textual, constante_textual_descricao, evento, ativo, rowinfo)
SELECT c.id AS id_categoria,
	   'HTML_ONSELECT' AS nome,
	   'NOME_EVENTO_HTML_ONSELECT' AS constante_textual,
	   'DESCRICAO_EVENTO_HTML_ONSELECT' AS constante_textual_descricao,
	   'onselect' AS evento,
	   true AS ativo,
	   'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
LEFT JOIN basico.categoria cpai ON (c.id_categoria_pai = cpai.id)
LEFT JOIN basico.tipo_categoria tc ON (c.id_tipo_categoria = tc.id)
WHERE c.nome = 'EVENTO_HTML_FORM'
AND cpai.nome  = 'EVENTO_HTML'
AND tc.nome = 'EVENTO';

INSERT INTO basico.evento (id_categoria, nome, constante_textual, constante_textual_descricao, evento, ativo, rowinfo)
SELECT c.id AS id_categoria,
	   'HTML_ONSUBMIT' AS nome,
	   'NOME_EVENTO_HTML_ONSUBMIT' AS constante_textual,
	   'DESCRICAO_EVENTO_HTML_ONSUBMIT' AS constante_textual_descricao,
	   'onsubmit' AS evento,
	   true AS ativo,
	   'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
LEFT JOIN basico.categoria cpai ON (c.id_categoria_pai = cpai.id)
LEFT JOIN basico.tipo_categoria tc ON (c.id_tipo_categoria = tc.id)
WHERE c.nome = 'EVENTO_HTML_FORM'
AND cpai.nome  = 'EVENTO_HTML'
AND tc.nome = 'EVENTO';

INSERT INTO basico.evento (id_categoria, nome, constante_textual, constante_textual_descricao, evento, ativo, rowinfo)
SELECT c.id AS id_categoria,
	   'HTML_ONABORT' AS nome,
	   'NOME_EVENTO_HTML_ONABORT' AS constante_textual,
	   'DESCRICAO_EVENTO_HTML_ONABORT' AS constante_textual_descricao,
	   'onabort' AS evento,
	   true AS ativo,
	   'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
LEFT JOIN basico.categoria cpai ON (c.id_categoria_pai = cpai.id)
LEFT JOIN basico.tipo_categoria tc ON (c.id_tipo_categoria = tc.id)
WHERE c.nome = 'EVENTO_HTML_IMAGE'
AND cpai.nome  = 'EVENTO_HTML'
AND tc.nome = 'EVENTO';

INSERT INTO basico.evento (id_categoria, nome, constante_textual, constante_textual_descricao, evento, ativo, rowinfo)
SELECT c.id AS id_categoria,
	   'HTML_ONKEYDOWN' AS nome,
	   'NOME_EVENTO_HTML_ONKEYDOWN' AS constante_textual,
	   'DESCRICAO_EVENTO_HTML_ONKEYDOWN' AS constante_textual_descricao,
	   'onkeydown' AS evento,
	   true AS ativo,
	   'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
LEFT JOIN basico.categoria cpai ON (c.id_categoria_pai = cpai.id)
LEFT JOIN basico.tipo_categoria tc ON (c.id_tipo_categoria = tc.id)
WHERE c.nome = 'EVENTO_HTML_TECLADO'
AND cpai.nome  = 'EVENTO_HTML'
AND tc.nome = 'EVENTO';

INSERT INTO basico.evento (id_categoria, nome, constante_textual, constante_textual_descricao, evento, ativo, rowinfo)
SELECT c.id AS id_categoria,
	   'HTML_ONKEYPRESS' AS nome,
	   'NOME_EVENTO_HTML_ONKEYPRESS' AS constante_textual,
	   'DESCRICAO_EVENTO_HTML_ONKEYPRESS' AS constante_textual_descricao,
	   'onkeypress' AS evento,
	   true AS ativo,
	   'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
LEFT JOIN basico.categoria cpai ON (c.id_categoria_pai = cpai.id)
LEFT JOIN basico.tipo_categoria tc ON (c.id_tipo_categoria = tc.id)
WHERE c.nome = 'EVENTO_HTML_TECLADO'
AND cpai.nome  = 'EVENTO_HTML'
AND tc.nome = 'EVENTO';

INSERT INTO basico.evento (id_categoria, nome, constante_textual, constante_textual_descricao, evento, ativo, rowinfo)
SELECT c.id AS id_categoria,
	   'HTML_ONKEYUP' AS nome,
	   'NOME_EVENTO_HTML_ONKEYUP' AS constante_textual,
	   'DESCRICAO_EVENTO_HTML_ONKEYUP' AS constante_textual_descricao,
	   'onkeyup' AS evento,
	   true AS ativo,
	   'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
LEFT JOIN basico.categoria cpai ON (c.id_categoria_pai = cpai.id)
LEFT JOIN basico.tipo_categoria tc ON (c.id_tipo_categoria = tc.id)
WHERE c.nome = 'EVENTO_HTML_TECLADO'
AND cpai.nome  = 'EVENTO_HTML'
AND tc.nome = 'EVENTO';

INSERT INTO basico.evento (id_categoria, nome, constante_textual, constante_textual_descricao, evento, ativo, rowinfo)
SELECT c.id AS id_categoria,
	   'HTML_ONCLICK' AS nome,
	   'NOME_EVENTO_HTML_ONCLICK' AS constante_textual,
	   'DESCRICAO_EVENTO_HTML_ONCLICK' AS constante_textual_descricao,
	   'onclick' AS evento,
	   true AS ativo,
	   'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
LEFT JOIN basico.categoria cpai ON (c.id_categoria_pai = cpai.id)
LEFT JOIN basico.tipo_categoria tc ON (c.id_tipo_categoria = tc.id)
WHERE c.nome = 'EVENTO_HTML_MOUSE'
AND cpai.nome  = 'EVENTO_HTML'
AND tc.nome = 'EVENTO';

INSERT INTO basico.evento (id_categoria, nome, constante_textual, constante_textual_descricao, evento, ativo, rowinfo)
SELECT c.id AS id_categoria,
	   'HTML_ONDBLCLICK' AS nome,
	   'NOME_EVENTO_HTML_ONDBLCLICK' AS constante_textual,
	   'DESCRICAO_EVENTO_HTML_ONDBLCLICK' AS constante_textual_descricao,
	   'ondblclick' AS evento,
	   true AS ativo,
	   'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
LEFT JOIN basico.categoria cpai ON (c.id_categoria_pai = cpai.id)
LEFT JOIN basico.tipo_categoria tc ON (c.id_tipo_categoria = tc.id)
WHERE c.nome = 'EVENTO_HTML_MOUSE'
AND cpai.nome  = 'EVENTO_HTML'
AND tc.nome = 'EVENTO';

INSERT INTO basico.evento (id_categoria, nome, constante_textual, constante_textual_descricao, evento, ativo, rowinfo)
SELECT c.id AS id_categoria,
	   'HTML_ONMOUSEDOWN' AS nome,
	   'NOME_EVENTO_HTML_ONMOUSEDOWN' AS constante_textual,
	   'DESCRICAO_EVENTO_HTML_ONMOUSEDOWN' AS constante_textual_descricao,
	   'onmousedown' AS evento,
	   true AS ativo,
	   'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
LEFT JOIN basico.categoria cpai ON (c.id_categoria_pai = cpai.id)
LEFT JOIN basico.tipo_categoria tc ON (c.id_tipo_categoria = tc.id)
WHERE c.nome = 'EVENTO_HTML_MOUSE'
AND cpai.nome  = 'EVENTO_HTML'
AND tc.nome = 'EVENTO';

INSERT INTO basico.evento (id_categoria, nome, constante_textual, constante_textual_descricao, evento, ativo, rowinfo)
SELECT c.id AS id_categoria,
	   'HTML_ONMOUSEMOVE' AS nome,
	   'NOME_EVENTO_HTML_ONMOUSEMOVE' AS constante_textual,
	   'DESCRICAO_EVENTO_HTML_ONMOUSEMOVE' AS constante_textual_descricao,
	   'onmousemove' AS evento,
	   true AS ativo,
	   'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
LEFT JOIN basico.categoria cpai ON (c.id_categoria_pai = cpai.id)
LEFT JOIN basico.tipo_categoria tc ON (c.id_tipo_categoria = tc.id)
WHERE c.nome = 'EVENTO_HTML_MOUSE'
AND cpai.nome  = 'EVENTO_HTML'
AND tc.nome = 'EVENTO';

INSERT INTO basico.evento (id_categoria, nome, constante_textual, constante_textual_descricao, evento, ativo, rowinfo)
SELECT c.id AS id_categoria,
	   'HTML_ONMOUSEOUT' AS nome,
	   'NOME_EVENTO_HTML_ONMOUSEOUT' AS constante_textual,
	   'DESCRICAO_EVENTO_HTML_ONMOUSEOUT' AS constante_textual_descricao,
	   'onmouseout' AS evento,
	   true AS ativo,
	   'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
LEFT JOIN basico.categoria cpai ON (c.id_categoria_pai = cpai.id)
LEFT JOIN basico.tipo_categoria tc ON (c.id_tipo_categoria = tc.id)
WHERE c.nome = 'EVENTO_HTML_MOUSE'
AND cpai.nome  = 'EVENTO_HTML'
AND tc.nome = 'EVENTO';

INSERT INTO basico.evento (id_categoria, nome, constante_textual, constante_textual_descricao, evento, ativo, rowinfo)
SELECT c.id AS id_categoria,
	   'HTML_ONMOUSEOVER' AS nome,
	   'NOME_EVENTO_HTML_ONMOUSEOVER' AS constante_textual,
	   'DESCRICAO_EVENTO_HTML_ONMOUSEOVER' AS constante_textual_descricao,
	   'onmouseover' AS evento,
	   true AS ativo,
	   'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
LEFT JOIN basico.categoria cpai ON (c.id_categoria_pai = cpai.id)
LEFT JOIN basico.tipo_categoria tc ON (c.id_tipo_categoria = tc.id)
WHERE c.nome = 'EVENTO_HTML_MOUSE'
AND cpai.nome  = 'EVENTO_HTML'
AND tc.nome = 'EVENTO';

INSERT INTO basico.evento (id_categoria, nome, constante_textual, constante_textual_descricao, evento, ativo, rowinfo)
SELECT c.id AS id_categoria,
	   'HTML_ONMOUSEUP' AS nome,
	   'NOME_EVENTO_HTML_ONMOUSEUP' AS constante_textual,
	   'DESCRICAO_EVENTO_HTML_ONMOUSEUP' AS constante_textual_descricao,
	   'onmouseup' AS evento,
	   true AS ativo,
	   'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
LEFT JOIN basico.categoria cpai ON (c.id_categoria_pai = cpai.id)
LEFT JOIN basico.tipo_categoria tc ON (c.id_tipo_categoria = tc.id)
WHERE c.nome = 'EVENTO_HTML_MOUSE'
AND cpai.nome  = 'EVENTO_HTML'
AND tc.nome = 'EVENTO';
