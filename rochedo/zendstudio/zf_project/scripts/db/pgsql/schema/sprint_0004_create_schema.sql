/*
* SCRIPT DE CRIACAO DAS TABELAS DO SPRINT 0004
* 
* versao: 1.0 (POSTGRESQL 8.4.1)
* por: CARLOS FEITOSA (carlos.feitosa@rochedoproject.com)
* criacao: 07/06/2010
* ultimas modificacoes:
* 						16/06/2010 - criacao da tabela formulario_perfil, pks e fks relacionadas;
* 						18/06/2010 - modificacao do nome da tabela formulario_template para template;
* 						09/07/2010 - criacao das tabelas modulo, modulo_perfil, modulo_formulario,
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
*/

/* CRIACAO DAS FUNCOES */

create function fn_CheckConstanteTextualExists(character varying (200))
returns int as 
'select id from dicionario_expressao where constante_textual = $1 limit 1'
language 'sql';


/* CRIACAO DAS TABELAS */

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
alter table decorator owner to rochedo_user;

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
alter table ajuda owner to rochedo_user;

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
alter table output owner to rochedo_user;

create table template (
	id serial not null ,
	id_categoria int not null ,
	nome character varying (100) not null ,
	descricao character varying (2000) null ,
	stylesheet_full_filename character varying (300) null ,
	javascript_full_filename character varying (300) null ,
	template character varying(2000) null ,
	id_output integer not null ,
	rowinfo character varying (2000) not null 
)
with (
  oids = false
);
alter table template owner to rochedo_user;

create table modulo (
	id serial not null ,
	id_categoria int not null ,
	id_modulo_pai int null ,
	nome character varying (100) not null ,
	descricao character varying (2000) null ,
	versao character varying (200) null ,
	path character varying (1000) null ,
	instalado smallint not null ,
	ativo smallint not null ,
	data_depreciacao timestamp with time zone null ,
	xml_autoria character varying (2000) not null ,
	rowinfo character varying (2000) not null
) with (
  oids = false
);
alter table modulo owner to rochedo_user;

create table modulo_formulario (
	id serial not null ,
	id_modulo int not null ,
	id_formulario int not null ,
	rowinfo character varying (2000) not null
) with (
  oids = false
);
alter table modulo_formulario owner to rochedo_user;

create table modulo_perfil (
	id serial not null ,
	id_modulo int not null ,
	id_perfil int not null ,
	rowinfo character varying (2000) not null
) with (
  oids = false
);
alter table modulo_perfil owner to rochedo_user;

create table template_formulario (
	id serial not null ,
	id_formulario int not null ,
	id_template int not null ,
	rowinfo character varying (2000) not null
) with (
  oids = false
);
alter table template_formulario owner to rochedo_user;

create table formulario_elemento (
	id serial not null ,
	id_categoria int not null ,
	id_ajuda int null ,
	id_formulario_elemento_filter int null ,
    id_decorator int null ,
	nome character varying (100) not null ,
	descricao character varying (2000) null ,
	constante_textual_label character varying (200) null ,
	element_name character varying (100) not null ,
	element_attribs character varying (1000) null ,
	element character varying (1000) not null ,
	element_reloadable smallint not null ,
	rowinfo character varying (2000) not null 
)
with (
  oids = false
);
alter table formulario_elemento owner to rochedo_user;

create table formulario_elemento_validator (
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
alter table formulario_elemento_validator owner to rochedo_user;

create table formulario_elemento_filter (
    id serial not null ,
    id_categoria int not null ,
	nome character varying (100) null ,
	descricao character varying (2000) null ,
	filter character varying (1000) not null ,
	rowinfo character varying (2000) not null
)
with (
  oids = false
);
alter table formulario_elemento_filter owner to rochedo_user;

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
	form_method character varying (100) null ,
	form_action character varying (100) null ,
	form_target character varying (100) null ,
	form_enctype character varying (100) null ,
	form_attribs character varying (1000) null ,
	versao decimal (3, 3) not null ,
	validade_inicio timestamp with time zone null ,
	validade_termino timestamp with time zone null ,
	data_desativacao timestamp with time zone null ,
	data_auto_reativar timestamp with time zone null ,
	motivo_desativacao character varying (1000) null ,
	rowinfo character varying (2000) not null 
)
with (
  oids = false
);
alter table formulario owner to rochedo_user;

