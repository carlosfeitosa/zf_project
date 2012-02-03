/**
* SCRIPT DE POPULACAO DA TABELA basico.perfil
* 
* versao: 1.0 (POSTGRESQL 9.1.1)
* por: JOÃO VASCONCELOS (joao.vasconcelos@rochedoframework.com)
* criacao: 31/01/2012
* ultimas modificacoes:
* 								
*/

INSERT INTO basico.perfil (id_categoria, nome, constante_textual, rowinfo)
SELECT id, 'SISTEMA' AS nome, 'PERFIL_SISTEMA' AS constante_textual, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria
WHERE nome = 'SISTEMA_USUARIO';

INSERT INTO basico.perfil (id_categoria, nome, constante_textual, rowinfo)
SELECT id, 'USUARIO_NAO_VALIDADO' AS nome, 'PERFIL_USUARIO_NAO_VALIDADO' AS constante_textual, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria
WHERE nome = 'PERFIL_USUARIO_SISTEMA';

INSERT INTO basico.perfil (id_categoria, nome, constante_textual, rowinfo)
SELECT id, 'USUARIO_VALIDADO' AS nome, 'PERFIL_USUARIO_VALIDADO' AS constante_textual, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria
WHERE nome = 'PERFIL_USUARIO_SISTEMA';