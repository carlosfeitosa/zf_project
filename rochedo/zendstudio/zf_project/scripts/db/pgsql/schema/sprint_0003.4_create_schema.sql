/*
* SCRIPT DE DROP DAS TABELAS DO SPRINT 0003.3
* 
* versao: 1.0 (POSTGRESQL 8.4.1)
* por: JOÃO VASCONCELOS  (joao.vasconcelos@rochedoproject.com)
* criacao: 14/02/2011
* ultimas modificacoes:
* 						
*/

/* CRIACAO DAS TABELAS */

create table raca (
	id serial not null ,
	constante_textual character varying (200) not null ,
	rowinfo character varying (2000) not null

)
with (
  oids = false
);
alter table raca owner to rochedo_user;


/* CRIACAO DAS CHAVES PRIMARIAS */
alter table raca add constraint pk_raca primary key (id);


/* CRIACAO DOS VALORES DEFAULT */



/* CRIACAO DOS INDICES */



/* CRIACAO DAS CONSTRAINTS UNIQUE */



/* CRIACAO DAS CHAVES ESTRANGEIRAS */


/* CRIACAO DOS CHECK CONSTRAINTS */
  
alter table raca add
    constraint ck_raca_constante_textual check
    (fn_CheckConstanteTextualExists(constante_textual) is not null);