create table formulario_formulario_elemento (
	id serial not null ,
	id_formulario int not null ,
	id_formulario_elemento int not null ,
	element_required smallint not null ,
	ordem int not null ,	
	rowinfo character varying (2000) not null 
)
with (
  oids = false
);
alter table formulario_formulario_elemento owner to rochedo_user;

create table formulario_elemento_formulario_elemento_validator (
	id serial not null ,
	id_formulario_elemento int not null ,
	id_formulario_elemento_validator int not null ,
	rowinfo character varying (2000) not null 
)
with (
  oids = false
);
alter table formulario_elemento_formulario_elemento_validator owner to rochedo_user;

create table formulario_perfil (
	id serial not null ,
	id_formulario int not null ,
	id_perfil int not null ,
	rowinfo character varying (2000) not null 
)
with (
  oids = false
);
alter table formulario_perfil owner to rochedo_user;

create table formulario_formulario_elemento_formulario (
	id serial not null ,
	id_formulario_formulario_elemento int not null ,
	id_formulario int not null ,
	constante_textual_label character varying (200) null ,
	rowinfo character varying (2000) not null 
)
with (
  oids = false
);
alter table formulario_formulario_elemento_formulario  owner to rochedo_user;


/* CRIACAO DAS CHAVES PRIMARIAS */

alter table decorator add constraint pk_decorator primary key (id);

alter table ajuda add constraint pk_ajuda primary key (id);

alter table output add constraint pk_output primary key (id);

alter table template add constraint pk_template primary key (id);

alter table modulo add constraint pk_modulo primary key (id);

alter table modulo_formulario add constraint pk_modulo_formulario primary key (id);

alter table modulo_perfil add constraint pk_modulo_perfil primary key (id);

alter table template_formulario add constraint pk_template_formulario primary key (id);

alter table formulario_elemento add constraint pk_formulario_elemento primary key (id);

alter table formulario_elemento_validator add constraint pk_formulario_elemento_validator primary key (id);

alter table formulario_elemento_filter add constraint pk_formulario_elemento_filter primary key (id);

alter table formulario add constraint pk_formulario primary key (id);

alter table formulario_formulario_elemento add constraint pk_formulario_formulario_elemento primary key (id);

alter table formulario_elemento_formulario_elemento_validator add constraint pk_formulario_elemento_formulario_elemento_validator primary key (id);

alter table formulario_perfil add constraint pk_formulario_perfil primary key (id);

alter table formulario_formulario_elemento_formulario  add constraint pk_formulario_formulario_elemento_formulario primary key (id) ;


/* CRIACAO DOS VALORES DEFAULT */

alter table modulo
	alter column instalado set default 0,
	alter column ativo set default 0;

alter table formulario
    alter column validade_inicio set default (current_timestamp);

alter table formulario_elemento
	alter column element_reloadable set default (0);


/* CRIACAO DOS INDICES */

create index ix_decorator_nome
  on decorator using btree (nome asc nulls last);

create index ix_ajuda_nome
  on ajuda using btree (nome asc nulls last);

create index ix_output_nome
  on output using btree (nome asc nulls last);

create index ix_template_nome
  on template using btree (nome asc nulls last);
  
create index ix_modulo_nome
  on modulo using btree (nome asc nulls last);

create index ix_formulario_elemento_nome
  on formulario_elemento using btree (nome asc nulls last);

create index ix_formulario_elemento_validator_nome
  on formulario_elemento_validator using btree (nome asc nulls last);

create index ix_formulario_elemento_filter_nome
  on formulario_elemento_filter using btree (nome asc nulls last);

