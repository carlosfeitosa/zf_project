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

create table dbo.website (
	id int identity (1, 1) not null ,
	id_generico_proprietario int not null ,
	id_categoria int not null ,
	descricao varchar (200) collate latin1_general_ci_ai not null ,
	url varchar (300) collate latin1_general_ci_ai not null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null

) on [primary];

/* CRIACAO DAS CHAVES PRIMARIAS */

alter table dbo.website with nocheck add constraint pk_website primary key clustered (id) on [primary];

/* CRIACAO DOS VALORES DEFAULT */



/* CRIACAO DOS INDICES */



/* CRIACAO DAS CONSTRAINTS UNIQUE */



/* CRIACAO DAS CHAVES ESTRANGEIRAS */

alter table dbo.website add 
    constraint fk_website_categoria foreign key 
    (
        id_categoria
    ) references dbo.categoria (
        id
    );
/* CRIACAO DOS CHECK CONSTRAINTS */
  
