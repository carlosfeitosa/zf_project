/**
* SCRIPT DE POPULACAO DA TABELA AJUDA
* 
* versao: 1.0 (POSTGRESQL 8.4.1)
* por: CARLOS FEITOSA (carlos.feitosa@rochedoproject.com)
* criacao: 21/10/2010
* ultimas modificacoes:
* 								03/11/2010 - criacao das ajudas para o formulario FORM_DIALOG_TELEFONE;
* 								16/11/2010 - criacao das ajudas para o formulario FORM_DIALOG_EMAIL;
* 								25/04/2011 - criacao das ajudas para o formulario SUBFORM_DADOS_USUARIO_PERFIL;
* 							    10/05/2011 - criacao das ajudas para os campos "Senha atual" e "Nova senha" o formulario SUBFORM_DADOS_USUARIO_PERFIL;
* 								11/05/2011 - criacao da ajuda para o campo "Repita sua nova senha" no formulario SUBFORM_DADOS_USUARIO_PERFIL;
* 								25/10/2011 - inicio criacao das ajudas para o formulario adminRascunhos;
* 								07/11/2011 - Modificacao dos nomes das UF(Unidade da federacao) para Estado.
*								30/11/2011 - adaptação para novo modelo de banco de dados (Modularizado atraves de schemas) - João Vasconcelos;
* 
*/

INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_DATA_TERMINO_PERIODO_DATE_TEXT_BOX' AS nome,
       'FORM_FIELD_DATA_TERMINO_PERIODO_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_DATA_INICIO_PERIODO_DATE_TEXT_BOX' AS nome,
       'FORM_FIELD_DATA_INICIO_PERIODO_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_SELECT_TIPO_DATA_FILTERING_SELECT' AS nome,
       'FORM_FIELD_ADMIN_RASCUNHOS_SELECT_TIPO_DATA_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_FORMULARIO_FILTERING_SELECT' AS nome,
       'FORM_FIELD_ADMIN_RASCUNHOS_FORMULARIO_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_ACEITE_TERMOS_USO_TEXT_BOX' AS nome,
       'FORM_FIELD_ACEITE_TERMOS_USO_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_TERMOS_USO_TEXT_AREA' AS nome,
       'FORM_FIELD_TERMOS_USO_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_HISTORICO_MEDICO_TEXT_AREA' AS nome,
       'FORM_FIELD_HISTORICO_MEDICO_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_TIPO_SANGUINEO_FILTERING_SELECT' AS nome,
       'FORM_FIELD_TIPO_SANGUINEO_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_PESO_TEXT_BOX' AS nome,
       'FORM_FIELD_PESO_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_ALTURA_TEXT_BOX' AS nome,
       'FORM_FIELD_ALTURA_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_RACA_FILTERING_SELECT' AS nome,
       'FORM_FIELD_RACA_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_SEXO_RADIO_BUTTON' AS nome,
       'FORM_FIELD_SEXO_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_SENHA_CONFIRMACAO_TEXT_BOX' AS nome,
       'FORM_FIELD_SENHA_CONFIRMACAO_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_DATA_NASCIMENTO_DATE_TEXT_BOX' AS nome,
       'FORM_FIELD_DATA_NASCIMENTO_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_LOGIN_TEXT_BOX' AS nome,
       'FORM_FIELD_LOGIN_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_SENHA_TEXT_BOX' AS nome,
       'FORM_FIELD_SENHA_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_LOGIN_MANTER_LOGADO_CHECKBOX' AS nome,
       'FORM_FIELD_CHECKBOX_LOGIN_MANTER_LOGADO_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_CATEGORIA_BOLSA_CNPQ_FILTERING_SELECT' AS nome,
       'FORM_FIELD_CATEGORIA_BOLSA_CNPQ_FILTERING_SELECT_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';
                
INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_MAIOR_TITULACAO_FILTERING_SELECT' AS nome,
       'FORM_FIELD_MAIOR_TITULACAO_FILTERING_SELECT_AJUDA' AS constante_textual_ajuda, 
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_INSTITUICAO_QUE_CONCEDEU_FILTERING_SELECT' AS nome,
       'FORM_FIELD_INSTITUICAO_QUE_CONCEDEU_FILTERING_SELECT_AJUDA' AS constante_textual_ajuda, 
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_AREA_DE_CONHECIMENTO_FILTERING_SELECT' AS nome,
       'FORM_FIELD_AREA_DE_CONHECIMENTO_FILTERING_SELECT_AJUDA' AS constante_textual_ajuda, 
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, constante_textual_hint, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_NOME_CURSO_TEXT_BOX' AS nome,
       'FORM_FIELD_NOME_CURSO_TEXT_BOX_AJUDA' AS constante_textual_ajuda, 'FORM_FIELD_NOME_CURSO_TEXT_BOX_HINT' AS constante_textual_hint,
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, constante_textual_hint, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_DATA_OBTENCAO_DATE_TEXT_BOX' AS nome,
       'FORM_FIELD_DATA_OBTENCAO_DATE_TEXT_BOX_AJUDA' AS constante_textual_ajuda, 'FORM_FIELD_DATA_OBTENCAO_DATE_TEXT_BOX_HINT' AS constante_textual_hint,
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_TITULACAO_ESPERADA_FILTERING_SELECT' AS nome,
       'FORM_FIELD_TITULACAO_ESPERADA_FILTERING_SELECT_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_INSTITUICAO_CURSO_ATUAL_FILTERING_SELECT' AS nome,
       'FORM_FIELD_INSTITUICAO_CURSO_ATUAL_FILTERING_SELECT_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_AREA_CONHECIMENTO_CURSO_ATUAL_FILTERING_SELECT' AS nome,
       'FORM_FIELD_AREA_CONHECIMENTO_CURSO_ATUAL_FILTERING_SELECT_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, constante_textual_hint, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_NOME_CURSO_ATUAL_TEXT_BOX' AS nome,
       'FORM_FIELD_NOME_CURSO_ATUAL_TEXT_BOX_AJUDA' AS constante_textual_ajuda, 'FORM_FIELD_NOME_CURSO_ATUAL_TEXT_BOX_HINT' AS constante_textual_hint,
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_PERIODO_FILTERING_SELECT' AS nome,
       'FORM_FIELD_PERIODO_FILTERING_SELECT_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_TURNO_FILTERING_SELECT' AS nome,
       'FORM_FIELD_TURNO_FILTERING_SELECT_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_PROFISSAO_FILTERING_SELECT' AS nome,
       'FORM_FIELD_PROFISSAO_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_VINCULO_PROFISSIONAL_FILTERING_SELECT' AS nome,
       'FORM_FIELD_VINCULO_PROFISSIONAL_AJUDA' AS constante_textual_ajuda, 
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_PJ_VINCULO_FILTERING_SELECT' AS nome,
       'FORM_FIELD_PJ_VINCULO_AJUDA' AS constante_textual_ajuda, 
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_REGIME_TRABALHO_FILTERING_SELECT' AS nome,
       'FORM_FIELD_REGIME_TRABALHO_AJUDA' AS constante_textual_ajuda, 
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, constante_textual_hint, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_CARGO_TEXT_BOX' AS nome,
       'FORM_FIELD_CARGO_AJUDA' AS constante_textual_ajuda, 'FORM_FIELD_CARGO_HINT' AS constante_textual_hint,
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, constante_textual_hint, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_FUNCAO_TEXT_BOX' AS nome,
       'FORM_FIELD_FUNCAO_AJUDA' AS constante_textual_ajuda, 'FORM_FIELD_FUNCAO_HINT' AS constante_textual_hint,
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_ATIVIDADES_DESENVOLVIDAS_TEXT_AREA' AS nome,
       'FORM_FIELD_ATIVIDADES_DESENVOLVIDAS_AJUDA' AS constante_textual_ajuda, 
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, constante_textual_hint, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_DATA_ADMISSAO_DATE_TEXT_BOX' AS nome,
       'FORM_FIELD_DATA_ADMISSAO_AJUDA' AS constante_textual_ajuda, 'FORM_FIELD_DATA_ADMISSAO_HINT' AS constante_textual_hint, 
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, constante_textual_hint, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_DATA_DESVINCULACAO_DATE_TEXT_BOX' AS nome,
       'FORM_FIELD_DATA_DESVINCULACAO_AJUDA' AS constante_textual_ajuda, 'FORM_FIELD_DATA_DESVINCULACAO_HINT' AS constante_textual_hint, 
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, constante_textual_hint, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_CARGA_HORARIA_SEMANAL_TEXT_BOX' AS nome,
       'FORM_FIELD_CARGA_HORARIA_SEMANAL_AJUDA' AS constante_textual_ajuda, 'FORM_FIELD_CARGA_HORARIA_SEMANAL_HINT' AS constante_textual_hint, 
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, constante_textual_hint, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_SALARIO_BRUTO_TEXT_BOX' AS nome,
       'FORM_FIELD_SALARIO_BRUTO_AJUDA' AS constante_textual_ajuda, 'FORM_FIELD_SALARIO_BRUTO_HINT' AS constante_textual_hint, 
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_DEDICACAO_EXCLUSIVA_CHECK_BOX' AS nome,
       'FORM_FIELD_DEDICACAO_EXCLUSIVA_AJUDA' AS constante_textual_ajuda,  
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_OUTRAS_INFORMACOES_TEXT_AREA' AS nome,
       'FORM_FIELD_OUTRAS_INFORMACOES_AJUDA' AS constante_textual_ajuda,  
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_PERFIS_DISPONIVEIS_MULTI_CHECK_BOX' AS nome,
       'FORM_FIELD_PERFIS_DISPONIVEIS_AJUDA' AS constante_textual_ajuda,  
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_PERFIS_VINCULADOS_DISPONIVEIS_FILTERING_SELECT' AS nome,
       'FORM_FIELD_PERFIS_VINCULADOS_DISPONIVEIS_AJUDA' AS constante_textual_ajuda,  
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_SENHA_ATUAL_TEXT_BOX' AS nome,
       'FORM_FIELD_SENHA_ATUAL_AJUDA' AS constante_textual_ajuda,  
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_NOVA_SENHA_TEXT_BOX' AS nome,
       'FORM_FIELD_NOVA_SENHA_AJUDA' AS constante_textual_ajuda,  
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_CONFIRMACAO_NOVA_SENHA_TEXT_BOX' AS nome,
       'FORM_FIELD_CONFIRMACAO_NOVA_SENHA_AJUDA' AS constante_textual_ajuda,  
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_TELEFONE_TIPO_FILTERING_SELECT' AS nome,
       'FORM_FIELD_TELEFONE_TIPO_AJUDA' AS constante_textual_ajuda, 
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, constante_textual_hint, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_TELEFONE_CODIGO_PAIS_TEXT_BOX' AS nome,
       'FORM_FIELD_TELEFONE_CODIGO_PAIS_AJUDA' AS constante_textual_ajuda, 'FORM_FIELD_TELEFONE_CODIGO_PAIS_HINT' AS constante_textual_hint,
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, constante_textual_hint, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_TELEFONE_CODIGO_AREA_TEXT_BOX' AS nome,
       'FORM_FIELD_TELEFONE_CODIGO_AREA_AJUDA' AS constante_textual_ajuda, 'FORM_FIELD_TELEFONE_CODIGO_AREA_HINT' AS constante_textual_hint,
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, constante_textual_hint, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_TELEFONE_TEXT_BOX' AS nome,
       'FORM_FIELD_TELEFONE_AJUDA' AS constante_textual_ajuda, 'FORM_FIELD_TELEFONE_HINT' AS constante_textual_hint,
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, constante_textual_hint, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_TELEFONE_RAMAL_TEXT_BOX' AS nome,
       'FORM_FIELD_TELEFONE_RAMAL_AJUDA' AS constante_textual_ajuda, 'FORM_FIELD_TELEFONE_RAMAL_HINT' AS constante_textual_hint,
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_TELEFONE_DESCRICAO_TEXT_AREA' AS nome,
       'FORM_FIELD_TELEFONE_DESCRICAO_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_EMAIL_TIPO_FILTERING_SELECT' AS nome,
       'FORM_FIELD_EMAIL_TIPO_AJUDA' AS constante_textual_ajuda, 
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_EMAIL_DESCRICAO_TEXT_AREA' AS nome,
       'FORM_FIELD_EMAIL_DESCRICAO_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_WEBSITE_TIPO_FILTERING_SELECT' AS nome,
       'FORM_FIELD_WEBSITE_TIPO_AJUDA' AS constante_textual_ajuda, 
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_WEBSITE_ENDERECO_TEXT_BOX' AS nome,
       'FORM_FIELD_WEBSITE_ENDERECO_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_WEBSITE_DESCRICAO_TEXT_AREA' AS nome,
       'FORM_FIELD_WEBSITE_DESCRICAO_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, constante_textual_hint, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_NOME_USUARIO_TEXT_BOX' AS nome,
       'FORM_FIELD_NOME_AJUDA' AS constante_textual_ajuda, 'FORM_FIELD_NOME_HINT' AS constante_textual_hint, 
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';

INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, constante_textual_hint, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_EMAIL_USUARIO_TEXT_BOX' AS nome,
       'FORM_FIELD_EMAIL_AJUDA' AS constante_textual_ajuda, 'FORM_FIELD_EMAIL_HINT' AS constante_textual_hint, 
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';



/**
* INICIO
*  
* ABA CADASTRO DE USUARIO - DADOS PESSOAIS
*/

-- ajuda - formulario - cadastro - usuario
-- dados pessoais - pais nascimento - combobox.
INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_PAIS_NASCIMENTO_FILTERING_SELECT' AS nome,
       'FORM_FIELD_PAIS_NASCIMENTO_FILTERING_SELECT_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';
---------

-- ajuda - formulario - cadastro - usuario
-- dados pessoais - ESTADO nascimento - combobox.
INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_ESTADO_NASCIMENTO_FILTERING_SELECT' AS nome,
       'FORM_FIELD_ESTADO_NASCIMENTO_FILTERING_SELECT_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';
----------

-- ajuda - formulario - cadastro - usuario
-- dados pessoais ESTADO nascimento - texbox.
INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, constante_textual_hint, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_ESTADO_NASCIMENTO_TEXT_BOX' AS nome,
       'FORM_FIELD_ESTADO_NASCIMENTO_TEXT_BOX_AJUDA' AS constante_textual_ajuda, 'FORM_FIELD_ESTADO_NASCIMENTO_TEXT_BOX_HINT' AS constante_textual_hint,
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';
----------