create index ix_formulario_nome 
  on formulario using btree (nome asc nulls last);

create unique index ix_formulario_form_name
  on formulario using btree (form_name);


/* CRIACAO DAS CONSTRAINTS UNIQUE */

alter table decorator 
  add constraint ix_decorator_categoria_nome unique (id_categoria, nome);

alter table ajuda 
  add constraint ix_ajuda_categoria_nome unique (id_categoria, nome);
	
alter table output
  add constraint ix_output_categoria_nome unique (id_categoria, nome);

alter table template
  add constraint ix_template_categoria_nome unique (id_categoria, nome);

alter table modulo
  add constraint ix_modulo_categoria_nome unique (id_categoria, nome);

alter table modulo_formulario
  add constraint ix_modulo_formulario_modulo_formulario unique (id_modulo, id_formulario);

alter table modulo_perfil
  add constraint ix_modulo_perfil_modulo_perfil unique (id_modulo, id_perfil);

alter table template_formulario
  add constraint ix_template_formulario_template_formulario unique (id_formulario, id_template);

alter table formulario_elemento
  add constraint ix_formulario_elemento_categoria_nome unique (id_categoria, nome);

alter table formulario_elemento_validator
  add constraint ix_formulario_elemento_validator_categoria_nome unique (id_categoria, nome);

alter table formulario_elemento_filter
  add constraint ix_formulario_elemento_filter_categoria_nome unique (id_categoria, nome);

alter table formulario
  add constraint ix_formulario_categoria_nome unique (id_categoria, nome, versao);

alter table formulario_formulario_elemento
  add constraint ix_formulario_formulario_elemento_formulario_formulario_elemento unique (id_formulario, id_formulario_elemento);

alter table formulario_elemento_formulario_elemento_validator
  add constraint ix_formulario_elemento_formulario_elemento_validator_formulario_elemento_formulario_elemento_validator unique (id_formulario_elemento, id_formulario_elemento_validator);

alter table formulario_perfil
  add constraint ix_formulario_perfil_formulario_perfil unique (id_formulario, id_perfil);
  
alter table formulario_formulario_elemento_formulario
  add constraint ix_formulario_formulario_elemento_formulario_formulario_formulario_elemento_formulario unique (id_formulario_formulario_elemento);


/* CRIACAO DAS CHAVES ESTRANGEIRAS */

alter table decorator
  add constraint fk_decorator_categoria foreign key (id_categoria) references categoria (id) on update no action on delete no action;

alter table ajuda
  add constraint fk_ajuda_categoria foreign key (id_categoria) references categoria (id) on update no action on delete no action;

alter table output
  add constraint fk_output_categoria foreign key (id_categoria) references categoria (id) on update no action on delete no action;

alter table template
  add constraint fk_template_categoria foreign key (id_categoria) references categoria (id) on update no action on delete no action,
  add constraint fk_template_output foreign key (id_output) references output (id) on update no action on delete no action;

alter table modulo
  add constraint fk_modulo_categoria foreign key (id_categoria) references categoria (id) on update no action on delete no action,
  add constraint fk_modulo_id_modulo_pai foreign key (id_modulo_pai) references modulo (id) on update no action on delete no action;

alter table modulo_formulario
  add constraint fk_modulo_formulario_modulo foreign key (id_modulo) references modulo (id) on update no action on delete no action,
  add constraint fk_modulo_formulario_formulario foreign key (id_formulario) references formulario (id) on update no action on delete no action;

alter table modulo_perfil 
  add constraint fk_modulo_perfil_modulo foreign key (id_modulo) references modulo (id) on update no action on delete no action, 
  add constraint fk_modulo_perfil_perfil foreign key (id_perfil) references perfil (id) on update no action on delete no action;

alter table template_formulario
  add constraint fk_template_formulario_formulario foreign key (id_formulario) references formulario (id) on update no action on delete no action,
  add constraint fk_template_formulario_template foreign key (id_template) references template (id) on update no action on delete no action;

