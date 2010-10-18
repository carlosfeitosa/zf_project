/*
* SCRIPT DE POPULACAO DAS TABELAS DO SPRINT 0003
* 
* versao: 1.0 (POSTGRESQL 8.4.1)
* por: ADRIANO LEMOS (adriano.lemos@rochedoproject.com)
* criacao: 27/09/2010
* ultimas modificacoes: 
* 
* 						
* 						27/09/2010 - insercao de dados em formulario
* 								   - insercao de template formulario
* 								   
* 						30/09/2010 - insercao de componentes do dojo
* 								   - insercao de expressoes no dicionario
* 								   - insercao de componentes no formulário
* 						06/10/2010 - Transferido deste script para o script do sprint 0003, o Container de dados usuários
* 								   - Todos os Elementos transferidos para o sprint 0003
* 								   - Associacao de alguns elementos a formulários foram transferidos para o sprint 0003
* 								   - Componentes Transferidos para o Sprint 0003
* 								   - Categorias Transferidas para o Sprint 0003
* 								   - Tipo Categorias Transferidas para o Sprint 0003
* 								   - Expressões Transferidas para o Sprint 0003
* 						14/10/2010 - Criacao dos decorators para Accordeon Containers;
* 								   - Vinculacao do formulario SUBFORM_DADOS_USUARIO_DADOS_PROFISSIONAIS ao decorator DECORATOR_FORM_ACCORDION_CONTAINER1;
* 								   - Preenchendo o campo ordem para os sub-formularios;
* 								   - Criacao do formulario de inclusao de Vinculo Profissional e associacao de um botao dialog dojo a este formulario no formulario
* 									 SUBFORM_DADOS_USUARIO_DADOS_PROFISSIONAIS;
* 								   - inclusao do componente DOJO.Textarea;
* 						15/10/2010 - inclusao do componente DOJO SimpleTextarea;
* 								   - inclusao do componente DOJO DateTextBox;
*/



/* DICIONARIO DE EXPRESSÕES */
/*
 * (Português do Brasil - PT_BR)
*/


INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_BUTTON_SUBMIT' AS constante_textual, 'Enviar' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_VALIDATION_TITLE' AS constante_textual, 'Atenção' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_VALIDATION_MESSAGE' AS constante_textual, 'Por favor, preencha todos os campos requeridos antes de continuar.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_CATEGORIA_BOLSA_CNPQ' AS constante_textual, 'Categoria de bolsa no CNPQ:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_CATEGORIA_BOLSA_CNPQ_HINT' AS constante_textual, 'Selecione a categoria de bolsa que você possui no CNPQ:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_MAIOR_TITULACAO' AS constante_textual, 'Maior Titulação:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_MAIOR_TITULACAO_HINT' AS constante_textual, 'Selecione aqui a sua Maior Titulação:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_BUTTON_ABRIR_DIALOG_EDITAR' AS constante_textual, 'Editar' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_TITLE_VINCULO_PROFISSIONAL' AS constante_textual, 'Vinculo Profissional' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_BUTTON_ABRIR_DIALOG_NOVO_VINCULO_PROFISSIONAL' AS constante_textual, 'Novo vinculo profissional' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_PROFISSAO_AJUDA' AS constante_textual, 'Escolha neste campo a profissão mais adequada ao vinculo selecionado' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_PROFISSAO' AS constante_textual, 'Profissão:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_VINCULO_PROFISSIONAL_AJUDA' AS constante_textual, 'Escolha neste campo o seu vinculo profissional' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_VINCULO_PROFISSIONAL' AS constante_textual, 'Vinculo profissional:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_PJ_VINCULO_AJUDA' AS constante_textual, 'Escolha neste campo a empresa/instituição do vinculo (quando aplicavel)' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_PJ_VINCULO' AS constante_textual, 'Empresa/Instituição do vinculo:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_REGIME_TRABALHO_AJUDA' AS constante_textual, 'Escolha neste campo o regime de trabalho do vinculo' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_REGIME_TRABALHO' AS constante_textual, 'Regime de trabalho:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_CARGO_AJUDA' AS constante_textual, 'Digite neste campo o cargo relacionado ao vinculo' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_CARGO_HINT' AS constante_textual, 'Digite o cargo relacionado ao vinculo' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_CARGO' AS constante_textual, 'Cargo:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_FUNCAO_AJUDA' AS constante_textual, 'Digite neste campo a função relacionada ao vinculo' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_FUNCAO_HINT' AS constante_textual, 'Digite a função relacionada ao vinculo' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_FUNCAO' AS constante_textual, 'Função:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_ATIVIDADES_DESENVOLVIDAS_AJUDA' AS constante_textual, 'Digite neste campo uma descrição das atividades desenvolvidas' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_ATIVIDADES_DESENVOLVIDAS' AS constante_textual, 'Atividades desenvolvidas:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_DATA_ADMISSAO_AJUDA' AS constante_textual, 'Digite neste campo a data de admissão relacionada ao vinculo' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_DATA_ADMISSAO_HINT' AS constante_textual, 'Digite uma data valida de admissão relacionada ao vinculo' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_DATA_ADMISSAO' AS constante_textual, 'Data de admissão:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_DATA_DESVINCULACAO_AJUDA' AS constante_textual, 'Digite neste campo a data de desvinculação do vinculo' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_DATA_DESVINCULACAO_HINT' AS constante_textual, 'Digite uma data valida de desvinculação do vinculo' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_DATA_DESVINCULACAO' AS constante_textual, 'Data de desvinculação:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'pt-br';