-- ajuda - formulario - cadastro - usuario
-- dados pessoais - municipio nascimento - combobox.
INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_MUNICIPIO_NASCIMENTO_FILTERING_SELECT' AS nome,
       'FORM_FIELD_MUNICIPIO_NASCIMENTO_FILTERING_SELECT_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';
-----------------

-- ajuda - formulario - cadastro - usuario
--- dados pessoais - municipio nascimento - textbox.
INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, constante_textual_hint, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_MUNICIPIO_NASCIMENTO_TEXT_BOX' AS nome,
       'FORM_FIELD_MUNICIPIO_NASCIMENTO_TEXT_BOX_AJUDA' AS constante_textual_ajuda, 'FORM_FIELD_MUNICIPIO_NASCIMENTO_TEXT_BOX_HINT' AS constante_textual_hint,
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';
-----------------

-- ajuda - formulario - cadastro - usuario
-- dados pessoais - nome pai - textbox
INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, constante_textual_hint, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_NOME_PAI_TEXT_BOX' AS nome,
       'FORM_FIELD_NOME_PAI_TEXT_BOX_AJUDA' AS constante_textual_ajuda, 'FORM_FIELD_NOME_PAI_TEXT_BOX_HINT' AS constante_textual_hint,
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';
-----------------

