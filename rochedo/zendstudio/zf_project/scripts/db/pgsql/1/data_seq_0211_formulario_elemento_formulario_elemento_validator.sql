/*
* SCRIPT DE POPULACAO DAS TABELAS
* 
* versao: 1.0 (POSTGRESQL 8.4.1)
* por: ADRIANO DUPRAT LEMOS (adriano.lemos@rochedoproject.com)
* criacao: 20/10/2010
* ultimas modificacoes:
*  
*/

/* FORMULARIO ELEMENTO x FORMULARIO ELEMENTO VALIDATOR */

INSERT INTO formulario_elemento_formulario_elemento_validator (id_formulario_elemento, id_formulario_elemento_validator, rowinfo)
SELECT (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_PASSWORD_TEXT_BOX_SENHA_WITH_CHECKER') AS id_formulario_elemento,
       (SELECT fev.id
        FROM formulario_elemento_validator fev
        LEFT JOIN categoria c ON (fev.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_VALIDATOR'
        AND fev.nome = 'STRING_LENGTH_6_TO_100') AS id_formulario_elemento_validator,
       'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_elemento_formulario_elemento_validator (id_formulario_elemento, id_formulario_elemento_validator, rowinfo)
SELECT (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_NUMBER_TEXT_BOX_CARGA_HORARIA_SEMANAL') AS id_formulario_elemento,
       (SELECT fev.id
        FROM formulario_elemento_validator fev
        LEFT JOIN categoria c ON (fev.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_VALIDATOR'
        AND fev.nome = 'INT') AS id_formulario_elemento_validator,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO formulario_elemento_formulario_elemento_validator (id_formulario_elemento, id_formulario_elemento_validator, rowinfo)
SELECT (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_VALIDATION_TEXT_BOX_NOME_USUARIO') AS id_formulario_elemento,
       (SELECT fev.id
        FROM formulario_elemento_validator fev
        LEFT JOIN categoria c ON (fev.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_VALIDATOR'
        AND fev.nome = 'NOT_EMPTY') AS id_formulario_elemento_validator,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO formulario_elemento_formulario_elemento_validator (id_formulario_elemento, id_formulario_elemento_validator, rowinfo)
SELECT (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_VALIDATION_TEXT_BOX_LOGIN') AS id_formulario_elemento,
       (SELECT fev.id
        FROM formulario_elemento_validator fev
        LEFT JOIN categoria c ON (fev.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_VALIDATOR'
        AND fev.nome = 'NOT_EMPTY') AS id_formulario_elemento_validator,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO formulario_elemento_formulario_elemento_validator (id_formulario_elemento, id_formulario_elemento_validator, rowinfo)
SELECT (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_VALIDATION_TEXT_BOX_LOGIN') AS id_formulario_elemento,
       (SELECT fev.id
        FROM formulario_elemento_validator fev
        LEFT JOIN categoria c ON (fev.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_VALIDATOR'
        AND fev.nome = 'STRING_LENGTH_3_TO_100') AS id_formulario_elemento_validator,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO formulario_elemento_formulario_elemento_validator (id_formulario_elemento, id_formulario_elemento_validator, rowinfo)
SELECT (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_VALIDATION_TEXT_BOX_LOGIN') AS id_formulario_elemento,
       (SELECT fev.id
        FROM formulario_elemento_validator fev
        LEFT JOIN categoria c ON (fev.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_VALIDATOR'
        AND fev.nome = 'REGEX_/^[(a-zA-Z)]+[(a-zA-Z0-9_@\.)]*$/') AS id_formulario_elemento_validator,
       'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_elemento_formulario_elemento_validator (id_formulario_elemento, id_formulario_elemento_validator, rowinfo)
SELECT (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_DATE_TEXT_BOX_DATA_NASCIMENTO') AS id_formulario_elemento,
       (SELECT fev.id
        FROM formulario_elemento_validator fev
        LEFT JOIN categoria c ON (fev.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_VALIDATOR'
        AND fev.nome = 'NOT_EMPTY') AS id_formulario_elemento_validator,
       'SYSTEM_STARTUP' AS rowinfo;
      
INSERT INTO formulario_elemento_formulario_elemento_validator (id_formulario_elemento, id_formulario_elemento_validator, rowinfo)
SELECT (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_PASSWORD_TEXT_BOX_SENHA_WITH_CHECKER') AS id_formulario_elemento,
       (SELECT fev.id
        FROM formulario_elemento_validator fev
        LEFT JOIN categoria c ON (fev.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_VALIDATOR'
        AND fev.nome = 'NOT_EMPTY') AS id_formulario_elemento_validator,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO formulario_elemento_formulario_elemento_validator (id_formulario_elemento, id_formulario_elemento_validator, rowinfo)
SELECT (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_PASSWORD_TEXT_BOX_SENHA_CONFIRMACAO') AS id_formulario_elemento,
       (SELECT fev.id
        FROM formulario_elemento_validator fev
        LEFT JOIN categoria c ON (fev.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_VALIDATOR'
        AND fev.nome = 'NOT_EMPTY') AS id_formulario_elemento_validator,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO formulario_elemento_formulario_elemento_validator (id_formulario_elemento, id_formulario_elemento_validator, rowinfo)
SELECT (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_PASSWORD_TEXT_BOX_SENHA_CONFIRMACAO') AS id_formulario_elemento,
       (SELECT fev.id
        FROM formulario_elemento_validator fev
        LEFT JOIN categoria c ON (fev.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_VALIDATOR'
        AND fev.nome = 'IDENTICAL') AS id_formulario_elemento_validator,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO formulario_elemento_formulario_elemento_validator (id_formulario_elemento, id_formulario_elemento_validator, rowinfo)
SELECT (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_VALIDATION_TEXT_BOX_EMAIL_USUARIO') AS id_formulario_elemento,
       (SELECT fev.id
        FROM formulario_elemento_validator fev
        LEFT JOIN categoria c ON (fev.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_VALIDATOR'
        AND fev.nome = 'NOT_EMPTY') AS id_formulario_elemento_validator,
       'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_elemento_formulario_elemento_validator (id_formulario_elemento, id_formulario_elemento_validator, rowinfo)
SELECT (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_VALIDATION_TEXT_BOX_EMAIL_USUARIO') AS id_formulario_elemento,
       (SELECT fev.id
        FROM formulario_elemento_validator fev
        LEFT JOIN categoria c ON (fev.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_VALIDATOR'
        AND fev.nome = 'EMAIL_ADDRESS_DEEP_MX') AS id_formulario_elemento_validator,
       'SYSTEM_STARTUP' AS rowinfo;