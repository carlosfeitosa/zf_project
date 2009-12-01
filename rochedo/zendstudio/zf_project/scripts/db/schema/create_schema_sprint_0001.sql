7create table [dbo].[categoria] (
	[id] [int] identity (1, 1) not null ,
	[id_tipo_categoria] [int] not null ,
	[id_categoria_pai] [int] null ,
	[nivel] [int] not null ,
	[nome] [varchar] (100) collate latin1_general_ci_ai not null ,
	[descricao] [varchar] (2000) collate latin1_general_ci_ai null ,
	[ativo] [bit] not null ,
	[rowinfo] [varchar] (2000) collate latin1_general_ci_ai not null 
) on [primary]
go

create table [dbo].[dados_pessoais] (
	[id] [int] identity (1, 1) not null ,
	[id_pessoa] [int] not null ,
	[nome] [varchar] (100) collate latin1_general_ci_ai not null ,
	[rowinfo] [varchar] (2000) collate latin1_general_ci_ai not null 
) on [primary]
go

create table [dbo].[email] (
	[id] [int] identity (1, 1) not null ,
	[id_pessoa] [int] not null ,
	[id_categoria] [int] not null ,
	[unique_id] [varchar] (100) collate latin1_general_ci_ai not null ,
	[email] [varchar] (100) collate latin1_general_ci_ai not null ,
	[validado] [bit] not null ,
	[datahora_ultima_validacao] [datetime] null ,
	[ativo] [bit] not null ,
	[rowinfo] [varchar] (2000) collate latin1_general_ci_ai not null 
) on [primary]
go

create table [dbo].[log] (
	[id] [int] identity (1, 1) not null ,
	[id_categoria] [int] not null ,
	[id_perfil_pessoa] [int] not null ,
	[datahora_evento] [datetime] not null ,
	[xml] [varchar] (2000) collate latin1_general_ci_ai not null 
) on [primary]
go

create table [dbo].[login] (
	[id] [int] identity (1, 1) not null ,
	[id_pessoa] [int] not null ,
	[login] [varchar] (100) collate latin1_general_ci_ai not null ,
	[senha] [varchar] (100) collate latin1_general_ci_ai not null ,
	[ativo] [bit] not null ,
	[tentativas_falhas] [int] not null ,
	[travado] [bit] not null ,
	[resetado] [bit] not null ,
	[datahora_ultimo_logon] [datetime] null ,
	[observacoes] [varchar] (2000) collate latin1_general_ci_ai null ,
	[pode_expirar] [bit] not null ,
	[datahora_proxima_expiracao] [datetime] null ,
	[datahora_ultima_expiracao] [datetime] null ,
	[rowinfo] [varchar] (2000) collate latin1_general_ci_ai not null 
) on [primary]
go

create table [dbo].[perfil] (
	[id] [int] identity (1, 1) not null ,
	[id_categoria] [int] not null ,
	[nome] [varchar] (100) collate latin1_general_ci_ai not null ,
	[descricao] [varchar] (2000) collate latin1_general_ci_ai null ,
	[ativo] [bit] not null ,
	[rowinfo] [varchar] (2000) collate latin1_general_ci_ai not null 
) on [primary]
go

create table [dbo].[pessoa] (
	[id] [int] identity (1, 1) not null ,
	[rowinfo] [varchar] (2000) collate latin1_general_ci_ai not null 
) on [primary]
go

create table [dbo].[pessoas_perfis] (
	[id] [int] identity (1, 1) not null ,
	[id_pessoa] [int] not null ,
	[id_perfil] [int] not null 
) on [primary]
go

create table [dbo].[tipo_categoria] (
	[id] [int] identity (1, 1) not null ,
	[nome] [varchar] (100) collate latin1_general_ci_ai not null ,
	[descricao] [varchar] (2000) collate latin1_general_ci_ai null ,
	[rowinfo] [varchar] (2000) collate latin1_general_ci_ai not null 
) on [primary]
go

create table [dbo].[mensagem] ( 
	[id]       	int identity not null,
	[remetente]	varchar(220) not null,
	[destinatarios]	varchar(2000) not null,
	[assunto]  	varchar(200) not null,
	[datahora_mensagem] datetime not null,
	[mensagem] 	varchar(2000) not null,
	[id_categoria] int not null,
	[rowinfo] [varchar] (2000) collate latin1_general_ci_ai not null
)on [primary]
go



