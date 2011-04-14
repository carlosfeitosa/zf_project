/**
* SCRIPT DE POPULACAO DA TABELA AJUDA
* 
* versao: 1.0 (POSTGRESQL 8.4.1)
* por: CARLOS FEITOSA (carlos.feitosa@rochedoproject.com)
* criacao: 21/10/2010
* ultimas modificacoes:
* 								03/11/2010 - criacao das ajudas para o formulario FORM_DIALOG_TELEFONE;
* 								16/11/2010 - criacao das ajudas para o formulario FORM_DIALOG_EMAIL;
* 
*/

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_FIELD_HISTORICO_MEDICO_TEXT_AREA' AS nome, 'Texto de ajuda para o campo historico medico.' AS descricao,
       'FORM_FIELD_HISTORICO_MEDICO_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_FIELD_TIPO_SANGUINEO_FILTERING_SELECT' AS nome, 'Texto de ajuda para o campo tipo sanguíneo.' AS descricao,
       'FORM_FIELD_TIPO_SANGUINEO_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_FIELD_PESO_TEXT_BOX' AS nome, 'Texto de ajuda para o campo peso.' AS descricao,
       'FORM_FIELD_PESO_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_FIELD_ALTURA_TEXT_BOX' AS nome, 'Texto de ajuda para o campo altura.' AS descricao,
       'FORM_FIELD_ALTURA_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_FIELD_RACA_FILTERING_SELECT' AS nome, 'Texto de ajuda para o campo raça.' AS descricao,
       'FORM_FIELD_RACA_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_FIELD_SEXO_RADIO_BUTTON' AS nome, 'Texto de ajuda para o campo sexo do cadastro de usuários validados.' AS descricao,
       'FORM_FIELD_SEXO_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_FIELD_SENHA_CONFIRMACAO_TEXT_BOX' AS nome, 'Texto de ajuda para o campo senhaConfirmacao do cadastro de usuários validados.' AS descricao,
       'FORM_FIELD_SENHA_CONFIRMACAO_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_FIELD_DATA_NASCIMENTO_DATE_TEXT_BOX' AS nome, 'Texto de ajuda para o campo dataNascimento do cadastro de usuários validados.' AS descricao,
       'FORM_FIELD_DATA_NASCIMENTO_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_FIELD_LOGIN_TEXT_BOX' AS nome, 'Texto de ajuda para o campo login do cadastro de usuários validados.' AS descricao,
       'FORM_FIELD_LOGIN_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_FIELD_SENHA_TEXT_BOX' AS nome, 'Texto de ajuda para o campo senha do cadastro de usuários validados.' AS descricao,
       'FORM_FIELD_SENHA_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_FIELD_LOGIN_MANTER_LOGADO_CHECKBOX' AS nome, 'Texto de ajuda para o campo "manter-me conectado" do formulario de autenticacao de usuarios.' AS descricao,
       'FORM_FIELD_CHECKBOX_LOGIN_MANTER_LOGADO_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_FIELD_CATEGORIA_BOLSA_CNPQ_FILTERING_SELECT' AS nome, 'Texto de ajuda para o campo categoria de bolsa do cnpq.' AS descricao,
       'FORM_FIELD_CATEGORIA_BOLSA_CNPQ_FILTERING_SELECT_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';
                
INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_FIELD_MAIOR_TITULACAO_FILTERING_SELECT' AS nome, 'Texto de ajuda para o campo Maior titulacao Acadêmica.' AS descricao,
       'FORM_FIELD_MAIOR_TITULACAO_FILTERING_SELECT_AJUDA' AS constante_textual_ajuda, 
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_FIELD_INSTITUICAO_QUE_CONCEDEU_FILTERING_SELECT' AS nome, 'Texto de ajuda para o campo instituicao que concedeu o título.' AS descricao,
       'FORM_FIELD_INSTITUICAO_QUE_CONCEDEU_FILTERING_SELECT_AJUDA' AS constante_textual_ajuda, 
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_FIELD_AREA_DE_CONHECIMENTO_FILTERING_SELECT' AS nome, 'Texto de ajuda para o campo área de conhecimento.' AS descricao,
       'FORM_FIELD_AREA_DE_CONHECIMENTO_FILTERING_SELECT_AJUDA' AS constante_textual_ajuda, 
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, constante_textual_hint, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_FIELD_NOME_CURSO_TEXT_BOX' AS nome, 'Texto de ajuda para o campo nome do curso.' AS descricao,
       'FORM_FIELD_NOME_CURSO_TEXT_BOX_AJUDA' AS constante_textual_ajuda, 'FORM_FIELD_NOME_CURSO_TEXT_BOX_HINT' AS constante_textual_hint,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, constante_textual_hint, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_FIELD_DATA_OBTENCAO_DATE_TEXT_BOX' AS nome, 'Texto de ajuda para o campo data de obtenção da maior titulação.' AS descricao,
       'FORM_FIELD_DATA_OBTENCAO_DATE_TEXT_BOX_AJUDA' AS constante_textual_ajuda, 'FORM_FIELD_DATA_OBTENCAO_DATE_TEXT_BOX_HINT' AS constante_textual_hint,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_FIELD_TITULACAO_ESPERADA_FILTERING_SELECT' AS nome, 'Texto de ajuda para o campo titulação esperada.' AS descricao,
       'FORM_FIELD_TITULACAO_ESPERADA_FILTERING_SELECT_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_FIELD_INSTITUICAO_CURSO_ATUAL_FILTERING_SELECT' AS nome, 'Texto de ajuda para o campo curso atual.' AS descricao,
       'FORM_FIELD_INSTITUICAO_CURSO_ATUAL_FILTERING_SELECT_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_FIELD_AREA_CONHECIMENTO_CURSO_ATUAL_FILTERING_SELECT' AS nome, 'Texto de ajuda para o campo área de conhecimento do curso atual.' AS descricao,
       'FORM_FIELD_AREA_CONHECIMENTO_CURSO_ATUAL_FILTERING_SELECT_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, constante_textual_hint, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_FIELD_NOME_CURSO_ATUAL_TEXT_BOX' AS nome, 'Texto de ajuda para o campo nome do curso atual.' AS descricao,
       'FORM_FIELD_NOME_CURSO_ATUAL_TEXT_BOX_AJUDA' AS constante_textual_ajuda, 'FORM_FIELD_NOME_CURSO_ATUAL_TEXT_BOX_HINT' AS constante_textual_hint,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_FIELD_PERIODO_FILTERING_SELECT' AS nome, 'Texto de ajuda para o campo periodo do curso atual.' AS descricao,
       'FORM_FIELD_PERIODO_FILTERING_SELECT_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_FIELD_TURNO_FILTERING_SELECT' AS nome, 'Texto de ajuda para o campo turno do curso atual.' AS descricao,
       'FORM_FIELD_TURNO_FILTERING_SELECT_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_FIELD_PROFISSAO_FILTERING_SELECT' AS nome, 'Texto de ajuda para o campo profissão.' AS descricao,
       'FORM_FIELD_PROFISSAO_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_FIELD_VINCULO_PROFISSIONAL_FILTERING_SELECT' AS nome, 'Texto de ajuda para o campo vinculo profissional.' AS descricao,
       'FORM_FIELD_VINCULO_PROFISSIONAL_AJUDA' AS constante_textual_ajuda, 
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_FIELD_PJ_VINCULO_FILTERING_SELECT' AS nome, 'Texto de ajuda para o campo instituição do vinculo profissional.' AS descricao,
       'FORM_FIELD_PJ_VINCULO_AJUDA' AS constante_textual_ajuda, 
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_FIELD_REGIME_TRABALHO_FILTERING_SELECT' AS nome, 'Texto de ajuda para o campo regime de trabalho.' AS descricao,
       'FORM_FIELD_REGIME_TRABALHO_AJUDA' AS constante_textual_ajuda, 
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, constante_textual_hint, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_FIELD_CARGO_TEXT_BOX' AS nome, 'Texto de ajuda para o campo cargo.' AS descricao,
       'FORM_FIELD_CARGO_AJUDA' AS constante_textual_ajuda, 'FORM_FIELD_CARGO_HINT' AS constante_textual_hint,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, constante_textual_hint, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_FIELD_FUNCAO_TEXT_BOX' AS nome, 'Texto de ajuda para o campo função.' AS descricao,
       'FORM_FIELD_FUNCAO_AJUDA' AS constante_textual_ajuda, 'FORM_FIELD_FUNCAO_HINT' AS constante_textual_hint,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_FIELD_ATIVIDADES_DESENVOLVIDAS_TEXT_AREA' AS nome, 'Texto de ajuda para o campo atividades desenvolvidas do vinculo profissional.' AS descricao,
       'FORM_FIELD_ATIVIDADES_DESENVOLVIDAS_AJUDA' AS constante_textual_ajuda, 
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, constante_textual_hint, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_FIELD_DATA_ADMISSAO_DATE_TEXT_BOX' AS nome, 'Texto de ajuda para o campo data de admissao do vinculo profissional.' AS descricao,
       'FORM_FIELD_DATA_ADMISSAO_AJUDA' AS constante_textual_ajuda, 'FORM_FIELD_DATA_ADMISSAO_HINT' AS constante_textual_hint, 
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, constante_textual_hint, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_FIELD_DATA_DESVINCULACAO_DATE_TEXT_BOX' AS nome, 'Texto de ajuda para o campo data de desvinculação profissional.' AS descricao,
       'FORM_FIELD_DATA_DESVINCULACAO_AJUDA' AS constante_textual_ajuda, 'FORM_FIELD_DATA_DESVINCULACAO_HINT' AS constante_textual_hint, 
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, constante_textual_hint, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_FIELD_CARGA_HORARIA_SEMANAL_TEXT_BOX' AS nome, 'Texto de ajuda para o campo carga horária semanal.' AS descricao,
       'FORM_FIELD_CARGA_HORARIA_SEMANAL_AJUDA' AS constante_textual_ajuda, 'FORM_FIELD_CARGA_HORARIA_SEMANAL_HINT' AS constante_textual_hint, 
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, constante_textual_hint, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_FIELD_SALARIO_BRUTO_TEXT_BOX' AS nome, 'Texto de ajuda para o campo salário bruto.' AS descricao,
       'FORM_FIELD_SALARIO_BRUTO_AJUDA' AS constante_textual_ajuda, 'FORM_FIELD_SALARIO_BRUTO_HINT' AS constante_textual_hint, 
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_FIELD_DEDICACAO_EXCLUSIVA_CHECK_BOX' AS nome, 'Texto de ajuda para o campo dedicação exclusiva.' AS descricao,
       'FORM_FIELD_DEDICACAO_EXCLUSIVA_AJUDA' AS constante_textual_ajuda,  
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_FIELD_OUTRAS_INFORMACOES_TEXT_AREA' AS nome, 'Texto de ajuda para o campo outras informações.' AS descricao,
       'FORM_FIELD_OUTRAS_INFORMACOES_AJUDA' AS constante_textual_ajuda,  
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_FIELD_PERFIS_DISPONIVEIS_MULTI_CHECK_BOX' AS nome, 'Texto de ajuda para o campo perfis disponiveis.' AS descricao,
       'FORM_FIELD_PERFIS_DISPONIVEIS_AJUDA' AS constante_textual_ajuda,  
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_FIELD_TELEFONE_TIPO_FILTERING_SELECT' AS nome, 'Texto de ajuda para o campo tipo de telefone.' AS descricao,
       'FORM_FIELD_TELEFONE_TIPO_AJUDA' AS constante_textual_ajuda, 
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, constante_textual_hint, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_FIELD_TELEFONE_CODIGO_PAIS_TEXT_BOX' AS nome, 'Texto de ajuda para o campo codigo do pais (telefone).' AS descricao,
       'FORM_FIELD_TELEFONE_CODIGO_PAIS_AJUDA' AS constante_textual_ajuda, 'FORM_FIELD_TELEFONE_CODIGO_PAIS_HINT' AS constante_textual_hint,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, constante_textual_hint, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_FIELD_TELEFONE_CODIGO_AREA_TEXT_BOX' AS nome, 'Texto de ajuda para o campo codigo de discagem a distancia (telefone).' AS descricao,
       'FORM_FIELD_TELEFONE_CODIGO_AREA_AJUDA' AS constante_textual_ajuda, 'FORM_FIELD_TELEFONE_CODIGO_AREA_HINT' AS constante_textual_hint,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, constante_textual_hint, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_FIELD_TELEFONE_TEXT_BOX' AS nome, 'Texto de ajuda para o campo telefone.' AS descricao,
       'FORM_FIELD_TELEFONE_AJUDA' AS constante_textual_ajuda, 'FORM_FIELD_TELEFONE_HINT' AS constante_textual_hint,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, constante_textual_hint, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_FIELD_TELEFONE_RAMAL_TEXT_BOX' AS nome, 'Texto de ajuda para o campo ramal do telefone.' AS descricao,
       'FORM_FIELD_TELEFONE_RAMAL_AJUDA' AS constante_textual_ajuda, 'FORM_FIELD_TELEFONE_RAMAL_HINT' AS constante_textual_hint,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_FIELD_TELEFONE_DESCRICAO_TEXT_AREA' AS nome, 'Texto de ajuda para o campo descricao do telefone.' AS descricao,
       'FORM_FIELD_TELEFONE_DESCRICAO_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_FIELD_EMAIL_TIPO_FILTERING_SELECT' AS nome, 'Texto de ajuda para o campo tipo de e-mail.' AS descricao,
       'FORM_FIELD_EMAIL_TIPO_AJUDA' AS constante_textual_ajuda, 
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_FIELD_EMAIL_DESCRICAO_TEXT_AREA' AS nome, 'Texto de ajuda para o campo descricao do e-mail.' AS descricao,
       'FORM_FIELD_EMAIL_DESCRICAO_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_FIELD_WEBSITE_TIPO_FILTERING_SELECT' AS nome, 'Texto de ajuda para o campo tipo de website.' AS descricao,
       'FORM_FIELD_WEBSITE_TIPO_AJUDA' AS constante_textual_ajuda, 
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_FIELD_WEBSITE_ENDERECO_TEXT_BOX' AS nome, 'Texto de ajuda para o campo endereço do website.' AS descricao,
       'FORM_FIELD_WEBSITE_ENDERECO_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_FIELD_WEBSITE_DESCRICAO_TEXT_AREA' AS nome, 'Texto de ajuda para o campo descrição do website.' AS descricao,
       'FORM_FIELD_WEBSITE_DESCRICAO_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, constante_textual_hint, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_FIELD_NOME_USUARIO_TEXT_BOX' AS nome, 'Texto de ajuda para o campo nome do usuário.' AS descricao,
       'FORM_FIELD_NOME_AJUDA' AS constante_textual_ajuda, 'FORM_FIELD_NOME_HINT' AS constante_textual_hint, 
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, constante_textual_hint, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_FIELD_EMAIL_USUARIO_TEXT_BOX' AS nome, 'Texto de ajuda para o campo e-mail do usuário.' AS descricao,
       'FORM_FIELD_EMAIL_AJUDA' AS constante_textual_ajuda, 'FORM_FIELD_EMAIL_HINT' AS constante_textual_hint, 
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';



