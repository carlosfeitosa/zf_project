/**
* SCRIPT CRIACAO DE INDICES PARCIAIS
* 
* versao: 1.0 (POSTGRESQL 9.1.1)
* por: CARLOS FEITOSA (carlos.feitosa@rochedoframework.com)
* criacao: 27/02/2012
* ultimas modificacoes:
* 								
*/

CREATE UNIQUE INDEX unp_tipo_categoria_sem_pai ON basico.tipo_categoria (nome)
WHERE id_tipo_categoria_pai IS NULL;

CREATE UNIQUE INDEX unp_categoria_sem_pai ON basico.categoria (id_tipo_categoria, nome)
WHERE id_categoria_pai IS NULL;

CREATE UNIQUE INDEX unp_assoccl_metedo_validacao_sem_perfil ON basico_acao_aplicacao.assoccl_metodo_validacao (id_acao_aplicacao, id_metodo_validacao)
WHERE id_perfil IS NULL;

CREATE UNIQUE INDEX unp_assoc_estado_sem_pai ON basico_localizacao.assoc_estado (id_pais, nome, id_categoria)
WHERE id_estado_pai IS NULL;

CREATE UNIQUE INDEX unp_assoc_municipio_sem_pai ON basico_localizacao.assoc_municipio (id_estado, nome, id_categoria)
WHERE id_municipio_pai IS NULL;

CREATE UNIQUE INDEX unp_area_conhecimento_sem_pai ON basico.area_conhecimento (id_categoria, nome)
WHERE id_area_conhecimento_pai IS NULL;

CREATE UNIQUE INDEX unp_area_economia_sem_pai ON basico.area_economia (id_categoria, nome)
WHERE id_area_economia_pai IS NULL;

CREATE UNIQUE INDEX unp_cpg_arquivo__sem_nome ON basico.cpg_arquivo (id_categoria, nome)
WHERE nome IS NOT NULL;

CREATE UNIQUE INDEX unp_cpg_arquivo_uri_sem_remoto ON basico.cpg_arquivo (uri)
WHERE remoto IS false;

CREATE UNIQUE INDEX unp_cpg_dados_bancarios_sem_numero_tipo_conta ON basico.cpg_dados_bancarios (id_categoria, id_generico_proprietario, numero_banco, numero_agencia, numero_conta)
WHERE numero_tipo_conta IS NULL;

CREATE UNIQUE INDEX unp_cpg_link_sem_nome ON basico.cpg_link (id_categoria, id_generico_proprietario, url)
WHERE nome IS NULL;

CREATE UNIQUE INDEX unp_formulario_sem_pai ON basico.formulario (id_categoria, nome)
WHERE id_formulario_pai IS NULL;

CREATE UNIQUE INDEX unp_assoccl_elemento_sem_element_name ON basico_formulario.assoccl_elemento (id_formulario , id_elemento)
WHERE element_name IS NULL;

CREATE UNIQUE INDEX unp_form_assoccl_decorator_sem_decorator ON basico_formulario.assoccl_decorator (id_formulario , ordem , exclude , id_decorator_grupo)
WHERE id_decorator IS NULL;

CREATE UNIQUE INDEX unp_form_assoccl_decorator_sem_grupo ON basico_formulario.assoccl_decorator (id_formulario , ordem , exclude , id_decorator)
WHERE id_decorator_grupo IS NULL;

CREATE UNIQUE INDEX unp_form_elem_assoccl_decorator_sem_decorator ON basico_formulario_elemento.assoccl_decorator (id_elemento , ordem , exclude , id_decorator_grupo)
WHERE id_decorator IS NULL;

CREATE UNIQUE INDEX unp_form_elem_assoccl_decorator_sem_grupo ON basico_formulario_elemento.assoccl_decorator (id_elemento , ordem , exclude , id_decorator)
WHERE id_decorator_grupo IS NULL;

CREATE UNIQUE INDEX unp_form_elem_assoccl_validator_sem_validator ON basico_formulario_elemento.assoccl_validator (id_elemento , exclude , id_validator_grupo)
WHERE id_validator IS NULL;

CREATE UNIQUE INDEX unp_form_elem_assoccl_validator_sem_grupo ON basico_formulario_elemento.assoccl_validator (id_elemento , exclude , id_validator)
WHERE id_validator_grupo IS NULL;

CREATE UNIQUE INDEX unp_form_elem_assoccl_filter_sem_filter ON basico_formulario_elemento.assoccl_filter (id_elemento , ordem , exclude , id_filter_grupo)
WHERE id_filter IS NULL;

