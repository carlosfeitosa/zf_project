/*
* SCRIPT DE CRIACAO DAS TABELAS DO SPRINT 0007
* 
* versao: 1.0 (MSSQL 2000)
* por: CARLOS FEITOSA (carlos.feitosa@rochedoproject.com)
* criacao: 05/10/2010
*/

/* CRIACAO DAS TABELAS */

create table dbo.relacao_categoria_chave_estrangeira (
	id int identity (1, 1) not null ,
	tabela_origem varchar (100) collate latin1_general_ci_ai not null ,
	campo_origem varchar (100) collate latin1_general_ci_ai not null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null 
) on [primary];


/* CRIACAO DAS CHAVES PRIMARIAS */

alter table relacao_categoria_chave_estrangeira with nocheck add constraint pk_relacao_categoria_chave_estrangeira primary key clustered (id) on [primary];


/* CRIACAO DOS INDICES */

create index ix_relacao_categoria_chave_estrangeira_tabela_origem on relacao_categoria_chave_estrangeira (tabela_origem) on [primary];
create index ix_relacao_categoria_chave_estrangeira_campo_origem on relacao_categoria_chave_estrangeira (campo_origem) on [primary];


/* CRIACAO DAS CONSTRAINTS UNIQUE */

alter table relacao_categoria_chave_estrangeira add
	constraint ix_relacao_categoria_chave_estrangeira_tabela_origem_campo_origem unique nonclustered
	(
		tabela_origem,
		campo_origem
	) on [primary];