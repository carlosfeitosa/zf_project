/**
* SCRIPT DE POPULACAO DA TABELA basico_pessoa.assoccl_perfil
* 
* versao: 1.0 (MSSQL 2000)
* por: CARLOS FEITOSA (carlos.feitosa@rochedoproject.com)
* criacao: 21/10/2010
* ultimas modificacoes:
* 
*/

INSERT INTO basico_pessoa.assoccl_perfil (id_pessoa, id_perfil, rowinfo)
SELECT (SELECT id
		FROM pessoa
		WHERE rowinfo = 'SYSTEM_STARTUP_MASTER') id_pessoa, perf.id AS id_perfil, 'SYSTEM_STARTUP' AS rowinfo
FROM perfil perf
LEFT JOIN categoria cat ON (perf.id_categoria = cat.id)
LEFT JOIN basico.tipo_categoria tipo_cat ON (cat.id_tipo_categoria = tipo_cat.id)
WHERE tipo_cat.nome = 'SISTEMA'
AND cat.nome = 'SISTEMA_USUARIO'
AND perf.nome = 'SISTEMA';