/*
 * (Inglês Americano - EN_US)
*/

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_BUTTON_SUBMIT' AS constante_textual, 'Send' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_VALIDATION_TITLE' AS constante_textual, 'Attention' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_VALIDATION_MESSAGE' AS constante_textual, 'Please fill all required fields before continue.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_CATEGORIA_BOLSA_CNPQ' AS constante_textual, 'CNPQ Scholarship degree:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_CATEGORIA_BOLSA_CNPQ_HINT' AS constante_textual, 'Please, select your CPNQ scholarship degree.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_MAIOR_TITULACAO' AS constante_textual, 'Highest academic degree:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_MAIOR_TITULACAO_HINT' AS constante_textual, 'Please, select your highest academic degree.' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_BUTTON_ABRIR_DIALOG_EDITAR' AS constante_textual, 'Edit' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_TITLE_VINCULO_PROFISSIONAL' AS constante_textual, 'Professional Bond' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_BUTTON_ABRIR_DIALOG_NOVO_VINCULO_PROFISSIONAL' AS constante_textual, 'New professional bond' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_PROFISSAO_AJUDA' AS constante_textual, 'Choose in this field the profession most appropriated to the selected bond' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_PROFISSAO' AS constante_textual, 'Profession:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_VINCULO_PROFISSIONAL_AJUDA' AS constante_textual, 'Choose in this field your professional bond' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_VINCULO_PROFISSIONAL' AS constante_textual, 'Professional bond:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_PJ_VINCULO_AJUDA' AS constante_textual, 'Choose in this field the bond''s Company/Instituition (when applicable)' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_PJ_VINCULO' AS constante_textual, 'Company/Instituition of the bond:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_REGIME_TRABALHO_AJUDA' AS constante_textual, 'Choose in this field the bond''s work scheme' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_REGIME_TRABALHO' AS constante_textual, 'Work scheme:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_CARGO_AJUDA' AS constante_textual, 'Type in this field the bond''s role' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_CARGO_HINT' AS constante_textual, 'Type the role of the bond' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_CARGO' AS constante_textual, 'Role:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_FUNCAO_AJUDA' AS constante_textual, 'Type in this field the bond''s job function' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_FUNCAO_HINT' AS constante_textual, 'Type the job function' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_FUNCAO' AS constante_textual, 'Job function:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_ATIVIDADES_DESENVOLVIDAS_AJUDA' AS constante_textual, 'Type in this field an description of the developed activities' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_ATIVIDADES_DESENVOLVIDAS' AS constante_textual, 'Developed activities:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_DATA_ADMISSAO_AJUDA' AS constante_textual, 'Type in this field the bond''s admission date' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_DATA_ADMISSAO_HINT' AS constante_textual, 'Type the bond''s admission date (valid date)' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_DATA_ADMISSAO' AS constante_textual, 'Admission''s date:' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_DATA_DESVINCULACAO_AJUDA' AS constante_textual, 'Type in this field the bond''s untying date' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_DATA_DESVINCULACAO_HINT' AS constante_textual, 'Type the bond''s untying date (valid date)' AS traducao
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'LINGUAGEM'
AND c.nome = 'en-us';

INSERT INTO dicionario_expressao (id_categoria, constante_textual, traducao)
SELECT c.id, 'FORM_FIELD_DATA_DESVINCULACAO' AS constante_textual, 'Date of untying:' AS traducao
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


/* TEMPLATE */

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

INSERT INTO decorator (id_categoria, nome, descricao, decorator, rowinfo)
SELECT c.id AS id_categoria, 'DECORATOR_FORM_TAB_CONTAINER1' AS nome, 'Decorator para submissão de sub-formulários (em formato Abas).' AS descricao,
       '''FormElements'',
                array(''TabContainer'', array(''id'' => ''TabContainer'', ''style'' => ''width: 850px; height: 430px; position: relative; z-index: 3;'',
                      ''dijitParams'' => array(''tabPosition'' => ''top''),)),' AS decorator, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_TAB_CONTAINER1_DECORATOR';

INSERT INTO decorator (id_categoria, nome, descricao, decorator, rowinfo)
SELECT c.id AS id_categoria, 'DECORATOR_FORM_ACCORDION_CONTAINER1' AS nome, 'Decorator para submissão de sub-formulários (em formato Acordeon).' AS descricao,
       '''FormElements'',
                array(''AccordionContainer'', array(''id'' => ''AccordionContainer'', ''style'' => ''width: 850px; height: 430px; position: relative; z-index: 3;'',
                      )),' AS decorator, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ACCORDEON_CONTAINER1_DECORATOR';

