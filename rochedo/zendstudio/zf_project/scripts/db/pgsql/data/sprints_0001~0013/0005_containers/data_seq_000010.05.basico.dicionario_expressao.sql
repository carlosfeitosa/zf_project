/**
* SCRIPT DE POPULACAO DA TABELA basico.dicionario_expressao
* 
* versao: 1.0 (POSTGRESQL 9.1.1)
* por: JOÃO VASCONCELOS (joao.vasconcelos@rochedoframework.com)
* criacao: 31/01/2012
* ultimas modificacoes: 02/02/2012 - inclusão das constantes textuais para os nomes das ajudas e componentes. (Igor Pinho). 
* 						
*/

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_TIPO_CATEGORIA_SISTEMA' AS constante_textual, 'Sistema' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_TIPO_CATEGORIA_PERFIL' AS constante_textual, 'Perfil' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_TIPO_CATEGORIA_MENSAGEM' AS constante_textual, 'Mensagem' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_TIPO_CATEGORIA_EMAIL' AS constante_textual, 'Email' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_TIPO_CATEGORIA_WEBSITE' AS constante_textual, 'Website' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_TIPO_CATEGORIA_FORMULARIO' AS constante_textual, 'Formulário' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_TIPO_CATEGORIA_AJUDA' AS constante_textual, 'Ajuda' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_TIPO_CATEGORIA_COMPONENTE' AS constante_textual, 'Componente' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_TIPO_CATEGORIA_CVC' AS constante_textual, 'Classe de Controle de Versão' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_TIPO_CATEGORIA_LOCALIDADE' AS constante_textual, 'Localidade' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_TIPO_CATEGORIA_DADOS_BIOMETRICOS' AS constante_textual,'Dados Biométricos' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'ASSUNTO_MENSAGEM_EMAIL_TEMPLATE_PROBLEMAS_LOGIN' AS constante_textual, 'Problema(s) com seu login' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'MENSAGEM_EMAIL_TEMPLATE_PROBLEMAS_LOGIN' AS constante_textual, '@tratamento @nomeUsuario,


Nosso sistema encontrou problema(s) com seu login, abaixo infomado(s):


Login: @login
Problema(s):

@problemas
    

Para solucionar este inconveniente, por favor:

- acesse a documentação online do sistema onde é explicado como tentar resolver estes problemas;
- entre em contato com o suporte, informando seu login. Tenha em mãos seus documentos para comprovação e cadastro.


Atenciosamente,
@assinaturaMensagem' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'ASSUNTO_MENSAGEM_EMAIL_TEMPLATE_CONFIRMACAO_CADASTRO' AS constante_textual, 'Registro Concluído' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'MENSAGEM_EMAIL_TEMPLATE_CONFIRMACAO_CADASTRO' AS constante_textual, '@tratamento @nomeUsuario,


Seu cadastro em nosso sistema foi realizado com sucesso em @dataHoraFinalizacaoCadastro.

A partir de agora você pode acessar nosso sistema utilizando as seguintes credenciais de acesso:


LOGIN: @login

O nosso sistema, por questões de segurança, não pode recuperar/informar a senha por você registrada em nosso banco de dados. 
Por esse motivo, se você esquecer sua senha, será necessário reseta-la, criando uma nova senha

Desejamos boas vindas e nos colocamos a disposição para resolução de qualquer dificuldade encontrada neste ou em qualquer outro acesso a nossos serviços.


Atenciosamente,
@assinaturaMensagem' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'ASSUNTO_MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO_REENVIO' AS constante_textual, 'Reenvio de confirmação de Registro' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO_REENVIO' AS constante_textual, 'Prezado(a) sr.(a) @nomeUsuario,


Recentemente recebemos uma solicitação de registro em nosso sistema, relacionado ao seu endereço de e-mail a qual esta mensagem foi enviada.

Caso você tenha feito esta solicitação, continue o seu registro clicando no link abaixo, ou copie/cole o endereço em seu navegador de preferência: 
@linkValidacaoEmail


Caso você não tenha solicitado este registro, por favor ignore esta mensagem.

Atenciosamente,
@assinaturaMensagem' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'ASSUNTO_MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO' AS constante_textual, 'Confirmação de Registro' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO' AS constante_textual, 'Prezado(a) sr.(a) @nomeUsuario,


Recentemente recebemos uma solicitação de registro em nosso sistema, relacionado ao seu endereço de e-mail a qual esta mensagem foi enviada.

Caso você tenha feito esta solicitação, continue o seu registro clicando no link abaixo, ou copie/cole o endereço em seu navegador de preferência: 
@linkValidacaoEmail


Caso você não tenha solicitado este registro, por favor ignore esta mensagem.

Atenciosamente,
@assinaturaMensagem' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'MENSAGEM_EMAIL_TEMPLATE_TENTATIVA_REGISTRO_UTILIZANDO_EMAIL_PRIMARIO' AS constante_textual, '@tratamento @nomeUsuario,
 
 
Recentemente recebemos uma solicitação de registro em nosso sistema,
relacionado ao seu endereço de e-mail a qual esta mensagem foi enviada.

Caso você tenha feito esta solicitação, informamos que sua conta encontra-se ativa. Caso deseje recuperar sua senha, por favor tente "resetar" sua senha através do sistema ao invés de tentar registrar-se novamente.

Caso você não tenha solicitado este registro, é possível que alguem esteja tentando se registrar utilizando seu email primario, destinatário desta mensagem. Se for este o caso, fique tranquilo pois suas informações continuam seguras.


Se desejar, por favor nos encaminhe esta mensagem, através do e-mail @linkEmailSuporte, para que possamos auditar este inconveniente.


