/*
* SCRIPT DE POPULACAO DAS TABELAS
* 
* versao: 1.0 (MSSQL 2000)
* por: ADRIANO DUPRAT LEMOS (adriano.lemos@rochedoproject.com)
* criacao: 20/10/2010
* ultimas modificacoes:
* 									18/04/2011 - insercao das mensagens de erro para o validador de e-mail;
*  
*/

/* FORMULARIO ELEMENTO VALIDATOR */

INSERT INTO formulario_elemento_validator (id_categoria, nome, descricao, validator, rowinfo)
SELECT c.id AS id_categoria, 'REGEX_/^[(a-zA-Z)]+[(a-zA-Z0-9_@\.)]*$/' AS nome, 
       'Validador que obriga o campo a começar com letra, e a não possuir caracteres especias exceto "_" , "@", "." .' AS descricao,
       '''Regex'', true, array(''pattern''=>''/^[(a-zA-Z)]+[(a-zA-Z0-9_@\.)]*$/'', ''messages'' => array(Zend_Validate_Regex::NOT_MATCH => $this->getView()->tradutor(''FORM_ELEMENT_VALIDATOR_REGEX_ERROR_MESSAGE'')))' AS validator, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_VALIDATOR';

INSERT INTO formulario_elemento_validator (id_categoria, nome, descricao, validator, rowinfo)
SELECT c.id AS id_categoria, 'ALNUM_WITHOUT_WHITESPACES' AS nome, 
       'Validador que obriga o campos a possuir somente valores Alpha-Numericos.' AS descricao,
       '''Alnum'', true' AS validator, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_VALIDATOR';

INSERT INTO formulario_elemento_validator (id_categoria, nome, descricao, validator, rowinfo)
SELECT c.id AS id_categoria, 'IDENTICAL' AS nome, 
       'Validador que obriga dois campos a possuirem o mesmo valor.' AS descricao,
       '''identical'', false, array(''token'' => ''@identicalElementName'', ''invalidMessage'' => ''@identicalInvalidMessage'')' AS validator, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_VALIDATOR';

INSERT INTO formulario_elemento_validator (id_categoria, nome, descricao, validator, rowinfo)
SELECT c.id AS id_categoria, 'STRING_LENGTH_6_TO_100' AS nome, 
       'Validador que não permite que o campo aceite menos que 6 ou mais que 100 caracteres.' AS descricao,
       '''stringLength'', false, array(6, 100, ''messages'' => array(Zend_Validate_StringLength::TOO_SHORT => $this->getView()->tradutor(''FORM_ELEMENT_VALIDATOR_STRING_LENGTH_6_100_ERROR_MESSAGE_TOO_SHORT''), Zend_Validate_StringLength::TOO_LONG => $this->getView()->tradutor(''FORM_ELEMENT_VALIDATOR_STRING_LENGTH_6_100_ERROR_MESSAGE_TOO_LONG'') ))' AS validator, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_VALIDATOR';

INSERT INTO formulario_elemento_validator (id_categoria, nome, descricao, validator, rowinfo)
SELECT c.id AS id_categoria, 'STRING_LENGTH_3_TO_100' AS nome, 
       'Validador que não permite que o campo aceite menos que 3 ou mais que 100 caracteres.' AS descricao,
       '''stringLength'', false, array(3, 100, ''messages'' => array(Zend_Validate_StringLength::TOO_SHORT => $this->getView()->tradutor(''FORM_ELEMENT_VALIDATOR_STRING_LENGTH_3_100_ERROR_MESSAGE_TOO_SHORT''), Zend_Validate_StringLength::TOO_LONG => $this->getView()->tradutor(''FORM_ELEMENT_VALIDATOR_STRING_LENGTH_3_100_ERROR_MESSAGE_TOO_LONG'') ))' AS validator, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_VALIDATOR';

INSERT INTO formulario_elemento_validator (id_categoria, nome, descricao, validator, rowinfo)
SELECT c.id AS id_categoria, 'NOT_EMPTY' AS nome, 
       'Validador que não permite que o campo seja vazio.' AS descricao,
       '''NotEmpty'', array(''messages'' => array(Zend_Validate_NotEmpty::IS_EMPTY => $this->getView()->tradutor(''FORM_ELEMENT_VALIDATOR_NOT_EMPTY_ERROR_MESSAGE''), ))' AS validator, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_VALIDATOR';

INSERT INTO formulario_elemento_validator (id_categoria, nome, descricao, validator, rowinfo)
SELECT c.id AS id_categoria, 'INT' AS nome, 
       'Validador que não permite valores não inteiros.' AS descricao,
       '''Int''' AS validator, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_VALIDATOR';

INSERT INTO formulario_elemento_validator (id_categoria, nome, descricao, validator, rowinfo)
SELECT c.id AS id_categoria, 'EMAIL_ADDRESS' AS nome, 
       'Validador que verifica se o e-mail está bem formado.' AS descricao,
       '''EmailAddress''' AS validator, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_VALIDATOR';

INSERT INTO formulario_elemento_validator (id_categoria, nome, descricao, validator, rowinfo)
SELECT c.id AS id_categoria, 'EMAIL_ADDRESS_DEEP_MX' AS nome, 
       'Validador que verifica se o e-mail está bem formado e se o host informado aceita receber e-mails.' AS descricao,
       '''EmailAddress'', true, array(''mx'' => true, ''deep'' => true, ''messages'' => array(Zend_Validate_EmailAddress::INVALID_FORMAT     => $this->getView()->tradutor(''FORM_ELEMENT_VALIDATOR_EMAILADDRESS_INVALID_FORMAT''), 
																												 Zend_Validate_EmailAddress::INVALID_HOSTNAME   => $this->getView()->tradutor(''FORM_ELEMENT_VALIDATOR_EMAILADDRESS_INVALID_HOSTNAME''),
																												 Zend_Validate_EmailAddress::INVALID_MX_RECORD  => $this->getView()->tradutor(''FORM_ELEMENT_VALIDATOR_EMAILADDRESS_INVALID_MX_RECORD''),
																												 Zend_Validate_EmailAddress::INVALID_SEGMENT    => $this->getView()->tradutor(''FORM_ELEMENT_VALIDATOR_EMAILADDRESS_INVALID_SEGMENT''),
																												 Zend_Validate_EmailAddress::DOT_ATOM           => $this->getView()->tradutor(''FORM_ELEMENT_VALIDATOR_EMAILADDRESS_DOT_ATOM''),
																												 Zend_Validate_EmailAddress::QUOTED_STRING      => $this->getView()->tradutor(''FORM_ELEMENT_VALIDATOR_EMAILADDRESS_QUOTED_STRING''),
																												 Zend_Validate_EmailAddress::INVALID_LOCAL_PART => $this->getView()->tradutor(''FORM_ELEMENT_VALIDATOR_EMAILADDRESS_INVALID_LOCAL_PART''),),)' AS validator, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_VALIDATOR';