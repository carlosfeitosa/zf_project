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

create table dbo.raca (
	id int identity (1, 1) not null ,
	constante_textual varchar (200) collate latin1_general_ci_ai not null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null

) on [primary];

/* CRIACAO DAS CHAVES PRIMARIAS */

alter table dbo.raca with nocheck add constraint pk_raca primary key clustered (id) on [primary];

/* CRIACAO DOS VALORES DEFAULT */



/* CRIACAO DOS INDICES */



/* CRIACAO DAS CONSTRAINTS UNIQUE */



/* CRIACAO DAS CHAVES ESTRANGEIRAS */

alter table dbo.dados_biometricos add
    constraint fk_dados_biometricos_raca foreign key 
    (
        id_raca
    ) references dbo.raca (
        id
    );

/* CRIACAO DOS CHECK CONSTRAINTS */
  
alter table dbo.raca add
    constraint ck_raca_constante_textual check
    (dbo.fn_CheckConstanteTextualExists(constante_textual) is not null);