/*
* SCRIPT DE POPULACAO DA TABELA PESSOAS_PERFIS_MENSAGEM_CATEGORIA
* 
* versao: 1.0 (POSTGRESQL 8.4.1)
* por: JOÃO VASCONCELOS (joao.vasconcelos@rochedoproject.com)
* criacao: 20/10/2010
* ultimas modificacoes: 
*/

INSERT INTO pessoas_perfis_mensagem_categoria (id_pessoa_perfil, id_categoria, id_mensagem, rowinfo)
SELECT pp.id AS id_pessoa_perfil, 
       (SELECT id AS id_categoria 
        FROM categoria 
        WHERE nome = 'MENSAGEM_PESSOAS_ENVOLVIDAS_REMETENTE') AS id_categoria,
       (SELECT m.id AS id_mensagem
        FROM mensagem m
        LEFT JOIN categoria c ON (m.id_categoria = c.id)
        WHERE c.nome = 'SISTEMA_MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO_PLAINTEXT') AS id_mensagem,
        'SYSTEM_STARTUP' AS rowinfo
FROM pessoas_perfis pp
LEFT JOIN perfil perf ON (pp.id_perfil = perf.id)
LEFT JOIN categoria cat ON (perf.id_categoria = cat.id)
LEFT JOIN tipo_categoria tipo_cat ON (cat.id_tipo_categoria = tipo_cat.id)
WHERE perf.nome = 'SISTEMA'
AND cat.nome = 'SISTEMA_USUARIO'
AND perf.nome = 'SISTEMA';