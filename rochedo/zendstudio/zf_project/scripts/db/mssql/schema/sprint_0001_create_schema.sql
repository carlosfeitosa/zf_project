/*
* SCRIPT DE CRIACAO DAS TABELAS DO SPRINT 0001
* 
* versao: 1.0 (MSSQL 2000)
* por: CARLOS FEITOSA (carlos.feitosa@rochedoproject.com)
* criacao: 13/12/2009
* ultimas modificacoes: 
*						- 28/12/2009
* 						- 29/12/2009 - adicao do campo login.datahora_expiracao_senha timestamp with time zone;
* 									 - adicao de nova tabela (dados_pessoas_perfis);
* 									 - adicao do campo pessoas_perfis.rowinfo character varying (2000) not null;
* 						- 28/01/2010 - adicao das tabelas categoria_chave_estrangeira e token;
*/

// CRIACAO DAS TABELAS

create table categoria (
	id int identity (1, 1) not null ,
	id_tipo_categoria int not null ,
	id_categoria_pai int null ,
	nivel int not null ,
	nome varchar (100) collate latin1_general_ci_ai not null ,
	descricao varchar (2000) collate latin1_general_ci_ai null ,
	ativo bit not null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null 
) on [primary];

create table dados_pessoais (
	id int identity (1, 1) not null ,
	id_pessoa int not null ,
	nome varchar (100) collate latin1_general_ci_ai not null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null 
) on [primary];

create table email (
	id int identity (1, 1) not null ,
	id_pessoa int not null ,
	id_categoria int not null ,
	unique_id varchar (100) collate latin1_general_ci_ai not null ,
	email varchar (100) collate latin1_general_ci_ai not null ,
	validado bit not null ,
	datahora_ultima_validacao datetime null ,
	ativo bit not null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null 
) on [primary];

create table log (
	id int identity (1, 1) not null ,
	id_categoria int not null ,
	id_perfil_pessoa int not null ,
	datahora_evento datetime not null ,
	xml varchar (2000) collate latin1_general_ci_ai not null 
) on [primary];

create table login (
	id int identity (1, 1) not null ,
	id_pessoa int not null ,
	login varchar (100) collate latin1_general_ci_ai not null ,
	senha varchar (100) collate latin1_general_ci_ai not null ,
	ativo bit not null ,
	tentativas_falhas int not null ,
	travado bit not null ,
	resetado bit not null ,
	datahora_ultimo_logon datetime null ,
	observacoes varchar (2000) collate latin1_general_ci_ai null ,
	pode_expirar bit not null ,
	datahora_proxima_expiracao datetime null ,
	datahora_ultima_expiracao datetime null ,
	datahora_expiracao_senha datetime null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null 
) on [primary];

create table perfil (
	id int identity (1, 1) not null ,
	id_categoria int not null ,
	nome varchar (100) collate latin1_general_ci_ai not null ,
	descricao varchar (2000) collate latin1_general_ci_ai null ,
	ativo bit not null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null 
) on [primary];

create table pessoa (
	id int identity (1, 1) not null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null 
) on [primary];

create table pessoas_perfis (
	id int identity (1, 1) not null ,
	id_pessoa int not null ,
	id_perfil int not null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null 
) on [primary];

create table tipo_categoria (
	id int identity (1, 1) not null ,
	nome varchar (100) collate latin1_general_ci_ai not null ,
	descricao varchar (2000) collate latin1_general_ci_ai null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null 
) on [primary];

create table mensagem ( 
	id int identity not null,
	remetente varchar (200) collate latin1_general_ci_ai not null , 
	destinatarios varchar (3000) collate latin1_general_ci_ai not null ,
	assunto varchar (200) collate latin1_general_ci_ai not null ,
	datahora_mensagem datetime not null,
	mensagem varchar (2000) collate latin1_general_ci_ai not null ,
	id_categoria int not null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null
) on [primary];

create table mensagem_email ( 
	id int identity not null,
	destinatarios_copia_carbonada varchar (2000) collate latin1_general_ci_ai not null ,
	destinatarios_copia_carbonada_cega varchar (2000) collate latin1_general_ci_ai not null ,
	responder_para varchar (200) collate latin1_general_ci_ai not null ,
    id_mensagem int not null,
    rowinfo varchar (2000) collate latin1_general_ci_ai not null
) on [primary];

