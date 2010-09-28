/*
* SCRIPT DE CRIACAO DAS TABELAS DO SPRINT 0002
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
	id_generico_proprietario integer not null ,
	id_categoria integer not null ,
	id_pessoa_juridica_orgao_expedidor integer not null,
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
	id_categoria integer not null ,
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
	id_pessoa integer not null ,
	sexo integer not null ,
	rowinfo character varying (2000) not null
)
with (
  oids = false
);
alter table dados_biometricos owner to rochedo_user;

create table pessoa_juridica (
	id serial not null ,
	id_pessoa_juridica_pai integer null ,
	id_categoria integer not null ,
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
	id_pais integer not null ,
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
	codigo_ddi character varying (10) null ,
	rowinfo character varying (2000) not null
)
with (
  oids = false
);
alter table pais owner to rochedo_user;

create table endereco (
	id serial not null ,
	id_generico_proprietario integer not null ,
	id_pessoa_perfil_validador integer null ,
	id_categoria integer not null ,
	id_estado integer null ,
	id_pais integer null ,
	descricao character varying (2000) null ,
	logradouro character varying (15) null ,
	numero character varying (15) null ,
	complemento character varying (50) null ,
	cep character varying (15) null ,
	caixa_postal character varying (15) null ,
	ponto_referencia character varying (300) null ,
	data_validacao timestamp with time zone null ,
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

/* CRIACAO DOS INDICES */

create index ix_documento_identificacao_identificador
  on documento_identificacao using btree (identificador asc nulls last);
  
create index ix_mascara_nome
  on mascara using btree (nome asc nulls last);
  
create index ix_pessoa_juridica_nome
  on pessoa_juridica using btree (nome asc nulls last);
  
create index ix_pessoa_juridica_sigla
  on pessoa_juridica using btree (sigla asc nulls last);
  
create index ix_estado_nome
  on estado using btree (nome asc nulls last);
  
create index ix_estado_sigla
  on estado using btree (sigla asc nulls last);
  
create index ix_pais_constante_textual_nome
  on pais using btree (constante_textual_nome asc nulls last);
  
create index ix_pais_sigla
  on pais using btree (sigla asc nulls last);
  
/* CRIACAO DAS CONSTRAINTS UNIQUE */

alter table documento_identificacao
  add constraint un_documento_identificao_identificador_categoria_proprietario_expedidor unique (identificador, id_categoria, id_generico_proprietario, id_pessoa_juridica_orgao_expedidor);
  
alter table mascara
  add constraint un_mascara_nome_mascara unique (nome, mascara);
  
alter table pessoa_juridica
  add constraint un_pessoa_juridica_nome unique (nome);
  
alter table estado
  add constraint un_estado_nome_pais unique (nome, id_pais);
  
alter table pais
  add constraint un_pais_constante_textual_nome unique (constante_textual_nome);
  
alter table pais
  add constraint un_pais_sigla unique (sigla);
  
/* CRIACAO DAS CHAVES ESTRANGEIRAS */

alter table documento_identificacao
  add constraint fk_documento_identificacao_categoria foreign key (id_categoria) references categoria (id) on update no action on delete no action ,
  add constraint fk_documento_identificacao_pessoa_juridica foreign key (id_pessoa_juridica_orgao_expedidor) references pessoa_juridica (id) on update no action on delete no action;

alter table mascara
  add constraint fk_mascara_categoria foreign key (id_categoria) references categoria (id) on update no action on delete no action;
  
alter table dados_biometricos
  add constraint fk_dados_biometricos_pessoa foreign key (id_pessoa) references pessoa (id) on update no action on delete no action;
  
alter table estado
  add constraint fk_estado_pais foreign key (id_pais) references pais (id) on update no action on delete no action;
  
alter table endereco
  add constraint fk_endereco_pessoa_perfil foreign key (id_pessoa_perfil_validador) references pessoas_perfis (id) on update no action on delete no action ,
  add constraint fk_endereco_categoria foreign key (id_categoria) references categoria (id) on update no action on delete no action ,
  add constraint fk_endereco_estado foreign key (id_estado) references estado (id) on update no action on delete no action ,
  add constraint fk_endereco_pais foreign key (id_pais) references pais (id) on update no action on delete no action;
  
/* CRIACAO DOS CHECK CONSTRAINTS */

alter table pais add
    constraint ck_pais_constante_textual_nome check
    ((constante_textual_nome is null) or (fn_CheckConstanteTextualExists(constante_textual_nome) is not null));