/*
* SCRIPT DE CRIACAO DAS TABELAS DO SPRINT 0004
* 
* versao: 1.0 (MSSQL 2000)
* por: CARLOS FEITOSA (carlos.feitosa@rochedoproject.com)
* criacao: 07/06/2010
* ultimas modificacoes:
* 						16/06/2010 - criacao da tabela formulario_perfil, pks e fks relacionadas;
* 						18/06/2010 - modificacao do nome da tabela formulario_template para template;
* 						08/07/2010 - criacao das tabelas modulo, modulo_perfil, modulo_formulario,
* 									 pk e fks relacionadas;
* 					    13/07/2010 - adicao do campo element_reloadable na tabela formulario_elemento
* 						14/03/2010 - adicao do campo id_decorator na tabela formulario_elemento
*/

/* CRIACAO DAS FUNCOES */

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


/* CRIACAO DAS TABELAS */

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

create table template (
	id int identity (1, 1) not null ,
	id_categoria int not null ,
	nome varchar (100) collate latin1_general_ci_ai not null ,
	descricao varchar (2000) collate latin1_general_ci_ai null ,
	stylesheet_full_filename varchar(300) collate latin1_general_ci_ai null ,
	javascript_full_filename varchar(300) collate latin1_general_ci_ai null ,
	template varchar (2000) collate latin1_general_ci_ai null ,
	id_output integer not null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null 
) on [primary];

create table modulo (
	id int identity (1, 1) not null ,
	id_categoria int not null ,
	id_modulo_pai int null ,
	nome varchar (100) collate latin1_general_ci_ai not null ,
	descricao varchar (2000) collate latin1_general_ci_ai null ,
	versao varchar (200) collate latin1_general_ci_ai null ,
	path varchar (1000) collate latin1_general_ci_ai null ,
	instalado bit not null ,
	ativo bit not null ,
	data_depreciacao datetime null ,
	xml_autoria varchar (2000) not null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null
) on [primary];

create table modulo_formulario (
	id int identity (1, 1) not null ,
	id_modulo int not null ,
	id_formulario int not null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null
) on [primary];

create table modulo_perfil (
	id int identity (1, 1) not null ,
	id_modulo int not null ,
	id_perfil int not null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null
) on [primary];

create table formulario_elemento (
	id int identity (1, 1) not null ,
	id_categoria int not null ,
	id_ajuda int null ,
    id_formulario_elemento_filter int null ,
    id_decorator int null ,
	nome varchar (100) collate latin1_general_ci_ai not null ,
	descricao varchar (2000) collate latin1_general_ci_ai null ,
	constante_textual_label varchar (200) collate latin1_general_ci_ai null ,
	element_name varchar (100) collate latin1_general_ci_ai not null ,
	element_attribs varchar (1000) collate latin1_general_ci_ai null ,
	element varchar (1000) collate latin1_general_ci_ai not null ,
	element_reloadable bit not null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null 
) on [primary];

create table formulario_elemento_validator (
	id int identity (1, 1) not null ,
	id_categoria int not null ,
	nome varchar (100) collate latin1_general_ci_ai not null ,
	descricao varchar (2000) collate latin1_general_ci_ai null ,
	validator varchar (1000) collate latin1_general_ci_ai not null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null 
) on [primary];

create table formulario_elemento_filter (
    id int identity (1, 1) not null ,
    id_categoria int not null ,
	nome varchar (100) collate latin1_general_ci_ai not null ,
	descricao varchar (2000) collate latin1_general_ci_ai null ,
	filter varchar (1000) collate latin1_general_ci_ai not null ,
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
	form_target varchar (100) collate latin1_general_ci_ai null ,
	form_enctype varchar (100) collate latin1_general_ci_ai null ,
	form_attribs varchar (1000) collate latin1_general_ci_ai null ,
	validade_inicio datetime null ,
	validade_termino datetime null ,
	data_desativacao datetime null ,
	data_auto_reativar datetime null ,
	motivo_desativacao varchar (1000) collate latin1_general_ci_ai null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null 
) on [primary];

create table formulario_formulario_elemento (
	id int identity (1, 1) not null ,
	id_formulario int not null ,
	id_formulario_elemento int not null ,
	element_required bit not null ,
	ordem int not null ,	
	rowinfo varchar (2000) collate latin1_general_ci_ai not null 
) on [primary];

create table formulario_elemento_formulario_elemento_validator (
	id int identity (1, 1) not null ,
	id_formulario_elemento int not null ,
	id_formulario_elemento_validator int not null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null 
) on [primary];

create table formulario_perfil (
	id int identity (1, 1) not null ,
	id_formulario int not null ,
	id_perfil int not null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null 
) on [primary];


/* CRIACAO DAS CHAVES PRIMARIAS */

alter table decorator with nocheck add constraint pk_decorator primary key clustered (id) on [primary];

alter table ajuda with nocheck add constraint pk_ajuda primary key clustered (id) on [primary];

alter table output with nocheck add constraint pk_output primary key clustered (id) on [primary];

alter table template with nocheck add constraint pk_template primary key clustered (id) on [primary];

alter table modulo with nocheck add constraint pk_modulo primary key clustered (id) on [primary];

alter table modulo_formulario with nocheck add constraint pk_modulo_formulario primary key clustered (id) on [primary];

alter table modulo_perfil with nocheck add constraint pk_modulo_perfil primary key clustered (id) on [primary];

alter table formulario_elemento with nocheck add constraint pk_formulario_elemento primary key clustered (id) on [primary];

alter table formulario_elemento_validator with nocheck add constraint pk_formulario_elemento_validator primary key clustered (id) on [primary];

alter table formulario_elemento_filter with nocheck add constraint pk_formulario_elemento_filter primary key clustered (id) on [primary];

