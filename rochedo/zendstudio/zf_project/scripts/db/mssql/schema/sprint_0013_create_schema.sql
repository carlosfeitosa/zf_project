/*
* SCRIPT DE CRIACAO DAS TABELAS DO SPRINT 0013
* 
* versao: 1.0 (MSSQL 2000)
* por: João Vasconcelos (joao.vasconcelos@rochedoframework.com)
* criacao: 06/09/2011
* 
* 24/10/2011 - criacao das entidades grupo_rascunho e basico_formulario.assocag_sequencia (João Vasconcelos - Bione);
* 
*/

/* CRIACAO DAS TABELAS */

create table basico_formulario.rascunho (
	id int identity (1, 1) not null ,
	id_rascunho_pai int null ,
	id_categoria int not null ,
	id_pessoa int not null ,
	id_perfil int not null ,
	id_grupo_rascunho int null ,
	request varchar (2000) collate latin1_general_ci_ai not null ,
	post varchar (MAX) collate latin1_general_ci_ai not null ,
	form_action varchar (300) collate latin1_general_ci_ai not null ,
	form_name varchar (300) collate latin1_general_ci_ai not null ,
	datahora_expiracao datetime null ,
	datahora_criacao datetime not null ,
	datahora_ultima_atualizacao datetime not null ,
    rowinfo varchar (2000) collate latin1_general_ci_ai not null
) on [primary];

create table basico_formulario_rascunho.assocag_grupo (
	id int identity (1, 1) not null,
	nome varchar (300) collate latin1_general_ci_ai not null,
	forms varchar (4000) collate latin1_general_ci_ai not null,
	id_pessoa int not null,
	id_perfil int not null ,
	id_sequencia_formulario int null,
	datahora_criacao datetime null ,
	datahora_ultima_atualizacao datetime null ,
    rowinfo varchar (2000) collate latin1_general_ci_ai not null
) on [primary];

create table basico_formulario.assocag_sequencia (
	id int identity (1, 1) not null,
	nome varchar (300) collate latin1_general_ci_ai not null,
	id_formulario int not null,
	ordem int not null ,
	descricao varchar (2000) collate latin1_general_ci_ai null,
	datahora_criacao datetime null ,
	datahora_ultima_atualizacao datetime not null ,
    rowinfo varchar (2000) collate latin1_general_ci_ai not null
) on [primary];


/* CRIACAO DAS CHAVES PRIMARIAS */

alter table basico_formulario.rascunho with nocheck add constraint pk_rascunho primary key clustered (id) on [primary];

alter table basico_formulario_rascunho.assocag_grupo with nocheck add constraint pk_grupo_rascunho primary key clustered (id) on [primary];

alter table basico_formulario.assocag_sequencia with nocheck add constraint pk_sequencia_formulario primary key clustered (id) on [primary];

/* CRIACAO DOS VALORES DEFAULT */

alter table basico_formulario.rascunho add
	constraint df_rascunho_datahora_criacao default (getdate()) for datahora_criacao;
	
alter table basico_formulario.rascunho add
	constraint df_rascunho_datahora_expiracao default (dateadd(month, 18, getdate())) for datahora_expiracao;
	
alter table basico_formulario_rascunho.assocag_grupo add
    constraint df_grupo_rascunho_datahora_criacao default (getdate()) for datahora_criacao;
    
alter table basico_formulario.assocag_sequencia add
    constraint df_sequencia_formulario_datahora_criacao default (getdate()) for datahora_criacao;
	
/* CRIACAO DOS INDICES */

create index ix_rascunho_categoria on basico_formulario.rascunho (id_categoria) on [primary];

create index ix_rascunho_pessoa on basico_formulario.rascunho (id_pessoa) on [primary];

create index ix_rascunho_perfil on basico_formulario.rascunho (id_perfil) on [primary];

create index ix_rascunho_form_action on basico_formulario.rascunho (form_action) on [primary];

create index ix_rascunho_datahora_criacao on basico_formulario.rascunho (datahora_criacao) on [primary];

create index ix_rascunho_datahora_expiracao on basico_formulario.rascunho (datahora_expiracao) on [primary];

create index ix_rascunho_datahora_ultima_atualizacao on basico_formulario.rascunho (datahora_ultima_atualizacao) on [primary];

create index ix_grupo_rascunho_pessoa on basico_formulario_rascunho.assocag_grupo (id_pessoa) on [primary];

create index ix_grupo_rascunho_perfil on basico_formulario_rascunho.assocag_grupo (id_perfil) on [primary];
  
create index ix_grupo_rascunho_sequencia on basico_formulario_rascunho.assocag_grupo (id_sequencia_formulario) on [primary];
  
create index ix_grupo_rascunho_nome on basico_formulario_rascunho.assocag_grupo (nome) on [primary];
  
create index ix_grupo_rascunho_datahora_criacao on basico_formulario_rascunho.assocag_grupo (datahora_criacao) on [primary];

create index ix_grupo_rascunho_datahora_ultima_atualizacao on basico_formulario_rascunho.assocag_grupo (datahora_ultima_atualizacao) on [primary];
  
create index ix_sequencia_formulario_nome on basico_formulario.assocag_sequencia (nome) on [primary];
  
create index ix_sequencia_formulario_id_formulario on basico_formulario.assocag_sequencia (id_formulario) on [primary];
  
create index ix_sequencia_formulario_datahora_criacao on basico_formulario.assocag_sequencia (datahora_criacao) on [primary];

create index ix_sequencia_formulario_datahora_ultima_atualizacao on basico_formulario.assocag_sequencia (datahora_ultima_atualizacao) on [primary];

/* CRIACAO DAS CHAVES ESTRANGEIRAS */

alter table basico_formulario.rascunho add
	constraint fk_rascunho_pai foreign key 
	(
		id_rascunho_pai
	) references basico_formulario.rascunho (
		id
	);

alter table basico_formulario.rascunho add
	constraint fk_rascunho_categoria foreign key 
	(
		id_categoria
	) references basico.categoria(
		id
	);
	
alter table basico_formulario.rascunho add
	constraint fk_rascunho_pessoa foreign key 
	(
		id_pessoa
	) references basico.pessoa (
		id
	);
	
alter table basico_formulario.rascunho add
	constraint fk_rascunho_perfil foreign key 
	(
		id_perfil
	) references dbo.perfil (
		id
	);
	
alter table basico_formulario.rascunho add
  constraint fk_rascunho_grupo_rascunho foreign key 
  (
  		id_grupo_rascunho
  ) references basico_formulario_rascunho.assocag_grupo (
  		id
  );
  
alter table basico_formulario_rascunho.assocag_grupo add
  constraint fk_grupo_rascunho_perfil foreign key 
  (
  		id_perfil
  ) references dbo.perfil (
  		id
  );
  
alter table basico_formulario_rascunho.assocag_grupo add
  constraint fk_grupo_rascunho_pessoa foreign key 
  (
  		id_pessoa
  ) references basico.pessoa (
  		id
  );
  
alter table basico_formulario_rascunho.assocag_grupo add
  constraint fk_grupo_rascunho_sequencia_formulario foreign key 
  (
  		id_sequencia_formulario
  ) references basico_formulario.assocag_sequencia (
  		id
  );
  
alter table basico_formulario.assocag_sequencia add
  constraint fk_sequencia_formulario_formulario foreign key 
  (
  		id_formulario
  ) references basico.formulario  (
  		id
  );