Atenciosamente,
@assinaturaMensagem' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'ASSUNTO_MENSAGEM_EMAIL_TEMPLATE_TENTATIVA_REGISTRO_UTILIZANDO_EMAIL_PRIMARIO' AS constante_textual, 'Tentativa de registro utilizando seu email primário' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_VALIDATOR_REGEX_/^[(a-zA-Z)]+[(a-zA-Z0-9_@\.)]*$/' AS constante_textual, 'Validator regex para o campo login' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_VALIDATOR_ALNUM_WITHOUT_WHITESPACES' AS constante_textual, 'Validator para alfanumericos sem espaços em branco' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_VALIDATOR_IDENTICAL' AS constante_textual, 'Validator para campos que precisam ser identicos' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_VALIDATOR_STRING_LENGTH_6_TO_100' AS constante_textual, 'Validator para campos que aceitam no minimo 6 e no maximo 100 caracteres' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_VALIDATOR_STRING_LENGTH_3_TO_100' AS constante_textual, 'Validator para campos que aceitam no minimo 3 e no maximo 100 caracteres' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_VALIDATOR_NOT_EMPTY' AS constante_textual, 'Validator para campos que não podem ser vazios' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_VALIDATOR_INT' AS constante_textual, 'Validator para campos inteiros' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_VALIDATOR_EMAIL_ADDRESS' AS constante_textual, 'Validator para emails' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_VALIDATOR_EMAIL_ADDRESS_DEEP_MX' AS constante_textual, 'Validator para emails com teste MX' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_DIALOG_ADMIN_RASCUNHOS_TITLE' AS constante_textual, 'Rascunhos' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_DATA_TERMINO_PERIODO' AS constante_textual, 'e:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_DATA_TERMINO_PERIODO_AJUDA' AS constante_textual, 'Digite ou selecione a data de término do período.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_DATA_INICIO_PERIODO' AS constante_textual, 'Entre:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_DATA_INICIO_PERIODO_AJUDA' AS constante_textual, 'Digite ou selecione a data de início do período.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_SELECT_TIPO_DATA' AS constante_textual, 'Campo data:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ADMIN_RASCUNHOS_SELECT_TIPO_DATA_AJUDA' AS constante_textual, 'Utilize este campo para selecionar o tipo da data a ser consultada.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_FORMULARIO' AS constante_textual, 'Formulário:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ADMIN_RASCUNHOS_FORMULARIO_AJUDA' AS constante_textual, 'Utilize este campo para filtrar os rascunhos por formulario.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_DISPLAY_GROUP_LABEL_ACOES' AS constante_textual, 'Ações:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_DISPLAY_GROUP_LABEL_LEGENDA' AS constante_textual, 'Legenda:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_DISPLAY_GROUP_LABEL_FILTROS' AS constante_textual, 'Filtros:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_TITLE_RASCUNHOS' AS constante_textual, 'Rascunhos vinculados a sua conta, agrupados por formulário e data de criação.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_SUBTITLE_RASCUNHOS' AS constante_textual, 'Selecione o rascunho que deseja trabalhar e clique na ação desejada. Você também pode filtrar sua busca utilizando a área de filtros.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'RASCUNHO_MENSAGEM_SUCESSO_EXCLUIR' AS constante_textual, 'Rascunho excluído com sucesso.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'RASCUNHO_MENSAGEM_ERRO_EXCLUIR' AS constante_textual, 'Erro ao excluir rascunho.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_BUTTON_CANCELAR_LABEL' AS constante_textual, 'Cancelar' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'RASCUNHO_MENSAGEM_SUCESSO_SALVAR' AS constante_textual, 'Rascunho salvo com sucesso.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_DISPLAY_GROUP_LABEL_ACEITE' AS constante_textual, 'Aceite' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_DISPLAY_GROUP_LABEL_DOWNLOAD' AS constante_textual, 'Download' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_ACEITE_TERMOS_USO_STRING_CONFIRMACAO' AS constante_textual, 'EU ACEITO' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ACEITE_TERMOS_USO' AS constante_textual, 'No campo abaixo, digite "@stringConfirmacao" para aceitar os termos de uso do serviço.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ACEITE_TERMOS_USO_AJUDA' AS constante_textual, 'Digite "@stringConfirmacao" neste campo para<br>aceitar os termos de uso do serviço.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_TERMOS_USO' AS constante_textual, 'Termos de uso do serviço:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_TERMOS_USO_AJUDA' AS constante_textual, 'Leia com atenção os termos descritos neste campo.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_ACEITE_TERMOS_USO_TITULO' AS constante_textual, 'Termos de uso do serviço' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_ACEITE_TERMOS_USO_SUBTITULO' AS constante_textual, 'Por favor, leia os termos de uso do sistema e aceite-os para continuar.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_TROCA_DE_SENHA_TITULO' AS constante_textual, 'Troca de senha' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_TROCA_DE_SENHA_SUBTITULO' AS constante_textual, 'Sua senha expirou. Por este motivo, por favor, preencha os dados abaixo para trocar de senha.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_TROCA_DE_SENHA_SUCESSO_SUBTITULO' AS constante_textual, 'Sua senha foi trocada com sucesso.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_TROCA_DE_SENHA_SUCESSO_MENSAGEM' AS constante_textual, 'A partir deste momento utilize sua nova senha. Não é preciso realizar novo logon.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_TROCA_DE_SENHA_SENHAS_IGUAIS_MENSAGEM' AS constante_textual, 'Não é possível utilizar a senha atual como nova senha.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_TITLE_SUGESTAO_LOGIN' AS constante_textual, 'Sugestões de login' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_SUGESTAO_LOGIN' AS constante_textual, '<b>Por favor, selecione um dos logins abaixo:</b><br><br>' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_TITULO_MESSAGEM_SUCESSO' AS constante_textual, 'Sucesso' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_MESSAGEM_SUCESSO_SALVAR_DADOS_BIOMETRICOS' AS constante_textual, 'Dados biométricos atualizados com sucesso.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'SELECT_OPTION_NAO_DESEJO_INFORMAR' AS constante_textual, 'Não desejo informar' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'COR_OU_RACA_BRANCA' AS constante_textual, 'Branca' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'COR_OU_RACA_PRETA' AS constante_textual, 'Preta' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'COR_OU_RACA_PARDA' AS constante_textual, 'Parda' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'COR_OU_RACA_AMARELA_OU_INDIGENA' AS constante_textual, 'Amarela ou Indígena' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'MENSAGEM_TEXTO_LINK_AQUI' AS constante_textual, 'aqui' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'MENSAGEM_TEXTO_TAG_TRATAMENTO_MASCULINO' AS constante_textual, 'Prezado' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'MENSAGEM_TEXTO_TAG_TRATAMENTO_FEMININO' AS constante_textual, 'Prezada' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_LOGIN_CADASTRAR_USUARIO_VALIDADO_SUCESSO_TITULO' AS constante_textual, 'Seu cadastro foi concluído com sucesso!' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_LOGIN_CADASTRAR_USUARIO_VALIDADO_SUCESSO_SUBTITULO' AS constante_textual, 'Um e-mail de confirmação da conclusão do seu cadastro foi enviado para o endereço cadastrado.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_LOGIN_CADASTRAR_USUARIO_VALIDADO_SUCESSO_MENSAGEM' AS constante_textual, 'Para preencher seu cadastro completo clique @linkMeuPerfil ou, a qualquer momento, acesse seu perfil para atualizar/complementar suas informações.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'LOGIN_DISPONIBILIDADE_LABEL_LOGIN_NAO_DISPONIVEL' AS constante_textual, 'Login não está disponível.<br>Por favor, tente outro login,<br>ou clique @linkSugestoesLogin para escolher<br>uma das sugestões do sistema.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'LOGIN_DISPONIBILIDADE_LABEL_LOGIN_DISPONIVEL' AS constante_textual, 'Login disponível.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'PASSWORD_STRENGTH_CHECKER_MESSAGE_MUITO_FORTE' AS constante_textual, 'Muito forte.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'PASSWORD_STRENGTH_CHECKER_MESSAGE_FORTE' AS constante_textual, 'Forte.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'PASSWORD_STRENGTH_CHECKER_MESSAGE_BOA' AS constante_textual, 'Boa.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'PASSWORD_STRENGTH_CHECKER_MESSAGE_FRACA' AS constante_textual, 'Fraca.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'PASSWORD_STRENGTH_CHECKER_MESSAGE_MUITO_FRACA' AS constante_textual, 'Muito fraca.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'PASSWORD_STRENGTH_CHECKER_MESSAGE_ABAIXO' AS constante_textual, 'Abaixo' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'PASSWORD_STRENGTH_CHECKER_MESSAGE_DIGITE_A_SENHA' AS constante_textual, 'Digite a senha.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_TITLE_RESOLVEDOR_CONFLITO_VERSAO_OBJETO' AS constante_textual, 'ATENÇÃO - CONFLITO DE VERSÃO DETECTADO!' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_ELEMENT_HTML_TEXT_DESCRICAO_FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO' AS constante_textual, 'O sistema detectou um conflito na versão dos dados que você esta tentando submeter.<br><br>Isto foi causado pelo seguinte motivo: as informações que você esta submetendo foram<br>alteradas antes de você finalizar sua edição.<br><br>Para resolver este impasse, escolha uma das opções abaixo:<br><br>' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_BUTTON_VISUALIZAR_DADOS_ATUAIS_FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO' AS constante_textual, 'Visualizar dados atuais' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_ELEMENT_HTML_TEXT_DESCRICAO_BUTTON_VISUALIZAR_DADOS_ATUAIS_FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO' AS constante_textual, '<div id=''descricaoElementoFormulario''>Escolha esta opção se desejar visualizar as informações que constam atualmente no banco de dados<br>apenas. Não haverá perda, nem dados sobrescritos.</div><br>' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_BUTTON_REVISAR_DADOS_ATUAIS_FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO' AS constante_textual, 'Revisitar o formulário com os dados atuais' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_ELEMENT_HTML_TEXT_DESCRICAO_BUTTON_REVISAR_DADOS_ATUAIS_FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO' AS constante_textual, '<div id=''descricaoElementoFormulario''>Escolha esta opção se desejar visualizar as informações que constam atualmente no banco de dados,<br>no formulário de submissão. As informações que você tentou submeter serão perdidas. Você podera<br>alterar as informações e submeter novamente, se assim o desejar.</div><br>' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_BUTTON_SOBRESCREVER_ATUALIZACAO_FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO' AS constante_textual, 'Sobrescrever a atualização com os dados que estou tentando enviar' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_ELEMENT_HTML_TEXT_DESCRICAO_BUTTON_SOBRESCREVER_ATUALIZACAO_FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO' AS constante_textual, '<div id=''descricaoElementoFormulario''>Escolha esta opção se desejar passar por cima da atualização, sem revisitar nenhum formulário ou<br>informação salva anteriormente.</div><br>' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_BUTTON_CANCELAR_FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO' AS constante_textual, 'Cancelar' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_ELEMENT_HTML_TEXT_DESCRICAO_BUTTON_CANCELAR_FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO' AS constante_textual, '<div id=''descricaoElementoFormulario''>Escolha esta opção se desejar cancelar sua submissão. Neste caso, as informacoes por você enviadas<br>serão ignoradas.</div>' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'GENERO_MASCULINO' AS constante_textual, 'Masculino' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'GENERO_FEMININO' AS constante_textual, 'Feminino' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'TIPO_SANGUINEO_A_POSITIVO' AS constante_textual, 'A+' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'TIPO_SANGUINEO_A_NEGATIVO' AS constante_textual, 'A-' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'TIPO_SANGUINEO_B_POSITIVO' AS constante_textual, 'B+' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'TIPO_SANGUINEO_B_NEGATIVO' AS constante_textual, 'B-' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'TIPO_SANGUINEO_AB_POSITIVO' AS constante_textual, 'AB+' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'TIPO_SANGUINEO_AB_NEGATIVO' AS constante_textual, 'AB-' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'TIPO_SANGUINEO_O_POSITIVO' AS constante_textual, 'O+' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'TIPO_SANGUINEO_O_NEGATIVO' AS constante_textual, 'O-' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_AUTENTICAR_USUARIO_AGUARDANDO_AUTENTICACAO_TITULO' AS constante_textual, 'Aguardando pela autenticação do usuário...' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_AUTENTICAR_USUARIO_PROBLEMAS_LOGIN_TITULO' AS constante_textual, 'Foram encontrados problemas com o seu login' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_AUTENTICAR_USUARIO_PROBLEMAS_LOGIN_SUBTITULO' AS constante_textual, 'Leia as informações abaixo para tentar solucionar este inconveniente' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_AUTENTICAR_USUARIO_PROBLEMAS_LOGIN_LOGIN_NAO_ATIVO_MSG' AS constante_textual, '<b>LOGIN DESATIVADO</b>: por algum motivo seu login foi desativado e você não conseguirá realizar o logon.<br>Entre em contato com o suporte para tentar reativar seu login.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_AUTENTICAR_USUARIO_PROBLEMAS_LOGIN_LOGIN_TRAVADO_MSG' AS constante_textual, '<b>LOGIN TRAVADO</b>: seu login foi travado por ter ultrapassado a quantidade máxima (05) de tentativas de logon inválidas.<br>Aguarde 01 (uma) hora e tente novamente.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_AUTENTICAR_USUARIO_PROBLEMAS_LOGIN_LOGIN_RESETADO_MSG' AS constante_textual, '<b>LOGIN RESETADO</b>: seu login foi resetado.<br>Acesse sua caixa postal e siga as instruções contidas no e-mail que enviamos para você para habilitar seu login.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_AUTENTICAR_USUARIO_PROBLEMAS_LOGIN_SENHA_EXPIRADA_MSG' AS constante_textual, '<b>SENHA EXPIRADA</b>: sua senha expirou e voce precisa resetar-la.<br>Resete sua senha e siga as instruções enviadas por e-mail.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_AUTENTICAR_USUARIO_PROBLEMAS_LOGIN_EXPIRADO_MSG' AS constante_textual, '<b>LOGIN EXPIRADO</b>: seu login expirou.<br>Entre em contato com o suporte para tentar reativar seu login.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'DIALOG_DIV_CONTAINER_ERROR_TITLE_AUTENTICAR_USUARIO_CREDENCIAIS_INVALIDAS' AS constante_textual, 'Problemas ao tentar logar:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'DIALOG_DIV_CONTAINER_ERROR_MSG_AUTENTICAR_USUARIO_CREDENCIAIS_INVALIDAS' AS constante_textual, 'Login/senha invalidos;' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_ELEMENT_VALIDATOR_CAPTCHA_BAD_CAPTCHA' AS constante_textual, 'O valor informado não corresponde a imagem. Por favor, tente novamente.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_ELEMENT_VALIDATOR_INVALID_CSRF' AS constante_textual, 'O tempo para submissão deste formulário expirou. Por favor, tente novamente.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_ELEMENT_VALIDATOR_EMAILADDRESS_INVALID_FORMAT' AS constante_textual, '''%value%'' não é um endereço válido no formato basico usuario@provedor' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_ELEMENT_VALIDATOR_EMAILADDRESS_INVALID_HOSTNAME' AS constante_textual, '''%hostname%'' não é um provedor válido para o endereço de e-mail ''%value%''' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_ELEMENT_VALIDATOR_EMAILADDRESS_INVALID_MX_RECORD' AS constante_textual, '''%hostname%'' parece não ter um registro MX válido para o endereço de e-mail ''%value%''' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_ELEMENT_VALIDATOR_EMAILADDRESS_INVALID_SEGMENT' AS constante_textual, '''%hostname%'' não é um segmento de rede roteável válido. O endereço de e-mail ''%value%'' não pode ser resolvido a partir de uma rede pública.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_ELEMENT_VALIDATOR_EMAILADDRESS_DOT_ATOM' AS constante_textual, '''%localPart%'' não pode ser resolvido contra o formato dot-atom' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_ELEMENT_VALIDATOR_EMAILADDRESS_QUOTED_STRING' AS constante_textual, '''%localPart%'' não pode ser resolvido contra o formato texto entre aspas' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_ELEMENT_VALIDATOR_EMAILADDRESS_INVALID_LOCAL_PART' AS constante_textual, '''%localPart%'' não é um usuário valido para o endereço de e-mail ''%value%''' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_ELEMENT_VALIDATOR_HOSTNAME_INVALID' AS constante_textual, '''%value%'' O tipo informado parece ser inválido, o valor deveria ser uma cadêia de caractéres(string) ' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_ELEMENT_VALIDATOR_HOSTNAME_IP_ADDRESS_NOT_ALLOWED' AS constante_textual, '''%value%'' parece ser um endereço IP válido, mas infelimente, endereços IP não são permitidos ' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_ELEMENT_VALIDATOR_HOSTNAME_UNKNOWN_TLD' AS constante_textual, '''%value%'' parece ser um DNS válido, mas a comparação com a lista conhecida de domínios(TLD) não é válida ' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_ELEMENT_VALIDATOR_HOSTNAME_INVALID_DASH' AS constante_textual, '''%value%'' parece ser um DNS válido, mas possui um hífen em uma posição que o torna inválido ' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_ELEMENT_VALIDATOR_HOSTNAME_INVALID_HOSTNAME_SCHEMA' AS constante_textual, '''%value%'' parece ser um DNS válido, mas não pode ser comparado com o esquema de nomes válidos para domínios ''%tld%''' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_ELEMENT_VALIDATOR_HOSTNAME_UNDECIPHERABLE_TLD' AS constante_textual, '''%value%'' parece ser um DNS válido, mas não é possível a extração do nome do domínio ' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_ELEMENT_VALIDATOR_HOSTNAME_INVALID_HOSTNAME' AS constante_textual, '''%value%'' não coincide com a estrutura esperada de um nome de domínio válido ' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_ELEMENT_VALIDATOR_HOSTNAME_INVALID_LOCAL_NAME' AS constante_textual, '''%value%'' não parece ser um nome válido de rede local ' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_ELEMENT_VALIDATOR_HOSTNAME_LOCAL_NAME_NOT_ALLOWED' AS constante_textual, '''%value%'' parece ser um domínio de rede local, mas infelizmente, domínios de redes locais não são permitidos ' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_ELEMENT_VALIDATOR_HOSTNAME_CANNOT_DECODE_PUNYCODE' AS constante_textual, '''%value%'' parece ser um DNS válido, mas a numeração informada do punycode não pode ser decodificada ' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_ELEMENT_VALIDATOR_INDETICAL_NOT_SAME_SENHA_CONFIRMACAO' AS constante_textual, 'O valor deste campo precisa ser indêntico ao do campo senha.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_ELEMENT_VALIDATOR_STRING_LENGTH_ERROR_MESSAGE_TOO_SHORT' AS constante_textual, 'Este campo pode ter no mínimo %min% caracteres.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_ELEMENT_VALIDATOR_STRING_LENGTH_ERROR_MESSAGE_TOO_LONG' AS constante_textual, 'Este campo pode ter no máximo %max% caracteres.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_ELEMENT_VALIDATOR_NOT_EMPTY_ERROR_MESSAGE' AS constante_textual, 'Este campo é requerido, não pode ser vazio.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_ELEMENT_VALIDATOR_REGEX_ERROR_MESSAGE' AS constante_textual, 'Valor inserido é inválido, este campo deve se iniciar com letras e<br>não pode possuir caracteres especias exceto: _ , @ e .' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_AUTENTICAR_USUARIO_AGUARDANDO_AUTENTICACAO' AS constante_textual, 'Aguardando pela autenticação do usuário...' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_LOGIN_CADASTRAR_USUARIO_NAO_VALIDADO_TITULO' AS constante_textual, 'Registro de novo usuário:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_LOGIN_CADASTRAR_USUARIO_NAO_VALIDADO_SUBTITULO' AS constante_textual, 'Preencha os dados abaixo para iniciar seu processo de registro.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_LOGIN_ERRO_EMAIL_NAO_VALIDADO_EXISTENTE_NO_SISTEMA_TITULO' AS constante_textual, 'Atenção!' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_LOGIN_ERRO_EMAIL_NAO_VALIDADO_EXISTENTE_NO_SISTEMA_SUBTITULO' AS constante_textual, 'Um novo e-mail de confirmação foi enviado para o endereço por você informado.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_LOGIN_ERRO_EMAIL_NAO_VALIDADO_EXISTENTE_NO_SISTEMA_MENSAGEM' AS constante_textual, 'Acesse sua caixa postal e siga as instruções contidas na mensagem para validar seu cadastro no sistema.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_LOGIN_ERRO_EMAIL_VALIDADO_EXISTENTE_NO_SISTEMA_TITULO' AS constante_textual, 'Atenção!' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_LOGIN_ERRO_EMAIL_VALIDADO_EXISTENTE_NO_SISTEMA_SUBTITULO' AS constante_textual, 'Usuário já cadastrado e validado no sistema.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_LOGIN_ERRO_EMAIL_VALIDADO_EXISTENTE_NO_SISTEMA_MENSAGEM' AS constante_textual, 'Utilize suas credenciais de acesso ou tente resetar sua senha.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_LOGIN_SUCESSO_SALVAR_USUARIO_NAO_VALIDADO_TITULO' AS constante_textual, 'Sucesso!' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_LOGIN_SUCESSO_SALVAR_USUARIO_NAO_VALIDADO_SUBTITULO' AS constante_textual, 'Um e-mail de confirmação foi enviado para o endereço por você informado.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_LOGIN_SUCESSO_SALVAR_USUARIO_NAO_VALIDADO_MENSAGEM' AS constante_textual, 'Acesse sua caixa postal e siga as instruções contidas na mensagem para validar seu cadastro no sistema.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_LOGIN_AUTENTICACAO_USUARIO_TITULO' AS constante_textual, 'Autenticação de usuário' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_LOGIN_AUTENTICACAO_USUARIO_SUBTITULO' AS constante_textual, 'Preencha os dados abaixo com suas credenciais de acesso' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_CHECKBOX_LOGIN_MANTER_LOGADO' AS constante_textual, 'Manter-me conectado.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_CHECKBOX_LOGIN_MANTER_LOGADO_AJUDA' AS constante_textual, 'Marque esta opção se desejar que o sistema mantenha seu usuario logado no sistema.<br>Desmarque esta opção se estiver em um computador público/compartilhado.<br>Pessoas não autorizadas podem fazer uso de suas credenciais de acesso.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_LINK_PROBLEMAS_LOGON' AS constante_textual, 'Não consegue acessar sua conta?' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_LINK_NOVO_USUARIO' AS constante_textual, 'Crie sua conta agora.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_NOME' AS constante_textual, 'Nome:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_NOME_HINT' AS constante_textual, 'Preencha este campo com seu nome completo.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_EMAIL' AS constante_textual, 'E-mail:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_EMAIL_HINT' AS constante_textual, 'Preencha este campo com seu e-mail.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_RACA' AS constante_textual, 'Cor ou Raça:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_RACA_AJUDA' AS constante_textual, 'Selecione neste campo a sua cor ou raça.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_RACA_HINT' AS constante_textual, 'Selecione aqui a sua cor ou raça.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ALTURA' AS constante_textual, 'Altura:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ALTURA_AJUDA' AS constante_textual, 'Digite neste campo a sua altura em metros (m).' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ALTURA_HINT' AS constante_textual, 'Digite aqui a sua altura em metros (m).' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_PESO' AS constante_textual, 'Peso:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_PESO_AJUDA' AS constante_textual, 'Digite neste campo o seu peso em Kilogramas (Kg).' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_PESO_HINT' AS constante_textual, 'Digite aqui o seu peso em Kilogramas (Kg).' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_TIPO_SANGUINEO' AS constante_textual, 'Tipo sanguíneo:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_TIPO_SANGUINEO_AJUDA' AS constante_textual, 'Selecione seu tipo sanguíneo.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_TIPO_SANGUINEO_HINT' AS constante_textual, 'Selecione seu tipo sanguíneo.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_HISTORICO_MEDICO' AS constante_textual, 'Histórico médico:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_HISTORICO_MEDICO_AJUDA' AS constante_textual, 'Digite seu histórico médico.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_HISTORICO_MEDICO_HINT' AS constante_textual, 'Digite aqui o seu histórico médico.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'SUBFORM_TABTITLE_DADOS_PESSOAIS' AS constante_textual, 'DADOS PESSOAIS' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'SUBFORM_TABTITLE_DADOS_PROFISSIONAIS' AS constante_textual, 'DADOS PROFISSIONAIS' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'SUBFORM_TABTITLE_DADOS_ACADEMICOS' AS constante_textual, 'DADOS ACADÊMICOS' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'SUBFORM_TABTITLE_DADOS_BIOMETRICOS' AS constante_textual, 'DADOS BIOMÉTRICOS' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'SUBFORM_TABTITLE_INFORMACOES_BANCARIAS' AS constante_textual, 'INFORMAÇÕES BANCÁRIAS' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'SUBFORM_TABTITLE_DADOS_PJ' AS constante_textual, 'DADOS EMPRESA/INSTITUIÇÃO' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'SUBFORM_TABTITLE_PERFIL' AS constante_textual, 'PERFIL' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'SUBFORM_TABTITLE_CONTA' AS constante_textual, 'CONTA' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'SUBFORM_TABTITLE_RESUMO' AS constante_textual, 'RESUMO' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'MENU_ITEM_REGISTRE_SE' AS constante_textual, 'Registre-se' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_LOGIN_SUCESSO_VALIDAR_EMAIL_TITULO' AS constante_textual, 'Email validado com sucesso.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id , 'LINK_FORM_CADASTRO_USUARIO_NAO_VALIDADO' AS constante_textual, 'Clique aqui para recomeçar o seu cadastro.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'MSG_TOKEN_EMAIL_VALIDACAO_EXPIRADO' AS constante_textual, 'Link para validação do seu e-mail expirado, por favor, recomeçe o seu cadastro.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'MSG_TOKEN_EMAIL_VALIDACAO_INVALIDO' AS constante_textual, 'Link para validação do seu e-mail inválido, por favor, recomeçe o seu cadastro.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_LOGIN_SUCESSO_VALIDAR_EMAIL_SUBTITULO' AS constante_textual, 'Confirme e preencha os dados abaixo para continuar o seu processo de registro.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_ADMIN_BD_RESET_SUCESSO' AS constante_textual, 'O banco de dados foi resetado com sucesso.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_ADMIN_INDEX_TITULO' AS constante_textual, 'Área de Administração do Sitema.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_ADMIN_BD_RESET_BUTTON_LABEL' AS constante_textual, 'Resetar Banco de Dados.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_ADMIN_FORM_GENERATE_ALL_SYSTEM_FORMS_BUTTON_LABEL' AS constante_textual, 'Gerar todos os formularios do sistema.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_ADMIN_FORM_REGENERATE_CHECKSUM_MODELS' AS constante_textual, 'Regerar checksum de modelos.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_DOCUMENTOS_IDENTIFICACAO_TITULO' AS constante_textual, 'Documentos de Identificação:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_DOCUMENTO_TITULO' AS constante_textual, 'Novo documento' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_LOGIN_CADASTRAR_USUARIO_VALIDADO_TITULO' AS constante_textual, 'Registro de usuário:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_LOGIN_CADASTRAR_USUARIO_VALIDADO_SUBTITULO' AS constante_textual, 'Confirme e preencha os dados abaixo para finalizar o seu registro.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_NOME_USUARIO' AS constante_textual, 'Nome de Usuário:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_NOME_USUARIO_HINT' AS constante_textual, 'Digite o seu nome de usuário.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_LOGIN' AS constante_textual, 'Login:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_LOGIN_HINT' AS constante_textual, 'Login a ser utilizado no sistema.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_LOGIN_AJUDA' AS constante_textual, 'Digite neste campo o nome de usuário que será utilizado para sua identificação no sistema.<br>Exemplo: joao<br>         joao@provedor.com<br>         joao1984<br>         joao.silva123' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_DOCUMENTOS_IDENTIFICACAO' AS constante_textual, 'Documentos Identificação' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_SENHA' AS constante_textual, 'Senha:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_SENHA_HINT' AS constante_textual, 'Senha a ser utilizada no sistema.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_SENHA_AJUDA' AS constante_textual, 'Digite neste campo a senha para acessar o sistema.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_SENHA_CONFIRMACAO' AS constante_textual, 'Repita sua senha:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_SENHA_CONFIRMACAO_HINT' AS constante_textual, 'Repita a senha que será utilizada no sistema.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_SENHA_CONFIRMACAO_AJUDA' AS constante_textual, 'Repita neste campo a senha que será utilizada por você no nosso sistema.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_SENHA_SUGESTAO' AS constante_textual, 'Gerar Senha' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_DATA_NASCIMENTO' AS constante_textual, 'Data de Nascimento:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_DATA_NASCIMENTO_HINT' AS constante_textual, 'Digite ou selecione aqui sua data de nascimento.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_DATA_NASCIMENTO_AJUDA' AS constante_textual, 'Digite ou selecione aqui a data do seu nascimento.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_SEXO' AS constante_textual, 'Sexo:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_SEXO_HINT' AS constante_textual, 'Marque o seu sexo.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_SEXO_AJUDA' AS constante_textual, 'Selecione o seu sexo.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_NUMERO_DOCUMENTO' AS constante_textual, 'Número do documento:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_NUMERO_DOCUMENTO_HINT' AS constante_textual, 'Digite aqui o número identificador do documento.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_NUMERO_DOCUMENTO_AJUDA' AS constante_textual, 'Digite aqui o número que identifica o documento.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_BUTTON_SUBMIT' AS constante_textual, 'Enviar' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_BUTTON_RESET' AS constante_textual, 'Cancelar' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_BUTTON_CLOSE_DIALOG' AS constante_textual, 'Fechar' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_VALIDATION_TITLE' AS constante_textual, 'Atenção' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_VALIDATION_MESSAGE' AS constante_textual, 'Por favor, preencha todos os campos requeridos antes de continuar.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_CATEGORIA_BOLSA_CNPQ_LABEL' AS constante_textual, 'Categoria de bolsa no CNPQ:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_CATEGORIA_BOLSA_CNPQ_FILTERING_SELECT_AJUDA' AS constante_textual, 'O preenchimento deste campo consiste em selecionar a opção de categoria de bolsa que você possui no CNPQ.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_MAIOR_TITULACAO_LABEL' AS constante_textual, 'Maior titulação:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_MAIOR_TITULACAO_FILTERING_SELECT_AJUDA' AS constante_textual, 'O preenchimento deste campo consiste em selecionar a sua maior titulação acadêmica.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_INSTITUICAO_QUE_CONCEDEU_LABEL' AS constante_textual, 'Instituição que lhe concedeu sua maior titulação:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_INSTITUICAO_QUE_CONCEDEU_FILTERING_SELECT_AJUDA' AS constante_textual, 'O preenchimento deste campo consiste em selecionar a Instituição que lhe concedeu a sua maior titulação.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_AREA_DE_CONHECIMENTO_LABEL' AS constante_textual, 'Área de conhecimento:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_AREA_DE_CONHECIMENTO_FILTERING_SELECT_AJUDA' AS constante_textual, 'O preenchimento deste campo consiste em selecionar a área de conhecimento de sua maior titulação.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_NOME_CURSO_LABEL' AS constante_textual, 'Nome do curso:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_NOME_CURSO_TEXT_BOX_AJUDA' AS constante_textual, 'O preenchimento deste campo consiste em digitar o nome do curso de sua maior titulação.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_NOME_CURSO_TEXT_BOX_HINT' AS constante_textual, 'Digite o nome do curso de sua maior titulação.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_DATA_OBTENCAO_LABEL' AS constante_textual, 'Data de Obtenção:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_DATA_OBTENCAO_DATE_TEXT_BOX_AJUDA' AS constante_textual, 'O preenchimento deste campo consiste em digitar a data de obtenção de sua maior titulação.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_DATA_OBTENCAO_DATE_TEXT_BOX_HINT' AS constante_textual, 'Digite a data de obtenção de sua maior titulação.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_MAIOR_TITULACAO_DISPLAY_GROUP_LABEL' AS constante_textual, 'Maior titulação' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_TITULACAO_ESPERADA_LABEL' AS constante_textual, 'Titulação esperada após o termino do curso:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_TITULACAO_ESPERADA_FILTERING_SELECT_AJUDA' AS constante_textual, 'O preenchimento deste campo consistem em selecionar a titulação esperada após o termino do curso atual.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_INSTITUICAO_CURSO_ATUAL_LABEL' AS constante_textual, 'Instituição do curso:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_INSTITUICAO_CURSO_ATUAL_FILTERING_SELECT_AJUDA' AS constante_textual, 'O preenchimento deste campo consistem em selecionar a instituição do curso atual.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_AREA_CONHECIMENTO_CURSO_ATUAL_LABEL' AS constante_textual, 'Área de conhecimento:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_AREA_CONHECIMENTO_CURSO_ATUAL_FILTERING_SELECT_AJUDA' AS constante_textual, 'O preenchimento deste campo consistem em selecionar a área de conhecimento do curso atual.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_NOME_CURSO_ATUAL_LABEL' AS constante_textual, 'Nome do curso atual:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_NOME_CURSO_ATUAL_TEXT_BOX_AJUDA' AS constante_textual, 'O preenchimento deste campo consistem em digitar o nome do curso atual.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_NOME_CURSO_ATUAL_TEXT_BOX_HINT' AS constante_textual, 'Digite o nome do curso atual.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_PERIODO_LABEL' AS constante_textual, 'Período:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_PERIODO_FILTERING_SELECT_AJUDA' AS constante_textual, 'O preenchimento deste campo consistem em selecionar o período do curso atual.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_TURNO_LABEL' AS constante_textual, 'Turno:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_TURNO_FILTERING_SELECT_AJUDA' AS constante_textual, 'O preenchimento deste campo consistem em selecionar o turno do curso atual.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_CURSO_ATUAL_DISPLAY_GROUP_LABEL' AS constante_textual, 'Curso atual' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_COORDENACAO_POS_GRADUACAO_DISPLAY_GROUP_LABEL' AS constante_textual, 'Coordenação do curso de pós-graduação' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_TITLE_COODENACAO_POS_GRADUACAO' AS constante_textual, 'Coordenação do curso de pós-graduação' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ORIENTACOES_DISPLAY_GROUP_LABEL' AS constante_textual, 'Orientações' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_TITLE_ORIENTACOES' AS constante_textual, 'Orientações' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_TITLE_VINCULO_PROFISSIONAL' AS constante_textual, 'Vinculo Profissional' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_TITLE_TELEFONES_PROFISSIONAIS' AS constante_textual, 'Telefones profissionais' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_TITLE_TELEFONE' AS constante_textual, 'Telefone' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_TITLE_EMAILS_PROFISSIONAIS' AS constante_textual, 'E-mails profissionais' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_TITLE_EMAIL' AS constante_textual, 'Email' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_TITLE_WEBSITES_PROFISSIONAIS' AS constante_textual, 'Websites profissionais' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_TITLE_WEBSITE' AS constante_textual, 'Website' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_WEBSITE_TIPO_AJUDA' AS constante_textual, 'Escolha neste campo o tipo de website que esta cadastrando' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_WEBSITE_TIPO' AS constante_textual, 'Tipo de website:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_WEBSITE_ENDERECO_AJUDA' AS constante_textual, 'Informe neste campo o endereço do website que esta cadastrando' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_WEBSITE_ENDERECO' AS constante_textual, 'Endereço do website:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_WEBSITE_ENDERECO_HINT' AS constante_textual, 'Endereço do website a ser cadastrado.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_WEBSITE_DESCRICAO_AJUDA' AS constante_textual, 'Digite neste campo alguma informação que achar pertinente sobre o website' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_WEBSITE_DESCRICAO' AS constante_textual, 'Descrição:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_TITLE_ENDERECOS_PROFISSIONAIS' AS constante_textual, 'Endereços profissionais' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_TITLE_ENDERECO' AS constante_textual, 'Endereço' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_TELEFONE_TIPO_AJUDA' AS constante_textual, 'Escolha neste campo o tipo de telefone que esta cadastrando' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_TELEFONE_TIPO' AS constante_textual, 'Tipo de telefone:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_TELEFONE_CODIGO_PAIS_AJUDA' AS constante_textual, 'Digite neste campo o código de discagem direta internacional (DDI) do pais <br>relacionado ao número de telefone informado (numero inteiro)<br><br>55 para Brasil' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_TELEFONE_CODIGO_PAIS_HINT' AS constante_textual, 'Digite o código de discagem direta internacional do número do telefone - DDI - (numero inteiro)<br><br>55 para Brasil' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_TELEFONE_CODIGO_PAIS' AS constante_textual, 'Código de discagem direta internacional (DDI):' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_TELEFONE_CODIGO_AREA_AJUDA' AS constante_textual, 'Digite neste campo o código de discagem direta à distância (DDD) da localicade<br>relacionada ao número de telefone informado (numero inteiro)' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_TELEFONE_CODIGO_AREA_HINT' AS constante_textual, 'Digite o código de discagem direta à distância do número do telefone - DDD - (numero inteiro)' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_TELEFONE_CODIGO_AREA' AS constante_textual, 'Código de discagem direta à distância (DDD):' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_TELEFONE_AJUDA' AS constante_textual, 'Digite neste campo o número do telefone (numero inteiro)' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_TELEFONE_HINT' AS constante_textual, 'Digite o número do telefone (numero inteiro)' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_TELEFONE' AS constante_textual, 'Número do telefone:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_TELEFONE_RAMAL_AJUDA' AS constante_textual, 'Digite neste campo o ramal do telefone (numero inteiro)' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_TELEFONE_RAMAL_HINT' AS constante_textual, 'Digite o ramal do telefone (numero inteiro)' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_TELEFONE_RAMAL' AS constante_textual, 'Ramal:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_TELEFONE_DESCRICAO_AJUDA' AS constante_textual, 'Digite neste campo alguma informação que achar pertinente sobre o numero do telefone' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_TELEFONE_DESCRICAO' AS constante_textual, 'Descrição:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_EMAIL_TIPO_AJUDA' AS constante_textual, 'Escolha neste campo o tipo de e-mail que esta cadastrando' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_EMAIL_TIPO' AS constante_textual, 'Tipo de e-mail:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_EMAIL_DESCRICAO_AJUDA' AS constante_textual, 'Digite neste campo alguma informação que achar pertinente sobre o e-mail' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_EMAIL_DESCRICAO' AS constante_textual, 'Descrição:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_BUTTON_ABRIR_DIALOG_NOVO_TELEFONE' AS constante_textual, 'Novo telefone' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_BUTTON_ABRIR_DIALOG_NOVO_EMAIL' AS constante_textual, 'Novo e-mail' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_BUTTON_ABRIR_DIALOG_NOVO_WEBSITE' AS constante_textual, 'Novo website' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_BUTTON_ABRIR_DIALOG_NOVO_ENDERECO' AS constante_textual, 'Novo endereço' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_BUTTON_ABRIR_DIALOG_NOVO_VINCULO_PROFISSIONAL' AS constante_textual, 'Novo vinculo profissional' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_BUTTON_ABRIR_DIALOG_VISUALIZAR_POS_GRADUACAO' AS constante_textual, 'Visualizar programas disponíveis' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_BUTTON_ABRIR_DIALOG_VISUALIZAR_ORIENTACOES' AS constante_textual, 'Visualizar orientações' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_BUTTON_ABRIR_DIALOG_TELEFONES_PROFISSIONAIS' AS constante_textual, 'Telefones profissionais' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_BUTTON_ABRIR_DIALOG_EMAILS_PROFISSIONAIS' AS constante_textual, 'E-mails profissionais' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_BUTTON_ABRIR_DIALOG_WEBSITES_PROFISSIONAIS' AS constante_textual, 'Websites profissionais' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_BUTTON_ABRIR_DIALOG_ENDERECOS_PROFISSIONAIS' AS constante_textual, 'Endereços profissionais' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_PROFISSAO_AJUDA' AS constante_textual, 'Escolha neste campo a profissão mais adequada ao vinculo selecionado' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_PROFISSAO' AS constante_textual, 'Profissão:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_VINCULO_PROFISSIONAL_AJUDA' AS constante_textual, 'Escolha neste campo o seu vinculo profissional' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_VINCULO_PROFISSIONAL' AS constante_textual, 'Vinculo profissional:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_PJ_VINCULO_AJUDA' AS constante_textual, 'Escolha neste campo a empresa/instituição do vinculo (quando aplicavel)' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_PJ_VINCULO' AS constante_textual, 'Empresa/Instituição do vinculo:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_REGIME_TRABALHO_AJUDA' AS constante_textual, 'Escolha neste campo o regime de trabalho do vinculo' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_REGIME_TRABALHO' AS constante_textual, 'Regime de trabalho:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_CARGO_AJUDA' AS constante_textual, 'Digite neste campo o cargo relacionado ao vinculo' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_CARGO_HINT' AS constante_textual, 'Digite o cargo relacionado ao vinculo' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_CARGO' AS constante_textual, 'Cargo:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_FUNCAO_AJUDA' AS constante_textual, 'Digite neste campo a função relacionada ao vinculo' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_FUNCAO_HINT' AS constante_textual, 'Digite a função relacionada ao vinculo' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_FUNCAO' AS constante_textual, 'Função:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ATIVIDADES_DESENVOLVIDAS_AJUDA' AS constante_textual, 'Digite neste campo uma descrição das atividades desenvolvidas' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ATIVIDADES_DESENVOLVIDAS' AS constante_textual, 'Atividades desenvolvidas:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_DATA_ADMISSAO_AJUDA' AS constante_textual, 'Digite neste campo a data de admissão relacionada ao vinculo' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_DATA_ADMISSAO_HINT' AS constante_textual, 'Digite uma data valida de admissão relacionada ao vinculo' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_DATA_ADMISSAO' AS constante_textual, 'Data de admissão:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_DATA_DESVINCULACAO_AJUDA' AS constante_textual, 'Digite neste campo a data de desvinculação do vinculo' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_DATA_DESVINCULACAO_HINT' AS constante_textual, 'Digite uma data valida de desvinculação do vinculo' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_DATA_DESVINCULACAO' AS constante_textual, 'Data de desvinculação:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_CARGA_HORARIA_SEMANAL_AJUDA' AS constante_textual, 'Digite neste campo a quantidade de horas trabalhadas semanalmente (numero inteiro)' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_CARGA_HORARIA_SEMANAL_HINT' AS constante_textual, 'Digite a quantidade de horas trabalhadas semanalmente (numero inteiro)' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_CARGA_HORARIA_SEMANAL' AS constante_textual, 'Carga horária semanal:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_SALARIO_BRUTO_AJUDA' AS constante_textual, 'Digite neste campo o valor do seu salário bruto - total recebido antes das deduções (valor numérico)' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_SALARIO_BRUTO_HINT' AS constante_textual, 'Digite o valor do seu salário bruto (valor numérico)' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_SALARIO_BRUTO' AS constante_textual, 'Salário bruto (em R$):' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_DEDICACAO_EXCLUSIVA_AJUDA' AS constante_textual, 'Marque este campo se seu vínculo é de dedicação exclusiva' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_DEDICACAO_EXCLUSIVA' AS constante_textual, 'Dedicação exclusiva:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_OUTRAS_INFORMACOES_AJUDA' AS constante_textual, 'Digite neste campo outras informações sobre seu vínculo' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_OUTRAS_INFORMACOES' AS constante_textual, 'Outras informações:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'PERFIL_SISTEMA' AS constante_textual, 'Perfil do sistema' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'PERFIL_USUARIO_NAO_VALIDADO' AS constante_textual, 'Usuário não validado pelo sistema' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'PERFIL_USUARIO_VALIDADO' AS constante_textual, 'Usuário validado pelo sistema' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_PERFIS_DISPONIVEIS_AJUDA' AS constante_textual, 'Marque os perfis que deseja vincular ao seu usuário' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_PERFIS_VINCULADOS_DISPONIVEIS_AJUDA' AS constante_textual, 'Escolha o perfil padrão para ser vinculado a seu usuário' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_PERFIS_DISPONIVEIS' AS constante_textual, 'Perfis disponíveis:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_SENHA_ATUAL_AJUDA' AS constante_textual, 'Digite neste campo sua senha atual' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_SENHA_ATUAL' AS constante_textual, 'Senha atual:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_NOVA_SENHA_AJUDA' AS constante_textual, 'Digite neste campo sua nova senha' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_NOVA_SENHA' AS constante_textual, 'Nova senha:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_CONFIRMACAO_NOVA_SENHA_AJUDA' AS constante_textual, 'Digite neste campo sua nova senha, novamente' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_CONFIRMACAO_NOVA_SENHA' AS constante_textual, 'Repita sua nova senha:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_ELEMENT_VALIDATOR_INDETICAL_NOT_SAME_NOVA_SENHA_CONFIRMACAO' AS constante_textual, 'O valor deste campo precisa ser indêntico ao do campo nova senha.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_ELEMENT_MESSAGE_SENHA_ATUAL_INVALIDA' AS constante_textual, 'A senha informada não confere com a sua senha atual.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_ELEMENT_HTML_TEXT_INSTRUCOES_MUDANCA_SENHA_SUBFORM_DADOS_USUARIO_CONTA' AS constante_textual, '<div id=''descricaoElementoFormulario'' style=''float: left;margin-top: 10px; margin-left: 10px; width:355px;''><b>ATENÇÃO!</b><br><br>O preenchimento dos campos ao lado, no grupo "Trocar de senha", só deve ser realizado caso você queira trocar sua senha. Se você não quer mudar sua senha, deixe o campo "Senha atual" em branco.</div>' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_ELEMENT_MESSAGE_DADOS_CONTA_SALVOS_COM_SUCESSO' AS constante_textual, 'Os dados de sua conta foram salvos com sucesso!' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_PERFIS_VINCULADOS_DISPONIVEIS' AS constante_textual, 'Perfil vinculado padrão:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_DISPLAY_GROUP_LABEL_PERFIL_VINCULADO_PADRAO' AS constante_textual, 'Perfil padrão' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_DISPLAY_GROUP_LABEL_TROCA_DE_SENHA' AS constante_textual, 'Troca de senha' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_DISPLAY_GROUP_LABEL_DADOS_NASCIMENTO' AS constante_textual, 'Dados do nascimento' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_DISPLAY_GROUP_LABEL_FILIACAO' AS constante_textual, 'Filiação' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_DISPLAY_GROUP_LABEL_DOCUMENTOS_PESSOAIS' AS constante_textual, 'Documentos pessoais' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_DISPLAY_GROUP_LABEL_INFORMACOES_CONTATO' AS constante_textual, 'Informações de contato' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_DISPLAY_GROUP_LABEL_INFORMACOES_PESSOAIS' AS constante_textual, 'Informações pessoais' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_DISPLAY_GROUP_LABEL_INFORMACOES_USUARIO' AS constante_textual, 'Informações do usuário' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_NOME_AJUDA' AS constante_textual, 'Digite neste campo o seu nome completo, sem abreviações.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_EMAIL_AJUDA' AS constante_textual, 'Digite neste campo o seu e-mail. Digite apenas 1 (um) endereço, sem espaços.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_CAPTCHA_6' AS constante_textual, 'Por favor, digite o código de 6 caracteres abaixo:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'DIALOG_HELP_TITLE' AS constante_textual, 'Ajuda' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'DIALOG_FORM_RESOLVEDOR_CONFLITO_VISUALIZAR_DADOS_ATUAIS_TITLE' AS constante_textual, 'DADOS ATUAIS:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_SELECT_FORMULARIO' AS constante_textual, 'Formulário:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_SELECT_FORMULARIO_HINT' AS constante_textual, 'Selecione o formulário desejado.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_CHECKBOX_MODULOS_FORMULARIO' AS constante_textual, 'Módulos:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_CHECKBOX_MODULOS_FORMULARIO_HINT' AS constante_textual, 'Selecione os módulos desejados.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_GERADOR_FORMULARIO_SUCESSO_GERAR_FORMULARIO_TITULO' AS constante_textual, 'Sucesso!' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_GERADOR_FORMULARIO_SUCESSO_GERAR_FORMULARIO_SUBTITULO' AS constante_textual, 'Formulário gerado com sucesso.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_GERADOR_FORMULARIO_SUCESSO_GERAR_FORMULARIOS_SUBTITULO' AS constante_textual, 'Formulários gerados com sucesso.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_GERADOR_FORMULARIO_ERRO_FORMULARIO_NAO_GERADO_TITULO' AS constante_textual, 'Atenção!' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_GERADOR_FORMULARIO_ERRO_FORMULARIO_NAO_GERADO_SUBTITULO' AS constante_textual, 'Não foi possível gerar o Formulário.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_GERADOR_FORMULARIO_ERRO_FORMULARIO_NAO_GERADO_MENSAGEM' AS constante_textual, 'Ocorreu um problema na tentativa de gerar o Formulário.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_GERADOR_FORMULARIO_TITULO' AS constante_textual, 'Gerador de Formulários:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_GERADOR_FORMULARIO_SUBTITULO' AS constante_textual, 'Preencha os dados abaixo para iniciar o processo de gerar formulários.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_PAIS_NASCIMENTO_LABEL' AS constante_textual, 'País de nascimento.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_PAIS_NASCIMENTO_FILTERING_SELECT_AJUDA' AS constante_textual, 'Selecione o seu País de nascimento.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_PAIS_NASCIMENTO_FILTERING_SELECT_HINT' AS constante_textual, 'Selecione o seu País de nascimento.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ESTADO_NASCIMENTO_LABEL' AS constante_textual, 'ESTADO de nascimento.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ESTADO_NASCIMENTO_FILTERING_SELECT_AJUDA' AS constante_textual, 'Selecione a sua ESTADO de nascimento.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ESTADO_NASCIMENTO_FILTERING_SELECT_HINT' AS constante_textual, 'Selecione a sua ESTADO de nascimento.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ESTADO_NASCIMENTO_TEXT_BOX_AJUDA' AS constante_textual, 'Digite a sua ESTADO de nascimento.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ESTADO_NASCIMENTO_TEXT_BOX_HINT' AS constante_textual, 'Digite aqui a sua ESTADO de nascimento.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_MUNICIPIO_NASCIMENTO_LABEL' AS constante_textual, 'Município de nascimento.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_MUNICIPIO_NASCIMENTO_FILTERING_SELECT_AJUDA' AS constante_textual, 'Selecione o seu Município de nascimento.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_MUNICIPIO_NASCIMENTO_FILTERING_SELECT_HINT' AS constante_textual, 'Selecione o seu Município de nascimento.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_MUNICIPIO_NASCIMENTO_TEXT_BOX_AJUDA' AS constante_textual, 'Digite a seu Município de nascimento.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_MUNICIPIO_NASCIMENTO_TEXT_BOX_HINT' AS constante_textual, 'Digite aqui seu Município de nascimento.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_NOME_PAI_LABEL' AS constante_textual, 'Nome do pai.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_NOME_PAI_TEXT_BOX_AJUDA' AS constante_textual, 'Digite a nome do seu pai.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_NOME_PAI_TEXT_BOX_HINT' AS constante_textual, 'Digite aqui o nome do seu pai.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_NOME_MAE_LABEL' AS constante_textual, 'Nome da mãe.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_NOME_MAE_TEXT_BOX_AJUDA' AS constante_textual, 'Digite o nome da sua mãe.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_NOME_MAE_TEXT_BOX_HINT' AS constante_textual, 'Digite aqui o nome da sua mãe.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_BUTTON_ABRIR_DIALOG_DOCUMENTOS_PESSOAIS' AS constante_textual, 'Documentos pessoais' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_PESSOAIS_DOCUMENTOS_PESSOAIS' AS constante_textual, 'Documentos pessoais' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_TITLE_DOCUMENTOS_PESSOAIS' AS constante_textual, 'Documentos pessoais' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_BUTTON_ABRIR_DIALOG_TELEFONES_PESSOAIS' AS constante_textual, 'Telefones pessoais' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_PESSOAIS_TELEFONES_PESSOAIS' AS constante_textual, 'Telefones pessoais' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_TITLE_TELEFONES_PESSOAIS' AS constante_textual, 'Telefones pessoais' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_BUTTON_ABRIR_DIALOG_EMAILS_PESSOAIS' AS constante_textual, 'Emails pessoais' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_PESSOAIS_EMAILS_PESSOAIS' AS constante_textual, 'Emails pessoais' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_TITLE_EMAILS_PESSOAIS' AS constante_textual, 'Emails pessoais' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_BUTTON_ABRIR_DIALOG_WEBSITES_PESSOAIS' AS constante_textual, 'Websites pessoais' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_PESSOAIS_WEBSITES_PESSOAIS' AS constante_textual, 'Websites pessoais' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_TITLE_WEBSITES_PESSOAIS' AS constante_textual, 'Websites pessoais' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_BUTTON_ABRIR_DIALOG_ENDERECOS_PESSOAIS' AS constante_textual, 'Endereços pessoais' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_PESSOAIS_ENDERECOS_PESSOAIS' AS constante_textual, 'Endereços pessoais' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_TITLE_ENDERECOS_PESSOAIS' AS constante_textual, 'Endereços pessoais' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'SUBFORM_TABTITLE_INFORMACOES_BANCARIAS_DADOS_BANCARIOS' AS constante_textual, 'DADOS BANCÁRIOS' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_TITLE_CONTAS_BANCARIAS' AS constante_textual, 'CONTAS BANCÁRIAS' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_TITLE_CONTA_BANCARIA' AS constante_textual, 'Conta bancária' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_BUTTON_ABRIR_DIALOG_CONTAS_BANCARIAS' AS constante_textual, 'Contas bancárias' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_BUTTON_ABRIR_DIALOG_NOVO_CONTA_BANCARIA' AS constante_textual, 'Nova conta bancária' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'SUBFORM_TABTITLE_INFORMACOES_BANCARIAS_MOVIMENTACAO_FINANCEIRA' AS constante_textual, 'MOVIMENTAÇÃO FINANCEIRA' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ENDERECO_TIPO_LABEL' AS constante_textual, 'Tipo de endereço:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ENDERECO_TIPO_FILTERING_SELECT_AJUDA' AS constante_textual, 'Selecione o tipo de endereço.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ENDERECO_TIPO_FILTERING_SELECT_HINT' AS constante_textual, 'Selecione o tipo de endereço.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ENDERECO_PAIS_LABEL' AS constante_textual, 'País:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ENDERECO_PAIS_FILTERING_SELECT_AJUDA' AS constante_textual, 'Selecione o país do endereço.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ENDERECO_PAIS_FILTERING_SELECT_HINT' AS constante_textual, 'Selecione o país do endereço.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ENDERECO_ESTADO_LABEL' AS constante_textual, 'Uf:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ENDERECO_ESTADO_FILTERING_SELECT_AJUDA' AS constante_textual, 'Selecione a uf do endereço.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ENDERECO_ESTADO_FILTERING_SELECT_HINT' AS constante_textual, 'Selecione a uf do endereço.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ENDERECO_ESTADO_TEXT_BOX_AJUDA' AS constante_textual, 'Digite a uf do endereço.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ENDERECO_ESTADO_TEXT_BOX_HINT' AS constante_textual, 'Digite a uf do endereço.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ENDERECO_MUNICIPIO_LABEL' AS constante_textual, 'Município:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ENDERECO_MUNICIPIO_FILTERING_SELECT_AJUDA' AS constante_textual, 'Selecione o Município do endereço.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ENDERECO_MUNICIPIO_FILTERING_SELECT_HINT' AS constante_textual, 'Selecione o Município do endereço.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ENDERECO_MUNICIPIO_TEXT_BOX_AJUDA' AS constante_textual, 'Digite o Município do endereço.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ENDERECO_MUNICIPIO_TEXT_BOX_HINT' AS constante_textual, 'Digite o Município do endereço.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ENDERECO_CEP_LABEL' AS constante_textual, 'Cep:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ENDERECO_CEP_TEXT_BOX_AJUDA' AS constante_textual, 'Digite o cep.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ENDERECO_CEP_TEXT_BOX_HINT' AS constante_textual, 'Digite aqui o cep.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ENDERECO_LOGRADOURO_LABEL' AS constante_textual, 'Logradouro:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ENDERECO_LOGRADOURO_TEXT_BOX_AJUDA' AS constante_textual, 'Digite o logradouro.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ENDERECO_LOGRADOURO_TEXT_BOX_HINT' AS constante_textual, 'Digite o nome da rua.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ENDERECO_TEXT_BOX_HINT' AS constante_textual, 'Digite aqui o logradouro.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ENDERECO_NUMERO_LABEL' AS constante_textual, 'Número:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ENDERECO_NUMERO_TEXT_BOX_AJUDA' AS constante_textual, 'Digite o número.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ENDERECO_NUMERO_TEXT_BOX_HINT' AS constante_textual, 'Digite aqui o número.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ENDERECO_COMPLEMENTO_LABEL' AS constante_textual, 'Complemento:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ENDERECO_COMPLEMENTO_TEXT_BOX_AJUDA' AS constante_textual, 'Digite o complemento.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ENDERECO_COMPLEMENTO_TEXT_BOX_HINT' AS constante_textual, 'Digite aqui o complemento.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_CONTA_BANCARIA_NUMERO_BANCO_LABEL' AS constante_textual, 'Número do banco:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_CONTA_BANCARIA_NUMERO_BANCO_TEXT_BOX_AJUDA' AS constante_textual, 'Digite o número do banco.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_CONTA_BANCARIA_NUMERO_BANCO_TEXT_BOX_HINT' AS constante_textual, 'Digite aqui o número do banco.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_CONTA_BANCARIA_BANCO_LABEL' AS constante_textual, 'Banco:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_CONTA_BANCARIA_BANCO_FILTERING_SELECT_AJUDA' AS constante_textual, 'Selecione o banco.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_CONTA_BANCARIA_BANCO_FILTERING_SELECT_HINT' AS constante_textual, 'Selecione o banco.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_CONTA_BANCARIA_AGENCIA_LABEL' AS constante_textual, 'Agência:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_CONTA_BANCARIA_AGENCIA_TEXT_BOX_AJUDA' AS constante_textual, 'Digite o número da agência.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_CONTA_BANCARIA_AGENCIA_TEXT_BOX_HINT' AS constante_textual, 'Digite aqui o número da agência.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_CONTA_BANCARIA_TIPO_CONTA_LABEL' AS constante_textual, 'Tipo da conta:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_CONTA_BANCARIA_TIPO_CONTA_FILTERING_SELECT_AJUDA' AS constante_textual, 'Selecione o tipo da conta.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_CONTA_BANCARIA_TIPO_CONTA_FILTERING_SELECT_HINT' AS constante_textual, 'Selecione o tipo da conta.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_CONTA_BANCARIA_NUMERO_CONTA_LABEL' AS constante_textual, 'Número da conta:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_CONTA_BANCARIA_NUMERO_CONTA_TEXT_BOX_AJUDA' AS constante_textual, 'Digite o número da conta.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_CONTA_BANCARIA_NUMERO_CONTA_TEXT_BOX_HINT' AS constante_textual, 'Digite aqui o número da conta.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_CONTA_BANCARIA_DESCRICAO_IDENTIFICACAO_CONTA_LABEL' AS constante_textual, 'Descrição para identificação:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_CONTA_BANCARIA_DESCRICAO_IDENTIFICACAO_CONTA_TEXT_BOX_AJUDA' AS constante_textual, 'Digite a descrição para identificação.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_CONTA_BANCARIA_DESCRICAO_IDENTIFICACAO_CONTA_TEXT_BOX_HINT' AS constante_textual, 'Digite aqui a descrição para identificação.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_AFEGANISTAO' AS constante_textual, 'Afeganistão' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ALBANIA' AS constante_textual, 'Albânia' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ANTARTIDA' AS constante_textual, 'Antártida' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ARGELIA' AS constante_textual, 'Argélia' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_SAMOA_AMERICANA' AS constante_textual, 'Samoa Americana' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ANDORRA' AS constante_textual, 'Andorra' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ANGOLA' AS constante_textual, 'Angola' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ANTIGUA_E_BARBUDA' AS constante_textual, 'Antígua e Barbuda' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_AZERBAIJAO' AS constante_textual, 'Azerbaijão' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ARGENTINA' AS constante_textual, 'Argentina' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_AUSTRALIA' AS constante_textual, 'Austrália' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_AUSTRIA' AS constante_textual, 'Áustria' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_BAHAMAS' AS constante_textual, 'Bahamas' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_BAHREIN' AS constante_textual, 'Bahrein' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_BANGLADESH' AS constante_textual, 'Bangladesh' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ARMENIA' AS constante_textual, 'Armênia' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_BARBADOS' AS constante_textual, 'Barbados' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_BELGICA' AS constante_textual, 'Bélgica' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_BERMUDA' AS constante_textual, 'Bermuda' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_BUTAO' AS constante_textual, 'Butão' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_BOLIVIA' AS constante_textual, 'Bolívia' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_BOSNIA-HERZEGOVINA' AS constante_textual, 'Bósnia e Herzegovina' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_BOTSUANA' AS constante_textual, 'Botsuana' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ILHA_BOUVET' AS constante_textual, 'Ilha Bouvet' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_BRASIL' AS constante_textual, 'Brasil' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_BELIZE' AS constante_textual, 'Belize' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_TERRITORIO_BRITANICO_DO_OCEANO_INDICO' AS constante_textual, 'Território Britânico do Oceano Índico' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ILHAS_SALOMAO' AS constante_textual, 'Ilhas Salomão' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ILHAS_VIRGENS_BRITANICAS' AS constante_textual, 'Ilhas Virgens Britânicas' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_BRUNEI' AS constante_textual, 'Brunei' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_BULGARIA' AS constante_textual, 'Bulgária' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_MYANMAR_ANTIGA_BIRMANIA' AS constante_textual, 'Myanmar (antiga "Birmânia")' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_BURUNDI' AS constante_textual, 'Burundi' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_BIELO-RUSSIA' AS constante_textual, 'Bielo-Rússia' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_CAMBOJA' AS constante_textual, 'Camboja' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_CAMAROES' AS constante_textual, 'Camarões' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_CANADA' AS constante_textual, 'Canadá' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_CABO_VERDE' AS constante_textual, 'Cabo Verde' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ILHAS_CAYMAN' AS constante_textual, 'Ilhas Cayman' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_REPUBLICA_CENTRO-AFRICANA' AS constante_textual, 'República Centro-africana' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_SRI_LANKA' AS constante_textual, 'Sri Lanka' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_CHADE' AS constante_textual, 'Chade' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_CHILE' AS constante_textual, 'Chile' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_CHINA' AS constante_textual, 'China' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_TAIWAN' AS constante_textual, 'Taiwan' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ILHA_CHRISTMAS' AS constante_textual, 'Ilha Christmas' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ILHAS_COCOS' AS constante_textual, 'Ilhas Cocos' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_COLOMBIA' AS constante_textual, 'Colômbia' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_COMORES' AS constante_textual, 'Comores' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_MAYOTTE' AS constante_textual, 'Mayotte' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_REPUBLICA_DO_CONGO' AS constante_textual, 'República do Congo' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_REPUBLICA_DEMOCRATICA_DO_CONGO' AS constante_textual, 'República Democrática do Congo' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ILHAS_COOK' AS constante_textual, 'Ilhas Cook' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_COSTA_RICA' AS constante_textual, 'Costa Rica' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_CROACIA' AS constante_textual, 'Croácia' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_CUBA' AS constante_textual, 'Cuba' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_CHIPRE' AS constante_textual, 'Chipre' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_REPUBLICA_TCHECA' AS constante_textual, 'República Tcheca' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_BENIN' AS constante_textual, 'Benin' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_DINAMARCA' AS constante_textual, 'Dinamarca' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_DOMINICA' AS constante_textual, 'Dominica' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_REPUBLICA_DOMINICANA' AS constante_textual, 'República Dominicana' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_EQUADOR' AS constante_textual, 'Equador' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_EL_SALVADOR' AS constante_textual, 'El Salvador' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_GUINE_EQUATORIAL' AS constante_textual, 'Guiné Equatorial' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ETIOPIA' AS constante_textual, 'Etiópia' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ERITREIA' AS constante_textual, 'Eritréia' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ESTONIA' AS constante_textual, 'Estônia' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ILHAS_FAROE' AS constante_textual, 'Ilhas Faroe' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ILHAS_MALVINAS' AS constante_textual, 'Ilhas Malvinas' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ILHAS_GEORGIA_DO_SUL_E_SANDWICH_DO_SUL' AS constante_textual, 'Ilhas Geórgia do Sul e Sandwich do Sul' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_FIJI' AS constante_textual, 'Fiji' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_FINLANDIA' AS constante_textual, 'Finlândia' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ALAND' AS constante_textual, 'Åland' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_FRANCA' AS constante_textual, 'França' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_GUIANA_FRANCESA' AS constante_textual, 'Guiana Francesa' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_POLINESIA_FRANCESA' AS constante_textual, 'Polinésia Francesa' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_TERRAS_AUSTRAIS_E_ANTARTICAS_FRANCESAS_TAAF' AS constante_textual, 'Terras Austrais e Antárticas Francesas ("TAAF")' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_DJIBUTI' AS constante_textual, 'Djibuti' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_GABAO' AS constante_textual, 'Gabão' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_GEORGIA' AS constante_textual, 'Geórgia' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_GAMBIA' AS constante_textual, 'Gâmbia' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_PALESTINA' AS constante_textual, 'Palestina' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ALEMANHA' AS constante_textual, 'Alemanha' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_GANA' AS constante_textual, 'Gana' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_GIBRALTAR' AS constante_textual, 'Gibraltar' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_KIRIBATI' AS constante_textual, 'Kiribati' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_GRECIA_' AS constante_textual, 'Grécia ' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_GRONELANDIA' AS constante_textual, 'Gronelândia' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_GRENADA' AS constante_textual, 'Grenada' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_GUADALUPE' AS constante_textual, 'Guadalupe' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_GUAM' AS constante_textual, 'Guam' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_GUATEMALA' AS constante_textual, 'Guatemala' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_GUINE-CONACRI' AS constante_textual, 'Guiné-Conacri' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_GUIANA' AS constante_textual, 'Guiana' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_HAITI' AS constante_textual, 'Haiti' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ILHA_HEARD_E_ILHAS_MCDONALD' AS constante_textual, 'Ilha Heard e Ilhas McDonald' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_VATICANO' AS constante_textual, 'Vaticano' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_HONDURAS' AS constante_textual, 'Honduras' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_HONG_KONG' AS constante_textual, 'Hong Kong' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_HUNGRIA' AS constante_textual, 'Hungria' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ISLANDIA' AS constante_textual, 'Islândia' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_INDIA' AS constante_textual, 'Índia' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_INDONESIA' AS constante_textual, 'Indonésia' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_IRA' AS constante_textual, 'Irã' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_IRAQUE' AS constante_textual, 'Iraque' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_IRLANDA' AS constante_textual, 'Irlanda' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ISRAEL' AS constante_textual, 'Israel' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ITALIA' AS constante_textual, 'Itália' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_COSTA_DO_MARFIM' AS constante_textual, 'Costa do Marfim' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_JAMAICA' AS constante_textual, 'Jamaica' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_JAPAO' AS constante_textual, 'Japão' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_CAZAQUISTAO' AS constante_textual, 'Cazaquistão' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_JORDANIA' AS constante_textual, 'Jordânia' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_QUENIA' AS constante_textual, 'Quênia' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_COREIA_DO_NORTE' AS constante_textual, 'Coréia do Norte' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_COREIA_DO_SUL' AS constante_textual, 'Coréia do Sul' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_KUWAIT' AS constante_textual, 'Kuwait' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_QUIRGUISTAO' AS constante_textual, 'Quirguistão' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_LAOS' AS constante_textual, 'Laos' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_LIBANO' AS constante_textual, 'Líbano' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_LESOTO' AS constante_textual, 'Lesoto' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_LETONIA' AS constante_textual, 'Letônia' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_LIBERIA' AS constante_textual, 'Libéria' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_LIBIA' AS constante_textual, 'Líbia' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_LIECHTENSTEIN' AS constante_textual, 'Liechtenstein' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_LITUANIA' AS constante_textual, 'Lituânia' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_LUXEMBURGO' AS constante_textual, 'Luxemburgo' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_MACAU' AS constante_textual, 'Macau' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_MADAGASCAR' AS constante_textual, 'Madagascar' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_MALAWI' AS constante_textual, 'Malawi' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_MALASIA' AS constante_textual, 'Malásia' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_MALDIVAS' AS constante_textual, 'Maldivas' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_MALI' AS constante_textual, 'Mali' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_MALTA' AS constante_textual, 'Malta' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_MARTINICA' AS constante_textual, 'Martinica' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_MAURITANIA' AS constante_textual, 'Mauritânia' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_MAURICIA' AS constante_textual, 'Maurícia' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_MEXICO' AS constante_textual, 'México' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_MONACO' AS constante_textual, 'Mônaco' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_MONGOLIA' AS constante_textual, 'Mongólia' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_MOLDAVIA' AS constante_textual, 'Moldávia' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_MONTENEGRO' AS constante_textual, 'Montenegro' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_MONTSERRAT' AS constante_textual, 'Montserrat' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_MARROCOS' AS constante_textual, 'Marrocos' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_MOCAMBIQUE' AS constante_textual, 'Moçambique' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_OMA' AS constante_textual, 'Oma' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_NAMIBIA' AS constante_textual, 'Namíbia' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_NAURU' AS constante_textual, 'Nauru' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_NEPAL' AS constante_textual, 'Nepal' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_PAISES_BAIXOS_HOLANDA' AS constante_textual, 'Países Baixos ("Holanda")' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ANTILHAS_HOLANDESAS' AS constante_textual, 'Antilhas Holandesas' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ARUBA' AS constante_textual, 'Aruba' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_NOVA_CALEDONIA' AS constante_textual, 'Nova Caledônia' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_VANUATU' AS constante_textual, 'Vanuatu' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_NOVA_ZELANDIA_AOTEAROA' AS constante_textual, 'Nova Zelândia ("Aotearoa")' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_NICARAGUA' AS constante_textual, 'Nicarágua' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_NIGER' AS constante_textual, 'Níger' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_NIGERIA' AS constante_textual, 'Nigéria' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_NIUE' AS constante_textual, 'Niuê' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ILHA_NORFOLK' AS constante_textual, 'Ilha Norfolk' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_NORUEGA' AS constante_textual, 'Noruega' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_MARIANAS_SETENTRIONAIS' AS constante_textual, 'Marianas Setentrionais' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ILHAS_MENORES_DISTANTES_DOS_ESTADOS_UNIDOS' AS constante_textual, 'Ilhas Menores Distantes dos Estados Unidos' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ESTADOS_FEDERADOS_DA_MICRONESIA' AS constante_textual, 'Estados Federados da Micronésia' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ILHAS_MARSHALL' AS constante_textual, 'Ilhas Marshall' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_PALAU' AS constante_textual, 'Palau' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_PAQUISTAO' AS constante_textual, 'Paquistão' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_PANAMA' AS constante_textual, 'Panamá' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_PAPUA-NOVA_GUINE' AS constante_textual, 'Papua-Nova Guiné' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_PARAGUAI' AS constante_textual, 'Paraguai' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_PERU' AS constante_textual, 'Peru' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_FILIPINAS' AS constante_textual, 'Filipinas' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_PITCAIRN' AS constante_textual, 'Pitcairn' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_POLONIA' AS constante_textual, 'Polônia' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_PORTUGAL' AS constante_textual, 'Portugal' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_GUINE-BISSAU' AS constante_textual, 'Guiné-Bissau' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_TIMOR-LESTE' AS constante_textual, 'Timor-Leste' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_PORTO_RICO' AS constante_textual, 'Porto Rico' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_QATAR' AS constante_textual, 'Qatar' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_REUNIAO' AS constante_textual, 'Reunião' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ROMENIA' AS constante_textual, 'Romênia' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_RUANDA' AS constante_textual, 'Ruanda' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_SANTA_HELENA' AS constante_textual, 'Santa Helena' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_SAO_CRISTOVAO_E_NEVIS' AS constante_textual, 'São Cristóvão e Névis' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ANGUILA' AS constante_textual, 'Anguila' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_SANTA_LUCIA' AS constante_textual, 'Santa Lúcia' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_SAO_PEDRO_E_MIQUELON' AS constante_textual, 'São Pedro e Miquelon' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_SAO_VICENTE_E_GRANADINAS' AS constante_textual, 'São Vicente e Granadinas' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_SAO_MARINO' AS constante_textual, 'São Marino' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_SAO_TOME_E_PRINCIPE' AS constante_textual, 'São Tomé e Príncipe' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ARABIA_SAUDITA' AS constante_textual, 'Arábia Saudita' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_SENEGAL' AS constante_textual, 'Senegal' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_SERVIA' AS constante_textual, 'Sérvia' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_SEYCHELLES' AS constante_textual, 'Seychelles' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_SERRA_LEOA' AS constante_textual, 'Serra Leoa' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_SINGAPURA' AS constante_textual, 'Singapura' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ESLOVAQUIA' AS constante_textual, 'Eslováquia' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_VIETNAME' AS constante_textual, 'Vietname' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ESLOVENIA' AS constante_textual, 'Eslovênia' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_SOMALIA' AS constante_textual, 'Somália' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_AFRICA_DO_SUL' AS constante_textual, 'África do Sul' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ZIMBABUE' AS constante_textual, 'Zimbábue' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ESPANHA' AS constante_textual, 'Espanha' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_SAARA_OCIDENTAL' AS constante_textual, 'Saara Ocidental' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_SUDAO' AS constante_textual, 'Sudão' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_SURINAME' AS constante_textual, 'Suriname' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_SVALBARD_E_JAN_MAYEN' AS constante_textual, 'Svalbard e Jan Mayen' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_SUAZILANDIA' AS constante_textual, 'Suazilândia' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_SUECIA' AS constante_textual, 'Suécia' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_SUICA' AS constante_textual, 'Suíça' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_SIRIA' AS constante_textual, 'Síria' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_TAJIQUISTAO' AS constante_textual, 'Tajiquistão' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_TAILANDIA' AS constante_textual, 'Tailândia' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_TOGO' AS constante_textual, 'Togo' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_TOQUELAU' AS constante_textual, 'Toquelau' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_TONGA' AS constante_textual, 'Tonga' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_TRINDADE_E_TOBAGO' AS constante_textual, 'Trindade e Tobago' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_EMIRATOS_ARABES_UNIDOS' AS constante_textual, 'Emiratos Árabes Unidos' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_TUNISIA' AS constante_textual, 'Tunísia' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_TURQUIA' AS constante_textual, 'Turquia' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_TURQUEMENISTAO' AS constante_textual, 'Turquemenistão' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_TURCAS_E_CAICOS' AS constante_textual, 'Turcas e Caicos' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_TUVALU' AS constante_textual, 'Tuvalu' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_UGANDA' AS constante_textual, 'Uganda' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_UCRANIA' AS constante_textual, 'Ucrânia' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_REPUBLICA_DA_MACEDONIA' AS constante_textual, 'República da Macedônia' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_EGITO' AS constante_textual, 'Egito' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_REINO_UNIDO' AS constante_textual, 'Reino Unido' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_GUERNSEY' AS constante_textual, 'Guernsey' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_JERSEY' AS constante_textual, 'Jersey' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ILHA_DO_HOMEM' AS constante_textual, 'Ilha do Homem' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_TANZANIA' AS constante_textual, 'Tanzânia' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ESTADOS_UNIDOS_DA_AMERICA' AS constante_textual, 'Estados Unidos da América' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ILHAS_VIRGENS_AMERICANAS' AS constante_textual, 'Ilhas Virgens Americanas' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_BURKINA_FASO' AS constante_textual, 'Burkina Faso' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_URUGUAI' AS constante_textual, 'Uruguai' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_UZBEQUISTAO' AS constante_textual, 'Uzbequistão' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_VENEZUELA' AS constante_textual, 'Venezuela' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_WALLIS_E_FUTUNA' AS constante_textual, 'Wallis e Futuna' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_SAMOA_SAMOA_OCIDENTAL' AS constante_textual, 'Samoa (Samoa Ocidental)' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_IEMEN' AS constante_textual, 'Iêmen' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_SERVIA_E_MONTENEGRO' AS constante_textual, 'Sérvia e Montenegro' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ZAMBIA' AS constante_textual, 'Zâmbia' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'MENSAGEM_ALERTA_PROBLEMAS_LOGIN_SENHA_INCORRETA' AS constante_textual, 'tentativas de acesso com a senha errada.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'MENSAGEM_ALERTA_PROBLEMAS_LOGIN_IP_DIFERENETE_IP_ATUAL' AS constante_textual, 
'O endereço IP atual difere do endereço IP utilizado no momento do logon.

