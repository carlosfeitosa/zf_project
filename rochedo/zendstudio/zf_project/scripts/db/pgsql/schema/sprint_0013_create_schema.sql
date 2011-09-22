/*
* SCRIPT DE CRIACAO DAS TABELAS DO SPRINT 0013
* 
* versao: 1.0 (MSSQL 2000)
* por: João Vasconcelos (joao.vasconcelos@rochedoframework.com)
* criacao: 06/09/2011
*/

/* CRIACAO DAS TABELAS */

create table rascunho (
	id serial not null ,
	id_rascunho_pai int null ,
	id_categoria int not null ,
	id_pessoa int not null ,
	id_perfil int not null ,
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


/* CRIACAO DAS CHAVES PRIMARIAS */

alter table rascunho add constraint pk_rascunho primary key (id);

/* CRIACAO DOS VALORES DEFAULT */

alter table rascunho
    alter column datahora_criacao set default (current_timestamp);

alter table rascunho
    alter column datahora_expiracao set default (current_timestamp + interval '18 months');

	
/* CRIACAO DOS INDICES */

create index ix_rascunho_categoria
  on rascunho using btree (id_categoria asc nulls last);

create index ix_rascunho_pessoa
  on rascunho using btree (id_pessoa asc nulls last);

create index ix_rascunho_perfil
  on rascunho using btree (id_perfil asc nulls last);

create index ix_rascunho_form_action
  on rascunho using btree (form_action asc nulls last);

create index ix_rascunho_datahora_criacao
  on rascunho using btree (datahora_criacao asc nulls last);

create index ix_rascunho_datahora_expiracao
  on rascunho using btree (datahora_expiracao asc nulls last);

create index ix_rascunho_datahora_ultima_atualizacao
  on rascunho using btree (datahora_ultima_atualizacao asc nulls last);


/* CRIACAO DAS CHAVES ESTRANGEIRAS */

alter table rascunho
  add constraint fk_rascunho_pai foreign key (id_rascunho_pai) references rascunho (id) on update no action on delete no action;
  
alter table rascunho
  add constraint fk_rascunho_categoria foreign key (id_categoria) references categoria (id) on update no action on delete no action;
  
alter table rascunho
  add constraint fk_rascunho_pessoa foreign key (id_pessoa) references pessoa (id) on update no action on delete no action;
  
alter table rascunho
  add constraint fk_rascunho_perfil foreign key (id_perfil) references perfil (id) on update no action on delete no action;