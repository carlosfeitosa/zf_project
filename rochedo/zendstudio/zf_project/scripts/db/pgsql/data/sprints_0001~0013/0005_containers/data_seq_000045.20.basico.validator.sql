/**
* SCRIPT DE POPULACAO DA TABELA basico.validator
* 
* versao: 1.0 (POSTGRESQL 9.1.1)
* por: JOÃO VASCONCELOS (joao.vasconcelos@rochedoframework.com)
* criacao: 31/01/2012
* ultimas modificacoes:
* 								
*/

INSERT INTO basico.validator (id_categoria, nome, constante_textual, validator, rowinfo)
SELECT c.id AS id_categoria, 'REGEX_/^[(a-zA-Z)]+[(a-zA-Z0-9_@\.)]*$/' AS nome,
		'NOME_VALIDATOR_REGEX_/^[(a-zA-Z)]+[(a-zA-Z0-9_@\.)]*$/' AS constante_textual,
       ' \'Regex\', true, array(\'pattern\' => \'/^[(a-zA-Z)]+[(a-zA-Z0-9_@\.)]*$/\', \'messages\' => array(Zend_Validate_Regex::NOT_MATCH => $this->getView()->tradutor(\'FORM_ELEMENT_VALIDATOR_REGEX_ERROR_MESSAGE\')))' AS validator, 
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_VALIDATOR';

INSERT INTO basico.validator (id_categoria, nome, constante_textual, validator, rowinfo)
SELECT c.id AS id_categoria, 'ALNUM_WITHOUT_WHITESPACES' AS nome,
'NOME_VALIDATOR_ALNUM_WITHOUT_WHITESPACES' AS constante_textual,
       '\'Alnum\', true' AS validator, 
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_VALIDATOR';

INSERT INTO basico.validator (id_categoria, nome, constante_textual, validator, rowinfo)
SELECT c.id AS id_categoria, 'IDENTICAL' AS nome,
'NOME_VALIDATOR_IDENTICAL' AS constante_textual,
       '\'identical\', false, array(\'token\' => \'@identicalElementName\', \'invalidMessage\' => \'@identicalInvalidMessage\')' AS validator, 
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_VALIDATOR';

INSERT INTO basico.validator (id_categoria, nome, constante_textual, validator, rowinfo)
SELECT c.id AS id_categoria, 'STRING_LENGTH_6_TO_100' AS nome,
'NOME_VALIDATOR_STRING_LENGTH_6_TO_100' AS constante_textual,
       '\'stringLength\', false, array(6, 100)' AS validator, 
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_VALIDATOR';

INSERT INTO basico.validator (id_categoria, nome, constante_textual, validator, rowinfo)
SELECT c.id AS id_categoria, 'STRING_LENGTH_3_TO_100' AS nome,
'NOME_VALIDATOR_STRING_LENGTH_3_TO_100' AS constante_textual,
       '\'stringLength\', false, array(3, 100)' AS validator, 
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_VALIDATOR';

INSERT INTO basico.validator (id_categoria, nome, constante_textual, validator, rowinfo)
SELECT c.id AS id_categoria, 'NOT_EMPTY' AS nome,
'NOME_VALIDATOR_NOT_EMPTY' AS constante_textual,
       '\'NotEmpty\'' AS validator, 
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_VALIDATOR';

INSERT INTO basico.validator (id_categoria, nome, constante_textual, validator, rowinfo)
SELECT c.id AS id_categoria, 'INT' AS nome,
'NOME_VALIDATOR_INT' AS constante_textual,
       '\'Int\'' AS validator, 
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_VALIDATOR';

INSERT INTO basico.validator (id_categoria, nome, constante_textual, validator, rowinfo)
SELECT c.id AS id_categoria, 'EMAIL_ADDRESS' AS nome,
'NOME_VALIDATOR_EMAIL_ADDRESS' AS constante_textual,
       '\'EmailAddress\'' AS validator, 
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_VALIDATOR';

INSERT INTO basico.validator (id_categoria, nome, constante_textual, validator, rowinfo)
SELECT c.id AS id_categoria, 'EMAIL_ADDRESS_DEEP_MX' AS nome,
'NOME_VALIDATOR_EMAIL_ADDRESS_DEEP_MX' AS constante_textual,
       '\'EmailAddress\', true, array(\'mx\' => true, \'deep\' => true)' AS validator, 
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_VALIDATOR';