No momento da autenticação de sua conta, seu acesso foi realizado
através de um endereço de rede (@IPLogon) diferente do endereço de rede
atual (@IPAtual).
Isto representa uma possível tentativa de acesso não autorizado ao
sistema.

Especificamente, neste caso, não se trata de um acesso simultâneo a sua
conta, através do seu login e senha.

Se você perdeu sua conexão de rede e realizou novo acesso, por favor
logue novamente. Caso contrario, você pode estar sendo vitima de uma 
ação mal intencionada.

Caso você tenha duvidas sobre este problema, por favor acesse a documentação 
online(@linkDocumentacaoOnline) ou entre com contato com o nosso suporte(@emailSuporte).' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_DATA_TERMINO_PERIODO_DATE_TEXT_BOX' AS constante_textual, 'Ajuda para o campo textbox data termino período.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_DATA_INICIO_PERIODO_DATE_TEXT_BOX' AS constante_textual, 'Ajuda para o campo textbox data início período.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_SELECT_TIPO_DATA_FILTERING_SELECT' AS constante_textual, 'Ajuda para o campo filteringSelect tipo data.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_FORMULARIO_FILTERING_SELECT' AS constante_textual, 'Ajuda para o campo filteringSelect formulario.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_ACEITE_TERMOS_USO_TEXT_BOX' AS constante_textual, 'Ajuda para o campo textbox aceite termos uso.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_TERMOS_USO_TEXT_AREA' AS constante_textual, 'Ajuda para o campo textarea termos termos uso.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_HISTORICO_MEDICO_TEXT_AREA' AS constante_textual, 'Ajuda para o campo textarea historico medico.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_TIPO_SANGUINEO_FILTERING_SELECT' AS constante_textual, 'Ajuda para o campo filteringSelect tipo sanguineo.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_PESO_TEXT_BOX' AS constante_textual, 'Ajuda para o campo textbox peso.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_ALTURA_TEXT_BOX' AS constante_textual, 'Ajuda para o campo textbox altura.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_RACA_FILTERING_SELECT' AS constante_textual, 'Ajuda para o campo filteringSelect raca.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_SEXO_RADIO_BUTTON' AS constante_textual, 'Ajuda para o campo radiobutton sexo.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_SENHA_CONFIRMACAO_TEXT_BOX' AS constante_textual, 'Ajuda para o campo textbox senha confirmacao.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_DATA_NASCIMENTO_DATE_TEXT_BOX' AS constante_textual, 'Ajuda para o campo textbox data nascimento.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_LOGIN_TEXT_BOX' AS constante_textual, 'Ajuda para o campo textbox login.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_SENHA_TEXT_BOX' AS constante_textual, 'Ajuda para o campo textbox senha.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_LOGIN_MANTER_LOGADO_CHECKBOX' AS constante_textual, 'Ajuda para o campo checkbox manter logado.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_CATEGORIA_BOLSA_CNPQ_FILTERING_SELECT' AS constante_textual, 'Ajuda para o campo filteringSelect categoria bolsa cnpq.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_MAIOR_TITULACAO_FILTERING_SELECT' AS constante_textual, 'Ajuda para o campo filteringSelect maior titulacao.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_INSTITUICAO_QUE_CONCEDEU_FILTERING_SELECT' AS constante_textual, 'Ajuda para o campo filteringSelect instituicao que concedeu.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_AREA_DE_CONHECIMENTO_FILTERING_SELECT' AS constante_textual, 'Ajuda para o campo filteringSelect area conhecimento.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_NOME_CURSO_TEXT_BOX' AS constante_textual, 'Ajuda para o campo textbox nome curso.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_DATA_OBTENCAO_DATE_TEXT_BOX' AS constante_textual, 'Ajuda para o campo textbox data obtencao.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_TITULACAO_ESPERADA_FILTERING_SELECT' AS constante_textual, 'Ajuda para o campo filteringSelect titulacao esperada.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_INSTITUICAO_CURSO_ATUAL_FILTERING_SELECT' AS constante_textual, 'Ajuda para o campo filteringSelect instituicao curso atual.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_AREA_CONHECIMENTO_CURSO_ATUAL_FILTERING_SELECT' AS constante_textual, 'Ajuda para o campo filteringSelect area conhecimento curso atual.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_NOME_CURSO_ATUAL_TEXT_BOX' AS constante_textual, 'Ajuda para o campo textbox nome curso atual.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_PERIODO_FILTERING_SELECT' AS constante_textual, 'Ajuda para o campo filteringSelect periodo.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_TURNO_FILTERING_SELECT' AS constante_textual, 'Ajuda para o campo filteringSelect turno.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_PROFISSAO_FILTERING_SELECT' AS constante_textual, 'Ajuda para o campo filteringSelect profissao.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_VINCULO_PROFISSIONAL_FILTERING_SELECT' AS constante_textual, 'Ajuda para o campo filteringSelect vinculo profissional.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_PJ_VINCULO_FILTERING_SELECT' AS constante_textual, 'Ajuda para o campo filteringSelect pj vinculo.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_REGIME_TRABALHO_FILTERING_SELECT' AS constante_textual, 'Ajuda para o campo filteringSelect regime trabalho.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_CARGO_TEXT_BOX' AS constante_textual, 'Ajuda para o campo textbox cargo.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_FUNCAO_TEXT_BOX' AS constante_textual, 'Ajuda para o campo textbox funcao.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_ATIVIDADES_DESENVOLVIDAS_TEXT_AREA' AS constante_textual, 'Ajuda para o campo textarea atividades desenvolvidas.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_DATA_ADMISSAO_DATE_TEXT_BOX' AS constante_textual, 'Ajuda para o campo textbox data admissao.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_DATA_DESVINCULACAO_DATE_TEXT_BOX' AS constante_textual, 'Ajuda para o campo textbox data desvinculacao.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_CARGA_HORARIA_SEMANAL_TEXT_BOX' AS constante_textual, 'Ajuda para o campo textbox carga horaria semanal.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_SALARIO_BRUTO_TEXT_BOX' AS constante_textual, 'Ajuda para o campo textbox salario bruto.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_DEDICACAO_EXCLUSIVA_CHECK_BOX' AS constante_textual, 'Ajuda para o campo checkbox dedicacao exclusiva.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_OUTRAS_INFORMACOES_TEXT_AREA' AS constante_textual, 'Ajuda para o campo textarea outras informacoes.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_PERFIS_DISPONIVEIS_MULTI_CHECK_BOX' AS constante_textual, 'Ajuda para o campo checkbox perfis disponiveis.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_PERFIS_VINCULADOS_DISPONIVEIS_FILTERING_SELECT' AS constante_textual, 'Ajuda para o campo filteringSelect perfis vinculados disponiveis.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_SENHA_ATUAL_TEXT_BOX' AS constante_textual, 'Ajuda para o campo textbox senha atual.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_NOVA_SENHA_TEXT_BOX' AS constante_textual, 'Ajuda para o campo textbox nova senha.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_CONFIRMACAO_NOVA_SENHA_TEXT_BOX' AS constante_textual, 'Ajuda para o campo textbox confirmacao nova senha.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_TELEFONE_TIPO_FILTERING_SELECT' AS constante_textual, 'Ajuda para o campo filteringSelect telefone tipo.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_TELEFONE_CODIGO_PAIS_TEXT_BOX' AS constante_textual, 'Ajuda para o campo textbox telefone codigo pais.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_TELEFONE_CODIGO_AREA_TEXT_BOX' AS constante_textual, 'Ajuda para o campo textbox telefone codigo area.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_TELEFONE_TEXT_BOX' AS constante_textual, 'Ajuda para o campo textbox telefone.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_TELEFONE_RAMAL_TEXT_BOX' AS constante_textual, 'Ajuda para o campo textbox telefone ramal.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_TELEFONE_DESCRICAO_TEXT_AREA' AS constante_textual, 'Ajuda para o campo textarea telefone descricao.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_EMAIL_TIPO_FILTERING_SELECT' AS constante_textual, 'Ajuda para o campo filteringSelect email tipo.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_EMAIL_DESCRICAO_TEXT_AREA' AS constante_textual, 'Ajuda para o campo textarea email descricao.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_WEBSITE_TIPO_FILTERING_SELECT' AS constante_textual, 'Ajuda para o campo filteringSelect website tipo.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_WEBSITE_ENDERECO_TEXT_BOX' AS constante_textual, 'Ajuda para o campo textbox website endereco.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_WEBSITE_DESCRICAO_TEXT_AREA' AS constante_textual, 'Ajuda para o campo textarea website descricao.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_NOME_USUARIO_TEXT_BOX' AS constante_textual, 'Ajuda para o campo textbox nome usuario.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_EMAIL_USUARIO_TEXT_BOX' AS constante_textual, 'Ajuda para o campo textbox email usuario.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_PAIS_NASCIMENTO_FILTERING_SELECT' AS constante_textual, 'Ajuda para o campo filteringSelect pais nascimento.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_ESTADO_NASCIMENTO_FILTERING_SELECT' AS constante_textual, 'Ajuda para o campo filteringSelect estado nascimento.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_ESTADO_NASCIMENTO_TEXT_BOX' AS constante_textual, 'Ajuda para o campo textbox estado nascimento.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_MUNICIPIO_NASCIMENTO_FILTERING_SELECT' AS constante_textual, 'Ajuda para o campo filteringSelect municipio nascimento.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_MUNICIPIO_NASCIMENTO_TEXT_BOX' AS constante_textual, 'Ajuda para o campo textbox municipio nascimento.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_NOME_PAI_TEXT_BOX' AS constante_textual, 'Ajuda para o campo textbox nome pai.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_NOME_MAE_TEXT_BOX' AS constante_textual, 'Ajuda para o campo textbox nome mae.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_ENDERECO_TIPO_FILTERING_SELECT' AS constante_textual, 'Ajuda para o campo filteringSelect endereco tipo.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_PAIS_FILTERING_SELECT' AS constante_textual, 'Ajuda para o campo filteringSelect pais.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_ESTADO_FILTERING_SELECT' AS constante_textual, 'Ajuda para o campo filteringSelect estado.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_ESTADO_TEXT_BOX' AS constante_textual, 'Ajuda para o campo textbox estado.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_MUNICIPIO_FILTERING_SELECT' AS constante_textual, 'Ajuda para o campo filteringSelect estado.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_MUNICIPIO_TEXT_BOX' AS constante_textual, 'Ajuda para o campo textbox municipio.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_CEP_TEXT_BOX' AS constante_textual, 'Ajuda para o campo textbox cep.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_LOGRADOURO_TEXT_BOX' AS constante_textual, 'Ajuda para o campo textbox logradouro.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_ENDERECO_NUMERO_TEXT_BOX' AS constante_textual, 'Ajuda para o campo textbox endereco numero.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_ENDERECO_COMPLEMENTO_TEXT_BOX' AS constante_textual, 'Ajuda para o campo textbox endereco complemento.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_NUMERO_BANCO_TEXT_BOX' AS constante_textual, 'Ajuda para o campo textbox numero banco.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_BANCO_FILTERING_SELECT' AS constante_textual, 'Ajuda para o campo filteringSelect banco.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_AGENCIA_TEXT_BOX' AS constante_textual, 'Ajuda para o campo textbox agencia.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_TIPO_CONTA_FILTERING_SELECT' AS constante_textual, 'Ajuda para o campo filteringSelect tipo conta.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_NUMERO_CONTA_TEXT_BOX' AS constante_textual, 'Ajuda para o campo textbox numero conta.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_AJUDA_FORMULARIO_FIELD_DESCRICAO_IDENTIFICACAO_CONTA_TEXT_BOX' AS constante_textual, 'Ajuda para o campo textbox descricao identificacao conta.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_DOJO_PASSWORD_TEXTBOX' AS constante_textual, 'Nome componente dojo password textbox.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_DOJO_PASSWORD_TEXTBOX_WITH_CHECKER' AS constante_textual, 'Nome componente dojo password textbox with checker.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_DOJO_RADIOBUTTON' AS constante_textual, 'Nome componente dojo radiobutton.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_ZF_HIDDEN' AS constante_textual, 'Nome componente ZF hidden.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_DOJO_VALIDATION_TEXTBOX' AS constante_textual, 'Nome componente dojo validation textbox.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_DOJO_SUBMIT_BUTTON' AS constante_textual, 'Nome componente dojo submit button.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_ZF_BUTTON' AS constante_textual, 'Nome componente ZF button.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_DOJO_FILTERING_SELECT' AS constante_textual, 'Nome componente dojo filteringSelect button.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_ZF_MULTI_CHECKBOX' AS constante_textual, 'Nome componente ZF multi checkbox.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_DOJO_CHECKBOX' AS constante_textual, 'Nome componente dojo checkbox.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_DOJO_TEXTAREA' AS constante_textual, 'Nome componente dojo textarea.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_DOJO_SIMPLE_TEXTAREA' AS constante_textual, 'Nome componente dojo simple textarea.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_DOJO_DATE_TEXTBOX' AS constante_textual, 'Nome componente dojo date textbox.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_DOJO_NUMBER_TEXTBOX' AS constante_textual, 'Nome componente dojo number textbox.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_DOJO_CURRENCY_TEXTBOX' AS constante_textual, 'Nome componente dojo currency textbox.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_ZF_CAPTCHA' AS constante_textual, 'Nome componente ZF captcha.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_ZF_HASH' AS constante_textual, 'Nome componente ZF hash.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_ROCHEDO_HTML' AS constante_textual, 'Nome componente rochedo html.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_ROCHEDO_JAVASCRIPT' AS constante_textual, 'Nome componente rochedo javascript.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'DESCRICAO_DOJO_PASSWORD_TEXTBOX' AS constante_textual, 'Componente DOJO para caixas de texto do tipo Password.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'DESCRICAO_DOJO_PASSWORD_TEXTBOX_WITH_CHECKER' AS constante_textual, 'Componente DOJO para caixas de texto do tipo Password com o componente Password strength checker acoplado.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'DESCRICAO_DOJO_RADIOBUTTON' AS constante_textual, 'Componente DOJO para RadioButtons.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'DESCRICAO_ZF_HIDDEN' AS constante_textual, 'Componente ZF para campos ocultos.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'DESCRICAO_DOJO_VALIDATION_TEXTBOX' AS constante_textual, 'Componente DOJO para caixas de texto com validação.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'DESCRICAO_DOJO_SUBMIT_BUTTON' AS constante_textual, 'Componente DOJO para botões de submissão.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'DESCRICAO_ZF_BUTTON' AS constante_textual, 'Componente ZendFramework de botões.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'DESCRICAO_DOJO_FILTERING_SELECT' AS constante_textual, 'Componente DOJO para ComboBox com filtragem.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'DESCRICAO_ZF_MULTI_CHECKBOX' AS constante_textual, 'Componente ZF para multiplos CheckBoxs.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'DESCRICAO_DOJO_CHECKBOX' AS constante_textual, 'Componente DOJO para CheckBox.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'DESCRICAO_DOJO_TEXTAREA' AS constante_textual, 'Componente DOJO para campos do tipo texto (auto ajustavel).' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'DESCRICAO_DOJO_SIMPLE_TEXTAREA' AS constante_textual, 'Componente DOJO para campos do tipo texto (dimensoes fixas).' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'DESCRICAO_DOJO_DATE_TEXTBOX' AS constante_textual, 'Componente DOJO para campos do tipo data.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'DESCRICAO_DOJO_NUMBER_TEXTBOX' AS constante_textual, 'Componente DOJO para digitação de números.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'DESCRICAO_DOJO_CURRENCY_TEXTBOX' AS constante_textual, 'Componente DOJO para digitação de valores numéricos (moeda).' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'DESCRICAO_ZF_CAPTCHA' AS constante_textual, 'Componente ZendFramework para validação anti-robo.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'DESCRICAO_ZF_HASH' AS constante_textual, 'Componente ZendFramework de hash para validação anti-cross-site script.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'DESCRICAO_ROCHEDO_HTML' AS constante_textual, 'Componente Rochedo de conteudo HTML.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'DESCRICAO_ROCHEDO_JAVASCRIPT' AS constante_textual, 'Componente Rochedo de conteudo JavaScript.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_STRINGTRIM_STRIPTAGS' AS constante_textual, 'Nome filtro stringtrim striptags.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'DESCRICAO_STRINGTRIM_STRIPTAGS' AS constante_textual, 'Filtro que limpa espaços antes e depois do texto e remove todas as marcações de linguagens de programação.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'DESCRICAO_MODULO_DEFAULT' AS constante_textual, 'Modulo default. Necessario para funcionamento do framework (index).' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'ACAO_ERRO_TOKEN_INVALIDO' AS constante_textual, 'Ação erro token invalido.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'ACAO_EXIBIR_FORM_ADMIN_RASCUNHO' AS constante_textual, 'Ação exibir form admin rascunho.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'ACAO_EXCLUIR' AS constante_textual, 'Ação excluir.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'ACAO_SALVAR' AS constante_textual, 'Ação salvar.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'ACAO_ERRO_TOKEN_EXPIRADO' AS constante_textual, 'Ação erro token expirado.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'ACAO_DOWNLOAD' AS constante_textual, 'Ação download.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'ACAO_EXIBIR_FORM_ACEITE' AS constante_textual, 'Ação exibir form aceite.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'ACAO_ACEITE_TERMO_USO' AS constante_textual, 'Ação aceite termo uso.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'ACAO_INDEX' AS constante_textual, 'Ação index.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'ACAO_ERROR' AS constante_textual, 'Ação error.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'ACAO_CADASTRAR_USUARIO_NAO_VALIDADO' AS constante_textual, 'Ação cadastrar usuario não validado.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'ACAO_VERIFICA_DISPONIBILIDADE_LOGIN' AS constante_textual, 'Ação verifica disponibilidade login.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'ACAO_SUCESSO_SALVAR_USUARIO_NAO_VALIDADO' AS constante_textual, 'Ação salvar usuario não validado.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'ACAO_ERRO_EMAIL_NAO_VALIDADO_EXISTENTE_NO_SISTEMA' AS constante_textual, 'Ação erro email não validado existente no sistema.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'ACAO_ERRO_EMAIL_VALIDADO_EXISTENTE_NO_SISTEMA' AS constante_textual, 'Ação erro email validado existente no sistema.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'ACAO_SALVAR_USUARIO_VALIDADO' AS constante_textual, 'Ação salvar usuário validado.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'ACAO_SALVAR_USUARIO_NAO_VALIDADO' AS constante_textual, 'Ação salvar usuário não validado.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'ACAO_SUCESSO_SALVAR_USUARIO_VALIDADO' AS constante_textual, 'Ação sucesso salvar usuário validado.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'ACAO_VERIFICA_NOVO_LOGIN' AS constante_textual, 'Ação verifica novo login.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'ACAO_AUTENTICAR_USUARIO' AS constante_textual, 'Ação autencicar usuário.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'ACAO_VERIFICA_AUTENTICACAO_USUARIO' AS constante_textual, 'Ação verifica autenticacão usuário.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'ACAO_CREDENCIAS_INVALIDAS' AS constante_textual, 'Ação credencias inválidas.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'ACAO_PROBLEMAS_LOGIN' AS constante_textual, 'Ação problemas login.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'ACAO_DESAUTENTICA_USUARIO' AS constante_textual, 'Ação desautentica usuário.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'ACAO_DIALOG_AUTENTICACAO' AS constante_textual, 'Ação dialog autenticação.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'ACAO_IP_USUARIO_DIFERENTE_DO_IP_DO_USUARIO_AUTENTICADO_NA_SESSAO' AS constante_textual, 'Ação IP usuário diferente do IP do usuário autenticado na sessão.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'ACAO_TROCAR_SENHA_EXPIRADA' AS constante_textual, 'Ação trocar senha expirada.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'ACAO_VALIDAR_EMAIL' AS constante_textual, 'Ação validar email.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'ACAO_SUCESSO_RESETA_DB' AS constante_textual, 'Ação sucesso reseta db.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'ACAO_RESETA_DB' AS constante_textual, 'Ação reseta db.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'ACAO_REGERAR_CHECKSUM_MODELO' AS constante_textual, 'Ação regerar checksum modelo.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'ACAO_DECODE' AS constante_textual, 'Ação decode.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'ACAO_GERAR_FORMULARIO' AS constante_textual, 'Ação gerar formulário.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'ACAO_GERAR_TODOS_FORMULARIOS' AS constante_textual, 'Ação gerar todos os formulário.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'ACAO_RESOLVE_CONFLITO_VERSAO_OBJETO' AS constante_textual, 'Ação resove conflito versão objeto.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'ACAO_EXIBIR_FORM_SUGESTAO_LOGIN' AS constante_textual, 'Ação exibir form sugestão login.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_MASCARA_MOEDA_BRL_SEM_SEPARADOR_MILHAR_2_DECIMAIS' AS constante_textual, 'Mascara para campos do tipo moeda no formato BRL, sem separador de milhar e com duas casas decimais.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'DESCRICAO_MASCARA_MOEDA_BRL_SEM_SEPARADOR_MILHAR_2_DECIMAIS' AS constante_textual, 'Mascara para campos do tipo moeda no formato BRL, sem separador de milhar e com duas casas decimais.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_MASCARA_MOEDA_BRL_SEM_SEPARADOR_MILHAR_3_DECIMAIS' AS constante_textual, 'Mascara para campos do tipo moeda no formato BRL, sem separador de milhar e com duas casas decimais.' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'DESCRICAO_MASCARA_MOEDA_BRL_SEM_SEPARADOR_MILHAR_3_DECIMAIS' AS constante_textual, 'Mascara para campos do tipo moeda no formato BRL, sem separador de milhar e com tres casas decimais' AS traducao, true AS ativo, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';


