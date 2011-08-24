/*
* SCRIPT DE CRIACAO DAS TABELAS DO SPRINT 0006
* 
* versao: 1.0 (MSSQL 2000)
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

/* CRIACAO DAS TABELAS */

create table dbo.cvc (
	id int identity (1, 1) not null ,
	id_generico int not null ,
	id_categoria_chave_estrangeira int not null ,
	versao integer not null ,
	objeto varchar (4000) collate latin1_general_ci_ai not null ,
	checksum varchar (200) collate latin1_general_ci_ai not null ,
	validade_inicio datetime not null ,
	validade_termino datetime null ,
	ultima_atualizacao datetime null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null 
) on [primary];


/* CRIACAO DAS CHAVES PRIMARIAS */

alter table dbo.cvc with nocheck add constraint pk_cvc primary key clustered (id) on [primary];


/* CRIACAO DOS VALORES DEFAULT */

alter table dbo.cvc add
	constraint df_cvc_validade_inicio default getdate() for validade_inicio,
	constraint df_cvc_versao default 0.1 for versao;


/* CRIACAO DOS INDICES */

create index ix_cvc_id_generico on dbo.cvc (id_generico) on [primary];
create index ix_cvc_id_categoria_chave_estrangeira on dbo.cvc (id_categoria_chave_estrangeira) on [primary];
create unique index ix_cvc_checksum on dbo.cvc (checksum) on [primary];


/* CRIACAO DAS CONSTRAINTS UNIQUE */

alter table dbo.cvc add
	constraint ix_cvc_id_generico_id_categoria_chave_estrangeira_versao unique nonclustered
	(
		id_generico,
		id_categoria_chave_estrangeira,
		versao
	) on [primary];


/* CRIACAO DAS CHAVES ESTRANGEIRAS */

alter table dbo.cvc add
	constraint fk_cvc_id_categoria_chave_estrangeira foreign key
	(
		id_categoria_chave_estrangeira
	) references dbo.categoria_chave_estrangeira (
		id
	);

	
/* CRIACAO DOS CHECK CONSTRAINTS */

alter table dbo.categoria_chave_estrangeira add
    constraint ck_categoria_chave_estrangeira_categoria check
    ((dbo.fn_CheckCategoriaCVC(id_categoria) > 0) or (dbo.fn_CheckCategoriaChaveEstrangeiraCategoriaExists(id_categoria) is null));


/* MODIFICACOES DOS SCRIPTS ANTERIORES */
	
/* dropando indice unico relacionado a categoria da tabela categoria_chave_estrangeira */
drop index dbo.categoria_chave_estrangeira.ix_categoria_chave_estrangeira_id_categoria;