/*
* SCRIPT DE POPULACAO DAS TABELAS DO SPRINT 0004
* 
* versao: 1.0 (POSTGRESQL 8.4.1)
* por: CARLOS FEITOSA (carlos.feitosa@rochedoproject.com)
* criacao: 14/06/2010
* ultimas modificacoes: 
* 						16/06/2010 - insercao de dados em formulario_perfil;
* 						09/07/2010 - insercao dos dados da tabela de modulos;
* 						13/07/2010 - insercao do ouput (categoria e template, tambem)
* 									 DOJO;
* 								   - insercao do valores TRUE para o campo element_reloadable
* 									 na tabela formulario_elemento;
* 						14/07/2010 - insercao da categoria FORMULARIO_ELEMENTO_DECORATOR;
* 							       - insercao do decorator FORMULARIO_ELEMENTO_DECORATOR;
* 								   - vinculacao de formulario_elemento com decorator.
*/

/* TIPO CATEGORIA */

INSERT INTO tipo_categoria (nome, descricao, rowinfo)
VALUES ('FORMULARIO', 'Formulários do sistema.', 'SYSTEM_STARTUP');

INSERT INTO tipo_categoria (nome, descricao, rowinfo)
VALUES ('AJUDA', 'Ajuda do sistema', 'SYSTEM_STARTUP');


/* CATEGORIA */

INSERT INTO categoria (id_tipo_categoria, nome, descricao, rowinfo)
SELECT id AS id_tipo_categoria, 'FORMULARIO_OUTPUT' AS nome, 'Tipo de saida de formulários.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria
WHERE nome = 'FORMULARIO';

INSERT INTO categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria, 2 AS nivel, 'FORMULARIO_OUTPUT_DOJO' AS nome, 'Saida DOJO.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_OUTPUT';

INSERT INTO categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria, 2 AS nivel, 'FORMULARIO_OUTPUT_HTML' AS nome, 'Saida HTML.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_OUTPUT';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, rowinfo)
SELECT id AS id_tipo_categoria, 'FORMULARIO_TEMPLATE' AS nome, 'Template de formulários.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria
WHERE nome = 'FORMULARIO';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, rowinfo)
SELECT id AS id_tipo_categoria, 'FORMULARIO_INPUT' AS nome, 'Formulários de manipulação de dados.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria
WHERE nome = 'FORMULARIO';

INSERT INTO categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria, 2 AS nivel, 'FORMULARIO_INPUT_CADASTRO' AS nome, 'Formulários de manipulação de dados cadastrais.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT';

INSERT INTO categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria, 3 AS nivel, 'FORMULARIO_INPUT_CADASTRO_USUARIO' AS nome, 'Formulários de manipulação de dados cadastrais do usuário.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, rowinfo)
SELECT id AS id_tipo_categoria, 'AJUDA_FORMULARIO' AS nome, 'Ajuda para preenchimento de formulários de manipulação de dados.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria
WHERE nome = 'AJUDA';

INSERT INTO categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria, 2 AS nivel, 'AJUDA_FORMULARIO_CADASTRO' AS nome, 'Ajuda para preenchimento de formulários de manipulação de dados cadastrais.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO';

INSERT INTO categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria, 3 AS nivel, 'AJUDA_FORMULARIO_CADASTRO_USUARIO' AS nome, 'Ajuda para preenchimento de formulários de manipulação de dados cadastrais.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_CADASTRO';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, rowinfo)
SELECT id AS id_tipo_categoria, 'FORMULARIO_DECORATOR' AS nome, 'Decorator para formulários de manipulação de dados.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria
WHERE nome = 'FORMULARIO';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, rowinfo)
SELECT id AS id_tipo_categoria, 'FORMULARIO_ELEMENTO' AS nome, 'Elementos de formulários de manipulação de dados.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria
WHERE nome = 'FORMULARIO';

