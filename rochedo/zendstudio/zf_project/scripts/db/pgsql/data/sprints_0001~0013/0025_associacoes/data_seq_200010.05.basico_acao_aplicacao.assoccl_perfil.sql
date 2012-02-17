/**
* SCRIPT DE POPULACAO DA TABELA basico_acao_aplicacao.assoccl_perfil
* 
* versao: 1.0 (POSTGRESQL 9.1.1)
* por: JOÃO HENRIQUE M.BIONE (joao.henrique.bione@rochedoproject.com)
* criacao: 01/02/2012
* ultimas modificacoes:
*
* 						01/02/2012 - criacao das acoes e vinculacoes com o perfil de administrador e desenvolvedor da acao "regerarchecksummodelo" no controlador "administrador";
*/


INSERT into basico_acao_aplicacao.assoccl_perfil (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM basico.perfil p
        LEFT join basico.categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO'
        AND p.nome   = 'USUARIO_PUBLICO') AS id_perfil,
       (SELECT a.id
        from basico.acao_aplicacao a
        LEFT JOIN basico.modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'BASICO'
        AND a.controller = 'email'
        AND a.action = 'errotokeninvalido') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;
        
INSERT into basico_acao_aplicacao.assoccl_perfil (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM basico.perfil p
        LEFT join basico.categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO'
        AND p.nome   = 'USUARIO_VALIDADO') AS id_perfil,
       (SELECT a.id
        from basico.acao_aplicacao a
        LEFT JOIN basico.modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'BASICO'
        AND a.controller = 'rascunho'
        AND a.action = 'exibirformadminrascunhos') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;
        
INSERT into basico_acao_aplicacao.assoccl_perfil (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM basico.perfil p
        LEFT join basico.categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO'
        AND p.nome   = 'USUARIO_VALIDADO') AS id_perfil,
       (SELECT a.id
        from basico.acao_aplicacao a
        LEFT JOIN basico.modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'BASICO'
        AND a.controller = 'rascunho'
        AND a.action = 'salvar') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;
        
INSERT into basico_acao_aplicacao.assoccl_perfil (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM basico.perfil p
        LEFT join basico.categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO'
        AND p.nome   = 'USUARIO_VALIDADO') AS id_perfil,
       (SELECT a.id
        from basico.acao_aplicacao a
        LEFT JOIN basico.modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'BASICO'
        AND a.controller = 'rascunho'
        AND a.action = 'excluir') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;        
        
INSERT into basico_acao_aplicacao.assoccl_perfil (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM basico.perfil p
        LEFT join basico.categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO'
        AND p.nome   = 'USUARIO_PUBLICO') AS id_perfil,
       (SELECT a.id
        from basico.acao_aplicacao a
        LEFT JOIN basico.modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'BASICO'
        AND a.controller = 'email'
        AND a.action = 'errotokenexpirado') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;

INSERT into basico_acao_aplicacao.assoccl_perfil (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM basico.perfil p
        LEFT join basico.categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO'
        AND p.nome   = 'USUARIO_PUBLICO') AS id_perfil,
       (SELECT a.id
        from basico.acao_aplicacao a
        LEFT JOIN basico.modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'BASICO'
        AND a.controller = 'fs'
        AND a.action = 'download') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;

INSERT into basico_acao_aplicacao.assoccl_perfil (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM basico.perfil p
        LEFT join basico.categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO'
        AND p.nome   = 'USUARIO_PUBLICO') AS id_perfil,
       (SELECT a.id
        from basico.acao_aplicacao a
        LEFT JOIN basico.modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'BASICO'
        AND a.controller = 'login'
        AND a.action = 'exibirformaceitetermosuso') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;

INSERT into basico_acao_aplicacao.assoccl_perfil (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM basico.perfil p
        LEFT join basico.categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO'
        AND p.nome   = 'USUARIO_PUBLICO') AS id_perfil,
       (SELECT a.id
        from basico.acao_aplicacao a
        LEFT JOIN basico.modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'BASICO'
        AND a.controller = 'login'
        AND a.action = 'aceitetermouso') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;

