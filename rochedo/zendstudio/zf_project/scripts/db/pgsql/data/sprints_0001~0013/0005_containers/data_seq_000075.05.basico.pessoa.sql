/**
* SCRIPT DE POPULACAO DA TABELA PESSOA
* 
* versao: 1.0 (POSTGRESQL 9.1.1)
* por: JOÃO VASCONCELOS
* criacao: 06/02/2012
* ultimas modificacoes:
* 
*/

INSERT INTO basico.pessoa (id_perfil_padrao, rowinfo)
SELECT 
	(SELECT id 
	 FROM basico.perfil
	 WHERE nome = 'SISTEMA') AS id_perfil_padrao,
	'SYSTEM_STARTUP' AS rowinfo;