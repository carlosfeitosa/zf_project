/*
* SCRIPT DE POPULACAO DA TABELA EMAIL
* 
* versao: 1.0 (POSTGRESQL 8.4.1)
* por: JOÃO VASCONCELOS (joao.vasconcelos@rochedoproject.com)
* criacao: 20/10/2010
* ultimas modificacoes: 
*/

INSERT INTO basico_localizacao.email (id_generico_proprietario, id_categoria, unique_id, email, validado, datahora_ultima_validacao, ativo, rowinfo)
SELECT pp.id_pessoa AS id_generico_proprietario,
       (SELECT id from basico.categoria WHERE nome = 'SISTEMA_EMAIL') AS id_categoria,
       'SYSTEM_STARTUP' AS unique_id, 'nao.responda@rochedoframework.com' AS email, true AS validado, current_timestamp AS datahora_ultima_validacao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico_pessoa.assoccl_perfil pp
LEFT JOIN basico.perfil perf ON (pp.id_perfil = perf.id)
LEFT join basico.categoria cat ON (perf.id_categoria = cat.id)
LEFT JOIN basico.tipo_categoria tipo_cat ON (cat.id_tipo_categoria = tipo_cat.id)
WHERE perf.nome = 'SISTEMA'
AND cat.nome = 'SISTEMA_USUARIO'
AND perf.nome = 'SISTEMA';