INSERT into basico_acao_aplicacao.assoccl_perfil (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM basico.perfil p
        LEFT join basico.categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO'
        AND p.nome   = 'USUARIO_PUBLICO') AS id_perfil,
       (SELECT a.id
        from basico.acao_aplicacao a
        LEFT JOIN basico.modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'BASICO'
        AND a.controller = 'login'
        AND a.action = 'exibirformsugestaologin') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;

INSERT into basico_acao_aplicacao.assoccl_perfil (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM basico.perfil p
        LEFT join basico.categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO'
        AND p.nome   = 'USUARIO_PUBLICO') AS id_perfil,
       (SELECT a.id
        from basico.acao_aplicacao a
        LEFT JOIN basico.modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'DEFAULT'
        AND a.controller = 'index'
        AND a.action = 'index') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;

INSERT into basico_acao_aplicacao.assoccl_perfil (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM basico.perfil p
        LEFT join basico.categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO'
        AND p.nome   = 'USUARIO_PUBLICO') AS id_perfil,
       (SELECT a.id
        from basico.acao_aplicacao a
        LEFT JOIN basico.modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'DEFAULT'
        AND a.controller = 'error'
        AND a.action = 'error') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;

INSERT into basico_acao_aplicacao.assoccl_perfil (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM basico.perfil p
        LEFT join basico.categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO'
        AND p.nome   = 'USUARIO_PUBLICO') AS id_perfil,
       (SELECT a.id
        from basico.acao_aplicacao a
        LEFT JOIN basico.modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'BASICO'
        AND a.controller = 'login'
        AND a.action = 'cadastrarUsuarioNaoValidado') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;

INSERT into basico_acao_aplicacao.assoccl_perfil (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM basico.perfil p
        LEFT join basico.categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO'
        AND p.nome   = 'USUARIO_PUBLICO') AS id_perfil,
       (SELECT a.id
        from basico.acao_aplicacao a
        LEFT JOIN basico.modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'BASICO'
        AND a.controller = 'login'
        AND a.action = 'verificadisponibilidadelogin') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;

INSERT into basico_acao_aplicacao.assoccl_perfil (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM basico.perfil p
        LEFT join basico.categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO'
        AND p.nome   = 'USUARIO_PUBLICO') AS id_perfil,
       (SELECT a.id
        from basico.acao_aplicacao a
        LEFT JOIN basico.modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'BASICO'
        AND a.controller = 'login'
        AND a.action = 'SucessoSalvarUsuarioNaoValidado') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;

INSERT into basico_acao_aplicacao.assoccl_perfil (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM basico.perfil p
        LEFT join basico.categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO'
        AND p.nome   = 'USUARIO_PUBLICO') AS id_perfil,
       (SELECT a.id
        from basico.acao_aplicacao a
        LEFT JOIN basico.modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'BASICO'
        AND a.controller = 'login'
        AND a.action = 'erroemailnaovalidadoexistentenosistema') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;

INSERT into basico_acao_aplicacao.assoccl_perfil (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM basico.perfil p
        LEFT join basico.categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO'
        AND p.nome   = 'USUARIO_PUBLICO') AS id_perfil,
       (SELECT a.id
        from basico.acao_aplicacao a
        LEFT JOIN basico.modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'BASICO'
        AND a.controller = 'login'
		AND a.action = 'erroemailvalidadoexistentenosistema') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;

INSERT into basico_acao_aplicacao.assoccl_perfil (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM basico.perfil p
        LEFT join basico.categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO'
        AND p.nome   = 'USUARIO_PUBLICO') AS id_perfil,
       (SELECT a.id
        from basico.acao_aplicacao a
        LEFT JOIN basico.modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'BASICO'
        AND a.controller = 'login'
        AND a.action = 'salvarUsuarioValidado') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;

