/*
* SCRIPT DE CRIACAO DAS TABELAS DO SPRINT 0001
* 
* versao: 1.0 (POSTGRESQL 8.4.1)
* por: JOÃO VASCONCELOS (joao.vasconcelos@rochedoproject.com)
* criacao: 27/09/2009
* ultimas modificacoes: 
* 						
*/

/* CRIACAO DAS TABELAS */

create table documento_identificacao (
	id serial not null ,
	identificador character varying (200) not null ,
	data_emissao timestamp with time zone null ,
	data_vencimento timestamp with time zone null ,
	rowinfo character varying (2000) not null
)
with (
  oids = false
);
alter table documento_identificacao owner to rochedo_user;

create table mascara (
	id serial not null ,
	nome character varying (200) not null ,
	descricao character varying (2000) not null ,
	mascara character varying (400) not null ,
	rowinfo character varying (2000) not null
)
with (
  oids = false
);
alter table mascara owner to rochedo_user;

create table dados_biometricos (
	id serial not null ,
	sexo integer not null ,
	rowinfo character varying (2000) not null
)
with (
  oids = false
);
alter table dados_biometricos owner to rochedo_user;

create table pessoa_juridica (
	id serial not null ,
	nome character varying (200) not null ,
	sigla character varying (50) not null ,
	rowinfo character varying (2000) not null
)
with (
  oids = false
);
alter table pessoa_juridica owner to rochedo_user;

create table estado (
	id serial not null ,
	nome character varying (200) not null ,
	sigla character varying (50) not null ,
	rowinfo character varying (2000) not null
)
with (
  oids = false
);
alter table estado owner to rochedo_user;

create table pais (
	id serial not null ,
	constante_textual_nome character varying (200) not null ,
	sigla character varying (50) not null ,
	codigo_ddi character varying (10) not null ,
	rowinfo character varying (2000) not null
)
with (
  oids = false
);
alter table pais owner to rochedo_user;

create table endereco (
	id serial not null ,
	id_generico_proprietario integer not null ,
	descricao character varying (2000) not null ,
	cep character varying (15) not null ,
	logradouro character varying (15) not null ,
	rowinfo character varying (2000) not null
)
with (
  oids = false
);
alter table pais owner to rochedo_user;

/* CRIACAO DAS CHAVES PRIMARIAS */

alter table documento_identificacao add constraint pk_documento_identificacao primary key (id);

alter table mascara add constraint pk_mascara primary key (id);

alter table dados_biometricos add constraint pk_dados_biometricos primary key (id);

alter table pessoa_juridica add constraint pk_pessoa_juridica primary key (id);

alter table estado add constraint pk_estado primary key (id);

alter table pais add constraint pk_pais primary key (id);