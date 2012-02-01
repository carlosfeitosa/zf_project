/**
* SCRIPT DE POPULACAO DA TABELA basico.validator
* 
* versao: 1.0 (POSTGRESQL 9.1.1)
* por: JOÃO VASCONCELOS (joao.vasconcelos@rochedoframework.com)
* criacao: 31/01/2012
* ultimas modificacoes:
* 								
*/

INSERT INTO basico.validator (id_categoria, nome, validator, rowinfo)
SELECT c.id AS id_categoria, 'REGEX_/^[(a-zA-Z)]+[(a-zA-Z0-9_@\.)]*$/' AS nome,
       '''Regex'', true, array(''pattern''=>''/^[(a-zA-Z)]+[(a-zA-Z0-9_@\.)]*$/'', ''messages'' => array(Zend_Validate_Regex::NOT_MATCH => $this->getView()->tradutor(''FORM_ELEMENT_VALIDATOR_REGEX_ERROR_MESSAGE'')))' AS validator, 
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_VALIDATOR';

INSERT INTO basico.validator (id_categoria, nome, validator, rowinfo)
SELECT c.id AS id_categoria, 'ALNUM_WITHOUT_WHITESPACES' AS nome,
       '''Alnum'', true' AS validator, 
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_VALIDATOR';

INSERT INTO basico.validator (id_categoria, nome, validator, rowinfo)
SELECT c.id AS id_categoria, 'IDENTICAL' AS nome,
       '''identical'', false, array(''token'' => ''@identicalElementName'', ''invalidMessage'' => ''@identicalInvalidMessage'')' AS validator, 
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_VALIDATOR';

INSERT INTO basico.validator (id_categoria, nome, validator, rowinfo)
SELECT c.id AS id_categoria, 'STRING_LENGTH_6_TO_100' AS nome,
       '''stringLength'', false, array(6, 100)' AS validator, 
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_VALIDATOR';

INSERT INTO basico.validator (id_categoria, nome, validator, rowinfo)
SELECT c.id AS id_categoria, 'STRING_LENGTH_3_TO_100' AS nome,
       '''stringLength'', false, array(3, 100)' AS validator, 
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_VALIDATOR';

INSERT INTO basico.validator (id_categoria, nome, validator, rowinfo)
SELECT c.id AS id_categoria, 'NOT_EMPTY' AS nome,
       '''NotEmpty''' AS validator, 
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_VALIDATOR';

INSERT INTO basico.validator (id_categoria, nome, validator, rowinfo)
SELECT c.id AS id_categoria, 'INT' AS nome,
       '''Int''' AS validator, 
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_VALIDATOR';

INSERT INTO basico.validator (id_categoria, nome, validator, rowinfo)
SELECT c.id AS id_categoria, 'EMAIL_ADDRESS' AS nome,
       '''EmailAddress''' AS validator, 
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_VALIDATOR';

INSERT INTO basico.validator (id_categoria, nome, validator, rowinfo)
SELECT c.id AS id_categoria, 'EMAIL_ADDRESS_DEEP_MX' AS nome,
       '''EmailAddress'', true, array(''mx'' => true, ''deep'' => true)' AS validator, 
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_VALIDATOR';