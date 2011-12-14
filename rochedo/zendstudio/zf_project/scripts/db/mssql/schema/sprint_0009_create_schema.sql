/*
* SCRIPT DE CRIACAO DAS TABELAS DO SPRINT 0009
* 
* versao: 1.0 (MSSQL 2000)
* por: CARLOS FEITOSA (carlos.feitosa@rochedoproject.com)
* criacao: 15/03/2011
*/

/* CRIACAO DAS TABELAS */

create table basico.acao_aplicacao (
	id int identity (1, 1) not null ,
	id_modulo int not null ,
	controller varchar (400) collate latin1_general_ci_ai not null ,
	action varchar (400) collate latin1_general_ci_ai not null ,
	ativo bit not null ,
	motivo_desativacao varchar (2000) collate latin1_general_ci_ai null ,
	datahora_desativacao datetime null ,
	datahora_reativacao datetime null ,
	datahora_cadastro datetime not null ,
    rowinfo varchar (2000) collate latin1_general_ci_ai not null
) on [primary];

create table basico_acao_aplicacao.assoccl_perfil (
	id int identity (1, 1) not null ,
	id_perfil int not null ,
	id_acao_aplicacao int not null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null
) on [primary];

create table basico.metodo_validacao (
	id int identity (1, 1) not null ,
	id_categoria int not null ,
	nome varchar (100) collate latin1_general_ci_ai not null ,
	descricao varchar (200) collate latin1_general_ci_ai null ,
	metodo varchar (5000) collate latin1_general_ci_ai not null ,
	ativo bit not null ,
	motivo_desativacao varchar (200) collate latin1_general_ci_ai null ,
	datahora_desativacao datetime null ,
	datahora_reativacao datetime null ,
	datahora_cadastro datetime not null ,
    rowinfo varchar (2000) collate latin1_general_ci_ai not null
) on [primary];

create table basico_acao_aplicacao.assoccl_metodo_validacao (
	id int identity (1, 1) not null ,
	id_acao_aplicacao int not null ,
	id_metodo_validacao int not null ,
	id_perfil int null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null
) on [primary];


/* CRIACAO DAS CHAVES PRIMARIAS */

alter table basico.acao_aplicacao with nocheck add constraint pk_acao_aplicacao primary key clustered (id) on [primary];

alter table basico_acao_aplicacao.assoccl_perfil with nocheck add constraint pk_acoes_aplicacao_perfis primary key clustered (id) on [primary];

alter table basico.metodo_validacao with nocheck add constraint pk_metodo_validacao primary key clustered (id) on [primary];

alter table basico_acao_aplicacao.assoccl_metodo_validacao with nocheck add constraint pk_acoes_aplicacao_metodos_validacao primary key clustered (id) on [primary];


/* CRIACAO DOS VALORES DEFAULT */

alter table basico.acao_aplicacao add
	constraint df_acao_aplicacao_datahora_cadastro default (getdate()) for datahora_cadastro;

alter table basico.acao_aplicacao add
	constraint df_acao_aplicacao_ativo default 1 for ativo;

alter table basico.metodo_validacao add
    constraint df_metodo_validacao_datahora_cadastro default (getdate()) for datahora_cadastro;

alter table basico.metodo_validacao add
	constraint df_metodo_validacao_ativo default 1 for ativo;


/* CRIACAO DOS INDICES */

create index ix_acao_aplicacao_modulo on dbo.acao_aplicacao (id_modulo) on [primary];

create index ix_acao_aplicacao_controller on dbo.acao_aplicacao (controller) on [primary];

create index ix_acao_aplicacao_action on dbo.acao_aplicacao (action) on [primary];

create index ix_acoes_aplicacao_perfis_perfil on dbo.acoes_aplicacao_perfis (id_perfil) on [primary];

create index ix_acoes_aplicacao_perfis_acao_aplicacao on dbo.acoes_aplicacao_perfis (id_acao_aplicacao) on [primary];

create index ix_metodo_validacao_nome on basico.metodo_validacao (nome) on [primary];

create index ix_acoes_aplicacao_metodos_validacao_acao_aplicacao on dbo.acoes_aplicacao_metodos_validacao (id_acao_aplicacao) on [primary];

create index ix_acoes_aplicacao_metodos_validacao_metodo_validacao on dbo.acoes_aplicacao_metodos_validacao (id_metodo_validacao) on [primary];

create index ix_acoes_aplicacao_metodos_validacao_perfil on dbo.acoes_aplicacao_metodos_validacao (id_perfil) on [primary];


/* CRIACAO DAS CONSTRAINTS UNIQUE */

alter table basico.acao_aplicacao add
  	constraint ix_acao_aplicacao_modulo_controller_action unique nonclustered
 	(
  		id_modulo, 
  		controller, 
  		action
  	) on [primary];

alter table basico_acao_aplicacao.assoccl_perfil add 
  	constraint ix_acoes_aplicacao_perfis_acao_aplicacao_perfil unique nonclustered
  	(
  		id_perfil, 
  		id_acao_aplicacao
  	) on [primary];

alter table basico.metodo_validacao add
  	constraint ix_metodo_validacao_nome_categoria unique nonclustered 
  	(
  		nome, 
  		id_categoria
  	) on [primary];

alter table basico_acao_aplicacao.assoccl_metodo_validacao add
  	constraint ix_acoes_aplicacao_metodos_validacao unique nonclustered
  	(
  		id_acao_aplicacao, 
  		id_metodo_validacao, 
  		id_perfil
  	) on [primary];


/* CRIACAO DAS CHAVES ESTRANGEIRAS */

alter table basico.acao_aplicacao add
	constraint fk_acao_aplicacao_modulo foreign key 
	(
		id_modulo
	) references basico.modulo (
		id
	);

alter table basico_acao_aplicacao.assoccl_perfil add
  	constraint fk_acoes_aplicacao_perfis_acao_aplicacao foreign key 
  	(
  		id_acao_aplicacao
  	) references basico.acao_aplicacao (
  		id
  	);

alter table basico_acao_aplicacao.assoccl_perfil add
  	constraint fk_acoes_aplicacao_perfis_perfil foreign key 
  	(
  		id_perfil
  	) references basico.perfil (
  		id
  	);

alter table basico.metodo_validacao add
  	constraint fk_metodo_validacao_categoria foreign key 
  	(
  		id_categoria
  	) references basico.categoria(
  		id
  	);

alter table basico_acao_aplicacao.assoccl_metodo_validacao add
  	constraint fk_acoes_aplicacao_metodos_validacao_acao_aplicacao foreign key 
  	(
  		id_acao_aplicacao
  	) references basico.acao_aplicacao (
  		id
  	);

alter table basico_acao_aplicacao.assoccl_metodo_validacao add
  	constraint fk_acoes_aplicacao_metodos_validacao_metodo_validacao foreign key 
  	(
  		id_metodo_validacao
  	) references basico.metodo_validacao (
  		id
  	);

alter table basico_acao_aplicacao.assoccl_metodo_validacao add
  	constraint fk_acoes_aplicacao_metodos_validacao_metodo_perfil foreign key 
  	(
  		id_perfil
  	) references basico.perfil (
  		id
  	);


/* MODIFICACAO DO BANCO DE DADOS JA EXISTENTE */

alter table basico.perfil
  add nivel integer not null constraint df_perfil_nivel default 0;