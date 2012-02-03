/**
* SCRIPT DE UPDATE DA TABELA basico.categoria com as constantes textuais das categorias de linguas
* 
* versao: 1.0 (POSTGRESQL 9.1.1)
* por: JOÃO VASCONCELOS (joao.vasconcelos@rochedoframework.com)
* criacao: 31/01/2012
* ultimas modificacoes:
* 								
*/

UPDATE basico.categoria SET constante_textual = 'LANGUAGE_' || UPPER(nome);