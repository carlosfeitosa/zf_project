/*
* SCRIPT DE DROP DAS TABELAS DO SPRINT 0003.4
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

create table basico_dados_biometricos.tipo_sanguineo (
	id int identity (1, 1) not null ,
	nome varchar (200) collate latin1_general_ci_ai not null ,
	descricao varchar (200) collate latin1_general_ci_ai not null ,
	rotulo varchar (20) collate latin1_general_ci_ai not null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null

) on [primary];

/* CRIACAO DAS CHAVES PRIMARIAS */

alter table dbo.raca with nocheck add constraint pk_raca primary key clustered (id) on [primary];

alter table basico_dados_biometricos.tipo_sanguineo with nocheck add constraint pk_tipo_sanguineo primary key clustered (id) on [primary];

/* CRIACAO DOS VALORES DEFAULT */



/* CRIACAO DOS INDICES */



/* CRIACAO DAS CONSTRAINTS UNIQUE */

alter table basico_dados_biometricos.tipo_sanguineo add
	constraint ix_tipo_sanguineo_nome unique nonclustered
	(
		nome
	) on [primary];
	
alter table basico_dados_biometricos.tipo_sanguineo add
	constraint ix_tipo_sanguineo_rotulo unique nonclustered
	(
		rotulo
	) on [primary];


/* CRIACAO DAS CHAVES ESTRANGEIRAS */


/* CRIACAO DOS CHECK CONSTRAINTS */
  
alter table dbo.raca add
    constraint ck_raca_constante_textual check
    (dbo.fn_CheckConstanteTextualExists(constante_textual) is not null);