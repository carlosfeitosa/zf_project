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
* 								   - vinculacao de formulario_elemento com decorator;
* 						23/07/2010 - insercao dos dados da tabela template_formulario;
* 						02/08/2010 - insercao do decorator DECORATOR_FORM_TAB_CONTAINER1
* 									 para formularios com abas (e suas categorias);
* 								   - insercao do formulario do sprint 0003 DadosUsuario (com abas);
* 						10/08/2010 - insercao da categoria FORMULARIO_SUB_FORMULARIO;
* 						25/08/2010 - insercao do elemento FORM_BUTTON_DIALOG_DOJO;
*                       09/09/2010 - insercao do dicionario de expressoes do gerado_formulario;
*						14/09/2010 - insercao dos componentes;
* 						14/09/2010 - vinculacao dos componentes com formulario_elemento;
* 						29/09/2010 - modificacao dos atributos do formulario "CadastrarUsuarioNaoValidado"
* 									 para exibir mensagem de validacao javascript;
* 						06/10/2010 - Transferido deste script para o script do sprint 0003, o Container de dados usuários
* 								   - Todos os Elementos transferidos para o sprint 0003
* 								   - Associacao de alguns elementos a formulários foram transferidos para o sprint 0003
* 								   - Componentes Transferidos para o Sprint 0003
* 								   - Categorias Transferidas para o Sprint 0003
* 								   - Tipo Categorias Transferidas para o Sprint 0003
* 								   - Expressões Transferidas para o Sprint 0003
*/




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
SELECT c.id, 'DIALOG_HELP_TITLE' AS constante_textual, 'Ajuda' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_SELECT_FORMULARIO' AS constante_textual, 'Formulário:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_SELECT_FORMULARIO_HINT' AS constante_textual, 'Selecione o Formulário desejado.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_CHECKBOX_MODULOS_FORMULARIO' AS constante_textual, 'Módulos:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_CHECKBOX_MODULOS_FORMULARIO_HINT' AS constante_textual, 'Selecione os Módulos desejados.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'VIEW_GERADOR_FORMULARIO_SUCESSO_GERAR_FORMULARIO_TITULO' AS constante_textual, 'Sucesso!' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'VIEW_GERADOR_FORMULARIO_SUCESSO_GERAR_FORMULARIO_SUBTITULO' AS constante_textual, 'Formulário gerado com sucesso.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'VIEW_GERADOR_FORMULARIO_ERRO_FORMULARIO_NAO_GERADO_TITULO' AS constante_textual, 'Atenção!' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'VIEW_GERADOR_FORMULARIO_ERRO_FORMULARIO_NAO_GERADO_SUBTITULO' AS constante_textual, 'Não foi possível gerar o Formulário.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'VIEW_GERADOR_FORMULARIO_ERRO_FORMULARIO_NAO_GERADO_MENSAGEM' AS constante_textual, 'Ocorreu um problema na tentativa de gerar o Formulário.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'VIEW_GERADOR_FORMULARIO_TITULO' AS constante_textual, 'Gerador de Formulários:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'VIEW_GERADOR_FORMULARIO_SUBTITULO' AS constante_textual, 'Preencha os dados abaixo para iniciar o processo de gerar formulários.' AS traducao
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
SELECT c.id, 'DIALOG_HELP_TITLE' AS constante_textual, 'Help' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_SELECT_FORMULARIO' AS constante_textual, 'Form:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_SELECT_FORMULARIO_HINT' AS constante_textual, 'Select the desired Form.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_CHECKBOX_MODULOS_FORMULARIO' AS constante_textual, 'Modules:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_CHECKBOX_MODULOS_FORMULARIO_HINT' AS constante_textual, 'Select the desired Modules.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'VIEW_GERADOR_FORMULARIO_SUCESSO_GERAR_FORMULARIO_TITULO' AS constante_textual, 'Success!' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'VIEW_GERADOR_FORMULARIO_SUCESSO_GERAR_FORMULARIO_SUBTITULO' AS constante_textual, 'Form successfully generated.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'VIEW_GERADOR_FORMULARIO_ERRO_FORMULARIO_NAO_GERADO_TITULO' AS constante_textual, 'Attention!' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'VIEW_GERADOR_FORMULARIO_ERRO_FORMULARIO_NAO_GERADO_SUBTITULO' AS constante_textual, 'Unable to generate Form.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'VIEW_GERADOR_FORMULARIO_ERRO_FORMULARIO_NAO_GERADO_MENSAGEM' AS constante_textual, 'There was a problem in trying to generate the form.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'VIEW_GERADOR_FORMULARIO_TITULO' AS constante_textual, 'Generator Forms:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'VIEW_GERADOR_FORMULARIO_SUBTITULO' AS constante_textual, 'Fill out the information below to begin the process of generating forms.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

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

/* FORMULARIO */

INSERT INTO formulario (id_categoria, id_decorator, nome, descricao, 
                        constante_textual_titulo, constante_textual_subtitulo,
                        form_name, form_method, form_action, form_attribs, rowinfo)
