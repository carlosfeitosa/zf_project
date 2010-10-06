/*
* SCRIPT DE POPULACAO DAS TABELAS DO SPRINT 0002
* 
* versao: 1.0 (POSTGRESQL 8.4.1)
* por: JOAO VASCONCELOS (joao.vasconcelos@rochedoproject.com)
* criacao: 28/09/2010
* ultimas modificacoes: 
* 
*/

/* DICIONARIO DE EXPRESSÕES */

/*
 * (Português do Brasil - PT_BR)
 * registro de usuário validado
*/

/*
 * Titulo e Subtitulo do formulário de cadastro de usuarios validados.
 */
INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'VIEW_LOGIN_CADASTRAR_USUARIO_VALIDADO_TITULO' AS constante_textual, 'Registro de usuário:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'VIEW_LOGIN_CADASTRAR_USUARIO_VALIDADO_SUBTITULO' AS constante_textual, 'Confirme e preencha os dados abaixo para finalizar o seu registro.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

/*
 * labels dos campos do formulario de cadastro de usuarios validados.
 */
INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_NOME_USUARIO' AS constante_textual, 'Nome de Usuário:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_NOME_USUARIO_HINT' AS constante_textual, 'Digite o seu nome de usuário.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_SENHA' AS constante_textual, 'Senha:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_SENHA_HINT' AS constante_textual, 'Digite neste campo a senha que será usada por você no nosso sistema.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_SENHA_CONFIRMACAO' AS constante_textual, 'Repita sua senha:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_SENHA_CONFIRMACAO_HINT' AS constante_textual, 'Repita neste campo a senha que será usada por você no nosso sistema.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_SENHA_SUGESTAO' AS constante_textual, 'Gerar Senha' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_SENHA_SUGESTAO_HINT' AS constante_textual, 'Clique aqui para que o sistema gere uma senha para você.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_SENHA_FORCA' AS constante_textual, 'Força da senha:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_SENHA_FORCA_HINT' AS constante_textual, 'Força da senha.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_DATA_NASCIMENTO' AS constante_textual, 'Data de Nascimento:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_DATA_NASCIMENTO_HINT' AS constante_textual, 'Digite ou selecione aqui sua data de nascimento.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_SEXO' AS constante_textual, 'Sexo:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_SEXO_HINT' AS constante_textual, 'Marque o seu sexo:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_RG' AS constante_textual, 'RG:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_RG_HINT' AS constante_textual, 'Digite aqui o seu RG (Registro Geral).' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_CPF' AS constante_textual, 'CPF:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_CPF_HINT' AS constante_textual, 'Digite aqui o seu CPF (Cadastro Nacional de Pessoas Físicas).' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_PASSAPORTE' AS constante_textual, 'Passaporte:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_PASSAPORTE_HINT' AS constante_textual, 'Digite aqui o nomero do seu passaporte.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_CNH' AS constante_textual, 'CNH:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_CNH_HINT' AS constante_textual, 'Digite aqui o seu CNH (Carteira Nacional de Habilitação).' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';


/*
 * (Inglês dos Estados Unidos - EN_US)
 * registro de usuário validado
*/

/*
 * Titulo e Subtitulo do formulário de cadastro de usuarios validados.
 */
INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'VIEW_LOGIN_CADASTRAR_USUARIO_VALIDADO_TITULO' AS constante_textual, 'User Registry:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'VIEW_LOGIN_CADASTRAR_USUARIO_VALIDADO_SUBTITULO' AS constante_textual, 'Confirm and Fill the fields bellow to end your registration.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

/*
 * labels dos campos do formulario de cadastro de usuarios validados.
 */
INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_NOME_USUARIO' AS constante_textual, 'Username:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_NOME_USUARIO_HINT' AS constante_textual, 'Type your username.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_SENHA' AS constante_textual, 'Password:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_SENHA_HINT' AS constante_textual, 'Type the password which will be used by you in our system.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_SENHA_CONFIRMACAO' AS constante_textual, 'Re-type your password:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_SENHA_CONFIRMACAO_HINT' AS constante_textual, 'For confirmation, re-type the password which will be used by you in our system.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_SENHA_SUGESTAO' AS constante_textual, 'Generate password' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_SENHA_SUGESTAO_HINT' AS constante_textual, 'Click here to out system generate a password for you.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_SENHA_FORCA' AS constante_textual, 'Password strength:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_SENHA_FORCA_HINT' AS constante_textual, 'Password strength.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_DATA_NASCIMENTO' AS constante_textual, 'Birth date:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_DATA_NASCIMENTO_HINT' AS constante_textual, 'Type or select your birth date.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_SEXO' AS constante_textual, 'Genre:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_SEXO_HINT' AS constante_textual, 'Select your genre:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_RG' AS constante_textual, 'RG:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_RG_HINT' AS constante_textual, 'Type the Brazilian General Registration number.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_CPF' AS constante_textual, 'CPF:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_CPF_HINT' AS constante_textual, 'Type your brazilian CPF number.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_PASSAPORTE' AS constante_textual, 'Passport:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_PASSAPORTE_HINT' AS constante_textual, 'Type your passport number.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_CNH' AS constante_textual, 'CNH:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_CNH_HINT' AS constante_textual, 'Type your driver''s license number.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

