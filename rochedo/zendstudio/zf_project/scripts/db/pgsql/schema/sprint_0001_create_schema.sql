/*
* SCRIPT DE CRIACAO DAS TABELAS DO SPRINT 0001
* 
* versao: 1.0 (POSTGRESQL 8.4.1)
* por: CARLOS FEITOSA (carlos.feitosa@rochedoproject.com)
* criacao: 13/12/2009
* ultimas modificacoes: 
* 						- 14/12/2009
* 						- 29/12/2009 - adicao do campo login.datahora_expiracao_senha timestamp with time zone;
* 									 - adicao de nova tabela (dados_pessoas_perfis);
* 									 - adicao do campo pessoas_perfis.rowinfo character varying (2000) not null;
*						- 28/01/2010 - adicao das tabelas categoria_chave_estrangeira e token;
* 						- 22/02/2010 - adicao da tabela dicionario_expressao;
* 						- 27/09/2010 - modificacao da tabela "email": transformacao do campo "id_pessoa" em
* 									   "id_generico_proprietario" (abstracao do dono);
* 						- 29/10/2010 - inclusao da criacao da tabela "modulo", proviniente do sprint 0004;
*                       - 28/02/2011 - inclusão de campos date para registro de eventos temporais;
* 						- 05/05/2011 - criacao do campo "constante_textual" na tabela "perfil";
*/

/* CRIACAO DAS TABELAS */

create table basico.categoria (
	id serial not null ,
	id_tipo_categoria integer not null ,
	id_categoria_pai integer ,
	nivel integer not null ,
	nome character varying (100) not null ,
	descricao character varying (2000) ,
	ativo boolean not null ,
	rowinfo character varying (2000) not null
)
with (
  oids = false
);
alter table basico.categoria owner to rochedo_user;

create table basico.modulo (
	id serial not null ,
	id_categoria int not null ,
	id_modulo_pai int null ,
	nome character varying (100) not null ,
	descricao character varying (2000) null ,
	versao character varying (200) null ,
	path character varying (1000) null ,
	instalado boolean not null ,
	ativo boolean not null ,
	data_depreciacao timestamp with time zone null ,
	xml_autoria character varying (2000) not null ,
	rowinfo character varying (2000) not null
) with (
  oids = false
);
alter table basico.modulo owner to rochedo_user;

create table basico_pessoa.assoc_dados (
	id serial not null ,
	id_pessoa integer not null ,
	id_municipio_nascimento integer not null,
	nome character varying (100) not null ,
	data_nascimento timestamp with time zone ,
	nome_pai character varying (100) null ,
	nome_mae character varying (100) null ,
	rowinfo character varying (2000) not null 
)
with (
  oids = false
);
alter table basico_pessoa.assoc_dados owner to rochedo_user;

create table basico_localizacao.email (
	id serial not null ,
	id_generico_proprietario integer not null ,
	id_categoria integer not null ,
	unique_id character varying (100) not null ,
	email character varying (100) not null ,
	validado boolean not null ,
	datahora_ultima_validacao timestamp with time zone ,
	datahora_cadastro timestamp with time zone not null,
	datahora_ultima_atualizacao timestamp with time zone not null,
	ativo boolean not null ,
	rowinfo character varying (2000) not null 
)
with (
  oids = false
);
alter table basico_localizacao.email owner to rochedo_user;

create table basico.log (
	id serial not null ,
	id_categoria integer not null ,
	id_perfil_pessoa integer not null ,
	datahora_evento timestamp with time zone not null ,
	xml character varying (7000) not null 
)
with (
  oids = false
);
alter table basico.log owner to rochedo_user;

create table basico.login (
	id serial not null ,
	id_pessoa integer not null ,
	login character varying (100) not null ,
	senha character varying (100) not null ,
	ativo boolean not null ,
	tentativas_falhas integer not null ,
	travado boolean not null ,
	resetado boolean not null ,
	datahora_ultimo_logon timestamp with time zone ,
	observacoes character varying (2000) ,
	pode_expirar boolean not null ,
	datahora_proxima_expiracao timestamp with time zone ,
	datahora_ultima_expiracao timestamp with time zone ,
	datahora_expiracao_senha timestamp with time zone ,
	datahora_ultima_tentativa_falha timestamp with time zone ,
	datahora_ultimo_reset timestamp with time zone ,
	datahora_ultima_troca_senha timestamp with time zone ,
	datahora_cadastro timestamp with time zone not null,
	datahora_aceite_termo_uso timestamp with time zone null,
	datahora_ultima_atualizacao timestamp with time zone not null,
	rowinfo character varying (2000) not null 
)
with (
  oids = false
);
alter table basico.login owner to rochedo_user;