CREATE UNIQUE INDEX unp_form_elem_assoccl_filter_sem_grupo ON basico_formulario_elemento.assoccl_filter (id_elemento , ordem , exclude , id_filter)
WHERE id_filter_grupo IS NULL;

CREATE UNIQUE INDEX unp_assocag_grupo_decorator_sem_grupo_assoc ON basico_form_decorator_grupo.assocag_grupo (id_grupo , id_formulario_decorator)
WHERE id_grupo_assoc IS NULL;

CREATE UNIQUE INDEX unp_assocag_grupo_decorator_sem_form_decorator ON basico_form_decorator_grupo.assocag_grupo (id_grupo , id_grupo_assoc)
WHERE id_formulario_decorator IS NULL;

CREATE UNIQUE INDEX unp_asocag_grupo_filter_sem_grupo_assoc ON basico_filter_grupo.assocag_grupo (id_grupo , id_filter)
WHERE id_grupo_assoc IS NULL;

CREATE UNIQUE INDEX unp_assocag_grupo_filter_sem_filter ON basico_filter_grupo.assocag_grupo (id_grupo , id_grupo_assoc)
WHERE id_filter IS NULL;

CREATE UNIQUE INDEX unp_assocag_grupo_validator_sem_grupo_assoc ON basico_validator_grupo.assocag_grupo (id_grupo , id_validator)
WHERE id_grupo_assoc IS NULL;

CREATE UNIQUE INDEX unp_assocag_grupo_validator_sem_validator ON basico_validator_grupo.assocag_grupo (id_grupo , id_grupo_assoc)
WHERE id_validator IS NULL;

CREATE UNIQUE INDEX unp_assocag_parceria_sem_parceria ON basico_pessoa_juridica.assocag_parceria (id_categoria, id_pessoa_juridica, id_pessoa_juridica_parceira)
WHERE id_assocag_parceria IS NULL;

CREATE UNIQUE INDEX unp_assocag_parceria_sem_pessoa_juridica_parceira ON basico_pessoa_juridica.assocag_parceria (id_categoria, id_pessoa_juridica, id_assocag_parceria)
WHERE id_pessoa_juridica_parceira IS NULL;

CREATE UNIQUE INDEX unp_regime_trabalho_sem_pai_codigo ON basico_dados_profissionais.regime_trabalho (id_categoria , nome)
WHERE codigo IS NULL AND id_regime_trabalho_pai IS NULL;

CREATE UNIQUE INDEX unp_regime_trabalho_sem_pai ON basico_dados_profissionais.regime_trabalho (id_categoria , nome, id_regime_trabalho_pai)
WHERE codigo IS NULL;

CREATE UNIQUE INDEX unp_regime_trabalho_sem_codigo ON basico_dados_profissionais.regime_trabalho (id_categoria , nome , codigo)
WHERE id_regime_trabalho_pai IS NULL;

CREATE UNIQUE INDEX unp_regime_trabalho_codigo ON basico_dados_profissionais.regime_trabalho (id_categoria , codigo)
WHERE codigo IS NOT NULL;

CREATE UNIQUE INDEX unp_tipo_vinculo_sem_codigo ON basico_dados_profissionais.tipo_vinculo (id_categoria , nome)
WHERE codigo IS NULL;

CREATE UNIQUE INDEX unp_tipo_vinculo_codigo ON basico_dados_profissionais.tipo_vinculo (id_categoria , codigo)
WHERE codigo IS NOT NULL;

CREATE UNIQUE INDEX unp_vinculo_empregaticio_sem_codigo ON basico_dados_profissionais.vinculo_empregaticio (id_categoria , nome)
WHERE codigo IS NULL;

CREATE UNIQUE INDEX unp_vinculo_empregaticio_codigo ON basico_dados_profissionais.vinculo_empregaticio (id_categoria , codigo)
WHERE codigo IS NOT NULL;

CREATE UNIQUE INDEX unp_assoc_chave_estrangeira_nao_cvc ON basico_categoria.assoc_chave_estrangeira (id_modulo, id_categoria)
WHERE basico_categoria.fn_retornaidcategoriacvc() <> id_categoria;

CREATE UNIQUE INDEX unp_assoc_chave_estrangeira_cvc ON basico_categoria.assoc_chave_estrangeira (id_modulo, id_categoria, tabela_estrangeira)
WHERE basico_categoria.fn_retornaidcategoriacvc() = id_categoria;