/* 
* (Inglês dos E.U.A. - EN_US)
* 
*/

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_TIPO_CATEGORIA_SISTEMA' AS constante_textual, 'System' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_TIPO_CATEGORIA_PERFIL' AS constante_textual, 'Profile' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_TIPO_CATEGORIA_MENSAGEM' AS constante_textual, 'Message' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_TIPO_CATEGORIA_EMAIL' AS constante_textual, 'Email' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_TIPO_CATEGORIA_WEBSITE' AS constante_textual, 'Website' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_TIPO_CATEGORIA_FORMULARIO' AS constante_textual, 'Form' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_TIPO_CATEGORIA_AJUDA' AS constante_textual, 'Help' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_TIPO_CATEGORIA_COMPONENTE' AS constante_textual, 'Component' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_TIPO_CATEGORIA_CVC' AS constante_textual, 'Control version class' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_TIPO_CATEGORIA_LOCALIDADE' AS constante_textual, 'Locale' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_TIPO_CATEGORIA_DADOS_BIOMETRICOS' AS constante_textual,'Biometric data' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'ASSUNTO_MENSAGEM_EMAIL_TEMPLATE_PROBLEMAS_LOGIN' AS constante_textual, 'Problem(s) with your login' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'MENSAGEM_EMAIL_TEMPLATE_PROBLEMAS_LOGIN' AS constante_textual, '@tratamento @nomeUsuario,


