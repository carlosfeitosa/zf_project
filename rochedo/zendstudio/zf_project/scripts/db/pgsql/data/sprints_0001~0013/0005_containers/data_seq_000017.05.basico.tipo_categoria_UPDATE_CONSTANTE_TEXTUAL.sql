/**
* SCRIPT DE ALTERAÇÃO DA TABELA basico.tipo_categoria para possibilitar a inserção de NULL
* no campo constante_textual;
* 
* versao: 1.0 (POSTGRESQL 9.1.1)
* por: JOÃO VASCONCELOS (joao.vasconcelos@rochedoframework.com)
* criacao: 05/03/2012
* ultimas modificacoes:
* 								
*/

UPDATE basico.tipo_categoria SET constante_textual = 'NOME_TIPO_CATEGORIA_LINGUAGEM'
WHERE nome = 'LINGUAGEM'