/**
* INICIO
*  
* ABA CADASTRO DE USUARIO - DADOS PESSOAIS
*/

-- ajuda - formulario - cadastro - usuario
-- dados pessoais - pais nascimento - combobox.
INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_FIELD_PAIS_NASCIMENTO_FILTERING_SELECT' AS nome, 'Texto de ajuda para o campo combobox país de nascimento.' AS descricao,
       'FORM_FIELD_PAIS_NASCIMENTO_FILTERING_SELECT_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';
---------

-- ajuda - formulario - cadastro - usuario
-- dados pessoais - uf nascimento - combobox.
INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_FIELD_UF_NASCIMENTO_FILTERING_SELECT' AS nome, 'Texto de ajuda para o campo combobox UF de nascimento.' AS descricao,
       'FORM_FIELD_UF_NASCIMENTO_FILTERING_SELECT_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';
----------

-- ajuda - formulario - cadastro - usuario
-- dados pessoais uf nascimento - texbox.
INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, constante_textual_hint, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_FIELD_UF_NASCIMENTO_TEXT_BOX' AS nome, 'Texto de ajuda para o campo textbox UF de nascimento.' AS descricao,
       'FORM_FIELD_UF_NASCIMENTO_TEXT_BOX_AJUDA' AS constante_textual_ajuda, 'FORM_FIELD_UF_NASCIMENTO_TEXT_BOX_HINT' AS constante_textual_hint,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';
