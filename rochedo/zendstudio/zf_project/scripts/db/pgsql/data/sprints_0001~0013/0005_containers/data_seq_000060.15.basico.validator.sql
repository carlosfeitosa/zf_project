/**
* SCRIPT DE POPULACAO DA TABELA basico.validator
* 
* Esta tabela armazena os validators que podem ser utilizados pelo sistema.
* 
* versao: 1.0 (POSTGRESQL 9.1.1)
* por: JOÃO VASCONCELOS (joao.vasconcelos@rochedoframework.com)
* criacao: 22/03/2012
* ultimas modificacoes:		03/07/2012 - adaptação dos scripts para utilização de componentes;
* 				
*/

INSERT INTO basico.validator (id_categoria, id_componente, nome, constante_textual, constante_textual_descricao, parar_validacao_apos_falha, attribs, ativo, rowinfo)
SELECT c.id AS id_categoria, 
		(SELECT comp.id
		 FROM basico.componente comp
		 LEFT JOIN basico.categoria cat ON (comp.id_categoria = cat.id)
		 LEFT JOIN basico.tipo_categoria tcat ON (cat.id_tipo_categoria = tcat.id)
		 LEFT JOIN basico.categoria catpai ON (cat.id_categoria_pai = catpai.id)
		 WHERE comp.nome = 'ZF_Validator_Regex'
		 AND cat.nome = 'COMPONENTE_VALIDATOR_ZF'
		 AND tcat.nome = 'COMPONENTE'
		 AND catpai.nome = 'COMPONENTE_VALIDATOR') AS id_componente,
        'REGEX_LOGIN' AS nome, 'NOME_VALIDATOR_REGEX_LOGIN' AS constante_textual, 'DESCRICAO_VALIDATOR_REGEX_LOGIN' AS constante_textual_descricao,
        true AS parar_validacao_apos_falha, 'array(''pattern'' => ''/^[(a-zA-Z)]+[(a-zA-Z0-9_@\.)]*$/'', ''messages'' => array(Zend_Validate_Regex::NOT_MATCH => $this->getView()->tradutor(''FORM_ELEMENT_VALIDATOR_REGEX_ERROR_MESSAGE'')))' AS attribs, 
        true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
LEFT JOIN basico.categoria cpai ON (c.id_categoria_pai = cpai.id)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_VALIDATOR_ZF'
AND cpai.nome = 'FORMULARIO_ELEMENTO_VALIDATOR';

INSERT INTO basico.validator (id_categoria, id_componente, nome, constante_textual, constante_textual_descricao, parar_validacao_apos_falha, ativo, rowinfo)
SELECT c.id AS id_categoria, 
		(SELECT comp.id
		 FROM basico.componente comp
		 LEFT JOIN basico.categoria cat ON (comp.id_categoria = cat.id)
		 LEFT JOIN basico.tipo_categoria tcat ON (cat.id_tipo_categoria = tcat.id)
		 LEFT JOIN basico.categoria catpai ON (cat.id_categoria_pai = catpai.id)
		 WHERE comp.nome = 'ZF_Validator_Alnum'
		 AND cat.nome = 'COMPONENTE_VALIDATOR_ZF'
		 AND tcat.nome = 'COMPONENTE'
		 AND catpai.nome = 'COMPONENTE_VALIDATOR') AS id_componente,
        'ALFANUMERICO' AS nome, 'NOME_VALIDATOR_ALFANUMERICO' AS constante_textual, 'DESCRICAO_VALIDATOR_ALFANUMERICO' AS constante_textual_descricao,
        true AS parar_validacao_apos_falha, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
LEFT JOIN basico.categoria cpai ON (c.id_categoria_pai = cpai.id)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_VALIDATOR_ZF'
AND cpai.nome = 'FORMULARIO_ELEMENTO_VALIDATOR';

INSERT INTO basico.validator (id_categoria, id_componente, nome, constante_textual, constante_textual_descricao, attribs, ativo, rowinfo)
SELECT c.id AS id_categoria, 
		(SELECT comp.id
		 FROM basico.componente comp
		 LEFT JOIN basico.categoria cat ON (comp.id_categoria = cat.id)
		 LEFT JOIN basico.tipo_categoria tcat ON (cat.id_tipo_categoria = tcat.id)
		 LEFT JOIN basico.categoria catpai ON (cat.id_categoria_pai = catpai.id)
		 WHERE comp.nome = 'ZF_Validator_Identical'
		 AND cat.nome = 'COMPONENTE_VALIDATOR_ZF'
		 AND tcat.nome = 'COMPONENTE'
		 AND catpai.nome = 'COMPONENTE_VALIDATOR') AS id_componente,
        'IDENTICO' AS nome, 'NOME_VALIDATOR_IDENTICO' AS constante_textual, 'DESCRICAO_VALIDATOR_IDENTICO' AS constante_textual_descricao,
        'array(''token'' => ''@identicalElementName'', ''invalidMessage'' => ''@identicalInvalidMessage'')' AS attribs, 
        true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
