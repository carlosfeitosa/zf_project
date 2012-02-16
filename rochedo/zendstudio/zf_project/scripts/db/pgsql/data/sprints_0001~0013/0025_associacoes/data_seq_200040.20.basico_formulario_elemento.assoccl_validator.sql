/**
* SCRIPT DE POPULACAO DA TABELA basico_formulario_elemento.assoccl_validator
* 
* Esta tabela contêm os dados de associacao das tabelas
* de basico_formulario.elemento com basico.validator
* 
* versao: 1.0 (POSTGRESQL 9.1.1)
* por: ADRIANO LEMOS (adriano.lemos@rochedoframework.com)
* criacao: 07/02/2012
* ultimas modificacoes:
* 								
*/

INSERT INTO basico_formulario_elemento.assoccl_validator (id_elemento, id_validator, rowinfo)
SELECT (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_PASSWORD_TEXT_BOX_SENHA_WITH_CHECKER') AS id_formulario_elemento,
       (SELECT fev.id
        FROM basico.validator fev
        LEFT JOIN basico.categoria c ON (fev.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_VALIDATOR'
        AND fev.nome = 'STRING_LENGTH_6_TO_100') AS id_formulario_elemento_validator,
       'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario_elemento.assoccl_validator (id_elemento, id_validator, rowinfo)
SELECT (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_NUMBER_TEXT_BOX_CARGA_HORARIA_SEMANAL') AS id_formulario_elemento,
       (SELECT fev.id
        FROM basico.validator fev
        LEFT JOIN basico.categoria c ON (fev.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_VALIDATOR'
        AND fev.nome = 'INT') AS id_formulario_elemento_validator,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_formulario_elemento.assoccl_validator (id_elemento, id_validator, rowinfo)
SELECT (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_VALIDATION_TEXT_BOX_NOME_USUARIO') AS id_formulario_elemento,
       (SELECT fev.id
        FROM basico.validator fev
        LEFT JOIN basico.categoria c ON (fev.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_VALIDATOR'
        AND fev.nome = 'NOT_EMPTY') AS id_formulario_elemento_validator,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_formulario_elemento.assoccl_validator (id_elemento, id_validator, rowinfo)
SELECT (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_VALIDATION_TEXT_BOX_LOGIN') AS id_formulario_elemento,
       (SELECT fev.id
        FROM basico.validator fev
        LEFT JOIN basico.categoria c ON (fev.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_VALIDATOR'
        AND fev.nome = 'NOT_EMPTY') AS id_formulario_elemento_validator,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_formulario_elemento.assoccl_validator (id_elemento, id_validator, rowinfo)
SELECT (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_VALIDATION_TEXT_BOX_LOGIN') AS id_formulario_elemento,
       (SELECT fev.id
        FROM basico.validator fev
        LEFT JOIN basico.categoria c ON (fev.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_VALIDATOR'
        AND fev.nome = 'STRING_LENGTH_3_TO_100') AS id_formulario_elemento_validator,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_formulario_elemento.assoccl_validator (id_elemento, id_validator, rowinfo)
SELECT (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_VALIDATION_TEXT_BOX_LOGIN') AS id_formulario_elemento,
       (SELECT fev.id
        FROM basico.validator fev
        LEFT JOIN basico.categoria c ON (fev.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_VALIDATOR'
        AND fev.nome = 'REGEX_/^[(a-zA-Z)]+[(a-zA-Z0-9_@\.)]*$/') AS id_formulario_elemento_validator,
       'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario_elemento.assoccl_validator (id_elemento, id_validator, rowinfo)
SELECT (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_DATE_TEXT_BOX_DATA_NASCIMENTO') AS id_formulario_elemento,
       (SELECT fev.id
        FROM basico.validator fev
        LEFT JOIN basico.categoria c ON (fev.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_VALIDATOR'
        AND fev.nome = 'NOT_EMPTY') AS id_formulario_elemento_validator,
       'SYSTEM_STARTUP' AS rowinfo;
      
INSERT INTO basico_formulario_elemento.assoccl_validator (id_elemento, id_validator, rowinfo)
SELECT (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_PASSWORD_TEXT_BOX_SENHA_WITH_CHECKER') AS id_formulario_elemento,
       (SELECT fev.id
        FROM basico.validator fev
        LEFT JOIN basico.categoria c ON (fev.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_VALIDATOR'
        AND fev.nome = 'NOT_EMPTY') AS id_formulario_elemento_validator,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_formulario_elemento.assoccl_validator (id_elemento, id_validator, rowinfo)
SELECT (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_PASSWORD_TEXT_BOX_SENHA_CONFIRMACAO') AS id_formulario_elemento,
       (SELECT fev.id
        FROM basico.validator fev
        LEFT JOIN basico.categoria c ON (fev.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_VALIDATOR'
        AND fev.nome = 'NOT_EMPTY') AS id_formulario_elemento_validator,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_formulario_elemento.assoccl_validator (id_elemento, id_validator, rowinfo)
SELECT (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_PASSWORD_TEXT_BOX_SENHA_CONFIRMACAO') AS id_formulario_elemento,
       (SELECT fev.id
        FROM basico.validator fev
        LEFT JOIN basico.categoria c ON (fev.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_VALIDATOR'
        AND fev.nome = 'IDENTICAL') AS id_formulario_elemento_validator,
       'SYSTEM_STARTUP' AS rowinfo;
       
INSERT INTO basico_formulario_elemento.assoccl_validator (id_elemento, id_validator, rowinfo)
SELECT (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_VALIDATION_TEXT_BOX_EMAIL_USUARIO') AS id_formulario_elemento,
       (SELECT fev.id
        FROM basico.validator fev
        LEFT JOIN basico.categoria c ON (fev.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_VALIDATOR'
        AND fev.nome = 'NOT_EMPTY') AS id_formulario_elemento_validator,
       'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario_elemento.assoccl_validator (id_elemento, id_validator, rowinfo)
SELECT (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_VALIDATION_TEXT_BOX_EMAIL_USUARIO') AS id_formulario_elemento,
       (SELECT fev.id
        FROM basico.validator fev
        LEFT JOIN basico.categoria c ON (fev.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_VALIDATOR'
        AND fev.nome = 'EMAIL_ADDRESS_DEEP_MX') AS id_formulario_elemento_validator,
       'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario_elemento.assoccl_validator (id_elemento, id_validator, rowinfo)
SELECT (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_PASSWORD_TEXT_BOX_CONFIRMACAO_NOVA_SENHA') AS id_formulario_elemento,
       (SELECT fev.id
        FROM basico.validator fev
        LEFT JOIN basico.categoria c ON (fev.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_VALIDATOR'
        AND fev.nome = 'IDENTICAL') AS id_formulario_elemento_validator,
       'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario_elemento.assoccl_validator (id_elemento, id_validator, rowinfo)
SELECT (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_PASSWORD_TEXT_BOX_CONFIRMACAO_NOVA_SENHA') AS id_formulario_elemento,
       (SELECT fev.id
        FROM basico.validator fev
        LEFT JOIN basico.categoria c ON (fev.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_VALIDATOR'
        AND fev.nome = 'STRING_LENGTH_6_TO_100') AS id_formulario_elemento_validator,
       'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO basico_formulario_elemento.assoccl_validator (id_elemento, id_validator, rowinfo)
SELECT (SELECT fe.id
        FROM basico_formulario.elemento fe
        LEFT JOIN basico.categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_PASSWORD_TEXT_BOX_CONFIRMACAO_NOVA_SENHA') AS id_formulario_elemento,
       (SELECT fev.id
        FROM basico.validator fev
        LEFT JOIN basico.categoria c ON (fev.id_categoria = c.id)
        LEFT JOIN basico.tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_VALIDATOR'
        AND fev.nome = 'NOT_EMPTY') AS id_formulario_elemento_validator,
       'SYSTEM_STARTUP' AS rowinfo;