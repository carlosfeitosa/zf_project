/*
* SCRIPT DE CRIACAO DAS TABELAS DO SPRINT 0004
* 
* versao: 1.0 (POSTGRESQL 8.4.1)
* por: CARLOS FEITOSA (carlos.feitosa@rochedoproject.com)
* criacao: 07/06/2010
* ultimas modificacoes:
*/

// CRIACAO DAS FUNCOES

create function fn_CheckConstanteTextualExists(character varying (200))
returns int as 
'select id from dicionario_expressao where constante_textual = $1 limit 1'
language 'sql';


// CRIACAO DAS TABELAS

create table decorator (
	id serial not null ,
	id_categoria int not null ,
	nome character varying (100) not null ,
	descricao character varying (2000) null ,
	decorator character varying (1000) null ,
	rowinfo character varying (2000) not null 
)
with (
  oids = false
);
alter table categoria owner to rochedo_user;

create table ajuda (
	id serial not null ,
	id_categoria int not null ,
	nome character varying (100) not null ,
	descricao character varying (2000) null ,
	constante_textual_ajuda character varying (200) not null ,
	constante_textual_hint character varying (200) not null ,
	url character varying(300) null ,
	rowinfo character varying (2000) not null 
)
with (
  oids = false
);
alter table categoria owner to rochedo_user;

create table output (
	id serial not null ,
	id_categoria int not null ,
	nome character varying (100) not null ,
	descricao character varying (2000) null ,
	rowinfo character varying (2000) not null
)
with (
  oids = false
);
alter table categoria owner to rochedo_user;

create table formulario_template (
	id serial not null ,
	id_categoria int not null ,
	nome character varying (100) not null ,
	descricao character varying (2000) null ,
	stylesheet_full_filename character varying(300) null ,
	javascript_full_filename character varying(300) null ,
	id_output integer not null ,
	rowinfo character varying (2000) not null 
)
with (
  oids = false
);
alter table categoria owner to rochedo_user;

create table formulario_elemento (
	id serial not null ,
	id_categoria int not null ,
	id_ajuda int null ,
	nome character varying (100) not null ,
	descricao character varying (2000) null ,
	constante_textual_label character varying (200) null ,
	element_name character varying (100) not null ,
	element character varying (1000) not null ,
	rowinfo character varying (2000) not null 
)
with (
  oids = false
);
alter table categoria owner to rochedo_user;

create table formulario_elemento_validador (
	id serial not null ,
	id_categoria int not null ,
	nome character varying (100) not null ,
	descricao character varying (2000) null ,
	validator character varying (1000) not null ,
	rowinfo character varying (2000) not null 
)
with (
  oids = false
);
alter table categoria owner to rochedo_user;

create table formulario (
	id serial not null ,
	id_categoria int not null ,
	id_decorator int null ,
	id_ajuda int null ,
	id_formulario_pai int null ,
	nome character varying (100) not null ,
	descricao character varying (2000) null ,
	constante_textual_titulo character varying (200) null ,
	constante_textual_subtitulo character varying (200) null ,
	form_name character varying (100) not null ,
	form_method character varying (100) not null ,
	form_action character varying (100) not null ,
	form_target character varying (100) null ,
	form_enctype character varying (100) null ,
	validade_inicio timestamp with time zone null ,
	validade_termino timestamp with time zone null ,
	data_desativacao timestamp with time zone null ,
	data_auto_reativar timestamp with time zone null ,
	motivo_desativacao character varying (2000) null ,
	rowinfo character varying (2000) not null 
)
with (
  oids = false
);
alter table categoria owner to rochedo_user;

create table formulario_formulario_elemento (
	id serial not null ,
	id_formulario int not null ,
	id_formulario_elemento int not null ,
	ordem int not null ,	
	rowinfo character varying (2000) not null 
)
with (
  oids = false
);
alter table categoria owner to rochedo_user;

create table formulario_elemento_formulario_elemento_validador (
	id serial not null ,
	id_formulario_elemento int not null ,
	id_formulario_elemento_validador int not null ,
	rowinfo character varying (2000) not null 
)
with (
  oids = false
);
alter table categoria owner to rochedo_user;


// CRIACAO DAS CHAVES PRIMARIAS

alter table decorator add constraint pk_decorator primary key (id);

alter table ajuda add constraint pk_ajuda primary key (id);

alter table output add constraint pk_output primary key (id);

alter table formulario_template add constraint pk_formulario_template primary key (id);

alter table formulario_elemento add constraint pk_formulario_elemento primary key (id);

alter table formulario_elemento_validador add constraint pk_formulario_elemento_validador primary key (id);

alter table formulario add constraint pk_formulario primary key (id);

alter table formulario_formulario_elemento add constraint pk_formulario_formulario_elemento primary key (id);

alter table formulario_elemento_formulario_elemento_validador add constraint pk_formulario_elemento_formulario_elemento_validador primary key (id);


// CRIACAO DOS VALORES DEFAULT

alter table formulario
    alter column validade_inicio set default (current_timestamp);