create table anexo_mensagem ( 
	id int identity not null ,
	nome_original varchar (200) collate latin1_general_ci_ai not null ,
	nome_sugestao varchar (200) collate latin1_general_ci_ai not null ,
	descricao varchar (400) collate latin1_general_ci_ai not null ,
	arquivo binary not null ,
	mime_type varchar (100) collate latin1_general_ci_ai not null ,
	id_mensagem int not null,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null
) on [primary];

create table pessoas_perfis_mensagem_categoria ( 
	id int identity not null ,
	id_mensagem int not null ,
	id_categoria int not null ,
	id_pessoa_perfil int not null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null
) on [primary];

create table dados_pessoas_perfis (
	id int identity not null ,
	id_pessoa_perfil int not null ,
	assinatura_mensagem_email varchar (2000) collate latin1_general_ci_ai ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null
) on [primary];

create table categoria_chave_estrangeira (
	id int identity not null ,
	id_categoria int not null ,
	tabela_estrangeira varchar (100) collate latin1_general_ci_ai not null ,
	campo_estrangeiro varchar (100) collate latin1_general_ci_ai not null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null
) on [primary];

create table token (
	id int identity not null ,
	id_generico int not null ,
	token varchar (100) collate latin1_general_ci_ai not null ,
	datahora_expiracao datetime null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null
) on [primary];


// CRIACAO DAS CHAVES PRIMARIAS

alter table categoria with nocheck add constraint pk_categoria primary key clustered (id) on [primary];

alter table dados_pessoais with nocheck add constraint pk_dados_pessoais primary key clustered (id) on [primary];

alter table email with nocheck add constraint pk_email primary key clustered (id)  on [primary];

alter table log with nocheck add constraint pk_log primary key clustered (id) on [primary];

alter table login with nocheck add constraint pk_login primary key clustered (id) on [primary]; 

alter table perfil with nocheck add constraint pk_perfil primary key clustered (id) on [primary];

alter table pessoa with nocheck add constraint pk_pessoa primary key clustered (id) on [primary];

alter table pessoas_perfis with nocheck add constraint pk_pessoas_perfis primary key clustered (id) on [primary];

alter table tipo_categoria with nocheck add constraint pk_tipo_categoria primary key clustered (id) on [primary];

alter table mensagem with nocheck add constraint pk_mensagem primary key clustered (id)  on [primary];

alter table mensagem_email with nocheck add constraint pk_mensagem_email primary key clustered (id) on [primary];

alter table anexo_mensagem with nocheck add constraint pk_anexo_mensagem primary key clustered (id) on [primary];

alter table pessoas_perfis_mensagem_categoria with nocheck add constraint pk_pessoas_perfis_mensagem_categoria primary key clustered (id) on [primary];

alter table dados_pessoas_perfis with nocheck add constraint pk_dados_pessoas_perfis primary key clustered (id) on [primary];

alter table categoria_chave_estrangeira with nocheck add constraint pk_categoria_chave_estrangeira primary key clustered (id) on [primary];

alter table token with nocheck add constraint pk_token primary key clustered (id) on [primary];


// CRIACAO DOS VALORES DEFAULT

alter table categoria add 
	constraint df_categoria_nivel default (1) for nivel,
	constraint df_categoria_ativo default (1) for ativo;

alter table email add 
	constraint df_email_validado default (0) for validado,
	constraint df_email_ativo default (0) for ativo;

alter table perfil add 
	constraint df_perfil_ativo default (1) for ativo;

alter table login add 
	constraint df_login_ativo default (0) for ativo,
	constraint df_login_tentativas_falhas default (0) for tentativas_falhas,
	constraint df_login_travado default (0) for travado,
	constraint df_login_resetado default (0) for resetado,
	constraint df_login_pode_expirar default (1) for pode_expirar,
	constraint df_login_datahora_proxima_expiracao default (dateadd(month,12,getdate())) for datahora_proxima_expiracao;
	
alter table token add
	constraint df_token_datahora_expiracao default (dateadd(hour, 36, getdate())) for datahora_expiracao;


