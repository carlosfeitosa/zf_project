/*
* SCRIPT DE CRIACAO DAS TABELAS DO SPRINT 0004
* 
* versao: 1.0 (MSSQL 2000)
* por: CARLOS FEITOSA (carlos.feitosa@rochedoproject.com)
* criacao: 07/06/2010
* ultimas modificacoes:
*/

// CRIACAO DAS FUNCOES

create function fn_CheckConstanteTextualExists(@constante_textual varchar (200))
returns int
as
begin
  declare @retval int
  set @retval = (select top 1 id
                 from dicionario_expressao
                 where constante_textual = @constante_textual)
  return @retval
end
GO


// CRIACAO DAS TABELAS

create table decorator (
	id int identity (1, 1) not null ,
	id_categoria int not null ,
	nome varchar (100) collate latin1_general_ci_ai not null ,
	descricao varchar (2000) collate latin1_general_ci_ai null ,
	decorator varchar (1000) collate latin1_general_ci_ai null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null 
) on [primary];

create table ajuda (
	id int identity (1, 1) not null ,
	id_categoria int not null ,
	nome varchar (100) collate latin1_general_ci_ai not null ,
	descricao varchar (2000) collate latin1_general_ci_ai null ,
	constante_textual_ajuda varchar (200) collate latin1_general_ci_ai not null ,
	constante_textual_hint varchar (200) collate latin1_general_ci_ai not null ,
	url varchar(300) collate latin1_general_ci_ai null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null 
) on [primary];

create table output (
	id int identity (1, 1) not null ,
	id_categoria int not null ,
	nome varchar (100) collate latin1_general_ci_ai not null ,
	descricao varchar (2000) collate latin1_general_ci_ai null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null
) on [primary];

create table formulario_template (
	id int identity (1, 1) not null ,
	id_categoria int not null ,
	nome varchar (100) collate latin1_general_ci_ai not null ,
	descricao varchar (2000) collate latin1_general_ci_ai null ,
	stylesheet_full_filename varchar(300) collate latin1_general_ci_ai null ,
	javascript_full_filename varchar(300) collate latin1_general_ci_ai null ,
	id_output integer not null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null 
) on [primary];

create table formulario_elemento (
	id int identity (1, 1) not null ,
	id_categoria int not null ,
	id_ajuda int null ,
	nome varchar (100) collate latin1_general_ci_ai not null ,
	descricao varchar (2000) collate latin1_general_ci_ai null ,
	constante_textual_label varchar (200) collate latin1_general_ci_ai null ,
	element_name varchar (100) collate latin1_general_ci_ai not null ,
	element varchar (1000) collate latin1_general_ci_ai not null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null 
) on [primary];

create table formulario_elemento_validador (
	id int identity (1, 1) not null ,
	id_categoria int not null ,
	nome varchar (100) collate latin1_general_ci_ai not null ,
	descricao varchar (2000) collate latin1_general_ci_ai null ,
	validator varchar (1000) collate latin1_general_ci_ai not null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null 
) on [primary];

create table formulario (
	id int identity (1, 1) not null ,
	id_categoria int not null ,
	id_decorator int null ,
	id_ajuda int null ,
	id_formulario_pai int null ,
	nome varchar (100) collate latin1_general_ci_ai not null ,
	descricao varchar (2000) collate latin1_general_ci_ai null ,
	constante_textual_titulo varchar (200) collate latin1_general_ci_ai null ,
	constante_textual_subtitulo varchar (200) collate latin1_general_ci_ai null ,
	form_name varchar (100) collate latin1_general_ci_ai not null ,
	form_method varchar (100) collate latin1_general_ci_ai not null ,
	form_action varchar (100) collate latin1_general_ci_ai not null ,
	form_target varchar (100) collate latin1_general_ci_ai not null ,
	form_enctype varchar (100) collate latin1_general_ci_ai not null ,
	validade_inicio datetime null ,
	validade_termino datetime null ,
	data_desativacao datetime null ,
	data_auto_reativar datetime null ,
	motivo_desativacao varchar (2000) collate latin1_general_ci_ai null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null 
) on [primary];

create table formulario_formulario_elemento (
	id int identity (1, 1) not null ,
	id_formulario int not null ,
	id_formulario_elemento int not null ,
	ordem int not null ,	
	rowinfo varchar (2000) collate latin1_general_ci_ai not null 
) on [primary];

create table formulario_elemento_formulario_elemento_validador (
	id int identity (1, 1) not null ,
	id_formulario_elemento int not null ,
	id_formulario_elemento_validador int not null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null 
) on [primary];


// CRIACAO DAS CHAVES PRIMARIAS

alter table decorator with nocheck add constraint pk_decorator primary key clustered (id) on [primary];

alter table ajuda with nocheck add constraint pk_ajuda primary key clustered (id) on [primary];

alter table output with nocheck add constraint pk_output primary key clustered (id) on [primary];

alter table formulario_template with nocheck add constraint pk_formulario_template primary key clustered (id) on [primary];

alter table formulario_elemento with nocheck add constraint pk_formulario_elemento primary key clustered (id) on [primary];

alter table formulario_elemento_validador with nocheck add constraint pk_formulario_elemento_validador primary key clustered (id) on [primary];

alter table formulario with nocheck add constraint pk_formulario primary key clustered (id) on [primary];

alter table formulario_formulario_elemento with nocheck add constraint pk_formulario_formulario_elemento primary key clustered (id) on [primary];

alter table formulario_elemento_formulario_elemento_validador with nocheck add constraint pk_formulario_elemento_formulario_elemento_validador primary key clustered (id) on [primary];