INSERT INTO decorator (id_categoria, nome, descricao, decorator, rowinfo)
SELECT c.id AS id_categoria, 'DECORATOR_FORM_CONTENT_PANE1' AS nome, 'Decorator para conteudo de containers.' AS descricao,
       '''FormElements'',
                array(''ContentPane'', array(''id'' => ''ContentPane'', ''style'' => ''width: 850px; height: 430px; position: relative; z-index: 3;'',
                      )),' AS decorator, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_CONTENT_PANE1_DECORATOR';

INSERT INTO decorator (id_categoria, nome, descricao, decorator, rowinfo)
SELECT c.id AS id_categoria, 'DECORATOR_FORM_FIELD_DIV' AS nome, 'Decorator para posicionar o elemento dentro de um div.' AS descricao,
       'array(''row'' => ''HtmlTag''), array(''tag'' => ''div'')' AS decorator, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_DIV_DECORATOR';

INSERT INTO decorator (id_categoria, nome, descricao, decorator, rowinfo)
SELECT c.id AS id_categoria, 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT' AS nome, 'Decorator para posicionar o elemento dentro de um div float left.' AS descricao,
       'array(''row'' => ''HtmlTag''), array(''tag'' => ''div'', ''style'' => ''float: left;'',)' AS decorator, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR';

INSERT INTO decorator (id_categoria, nome, descricao, decorator, rowinfo)
SELECT c.id AS id_categoria, 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH' AS nome, 'Decorator para posicionar o elemento dentro de um div float left.' AS descricao,
       'array(''row'' => ''HtmlTag''), array(''tag'' => ''div'', ''style'' => ''float: left; clear: both;'',)' AS decorator, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR';

INSERT INTO decorator (id_categoria, nome, descricao, decorator, rowinfo)
SELECT c.id AS id_categoria, 'DECORATOR_FORM_FIELD_DIV_CLEAR_BOTH' AS nome, 'Decorator para posicionar o elemento dentro de um div float left.' AS descricao,
       'array(''row'' => ''HtmlTag''), array(''tag'' => ''div'', ''style'' => ''clear: both;'',)' AS decorator, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_DIV_CLEAR_BOTH_DECORATOR';


/* MODULO */

INSERT INTO modulo (id_categoria, nome, descricao, versao, path, instalado, ativo, xml_autoria, rowinfo)
SELECT c.id AS id_categoria, 'BASICO' AS nome,
	   'Modulo basico. Necessario para funcionamento minimo do sistema.' AS descricao,
	   '0.3' AS versao, 'basico/' AS path, true AS instalado, true AS ativo,
	   'SYSTEM_XML_STARTUP' AS xml_autoria, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'SISTEMA'
AND c.nome = 'SISTEMA_MODULO';


/* FORMULARIO */

/* Container/Formulário de Dados do usuário */
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

/* Subformulario de dados academicos */

INSERT INTO formulario (id_categoria, id_formulario_pai, nome, descricao, 
                        constante_textual_titulo,form_name, form_method, form_action, 
                        form_attribs, ordem, rowinfo)
		SELECT c.id AS id_categoria,(SELECT f.id
        		                     FROM formulario f
                		             WHERE f.nome = 'FORM_DADOS_USUARIO'),                          
       'SUBFORM_DADOS_USUARIO_DADOS_ACADEMICOS' AS nome,
       'Formulário de submissão de dados acadêmicos.' AS descricao, 
       'SUBFORM_TABTITLE_DADOS_ACADEMICOS' AS constante_textual_titulo,
       'CadastrarDadosUsuarioDadosAcademicos' AS form_name, 
       'post' AS form_method, 
       NULL AS form_action, 
       NULL AS form_attribs, 
       2 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_SUB_FORMULARIO';

/* Subformulario de dados profissionais */

INSERT INTO formulario (id_categoria, id_decorator, id_formulario_pai, nome, descricao, 
                        constante_textual_titulo,form_name, form_method, form_action, 
                        form_attribs, ordem, rowinfo)
		SELECT c.id AS id_categoria, 
		(SELECT d.id
		 FROM decorator d
         LEFT JOIN categoria c ON (d.id_categoria = c.id)
         LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
         WHERE t.nome = 'FORMULARIO'
         AND c.nome = 'FORMULARIO_ACCORDEON_CONTAINER1_DECORATOR'
         AND d.nome = 'DECORATOR_FORM_ACCORDION_CONTAINER1') AS id_decorator,
      	 (SELECT f.id
         FROM formulario f
         WHERE f.nome = 'FORM_DADOS_USUARIO') AS id_formulario_pai,                       
       'SUBFORM_DADOS_USUARIO_DADOS_PROFISSIONAIS' AS nome,
       'Formulário de submissão de dados profissionais.' AS descricao, 
       'SUBFORM_TABTITLE_DADOS_PROFISSIONAIS' AS constante_textual_titulo,
       'CadastrarDadosUsuarioDadosProfissionais' AS form_name, 
       'post' AS form_method, 
       NULL AS form_action, 
       NULL AS form_attribs,
       3 AS ordem,
       'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_SUB_FORMULARIO';

/* Dialog de Novo Vinculo Profissional */

INSERT INTO formulario (id_categoria, nome, descricao, 
                        constante_textual_titulo,form_name, form_method, form_action, 
                        form_attribs, rowinfo)
		SELECT c.id AS id_categoria, 
		'FORM_DIALOG_VINCULO_PROFISSIONAL' AS nome, 
		'Dialog de edicao de dados de vinculos profissionais.' AS descricao, 
        'FORM_TITLE_VINCULO_PROFISSIONAL' AS constante_textual_titulo, 
        'CadastrarDadosUsuarioDadosProfissionaisVinculoProfissional' AS form_name, 
        'post' AS form_method, NULL AS form_action, 
        NULL AS form_attribs, 'SYSTEM_STARTUP' AS rowinfo       
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL';

/* Dialog de Maior Titulacao */

INSERT INTO formulario (id_categoria, nome, descricao, 
                        constante_textual_titulo,form_name, form_method, form_action, 
                        form_attribs, rowinfo)
		SELECT c.id AS id_categoria, 
		'FORM_DIALOG_MAIOR_TITULACAO' AS nome, 
		'Dialog de edicao de dados de maior titulacao.' AS descricao, 
        'FORM_FIELD_MAIOR_TITULACAO' AS constante_textual_titulo, 
        'CadastrarDadosUsuarioDadosAcademicosMaiorTitulacao' AS form_name, 
        'post' AS form_method, NULL AS form_action, 
        NULL AS form_attribs, 'SYSTEM_STARTUP' AS rowinfo       
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO';


/* FORMULARIO TEMPLATE */

/* formulário de dados do usuário */
INSERT INTO template_formulario (id_formulario, id_template, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO'
        AND f.nome = 'FORM_DADOS_USUARIO') AS id_formulario,
       (SELECT p.id
		FROM template p
		LEFT JOIN categoria c ON (p.id_categoria = c.id)
		LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'FORMULARIO'
		AND c.nome = 'FORMULARIO_TEMPLATE'
		AND p.nome = 'TEMPLATE_DOJO') AS id_template,
	   'SYSTEM_STARTUP' AS rowinfo;

/* sub formulario de dados academicos */
INSERT INTO template_formulario (id_formulario, id_template, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_ACADEMICOS') AS id_formulario,
       (SELECT p.id
		FROM template p
		LEFT JOIN categoria c ON (p.id_categoria = c.id)
		LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'FORMULARIO'
		AND c.nome = 'FORMULARIO_TEMPLATE'
		AND p.nome = 'TEMPLATE_DOJO') AS id_template,
'SYSTEM_STARTUP' AS rowinfo;

/* sub formulario de dados profissionais */
INSERT INTO template_formulario (id_formulario, id_template, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_PROFISSIONAIS') AS id_formulario,
       (SELECT p.id
		FROM template p
		LEFT JOIN categoria c ON (p.id_categoria = c.id)
		LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'FORMULARIO'
		AND c.nome = 'FORMULARIO_TEMPLATE'
		AND p.nome = 'TEMPLATE_DOJO') AS id_template,
'SYSTEM_STARTUP' AS rowinfo;

/* dialog de maior titulacao */
INSERT INTO template_formulario (id_formulario, id_template, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO'
        AND f.nome = 'FORM_DIALOG_MAIOR_TITULACAO') AS id_formulario,
       (SELECT p.id
		FROM template p
		LEFT JOIN categoria c ON (p.id_categoria = c.id)
		LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'FORMULARIO'
		AND c.nome = 'FORMULARIO_TEMPLATE'
		AND p.nome = 'TEMPLATE_DOJO') AS id_template,
'SYSTEM_STARTUP' AS rowinfo;

/* dialog de vinculo profissional */
INSERT INTO template_formulario (id_formulario, id_template, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL'
        AND f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL') AS id_formulario,
       (SELECT p.id
		FROM template p
		LEFT JOIN categoria c ON (p.id_categoria = c.id)
		LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
		WHERE t.nome = 'FORMULARIO'
		AND c.nome = 'FORMULARIO_TEMPLATE'
		AND p.nome = 'TEMPLATE_DOJO') AS id_template,
'SYSTEM_STARTUP' AS rowinfo;


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


/* MODULO BASICO x FORMULARIO */

/* Subform dados academicos */
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
		AND c.nome = 'FORMULARIO_SUB_FORMULARIO'
		AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_ACADEMICOS') AS id_formulario,
		'SYSTEM_STARTUP' AS rowinfo;

/* Subform dados profissionais */
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
		AND c.nome = 'FORMULARIO_SUB_FORMULARIO'
		AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_PROFISSIONAIS') AS id_formulario,
		'SYSTEM_STARTUP' AS rowinfo;

/* Dialog maior titulacao */
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
		AND f.nome = 'FORM_DIALOG_MAIOR_TITULACAO') AS id_formulario,
		'SYSTEM_STARTUP' AS rowinfo;

/* Dialog vinculo profissional */
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
		AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL'
		AND f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL') AS id_formulario,
		'SYSTEM_STARTUP' AS rowinfo;

		
/* COMPONENTE */

/* Component Hidden */
INSERT INTO componente (id_categoria, nome, descricao, componente, rowinfo)
SELECT c.id AS id_categoria, 'ZF_Hidden' AS nome, 'Componente ZF para campos ocultos.' AS descricao,
	   '''hidden''' AS componente, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'COMPONENTE'
AND c.nome = 'COMPONENTE_ZF';

/* Componente TextBox DOJO com validacao */		
INSERT INTO componente (id_categoria, nome, descricao, componente, rowinfo)
SELECT c.id AS id_categoria, 'DOJO_ValidationTextBox' AS nome, 'Componente DOJO para caixas de texto com validação.' AS descricao,
	   '''ValidationTextBox''' AS componente, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'COMPONENTE'
AND c.nome = 'COMPONENTE_DOJO';

/* Componente submitButton do DOJO */
INSERT INTO componente (id_categoria, nome, descricao, componente, rowinfo)
SELECT c.id AS id_categoria, 'DOJO_submitButton' AS nome, 'Componente DOJO para botões de submissão.' AS descricao,
	   '''submitButton''' AS componente, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'COMPONENTE'
AND c.nome = 'COMPONENTE_DOJO';

/* Componente submitButton do ZEND FORM */
INSERT INTO componente (id_categoria, nome, descricao, componente, rowinfo)
SELECT c.id AS id_categoria, 'ZF_button' AS nome, 'Componente ZendFramework de botões.' AS descricao,
	   '''button''' AS componente, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'COMPONENTE'
AND c.nome = 'COMPONENTE_ZF';

/* Componente de ComboBox com filtro do DOJO */
INSERT INTO componente(id_categoria, nome, descricao, componente, rowinfo)
SELECT c.id, 'DOJO_FilteringSelect' AS nome, 'Componente DOJO para ComboBox com filtragem' AS descricao, 
		'''FilteringSelect''' AS componente, 'SYSTEM_STARTUP' as rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'COMPONENTE'
AND c.nome = 'COMPONENTE_DOJO';
		
/* Componente de Multicheckbox do ZEND FORM*/
INSERT INTO componente(id_categoria, nome, descricao, componente, rowinfo)
SELECT c.id, 'ZF_MultiCheckbox' AS nome, 'Componente ZF para multiplos CheckBoxs' AS descricao, 
		'''MultiCheckbox''' AS componente, 'SYSTEM_STARTUP' as rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'COMPONENTE'
AND c.nome = 'COMPONENTE_ZF';

/* Componente de Multicheckbox do DOJO */
INSERT INTO componente(id_categoria, nome, descricao, componente, rowinfo)
SELECT c.id, 'DOJO_CheckBox' AS nome, 'Componente DOJO para CheckBox' AS descricao, 
		'''CheckBox''' AS componente, 'SYSTEM_STARTUP' as rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'COMPONENTE'
AND c.nome = 'COMPONENTE_DOJO';

/* Componente de caixa de texto ajustavel DOJO */
INSERT INTO componente(id_categoria, nome, descricao, componente, rowinfo)
SELECT c.id, 'DOJO_Textarea' AS nome, 'Componente DOJO para campos do tipo texto (auto ajustavel)' AS descricao, 
		'''Textarea''' AS componente, 'SYSTEM_STARTUP' as rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'COMPONENTE'
AND c.nome = 'COMPONENTE_DOJO';

/* Componente de caixa de texto de dimensoes fixas DOJO */
INSERT INTO componente(id_categoria, nome, descricao, componente, rowinfo)
SELECT c.id, 'DOJO_SimpleTextarea' AS nome, 'Componente DOJO para campos do tipo texto (dimensoes fixas)' AS descricao, 
		'''SimpleTextarea''' AS componente, 'SYSTEM_STARTUP' as rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'COMPONENTE'
AND c.nome = 'COMPONENTE_DOJO';

/* Componente de caixa de selecao de data DOJO */
INSERT INTO componente(id_categoria, nome, descricao, componente, rowinfo)
SELECT c.id, 'DOJO_DateTextBox' AS nome, 'Componente DOJO para campos do tipo texto (dimensoes fixas)' AS descricao, 
		'''DateTextBox''' AS componente, 'SYSTEM_STARTUP' as rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'COMPONENTE'
AND c.nome = 'COMPONENTE_DOJO';


/* FOMULARIO ELEMENTO */

/* Elemento ZF Hidden */
INSERT INTO formulario_elemento (id_categoria,  
								 id_decorator, id_componente, nome, descricao, constante_textual_label, 
								 element_name, element_attribs, element, element_reloadable, 
								 rowinfo)

SELECT c.id AS id_categoria, (SELECT d.id
                              FROM decorator d
                              LEFT JOIN categoria c ON (d.id_categoria = c.id)
                              LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'FORMULARIO'
                              AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
                              AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
							 (SELECT cp.id
                              FROM componente cp
                              LEFT JOIN categoria c ON (cp.id_categoria = c.id)
                              LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'COMPONENTE'
                              AND c.nome = 'COMPONENTE_ZF'
                              AND cp.nome = 'ZF_Hidden') AS id_componente,
                              'FORM_FIELD_DIV_CLEAR_BOTH' AS nome, 'Elemento Hidden para fechamento de formatacao div float.' AS descricao,
                              'FORM_FIELD_CATEGORIA_BOLSA_CNPQ' AS constante_textual_label,
                              'dummyHidden' AS element_name, NULL AS element_attribs,
                              '''dummyHidden''' AS element, false AS element_reloadable, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR';

/* Elemento Combobox com filtro do DOJO De categoria de Bolsa do CNPQ */
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
                              AND a.nome = 'AJUDA_CAMPO_MAIOR_TITULACAO') AS id_ajuda,
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
                              AND cp.nome = 'DOJO_FilteringSelect') AS id_componente,
                              'FIELD_CATEGORIA_BOLSA_CNPQ' AS nome, 'Elemento campo Categoria da bolsa do cnpq, com filtro.' AS descricao,
                              'FORM_FIELD_CATEGORIA_BOLSA_CNPQ' AS constante_textual_label,
                              'categoriaBolsaCnpq' AS element_name, NULL AS element_attribs,
                              '''categoriaBolsaCnpq''' AS element, true AS element_reloadable, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

/* Elemento Combobox com filtro do DOJO do Dialog de Maior Titulacao */ 
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
                              AND a.nome = 'AJUDA_CAMPO_MAIOR_TITULACAO') AS id_ajuda,
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
                              AND cp.nome = 'DOJO_FilteringSelect') AS id_componente,
                              'FIELD_MAIOR_TITULACAO' AS nome, 'Elemento campo Maior Titulação, com filtro.' AS descricao,
                              'FORM_FIELD_MAIOR_TITULACAO' AS constante_textual_label,
                              'maiorTitulacao' AS element_name, NULL AS element_attribs,
                              '''maiorTitulacao''' AS element, true AS element_reloadable, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

/* Elemento Botão de submissão de formulário */
INSERT INTO formulario_elemento (id_categoria, nome, descricao, id_componente, constante_textual_label,
                                 element_name, element, rowinfo)
SELECT c.id AS id_categoria, 'FORM_BUTTON_SUBMIT' AS nome, 'Botão para submissão de formulários.' AS descricao,
	   (SELECT cp.id
        FROM componente cp
        LEFT JOIN categoria c ON (cp.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'COMPONENTE'
        AND c.nome = 'COMPONENTE_DOJO'
        AND cp.nome = 'DOJO_submitButton') AS id_componente,
       'FORM_BUTTON_SUBMIT' AS constante_textual_label, 'enviar' AS element_name, 
       '''enviar''' AS element, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON';

/* Elemento Botão de abertura de Dialog */
INSERT INTO formulario_elemento (id_categoria, nome, descricao, id_componente, element_name, element_attribs, element, element_reloadable, rowinfo)
SELECT c.id AS id_categoria, 'FORM_BUTTON_DIALOG_DOJO' AS nome, 'Botão para chamar caixa de dialogo DOJO.' AS descricao,
	   (SELECT cp.id
        FROM componente cp
        LEFT JOIN categoria c ON (cp.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'COMPONENTE'
        AND c.nome = 'COMPONENTE_ZF'
        AND cp.nome = 'ZF_button') AS id_componente,
       'buttonDialogDojo' AS element_name, 
       '''label'' => "{@tituloForm}", ''onClick'' => "exibirForm(\\"@nomeForm\\", \\"{@variableInstaceForm}\\", \\"{@tituloForm}\\")"' AS element_attribs,
       '''buttonDialogDojo@offset''' AS element, false AS element_reloadable, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO';

