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
		WHERE tablename = 'assoccl_fk' 
		AND s.schemaname = 'basico_dicionario_dados') AS id_assoc_table,
		(SELECT af.id
		FROM basico_dicionario_dados.assoc_field af
		LEFT JOIN basico_dicionario_dados.assoc_table ata ON (af.id_assoc_table = ata.id)
		LEFT JOIN basico_dicionario_dados.schema s ON (ata.id_schema = s.id)
		WHERE af.fieldname = 'id_assoc_field_fk' 
		AND ata.tablename  = 'assoccl_fk'
		AND s.schemaname   = 'basico_dicionario_dados') AS id_assoc_field,
		(SELECT af.id
		FROM basico_dicionario_dados.assoc_field af
		LEFT JOIN basico_dicionario_dados.assoc_table ata ON (af.id_assoc_table = ata.id)
		LEFT JOIN basico_dicionario_dados.schema s ON (ata.id_schema = s.id)
		WHERE af.fieldname = 'constante_textual' 
		AND ata.tablename  = 'assoc_field'
		AND s.schemaname   = 'basico_dicionario_dados') AS id_assoc_field,
		'Basico_OPController_DicionarioExpressaoOPController::retornaTraducaoViaSQL(''@constanteTextual'');' AS metodo_recuperacao,
		'CAMPO_EXIBICAO_CONSTANTE_TEXTUAL_BASICO_DICIONARIO_DADOS_ASSOCCL_FK_ID_ASSOC_FIELD_FK' AS constante_textual,
		'CAMPO_EXIBICAO_CONSTANTE_TEXTUAL_ALIAS_BASICO_DICIONARIO_DADOS_ASSOCCL_FK_ID_ASSOC_FIELD_FK' AS constante_textual_alias,
		true AS ativo,
		'SYSTEM_STARTUP' AS rowinfo;


INSERT INTO basico_dicionario_dados.assoccl_fk (id_assoc_table, id_assoc_field, id_assoc_field_fk, metodo_recuperacao, 
												constante_textual, constante_textual_alias, ativo, rowinfo)
SELECT(SELECT ata.id 
		FROM basico_dicionario_dados.assoc_table ata
		LEFT JOIN basico_dicionario_dados.schema s ON (ata.id_schema = s.id)
		WHERE tablename = 'schema' 
		AND s.schemaname = 'basico_dicionario_dados') AS id_assoc_table,
		(SELECT af.id
		FROM basico_dicionario_dados.assoc_field af
		LEFT JOIN basico_dicionario_dados.assoc_table ata ON (af.id_assoc_table = ata.id)
		LEFT JOIN basico_dicionario_dados.schema s ON (ata.id_schema = s.id)
		WHERE af.fieldname = 'id' 
		AND ata.tablename  = 'schema'
		AND s.schemaname   = 'basico_dicionario_dados') AS id_assoc_field,
		(SELECT af.id
		FROM basico_dicionario_dados.assoc_field af
		LEFT JOIN basico_dicionario_dados.assoc_table ata ON (af.id_assoc_table = ata.id)
		LEFT JOIN basico_dicionario_dados.schema s ON (ata.id_schema = s.id)
		WHERE af.fieldname = 'constante_textual' 
		AND ata.tablename  = 'schema'
		AND s.schemaname   = 'basico_dicionario_dados') AS id_assoc_field,
		'Basico_OPController_DicionarioExpressaoOPController::retornaTraducaoViaSQL(''@constanteTextual'');' AS metodo_recuperacao,
		'CAMPO_EXIBICAO_CONSTANTE_TEXTUAL_BASICO_DICIONARIO_DADOS_SCHEMA' AS constante_textual,
		'CAMPO_EXIBICAO_CONSTANTE_TEXTUAL_ALIAS_BASICO_DICIONARIO_DADOS_SCHEMA' AS constante_textual_alias,
		true AS ativo,
		'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_dicionario_dados.assoccl_fk (id_assoc_table, id_assoc_field, id_assoc_field_fk, metodo_recuperacao, 
												constante_textual, constante_textual_alias, ativo, rowinfo)
