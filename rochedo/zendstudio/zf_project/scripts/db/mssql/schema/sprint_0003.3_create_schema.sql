/*
* SCRIPT DE DROP DAS TABELAS DO SPRINT 0003.3
* 
* versao: 1.0 (POSTGRESQL 8.4.1)
* por: JOÃO HENRIQUE M.BIONE  (joao.henrique.bione@rochedoproject.com)
* criacao: 30/12/2010
* ultimas modificacoes:
* 	26/04/2011 - IGOR PINHO (igor.pinho.souza@rochedoframework.com)
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

create table dbo.municipio (
	id int identity (1, 1) not null ,
	id_estado int not null ,
	id_categoria int not null ,
	nome varchar (200) collate latin1_general_ci_ai not null ,
	codigo_ddd varchar (3) collate latin1_general_ci_ai null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null

) on [primary];

/* CRIACAO DAS CHAVES PRIMARIAS */

alter table dbo.website with nocheck add constraint pk_website primary key clustered (id) on [primary];

alter table dbo.municipio with nocheck add constraint pk_municipio primary key clustered (id) on [primary];

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

alter table dbo.municipio add 
    constraint fk_municipio_estado foreign key 
    (
        id_estado
    ) references dbo.estado (
        id
    );

alter table dbo.municipio add 
    constraint fk_municipio_categoria foreign key 
    (
        id_categoria
    ) references dbo.categoria (
        id
    );
/* CRIACAO DOS CHECK CONSTRAINTS */
  