----------

-- ajuda - formulario - cadastro - usuario
-- dados pessoais - municipio nascimento - combobox.
INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_FIELD_MUNICIPIO_NASCIMENTO_FILTERING_SELECT' AS nome, 'Texto de ajuda para o campo combobox município de nascimento.' AS descricao,
       'FORM_FIELD_MUNICIPIO_NASCIMENTO_FILTERING_SELECT_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';
-----------------

-- ajuda - formulario - cadastro - usuario
--- dados pessoais - municipio nascimento - textbox.
INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, constante_textual_hint, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_FIELD_MUNICIPIO_NASCIMENTO_TEXT_BOX' AS nome, 'Texto de ajuda para o campo textbox município de nascimento.' AS descricao,
       'FORM_FIELD_MUNICIPIO_NASCIMENTO_TEXT_BOX_AJUDA' AS constante_textual_ajuda, 'FORM_FIELD_MUNICIPIO_NASCIMENTO_TEXT_BOX_HINT' AS constante_textual_hint,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';
-----------------

-- ajuda - formulario - cadastro - usuario
-- dados pessoais - nome pai - textbox
INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, constante_textual_hint, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_FIELD_NOME_PAI_TEXT_BOX' AS nome, 'Texto de ajuda para o campo textbox nome do pai.' AS descricao,
       'FORM_FIELD_NOME_PAI_TEXT_BOX_AJUDA' AS constante_textual_ajuda, 'FORM_FIELD_NOME_PAI_TEXT_BOX_HINT' AS constante_textual_hint,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';
