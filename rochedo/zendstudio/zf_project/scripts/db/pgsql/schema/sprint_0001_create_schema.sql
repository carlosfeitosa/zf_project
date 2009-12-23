/*
* SCRIPT DE CRIACAO DAS TABELAS DO SPRINT 0001
* 
* versao: 1.0 (POSTGRESQL)
* por: CARLOS FEITOSA (carlos.feitosa@rochedoproject.com)
* criacao: 13/12/2009
* ultima modificacao: 14/12/2009
*/

// CRIACAO DAS TABELAS

create table categoria (
	id serial not null ,
	id_tipo_categoria integer not null ,
	id_categoria_pai integer ,
	nivel integer not null ,
	nome character varying (100) not null ,
	descricao character varying (2000) ,
	ativo smallint not null ,
	rowinfo character varying (2000) not null
)
with (
  oids = false
);
alter table categoria owner to rochedo_user;

create table dados_pessoais (
	id serial not null ,
	id_pessoa integer not null ,
	nome character varying (100) not null ,
	rowinfo character varying (2000) not null 
)
with (
  oids = false
);
alter table dados_pessoais owner to rochedo_user;

create table email (
	id serial not null ,
	id_pessoa integer not null ,
	id_categoria integer not null ,
	unique_id character varying (100) not null ,
	email character varying (100) not null ,
	validado smallint not null ,
	datahora_ultima_validacao timestamp with time zone ,
	ativo smallint not null ,
	rowinfo character varying (2000) not null 
)
with (
  oids = false
);
alter table email owner to rochedo_user;

create table log (
	id serial not null ,
	id_categoria integer not null ,
	id_perfil_pessoa integer not null ,
	datahora_evento timestamp with time zone not null ,
	xml character varying (2000) not null 
)
with (
  oids = false
);
alter table log owner to rochedo_user;

create table login (
	id serial not null ,
	id_pessoa integer not null ,
	login character varying (100) not null ,
	senha character varying (100) not null ,
	ativo smallint not null ,
	tentativas_falhas integer not null ,
	travado smallint not null ,
	resetado smallint not null ,
	datahora_ultimo_logon timestamp with time zone ,
	observacoes character varying (2000) ,
	pode_expirar smallint not null ,
	datahora_proxima_expiracao timestamp with time zone ,
	datahora_ultima_expiracao timestamp with time zone ,
	rowinfo character varying (2000) not null 
)
with (
  oids = false
);
alter table login owner to rochedo_user;

create table perfil (
	id serial not null ,
	id_categoria integer not null ,
	nome character varying (100) not null ,
	descricao character varying (2000)  ,
	ativo smallint not null ,
	rowinfo character varying (2000) not null 
)
with (
  oids = false
);
alter table perfil owner to rochedo_user;

create table pessoa (
	id serial not null ,
	rowinfo character varying (2000) not null 
)
with (
  oids = false
);
alter table pessoa owner to rochedo_user;

create table pessoas_perfis (
	id serial not null ,
	id_pessoa integer not null ,
	id_perfil integer not null 
)
with (
  oids = false
);
alter table pessoas_perfis owner to rochedo_user;

create table tipo_categoria (
	id serial not null ,
	nome character varying (100) not null ,
	descricao character varying (2000) ,
	rowinfo character varying (2000) not null 
)
with (
  oids = false
);
alter table tipo_categoria owner to rochedo_user;

create table mensagem ( 
	id serial not null ,
	remetente character varying (200) not null ,
	destinatarios character varying (3000) not null ,
	assunto character varying (200) not null ,
	datahora_mensagem timestamp with time zone not null ,
	mensagem character varying (2000) not null ,
	id_categoria integer not null ,
	rowinfo character varying (2000) not null
)
with (
  oids = false
);
alter table mensagem owner to rochedo_user;

create table mensagem_email ( 
	id serial not null ,
	destinatarios_copia_carbonada character varying (2000) ,
	destinatarios_copia_carbonada_cega character varying (2000) ,
	responder_para character varying (200) ,
    id_mensagem integer not null ,
    rowinfo character varying (2000) not null
)
with (
  oids = false
);
alter table mensagem_email owner to rochedo_user;

create table anexo_mensagem ( 
	id serial not null ,
	nome_origina character varying (200) not null ,
	nome_sugestao character varying (200) not null ,
	descricao character varying (400) ,
	arquivo OID not null ,
	mime_type character varying (100) not null ,
	id_mensagem integer not null ,
	rowinfo character varying (2000) not null
)
with (
  oids = false
);
alter table anexo_mensagem owner to rochedo_user;

create table pessoas_perfis_mensagem_categoria ( 
	id serial not null ,
	id_mensagem integer not null ,
	id_categoria integer not null ,
	id_pessoa_perfil integer not null ,
	rowinfo character varying (2000) not null
)
with (
  oids = false
);
alter table anexo_mensagem owner to rochedo_user;


// CRIACAO DAS CHAVES PRIMARIAS

alter table categoria add constraint pk_categoria primary key (id);

alter table dados_pessoais add constraint pk_dados_pessoais primary key (id);