Our system encountered problem(s) with your login below informed:


Login: @login
Problem(s):

@problemas
    

To solve this inconvenience, please:

- access the online documentation system. There you can find the explanation to solve these problems;
- contact the support, informing your login. Please have your documents for verification and registration.


Sincerely,
@assinaturaMensagem' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'ASSUNTO_MENSAGEM_EMAIL_TEMPLATE_CONFIRMACAO_CADASTRO' AS constante_textual, 'Registration Completed' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'MENSAGEM_EMAIL_TEMPLATE_CONFIRMACAO_CADASTRO' AS constante_textual, '@tratamento @nomeUsuario,


Your registration in our system was successful in @dataHoraFinalizacaoCadastro.

From now you can access our system using the following credentials:


LOGIN: @login

For security reasons, our system can''t retrieve the password informed by you. 
If you forget your password, a new password must be created.

Welcome to our system, we are available to solve any dificulties that you may have in this or in any other access to our services. 


Sincerely,
@assinaturaMensagem' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'ASSUNTO_MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO_REENVIO' AS constante_textual, 'Forwarding confirmation of registration' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO_REENVIO' AS constante_textual, 'Dear @nomeUsuario,


We recently received a request for registration in our system, related to your e-mail to which this message was sent.

If you''ve made this request, continue your registration by clicking the link below or copy and paste the address into your browser of preference:
@linkValidacaoEmail


If you have not requested this registry, please ignore this message.

Sincerely,
@assinaturaMensagem' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'ASSUNTO_MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO' AS constante_textual, 'Registration Confirmation' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO' AS constante_textual, 'Dear @nomeUsuario,


We recently received a request for registration in our system, related to your e-mail to which this message was sent.

If you''ve made this request, continue your registration by clicking the link below or copy and paste the address into your browser of preference:
@linkValidacaoEmail


If you have not requested this registry, please ignore this message.

Sincerely,
@assinaturaMensagem' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'MENSAGEM_EMAIL_TEMPLATE_TENTATIVA_REGISTRO_UTILIZANDO_EMAIL_PRIMARIO' AS constante_textual, '@tratamento @nomeUsuario,
 
 
We recently received a request for registration in our system,
related to your e-mail to which this message was sent.

If you made this request, we inform you that your account is active. If you want to recover your password, please try to "reset" your password through the system rather than trying to re-register.

If you have not requested this record, it is possible that someone is trying to register using your primary e-mail, recipient of this message. If this is the case, rest easy knowing your information remains secure.


If you wish, please send us this message by e-mail @linkEmailSuporte so we can audit this inconvenience.


