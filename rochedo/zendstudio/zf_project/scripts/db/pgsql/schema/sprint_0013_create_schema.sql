/*
* SCRIPT DE CRIACAO DAS TABELAS DO SPRINT 0013
* 
* versao: 1.0 (MSSQL 2000)
* por: João Vasconcelos (joao.vasconcelos@rochedoframework.com)
* criacao: 06/09/2011
* 
* 24/10/2011 - criacao das entidades grupo_rascunho e sequencia_formulario (João Vasconcelos - Bione);
* 
*/

/* CRIACAO DAS TABELAS */

create table rascunho (
	id serial not null ,
	id_rascunho_pai int null ,
	id_categoria int not null ,
	id_pessoa int not null ,
	id_perfil int not null ,
	id_grupo_rascunho int null,
	request character varying (2000) not null ,
	post text not null ,
	form_action character varying (300) not null ,
	form_name character varying (300) not null ,
	datahora_expiracao timestamp with time zone null ,
	datahora_criacao timestamp with time zone null ,
	datahora_ultima_atualizacao timestamp with time zone not null ,
    rowinfo character varying (2000) not null
) with (
  oids = false
);

create table grupo_rascunho (
	id serial not null,
	nome character varying (300) not null,
	forms character varying (4000) not null,
	id_pessoa int not null,
	id_perfil int not null ,
	id_sequencia_formulario int null,
	datahora_criacao timestamp with time zone null ,
	datahora_ultima_atualizacao timestamp with time zone not null ,
    rowinfo character varying (2000) not null
) with (
  oids = false
);

create table sequencia_formulario (
	id serial not null,
	nome character varying (300) not null,
	id_formulario int not null,
	ordem int not null ,
	descricao character varying (2000) null,
	datahora_criacao timestamp with time zone null ,
	datahora_ultima_atualizacao timestamp with time zone not null ,
    rowinfo character varying (2000) not null
) with (
  oids = false
);


/* CRIACAO DAS CHAVES PRIMARIAS */

alter table rascunho add constraint pk_rascunho primary key (id);

alter table grupo_rascunho add constraint pk_grupo_rascunho primary key (id);

alter table sequencia_formulario add constraint pk_sequencia_formulario primary key (id);

/* CRIACAO DOS VALORES DEFAULT */

alter table rascunho
    alter column datahora_criacao set default (current_timestamp);

alter table rascunho
    alter column datahora_expiracao set default (current_timestamp + interval '18 months');
    
alter table grupo_rascunho
    alter column datahora_criacao set default (current_timestamp);
    
alter table sequencia_formulario
    alter column datahora_criacao set default (current_timestamp);

	
/* CRIACAO DOS INDICES */

create index ix_rascunho_categoria
  on rascunho using btree (id_categoria asc nulls last);

create index ix_rascunho_pessoa
  on rascunho using btree (id_pessoa asc nulls last);

create index ix_rascunho_perfil
  on rascunho using btree (id_perfil asc nulls last);
  
create index ix_rascunho_grupo_rascunho
  on rascunho using btree (id_grupo_rascunho asc nulls last);

create index ix_rascunho_form_action
  on rascunho using btree (form_action asc nulls last);

create index ix_rascunho_datahora_criacao
  on rascunho using btree (datahora_criacao asc nulls last);

create index ix_rascunho_datahora_expiracao
  on rascunho using btree (datahora_expiracao asc nulls last);

create index ix_rascunho_datahora_ultima_atualizacao
  on rascunho using btree (datahora_ultima_atualizacao asc nulls last);
  
create index ix_grupo_rascunho_pessoa
  on grupo_rascunho using btree (id_pessoa asc nulls last);

create index ix_grupo_rascunho_perfil
  on grupo_rascunho using btree (id_perfil asc nulls last);
  
create index ix_grupo_rascunho_sequencia
  on grupo_rascunho using btree (id_sequencia_formulario asc nulls last);
  
create index ix_grupo_rascunho_nome
  on grupo_rascunho using btree (nome asc nulls last);
  
create index ix_grupo_rascunho_datahora_criacao
  on grupo_rascunho using btree (datahora_criacao asc nulls last);

create index ix_grupo_rascunho_datahora_ultima_atualizacao
  on grupo_rascunho using btree (datahora_ultima_atualizacao asc nulls last);
  
create index ix_sequencia_formulario_nome
  on sequencia_formulario using btree (nome asc nulls last);
  
create index ix_sequencia_formulario_id_formulario
  on sequencia_formulario using btree (id_formulario asc nulls last);
  
create index ix_sequencia_formulario_datahora_criacao
  on sequencia_formulario using btree (datahora_criacao asc nulls last);

create index ix_sequencia_formulario_datahora_ultima_atualizacao
  on sequencia_formulario using btree (datahora_ultima_atualizacao asc nulls last);


/* CRIACAO DAS CHAVES ESTRANGEIRAS */

alter table rascunho
  add constraint fk_rascunho_pai foreign key (id_rascunho_pai) references rascunho (id) on update no action on delete no action;
  
alter table rascunho
  add constraint fk_rascunho_categoria foreign key (id_categoria) references categoria (id) on update no action on delete no action;
  
alter table rascunho
  add constraint fk_rascunho_pessoa foreign key (id_pessoa) references pessoa (id) on update no action on delete no action;
  
alter table rascunho
  add constraint fk_rascunho_perfil foreign key (id_perfil) references perfil (id) on update no action on delete no action;
  
alter table rascunho
  add constraint fk_rascunho_grupo_rascunho foreign key (id_grupo_rascunho) references grupo_rascunho (id) on update no action on delete no action;
  
alter table grupo_rascunho
  add constraint fk_grupo_rascunho_perfil foreign key (id_perfil) references perfil (id) on update no action on delete no action;
  
alter table grupo_rascunho
  add constraint fk_grupo_rascunho_pessoa foreign key (id_pessoa) references pessoa (id) on update no action on delete no action;
  
alter table grupo_rascunho
  add constraint fk_grupo_rascunho_sequencia_formulario foreign key (id_sequencia_formulario) references sequencia_formulario (id) on update no action on delete no action;
  
alter table sequencia_formulario
  add constraint fk_sequencia_formulario_formulario foreign key (id_formulario) references formulario (id) on update no action on delete no action;