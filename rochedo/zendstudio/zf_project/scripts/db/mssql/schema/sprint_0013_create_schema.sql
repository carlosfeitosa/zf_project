/*
* SCRIPT DE CRIACAO DAS TABELAS DO SPRINT 0013
* 
* versao: 1.0 (MSSQL 2000)
* por: João Vasconcelos (joao.vasconcelos@rochedoframework.com)
* criacao: 06/09/2011
*/

/* CRIACAO DAS TABELAS */

create table dbo.rascunho (
	id int identity (1, 1) not null ,
	id_rascunho_pai int not null ,
	id_categoria int not null ,
	id_pessoa int not null ,
	id_perfil int not null ,
	request varchar (2000) collate latin1_general_ci_ai not null ,
	post varchar (MAX) collate latin1_general_ci_ai not null ,
	form_action varchar (300) collate latin1_general_ci_ai not null ,
	form_name varchar (300) collate latin1_general_ci_ai not null ,
	datahora_expiracao datetime not null ,
	datahora_criacao datetime not null ,
	datahora_ultima_atualizacao datetime not null ,
    rowinfo varchar (2000) collate latin1_general_ci_ai not null
) on [primary];


/* CRIACAO DAS CHAVES PRIMARIAS */

alter table dbo.rascunho with nocheck add constraint pk_rascunho primary key clustered (id) on [primary];

/* CRIACAO DOS VALORES DEFAULT */

alter table dbo.rascunho add
	constraint df_rascunho_datahora_criacao default (getdate()) for datahora_criacao;
	
alter table dbo.rascunho add
	constraint df_rascunho_datahora_expiracao default (dateadd(day, 90, getdate())) for datahora_expiracao;
	
/* CRIACAO DOS INDICES */

create index ix_rascunho_categoria on dbo.rascunho (id_categoria) on [primary];

create index ix_rascunho_pessoa on dbo.rascunho (id_pessoa) on [primary];

create index ix_rascunho_perfil on dbo.rascunho (id_perfil) on [primary];

create index ix_rascunho_form_action on dbo.rascunho (form_action) on [primary];

create index ix_rascunho_datahora_criacao on dbo.rascunho (datahora_criacao) on [primary];

create index ix_rascunho_datahora_expiracao on dbo.rascunho (datahora_expiracao) on [primary];

create index ix_rascunho_datahora_ultima_atualizacao on dbo.rascunho (datahora_ultima_atualizacao) on [primary];

/* CRIACAO DAS CHAVES ESTRANGEIRAS */

alter table dbo.rascunho add
	constraint fk_rascunho_categoria foreign key 
	(
		id_categoria
	) references dbo.categoria (
		id
	);
	
alter table dbo.rascunho add
	constraint fk_rascunho_pessoa foreign key 
	(
		id_pessoa
	) references dbo.pessoa (
		id
	);
	
alter table dbo.rascunho add
	constraint fk_rascunho_perfil foreign key 
	(
		id_perfil
	) references dbo.perfil (
		id
	);