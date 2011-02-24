/**
* SCRIPT DE POPULACAO DA TABELA LOGIN
* 
* versao: 1.0 (POSTGRESQL 8.4.1)
* por: CARLOS FEITOSA (carlos.feitosa@rochedoproject.com)
* criacao: 20/10/2010
* ultimas modificacoes:
* 
*/

INSERT INTO login (id_pessoa, login, senha, pode_expirar, datahora_proxima_expiracao, rowinfo)
SELECT p.id, LPAD(MD5(RANDOM()::TEXT), 100, MD5(RANDOM()::TEXT)) AS login, 
       LPAD(MD5(RANDOM()::TEXT), 100, MD5(RANDOM()::TEXT)) AS senha, false AS pode_expirar, NULL AS datahora_proxima_expiracao, 'SYSTEM_STARTUP' AS rowinfo
FROM pessoa p
WHERE p.rowinfo = 'SYSTEM_STARTUP_MASTER';