/* Elemento Combobox com filtro do DOJO para profissoes */
INSERT INTO formulario_elemento (id_categoria, id_ajuda,  
								 id_decorator, id_componente, nome, descricao, constante_textual_label, 
								 element_name, element_attribs, element, element_reloadable, 
								 rowinfo)

SELECT c.id AS id_categoria, (SELECT a.id
                              FROM ajuda a
                              LEFT JOIN categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_CADASTRO_USUARIO_DADOS_PROFISSIONAIS'
                              AND a.nome = 'AJUDA_FORMULARIO_CADASTRO_USUARIO_DADOS_PROFISSIONAIS_PROFISSAO') AS id_ajuda,
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
                              AND cp.nome = 'DOJO_FilteringSelect') AS id_componente,
                              'FORM_FIELD_PROFISSAO' AS nome, 'Elemento campo combobox profissões' AS descricao,
                              'FORM_FIELD_PROFISSAO' AS constante_textual_label,
                              'profissao' AS element_name, NULL AS element_attribs,
                              '''profissao''' AS element, true AS element_reloadable, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

/* Elemento Combobox com filtro do DOJO para vinculo profissional */
INSERT INTO formulario_elemento (id_categoria, id_ajuda,  
								 id_decorator, id_componente, nome, descricao, constante_textual_label, 
								 element_name, element_attribs, element, element_reloadable, 
								 rowinfo)