// CRIACAO DOS VALORES DEFAULT

alter table formulario add 
	constraint df_formulario_validade_inicio default (getdate()) for validade_inicio;


// CRIACAO DOS INDICES

create index ix_decorator_nome on decorator (nome) on [primary];

create index ix_ajuda_nome on ajuda (nome) on [primary];

create index ix_output_nome on output (nome) on [primary];

create index ix_formulario_template_nome on formulario_template (nome) on [primary];

create index ix_formulario_elemento_nome on formulario_elemento (nome) on [primary];

create index ix_formulario_elemento_validador_nome on formulario_elemento_validador (nome) on [primary];

create index ix_formulario_nome on formulario (nome) on [primary];

create unique index ix_formulario_form_name on formulario (form_name) on [primary];


// CRIACAO DAS CONSTRAINTS UNIQUE

alter table decorator add
	constraint ix_decorator_categoria_nome unique nonclustered
	(
		id_categoria,
		nome
	) on [primary];

alter table ajuda add
	constraint ix_ajuda_categoria_nome unique nonclustered
	(
		id_categoria,
		nome
	) on [primary];
	
alter table output add
	constraint ix_output_categoria_nome unique nonclustered
	(
		id_categoria,
		nome
	) on [primary];

alter table formulario_template add
	constraint ix_formulario_template_categoria_nome unique nonclustered
	(
		id_categoria,
		nome
	) on [primary];

alter table formulario_elemento add
	constraint ix_formulario_elemento_categoria_nome unique nonclustered
	(
		id_categoria,
		nome
	) on [primary];

alter table formulario_elemento_validador add
	constraint ix_formulario_elemento_validador_categoria_nome unique nonclustered
	(
		id_categoria,
		nome
	) on [primary];

alter table formulario add
    constraint ix_formulario_categoria_nome unique nonclustered
    (
        id_categoria,
        nome
    ) on [primary];

alter table formulario_formulario_elemento add
    constraint ix_formulario_formulario_elemento_formulario_formulario_elemento unique nonclustered
    (
        id_formulario,
        id_formulario_elemento
    ) on [primary];

alter table formulario_elemento_formulario_elemento_validador add
    constraint ix_formulario_elemento_formulario_elemento_validador_formulario_elemento_formulario_elemento_validador unique nonclustered
    (
        id_formulario_elemento,
        id_formulario_elemento_validador
    ) on [primary];


// CRIACAO DAS CHAVES ESTRANGEIRAS

alter table decorator add
	constraint fk_decorator_categoria foreign key
	(
		id_categoria
	) references categoria (
		id
	);

alter table ajuda add
	constraint fk_ajuda_categoria foreign key
	(
		id_categoria
	) references categoria (
		id
	);

alter table output add
	constraint fk_output_categoria foreign key
	(
		id_categoria
	) references categoria (
		id
	);

alter table formulario_template add
	constraint fk_formulario_template_categoria foreign key
	(
		id_categoria
	) references categoria (
		id
	),
	constraint fk_formulario_template_output foreign key
	(
		id_output
	) references output (
		id
	);

alter table formulario_elemento add
	constraint fk_formulario_elemento_categoria foreign key
	(
		id_categoria
	) references categoria (
		id
	),
	constraint fk_formulario_elemento_ajuda foreign key
	(
		id_ajuda
	) references ajuda (
		id
	);

alter table formulario_elemento_validador add
	constraint fk_formulario_elemento_validador_categoria foreign key
	(
		id_categoria
	) references categoria (
		id
	);
	
alter table formulario add 
	constraint fk_formulario_categoria foreign key 
	(
		id_categoria
	) references categoria (
		id
	),
	constraint fk_categoria_decorator foreign key 
	(
		id_decorator
	) references decorator (
		id
	),
	constraint fk_categoria_ajuda foreign key 
	(
		id_ajuda
	) references ajuda (
		id
	),
	constraint fk_formulario_formulario foreign key 
	(
		id_formulario_pai
	) references formulario (
		id
	);

alter table formulario_formulario_elemento add 
	constraint fk_formulario_formulario_elemento_formulario foreign key 
	(
		id_formulario
	) references formulario (
		id
	),
	constraint fk_formulario_formulario_elemento_formulario_elemento foreign key 
	(
		id_formulario_elemento
	) references formulario_elemento (
		id
	);

alter table formulario_elemento_formulario_elemento_validador add 
	constraint fk_formulario_elemento_formulario_elemento_validador_formulario_elemento foreign key 
	(
		id_formulario_elemento
	) references formulario_elemento (
		id
	),
	constraint fk_formulario_elemento_formulario_elemento_validador_formulario_elemento_validador foreign key 
	(
		id_formulario_elemento_validador
	) references formulario_elemento_validador (
		id
	);


// CRIACAO DOS CHECK CONSTRAINTS

alter table ajuda add
    constraint ck_ajuda_constante_textual_ajuda check
    (dbo.fn_CheckConstanteTextualExists(constante_textual_ajuda) is not null);

alter table ajuda add
    constraint ck_ajuda_constante_textual_hint check
    (dbo.fn_CheckConstanteTextualExists(constante_textual_hint) is not null);

alter table formulario add
	constraint ck_formulario_constante_textual_titulo check
	(dbo.fn_CheckConstanteTextualExists(constante_textual_titulo) is not null);

alter table formulario add
	constraint ck_formulario_constante_textual_subtitulo check
	(dbo.fn_CheckConstanteTextualExists(constante_textual_subtitulo) is not null);