-- ajuda - formulario - cadastro - usuario
-- dados pessoais - nome mae - texbox
INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, constante_textual_hint, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_NOME_MAE_TEXT_BOX' AS nome,
       'FORM_FIELD_NOME_MAE_TEXT_BOX_AJUDA' AS constante_textual_ajuda, 'FORM_FIELD_NOME_MAE_TEXT_BOX_HINT' AS constante_textual_hint,
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
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
INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_ENDERECO_TIPO_FILTERING_SELECT' AS nome,
       'FORM_FIELD_ENDERECO_TIPO_FILTERING_SELECT_AJUDA' AS constante_textual_ajuda, 
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';
-----------------

-- ajuda - formulario - cadastro
-- endereco - pais - combobox
INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_PAIS_FILTERING_SELECT' AS nome,
       'FORM_FIELD_ENDERECO_PAIS_FILTERING_SELECT_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';
-----------------

-- ajuda - formulario - cadastro
-- endereco - ESTADO - combobox.
INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_ESTADO_FILTERING_SELECT' AS nome,
       'FORM_FIELD_ENDERECO_ESTADO_FILTERING_SELECT_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';
-----------------

-- ajuda - formulario - cadastro
-- endereco - ESTADO - texbox.
INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, constante_textual_hint, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_ESTADO_TEXT_BOX' AS nome,
       'FORM_FIELD_ENDERECO_ESTADO_TEXT_BOX_AJUDA' AS constante_textual_ajuda, 'FORM_FIELD_ENDERECO_ESTADO_TEXT_BOX_HINT' AS constante_textual_hint,
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';
-----------------

-- ajuda - formulario - cadastro
-- endereco - municipio - combobox.
INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_MUNICIPIO_FILTERING_SELECT' AS nome,
       'FORM_FIELD_ENDERECO_MUNICIPIO_FILTERING_SELECT_AJUDA' AS constante_textual_ajuda,
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';
-----------------

-- ajuda - formulario - cadastro
-- endereco - municipio - textbox
INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, constante_textual_hint, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_MUNICIPIO_TEXT_BOX' AS nome,
       'FORM_FIELD_ENDERECO_MUNICIPIO_TEXT_BOX_AJUDA' AS constante_textual_ajuda, 'FORM_FIELD_ENDERECO_MUNICIPIO_TEXT_BOX_HINT' AS constante_textual_hint,
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';
-----------------

-- ajuda - formulario - cadastro
-- endereco - cep - textbox.
INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, constante_textual_hint, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_CEP_TEXT_BOX' AS nome,
       'FORM_FIELD_ENDERECO_CEP_TEXT_BOX_AJUDA' AS constante_textual_ajuda, 'FORM_FIELD_ENDERECO_CEP_TEXT_BOX_HINT' AS constante_textual_hint,
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';
-----------------

-- ajuda - formulario - cadastro
-- endereco - logradouro - textbox
INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, constante_textual_hint, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_LOGRADOURO_TEXT_BOX' AS nome,
       'FORM_FIELD_ENDERECO_LOGRADOURO_TEXT_BOX_AJUDA' AS constante_textual_ajuda, 'FORM_FIELD_ENDERECO_LOGRADOURO_TEXT_BOX_HINT' AS constante_textual_hint,
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';
-----------------

