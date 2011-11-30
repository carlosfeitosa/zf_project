/*
* SCRIPT DE CRIACAO DAS TABELAS DO SPRINT 0006
* 
* versao: 1.0 (POSTGRESQL 8.4.1)
* por: CARLOS FEITOSA (carlos.feitosa@rochedoproject.com)
* criacao: 10/09/2010
* modificacoes:
* 					14/09/2010 - drop de indice unico relacionado a categoria
* 								 de categoria_chave_estrangeira;
* 					14/09/2010 - criacao de funcao para checar a existencia de uma categoria
* 								 na tabela categoria_chave_estrangeira;
* 					14/09/2010 - criacao de funcao para checar se a categoria eh do tipo CVC;
* 					14/09/2010 - criacao de check constraint para verificar a categoria de uma
* 								 tupla de categoria_chave_estrangeira;
*/

/* CRIACAO DAS FUNCOES */

create function fn_CheckCategoriaChaveEstrangeiraCategoriaExists(int)
returns int as 
'select id from categoria_chave_estrangeira where id_categoria = $1 limit 1'
language 'sql';

create function fn_CheckCategoriaCVC(int)
returns int as 
'select c.id from categoria c left JOIN basico.tipo_categoria t on (c.id_tipo_categoria = t.id) where c.id = $1 and t.nome = $$CVC$$ and c.nome = $$CVC$$limit 1'
language 'sql';


/* CRIACAO DAS TABELAS */

create table cvc (
	id serial not null ,
	id_generico int not null ,
	id_categoria_chave_estrangeira int not null ,
	versao integer not null ,
	objeto character varying (4000) not null ,
	checksum character varying (200) not null ,
	validade_inicio timestamp with time zone not null ,
	validade_termino timestamp with time zone null ,
	ultima_atualizacao timestamp with time zone null ,
	rowinfo character varying (2000) not null 
)
with (
  oids = false
);
alter table cvc owner to rochedo_user;


/* CRIACAO DAS CHAVES PRIMARIAS */

alter table cvc add constraint pk_cvc primary key (id);


/* CRIACAO DOS VALORES DEFAULT */

alter table cvc
	alter column validade_inicio set default (current_timestamp),
	alter column versao set default (0.1);


/* CRIACAO DOS INDICES */

create index ix_cvc_id_generico
  on cvc using btree (id_generico asc nulls last);
create index ix_cvc_id_categoria_chave_estrangeira
  on cvc using btree (id_categoria_chave_estrangeira asc nulls last);


/* CRIACAO DAS CONSTRAINTS UNIQUE */

alter table cvc
  add constraint ix_cvc_id_generico_id_categoria_chave_estrangeira_versao unique (id_generico, id_categoria_chave_estrangeira, versao);

create unique index ix_cvc_checksum
  on cvc using btree (checksum);


/* CRIACAO DAS CHAVES ESTRANGEIRAS */

alter table cvc
  add constraint fk_cvc_id_categoria_chave_estrangeira foreign key (id_categoria_chave_estrangeira) references categoria_chave_estrangeira (id) on update no action on delete no action;

/* CRIACAO DOS CHECK CONSTRAINTS */

alter table categoria_chave_estrangeira add
    constraint ck_categoria_chave_estrangeira_categoria check
    ((fn_CheckCategoriaCVC(id_categoria) > 0) or (fn_CheckCategoriaChaveEstrangeiraCategoriaExists(id_categoria) is null));


/* MODIFICACOES DOS SCRIPTS ANTERIORES */
	
/* dropando indice unico relacionado a categoria da tabela categoria_chave_estrangeira */
ALTER TABLE categoria_chave_estrangeira
	DROP CONSTRAINT ix_categoria_chave_estrangeira CASCADE 
