/**
* SCRIPT DE POPULACAO DA TABELA basico_acao_aplicacao.assoc_visao
* 
* versao: 1.0 (POSTGRESQL 9.1.1)
* por: João Vasconcelos (joao.vasconcelos@rochedoframework.com)
* criacao: 23/04/2012
* ultimas modificacoes:
*/

INSERT INTO basico_acao_aplicacao.assoc_visao (id_categoria, id_acao_aplicacao, constante_textual, rowinfo)
SELECT c.id as id_categoria,
		(SELECT id from basico.acao_aplicacao a
		WHERE a.id_modulo = 1
		AND a.controller  = 'dadosusuario'
		AND a.action      = 'index') AS id_acao_aplicacao,
		'VISAO_DADOS_USUARIO' AS constante_textual,
		'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c        
LEFT JOIN basico.tipo_categoria tc ON (c.id_tipo_categoria = tc.id)
WHERE c.nome = 'VISAO_DADOS_USUARIO'
AND tc.nome  = 'VISAO';