INSERT into basico_acao_aplicacao.assoccl_perfil (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM basico.perfil p
        LEFT join basico.categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO'
        AND p.nome   = 'USUARIO_PUBLICO') AS id_perfil,
       (SELECT a.id
        from basico.acao_aplicacao a
        LEFT JOIN basico.modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'BASICO'
        AND a.controller = 'login'
        AND a.action = 'salvarusuarionaovalidado') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;

INSERT into basico_acao_aplicacao.assoccl_perfil (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM basico.perfil p
        LEFT join basico.categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO'
        AND p.nome   = 'USUARIO_VALIDADO') AS id_perfil,
       (SELECT a.id
        from basico.acao_aplicacao a
        LEFT JOIN basico.modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'BASICO'
        AND a.controller = 'login'
        AND a.action = 'sucessosalvarusuariovalidado') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;

INSERT into basico_acao_aplicacao.assoccl_perfil (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM basico.perfil p
        LEFT join basico.categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO'
        AND p.nome   = 'USUARIO_PUBLICO') AS id_perfil,
       (SELECT a.id
        from basico.acao_aplicacao a
        LEFT JOIN basico.modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'BASICO'
        AND a.controller = 'login'
        AND a.action = 'verificaNovoLogin') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;

INSERT into basico_acao_aplicacao.assoccl_perfil (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM basico.perfil p
        LEFT join basico.categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO'
        AND p.nome   = 'USUARIO_PUBLICO') AS id_perfil,
       (SELECT a.id
        from basico.acao_aplicacao a
        LEFT JOIN basico.modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'BASICO'
        AND a.controller = 'autenticador'
        AND a.action = 'autenticarusuario') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;

INSERT into basico_acao_aplicacao.assoccl_perfil (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM basico.perfil p
        LEFT join basico.categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO'
        AND p.nome   = 'USUARIO_PUBLICO') AS id_perfil,
       (SELECT a.id
        from basico.acao_aplicacao a
        LEFT JOIN basico.modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'BASICO'
        AND a.controller = 'autenticador'
        AND a.action = 'verificaAutenticacaoUsuario') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;

INSERT into basico_acao_aplicacao.assoccl_perfil (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM basico.perfil p
        LEFT join basico.categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO'
        AND p.nome   = 'USUARIO_PUBLICO') AS id_perfil,
       (SELECT a.id
        from basico.acao_aplicacao a
        LEFT JOIN basico.modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'BASICO'
        AND a.controller = 'autenticador'
        AND a.action = 'credenciaisinvalidas') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;

INSERT into basico_acao_aplicacao.assoccl_perfil (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM basico.perfil p
        LEFT join basico.categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO'
        AND p.nome   = 'USUARIO_PUBLICO') AS id_perfil,
       (SELECT a.id
        from basico.acao_aplicacao a
        LEFT JOIN basico.modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'BASICO'
        AND a.controller = 'autenticador'
        AND a.action = 'problemaslogin') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;

INSERT into basico_acao_aplicacao.assoccl_perfil (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM basico.perfil p
        LEFT join basico.categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO'
        AND p.nome   = 'USUARIO_VALIDADO') AS id_perfil,
       (SELECT a.id
        from basico.acao_aplicacao a
        LEFT JOIN basico.modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'BASICO'
        AND a.controller = 'autenticador'
        AND a.action = 'desautenticausuario') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;

INSERT into basico_acao_aplicacao.assoccl_perfil (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM basico.perfil p
        LEFT join basico.categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO'
        AND p.nome   = 'USUARIO_PUBLICO') AS id_perfil,
       (SELECT a.id
        from basico.acao_aplicacao a
        LEFT JOIN basico.modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'BASICO'
        AND a.controller = 'autenticador'
        AND a.action = 'dialogautenticacao') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;
        
INSERT into basico_acao_aplicacao.assoccl_perfil (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM basico.perfil p
        LEFT join basico.categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO'
        AND p.nome   = 'USUARIO_PUBLICO') AS id_perfil,
       (SELECT a.id
        from basico.acao_aplicacao a
        LEFT JOIN basico.modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'BASICO'
        AND a.controller = 'controleacesso'
        AND a.action = 'ipusuariodiferentedoipdousuarioautenticadonasessao') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;

