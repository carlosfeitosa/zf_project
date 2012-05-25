/**
* @exclude
* 
* SCRIPT DE POPULACAO DA TABELA basico_dicionario_dados.assoccl_fk
* 
* versao: 1.0 (POSTGRESQL 9.1.1)
* por: JOÃO VASCONCELOS (joao.vasconcelos@rochedoframework.com)
* criacao: 24/05/2012
* ultimas modificacoes:
* 								
*/

INSERT INTO basico_dicionario_dados.assoccl_fk (id_assoc_table, id_assoc_field, id_assoc_field_fk, metodo_recuperacao, 
												constante_textual, constante_textual_alias, ativo, rowinfo)
SELECT(SELECT ata.id 
		FROM basico_dicionario_dados.assoc_table ata
		LEFT JOIN basico_dicionario_dados.schema s ON (ata.id_schema = s.id)
		WHERE tablename = 'tipo_categoria' 
		AND s.schemaname = 'basico') AS id_assoc_table,
		(SELECT af.id
		FROM basico_dicionario_dados.assoc_field af
		LEFT JOIN basico_dicionario_dados.assoc_table ata ON (af.id_assoc_table = ata.id)
		LEFT JOIN basico_dicionario_dados.schema s ON (ata.id_schema = s.id)
		WHERE af.fieldname = 'id' 
		AND ata.tablename  = 'tipo_categoria'
		AND s.schemaname   = 'basico') AS id_assoc_field,
		(SELECT af.id
		FROM basico_dicionario_dados.assoc_field af
		LEFT JOIN basico_dicionario_dados.assoc_table ata ON (af.id_assoc_table = ata.id)
		LEFT JOIN basico_dicionario_dados.schema s ON (ata.id_schema = s.id)
		WHERE af.fieldname = 'constante_textual' 
		AND ata.tablename  = 'tipo_categoria'
		AND s.schemaname   = 'basico') AS id_assoc_field,
		'Basico_OPController_DicionarioExpressaoOPController::retornaTraducaoViaSQL(''@constanteTextual'');' AS metodo_recuperacao,
		'CAMPO_EXIBICAO_CONSTANTE_TEXTUAL_BASICO_TIPO_CATEGORIA' AS constante_textual,
		'CAMPO_EXIBICAO_CONSTANTE_TEXTUAL_ALIAS_BASICO_TIPO_CATEGORIA' AS constante_textual_alias,
		true AS ativo,
		'SYSTEM_STARTUP' AS rowinfo;