LEFT JOIN basico.categoria cpai ON (c.id_categoria_pai = cpai.id)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_VALIDATOR_ZF'
AND cpai.nome = 'FORMULARIO_ELEMENTO_VALIDATOR';

INSERT INTO basico.validator (id_categoria, id_componente, nome, constante_textual, constante_textual_descricao, attribs, ativo, rowinfo)
SELECT c.id AS id_categoria, 
		(SELECT comp.id
		 FROM basico.componente comp
		 LEFT JOIN basico.categoria cat ON (comp.id_categoria = cat.id)
		 LEFT JOIN basico.tipo_categoria tcat ON (cat.id_tipo_categoria = tcat.id)
		 LEFT JOIN basico.categoria catpai ON (cat.id_categoria_pai = catpai.id)
		 WHERE comp.nome = 'ZF_Validator_StringLength'
		 AND cat.nome = 'COMPONENTE_VALIDATOR_ZF'
		 AND tcat.nome = 'COMPONENTE'
		 AND catpai.nome = 'COMPONENTE_VALIDATOR') AS id_componente,
        'STRING_ENTRE_6_E_100_CARACTERES' AS nome, 'NOME_VALIDATOR_STRING_ENTRE_6_E_100_CARACTERES' AS constante_textual, 'DESCRICAO_VALIDATOR_STRING_ENTRE_6_E_100_CARACTERES' AS constante_textual_descricao,
        'array(6, 100)' AS attribs, 
        true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
LEFT JOIN basico.categoria cpai ON (c.id_categoria_pai = cpai.id)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_VALIDATOR_ZF'
AND cpai.nome = 'FORMULARIO_ELEMENTO_VALIDATOR';

INSERT INTO basico.validator (id_categoria, id_componente, nome, constante_textual, constante_textual_descricao, attribs, ativo, rowinfo)
SELECT c.id AS id_categoria, 
		(SELECT comp.id
		 FROM basico.componente comp
		 LEFT JOIN basico.categoria cat ON (comp.id_categoria = cat.id)
		 LEFT JOIN basico.tipo_categoria tcat ON (cat.id_tipo_categoria = tcat.id)
		 LEFT JOIN basico.categoria catpai ON (cat.id_categoria_pai = catpai.id)
		 WHERE comp.nome = 'ZF_Validator_StringLength'
		 AND cat.nome = 'COMPONENTE_VALIDATOR_ZF'
		 AND tcat.nome = 'COMPONENTE'
		 AND catpai.nome = 'COMPONENTE_VALIDATOR') AS id_componente,
        'STRING_ENTRE_3_E_100_CARACTERES' AS nome, 'NOME_VALIDATOR_STRING_ENTRE_3_E_100_CARACTERES' AS constante_textual, 'DESCRICAO_VALIDATOR_STRING_ENTRE_3_E_100_CARACTERES' AS constante_textual_descricao,
        'array(3, 100)' AS attribs, 
        true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
LEFT JOIN basico.categoria cpai ON (c.id_categoria_pai = cpai.id)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_VALIDATOR_ZF'
AND cpai.nome = 'FORMULARIO_ELEMENTO_VALIDATOR';

INSERT INTO basico.validator (id_categoria, id_componente, nome, constante_textual, constante_textual_descricao, ativo, rowinfo)
SELECT c.id AS id_categoria, 
		(SELECT comp.id
		 FROM basico.componente comp
		 LEFT JOIN basico.categoria cat ON (comp.id_categoria = cat.id)
		 LEFT JOIN basico.tipo_categoria tcat ON (cat.id_tipo_categoria = tcat.id)
		 LEFT JOIN basico.categoria catpai ON (cat.id_categoria_pai = catpai.id)
		 WHERE comp.nome = 'ZF_Validator_NotEmpty'
		 AND cat.nome = 'COMPONENTE_VALIDATOR_ZF'
		 AND tcat.nome = 'COMPONENTE'
		 AND catpai.nome = 'COMPONENTE_VALIDATOR') AS id_componente,
        'NAO_VAZIO' AS nome, 'NOME_VALIDATOR_NAO_VAZIO' AS constante_textual, 'DESCRICAO_VALIDATOR_NAO_VAZIO' AS constante_textual_descricao,
        true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
