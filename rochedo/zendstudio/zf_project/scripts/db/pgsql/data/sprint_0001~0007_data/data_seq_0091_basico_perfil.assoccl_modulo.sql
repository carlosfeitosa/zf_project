/**
* SCRIPT DE POPULACAO DA TABELA MODULO_PERFIL
* 
* versao: 1.0 (POSTGRESQL 8.4.1)
* por: CARLOS FEITOSA (carlos.feitosa@rochedoproject.com)
* criacao: 21/10/2010
* ultimas modificacoes:
* 
*/

INSERT INTO basico_perfil.assoccl_modulo (id_modulo, id_perfil, rowinfo)
SELECT (SELECT m.id
		FROM basico.modulo m
		LEFT join basico.categoria c ON (m.id_categoria = c.id)
		LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'SISTEMA'
		AND c.nome = 'SISTEMA_MODULO'
		AND m.nome = 'BASICO') AS id_modulo,
	   (SELECT p.id
		FROM basico.perfil p
		LEFT join basico.categoria c ON (p.id_categoria = c.id)
		LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'PERFIL'
		AND c.nome = 'PERFIL_USUARIO_SISTEMA'
		AND p.nome = 'USUARIO_NAO_VALIDADO') AS id_perfil,
		'SYSTEM_STARTUP' AS rowinfo;