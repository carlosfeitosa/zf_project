/**
* SCRIPT DE POPULACAO DA TABELA basico.perfil
* 
* versao: 1.0 (POSTGRESQL 9.1.1)
* por: JOÃO VASCONCELOS (joao.vasconcelos@rochedoframework.com)
* criacao: 31/01/2012
* ultimas modificacoes:
* 								
*/

INSERT INTO basico.perfil (id_categoria, id_modulo, nome, constante_textual, prioridade, constante_textual_descricao,   ativo, rowinfo)
SELECT id, 
	   (SELECT id 
	   	FROM basico.modulo 
	   	WHERE nome = 'BASICO') AS id_modulo,
	   'SISTEMA' AS nome, 'PERFIL_SISTEMA' AS constante_textual,0 AS prioridade,
	   'PERFIL_SISTEMA_DESCRICAO' AS constante_textual_descricao, 
       true AS ativo, 
	   'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria
WHERE nome = 'PERFIL_USUARIO_SISTEMA';


INSERT INTO basico.perfil (id_categoria, id_modulo, nome, prioridade, constante_textual_descricao, constante_textual, ativo, rowinfo)
SELECT id, 
	   (SELECT id 
	   	FROM basico.modulo 
	   	WHERE nome = 'BASICO') AS id_modulo,
	   'USUARIO_PUBLICO' AS nome, 100 AS prioridade, 
       'PERFIL_USUARIO_PUBLICO_DESCRICAO' AS constante_textual_descricao,
       'PERFIL_USUARIO_PUBLICO' AS constante_textual, 
        true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria
WHERE nome = 'PERFIL_USUARIO';

INSERT INTO basico.perfil (id_categoria, id_modulo, nome, constante_textual, prioridade, constante_textual_descricao, ativo, rowinfo)
SELECT id, 
	   (SELECT id 
	   	FROM basico.modulo 
	   	WHERE nome = 'BASICO') AS id_modulo,
	   'USUARIO_NAO_VALIDADO' AS nome, 'PERFIL_USUARIO_NAO_VALIDADO' AS constante_textual,200 AS prioridade,
       'PERFIL_USUARIO_NAO_VALIDADO_DESCRICAO' AS constante_textual_descricao, 
	   true AS ativo, 
	   'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria
WHERE nome = 'PERFIL_USUARIO';

INSERT INTO basico.perfil (id_categoria, id_modulo, nome, constante_textual, prioridade, constante_textual_descricao,  ativo, rowinfo)
SELECT id, 
       (SELECT id 
	   	FROM basico.modulo 
	   	WHERE nome = 'BASICO') AS id_modulo,
	   'USUARIO_VALIDADO' AS nome, 'PERFIL_USUARIO_VALIDADO' AS constante_textual, 300 AS prioridade, 
       'PERFIL_USUARIO_VALIDADO_DESCRICAO' AS constante_textual_descricao, 
	   true AS ativo,'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria
WHERE nome = 'PERFIL_USUARIO';

INSERT INTO basico.perfil (id_categoria, id_modulo, nome, prioridade, constante_textual_descricao, constante_textual, ativo, rowinfo)
SELECT id,
	   (SELECT id 
	   	FROM basico.modulo 
	   	WHERE nome = 'BASICO') AS id_modulo,
	   'USUARIO_ADMINISTRADOR' AS nome, 10000 AS prioridade, 
       'PERFIL_USUARIO_ADMINISTRADOR_DESCRICAO' AS constante_textual_descricao, 
       'PERFIL_USUARIO_ADMINISTRADOR' AS constante_textual,
       true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria
WHERE nome = 'PERFIL_USUARIO';

INSERT INTO basico.perfil (id_categoria, id_modulo, nome, prioridade, constante_textual_descricao, constante_textual, ativo, rowinfo)
SELECT id, 
	   (SELECT id 
	   	FROM basico.modulo 
	   	WHERE nome = 'BASICO') AS id_modulo,
	   'USUARIO_DESENVOLVEDOR' AS nome, 20000 AS prioridade, 
       'PERFIL_USUARIO_DESENVOLVEDOR_DESCRICAO' AS constante_textual_descricao, 
       'PERFIL_USUARIO_DESENVOLVEDOR'  AS constante_textual, 
        true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria
WHERE nome = 'PERFIL_USUARIO';