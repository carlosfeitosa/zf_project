/*
* SCRIPT DE CRIACAO DAS TABELAS DO SPRINT 0007
* 
* versao: 1.0 (POSTGRESQL 8.4.1)
* por: CARLOS FEITOSA (carlos.feitosa@rochedoproject.com)
* criacao: 07/10/2010
*/

/* CRIACAO DAS TABELAS */

create table basico_categoria_chave_estrangeira.assoc_relacao (
	id serial not null ,
	tabela_origem character varying (100) not null ,
	campo_origem character varying (100) not null ,
	rowinfo character varying (2000) not null 
)
with (
  oids = false
);
alter table basico_categoria_chave_estrangeira.assoc_relacao owner to rochedo_user;

/* CRIACAO DAS CHAVES PRIMARIAS */

alter table basico_categoria_chave_estrangeira.assoc_relacao add constraint pk_relacao_categoria_chave_estrangeira primary key (id);


/* CRIACAO DOS INDICES */

create index ix_relacao_categoria_chave_estrangeira_tabela_origem
  on basico_categoria_chave_estrangeira.assoc_relacao using btree (tabela_origem asc nulls last);
create index ix_relacao_categoria_chave_estrangeira_campo_origem
  on basico_categoria_chave_estrangeira.assoc_relacao using btree (campo_origem asc nulls last);


/* CRIACAO DAS CONSTRAINTS UNIQUE */

alter table basico_categoria_chave_estrangeira.assoc_relacao 
  add constraint ix_relacao_categoria_chave_estrangeira_tabela_origem_campo_origem unique (tabela_origem, campo_origem);