create  unique  index [ix_mensagem_assunto] on [dbo].[mensagem]([assunto]) on [primary]
go
create  unique  index [ix_mensagem_remetente] on [dbo].[mensagem]([remetente]) on [primary]
go

create table [dbo].[mensagem_email] ( 
	[id]       	int identity not null,
	[destinatarios_copia_carbonada]	varchar(2000) not null,
	[destinatarios_copia_carbonada_cega]	varchar(2000) not null,
	[responder_para] varchar(200) not null,
    [id_mensagem] int not null,
    [rowinfo] [varchar] (2000) collate latin1_general_ci_ai not null
)on [primary]
go

create  unique  index [ix_responder_para] on [dbo].[mensagem_email]([responder_para]) on [primary]
go

create table [dbo].[anexo_mensagem] ( 
	[id]           	int identity not null,
	[nome_original]	varchar(200) not null,
	[nome_sugestao]	varchar(200) not null,
	[descricao]    	varchar(400) not null,
	[arquivo]      	binary not null,
	[mime_type]    	varchar(100) not null,
	[id_mensagem]  	int not null,
	[rowinfo] [varchar] (2000) collate latin1_general_ci_ai not null
)
go

alter table [dbo].[categoria] with nocheck add 
	constraint [pk_categoria] primary key  clustered 
	(
		[id]
	)  on [primary] 
go

alter table [dbo].[dados_pessoais] with nocheck add 
	constraint [pk_dados_pessoais] primary key  clustered 
	(
		[id]
	)  on [primary] 
go

alter table [dbo].[email] with nocheck add 
	constraint [pk_email] primary key  clustered 
	(
		[id]
	)  on [primary] 
go

alter table [dbo].[log] with nocheck add 
	constraint [pk_log] primary key  clustered 
	(
		[id]
	)  on [primary] 
go

alter table [dbo].[login] with nocheck add 
	constraint [pk_login] primary key  clustered 
	(
		[id]
	)  on [primary] 
go

alter table [dbo].[perfil] with nocheck add 
	constraint [pk_perfil] primary key  clustered 
	(
		[id]
	)  on [primary] 
go

alter table [dbo].[pessoa] with nocheck add 
	constraint [pk_pessoa] primary key  clustered 
	(
		[id]
	)  on [primary] 
go

alter table [dbo].[pessoas_perfis] with nocheck add 
	constraint [pk_pessoas_perfis] primary key  clustered 
	(
		[id]
	)  on [primary] 
go

alter table [dbo].[tipo_categoria] with nocheck add 
	constraint [pk_tipo_categoria] primary key  clustered 
	(
		[id]
	)  on [primary] 
go

alter table [dbo].[categoria] add 
	constraint [df_categoria_nivel] default (1) for [nivel],
	constraint [df_categoria_ativo] default (1) for [ativo]
go

create index [ix_categoria] on [dbo].[categoria]([nome]) on [primary]
go

 create  index [ix_dados_pessoais] on [dbo].[dados_pessoais]([nome]) on [primary]
go

alter table [dbo].[email] add 
	constraint [df_email_validado] default (0) for [validado],
	constraint [df_email_ativo] default (0) for [ativo]
go

 create  unique  index [ix_email] on [dbo].[email]([unique_id]) on [primary]
go

 create  unique  index [ix_email_1] on [dbo].[email]([email]) on [primary]
go

alter table [dbo].[login] add 
	constraint [df_login_ativo] default (0) for [ativo],
	constraint [df_login_tentativas_falhas] default (0) for [tentativas_falhas],
	constraint [df_login_travado] default (0) for [travado],
	constraint [df_login_resetado] default (0) for [resetado],
	constraint [df_login_pode_expirar] default (1) for [pode_expirar],
	constraint [df_login_datahora_proxima_expiracao] default (dateadd(month,12,getdate())) for [datahora_proxima_expiracao],
	constraint [ix_login_1] unique  nonclustered 
	(
		[id]
	)  on [primary] 
go

 create  unique  index [ix_login] on [dbo].[login]([login]) on [primary]
go

alter table [dbo].[perfil] add 
	constraint [df_perfil_ativo] default (1) for [ativo]
go

alter table [dbo].[pessoas_perfis] add 
	constraint [ix_pessoas_perfis] unique  nonclustered 
	(
		[id_pessoa],
		[id_perfil]
	)  on [primary] 
go

 create  unique  index [ix_tipo_categoria] on [dbo].[tipo_categoria]([nome]) on [primary]