alter table email add constraint pk_email primary key (id);

alter table log add constraint pk_log primary key (id);

alter table login add constraint pk_login primary key (id);

alter table perfil add constraint pk_perfil primary key (id);

alter table pessoa add constraint pk_pessoa primary key (id);

alter table pessoas_perfis add constraint pk_pessoas_perfis primary key (id);

alter table tipo_categoria add constraint pk_tipo_categoria primary key (id);

alter table mensagem add constraint pk_mensagem primary key (id);

alter table mensagem_email add constraint pk_mensagem_email primary key (id);

alter table anexo_mensagem add constraint pk_anexo_mensagem primary key (id);

alter table pessoas_perfis_mensagem_categoria add constraint pk_pessoas_perfis_mensagem_categoria primary key (id);


// CRIACAO DOS VALORES DEFAULT

alter table categoria
	alter column nivel set default 1 ,
	alter column ativo set default 1;

alter table email 
	alter column validado set default 0 ,
    alter column ativo set default 0;

alter table perfil
    alter column ativo set default 1;

alter table login 
	alter column ativo set default 0 ,
	alter column tentativas_falhas set default 0 ,
	alter column travado set default 0 ,
	alter column resetado set default 0 ,
	alter column pode_expirar set default 1 ,
	alter column datahora_proxima_expiracao set default (current_timestamp + interval '12 months');


// CRIACAO DOS INDICES

create index ix_email_unique_id
  on email using btree (unique_id asc nulls last);

create index ix_email_email
  on email using btree (email asc nulls last);

create index ix_categoria_nome
  on categoria using btree (nome asc nulls last);

create index ix_dados_pessoais_nome
  on dados_pessoais using btree (nome asc nulls last);

create index ix_mensagem_assunto
  on mensagem using btree (assunto asc nulls last);

create index ix_login_login
  on login using btree (login asc nulls last);

create index ix_tipo_categoria_nome
  on tipo_categoria using btree (nome asc nulls last);


// CRIACAO DAS CONSTRAINTS UNIQUE

alter table tipo_categoria
  add constraint un_tipo_categoria_nome unique (nome);

alter table categoria
  add constraint un_categoria_tipo_categoria_nome unique (id_tipo_categoria, nome);

alter table perfil
  add constraint un_perfil_categoria_nome unique (id_categoria, nome);

alter table email
  add constraint un_email_unique_id unique (unique_id);

alter table email
  add constraint un_email_email unique (email);

alter table login
  add constraint un_login_login unique (login);

alter table pessoas_perfis
  add constraint ix_pessoas_perfis unique (id_pessoa, id_perfil);


// CRIACAO DAS CHAVES ESTRANGEIRAS

alter table categoria
  add constraint fk_categoria_categoria foreign key (id_categoria_pai) references categoria (id) on update no action on delete no action ,
  add constraint fk_categoria_tipo_categoria foreign key (id_tipo_categoria) references tipo_categoria (id) on update no action on delete no action;

alter table dados_pessoais
  add constraint fk_dados_pessoais_pessoa foreign key (id_pessoa) references pessoa (id) on update no action on delete no action;

alter table email
  add constraint fk_email_categoria foreign key (id_categoria) references categoria (id) on update no action on delete no action ,
  add constraint fk_email_pessoa foreign key (id_pessoa) references pessoa (id) on update no action on delete no action;

alter table log
  add constraint fk_log_categoria foreign key (id_categoria) references categoria (id) on update no action on delete no action ,
  add constraint fk_log_pessoas_perfis foreign key (id_perfil_pessoa) references pessoas_perfis (id) on update no action on delete no action;

alter table login
  add constraint fk_login_pessoa foreign key (id_pessoa) references pessoa (id) on update no action on delete no action;

alter table perfil
  add constraint fk_perfil_categoria foreign key (id_categoria) references categoria (id) on update no action on delete no action;

alter table pessoas_perfis
  add constraint fk_pessoas_perfis_perfil foreign key (id_perfil) references perfil (id) on update no action on delete no action ,
  add constraint fk_pessoas_perfis_pessoa foreign key (id_pessoa) references pessoa (id) on update no action on delete no action;

alter table mensagem
  add constraint fk_id_mensagem_categoria foreign key (id_categoria) references categoria (id) on update no action on delete no action;

alter table mensagem_email
  add constraint fk_id_mensagem	foreign key (id_mensagem) references mensagem (id) on update no action on delete no action;

alter table anexo_mensagem
  add constraint fk_id_mensagem_anexo foreign key (id_mensagem) references mensagem (id) on update no action on delete no action;

alter table pessoas_perfis_mensagem_categoria
  add constraint fk_pessoa_perfil foreign key (id_pessoa_perfil) references pessoas_perfis (id) on update no action on delete no action;

alter table pessoas_perfis_mensagem_categoria
  add constraint fk_mensagem foreign key (id_mensagem) references mensagem (id) on update no action on delete no action;

alter table pessoas_perfis_mensagem_categoria
  add constraint fk_categoria foreign key (id_categoria) references categoria (id) on update no action on delete no action;