-----------------

-- ajuda - formulario - cadastro - usuario
-- dados pessoais - nome mae - texbox
INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, constante_textual_hint, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_FIELD_NOME_MAE_TEXT_BOX' AS nome, 'Texto de ajuda para o campo textbox nome da mãe.' AS descricao,
       'FORM_FIELD_NOME_MAE_TEXT_BOX_AJUDA' AS constante_textual_ajuda, 'FORM_FIELD_NOME_MAE_TEXT_BOX_HINT' AS constante_textual_hint,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';
------------------
/** 
* FIM - ABA CADASTRO DE USUARIO - DADOS PESSOAIS
*/


/**
* INICIO
* 
* CADASTRO DE ENDERECO
*/
-- ajuda - formulario - cadastro
-- endereco - tipo - combobox
INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_FIELD_ENDERECO_TIPO_FILTERING_SELECT' AS nome, 'Texto de ajuda para o campo combobox tipo de endereço.' AS descricao,
       'FORM_FIELD_ENDERECO_TIPO_FILTERING_SELECT_AJUDA' AS constante_textual_ajuda, 
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';
-----------------

-- ajuda - formulario - cadastro
-- endereco - pais - combobox
INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_FIELD_PAIS_FILTERING_SELECT' AS nome, 'Texto de ajuda para o campo  combobox país do endereço.' AS descricao,
       'FORM_FIELD_ENDERECO_PAIS_FILTERING_SELECT_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';
