/**
* SCRIPT DE POPULACAO DA TABELA MODULO_PERFIL
* 
* versao: 1.0 (MSSQL 2000)
* por: CARLOS FEITOSA (carlos.feitosa@rochedoproject.com)
* criacao: 21/10/2010
* ultimas modificacoes:
* 
*/

INSERT INTO modulo_perfil (id_modulo, id_perfil, rowinfo)
SELECT (SELECT m.id
		FROM modulo m
		LEFT JOIN categoria c ON (m.id_categoria = c.id)
		LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'SISTEMA'
		AND c.nome = 'SISTEMA_MODULO'
		AND m.nome = 'BASICO') AS id_modulo,
	   (SELECT p.id
		FROM perfil p
		LEFT JOIN categoria c ON (p.id_categoria = c.id)
		LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'PERFIL'
		AND c.nome = 'PERFIL_USUARIO_SISTEMA'
		AND p.nome = 'USUARIO_NAO_VALIDADO') AS id_perfil,
		'SYSTEM_STARTUP' AS rowinfo;