INSERT into basico_acao_aplicacao.assoccl_perfil (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM basico.perfil p
        LEFT join basico.categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO'
        AND p.nome   = 'USUARIO_VALIDADO') AS id_perfil,
       (SELECT a.id
        from basico.acao_aplicacao a
        LEFT JOIN basico.modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'BASICO'
        AND a.controller = 'dadosusuario'
        AND a.action = 'index') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;

INSERT into basico_acao_aplicacao.assoccl_perfil (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM basico.perfil p
        LEFT join basico.categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO'
        AND p.nome   = 'USUARIO_VALIDADO') AS id_perfil,
       (SELECT a.id
        from basico.acao_aplicacao a
        LEFT JOIN basico.modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'BASICO'
        AND a.controller = 'dadosusuario'
        AND a.action = 'trocarsenhaexpirada') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;

INSERT into basico_acao_aplicacao.assoccl_perfil (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM basico.perfil p
        LEFT join basico.categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO'
        AND p.nome   = 'USUARIO_ADMINISTRADOR') AS id_perfil,
       (SELECT a.id
        from basico.acao_aplicacao a
        LEFT JOIN basico.modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'BASICO'
        AND a.controller = 'dadosusuario'
        AND a.action = 'trocarsenhaexpirada') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;

INSERT into basico_acao_aplicacao.assoccl_perfil (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM basico.perfil p
        LEFT join basico.categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO'
        AND p.nome   = 'USUARIO_PUBLICO') AS id_perfil,
       (SELECT a.id
        from basico.acao_aplicacao a
        LEFT JOIN basico.modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'BASICO'
        AND a.controller = 'email'
        AND a.action = 'validarEmail') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;

INSERT into basico_acao_aplicacao.assoccl_perfil (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM basico.perfil p
        LEFT join basico.categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO'
        AND p.nome   = 'USUARIO_PUBLICO') AS id_perfil,
       (SELECT a.id
        from basico.acao_aplicacao a
        LEFT JOIN basico.modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'BASICO'
        AND a.controller = 'administrador'
        AND a.action = 'sucessoresetadb') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;

INSERT into basico_acao_aplicacao.assoccl_perfil (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM basico.perfil p
        LEFT join basico.categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO'
        AND p.nome   = 'USUARIO_PUBLICO') AS id_perfil,
       (SELECT a.id
        from basico.acao_aplicacao a
        LEFT JOIN basico.modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'BASICO'
        AND a.controller = 'token'
        AND a.action = 'decode') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;

INSERT into basico_acao_aplicacao.assoccl_perfil (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM basico.perfil p
        LEFT join basico.categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO'
        AND p.nome   = 'USUARIO_ADMINISTRADOR') AS id_perfil,
       (SELECT a.id
        from basico.acao_aplicacao a
        LEFT JOIN basico.modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'BASICO'
        AND a.controller = 'geradorformulario'
        AND a.action = 'gerarformulario') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;

INSERT into basico_acao_aplicacao.assoccl_perfil (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM basico.perfil p
        LEFT join basico.categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO'
        AND p.nome   = 'USUARIO_DESENVOLVEDOR') AS id_perfil,
       (SELECT a.id
        from basico.acao_aplicacao a
        LEFT JOIN basico.modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'BASICO'
        AND a.controller = 'geradorformulario'
        AND a.action = 'gerarformulario') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;

INSERT into basico_acao_aplicacao.assoccl_perfil (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM basico.perfil p
        LEFT join basico.categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO'
        AND p.nome   = 'USUARIO_ADMINISTRADOR') AS id_perfil,
       (SELECT a.id
        from basico.acao_aplicacao a
        LEFT JOIN basico.modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'BASICO'
        AND a.controller = 'administrador'
        AND a.action = 'index') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;

