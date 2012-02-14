/**
* SCRIPT DE POPULACAO DA TABELA basico_contato.email
* 
* Esta tabela contêm os emails cadastrados 
* no sistema
* 
* versao: 1.0 (POSTGRESQL 9.1.1)
* por: ADRIANO LEMOS (adriano.lemos@rochedoframework.com)
* criacao: 07/02/2012
* ultimas modificacoes:
* 								
*/

INSERT INTO basico_contato.email (id_generico_proprietario, nome, id_categoria, unique_id, email, validado, datahora_ultima_validacao, ativo, rowinfo)
SELECT pp.id_pessoa AS id_generico_proprietario, 'SISTEMA_EMAIL' AS nome,
       (SELECT id from basico.categoria WHERE nome = 'SISTEMA_EMAIL') AS id_categoria,
       'SYSTEM_STARTUP' AS unique_id, 'nao.responda@rochedoframework.com' AS email, true AS validado, current_timestamp AS datahora_ultima_validacao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico_pessoa.assoccl_perfil pp
LEFT JOIN basico.perfil perf ON (pp.id_perfil = perf.id)
LEFT join basico.categoria cat ON (perf.id_categoria = cat.id)
LEFT JOIN basico.tipo_categoria tipo_cat ON (cat.id_tipo_categoria = tipo_cat.id)
WHERE perf.nome = 'SISTEMA'
AND cat.nome = 'SISTEMA_USUARIO'
AND perf.nome = 'SISTEMA';