SELECT c.id AS id_categoria, (SELECT a.id
                              FROM ajuda a
                              LEFT JOIN categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_CADASTRO_USUARIO_DADOS_PROFISSIONAIS'
                              AND a.nome = 'AJUDA_FORMULARIO_CADASTRO_USUARIO_DADOS_PROFISSIONAIS_VINCULO_PROFISSIONAL') AS id_ajuda,
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
                              AND cp.nome = 'DOJO_FilteringSelect') AS id_componente,
                              'FORM_FIELD_VINCULO_PROFISSIONAL' AS nome, 'Elemento campo combobox vinculo profissional' AS descricao,
                              'FORM_FIELD_VINCULO_PROFISSIONAL' AS constante_textual_label,
                              'vinculoProfissional' AS element_name, NULL AS element_attribs,
                              '''vinculoProfissional''' AS element, true AS element_reloadable, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

/* Elemento Combobox com filtro do DOJO para Empresas/Instituicoes */
INSERT INTO formulario_elemento (id_categoria, id_ajuda,  
								 id_decorator, id_componente, nome, descricao, constante_textual_label, 
								 element_name, element_attribs, element, element_reloadable, 
								 rowinfo)

SELECT c.id AS id_categoria, (SELECT a.id
                              FROM ajuda a
                              LEFT JOIN categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_CADASTRO_USUARIO_DADOS_PROFISSIONAIS'
                              AND a.nome = 'AJUDA_FORMULARIO_CADASTRO_USUARIO_DADOS_PROFISSIONAIS_PJ_VINCULO') AS id_ajuda,
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
                              AND cp.nome = 'DOJO_FilteringSelect') AS id_componente,
                              'FORM_FIELD_PJ_VINCULO' AS nome, 'Elemento campo combobox empresa/instituição' AS descricao,
                              'FORM_FIELD_PJ_VINCULO' AS constante_textual_label,
                              'pjVinculo' AS element_name, NULL AS element_attribs,
                              '''pjVinculo''' AS element, true AS element_reloadable, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