go

alter table [dbo].[categoria] add 
	constraint [fk_categoria_categoria] foreign key 
	(
		[id_categoria_pai]
	) references [dbo].[categoria] (
		[id]
	),
	constraint [fk_categoria_tipo_categoria] foreign key 
	(
		[id_tipo_categoria]
	) references [dbo].[tipo_categoria] (
		[id]
	)
go

alter table [dbo].[dados_pessoais] add 
	constraint [fk_dados_pessoais_pessoa] foreign key 
	(
		[id_pessoa]
	) references [dbo].[pessoa] (
		[id]
	)
go

alter table [dbo].[email] add 
	constraint [fk_email_categoria] foreign key 
	(
		[id_categoria]
	) references [dbo].[categoria] (
		[id]
	),
	constraint [fk_email_pessoa] foreign key 
	(
		[id_pessoa]
	) references [dbo].[pessoa] (
		[id]
	)
go

alter table [dbo].[log] add 
	constraint [fk_log_categoria] foreign key 
	(
		[id_categoria]
	) references [dbo].[categoria] (
		[id]
	),
	constraint [fk_log_pessoas_perfis] foreign key 
	(
		[id_perfil_pessoa]
	) references [dbo].[pessoas_perfis] (
		[id]
	)
go

alter table [dbo].[login] add 
	constraint [fk_login_pessoa] foreign key 
	(
		[id_pessoa]
	) references [dbo].[pessoa] (
		[id]
	)
go

alter table [dbo].[perfil] add 
	constraint [fk_perfil_categoria] foreign key 
	(
		[id_categoria]
	) references [dbo].[categoria] (
		[id]
	)
go

alter table [dbo].[pessoas_perfis] add 
	constraint [fk_pessoas_perfis_perfil] foreign key 
	(
		[id_perfil]
	) references [dbo].[perfil] (
		[id]
	),
	constraint [fk_pessoas_perfis_pessoa] foreign key 
	(
		[id_pessoa]
	) references [dbo].[pessoa] (
		[id]
	)
go

alter table [dbo].[mensagem] with nocheck add 
	constraint [pk_mensagem] primary key  clustered 
	(
		[id]
	)  on [primary] 
go

alter table [dbo].[mensagem] with nocheck add 
    constraint [fk_id_mensagem_categoria]	foreign key(
    [id_categoria]
    )
	references [dbo].[categoria](
	[id]
	)
go

alter table [dbo].[mensagem_email] with nocheck add 
	constraint [pk_mensagem_email] primary key  clustered 
	(
		[id]
	)  on [primary] 
go

alter table [dbo].[mensagem_email] with nocheck add 
    constraint [fk_id_mensagem]	foreign key(
    [id_mensagem]
    )
	references [dbo].[mensagem](
	[id]
	)
go

alter table [dbo].[anexo_mensagem] with nocheck add 
	constraint [pk_anexo_mensagem] primary key  clustered 
	(
		[id]
	)  on [primary] 
go

alter table [dbo].[anexo_mensagem] add 
    constraint [fk_id_mensagem_anexo] foreign key (
    [id_mensagem]
    )
	references [dbo].[mensagem](
	[id]
	)
go

CREATE TABLE [dbo].[pessoas_perfis_mensagem_categoria] ( 
	[id]              	int IDENTITY NOT NULL,
	[id_mensagem]     	int NOT NULL,
	[id_categoria]    	int NOT NULL,
	[id_pessoa_perfil]	int NOT NULL,
	[rowinfo]         	varchar(2000) NOT NULL,
	CONSTRAINT [pk_pessoas_perfis_mensagem_categoria] PRIMARY KEY([id])
)
GO
ALTER TABLE [dbo].[pessoas_perfis_mensagem_categoria]
	ADD CONSTRAINT [fk_pessoa_perfil]
	FOREIGN KEY([id_pessoa_perfil])
	REFERENCES [dbo].[pessoas_perfis]([id])
GO
ALTER TABLE [dbo].[pessoas_perfis_mensagem_categoria]
	ADD CONSTRAINT [fk_mensagem]
	FOREIGN KEY([id_mensagem])
	REFERENCES [dbo].[mensagem]([id])
GO
ALTER TABLE [dbo].[pessoas_perfis_mensagem_categoria]
	ADD CONSTRAINT [fk_categoria]
	FOREIGN KEY([id_categoria])
	REFERENCES [dbo].[categoria]([id])