// CRIACAO DOS INDICES

create unique index ix_email_unique_id on email (unique_id) on [primary];

create unique index ix_email_email on email (email) on [primary];

create index ix_categoria_nome on categoria (nome) on [primary];

create index ix_dados_pessoais_nome on dados_pessoais (nome) on [primary];

create index ix_mensagem_assunto on mensagem (assunto) on [primary];

create unique index ix_login_login on login (login) on [primary];

create unique index ix_tipo_categoria_nome on tipo_categoria (nome) on [primary];

create index ix_mensagem_email_responder_para on mensagem_email (responder_para) on [primary];

create unique index ix_categoria_chave_estrangeira_id_categoria on categoria_chave_estrangeira (id_categoria) on [primary];

create unique index ix_token_token on token (token) on [primary];


// CRIACAO DAS CONSTRAINTS UNIQUE

alter table categoria add
    constraint ix_categoria_tipo_categoria_nome unique nonclustered
    (
        id_tipo_categoria,
        nome
    ) on [primary];

alter table perfil add
    constraint ix_perfil_categoria_nome unique nonclustered
    (
        id_categoria,
        nome
    ) on [primary];

alter table pessoas_perfis add constraint ix_pessoas_perfis unique nonclustered
    (
        id_pessoa,
		id_perfil
	)  on [primary];


// CRIACAO DAS CHAVES ESTRANGEIRAS

alter table categoria add 
	constraint fk_categoria_categoria foreign key 
	(
		id_categoria_pai
	) references categoria (
		id
	),
	constraint fk_categoria_tipo_categoria foreign key 
	(
		id_tipo_categoria
	) references tipo_categoria (
		id
	);

alter table dados_pessoais add 
	constraint fk_dados_pessoais_pessoa foreign key 
	(
		id_pessoa
	) references pessoa (
		id
	);

alter table email add 
	constraint fk_email_categoria foreign key 
	(
		id_categoria
	) references categoria (
		id
	),
	constraint fk_email_pessoa foreign key 
	(
		id_pessoa
	) references pessoa (
		id
	);

alter table log add 
	constraint fk_log_categoria foreign key 
	(
		id_categoria
	) references categoria (
		id
	),
	constraint fk_log_pessoas_perfis foreign key 
	(
		id_perfil_pessoa
	) references pessoas_perfis (
		id
	);

alter table login add 
	constraint fk_login_pessoa foreign key 
	(
		id_pessoa
	) references pessoa (
		id
	);

alter table perfil add 
	constraint fk_perfil_categoria foreign key 
	(
		id_categoria
	) references categoria (
		id
	);

alter table pessoas_perfis add 
	constraint fk_pessoas_perfis_perfil foreign key 
	(
		id_perfil
	) references perfil (
		id
	),
	constraint fk_pessoas_perfis_pessoa foreign key 
	(
		id_pessoa
	) references pessoa (
		id
	);

alter table mensagem with nocheck add 
    constraint fk_mensagem_categoria foreign key
    (
        id_categoria
    ) references categoria (
        id
	);

alter table mensagem_email with nocheck add 
    constraint fk_mensagem_email_mensagem foreign key
    (
        id_mensagem
    ) references mensagem (
        id
	);

alter table anexo_mensagem add 
    constraint fk_anexo_mensagem_mensagem foreign key (
        id_mensagem
    ) references mensagem (
        id
	);

alter table pessoas_perfis_mensagem_categoria add
    constraint fk_pessoas_perfis_mensagem_categoria_pessoas_perfis foreign key (
        id_pessoa_perfil
    ) references pessoas_perfis (
        id
    );

alter table pessoas_perfis_mensagem_categoria add
    constraint fk_pessoas_perfis_mensagem_categoria_mensagem foreign key (
        id_mensagem
    ) references mensagem (
        id
    );

alter table pessoas_perfis_mensagem_categoria add
    constraint fk_pessoas_perfis_mensagem_categoria_categoria foreign key (
        id_categoria
    ) references categoria (
        id
    );
    
alter table dados_pessoas_perfis add
	constraint fk_dados_pessoas_perfis_pessoas_perfis foreign key (
		id_pessoa_perfil
	) references pessoas_perfis (
		id
	);