INSERT INTO categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria, 2 AS nivel, 'FORMULARIO_ELEMENTO_FILTER' AS nome, 'Filtros para elementos de formulários de manipulação de dados.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria, 2 AS nivel, 'FORMULARIO_ELEMENTO_VALIDATOR' AS nome, 'Validadores para elementos de formulários de manipulação de dados.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria, 2 AS nivel, 'FORMULARIO_ELEMENTO_DECORATOR' AS nome, 'Decorador para elementos de formulários de manipulação de dados.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria, 2 AS nivel, 'FORMULARIO_ELEMENTO_CAPTCHA' AS nome, 'Elementos CAPTCHA para formulários de manipulação de dados.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria, 2 AS nivel, 'FORMULARIO_ELEMENTO_BUTTON' AS nome, 'Botões para formulários de manipulação de dados.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO categoria (id_tipo_categoria, id_categoria_pai, nivel, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, c.id AS id_categoria, 2 AS nivel, 'FORMULARIO_ELEMENTO_HASH' AS nome, 'Hashs para formulários de manipulação de dados.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO categoria (id_tipo_categoria, nome, descricao, rowinfo)
SELECT t.id AS id_tipo_categoria, 'SISTEMA_MODULO' AS nome, 'Modulos do sistema.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
WHERE t.nome = 'SISTEMA';


/* DICIONARIO DE EXPRESSOES
   PT-BR */

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_NOME_AJUDA' AS constante_textual, 'Digite neste campo o seu nome completo, sem abreviações.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_EMAIL_AJUDA' AS constante_textual, 'Digite neste campo o seu e-mail. Digite apenas 1 (um) endereço, sem espaços.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_CAPTCHA_6' AS constante_textual, 'Por favor, digite o código de 6 caracteres abaixo:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_BUTTON_SUBMIT' AS constante_textual, 'Enviar' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';


/* EN-US */

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_NOME_AJUDA' AS constante_textual, 'Type your full name in this field without abreviations.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_EMAIL_AJUDA' AS constante_textual, 'Type your e-mail address in this field. Type only one (1) address without spaces.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_CAPTCHA_6' AS constante_textual, 'Please type the 6 caracters code bellow:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_BUTTON_SUBMIT' AS constante_textual, 'Send' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';


/* OUTPUT */

INSERT INTO output (id_categoria, nome, descricao, rowinfo)
SELECT c.id AS id_categoria, 'OUTPUT_DOJO' AS nome, 'Formato de saida DOJO.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_OUTPUT_DOJO';

INSERT INTO output (id_categoria, nome, descricao, rowinfo)
SELECT c.id AS id_categoria, 'OUTPUT_HTML' AS nome, 'Formato de saida HTML.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_OUTPUT_HTML';


/* FORMULARIO TEMPLATE */

