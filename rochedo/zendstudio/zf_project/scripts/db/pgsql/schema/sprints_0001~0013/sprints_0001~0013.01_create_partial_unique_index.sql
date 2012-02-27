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