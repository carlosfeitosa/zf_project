/*
* SCRIPT DE CRIACAO DAS TABELAS DO SPRINT 0002
* 
* versao: 1.0 (MSSQL 2000)
* por: JOÃO VASCONCELOS (joao.vasconcelos@rochedoproject.com)
* criacao: 27/09/2010
* ultimas modificacoes: 
* 						
*/

/* CRIACAO DAS TABELAS */

create table dbo.documento_identificacao (
	id int identity (1, 1) not null ,
	id_generico_proprietario int not null ,
	id_categoria int not null ,
	id_pessoa_juridica_orgao_expedidor int not null,
	identificador varchar (200) collate latin1_general_ci_ai not null ,
	data_emissao datetime null ,
	data_vencimento datetime null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null

) on [primary];

create table basico.mascara (
	id int identity (1, 1) not null ,
	id_categoria int not null ,
	nome varchar (200) collate latin1_general_ci_ai not null ,
	descricao varchar (2000) collate latin1_general_ci_ai not null ,
	mascara varchar (400) collate latin1_general_ci_ai not null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null
) on [primary];

create table dbo.dados_biometricos (
	id int identity (1, 1) not null ,
	id_pessoa int not null ,
	sexo char (1) not null ,
	constante_textual_raca varchar (200) collate latin1_general_ci_ai null,
	altura numeric (3,2) null,
	peso numeric (6,3) null,
	id_tipo_sanguineo int null,
	historico_medico varchar (2000) collate latin1_general_ci_ai null,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null
) on [primary];

create table dbo.pessoa_juridica (
	id int identity (1, 1) not null ,
	id_pessoa_juridica_pai int null ,
	id_categoria int not null ,
	nome varchar (200) collate latin1_general_ci_ai not null ,
	sigla varchar (50) collate latin1_general_ci_ai not null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null
) on [primary];

create table basico_localizacao.estado (
	id int identity (1, 1) not null ,
	id_pais int not null ,
	id_categoria int not null ,
	nome varchar (200) collate latin1_general_ci_ai not null ,
	sigla varchar (50) collate latin1_general_ci_ai not null ,
	codigo_ddd varchar (3) collate latin1_general_ci_ai null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null
) on [primary];

create table basico_localizacao.pais (
	id int identity (1, 1) not null ,
	constante_textual_nome varchar (200) collate latin1_general_ci_ai not null ,
	sigla varchar (50) collate latin1_general_ci_ai not null ,
	codigo_ddi varchar (10) collate latin1_general_ci_ai null ,
	codigo_iso3166 varchar (10) collate latin1_general_ci_ai null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null
) on [primary];

create table basico_localizacao.endereco (
	id int identity (1, 1) not null ,
	id_generico_proprietario int not null ,
	id_pessoa_perfil_validador int null ,
	id_categoria int not null ,
	id_estado int null ,
	id_pais int null ,
	descricao varchar (2000) collate latin1_general_ci_ai null ,
	logradouro varchar (15) collate latin1_general_ci_ai null ,
	numero varchar (15) collate latin1_general_ci_ai null ,
	complemento varchar (50) collate latin1_general_ci_ai null ,
	cep varchar (15) collate latin1_general_ci_ai null ,
	caixa_postal varchar (15) collate latin1_general_ci_ai null ,
	ponto_referencia varchar (300) collate latin1_general_ci_ai null ,
	data_validacao datetime null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null
) on [primary];

/* CRIACAO DAS CHAVES PRIMARIAS */

alter table dbo.documento_identificacao with nocheck add constraint pk_documento_identificacao primary key clustered (id) on [primary];

alter table basico.mascara with nocheck add constraint pk_mascara primary key clustered (id) on [primary];

alter table dbo.dados_biometricos with nocheck add constraint pk_dados_biometricos primary key clustered (id) on [primary];

alter table dbo.pessoa_juridica with nocheck add constraint pk_pessoa_juridica primary key clustered (id) on [primary];

alter table basico_localizacao.estado with nocheck add constraint pk_estado primary key clustered (id) on [primary];

alter table basico_localizacao.pais with nocheck add constraint pk_pais primary key clustered (id) on [primary];