-- ajuda - formulario - cadastro
-- endereco - numero - textbox
INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, constante_textual_hint, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_ENDERECO_NUMERO_TEXT_BOX' AS nome,
       'FORM_FIELD_ENDERECO_NUMERO_TEXT_BOX_AJUDA' AS constante_textual_ajuda, 'FORM_FIELD_ENDERECO_NUMERO_TEXT_BOX_HINT' AS constante_textual_hint,
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';
-----------------

-- ajuda - formulario - cadastro
-- endereco - complemento - textbox
INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, constante_textual_hint, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_ENDERECO_COMPLEMENTO_TEXT_BOX' AS nome,
       'FORM_FIELD_ENDERECO_COMPLEMENTO_TEXT_BOX_AJUDA' AS constante_textual_ajuda, 'FORM_FIELD_ENDERECO_COMPLEMENTO_TEXT_BOX_HINT' AS constante_textual_hint,
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
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
INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, constante_textual_hint, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_NUMERO_BANCO_TEXT_BOX' AS nome,
       'FORM_FIELD_CONTA_BANCARIA_NUMERO_BANCO_TEXT_BOX_AJUDA' AS constante_textual_ajuda, 'FORM_FIELD_CONTA_BANCARIA_NUMERO_BANCO_TEXT_BOX_HINT' AS constante_textual_hint,
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';
-----------------

-- ajuda - formulario - cadastro
-- conta bancaria - banco - combobox
INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_BANCO_FILTERING_SELECT' AS nome,
       'FORM_FIELD_CONTA_BANCARIA_BANCO_FILTERING_SELECT_AJUDA' AS constante_textual_ajuda, 
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';
-----------------

-- ajuda - formulario - cadastro
-- conta bancaria - agencia - texbox.
INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, constante_textual_hint, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_AGENCIA_TEXT_BOX' AS nome,
       'FORM_FIELD_CONTA_BANCARIA_AGENCIA_TEXT_BOX_AJUDA' AS constante_textual_ajuda, 'FORM_FIELD_CONTA_BANCARIA_AGENCIA_TEXT_BOX_HINT' AS constante_textual_hint,
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';
-----------------

-- ajuda - formulario - cadastro
-- conta bancaria - tipo conta - combobox
INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_TIPO_CONTA_FILTERING_SELECT' AS nome,
       'FORM_FIELD_CONTA_BANCARIA_TIPO_CONTA_FILTERING_SELECT_AJUDA' AS constante_textual_ajuda, 
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';
-----------------

-- ajuda - formulario - cadastro
-- conta bancaria - numero conta - texbox.
INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, constante_textual_hint, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_NUMERO_CONTA_TEXT_BOX' AS nome,
       'FORM_FIELD_CONTA_BANCARIA_NUMERO_CONTA_TEXT_BOX_AJUDA' AS constante_textual_ajuda, 'FORM_FIELD_CONTA_BANCARIA_NUMERO_CONTA_TEXT_BOX_HINT' AS constante_textual_hint,
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';
-----------------

-- ajuda - formulario - cadastro
-- conta bancaria - descricao identificacao - texbox.
INSERT into basico.ajuda (id_categoria, ativo,  nome, constante_textual_ajuda, constante_textual_hint, rowinfo)
SELECT c.id AS id_categoria, 1,  'AJUDA_FORMULARIO_FIELD_DESCRICAO_IDENTIFICACAO_CONTA_TEXT_BOX' AS nome,
       'FORM_FIELD_CONTA_BANCARIA_DESCRICAO_IDENTIFICACAO_CONTA_TEXT_BOX_AJUDA' AS constante_textual_ajuda, 'FORM_FIELD_CONTA_BANCARIA_DESCRICAO_IDENTIFICACAO_CONTA_TEXT_BOX_HINT' AS constante_textual_hint,
       'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'AJUDA'
AND c.nome = 'AJUDA_FORMULARIO_FIELD';
-----------------

/**
* FIM - CADASTRO DE CONTA BANCARIA
*/