-----------------

-- ajuda - formulario - cadastro
-- endereco - uf - combobox.
INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_FIELD_UF_FILTERING_SELECT' AS nome, 'Texto de ajuda para o campo combobox uf do endereço.' AS descricao,
       'FORM_FIELD_ENDERECO_UF_FILTERING_SELECT_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';
-----------------

-- ajuda - formulario - cadastro
-- endereco - uf - texbox.
INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, constante_textual_hint, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_FIELD_UF_TEXT_BOX' AS nome, 'Texto de ajuda para o campo textbox uf do endereço.' AS descricao,
       'FORM_FIELD_ENDERECO_UF_TEXT_BOX_AJUDA' AS constante_textual_ajuda, 'FORM_FIELD_ENDERECO_UF_TEXT_BOX_HINT' AS constante_textual_hint,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';
-----------------

-- ajuda - formulario - cadastro
-- endereco - municipio - combobox.
INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_FIELD_MUNICIPIO_FILTERING_SELECT' AS nome, 'Texto de ajuda para o campo município do endereço.' AS descricao,
       'FORM_FIELD_ENDERECO_MUNICIPIO_FILTERING_SELECT_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';
-----------------

-- ajuda - formulario - cadastro
-- endereco - municipio - textbox
INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, constante_textual_hint, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_FIELD_MUNICIPIO_TEXT_BOX' AS nome, 'Texto de ajuda para o campo textbox município do endereço.' AS descricao,
       'FORM_FIELD_ENDERECO_MUNICIPIO_TEXT_BOX_AJUDA' AS constante_textual_ajuda, 'FORM_FIELD_ENDERECO_MUNICIPIO_TEXT_BOX_HINT' AS constante_textual_hint,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';
-----------------

-- ajuda - formulario - cadastro
-- endereco - cep - textbox.
INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, constante_textual_hint, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_FIELD_CEP_TEXT_BOX' AS nome, 'Texto de ajuda para o campo cep do endereço.' AS descricao,
       'FORM_FIELD_ENDERECO_CEP_TEXT_BOX_AJUDA' AS constante_textual_ajuda, 'FORM_FIELD_ENDERECO_CEP_TEXT_BOX_HINT' AS constante_textual_hint,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';
-----------------

-- ajuda - formulario - cadastro
-- endereco - logradouro - textbox
INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, constante_textual_hint, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_FIELD_LOGRADOURO_TEXT_BOX' AS nome, 'Texto de ajuda para o campo logradouro do endereço.' AS descricao,
       'FORM_FIELD_ENDERECO_LOGRADOURO_TEXT_BOX_AJUDA' AS constante_textual_ajuda, 'FORM_FIELD_ENDERECO_LOGRADOURO_TEXT_BOX_HINT' AS constante_textual_hint,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';
-----------------

-- ajuda - formulario - cadastro
-- endereco - numero - textbox
INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, constante_textual_hint, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_FIELD_ENDERECO_NUMERO_TEXT_BOX' AS nome, 'Texto de ajuda para o campo número do endereço.' AS descricao,
       'FORM_FIELD_ENDERECO_NUMERO_TEXT_BOX_AJUDA' AS constante_textual_ajuda, 'FORM_FIELD_ENDERECO_NUMERO_TEXT_BOX_HINT' AS constante_textual_hint,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';
-----------------

