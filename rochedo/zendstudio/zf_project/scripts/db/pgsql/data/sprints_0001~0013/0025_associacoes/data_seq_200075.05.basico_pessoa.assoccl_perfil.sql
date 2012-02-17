/**
* SCRIPT DE POPULACAO DA TABELA basico_pessoa.assoccl_perfil
* 
* Esta tabela contêm os dados de associacao das tabelas
* de basico.pessoa com basico.perfil
* 
* versao: 1.0 (POSTGRESQL 9.1.1)
* por: ADRIANO LEMOS (adriano.lemos@rochedoframework.com)
* criacao: 07/02/2012
* ultimas modificacoes:
* 								
*/

INSERT INTO basico_pessoa.assoccl_perfil (id_pessoa, id_perfil, ativo, rowinfo)
SELECT (SELECT id
		FROM basico.pessoa
		WHERE id_perfil_padrao = perf.id) AS id_pessoa, perf.id AS id_perfil, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.perfil perf
LEFT JOIN basico.categoria cat ON (perf.id_categoria = cat.id)
LEFT JOIN basico.tipo_categoria tipo_cat ON (cat.id_tipo_categoria = tipo_cat.id)
WHERE tipo_cat.nome = 'PERFIL'
AND cat.nome = 'PERFIL_USUARIO_SISTEMA'
AND perf.nome = 'SISTEMA';
