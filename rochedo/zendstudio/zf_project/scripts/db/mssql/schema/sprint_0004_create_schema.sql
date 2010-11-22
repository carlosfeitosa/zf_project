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
* 					    13/07/2010 - adicao do campo element_reloadable na tabela formulario_elemento;
* 						14/03/2010 - adicao do campo id_decorator na tabela formulario_elemento;
* 						23/07/2010 - criacao da tabela template_formulario;
* 						02/08/2010 - modificacao da chamada a funcao fn_CheckConstanteTextualExists,
* 									 permitindo que a variavel @constante_textual seja nula;
* 								   - modificacao nos campos form_method e form_action da tabela
* 									 formulario, permitindo que os mesmos sejam nulos;
* 								   - criacao do campo "versao" na tabela "formulario";
* 						16/08/2010 - criacao da tabela formulario_formulario_elemento_formulario;
* 						10/09/2010 - remocao do campo "versao" da tabela "formulario";
* 						14/09/2010 - criacao da tabela "componente";
* 						14/09/2010 - criacao do campo (e associacoes) "id_componente" na tabela
* 									 "formulario_elemento";
* 						14/10/2010 - criacao do campo ordem no formulario;
* 						14/10/2010 - desobrigatoriedade de escolha de hint para ajuda;
* 						18/10/2010 - criacao da tabela grupo_formulario_elemento;
* 								   - associacao de formulario_formulario_elemento com grupo_formulario_elemento
* 									 e decorator;
* 						29/10/2010 - remocao do script de criacao da tabela "modulo" para inclusao no sprint 0001;
* 						03/11/2010 - adicao do campo "ordem" no contraint unique da tabela "formulario_formulario_elemento";
*/


/* CRIACAO DAS TABELAS */

create table dbo.decorator (
	id int identity (1, 1) not null ,
	id_categoria int not null ,
	nome varchar (100) collate latin1_general_ci_ai not null ,
	descricao varchar (2000) collate latin1_general_ci_ai null ,
	decorator varchar (1000) collate latin1_general_ci_ai null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null 
) on [primary];

create table dbo.ajuda (
	id int identity (1, 1) not null ,
	id_categoria int not null ,
	nome varchar (100) collate latin1_general_ci_ai not null ,
	descricao varchar (2000) collate latin1_general_ci_ai null ,
	constante_textual_ajuda varchar (200) collate latin1_general_ci_ai not null ,
	constante_textual_hint varchar (200) collate latin1_general_ci_ai null ,
	url varchar(300) collate latin1_general_ci_ai null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null 
) on [primary];

create table dbo.output (
	id int identity (1, 1) not null ,
	id_categoria int not null ,
	nome varchar (100) collate latin1_general_ci_ai not null ,
	descricao varchar (2000) collate latin1_general_ci_ai null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null
) on [primary];

