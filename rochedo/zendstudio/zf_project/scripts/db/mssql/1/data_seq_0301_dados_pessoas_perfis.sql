/*
* SCRIPT DE POPULACAO DA TABELA DADOS_PESSOAS_PERFIS
* 
* versao: 1.0 (MSSQL 2000)
* por: JOÃO VASCONCELOS (joao.vasconcelos@rochedoproject.com)
* criacao: 20/10/2010
* ultimas modificacoes: 
*/

INSERT INTO dados_pessoas_perfis (id_pessoa_perfil, assinatura_mensagem_email, rowinfo)
SELECT pp.id, 'Equipe ROCHEDO project' AS assinatura_mensagem_email, 'SYSTEM_STARTUP' AS rowinfo
FROM pessoas_perfis pp
LEFT JOIN pessoa p ON (p.id = pp.id_pessoa)
WHERE p.rowinfo = 'SYSTEM_STARTUP_MASTER';