/* Elemento Combobox com filtro do DOJO para regime de trabalho */
INSERT INTO formulario_elemento (id_categoria, id_ajuda,  
								 id_decorator, id_componente, nome, descricao, constante_textual_label, 
								 element_name, element_attribs, element, element_reloadable, 
								 rowinfo)

SELECT c.id AS id_categoria, (SELECT a.id
                              FROM ajuda a
                              LEFT JOIN categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_CADASTRO_USUARIO_DADOS_PROFISSIONAIS'
                              AND a.nome = 'AJUDA_FORMULARIO_CADASTRO_USUARIO_DADOS_PROFISSIONAIS_REGIME_TRABALHO') AS id_ajuda,
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
                              AND cp.nome = 'DOJO_FilteringSelect') AS id_componente,
                              'FORM_FIELD_REGIME_TRABALHO' AS nome, 'Elemento campo combobox regime de trabalho' AS descricao,
                              'FORM_FIELD_REGIME_TRABALHO' AS constante_textual_label,
                              'regimeTrabalho' AS element_name, NULL AS element_attribs,
                              '''regimeTrabalho''' AS element, true AS element_reloadable, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

/* Elemento editbox com filtro do DOJO para cargo */
INSERT INTO formulario_elemento (id_categoria, id_ajuda, id_formulario_elemento_filter,
								 id_decorator, id_componente, nome, descricao, constante_textual_label, 
								 element_name, element_attribs, element, element_reloadable, 
								 rowinfo)