alter table formulario with nocheck add constraint pk_formulario primary key clustered (id) on [primary];

alter table formulario_formulario_elemento with nocheck add constraint pk_formulario_formulario_elemento primary key clustered (id) on [primary];

alter table formulario_elemento_formulario_elemento_validator with nocheck add constraint pk_formulario_elemento_formulario_elemento_validator primary key clustered (id) on [primary];

alter table formulario_perfil with nocheck add constraint pk_formulario_perfil primary key (id) on [primary];


/* CRIACAO DOS VALORES DEFAULT */

alter table modulo add
	constraint df_modulo_instalado default 0 for instalado,
	constraint df_modulo_ativo default 0 for ativo;

alter table formulario add 
	constraint df_formulario_validade_inicio default (getdate()) for validade_inicio;

alter table formulario_elemento add
	constraint df_formulario_elemento_element_realoadable default 0 for element_reloadable;


/* CRIACAO DOS INDICES */

create index ix_decorator_nome on decorator (nome) on [primary];

create index ix_ajuda_nome on ajuda (nome) on [primary];

create index ix_output_nome on output (nome) on [primary];

create index ix_template_nome on template (nome) on [primary];

create index ix_modulo_nome on modulo (nome) on [primary];

create index ix_formulario_elemento_nome on formulario_elemento (nome) on [primary];

create index ix_formulario_elemento_validator_nome on formulario_elemento_validator (nome) on [primary];

create index ix_formulario_elemento_filter_nome on formulario_elemento_filter (nome) on [primary];

create index ix_formulario_nome on formulario (nome) on [primary];

create unique index ix_formulario_form_name on formulario (form_name) on [primary];


/* CRIACAO DAS CONSTRAINTS UNIQUE */

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

alter table template add
	constraint ix_template_categoria_nome unique nonclustered
	(
		id_categoria,
		nome
	) on [primary];

alter table modulo add
	constraint ix_modulo_categoria_nome unique nonclustered
	(
		id_categoria,
		nome
	) on [primary];

alter table modulo_formulario add
	constraint ix_modulo_formulario_modulo_formulario unique nonclustered
	(
		id_modulo,
		id_formulario
	) on [primary];

alter table modulo_perfil add
	constraint ix_modulo_perfil_modulo_perfil unique nonclustered
	(
		id_modulo,
		id_perfil
	) on [primary];

alter table formulario_elemento add
	constraint ix_formulario_elemento_categoria_nome unique nonclustered
	(
		id_categoria,
		nome
	) on [primary];

alter table formulario_elemento_validator add
	constraint ix_formulario_elemento_validator_categoria_nome unique nonclustered
	(
		id_categoria,
		nome
	) on [primary];

alter table formulario_elemento_filter add
	constraint ix_formulario_elemento_filter_categoria_nome unique nonclustered
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

alter table formulario_elemento_formulario_elemento_validator add
    constraint ix_formulario_elemento_formulario_elemento_validator_formulario_elemento_formulario_elemento_validator unique nonclustered
    (
        id_formulario_elemento,
        id_formulario_elemento_validator
    ) on [primary];

alter table formulario_perfil add
	constraint ix_formulario_perfil_formulario_perfil unique nonclustered
	(
		id_formulario,
		id_perfil
	) on [primary];


/* CRIACAO DAS CHAVES ESTRANGEIRAS */

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

alter table template add
	constraint fk_template_categoria foreign key
	(
		id_categoria
	) references categoria (
		id
	),
	constraint fk_template_output foreign key
	(
		id_output
	) references output (
		id
	);

alter table modulo add
	constraint fk_modulo_categoria foreign key
	(
		id_categoria
	) references categoria (
		id
	),
	constraint fk_modulo_id_modulo_pai foreign key
	(
		id_modulo_pai
	) references modulo (
		id
	);

alter table modulo_formulario add
	constraint fk_modulo_formulario_modulo foreign key
	(
		id_modulo
	) references modulo (
		id
	),
	constraint fk_modulo_formulario_formulario foreign key
	(
		id_formulario
	) references formulario (
		id
	);

alter table modulo_perfil add
	constraint fk_modulo_perfil_modulo foreign key
	(
		id_modulo
	) references modulo (
		id
	),
	constraint fk_modulo_perfil_perfil foreign key
	(
		id_perfil
	) references perfil (
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
	),
    constraint fk_formulario_elemento_formulario_elemento_filter foreign key
	(
		id_formulario_elemento_filter
	) references formulario_elemento_filter (
		id
	),
	constraint fk_formulario_elemento_decorator foreign key
	(
		id_decorator
	) references decorator (
		id
	);

alter table formulario_elemento_validator add
	constraint fk_formulario_elemento_validator_categoria foreign key
	(
		id_categoria
	) references categoria (
		id
	);

alter table formulario_elemento_filter add
	constraint fk_formulario_elemento_filter_categoria foreign key
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

alter table formulario_elemento_formulario_elemento_validator add 
	constraint fk_formulario_elemento_formulario_elemento_validator_formulario_elemento foreign key 
	(
		id_formulario_elemento
	) references formulario_elemento (
		id
	),
	constraint fk_formulario_elemento_formulario_elemento_validator_formulario_elemento_validator foreign key 
	(
		id_formulario_elemento_validator
	) references formulario_elemento_validator (
		id
	);

alter table formulario_perfil add
	constraint fk_formulario_perfil_formulario foreign key
	(
		id_formulario
	) references formulario (
		id
	),
	constraint fk_formulario_perfil_perfil foreign key
	(
		id_perfil
	) references perfil (
		id
	);


/* CRIACAO DOS CHECK CONSTRAINTS */

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