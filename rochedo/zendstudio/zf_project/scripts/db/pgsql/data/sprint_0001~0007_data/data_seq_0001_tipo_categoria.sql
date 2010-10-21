/**
* SCRIPT DE POPULACAO DA TABELA TIPO_CATEGORIA
* 
* versao: 1.0 (POSTGRESQL 8.4.1)
* por: CARLOS FEITOSA (carlos.feitosa@rochedoproject.com)
* criacao: 20/10/2010
* ultimas modificacoes:
* 
*/

INSERT INTO tipo_categoria (nome, descricao, rowinfo)
VALUES ('SISTEMA', 'Tipo de categorias de sistema (imutáveis).', 'SYSTEM_STARTUP');

INSERT INTO tipo_categoria (nome, descricao, rowinfo)
VALUES ('PERFIL', 'Perfis.', 'SYSTEM_STARTUP');

INSERT INTO tipo_categoria (nome, descricao, rowinfo)
VALUES('MENSAGEM', 'Mensagens.', 'SYSTEM_STARTUP');

INSERT INTO tipo_categoria (nome, descricao, rowinfo)
VALUES ('EMAIL', 'Endereços de e-mail.', 'SYSTEM_STARTUP');

INSERT INTO tipo_categoria (nome, descricao, rowinfo)
VALUES ('LINGUAGEM', 'Linguagens utilizadas pelo sistema.', 'SYSTEM_STARTUP');

INSERT INTO tipo_categoria (nome, descricao, rowinfo)
VALUES ('FORMULARIO', 'Formulários do sistema.', 'SYSTEM_STARTUP');

INSERT INTO tipo_categoria (nome, descricao, rowinfo)
VALUES ('AJUDA', 'Ajuda do sistema', 'SYSTEM_STARTUP');

INSERT INTO tipo_categoria (nome, descricao, rowinfo)
VALUES ('COMPONENTE', 'Componentes do sistema', 'SYSTEM_STARTUP');

INSERT INTO tipo_categoria (nome, descricao, rowinfo)
VALUES ('CVC', 'Control Version Class (classe de controle de versão).', 'SYSTEM_STARTUP');