Sincerely,
@assinaturaMensagem' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'ASSUNTO_MENSAGEM_EMAIL_TEMPLATE_TENTATIVA_REGISTRO_UTILIZANDO_EMAIL_PRIMARIO' AS constante_textual, 'Trying to register using your primary email' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_DIALOG_ADMIN_RASCUNHOS_TITLE' AS constante_textual, 'Drafts' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_DATA_TERMINO_PERIODO' AS constante_textual, 'and:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_DATA_TERMINO_PERIODO_AJUDA' AS constante_textual, 'Enter or select the end date of the period:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_DATA_INICIO_PERIODO' AS constante_textual, 'Between:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_DATA_INICIO_PERIODO_AJUDA' AS constante_textual, 'Enter or select the start date of the period.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_SELECT_TIPO_DATA' AS constante_textual, 'Date column:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ADMIN_RASCUNHOS_SELECT_TIPO_DATA_AJUDA' AS constante_textual, 'Use this field to select the type of data to be queried.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_FORMULARIO' AS constante_textual, 'Form:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ADMIN_RASCUNHOS_FORMULARIO_AJUDA' AS constante_textual, 'Use this field to filter drafts by form.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_DISPLAY_GROUP_LABEL_ACOES' AS constante_textual, 'Actions:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_DISPLAY_GROUP_LABEL_LEGENDA' AS constante_textual, 'Label:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_DISPLAY_GROUP_LABEL_FILTROS' AS constante_textual, 'Filters:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_TITLE_RASCUNHOS' AS constante_textual, 'Drafts linked to your account, grouped by form and creation date.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_SUBTITLE_RASCUNHOS' AS constante_textual, 'Select the draft you want to work and click the desired action. You can also filter your search by using the filters area.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'RASCUNHO_MENSAGEM_SUCESSO_EXCLUIR' AS constante_textual, 'Draft sucessfully deleted.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'RASCUNHO_MENSAGEM_ERRO_EXCLUIR' AS constante_textual, 'Error excluding draft.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_BUTTON_CANCELAR_LABEL' AS constante_textual, 'Cancel' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'RASCUNHO_MENSAGEM_SUCESSO_SALVAR' AS constante_textual, 'Draft sucessfully saved.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_DISPLAY_GROUP_LABEL_ACEITE' AS constante_textual, 'Accept' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_DISPLAY_GROUP_LABEL_DOWNLOAD' AS constante_textual, 'Download' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_ACEITE_TERMOS_USO_STRING_CONFIRMACAO' AS constante_textual, 'I AGREE' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ACEITE_TERMOS_USO' AS constante_textual, 'In the field below, type "I AGREE" to accept the terms of service.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ACEITE_TERMOS_USO_AJUDA' AS constante_textual, 'Type "I AGREE" in this field to accept the terms of service.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_TERMOS_USO' AS constante_textual, 'Terms of service:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_TERMOS_USO_AJUDA' AS constante_textual, 'Carefully read the terms described in this field.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_ACEITE_TERMOS_USO_TITULO' AS constante_textual, 'Terms of service' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_ACEITE_TERMOS_USO_SUBTITULO' AS constante_textual, 'Please read the terms of use of the system and accept them to continue.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_TROCA_DE_SENHA_TITULO' AS constante_textual, 'Password change' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_TROCA_DE_SENHA_SUBTITULO' AS constante_textual, 'Your password has expired. For this reason, please fill out the form below to change password.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_TROCA_DE_SENHA_SUCESSO_SUBTITULO' AS constante_textual, 'Your password was successfully changed.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_TROCA_DE_SENHA_SUCESSO_MENSAGEM' AS constante_textual, 'From now on use your new password. There''s no need for new logon.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_TROCA_DE_SENHA_SENHAS_IGUAIS_MENSAGEM' AS constante_textual, 'You cannot use the your current password as new password.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_TITLE_SUGESTAO_LOGIN' AS constante_textual, 'Username suggestions' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_SUGESTAO_LOGIN' AS constante_textual, 'Please, select one of the usernames below:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_TITULO_MESSAGEM_SUCESSO' AS constante_textual, 'Sucess' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_MESSAGEM_SUCESSO_SALVAR_DADOS_BIOMETRICOS' AS constante_textual, 'Biometric data sucessfully updated.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'SELECT_OPTION_NAO_DESEJO_INFORMAR' AS constante_textual, 'I wouldn''t like to inform' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'COR_OU_RACA_BRANCA' AS constante_textual, 'White' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'COR_OU_RACA_PRETA' AS constante_textual, 'Black' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'COR_OU_RACA_PARDA' AS constante_textual, 'Brown' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'COR_OU_RACA_AMARELA_OU_INDIGENA' AS constante_textual, 'Asian or Indigenous' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'MENSAGEM_TEXTO_LINK_AQUI' AS constante_textual, 'here' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'MENSAGEM_TEXTO_TAG_TRATAMENTO_MASCULINO' AS constante_textual, 'Dear' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'MENSAGEM_TEXTO_TAG_TRATAMENTO_FEMININO' AS constante_textual, 'Dear' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_LOGIN_CADASTRAR_USUARIO_VALIDADO_SUCESSO_TITULO' AS constante_textual, 'Your registration is completed.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_LOGIN_CADASTRAR_USUARIO_VALIDADO_SUCESSO_SUBTITULO' AS constante_textual, 'An e-mail was sent to the address provided by you, with a confirmation message.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_LOGIN_CADASTRAR_USUARIO_VALIDADO_SUCESSO_MENSAGEM' AS constante_textual, 'Click @linkMeuPerfil to complete your profile, or at any time, access your profile to update/insert your information.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'LOGIN_DISPONIBILIDADE_LABEL_LOGIN_NAO_DISPONIVEL' AS constante_textual, 'The login isn''t available.<br>Please, try other,<br>or click @linkSugestoesLogin to see<br>the suggestions of the system.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'LOGIN_DISPONIBILIDADE_LABEL_LOGIN_DISPONIVEL' AS constante_textual, 'The login is available' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'PASSWORD_STRENGTH_CHECKER_MESSAGE_MUITO_FORTE' AS constante_textual, 'Very Strong.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'PASSWORD_STRENGTH_CHECKER_MESSAGE_FORTE' AS constante_textual, 'Strong.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'PASSWORD_STRENGTH_CHECKER_MESSAGE_BOA' AS constante_textual, 'Good.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'PASSWORD_STRENGTH_CHECKER_MESSAGE_FRACA' AS constante_textual, 'Weak.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'PASSWORD_STRENGTH_CHECKER_MESSAGE_MUITO_FRACA' AS constante_textual, 'Very Weak.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'PASSWORD_STRENGTH_CHECKER_MESSAGE_ABAIXO' AS constante_textual, 'Below' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'PASSWORD_STRENGTH_CHECKER_MESSAGE_DIGITE_A_SENHA' AS constante_textual, 'Type the password.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_TITLE_RESOLVEDOR_CONFLITO_VERSAO_OBJETO' AS constante_textual, 'ATTENTION - VERSION CONFLICT DETECTED!' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_ELEMENT_HTML_TEXT_DESCRICAO_FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO' AS constante_textual, 'The system has detected a version conflict in the data you''re trying to submit.<br><br>This was caused by the following reason: the information you are submitting has changed<br>before you finish your editing.<br><br>To solve this conflict, choose one of the options below:<br><br>' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_BUTTON_VISUALIZAR_DADOS_ATUAIS_FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO' AS constante_textual, 'View current data' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_ELEMENT_HTML_TEXT_DESCRICAO_BUTTON_VISUALIZAR_DADOS_ATUAIS_FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO' AS constante_textual, '<div id=''descricaoElementoFormulario''>Choose this option if you wish to view the information currently contained in the database only.<br>There will be no loss or overwritten data.</div><br>' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_BUTTON_REVISAR_DADOS_ATUAIS_FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO' AS constante_textual, 'Revisit the form with current data' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_ELEMENT_HTML_TEXT_DESCRICAO_BUTTON_REVISAR_DADOS_ATUAIS_FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO' AS constante_textual, '<div id=''descricaoElementoFormulario''>Choose this option if you wish to view the information currently contained in the database, on<br>submission form. The information you attempted to submit will be lost. You can change the<br>information and resubmit, if desired.</div><br>' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_BUTTON_SOBRESCREVER_ATUALIZACAO_FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO' AS constante_textual, 'Override the update with the data I''m trying to send' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_ELEMENT_HTML_TEXT_DESCRICAO_BUTTON_SOBRESCREVER_ATUALIZACAO_FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO' AS constante_textual, '<div id=''descricaoElementoFormulario''>Choose this option if you want to bypass the update, without revisit any form or previously saved<br>information.</div><br>' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_BUTTON_CANCELAR_FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO' AS constante_textual, 'Cancel' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_ELEMENT_HTML_TEXT_DESCRICAO_BUTTON_CANCELAR_FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO' AS constante_textual, '<div id=''descricaoElementoFormulario''>Choose this option if you want to cancel your submission. In this case, the information sent by<br>you will be ignored.</div>' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'GENERO_MASCULINO' AS constante_textual, 'Male' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'GENERO_FEMININO' AS constante_textual, 'Female' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'TIPO_SANGUINEO_A_POSITIVO' AS constante_textual, 'A+' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'TIPO_SANGUINEO_A_NEGATIVO' AS constante_textual, 'A-' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'TIPO_SANGUINEO_B_POSITIVO' AS constante_textual, 'B+' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'TIPO_SANGUINEO_B_NEGATIVO' AS constante_textual, 'B-' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'TIPO_SANGUINEO_AB_POSITIVO' AS constante_textual, 'AB+' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'TIPO_SANGUINEO_AB_NEGATIVO' AS constante_textual, 'AB-' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'TIPO_SANGUINEO_O_POSITIVO' AS constante_textual, 'O+' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'TIPO_SANGUINEO_O_NEGATIVO' AS constante_textual, 'O-' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_AUTENTICAR_USUARIO_AGUARDANDO_AUTENTICACAO_TITULO' AS constante_textual, 'Waiting for user authentication...' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_AUTENTICAR_USUARIO_PROBLEMAS_LOGIN_TITULO' AS constante_textual, 'Problems were encountered with your login' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_AUTENTICAR_USUARIO_PROBLEMAS_LOGIN_SUBTITULO' AS constante_textual, 'Read below information to try to solve that problem' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_AUTENTICAR_USUARIO_PROBLEMAS_LOGIN_LOGIN_NAO_ATIVO_MSG' AS constante_textual, '<b>LOGIN DEACTIVATED</b>: for some reason your login is disabled and you can not perform the logon.<br>Please contact support to try to revive your login.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_AUTENTICAR_USUARIO_PROBLEMAS_LOGIN_LOGIN_TRAVADO_MSG' AS constante_textual, '<b>LOGIN LOCKED</b>: your login is locked for exceeding the maximum quantity (05) of invalid logon attempts.<br>Wait 01 (one) hour and try again.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_AUTENTICAR_USUARIO_PROBLEMAS_LOGIN_LOGIN_RESETADO_MSG' AS constante_textual, '<b>LOGIN RESETED</b>: your login was reset.<br>Access your mailbox and follow the instructions in the email we sent to you to enable your login.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_AUTENTICAR_USUARIO_PROBLEMAS_LOGIN_SENHA_EXPIRADA_MSG' AS constante_textual, '<b>PASSWORD EXPIRED</b>: your password has expired and you need to reset it.<br>Reset your password and follow the instructions sent by email.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_AUTENTICAR_USUARIO_PROBLEMAS_LOGIN_EXPIRADO_MSG' AS constante_textual, '<b>LOGIN EXPIRED</b>: your login has expired.<br>Please contact support to try to revive your login.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'DIALOG_DIV_CONTAINER_ERROR_TITLE_AUTENTICAR_USUARIO_CREDENCIAIS_INVALIDAS' AS constante_textual, 'Problems trying to logon:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'DIALOG_DIV_CONTAINER_ERROR_MSG_AUTENTICAR_USUARIO_CREDENCIAIS_INVALIDAS' AS constante_textual, 'Invalid login/password;' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_ELEMENT_VALIDATOR_CAPTCHA_BAD_CAPTCHA' AS constante_textual, 'The value entered does not match the image. Please try again.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_ELEMENT_VALIDATOR_INVALID_CSRF' AS constante_textual, 'The form submission''s time has expired. Please, try again.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_ELEMENT_VALIDATOR_EMAILADDRESS_INVALID_FORMAT' AS constante_textual, '''%value%'' is no valid email address in the basic format local-part@hostname' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_ELEMENT_VALIDATOR_EMAILADDRESS_INVALID_HOSTNAME' AS constante_textual, '''%hostname%'' is no valid hostname for email address ''%value%''' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_ELEMENT_VALIDATOR_EMAILADDRESS_INVALID_MX_RECORD' AS constante_textual, '''%hostname%'' does not appear to have a valid MX record for the email address ''%value%''' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_ELEMENT_VALIDATOR_EMAILADDRESS_INVALID_SEGMENT' AS constante_textual, '''%hostname%'' is not in a routable network segment. The email address ''%value%'' should not be resolved from public network.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_ELEMENT_VALIDATOR_EMAILADDRESS_DOT_ATOM' AS constante_textual, '''%localPart%'' can not be matched against dot-atom format' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_ELEMENT_VALIDATOR_EMAILADDRESS_QUOTED_STRING' AS constante_textual, '''%localPart%'' can not be matched against quoted-string format' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_ELEMENT_VALIDATOR_EMAILADDRESS_INVALID_LOCAL_PART' AS constante_textual, '''%localPart%'' is no valid local part for email address ''%value%''' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_ELEMENT_VALIDATOR_HOSTNAME_INVALID' AS constante_textual, '''%value%'' Invalid type given, value should be a string ' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_ELEMENT_VALIDATOR_HOSTNAME_IP_ADDRESS_NOT_ALLOWED' AS constante_textual, '''%value%'' appears to be an IP address, but IP addresses are not allowed ' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_ELEMENT_VALIDATOR_HOSTNAME_UNKNOWN_TLD' AS constante_textual, '''%value%'' appears to be a DNS hostname but cannot match TLD against known list ' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_ELEMENT_VALIDATOR_HOSTNAME_INVALID_DASH' AS constante_textual, '''%value%'' appears to be a DNS hostname but contains a dash in an invalid position ' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_ELEMENT_VALIDATOR_HOSTNAME_INVALID_HOSTNAME_SCHEMA' AS constante_textual, '''%value%'' appears to be a DNS hostname but cannot match against hostname schema for TLD ''%tld%''' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_ELEMENT_VALIDATOR_HOSTNAME_UNDECIPHERABLE_TLD' AS constante_textual, '''%value%'' appears to be a DNS hostname but cannot extract TLD part ' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_ELEMENT_VALIDATOR_HOSTNAME_INVALID_HOSTNAME' AS constante_textual, '''%value%'' does not match the expected structure for a DNS hostname ' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_ELEMENT_VALIDATOR_HOSTNAME_INVALID_LOCAL_NAME' AS constante_textual, '''%value%'' does not appear to be a valid local network name ' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_ELEMENT_VALIDATOR_HOSTNAME_LOCAL_NAME_NOT_ALLOWED' AS constante_textual, '''%value%'' appears to be a local network name but local network names are not allowed ' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_ELEMENT_VALIDATOR_HOSTNAME_CANNOT_DECODE_PUNYCODE' AS constante_textual, '''%value%'' appears to be a DNS hostname but the given punycode notation cannot be decoded ' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_ELEMENT_VALIDATOR_INDETICAL_NOT_SAME_SENHA_CONFIRMACAO' AS constante_textual, 'The two given passwords do not match. ' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_ELEMENT_VALIDATOR_STRING_LENGTH_ERROR_MESSAGE_TOO_SHORT' AS constante_textual, 'This field can''t have less then %min% characters.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_ELEMENT_VALIDATOR_STRING_LENGTH_ERROR_MESSAGE_TOO_LONG' AS constante_textual, 'This field can''t have more then %max% characters.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_ELEMENT_VALIDATOR_NOT_EMPTY_ERROR_MESSAGE' AS constante_textual, 'This field is required and cannot be empty.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_ELEMENT_VALIDATOR_REGEX_ERROR_MESSAGE' AS constante_textual, 'The inserted value is invalid, this field must start with letters and<br> can''t have special characters, except: _ , @ e .' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_AUTENTICAR_USUARIO_AGUARDANDO_AUTENTICACAO' AS constante_textual, 'Waiting for user authentication...' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_LOGIN_CADASTRAR_USUARIO_NAO_VALIDADO_TITULO' AS constante_textual, 'New user registry:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_LOGIN_CADASTRAR_USUARIO_NAO_VALIDADO_SUBTITULO' AS constante_textual, 'Fill the fields below to start your registration process.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_LOGIN_ERRO_EMAIL_NAO_VALIDADO_EXISTENTE_NO_SISTEMA_TITULO' AS constante_textual, 'Warning!' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_LOGIN_ERRO_EMAIL_NAO_VALIDADO_EXISTENTE_NO_SISTEMA_SUBTITULO' AS constante_textual, 'A new confirmation e-mail was sent to the address provided by you.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_LOGIN_ERRO_EMAIL_NAO_VALIDADO_EXISTENTE_NO_SISTEMA_MENSAGEM' AS constante_textual, 'Access your mailbox and follow the e-mail instructions to validate your registry in our system.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_LOGIN_ERRO_EMAIL_VALIDADO_EXISTENTE_NO_SISTEMA_TITULO' AS constante_textual, 'Warning!' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_LOGIN_ERRO_EMAIL_VALIDADO_EXISTENTE_NO_SISTEMA_SUBTITULO' AS constante_textual, 'User already registered and validated on system.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_LOGIN_ERRO_EMAIL_VALIDADO_EXISTENTE_NO_SISTEMA_MENSAGEM' AS constante_textual, 'Use your credentials ou try to reset you password.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_LOGIN_SUCESSO_SALVAR_USUARIO_NAO_VALIDADO_TITULO' AS constante_textual, 'Success!' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_LOGIN_SUCESSO_SALVAR_USUARIO_NAO_VALIDADO_SUBTITULO' AS constante_textual, 'A confirmation e-mail was sent to the address provided by you.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_LOGIN_SUCESSO_SALVAR_USUARIO_NAO_VALIDADO_MENSAGEM' AS constante_textual, 'Access your mailbox and follow the e-mail instructions to validate your registry in our system.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_LOGIN_AUTENTICACAO_USUARIO_TITULO' AS constante_textual, 'User authentication' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_LOGIN_AUTENTICACAO_USUARIO_SUBTITULO' AS constante_textual, 'Fill the below data with your access credentials' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_CHECKBOX_LOGIN_MANTER_LOGADO' AS constante_textual, 'Keep me logged.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_CHECKBOX_LOGIN_MANTER_LOGADO_AJUDA' AS constante_textual, 'Mark this option if you want that the system keep you logged in.<br>Unmark this option if you are using a public/shared computer.<br>Non authorized people may use your credentials.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_LINK_PROBLEMAS_LOGON' AS constante_textual, 'Can''t access your account?' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_LINK_NOVO_USUARIO' AS constante_textual, 'Create your account now.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_NOME' AS constante_textual, 'Name:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_NOME_HINT' AS constante_textual, 'Fill this field with you complete name.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_EMAIL' AS constante_textual, 'E-mail:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_EMAIL_HINT' AS constante_textual, 'Fill this field with you e-mail address.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_RACA' AS constante_textual, 'Race:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_RACA_AJUDA' AS constante_textual, 'Select in this field your race.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_RACA_HINT' AS constante_textual, 'Select in this field your race.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ALTURA' AS constante_textual, 'Height:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ALTURA_AJUDA' AS constante_textual, 'Type your height in meters (m).' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ALTURA_HINT' AS constante_textual, 'Type your height in meters (m).' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_PESO' AS constante_textual, 'Weight:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_PESO_AJUDA' AS constante_textual, 'Type your weight in kilograms (Kg).' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_PESO_HINT' AS constante_textual, 'Type your weight in kilograms (Kg).' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_TIPO_SANGUINEO' AS constante_textual, 'Blood type:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_TIPO_SANGUINEO_AJUDA' AS constante_textual, 'Select your blood type.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_TIPO_SANGUINEO_HINT' AS constante_textual, 'Select your blood type.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_HISTORICO_MEDICO' AS constante_textual, 'Medical history:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_HISTORICO_MEDICO_AJUDA' AS constante_textual, 'Type your medical history.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_HISTORICO_MEDICO_HINT' AS constante_textual, 'Type your medical history.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'SUBFORM_TABTITLE_DADOS_PESSOAIS' AS constante_textual, 'PERSONAL INFORMATION' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'SUBFORM_TABTITLE_DADOS_PROFISSIONAIS' AS constante_textual, 'PROFESSIONAL INFORMATION' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'SUBFORM_TABTITLE_DADOS_BIOMETRICOS' AS constante_textual, 'BIOMETRIC INFORMATION' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'SUBFORM_TABTITLE_DADOS_ACADEMICOS' AS constante_textual, 'ACADEMIC INFORMATION' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'SUBFORM_TABTITLE_INFORMACOES_BANCARIAS' AS constante_textual, 'BANKING INFORMATION' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'SUBFORM_TABTITLE_DADOS_PJ' AS constante_textual, 'COMPANY/INSTITUTIONAL INFORMATION' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'SUBFORM_TABTITLE_PERFIL' AS constante_textual, 'PROFILE' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'SUBFORM_TABTITLE_CONTA' AS constante_textual, 'ACCOUNT' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'SUBFORM_TABTITLE_RESUMO' AS constante_textual, 'SUMMARY' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'MENU_ITEM_REGISTRE_SE' AS constante_textual, 'Register' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_LOGIN_SUCESSO_VALIDAR_EMAIL_TITULO' AS constante_textual, 'Email sucessfully checked!' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'LINK_FORM_CADASTRO_USUARIO_NAO_VALIDADO' AS constante_textual, 'Click here to restart your registration process.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'MSG_TOKEN_EMAIL_VALIDACAO_EXPIRADO' AS constante_textual, 'E-mail validation link expired, please restart your registration process.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'MSG_TOKEN_EMAIL_VALIDACAO_INVALIDO' AS constante_textual, 'E-mail validation link invalid, please restart your registration process.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_LOGIN_SUCESSO_VALIDAR_EMAIL_SUBTITULO' AS constante_textual, 'Cofirm and Fill this form below to continue your registration process.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_ADMIN_BD_RESET_SUCESSO' AS constante_textual, 'The database was regenerated with sucess.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_ADMIN_INDEX_TITULO' AS constante_textual, 'Adminstration Area.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_ADMIN_BD_RESET_BUTTON_LABEL' AS constante_textual, 'Reset Database' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_ADMIN_FORM_GENERATE_ALL_SYSTEM_FORMS_BUTTON_LABEL' AS constante_textual, 'Generate all system forms.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_ADMIN_FORM_REGENERATE_CHECKSUM_MODELS' AS constante_textual, 'Regenerate models checksum.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_DOCUMENTOS_IDENTIFICACAO_TITULO' AS constante_textual, 'Identity Documents:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_DOCUMENTO_TITULO' AS constante_textual, 'New document' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_LOGIN_CADASTRAR_USUARIO_VALIDADO_TITULO' AS constante_textual, 'User Registry:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_LOGIN_CADASTRAR_USUARIO_VALIDADO_SUBTITULO' AS constante_textual, 'Confirm and Fill the fields bellow to end your registration.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_NOME_USUARIO' AS constante_textual, 'Username:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_NOME_USUARIO_HINT' AS constante_textual, 'Type your username.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_LOGIN' AS constante_textual, 'Login:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_LOGIN_HINT' AS constante_textual, 'Login to use our system.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_LOGIN_AJUDA' AS constante_textual, 'Type in this field your username that will be used to indentify you in our system.<br>Example: john<br>         john@provider.com<br>         john1984<br>         john.doe123' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_DOCUMENTOS_IDENTIFICACAO' AS constante_textual, 'Identity Documents' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_SENHA' AS constante_textual, 'Password:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_SENHA_HINT' AS constante_textual, 'Password to use our system.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_SENHA_AJUDA' AS constante_textual, 'Type the password to access the system.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_SENHA_CONFIRMACAO' AS constante_textual, 'Re-type your password:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_SENHA_CONFIRMACAO_HINT' AS constante_textual, 'Re-type the password which will be used in our system.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_SENHA_CONFIRMACAO_AJUDA' AS constante_textual, 'For confirmation, re-type the password which will be used by you in our system.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_SENHA_SUGESTAO' AS constante_textual, 'Generate password' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_DATA_NASCIMENTO' AS constante_textual, 'Birth date:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_DATA_NASCIMENTO_HINT' AS constante_textual, 'Type or select your birth date.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_DATA_NASCIMENTO_AJUDA' AS constante_textual, 'Type or select your birth date.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_SEXO' AS constante_textual, 'Genre:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_SEXO_HINT' AS constante_textual, 'Select your genre.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_SEXO_AJUDA' AS constante_textual, 'Select your genre.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_NUMERO_DOCUMENTO' AS constante_textual, 'Document ID:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_NUMERO_DOCUMENTO_HINT' AS constante_textual, 'Type the document ID.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_NUMERO_DOCUMENTO_AJUDA' AS constante_textual, 'Type in this field the identity code of your document.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_BUTTON_SUBMIT' AS constante_textual, 'Send' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_BUTTON_RESET' AS constante_textual, 'Cancel' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_BUTTON_CLOSE_DIALOG' AS constante_textual, 'Close' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_VALIDATION_TITLE' AS constante_textual, 'Attention' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_VALIDATION_MESSAGE' AS constante_textual, 'Please fill all required fields before continue.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_CATEGORIA_BOLSA_CNPQ_LABEL' AS constante_textual, 'CNPQ Scholarship degree:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_CATEGORIA_BOLSA_CNPQ_FILTERING_SELECT_AJUDA' AS constante_textual, 'The filling of this field consists in choosing your CNPQ schorlarship degree.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_MAIOR_TITULACAO_LABEL' AS constante_textual, 'Highest academic degree:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_MAIOR_TITULACAO_FILTERING_SELECT_AJUDA' AS constante_textual, 'The filling of this field consists in choosing your highest academic degree.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_INSTITUICAO_QUE_CONCEDEU_LABEL' AS constante_textual, 'Institution which provided your highest academic degree.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_INSTITUICAO_QUE_CONCEDEU_FILTERING_SELECT_AJUDA' AS constante_textual, 'The filling of this field consists in choosing the institution which provided your highest academic degree.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_AREA_DE_CONHECIMENTO_LABEL' AS constante_textual, 'Area of knowledge:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_AREA_DE_CONHECIMENTO_FILTERING_SELECT_AJUDA' AS constante_textual, 'The filling of this field consists in choosing the area of knowledge of your highest academic degree.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_NOME_CURSO_LABEL' AS constante_textual, 'Name of academic course:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_NOME_CURSO_TEXT_BOX_AJUDA' AS constante_textual, 'The filling of this field consists in typing the name of the course of your highest academic degree.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_NOME_CURSO_TEXT_BOX_HINT' AS constante_textual, 'Type the name of course of your highest academic degree.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_DATA_OBTENCAO_LABEL' AS constante_textual, 'Date of achievement:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_DATA_OBTENCAO_DATE_TEXT_BOX_AJUDA' AS constante_textual, 'The filling of this field consists in typing the date of achievement of your highest academic degree.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_DATA_OBTENCAO_DATE_TEXT_BOX_HINT' AS constante_textual, 'Type the date of achievement of your highest academic degree.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_MAIOR_TITULACAO_DISPLAY_GROUP_LABEL' AS constante_textual, 'Highest academic degree' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_TITULACAO_ESPERADA_LABEL' AS constante_textual, 'Expected degree after the end of your current academic course:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_TITULACAO_ESPERADA_FILTERING_SELECT_AJUDA' AS constante_textual, 'The filling of this field consists in choosing the degree you expect after the end of the current academic course.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_INSTITUICAO_CURSO_ATUAL_LABEL' AS constante_textual, 'Institution of your current academic course:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_INSTITUICAO_CURSO_ATUAL_FILTERING_SELECT_AJUDA' AS constante_textual, 'The filling of this field consists in choosing the institution of your current academic course.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_AREA_CONHECIMENTO_CURSO_ATUAL_LABEL' AS constante_textual, 'Area of knowledge:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_AREA_CONHECIMENTO_CURSO_ATUAL_FILTERING_SELECT_AJUDA' AS constante_textual, 'The filling of this field consists in choosing the area of knowledge of your current academic course.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_NOME_CURSO_ATUAL_LABEL' AS constante_textual, 'Name of your current academic course:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_NOME_CURSO_ATUAL_TEXT_BOX_AJUDA' AS constante_textual, 'The filling of this field consists in typing the name of your current academic course.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_NOME_CURSO_ATUAL_TEXT_BOX_HINT' AS constante_textual, 'Type the name of your academic course.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_PERIODO_LABEL' AS constante_textual, 'academic period:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_PERIODO_FILTERING_SELECT_AJUDA' AS constante_textual, 'The filling of this field consists in choosing the period of your current academic course.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_CURSO_ATUAL_DISPLAY_GROUP_LABEL' AS constante_textual, 'Current academic course' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_TURNO_LABEL' AS constante_textual, 'Shift:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_COORDENACAO_POS_GRADUACAO_DISPLAY_GROUP_LABEL' AS constante_textual, 'Graduate course administration' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_TITLE_COODENACAO_POS_GRADUACAO' AS constante_textual, 'Graduate course administration' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ORIENTACOES_DISPLAY_GROUP_LABEL' AS constante_textual, 'Orientations' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_TITLE_ORIENTACOES' AS constante_textual, 'Orientations' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_TURNO_FILTERING_SELECT_AJUDA' AS constante_textual, 'The filling of this field consists in choosing the shift of your current academic course.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_TITLE_VINCULO_PROFISSIONAL' AS constante_textual, 'Professional Bond' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_TITLE_TELEFONES_PROFISSIONAIS' AS constante_textual, 'Commercial phones' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_BUTTON_ABRIR_DIALOG_NOVO_TELEFONE' AS constante_textual, 'New telephone' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_BUTTON_ABRIR_DIALOG_NOVO_EMAIL' AS constante_textual, 'New e-mail' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_BUTTON_ABRIR_DIALOG_NOVO_WEBSITE' AS constante_textual, 'New website' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_BUTTON_ABRIR_DIALOG_NOVO_ENDERECO' AS constante_textual, 'New address' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_TITLE_TELEFONE' AS constante_textual, 'Telephone' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_TITLE_EMAILS_PROFISSIONAIS' AS constante_textual, 'Professional e-mails' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_TITLE_EMAIL' AS constante_textual, 'Email' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_TITLE_WEBSITES_PROFISSIONAIS' AS constante_textual, 'Professional websites' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_TITLE_WEBSITE' AS constante_textual, 'Website' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_TITLE_ENDERECO' AS constante_textual, 'Address' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_TELEFONE_TIPO_AJUDA' AS constante_textual, 'Choose in this field the phone''s type' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_TELEFONE_TIPO' AS constante_textual, 'Phone''s type:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_TELEFONE_CODIGO_PAIS_AJUDA' AS constante_textual, 'Type in this field the telephone''s international dialing code (numeric value)<br><br>1 fo USA' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_TELEFONE_CODIGO_PAIS_HINT' AS constante_textual, 'Type the telephone''s international dialing code (numeric value)<br><br>1 for USA' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_TELEFONE_CODIGO_PAIS' AS constante_textual, 'International dialing code:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_TELEFONE_CODIGO_AREA_AJUDA' AS constante_textual, 'Type in this field the telephone''s distance dialing code (numeric value)' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_TELEFONE_CODIGO_AREA_HINT' AS constante_textual, 'Type the telephone''s distance dialing code (numeric value)' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_TELEFONE_CODIGO_AREA' AS constante_textual, 'Distance dialing code:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_TELEFONE_AJUDA' AS constante_textual, 'Type in this field the telephone'' number (numeric value)' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_TELEFONE_HINT' AS constante_textual, 'Type the telephone''s number (numeric value)' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_TELEFONE' AS constante_textual, 'Telephone''s number:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_TELEFONE_RAMAL_AJUDA' AS constante_textual, 'Type in this field the telephone''s extension number (numeric value)' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_TELEFONE_RAMAL_HINT' AS constante_textual, 'Type the telephone''s extension number (numeric value)' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_TELEFONE_RAMAL' AS constante_textual, 'Telephone''s extension:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_TELEFONE_DESCRICAO_AJUDA' AS constante_textual, 'Type in this field any information that you consider important about the telephone' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_TELEFONE_DESCRICAO' AS constante_textual, 'Description:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_EMAIL_TIPO_AJUDA' AS constante_textual, 'Choose in this field the e-mail''s type' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_EMAIL_TIPO' AS constante_textual, 'Type of e-mail:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_EMAIL_DESCRICAO_AJUDA' AS constante_textual, 'Type in this field any information that you consider important about the e-mail address' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_EMAIL_DESCRICAO' AS constante_textual, 'Description:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_WEBSITE_TIPO_AJUDA' AS constante_textual, 'Choose in this field website''s type.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_WEBSITE_TIPO' AS constante_textual, 'Website''s type:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_WEBSITE_ENDERECO_AJUDA' AS constante_textual, 'Type in this field website'' address' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_WEBSITE_ENDERECO' AS constante_textual, 'Website''s address :' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_WEBSITE_ENDERECO_HINT' AS constante_textual, 'Website''s address.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_WEBSITE_DESCRICAO_AJUDA' AS constante_textual, 'Type in this field any information that you consider important about the website address' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_WEBSITE_DESCRICAO' AS constante_textual, 'Description:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_BUTTON_ABRIR_DIALOG_NOVO_VINCULO_PROFISSIONAL' AS constante_textual, 'New professional bond' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_BUTTON_ABRIR_DIALOG_VISUALIZAR_POS_GRADUACAO' AS constante_textual, 'Display avaliable graduate programs' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_BUTTON_ABRIR_DIALOG_VISUALIZAR_ORIENTACOES' AS constante_textual, 'Display Orientations' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_BUTTON_ABRIR_DIALOG_TELEFONES_PROFISSIONAIS' AS constante_textual, 'Profissional phones #' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_BUTTON_ABRIR_DIALOG_EMAILS_PROFISSIONAIS' AS constante_textual, 'Professional e-mails' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_BUTTON_ABRIR_DIALOG_WEBSITES_PROFISSIONAIS' AS constante_textual, 'Professional websites' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_BUTTON_ABRIR_DIALOG_ENDERECOS_PROFISSIONAIS' AS constante_textual, 'Professional addresses' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_PROFISSAO_AJUDA' AS constante_textual, 'Choose in this field the profession most appropriated to the selected bond' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_PROFISSAO' AS constante_textual, 'Profession:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_VINCULO_PROFISSIONAL_AJUDA' AS constante_textual, 'Choose in this field your professional bond' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_VINCULO_PROFISSIONAL' AS constante_textual, 'Professional bond:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_PJ_VINCULO_AJUDA' AS constante_textual, 'Choose in this field the bond''s Company/Instituition (when applicable)' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_PJ_VINCULO' AS constante_textual, 'Company/Instituition of the bond:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_REGIME_TRABALHO_AJUDA' AS constante_textual, 'Choose in this field the bond''s work scheme' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_REGIME_TRABALHO' AS constante_textual, 'Work scheme:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_CARGO_AJUDA' AS constante_textual, 'Type in this field the bond''s role' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_CARGO_HINT' AS constante_textual, 'Type the role of the bond' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_CARGO' AS constante_textual, 'Role:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_FUNCAO_AJUDA' AS constante_textual, 'Type in this field the bond''s job function' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_FUNCAO_HINT' AS constante_textual, 'Type the job function' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_FUNCAO' AS constante_textual, 'Job function:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ATIVIDADES_DESENVOLVIDAS_AJUDA' AS constante_textual, 'Type in this field an description of the developed activities' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ATIVIDADES_DESENVOLVIDAS' AS constante_textual, 'Developed activities:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_DATA_ADMISSAO_AJUDA' AS constante_textual, 'Type in this field the bond''s admission date' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_DATA_ADMISSAO_HINT' AS constante_textual, 'Type the bond''s admission date (valid date)' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_DATA_ADMISSAO' AS constante_textual, 'Admission''s date:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_DATA_DESVINCULACAO_AJUDA' AS constante_textual, 'Type in this field the bond''s untying date' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_DATA_DESVINCULACAO_HINT' AS constante_textual, 'Type the bond''s untying date (valid date)' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_DATA_DESVINCULACAO' AS constante_textual, 'Date of untying:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_CARGA_HORARIA_SEMANAL_AJUDA' AS constante_textual, 'Type in this field the number of hours worked per week (whole number)' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_CARGA_HORARIA_SEMANAL_HINT' AS constante_textual, 'Type the number of hours worked per week (whole number)' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_CARGA_HORARIA_SEMANAL' AS constante_textual, 'Weekly worked hours:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_SALARIO_BRUTO_AJUDA' AS constante_textual, 'Type in this field your gross income - individual''s total personal income before taking taxes or deductions (numeric value)' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_SALARIO_BRUTO_HINT' AS constante_textual, 'Type in this field your gross income (numeric value)' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_SALARIO_BRUTO' AS constante_textual, 'Gross income (in R$):' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_DEDICACAO_EXCLUSIVA_AJUDA' AS constante_textual, 'Check this field if your bound is exclusive dedication' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_DEDICACAO_EXCLUSIVA' AS constante_textual, 'Exclusive dedication:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_OUTRAS_INFORMACOES_AJUDA' AS constante_textual, 'Type in this field other informations about yout bond' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'PERFIL_SISTEMA' AS constante_textual, 'System profile' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'PERFIL_USUARIO_NAO_VALIDADO' AS constante_textual, 'User not validated by the system' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'PERFIL_USUARIO_VALIDADO' AS constante_textual, 'User validated by the system' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_OUTRAS_INFORMACOES' AS constante_textual, 'Other informations:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_PERFIS_DISPONIVEIS_AJUDA' AS constante_textual, 'Check the profiles that you want to link in your user' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_PERFIS_VINCULADOS_DISPONIVEIS_AJUDA' AS constante_textual, 'Choose the default profile to be linked to your user' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_SENHA_ATUAL_AJUDA' AS constante_textual, 'Enter your current password in this field' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_SENHA_ATUAL' AS constante_textual, 'Current password:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_NOVA_SENHA_AJUDA' AS constante_textual, 'Enter your new password in this field' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_NOVA_SENHA' AS constante_textual, 'New password:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_CONFIRMACAO_NOVA_SENHA_AJUDA' AS constante_textual, 'Enter your new password in this field, again' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_ELEMENT_VALIDATOR_INDETICAL_NOT_SAME_NOVA_SENHA_CONFIRMACAO' AS constante_textual, 'The two given passwords do not match.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_ELEMENT_MESSAGE_SENHA_ATUAL_INVALIDA' AS constante_textual, 'The specified password does not match your current password.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_CONFIRMACAO_NOVA_SENHA' AS constante_textual, 'Repeat your new password:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_ELEMENT_HTML_TEXT_INSTRUCOES_MUDANCA_SENHA_SUBFORM_DADOS_USUARIO_CONTA' AS constante_textual, '<div id=''descricaoElementoFormulario'' style=''float: left;margin-top: 10px; margin-left: 10px; width:355px;''><b>ATTENTION!</b><br><br>The fields of the "Change password" group should only be filled if you want to change your password. If you don''t want to change your password, leave the "Current Password" field blank.</div>' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_ELEMENT_MESSAGE_DADOS_CONTA_SALVOS_COM_SUCESSO' AS constante_textual, 'Your account informations where successfully saved.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_PERFIS_DISPONIVEIS' AS constante_textual, 'Avaiable profiles:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_PERFIS_VINCULADOS_DISPONIVEIS' AS constante_textual, 'Default user profile:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_DISPLAY_GROUP_LABEL_PERFIL_VINCULADO_PADRAO' AS constante_textual, 'Default profile' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_DISPLAY_GROUP_LABEL_TROCA_DE_SENHA' AS constante_textual, 'Password change' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_DISPLAY_GROUP_LABEL_DADOS_NASCIMENTO' AS constante_textual, 'Birth data' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_DISPLAY_GROUP_LABEL_FILIACAO' AS constante_textual, 'Filiation' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_DISPLAY_GROUP_LABEL_DOCUMENTOS_PESSOAIS' AS constante_textual, 'Personal documents' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_DISPLAY_GROUP_LABEL_INFORMACOES_CONTATO' AS constante_textual, 'Contact information' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_DISPLAY_GROUP_LABEL_INFORMACOES_PESSOAIS' AS constante_textual, 'Personal information' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_DISPLAY_GROUP_LABEL_INFORMACOES_USUARIO' AS constante_textual, 'User information' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_NOME_AJUDA' AS constante_textual, 'Type your full name in this field without abreviations.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_EMAIL_AJUDA' AS constante_textual, 'Type your e-mail address in this field. Type only one (1) address without spaces.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_CAPTCHA_6' AS constante_textual, 'Please type the 6 caracters code bellow:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'DIALOG_HELP_TITLE' AS constante_textual, 'Help' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'DIALOG_FORM_RESOLVEDOR_CONFLITO_VISUALIZAR_DADOS_ATUAIS_TITLE' AS constante_textual, 'CURRENT DATA:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_SELECT_FORMULARIO' AS constante_textual, 'Form:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_SELECT_FORMULARIO_HINT' AS constante_textual, 'Select the desired form.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_CHECKBOX_MODULOS_FORMULARIO' AS constante_textual, 'Modules:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_CHECKBOX_MODULOS_FORMULARIO_HINT' AS constante_textual, 'Select the desired modules.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_GERADOR_FORMULARIO_SUCESSO_GERAR_FORMULARIO_TITULO' AS constante_textual, 'Success!' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_GERADOR_FORMULARIO_SUCESSO_GERAR_FORMULARIO_SUBTITULO' AS constante_textual, 'Form successfully generated.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_GERADOR_FORMULARIO_SUCESSO_GERAR_FORMULARIOS_SUBTITULO' AS constante_textual, 'Forms successfully generated.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_GERADOR_FORMULARIO_ERRO_FORMULARIO_NAO_GERADO_TITULO' AS constante_textual, 'Attention!' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_GERADOR_FORMULARIO_ERRO_FORMULARIO_NAO_GERADO_SUBTITULO' AS constante_textual, 'Unable to generate Form.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_GERADOR_FORMULARIO_ERRO_FORMULARIO_NAO_GERADO_MENSAGEM' AS constante_textual, 'There was a problem in trying to generate the form.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_GERADOR_FORMULARIO_TITULO' AS constante_textual, 'Generator Forms:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_GERADOR_FORMULARIO_SUBTITULO' AS constante_textual, 'Fill out the information below to begin the process of generating forms.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_PAIS_NASCIMENTO_LABEL' AS constante_textual, 'Country or region of birth.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_PAIS_NASCIMENTO_FILTERING_SELECT_AJUDA' AS constante_textual, 'Select your Country or region of birth.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_PAIS_NASCIMENTO_FILTERING_SELECT_HINT' AS constante_textual, 'Select your Country or region of birth.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ESTADO_NASCIMENTO_LABEL' AS constante_textual, 'State / Province of birth.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ESTADO_NASCIMENTO_FILTERING_SELECT_AJUDA' AS constante_textual, 'Select your State / Province of birth.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ESTADO_NASCIMENTO_FILTERING_SELECT_HINT' AS constante_textual, 'Select your State / Province of birth.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ESTADO_NASCIMENTO_TEXT_BOX_AJUDA' AS constante_textual, 'Type your State / Province of birth.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ESTADO_NASCIMENTO_TEXT_BOX_HINT' AS constante_textual, 'Type in this field your State / Province of birth.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_MUNICIPIO_NASCIMENTO_LABEL' AS constante_textual, 'City of birth.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_MUNICIPIO_NASCIMENTO_FILTERING_SELECT_AJUDA' AS constante_textual, 'Select your City of birth.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_MUNICIPIO_NASCIMENTO_FILTERING_SELECT_HINT' AS constante_textual, 'Select your City of birth.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_MUNICIPIO_NASCIMENTO_TEXT_BOX_AJUDA' AS constante_textual, 'Type your City of birth.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_MUNICIPIO_NASCIMENTO_TEXT_BOX_HINT' AS constante_textual, 'Type in this field your City of birth.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_NOME_PAI_LABEL' AS constante_textual, 'Name the father.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_NOME_PAI_TEXT_BOX_AJUDA' AS constante_textual, 'Enter the name of his father.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_NOME_PAI_TEXT_BOX_HINT' AS constante_textual, 'Enter here the name of his father.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_NOME_MAE_LABEL' AS constante_textual, 'Name the mother.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_NOME_MAE_TEXT_BOX_AJUDA' AS constante_textual, 'Enter the name of his mother.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_NOME_MAE_TEXT_BOX_HINT' AS constante_textual, 'Enter here the name of his mother.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_BUTTON_ABRIR_DIALOG_DOCUMENTOS_PESSOAIS' AS constante_textual, 'Personal documents' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_PESSOAIS_DOCUMENTOS_PESSOAIS' AS constante_textual, 'Personal documents' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_TITLE_DOCUMENTOS_PESSOAIS' AS constante_textual, 'Personal documents' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_BUTTON_ABRIR_DIALOG_TELEFONES_PESSOAIS' AS constante_textual, 'Personal phones' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_PESSOAIS_TELEFONES_PESSOAIS' AS constante_textual, 'Personal phones' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_TITLE_TELEFONES_PESSOAIS' AS constante_textual, 'Personal phones' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_BUTTON_ABRIR_DIALOG_EMAILS_PESSOAIS' AS constante_textual, 'Personal emails' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_PESSOAIS_EMAILS_PESSOAIS' AS constante_textual, 'Personal emails' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_TITLE_EMAILS_PESSOAIS' AS constante_textual, 'Personal emails' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_BUTTON_ABRIR_DIALOG_WEBSITES_PESSOAIS' AS constante_textual, 'Personal websites' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_PESSOAIS_WEBSITES_PESSOAIS' AS constante_textual, 'Personal websites' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_TITLE_WEBSITES_PESSOAIS' AS constante_textual, 'Personal websites' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_BUTTON_ABRIR_DIALOG_ENDERECOS_PESSOAIS' AS constante_textual, 'Personal address' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORMULARIO_INPUT_CADASTRO_USUARIO_DADOS_PESSOAIS_ENDERECOS_PESSOAIS' AS constante_textual, 'Personal address' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_TITLE_ENDERECOS_PESSOAIS' AS constante_textual, 'Personal address' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ENDERECO_TIPO_LABEL' AS constante_textual, 'Address Type.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ENDERECO_TIPO_FILTERING_SELECT_AJUDA' AS constante_textual, 'Select the type of address.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ENDERECO_FILTERING_SELECT_TIPO_HINT' AS constante_textual, 'Select in this field the type of address.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ENDERECO_PAIS_LABEL' AS constante_textual, 'País:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ENDERECO_PAIS_FILTERING_SELECT_AJUDA' AS constante_textual, 'Select the country of the address.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ENDERECO_PAIS_FILTERING_SELECT_HINT' AS constante_textual, 'Select the country of the address.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ENDERECO_ESTADO_LABEL' AS constante_textual, 'Uf:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ENDERECO_ESTADO_FILTERING_SELECT_AJUDA' AS constante_textual, 'Select the State / Province of the address.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ENDERECO_ESTADO_FILTERING_SELECT_HINT' AS constante_textual, 'Select the State / Province of the address.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ENDERECO_ESTADO_TEXT_BOX_AJUDA' AS constante_textual, 'Type the State / Province of the address.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ENDERECO_ESTADO_TEXT_BOX_HINT' AS constante_textual, 'Type the State / Province of the address.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ENDERECO_MUNICIPIO_LABEL' AS constante_textual, 'City:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ENDERECO_MUNICIPIO_FILTERING_SELECT_AJUDA' AS constante_textual, 'Select the City of the address.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ENDERECO_MUNICIPIO_FILTERING_SELECT_HINT' AS constante_textual, 'Select the City of the address.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ENDERECO_MUNICIPIO_TEXT_BOX_AJUDA' AS constante_textual, 'Type the City of the address.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ENDERECO_MUNICIPIO_TEXT_BOX_HINT' AS constante_textual, 'Type the City of the address.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ENDERECO_CEP_LABEL' AS constante_textual, 'Zip code.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ENDERECO_CEP_TEXT_BOX_AJUDA' AS constante_textual, 'Type the Zip code .' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ENDERECO_CEP_TEXT_BOX_HINT' AS constante_textual, 'Type in this field the Zip code.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ENDERECO_LOGRADOURO_LABEL' AS constante_textual, 'Street.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ENDERECO_LOGRADOURO_TEXT_BOX_AJUDA' AS constante_textual, 'Type the street.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ENDERECO_LOGRADOURO_TEXT_BOX_HINT' AS constante_textual, 'Type in this field the street.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ENDERECO_NUMERO_LABEL' AS constante_textual, 'Number:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ENDERECO_NUMERO_TEXT_BOX_AJUDA' AS constante_textual, 'Type the number.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ENDERECO_NUMERO_TEXT_BOX_HINT' AS constante_textual, 'Type in this field the number.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ENDERECO_COMPLEMENTO_LABEL' AS constante_textual, 'Completion:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ENDERECO_COMPLEMENTO_TEXT_BOX_AJUDA' AS constante_textual, 'Type the completion.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_ENDERECO_COMPLEMENTO_TEXT_BOX_HINT' AS constante_textual, 'Type in this field the completion.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'SUBFORM_TABTITLE_INFORMACOES_BANCARIAS_DADOS_BANCARIOS' AS constante_textual, 'DATA BANK' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_TITLE_CONTAS_BANCARIAS' AS constante_textual, 'BANK ACCOUNTS' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_TITLE_CONTA_BANCARIA' AS constante_textual, 'Bank Account' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_BUTTON_ABRIR_DIALOG_CONTAS_BANCARIAS' AS constante_textual, 'Bank Accounts' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_BUTTON_ABRIR_DIALOG_NOVO_CONTA_BANCARIA' AS constante_textual, 'New bank Accounts' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'SUBFORM_TABTITLE_INFORMACOES_BANCARIAS_MOVIMENTACAO_FINANCEIRA' AS constante_textual, 'FINANCIAL TRANSACTIONS' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_CONTA_BANCARIA_NUMERO_BANCO_LABEL' AS constante_textual, 'Bank Number:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_CONTA_BANCARIA_NUMERO_BANCO_TEXT_BOX_AJUDA' AS constante_textual, 'Enter the bank number.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_CONTA_BANCARIA_NUMERO_BANCO_TEXT_BOX_HINT' AS constante_textual, 'Enter here the number of the bank.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_CONTA_BANCARIA_BANCO_LABEL' AS constante_textual, 'Bank:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_CONTA_BANCARIA_BANCO_FILTERING_SELECT_AJUDA' AS constante_textual, 'Select the bank.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_CONTA_BANCARIA_BANCO_FILTERING_SELECT_HINT' AS constante_textual, 'Select the bank.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_CONTA_BANCARIA_AGENCIA_LABEL' AS constante_textual, 'Agency:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_CONTA_BANCARIA_AGENCIA_TEXT_BOX_AJUDA' AS constante_textual, 'Enter the number of the agency.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_CONTA_BANCARIA_AGENCIA_TEXT_BOX_HINT' AS constante_textual, 'Enter here the number of the agency.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_CONTA_BANCARIA_TIPO_CONTA_LABEL' AS constante_textual, 'Type of account.:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_CONTA_BANCARIA_TIPO_CONTA_FILTERING_SELECT_AJUDA' AS constante_textual, 'Select Account Type.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_CONTA_BANCARIA_TIPO_CONTA_FILTERING_SELECT_HINT' AS constante_textual, 'Select Account Type.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_CONTA_BANCARIA_NUMERO_CONTA_LABEL' AS constante_textual, 'Account number:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_CONTA_BANCARIA_NUMERO_CONTA_TEXT_BOX_AJUDA' AS constante_textual, 'Enter the account number.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_CONTA_BANCARIA_NUMERO_CONTA_TEXT_BOX_HINT' AS constante_textual, 'Enter here the account number.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_CONTA_BANCARIA_DESCRICAO_IDENTIFICACAO_CONTA_LABEL' AS constante_textual, 'Description for identification:' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_CONTA_BANCARIA_DESCRICAO_IDENTIFICACAO_CONTA_TEXT_BOX_AJUDA' AS constante_textual, 'Enter a description for identification.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'FORM_FIELD_CONTA_BANCARIA_DESCRICAO_IDENTIFICACAO_CONTA_TEXT_BOX_HINT' AS constante_textual, 'Enter here the description for identification.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_AFEGANISTAO' AS constante_textual, 'Afghanistan' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ALBANIA' AS constante_textual, 'Albania' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ANTARTIDA' AS constante_textual, 'Antarctica' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ARGELIA' AS constante_textual, 'Algeria' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_SAMOA_AMERICANA' AS constante_textual, 'American Samoa' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ANDORRA' AS constante_textual, 'Andorra' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ANGOLA' AS constante_textual, 'Angola' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ANTIGUA_E_BARBUDA' AS constante_textual, 'Antigua and Barbuda' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_AZERBAIJAO' AS constante_textual, 'Azerbaijan' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ARGENTINA' AS constante_textual, 'Argentina' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_AUSTRALIA' AS constante_textual, 'Australia' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_AUSTRIA' AS constante_textual, 'Austria' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_BAHAMAS' AS constante_textual, 'Bahamas' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_BAHREIN' AS constante_textual, 'Bahrain' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_BANGLADESH' AS constante_textual, 'Bangladesh' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ARMENIA' AS constante_textual, 'Armenia' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_BARBADOS' AS constante_textual, 'Barbados' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_BELGICA' AS constante_textual, 'Belgium' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_BERMUDA' AS constante_textual, 'Bermuda' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_BUTAO' AS constante_textual, 'Bhutan' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_BOLIVIA' AS constante_textual, 'Bolivia' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_BOSNIA-HERZEGOVINA' AS constante_textual, 'Bosnia and Herzegovina' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_BOTSUANA' AS constante_textual, 'Botswana' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ILHA_BOUVET' AS constante_textual, 'Bouvet Island' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_BRASIL' AS constante_textual, 'Brazil' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_BELIZE' AS constante_textual, 'Belize' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_TERRITORIO_BRITANICO_DO_OCEANO_INDICO' AS constante_textual, 'British Indian Ocean Territory' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ILHAS_SALOMAO' AS constante_textual, 'Solomon Islands' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ILHAS_VIRGENS_BRITANICAS' AS constante_textual, 'Virgin Islands, British' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_BRUNEI' AS constante_textual, 'Brunei Darussalam' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_BULGARIA' AS constante_textual, 'Bulgaria' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_MYANMAR_ANTIGA_BIRMANIA' AS constante_textual, 'Myanmar' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_BURUNDI' AS constante_textual, 'Burundi' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_BIELO-RUSSIA' AS constante_textual, 'Belarus' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_CAMBOJA' AS constante_textual, 'Cambodia' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_CAMAROES' AS constante_textual, 'Cameroon' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_CANADA' AS constante_textual, 'Canada' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_CABO_VERDE' AS constante_textual, 'Cape Verde' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ILHAS_CAYMAN' AS constante_textual, 'Cayman Islands' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_REPUBLICA_CENTRO-AFRICANA' AS constante_textual, 'Central African Republic' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_SRI_LANKA' AS constante_textual, 'Sri Lanka' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_CHADE' AS constante_textual, 'Chad' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_CHILE' AS constante_textual, 'Chile' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_CHINA' AS constante_textual, 'China' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_TAIWAN' AS constante_textual, 'Taiwan, Province of China' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ILHA_CHRISTMAS' AS constante_textual, 'Christmas Island' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ILHAS_COCOS' AS constante_textual, 'Cocos (Keeling) Islands' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_COLOMBIA' AS constante_textual, 'Colombia' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_COMORES' AS constante_textual, 'Comoros' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_MAYOTTE' AS constante_textual, 'Mayotte' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_REPUBLICA_DO_CONGO' AS constante_textual, 'Congo' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_REPUBLICA_DEMOCRATICA_DO_CONGO' AS constante_textual, 'Congo, Democratic Republic of the' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ILHAS_COOK' AS constante_textual, 'Cook Islands' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_COSTA_RICA' AS constante_textual, 'Costa Rica' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_CROACIA' AS constante_textual, 'Croatia' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_CUBA' AS constante_textual, 'Cuba' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_CHIPRE' AS constante_textual, 'Cyprus' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_REPUBLICA_TCHECA' AS constante_textual, 'Czech Republic' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_BENIN' AS constante_textual, 'Benin' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_DINAMARCA' AS constante_textual, 'Denmark' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_DOMINICA' AS constante_textual, 'Dominica' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_REPUBLICA_DOMINICANA' AS constante_textual, 'Dominican Republic' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_EQUADOR' AS constante_textual, 'Ecuador' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_EL_SALVADOR' AS constante_textual, 'El Salvador' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_GUINE_EQUATORIAL' AS constante_textual, 'Equatorial Guinea' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ETIOPIA' AS constante_textual, 'Ethiopia' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ERITREIA' AS constante_textual, 'Eritrea' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ESTONIA' AS constante_textual, 'Estonia' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ILHAS_FAROE' AS constante_textual, 'Faroe Islands' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ILHAS_MALVINAS' AS constante_textual, 'Falkland Islands (Malvinas)' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ILHAS_GEORGIA_DO_SUL_E_SANDWICH_DO_SUL' AS constante_textual, 'South Georgia and the South Sandwich Islands' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_FIJI' AS constante_textual, 'Fiji' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_FINLANDIA' AS constante_textual, 'Finland' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ALAND' AS constante_textual, 'Åland Islands' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_FRANCA' AS constante_textual, 'France' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_GUIANA_FRANCESA' AS constante_textual, 'French Guiana' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_POLINESIA_FRANCESA' AS constante_textual, 'French Polynesia' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_TERRAS_AUSTRAIS_E_ANTARTICAS_FRANCESAS_TAAF' AS constante_textual, 'French Southern Territories' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_DJIBUTI' AS constante_textual, 'Djibouti' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_GABAO' AS constante_textual, 'Gabon' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_GEORGIA' AS constante_textual, 'Georgia' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_GAMBIA' AS constante_textual, 'Gambia' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_PALESTINA' AS constante_textual, 'Palestinian Territory, Occupied' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ALEMANHA' AS constante_textual, 'Germany' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_GANA' AS constante_textual, 'Ghana' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_GIBRALTAR' AS constante_textual, 'Gibraltar' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_KIRIBATI' AS constante_textual, 'Kiribati' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_GRECIA_' AS constante_textual, 'Greece' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_GRONELANDIA' AS constante_textual, 'Greenland' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_GRENADA' AS constante_textual, 'Grenada' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_GUADALUPE' AS constante_textual, 'Guadeloupe[1]' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_GUAM' AS constante_textual, 'Guam' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_GUATEMALA' AS constante_textual, 'Guatemala' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_GUINE-CONACRI' AS constante_textual, 'Guinea' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_GUIANA' AS constante_textual, 'Guyana' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_HAITI' AS constante_textual, 'Haiti' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ILHA_HEARD_E_ILHAS_MCDONALD' AS constante_textual, 'Heard Island and McDonald Islands' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_VATICANO' AS constante_textual, 'Holy See (Vatican City State)' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_HONDURAS' AS constante_textual, 'Honduras' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_HONG_KONG' AS constante_textual, 'Hong Kong' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_HUNGRIA' AS constante_textual, 'Hungary' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ISLANDIA' AS constante_textual, 'Iceland' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_INDIA' AS constante_textual, 'India' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_INDONESIA' AS constante_textual, 'Indonesia' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_IRA' AS constante_textual, 'Iran, Islamic Republic of' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_IRAQUE' AS constante_textual, 'Iraq' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_IRLANDA' AS constante_textual, 'Ireland' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ISRAEL' AS constante_textual, 'Israel' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ITALIA' AS constante_textual, 'Italy' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_COSTA_DO_MARFIM' AS constante_textual, 'Côte d''Ivoire' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_JAMAICA' AS constante_textual, 'Jamaica' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_JAPAO' AS constante_textual, 'Japan' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_CAZAQUISTAO' AS constante_textual, 'Kazakhstan' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_JORDANIA' AS constante_textual, 'Jordan' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_QUENIA' AS constante_textual, 'Kenya' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_COREIA_DO_NORTE' AS constante_textual, 'Korea, Democratic People''s Republic of' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_COREIA_DO_SUL' AS constante_textual, 'Korea, Republic of' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_KUWAIT' AS constante_textual, 'Kuwait' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_QUIRGUISTAO' AS constante_textual, 'Kyrgyzstan' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_LAOS' AS constante_textual, 'Lao People''s Democratic Republic' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_LIBANO' AS constante_textual, 'Lebanon' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_LESOTO' AS constante_textual, 'Lesotho' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_LETONIA' AS constante_textual, 'Latvia' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_LIBERIA' AS constante_textual, 'Liberia' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_LIBIA' AS constante_textual, 'Libyan Arab Jamahiriya' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_LIECHTENSTEIN' AS constante_textual, 'Liechtenstein' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_LITUANIA' AS constante_textual, 'Lithuania' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_LUXEMBURGO' AS constante_textual, 'Luxembourg' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_MACAU' AS constante_textual, 'Macao' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_MADAGASCAR' AS constante_textual, 'Madagascar' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_MALAWI' AS constante_textual, 'Malawi' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_MALASIA' AS constante_textual, 'Malaysia' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_MALDIVAS' AS constante_textual, 'Maldives' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_MALI' AS constante_textual, 'Mali' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_MALTA' AS constante_textual, 'Malta' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_MARTINICA' AS constante_textual, 'Martinique' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_MAURITANIA' AS constante_textual, 'Mauritania' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_MAURICIA' AS constante_textual, 'Mauritius' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_MEXICO' AS constante_textual, 'Mexico' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_MONACO' AS constante_textual, 'Monaco' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_MONGOLIA' AS constante_textual, 'Mongolia' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_MOLDAVIA' AS constante_textual, 'Moldova, Republic of' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_MONTENEGRO' AS constante_textual, 'Montenegro' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_MONTSERRAT' AS constante_textual, 'Montserrat' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_MARROCOS' AS constante_textual, 'Morocco' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_MOCAMBIQUE' AS constante_textual, 'Mozambique' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_OMA' AS constante_textual, 'Oman' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_NAMIBIA' AS constante_textual, 'Namibia' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_NAURU' AS constante_textual, 'Nauru' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_NEPAL' AS constante_textual, 'Nepal' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_PAISES_BAIXOS_HOLANDA' AS constante_textual, 'Netherlands' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ANTILHAS_HOLANDESAS' AS constante_textual, 'Netherlands Antilles' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ARUBA' AS constante_textual, 'Aruba' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_NOVA_CALEDONIA' AS constante_textual, 'New Caledonia' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_VANUATU' AS constante_textual, 'Vanuatu' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_NOVA_ZELANDIA_AOTEAROA' AS constante_textual, 'New Zealand' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_NICARAGUA' AS constante_textual, 'Nicaragua' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_NIGER' AS constante_textual, 'Niger' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_NIGERIA' AS constante_textual, 'Nigeria' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_NIUE' AS constante_textual, 'Niue' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ILHA_NORFOLK' AS constante_textual, 'Norfolk Island' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_NORUEGA' AS constante_textual, 'Norway' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_MARIANAS_SETENTRIONAIS' AS constante_textual, 'Northern Mariana Islands' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ILHAS_MENORES_DISTANTES_DOS_ESTADOS_UNIDOS' AS constante_textual, 'United States Minor Outlying Islands' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ESTADOS_FEDERADOS_DA_MICRONESIA' AS constante_textual, 'Micronesia, Federated States of' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ILHAS_MARSHALL' AS constante_textual, 'Marshall Islands' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_PALAU' AS constante_textual, 'Palau' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_PAQUISTAO' AS constante_textual, 'Pakistan' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_PANAMA' AS constante_textual, 'Panama' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_PAPUA-NOVA_GUINE' AS constante_textual, 'Papua New Guinea' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_PARAGUAI' AS constante_textual, 'Paraguay' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_PERU' AS constante_textual, 'Peru' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_FILIPINAS' AS constante_textual, 'Philippines' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_PITCAIRN' AS constante_textual, 'Pitcairn' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_POLONIA' AS constante_textual, 'Poland' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_PORTUGAL' AS constante_textual, 'Portugal' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_GUINE-BISSAU' AS constante_textual, 'Guinea-Bissau' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_TIMOR-LESTE' AS constante_textual, 'Timor-Leste' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_PORTO_RICO' AS constante_textual, 'Puerto Rico' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_QATAR' AS constante_textual, 'Qatar' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_REUNIAO' AS constante_textual, 'Réunion' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ROMENIA' AS constante_textual, 'Romania' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_RUANDA' AS constante_textual, 'Rwanda' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_SANTA_HELENA' AS constante_textual, 'Saint Helena' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_SAO_CRISTOVAO_E_NEVIS' AS constante_textual, 'Saint Kitts and Nevis' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ANGUILA' AS constante_textual, 'Anguilla' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_SANTA_LUCIA' AS constante_textual, 'Saint Lucia' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_SAO_PEDRO_E_MIQUELON' AS constante_textual, 'Saint Pierre and Miquelon' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_SAO_VICENTE_E_GRANADINAS' AS constante_textual, 'Saint Vincent and the Grenadines' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_SAO_MARINO' AS constante_textual, 'San Marino' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_SAO_TOME_E_PRINCIPE' AS constante_textual, 'Sao Tome and Principe' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ARABIA_SAUDITA' AS constante_textual, 'Saudi Arabia' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_SENEGAL' AS constante_textual, 'Senegal' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_SERVIA' AS constante_textual, 'Serbia' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_SEYCHELLES' AS constante_textual, 'Seychelles' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_SERRA_LEOA' AS constante_textual, 'Sierra Leone' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_SINGAPURA' AS constante_textual, 'Singapore' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ESLOVAQUIA' AS constante_textual, 'Slovakia' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_VIETNAME' AS constante_textual, 'Viet Nam' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ESLOVENIA' AS constante_textual, 'Slovenia' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_SOMALIA' AS constante_textual, 'Somalia' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_AFRICA_DO_SUL' AS constante_textual, 'South Africa' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ZIMBABUE' AS constante_textual, 'Zimbabwe' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ESPANHA' AS constante_textual, 'Spain' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_SAARA_OCIDENTAL' AS constante_textual, 'Western Sahara' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_SUDAO' AS constante_textual, 'Sudan' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_SURINAME' AS constante_textual, 'Suriname' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_SVALBARD_E_JAN_MAYEN' AS constante_textual, 'Svalbard and Jan Mayen' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_SUAZILANDIA' AS constante_textual, 'Swaziland' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_SUECIA' AS constante_textual, 'Sweden' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_SUICA' AS constante_textual, 'Switzerland' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_SIRIA' AS constante_textual, 'Syrian Arab Republic' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_TAJIQUISTAO' AS constante_textual, 'Tajikistan' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_TAILANDIA' AS constante_textual, 'Thailand' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_TOGO' AS constante_textual, 'Togo' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_TOQUELAU' AS constante_textual, 'Tokelau' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_TONGA' AS constante_textual, 'Tonga' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_TRINDADE_E_TOBAGO' AS constante_textual, 'Trinidad and Tobago' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_EMIRATOS_ARABES_UNIDOS' AS constante_textual, 'United Arab Emirates' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_TUNISIA' AS constante_textual, 'Tunisia' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_TURQUIA' AS constante_textual, 'Turkey' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_TURQUEMENISTAO' AS constante_textual, 'Turkmenistan' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_TURCAS_E_CAICOS' AS constante_textual, 'Turks and Caicos Islands' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_TUVALU' AS constante_textual, 'Tuvalu' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_UGANDA' AS constante_textual, 'Uganda' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_UCRANIA' AS constante_textual, 'Ukraine' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_REPUBLICA_DA_MACEDONIA' AS constante_textual, 'Macedonia, the former Yugoslav Republic of' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_EGITO' AS constante_textual, 'Egypt' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_REINO_UNIDO' AS constante_textual, 'United Kingdom' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_GUERNSEY' AS constante_textual, 'Guernsey' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_JERSEY' AS constante_textual, 'Jersey' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ILHA_DO_HOMEM' AS constante_textual, 'Isle of Man' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_TANZANIA' AS constante_textual, 'Tanzania, United Republic of' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ESTADOS_UNIDOS_DA_AMERICA' AS constante_textual, 'United States' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ILHAS_VIRGENS_AMERICANAS' AS constante_textual, 'Virgin Islands, U.S.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_BURKINA_FASO' AS constante_textual, 'Burkina Faso' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_URUGUAI' AS constante_textual, 'Uruguay' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_UZBEQUISTAO' AS constante_textual, 'Uzbekistan' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_VENEZUELA' AS constante_textual, 'Venezuela' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_WALLIS_E_FUTUNA' AS constante_textual, 'Wallis and Futuna' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_SAMOA_SAMOA_OCIDENTAL' AS constante_textual, 'Samoa' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_IEMEN' AS constante_textual, 'Yemen' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_SERVIA_E_MONTENEGRO' AS constante_textual, 'Servia and Montenegro' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'NOME_PAIS_ZAMBIA' AS constante_textual, 'Zambia' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'MENSAGEM_ALERTA_PROBLEMAS_LOGIN_SENHA_INCORRETA' AS constante_textual, 'access attempts with the wrong password.' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'MENSAGEM_ALERTA_PROBLEMAS_LOGIN_IP_DIFERENETE_IP_ATUAL' AS constante_textual, 
'The current IP address differs from the IP address used at logon time.