create table dbo.template (
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

create table dbo.modulo_formulario (
	id int identity (1, 1) not null ,
	id_modulo int not null ,
	id_formulario int not null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null
) on [primary];

create table dbo.modulo_perfil (
	id int identity (1, 1) not null ,
	id_modulo int not null ,
	id_perfil int not null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null
) on [primary];

create table dbo.template_formulario (
	id int identity (1, 1) not null ,
	id_formulario int not null ,
	id_template int not null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null
) on [primary];

create table dbo.formulario_elemento (
	id int identity (1, 1) not null ,
	id_categoria int not null ,
	id_ajuda int null ,
    id_formulario_elemento_filter int null ,
    id_decorator int null ,
    id_componente int not null ,
	nome varchar (100) collate latin1_general_ci_ai not null ,
	descricao varchar (2000) collate latin1_general_ci_ai null ,
	constante_textual_label varchar (200) collate latin1_general_ci_ai null ,
	element_name varchar (100) collate latin1_general_ci_ai not null ,
	element_attribs varchar (1000) collate latin1_general_ci_ai null ,
	element varchar (1000) collate latin1_general_ci_ai not null ,
	element_reloadable bit not null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null 
) on [primary];

create table dbo.formulario_elemento_validator (
	id int identity (1, 1) not null ,
	id_categoria int not null ,
	nome varchar (100) collate latin1_general_ci_ai not null ,
	descricao varchar (2000) collate latin1_general_ci_ai null ,
	validator varchar (1000) collate latin1_general_ci_ai not null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null 
) on [primary];

create table dbo.formulario_elemento_filter (
    id int identity (1, 1) not null ,
    id_categoria int not null ,
	nome varchar (100) collate latin1_general_ci_ai not null ,
	descricao varchar (2000) collate latin1_general_ci_ai null ,
	filter varchar (1000) collate latin1_general_ci_ai not null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null
) on [primary];

create table dbo.formulario (
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
	form_method varchar (100) collate latin1_general_ci_ai null ,
	form_action varchar (100) collate latin1_general_ci_ai null ,
	form_target varchar (100) collate latin1_general_ci_ai null ,
	form_enctype varchar (100) collate latin1_general_ci_ai null ,
	form_attribs varchar (1000) collate latin1_general_ci_ai null ,
	validade_inicio datetime null ,
	validade_termino datetime null ,
	data_desativacao datetime null ,
	data_auto_reativar datetime null ,
	motivo_desativacao varchar (1000) collate latin1_general_ci_ai null ,
	ordem int null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null 
) on [primary];

create table dbo.formulario_formulario_elemento (
	id int identity (1, 1) not null ,
	id_formulario int not null ,
	id_formulario_elemento int not null ,
	id_decorator int null ,
	id_grupo_formulario_elemento int null ,
	element_required bit not null ,
	ordem int not null ,	
	rowinfo varchar (2000) collate latin1_general_ci_ai not null 
) on [primary];

create table dbo.formulario_elemento_formulario_elemento_validator (
	id int identity (1, 1) not null ,
	id_formulario_elemento int not null ,
	id_formulario_elemento_validator int not null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null 
) on [primary];

create table dbo.formulario_perfil (
	id int identity (1, 1) not null ,
	id_formulario int not null ,
	id_perfil int not null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null 
) on [primary];

create table dbo.formulario_formulario_elemento_formulario (
	id int identity (1, 1) not null ,
	id_formulario_formulario_elemento int not null ,
	id_formulario int not null ,
	constante_textual_label varchar (200) collate latin1_general_ci_ai null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null
) on [primary];

create table dbo.componente (
	id int identity (1, 1) not null ,
	id_categoria int not null ,
	id_template int null ,
	nome varchar (100) collate latin1_general_ci_ai not null ,
	descricao varchar (2000) collate latin1_general_ci_ai null ,
	componente varchar (1000) collate latin1_general_ci_ai not null ,
	validade_inicio datetime null ,
	validade_termino datetime null ,
	data_desativacao datetime null ,
	data_auto_reativar datetime null ,
	motivo_desativacao varchar (1000) collate latin1_general_ci_ai null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null
) on [primary];

create table dbo.grupo_formulario_elemento (
	id int identity (1, 1) not null ,
	id_decorator int null ,
	nome varchar (100) not null ,
	descricao varchar (2000) null ,
	constante_textual_label varchar (200) null,
	rowinfo varchar (2000) not null
) on [primary];


/* CRIACAO DAS CHAVES PRIMARIAS */

alter table dbo.decorator with nocheck add constraint pk_decorator primary key clustered (id) on [primary];

alter table dbo.ajuda with nocheck add constraint pk_ajuda primary key clustered (id) on [primary];

alter table dbo.output with nocheck add constraint pk_output primary key clustered (id) on [primary];

alter table dbo.template with nocheck add constraint pk_template primary key clustered (id) on [primary];

alter table dbo.modulo_formulario with nocheck add constraint pk_modulo_formulario primary key clustered (id) on [primary];

alter table dbo.modulo_perfil with nocheck add constraint pk_modulo_perfil primary key clustered (id) on [primary];

alter table dbo.template_formulario with nocheck add constraint pk_template_formulario primary key clustered (id) on [primary];

alter table dbo.formulario_elemento with nocheck add constraint pk_formulario_elemento primary key clustered (id) on [primary];

alter table dbo.formulario_elemento_validator with nocheck add constraint pk_formulario_elemento_validator primary key clustered (id) on [primary];

alter table dbo.formulario_elemento_filter with nocheck add constraint pk_formulario_elemento_filter primary key clustered (id) on [primary];

alter table dbo.formulario with nocheck add constraint pk_formulario primary key clustered (id) on [primary];

alter table dbo.formulario_formulario_elemento with nocheck add constraint pk_formulario_formulario_elemento primary key clustered (id) on [primary];

alter table dbo.formulario_elemento_formulario_elemento_validator with nocheck add constraint pk_formulario_elemento_formulario_elemento_validator primary key clustered (id) on [primary];

alter table dbo.formulario_perfil with nocheck add constraint pk_formulario_perfil primary key (id) on [primary];

alter table dbo.formulario_formulario_elemento_formulario with nocheck add constraint pk_formulario_formulario_elemento_formulario primary key (id) on [primary];

alter table dbo.componente with nocheck add constraint pk_componente primary key (id) on [primary];

alter table dbo.grupo_formulario_elemento with nocheck add constraint pk_grupo_formulario_elemento primary key (id) on [primary];


/* CRIACAO DOS VALORES DEFAULT */

alter table dbo.formulario add 
	constraint df_formulario_validade_inicio default (getdate()) for validade_inicio;

alter table dbo.formulario_elemento add
	constraint df_formulario_elemento_element_realoadable default 0 for element_reloadable;

alter table dbo.componente add
	constraint df_componente_validade_inicio default (getdate()) for validade_inicio;


/* CRIACAO DOS INDICES */

create index ix_decorator_nome on dbo.decorator (nome) on [primary];

create index ix_ajuda_nome on dbo.ajuda (nome) on [primary];

create index ix_output_nome on dbo.output (nome) on [primary];

create index ix_template_nome on dbo.template (nome) on [primary];

create index ix_formulario_elemento_nome on dbo.formulario_elemento (nome) on [primary];

create index ix_formulario_elemento_validator_nome on dbo.formulario_elemento_validator (nome) on [primary];

create index ix_formulario_elemento_filter_nome on dbo.formulario_elemento_filter (nome) on [primary];

create index ix_formulario_nome on dbo.formulario (nome) on [primary];

create unique index ix_formulario_form_name on dbo.formulario (form_name) on [primary];

create unique index ix_componente_nome on dbo.componente (nome) on [primary];


/* CRIACAO DAS CONSTRAINTS UNIQUE */

alter table dbo.decorator add
	constraint ix_decorator_categoria_nome unique nonclustered
	(
		id_categoria,
		nome
	) on [primary];

alter table dbo.ajuda add
	constraint ix_ajuda_categoria_nome unique nonclustered
	(
		id_categoria,
		nome
	) on [primary];
	
alter table dbo.output add
	constraint ix_output_categoria_nome unique nonclustered
	(
		id_categoria,
		nome
	) on [primary];

alter table dbo.template add
	constraint ix_template_categoria_nome unique nonclustered
	(
		id_categoria,
		nome
	) on [primary];

alter table dbo.modulo_formulario add
	constraint ix_modulo_formulario_modulo_formulario unique nonclustered
	(
		id_modulo,
		id_formulario
	) on [primary];

alter table dbo.modulo_perfil add
	constraint ix_modulo_perfil_modulo_perfil unique nonclustered
	(
		id_modulo,
		id_perfil
	) on [primary];

alter table dbo.template_formulario add
	constraint ix_template_formulario_template_formulario unique nonclustered
	(
		id_formulario,
		id_template
	) on [primary];

alter table dbo.formulario_elemento add
	constraint ix_formulario_elemento_categoria_nome unique nonclustered
	(
		id_categoria,
		nome
	) on [primary];

alter table dbo.formulario_elemento_validator add
	constraint ix_formulario_elemento_validator_categoria_nome unique nonclustered
	(
		id_categoria,
		nome
	) on [primary];

alter table dbo.formulario_elemento_filter add
	constraint ix_formulario_elemento_filter_categoria_nome unique nonclustered
	(
		id_categoria,
		nome
	) on [primary];

alter table dbo.formulario add
    constraint ix_formulario_categoria_nome unique nonclustered
    (
        id_categoria,
        nome
    ) on [primary];

alter table dbo.formulario_formulario_elemento add
    constraint ix_formulario_formulario_elemento_formulario_formulario_elemento_ordem unique nonclustered
    (
        id_formulario,
        id_formulario_elemento,
        ordem
    ) on [primary];

alter table dbo.formulario_elemento_formulario_elemento_validator add
    constraint ix_formulario_elemento_formulario_elemento_validator_formulario_elemento_formulario_elemento_validator unique nonclustered
    (
        id_formulario_elemento,
        id_formulario_elemento_validator
    ) on [primary];

alter table dbo.formulario_perfil add
	constraint ix_formulario_perfil_formulario_perfil unique nonclustered
	(
		id_formulario,
		id_perfil
	) on [primary];

alter table dbo.formulario_formulario_elemento_formulario add
	constraint ix_formulario_formulario_elemento_formulario_formulario_formulario_elemento_formulario unique nonclustered
	(
		id_formulario_formulario_elemento
	) on [primary];

alter table dbo.componente add
	constraint ix_componente_categoria_componente unique nonclustered
	(
		id_categoria,
		nome
	) on [primary];


/* CRIACAO DAS CHAVES ESTRANGEIRAS */

alter table dbo.decorator add
	constraint fk_decorator_categoria foreign key
	(
		id_categoria
	) references dbo.categoria (
		id
	);

alter table dbo.ajuda add
	constraint fk_ajuda_categoria foreign key
	(
		id_categoria
	) references dbo.categoria (
		id
	);

alter table dbo.output add
	constraint fk_output_categoria foreign key
	(
		id_categoria
	) references dbo.categoria (
		id
	);

alter table dbo.template add
	constraint fk_template_categoria foreign key
	(
		id_categoria
	) references dbo.categoria (
		id
	),
	constraint fk_template_output foreign key
	(
		id_output
	) references dbo.output (
		id
	);

alter table dbo.modulo_formulario add
	constraint fk_modulo_formulario_modulo foreign key
	(
		id_modulo
	) references dbo.modulo (
		id
	),
	constraint fk_modulo_formulario_formulario foreign key
	(
		id_formulario
	) references dbo.formulario (
		id
	);

alter table dbo.modulo_perfil add
	constraint fk_modulo_perfil_modulo foreign key
	(
		id_modulo
	) references dbo.modulo (
		id
	),
	constraint fk_modulo_perfil_perfil foreign key
	(
		id_perfil
	) references dbo.perfil (
		id
	);

alter table dbo.template_formulario add
	constraint fk_template_formulario_formulario foreign key
	(
		id_formulario
	) references dbo.formulario (
		id
	),
	constraint fk_template_formulario_template foreign key
	(
		id_template
	) references dbo.template (
		id
	);

alter table dbo.formulario_elemento add
	constraint fk_formulario_elemento_categoria foreign key
	(
		id_categoria
	) references dbo.categoria (
		id
	),
	constraint fk_formulario_elemento_ajuda foreign key
	(
		id_ajuda
	) references dbo.ajuda (
		id
	),
    constraint fk_formulario_elemento_formulario_elemento_filter foreign key
	(
		id_formulario_elemento_filter
	) references dbo.formulario_elemento_filter (
		id
	),
	constraint fk_formulario_elemento_decorator foreign key
	(
		id_decorator
	) references dbo.decorator (
		id
	),
	constraint fk_formulario_elemento_componente foreign key
	(
		id_componente
	) references dbo.componente (
		id
	);

alter table dbo.formulario_elemento_validator add
	constraint fk_formulario_elemento_validator_categoria foreign key
	(
		id_categoria
	) references dbo.categoria (
		id
	);

alter table dbo.formulario_elemento_filter add
	constraint fk_formulario_elemento_filter_categoria foreign key
	(
		id_categoria
	) references dbo.categoria (
		id
	);
	
alter table dbo.formulario add 
	constraint fk_formulario_categoria foreign key 
	(
		id_categoria
	) references dbo.categoria (
		id
	),
	constraint fk_categoria_decorator foreign key 
	(
		id_decorator
	) references dbo.decorator (
		id
	),
	constraint fk_categoria_ajuda foreign key 
	(
		id_ajuda
	) references dbo.ajuda (
		id
	),
	constraint fk_formulario_formulario foreign key 
	(
		id_formulario_pai
	) references dbo.formulario (
		id
	);

alter table dbo.formulario_formulario_elemento add 
	constraint fk_formulario_formulario_elemento_formulario foreign key 
	(
		id_formulario
	) references dbo.formulario (
		id
	),
	constraint fk_formulario_formulario_elemento_formulario_elemento foreign key 
	(
		id_formulario_elemento
	) references dbo.formulario_elemento (
		id
	),
	constraint fk_formulario_formulario_elemento_decorator foreign key
	(
		id_decorator
	) references decorator (
		id
	),
	constraint fk_formulario_formulario_elemento_grupo_formulario_elemento foreign key
	(
		id_grupo_formulario_elemento
	) references grupo_formulario_elemento (
		id
	);

alter table dbo.formulario_elemento_formulario_elemento_validator add 
	constraint fk_formulario_elemento_formulario_elemento_validator_formulario_elemento foreign key 
	(
		id_formulario_elemento
	) references dbo.formulario_elemento (
		id
	),
	constraint fk_formulario_elemento_formulario_elemento_validator_formulario_elemento_validator foreign key 
	(
		id_formulario_elemento_validator
	) references dbo.formulario_elemento_validator (
		id
	);

alter table dbo.formulario_perfil add
	constraint fk_formulario_perfil_formulario foreign key
	(
		id_formulario
	) references dbo.formulario (
		id
	),
	constraint fk_formulario_perfil_perfil foreign key
	(
		id_perfil
	) references dbo.perfil (
		id
	);

alter table dbo.formulario_formulario_elemento_formulario add
	constraint fk_formulario_formulario_elemento_formulario_formulario_elemento foreign key
	(
		id_formulario_formulario_elemento
	) references dbo.formulario_formulario_elemento (
		id
	),
	constraint fk_formulario_formulario_elemento_formulario_formulario foreign key
	(
		id_formulario
	) references dbo.formulario (
		id
	);
	
alter table dbo.componente add
	constraint fk_componente_categoria foreign key
	(
		id_categoria
	) references dbo.categoria (
		id
	),
	constraint fk_componente_template foreign key
	(
		id_template
	) references dbo.template (
		id
	);

alter table grupo_formulario_elemento add
	constraint fk_grupo_formulario_elemento_decorator foreign key
	(
		id_decorator
	) references decorator (
		id
	);


/* CRIACAO DOS CHECK CONSTRAINTS */

alter table dbo.grupo_formulario_elemento add
    constraint ck_grupo_formulario_elemento_constante_textual_label check
    (constante_textual_label is null or (dbo.fn_CheckConstanteTextualExists(constante_textual_label) is not null));

alter table dbo.ajuda add
    constraint ck_ajuda_constante_textual_ajuda check
    (constante_textual_ajuda is null or (dbo.fn_CheckConstanteTextualExists(constante_textual_ajuda) is not null));

alter table dbo.ajuda add
    constraint ck_ajuda_constante_textual_hint check
    (constante_textual_hint is null or (dbo.fn_CheckConstanteTextualExists(constante_textual_hint) is not null));

alter table dbo.formulario add
	constraint ck_formulario_constante_textual_titulo check
	(constante_textual_titulo is null or (dbo.fn_CheckConstanteTextualExists(constante_textual_titulo) is not null));

alter table dbo.formulario add
	constraint ck_formulario_constante_textual_subtitulo check
	(constante_textual_subtitulo is null or (dbo.fn_CheckConstanteTextualExists(constante_textual_subtitulo) is not null));

alter table dbo.formulario_elemento add
	constraint ck_formulario_elemento_constante_textual_label check
	((constante_textual_label is null) or (dbo.fn_CheckConstanteTextualExists(constante_textual_label) is not null));

alter table dbo.formulario_formulario_elemento_formulario add
	constraint ck_formulario_formulario_elemento_formulario_constante_textual_label check
	(constante_textual_label is null or (dbo.fn_CheckConstanteTextualExists(constante_textual_label) is not null));