LEFT JOIN basico.categoria cpai ON (c.id_categoria_pai = cpai.id)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_VALIDATOR_ZF'
AND cpai.nome = 'FORMULARIO_ELEMENTO_VALIDATOR';

INSERT INTO basico.validator (id_categoria, id_componente, nome, constante_textual, constante_textual_descricao, ativo, rowinfo)
SELECT c.id AS id_categoria, 
		(SELECT comp.id
		 FROM basico.componente comp
		 LEFT JOIN basico.categoria cat ON (comp.id_categoria = cat.id)
		 LEFT JOIN basico.tipo_categoria tcat ON (cat.id_tipo_categoria = tcat.id)
		 LEFT JOIN basico.categoria catpai ON (cat.id_categoria_pai = catpai.id)
		 WHERE comp.nome = 'ZF_Validator_Int'
		 AND cat.nome = 'COMPONENTE_VALIDATOR_ZF'
		 AND tcat.nome = 'COMPONENTE'
		 AND catpai.nome = 'COMPONENTE_VALIDATOR') AS id_componente,
        'INTEIRO' AS nome, 'NOME_VALIDATOR_INTEIRO' AS constante_textual, 'DESCRICAO_VALIDATOR_INTEIRO' AS constante_textual_descricao,
        true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
LEFT JOIN basico.categoria cpai ON (c.id_categoria_pai = cpai.id)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_VALIDATOR_ZF'
AND cpai.nome = 'FORMULARIO_ELEMENTO_VALIDATOR';

INSERT INTO basico.validator (id_categoria, id_componente, nome, constante_textual, constante_textual_descricao, ativo, rowinfo)
SELECT c.id AS id_categoria, 
		(SELECT comp.id
		 FROM basico.componente comp
		 LEFT JOIN basico.categoria cat ON (comp.id_categoria = cat.id)
		 LEFT JOIN basico.tipo_categoria tcat ON (cat.id_tipo_categoria = tcat.id)
		 LEFT JOIN basico.categoria catpai ON (cat.id_categoria_pai = catpai.id)
		 WHERE comp.nome = 'ZF_Validator_EmailAddress'
		 AND cat.nome = 'COMPONENTE_VALIDATOR_ZF'
		 AND tcat.nome = 'COMPONENTE'
		 AND catpai.nome = 'COMPONENTE_VALIDATOR') AS id_componente,
        'ENDERECO_EMAIL' AS nome, 'NOME_VALIDATOR_ENDERECO_EMAIL' AS constante_textual, 'DESCRICAO_VALIDATOR_ENDERECO_EMAIL' AS constante_textual_descricao,
        true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
LEFT JOIN basico.categoria cpai ON (c.id_categoria_pai = cpai.id)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_VALIDATOR_ZF'
AND cpai.nome = 'FORMULARIO_ELEMENTO_VALIDATOR';

INSERT INTO basico.validator (id_categoria, id_componente, nome, constante_textual, constante_textual_descricao, parar_validacao_apos_falha, attribs, ativo, rowinfo)
SELECT c.id AS id_categoria, 
		(SELECT comp.id
		 FROM basico.componente comp
		 LEFT JOIN basico.categoria cat ON (comp.id_categoria = cat.id)
		 LEFT JOIN basico.tipo_categoria tcat ON (cat.id_tipo_categoria = tcat.id)
		 LEFT JOIN basico.categoria catpai ON (cat.id_categoria_pai = catpai.id)
		 WHERE comp.nome = 'ZF_Validator_EmailAddress'
		 AND cat.nome = 'COMPONENTE_VALIDATOR_ZF'
		 AND tcat.nome = 'COMPONENTE'
		 AND catpai.nome = 'COMPONENTE_VALIDATOR') AS id_componente,
        'ENDERECO_EMAIL_COM_VERIFICACAO_MX' AS nome, 'NOME_VALIDATOR_ENDERECO_EMAIL_COM_VERIFICACAO_MX' AS constante_textual, 'DESCRICAO_VALIDATOR_ENDERECO_EMAIL_COM_VERIFICACAO_MX' AS constante_textual_descricao,
        true AS parar_validacao_apos_falha, 'array(''mx'' => true, ''deep'' => true)' AS attribs, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
LEFT JOIN basico.categoria cpai ON (c.id_categoria_pai = cpai.id)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_VALIDATOR_ZF'
AND cpai.nome = 'FORMULARIO_ELEMENTO_VALIDATOR';