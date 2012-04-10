/**
* @exclude
* SCRIPT DE POPULACAO DA TABELA basico_acao_aplicacao.assoc_visao
* 
* Esta tabela especializa uma acao aplicacao em uma visao
* 
* versao: 1.0 (POSTGRESQL 9.1.1)
* por: JOÃO VASCONCELOS (joao.vasconcelos@rochedoframework.com)
* criacao: 10/04/2012
* ultimas modificacoes:
*/

INSERT INTO basico_acao_aplicacao.assoc_visao (id_categoria, id_acao_aplicacao, rowinfo)
SELECT (SELECT c.id 
        FROM basico.categoria c
        LEFT JOIN basico.tipo_categoria t on (t.id = c.id_tipo_categoria)
        WHERE c.nome = 'VISAO_DADOS_USUARIO'
        AND t.nome = 'VISAO') AS id_categoria,
        (SELECT a.id
         FROM basico.acao_aplicacao a
         LEFT JOIN basico.modulo m ON (a.id_modulo = m.id)
         WHERE m.nome = 'BASICO'
         AND a.controller = 'dadosusuario'
         AND a.action = 'index') AS id_acao_aplicacao,
        'SYSTEM_STARTUP' AS rowinfo;