/**
* SCRIPT CRIACAO DE INDICES PARCIAIS
* 
* versao: 1.0 (POSTGRESQL 9.1.1)
* por: CARLOS FEITOSA (carlos.feitosa@rochedoframework.com)
* criacao: 27/02/2012
* ultimas modificacoes:
* 								
*/

CREATE UNIQUE INDEX unp_tipo_categoria ON basico.tipo_categoria (nome)
WHERE id_tipo_categoria_pai IS NULL;

CREATE UNIQUE INDEX unp_categoria ON basico.categoria (id_tipo_categoria, nome)
WHERE id_categoria_pai IS NULL;

CREATE UNIQUE INDEX unp_assoccl_metedo_validacao ON basico_acao_aplicacao.assoccl_metodo_validacao (id_acao_aplicacao, id_metodo_validacao)
WHERE id_perfil IS NULL;

CREATE UNIQUE INDEX unp_assoc_estado ON basico_localizacao.assoc_estado (id_pais, nome, id_categoria)
WHERE id_estado_pai IS NULL;

CREATE UNIQUE INDEX unp_assoc_municipio ON basico_localizacao.assoc_municipio (id_estado, nome, codigo_ddd, id_categoria)
WHERE id_municipio_pai IS NULL;

CREATE UNIQUE INDEX unp_area_conhecimento ON basico.area_conhecimento (id_categoria, nome)
WHERE id_area_conhecimento_pai IS NULL;

CREATE UNIQUE INDEX unp_area_economia ON basico.area_economia (id_categoria, nome)
WHERE id_area_economia_pai IS NULL;

CREATE UNIQUE INDEX unp_cpg_arquivo ON basico.cpg_arquivo (id_categoria, uri)
WHERE nome IS NULL;

CREATE UNIQUE INDEX unp_cpg_dados_bancarios ON basico.cpg_dados_bancarios (id_categoria, id_generico_proprietario, numero_banco, numero_agencia, numero_conta)
WHERE numero_tipo_conta IS NULL;

CREATE UNIQUE INDEX unp_cpg_link ON basico.cpg_link (id_categoria, id_generico_proprietario, url)
WHERE nome IS NULL;

CREATE UNIQUE INDEX unp_cpg_produto ON basico.cpg_produto (id_categoria, id_generico_proprietario)
WHERE nome IS NULL;

CREATE UNIQUE INDEX unp_formulario ON basico.formulario (id_categoria, nome)
WHERE id_formulario_pai IS NULL;

CREATE UNIQUE INDEX unp_assocag_parceria ON basico_pessoa_juridica.assocag_parceria (id_categoria, id_pessoa_juridica, id_pessoa_juridica_parceira)
WHERE id_assocag_parceria IS NULL;