alter table formulario_elemento
  add constraint fk_formulario_elemento_categoria foreign key (id_categoria) references categoria (id) on update no action on delete no action,
  add constraint fk_formulario_elemento_ajuda foreign key (id_ajuda) references ajuda (id) on update no action on delete no action,
  add constraint fk_formulario_elemento_formulario_elemento_filter foreign key (id_formulario_elemento_filter) references formulario_elemento_filter (id) on update no action on delete no action,
  add constraint fk_formulario_elemento_decorator foreign key (id_decorator) references decorator (id) on update no action on delete no action;

alter table formulario_elemento_validator
  add constraint fk_formulario_elemento_validator_categoria foreign key	(id_categoria) references categoria (id) on update no action on delete no action;

alter table formulario_elemento_filter
  add constraint fk_formulario_elemento_filter_categoria foreign key (id_categoria) references categoria (id) on update no action on delete no action;
	
alter table formulario
  add constraint fk_formulario_categoria foreign key (id_categoria) references categoria (id) on update no action on delete no action,
  add constraint fk_categoria_decorator foreign key (id_decorator) references decorator (id) on update no action on delete no action,
  add constraint fk_categoria_ajuda foreign key (id_ajuda) references ajuda (id) on update no action on delete no action,
  add constraint fk_formulario_formulario foreign key (id_formulario_pai) references formulario (id) on update no action on delete no action;

alter table formulario_formulario_elemento
  add constraint fk_formulario_formulario_elemento_formulario foreign key (id_formulario) references formulario (id) on update no action on delete no action,
  add constraint fk_formulario_formulario_elemento_formulario_elemento foreign key (id_formulario_elemento) references formulario_elemento (id) on update no action on delete no action;

alter table formulario_elemento_formulario_elemento_validator 
  add constraint fk_formulario_elemento_formulario_elemento_validator_formulario_elemento foreign key (id_formulario_elemento) references formulario_elemento (id) on update no action on delete no action,
  add constraint fk2_formulario_elemento_formulario_elemento_validator_formulario_elemento_validator foreign key (id_formulario_elemento_validator) references formulario_elemento_validator (id) on update no action on delete no action;

alter table formulario_perfil
  add constraint fk_formulario_perfil_formulario foreign key (id_formulario) references formulario (id) on update no action on delete no action,
  add constraint fk_formulario_perfil_perfil foreign key (id_perfil) references perfil (id) on update no action on delete no action;

alter table formulario_formulario_elemento_formulario 
  add constraint fk_formulario_formulario_elemento_formulario_formulario_elemento foreign key (id_formulario_formulario_elemento) references formulario_formulario_elemento (id) on update no action on delete no action,
  add constraint fk_formulario_formulario_elemento_formulario_formulario foreign key (id_formulario) references formulario (id) on update no action on delete no action;


/* CRIACAO DOS CHECK CONSTRAINTS */

alter table ajuda add
    constraint ck_ajuda_constante_textual_ajuda check
    ((constante_textual_ajuda is null) or (fn_CheckConstanteTextualExists(constante_textual_ajuda) is not null));

alter table ajuda add
    constraint ck_ajuda_constante_textual_hint check
    ((constante_textual_hint is null) or (fn_CheckConstanteTextualExists(constante_textual_hint) is not null));

alter table formulario add
	constraint ck_formulario_constante_textual_titulo check
	((constante_textual_titulo is null) or (fn_CheckConstanteTextualExists(constante_textual_titulo) is not null));

alter table formulario add
	constraint ck_formulario_constante_textual_subtitulo check
	((constante_textual_subtitulo is null) or (fn_CheckConstanteTextualExists(constante_textual_subtitulo) is not null));

alter table formulario_formulario_elemento_formulario add
	constraint ck_formulario_formulario_elemento_formulario_constante_textual_label check
	(constante_textual_label is null or (fn_CheckConstanteTextualExists(constante_textual_label) is not null));