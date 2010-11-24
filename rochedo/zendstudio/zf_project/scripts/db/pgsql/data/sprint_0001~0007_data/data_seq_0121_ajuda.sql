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
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_CADASTRO_USUARIO_DADOS_BIOMETRICOS_HISTORICO_MEDICO' AS nome, 'Texto de ajuda para o campo historico medico.' AS descricao,
       'FORM_FIELD_HISTORICO_MEDICO_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_CADASTRO_USUARIO_DADOS_BIOMETRICOS';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_CADASTRO_USUARIO_DADOS_BIOMETRICOS_TIPO_SANGUINIO' AS nome, 'Texto de ajuda para o campo tipo sanguínio.' AS descricao,
       'FORM_FIELD_TIPO_SANGUINIO_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_CADASTRO_USUARIO_DADOS_BIOMETRICOS';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_CADASTRO_USUARIO_DADOS_BIOMETRICOS_PESO' AS nome, 'Texto de ajuda para o campo peso.' AS descricao,
       'FORM_FIELD_PESO_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_CADASTRO_USUARIO_DADOS_BIOMETRICOS';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_CADASTRO_USUARIO_DADOS_BIOMETRICOS_ALTURA' AS nome, 'Texto de ajuda para o campo altura.' AS descricao,
       'FORM_FIELD_ALTURA_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_CADASTRO_USUARIO_DADOS_BIOMETRICOS';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_CADASTRO_USUARIO_DADOS_BIOMETRICOS_RACA' AS nome, 'Texto de ajuda para o campo raça.' AS descricao,
       'FORM_FIELD_RACA_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_CADASTRO_USUARIO_DADOS_BIOMETRICOS';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_CADASTRO_USUARIO_VALIDADO_NUMERO_DOCUMENTO' AS nome, 'Texto de ajuda para o campo numeroDocumento do cadastro de documentos pessoais.' AS descricao,
       'FORM_FIELD_NUMERO_DOCUMENTO_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_CADASTRO_USUARIO_VALIDADO';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_CADASTRO_USUARIO_VALIDADO_SEXO' AS nome, 'Texto de ajuda para o campo sexo do cadastro de usuários validados.' AS descricao,
       'FORM_FIELD_SEXO_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_CADASTRO_USUARIO_VALIDADO';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_CADASTRO_USUARIO_VALIDADO_SENHA_CONFIRMACAO' AS nome, 'Texto de ajuda para o campo senhaConfirmacao do cadastro de usuários validados.' AS descricao,
       'FORM_FIELD_SENHA_CONFIRMACAO_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_CADASTRO_USUARIO_VALIDADO';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_CADASTRO_USUARIO_VALIDADO_DATA_NASCIMENTO' AS nome, 'Texto de ajuda para o campo dataNascimento do cadastro de usuários validados.' AS descricao,
       'FORM_FIELD_DATA_NASCIMENTO_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_CADASTRO_USUARIO_VALIDADO';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_CADASTRO_USUARIO_VALIDADO_LOGIN' AS nome, 'Texto de ajuda para o campo login do cadastro de usuários validados.' AS descricao,
       'FORM_FIELD_LOGIN_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_CADASTRO_USUARIO_VALIDADO';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_CADASTRO_USUARIO_VALIDADO_SENHA' AS nome, 'Texto de ajuda para o campo senha do cadastro de usuários validados.' AS descricao,
       'FORM_FIELD_SENHA_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_CADASTRO_USUARIO_VALIDADO';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_CADASTRO_USUARIO_DADOS_ACADEMICOS_CATEGORIA_BOLSA_CNPQ' AS nome, 'Texto de ajuda para o campo categoria de bolsa do cnpq.' AS descricao,
       'FORM_FIELD_CATEGORIA_BOLSA_CNPQ_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_CADASTRO_USUARIO_DADOS_ACADEMICOS';
                
INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_CADASTRO_USUARIO_DADOS_ACADEMICOS_MAIOR_TITULACAO' AS nome, 'Texto de ajuda para o campo Maior titulacao Acadêmica.' AS descricao,
       'FORM_FIELD_MAIOR_TITULACAO_AJUDA' AS constante_textual_ajuda, 
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_CADASTRO_USUARIO_DADOS_ACADEMICOS';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_CADASTRO_USUARIO_DADOS_ACADEMICOS_INSTITUICAO_QUE_CONCEDEU' AS nome, 'Texto de ajuda para o campo instituicao que concedeu o título.' AS descricao,
       'FORM_FIELD_INSTITUICAO_QUE_CONCEDEU_AJUDA' AS constante_textual_ajuda, 
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_CADASTRO_USUARIO_DADOS_ACADEMICOS';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_CADASTRO_USUARIO_DADOS_ACADEMICOS_AREA_DE_CONHECIMENTO' AS nome, 'Texto de ajuda para o campo área de conhecimento.' AS descricao,
       'FORM_FIELD_AREA_DE_CONHECIMENTO_AJUDA' AS constante_textual_ajuda, 
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_CADASTRO_USUARIO_DADOS_ACADEMICOS';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, constante_textual_hint, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_CADASTRO_USUARIO_DADOS_ACADEMICOS_NOME_CURSO' AS nome, 'Texto de ajuda para o campo nome do curso.' AS descricao,
       'FORM_FIELD_NOME_CURSO_AJUDA' AS constante_textual_ajuda, 'FORM_FIELD_NOME_CURSO_HINT' AS constante_textual_hint,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_CADASTRO_USUARIO_DADOS_ACADEMICOS';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_CADASTRO_USUARIO_DADOS_PROFISSIONAIS_PROFISSAO' AS nome, 'Texto de ajuda para o campo profissão.' AS descricao,
       'FORM_FIELD_PROFISSAO_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_CADASTRO_USUARIO_DADOS_PROFISSIONAIS';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_CADASTRO_USUARIO_DADOS_PROFISSIONAIS_VINCULO_PROFISSIONAL' AS nome, 'Texto de ajuda para o campo vinculo profissional.' AS descricao,
       'FORM_FIELD_VINCULO_PROFISSIONAL_AJUDA' AS constante_textual_ajuda, 
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_CADASTRO_USUARIO_DADOS_PROFISSIONAIS';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_CADASTRO_USUARIO_DADOS_PROFISSIONAIS_PJ_VINCULO' AS nome, 'Texto de ajuda para o campo instituição do vinculo profissional.' AS descricao,
       'FORM_FIELD_PJ_VINCULO_AJUDA' AS constante_textual_ajuda, 
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_CADASTRO_USUARIO_DADOS_PROFISSIONAIS';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_CADASTRO_USUARIO_DADOS_PROFISSIONAIS_REGIME_TRABALHO' AS nome, 'Texto de ajuda para o campo regime de trabalho.' AS descricao,
       'FORM_FIELD_REGIME_TRABALHO_AJUDA' AS constante_textual_ajuda, 
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_CADASTRO_USUARIO_DADOS_PROFISSIONAIS';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, constante_textual_hint, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_CADASTRO_USUARIO_DADOS_PROFISSIONAIS_CARGO' AS nome, 'Texto de ajuda para o campo cargo.' AS descricao,
       'FORM_FIELD_CARGO_AJUDA' AS constante_textual_ajuda, 'FORM_FIELD_CARGO_HINT' AS constante_textual_hint,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_CADASTRO_USUARIO_DADOS_PROFISSIONAIS';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, constante_textual_hint, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_CADASTRO_USUARIO_DADOS_PROFISSIONAIS_FUNCAO' AS nome, 'Texto de ajuda para o campo função.' AS descricao,
       'FORM_FIELD_FUNCAO_AJUDA' AS constante_textual_ajuda, 'FORM_FIELD_FUNCAO_HINT' AS constante_textual_hint,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_CADASTRO_USUARIO_DADOS_PROFISSIONAIS';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_CADASTRO_USUARIO_DADOS_PROFISSIONAIS_ATIVIDADES_DESENVOLVIDAS' AS nome, 'Texto de ajuda para o campo atividades desenvolvidas do vinculo profissional.' AS descricao,
       'FORM_FIELD_ATIVIDADES_DESENVOLVIDAS_AJUDA' AS constante_textual_ajuda, 
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_CADASTRO_USUARIO_DADOS_PROFISSIONAIS';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, constante_textual_hint, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_CADASTRO_USUARIO_DADOS_PROFISSIONAIS_DATA_ADMISSAO' AS nome, 'Texto de ajuda para o campo data de admissao do vinculo profissional.' AS descricao,
       'FORM_FIELD_DATA_ADMISSAO_AJUDA' AS constante_textual_ajuda, 'FORM_FIELD_DATA_ADMISSAO_HINT' AS constante_textual_hint, 
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_CADASTRO_USUARIO_DADOS_PROFISSIONAIS';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, constante_textual_hint, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_CADASTRO_USUARIO_DADOS_PROFISSIONAIS_DATA_DESVINCULACAO' AS nome, 'Texto de ajuda para o campo data de desvinculação profissional.' AS descricao,
       'FORM_FIELD_DATA_DESVINCULACAO_AJUDA' AS constante_textual_ajuda, 'FORM_FIELD_DATA_DESVINCULACAO_HINT' AS constante_textual_hint, 
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_CADASTRO_USUARIO_DADOS_PROFISSIONAIS';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, constante_textual_hint, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_CADASTRO_USUARIO_DADOS_PROFISSIONAIS_CARGA_HORARIA_SEMANAL' AS nome, 'Texto de ajuda para o campo carga horária semanal.' AS descricao,
       'FORM_FIELD_CARGA_HORARIA_SEMANAL_AJUDA' AS constante_textual_ajuda, 'FORM_FIELD_CARGA_HORARIA_SEMANAL_HINT' AS constante_textual_hint, 
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_CADASTRO_USUARIO_DADOS_PROFISSIONAIS';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, constante_textual_hint, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_CADASTRO_USUARIO_DADOS_PROFISSIONAIS_SALARIO_BRUTO' AS nome, 'Texto de ajuda para o campo salário bruto.' AS descricao,
       'FORM_FIELD_SALARIO_BRUTO_AJUDA' AS constante_textual_ajuda, 'FORM_FIELD_SALARIO_BRUTO_HINT' AS constante_textual_hint, 
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_CADASTRO_USUARIO_DADOS_PROFISSIONAIS';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_CADASTRO_USUARIO_DADOS_PROFISSIONAIS_DEDICACAO_EXCLUSIVA' AS nome, 'Texto de ajuda para o campo dedicação exclusiva.' AS descricao,
       'FORM_FIELD_DEDICACAO_EXCLUSIVA_AJUDA' AS constante_textual_ajuda,  
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_CADASTRO_USUARIO_DADOS_PROFISSIONAIS';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_CADASTRO_USUARIO_DADOS_PROFISSIONAIS_OUTRAS_INFORMACOES' AS nome, 'Texto de ajuda para o campo outras informações.' AS descricao,
       'FORM_FIELD_OUTRAS_INFORMACOES_AJUDA' AS constante_textual_ajuda,  
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_CADASTRO_USUARIO_DADOS_PROFISSIONAIS';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_CADASTRO_USUARIO_PERFIL_PERFIS_DISPONIVEIS' AS nome, 'Texto de ajuda para o campo perfis disponiveis.' AS descricao,
       'FORM_FIELD_PERFIS_DISPONIVEIS_AJUDA' AS constante_textual_ajuda,  
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_CADASTRO_USUARIO_PERFIL';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_CADASTRO_TELEFONE_TIPO' AS nome, 'Texto de ajuda para o campo tipo de telefone.' AS descricao,
       'FORM_FIELD_TELEFONE_TIPO_AJUDA' AS constante_textual_ajuda, 
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_CADASTRO_TELEFONE';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, constante_textual_hint, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_CADASTRO_TELEFONE_CODIGO_PAIS' AS nome, 'Texto de ajuda para o campo codigo do pais (telefone).' AS descricao,
       'FORM_FIELD_TELEFONE_CODIGO_PAIS_AJUDA' AS constante_textual_ajuda, 'FORM_FIELD_TELEFONE_CODIGO_PAIS_HINT' AS constante_textual_hint,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_CADASTRO_TELEFONE';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, constante_textual_hint, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_CADASTRO_TELEFONE_CODIGO_AREA' AS nome, 'Texto de ajuda para o campo codigo de discagem a distancia (telefone).' AS descricao,
       'FORM_FIELD_TELEFONE_CODIGO_AREA_AJUDA' AS constante_textual_ajuda, 'FORM_FIELD_TELEFONE_CODIGO_AREA_HINT' AS constante_textual_hint,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_CADASTRO_TELEFONE';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, constante_textual_hint, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_CADASTRO_TELEFONE' AS nome, 'Texto de ajuda para o campo telefone.' AS descricao,
       'FORM_FIELD_TELEFONE_AJUDA' AS constante_textual_ajuda, 'FORM_FIELD_TELEFONE_HINT' AS constante_textual_hint,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_CADASTRO_TELEFONE';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, constante_textual_hint, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_CADASTRO_TELEFONE_RAMAL' AS nome, 'Texto de ajuda para o campo ramal do telefone.' AS descricao,
       'FORM_FIELD_TELEFONE_RAMAL_AJUDA' AS constante_textual_ajuda, 'FORM_FIELD_TELEFONE_RAMAL_HINT' AS constante_textual_hint,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_CADASTRO_TELEFONE';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_CADASTRO_TELEFONE_DESCRICAO' AS nome, 'Texto de ajuda para o campo descricao do telefone.' AS descricao,
       'FORM_FIELD_TELEFONE_DESCRICAO_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_CADASTRO_TELEFONE';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_CADASTRO_EMAIL_TIPO' AS nome, 'Texto de ajuda para o campo tipo de e-mail.' AS descricao,
       'FORM_FIELD_EMAIL_TIPO_AJUDA' AS constante_textual_ajuda, 
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_CADASTRO_EMAIL';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_CADASTRO_EMAIL_DESCRICAO' AS nome, 'Texto de ajuda para o campo descricao do e-mail.' AS descricao,
       'FORM_FIELD_EMAIL_DESCRICAO_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_CADASTRO_EMAIL';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_CADASTRO_WEBSITE_TIPO' AS nome, 'Texto de ajuda para o campo tipo de website.' AS descricao,
       'FORM_FIELD_WEBSITE_TIPO_AJUDA' AS constante_textual_ajuda, 
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_CADASTRO_WEBSITE';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_CADASTRO_WEBSITE_ENDERECO' AS nome, 'Texto de ajuda para o campo endereço do website.' AS descricao,
       'FORM_FIELD_WEBSITE_ENDERECO_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_CADASTRO_WEBSITE';

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_FORMULARIO_CADASTRO_WEBSITE_DESCRICAO' AS nome, 'Texto de ajuda para o campo descrição do website.' AS descricao,
       'FORM_FIELD_WEBSITE_DESCRICAO_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_CADASTRO_WEBSITE';

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