SELECT c.id AS id_categoria, (SELECT d.id
                              FROM decorator d
                              LEFT JOIN categoria c ON (d.id_categoria= c.id)
                              LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'FORMULARIO'
                              AND c.nome = 'FORMULARIO_DECORATOR'
                              AND d.nome = 'DECORATOR_FORM_SUBMIT') AS id_decorator,
       'FORM_CADASTRAR_USUARIO_NAO_VALIDADO' AS nome,
       'Formulário de cadastro de usuário não validado. É a porta de entrada para validação do usuário no sistema.' AS descricao, 
       'VIEW_LOGIN_CADASTRAR_USUARIO_NAO_VALIDADO_TITULO' AS constante_textual_titulo,
       'VIEW_LOGIN_CADASTRAR_USUARIO_NAO_VALIDADO_SUBTITULO' AS constante_textual_subtitulo,
       'CadastrarUsuarioNaoValidado' AS form_name, 'post' AS form_method, 'verificaNovoLogin' AS form_action, 
       '''onSubmit''=>"loading();return(validateForm(''@nomeForm'', ''@title'', ''@message''))"' AS form_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO';

/* FORMULARIO TEMPLATE */

INSERT INTO template_formulario (id_formulario, id_template, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO'
        AND f.nome = 'FORM_CADASTRAR_USUARIO_NAO_VALIDADO') AS id_formulario,
       (SELECT p.id
		FROM template p
		LEFT JOIN categoria c ON (p.id_categoria = c.id)
		LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'FORMULARIO'
		AND c.nome = 'FORMULARIO_TEMPLATE'
		AND p.nome = 'TEMPLATE_DOJO') AS id_template,
	   'SYSTEM_STARTUP' AS rowinfo;

/* FORMULARIO ELEMENTO VALIDATOR */

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

/* COMPONENTE */

INSERT INTO componente (id_categoria, nome, descricao, componente, rowinfo)
SELECT c.id AS id_categoria, 'ZF_captcha' AS nome, 'Componente ZendFramework para validação anti-robo.' AS descricao,
	   '''captcha''' AS componente, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'COMPONENTE'
AND c.nome = 'COMPONENTE_ZF';

INSERT INTO componente (id_categoria, nome, descricao, componente, rowinfo)
SELECT c.id AS id_categoria, 'ZF_hash' AS nome, 'Componente ZendFramework de hash para validação anti-cross-site script.' AS descricao,
	   '''hash''' AS componente, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'COMPONENTE'
AND c.nome = 'COMPONENTE_ZF';

/* FORMULARIO ELEMENTO */

INSERT INTO formulario_elemento (id_categoria, id_ajuda, id_formulario_elemento_filter, 
								 id_decorator, id_componente, nome, descricao, constante_textual_label, 
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
                              AND d.nome = 'DECORATOR_FORM_LABEL_ESCAPE') AS id_decorator,
							 (SELECT cp.id
                              FROM componente cp
                              LEFT JOIN categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_ValidationTextBox') AS id_componente,
                              'FIELD_NOME_USUARIO' AS nome, 'Elemento campo nome do usuário, com filtro e validador.' AS descricao,
                              'FORM_FIELD_NOME' AS constante_textual_label,
                              'nome' AS element_name, '''size'' => 100' AS element_attribs,
                              '''nome''' AS element, 1 AS element_reloadable, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO formulario_elemento (id_categoria, id_ajuda, id_formulario_elemento_filter, 
								 id_decorator, id_componente, nome, descricao, constante_textual_label, 
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
                              AND d.nome = 'DECORATOR_FORM_LABEL_ESCAPE') AS id_decorator,
                             (SELECT cp.id
                              FROM componente cp
                              LEFT JOIN categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_DOJO'
                              AND cp.nome = 'DOJO_ValidationTextBox') AS id_componente,
                              'FIELD_EMAIL_USUARIO' AS nome, 'Elemento campo e-mail do usuário, com filtro e validador.' AS descricao,
                              'FORM_FIELD_EMAIL' AS constante_textual_label,
                              'email' AS element_name, '''size'' => 80' AS element_attribs,
                              '''email''' AS element, 1 AS element_reloadable, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

INSERT INTO formulario_elemento (id_categoria, nome, descricao, id_componente, constante_textual_label,
                                 element_name, element, rowinfo)
SELECT c.id AS id_categoria, 'CAPTCHA_6' AS nome, 'Captcha para validação humana de 6 caracteres (anti-robô).' AS descricao,
	   (SELECT cp.id
        FROM componente cp
        LEFT JOIN categoria c ON (cp.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'COMPONENTE'
        AND c.nome = 'COMPONENTE_ZF'
        AND cp.nome = 'ZF_captcha') AS id_componente,
       'FORM_FIELD_CAPTCHA_6' AS constante_textual_label, 'captcha' AS element_name, 
       '''captcha'', 
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

INSERT INTO formulario_elemento (id_categoria, nome, descricao, id_componente, element_name, element, rowinfo)
SELECT c.id AS id_categoria, 'FORM_HASH' AS nome, 'Botão para submissão de formulários.' AS descricao,
	   (SELECT cp.id
        FROM componente cp
        LEFT JOIN categoria c ON (cp.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'COMPONENTE'
        AND c.nome = 'COMPONENTE_ZF'
        AND cp.nome = 'ZF_hash') AS id_componente,
       'csrf' AS element_name, 
       '''csrf'', array(''ignore'' => true, ''salt'' => ''unique'',)' AS element, 'SYSTEM_STARTUP' AS rowinfo
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


/* MODULO BASICO x FORMULARIO FORM_CADASTRAR_USUARIO_NAO_VALIDADO */

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
		AND f.nome = 'FORM_DADOS_USUARIO') AS id_formulario,
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