create table basico.perfil (
	id serial not null ,
	id_categoria integer not null ,
	nome character varying (100) not null ,
	descricao character varying (2000) ,
	constante_textual character varying (200) not null , 
	ativo boolean not null ,
	datahora_cadastro timestamp with time zone not null ,
	datahora_ultima_atualizacao timestamp with time zone not null ,
	rowinfo character varying (2000) not null 
)
with (
  oids = false
);
alter table basico.perfil owner to rochedo_user;

create table pessoa (
	id serial not null ,
	id_perfil_padrao int null ,
	rowinfo character varying (2000) not null 
)
with (
  oids = false
);
alter table pessoa owner to rochedo_user;

create table pessoas_perfis (
	id serial not null ,
	id_pessoa integer not null ,
	id_perfil integer not null ,
	datahora_cadastro timestamp with time zone not null ,
	datahora_ultima_atualizacao timestamp with time zone not null ,
	rowinfo character varying (2000) not null 
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

create table basico.mensagem ( 
	id serial not null ,
	remetente character varying (200) not null ,
	destinatarios character varying (3000) not null ,
	assunto character varying (200) not null ,
	datahora_mensagem timestamp with time zone not null ,
	datahora_envio timestamp with time zone ,
	mensagem character varying (2000) not null ,
	id_categoria integer not null ,
	rowinfo character varying (2000) not null
)
with (
  oids = false
);
alter table basico.mensagem owner to rochedo_user;

create table basico_mensagem.assoc_email ( 
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
alter table basico_mensagem.assoc_email owner to rochedo_user;

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

create table pessoas_perfis_mensagens_categorias ( 
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

create table basico_assoccl_pessoa_perfil.assoc_dados (
	id serial not null ,
	id_pessoa_perfil int not null ,
	assinatura_mensagem_email character varying (2000) ,
	rowinfo character varying (2000) not null
)
with (
	oids = false
);
alter table basico_assoccl_pessoa_perfil.assoc_dados owner to rochedo_user;

create table basico.categoria_chave_estrangeira (
	id serial not null ,
	id_categoria int not null ,
	id_modulo    int not null,
	tabela_estrangeira character varying (100) not null ,
	campo_estrangeiro character varying (100) not null ,
	rowinfo character varying (2000) not null
)
with (
	oids = false
);
alter table basico.categoria_chave_estrangeira owner to rochedo_user;

create table token (
	id serial not null ,
	id_categoria int not null ,
	id_generico int not null ,
	token character varying (100) not null ,
	datahora_expiracao timestamp with time zone null ,
	rowinfo character varying (2000) not null
)
with (
	oids = false
);
alter table token owner to rochedo_user;

create table dicionario_expressao (
	id serial not null ,
	id_categoria int not null ,
	constante_textual character varying (200) not null,
	traducao character varying (7000) not null
)
with (
	oids = false
);
alter table dicionario_expressao owner to rochedo_user;


/* CRIACAO DAS CHAVES PRIMARIAS */

alter table basico.categoria add constraint pk_categoria primary key (id);

alter table basico.modulo add constraint pk_modulo primary key (id);

alter table basico_pessoa.assoc_dados add constraint pk_dados_pessoais primary key (id);

alter table basico_localizacao.email add constraint pk_email primary key (id);

alter table basico.log add constraint pk_log primary key (id);

alter table basico.login add constraint pk_login primary key (id);

alter table basico.perfil add constraint pk_perfil primary key (id);

alter table basico.pessoa add constraint pk_pessoa primary key (id);

alter table pessoas_perfis add constraint pk_pessoas_perfis primary key (id);

alter table tipo_categoria add constraint pk_tipo_categoria primary key (id);

alter table basico.mensagem add constraint pk_mensagem primary key (id);

alter table basico_mensagem.assoc_email add constraint pk_mensagem_email primary key (id);

alter table anexo_mensagem add constraint pk_anexo_mensagem primary key (id);

alter table pessoas_perfis_mensagens_categorias add constraint pk_pessoas_perfis_mensagens_categorias primary key (id);

alter table basico_assoccl_pessoa_perfil.assoc_dados add constraint pk_dados_pessoas_perfis primary key (id);

alter table basico.categoria_chave_estrangeira add constraint pk_categoria_chave_estrangeira primary key (id);

alter table token add constraint pk_token primary key (id);

alter table dicionario_expressao add constraint pk_dicionario_expressao primary key (id);


/* CRIACAO DOS VALORES DEFAULT */

alter table basico.categoria
	alter column nivel set default 1 ,
	alter column ativo set default true;

alter table basico.modulo
	alter column instalado set default false,
	alter column ativo set default false;

alter table basico_localizacao.email 
	alter column validado set default false ,
    alter column ativo set default false,
    alter column datahora_cadastro set default (current_timestamp),
	alter column datahora_ultima_atualizacao set default (current_timestamp);

alter table basico.perfil
    alter column ativo set default true ,
    alter column datahora_cadastro set default (current_timestamp) ,
    alter column datahora_ultima_atualizacao set default (current_timestamp);

alter table pessoas_perfis
    alter column datahora_cadastro set default (current_timestamp) ,
    alter column datahora_ultima_atualizacao set default (current_timestamp);
    
alter table basico.login 
	alter column ativo set default false ,
	alter column tentativas_falhas set default 0 ,
	alter column travado set default false ,
	alter column resetado set default false ,
	alter column pode_expirar set default true ,
	alter column datahora_proxima_expiracao set default (current_timestamp + interval '12 months'),
	alter column datahora_cadastro set default (current_timestamp),
	alter column datahora_ultima_atualizacao set default (current_timestamp);
	
alter table token
	alter column datahora_expiracao set default (current_timestamp + interval '36 hours');


/* CRIACAO DOS INDICES */

create index ix_email_unique_id
  on basico_localizacao.email using btree (unique_id asc nulls last);

create index ix_email_email
  on basico_localizacao.email using btree (email asc nulls last);

create index ix_categoria_nome
  on categoria using btree (nome asc nulls last);

create index ix_modulo_nome
  on basico.modulo using btree (nome asc nulls last);

create index ix_dados_pessoais_nome
  on dados_pessoais using btree (nome asc nulls last);

create index ix_mensagem_assunto
  on basico.mensagem using btree (assunto asc nulls last);

create unique index ix_login_login
  on basico.login using btree (login asc nulls last);

create index ix_tipo_categoria_nome
  on tipo_categoria using btree (nome asc nulls last);
  
create index ix_mensagem_email_responder_para 
  on basico_mensagem.assoc_email using btree (responder_para asc nulls last);
  
create index ix_categoria_chave_estrangeira_id_categoria
  on categoria_chave_estrangeira using btree (id_categoria asc nulls last);
  
create index ix_token_token
  on token using btree (token asc nulls last);
  
create index ix_dicionario_expressao_constante_textual
  on dicionario_expressao using btree (constante_textual asc nulls last);


/* CRIACAO DAS CONSTRAINTS UNIQUE */

alter table basico_localizacao.email
  add constraint ix_email_proprietario_categoria_email unique (id_generico_proprietario, id_categoria, email);

alter table basico.categoria
  add constraint ix_categoria_tipo_categoria_nome unique (id_tipo_categoria, nome);

alter table basico.modulo
  add constraint ix_modulo_categoria_nome unique (id_categoria, nome);

alter table basico.perfil
  add constraint ix_perfil_categoria_nome unique (id_categoria, nome);

alter table pessoas_perfis
  add constraint ix_pessoas_perfis unique (id_pessoa, id_perfil);
  
alter table basico.categoria_chave_estrangeira
  add constraint ix_categoria_chave_estrangeira unique (id_categoria);
  
alter table token
  add constraint ix_token unique (token);
  
alter table dicionario_expressao 
  add constraint ix_dicionario_expressao unique (id_categoria, constante_textual);


/* CRIACAO DAS CHAVES ESTRANGEIRAS */

alter table basico.pessoa
  add constraint fk_pessoa_id_perfil_padrao foreign key (id_perfil_padrao) references basico.perfil (id) on update no action on delete no action;

alter table basico.categoria
  add constraint fk_categoria_categoria foreign key (id_categoria_pai) references basico.categoria(id) on update no action on delete no action ,
  add constraint fk_categoria_tipo_categoria foreign key (id_tipo_categoria) references tipo_categoria (id) on update no action on delete no action;

alter table basico.modulo
  add constraint fk_modulo_categoria foreign key (id_categoria) references basico.categoria(id) on update no action on delete no action,
  add constraint fk_modulo_id_modulo_pai foreign key (id_modulo_pai) references basico.modulo (id) on update no action on delete no action;
  
alter table basico.categoria_chave_estrangeira
  add constraint fk_categoria_chave_estrangeira_categoria foreign key (id_categoria) references basico.categoria(id) on update no action on delete no action ,
  add constraint fk_categoria_chave_estrangeira_modulo foreign key (id_modulo) references basico.modulo (id) on update no action on delete no action;

alter table basico_pessoa.assoc_dados
  add constraint fk_dados_pessoais_pessoa foreign key (id_pessoa) references basico.pessoa (id) on update no action on delete no action;

alter table basico_localizacao.email
  add constraint fk_email_categoria foreign key (id_categoria) references basico.categoria(id) on update no action on delete no action;

alter table basico.log
  add constraint fk_log_categoria foreign key (id_categoria) references basico.categoria(id) on update no action on delete no action ,
  add constraint fk_log_pessoas_perfis foreign key (id_perfil_pessoa) references pessoas_perfis (id) on update no action on delete no action;

alter table basico.login
  add constraint fk_login_pessoa foreign key (id_pessoa) references basico.pessoa (id) on update no action on delete no action;

alter table basico.perfil
  add constraint fk_perfil_categoria foreign key (id_categoria) references basico.categoria(id) on update no action on delete no action;

alter table pessoas_perfis
  add constraint fk_pessoas_perfis_perfil foreign key (id_perfil) references basico.perfil (id) on update no action on delete no action ,
  add constraint fk_pessoas_perfis_pessoa foreign key (id_pessoa) references basico.pessoa (id) on update no action on delete no action;

alter table basico.mensagem
  add constraint fk_id_mensagens_categorias foreign key (id_categoria) references basico.categoria(id) on update no action on delete no action;

alter table basico_mensagem.assoc_email
  add constraint fk_id_mensagem	foreign key (id_mensagem) references basico.mensagem (id) on update no action on delete no action;

alter table anexo_mensagem
  add constraint fk_id_mensagem_anexo foreign key (id_mensagem) references basico.mensagem (id) on update no action on delete no action;

alter table pessoas_perfis_mensagens_categorias
  add constraint fk_pessoa_perfil foreign key (id_pessoa_perfil) references pessoas_perfis (id) on update no action on delete no action;

alter table pessoas_perfis_mensagens_categorias
  add constraint fk_mensagem foreign key (id_mensagem) references basico.mensagem (id) on update no action on delete no action;

alter table pessoas_perfis_mensagens_categorias
  add constraint fk_categoria foreign key (id_categoria) references basico.categoria(id) on update no action on delete no action;
  
alter table basico_assoccl_pessoa_perfil.assoc_dados
  add constraint fk_dados_pessoas_perfis_pessoas_perfis foreign key (id_pessoa_perfil) references pessoas_perfis (id) on update no action on delete no action;

alter table token
  add constraint fk_token_categoria foreign key (id_categoria) references basico.categoria(id) on update no action on delete no action;
  
alter table dicionario_expressao
  add constraint fk_dicionario_expressao_categoria foreign key (id_categoria) references basico.categoria(id) on update no action on delete no action;

  
/* CRIACAO DAS FUNCOES */

create function fn_CheckConstanteTextualExists(character varying (200))
returns int as 
'select id FROM basico.dicionario_expressao where constante_textual = $1 limit 1'
language 'sql';


/* CRIACAO DOS CHECK CONSTRAINTS */

alter table basico.perfil add
    constraint ck_perfil_constante_textual check
    ((constante_textual is null) or (fn_CheckConstanteTextualExists(constante_textual) is not null));