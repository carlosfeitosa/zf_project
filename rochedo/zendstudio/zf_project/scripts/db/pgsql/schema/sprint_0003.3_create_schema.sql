/*
* SCRIPT DE DROP DAS TABELAS DO SPRINT 0003.3
* 
* versao: 1.0 (POSTGRESQL 8.4.1)
* por: JOÃO HENRIQUE M.BIONE  (joao.henrique.bione@rochedoproject.com)
* criacao: 30/12/2010
* ultimas modificacoes:
* 						
*/

/* CRIACAO DAS TABELAS */

create table website (
	id serial not null ,
	id_generico_proprietario integer not null ,
	id_categoria integer not null ,
	descricao character varying (200) not null ,
	url character varying (300) not null ,
	rowinfo character varying (2000) not null

)
with (
  oids = false
);
alter table website owner to rochedo_user;


/* CRIACAO DAS CHAVES PRIMARIAS */
alter table website add constraint pk_website primary key (id);


/* CRIACAO DOS VALORES DEFAULT */



/* CRIACAO DOS INDICES */



/* CRIACAO DAS CONSTRAINTS UNIQUE */



/* CRIACAO DAS CHAVES ESTRANGEIRAS */

alter table website
  add constraint fk_website_categoria foreign key (id_categoria) references categoria (id) on update no action on delete no action;


/* CRIACAO DOS CHECK CONSTRAINTS */
  