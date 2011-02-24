/*
* SCRIPT DE POPULACAO DAS TABELAS
* 
* versao: 1.0 (POSTGRESQL 8.4.1)
* por: ADRIANO DUPRAT LEMOS (adriano.lemos@rochedoproject.com)
* criacao: 20/10/2010
* ultimas modificacoes:
*  
*/

/* FORMULARIO */

INSERT INTO formulario_perfil (id_formulario, id_perfil, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO'
        AND f.nome = 'FORM_CADASTRAR_USUARIO_NAO_VALIDADO') AS id_formulario,
       (SELECT p.id
        FROM perfil p
        LEFT JOIN categoria c ON (p.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'SISTEMA'
        AND c.nome = 'SISTEMA_USUARIO'
        AND p.nome = 'USUARIO_NAO_VALIDADO') AS id_perfil, 'SYSTEM_STARTUP' AS rowinfo;