SELECT c.id AS id_categoria, (SELECT a.id
                              FROM ajuda a
                              LEFT JOIN categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_CADASTRO_USUARIO_DADOS_PROFISSIONAIS'
                              AND a.nome = 'AJUDA_FORMULARIO_CADASTRO_USUARIO_DADOS_PROFISSIONAIS_CARGO') AS id_ajuda,
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
                              'FORM_FIELD_CARGO' AS nome, 'Elemento campo editbox cargo' AS descricao,
                              'FORM_FIELD_CARGO' AS constante_textual_label,
                              'cargo' AS element_name, NULL AS element_attribs,
                              '''cargo''' AS element, true AS element_reloadable, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

/* Elemento editbox com filtro do DOJO para funcao */
INSERT INTO formulario_elemento (id_categoria, id_ajuda, id_formulario_elemento_filter,
								 id_decorator, id_componente, nome, descricao, constante_textual_label, 
								 element_name, element_attribs, element, element_reloadable, 
								 rowinfo)

SELECT c.id AS id_categoria, (SELECT a.id
                              FROM ajuda a
                              LEFT JOIN categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_CADASTRO_USUARIO_DADOS_PROFISSIONAIS'
                              AND a.nome = 'AJUDA_FORMULARIO_CADASTRO_USUARIO_DADOS_PROFISSIONAIS_FUNCAO') AS id_ajuda,
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
                              'FORM_FIELD_FUNCAO' AS nome, 'Elemento campo editbox funcao' AS descricao,
                              'FORM_FIELD_FUNCAO' AS constante_textual_label,
                              'funcao' AS element_name, NULL AS element_attribs,
                              '''funcao''' AS element, true AS element_reloadable, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

/* Elemento editbox com filtro do DOJO para atividades desenvolvidas */
INSERT INTO formulario_elemento (id_categoria, id_ajuda, id_formulario_elemento_filter,
								 id_decorator, id_componente, nome, descricao, constante_textual_label, 
								 element_name, element_attribs, element, element_reloadable, 
								 rowinfo)

SELECT c.id AS id_categoria, (SELECT a.id
                              FROM ajuda a
                              LEFT JOIN categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_CADASTRO_USUARIO_DADOS_PROFISSIONAIS'
                              AND a.nome = 'AJUDA_FORMULARIO_CADASTRO_USUARIO_DADOS_PROFISSIONAIS_ATIVIDADES_DESENVOLVIDAS') AS id_ajuda,
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
                              AND cp.nome = 'DOJO_SimpleTextarea') AS id_componente,
                              'FORM_FIELD_ATIVIDADES_DESENVOLVIDAS' AS nome, 'Elemento campo textarea atividades desenvolvidas' AS descricao,
                              'FORM_FIELD_ATIVIDADES_DESENVOLVIDAS' AS constante_textual_label,
                              'atividadesDesenvolvidas' AS element_name, NULL AS element_attribs,
                              '''atividadesDesenvolvidas'', array(''style'' => ''width: 525px;'')' AS element, true AS element_reloadable, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

/* Elemento editbox com filtro do DOJO para data de admissao */
INSERT INTO formulario_elemento (id_categoria, id_ajuda, 
								 id_decorator, id_componente, nome, descricao, constante_textual_label, 
								 element_name, element_attribs, element, element_reloadable, 
								 rowinfo)

SELECT c.id AS id_categoria, (SELECT a.id
                              FROM ajuda a
                              LEFT JOIN categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_CADASTRO_USUARIO_DADOS_PROFISSIONAIS'
                              AND a.nome = 'AJUDA_FORMULARIO_CADASTRO_USUARIO_DADOS_PROFISSIONAIS_DATA_ADMISSAO') AS id_ajuda,
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
                              AND cp.nome = 'DOJO_DateTextBox') AS id_componente,
                              'FORM_FIELD_DATA_ADMISSAO' AS nome, 'Elemento campo DateTextBox data de admissao' AS descricao,
                              'FORM_FIELD_DATA_ADMISSAO' AS constante_textual_label,
                              'dataAdmissao' AS element_name, NULL AS element_attribs,
                              '''dataAdmissao'', array(''style'' => ''width: 100px;'')' AS element, true AS element_reloadable, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';

/* Elemento editbox com filtro do DOJO para data de desvinculacao */
INSERT INTO formulario_elemento (id_categoria, id_ajuda, 
								 id_decorator, id_componente, nome, descricao, constante_textual_label, 
								 element_name, element_attribs, element, element_reloadable, 
								 rowinfo)

