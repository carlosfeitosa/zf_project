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
* 						16/08/2010 - criacao da tabela formularios_formularios_elementos_formulario;
* 						10/09/2010 - remocao do campo "versao" da tabela "formulario";
* 						14/09/2010 - criacao da tabela "componente";
* 						14/09/2010 - criacao do campo (e associacoes) "id_componente" na tabela
* 									 "formulario_elemento";
* 						14/10/2010 - criacao do campo ordem no formulario;
* 						14/10/2010 - desobrigatoriedade de escolha de hint para ajuda;
* 						18/10/2010 - criacao da tabela grupo_formulario_elemento;
* 								   - associacao de formularios_formularios_elementos com grupo_formulario_elemento
* 									 e decorator;
* 						29/10/2010 - remocao do script de criacao da tabela "modulo" para inclusao no sprint 0001;
* 						03/11/2010 - adicao do campo "ordem" no contraint unique da tabela "formularios_formularios_elementos";
* 						07/04/2011 - remocao da criacao da tabela "formulario_perfil" - descontinuado;
* 						18/04/2011 - aumento do tamano do campo validador da tabela formulario_elemento_validator para 2000 caracteres;
* 						12/05/2011 - criacao do campo "options" na tabela formularios_elementos_formularios_elementos_validators;
* 						01/11/2011 - criacao do campo "element_name" na tabela formularios_formularios_elementos;
* 						18/11/2011 - criacao das tabelas(chaves, valores defautl, unique, indices etc) de relacionamento de filter, decorator, validator e evento_elemento com  formulario_elemento e formularios_formularios_elementos;
*/


/* CRIACAO DAS TABELAS */

