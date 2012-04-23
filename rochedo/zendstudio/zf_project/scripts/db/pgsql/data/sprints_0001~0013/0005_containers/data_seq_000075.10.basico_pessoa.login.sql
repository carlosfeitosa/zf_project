/**
* SCRIPT DE POPULACAO DA TABELA basico.login
* 
* Esta tabela contêm as credencias de acesso tanto do usuário
* quanto do sistema. 
* 
* versao: 1.0 (POSTGRESQL 9.1.1)
* por: ADRIANO LEMOS (adriano.lemos@rochedoframework.com)
* criacao: 06/02/2012
* ultimas modificacoes:
* 								
*/

INSERT INTO basico_pessoa.login (id_pessoa, login, senha, ativo, pode_expirar, datahora_proxima_expiracao, rowinfo)
SELECT p.id, LPAD(MD5(RANDOM()::TEXT), 100, MD5(RANDOM()::TEXT)) AS login, 
       LPAD(MD5(RANDOM()::TEXT), 100, MD5(RANDOM()::TEXT)) AS senha, true AS ativo, false AS pode_expirar, NULL AS datahora_proxima_expiracao, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.pessoa p
WHERE p.id_perfil_default = (SELECT id FROM basico.perfil WHERE nome = 'SISTEMA');