INSERT into basico_acao_aplicacao.assoccl_perfil (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM basico.perfil p
        LEFT join basico.categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO'
        AND p.nome   = 'USUARIO_DESENVOLVEDOR') AS id_perfil,
       (SELECT a.id
        from basico.acao_aplicacao a
        LEFT JOIN basico.modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'BASICO'
        AND a.controller = 'administrador'
        AND a.action = 'index') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;

INSERT into basico_acao_aplicacao.assoccl_perfil (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM basico.perfil p
        LEFT join basico.categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO'
        AND p.nome   = 'USUARIO_ADMINISTRADOR') AS id_perfil,
       (SELECT a.id
        from basico.acao_aplicacao a
        LEFT JOIN basico.modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'BASICO'
        AND a.controller = 'administrador'
        AND a.action = 'resetadb') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;

INSERT into basico_acao_aplicacao.assoccl_perfil (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM basico.perfil p
        LEFT join basico.categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO'
        AND p.nome   = 'USUARIO_DESENVOLVEDOR') AS id_perfil,
       (SELECT a.id
        from basico.acao_aplicacao a
        LEFT JOIN basico.modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'BASICO'
        AND a.controller = 'administrador'
        AND a.action = 'resetadb') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;

INSERT into basico_acao_aplicacao.assoccl_perfil (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM basico.perfil p
        LEFT join basico.categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO'
        AND p.nome   = 'USUARIO_ADMINISTRADOR') AS id_perfil,
       (SELECT a.id
        from basico.acao_aplicacao a
        LEFT JOIN basico.modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'BASICO'
        AND a.controller = 'administrador'
        AND a.action = 'regerarchecksummodelo') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;

INSERT into basico_acao_aplicacao.assoccl_perfil (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM basico.perfil p
        LEFT join basico.categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO'
        AND p.nome   = 'USUARIO_DESENVOLVEDOR') AS id_perfil,
       (SELECT a.id
        from basico.acao_aplicacao a
        LEFT JOIN basico.modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'BASICO'
        AND a.controller = 'administrador'
        AND a.action = 'regerarchecksummodelo') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;

INSERT into basico_acao_aplicacao.assoccl_perfil (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM basico.perfil p
        LEFT join basico.categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO'
        AND p.nome   = 'USUARIO_ADMINISTRADOR') AS id_perfil,
       (SELECT a.id
        from basico.acao_aplicacao a
        LEFT JOIN basico.modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'BASICO'
        AND a.controller = 'geradorformulario'
        AND a.action = 'gerartodosformularios') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;

INSERT into basico_acao_aplicacao.assoccl_perfil (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM basico.perfil p
        LEFT join basico.categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO'
        AND p.nome   = 'USUARIO_DESENVOLVEDOR') AS id_perfil,
       (SELECT a.id
        from basico.acao_aplicacao a
        LEFT JOIN basico.modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'BASICO'
        AND a.controller = 'geradorformulario'
        AND a.action = 'gerartodosformularios') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;
        
INSERT into basico_acao_aplicacao.assoccl_perfil (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM basico.perfil p
        LEFT join basico.categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO'
        AND p.nome   = 'USUARIO_VALIDADO') AS id_perfil,
       (SELECT a.id
        from basico.acao_aplicacao a
        LEFT JOIN basico.modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'BASICO'
        AND a.controller = 'dadosusuario'
        AND a.action = 'salvar') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;

INSERT into basico_acao_aplicacao.assoccl_perfil (id_perfil, id_acao_aplicacao, rowinfo)
SELECT (SELECT p.id
        FROM basico.perfil p
        LEFT join basico.categoria c ON (p.id_categoria = c.id)
        WHERE c.nome = 'PERFIL_USUARIO'
        AND p.nome   = 'USUARIO_VALIDADO') AS id_perfil,
       (SELECT a.id
        from basico.acao_aplicacao a
        LEFT JOIN basico.modulo m ON (a.id_modulo = m.id)
        WHERE m.NOME = 'BASICO'
        AND a.controller = 'cvc'
        AND a.action = 'resolveconflitoversaoobjeto') AS id_acao_aplicacao, 'SYSTEM_STARTUP' AS rowinfo;