create table basico_formulario.decorator (
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

create table basico_formulario.elemento (
	id int identity (1, 1) not null ,
	id_categoria int not null ,
	id_mascara int null ,
	id_ajuda int null ,
    id_componente int not null,
	nome varchar (200) collate latin1_general_ci_ai not null ,
	descricao varchar (2000) collate latin1_general_ci_ai null ,
	constante_textual_label varchar (200) collate latin1_general_ci_ai null ,
	element_name varchar (100) collate latin1_general_ci_ai not null ,
	element_attribs varchar (1000) collate latin1_general_ci_ai null ,
	element varchar (2000) collate latin1_general_ci_ai not null ,
	element_reloadable bit not null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null 
) on [primary];

create table basico.validator (
	id int identity (1, 1) not null ,
	id_categoria int not null ,
	nome varchar (100) collate latin1_general_ci_ai not null ,
	descricao varchar (2000) collate latin1_general_ci_ai null ,
	validator varchar (2000) collate latin1_general_ci_ai not null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null 
) on [primary];

create table basico.filter (
    id int identity (1, 1) not null ,
    id_categoria int not null ,
	nome varchar (100) collate latin1_general_ci_ai not null ,
	descricao varchar (2000) collate latin1_general_ci_ai null ,
	filter varchar (1000) collate latin1_general_ci_ai not null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null
) on [primary];

create table basico.formulario (
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
	permite_rascunho bit not null,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null 
) on [primary];

create table basico_formulario.assoccl_elemento (
	id int identity (1, 1) not null ,
	id_ajuda int null ,
	id_mascara int null ,
	id_formulario int not null ,
	id_formulario_elemento int not null ,
	id_grupo_formulario_elemento int null ,
	constante_textual_label varchar (200) collate latin1_general_ci_ai null ,
	element_name varchar (100) collate latin1_general_ci_ai null ,
	element_attribs varchar (1000) collate latin1_general_ci_ai null ,
	element_reloadable bit not null ,
	element_required bit not null ,
	ordem int not null ,	
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

create table dbo.formularios_elementos_formularios_elementos_validators (
	id int identity (1, 1) not null ,
	id_formulario_elemento int not null ,
	id_formulario_elemento_validator int not null ,
	validator_options varchar (2000) collate latin1_general_ci_ai null ,
	datahora_criacao datetime not null ,
	datahora_ultima_atualizacao datetime not null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null 
) on [primary];

create table dbo.formularios_elementos_formularios_elementos_filters (
	id int identity (1, 1) not null ,
	id_formulario_elemento int not null ,
	id_formulario_elemento_filter int not null ,
	datahora_criacao datetime not null ,
	datahora_ultima_atualizacao datetime not null ,
 	rowinfo varchar (2000) collate latin1_general_ci_ai not null
) on [primary];

create table basico_formulario_elemento.assoccl_decorator (
	id int identity (1, 1) not null ,
	id_formulario_elemento int not null ,
	id_decorator int not null ,
	datahora_criacao datetime not null ,
	datahora_ultima_atualizacao datetime not null ,
 	rowinfo varchar (2000) collate latin1_general_ci_ai not null
) on [primary];

create table dbo.formularios_formularios_elementos_formularios_elementos_validators (
	id int identity (1, 1) not null ,
	id_formularios_formularios_elementos int not null ,
	id_formulario_elemento_validator int not null ,
	validator_options varchar (2000) collate latin1_general_ci_ai null ,
	datahora_criacao datetime not null ,
	datahora_ultima_atualizacao datetime not null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null 
) on [primary];

create table basico_form_form_elemento.assoccl_filter (
	id int identity (1, 1) not null ,
	id_formularios_formularios_elementos int not null ,
	id_formulario_elemento_filter int not null ,
	datahora_criacao datetime not null ,
	datahora_ultima_atualizacao datetime not null ,
 	rowinfo varchar (2000) collate latin1_general_ci_ai not null
) on [primary];

create table basico_form_form_elemento.assoccl_decorator (
	id int identity (1, 1) not null ,
	id_formularios_formularios_elementos int not null ,
	id_decorator int not null ,
	datahora_criacao datetime not null ,
	datahora_ultima_atualizacao datetime not null ,
 	rowinfo varchar (2000) collate latin1_general_ci_ai not null
) on [primary];

create table basico.evento (
	id int identity (1, 1) not null ,
	nome varchar (100) collate latin1_general_ci_ai not null ,
	evento varchar (100) collate latin1_general_ci_ai not null ,
	id_categoria int not null ,
	datahora_criacao datetime not null ,
	datahora_ultima_atualizacao datetime not null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null 
) on [primary];


create table basico_form_form_elemento.assoccl_evento (
	id int identity (1, 1) not null ,
	id_formularios_formularios_elementos int not null ,
	id_evento_elemento int not null ,
	id_categoria int not null ,
	uri varchar (2000) collate latin1_general_ci_ai not null ,
	datahora_criacao datetime not null ,
	datahora_ultima_atualizacao datetime not null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null 
) on [primary];

/* CRIACAO DAS CHAVES PRIMARIAS */

alter table basico_formulario.decorator with nocheck add constraint pk_decorator primary key clustered (id) on [primary];

alter table dbo.ajuda with nocheck add constraint pk_ajuda primary key clustered (id) on [primary];

alter table dbo.output with nocheck add constraint pk_output primary key clustered (id) on [primary];

alter table dbo.template with nocheck add constraint pk_template primary key clustered (id) on [primary];

alter table dbo.modulo_formulario with nocheck add constraint pk_modulo_formulario primary key clustered (id) on [primary];

alter table dbo.modulo_perfil with nocheck add constraint pk_modulo_perfil primary key clustered (id) on [primary];

alter table dbo.template_formulario with nocheck add constraint pk_template_formulario primary key clustered (id) on [primary];

alter table basico_formulario.elemento with nocheck add constraint pk_formulario_elemento primary key clustered (id) on [primary];

alter table basico.validator with nocheck add constraint pk_formulario_elemento_validator primary key clustered (id) on [primary];

alter table basico.filter with nocheck add constraint pk_formulario_elemento_filter primary key clustered (id) on [primary];

alter table basico.formulario with nocheck add constraint pk_formulario primary key clustered (id) on [primary];

alter table basico_formulario.assoccl_elemento with nocheck add constraint pk_formularios_formularios_elementos primary key clustered (id) on [primary];

alter table dbo.componente with nocheck add constraint pk_componente primary key (id) on [primary];

alter table dbo.grupo_formulario_elemento with nocheck add constraint pk_grupo_formulario_elemento primary key (id) on [primary];

alter table dbo.formularios_elementos_formularios_elementos_validators with nocheck add constraint pk_formularios_elementos_formularios_elementos_validators primary key clustered (id) on [primary];

alter table dbo.formularios_elementos_formularios_elementos_filters with nocheck add constraint pk_formularios_elementos_formularios_elementos_filters primary key clustered (id) on [primary];

alter table basico_formulario_elemento.assoccl_decorator with nocheck add constraint pk_formularios_elementos_decorators primary key clustered (id) on [primary];

alter table dbo.formularios_formularios_elementos_formularios_elementos_validators with nocheck add constraint pk_formularios_formularios_elementos_formularios_elementos_validators primary key clustered (id) on [primary];

alter table basico_form_form_elemento.assoccl_filter with nocheck add constraint pk_formularios_formularios_elementos_formularios_elementos_filters primary key clustered (id) on [primary];

alter table basico_form_form_elemento.assoccl_decorator with nocheck add constraint pk_formularios_formularios_elementos_decorators primary key clustered (id) on [primary];

alter table basico.evento with nocheck add constraint pk_evento_elemento primary key clustered (id) on [primary];

alter table basico_form_form_elemento.assoccl_evento with nocheck add constraint pk_formularios_formularios_elementos_eventos_elementos primary key clustered (id) on [primary];


/* CRIACAO DOS VALORES DEFAULT */

alter table basico.formulario add 
	constraint df_formulario_validade_inicio default (getdate()) for validade_inicio;
	
alter table basico.formulario add
	constraint df_formulario_datahora_criacao default (getdate()) for datahora_criacao;
	
alter table basico.formulario add 
	constraint df_formulario_permite_rascunho default 1 for permite_rascunho;

alter table basico_formulario.elemento add
	constraint df_formulario_elemento_element_realoadable default 0 for element_reloadable;
	
alter table basico_formulario.elemento add
	constraint df_formulario_elemento_datahora_criacao default (getdate()) for datahora_criacao;
	
alter table basico_formulario.assoccl_elemento add
	constraint df_formularios_formularios_elementos_element_realoadable default 0 for element_reloadable;
	
alter table basico_formulario.assoccl_elemento add
	constraint df_formularios_formularios_elementos_datahora_criacao default (getdate()) for datahora_criacao;

alter table dbo.componente add
	constraint df_componente_validade_inicio default (getdate()) for validade_inicio;

alter table dbo.formularios_elementos_formularios_elementos_validators add
	constraint df_formularios_elementos_formularios_elementos_validators_datahora_criacao default (getdate()) for datahora_criacao;

alter table dbo.formularios_elementos_formularios_elementos_filters add
	constraint df_formularios_elementos_formularios_elementos_filters_datahora_criacao default (getdate()) for datahora_criacao;

alter table basico_formulario_elemento.assoccl_decorator add
	constraint df_formularios_elementos_decorators_datahora_criacao default (getdate()) for datahora_criacao;

alter table dbo.formularios_formularios_elementos_formularios_elementos_validators add
	constraint df_formularios_formularios_elementos_formularios_elementos_validators_datahora_criacao default (getdate()) for datahora_criacao;

alter table basico_form_form_elemento.assoccl_filter add
	constraint df_formularios_formularios_elementos_formularios_elementos_filters_datahora_criacao default (getdate()) for datahora_criacao;

alter table basico_form_form_elemento.assoccl_decorator add
	constraint df_formularios_formularios_elementos_decorators_datahora_criacao default (getdate()) for datahora_criacao;

alter table basico.evento add
	constraint df_evento_elemento_datahora_criacao default (getdate()) for datahora_criacao;
	
alter table basico_form_form_elemento.assoccl_evento add
	constraint df_formularios_formularios_elementos_eventos_elementos_datahora_criacao default (getdate()) for datahora_criacao;	

/* CRIACAO DOS INDICES */

create index ix_decorator_nome on basico_formulario.decorator (nome) on [primary];

create index ix_ajuda_nome on dbo.ajuda (nome) on [primary];

create index ix_output_nome on dbo.output (nome) on [primary];

create index ix_template_nome on dbo.template (nome) on [primary];

create index ix_formulario_elemento_nome on basico_formulario.elemento (nome) on [primary];

create index ix_formularios_formularios_elementos_element_name on basico_formulario.assoccl_elemento (element_name) on [primary];

create index ix_formulario_elemento_validator_nome on basico.validator (nome) on [primary];

create index ix_formulario_elemento_filter_nome on basico.filter (nome) on [primary];

create index ix_formulario_nome on basico.formulario (nome) on [primary];

create unique index ix_formulario_form_name on basico.formulario (form_name) on [primary];

create unique index ix_componente_nome on dbo.componente (nome) on [primary];

create unique index ix_grupo_formulario_elemento_nome on dbo.grupo_formulario_elemento (nome) on [primary];

create unique index ix_evento_elemento_nome_evento on basico.evento (nome) on [primary];

create unique index ix_evento_elemento_evento_2 on basico.evento (evento) on [primary];

create unique index ix_formularios_formularios_elementos_eventos_elementos_uri on basico_form_form_elemento.assoccl_evento (uri) on [primary];


/* CRIACAO DAS CONSTRAINTS UNIQUE */

alter table basico_formulario.decorator add
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

alter table basico_formulario.elemento add
	constraint ix_formulario_elemento_categoria_nome unique nonclustered
	(
		id_categoria,
		nome
	) on [primary];

alter table basico.validator add
	constraint ix_formulario_elemento_validator_categoria_nome unique nonclustered
	(
		id_categoria,
		nome
	) on [primary];

alter table basico.filter add
	constraint ix_formulario_elemento_filter_categoria_nome unique nonclustered
	(
		id_categoria,
		nome
	) on [primary];

alter table basico.formulario add
    constraint ix_formulario_categoria_nome unique nonclustered
    (
        id_categoria,
        nome
    ) on [primary];

alter table basico_formulario.assoccl_elemento add
    constraint ix_formularios_formularios_elementos_formularios_formularios_elementos_ordem unique nonclustered
    (
        id_formulario,
        id_formulario_elemento,
        ordem
    ) on [primary];

alter table dbo.componente add
	constraint ix_componente_categoria_componente unique nonclustered
	(
		id_categoria,
		nome
	) on [primary];
	
alter table dbo.formularios_elementos_formularios_elementos_validators add
    constraint ix_formularios_elementos_formularios_elementos_validators_formulario_elemento_formulario_elemento_validator unique nonclustered
    (
        id_formulario_elemento,
        id_formulario_elemento_validator
    ) on [primary];

alter table dbo.formularios_elementos_formularios_elementos_filters add
    constraint ix_formularios_elementos_formularios_elementos_filters_formulario_elemento_formulario_elemento_filter unique nonclustered
    (
        id_formulario_elemento,
        id_formulario_elemento_filter
    ) on [primary];

alter table basico_formulario_elemento.assoccl_decorator add
    constraint ix_formularios_elementos_decorators_formulario_elemento_decorator unique nonclustered
    (
        id_formulario_elemento,
        id_decorator
    ) on [primary];

alter table dbo.formularios_formularios_elementos_formularios_elementos_validators add
    constraint ix_formularios_formularios_elementos_formularios_elementos_validators_formularios_formularios_elementos_formulario_elemento_validator unique nonclustered
    (
        id_formularios_formularios_elementos,
        id_formulario_elemento_validator
    ) on [primary];

alter table basico_form_form_elemento.assoccl_filter add
    constraint ix_formularios_formularios_elementos_formularios_elementos_filters_formularios_formularios_elementos_formulario_elemento_filter unique nonclustered
    (
        id_formularios_formularios_elementos,
        id_formulario_elemento_filter
    ) on [primary];
    
alter table dbo.formularios_formularios_elementos_decorator add
    constraint ix_formularios_formularios_elementos_decorators_formularios_formularios_elementos_decorator unique nonclustered
    (
        id_formularios_formularios_elementos,
        id_decorator
    ) on [primary];
    
alter table basico.evento add
	constraint ix_evento_elemento_nome unique nonclustered
	(
		nome
	) on [primary],
	
	constraint ix_evento_elemento_evento unique nonclustered
	(
		evento
	) on [primary];

	
alter table basico_form_form_elemento.assoccl_evento add
    constraint ix_formularios_formularios_elementos_eventos_elementos_formularios_formularios_elementos_evento_elemento unique nonclustered
    (
	   id_formularios_formularios_elementos, 
	   id_evento_elemento,
	   id_categoria,
	   uri
    ) on [primary];
    
    
/* CRIACAO DAS CHAVES ESTRANGEIRAS */

alter table basico_formulario.decorator add
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
	) references basico.formulario (
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
	) references basico.formulario (
		id
	),
	constraint fk_template_formulario_template foreign key
	(
		id_template
	) references dbo.template (
		id
	);

alter table basico_formulario.elemento add
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
	
	constraint fk_formulario_elemento_componente foreign key
	(
		id_componente
	) references dbo.componente (
		id
	),
	
	constraint fk_formulario_elemento_mascara foreign key
	(
		id_mascara
	) references dbo.mascara (
		id
	);

	
alter table basico.validator add
	constraint fk_formulario_elemento_validator_categoria foreign key
	(
		id_categoria
	) references dbo.categoria (
		id
	);

alter table basico.filter add
	constraint fk_formulario_elemento_filter_categoria foreign key
	(
		id_categoria
	) references dbo.categoria (
		id
	);
	
alter table basico.formulario add 
	constraint fk_formulario_categoria foreign key 
	(
		id_categoria
	) references dbo.categoria (
		id
	),
	constraint fk_categoria_decorator foreign key 
	(
		id_decorator
	) references basico_formulario.decorator (
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
	) references basico.formulario (
		id
	);

alter table basico_formulario.assoccl_elemento add 
	constraint fk_formularios_formularios_elementos_formulario foreign key 
	(
		id_formulario
	) references basico.formulario (
		id
	),
	constraint fk_formularios_formularios_elementos_formulario_elemento foreign key 
	(
		id_formulario_elemento
	) references basico_formulario.elemento (
		id
	),
	constraint fk_formularios_formularios_elementos_grupo_formulario_elemento foreign key
	(
		id_grupo_formulario_elemento
	) references grupo_formulario_elemento (
		id
	),
	constraint fk_formularios_formularios_elementos_mascara foreign key
	(
		id_mascara
	) references dbo.mascara (
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
	) references basico_formulario.decorator (
		id
	);
	
alter table dbo.formularios_elementos_formularios_elementos_validators add 
	constraint fk_formularios_elementos_formularios_elementos_validators_formulario_elemento foreign key 
	(
		id_formulario_elemento
	) references basico_formulario.elemento (
		id
	),
	constraint fk_formularios_elementos_formularios_elementos_validators_formulario_elemento_validator foreign key 
	(
		id_formulario_elemento_validator
	) references basico.validator (
		id
	);
	
alter table dbo.formularios_elementos_formularios_elementos_filters add 
	constraint fk_formularios_elementos_formularios_elementos_filters_formulario_elemento foreign key 
	(
		id_formulario_elemento
	) references basico_formulario.elemento (
		id
	),
	constraint fk_formularios_elementos_formularios_elementos_filters_formulario_elemento_filter foreign key 
	(
		id_formulario_elemento_filter
	) references basico.filter (
		id
	);
	
alter table basico_formulario_elemento.assoccl_decorator add 
	constraint fk_formularios_elementos_decorators_formulario_elemento foreign key 
	(
		id_formulario_elemento
	) references basico_formulario.elemento (
		id
	),
	constraint fk_formularios_elementos_decorators_decorator foreign key 
	(
		id_decorator
	) references basico_formulario.decorator (
		id
	);

alter table dbo.formularios_formularios_elementos_formularios_elementos_validators add 
	constraint fk_formularios_formularios_elementos_formularios_elementos_validators_formularios_formularios_elementos foreign key 
	(
		id_formularios_formularios_elementos
	) references basico_formulario.assoccl_elemento (
		id
	),
	constraint fk_formularios_formularios_elementos_formularios_elementos_validators_formulario_elemento_validator foreign key 
	(
		id_formulario_elemento_validator
	) references basico.validator (
		id
	);
	
alter table basico_form_form_elemento.assoccl_filter add 
	constraint fk_formularios_formularios_elementos_formularios_elementos_filters_formularios_formularios_elementos foreign key 
	(
		id_formularios_formularios_elementos
	) references basico_formulario.assoccl_elemento (
		id
	),
	constraint fk_formularios_formularios_elementos_formularios_elementos_filters_formulario_elemento_filter foreign key 
	(
		id_formulario_elemento_filter
	) references basico.filter (
		id
	);
	
alter table basico_form_form_elemento.assoccl_decorator add 
	constraint fk_formularios_formularios_elementos_decorators_formulario_elemento foreign key 
	(
		id_formularios_formularios_elementos
	) references basico_formulario.assoccl_elemento (
		id
	),
	constraint fk_formularios_formularios_elementos_decorators_decorator foreign key 
	(
		id_decorator
	) references basico_formulario.decorator (
		id
	);

alter table basico.evento add 
	constraint fk_evento_elemento_categoria foreign key 
	(
		id_categoria
	) references dbo.categoria (
		id
	);
	

alter table basico_form_form_elemento.assoccl_evento add 
	constraint fk_formularios_formularios_elementos_eventos_elementos_categoria foreign key 
	(
		id_categoria
	) references dbo.categoria (
		id
	),

	constraint fk_formularios_formularios_elementos_eventos_elementos_formularios_formularios_elementos foreign key 
	(
		id_formularios_formularios_elementos
	) references basico_formulario.assoccl_elemento (
		id
	),
	
	constraint fk_formularios_formularios_elementos_eventos_elementos_evento_elemento foreign key 
	(
		id_evento_elemento
	) references basico.evento (
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

alter table basico.formulario add
	constraint ck_formulario_constante_textual_titulo check
	(constante_textual_titulo is null or (dbo.fn_CheckConstanteTextualExists(constante_textual_titulo) is not null));

alter table basico.formulario add
	constraint ck_formulario_constante_textual_subtitulo check
	(constante_textual_subtitulo is null or (dbo.fn_CheckConstanteTextualExists(constante_textual_subtitulo) is not null));

alter table basico_formulario.elemento add
	constraint ck_formulario_elemento_constante_textual_label check
	((constante_textual_label is null) or (dbo.fn_CheckConstanteTextualExists(constante_textual_label) is not null));

alter table basico_formulario.assoccl_elemento add
	constraint ck_formularios_formularios_elementos_constante_textual_label check
	((constante_textual_label is null) or (dbo.fn_CheckConstanteTextualExists(constante_textual_label) is not null));