/* CATEGORIAS */

INSERT INTO categoria (id_tipo_categoria, nome, descricao, rowinfo)
SELECT id, 'COMPONENTE_AJAX_TERCEIROS' AS nome, 'Componentes ajax de terceiros utilizados pelo sistema.' AS descricao, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria
WHERE nome = 'COMPONENTE';

/* COMPONENTE 

INSERT INTO componente (id_categoria, nome, descricao, componente, rowinfo)
SELECT c.id AS id_categoria, 'DOJO_PasswordTextBox' AS nome, 'Componente DOJO para caixas de texto do tipo Password.' AS descricao,
	   '''PasswordTextBox''' AS componente, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'COMPONENTE'
AND c.nome = 'COMPONENTE_DOJO';

INSERT INTO componente (id_categoria, nome, descricao, componente, rowinfo)
SELECT c.id AS id_categoria, 'DOJO_PasswordTextBox_With_Checker' AS nome, 'Componente DOJO para caixas de texto do tipo Password com o componente Password strength checker acoplado.' AS descricao,
	   '''PasswordTextBox''' AS componente, 'SYSTEM_STARTUP' AS rowinfo, '/componentes/ajax/strengthChecker/' as path
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'COMPONENTE'
AND c.nome = 'COMPONENTE_AJAX_TERCEIROS';

INSERT INTO componente (id_categoria, nome, descricao, componente, rowinfo)
SELECT c.id AS id_categoria, 'DOJO_DateTextBox' AS nome, 'Componente DOJO para caixas de texto do tipo Date.' AS descricao,
	   '''DateTextBox''' AS componente, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'COMPONENTE'
AND c.nome = 'COMPONENTE_DOJO';

INSERT INTO componente (id_categoria, nome, descricao, componente, rowinfo)
SELECT c.id AS id_categoria, 'DOJO_RadioButton' AS nome, 'Componente DOJO para RadioButtons.' AS descricao,
	   '''RadioButton''' AS componente, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'COMPONENTE'
AND c.nome = 'COMPONENTE_DOJO';

INSERT INTO componente (id_categoria, nome, descricao, componente, rowinfo)
SELECT c.id AS id_categoria, 'DOJO_button' AS nome, 'Componente DOJO de botões.' AS descricao,
	   '''button''' AS componente, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'COMPONENTE'
AND c.nome = 'COMPONENTE_DOJO';

/* FORMULARIO 

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
       'FORM_CADASTRAR_VALIDADO' AS nome,
       'Formulário de cadastro de usuário validado. É a etapa para confirmação dos dados e do cadastro.' AS descricao, 
       'VIEW_LOGIN_CADASTRAR_USUARIO_VALIDADO_TITULO' AS constante_textual_titulo,
       'VIEW_LOGIN_CADASTRAR_USUARIO_VALIDADO_SUBTITULO' AS constante_textual_subtitulo,
       'CadastrarUsuarioValidado' AS form_name, 'post' AS form_method, 'cadastrarUsuarioValidado' AS form_action, 
       '''onSubmit''=>"loading();return(validateForm(''CadastrarUsuarioValidado''))"' AS form_attribs, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO';


INSERT INTO formulario (id_categoria, id_decorator, nome, descricao, form_name, rowinfo)
SELECT c.id AS id_categoria, (SELECT d.id
                              FROM decorator d
                              LEFT JOIN categoria c ON (d.id_categoria = c.id)
                              LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'FORMULARIO'
                              AND c.nome = 'FORMULARIO_TAB_CONTAINER1_DECORATOR'
                              AND d.nome = 'DECORATOR_FORM_TAB_CONTAINER1') AS id_decorator,
       'FORM_DADOS_USUARIO' AS nome,
       'Formulário de cadastro do usuário validado.' AS descricao,
       'CadastrarDadosUsuario' AS form_name, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO';

*/

/* FORMULARIO ELEMENTO 

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
*/