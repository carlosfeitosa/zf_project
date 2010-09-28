/*
* SCRIPT DE CRIACAO DAS TABELAS DO SPRINT 0002
* 
* versao: 1.0 (MSSQL 2000)
* por: JOÃO VASCONCELOS (joao.vasconcelos@rochedoproject.com)
* criacao: 27/09/2009
* ultimas modificacoes: 
* 						
*/

/* CRIACAO DAS TABELAS */

create table documento_identificacao (
	id identity (1, 1) not null ,
	id_generico_proprietario int not null ,
	id_categoria int not null ,
	id_pessoa_juridica_orgao_expedidor int not null,
	identificador varchar (200) collate latin1_general_ci_ai not null ,
	data_emissao datetime null ,
	data_vencimento datetime null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null

) on [primary];

create table mascara (
	id identity (1, 1) not null ,
	id_categoria int not null ,
	nome varchar (200) collate latin1_general_ci_ai not null ,
	descricao varchar (2000) collate latin1_general_ci_ai not null ,
	mascara varchar (400) collate latin1_general_ci_ai not null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null
) on [primary];

create table dados_biometricos (
	id identity (1, 1) not null ,
	id_pessoa int not null ,
	sexo int not null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null
) on [primary];

create table pessoa_juridica (
	id identity (1, 1) not null ,
	id_pessoa_juridica_pai int null ,
	id_categoria int not null ,
	nome varchar (200) collate latin1_general_ci_ai not null ,
	sigla varchar (50) collate latin1_general_ci_ai not null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null
) on [primary];

create table estado (
	id identity (1, 1) not null ,
	id_pais int not null ,
	nome varchar (200) collate latin1_general_ci_ai not null ,
	sigla varchar (50) collate latin1_general_ci_ai not null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null
) on [primary];

create table pais (
	id identity (1, 1) not null ,
	constante_textual_nome varchar (200) collate latin1_general_ci_ai not null ,
	sigla varchar (50) collate latin1_general_ci_ai not null ,
	codigo_ddi varchar (10) collate latin1_general_ci_ai null ,
	rowinfo varchar (2000) collate latin1_general_ci_ai not null
) on [primary];

create table endereco (
	id identity (1, 1) not null ,
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

alter table documento_identificacao with nocheck add constraint pk_documento_identificacao primary key clustered (id) on [primary];

alter table mascara with nocheck add constraint pk_mascara primary key clustered (id) on [primary];

alter table dados_biometricos with nocheck add constraint pk_dados_biometricos primary key clustered (id) on [primary];

alter table pessoa_juridica with nocheck add constraint pk_pessoa_juridica primary key clustered (id) on [primary];

alter table estado with nocheck add constraint pk_estado primary key clustered (id) on [primary];

alter table pais with nocheck add constraint pk_pais primary key clustered (id) on [primary];

/* CRIACAO DOS INDICES */

create unique index ix_documento_identificacao_identificador on documento_identificacao (identificador) on [primary];
  
create unique index ix_mascara_nome on mascara (nome) on [primary];
  
create unique index ix_pessoa_juridica_nome on pessoa_juridica (nome) on [primary];
  
create unique index ix_pessoa_juridica_sigla on pessoa_juridica (sigla) on [primary];
  
create unique index ix_estado_nome on estado (nome) on [primary];
  
create unique index ix_estado_sigla on estado (sigla) on [primary];
  
create unique index ix_pais_constante_textual_nome on pais (constante_textual_nome) on [primary];
  
create unique index ix_pais_sigla on pais (sigla) on [primary];
  
/* CRIACAO DAS CONSTRAINTS UNIQUE */

alter table documento_identificacao add 
    constraint un_documento_identificao_identificador_categoria_proprietario_expedidor unique nonclustered 
    (
        identificador, 
        id_categoria, 
        id_generico_proprietario, 
        id_pessoa_juridica_orgao_expedidor
    ) on [primary];
  
alter table mascara add 
    constraint un_mascara_nome_mascara unique nonclustered
    (
        nome, 
        mascara
    ) on [primary];
  
alter table pessoa_juridica add 
    constraint un_pessoa_juridica_nome unique nonclustered
    (
        nome
    ) on [primary];
  
alter table estado add
    constraint un_estado_nome_pais unique nonclustered
    (
        nome, 
        id_pais
    ) on [primary];
  
alter table pais add 
    constraint un_pais_constante_textual_nome unique nonclustered 
    (
        constante_textual_nome
    ) on [primary];
  
alter table pais add
    constraint un_pais_sigla unique nonclustered 
    (
        sigla
    ) on [primary];
  
/* CRIACAO DAS CHAVES ESTRANGEIRAS */

alter table documento_identificacao add 
    constraint fk_documento_identificacao_categoria foreign key 
    (    
        id_categoria
    ) references categoria (
        id
    ),
    constraint fk_documento_identificacao_pessoa_juridica foreign key 
    (
        id_pessoa_juridica_orgao_expedidor
    ) references pessoa_juridica (
        id
    );

alter table mascara add 
    constraint fk_mascara_categoria foreign key 
    (
        id_categoria
    ) references categoria (
        id
    );
  
alter table dados_biometricos add
    constraint fk_dados_biometricos_pessoa foreign key 
    (
        id_pessoa
    ) references pessoa (
        id
    );
  
alter table estado add 
    constraint fk_estado_pais foreign key 
    (
        id_pais
    ) references pais (
        id
    );
  
alter table endereco add 
    constraint fk_endereco_pessoa_perfil foreign key 
    (
        id_pessoa_perfil_validador
    ) references pessoas_perfis (
        id
    ),
    constraint fk_endereco_categoria foreign key 
    (
        id_categoria
    ) references categoria (
        id
    ),
    constraint fk_endereco_estado foreign key 
    (
        id_estado
    ) references estado (
        id
    ),
    constraint fk_endereco_pais foreign key 
    (
        id_pais
    ) references pais (
        id
    );
  
/* CRIACAO DOS CHECK CONSTRAINTS */

alter table pais add
    constraint ck_pais_constante_textual_nome check
    ((constante_textual_nome is null) or (dbo.fn_CheckConstanteTextualExists(constante_textual_nome) is not null));