/* CRIACAO DOS INDICES */

create unique index ix_documento_identificacao_identificador on dbo.documento_identificacao (identificador) on [primary];
  
create unique index ix_mascara_nome on basico.mascara (nome) on [primary];
  
create unique index ix_pessoa_juridica_nome on dbo.pessoa_juridica (nome) on [primary];
  
create unique index ix_pessoa_juridica_sigla on dbo.pessoa_juridica (sigla) on [primary];
  
create unique index ix_estado_nome on basico_localizacao.estado (nome) on [primary];
  
create unique index ix_estado_sigla on basico_localizacao.estado (sigla) on [primary];
  
create unique index ix_pais_constante_textual_nome on basico_localizacao.pais (constante_textual_nome) on [primary];
  
create unique index ix_pais_sigla on basico_localizacao.pais (sigla) on [primary];
  
/* CRIACAO DAS CONSTRAINTS UNIQUE */

alter table dbo.documento_identificacao add 
    constraint un_documento_identificao_identificador_categoria_proprietario_expedidor unique nonclustered 
    (
        identificador, 
        id_categoria, 
        id_generico_proprietario, 
        id_pessoa_juridica_orgao_expedidor
    ) on [primary];
  
alter table basico.mascara add 
    constraint un_mascara_nome_mascara unique nonclustered
    (
        nome, 
        mascara
    ) on [primary];
  
alter table dbo.pessoa_juridica add 
    constraint un_pessoa_juridica_nome unique nonclustered
    (
        nome
    ) on [primary];
  
alter table basico_localizacao.estado add
    constraint un_estado_nome_pais unique nonclustered
    (
        nome, 
        id_pais
    ) on [primary];
  
alter table basico_localizacao.pais add 
    constraint un_pais_constante_textual_nome unique nonclustered 
    (
        constante_textual_nome
    ) on [primary];
  
alter table basico_localizacao.pais add
    constraint un_pais_sigla unique nonclustered 
    (
        sigla
    ) on [primary];
  
/* CRIACAO DAS CHAVES ESTRANGEIRAS */

alter table dbo.documento_identificacao add 
    constraint fk_documento_identificacao_categoria foreign key 
    (    
        id_categoria
    ) references dbo.categoria (
        id
    ),
    constraint fk_documento_identificacao_pessoa_juridica foreign key 
    (
        id_pessoa_juridica_orgao_expedidor
    ) references dbo.pessoa_juridica (
        id
    );

alter table basico.mascara add 
    constraint fk_mascara_categoria foreign key 
    (
        id_categoria
    ) references dbo.categoria (
        id
    );
  
alter table dbo.dados_biometricos add
    constraint fk_dados_biometricos_pessoa foreign key 
    (
        id_pessoa
    ) references basico.pessoa (
        id
    );
  
alter table basico_localizacao.estado add 
    constraint fk_estado_pais foreign key 
    (
        id_pais
    ) references basico_localizacao.pais (
        id
    );

alter table basico_localizacao.estado add 
    constraint fk_estado_categoria foreign key 
    (
        id_categoria
    ) references dbo.categoria (
        id
    );
  
alter table basico_localizacao.endereco add 
    constraint fk_endereco_pessoa_perfil foreign key 
    (
        id_pessoa_perfil_validador
    ) references dbo.pessoas_perfis (
        id
    ),
    constraint fk_endereco_categoria foreign key 
    (
        id_categoria
    ) references dbo.categoria (
        id
    ),
    constraint fk_endereco_estado foreign key 
    (
        id_estado
    ) references basico_localizacao.estado (
        id
    ),
    constraint fk_endereco_pais foreign key 
    (
        id_pais
    ) references basico_localizacao.pais (
        id
    );
  
/* CRIACAO DOS CHECK CONSTRAINTS */
    
alter table dbo.dados_biometricos add
    constraint ck_dados_biometricos_sexo check
    ((sexo = 'M') or (sexo = 'F'));

alter table basico_localizacao.pais add
    constraint ck_pais_constante_textual_nome check
    ((constante_textual_nome is null) or (dbo.fn_CheckConstanteTextualExists(constante_textual_nome) is not null));