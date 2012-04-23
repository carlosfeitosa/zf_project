/**
* SCRIPT DE POPULACAO DA TABELA basico_formulario_elemento.assoccl_validator
* 
* Esta tabela contêm os dados de especializacao das associacoes
* de basico_pessoa.assoccl_perfil com a associacao de dados
* 
* versao: 1.0 (POSTGRESQL 9.1.1)
* por: ADRIANO LEMOS (adriano.lemos@rochedoframework.com)
* criacao: 07/02/2012
* ultimas modificacoes:
* 								
*/

INSERT into basico_assoccl_pessoa_perfil.assoc_dados (id_assoccl_pessoa_perfil, assinatura_mensagem_email, rowinfo)
SELECT pp.id, 'Equipe ROCHEDO project' AS assinatura_mensagem_email, 'SYSTEM_STARTUP' AS rowinfo
FROM basico_pessoa.assoccl_perfil pp
LEFT JOIN basico.pessoa p ON (p.id = pp.id_pessoa)
WHERE p.id_perfil_default = (SELECT id FROM basico.perfil WHERE nome = 'SISTEMA');