-- ajuda - formulario - cadastro
-- endereco - complemento - textbox
INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, constante_textual_hint, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_FIELD_ENDERECO_COMPLEMENTO_TEXT_BOX' AS nome, 'Texto de ajuda para o campo complemento do endereço.' AS descricao,
       'FORM_FIELD_ENDERECO_COMPLEMENTO_TEXT_BOX_AJUDA' AS constante_textual_ajuda, 'FORM_FIELD_ENDERECO_COMPLEMENTO_TEXT_BOX_HINT' AS constante_textual_hint,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';
-----------------
/**
* FIM - CADASTRO DE ENDERECO
*/


/**
* INICIO
* 
* CADASTRO DE CONTA BANCARIA
*/

-- ajuda - formulario - cadastro
-- conta bancaria - numero banco - texbox.
INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, constante_textual_hint, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_FIELD_NUMERO_BANCO_TEXT_BOX' AS nome, 'Texto de ajuda para o campo textbox número do banco.' AS descricao,
       'FORM_FIELD_CONTA_BANCARIA_NUMERO_BANCO_TEXT_BOX_AJUDA' AS constante_textual_ajuda, 'FORM_FIELD_CONTA_BANCARIA_NUMERO_BANCO_TEXT_BOX_HINT' AS constante_textual_hint,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';
-----------------

-- ajuda - formulario - cadastro
-- conta bancaria - banco - combobox
INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_FIELD_BANCO_FILTERING_SELECT' AS nome, 'Texto de ajuda para o campo combobox banco.' AS descricao,
       'FORM_FIELD_CONTA_BANCARIA_BANCO_FILTERING_SELECT_AJUDA' AS constante_textual_ajuda, 
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';
-----------------

-- ajuda - formulario - cadastro
-- conta bancaria - agencia - texbox.
INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, constante_textual_hint, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_FIELD_AGENCIA_TEXT_BOX' AS nome, 'Texto de ajuda para o campo textbox agência.' AS descricao,
       'FORM_FIELD_CONTA_BANCARIA_AGENCIA_TEXT_BOX_AJUDA' AS constante_textual_ajuda, 'FORM_FIELD_CONTA_BANCARIA_AGENCIA_TEXT_BOX_HINT' AS constante_textual_hint,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';
-----------------

-- ajuda - formulario - cadastro
-- conta bancaria - tipo conta - combobox
INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_FIELD_TIPO_CONTA_FILTERING_SELECT' AS nome, 'Texto de ajuda para o campo combobox tipo conta.' AS descricao,
       'FORM_FIELD_CONTA_BANCARIA_TIPO_CONTA_FILTERING_SELECT_AJUDA' AS constante_textual_ajuda, 
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';
-----------------

-- ajuda - formulario - cadastro
-- conta bancaria - numero conta - texbox.
INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, constante_textual_hint, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_FIELD_NUMERO_CONTA_TEXT_BOX' AS nome, 'Texto de ajuda para o campo textbox número da conta.' AS descricao,
       'FORM_FIELD_CONTA_BANCARIA_NUMERO_CONTA_TEXT_BOX_AJUDA' AS constante_textual_ajuda, 'FORM_FIELD_CONTA_BANCARIA_NUMERO_CONTA_TEXT_BOX_HINT' AS constante_textual_hint,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';
-----------------

-- ajuda - formulario - cadastro
-- conta bancaria - descricao identificacao - texbox.
INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, constante_textual_hint, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_FIELD_DESCRICAO_IDENTIFICACAO_CONTA_TEXT_BOX' AS nome, 'Texto de ajuda para o campo textbox descrição para identificação da conta bancária.' AS descricao,
       'FORM_FIELD_CONTA_BANCARIA_DESCRICAO_IDENTIFICACAO_CONTA_TEXT_BOX_AJUDA' AS constante_textual_ajuda, 'FORM_FIELD_CONTA_BANCARIA_DESCRICAO_IDENTIFICACAO_CONTA_TEXT_BOX_HINT' AS constante_textual_hint,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';
-----------------

/**
* FIM - CADASTRO DE CONTA BANCARIA
*/