INSERT INTO template (id_categoria, nome, descricao, id_output, rowinfo)
SELECT c.id AS id_categoria, 'TEMPLATE_DOJO' AS nome, 'Template DOJO.' AS descricao,
       (SELECT o.id
        FROM output o
        LEFT JOIN categoria c ON (o.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_OUTPUT_DOJO'
        AND o.nome = 'OUTPUT_DOJO') AS id_output, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_TEMPLATE';

INSERT INTO template (id_categoria, nome, descricao, id_output, rowinfo)
SELECT c.id AS id_categoria, 'TEMPLATE_HTML' AS nome, 'Template HTML.' AS descricao,
       (SELECT o.id
        FROM output o
        LEFT JOIN categoria c ON (o.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_OUTPUT_HTML'
        AND o.nome = 'OUTPUT_HTML') AS id_output, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_TEMPLATE';


/* AJUDA */

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, constante_textual_hint, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_CAMPO_NOME_USUARIO' AS nome, 'Texto de ajuda para o campo nome do usuário.' AS descricao,
       'FORM_FIELD_NOME_AJUDA' AS constante_textual_ajuda, 'FORM_FIELD_NOME_HINT' AS constante_textual_hint, 
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_CADASTRO_USUARIO';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, constante_textual_hint, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_CAMPO_EMAIL_USUARIO' AS nome, 'Texto de ajuda para o campo e-mail do usuário.' AS descricao,
       'FORM_FIELD_EMAIL_AJUDA' AS constante_textual_ajuda, 'FORM_FIELD_EMAIL_HINT' AS constante_textual_hint, 
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_CADASTRO_USUARIO';


/* DECORATOR */

INSERT INTO decorator (id_categoria, nome, descricao, decorator, rowinfo)
SELECT c.id AS id_categoria, 'DECORATOR_FORM_SUBMIT' AS nome, 'Decorator para submissão de formulários.' AS descricao,
       '''FormElements'',
                array(''HtmlTag'', array(''tag'' => ''dl'', ''class'' => ''zend_form_dojo'')),
                array(''DijitForm'', array("postOnBackground"=> false, "postOnBackgroundOptions"=> array(''successHandler''=>"dojo.eval(data);"))),' AS decorator, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_DECORATOR';

INSERT INTO decorator (id_categoria, nome, descricao, decorator, rowinfo)
SELECT c.id AS id_categoria, 'DECORATOR_FORM_LABEL_ESCAPE' AS nome, 'Decorator que permite escapar tags html dentro de um label de um campo no formulários.' AS descricao,
       '''Label'', array(''escape'' => false)' AS decorator, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_DECORATOR';


/* MODULO */

INSERT INTO modulo (id_categoria, nome, descricao, versao, path, instalado, ativo, xml_autoria, rowinfo)
SELECT c.id AS id_categoria, 'BASICO' AS nome,
	   'Modulo basico. Necessario para funcionamento minimo do sistema.' AS descricao,
	   '0.3' AS versao, 'basico/' AS path, 1 AS instalado, 1 AS ativo,
	   'SYSTEM_XML_STARTUP' AS xml_autoria, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'SISTEMA_MODULO';


/* FORMULARIO */

INSERT INTO formulario (id_categoria, id_decorator, nome, descricao, 
                        constante_textual_titulo, constante_textual_subtitulo, 
                        form_name, form_method, form_action, form_attribs, rowinfo)
SELECT c.id AS id_categoria, (SELECT d.id
                              FROM decorator d
                              LEFT JOIN categoria c ON (d.id_categoria = c.id)
                              LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'FORMULARIO'
                              AND c.nome = 'FORMULARIO_DECORATOR'
                              AND d.nome = 'DECORATOR_FORM_SUBMIT') AS id_decorator,

       'FORM_CADASTRAR_USUARIO_NAO_VALIDADO' AS nome,
       'Formulário de cadastro de usuário não validado. É a porta de entrada para validação do usuário no sistema.' AS descricao, 
       'VIEW_LOGIN_CADASTRAR_USUARIO_NAO_VALIDADO_TITULO' AS constante_textual_titulo,
       'VIEW_LOGIN_CADASTRAR_USUARIO_NAO_VALIDADO_SUBTITULO' AS constante_textual_subtitulo, 
       'CadastrarUsuarioNaoValidado' AS form_name, 'post' AS form_method, 'verificaNovoLogin' AS form_action, 
       '''onSubmit''=>"loading();return(validateForm(''CadastrarUsuarioNaoValidado''))"' AS form_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO';


/* FORMULARIO ELEMENTO FILTER */

INSERT INTO formulario_elemento_filter (id_categoria, nome, descricao, filter, rowinfo)
SELECT c.id AS id_categoria, 'STRINGTRIM_STRIPTAGS' AS nome, 
       'Filtro que limpa espaços antes e depois do texto e remove todas as marcações de linguagens de programação.' AS descricao,
       '''StringTrim'', ''StripTags''' AS filter, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_FILTER';


/* FORMULARIO ELEMENTO VALIDATOR */

INSERT INTO formulario_elemento_validator (id_categoria, nome, descricao, validator, rowinfo)
SELECT c.id AS id_categoria, 'NOT_EMPTY' AS nome, 
       'Validador que não permite que o campo seja vazio.' AS descricao,
       '''NotEmpty''' AS validator, 'SYSTEM_STARTUP' AS rowinfo
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
       '''EmailAddress'', true, array(''mx'' => true, ''deep'' => true,)' AS validator, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_VALIDATOR';


/* FORMULARIO ELEMENTO */

INSERT INTO formulario_elemento (id_categoria, id_ajuda, id_formulario_elemento_filter, 
								 id_decorator, nome, descricao, constante_textual_label, 
								 element_name, element_attribs, element, element_reloadable, 
								 rowinfo)
SELECT c.id AS id_categoria, (SELECT a.id
                              FROM ajuda a
                              LEFT JOIN categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_CADASTRO_USUARIO'
                              AND a.nome = 'AJUDA_CAMPO_NOME_USUARIO') AS id_ajuda,
                             (SELECT ff.id
                              FROM formulario_elemento_filter ff
                              LEFT JOIN categoria c ON (ff.id_categoria = c.id)
                              LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'FORMULARIO'
                              AND c.nome = 'FORMULARIO_ELEMENTO_FILTER'
                              AND ff.nome = 'STRINGTRIM_STRIPTAGS') AS id_formulario_elemento_filter,
                             (SELECT d.id
                              FROM decorator d
                              LEFT JOIN categoria c ON (d.id_categoria = c.id)
                              LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'FORMULARIO'
                              AND c.nome = 'FORMULARIO_ELEMENTO_DECORATOR'
                              AND d.nome = 'DECORATOR_FORM_LABEL_ESCAPE') AS decorator,
                              'FIELD_NOME_USUARIO' AS nome, 'Elemento campo nome do usuário, com filtro e validador.' AS descricao,
                              'FORM_FIELD_NOME' AS constante_textual_label,
                              'nome' AS element_name, '''size'' => 100' AS element_attribs,
                              '''ValidationTextBox'', ''nome''' AS element, 1 AS element_reloadable, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO formulario_elemento (id_categoria, id_ajuda, id_formulario_elemento_filter, 
								 id_decorator, nome, descricao, constante_textual_label, 
								 element_name, element_attribs, element, element_reloadable, 
								 rowinfo)
SELECT c.id AS id_categoria, (SELECT a.id
                              FROM ajuda a
                              LEFT JOIN categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_CADASTRO_USUARIO'
                              AND a.nome = 'AJUDA_CAMPO_EMAIL_USUARIO') AS id_ajuda,
                             (SELECT ff.id
                              FROM formulario_elemento_filter ff
                              LEFT JOIN categoria c ON (ff.id_categoria = c.id)
                              LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'FORMULARIO'
                              AND c.nome = 'FORMULARIO_ELEMENTO_FILTER'
                              AND ff.nome = 'STRINGTRIM_STRIPTAGS') AS id_formulario_elemento_filter,
                             (SELECT d.id
                              FROM decorator d
                              LEFT JOIN categoria c ON (d.id_categoria = c.id)
                              LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'FORMULARIO'
                              AND c.nome = 'FORMULARIO_ELEMENTO_DECORATOR'
                              AND d.nome = 'DECORATOR_FORM_LABEL_ESCAPE') AS decorator,
                              'FIELD_EMAIL_USUARIO' AS nome, 'Elemento campo e-mail do usuário, com filtro e validador.' AS descricao,
                              'FORM_FIELD_EMAIL' AS constante_textual_label,
                              'email' AS element_name, '''size'' => 80' AS element_attribs,
                              '''ValidationTextBox'', ''email''' AS element, 1 AS element_reloadable, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO formulario_elemento (id_categoria, nome, descricao, constante_textual_label,
                                 element_name, element, rowinfo)
SELECT c.id AS id_categoria, 'CAPTCHA_6' AS nome, 'Captcha para validação humana de 6 caracteres (anti-robô).' AS descricao,
       'FORM_FIELD_CAPTCHA_6' AS constante_textual_label, 'captcha' AS element_name, 
       '''captcha'', ''captcha'', 
                      array(''required''=>true,
                            ''captcha''=>array(''captcha''=>''Image'',
                                             ''imgDir'' => CAPTCHA_IMAGE_DIR,
                                             ''imgUrl'' => CAPTCHA_IMAGE_URL,
                                             ''wordLen''=> 6,
                                             ''width''  => 250,
                                             ''height'' => 80,
                                             ''font''   => CAPTCHA_FONT_PATH,
                                             ''fontSize'' => 50,
                                             ''expiration'' => 300,
                                             ''gcFreq'' => 100),)' AS element, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_CAPTCHA';

INSERT INTO formulario_elemento (id_categoria, nome, descricao, constante_textual_label,
                                 element_name, element, rowinfo)
SELECT c.id AS id_categoria, 'FORM_BUTTON_SUBMIT' AS nome, 'Botão para submissão de formulários.' AS descricao,
       'FORM_BUTTON_SUBMIT' AS constante_textual_label, 'enviar' AS element_name, 
       '''submit'', ''enviar'', array(''label'' => ''Enviar'',)' AS element, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON';

INSERT INTO formulario_elemento (id_categoria, nome, descricao, element_name, element, rowinfo)
SELECT c.id AS id_categoria, 'FORM_HASH' AS nome, 'Botão para submissão de formulários.' AS descricao,
       'csrf' AS element_name, 
       '''hash'', ''csrf'', array(''ignore'' => true, ''salt'' => ''unique'',)' AS element, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_HASH';


/* FORMULARIO ELEMENTO x FORMULARIO ELEMENTO VALIDATOR */

INSERT INTO formulario_elemento_formulario_elemento_validator (id_formulario_elemento, id_formulario_elemento_validator, rowinfo)
SELECT (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FIELD_NOME_USUARIO') AS id_formulario_elemento,
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
        AND fe.nome = 'FIELD_EMAIL_USUARIO') AS id_formulario_elemento,
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
        AND fe.nome = 'FIELD_EMAIL_USUARIO') AS id_formulario_elemento,
       (SELECT fev.id
        FROM formulario_elemento_validator fev
        LEFT JOIN categoria c ON (fev.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_VALIDATOR'
        AND fev.nome = 'EMAIL_ADDRESS_DEEP_MX') AS id_formulario_elemento_validator,
       'SYSTEM_STARTUP' AS rowinfo;


/* FORMULARIO x FORMULARIO ELEMENTO*/

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO'
        AND f.nome = 'FORM_CADASTRAR_USUARIO_NAO_VALIDADO') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FIELD_NOME_USUARIO') AS id_formulario_elemento, 1 AS element_required, 1 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO'
        AND f.nome = 'FORM_CADASTRAR_USUARIO_NAO_VALIDADO') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FIELD_EMAIL_USUARIO') AS id_formulario_elemento, 1 AS element_required, 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO'
        AND f.nome = 'FORM_CADASTRAR_USUARIO_NAO_VALIDADO') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_CAPTCHA'
        AND fe.nome = 'CAPTCHA_6') AS id_formulario_elemento, 1 AS element_required, 3 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO'
        AND f.nome = 'FORM_CADASTRAR_USUARIO_NAO_VALIDADO') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON'
        AND fe.nome = 'FORM_BUTTON_SUBMIT') AS id_formulario_elemento, 1 AS element_required, 4 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO'
        AND f.nome = 'FORM_CADASTRAR_USUARIO_NAO_VALIDADO') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_HASH'
        AND fe.nome = 'FORM_HASH') AS id_formulario_elemento, 1 AS element_required, 5 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
        
INSERT INTO formulario_perfil (id_formulario, id_perfil, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO'
        AND f.nome = 'FORM_CADASTRAR_USUARIO_NAO_VALIDADO') AS id_formulario,
       (SELECT p.id
        FROM perfil p
        LEFT JOIN categoria c ON (p.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'SISTEMA'
        AND c.nome = 'SISTEMA_USUARIO'
        AND p.nome = 'USUARIO_NAO_VALIDADO') AS id_perfil, 'SYSTEM_STARTUP' AS rowinfo;


/* MODULO BASCIO x FORMULARIO FORM_CADASTRAR_USUARIO_NAO_VALIDADO */

INSERT INTO modulo_formulario (id_modulo, id_formulario, rowinfo)
SELECT (SELECT m.id
		FROM modulo m
		LEFT JOIN categoria c ON (m.id_categoria = c.id)
		LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'SISTEMA'
		AND c.nome = 'SISTEMA_MODULO'
		AND m.nome = 'BASICO') AS id_modulo,
	   (SELECT f.id
		FROM formulario f
		LEFT JOIN categoria c ON (f.id_categoria = c.id)
		LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'FORMULARIO'
		AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO'
		AND f.nome = 'FORM_CADASTRAR_USUARIO_NAO_VALIDADO') AS id_formulario,
		'SYSTEM_STARTUP' AS rowinfo;


/* MODULO BASCIO x PERFIL USUARIO_NAO_VALIDADO */

INSERT INTO modulo_perfil (id_modulo, id_perfil, rowinfo)
SELECT (SELECT m.id
		FROM modulo m
		LEFT JOIN categoria c ON (m.id_categoria = c.id)
		LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'SISTEMA'
		AND c.nome = 'SISTEMA_MODULO'
		AND m.nome = 'BASICO') AS id_modulo,
	   (SELECT p.id
		FROM perfil p
		LEFT JOIN categoria c ON (p.id_categoria = c.id)
		LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'SISTEMA'
		AND c.nome = 'SISTEMA_USUARIO'
		AND p.nome = 'USUARIO_NAO_VALIDADO') AS id_perfil,
		'SYSTEM_STARTUP' AS rowinfo;