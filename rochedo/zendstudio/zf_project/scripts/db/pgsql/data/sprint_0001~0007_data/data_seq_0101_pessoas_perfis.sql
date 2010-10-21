/**
* SCRIPT DE POPULACAO DA TABELA PESSOAS_PERFIS
* 
* versao: 1.0 (POSTGRESQL 8.4.1)
* por: CARLOS FEITOSA (carlos.feitosa@rochedoproject.com)
* criacao: 21/10/2010
* ultimas modificacoes:
* 
*/

INSERT INTO pessoas_perfis (id_pessoa, id_perfil, rowinfo)
SELECT (SELECT id
		FROM pessoa
		WHERE rowinfo = 'SYSTEM_STARTUP_MASTER') id_pessoa, perf.id AS id_perfil, 'SYSTEM_STARTUP' AS rowinfo
FROM perfil perf
LEFT JOIN categoria cat ON (perf.id_categoria = cat.id)
LEFT JOIN tipo_categoria tipo_cat ON (cat.id_tipo_categoria = tipo_cat.id)
WHERE tipo_cat.nome = 'SISTEMA'
AND cat.nome = 'SISTEMA_USUARIO'
AND perf.nome = 'SISTEMA';