// CRIACAO DOS INDICES

create index ix_decorator_nome
  on decorator using btree (nome asc nulls last);

create index ix_ajuda_nome
  on ajuda using btree (nome asc nulls last);

create index ix_output_nome
  on output using btree (nome asc nulls last);

create index ix_formulario_template_nome
  on formulario_template using btree (nome asc nulls last);

create index ix_formulario_elemento_nome
  on formulario_elemento using btree (nome asc nulls last);

create index ix_formulario_elemento_validador_nome
  on formulario_elemento_validador using btree (nome asc nulls last);

create index ix_formulario_nome 
  on formulario using btree (nome asc nulls last);

create unique index ix_formulario_form_name
  on formulario using btree (form_name);


// CRIACAO DAS CONSTRAINTS UNIQUE

alter table decorator 
  add constraint ix_decorator_categoria_nome unique (id_categoria, nome);

alter table ajuda 
  add constraint ix_ajuda_categoria_nome unique (id_categoria, nome);
	
alter table output
  add constraint ix_output_categoria_nome unique (id_categoria, nome);

alter table formulario_template
  add constraint ix_formulario_template_categoria_nome unique (id_categoria, nome);

alter table formulario_elemento
  add constraint ix_formulario_elemento_categoria_nome unique (id_categoria, nome);

alter table formulario_elemento_validador
  add constraint ix_formulario_elemento_validador_categoria_nome unique (id_categoria, nome);

alter table formulario
  add constraint ix_formulario_categoria_nome unique (id_categoria, nome);

alter table formulario_formulario_elemento
  add constraint ix_formulario_formulario_elemento_formulario_formulario_elemento unique (id_formulario, id_formulario_elemento);

alter table formulario_elemento_formulario_elemento_validador
  add constraint ix_formulario_elemento_formulario_elemento_validador_formulario_elemento_formulario_elemento_validador unique (id_formulario_elemento, id_formulario_elemento_validador);


// CRIACAO DAS CHAVES ESTRANGEIRAS

alter table decorator
  add constraint fk_decorator_categoria foreign key (id_categoria) references categoria (id) on update no action on delete no action;

alter table ajuda
  add constraint fk_ajuda_categoria foreign key (id_categoria) references categoria (id) on update no action on delete no action;

alter table output
  add constraint fk_output_categoria foreign key (id_categoria) references categoria (id) on update no action on delete no action;

alter table formulario_template
  add constraint fk_formulario_template_categoria foreign key (id_categoria) references categoria (id) on update no action on delete no action,
  add constraint fk_formulario_template_output foreign key (id_output) references output (id) on update no action on delete no action;

alter table formulario_elemento
  add constraint fk_formulario_elemento_categoria foreign key (id_categoria) references categoria (id) on update no action on delete no action,
  add constraint fk_formulario_elemento_ajuda foreign key (id_ajuda) references ajuda (id) on update no action on delete no action;

alter table formulario_elemento_validador
  add constraint fk_formulario_elemento_validador_categoria foreign key	(id_categoria) references categoria (id) on update no action on delete no action;
	
alter table formulario
  add constraint fk_formulario_categoria foreign key (id_categoria) references categoria (id) on update no action on delete no action,
  add constraint fk_categoria_decorator foreign key (id_decorator) references decorator (id) on update no action on delete no action,
  add constraint fk_categoria_ajuda foreign key (id_ajuda) references ajuda (id) on update no action on delete no action,
  add constraint fk_formulario_formulario foreign key (id_formulario_pai) references formulario (id) on update no action on delete no action;

alter table formulario_formulario_elemento
  add constraint fk_formulario_formulario_elemento_formulario foreign key (id_formulario) references formulario (id) on update no action on delete no action,
  add constraint fk_formulario_formulario_elemento_formulario_elemento foreign key (id_formulario_elemento) references formulario_elemento (id) on update no action on delete no action;

alter table formulario_elemento_formulario_elemento_validador 
  add constraint fk_formulario_elemento_formulario_elemento_validador_formulario_elemento foreign key (id_formulario_elemento) references formulario_elemento (id) on update no action on delete no action,
  add constraint fk2_formulario_elemento_formulario_elemento_validador_formulario_elemento_validador foreign key (id_formulario_elemento_validador) references formulario_elemento_validador (id) on update no action on delete no action;


// CRIACAO DOS CHECK CONSTRAINTS

alter table ajuda add
    constraint ck_ajuda_constante_textual_ajuda check
    (fn_CheckConstanteTextualExists(constante_textual_ajuda) is not null);

alter table ajuda add
    constraint ck_ajuda_constante_textual_hint check
    (fn_CheckConstanteTextualExists(constante_textual_hint) is not null);

alter table formulario add
	constraint ck_formulario_constante_textual_titulo check
	(fn_CheckConstanteTextualExists(constante_textual_titulo) is not null);

alter table formulario add
	constraint ck_formulario_constante_textual_subtitulo check
	(fn_CheckConstanteTextualExists(constante_textual_subtitulo) is not null);