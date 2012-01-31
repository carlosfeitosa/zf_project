/*
* SCRIPT DE CRIACAO DAS TABELAS DO SPRINT 0009
* 
* versao: 1.0 (POSTGRESQL 8.4.1)
* por: CARLOS FEITOSA (carlos.feitosa@rochedoproject.com)
* criacao: 15/03/2011
*/

/* CRIACAO DAS TABELAS */

create table basico.acao_aplicacao (
	id serial not null ,
	id_modulo int not null ,
	controller character varying (400) not null ,
	action character varying (400) not null ,
	ativo boolean not null ,
	motivo_desativacao character varying (2000) null ,
	datahora_desativacao timestamp with time zone null ,
	datahora_reativacao timestamp with time zone null ,
	datahora_cadastro timestamp with time zone not null ,
    rowinfo character varying (2000) not null
) with (
  oids = false
);
alter table basico.acao_aplicacao owner to rochedo_user;

create table basico_acao_aplicacao.assoccl_perfil (
	id serial not null ,
	id_perfil int not null ,
	id_acao_aplicacao int not null ,
	rowinfo character varying (2000) not null
) with (
  oids = false
);
alter table basico_acao_aplicacao.assoccl_perfil owner to rochedo_user;

create table basico.metodo_validacao (
	id serial not null ,
	id_categoria int not null ,
	nome character varying (100) not null ,
	descricao character varying (2000) null ,
	metodo character varying (5000) not null ,
	ativo boolean not null ,
	motivo_desativacao character varying (2000) null ,
	datahora_desativacao timestamp with time zone null ,
	datahora_reativacao timestamp with time zone null ,
	datahora_cadastro timestamp with time zone not null ,
    rowinfo character varying (2000) not null
) with (
  oids = false
);
alter table basico.metodo_validacao owner to rochedo_user;

create table basico_acao_aplicacao.assoccl_metodo_validacao (
	id serial not null ,
	id_acao_aplicacao int not null ,
	id_metodo_validacao int not null ,
	id_perfil int null ,
	rowinfo character varying (2000) not null
) with (
  oids = false
);
alter table basico_acao_aplicacao.assoccl_metodo_validacao owner to rochedo_user;


/* CRIACAO DAS CHAVES PRIMARIAS */

alter table basico.acao_aplicacao add constraint pk_acao_aplicacao primary key (id);

alter table basico_acao_aplicacao.assoccl_perfil add constraint pk_acoes_aplicacao_perfis primary key (id);

alter table basico.metodo_validacao add constraint pk_metodo_validacao primary key (id);

alter table basico_acao_aplicacao.assoccl_metodo_validacao add constraint pk_acoes_aplicacao_metodos_validacao primary key (id);


/* CRIACAO DOS VALORES DEFAULT */

alter table basico.acao_aplicacao
    alter column datahora_cadastro set default (current_timestamp);

alter table basico.acao_aplicacao
    alter column ativo set default (true);

alter table basico.metodo_validacao
    alter column datahora_cadastro set default (current_timestamp);

alter table basico.metodo_validacao
    alter column ativo set default (true);


/* CRIACAO DOS INDICES */

create index ix_acao_aplicacao_modulo
  on acao_aplicacao using btree (id_modulo asc nulls last);

create index ix_acao_aplicacao_controller
  on acao_aplicacao using btree (controller asc nulls last);

create index ix_acao_aplicacao_action
  on acao_aplicacao using btree (action asc nulls last);

create index ix_acoes_aplicacao_perfis_perfil
  on acoes_aplicacao_perfis using btree (id_perfil asc nulls last);

create index ix_acoes_aplicacao_perfis_acao_aplicacao
  on acoes_aplicacao_perfis using btree (id_acao_aplicacao asc nulls last);

create index ix_metodo_validacao_nome
  on basico.metodo_validacao using btree (nome asc nulls last);

create index ix_acoes_aplicacao_metodos_validacao_acao_aplicacao
  on acoes_aplicacao_metodos_validacao using btree (id_acao_aplicacao asc nulls last);

create index ix_acoes_aplicacao_metodos_validacao_metodo_validacao
  on acoes_aplicacao_metodos_validacao using btree (id_metodo_validacao asc nulls last);

create index ix_acoes_aplicacao_metodos_validacao_perfil
  on acoes_aplicacao_metodos_validacao using btree (id_perfil asc nulls last);


/* CRIACAO DAS CONSTRAINTS UNIQUE */

alter table basico.acao_aplicacao 
  add constraint ix_acao_aplicacao_modulo_controller_action unique (id_modulo, controller, action);

alter table basico_acao_aplicacao.assoccl_perfil 
  add constraint ix_acoes_aplicacao_perfis_acao_aplicacao_perfil unique (id_perfil, id_acao_aplicacao);

alter table basico.metodo_validacao
  add constraint ix_metodo_validacao_nome_categoria unique (nome, id_categoria);

alter table basico_acao_aplicacao.assoccl_metodo_validacao
  add constraint ix_acoes_aplicacao_metodos_validacao unique (id_acao_aplicacao, id_metodo_validacao, id_perfil);


/* CRIACAO DAS CHAVES ESTRANGEIRAS */

alter table basico.acao_aplicacao
  add constraint fk_acao_aplicacao_modulo foreign key (id_modulo) references basico.modulo (id) on update no action on delete no action;

alter table basico_acao_aplicacao.assoccl_perfil
  add constraint fk_acoes_aplicacao_perfis_acao_aplicacao foreign key (id_acao_aplicacao) references basico.acao_aplicacao (id) on update no action on delete no action;

alter table basico_acao_aplicacao.assoccl_perfil
  add constraint fk_acoes_aplicacao_perfis_perfil foreign key (id_perfil) references basico.perfil (id) on update no action on delete no action;

alter table basico.metodo_validacao
  add constraint fk_metodo_validacao_categoria foreign key (id_categoria) references basico.categoria(id) on update no action on delete no action;

alter table basico_acao_aplicacao.assoccl_metodo_validacao
  add constraint fk_acoes_aplicacao_metodos_validacao_acao_aplicacao foreign key (id_acao_aplicacao) references basico.acao_aplicacao (id) on update no action on delete no action;

alter table basico_acao_aplicacao.assoccl_metodo_validacao
  add constraint fk_acoes_aplicacao_metodos_validacao_metodo_validacao foreign key (id_metodo_validacao) references basico.metodo_validacao (id) on update no action on delete no action;

alter table basico_acao_aplicacao.assoccl_metodo_validacao
  add constraint fk_acoes_aplicacao_metodos_validacao_metodo_perfil foreign key (id_perfil) references basico.perfil (id) on update no action on delete no action;



/* MODIFICACAO DO BANCO DE DADOS JA EXISTENTE */

alter table basico.perfil
  add column nivel integer default 0 not null;