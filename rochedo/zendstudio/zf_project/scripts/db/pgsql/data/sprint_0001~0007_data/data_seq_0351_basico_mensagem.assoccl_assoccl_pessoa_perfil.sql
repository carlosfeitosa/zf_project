/*
* SCRIPT DE POPULACAO DA TABELA basico_mensagem.assoccl_assoccl_pessoa_perfil
* 
* versao: 1.0 (POSTGRESQL 8.4.1)
* por: JOÃO VASCONCELOS (joao.vasconcelos@rochedoproject.com)
* criacao: 20/10/2010
* ultimas modificacoes: 
* 						- 30/11/2011 - adaptação para novo modelo de banco de dados (Modularizado atraves de schemas) - João Vasconcelos;
*/

INSERT INTO basico_mensagem.assoccl_assoccl_pessoa_perfil (id_assoccl_perfil, id_categoria, id_mensagem, rowinfo)
SELECT pp.id AS id_assoccl_perfil, 
       (SELECT id AS id_categoria 
        FROM basico.categoria 
        WHERE nome = 'MENSAGEM_PESSOAS_ENVOLVIDAS_REMETENTE') AS id_categoria,
       (SELECT m.id AS id_mensagem
        FROM basico.mensagem m
        LEFT JOIN basico.categoria c ON (m.id_categoria = c.id)
        WHERE c.nome = 'SISTEMA_MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO_PLAINTEXT_pt-br') AS id_mensagem,
        'SYSTEM_STARTUP' AS rowinfo
FROM basico_pessoa.assoccl_perfil pp
LEFT JOIN basico.perfil perf ON (pp.id_perfil = perf.id)
LEFT JOIN basico.categoria cat ON (perf.id_categoria = cat.id)
LEFT JOIN basico.tipo_categoria tipo_cat ON (cat.id_tipo_categoria = tipo_cat.id)
WHERE perf.nome = 'SISTEMA'
AND cat.nome = 'SISTEMA_USUARIO'
AND perf.nome = 'SISTEMA';

INSERT INTO basico_mensagem.assoccl_assoccl_pessoa_perfil (id_assoccl_perfil, id_categoria, id_mensagem, rowinfo)
SELECT pp.id AS id_assoccl_perfil, 
       (SELECT id AS id_categoria 
        FROM basico.categoria 
        WHERE nome = 'MENSAGEM_PESSOAS_ENVOLVIDAS_REMETENTE') AS id_categoria,
       (SELECT m.id AS id_mensagem
        FROM basico.mensagem m
        LEFT JOIN basico.categoria c ON (m.id_categoria = c.id)
        WHERE c.nome = 'SISTEMA_MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO_PLAINTEXT_en-us') AS id_mensagem,
        'SYSTEM_STARTUP' AS rowinfo
FROM basico_pessoa.assoccl_perfil pp
LEFT JOIN basico.perfil perf ON (pp.id_perfil = perf.id)
LEFT JOIN basico.categoria cat ON (perf.id_categoria = cat.id)
LEFT JOIN basico.tipo_categoria tipo_cat ON (cat.id_tipo_categoria = tipo_cat.id)
WHERE perf.nome = 'SISTEMA'
AND cat.nome = 'SISTEMA_USUARIO'
AND perf.nome = 'SISTEMA';