At authentication time of your account, your access has been achieved
through a network address (@ IPLogon) other than the current network
address (@ IPAtual).
This represents a possible unauthorized attempt to access the system.

Specifically, in this case, it is not a simultaneous access to your
account, through your login and password.

If you lost your connection and made a new network access, please try to
logon again. Otherwise, you may be a victim of a malicious action
attempt.

If you have questions about this issue, please visit the documentation 
online(@linkDocumentacaoOnline) or contact our support(@emailSuporte).' AS traducao, true AS ativo, 'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_CONTROLE_ACESSO_ACAO_DESATIVADA_TITULO' AS constante_textual, 'Ação desativada!' AS traducao, true AS ativo,  'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_CONTROLE_ACESSO_ACAO_DESATIVADA_SUBTITULO' AS constante_textual, 'Esta ação foi desativada pelo administrador do sistema.' AS traducao, true AS ativo,  'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_CONTROLE_ACESSO_ACAO_DESATIVADA_MENSAGEM' AS constante_textual, 'Caso deseje, clique @link para voltar a página que estava antes de tentar executar esta operação.' AS traducao, true AS ativo,  'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_CONTROLE_ACESSO_ACAO_NAO_PERMITIDA_TITULO' AS constante_textual, 'Problemas de permissão!' AS traducao, true AS ativo,  'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_CONTROLE_ACESSO_ACAO_NAO_PERMITIDA_SUBTITULO' AS constante_textual, 'Esta ação requer um perfil não vinculado a seu usuário.' AS traducao, true AS ativo,  'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_CONTROLE_ACESSO_ACAO_NAO_PERMITIDA_MENSAGEM' AS constante_textual, 'Caso deseje, clique @link para voltar a página que estava antes de tentar executar esta operação.' AS traducao, true AS ativo,  'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_CONTROLE_ACESSO_METODO_VALIDACAO_FALHOU_TITULO' AS constante_textual, 'Problemas de permissão!' AS traducao, true AS ativo,  'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_CONTROLE_ACESSO_METODO_VALIDACAO_FALHOU_SUBTITULO' AS constante_textual, 'Esta ação não pode ser executada pois existe uma regra que impede sua execução.' AS traducao, true AS ativo,  'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_CONTROLE_ACESSO_METODO_VALIDACAO_FALHOU_MENSAGEM' AS constante_textual, 'Caso deseje, clique @link para voltar a página que estava antes de tentar executar esta operação.' AS traducao, true AS ativo,  'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_CONTROLE_ACESSO_IP_USUARIO_DIFERENTE_IP_USUARIO_AUTENTICADO_SESSAO_TITULO' AS constante_textual, 'Problemas com seu endereço IP!' AS traducao, true AS ativo,  'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_CONTROLE_ACESSO_IP_USUARIO_DIFERENTE_IP_USUARIO_AUTENTICADO_SESSAO_SUBTITULO' AS constante_textual, 'Seu atual endereço IP difere do endereço IP registrado durante seu processo de logon.' AS traducao, true AS ativo,  'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_CONTROLE_ACESSO_IP_USUARIO_DIFERENTE_IP_USUARIO_AUTENTICADO_SESSAO_MENSAGEM' AS constante_textual, 'Este problema ocorre quando o usuário troca de rede/endereço IP após estar autenticado no sistema.<br>Efetue logout e login para resolver esta situação.' AS traducao, true AS ativo,  'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_CONTROLE_ACESSO_HOST_BANIDO_TITULO' AS constante_textual, 'Host banido!' AS traducao, true AS ativo,  'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_CONTROLE_ACESSO_HOST_BANIDO_SUBTITULO' AS constante_textual, 'Seu atual endereço IP esta banido em nosso sistema.' AS traducao, true AS ativo,  'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_CONTROLE_ACESSO_HOST_BANIDO_MENSAGEM' AS constante_textual, 'Entre em contato com o suporte para tentar desbanir seu host.' AS traducao, true AS ativo,  'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'DIALOG_DIV_CONTAINER_ERROR_TITLE_SESSAO_EXPIRADA' AS constante_textual, 'Sessão expirada.' AS traducao, true AS ativo,  'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'DIALOG_DIV_CONTAINER_ERROR_MSG_SESSAO_EXPIRADA' AS constante_textual, 'Por motivos de seguranca,<br>sua sessão foi encerrada.<br><br>Por favor,<br>logue novamente.' AS traducao, true AS ativo,  'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'PERFIL_USUARIO_PUBLICO' AS constante_textual, 'Público' AS traducao, true AS ativo,  'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'PERFIL_USUARIO_ADMINISTRADOR' AS constante_textual, 'Administrador do sistema' AS traducao, true AS ativo,  'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'PERFIL_USUARIO_DESENVOLVEDOR' AS constante_textual, 'Desenvolvedor do sistema' AS traducao, true AS ativo,  'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'PERFIL_USUARIO_PUBLICO_DESCRICAO' AS constante_textual, 'Perfil público.' AS traducao, true AS ativo,  'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'PERFIL_USUARIO_ADMINISTRADOR_DESCRICAO' AS constante_textual, 'Perfil de administrador do sistema.' AS traducao, true AS ativo,  'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'PERFIL_USUARIO_DESENVOLVEDOR_DESCRICAO' AS constante_textual, 'Perfil de desenvolvedor do sistema.' AS traducao, true AS ativo,  'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'PERFIL_SISTEMA_DESCRICAO' AS constante_textual, 'Perfil do sistema .' AS traducao, true AS ativo,  'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'PERFIL_USUARIO_NAO_VALIDADO_DESCRICAO' AS constante_textual, 'Perfil de usuário não validado no sistema.' AS traducao, true AS ativo,  'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'PERFIL_USUARIO_VALIDADO_DESCRICAO' AS constante_textual, 'Perfil de usuário validado no sistema.' AS traducao, true AS ativo,  'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';


INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_CONTROLE_ACESSO_ACAO_DESATIVADA_TITULO' AS constante_textual, 'Action desabled!' AS traducao, true AS ativo,  'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_CONTROLE_ACESSO_ACAO_DESATIVADA_SUBTITULO' AS constante_textual, 'This action has been disabled by system administrator.' AS traducao, true AS ativo,  'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_CONTROLE_ACESSO_ACAO_DESATIVADA_MENSAGEM' AS constante_textual, 'If desired, click @link to go back to the page that you was before trying to run this operation.' AS traducao, true AS ativo,  'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_CONTROLE_ACESSO_ACAO_NAO_PERMITIDA_TITULO' AS constante_textual, 'Permission problems!' AS traducao, true AS ativo,  'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_CONTROLE_ACESSO_ACAO_NAO_PERMITIDA_SUBTITULO' AS constante_textual, 'This action requires a profile not linked to your user.' AS traducao, true AS ativo,  'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_CONTROLE_ACESSO_ACAO_NAO_PERMITIDA_MENSAGEM' AS constante_textual, 'If desired, click @link to go back to the page that you was before trying to run this operation.' AS traducao, true AS ativo,  'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_CONTROLE_ACESSO_METODO_VALIDACAO_FALHOU_TITULO' AS constante_textual, 'Permission problems!' AS traducao, true AS ativo,  'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_CONTROLE_ACESSO_METODO_VALIDACAO_FALHOU_SUBTITULO' AS constante_textual, 'This action cannot be performed because there''s a rule that prevents it''s execution.' AS traducao, true AS ativo,  'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_CONTROLE_ACESSO_METODO_VALIDACAO_FALHOU_MENSAGEM' AS constante_textual, 'If desired, click @link to go back to the page that you was before trying to run this operation.' AS traducao, true AS ativo,  'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_CONTROLE_ACESSO_IP_USUARIO_DIFERENTE_IP_USUARIO_AUTENTICADO_SESSAO_TITULO' AS constante_textual, 'Problems with your IP address!' AS traducao, true AS ativo,  'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_CONTROLE_ACESSO_IP_USUARIO_DIFERENTE_IP_USUARIO_AUTENTICADO_SESSAO_SUBTITULO' AS constante_textual, 'Your current IP address differs from the registered IP address for your login process.' AS traducao, true AS ativo,  'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_CONTROLE_ACESSO_IP_USUARIO_DIFERENTE_IP_USUARIO_AUTENTICADO_SESSAO_MENSAGEM' AS constante_textual, 'This problem occurs when the user change the network / IP address after being authenticated to the the system.<br>Logout and login to resolve this situation.' AS traducao, true AS ativo,  'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_CONTROLE_ACESSO_HOST_BANIDO_TITULO' AS constante_textual, 'Host banned!' AS traducao, true AS ativo,  'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_CONTROLE_ACESSO_HOST_BANIDO_SUBTITULO' AS constante_textual, 'Your current IP address is banned in our system.' AS traducao, true AS ativo,  'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'VIEW_CONTROLE_ACESSO_HOST_BANIDO_MENSAGEM' AS constante_textual, 'Please contact our support to try to unban your host.' AS traducao, true AS ativo,  'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'DIALOG_DIV_CONTAINER_ERROR_TITLE_SESSAO_EXPIRADA' AS constante_textual, 'Session expired.' AS traducao, true AS ativo,  'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'DIALOG_DIV_CONTAINER_ERROR_MSG_SESSAO_EXPIRADA' AS constante_textual, 'For security reasons,<br>your session has been<br>terminated.<br><br>Please, log again.' AS traducao, true AS ativo,  'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'PERFIL_USUARIO_PUBLICO' AS constante_textual, 'Public' AS traducao, true AS ativo,  'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'PERFIL_USUARIO_ADMINISTRADOR' AS constante_textual, 'System administrator' AS traducao, true AS ativo,  'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'PERFIL_USUARIO_DESENVOLVEDOR' AS constante_textual, 'System developer' AS traducao, true AS ativo,  'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'PERFIL_USUARIO_PUBLICO_DESCRICAO' AS constante_textual, 'Public profile.' AS traducao, true AS ativo,  'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'PERFIL_USUARIO_ADMINISTRADOR_DESCRICAO' AS constante_textual, 'Profile of the system administrator.' AS traducao, true AS ativo,  'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'PERFIL_USUARIO_DESENVOLVEDOR_DESCRICAO' AS constante_textual, 'Profile of the system developer.' AS traducao, true AS ativo,  'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'PERFIL_SISTEMA_DESCRICAO' AS constante_textual, 'System profile.' AS traducao, true AS ativo,  'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'PERFIL_USUARIO_NAO_VALIDADO_DESCRICAO' AS constante_textual, 'User profile not validated in the system.' AS traducao, true AS ativo,  'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao (id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id, 'PERFIL_USUARIO_VALIDADO_DESCRICAO' AS constante_textual, 'User profile validated in the system.' AS traducao, true AS ativo,  'SYSTEM STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';
