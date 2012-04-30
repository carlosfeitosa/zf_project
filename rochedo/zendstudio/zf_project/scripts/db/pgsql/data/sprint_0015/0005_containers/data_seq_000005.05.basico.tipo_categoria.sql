/**
* SCRIPT DE POPULACAO DA TABELA basico.tipo_categoria com os tipo_categoria de LINGUAS
* 
* versao: 1.0 (POSTGRESQL 9.1.1)
* por: JOÃO VASCONCELOS (joao.vasconcelos@rochedoframework.com)
* criacao: 31/01/2012
* ultimas modificacoes:
* 								
*/

INSERT INTO basico.tipo_categoria (nome, constante_textual, ativo, rowinfo)
VALUES ('DICIONARIO_DADOS', 'NOME_TIPO_CATEGORIA_DICIONARIO_DADOS', true, 'SYSTEM_STARTUP');