SELECT c.id AS id_categoria, (SELECT a.id
                              FROM ajuda a
                              LEFT JOIN categoria c ON (a.id_categoria = c.id)
                              LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
                              WHERE t.nome = 'AJUDA'
                              AND c.nome = 'AJUDA_FORMULARIO_CADASTRO_USUARIO_DADOS_PROFISSIONAIS'
                              AND a.nome = 'AJUDA_FORMULARIO_CADASTRO_USUARIO_DADOS_PROFISSIONAIS_DATA_DESVINCULACAO') AS id_ajuda,
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
                              AND cp.nome = 'DOJO_DateTextBox') AS id_componente,
                              'FORM_FIELD_DATA_DESVINCULACAO' AS nome, 'Elemento campo DateTextBox data de desvinculcao' AS descricao,
                              'FORM_FIELD_DATA_DESVINCULACAO' AS constante_textual_label,
                              'dataDesvinculacao' AS element_name, NULL AS element_attribs,
                              '''dataDesvinculacao'', array(''style'' => ''width: 100px;'')' AS element, true AS element_reloadable, 'SYSTEM_STARTUP' AS rowinfo
FROM tipo_categoria t
LEFT JOIN categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_ELEMENTO';


/* FORMULÁRIO X FORMULÁRIO ELEMENTO */

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_ACADEMICOS') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FIELD_CATEGORIA_BOLSA_CNPQ') AS id_formulario_elemento, true AS element_required, 1 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_ACADEMICOS') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND fe.nome = 'FORM_BUTTON_DIALOG_DOJO') AS id_formulario_elemento, false AS element_required, 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
        
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO'
        AND f.nome = 'FORM_DIALOG_MAIOR_TITULACAO') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FIELD_MAIOR_TITULACAO') AS id_formulario_elemento, true AS element_required, 1 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_SUB_FORMULARIO'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_PROFISSIONAIS') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND fe.nome = 'FORM_BUTTON_DIALOG_DOJO') AS id_formulario_elemento, false AS element_required, 1 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL'
        AND f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_VINCULO_PROFISSIONAL') AS id_formulario_elemento,
        (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT') AS id_decorator,
        true AS element_required, 1 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
        
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL'
        AND f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_PROFISSAO') AS id_formulario_elemento,
        (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV') AS id_decorator,
        true AS element_required, 2 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL'
        AND f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_PJ_VINCULO') AS id_formulario_elemento,
        (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        false AS element_required, 3 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL'
        AND f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_REGIME_TRABALHO') AS id_formulario_elemento,
        (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV') AS id_decorator,
        true AS element_required, 4 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL'
        AND f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_CARGO') AS id_formulario_elemento,
        (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        true AS element_required, 5 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL'
        AND f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_FUNCAO') AS id_formulario_elemento,
        (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT') AS id_decorator,
        true AS element_required, 5 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;
        
INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL'
        AND f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_ATIVIDADES_DESENVOLVIDAS') AS id_formulario_elemento,
        (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_CLEAR_BOTH') AS id_decorator,
        false AS element_required, 6 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL'
        AND f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_DATA_ADMISSAO') AS id_formulario_elemento,
        (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_FLOAT_LEFT_CLEAR_BOTH_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV_FLOAT_LEFT_CLEAR_BOTH') AS id_decorator,
        false AS element_required, 7 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento (id_formulario, id_formulario_elemento, id_decorator, element_required, ordem, rowinfo)
SELECT (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL'
        AND f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL') AS id_formulario,
       (SELECT fe.id
        FROM formulario_elemento fe
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO'
        AND fe.nome = 'FORM_FIELD_DATA_DESVINCULACAO') AS id_formulario_elemento, 
        (SELECT d.id
        FROM decorator d
        LEFT JOIN categoria c ON (d.id_categoria = c.id)
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_DIV_DECORATOR'
        AND d.nome = 'DECORATOR_FORM_FIELD_DIV') AS id_decorator,
        false AS element_required, 8 AS ordem, 'SYSTEM_STARTUP' AS rowinfo;


/* FORMULÁRIO X FORMULÁRIO ELEMENTO X FORMULÁRIO */

INSERT INTO formulario_formulario_elemento_formulario (id_formulario_formulario_elemento, id_formulario, constante_textual_label, rowinfo)
SELECT (SELECT ffe.id
        FROM formulario_formulario_elemento ffe
        LEFT JOIN formulario_elemento fe ON (ffe.id_formulario_elemento = fe.id)
        LEFT JOIN formulario f ON (ffe.id_formulario = f.id)
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)    
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE fe.nome = 'FORM_BUTTON_DIALOG_DOJO'
        AND t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_ACADEMICOS') AS id_formulario_formulario_elemento,
       (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)    
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO' 
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO'
        AND f.nome = 'FORM_DIALOG_MAIOR_TITULACAO') AS id_formulario,
        'FORM_FIELD_MAIOR_TITULACAO' AS constante_textual_label, 'SYSTEM_STARTUP' AS rowinfo;

INSERT INTO formulario_formulario_elemento_formulario (id_formulario_formulario_elemento, id_formulario, constante_textual_label, rowinfo)
SELECT (SELECT ffe.id
        FROM formulario_formulario_elemento ffe
        LEFT JOIN formulario_elemento fe ON (ffe.id_formulario_elemento = fe.id)
        LEFT JOIN formulario f ON (ffe.id_formulario = f.id)
        LEFT JOIN categoria c ON (fe.id_categoria = c.id)    
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE fe.nome = 'FORM_BUTTON_DIALOG_DOJO'
        AND t.nome = 'FORMULARIO'
        AND c.nome = 'FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO'
        AND f.nome = 'SUBFORM_DADOS_USUARIO_DADOS_PROFISSIONAIS') AS id_formulario_formulario_elemento,
       (SELECT f.id
        FROM formulario f
        LEFT JOIN categoria c ON (f.id_categoria = c.id)    
        LEFT JOIN tipo_categoria t ON (c.id_tipo_categoria = t.id)
        WHERE t.nome = 'FORMULARIO' 
        AND c.nome = 'FORMULARIO_INPUT_CADASTRO_USUARIO_VINCULO_PROFISSIONAL'
        AND f.nome = 'FORM_DIALOG_VINCULO_PROFISSIONAL') AS id_formulario, 
        'FORM_BUTTON_ABRIR_DIALOG_NOVO_VINCULO_PROFISSIONAL' AS constante_textual_label, 'SYSTEM_STARTUP' AS rowinfo;

/*

 AJUDA  em andamento 

INSERT INTO ajuda (id_categoria, nome, descricao, constante_textual_ajuda, constante_textual_hint, rowinfo)
SELECT c.id AS id_categoria, 'AJUDA_CAMPO_CATEGORIA_BOLSA_CNPQ' AS nome, 'Texto de ajuda para o campo categoria de bolsa do cnpq.' AS descricao,
       'FORM_FIELD_CATEGORIA_BOLSA_CNPQ' AS constante_textual_ajuda, 'FORM_FIELD_CATEGORIA_BOLSA_CNPQ_HINT' AS constante_textual_hint, 
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

*/




