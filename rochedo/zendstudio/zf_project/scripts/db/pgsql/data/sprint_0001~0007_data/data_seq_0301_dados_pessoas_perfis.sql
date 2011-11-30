/*
* SCRIPT DE POPULACAO DA TABELA DADOS_PESSOAS_PERFIS
* 
* versao: 1.0 (POSTGRESQL 8.4.1)
* por: JOÃO VASCONCELOS (joao.vasconcelos@rochedoproject.com)
* criacao: 20/10/2010
* ultimas modificacoes: 
* 
* 								30/11/2011 - adaptação para novo modelo de banco de dados (Modularizado atraves de schemas) - João Vasconcelos;
*/


INSERT INTO dados_pessoas_perfis (id_pessoa_perfil, assinatura_mensagem_email, rowinfo)
SELECT pp.id, 'Equipe ROCHEDO project' AS assinatura_mensagem_email, 'SYSTEM_STARTUP' AS rowinfo
FROM basico_pessoa.assoccl_perfil pp
LEFT JOIN pessoa p ON (p.id = pp.id_pessoa)
WHERE p.rowinfo = 'SYSTEM_STARTUP_MASTER';
