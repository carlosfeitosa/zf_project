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
* 						- 22/02/2010 - adicao da tabela dicionario_expressao;
* 						- 27/09/2010 - modificacao da tabela "email": transformacao do campo "id_pessoa" em
* 									   "id_generico_proprietario" (abstracao do dono);
* 						- 29/10/2010 - inclusao da criacao da tabela "modulo", proviniente do sprint 0004;
*                       - 28/02/2011 - inclusão de campos date para registro de eventos temporais;
* 						- 05/05/2011 - criacao do campo "constante_textual" na tabela "perfil";
*/

/* CRIACAO DAS TABELAS */

create table basico.categoria(
	id int identity (1, 1) not null ,
	id_tipo_categoria int not null ,
	id_categoria_pai int null ,
	nivel int not null ,
	nome varchar (100) collate latin1_general_ci_ai not null ,
	descricao varchar (2000) collate latin1_general_ci_ai null ,
	ativo bit not null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null 
) on [primary];

create table basico.modulo (
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

create table basico_pessoa.assoc_dados (
	id int identity (1, 1) not null ,
	id_pessoa int not null ,
	nome varchar (100) collate latin1_general_ci_ai not null ,
	nome_pai varchar (100) collate latin1_general_ci_ai null ,
	nome_mae varchar (100) collate latin1_general_ci_ai null ,
	data_nascimento datetime null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null 
) on [primary];

create table basico_localizacao.email (
	id int identity (1, 1) not null ,
	id_generico_proprietario int not null ,
	id_categoria int not null ,
	unique_id varchar (100) collate latin1_general_ci_ai not null ,
	email varchar (100) collate latin1_general_ci_ai not null ,
	validado bit not null ,
	datahora_ultima_validacao datetime null ,
	datahora_cadastro datetime not null,
	datahora_ultima_atualizacao datetime not null,
	ativo bit not null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null 
) on [primary];

create table basico.log (
	id int identity (1, 1) not null ,
	id_categoria int not null ,
	id_perfil_pessoa int not null ,
	datahora_evento datetime not null ,
	xml varchar (7000) collate latin1_general_ci_ai not null 
) on [primary];

create table basico.login (
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
	datahora_ultima_tentativa_falha datetime null,
	datahora_ultimo_reset datetime null,
	datahora_ultima_troca_senha datetime null,
	datahora_cadastro datetime not null,
	datahora_aceite_termo_uso datetime null,
	datahora_ultima_atualizacao datetime not null,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null 
) on [primary];

create table basico.perfil (
	id int identity (1, 1) not null ,
	id_categoria int not null ,
	nome varchar (100) collate latin1_general_ci_ai not null ,
	descricao varchar (2000) collate latin1_general_ci_ai null ,
	constante_textual varchar (200) not null , 
	ativo bit not null ,
	datahora_cadastro datetime not null ,
	datahora_ultima_atualizacao datetime not null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null 
) on [primary];

create table basico.pessoa (
	id int identity (1, 1) not null ,
	id_perfil_padrao int null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null 
) on [primary];

create table dbo.pessoas_perfis (
	id int identity (1, 1) not null ,
	id_pessoa int not null ,
	id_perfil int not null ,
	datahora_cadastro datetime not null ,
	datahora_ultima_atualizacao datetime not null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null 
) on [primary];

create table dbo.tipo_categoria (
	id int identity (1, 1) not null ,
	nome varchar (100) collate latin1_general_ci_ai not null ,
	descricao varchar (2000) collate latin1_general_ci_ai null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null 
) on [primary];

create table basico.mensagem ( 
	id int identity not null,
	remetente varchar (200) collate latin1_general_ci_ai not null , 
	destinatarios varchar (3000) collate latin1_general_ci_ai not null ,
	assunto varchar (200) collate latin1_general_ci_ai not null ,
	datahora_mensagem datetime not null,
	datahora_envio datetime null,
	mensagem varchar (2000) collate latin1_general_ci_ai not null ,
	id_categoria int not null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null
) on [primary];

create table basico_mensagem.assoc_email ( 
	id int identity not null,
	destinatarios_copia_carbonada varchar (2000) collate latin1_general_ci_ai not null ,
	destinatarios_copia_carbonada_cega varchar (2000) collate latin1_general_ci_ai not null ,
	responder_para varchar (200) collate latin1_general_ci_ai not null ,
    id_mensagem int not null,
    rowinfo varchar (2000) collate latin1_general_ci_ai not null
) on [primary];

create table dbo.anexo_mensagem ( 
	id int identity not null ,
	nome_original varchar (200) collate latin1_general_ci_ai not null ,
	nome_sugestao varchar (200) collate latin1_general_ci_ai not null ,
	descricao varchar (400) collate latin1_general_ci_ai not null ,
	arquivo binary not null ,
	mime_type varchar (100) collate latin1_general_ci_ai not null ,
	id_mensagem int not null,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null
) on [primary];

create table dbo.pessoas_perfis_mensagens_categorias ( 
	id int identity not null ,
	id_mensagem int not null ,
	id_categoria int not null ,
	id_pessoa_perfil int not null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null
) on [primary];

create table basico_assoccl_pessoa_perfil.assoc_dados (
	id int identity not null ,
	id_pessoa_perfil int not null ,
	assinatura_mensagem_email varchar (2000) collate latin1_general_ci_ai ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null
) on [primary];

create table basico_categoria.assoc_chave_estrangeira (
	id int identity not null ,
	id_categoria int not null ,
	id_modulo    int not null,
	tabela_estrangeira varchar (100) collate latin1_general_ci_ai not null ,
	campo_estrangeiro varchar (100) collate latin1_general_ci_ai not null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null
) on [primary];

create table dbo.token (
	id int identity not null ,
	id_categoria int not null ,
	id_generico int not null ,
	token varchar (100) collate latin1_general_ci_ai not null ,
	datahora_expiracao datetime null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null
) on [primary];

create table dbo.dicionario_expressao (
	id int identity not null ,
	id_categoria int not null ,
	constante_textual varchar (200) collate latin1_general_ci_ai not null,
	traducao varchar (7000) collate latin1_general_ci_ai not null
) on [primary];


/* CRIACAO DAS CHAVES PRIMARIAS */

alter table basico.categoriawith nocheck add constraint pk_categoria primary key clustered (id) on [primary];

alter table basico.modulo with nocheck add constraint pk_modulo primary key clustered (id) on [primary];

alter table basico_pessoa.assoc_dados with nocheck add constraint pk_dados_pessoais primary key clustered (id) on [primary];

alter table basico_localizacao.email with nocheck add constraint pk_email primary key clustered (id)  on [primary];

alter table basico.log with nocheck add constraint pk_log primary key clustered (id) on [primary];

alter table basico.login with nocheck add constraint pk_login primary key clustered (id) on [primary]; 

alter table basico.perfil with nocheck add constraint pk_perfil primary key clustered (id) on [primary];

alter table basico.pessoa with nocheck add constraint pk_pessoa primary key clustered (id) on [primary];

alter table dbo.pessoas_perfis with nocheck add constraint pk_pessoas_perfis primary key clustered (id) on [primary];

alter table dbo.tipo_categoria with nocheck add constraint pk_tipo_categoria primary key clustered (id) on [primary];

alter table basico.mensagem with nocheck add constraint pk_mensagem primary key clustered (id)  on [primary];

alter table basico_mensagem.assoc_email with nocheck add constraint pk_mensagem_email primary key clustered (id) on [primary];

alter table dbo.anexo_mensagem with nocheck add constraint pk_anexo_mensagem primary key clustered (id) on [primary];

alter table dbo.pessoas_perfis_mensagens_categorias with nocheck add constraint pk_pessoas_perfis_mensagens_categorias primary key clustered (id) on [primary];

alter table basico_assoccl_pessoa_perfil.assoc_dados with nocheck add constraint pk_dados_pessoas_perfis primary key clustered (id) on [primary];

alter table basico_categoria.assoc_chave_estrangeira with nocheck add constraint pk_categoria_chave_estrangeira primary key clustered (id) on [primary];

alter table dbo.token with nocheck add constraint pk_token primary key clustered (id) on [primary];

alter table dbo.dicionario_expressao with nocheck add constraint pk_dicionario_expressao primary key clustered (id) on [primary];


/* CRIACAO DOS VALORES DEFAULT */

alter table basico.categoriaadd 
	constraint df_categoria_nivel default (1) for nivel,
	constraint df_categoria_ativo default (1) for ativo;

alter table basico.modulo add
	constraint df_modulo_instalado default 0 for instalado,
	constraint df_modulo_ativo default 0 for ativo;

alter table basico_localizacao.email add 
	constraint df_email_validado default (0) for validado,
	constraint df_email_ativo default (0) for ativo,
	constraint df_email_datahora_cadastro default (getDate()) for datahora_cadastro,
	constraint df_email_datahora_ultima_atualizacao default (getDate()) for datahora_ultima_atualizacao;

alter table basico.perfil add 
	constraint df_perfil_ativo default (1) for ativo ,
	constraint df_perfil_datahora_cadastro default (getDate()) for datahora_cadastro ,
	constraint df_perfil_datahora_ultima_atualizacao default (getDate()) for datahora_ultima_atualizacao;
	
alter table dbo.pessoas_perfis add
    constraint df_pessoas_perfis_datahora_cadastro default (getDate()) for datahora_cadastro ,
    constraint df_pessoas_perfis_datahora_ultima_atualizacao default (getDate()) for datahora_ultima_atualizacao;

alter table basico.login add 
	constraint df_login_ativo default (0) for ativo,
	constraint df_login_tentativas_falhas default (0) for tentativas_falhas,
	constraint df_login_travado default (0) for travado,
	constraint df_login_resetado default (0) for resetado,
	constraint df_login_pode_expirar default (1) for pode_expirar,
	constraint df_login_datahora_proxima_expiracao default (dateadd(month,12,getdate())) for datahora_proxima_expiracao,
	constraint df_login_datahora_cadastro default (getDate()) for datahora_cadastro,
	constraint df_login_datahora_ultima_atualizacao default (getDate()) for datahora_ultima_atualizacao;
	
alter table dbo.token add
	constraint df_token_datahora_expiracao default (dateadd(hour, 36, getdate())) for datahora_expiracao;


/* CRIACAO DOS INDICES */
create unique index ix_email_unique_id on basico_localizacao.email (unique_id) on [primary];

create unique index ix_email_email on basico_localizacao.email (email) on [primary];

create index ix_categoria_nome on basico.categoria(nome) on [primary];

create index ix_modulo_nome on basico.modulo (nome) on [primary];

create index ix_dados_pessoais_nome on basico_pessoa.assoc_dados (nome) on [primary];

create index ix_mensagem_assunto on basico.mensagem (assunto) on [primary];

create unique index ix_login_login on basico.login (login) on [primary];

create unique index ix_tipo_categoria_nome on dbo.tipo_categoria (nome) on [primary];

create index ix_mensagem_email_responder_para on basico_mensagem.assoc_email (responder_para) on [primary];

create unique index ix_categoria_chave_estrangeira_id_categoria on basico_categoria.assoc_chave_estrangeira (id_categoria) on [primary];

create unique index ix_token_token on dbo.token (token) on [primary];

create index ix_dicionario_expressao_constante_textual on dbo.dicionario_expressao (constante_textual) on [primary];


/* CRIACAO DAS CONSTRAINTS UNIQUE */

alter table basico_localizacao.email add 
	constraint ix_email_proprietario_categoria_email unique
	(
		id_generico_proprietario, 
		id_categoria, 
		email) on [primary];

alter table basico.modulo add
	constraint ix_modulo_categoria_nome unique nonclustered
	(
		id_categoria,
		nome
	) on [primary];

alter table basico.perfil add
    constraint ix_perfil_categoria_nome unique nonclustered
    (
        id_categoria,
        nome
    ) on [primary];

alter table dbo.pessoas_perfis add constraint ix_pessoas_perfis unique nonclustered
    (
        id_pessoa,
		id_perfil
	)  on [primary];
	
alter table dbo.dicionario_expressao add constraint ix_dicionario_expressao unique nonclustered
	(
		id_categoria,
		constante_textual
	) on [primary];


/* CRIACAO DAS CHAVES ESTRANGEIRAS */

alter table basico.pessoa add
	constraint fk_pessoa_id_perfil_padrao foreign key 
	(
		id_perfil_padrao
	) references basico.perfil (
		id
	);

alter table basico.categoriaadd 
	constraint fk_categoria_categoria foreign key 
	(
		id_categoria_pai
	) references basico.categoria(
		id
	),
	constraint fk_categoria_tipo_categoria foreign key 
	(
		id_tipo_categoria
	) references dbo.tipo_categoria (
		id
	);

alter table basico.modulo add
	constraint fk_modulo_categoria foreign key
	(
		id_categoria
	) references basico.categoria(
		id
	),
	constraint fk_modulo_id_modulo_pai foreign key
	(
		id_modulo_pai
	) references basico.modulo (
		id
	);
	
alter table basico_categoria.assoc_chave_estrangeira add 
    constraint fk_categoria_chave_estrangeira_categoria foreign key 
    (
    	id_categoria
    ) references basico.categoria(
    	id
    ),
    constraint fk_categoria_chave_estrangeira_modulo foreign key 
    (
    	id_modulo
    ) references basico.modulo (
    	id
    );

alter table basico_pessoa.assoc_dados add 
	constraint fk_dados_pessoais_pessoa foreign key 
	(
		id_pessoa
	) references basico.pessoa (
		id
	);

alter table basico_localizacao.email add 
	constraint fk_email_categoria foreign key 
	(
		id_categoria
	) references basico.categoria(
		id
	);

alter table basico.log add 
	constraint fk_log_categoria foreign key 
	(
		id_categoria
	) references basico.categoria(
		id
	),
	constraint fk_log_pessoas_perfis foreign key 
	(
		id_perfil_pessoa
	) references dbo.pessoas_perfis (
		id
	);

alter table basico.login add 
	constraint fk_login_pessoa foreign key 
	(
		id_pessoa
	) references basico.pessoa (
		id
	);

alter table basico.perfil add 
	constraint fk_perfil_categoria foreign key 
	(
		id_categoria
	) references basico.categoria(
		id
	);

alter table dbo.pessoas_perfis add 
	constraint fk_pessoas_perfis_perfil foreign key 
	(
		id_perfil
	) references basico.perfil (
		id
	),
	constraint fk_pessoas_perfis_pessoa foreign key 
	(
		id_pessoa
	) references basico.pessoa (
		id
	);

alter table basico.mensagem with nocheck add 
    constraint fk_mensagens_categorias foreign key
    (
        id_categoria
    ) references basico.categoria(
        id
	);

alter table basico_mensagem.assoc_email with nocheck add 
    constraint fk_mensagem_email_mensagem foreign key
    (
        id_mensagem
    ) references dbo.mensagem (
        id
	);

alter table dbo.anexo_mensagem add 
    constraint fk_anexo_mensagem_mensagem foreign key (
        id_mensagem
    ) references basico.mensagem (
        id
	);

alter table dbo.pessoas_perfis_mensagens_categorias add
    constraint fk_pessoas_perfis_mensagens_categorias_pessoas_perfis foreign key (
        id_pessoa_perfil
    ) references dbo.pessoas_perfis (
        id
    );

alter table dbo.pessoas_perfis_mensagens_categorias add
    constraint fk_pessoas_perfis_mensagens_categorias_mensagem foreign key (
        id_mensagem
    ) references basico.mensagem (
        id
    );

alter table dbo.pessoas_perfis_mensagens_categorias add
    constraint fk_pessoas_perfis_mensagens_categorias_categoria foreign key (
        id_categoria
    ) references basico.categoria(
        id
    );
    
alter table basico_assoccl_pessoa_perfil.assoc_dados add
	constraint fk_dados_pessoas_perfis_pessoas_perfis foreign key (
		id_pessoa_perfil
	) references dbo.pessoas_perfis (
		id
	);

alter table dbo.token add
	constraint fk_token_categoria foreign key (
		id_categoria
	) references basico.categoria(
		id
	);
	
alter table dbo.dicionario_expressao add
	constraint fk_dicionario_expressao_categoria foreign key (
		id_categoria
	) references basico.categoria(
		id
	);


/* CRIACAO DOS CHECK CONSTRAINTS */

alter table basico.perfil add
    constraint ck_perfil_constante_textual_nome check
    ((constante_textual is null) or (dbo.fn_CheckConstanteTextualExists(constante_textual) is not null));