SELECT(SELECT ata.id 
		FROM basico_dicionario_dados.assoc_table ata
		LEFT JOIN basico_dicionario_dados.schema s ON (ata.id_schema = s.id)
		WHERE tablename = 'assoc_field' 
		AND s.schemaname = 'basico_dicionario_dados') AS id_assoc_table,
		(SELECT af.id
		FROM basico_dicionario_dados.assoc_field af
		LEFT JOIN basico_dicionario_dados.assoc_table ata ON (af.id_assoc_table = ata.id)
		LEFT JOIN basico_dicionario_dados.schema s ON (ata.id_schema = s.id)
		WHERE af.fieldname = 'id' 
		AND ata.tablename  = 'assoc_field'
		AND s.schemaname   = 'basico_dicionario_dados') AS id_assoc_field,
		(SELECT af.id
		FROM basico_dicionario_dados.assoc_field af
		LEFT JOIN basico_dicionario_dados.assoc_table ata ON (af.id_assoc_table = ata.id)
		LEFT JOIN basico_dicionario_dados.schema s ON (ata.id_schema = s.id)
		WHERE af.fieldname = 'constante_textual' 
		AND ata.tablename  = 'assoc_field'
		AND s.schemaname   = 'basico_dicionario_dados') AS id_assoc_field,
		'Basico_OPController_DicionarioExpressaoOPController::retornaTraducaoViaSQL(''@constanteTextual'');' AS metodo_recuperacao,
		'CAMPO_EXIBICAO_CONSTANTE_TEXTUAL_BASICO_DICIONARIO_DADOS_ASSOC_FIELD' AS constante_textual,
		'CAMPO_EXIBICAO_CONSTANTE_TEXTUAL_ALIAS_BASICO_DICIONARIO_DADOS_ASSOC_FIELD' AS constante_textual_alias,
		true AS ativo,
		'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_dicionario_dados.assoccl_fk (id_assoc_table, id_assoc_field, id_assoc_field_fk, metodo_recuperacao, 
												constante_textual, constante_textual_alias, ativo, rowinfo)
SELECT(SELECT ata.id 
		FROM basico_dicionario_dados.assoc_table ata
		LEFT JOIN basico_dicionario_dados.schema s ON (ata.id_schema = s.id)
		WHERE tablename = 'assoc_table' 
		AND s.schemaname = 'basico_dicionario_dados') AS id_assoc_table,
		(SELECT af.id
		FROM basico_dicionario_dados.assoc_field af
		LEFT JOIN basico_dicionario_dados.assoc_table ata ON (af.id_assoc_table = ata.id)
		LEFT JOIN basico_dicionario_dados.schema s ON (ata.id_schema = s.id)
		WHERE af.fieldname = 'id' 
		AND ata.tablename  = 'assoc_table'
		AND s.schemaname   = 'basico_dicionario_dados') AS id_assoc_field,
		(SELECT af.id
		FROM basico_dicionario_dados.assoc_field af
		LEFT JOIN basico_dicionario_dados.assoc_table ata ON (af.id_assoc_table = ata.id)
		LEFT JOIN basico_dicionario_dados.schema s ON (ata.id_schema = s.id)
		WHERE af.fieldname = 'constante_textual' 
		AND ata.tablename  = 'assoc_table'
		AND s.schemaname   = 'basico_dicionario_dados') AS id_assoc_field,
		'Basico_OPController_DicionarioExpressaoOPController::retornaTraducaoViaSQL(''@constanteTextual'');' AS metodo_recuperacao,
		'CAMPO_EXIBICAO_CONSTANTE_TEXTUAL_BASICO_DICIONARIO_DADOS_ASSOC_TABLE' AS constante_textual,
		'CAMPO_EXIBICAO_CONSTANTE_TEXTUAL_ALIAS_BASICO_DICIONARIO_DADOS_ASSOC_TABLE' AS constante_textual_alias,
		true AS ativo,
		'SYSTEM_STARTUP' AS rowinfo;

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
		
INSERT INTO basico_dicionario_dados.assoccl_fk (id_assoc_table, id_assoc_field, id_assoc_field_fk, metodo_recuperacao, 
												constante_textual, constante_textual_alias, ativo, rowinfo)
SELECT(SELECT ata.id 
		FROM basico_dicionario_dados.assoc_table ata
		LEFT JOIN basico_dicionario_dados.schema s ON (ata.id_schema = s.id)
		WHERE tablename = 'categoria' 
		AND s.schemaname = 'basico') AS id_assoc_table,
		(SELECT af.id
		FROM basico_dicionario_dados.assoc_field af
		LEFT JOIN basico_dicionario_dados.assoc_table ata ON (af.id_assoc_table = ata.id)
		LEFT JOIN basico_dicionario_dados.schema s ON (ata.id_schema = s.id)
		WHERE af.fieldname = 'id' 
		AND ata.tablename  = 'categoria'
		AND s.schemaname   = 'basico') AS id_assoc_field,
		(SELECT af.id
		FROM basico_dicionario_dados.assoc_field af
		LEFT JOIN basico_dicionario_dados.assoc_table ata ON (af.id_assoc_table = ata.id)
		LEFT JOIN basico_dicionario_dados.schema s ON (ata.id_schema = s.id)
		WHERE af.fieldname = 'nome' 
		AND ata.tablename  = 'categoria'
		AND s.schemaname   = 'basico') AS id_assoc_field,
		NULL AS metodo_recuperacao,
		'CAMPO_EXIBICAO_CONSTANTE_TEXTUAL_BASICO_CATEGORIA' AS constante_textual,
		'CAMPO_EXIBICAO_CONSTANTE_TEXTUAL_ALIAS_BASICO_CATEGORIA' AS constante_textual_alias,
		true AS ativo,
		'SYSTEM_STARTUP' AS rowinfo;