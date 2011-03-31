/*
* SCRIPT DE CRIACAO DAS TABELAS DO SPRINT 0009
* 
* versao: 1.0 (MSSQL 2000)
* por: CARLOS FEITOSA (carlos.feitosa@rochedoproject.com)
* criacao: 15/03/2011
*/

/* CRIACAO DAS TABELAS */

create table dbo.acao_aplicacao (
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

create table dbo.acoes_aplicacao_perfis (
	id int identity (1, 1) not null ,
	id_perfil int not null ,
	id_acao_aplicacao int not null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null
) on [primary];

create table dbo.metodo_validacao (
	id int identity (1, 1) not null ,
	id_categoria int not null ,
	nome varchar (100) collate latin1_general_ci_ai not null ,
	descricao varchar (2000) collate latin1_general_ci_ai null ,
	metodo text collate latin1_general_ci_ai not null ,
	ativo bit not null ,
	motivo_desativacao varchar (2000) collate latin1_general_ci_ai null ,
	datahora_desativacao datetime null ,
	datahora_reativacao datetime null ,
	datahora_cadastro datetime not null ,
    rowinfo varchar (2000) collate latin1_general_ci_ai not null
) on [primary];

create table dbo.acoes_aplicacao_metodos_validacao (
	id int identity (1, 1) not null ,
	id_acao_aplicacao int not null ,
	id_metodo_validacao int not null ,
	id_perfil int null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null
) on [primary];


/* CRIACAO DAS CHAVES PRIMARIAS */

alter table dbo.acao_aplicacao with nocheck add constraint pk_acao_aplicacao primary key clustered (id) on [primary];

alter table dbo.acoes_aplicacao_perfis with nocheck add constraint pk_acoes_aplicacao_perfis primary key clustered (id) on [primary];

alter table dbo.metodo_validacao with nocheck add constraint pk_metodo_validacao primary key clustered (id) on [primary];

alter table dbo.acoes_aplicacao_metodos_validacao with nocheck add constraint pk_acoes_aplicacao_metodos_validacao primary key clustered (id) on [primary];


/* CRIACAO DOS VALORES DEFAULT */

alter table dbo.acao_aplicacao add
	constraint df_acao_aplicacao_datahora_cadastro default (getdate()) for datahora_cadastro;

alter table dbo.acao_aplicacao add
	constraint df_acao_aplicacao_ativo default 1 for ativo;

alter table dbo.metodo_validacao add
    constraint df_metodo_validacao_datahora_cadastro default (getdate()) for datahora_cadastro;

alter table dbo.metodo_validacao add
	constraint df_metodo_validacao_ativo default 1 for ativo;


/* CRIACAO DOS INDICES */

create index ix_acao_aplicacao_modulo on dbo.acao_aplicacao (id_modulo) on [primary];

create index ix_acao_aplicacao_controller on dbo.acao_aplicacao (controller) on [primary];

create index ix_acao_aplicacao_action on dbo.acao_aplicacao (action) on [primary];

create index ix_acoes_aplicacao_perfis_perfil on dbo.acoes_aplicacao_perfis (id_perfil) on [primary];

create index ix_acoes_aplicacao_perfis_acao_aplicacao on dbo.acoes_aplicacao_perfis (id_acao_aplicacao) on [primary];

create index ix_metodo_validacao_nome on dbo.metodo_validacao (nome) on [primary];

create index ix_acoes_aplicacao_metodos_validacao_acao_aplicacao on dbo.acoes_aplicacao_metodos_validacao (id_acao_aplicacao) on [primary];

create index ix_acoes_aplicacao_metodos_validacao_metodo_validacao on dbo.acoes_aplicacao_metodos_validacao (id_metodo_validacao) on [primary];

create index ix_acoes_aplicacao_metodos_validacao_perfil on dbo.acoes_aplicacao_metodos_validacao (id_perfil) on [primary];


/* CRIACAO DAS CONSTRAINTS UNIQUE */

alter table dbo.acao_aplicacao add
  	constraint ix_acao_aplicacao_modulo_controller_action unique nonclustered
 	(
  		id_modulo, 
  		controller, 
  		action
  	) on [primary];

alter table dbo.acoes_aplicacao_perfis add 
  	constraint ix_acoes_aplicacao_perfis_acao_aplicacao_perfil unique nonclustered
  	(
  		id_perfil, 
  		id_acao_aplicacao
  	) on [primary];

alter table dbo.metodo_validacao add
  	constraint ix_metodo_validacao_nome_categoria unique nonclustered 
  	(
  		nome, 
  		id_categoria
  	) on [primary];

alter table dbo.acoes_aplicacao_metodos_validacao add
  	constraint ix_acoes_aplicacao_metodos_validacao unique nonclustered
  	(
  		id_acao_aplicacao, 
  		id_metodo_validacao, 
  		id_perfil
  	) on [primary];


/* CRIACAO DAS CHAVES ESTRANGEIRAS */

alter table dbo.acao_aplicacao add
	constraint fk_acao_aplicacao_modulo foreign key 
	(
		id_modulo
	) references dbo.modulo (
		id
	);

alter table dbo.acoes_aplicacao_perfis add
  	constraint fk_acoes_aplicacao_perfis_acao_aplicacao foreign key 
  	(
  		id_acao_aplicacao
  	) references dbo.acao_aplicacao (
  		id
  	);

alter table dbo.acoes_aplicacao_perfis add
  	constraint fk_acoes_aplicacao_perfis_perfil foreign key 
  	(
  		id_perfil
  	) references dbo.perfil (
  		id
  	);

alter table dbo.metodo_validacao add
  	constraint fk_metodo_validacao_categoria foreign key 
  	(
  		id_categoria
  	) references dbo.categoria (
  		id
  	);

alter table dbo.acoes_aplicacao_metodos_validacao add
  	constraint fk_acoes_aplicacao_metodos_validacao_acao_aplicacao foreign key 
  	(
  		id_acao_aplicacao
  	) references dbo.acao_aplicacao (
  		id
  	);

alter table dbo.acoes_aplicacao_metodos_validacao add
  	constraint fk_acoes_aplicacao_metodos_validacao_metodo_validacao foreign key 
  	(
  		id_metodo_validacao
  	) references dbo.metodo_validacao (
  		id
  	);

alter table dbo.acoes_aplicacao_metodos_validacao add
  	constraint fk_acoes_aplicacao_metodos_validacao_metodo_perfil foreign key 
  	(
  		id_perfil
  	) references dbo.perfil (
  		id
  	);


/* MODIFICACAO DO BANCO DE DADOS JA EXISTENTE */

alter table perfil
  add nivel integer not null constraint df_perfil_nivel default 0;