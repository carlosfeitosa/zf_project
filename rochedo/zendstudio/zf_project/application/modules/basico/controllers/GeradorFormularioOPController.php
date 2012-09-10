<?php
/**
 * Controlador Gerador Formulario
 * 
 * Este controlador é o responsável pela geração dos formulários do sistema
 * 
 * @package basico
 * 
 * @author Carlos Feitosa / João Vasconcelos (carlos.feitosa@rochedoframework.com / joao.vasconcelos@rochedoframework.com)
 * @since 18/06/2012
 */

/**
 * Classe Basico_OPController_GeradorFormularioOPController
 * 
 * Responsável pela geração de todos os formulários do sistema
 * 
 * @author Carlos Feitosa / João Vasconcelos (carlos.feitosa@rochedoframework.com / joao.vasconcelos@rochedoframework.com)
 * @since 18/06/2012
 */
class Basico_OPController_GeradorFormularioOPController
{
	/**
	 * Quantidade máxima de tentativas para gerar um nome válido para um arquivo temporário de formulário
	 * 
	 * @var Integer
	 * 
	 * @author Carlos Feitosa / João Vasoncelos (carlos.feitosa@rochedoframwork.com / joão.vasconcelos@rochedoframework.com)
	 * @since 21/06/2012
	 */
	const QUANTIDADE_MAXIMA_TENTATIVAS_GERACAO_NOME_ARQUIVO_FORMULARIO_TEMPORARIO = 100;

	/**
	 * Cabeçalho do arquivo do formuário
	 * 
	 * @var String
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 21/06/2012
	 */
	const CABECALHO_ARQUIVO_FORMULARIO = FORM_GERADOR_FORM_FILE_HEADER;

	/**
	 * Cabeçalho da assinatura da classe do formulário
	 * 
	 * @var String
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 22/06/2012
	 */
	const CABECALHO_ASSINATURA_CLASSE_FORMULARIO = FORM_GERADOR_FORM_CLASS_HEADER;

	/**
	 * Tag de abertura de script php
	 * 
	 * @var String
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 21/06/2012
	 */
	const TAG_ABERTURA_PHP = FORM_BEGIN_TAG;

	/**
	 * Tag de fechamento de script php
	 * 
	 * @var String
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 21/06/2012
	 */
	const TAG_FECHAMENTO_PHP = FORM_END_TAG;
	
	/**
	 * Chave de abertura de bloco de código
	 * 
	 * @var String
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 22/06/2012
	 */
	const CHAVE_ABERTURA_CODIGO = CODE_BEGIN_TAG;

	/**
	 * Chave de fechamento de bloco de código
	 * 
	 * @var String
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 22/06/2012
	 */
	const CHAVE_FECHAMENTO_CODIGO = CODE_END_TAG;

	/**
	 * Keyword 'class'
	 * 
	 * @var String
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 22/06/2012
	 */
	const KEYWORD_CLASS = FORM_GERADOR_CLASS_KEYWORD;

	/**
	 * Keyword 'extends'
	 * 
	 * @var String
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 22/06/2012
	 */
	const KEYWORD_EXTENDS = FORM_GERADOR_CLASS_EXTENDS_KEYWORD;

	/**
	 * Tag de substituicao de identação
	 * 
	 * @var String
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 26/06/2012
	 */
	const TAG_SUBSTITUICAO_IDENTACAO = TAG_IDENTACAO;

	/**
	 * Tag de substituicao da classe do formulário
	 * 
	 * @var String
	 * 
	 * @author Carlos Feitosa / João Vasconcelos (carlos.feitosa@rochedoframework.com / joao.vasconcelos@rochedoframework.com)
	 * @since 21/06/2012
	 */
	const TAG_SUBSTITUICAO_NOME_MODULO_FORMULARIO = TAG_NOME_MODULO;

	/**
	 * Tag de substituicao do nome do formulário
	 * 
	 * @var String
	 * 
	 * @author Carlos Feitosa / João Vasconcelos (carlos.feitosa@rochedoframework.com / joao.vasconcelos@rochedoframework.com)
	 * @since 21/06/2012
	 */
	const TAG_SUBSTITUICAO_NOME_FORMULARIO = TAG_NOME_FORMULARIO;

	/**
	 * Tag de substituicao do método do formulário
	 * 
	 * @var String
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 27/06/2012
	 */
	const TAG_SUBSTITUICAO_METODO_FORMULARIO = TAG_METODO_FORMULARIO;
	
	/**
	 * Tag de substituicao da ação do formulário
	 * 
	 * @var String
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 27/06/2012
	 */
	const TAG_SUBSTITUICAO_ACAO_FORMULARIO = TAG_ACAO_FORMULARIO;
	
	/**
	 * Tag de substituicao dos atributos do formulário
	 * 
	 * @var String
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 27/06/2012
	 */
	const TAG_SUBSTITUICAO_ATRIBUTOS_FORMULARIO = TAG_ATRIBUTOS_FORMULARIO;
	
	/**
	 * Tag de substituicao dos decorators do formulário
	 * 
	 * @var String
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 27/06/2012
	 */
	const TAG_SUBSTITUICAO_DECORATOR = TAG_DECORATOR_FORMULARIO;
	
	/**
	 * Tag de substituicao da descrição do formulário
	 * 
	 * @var String
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 22/06/2012
	 */
	const TAG_SUBSTITUICAO_DESCRICAO_FORMULARIO = TAG_DESCRICAO_FORMULARIO;

	/**
	 * Tag de substituicao do autor do formulário
	 * 
	 * @var String
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 22/06/2012
	 */
	const TAG_SUBSTITUICAO_AUTOR_FORMULARIO = TAG_AUTOR;
	
	/**
	 * Autor padrão dos formulários
	 * 
	 * @var String
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 25/06/2012
	 */
	const AUTOR_PADRAO = FORM_AUTOR_PADRAO;

	/**
	 * Tag de substituicao da data de criação do formulário
	 * 
	 * @var String
	 * 
	 * @author Carlos Feitosa / João Vasconcelos (carlos.feitosa@rochedoframework.com / joao.vasconcelos@rochedoframework.com)
	 * @since 21/06/2012
	 */
	const TAG_SUBSTITUICAO_DATA_CRIACAO_FORMULARIO = TAG_DATA_CRIACAO_FORMULARIO;

	/**
	 * Tag de substituicao do texto da licenca de uso
	 * 
	 * @var String
	 * 
	 * @author Carlos Feitosa / João Vasconcelos (carlos.feitosa@rochedoframework.com / joao.vasconcelos@rochedoframework.com)
	 * @since 21/06/2012
	 */
	const TAG_SUBSTITUICAO_TEXTO_LICENCA_USO_FORMULARIO = TAG_TEXTO_LICENCA_USO;

	/**
	 * Tag de substituicao do tipo de licenca de uso
	 * 
	 * @var String
	 * 
	 * @author Carlos Feitosa / João Vasconcelos (carlos.feitosa@rochedoframework.com / joao.vasconcelos@rochedoframework.com)
	 * @since 21/06/2012
	 */
	const TAG_SUBSTITUICAO_TIPO_LICENCA_USO_FORMULARIO = TAG_TIPO_LICENCA_USO;

	/**
	 * Tipo de licença de uso
	 * 
	 * @var String
	 * 
	 * @author Carlos Feitosa / João Vasconcelos (carlos.feitosa@rochedoframework.com / joao.vasconcelos@rochedoframework.com)
	 * @since 21/06/2012
	 */
	const TIPO_LICENCA_USO = TIPO_LICENCA_USO_MODULO_BASICO;

	/**
	 * Tag de substituicao da data de criação do formulário
	 * 
	 * @var String
	 * 
	 * @author Carlos Feitosa / João Vasconcelos (carlos.feitosa@rochedoframework.com / joao.vasconcelos@rochedoframework.com)
	 * @since 21/06/2012
	 */
	const TAG_SUBSTITUICAO_VERSAO_FORMULARIO = TAG_VERSAO_FORMULARIO;

	/**
	 * Tag de substituicao da data de criação do formulário
	 * 
	 * @var String
	 * 
	 * @author Carlos Feitosa / João Vasconcelos (carlos.feitosa@rochedoframework.com / joao.vasconcelos@rochedoframework.com)
	 * @since 21/06/2012
	 */
	const TAG_SUBSTITUICAO_DATA_VERSAO_FORMULARIO = TAG_DATA_VERSAO_FORMULARIO;

	/**
	 * Tag de substituicao do ano atual
	 * 
	 * @var String
	 * 
	 * @author Carlos Feitosa / João Vasconcelos (carlos.feitosa@rochedoframework.com / joao.vasconcelos@rochedoframework.com)
	 * @since 21/06/2012
	 */
	const TAG_SUBSTITUICAO_ANO_ATUAL = TAG_ANO_ATUAL_FORMULARIO;

	/**
	 * Tag de substituicao de instancia
	 * 
	 * @var String
	 * 
	 * @author Carlos Feitosa / João Vasconcelos (carlos.feitosa@rochedoframework.com / joao.vasconcelos@rochedoframework.com)
	 * @since 09/07/2012
	 */
	const TAG_SUBSTITUICAO_INSTANCIA = TAG_INSTANCIA;
	
	/**
	 * Tag de substituicao de label
	 * 
	 * @var String
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 10/07/2012
	 */
	const TAG_SUBSTITUICAO_LABEL = TAG_LABEL;
	
	/**
	 * Tag de substituicao de attribs
	 * 
	 * @var String
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 10/07/2012
	 */
	const TAG_SUBSTITUICAO_ATTRIBS = TAG_ATTRIBS;
	
	/**
	 * Tag de substituicao de nome de atributo
	 * 
	 * @var String
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 04/09/2012
	 */
	const TAG_SUBSTITUICAO_ATTRIB_NAME = TAG_ATTRIB_NAME;
	
	/**
	 * Tag de substituicao de valor de atributo
	 * 
	 * @var String
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 04/09/2012
	 */
	const TAG_SUBSTITUICAO_ATTRIB_VALUE = TAG_ATTRIB_VALUE;
	
	/**
	 * Tag de substituicao de ordem
	 * 
	 * @var String
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 11/07/2012
	 */
	const TAG_SUBSTITUICAO_ORDEM = TAG_ORDEM;
	
	/**
	 * Tag de substituicao de required
	 * 
	 * @var String
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 11/07/2012
	 */
	const TAG_SUBSTITUICAO_REQUIRED = TAG_REQUIRED;
	
	/**
	 * Tag de substituicao de filter
	 * 
	 * @var String
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 13/08/2012
	 */
	const TAG_SUBSTITUICAO_FILTER = TAG_FILTER;
	
	/**
	 * Tag de substituicao de validator
	 * 
	 * @var String
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 22/08/2012
	 */
	const TAG_SUBSTITUICAO_VALIDATOR = TAG_VALIDATOR;
	
	/**
	 * Tag de substituicao do botão de ajuda
	 * 
	 * @var String
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 12/07/2012
	 */
	const TAG_SUBSTITUICAO_AJUDA_BUTTON = TAG_AJUDA_BUTTON;
	
	/**
	 * Tag de substituicao de constante textual
	 * 
	 * @var String
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 12/07/2012
	 */
	const TAG_SUBSTITUICAO_CONSTANTE_TEXTUAL = TAG_CONSTANTE_TEXTUAL;
	
	/**
	 * Tag de substituicao do elemento do formulário
	 * 
	 * @var String
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 09/07/2012
	 */
	const TAG_SUBSTITUICAO_ELEMENTO_FORMULARIO = TAG_ELEMENTO_FORMULARIO;
	
	/**
	 * Tag de substituicao do cabecalho da classe do formulario
	 * 
	 * @var String
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 22/06/2012
	 */
	const CABECALHO_CLASSE_FORMULARIO = FORM_GERADOR_FORM_CLASS_HEADER;
	
	/**
	 * Tag de substituicao do comentario do construtor da classe do formulario
	 * 
	 * @var String
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 22/06/2012
	 */
	const COMENTARIO_CONSTRUTOR_CLASSE_FORMULARIO = FORM_GERADOR_CONSTRUTOR_FORMULARIO_HEADER;
	
	/**
	 * Assinatura do metodo construtor da classe do formulario
	 * 
	 * @var String
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 25/06/2012
	 */
	const ASSINATURA_CONSTRUTOR_CLASSE_FORMULARIO = FORM_GERADOR_CONSTRUCTOR_CALL;

	/**
	 * Comentario da chamada construtor parent da classe do formulario
	 * 
	 * @var String
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 25/06/2012
	 */
	const COMENTARIO_CHAMADA_PARENT_CONSTRUCT = FORM_GERADOR_PARENT_CONSTRUCTOR_CALL_COMMENT;
	
	/**
	 * Chamada construtor parent da classe do formulario
	 * 
	 * @var String
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 25/06/2012
	 */
	const CHAMADA_PARENT_CONSTRUCT = FORM_GERADOR_CONSTRUCTOR_INHERITS;
	
	/**
	 * Comentario da chamada ao metodo setName do formulario
	 * 
	 * @var String
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 25/06/2012
	 */
	const COMENTARIO_CHAMADA_FORMULARIO_SET_NAME = FORM_GERADOR_SET_NAME_CALL_COMMENT;
	
	/**
	 * Chamada ao metodo setName do formulario
	 * 
	 * @var String
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 25/06/2012
	 */
	const CHAMADA_FORMULARIO_SET_NAME = FORM_GERADOR_FORM_SETNAME;

	/**
	 * Comentario da chamada ao metodo setMethod do formulario
	 * 
	 * @var String
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 27/06/2012
	 */
	const COMENTARIO_CHAMADA_FORMULARIO_SET_METHOD = FORM_GERADOR_SET_METHOD_CALL_COMMENT;
	
	/**
	 * Chamada ao metodo setMethod do formulario
	 * 
	 * @var String
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 27/06/2012
	 */
	const CHAMADA_FORMULARIO_SET_METHOD = FORM_GERADOR_FORM_SETMETHOD;
	
	/**
	 * Comentario da chamada ao metodo setAction do formulario
	 * 
	 * @var String
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 27/06/2012
	 */
	const COMENTARIO_CHAMADA_FORMULARIO_SET_ACTION = FORM_GERADOR_SET_ACTION_CALL_COMMENT;
	
	/**
	 * Chamada ao metodo setAction do formulario
	 * 
	 * @var String
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 27/06/2012
	 */
	const CHAMADA_FORMULARIO_SET_ACTION = FORM_GERADOR_FORM_SETACTION;
	
	/**
	 * Comentario da chamada ao metodo setAttribs do formulario
	 * 
	 * @var String
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 27/06/2012
	 */
	const COMENTARIO_CHAMADA_FORMULARIO_ADD_ATTRIBS = FORM_GERADOR_ADD_ATTRIBS_CALL_COMMENT;
	
	/**
	 * Chamada ao metodo setAttribs do formulario
	 * 
	 * @var String
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 27/06/2012
	 */
	const CHAMADA_FORMULARIO_SET_ATTRIBS = FORM_GERADOR_FORM_SETATTRIBS;
	
	/**
	 * Chamada ao metodo addAttrib do formulario
	 * 
	 * @var String
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 04/09/2012
	 */
	const CHAMADA_ADD_ATTRIB = FORM_GERADOR_ADDATTRIB;
	
	/**
	 * Comentario da chamada ao metodo addDecorator do formulario
	 * 
	 * @var String
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 27/06/2012
	 */
	const COMENTARIO_CHAMADA_FORMULARIO_ADD_DECORATOR = FORM_GERADOR_ADD_DECORATOR_CALL_COMMENT;
	
	/**
	 * Chamada ao metodo addDecorators do formulario
	 * 
	 * @var String
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 27/06/2012
	 */
	const CHAMADA_ADD_DECORATOR = FORM_GERADOR_ADDDECORATOR;
	
	/**
	 * Comentario da chamada ao metodo removeDecorator do formulario
	 * 
	 * @var String
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 28/06/2012
	 */
	const COMENTARIO_CHAMADA_FORMULARIO_REMOVE_DECORATOR = FORM_GERADOR_REMOVE_DECORATOR_CALL_COMMENT;
	
	/**
	 * Chamada ao metodo removeDecorators do formulario
	 * 
	 * @var String
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 28/06/2012
	 */
	const CHAMADA_REMOVE_DECORATOR = FORM_GERADOR_REMOVEDECORATOR;
	
	/**
	 * Comentario da chamada ao metodo init do formulario
	 * 
	 * @var String
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 25/06/2012
	 */
	const COMENTARIO_CHAMADA_FORMULARIO_INIT = FORM_GERADOR_FORM_INIT_CALL_COMMENT;
	
	/**
	 * Chamada ao metodo setName do formulario
	 * 
	 * @var String
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 25/06/2012
	 */
	const CHAMADA_FORMULARIO_INIT = FORM_GERADOR_FORM_INIT_CALL;
	
	/**
	 * Comentario da declaração do método init do formulário
	 * 
	 * @var String
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 26/06/2012
	 */
	const COMENTARIO_DECLARACAO_FORMULARIO_INIT = FORM_GERADOR_INIT_FORMULARIO_HEADER;
	
	/**
	 * Declaração do método init do formulário
	 * 
	 * @var String
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 26/06/2012
	 */
	const ASSINATURA_FORMULARIO_INIT = FORM_GERADOR_FORM_INIT_DECLARATION;
	
	/**
	 * Comentario da chamada do método adicionaElementos do formulário
	 * 
	 * @var String
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 26/06/2012
	 */
	const COMENTARIO_CHAMADA_ADICIONA_ELEMENTOS_FORMULARIO = FORM_GERADOR_ADICIONA_ELEMENTOS_CALL_COMMENT;

	/**
	 * chamada do método adicionaDecorators do formulário
	 * 
	 * @var String
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 05/07/2012
	 */
	const CHAMADA_ADICIONA_DECORATORS_FORMULARIO = FORM_GERADOR_FORM_ADICIONA_DECORATOS_CALL;

	/**
	 * Assinatura do método adicionaElementos do formulário
	 * 
	 * @var String
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 05/07/2012
	 */
	const ASSINATURA_ADICIONA_DECORATORS_FORMULARIO = FORM_GERADOR_FORM_ADICIONA_DECORATORS_DECLARATION;

	/**
	 * Comentário da declaração do método adicionaDecorators do formulário
	 * 
	 * @var String
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 05/07/2012
	 */
	const COMENTARIO_DECLARACAO_ADICIONA_DECORATORS_FORMULARIO = FORM_GERADOR_ADICIONA_DECORATORS_FORMULARIO_HEADER;

	/**
	 * Comentário da adiçã e remoção de decorators do formulário
	 * 
	 * @var String
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 09/07/2012
	 */
	const COMENTARIO_ADICIONA_DECORATORS_FORMULARIO = FORM_GERADOR_ADD_DECORATOR_COMMENT;
	
	/**
	 * chamada do método adicionaElementos do formulário
	 * 
	 * @var String
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 26/06/2012
	 */
	const CHAMADA_ADICIONA_ELEMENTOS_FORMULARIO = FORM_GERADOR_FORM_ADICIONA_ELEMENTOS_CALL;
	
	/**
	 * Comentário da declaração do método adicionaElementos do formulário
	 * 
	 * @var String
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 26/06/2012
	 */
	const COMENTARIO_DECLARACAO_ADICIONA_ELEMENTOS_FORMULARIO = FORM_GERADOR_ADICIONA_ELEMENTOS_FORMULARIO_HEADER;
	
	/**
	 * Assinatura do método adicionaElementos do formulário
	 * 
	 * @var String
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 26/06/2012
	 */
	const ASSINATURA_ADICIONA_ELEMENTOS_FORMULARIO = FORM_GERADOR_FORM_ADICIONA_ELEMENTOS_DECLARATION;

	/**
	 * Representação da instancia do formulário
	 * 
	 * @var String
	 * 
	 * @author Carlos Feitosa/João Vasconcelos (carlos.feitosa@rochedoframework.com/joao.vasconcelos@rochedoframework.com)
	 * @since 09/07/2012
	 */
	const INSTANCIA_FORMULARIO = TAG_INSTANCIA_FORMULARIO;
	
	/**
	 * Comentario da chamada do método adicionaElementos do formulário
	 * 
	 * @var String
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 26/06/2012
	 */
	const COMENTARIO_CHAMADA_ADD_ELEMENT_FORMULARIO = FORM_GERADOR_ADD_ELEMENT_COMMENT;
	
	/**
	 * Chamada para o metodo addElement do formulario
	 * 
	 * @var String
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 09/07/2012
	 */
	const CHAMADA_ADD_ELEMENT = FORM_GERADOR_FORM_ADDELEMENT;
	
	/**
	 * Chamada para o metodo addElement do formulario
	 * 
	 * @var String
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 10/07/2012
	 */
	const CHAMADA_SET_LABEL = FORM_GERADOR_SETLABEL;
	
	/**
	 * Chamada para o metodo addElement do formulario
	 * 
	 * @var String
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 10/07/2012
	 */
	const CHAMADA_SET_ATTRIBS = FORM_GERADOR_SETATTRIBS;
	
	/**
	 * Chamada para o metodo setOrdem
	 * 
	 * @var String
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 11/07/2012
	 */
	const CHAMADA_SET_ORDER = FORM_GERADOR_SETORDER;
	
	/**
	 * Chamada para o metodo setRequired
	 * 
	 * @var String
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 11/07/2012
	 */
	const CHAMADA_SET_REQUIRED = FORM_GERADOR_SETREQUIRED;
	
	/**
	 * Chamada para o metodo RemoveFilter
	 * 
	 * @var String
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 13/08/2012
	 */
	const CHAMADA_REMOVE_FILTER = FORM_GERADOR_REMOVEFILTER;
	
	/**
	 * Chamada para o metodo addFilter
	 * 
	 * @var String
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 13/08/2012
	 */
	const CHAMADA_ADD_FILTER = FORM_GERADOR_ADDFILTER;
	
	/**
	 * Chamada para o metodo RemoveValidator
	 * 
	 * @var String
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 22/08/2012
	 */
	const CHAMADA_REMOVE_VALIDATOR = FORM_GERADOR_REMOVEVALIDATOR;
	
	/**
	 * Chamada para o metodo removeAttrib
	 * 
	 * @var String
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 06/09/2012
	 */
	const CHAMADA_REMOVE_ATTRIB = FORM_GERADOR_REMOVEATTRIB;
	
	/**
	 * Chamada para o metodo addValidator
	 * 
	 * @var String
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 22/08/2012
	 */
	const CHAMADA_ADD_VALIDATOR = FORM_GERADOR_ADDVALIDATOR;
	
	/**
	 * Script para montagem do botao de ajuda
	 * 
	 * @var String
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 12/07/2012
	 */
	const SCRIPT_AJUDA_BUTTON = FORM_GERADOR_AJUDA_BUTTON_SCRIPT;
	
	/**
	 * Instancia do controlador
	 * 
	 * @var Basico_OPController_GeradorFormularioOPController object
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 18/06/2012
	 */
	protected static $_singleton;

	/**
	 * Controlador de formulários
	 * 
	 * @var Basico_OPController_FormularioOPController object
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 18/06/2012
	 */
	protected $_formularioOPController;
	
	/**
	 * Controlador de formulários elementos
	 * 
	 * @var Basico_OPController_FormularioElementoOPController object
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 09/07/2012
	 */
	protected $_formularioElementoOPController;

	/**
	 * Controlador de associações entre formulários e decorators
	 * 
	 * @var Basico_OPController_FormularioAssocclDecorator object
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 05/07/2012
	 */
	protected $_formularioAssocclDecorator;
	
	/**
	 * Controlador de associações entre formulários e elementos
	 * 
	 * @var Basico_OPController_FormularioAssocclElementoOPController object
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 09/07/2012
	 */
	protected $_formularioAssocclElementoOPController;

	/**
	 * Controlador de decorators
	 * 
	 * @var Basico_OPController_FormularioDecoratorOPController object
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 05/07/2012
	 */
	protected $_formularioDecorator;

	/**
	 * Controlador de categoria
	 * 
	 * @var Basico_OPController_CategoriaOPController object
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 19/06/2012
	 */
	protected $_categoriaOPController;

	/**
	 * Controlador de componente
	 * 
	 * @var Basico_OPController_ComponenteOPController object
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 22/06/2012
	 */
	protected $_componenteOPController;

	/**
	 * Recupera a instancia do controlador Basico_OPController_GeradorFormularioOPController
	 * 
	 * @return Basico_OPController_GeradorFormularioOPController
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 18/06/2012
	 */
	public static function getInstance()
	{
		// verificando singleton
		if (self::$_singleton == null){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_GeradorFormularioOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}

	/**
	 * Construtor do Controlador Gerador de formulário
	 * 
	 * @return void
	 * 
	 * @author Carlos Feitosa / João Vasconcelos (carlos.feitosa@rochedoframework.com / joao.vasconcelos@rochedoframework.com)
	 * @since 18/06/2012
	 */
	private function __construct()
	{
		// chamando a inicialização do controlador
		$this->init();

		return;
	}

	/**
	 * Inicializa o controlador Basico_OPController_GeradorFormularioOPController
	 * 
	 * @return void
	 * 
	 * @author Carlos Feitosa / João Vasconcelos (carlos.feitosa@rochedoframework.com / joao.vasconcelos@rochedoframework.com)
	 * @since 18/06/2012
	 */
	private function init()
	{
		// chamando inicializacao dos controladores
		$this->initControllers();

		return;
	}

	/**
	 * Inicializa os controladores utilizados pelo controlador
	 * 
	 * @return void
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 03/05/2012
	 */
	private function initControllers()
	{
		// inicializando os controladores utilizados pelo controlador principal
		$this->_formularioOPController 				  = Basico_OPController_FormularioOPController::getInstance();
		$this->_formularioElementoOPController 		  = Basico_OPController_FormularioElementoOPController::getInstance();
		$this->_formularioAssocclDecorator            = Basico_OPController_FormularioAssocclDecorator::getInstance();
		$this->_formularioDecorator                   = Basico_OPController_FormularioDecoratorOPController::getInstance();
		$this->_formularioAssocclElementoOPController = Basico_OPController_FormularioAssocclElementoOPController::getInstance();
		//$this->_formularioElementoOPController      = Basico_OPController_FormularioElementoOPController::getInstance();
		$this->_categoriaOPController  				  = Basico_OPController_CategoriaOPController::getInstance();
		$this->_componenteOPController                = Basico_OPController_ComponenteOPController::getInstance();

		return;
	}

	/**
	 * Método para gerar todos os formulários do sistema
	 * 
	 * @param Array $arrayIdsModulesExcludeGeneration - array contendo os ids dos módulos que não deseja gerar os formulários
	 *
	 * @return Boolean - true se conseguir gerar todos os formulários do sistema ou false se não conseguir
	 * 
	 * @author Carlos Feitosa / João Vasconcelos (carlos.feitosa@rochedoframework.com / joao.vasconcelos@rochedoframework.com)
	 * @since 18/06/2012
	 */
	public function gerarTodosFormulario(array $arrayIdsModulesExcludeGeneration = null)
	{

	}

	/**
	 * Método para gerar um formuário (via id do formulário) específico do sistema
	 * 
	 * @param Integer $idFormulario - id do formulário
	 * @param Array $arrayIdsModulesExcludeGeneration - array contendo os ids dos módulos que não deseja gerar os formulários
	 * 
	 * @return Boolean|array - true se conseguir gerar o formulário ou array contendo as mensagens de erro caso não consiga gerar
	 *
	 * @author Carlos Feitosa / João Vasconcelos (carlos.feitosa@rochedoframework.com / joao.vasconcelos@rochedoframework.com)
	 * @since 18/06/2012
	 */
	public function gerarFormulario($idFormulario, array $arrayIdsModulesExcludeGeneration = array())
	{
		// verificando se foi passado o id do formulário
		if (!is_int($idFormulario)) {
			// retornando mensagem de erro
			return array('Não foi informado o id do formulário que se deseja gerar.');
		}

		// recuperando dados sobre o formulário
		$arrayDadosFormulario = $this->_formularioOPController->retornaArrayDadosFormularioPorIdFormulario($idFormulario);

		// verificando se foram recuperadas informações sobre o formulário
		if (!count($arrayDadosFormulario)) {
			// retornando mensagem de erro
			return array('Não foi possível recuperar as informações sobre o formulário.');
		}

		// verificando se o formulário é um sub-formulário
		if ((int) $arrayDadosFormulario['idFormularioPai'] > 0) {
			// recuperando o nome do formulário pai
			$arrayDadosFormularioPai = $this->_formularioOPController->retornaArrayDadosFormularioPorIdFormulario($arrayDadosFormulario['idFormularioPai']);

			// retornando mensagem de erro
			return array('Foi informado um sub-formulário como formulário. Para gerar este formulário, tente gerar seu formulário pai (' . $arrayDadosFormularioPai['formName'] . ')');
		}

		// recuperando o nome do autor do formulário
		$autorFormulario = self::AUTOR_PADRAO;

    	// recuperando array contendo os ids e nomes dos módulos associados ao formulário
    	$arrayModulosAssociados = $this->_formularioOPController->retornaArrayIdsNomesModulosFormularioPorIdFormulario($idFormulario);	

		// verificando se o formulário pode ser gerado
		if (!$this->verificaPossibilidadeGeracaoFormulario($idFormulario)) {
			// retornando mensagens de erro
			return array('Existem sub-formulários ou elementos associados a este formulário (ou elementos associados a sub-formulários) que possuem problemas de compatibilidade.');
		}

		// recuperando associações que não estao ativadas
		$arrayRelacoesDesativadas = $this->verificaRelacoesDesativadasPorIdFormulario($idFormulario);

		// verificando se foi retornando alguma associação desativada
		if ((is_array($arrayRelacoesDesativadas)) and (count($arrayRelacoesDesativadas))) {
			// retornando mensagens de erro
			return array('Existem associações (diretas ou indiretas) com o formulário que estão desativadas.<br><br>' . Basico_OPController_UtilOPController::print_debug($arrayRelacoesDesativadas, true, true));
		}

		// limpando do array de módulos os módulos que foram passados para serem excluídos da geração
		$arrayModulosAssociados = $this->limpaElementosArrayIdsModulosNomesModulosArrayIdsModulesExclude($arrayIdsModulesExcludeGeneration, $arrayModulosAssociados);

		// recuperando dados sobre a versão do formulário
		$arrayDadosVersao = $this->_formularioOPController->retornaArrayDadosVersaoFormularioPorIdFormulario($idFormulario);

		// gerando um nome de arquivo válido
		$nomeArquivoFormularioTemporario = $this->geraNomeArquivoFormularioTemporarioValido();

		// criando arquivo temporário e guardando seu resource
		$resourceArquivoTemporario = $this->criaArquivoFormularioTemporario($nomeArquivoFormularioTemporario);

		// verificando se foi criado o arquivo
		if (!$resourceArquivoTemporario) {
			// retornando array de mensagens de erros
			return array('Não foi possível criar arquivo temporário para geração do formulário.');
		}

		// inicio do block de tentativa de geração de arquivo
		try {
			// escrevendo a tag de abertura do arquivo e verificando o resultado da operação
			if (!$this->escreveTagAberturaArquivo($resourceArquivoTemporario)) {
				// retornando mensagens de erro
				return array('Não foi possível escrever a tag de abertura do arquivo.'); 
			}

			// escrevendo o cabeçalho do arquivo e verificando o resultado da operação
			if (!$this->escreveCabecalhoArquivoFormulario($resourceArquivoTemporario, $arrayDadosFormulario['formName'], $arrayDadosVersao['versao'], $arrayDadosVersao['dataVersao'], $autorFormulario)) {
				// retornando mensagens de erro
				return array('Não foi possível escrever o cabeçalho do arquivo.');
			}

			// escrevendo o cabeçalho e a assinatura da classe e verificando o resultado da operação
			if (!$this->escreveCabecalhoAssinaturaEAssinaturaClasseFormulario($resourceArquivoTemporario, $arrayDadosFormulario['formName'], $this->_componenteOPController->retornaComponentePorIdComponente($arrayDadosFormulario['idComponente']), Basico_OPController_DicionarioExpressaoOPController::retornaTraducaoViaSQL($arrayDadosFormulario['constanteTextual']), Basico_OPController_DicionarioExpressaoOPController::retornaTraducaoViaSQL($arrayDadosFormulario['constanteTextualDescricao'], $autorFormulario))) {
				// retornando mensagens de erro
				return array('Não foi possível escrever o cabeçalho e assinatura do formulário.');
			}

			// escrevendo a tag de abertura do bloco de codigo principal da classe
			if (!$this->escreveTagInicioOuFimBlocoCodigo($resourceArquivoTemporario)) {
				// retornando mensagens de erro
				return array('Não foi possível escrever a tag de abertura do bloco de codigo principal da classe.');
			}

			// escrevendo o construtor da classe formulario, verificando o resultado da operação
			if (!$this->escreveConstrutorFormulario($resourceArquivoTemporario, $arrayDadosFormulario['formName'], $autorFormulario)) {
				// retornando mensagens de erro
				return array('Não foi possível escrever o construtor da classe do formulário.');
			}

			// escrevendo o método init do formulário e verificando o resultado da operação
			if (!$this->escreveInitFormulario($resourceArquivoTemporario, $arrayDadosFormulario, $autorFormulario)) {
				// retornando mensagens de erro
				return array('Não foi possível escrever o construtor da classe do formulário.');
			}

			// escrevendo o método adicionaDecorators e verificando o resultado da operação
			if (!$this->escreveAdicionaDecoratorsFormulario($resourceArquivoTemporario, $idFormulario, $autorFormulario)) {
				// retornando mensagens de erro
				return array('Não foi possível escrever o método adicionaDecorators no formulário.');
			}

			// escrevendo o método adicionaElementos e verificando o resultado da operação
			if (!$this->escreveAdicionaElementosFormulario($resourceArquivoTemporario, $idFormulario, $autorFormulario)) {
				// retornando mensagens de erro
				return array('Não foi possível escrever o método adicionaElementos no formulário.');
			}

			// escrevendo a tag de fechamento do bloco de codigo principal da classe
			if (!$this->escreveTagInicioOuFimBlocoCodigo($resourceArquivoTemporario, true)) {
				// retornando mensagens de erro
				return array('Não foi possível escrever a tag de fechamento do bloco de codigo principal da classe.');
			}

			// escrevendo a tag de fechamento do arquivo e verificando o resultado da operação
			if (!$this->escreveTagFechamentoArquivo($resourceArquivoTemporario)) {
				// retornando mensagens de erro
				return array('Não foi possível escrever a tag de fechamento do arquivo.');
			}

		} catch (Exception $e) {
			// excluíndo arquivo temporário e verificando o resultado da operação
		    $this->excluiArquivoFormularioTemporario($nomeArquivoFormularioTemporario);

		    // retornando mensagens de erro
			return array($e->getMessage());
		}

		// excluíndo arquivo temporário e verificando o resultado da operação
		if (!$this->excluiArquivoFormularioTemporario($nomeArquivoFormularioTemporario)) {
			// retornando array de mensagens de erros
			return array('Não foi possível excluir o arquivo temporário de geração do formulário.');
		}

		// retornando sucesso
		return true;
	}

	/**
	 * Escreve a tag de abertura de um arquivo php
	 * 
	 * @param Stream Resource $resourceArquivo - resource do arquivo que deseja incluir a tag de abertura php
	 * 
	 * @return Boolean - true se conseguir escrever o cabeçalho no arquivo ou false se não
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 21/06/2012
	 */
	private function escreveTagAberturaArquivo($resourceArquivo)
	{
		// verificando o parametro
		if (!Basico_OPController_UtilOPController::verificaStreamResource($resourceArquivo)) {
			// retornando falso
			return false;
		}

		// retornando resultado da inclusão da linha no arquivo
		return Basico_OPController_UtilOPController::escreveLinhaFileResource($resourceArquivo, self::TAG_ABERTURA_PHP, true);
	}

	/**
	 * Escreve a tag de fechamento de um arquivo php
	 * 
	 * @param Stream Resource $resourceArquivo - resource do arquivo que deseja incluir a tag de fechamento php
	 * 
	 * @return Boolean - true se conseguir escrever o cabeçalho no arquivo ou false se não
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 21/06/2012
	 */
	private function escreveTagFechamentoArquivo($resourceArquivo)
	{
		// verificando o parametro
		if (!Basico_OPController_UtilOPController::verificaStreamResource($resourceArquivo)) {
			// retornando falso
			return false;
		}

		// retornando resultado da inclusão da linha no arquivo
		return Basico_OPController_UtilOPController::escreveLinhaFileResource($resourceArquivo, self::TAG_FECHAMENTO_PHP);
	}
	
	/**
	 * Escreve a chave de abertura ou fechamento de um bloco de código php
	 * 
	 * @param Stream Resource $resourceArquivo - resource do arquivo que deseja incluir a tag de fechamento php
	 * @param Boolean $fim - determina se é uma tag de fechamento do bloco ou de abertura
	 * @param Int $nivelIdentacao - determina o nivel de identacao para abertura
	 * @param Int $quebrarLinha - se true insere uma quebra de linha ao final da string
	 * 
	 * @return Boolean - true se conseguir escrever o cabeçalho no arquivo ou false se não
	 * 
	 * @author João Vaconcelos (carlos.feitosa@rochedoframework.com / joao.vasconcelos@rochedoframework.com)
	 * @since 21/06/2012
	 */
	private function escreveTagInicioOuFimBlocoCodigo($resourceArquivo, $fim = false, $nivelIdentacao = 0, $quebrarLinha = true)
	{
		// retornando resultado da inclusão da linha no arquivo
		return Basico_OPController_UtilOPController::escreveTagInicioOuFimBlocoCodigo($resourceArquivo, $fim, $nivelIdentacao, $quebrarLinha);
	}

	/**
	 * Escreve o cabeçalho do arquivo
	 * 
	 * @param Stream Resource $resourceArquivo - resource do arquivo que deseja incluir o cabecalho
	 * @param String $nomeFormulario - nome do formulário
	 * @param Integer $versaoFormulario - versão do formulário
	 * @param String $datahoraVersao - data/hora da versão do formulário
	 * @param String $autor - autor responsável pela geração do arquivo 
	 * 
	 * @return Boolean - true se conseguir escrever o cabeçalho no arquivo ou false se não
	 * 
	 * @author Carlos Feitosa / João Vaconcelos (carlos.feitosa@rochedoframework.com / joao.vasconcelos@rochedoframework.com)
	 * @since 21/06/2012
	 */
	private function escreveCabecalhoArquivoFormulario($resourceArquivo, $nomeFormulario, $versaoFormulario, $datahoraVersao, $autor = self::AUTOR_PADRAO)
	{
		// verificando os parametros
		if ((!Basico_OPController_UtilOPController::verificaStreamResource($resourceArquivo)) or 
		    (!$nomeFormulario) or (!is_string($nomeFormulario)) or 
		    (!$versaoFormulario) or (!is_int($versaoFormulario)) or 
		    (!$datahoraVersao) or (!is_string($datahoraVersao))) {
		    	// retornando falso
		    	return false;
		    }

		// recuperando cabeçalho do arquivo
		$cabecalhoArquivo = self::CABECALHO_ARQUIVO_FORMULARIO;

		// manipulando o cabeçalho
		$cabecalhoArquivo = str_replace(self::TAG_SUBSTITUICAO_NOME_FORMULARIO, $nomeFormulario, $cabecalhoArquivo);
		$cabecalhoArquivo = str_replace(self::TAG_SUBSTITUICAO_DATA_CRIACAO_FORMULARIO, Basico_OPController_UtilOPController::retornaDateTimeAtual(LOCALE_PT_BR, DEFAULT_DATETIME_FORMAT_PT_BR), $cabecalhoArquivo);
		$cabecalhoArquivo = str_replace(self::TAG_SUBSTITUICAO_TEXTO_LICENCA_USO_FORMULARIO, Basico_OPController_UtilOPController::retornaConteudoArquivo(PUBLIC_PATH . "/docs/termos/termo.txt"), $cabecalhoArquivo);
		$cabecalhoArquivo = str_replace(self::TAG_SUBSTITUICAO_TIPO_LICENCA_USO_FORMULARIO, self::TIPO_LICENCA_USO, $cabecalhoArquivo);
		$cabecalhoArquivo = str_replace(self::TAG_SUBSTITUICAO_VERSAO_FORMULARIO, $versaoFormulario, $cabecalhoArquivo);
		$cabecalhoArquivo = str_replace(self::TAG_SUBSTITUICAO_DATA_VERSAO_FORMULARIO, Basico_OPController_UtilOPController::retornaZend_Date($datahoraVersao, DEFAULT_DATABASE_DATETIME_FORMAT)->toString(DEFAULT_DATETIME_FORMAT_PT_BR), $cabecalhoArquivo);
		$cabecalhoArquivo = str_replace(self::TAG_SUBSTITUICAO_ANO_ATUAL, Zend_Date::now()->toString('YYYY'), $cabecalhoArquivo);
		$cabecalhoArquivo = str_replace(self::TAG_SUBSTITUICAO_AUTOR_FORMULARIO, $autor, $cabecalhoArquivo);
		$cabecalhoArquivo = str_replace(self::TAG_SUBSTITUICAO_DATA_CRIACAO_FORMULARIO, Basico_OPController_UtilOPController::retornaDateTimeAtual(LOCALE_PT_BR, DEFAULT_DATETIME_FORMAT_PT_BR), $cabecalhoArquivo);

		// escrevendo cabeçalho no arquivo
		return Basico_OPController_UtilOPController::escreveLinhaFileResource($resourceArquivo, $cabecalhoArquivo . QUEBRA_DE_LINHA, true);
	}

	/**
	 * Escreve a assinatura da classe do formulário
	 * 
	 * @param String $nomeClasse - resource do arquivo que recebera a assinatura da classe
	 * @param String $nomeClasse - nome da classe que será utilizada na assinatura
	 * @param String $componenteExtends - nome do componente que a classe do formulário será extendido
	 * @param String $nomeFormulario - nome do formulário para ser utilizado no cabeçalho da assinatura da classe
	 * @param String $descricaoFormulario - descrição do formulário para ser utilizado no cabeçalho da assinatura da classe
	 * @param String $autor - nome do autor do formulário para ser utilizado no cabeçalho da assinatura da classe
	 * 
	 * @return Boolean - true se cosneguir escrever a assinatura do formulário, false se não
	 * 
	 * @author Carlos Feitosa / João Vasconcelos (carlos.feitosa@rochedoframework.com / joao.vasconcelos@rochedoframework.com)
	 * @since 22/06/2012
	 */
	private function escreveCabecalhoAssinaturaEAssinaturaClasseFormulario($resourceArquivo, $nomeClasse, $componenteExtends, $nomeFormulario, $descricaoFormulario = null, $autor = self::AUTOR_PADRAO)
	{
		// verificando os parametros
		if ((!Basico_OPController_UtilOPController::verificaStreamResource($resourceArquivo)) or 
			(!$nomeClasse) or (!is_string($nomeClasse)) or 
			(!$componenteExtends) or (!class_exists($componenteExtends)) or 
			(!$nomeFormulario) or (!is_string($nomeFormulario))) {
			// retornando falso
			return false;
		}

		// recuperando cabecalho
		$cabecalhoAssinturaClasseFormulario = self::CABECALHO_CLASSE_FORMULARIO;

		// manipulando o cabeçalho da assinatura da classe formulario
		$cabecalhoAssinturaClasseFormulario = str_replace(self::TAG_SUBSTITUICAO_NOME_FORMULARIO, $nomeFormulario, $cabecalhoAssinturaClasseFormulario);
		$cabecalhoAssinturaClasseFormulario = str_replace(self::TAG_SUBSTITUICAO_DESCRICAO_FORMULARIO, $descricaoFormulario, $cabecalhoAssinturaClasseFormulario);
		$cabecalhoAssinturaClasseFormulario = str_replace(self::TAG_SUBSTITUICAO_AUTOR_FORMULARIO, $autor, $cabecalhoAssinturaClasseFormulario);
		$cabecalhoAssinturaClasseFormulario = str_replace(self::TAG_SUBSTITUICAO_DATA_CRIACAO_FORMULARIO, Basico_OPController_UtilOPController::retornaDateTimeAtual(LOCALE_PT_BR, DEFAULT_DATETIME_FORMAT_PT_BR), $cabecalhoAssinturaClasseFormulario);

		// montando assinatura da classe
		$assinaturaClasseFormulario = $this->retornaAssinaturaClasseFormulario($nomeClasse, $componenteExtends);

		// escrevendo cabeçalho e assinatura da classe formulário
		return Basico_OPController_UtilOPController::escreveLinhaFileResource($resourceArquivo, $cabecalhoAssinturaClasseFormulario . QUEBRA_DE_LINHA . $assinaturaClasseFormulario, true);
	}

	private function retornaAssinaturaClasseFormulario($nomeClasse, $componenteExtends)
	{
		// verificando os parametros
		if ((!$nomeClasse) or (!is_string($nomeClasse)) or (!$componenteExtends) or (!class_exists($componenteExtends))) {
			// retornando falso
			return false;
		}

		// retornando assinatura da classe formulário
		return self::KEYWORD_CLASS . ' ' . self::TAG_SUBSTITUICAO_NOME_MODULO_FORMULARIO . "_Form_{$nomeClasse}" . ' ' . self::KEYWORD_EXTENDS . ' ' . $componenteExtends;
	}
	
	/**
	 * Escreve o comentario do construtor da classe do formulario
	 * 
	 * @param Stream Resource $resourceArquivo - resource do arquivo que deseja incluir o cabecalho
	 * @param String $nomeFormulario - nome do formulário
	 * @param String $autor - nome do autor do formulário para ser utilizado no cabeçalho da assinatura da classe 
	 * 
	 * @return Boolean - true se conseguir escrever o cabeçalho no arquivo ou false se não
	 * 
	 * @authorJoão Vaconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 21/06/2012
	 */
	private function escreveComentarioConstrutorClasseFormulario($resourceArquivo, $nomeFormulario, $autor = self::AUTOR_PADRAO)
	{
		// verificando os parametros
		if ((!Basico_OPController_UtilOPController::verificaStreamResource($resourceArquivo)) or 
		    (!$nomeFormulario) or (!is_string($nomeFormulario))) {
	    	// retornando falso
	    	return false;
		}

		// recuperando cabeçalho do arquivo
		$comentarioConstrutor = self::COMENTARIO_CONSTRUTOR_CLASSE_FORMULARIO;

		// manipulando o cabeçalho
		$comentarioConstrutor = str_replace(self::TAG_SUBSTITUICAO_IDENTACAO, Basico_OPController_UtilOPController::retornaIdentacao(1), $comentarioConstrutor); 
		$comentarioConstrutor = str_replace(self::TAG_SUBSTITUICAO_NOME_FORMULARIO, $nomeFormulario, $comentarioConstrutor);
		$comentarioConstrutor = str_replace(self::TAG_SUBSTITUICAO_AUTOR_FORMULARIO, $autor, $comentarioConstrutor);
		$comentarioConstrutor = str_replace(self::TAG_SUBSTITUICAO_DATA_CRIACAO_FORMULARIO, Basico_OPController_UtilOPController::retornaDateTimeAtual(LOCALE_PT_BR, DEFAULT_DATETIME_FORMAT_PT_BR), $comentarioConstrutor);

		// escrevendo o comentario do construtor da classe no arquivo
		return Basico_OPController_UtilOPController::escreveLinhaFileResource($resourceArquivo, $comentarioConstrutor, true);
	}
	
	/**
	 * Escreve a assinatura do construtor da classe do formulario
	 * 
	 * @param Stream Resource $resourceArquivo - resource do arquivo que deseja incluir o cabecalho
	 * 
	 * @return Boolean - true se conseguir escrever a assinatura no arquivo ou false se não
	 * 
	 * @authorJoão Vaconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 25/06/2012
	 */
	private function escreveAssinaturaConstrutorClasseFormulario($resourceArquivo)
	{
		// verificando os parametros
		if (!Basico_OPController_UtilOPController::verificaStreamResource($resourceArquivo)) {
	    	// retornando falso
	    	return false;
		}

		// escrevendo a assinatura do construtor do formulario no arquivo
		return Basico_OPController_UtilOPController::escreveLinhaFileResource($resourceArquivo, str_replace(self::TAG_SUBSTITUICAO_IDENTACAO, Basico_OPController_UtilOPController::retornaIdentacao(1), self::ASSINATURA_CONSTRUTOR_CLASSE_FORMULARIO), true);
	}
	
	/**
	 * Escreve o construtor da classe do formulario
	 * 
	 * @param Stream Resource $resourceArquivo - resource do arquivo que deseja incluir o cabecalho
	 * @param String $nomeFormulario - nome do formulário
	 * @param String $autor - nome do autor do formulário para ser utilizado no cabeçalho da assinatura da classe 
	 * 
	 * @return Boolean - true se conseguir escrever a assinatura no arquivo ou false se não
	 * 
	 * @authorJoão Vaconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 26/06/2012
	 */
	private function escreveConstrutorFormulario($resourceArquivo, $nomeFormulario, $autor = self::AUTOR_PADRAO)
	{
		// escrevendo comentario e chamada e retornando resultado
		return ($this->escreveComentarioConstrutorClasseFormulario($resourceArquivo, $nomeFormulario, $autor) 
				and $this->escreveAssinaturaConstrutorClasseFormulario($resourceArquivo)
				and $this->escreveTagInicioOuFimBlocoCodigo($resourceArquivo, null, 1)
				and $this->escreveComentarioEChamadaConstrutorParent($resourceArquivo)
				and $this->escreveComentarioEChamadaInitFormulario($resourceArquivo)
				and $this->escreveTagInicioOuFimBlocoCodigo($resourceArquivo, true, 1));
	}
	
	/**
	 * Escreve o comentario e chamada do construtor parent do formulario
	 * 
	 * @param Stream Resource $resourceArquivo
	 *
	 * @authorJoão Vaconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 25/06/2012
	 */
	private function escreveComentarioEChamadaConstrutorParent($resourceArquivo)
	{
		// escrevendo comentario e chamada e retornando resultado
		return ($this->escreveComentarioConstrutorParent($resourceArquivo) and $this->escreveChamadaConstrutorParent($resourceArquivo));		
	}
	
	
	/**
	 * Escreve o comentario da chamada para o metodo construtor do formulario
	 * 
	 * @param Stream Resource $resourceArquivo - resource do arquivo que deseja incluir o cabecalho
	 * 
	 * @return Boolean - true se conseguir escrever o comentario no arquivo ou false se não
	 * 
	 * @authorJoão Vaconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 25/06/2012
	 */
	private function escreveComentarioConstrutorParent($resourceArquivo)
	{
		// verificando os parametros
		if ((!Basico_OPController_UtilOPController::verificaStreamResource($resourceArquivo))) {
	    	// retornando falso
	    	return false;
		}

		// escrevendo o comentario do construtor da classe no arquivo
		return Basico_OPController_UtilOPController::escreveLinhaFileResource($resourceArquivo, str_replace(self::TAG_SUBSTITUICAO_IDENTACAO, Basico_OPController_UtilOPController::retornaIdentacao(2), self::COMENTARIO_CHAMADA_PARENT_CONSTRUCT), true);
	}
	
	/**
	 * Escreve comentário e chamada para o construtor do parent
	 * 
	 * @param Stream Resource $resourceArquivo - resource do arquivo que deseja incluir o comentário e chamada para o construtor do parent
	 * 
	 * @return Boolean - true se conseguir escrever a chamada no arquivo ou false se não
	 * 
	 * @authorJoão Vaconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 25/06/2012
	 */
	private function escreveChamadaConstrutorParent($resourceArquivo)
	{
		// verificando os parametros
		if (!Basico_OPController_UtilOPController::verificaStreamResource($resourceArquivo)) {
	    	// retornando falso
	    	return false;
		}

		// escrevendo a assinatura do construtor do formulario no arquivo
		return Basico_OPController_UtilOPController::escreveLinhaFileResource($resourceArquivo, str_replace(self::TAG_SUBSTITUICAO_IDENTACAO, Basico_OPController_UtilOPController::retornaIdentacao(2), self::CHAMADA_PARENT_CONSTRUCT . QUEBRA_DE_LINHA), true);
	}
	
	/**
	 * Escreve a chamada do metodo init do formulario
	 * 
	 * @param Stream Resource $resourceArquivo
	 *
	 * @authorJoão Vaconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 25/06/2012
	 */
	private function escreveComentarioEChamadaInitFormulario($resourceArquivo)
	{
		// escrevendo comentario e chamada e retornando resultado
		return ($this->escreveComentarioChamadaInitFormulario($resourceArquivo) and $this->escreveChamadaInitFormulario($resourceArquivo));		
	}
	
	/**
	 * Escreve o comentario da chamada para o metodo init() do formulario
	 * 
	 * @param Stream Resource $resourceArquivo - resource do arquivo que deseja incluir o cabecalho
	 * 
	 * @return Boolean - true se conseguir escrever o cabeçalho no arquivo ou false se não
	 * 
	 * @authorJoão Vaconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 25/06/2012
	 */
	private function escreveComentarioChamadaInitFormulario($resourceArquivo)
	{
		// verificando os parametros
		if ((!Basico_OPController_UtilOPController::verificaStreamResource($resourceArquivo))) {
	    	// retornando falso
	    	return false;
		}
		// escrevendo o comentario do construtor da classe no arquivo
		return Basico_OPController_UtilOPController::escreveLinhaFileResource($resourceArquivo, str_replace(self::TAG_SUBSTITUICAO_IDENTACAO, Basico_OPController_UtilOPController::retornaIdentacao(2), self::COMENTARIO_CHAMADA_FORMULARIO_INIT), true);
	}
	
	/**
	 * Escreve a chamada para o metodo init() do formulario
	 * 
	 * @param Stream Resource $resourceArquivo - resource do arquivo que deseja incluir o cabecalho
	 * 
	 * @return Boolean - true se conseguir escrever a chamada no arquivo ou false se não
	 * 
	 * @authorJoão Vaconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 25/06/2012
	 */
	private function escreveChamadaInitFormulario($resourceArquivo)
	{
		// verificando os parametros
		if ((!Basico_OPController_UtilOPController::verificaStreamResource($resourceArquivo))) {
	    	// retornando falso
	    	return false;
	    }

		// escrevendo o comentario do construtor da classe no arquivo
		return Basico_OPController_UtilOPController::escreveLinhaFileResource($resourceArquivo, str_replace(self::TAG_SUBSTITUICAO_IDENTACAO, Basico_OPController_UtilOPController::retornaIdentacao(2), self::CHAMADA_FORMULARIO_INIT), true);
	}
	
	/**
	 * Escreve o comentario da chamada para o metodo setName() do formulario substituindo uma flag pelo nome do formulario
	 * 
	 * @param Stream Resource $resourceArquivo - resource do arquivo que deseja incluir o cabecalho
	 * 
	 * @return Boolean - true se conseguir escrever o cabeçalho no arquivo ou false se não
	 * 
	 * @authorJoão Vaconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 25/06/2012
	 */
	private function escreveComentarioChamadaSetNameFormulario($resourceArquivo)
	{
		// verificando os parametros
		if ((!Basico_OPController_UtilOPController::verificaStreamResource($resourceArquivo))) {
		    	// retornando falso
		    	return false;
		    }

		// recuperando cabeçalho do arquivo
		$chamadaSetName = str_replace(self::TAG_SUBSTITUICAO_IDENTACAO, Basico_OPController_UtilOPController::retornaIdentacao(2), self::COMENTARIO_CHAMADA_FORMULARIO_SET_NAME);

		// escrevendo o comentario do construtor da classe no arquivo
		return Basico_OPController_UtilOPController::escreveLinhaFileResource($resourceArquivo, $chamadaSetName, true);
	}
	
	/**
	 * Escreve a chamada para o metodo setName() do formulario substituindo uma flag pelo nome do formulario
	 * 
	 * @param Stream Resource $resourceArquivo - resource do arquivo que deseja incluir o cabecalho
	 * @param String $nomeFormulario - nome do formulário
	 * 
	 * @return Boolean - true se conseguir escrever o cabeçalho no arquivo ou false se não
	 * 
	 * @authorJoão Vaconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 25/06/2012
	 */
	private function escreveChamadaSetNameFormulario($resourceArquivo, $nomeFormulario)
	{
		// verificando os parametros
		if ((!Basico_OPController_UtilOPController::verificaStreamResource($resourceArquivo)) or 
		    (!$nomeFormulario) or (!is_string($nomeFormulario))) {
		    	// retornando falso
		    	return false;
		    }

		// recuperando cabeçalho do arquivo
		$chamadaSetName = str_replace(self::TAG_SUBSTITUICAO_IDENTACAO, Basico_OPController_UtilOPController::retornaIdentacao(2), self::CHAMADA_FORMULARIO_SET_NAME);

		// manipulando o cabeçalho
		$chamadaSetName = str_replace(self::TAG_SUBSTITUICAO_NOME_FORMULARIO, self::TAG_SUBSTITUICAO_NOME_MODULO_FORMULARIO . $nomeFormulario, $chamadaSetName);

		// escrevendo o comentario do construtor da classe no arquivo
		return Basico_OPController_UtilOPController::escreveLinhaFileResource($resourceArquivo, $chamadaSetName, true);
	}

	/**
	 * Escreve o comentario da chamada para o metodo setMethod() do formulario
	 * 
	 * @param Stream Resource $resourceArquivo - resource do arquivo que deseja incluir o cabecalho
	 * 
	 * @return Boolean - true se conseguir escrever o cabeçalho no arquivo ou false se não
	 * 
	 * @author Carlos Feitosa (carlos,feitosa@rochedoframework.com)
	 * @since 27/06/2012
	 */
	private function escreveComentarioChamadaSetMethodFormulario($resourceArquivo)
	{
		// verificando os parametros
		if ((!Basico_OPController_UtilOPController::verificaStreamResource($resourceArquivo))) {
		    	// retornando falso
		    	return false;
	    }

		// recuperando cabeçalho da chamada
		$cabecalhoChamadaSetMethod = str_replace(self::TAG_SUBSTITUICAO_IDENTACAO, Basico_OPController_UtilOPController::retornaIdentacao(2), self::COMENTARIO_CHAMADA_FORMULARIO_SET_METHOD);

		// escrevendo o comentario do construtor da classe no arquivo
		return Basico_OPController_UtilOPController::escreveLinhaFileResource($resourceArquivo, $cabecalhoChamadaSetMethod, true);
	}

	/**
	 * Escreve a chamada para o metodo setMethod() do formulario substituindo uma flag pelo método do formulario
	 * 
	 * @param Stream Resource $resourceArquivo - resource do arquivo que deseja incluir o cabecalho
	 * @param String $metodoFormulario - método do formulário
	 * 
	 * @return Boolean - true se conseguir escrever a chamada no arquivo ou false se não
	 * 
	 * @author João Vaconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 27/06/2012
	 */
	private function escreveChamadaSetMethodFormulario($resourceArquivo, $metodoFormulario)
	{
		// verificando os parametros
		if ((!Basico_OPController_UtilOPController::verificaStreamResource($resourceArquivo)) or 
		    (!$metodoFormulario) or (!is_string($metodoFormulario))) {
		    	// retornando falso
		    	return false;
		    }

		// recuperando cabeçalho do arquivo
		$chamadaSetMethod = str_replace(self::TAG_SUBSTITUICAO_IDENTACAO, Basico_OPController_UtilOPController::retornaIdentacao(2), self::CHAMADA_FORMULARIO_SET_METHOD);

		// manipulando o cabeçalho
		$chamadaSetMethod = str_replace(self::TAG_SUBSTITUICAO_METODO_FORMULARIO, $metodoFormulario, $chamadaSetMethod);

		// escrevendo o comentario do construtor da classe no arquivo
		return Basico_OPController_UtilOPController::escreveLinhaFileResource($resourceArquivo, $chamadaSetMethod, true);
	}

	/**
	 * Escreve o comentario da chamada para o metodo setAction() do formulario
	 * 
	 * @param Stream Resource $resourceArquivo - resource do arquivo que deseja incluir o cabecalho
	 * 
	 * @return Boolean - true se conseguir escrever o cabeçalho no arquivo ou false se não
	 * 
	 * @author João Vaconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 27/06/2012
	 */
	private function escreveComentarioChamadaSetActionFormulario($resourceArquivo)
	{
		// verificando os parametros
		if ((!Basico_OPController_UtilOPController::verificaStreamResource($resourceArquivo))) {
		    	// retornando falso
		    	return false;
		    }

		// recuperando cabeçalho da chamada
		$cabecalhoChamadaSetAction = str_replace(self::TAG_SUBSTITUICAO_IDENTACAO, Basico_OPController_UtilOPController::retornaIdentacao(2), self::COMENTARIO_CHAMADA_FORMULARIO_SET_ACTION);

		// escrevendo o comentario do construtor da classe no arquivo
		return Basico_OPController_UtilOPController::escreveLinhaFileResource($resourceArquivo, $cabecalhoChamadaSetAction, true);
	}

	/**
	 * Escreve a chamada para o metodo setAction() do formulario substituindo uma flag pela ação do formulario
	 * 
	 * @param Stream Resource $resourceArquivo - resource do arquivo que deseja incluir o cabecalho
	 * @param String $acaoFormulario - ação do formulário
	 * 
	 * @return Boolean - true se conseguir escrever a chamada no arquivo ou false se não
	 * 
	 * @author João Vaconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 27/06/2012
	 */
	private function escreveChamadaSetActionFormulario($resourceArquivo, $acaoFormulario)
	{
		// verificando os parametros
		if ((!Basico_OPController_UtilOPController::verificaStreamResource($resourceArquivo)) or 
		    (!$acaoFormulario) or (!is_string($acaoFormulario))) {
		    	// retornando falso
		    	return false;
		    }

		// recuperando cabeçalho do arquivo
		$chamadaSetAction = str_replace(self::TAG_SUBSTITUICAO_IDENTACAO, Basico_OPController_UtilOPController::retornaIdentacao(2), self::CHAMADA_FORMULARIO_SET_ACTION);

		// manipulando o cabeçalho
		$chamadaSetAction = str_replace(self::TAG_SUBSTITUICAO_ACAO_FORMULARIO, $acaoFormulario, $chamadaSetAction);

		// escrevendo o comentario do construtor da classe no arquivo
		return Basico_OPController_UtilOPController::escreveLinhaFileResource($resourceArquivo, $chamadaSetAction, true);
	}
	
	/**
	 * Escreve o comentario da chamada para o metodo addAttribs() do formulario
	 * 
	 * @param Stream Resource $resourceArquivo - resource do arquivo que deseja incluir o cabecalho
	 * 
	 * @return Boolean - true se conseguir escrever o cabeçalho no arquivo ou false se não
	 * 
	 * @author João Vaconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 27/06/2012
	 */
	private function escreveComentarioChamadaAddAttribsFormulario($resourceArquivo)
	{
		// verificando os parametros
		if ((!Basico_OPController_UtilOPController::verificaStreamResource($resourceArquivo))) {
		    	// retornando falso
		    	return false;
		    }

		// recuperando cabeçalho da chamada
		$cabecalhoChamadaAddAttribs = str_replace(self::TAG_SUBSTITUICAO_IDENTACAO, Basico_OPController_UtilOPController::retornaIdentacao(2), self::COMENTARIO_CHAMADA_FORMULARIO_ADD_ATTRIBS);

		// escrevendo o comentario do construtor da classe no arquivo
		return Basico_OPController_UtilOPController::escreveLinhaFileResource($resourceArquivo, $cabecalhoChamadaAddAttribs, true);
	}
	
	/**
	 * Escreve a chamada para o metodo addAttribs() do formulario substituindo uma flag pelos atributos do formulario
	 * 
	 * @param Stream Resource $resourceArquivo - resource do arquivo que deseja incluir a chamada
	 * @param String $atributosFormulario - atributos do formulário
	 * 
	 * @return Boolean - true se conseguir escrever a chamada no arquivo ou false se não
	 * 
	 * @author João Vaconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 27/06/2012
	 */
	private function escreveChamadaAddAttribsFormulario($resourceArquivo, $atributosFormulario)
	{
		// verificando os parametros
		if ((!Basico_OPController_UtilOPController::verificaStreamResource($resourceArquivo)) or 
		    (!$atributosFormulario) or (!is_string($atributosFormulario))) {
		    	// retornando falso
		    	return false;
		    }

		// recuperando cabeçalho do arquivo
		$chamadaAddAttribs = str_replace(self::TAG_SUBSTITUICAO_IDENTACAO, Basico_OPController_UtilOPController::retornaIdentacao(2), self::CHAMADA_FORMULARIO_SET_ATTRIBS);

		// manipulando o cabeçalho
		$chamadaAddAttribs = str_replace(self::TAG_SUBSTITUICAO_INSTANCIA, self::INSTANCIA_FORMULARIO, $chamadaAddAttribs);
		$chamadaAddAttribs = str_replace(self::TAG_SUBSTITUICAO_ATRIBUTOS_FORMULARIO, $atributosFormulario, $chamadaAddAttribs);

		// escrevendo o comentario do construtor da classe no arquivo
		return Basico_OPController_UtilOPController::escreveLinhaFileResource($resourceArquivo, $chamadaAddAttribs, true);
	}

	/**
	 * Escreve o comentário e chamada do método adicionaDecorators do formulário
	 * 
	 * @param Stream Resource $resourceArquivo - resource do arquivo que deseja incluir o comentario
	 * 
	 * @return Boolean - true se conseguir escrever o cabeçalho no arquivo ou false se não
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 05/07/2012
	 */
	private function escreveComentarioEChamadaAddDecoratorFormulario($resourceArquivo)
	{
		// retornando o resultado da escrita
		return (($this->escreveComentarioChamadaAddDecoratorFormulario($resourceArquivo)) and ($this->escreveChamadaAdicionaDecoratorsFormulario($resourceArquivo)));
	}

	/**
	 * Escreve a chamada ao metodo adicionaDecorators do formulário
	 * 
	 * @param Stream Resource $resourceArquivo - resource do arquivo que deseja incluir o comentario
	 * 
	 * @return Boolean - true se conseguir escrever o cabeçalho no arquivo ou false se não
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 05/07/2012
	 */
	private function escreveChamadaAdicionaDecoratorsFormulario($resourceArquivo)
	{
		// verificando os parametros
		if ((!Basico_OPController_UtilOPController::verificaStreamResource($resourceArquivo))) {
			// retornando falso
			return false;
		}

		// recuperando cabeçalho da chamada
		$cabecalhoChamadaAddDecorator = str_replace(self::TAG_SUBSTITUICAO_IDENTACAO, Basico_OPController_UtilOPController::retornaIdentacao(2), self::CHAMADA_ADICIONA_DECORATORS_FORMULARIO);

		// escrevendo o comentario do construtor da classe no arquivo
		return Basico_OPController_UtilOPController::escreveLinhaFileResource($resourceArquivo, $cabecalhoChamadaAddDecorator, true);
	}
	
	/**
	 * Escreve o comentario da chamada para o metodo addDecorator() do formulario
	 * 
	 * @param Stream Resource $resourceArquivo - resource do arquivo que deseja incluir o comentario
	 * 
	 * @return Boolean - true se conseguir escrever o cabeçalho no arquivo ou false se não
	 * 
	 * @author João Vaconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 27/06/2012
	 */
	private function escreveComentarioChamadaAddDecoratorFormulario($resourceArquivo)
	{
		// verificando os parametros
		if ((!Basico_OPController_UtilOPController::verificaStreamResource($resourceArquivo))) {
			// retornando falso
			return false;
		}

		// recuperando cabeçalho da chamada
		$cabecalhoChamadaAddDecorator = str_replace(self::TAG_SUBSTITUICAO_IDENTACAO, Basico_OPController_UtilOPController::retornaIdentacao(2), self::COMENTARIO_CHAMADA_FORMULARIO_ADD_DECORATOR);

		// escrevendo o comentario do construtor da classe no arquivo
		return Basico_OPController_UtilOPController::escreveLinhaFileResource($resourceArquivo, $cabecalhoChamadaAddDecorator, true);
	}

	/**
	 * Escreve a chamada para o metodo addDecorator() do formulario substituindo uma flag pelo decorator do formulario
	 * 
	 * @param Stream Resource $resourceArquivo - resource do arquivo que deseja incluir a chamada
	 * @param String $decoratorFormulario - decorator pra ser adicionado ao formulário
	 * 
	 * @return Boolean - true se conseguir escrever a chamada no arquivo ou false se não
	 * 
	 * @author João Vaconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 27/06/2012
	 */
	private function escreveChamadaAddDecoratorFormulario($resourceArquivo, $decoratorFormulario)
	{
		// verificando os parametros
		if ((!Basico_OPController_UtilOPController::verificaStreamResource($resourceArquivo)) or 
		    (!$decoratorFormulario) or (!is_string($decoratorFormulario))) {
		    	// retornando falso
		    	return false;
		    }

		// recuperando cabeçalho do arquivo
		$chamadaAddDecorator = str_replace(self::TAG_SUBSTITUICAO_IDENTACAO, Basico_OPController_UtilOPController::retornaIdentacao(2), self::CHAMADA_ADD_DECORATOR);

		// manipulando o cabeçalho
		$chamadaAddDecorator = str_replace(self::TAG_SUBSTITUICAO_DECORATOR, $decoratorFormulario, $chamadaAddDecorator);

		// escrevendo o comentario do construtor da classe no arquivo
		return Basico_OPController_UtilOPController::escreveLinhaFileResource($resourceArquivo, $chamadaAddDecorator, true);
	}
	
	/**
	 * Escreve o comentario da chamada para o metodo removeDecorator() do formulario
	 * 
	 * @param Stream Resource $resourceArquivo - resource do arquivo que deseja incluir o comentario
	 * 
	 * @return Boolean - true se conseguir escrever o cabeçalho no arquivo ou false se não
	 * 
	 * @author João Vaconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 28/06/2012
	 */
	private function escreveComentarioChamadaRemoveDecoratorFormulario($resourceArquivo)
	{
		// verificando os parametros
		if ((!Basico_OPController_UtilOPController::verificaStreamResource($resourceArquivo))) {
		    	// retornando falso
		    	return false;
		    }

		// recuperando cabeçalho da chamada
		$cabecalhoChamadaRemoveDecorator = str_replace(self::TAG_SUBSTITUICAO_IDENTACAO, Basico_OPController_UtilOPController::retornaIdentacao(2), self::COMENTARIO_CHAMADA_FORMULARIO_REMOVE_DECORATOR);

		// escrevendo o comentario do construtor da classe no arquivo
		return Basico_OPController_UtilOPController::escreveLinhaFileResource($resourceArquivo, $cabecalhoChamadaRemoveDecorator, true);
	}
	
	/**
	 * Escreve a chamada para o metodo removeDecorator() do formulario substituindo uma flag pelo decorator do formulario
	 * 
	 * @param Stream Resource $resourceArquivo - resource do arquivo que deseja incluir a chamada
	 * @param String $decoratorFormulario - decorator pra ser removido do formulário
	 * 
	 * @return Boolean - true se conseguir escrever a chamada no arquivo ou false se não
	 * 
	 * @author João Vaconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 28/06/2012
	 */
	private function escreveChamadaRemoveDecoratorFormulario($resourceArquivo, $decoratorFormulario)
	{
		// verificando os parametros
		if ((!Basico_OPController_UtilOPController::verificaStreamResource($resourceArquivo)) or 
		    (!$decoratorFormulario) or (!is_string($decoratorFormulario))) {
		    	// retornando falso
		    	return false;
		    }

		// recuperando cabeçalho do arquivo
		$chamadaRemoveDecorator = str_replace(self::TAG_SUBSTITUICAO_IDENTACAO, Basico_OPController_UtilOPController::retornaIdentacao(2), self::CHAMADA_REMOVE_DECORATOR);

		// manipulando o cabeçalho
		$chamadaRemoveDecorator = str_replace(self::TAG_SUBSTITUICAO_DECORATOR, $decoratorFormulario, $chamadaRemoveDecorator);

		// escrevendo o comentario do construtor da classe no arquivo
		return Basico_OPController_UtilOPController::escreveLinhaFileResource($resourceArquivo, $chamadaRemoveDecorator, true);
	}
	
	/**
	 * Escreve o comentario da declaração do método init do formulário
	 * 
	 * @param Stream Resource $resourceArquivo - resource do arquivo que deseja incluir o cabecalho
	 * @param String $autor - nome do autor do formulário para ser utilizado no cabeçalho da assinatura da classe
	 * 
	 * @return Boolean - true se conseguir escrever o cabeçalho no arquivo ou false se não
	 * 
	 * @authorJoão Vaconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 26/06/2012
	 */
	private function escreveComentarioDeclaracaoInitFormulario($resourceArquivo, $autor = self::AUTOR_PADRAO)
	{
		// verificando os parametros
		if ((!Basico_OPController_UtilOPController::verificaStreamResource($resourceArquivo))) {
		    	// retornando falso
		    	return false;
		    }

		// recuperando cabeçalho do arquivo
		$comentarioInit = self::COMENTARIO_DECLARACAO_FORMULARIO_INIT;
		$comentarioInit = str_replace(self::TAG_SUBSTITUICAO_IDENTACAO, Basico_OPController_UtilOPController::retornaIdentacao(1), $comentarioInit);
		$comentarioInit = str_replace(self::TAG_SUBSTITUICAO_AUTOR_FORMULARIO, $autor, $comentarioInit);
		$comentarioInit = str_replace(self::TAG_SUBSTITUICAO_DATA_CRIACAO_FORMULARIO, Basico_OPController_UtilOPController::retornaDateTimeAtual(LOCALE_PT_BR, DEFAULT_DATETIME_FORMAT_PT_BR), $comentarioInit);
		
		// escrevendo o comentario do construtor da classe no arquivo
		return Basico_OPController_UtilOPController::escreveLinhaFileResource($resourceArquivo, QUEBRA_DE_LINHA . $comentarioInit, true);
	}
	
	/**
	 * Escreve a assinatura do método init do formulário
	 * 
	 * @param Stream Resource $resourceArquivo - resource do arquivo que deseja incluir o texto
	 * 
	 * @return Boolean - true se conseguir escrever a assinatura no arquivo ou false se não
	 * 
	 * @authorJoão Vaconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 26/06/2012
	 */
	private function escreveAssinaturaInitFormulario($resourceArquivo)
	{
		// verificando os parametros
		if (!Basico_OPController_UtilOPController::verificaStreamResource($resourceArquivo)) {
	    	// retornando falso
	    	return false;
		}

		// escrevendo a assinatura do construtor do formulario no arquivo
		return Basico_OPController_UtilOPController::escreveLinhaFileResource($resourceArquivo, str_replace(self::TAG_SUBSTITUICAO_IDENTACAO, Basico_OPController_UtilOPController::retornaIdentacao(1), self::ASSINATURA_FORMULARIO_INIT), true);
	}
	
	/**
	 * Escreve o comentário e a assinatura do metodo init do formulario
	 * 
	 * @param Stream Resource $resourceArquivo
	 * @param String $autor - nome do autor do formulário para ser utilizado no cabeçalho da assinatura da classe
	 *
	 * @authorJoão Vaconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 26/06/2012
	 */
	private function escreveComentarioEAssinaturaInitFormulario($resourceArquivo, $autor = self::AUTOR_PADRAO)
	{
		// escrevendo comentario e chamada e retornando resultado
		return ($this->escreveComentarioDeclaracaoInitFormulario($resourceArquivo, $autor) and $this->escreveAssinaturaInitFormulario($resourceArquivo));		
	}
	
	/**
	 * Escreve o método init do formulário
	 * 
	 * @param Stream Resource $resourceArquivo - resource do arquivo que deseja incluir o texto
	 * @param Array $arrayAtributosFormulario - array contendo os atributos do objeto formulário
	 * @param String $autor - nome do autor do formulário para ser utilizado no cabeçalho da assinatura da classe
	 * 
	 * @return Boolean - true se conseguir escrever a assinatura no arquivo ou false se não
	 * 
	 * @authorJoão Vaconcelos / Carlos Feitosa (joao.vasconcelos@rochedoframework.com / carlos.feitosa@rochedoframework.com)
	 * @since 26/06/2012
	 */
	private function escreveInitFormulario($resourceArquivo, array $arrayAtributosFormulario, $autor = self::AUTOR_PADRAO)
	{
		// verificando os parametros
		if ((!Basico_OPController_UtilOPController::verificaStreamResource($resourceArquivo)) or (!count($arrayAtributosFormulario))) {
	    	// retornando falso
	    	return false;
	    }

		// escrevendo o método init do formulario e retornando resultado
		return ($this->escreveComentarioEAssinaturaInitFormulario($resourceArquivo, $autor)
				and $this->escreveTagInicioOuFimBlocoCodigo($resourceArquivo, null, 1)
				and $this->escreveInicializacaoFormulario($resourceArquivo, $arrayAtributosFormulario)
				and $this->escreveComentarioEChamadaAddDecoratorFormulario($resourceArquivo)
				and $this->escreveComentarioEChamadaAdicionaELementosFormulario($resourceArquivo)
				and $this->escreveTagInicioOuFimBlocoCodigo($resourceArquivo, true, 1));
	}

	/**
	 * Escreve a inicialização do formulário
	 * 
	 * @param Stream Resource $resourceArquivo - resource do arquivo que deseja incluir a inicialização do formulário
	 * @param array $arrayAtributosFormulario - array contendo os atributos do objeto formulário
	 * 
	 * @return Boolean - true se conseguir escrever o código, false se não
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 26/06/2012
	 */
	private function escreveInicializacaoFormulario($resourceArquivo, array $arrayAtributosFormulario)
	{
		// verificando os parametros
		if ((!Basico_OPController_UtilOPController::verificaStreamResource($resourceArquivo)) 
		    or (!count($arrayAtributosFormulario))
		    or (!isset($arrayAtributosFormulario['formName']))) {
	    	// retornando falso
	    	return false;
	    }

	    // escrevendo o comentário para o método de setar o nome do formulário e verificando o resultado
	    if (!$this->escreveComentarioChamadaSetNameFormulario($resourceArquivo)) {
	    	// retornando falso
	    	return false;
	    }

	    // escrevendo a chamada para o método de setar o nome do formulário e verificando o resultado
	    if (!$this->escreveChamadaSetNameFormulario($resourceArquivo, $arrayAtributosFormulario['formName'])) {
	    	// retornando falso
	    	return false;
	    }

	    // verificando se o formulário possui método de envio de dados
	    if (isset($arrayAtributosFormulario['formMethod'])) {
	    	// escrevendo o comentário sobre o método de envio de dados e verificando o resultado
	    	if (!$this->escreveComentarioChamadaSetMethodFormulario($resourceArquivo)) {
	    		// retornando falso
	    		return false;
	    	}
	    	
	    	// escrevendo a chamada do setMethod para configurar o tipo de envio de dados e verificando o resultado
	    	if (!$this->escreveChamadaSetMethodFormulario($resourceArquivo, $arrayAtributosFormulario['formMethod'])) {
	    		// retornando falso
	    		return false;
	    	}
	    }

		// verificando se o formulário possui ação (url para envio dos dados)
	    if (isset($arrayAtributosFormulario['formAction'])) {
	    	// escrevendo o comentário sobre a ação para envio de dados e verificando o resultado
	    	if (!$this->escreveComentarioChamadaSetActionFormulario($resourceArquivo)) {
	    		// retornando falso
	    		return false;
	    	}
	    	
	    	// escrevendo a chamada do setAction para setar a url de envio de dados e verificando o resultado
	    	if (!$this->escreveChamadaSetActionFormulario($resourceArquivo, $arrayAtributosFormulario['formAction'])) {
	    		// retornando falso
	    		return false;
	    	}
	    }
	    
		// verificando se o formulário possui ação (url para envio dos dados)
	    if (isset($arrayAtributosFormulario['formAttribs'])) {
	    	// escrevendo o comentário sobre a ação para envio de dados e verificando o resultado
	    	if (!$this->escreveComentarioChamadaAddAttribsFormulario($resourceArquivo)) {
	    		// retornando falso
	    		return false;
	    	}
	    	
	    	// escrevendo a chamada do setAction para setar a url de envio de dados e verificando o resultado
	    	if (!$this->escreveChamadaAddAttribsFormulario($resourceArquivo, $arrayAtributosFormulario['formAttribs'])) {
	    		// retornando falso
	    		return false;
	    	}
	    	
	    	// escrevendo os eventos do formulario
	    	if (!$this->escreveEventosFormulario($resourceArquivo, Basico_OPController_FormularioAssocclEvento::getInstance()->retornaArrayDadosEventosFormularioOrdenadoPorOrdemPorIdFormulario($arrayAtributosFormulario['id']))) {
	    		// retornando falso
	    		return false;
	    	}
	    }
	    
	    // retornando o resultado
	    return true;
	}

	/**
	 * Escreve o comentario da chamada para o metodo adicionaElementos() do formulario
	 * 
	 * @param Stream Resource $resourceArquivo - resource do arquivo que deseja incluir o cabecalho
	 * 
	 * @return Boolean - true se conseguir escrever o cabeçalho no arquivo ou false se não
	 * 
	 * @authorJoão Vaconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 26/06/2012
	 */
	private function escreveComentarioChamadaAdicionaElementosFormulario($resourceArquivo)
	{
		// verificando os parametros
		if ((!Basico_OPController_UtilOPController::verificaStreamResource($resourceArquivo))) {
	    	// retornando falso
	    	return false;
	    }

		// escrevendo o comentario do construtor da classe no arquivo
		return Basico_OPController_UtilOPController::escreveLinhaFileResource($resourceArquivo, str_replace(self::TAG_SUBSTITUICAO_IDENTACAO, Basico_OPController_UtilOPController::retornaIdentacao(2), self::COMENTARIO_CHAMADA_ADICIONA_ELEMENTOS_FORMULARIO), true);
	}
	
	/**
	 * Escreve a chamada para o metodo adicionaElementos() do formulario
	 * 
	 * @param Stream Resource $resourceArquivo - resource do arquivo que deseja incluir o cabecalho
	 * 
	 * @return Boolean - true se conseguir escrever o cabeçalho no arquivo ou false se não
	 * 
	 * @authorJoão Vaconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 26/06/2012
	 */
	private function escreveChamadaAdicionaElementosFormulario($resourceArquivo)
	{
		// verificando os parametros
		if ((!Basico_OPController_UtilOPController::verificaStreamResource($resourceArquivo))) {
	    	// retornando falso
	    	return false;
	    }

		// escrevendo o comentario do construtor da classe no arquivo
		return Basico_OPController_UtilOPController::escreveLinhaFileResource($resourceArquivo, str_replace(self::TAG_SUBSTITUICAO_IDENTACAO, Basico_OPController_UtilOPController::retornaIdentacao(2), self::CHAMADA_ADICIONA_ELEMENTOS_FORMULARIO), true);
	}

	/**
	 * Escreve o comentário e a chamada do metodo adicionaElementos do formulario
	 * 
	 * @param Stream Resource $resourceArquivo
	 *
	 * @authorJoão Vaconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 26/06/2012
	 */
	private function escreveComentarioEChamadaAdicionaELementosFormulario($resourceArquivo)
	{
		// escrevendo comentario e chamada e retornando resultado
		return ($this->escreveComentarioChamadaAdicionaElementosFormulario($resourceArquivo) and $this->escreveChamadaAdicionaElementosFormulario($resourceArquivo));		
	}

	/**
	 * Escreve o comentario da declaração do método adicionaElementos do formulário
	 * 
	 * @param Stream Resource $resourceArquivo - resource do arquivo que deseja incluir o cabecalho
	 * @param String $autor - nome do autor do formulário para ser utilizado no cabeçalho da assinatura da classe
	 * 
	 * @return Boolean - true se conseguir escrever o cabeçalho no arquivo ou false se não
	 * 
	 * @authorJoão Vaconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 26/06/2012
	 */
	private function escreveComentarioDeclaracaoAdicionaElementosFormulario($resourceArquivo, $autor = self::AUTOR_PADRAO)
	{
		// verificando os parametros
		if ((!Basico_OPController_UtilOPController::verificaStreamResource($resourceArquivo))) {
	    	// retornando falso
	    	return false;
	    }

		// recuperando cabeçalho do arquivo
		$comentarioAdicionaElementos = str_replace(self::TAG_SUBSTITUICAO_IDENTACAO, Basico_OPController_UtilOPController::retornaIdentacao(1), self::COMENTARIO_DECLARACAO_ADICIONA_ELEMENTOS_FORMULARIO);
		$comentarioAdicionaElementos = str_replace(self::TAG_SUBSTITUICAO_AUTOR_FORMULARIO, $autor, $comentarioAdicionaElementos);
		$comentarioAdicionaElementos = str_replace(self::TAG_SUBSTITUICAO_DATA_CRIACAO_FORMULARIO, Basico_OPController_UtilOPController::retornaDateTimeAtual(LOCALE_PT_BR, DEFAULT_DATETIME_FORMAT_PT_BR), $comentarioAdicionaElementos);
		
		// escrevendo o comentario do construtor da classe no arquivo
		return Basico_OPController_UtilOPController::escreveLinhaFileResource($resourceArquivo, QUEBRA_DE_LINHA . $comentarioAdicionaElementos, true);
	}
	
	/**
	 * Escreve a assinatura do método adicionaElementos do formulário
	 * 
	 * @param Stream Resource $resourceArquivo - resource do arquivo que deseja incluir o texto
	 * 
	 * @return Boolean - true se conseguir escrever a assinatura no arquivo ou false se não
	 * 
	 * @authorJoão Vaconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 26/06/2012
	 */
	private function escreveAssinaturaAdicionaElementosFormulario($resourceArquivo)
	{
		// verificando os parametros
		if (!Basico_OPController_UtilOPController::verificaStreamResource($resourceArquivo)) {
	    	// retornando falso
	    	return false;
		}

		// escrevendo a assinatura do construtor do formulario no arquivo
		return Basico_OPController_UtilOPController::escreveLinhaFileResource($resourceArquivo, str_replace(self::TAG_SUBSTITUICAO_IDENTACAO, Basico_OPController_UtilOPController::retornaIdentacao(1), self::ASSINATURA_ADICIONA_ELEMENTOS_FORMULARIO), true);
	}

	/**
	 * Escreve o método adicionaDecorators do formulário
	 * 
	 * @param Stream Resource $resourceArquivo - resource do arquivo que será escrito
	 * @param Integer $idFormulario - id do formulário que deseja adicionar os elementos
	 * @param String $autor - nome do autor do formulário para ser utilizado no cabeçalho da assinatura da classe
	 * 
	 * @return Boolean - true se conseguir escrever todos os códigos, false se não
	 *
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 05/07/2012
	 */
	private function escreveAdicionaDecoratorsFormulario($resourceArquivo, $idFormulario, $autor = self::AUTOR_PADRAO)
	{
		// escrevendo comentário, assinatura e métodos e retornando o resultado
		return ($this->escreveComentarioDeclaracaoAdicionaDecoratorsFormulario($resourceArquivo, $autor) and
				 $this->escreveAssinaturaAdicionaDecoratorsFormulario($resourceArquivo) and
				 $this->escreveTagInicioOuFimBlocoCodigo($resourceArquivo, false, 1) and
				 $this->escreveDecoratorsFormulario($resourceArquivo, Basico_OPController_FormularioAssocclDecorator::getInstance()->retornaArrayDadosDecoratorsOrdenadoPorOrdemPorIdFormulario($idFormulario)) and
				 $this->escreveTagInicioOuFimBlocoCodigo($resourceArquivo, true, 1));
	}

	/**
	 * Escreve os decorators de um formulário
	 * 
	 * @param Stream Resource $resourceArquivo - resource do arquivo que será escrito
	 * @param Integer $idFormulario - id do formulário que deseja adicionar os elementos
	 * 
	 * @return Boolean - true se conseguir escrever todos os códigos, false se não
	 *
	 * @authorCarlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 05/07/2012
	 */
	private function escreveDecoratorsFormulario2($resourceArquivo, $idFormulario)
	{
		// verificando os parametros
		if ((!Basico_OPController_UtilOPController::verificaStreamResource($resourceArquivo)) or (!is_int($idFormulario))) {
	    	// retornando falso
	    	return false;
	    }

	    // recuperando os ids dos decorators associados ao formulário
	    $arrayIdsDecoratorsFormulario = $this->_formularioAssocclDecorator->retornaArrayIdsDecoratorsPorArrayIdsFormularios(array($idFormulario));

	    // verificando o resultado da recuperação dos ids dos decorators
	    if (!count($arrayIdsDecoratorsFormulario)) {
			// retornando falso
			return false;
	    }

	    // recuperando array com os dados para montagem dos decorators
	    $arrayDadosMontagemDecorators = $this->_formularioDecorator->retornaArrayDadosMontagemDecoratorsPorArrayIdsDecorators($arrayIdsDecoratorsFormulario);

	    // recuperando array com os ids dos decorators que devem ser removidos
	    $arrayIdsDecoratorsRemoveFormulario = $this->_formularioAssocclDecorator->retornaArrayIdsDecoratorsExcludePorArrayIdsFormulario(array($idFormulario));

	    // escrevendo comentário sobre adição e remoção de decorators
	    Basico_OPController_UtilOPController::escreveLinhaFileResource($resourceArquivo, str_replace(self::TAG_SUBSTITUICAO_IDENTACAO, Basico_OPController_UtilOPController::retornaIdentacao(2), self::COMENTARIO_ADICIONA_DECORATORS_FORMULARIO), true);

	    // loop para montar os decorators
	    foreach ($arrayIdsDecoratorsFormulario as $idDecoratorFormulario) {
	    	// verificando se não se trata de uma remoção de decorator
	    	if ((!is_array($arrayIdsDecoratorsRemoveFormulario)) or (false === array_search($idDecoratorFormulario, $arrayIdsDecoratorsRemoveFormulario))) { // adicionando decorator
	    		// verificando se o decorator possui alias para montagem da primeira parte do decorator
	    		if (null !== $arrayDadosMontagemDecorators[$idDecoratorFormulario]['alias']) {
	    			// montando primeira parte do decorator
 	    			$decorator = "array('{$arrayDadosMontagemDecorators[$idDecoratorFormulario]['alias']}' => '{$arrayDadosMontagemDecorators[$idDecoratorFormulario]['componente']}')"; 
	    		} else { // não possui alias
	    			// montando primeira parte do decorator
	    			$decorator = "'{$arrayDadosMontagemDecorators[$idDecoratorFormulario]['componente']}'";
	    		}

	    		// verificando se o decorator possui attribs
	    		if (null !== $arrayDadosMontagemDecorators[$idDecoratorFormulario]['attribs']) {
	    			// adicionando segunda parte do decorator
	    			$decorator .= ", {$arrayDadosMontagemDecorators[$idDecoratorFormulario]['attribs']}";
	    		}

	    		// montando parte final do decorator
	    		$decorator = str_replace(self::TAG_SUBSTITUICAO_DECORATOR, $decorator, self::CHAMADA_ADD_DECORATOR);
	    		$decorator = str_replace(self::TAG_SUBSTITUICAO_INSTANCIA, self::INSTANCIA_FORMULARIO, $decorator);
	    		$decorator = str_replace(self::TAG_SUBSTITUICAO_IDENTACAO, Basico_OPController_UtilOPController::retornaIdentacao(2), $decorator);
	    		   		
	    	} else { // removendo decorator
	    		
	    		// verificando se o decorator possui alias
	    		if (null !== $arrayDadosMontagemDecorators[$idDecoratorFormulario]['alias']) {
	    			// setando o decorator para o nome do alias
 	    			$decorator = "'{$arrayDadosMontagemDecorators[$idDecoratorFormulario]['alias']}'";
	    		} else { // não possui alias
	    			// setando o decorator para o nome do componente
	    			$decorator = "'{$arrayDadosMontagemDecorators[$idDecoratorFormulario]['componente']}'";
	    		}

	    		// montando parte final do decorator
	    		$decorator = str_replace(self::TAG_SUBSTITUICAO_DECORATOR, $decorator, self::CHAMADA_FORMULARIO_REMOVE_DECORATOR);
	    		$decorator = str_replace(self::TAG_SUBSTITUICAO_INSTANCIA, self::INSTANCIA_FORMULARIO, $decorator);
	    		$decorator = str_replace(self::TAG_SUBSTITUICAO_IDENTACAO, Basico_OPController_UtilOPController::retornaIdentacao(2), $decorator);
	    	}

	    	// escrevendo método de adição de decorator
	    	Basico_OPController_UtilOPController::escreveLinhaFileResource($resourceArquivo, $decorator, true);

	    	// limpando memória
	    	unset($idDecoratorFormulario, $decorator);
	    }

	    // limpando memória
	    unset($arrayIdsDecoratorsFormulario, $arrayDadosMontagemDecorators, $arrayIdsDecoratorsRemoveFormulario);

	    return true;
	}

	/**
	 * Escreve o comentário da declaração do método adicionaDecorators do formulário
	 * 
	 * @param Stream Resource $resourceArquivo - resource do arquivo que deseja incluir o texto
	 * @param String $autor - nome do autor do formulário para ser utilizado no cabeçalho da assinatura da classe
	 * 
	 * @return Boolean - true se conseguir escrever a assinatura no arquivo ou false se não
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 05/07/2012
	 */
	private function escreveComentarioDeclaracaoAdicionaDecoratorsFormulario($resourceArquivo, $autor = self::AUTOR_PADRAO)
	{
		// verificando os parametros
		if ((!Basico_OPController_UtilOPController::verificaStreamResource($resourceArquivo))) {
	    	// retornando falso
	    	return false;
	    }

		// recuperando cabeçalho do arquivo
		$comentarioAdicionaDecorators = str_replace(self::TAG_SUBSTITUICAO_IDENTACAO, Basico_OPController_UtilOPController::retornaIdentacao(1), self::COMENTARIO_DECLARACAO_ADICIONA_DECORATORS_FORMULARIO);
		$comentarioAdicionaDecorators = str_replace(self::TAG_SUBSTITUICAO_AUTOR_FORMULARIO, $autor, $comentarioAdicionaDecorators);
		$comentarioAdicionaDecorators = str_replace(self::TAG_SUBSTITUICAO_DATA_CRIACAO_FORMULARIO, Basico_OPController_UtilOPController::retornaDateTimeAtual(LOCALE_PT_BR, DEFAULT_DATETIME_FORMAT_PT_BR), $comentarioAdicionaDecorators);
		
		// escrevendo o comentario do construtor da classe no arquivo
		return Basico_OPController_UtilOPController::escreveLinhaFileResource($resourceArquivo, QUEBRA_DE_LINHA . $comentarioAdicionaDecorators, true);
	}

	/**
	 * Escreve a assinatura do método adicionaDecorators do formulário
	 * 
	 * @param Stream Resource $resourceArquivo - resource do arquivo que deseja incluir o texto
	 * 
	 * @return Boolean - true se conseguir escrever a assinatura no arquivo ou false se não
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 05/07/2012
	 */
	private function escreveAssinaturaAdicionaDecoratorsFormulario($resourceArquivo)
	{
		// verificando os parametros
		if (!Basico_OPController_UtilOPController::verificaStreamResource($resourceArquivo)) {
	    	// retornando falso
	    	return false;
		}

		// escrevendo a assinatura do construtor do formulario no arquivo
		return Basico_OPController_UtilOPController::escreveLinhaFileResource($resourceArquivo, str_replace(self::TAG_SUBSTITUICAO_IDENTACAO, Basico_OPController_UtilOPController::retornaIdentacao(1), self::ASSINATURA_ADICIONA_DECORATORS_FORMULARIO), true);
	}

	/**
	 * Escreve o metodo adicionaElementos do formulario
	 * 
	 * @param Stream Resource $resourceArquivo - resource do arquivo que será escrito
	 * @param Integer $idFormulario - id do formulário que deseja adicionar os elementos
	 * @param String $autor - nome do autor do formulário para ser utilizado no cabeçalho da assinatura da classe
	 * 
	 * @return Boolean - true se conseguir escrever todos os códigos, false se não
	 *
	 * @authorJoão Vaconcelos / Carlos Feitosa (joao.vasconcelos@rochedoframework.com / carlos.feitosa@rochedoframework.com)
	 * @since 26/06/2012
	 */
	private function escreveAdicionaElementosFormulario($resourceArquivo, $idFormulario, $autor = self::AUTOR_PADRAO)
	{
		// escrevendo comentario e chamada e retornando resultado
		return ($this->escreveComentarioDeclaracaoAdicionaElementosFormulario($resourceArquivo, $autor) 
				and $this->escreveAssinaturaAdicionaElementosFormulario($resourceArquivo)
				and $this->escreveTagInicioOuFimBlocoCodigo($resourceArquivo, false, 1)
				and $this->escreveElementosFormulario($resourceArquivo, $idFormulario)
				and $this->escreveTagInicioOuFimBlocoCodigo($resourceArquivo, true, 1));		
	}

	/**
	 * Escreve o conteúdo do método adicionaElementos do formulário
	 * 
	 * @param Stream Resource $resourceArquivo - resource do arquivo que será escrito
	 * @param Integer $idFormulario - id do formulário cujo elementos serão recuperados
	 * 
	 * @return Boolean - true se conseguir escrever, false se não
	 * 
	 * @author João Vasconcelos / Carlos Feitosa (joao.vasconcelos@rochedoframework.com/carlos.feitosa@rochedoframework.com)
	 * @since 10/07/2012
	 */
	private function escreveElementosFormulario($resourceArquivo, $idFormulario)
	{
		// verificando parametros
		if ((!Basico_OPController_UtilOPController::verificaStreamResource($resourceArquivo)) or (!is_int($idFormulario))) {
			// retornando falso
			return false;
		}

		// escrevendo comentário sobre adição e remoção de elementos
	    Basico_OPController_UtilOPController::escreveLinhaFileResource($resourceArquivo, str_replace(self::TAG_SUBSTITUICAO_IDENTACAO, Basico_OPController_UtilOPController::retornaIdentacao(2), self::COMENTARIO_CHAMADA_ADD_ELEMENT_FORMULARIO), true);
	    
	    // recuperando o nome do formulario
	    $nomeFormulario = $this->_formularioOPController->retornaFormNamePorIdFormulario($idFormulario);
	    
	    // recuperando os ids dos elementos do formulario
	    $arrayIdsElementosFormulario = $this->_formularioAssocclElementoOPController->retornaArrayIdsElementosFormularioOrdenadoPorOrdemPorIdFormulario($idFormulario);
	    
	    // recuperando dados da relacao do formulario com os elementos
	    $arrayDadosElementosFormulario = $this->_formularioAssocclElementoOPController->retornaArrayDadosElementosFormularioOrdenadoPorIdFormularioOrdemPorIdFormulario($idFormulario);
	    	    
	    // recuperando dados dos elementos
	    $arrayDadosElementos = $this->_formularioElementoOPController->retornaArrayDadosElementosPorArrayIdsElementos($arrayIdsElementosFormulario);
	    
	    // loop para escrever os elementos
	    foreach ($arrayIdsElementosFormulario as $idElemento) {
	    	
	    	// recuperando dados para montagem do elemento
	    	$arrayDadosMontagemElemento = $this->retornaArrayDadosMontagemElemento($idElemento, $nomeFormulario, $arrayDadosElementosFormulario, $arrayDadosElementos[$idElemento]);
	    	
	    	// escrevendo chamada ao metodo que adiciona o elemento
	    	$this->escreveAddElement($resourceArquivo, $arrayDadosMontagemElemento['componente'], $arrayDadosMontagemElemento['elementName']);
	    	
	    	// escreve chamada ao metodo setLabel do elemento
	    	$this->escreveSetLabelElemento($resourceArquivo, $nomeFormulario, $arrayDadosMontagemElemento['constanteTextualLabel'], $arrayDadosMontagemElemento['elementName'], $arrayDadosMontagemElemento['idAjuda']);
	    	
	    	// escrevendo chamada ao metodo setAttribs do elemento
	    	$this->escreveSetAttribsElemento($resourceArquivo, $arrayDadosMontagemElemento['elementAttribs'], $arrayDadosMontagemElemento['elementName']);
	    	
	    	// escrevendo eventos do elemento
	    	$this->escreveEventosElemento($resourceArquivo, $arrayDadosMontagemElemento['eventos'], $arrayDadosMontagemElemento['elementName']);
	    	
	    	// escrevendo chamada ao metodo setOrder do elemento
	    	$this->escreveSetOrderElemento($resourceArquivo, $arrayDadosMontagemElemento['ordem'], $arrayDadosMontagemElemento['elementName']);
	    	
	    	// escrevendo chamada ao metodo setRequired do elemento
	    	$this->escreveSetRequiredElemento($resourceArquivo, $arrayDadosMontagemElemento['elementRequired'], $arrayDadosMontagemElemento['elementName']);
	    	
	    	// escrevendo filters do elemento
	    	$this->escreveFiltersElemento($resourceArquivo, $arrayDadosMontagemElemento['filters'], $arrayDadosMontagemElemento['elementName']);
	    	
	    	// escrevendo validators do elemento
	    	$this->escreveValidatorsElemento($resourceArquivo, $arrayDadosMontagemElemento['validators'], $arrayDadosMontagemElemento['elementName']);
	    	
	    	// escrevendo decorators do elemento
	    	$this->escreveDecoratorsElemento($resourceArquivo, $arrayDadosMontagemElemento['decorators'], $arrayDadosMontagemElemento['elementName']);
	    	
	    	// escrevendo linha em branco entre os elementos
		    Basico_OPController_UtilOPController::escreveLinhaFileResource($resourceArquivo, '', true);
		    
		    // limpando memoria
		    unset($arrayDadosMontagemElemento, $idElemento);
	    }
	    
		
		return true;
	}
	
	/**
	 * Retorna um array com os dados finais para montagem do elemento, 
	 * verificando utilização de dados defaults ou da especialização do elemento com o formulário
	 * 
	 * @param Int $idElemento - id do elemento que será montado
	 * @param String $nomeFormulario - nome do formulario que esta sendo gerado
	 * @param Array $arrayDadosElementosFormulario - array com dados da especialização
	 * @param Array $arrayDadosElemento - array com os dados default do elemento
	 * 
	 * @return Array - retorna um array com os dados que seram utilizados na montagem
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 11/07/2012
	 */
	private function retornaArrayDadosMontagemElemento($idElemento, $nomeFormulario, $arrayDadosElementosFormulario, $arrayDadosElemento)
	{
		// recuperando o componente do elemento
    	$arrayResultado['componente'] = $this->_componenteOPController->retornaComponentePorIdComponente($arrayDadosElemento['idComponente']);
    	
    	// inicializando elementName com tag de substituicao do nome do modulo e o nome do formulario
    	$arrayResultado['elementName'] = self::TAG_SUBSTITUICAO_NOME_MODULO_FORMULARIO . ucfirst($nomeFormulario);
    	
    	// recuperando o valor do campo elementRequired
    	$arrayResultado['elementRequired'] = Basico_OPController_DBUtilOPController::retornaBooleanDB($arrayDadosElementosFormulario[$idElemento]['elementRequired'], true);
    	
    	// recuperando o valor do campo elementReloadable
    	$arrayResultado['elementReloadable'] = Basico_OPController_DBUtilOPController::retornaBooleanDB($arrayDadosElementosFormulario[$idElemento]['elementReloadable'], true);

    	// recuperando o valor do campo ordem    	
    	$arrayResultado['ordem'] = $arrayDadosElementosFormulario[$idElemento]['ordem'];
	    	
		// recuperando o elementName
    	if (null !== $arrayDadosElementosFormulario[$idElemento]['elementName']) {
    		// elementName da especialização com a primeira letra Maiuscula
    		$arrayResultado['elementName'] .= ucfirst($arrayDadosElementosFormulario[$idElemento]['elementName']);
    	}else{
    		// elementName default com a primeira letra Maiuscula
    		$arrayResultado['elementName'] .= ucfirst($arrayDadosElemento['elementName']);
    	}
    	
		// recuperando o label do elemento
    	if (null !== $arrayDadosElementosFormulario[$idElemento]['constanteTextualLabel']) {
    		// label da especialização
    		$arrayResultado['constanteTextualLabel'] = $arrayDadosElementosFormulario[$idElemento]['constanteTextualLabel'];
    	}else{
    		// label default
    		$arrayResultado['constanteTextualLabel'] = $arrayDadosElemento['constanteTextualLabel'];
    	}
    	
		// recuperando os attribs do elemento
    	if (null !== $arrayDadosElementosFormulario[$idElemento]['elementAttribs']) {
    		// attribs da especialização
    		$arrayResultado['elementAttribs'] = $arrayDadosElementosFormulario[$idElemento]['elementAttribs'];
    	}else{
    		// attribs default
    		$arrayResultado['elementAttribs'] = $arrayDadosElemento['elementAttribs'];
    	}
    	
		// recuperando o elementValueDefault do elemento
    	if (null !== $arrayDadosElementosFormulario[$idElemento]['elementValueDefault']) {
    		// elementValueDefault da especialização
    		$arrayResultado['elementValueDefault'] = $arrayDadosElementosFormulario[$idElemento]['elementValueDefault'];
    	}else{
    		// elementValueDefault default
    		$arrayResultado['elementValueDefault'] = $arrayDadosElemento['elementValueDefault'];
    	}
    	
		// recuperando o idAjuda do elemento
    	if (null !== $arrayDadosElementosFormulario[$idElemento]['idAjuda']) {
    		// idAjuda da especialização
    		$arrayResultado['idAjuda'] = $arrayDadosElementosFormulario[$idElemento]['idAjuda'];
    	}else{
    		// idAjuda default
    		$arrayResultado['idAjuda'] = $arrayDadosElemento['idAjuda'];
    	}
    	
    	// recuperando arrays de filters para montagem no elemento
    	$arrayResultado['filters'] = Basico_OPController_FilterOPController::getInstance()->retornaArrayDadosFiltersElemento($idElemento, $arrayDadosElementosFormulario[$idElemento]['id']);
	
    	// recuperando array de validators para montagem do elemento
    	$arrayResultado['validators'] = Basico_OPController_ValidatorOPController::getInstance()->retornaArrayDadosValidatorsElemento($idElemento, $arrayDadosElementosFormulario[$idElemento]['id']);
    	
    	// recuperando array de decorators para montagem do elemento
    	$arrayResultado['decorators'] = Basico_OPController_FormularioDecoratorOPController::getInstance()->retornaArrayDadosDecoratorsElemento($idElemento, $arrayDadosElementosFormulario[$idElemento]['id']);
    	
    	// recuperando array de decorators para montagem do elemento
    	$arrayResultado['eventos'] = Basico_OPController_EventoOPController::getInstance()->retornaArrayDadosEventosElemento($idElemento, $arrayDadosElementosFormulario[$idElemento]['id']);
    	
    	// retornando array com dados para montagem do elemento
    	return $arrayResultado;
	}
	
	/**
	 * Escreve a chamada ao metodo addElement() que adiciona um elemento ao formulario
	 *
	 * @param Stream Resource $resourceArquivo - resource do arquivo que será escrito
	 * @param String $componente - componente do elemento (determina o tipo do elemento a ser adicionado)
	 * @param String $elementName - nome do elemento a ser adicionado
	 * 
	 * @return Boolean - true se conseguir escrever e false se não
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 11/07/2012
	 */
	private function escreveAddElement($resourceArquivo, $componente, $elementName)
	{
		// montando string de adicao do elemento
    	$addElement = "'{$componente}', '{$elementName}'";
    	$addElement = str_replace(self::TAG_SUBSTITUICAO_ELEMENTO_FORMULARIO, $addElement, self::CHAMADA_ADD_ELEMENT);
    	$addElement = str_replace(self::TAG_SUBSTITUICAO_IDENTACAO, Basico_OPController_UtilOPController::retornaIdentacao(2), $addElement);
		$addElement = str_replace(self::TAG_SUBSTITUICAO_INSTANCIA, self::INSTANCIA_FORMULARIO, $addElement);
    	
    	// escrevendo linha que adiciona o elemento no formulario
    	return Basico_OPController_UtilOPController::escreveLinhaFileResource($resourceArquivo, $addElement, true);
	}
	
	/**
	 * Escreve o metodo setLabel do elemento
	 * 
	 * @param Stream Resource $resourceArquivo - resource do arquivo que será escrito
	 * @param String $nomeFormulario - nome do formulario para ser usado na montagem do botao de ajuda
	 * @param String $constanteTextualLabel - Constante textual a ser traduzida para o label do elemento
	 * @param String $elementName - Nome do elemento que tera o label setado
	 * @param String $arrayDadosAjudaElemento - array com os dados da ajuda do elemento se ela existir
	 * 
	 * @return Boolean - true se conseguir escrever, false se não conseguir
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 11/07/2012
	 */
	private function escreveSetLabelElemento($resourceArquivo, $nomeFormulario, $constanteTextualLabel, $elementName, $idAjuda = null)
	{
		// verificando se conseguiu recuperar um label
    	if (null !== $constanteTextualLabel) {
    		
    		// inicializando variaveis
    		$ajudaButton = "";
    		
    		// verificando se o elemento possui ajuda
    		if (null !== $idAjuda) {
    			// recuperando dados da ajuda
    			$constanteTextualAjuda = Basico_OPController_AjudaOPController::getInstance()->retornaConstanteTextualAjudaPorIdAjuda($idAjuda);
    			
    			// verificando se recuperou a constante
    			if (null !== $constanteTextualAjuda) {
    				// montando string do botao de ajuda
	    			$ajudaButton = " . " . str_replace(self::TAG_SUBSTITUICAO_NOME_FORMULARIO, $nomeFormulario, self::SCRIPT_AJUDA_BUTTON);
	    			$ajudaButton = str_replace(self::TAG_SUBSTITUICAO_CONSTANTE_TEXTUAL, $constanteTextualAjuda, $ajudaButton);
    			}	
    		}
    		
	    	// montando string do setLabel do elemento
	    	$setLabel = str_replace(self::TAG_SUBSTITUICAO_LABEL, "'{$constanteTextualLabel}'", self::CHAMADA_SET_LABEL);
	    	$setLabel = str_replace(self::TAG_SUBSTITUICAO_AJUDA_BUTTON, $ajudaButton, $setLabel);
	    	$setLabel = str_replace(self::TAG_SUBSTITUICAO_IDENTACAO, Basico_OPController_UtilOPController::retornaIdentacao(2), $setLabel);
			$setLabel = str_replace(self::TAG_SUBSTITUICAO_INSTANCIA, self::INSTANCIA_FORMULARIO . "->" . $elementName, $setLabel);
	    	
	    	// escrevendo linha que adiciona o setLabel do elemento
	    	return Basico_OPController_UtilOPController::escreveLinhaFileResource($resourceArquivo, $setLabel, true);
    	}
    	
    	return false;
	}
	
	/**
	 * Escreve o metodo setAttribs do elemento
	 * 
	 * @param Stream Resource $resourceArquivo - resource do arquivo que será escrito
	 * @param String $elementAttribs - Attribs para serem setados no elemento
	 * @param String $elementName - Nome do elemento que tera os attribs setados
	 * 
	 * @return Boolean - true se conseguir escrever, false se não conseguir
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 11/07/2012
	 */
	private function escreveSetAttribsElemento($resourceArquivo, $elementAttribs, $elementName)
	{
		// verificando se conseguiu recuperar attribs
    	if (null !== $elementAttribs) {
	    	// montando string do setAttribs do elemento
	    	$setAttribs = str_replace(self::TAG_SUBSTITUICAO_ATTRIBS, $elementAttribs, self::CHAMADA_SET_ATTRIBS);
	    	$setAttribs = str_replace(self::TAG_SUBSTITUICAO_IDENTACAO, Basico_OPController_UtilOPController::retornaIdentacao(2), $setAttribs);
			$setAttribs = str_replace(self::TAG_SUBSTITUICAO_INSTANCIA, self::INSTANCIA_FORMULARIO . "->" . $elementName, $setAttribs);
	    	
	    	// escrevendo linha que adiciona o setAttribs do elemento
	    	return Basico_OPController_UtilOPController::escreveLinhaFileResource($resourceArquivo, $setAttribs, true);
    	}
    	
    	return false;
	}
	
	/**
	 * Escreve o metodo setOrder do elemento
	 * 
	 * @param Stream Resource $resourceArquivo - resource do arquivo que será escrito
	 * @param String $ordem - ordem do elemento
	 * @param String $elementName - Nome do elemento que tera os attribs setados
	 * 
	 * @return Boolean - true se conseguir escrever, false se não conseguir
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 11/07/2012
	 */
	private function escreveSetOrderElemento($resourceArquivo, $ordem, $elementName)
	{
		// verificando se conseguiu recuperar attribs
    	if (null !== $ordem) {
	    	// montando string do setAttribs do elemento
	    	$setOrder = str_replace(self::TAG_SUBSTITUICAO_ORDEM, $ordem, self::CHAMADA_SET_ORDER);
	    	$setOrder = str_replace(self::TAG_SUBSTITUICAO_IDENTACAO, Basico_OPController_UtilOPController::retornaIdentacao(2), $setOrder);
			$setOrder = str_replace(self::TAG_SUBSTITUICAO_INSTANCIA, self::INSTANCIA_FORMULARIO . "->" . $elementName, $setOrder);
	    	
	    	// escrevendo linha que adiciona o setAttribs do elemento
	    	return Basico_OPController_UtilOPController::escreveLinhaFileResource($resourceArquivo, $setOrder, true);
    	}
    	
    	return false;
	}
	
	/**
	 * Escreve o metodo setRequired do elemento
	 * 
	 * @param Stream Resource $resourceArquivo - resource do arquivo que será escrito
	 * @param String $required - required do elemento
	 * @param String $elementName - Nome do elemento que tera os attribs setados
	 * 
	 * @return Boolean - true se conseguir escrever, false se não conseguir
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 11/07/2012
	 */
	private function escreveSetRequiredElemento($resourceArquivo, $required, $elementName)
	{
		// verificando se conseguiu recuperar attribs
    	if (null !== $required) {
	    	// montando string do setAttribs do elemento
	    	$setRequired = str_replace(self::TAG_SUBSTITUICAO_REQUIRED, $required, self::CHAMADA_SET_REQUIRED);
	    	$setRequired = str_replace(self::TAG_SUBSTITUICAO_IDENTACAO, Basico_OPController_UtilOPController::retornaIdentacao(2), $setRequired);
			$setRequired = str_replace(self::TAG_SUBSTITUICAO_INSTANCIA, self::INSTANCIA_FORMULARIO . "->" . $elementName, $setRequired);
	    	
	    	// escrevendo linha que adiciona o setAttribs do elemento
	    	return Basico_OPController_UtilOPController::escreveLinhaFileResource($resourceArquivo, $setRequired, true);
    	}
    	
    	return false;
	}
	
	/**
	 * Escreve os filters do elemento
	 * 
	 * @param Stream Resource $resourceArquivo - resource do arquivo que será escrito
	 * @param Array $arrayFilters - array com os filters do elemento
	 * @param String $elementName - Nome do elemento que tera os attribs setados
	 * 
	 * @return Boolean - true se conseguir escrever, false se não conseguir
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 07/08/2012
	 */
	private function escreveFiltersElemento($resourceArquivo, $arrayFilters, $elementName)
	{
		// verificando se as chaves obrigatorias estao no array de filters
    	if (isset($arrayFilters['default']) && isset($arrayFilters['especializacao'])) {
    		
    		// fazendo merge nos arrays de filters default e especializacao para eliminacao de filters repetidos
    		$arrayFiltersFinal = array_merge_recursive($arrayFilters['default'], $arrayFilters['especializacao']);
    		
    		// percorrendo array dos filtros para escrever filters
    		foreach ($arrayFiltersFinal as $filter) {
    			
    			// verificando se e um grupo
    			if (isset($filter['idFilterGrupo']) && $filter['idFilterGrupo'] > 0) {
    				
    				// processando e escrevendo grupos de filtros default do elemento (recursividade)
    				$this->processaGruposFiltersElemento($resourceArquivo, $elementName, $filter['idFilterGrupo'], $filter['removeFlag']);
    				
    			}else{ // se nao for um grupo
    				
    				// recuperando o id do componente do filter pelo id
    				$idComponenteFilter = Basico_OPController_FilterOPController::getInstance()->retornaIdComponenteFilterPorIdFilter($filter['idFilter']);
    					
    				// recuperando o componente do filter
    				$componenteFilter = Basico_OPController_ComponenteOPController::getInstance()->retornaComponentePorIdComponente($idComponenteFilter);
    					
    				// verificando se o grupo eh para remocao
    				if ($filter['removeFlag'] == true) {
    					// escrevendo metodo remove filter 
    					$this->escreveRemoveFilterElemento($resourceArquivo, $componenteFilter, $elementName);
    				}else{
    					
    					// recuperando os attribs do filtro a ser inserido
	    				$filterAttribs = Basico_OPController_FilterOPController::getInstance()->retornaAttribsFilterPorIdFilter($filter['idFilter']);
    					
    					// escrevendo metodo addFilter
    					$this->escreveAddFilterElemento($resourceArquivo, $componenteFilter, $filterAttribs, $elementName);
    				}
    			}
    				
    		}
    	}
    	
    	return false;
	}
	
	/**
	 * Processa e escreve os grupos de filtros do elemento
	 * 
	 * @param Stream Resource $resourceArquivo - resource do arquivo que será escrito
	 * @param String $elementName - Nome do elemento que tera os attribs setados
	 * @param Int $idFilterGrupo - id do grupo de filters a ser inserido
	 * @param Int $removeFlag - informa se e pra remocao ou insercao do grupo
	 * @param Array $arrayIdsGruposJaProcessados - array que registra os grupos que ja foram processados para impedir loops infinitos
	 * 
	 * @return void
	 * 
	 * @author Joao Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 14/08/2012
	 */
	private function processaGruposFiltersElemento($resourceArquivo, $elementName, $idFilterGrupo, $removeFlag, $arrayIdsGruposJaProcessados = array())
	{
		// verificando se o grupo ja foi processado
		if (array_search($idFilterGrupo, $arrayIdsGruposJaProcessados) !== false) {
			// levantando excessao para grupos repitidos no elemento
			throw new Exception(MSG_ERRO_GRUPO_FILTER_JA_PROCESSADO);
		}
		
		// registrando id do grupo como ja processado
		$arrayIdsGruposJaProcessados[] = $idFilterGrupo;
		
		// recuperando filtros do grupo
    	$arrayFiltrosGrupo = Basico_OPController_FilterGrupoAssocagGrupoOPController::getInstance()->retornaArrayDadosFiltersOrdenadoPorOrdemPorIdGrupo($idFilterGrupo);
    				
    	// percorrendo filters do grupo
    	foreach ($arrayFiltrosGrupo as $filter) {

    		// verificando se o filter e um grupo
    		if (isset($filter['idFilterGrupoAssoc']) && $filter['idFilterGrupoAssoc'] > 0) {
    			// processando grupos de filtros (recursividade)
    			$this->processaGruposFiltersElemento($resourceArquivo, $elementName , $filter['idFilterGrupoAssoc'], $removeFlag, $arrayIdsGruposJaProcessados);	
    		}else{
	    		// recuperando o id do componente do filter pelo id
	    		$idComponenteFilter = Basico_OPController_FilterOPController::getInstance()->retornaIdComponenteFilterPorIdFilter($filter['idFilter']);
	    				
	    		// recuperando o componente do filter
	    		$componenteFilter = Basico_OPController_ComponenteOPController::getInstance()->retornaComponentePorIdComponente($idComponenteFilter);
	    					
	    		// verificando se o grupo eh para remocao
	    		if ($removeFlag == true) {
	    			// escrevendo metodo remove filter
	    			$this->escreveRemoveFilterElemento($resourceArquivo, $componenteFilter, $elementName);
	    		}else{
	    			// recuperando os attribs do filtro a ser inserido
	    			$filterAttribs = Basico_OPController_FilterOPController::getInstance()->retornaAttribsFilterPorIdFilter($filter['idFilter']);
	    			// escrevendo metodo para adicao de filter
	    			$this->escreveAddFilterElemento($resourceArquivo, $componenteFilter, $filterAttribs, $elementName);
	    		}
    		}
    	}
	}
	
	/**
	 * Escreve o metodo removeFilter do elemento
	 * 
	 * @param Stream Resource $resourceArquivo - resource do arquivo que será escrito
	 * @param String $filter - filter a ser removido do elemento
	 * @param String $elementName - Nome do elemento que tera o filter removido
	 * 
	 * @return Boolean - true se conseguir escrever, false se não conseguir
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 10/08/2012
	 */
	private function escreveRemoveFilterElemento($resourceArquivo, $filter, $elementName)
	{
		// verificando se conseguiu recuperar attribs
    	if (null !== $filter) {
	    	// montando string do setAttribs do elemento
	    	$removeFilter = str_replace(self::TAG_SUBSTITUICAO_FILTER, Basico_OPController_UtilOPController::retornaStringEntreCaracter($filter, "'"), self::CHAMADA_REMOVE_FILTER);
	    	$removeFilter = str_replace(self::TAG_SUBSTITUICAO_IDENTACAO, Basico_OPController_UtilOPController::retornaIdentacao(2), $removeFilter);
			$removeFilter = str_replace(self::TAG_SUBSTITUICAO_INSTANCIA, self::INSTANCIA_FORMULARIO . "->" . $elementName, $removeFilter);
	    	
	    	// escrevendo linha que adiciona o setAttribs do elemento
	    	return Basico_OPController_UtilOPController::escreveLinhaFileResource($resourceArquivo, $removeFilter, true);
    	}
    	
    	return false;
	}
	
	/**
	 * Escreve o metodo addFilter do elemento
	 * 
	 * @param Stream Resource $resourceArquivo - resource do arquivo que será escrito
	 * @param String $filter - filter a ser adicionado no elemento
	 * @param String $filterAttribs - string com os attribs do filter
	 * @param String $elementName - Nome do elemento que tera o filter adicionado
	 * 
	 * @return Boolean - true se conseguir escrever, false se não conseguir
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 13/08/2012
	 * 
	 * @todo Adicionar setAttribs do filter - Joao Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 */
	private function escreveAddFilterElemento($resourceArquivo, $filter, $filterAttribs, $elementName)
	{
		// verificando se conseguiu recuperar attribs
    	if (null !== $filter) {
    		
    		// montando string do filter
    		$stringFilter = Basico_OPController_UtilOPController::retornaStringEntreCaracter($filter, "'");
    		
	    	// montando string do addFilter do elemento
	    	$addFilter = str_replace(self::TAG_SUBSTITUICAO_FILTER, $stringFilter, self::CHAMADA_ADD_FILTER);
	    	$addFilter = str_replace(self::TAG_SUBSTITUICAO_IDENTACAO, Basico_OPController_UtilOPController::retornaIdentacao(2), $addFilter);
			$addFilter = str_replace(self::TAG_SUBSTITUICAO_INSTANCIA, self::INSTANCIA_FORMULARIO . "->" . $elementName, $addFilter);
	    	
	    	// escrevendo linha que adiciona o setAttribs do elemento
	    	Basico_OPController_UtilOPController::escreveLinhaFileResource($resourceArquivo, $addFilter, true);
	    	
	    	// verificando se o filter possui attribs
    		if ($filterAttribs != '' and $filterAttribs != null) {
    			
    			// adicionando attribs a string do filter
    			$stringFilter   = "array({$filterAttribs})";
    		
	    		// montando attribs do addFilter do elemento
		    	$attribs = str_replace(self::TAG_SUBSTITUICAO_ATTRIBS, $stringFilter, self::CHAMADA_SET_ATTRIBS);
		    	$attribs = str_replace(self::TAG_SUBSTITUICAO_IDENTACAO, Basico_OPController_UtilOPController::retornaIdentacao(2), $attribs);
				$attribs = str_replace(self::TAG_SUBSTITUICAO_INSTANCIA, self::INSTANCIA_FORMULARIO . "->" . $elementName . "->getFilter('{$filter}')" , $attribs);
	    		
				// escrevendo linha que adiciona o setAttribs do elemento
		    	return Basico_OPController_UtilOPController::escreveLinhaFileResource($resourceArquivo, $attribs, true);
	    	
    		}
    		
    		return true;
    	}
    	
    	return false;
	}
	
	/**
	 * Escreve os validators do elemento
	 * 
	 * @param Stream Resource $resourceArquivo - resource do arquivo que será escrito
	 * @param Array $arrayValidators - array com os validators do elemento
	 * @param String $elementName - Nome do elemento que tera os attribs setados
	 * 
	 * @return Boolean - true se conseguir escrever, false se não conseguir
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 22/08/2012
	 */
	private function escreveValidatorsElemento($resourceArquivo, $arrayValidators, $elementName)
	{
		// verificando se as chaves obrigatorias estao no array de filters
    	if (isset($arrayValidators['default']) && isset($arrayValidators['especializacao'])) {
    		
    		// fazendo merge nos arrays de filters default e especializacao para eliminacao de filters repetidos
    		$arrayValidatorsFinal = array_merge_recursive($arrayValidators['default'], $arrayValidators['especializacao']);
    		
    		// percorrendo array dos filtros para escrever filters
    		foreach ($arrayValidatorsFinal as $validator) {
    			
    			// verificando se e um grupo
    			if (isset($validator['idValidatorGrupo']) && $validator['idValidatorGrupo'] > 0) {
    				
    				// processando e escrevendo grupos de filtros default do elemento (recursividade)
    				$this->processaGruposValidatorsElemento($resourceArquivo, $elementName, $validator['idValidatorGrupo'], $validator['removeFlag']);
    				
    			}else{ // se nao for um grupo
    				
    				// recuperando o id do componente do filter pelo id
    				$idComponenteValidator = Basico_OPController_ValidatorOPController::getInstance()->retornaIdComponenteValidatorPorIdValidator($validator['idValidator']);
    					
    				// recuperando o componente do filter
    				$componenteValidator = Basico_OPController_ComponenteOPController::getInstance()->retornaComponentePorIdComponente($idComponenteValidator);
    					
    				// verificando se o grupo eh para remocao
    				if ($validator['removeFlag'] == true) {
    					// escrevendo metodo remove filter 
    					$this->escreveRemoveValidatorElemento($resourceArquivo, $componenteValidator, $elementName);
    				}else{
    					
    					// recuperando os attribs do filtro a ser inserido
	    				$validatorAttribs = Basico_OPController_ValidatorOPController::getInstance()->retornaAttribsValidatorPorIdValidator($validator['idValidator']);
    					
    					// escrevendo metodo addFilter
    					$this->escreveAddValidatorElemento($resourceArquivo, $componenteValidator, $validatorAttribs, $elementName);
    				}
    			}
    				
    		}
    	}
    	
    	return false;
	}
	
	/**
	 * Processa e escreve os grupos de validators do elemento
	 * 
	 * @param Stream Resource $resourceArquivo - resource do arquivo que será escrito
	 * @param String $elementName - Nome do elemento que tera os attribs setados
	 * @param Int $idValidatorGrupo - id do grupo de validators a ser inserido
	 * @param Int $removeFlag - informa se e pra remocao ou insercao do grupo
	 * @param Array $arrayIdsGruposJaProcessados - array que registra os grupos que ja foram processados para impedir loops infinitos
	 * 
	 * @return void
	 * 
	 * @author Joao Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 22/08/2012
	 */
	private function processaGruposValidatorsElemento($resourceArquivo, $elementName, $idValidatorGrupo, $removeFlag, $arrayIdsGruposJaProcessados = array())
	{
		// verificando se o grupo ja foi processado
		if (array_search($idValidatorGrupo, $arrayIdsGruposJaProcessados) !== false) {
			// levantando excessao para grupos repetidos no elemento
			throw new Exception(MSG_ERRO_GRUPO_VALIDATOR_JA_PROCESSADO);
		}
		
		// registrando id do grupo como ja processado
		$arrayIdsGruposJaProcessados[] = $idValidatorGrupo;
		
		// recuperando filtros do grupo
    	$arrayValidatorsGrupo = Basico_OPController_ValidatorGrupoAssocagGrupoOPController::getInstance()->retornaArrayDadosValidatorsOrdenadoPorOrdemPorIdGrupo($idValidatorGrupo);
    				
    	// percorrendo validators do grupo
    	foreach ($arrayValidatorsGrupo as $validator) {

    		// verificando se o validator e um grupo
    		if (isset($validator['idValidatorGrupoAssoc']) && $validator['idValidatorGrupoAssoc'] > 0) {
    			// processando grupos de validators (recursividade)
    			$this->processaGruposValidatorsElemento($resourceArquivo, $elementName , $validator['idValidatorGrupoAssoc'], $removeFlag, $arrayIdsGruposJaProcessados);	
    		}else{
	    		// recuperando o id do componente do validator pelo id
	    		$idComponenteValidator = Basico_OPController_ValidatorOPController::getInstance()->retornaIdComponenteValidatorPorIdValidator($validator['idValidator']);
	    				
	    		// recuperando o componente do validator
	    		$componenteValidator = Basico_OPController_ComponenteOPController::getInstance()->retornaComponentePorIdComponente($idComponenteValidator);
	    					
	    		// verificando se o grupo eh para remocao
	    		if ($removeFlag == true) {
	    			// escrevendo metodo remove filter
	    			$this->escreveRemoveValidatorElemento($resourceArquivo, $componenteValidator, $elementName);
	    		}else{
	    			// recuperando os attribs do filtro a ser inserido
	    			$validatorAttribs = Basico_OPController_ValidatorOPController::getInstance()->retornaAttribsValidatorPorIdValidator($validator['idValidator']);
	    			// escrevendo metodo para adicao de filter
	    			$this->escreveAddValidatorElemento($resourceArquivo, $componenteValidator, $validatorAttribs, $elementName);
	    		}
    		}
    	}
	}
	
	/**
	 * Escreve o metodo removeValidator do elemento
	 * 
	 * @param Stream Resource $resourceArquivo - resource do arquivo que será escrito
	 * @param String $filter - validator a ser removido do elemento
	 * @param String $elementName - Nome do elemento que tera o filter removido
	 * 
	 * @return Boolean - true se conseguir escrever, false se não conseguir
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 22/08/2012
	 */
	private function escreveRemoveValidatorElemento($resourceArquivo, $validator, $elementName)
	{
		// verificando se conseguiu recuperar attribs
    	if (null !== $validator) {
	    	// montando string do setAttribs do elemento
	    	$removeValidator = str_replace(self::TAG_SUBSTITUICAO_VALIDATOR, Basico_OPController_UtilOPController::retornaStringEntreCaracter($validator, "'"), self::CHAMADA_REMOVE_VALIDATOR);
	    	$removeValidator = str_replace(self::TAG_SUBSTITUICAO_IDENTACAO, Basico_OPController_UtilOPController::retornaIdentacao(2), $removeValidator);
			$removeValidator = str_replace(self::TAG_SUBSTITUICAO_INSTANCIA, self::INSTANCIA_FORMULARIO . "->" . $elementName, $removeValidator);
	    	
	    	// escrevendo linha que adiciona o setAttribs do elemento
	    	return Basico_OPController_UtilOPController::escreveLinhaFileResource($resourceArquivo, $removeValidator, true);
    	}
    	
    	return false;
	}
	
	/**
	 * Escreve o metodo addValidator do elemento
	 * 
	 * @param Stream Resource $resourceArquivo - resource do arquivo que será escrito
	 * @param String $validator - filter a ser adicionado no elemento
	 * @param String $validatorAttribs - string com os attribs do validator
	 * @param String $elementName - Nome do elemento que tera o validator adicionado
	 * 
	 * @return Boolean - true se conseguir escrever, false se não conseguir
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 22/08/2012
	 * 
	 * @todo Adicionar setAttribs do validator - Joao Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 */
	private function escreveAddValidatorElemento($resourceArquivo, $validator, $validatorAttribs, $elementName)
	{
		// verificando se conseguiu recuperar attribs
    	if (null !== $validator) {
    		
    		// montando string do validator
    		$stringValidator = Basico_OPController_UtilOPController::retornaStringEntreCaracter($validator, "'");
    		
	    	// montando string do addValidator do elemento
	    	$addValidator = str_replace(self::TAG_SUBSTITUICAO_VALIDATOR, $stringValidator, self::CHAMADA_ADD_VALIDATOR);
	    	$addValidator = str_replace(self::TAG_SUBSTITUICAO_IDENTACAO, Basico_OPController_UtilOPController::retornaIdentacao(2), $addValidator);
			$addValidator = str_replace(self::TAG_SUBSTITUICAO_INSTANCIA, self::INSTANCIA_FORMULARIO . "->" . $elementName, $addValidator);
	    	
	    	// escrevendo linha que adiciona o setAttribs do elemento
	    	Basico_OPController_UtilOPController::escreveLinhaFileResource($resourceArquivo, $addValidator, true);
	    	
	    	// verificando se o filter possui attribs
    		if ($validatorAttribs != '' and $validatorAttribs != null) {
    			
    			// adicionando attribs a string do filter
    			$stringValidator   = "array({$validatorAttribs})";
    		
	    		// montando attribs do addFilter do elemento
		    	$attribs = str_replace(self::TAG_SUBSTITUICAO_ATTRIBS, $stringValidator, self::CHAMADA_SET_ATTRIBS);
		    	$attribs = str_replace(self::TAG_SUBSTITUICAO_IDENTACAO, Basico_OPController_UtilOPController::retornaIdentacao(2), $attribs);
				$attribs = str_replace(self::TAG_SUBSTITUICAO_INSTANCIA, self::INSTANCIA_FORMULARIO . "->" . $elementName . "->getValidator('{$validator}')" , $attribs);
	    		
				// escrevendo linha que adiciona o setAttribs do elemento
		    	return Basico_OPController_UtilOPController::escreveLinhaFileResource($resourceArquivo, $attribs, true);
	    	
    		}
    		
    		return true;
    	}
    	
    	return false;
	}
	
	/**
	 * Escreve os eventos do elemento
	 * 
	 * @param Stream Resource $resourceArquivo - resource do arquivo que será escrito
	 * @param Array $arrayEventos - array com os dados das associacoes (default e especializacao) dos eventos com o elemento
	 * @param String $elementName - Nome do elemento que tera o attrib do evento setado
	 * 
	 * @return Boolean - true se conseguir escrever, false se não conseguir
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 05/09/2012
	 */
	private function escreveEventosElemento($resourceArquivo, $arrayEventos, $elementName)
	{
		// verificando se as chaves obrigatorias estao no array de eventos
    	if (isset($arrayEventos['default']) && isset($arrayEventos['especializacao'])) {
    		
    		// fazendo merge nos arrays de eventos default e especializacao para eliminacao de eventos repetidos
    		$arrayEventosFinal = array_merge_recursive($arrayEventos['default'], $arrayEventos['especializacao']);
    		
    		// percorrendo array das associacoes dos decorators com o elemento para escreve-los
    		foreach ($arrayEventosFinal as $assocclEvento) {
    			
    			// recuperando dados do evento
    			$stringEvento = Basico_OPController_EventoOPController::getInstance()->retornaStringEventoPorIdEvento($assocclEvento['idEvento']);
    			
    			// recuperando dados do evento
    			$stringAcaoEvento = Basico_OPController_AcaoEventoOPController::getInstance()->retornaStringAcaoEventoPorIdAcaoEvento($assocclEvento['idAcaoEvento']);
    			
    			// verificando se o grupo eh para remocao
    			if ($assocclEvento['removeFlag'] == true) {
    				// escrevendo metodo remove eventos 
    				$this->escreveRemoveAttribElemento($resourceArquivo, $stringEvento, $elementName);
    			}else{
    					
    				// escrevendo metodo addFilter
    				$this->escreveAddAttribElemento($resourceArquivo, $stringEvento, $stringAcaoEvento, $elementName);
    			}
    				
    		}
    	}
    	
    	return true;
	}
	
	/**
	 * Escreve o metodo removeAttrib do elemento
	 * 
	 * @param Stream Resource $resourceArquivo - resource do arquivo que será escrito
	 * @param String $attrib - atributo a ser removido do elemento
	 * @param String $elementName - Nome do elemento que tera o atributo removido
	 * 
	 * @return Boolean - true se conseguir escrever, false se não conseguir
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 06/09/2012
	 */
	private function escreveRemoveAttribElemento($resourceArquivo, $attrib, $elementName)
	{
		// verificando se conseguiu recuperar attribs
    	if (null !== $attrib) {
	    	// montando string do setAttribs do elemento
	    	$removeAttrib = str_replace(self::TAG_SUBSTITUICAO_ATTRIB_NAME, Basico_OPController_UtilOPController::retornaStringEntreCaracter($attrib, "'"), self::CHAMADA_REMOVE_ATTRIB);
	    	$removeAttrib = str_replace(self::TAG_SUBSTITUICAO_IDENTACAO, Basico_OPController_UtilOPController::retornaIdentacao(2), $removeAttrib);
			$removeAttrib = str_replace(self::TAG_SUBSTITUICAO_INSTANCIA, self::INSTANCIA_FORMULARIO . "->" . $elementName, $removeAttrib);
	    	
	    	// escrevendo linha que adiciona o removeAttrib do elemento
	    	return Basico_OPController_UtilOPController::escreveLinhaFileResource($resourceArquivo, $removeAttrib, true);
    	}
    	
    	return false;
	}
	
	/**
	 * Escreve o metodo addAttrib do elemento
	 * 
	 * @param Stream Resource $resourceArquivo - resource do arquivo que será escrito
	 * @param String $attrib - atributo a ser adicionado no elemento
	 * @param String $attribValue - string com o valor do atributo a ser adicionado
	 * @param String $elementName - Nome do elemento que tera o atributo adicionado
	 * 
	 * @return Boolean - true se conseguir escrever, false se não conseguir
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 06/09/2012
	 */
	private function escreveAddAttribElemento($resourceArquivo, $attrib, $attribValue, $elementName)
	{
		// verificando se conseguiu recuperar attrib
    	if (null !== $attrib) {
    		
    		// montando string do validator
    		$stringAttrib 	   = Basico_OPController_UtilOPController::retornaStringEntreCaracter($attrib, '"');
    		$stringAttribValue = Basico_OPController_UtilOPController::retornaStringEntreCaracter($attribValue, '"');
    		
	    	// montando string do addValidator do elemento
	    	$addAttrib = str_replace(self::TAG_SUBSTITUICAO_ATTRIB_NAME, $stringAttrib, self::CHAMADA_ADD_ATTRIB);
	    	$addAttrib = str_replace(self::TAG_SUBSTITUICAO_ATTRIB_VALUE, $stringAttribValue, $addAttrib);
	    	$addAttrib = str_replace(self::TAG_SUBSTITUICAO_IDENTACAO, Basico_OPController_UtilOPController::retornaIdentacao(2), $addAttrib);
			$addAttrib = str_replace(self::TAG_SUBSTITUICAO_INSTANCIA, self::INSTANCIA_FORMULARIO . "->" . $elementName, $addAttrib);
	    	
	    	// escrevendo linha que adiciona o setAttribs do elemento
	    	Basico_OPController_UtilOPController::escreveLinhaFileResource($resourceArquivo, $addAttrib, true);
	    	
    		return true;
    	}
    	
    	return false;
	}
	
	/**
	 * Escreve os decorators do elemento
	 * 
	 * @param Stream Resource $resourceArquivo - resource do arquivo que será escrito
	 * @param Array $arrayDecorators - array com os dados das associacoes (default e especializacao) dos decorators com o elemento
	 * @param String $elementName - Nome do elemento que tera os attribs setados
	 * 
	 * @return Boolean - true se conseguir escrever, false se não conseguir
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 22/08/2012
	 */
	private function escreveDecoratorsElemento($resourceArquivo, $arrayDecorators, $elementName)
	{
		// verificando se as chaves obrigatorias estao no array de filters
    	if (isset($arrayDecorators['default']) && isset($arrayDecorators['especializacao'])) {
    		
    		// fazendo merge nos arrays de filters default e especializacao para eliminacao de filters repetidos
    		$arrayDecoratorsFinal = array_merge_recursive($arrayDecorators['default'], $arrayDecorators['especializacao']);
    		
    		// percorrendo array das associacoes dos decorators com o elemento para escreve-los
    		foreach ($arrayDecoratorsFinal as $assocclDecorator) {
    			
    			// recuperando dados do decorator
    			$arrayDadosDecorator = Basico_OPController_FormularioDecoratorOPController::getInstance()->retornaArrayDadosMontagemDecoratorsPorArrayIdsDecorators(array($assocclDecorator['idDecorator']));
    			
    			// verificando se e um grupo
    			if (isset($assocclDecorator['idDecoratorGrupo']) && $assocclDecorator['idDecoratorGrupo'] > 0) {
    				
    				// processando e escrevendo grupos de filtros default do elemento (recursividade)
    				$this->processaGruposDecoratorsElemento($resourceArquivo, $elementName, $assocclDecorator['idDecoratorGrupo'], $arrayDadosDecorator[$assocclDecorator['idDecorator']]['alias'], $assocclDecorator['removeFlag']);
    				
    			}else{ // se nao for um grupo
    					
    				// verificando se o grupo eh para remocao
    				if ($assocclDecorator['removeFlag'] == true) {
    					// escrevendo metodo remove filter 
    					$this->escreveRemoveDecoratorElemento($resourceArquivo, $arrayDadosDecorator[$assocclDecorator['idDecorator']]['componente'], $arrayDadosDecorator[$assocclDecorator['idDecorator']]['alias'], $elementName);
    				}else{
    					
    					// escrevendo metodo addFilter
    					$this->escreveAddDecoratorElemento($resourceArquivo, $arrayDadosDecorator[$assocclDecorator['idDecorator']]['componente'], $arrayDadosDecorator[$assocclDecorator['idDecorator']]['attribs'], $arrayDadosDecorator[$assocclDecorator['idDecorator']]['alias'], $elementName);
    				}
    			}
    				
    		}
    	}
    	
    	return false;
	}
	
	/**
	 * Processa e escreve os grupos de decorators do elemento
	 * 
	 * @param Stream Resource $resourceArquivo - resource do arquivo que será escrito
	 * @param String $elementName - Nome do elemento que tera os attribs setados
	 * @param Int $idDecoratorGrupo - id do grupo de decorators a ser inserido
	 * @param String $decoratorAlias - alias do decorator
	 * @param Int $removeFlag - informa se e pra remocao ou insercao do grupo
	 * @param Array $arrayIdsGruposJaProcessados - array que registra os grupos que ja foram processados para impedir loops infinitos
	 * 
	 * @return void
	 * 
	 * @author Joao Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 22/08/2012
	 */
	private function processaGruposDecoratorsElemento($resourceArquivo, $elementName, $idDecoratorGrupo, $decoratorAlias, $removeFlag, $arrayIdsGruposJaProcessados = array())
	{
		// verificando se o grupo ja foi processado
		if (array_search($idDecoratorGrupo, $arrayIdsGruposJaProcessados) !== false) {
			// levantando excessao para grupos repitidos no elemento
			throw new Exception(MSG_ERRO_GRUPO_DECORATOR_JA_PROCESSADO);
		}
		
		// registrando id do grupo como ja processado
		$arrayIdsGruposJaProcessados[] = $idDecoratorGrupo;
		
		// recuperando filtros do grupo
    	$arrayDecoratorsGrupo = Basico_OPController_FormularioDecoratorGrupoAssocagGrupo::getInstance()->retornaArrayDadosDecoratorsOrdenadoPorOrdemPorIdGrupo($idDecoratorGrupo);
    				
    	// percorrendo filters do grupo
    	foreach ($arrayDecoratorsGrupo as $assocclDecorator) {

    		// recuperando dados do decorator
    		$arrayDadosDecorator = Basico_OPController_FormularioDecoratorOPController::getInstance()->retornaArrayDadosMontagemDecoratorsPorArrayIdsDecorators(array($assocclDecorator['idDecorator']));
    		
    		// verificando se o decorator e um grupo
    		if (isset($assocclDecorator['idDecoratorGrupoAssoc']) && $assocclDecorator['idDecoratorGrupoAssoc'] > 0) {
    			// processando grupos de decorators (recursividade)
    			$this->processaGruposDecoratorsElemento($resourceArquivo, $elementName , $assocclDecorator['idFormularioDecoratorGrupoAssoc'], $arrayDadosDecorator[$assocclDecorator['idDecorator']]['alias'], $removeFlag, $arrayIdsGruposJaProcessados);	
    		}else{
	    					
	    		// verificando se o grupo eh para remocao
	    		if ($removeFlag == true) {
	    			// escrevendo metodo remove decorator
	    			$this->escreveRemoveDecoratorElemento($resourceArquivo, $arrayDadosDecorator[$assocclDecorator['idDecorator']]['componente'], $arrayDadosDecorator[$assocclDecorator['idDecorator']]['alias'], $elementName);
	    		}else{
	    			// escrevendo metodo para adicao de decorator
	    			$this->escreveAddDecoratorElemento($resourceArquivo, $arrayDadosDecorator[$assocclDecorator['idDecorator']]['componente'], $arrayDadosDecorator[$assocclDecorator['idDecorator']]['attribs'], $arrayDadosDecorator[$assocclDecorator['idDecorator']]['alias'], $elementName);
	    		}
    		}
    	}
	}
	
	/**
	 * Escreve o metodo removeDecorator do elemento
	 * 
	 * @param Stream Resource $resourceArquivo - resource do arquivo que será escrito
	 * @param String $decorator - decorator a ser removido do elemento
	 * @param String $decoratorAlias - alias do decorator a ser removido
	 * @param String $elementName - Nome do elemento que tera o decorator removido
	 * 
	 * @return Boolean - true se conseguir escrever, false se não conseguir
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 27/08/2012
	 */
	private function escreveRemoveDecoratorElemento($resourceArquivo, $decorator, $decoratorAlias, $elementName)
	{
		// verificando se passou o decorator
    	if (null !== $decorator) {
    		
    		// se o alias estiver setado usa ele pra remover o decorator
    		if (null != $decoratorAlias) {
    			// utilizando alias do decorator
    			$stringDecorator = $decoratorAlias;
    		}else{
    			// utilizando o nome do decorator (componente)
    			$stringDecorator = $decorator;
    		}
    		
	    	// montando string do decorator do elemento
	    	$removeDecorator = str_replace(self::TAG_SUBSTITUICAO_DECORATOR, Basico_OPController_UtilOPController::retornaStringEntreCaracter($stringDecorator, "'"), self::CHAMADA_REMOVE_DECORATOR);
	    	$removeDecorator = str_replace(self::TAG_SUBSTITUICAO_IDENTACAO, Basico_OPController_UtilOPController::retornaIdentacao(2), $removeDecorator);
			$removeDecorator = str_replace(self::TAG_SUBSTITUICAO_INSTANCIA, self::INSTANCIA_FORMULARIO . "->" . $elementName, $removeDecorator);
	    	
	    	// escrevendo linha que adiciona o removeDecorator do elemento
	    	return Basico_OPController_UtilOPController::escreveLinhaFileResource($resourceArquivo, $removeDecorator, true);
    	}
    	
    	return false;
	}
	
	/**
	 * Escreve o metodo addDecorator do elemento
	 * 
	 * @param Stream Resource $resourceArquivo - resource do arquivo que será escrito
	 * @param String $decorator - decorator a ser adicionado no elemento
	 * @param String $decoratorAlias - alias do decorator a ser adicionado no elemento
	 * @param String $decoratorAttribs - string com os attribs do decorator
	 * @param String $elementName - Nome do elemento que tera o decorator adicionado
	 * 
	 * @return Boolean - true se conseguir escrever, false se não conseguir
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 27/08/2012
	 * 
	 */
	private function escreveAddDecoratorElemento($resourceArquivo, $decorator, $decoratorAttribs, $decoratorAlias, $elementName)
	{
		// verificando se o decorator foi passado
    	if (null !== $decorator) {
    		
    		// utilizando o nome do decorator (componente)
    		$stringDecorator = Basico_OPController_UtilOPController::retornaStringEntreCaracter($decorator, "'");
    		
    		// montando string do nome do decorator
    		if (null != $decoratorAlias) {
    			// utilizando alias do decorator
    			$stringDecorator = Basico_OPController_UtilOPController::retornaStringEntreCaracter($decoratorAlias, "'");

    			// montando decorator com alias e componente
    			$stringDecorator = "array({$stringDecorator} => '{$decorator}')";
    			
    			// setando alias como nome do decorator
    			$decorator = $decoratorAlias;
    		}
    		
    		
	    	// montando string do addFilter do elemento
	    	$addDecorator = str_replace(self::TAG_SUBSTITUICAO_DECORATOR, $stringDecorator, self::CHAMADA_ADD_DECORATOR);
	    	$addDecorator = str_replace(self::TAG_SUBSTITUICAO_IDENTACAO, Basico_OPController_UtilOPController::retornaIdentacao(2), $addDecorator);
			$addDecorator = str_replace(self::TAG_SUBSTITUICAO_INSTANCIA, self::INSTANCIA_FORMULARIO . "->" . $elementName, $addDecorator);
	    	
	    	// escrevendo linha que adiciona o addDecorator do elemento
	    	Basico_OPController_UtilOPController::escreveLinhaFileResource($resourceArquivo, $addDecorator, true);
	    	
	    	// verificando se o decorator possui attribs
    		if ($decoratorAttribs != '' and $decoratorAttribs != null) {
    			
    			// adicionando attribs a string do decorator
    			$stringAttribs   = "array({$decoratorAttribs})";
    		
	    		// montando attribs do addDecorator do elemento
		    	$attribs = str_replace(self::TAG_SUBSTITUICAO_ATTRIBS, $stringAttribs, self::CHAMADA_SET_ATTRIBS);
		    	$attribs = str_replace(self::TAG_SUBSTITUICAO_IDENTACAO, Basico_OPController_UtilOPController::retornaIdentacao(2), $attribs);
				$attribs = str_replace(self::TAG_SUBSTITUICAO_INSTANCIA, self::INSTANCIA_FORMULARIO . "->" . $elementName . "->getDecorator('{$decorator}')" , $attribs);
	    		
				// escrevendo linha que adiciona o setAttribs do elemento
		    	return Basico_OPController_UtilOPController::escreveLinhaFileResource($resourceArquivo, $attribs, true);
	    	
    		}
    		
    		return true;
    	}
    	
    	return false;
	}
	
	/**
	 * Escreve os eventos do formulario
	 * 
	 * @param Stream Resource $resourceArquivo - resource do arquivo que será escrito
	 * @param Array $arrayEventos - array com os dados das associacoes (default e especializacao) dos eventos com o formulario
	 * @param String $elementName - Nome do elemento que tera o attrib do evento setado
	 * 
	 * @return Boolean - true se conseguir escrever, false se não conseguir
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 10/09/2012
	 */
	private function escreveEventosFormulario($resourceArquivo, $arrayEventos)
	{
    	// percorrendo array das associacoes dos decorators com o elemento para escreve-los
    	foreach ($arrayEventos as $assocclEvento) {
    		
    		// recuperando dados do evento
    		$stringEvento = Basico_OPController_EventoOPController::getInstance()->retornaStringEventoPorIdEvento($assocclEvento['idEvento']);
    		
    		// recuperando dados do evento
    		$stringAcaoEvento = Basico_OPController_AcaoEventoOPController::getInstance()->retornaStringAcaoEventoPorIdAcaoEvento($assocclEvento['idAcaoEvento']);
    		
    		// verificando se o grupo eh para remocao
    		if ($assocclEvento['removeFlag'] == true) {
    			// escrevendo metodo remove eventos 
    			$this->escreveRemoveAttribFormulario($resourceArquivo, $stringEvento);
    		}else{
    				
    			// escrevendo metodo addFilter
    			$this->escreveAddAttribFormulario($resourceArquivo, $stringEvento, $stringAcaoEvento);
    		}
    				
    	}
    	
    	
    	return true;
	}
	
	/**
	 * Escreve o metodo removeAttrib do formulario
	 * 
	 * @param Stream Resource $resourceArquivo - resource do arquivo que será escrito
	 * @param String $attrib - atributo a ser removido do formulario
	 * 
	 * @return Boolean - true se conseguir escrever, false se não conseguir
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 10/09/2012
	 */
	private function escreveRemoveAttribFormulario($resourceArquivo, $attrib)
	{
		// verificando se conseguiu recuperar attribs
    	if (null !== $attrib) {
	    	// montando string do setAttribs do elemento
	    	$removeAttrib = str_replace(self::TAG_SUBSTITUICAO_ATTRIB_NAME, Basico_OPController_UtilOPController::retornaStringEntreCaracter($attrib, "'"), self::CHAMADA_REMOVE_ATTRIB);
	    	$removeAttrib = str_replace(self::TAG_SUBSTITUICAO_IDENTACAO, Basico_OPController_UtilOPController::retornaIdentacao(2), $removeAttrib);
			$removeAttrib = str_replace(self::TAG_SUBSTITUICAO_INSTANCIA, self::INSTANCIA_FORMULARIO, $removeAttrib);
	    	
	    	// escrevendo linha que adiciona o removeAttrib do elemento
	    	return Basico_OPController_UtilOPController::escreveLinhaFileResource($resourceArquivo, $removeAttrib, true);
    	}
    	
    	return false;
	}
	
	/**
	 * Escreve o metodo addAttrib do formulario
	 * 
	 * @param Stream Resource $resourceArquivo - resource do arquivo que será escrito
	 * @param String $attrib - atributo a ser adicionado no formulario
	 * @param String $attribValue - string com o valor do atributo a ser adicionado
	 * 
	 * @return Boolean - true se conseguir escrever, false se não conseguir
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 10/09/2012
	 */
	private function escreveAddAttribFormulario($resourceArquivo, $attrib, $attribValue)
	{
		// verificando se conseguiu recuperar attrib
    	if (null !== $attrib) {
    		
    		// montando string do validator
    		$stringAttrib 	   = Basico_OPController_UtilOPController::retornaStringEntreCaracter($attrib, '"');
    		$stringAttribValue = Basico_OPController_UtilOPController::retornaStringEntreCaracter($attribValue, '"');
    		
	    	// montando string do addValidator do elemento
	    	$addAttrib = str_replace(self::TAG_SUBSTITUICAO_ATTRIB_NAME, $stringAttrib, self::CHAMADA_ADD_ATTRIB);
	    	$addAttrib = str_replace(self::TAG_SUBSTITUICAO_ATTRIB_VALUE, $stringAttribValue, $addAttrib);
	    	$addAttrib = str_replace(self::TAG_SUBSTITUICAO_IDENTACAO, Basico_OPController_UtilOPController::retornaIdentacao(2), $addAttrib);
			$addAttrib = str_replace(self::TAG_SUBSTITUICAO_INSTANCIA, self::INSTANCIA_FORMULARIO, $addAttrib);
	    	
	    	// escrevendo linha que adiciona o setAttribs do elemento
	    	Basico_OPController_UtilOPController::escreveLinhaFileResource($resourceArquivo, $addAttrib, true);
	    	
    		return true;
    	}
    	
    	return false;
	}
	
	/**
	 * Escreve os decorators do formulario
	 * 
	 * @param Stream Resource $resourceArquivo - resource do arquivo que será escrito
	 * @param Array $arrayDecorators - array com os dados das associacoes (default e especializacao) dos decorators com o formulario
	 * @param Int $idFormulario - id do formulario que tera os decorators adicionados
	 * 
	 * @return Boolean - true se conseguir escrever, false se não conseguir
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 30/08/2012
	 */
	private function escreveDecoratorsFormulario($resourceArquivo, $arrayDecorators)
	{
		// verificando se as chaves obrigatorias estao no array de decorators
    	if (is_array($arrayDecorators)) {
    		
    		// percorrendo array das associacoes dos decorators com o formulario para escreve-los
    		foreach ($arrayDecorators as $assocclDecorator) {
    			    			
    			// verificando se e um grupo
    			if (isset($assocclDecorator['idDecoratorGrupo']) && $assocclDecorator['idDecoratorGrupo'] > 0) {
    				
    				// processando e escrevendo grupos de decorators do formulario (recursividade)
    				$this->processaGruposDecoratorsFormulario($resourceArquivo, $assocclDecorator['idDecoratorGrupo'], $assocclDecorator['removeFlag']);
    				
    			}else{ // se nao for um grupo
    					
    				// recuperando dados do decorator
	    			$arrayDadosDecorator = Basico_OPController_FormularioDecoratorOPController::getInstance()->retornaArrayDadosMontagemDecoratorsPorArrayIdsDecorators(array($assocclDecorator['idDecorator']));
	    			
    				// verificando se o grupo eh para remocao
    				if ($assocclDecorator['removeFlag'] == true) {
    					// escrevendo metodo removeDecorator dp formulario 
    					$this->escreveRemoveDecoratorFormulario($resourceArquivo, $arrayDadosDecorator[$assocclDecorator['idDecorator']]['componente'], $arrayDadosDecorator[$assocclDecorator['idDecorator']]['alias'], $elementName);
    				}else{
    					
    					// escrevendo metodo addDecorator do formulario
    					$this->escreveAddDecoratorFormulario($resourceArquivo, $arrayDadosDecorator[$assocclDecorator['idDecorator']]['componente'], $arrayDadosDecorator[$assocclDecorator['idDecorator']]['attribs'], $arrayDadosDecorator[$assocclDecorator['idDecorator']]['alias'], $elementName);
    				}
    			}
    				
    		}
    	}
    	
    	return true;
	}
	
	/**
	 * Processa e escreve os grupos de decorators do formulario
	 * 
	 * @param Stream Resource $resourceArquivo - resource do arquivo que será escrito
	 * @param Int $idDecoratorGrupo - id do grupo de decorators a ser inserido
	 * @param String $decoratorAlias - alias do decorator
	 * @param Int $removeFlag - informa se e pra remocao ou insercao do grupo
	 * @param Array $arrayIdsGruposJaProcessados - array que registra os grupos que ja foram processados para impedir loops infinitos
	 * 
	 * @return void
	 * 
	 * @author Joao Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 30/08/2012
	 */
	private function processaGruposDecoratorsFormulario($resourceArquivo, $idDecoratorGrupo, $removeFlag, $arrayIdsGruposJaProcessados = array())
	{
		// verificando se o grupo ja foi processado
		if (array_search($idDecoratorGrupo, $arrayIdsGruposJaProcessados) !== false) {
			// levantando excessao para grupos repitidos no elemento
			throw new Exception(MSG_ERRO_GRUPO_DECORATOR_JA_PROCESSADO);
		}
		
		// registrando id do grupo como ja processado
		$arrayIdsGruposJaProcessados[] = $idDecoratorGrupo;
		
		// recuperando decorators do grupo
    	$arrayDecoratorsGrupo = Basico_OPController_FormularioDecoratorGrupoAssocagGrupo::getInstance()->retornaArrayDadosDecoratorsOrdenadoPorOrdemPorIdGrupo($idDecoratorGrupo);
    				
    	// percorrendo decorators do grupo
    	foreach ($arrayDecoratorsGrupo as $assocclDecorator) {

    		// verificando se o decorator e um grupo
    		if (isset($assocclDecorator['idFormDecoratorGrupoAssoc']) && $assocclDecorator['idFormDecoratorGrupoAssoc'] > 0) {
    			// processando grupos de decorators (recursividade)
    			$this->processaGruposDecoratorsFormulario($resourceArquivo, $assocclDecorator['idFormDecoratorGrupoAssoc'], $removeFlag, $arrayIdsGruposJaProcessados);	
    		}else{

    			// recuperando dados do decorator
    			$arrayDadosDecorator = Basico_OPController_FormularioDecoratorOPController::getInstance()->retornaArrayDadosMontagemDecoratorsPorArrayIdsDecorators(array($assocclDecorator['idFormularioDecorator']));
    			
	    		// verificando se o grupo eh para remocao
	    		if ($removeFlag == true) {
	    			// escrevendo metodo remove decorator
	    			$this->escreveRemoveDecoratorFormulario($resourceArquivo, $arrayDadosDecorator[$assocclDecorator['idFormularioDecorator']]['componente'], $arrayDadosDecorator[$assocclDecorator['idFormularioDecorator']]['alias']);
	    		}else{
	    			// escrevendo metodo para adicao de decorator
	    			$this->escreveAddDecoratorFormulario($resourceArquivo, $arrayDadosDecorator[$assocclDecorator['idFormularioDecorator']]['componente'], $arrayDadosDecorator[$assocclDecorator['idFormularioDecorator']]['attribs'], $arrayDadosDecorator[$assocclDecorator['idFormularioDecorator']]['alias']);
	    		}
    		}
    	}
	}
	
	/**
	 * Escreve o metodo removeDecorator do formulario
	 * 
	 * @param Stream Resource $resourceArquivo - resource do arquivo que será escrito
	 * @param String $decorator - decorator a ser removido do formulario
	 * @param String $decoratorAlias - alias do decorator a ser removido
	 * 
	 * @return Boolean - true se conseguir escrever, false se não conseguir
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 30/08/2012
	 */
	private function escreveRemoveDecoratorFormulario($resourceArquivo, $decorator, $decoratorAlias)
	{
		// verificando se passou o decorator
    	if (null !== $decorator) {
    		
    		// se o alias estiver setado usa ele pra remover o decorator
    		if (null != $decoratorAlias) {
    			// utilizando alias do decorator
    			$stringDecorator = $decoratorAlias;
    		}else{
    			// utilizando o nome do decorator (componente)
    			$stringDecorator = $decorator;
    		}
    		
	    	// montando string do decorator do elemento
	    	$removeDecorator = str_replace(self::TAG_SUBSTITUICAO_DECORATOR, Basico_OPController_UtilOPController::retornaStringEntreCaracter($stringDecorator, "'"), self::CHAMADA_REMOVE_DECORATOR);
	    	$removeDecorator = str_replace(self::TAG_SUBSTITUICAO_IDENTACAO, Basico_OPController_UtilOPController::retornaIdentacao(2), $removeDecorator);
			$removeDecorator = str_replace(self::TAG_SUBSTITUICAO_INSTANCIA, self::INSTANCIA_FORMULARIO, $removeDecorator);
	    	
	    	// escrevendo linha que adiciona o removeDecorator do elemento
	    	return Basico_OPController_UtilOPController::escreveLinhaFileResource($resourceArquivo, $removeDecorator, true);
    	}
    	
    	return false;
	}
	
	/**
	 * Escreve o metodo addDecorator do formulario
	 * 
	 * @param Stream Resource $resourceArquivo - resource do arquivo que será escrito
	 * @param String $decorator - decorator a ser adicionado no elemento
	 * @param String $decoratorAlias - alias do decorator a ser adicionado no elemento
	 * @param String $decoratorAttribs - string com os attribs do decorator
	 * 
	 * @return Boolean - true se conseguir escrever, false se não conseguir
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 30/08/2012
	 * 
	 */
	private function escreveAddDecoratorFormulario($resourceArquivo, $decorator, $decoratorAttribs, $decoratorAlias)
	{
		// verificando se o decorator foi passado
    	if (null !== $decorator) {
    		
    		// utilizando o nome do decorator (componente)
    		$stringDecorator = Basico_OPController_UtilOPController::retornaStringEntreCaracter($decorator, "'");
    		
    		// montando string do nome do decorator
    		if (null != $decoratorAlias) {
    			// utilizando alias do decorator
    			$stringDecorator = Basico_OPController_UtilOPController::retornaStringEntreCaracter($decoratorAlias, "'");

    			// montando decorator com alias e componente
    			$stringDecorator = "array({$stringDecorator} => '{$decorator}')";
    			
    			// setando alias como nome do decorator
    			$decorator = $decoratorAlias;
    		}
    		
    		
	    	// montando string do addDecorator do formulario
	    	$addDecorator = str_replace(self::TAG_SUBSTITUICAO_DECORATOR, $stringDecorator, self::CHAMADA_ADD_DECORATOR);
	    	$addDecorator = str_replace(self::TAG_SUBSTITUICAO_IDENTACAO, Basico_OPController_UtilOPController::retornaIdentacao(2), $addDecorator);
			$addDecorator = str_replace(self::TAG_SUBSTITUICAO_INSTANCIA, self::INSTANCIA_FORMULARIO, $addDecorator);
	    	
	    	// escrevendo linha que adiciona o addDecorator do formulario
	    	Basico_OPController_UtilOPController::escreveLinhaFileResource($resourceArquivo, $addDecorator, true);
	    	
	    	// verificando se o decorator possui attribs
    		if ($decoratorAttribs != '' and $decoratorAttribs != null) {
    			
    			// adicionando attribs a string do decorator
    			$stringAttribs   = "array({$decoratorAttribs})";
    		
	    		// montando attribs do addDecorator do formulario
		    	$attribs = str_replace(self::TAG_SUBSTITUICAO_ATTRIBS, $stringAttribs, self::CHAMADA_SET_ATTRIBS);
		    	$attribs = str_replace(self::TAG_SUBSTITUICAO_IDENTACAO, Basico_OPController_UtilOPController::retornaIdentacao(2), $attribs);
				$attribs = str_replace(self::TAG_SUBSTITUICAO_INSTANCIA, self::INSTANCIA_FORMULARIO . "->getDecorator('{$decorator}')" , $attribs);
	    		
				// escrevendo linha que adiciona o setAttribs do decorator do formulario
		    	return Basico_OPController_UtilOPController::escreveLinhaFileResource($resourceArquivo, $attribs, true);
	    	
    		}
    		
    		return true;
    	}
    	
    	return false;
	}

	/**
	 * Cria um arquivo no sistema de arquivos e retorna seu resource
	 * 
	 * @param String $nomeArquivoFormularioTemporario - nome do arquivo que deseja criar no sistema de arquivos
	 * 
	 * @return Resource|false - retorna o resource para um arquivo ou false se não conseguir criar
	 */
	private function criaArquivoFormularioTemporario($nomeArquivoFormularioTemporario)
	{
		// retornando resultado do método de criação de arquivos
		return Basico_OPController_UtilOPController::abreArquivoLimpo($nomeArquivoFormularioTemporario);
	}

	/**
	 * Gera um nome para um formulário temporário
	 * 
	 * @return String|false - nome do arquivo válido ou false se não encontrar após uma determinada quantidade de tentativas (definidas em QUANTIDADE_MAXIMA_TENTATIVAS_GERACAO_NOME_ARQUIVO_FORMULARIO_TEMPORARIO)
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 21/06/2012
	 */
	private function geraNomeArquivoFormularioTemporarioValido()
	{
		// inicializando variáveis
		$contador = 1;

		// montando primeira tentativa de nome de arquivo valido
		$nomeCompletoArquivoTemporario = APPLICATION_TEMP_FORM_PATH . Basico_OPController_GeradorOPController::geradorTokenGerarToken() . ".php";

		// loop para encontrar um arquivo disponível
		while ((file_exists($nomeCompletoArquivoTemporario)) or ($contador <= self::QUANTIDADE_MAXIMA_TENTATIVAS_GERACAO_NOME_ARQUIVO_FORMULARIO_TEMPORARIO)) {
			// gerando nome nome de arquivo temporario
			$nomeCompletoArquivoTemporario = APPLICATION_TEMP_FORM_PATH . Basico_OPController_GeradorOPController::geradorTokenGerarToken() . ".php";

			// incrementando contador
			$contador++;
		}

		// retornando o nome do arquivo temporario
		return $nomeCompletoArquivoTemporario;
	}

	/**
	 * Apaga do sistema de arquivos um arquivo de formulário temporário
	 * 
	 * @param String $nomeArquivoFormularioTemporario - nome do arquivo temporário que deseja excluir
	 * 
	 * @return Boolean - true se conseguir excluir e false se não
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 21/06/2012
	 */
	private function excluiArquivoFormularioTemporario($nomeArquivoFormularioTemporario)
	{
		return true;
		// retornando o resultado do método de exclusão de arquivos
		return Basico_OPController_UtilOPController::excluiArquivo($nomeArquivoFormularioTemporario);
	}

	/**
	 * Limpa do array ($arrayIdsNomesModulosRemocao) de modulos os elementos existentes em $arrayIdsModulesExclude através das chaves (ids) 
	 * 
	 * @param Array $arrayIdsModulesExclude - array contendo os ids dos modulos que deseja excluir
	 * @param Array $arrayIdsNomesModulosRemocao - array contendo os ids e nomes dos modulos associados
	 * 
	 * @return Array|falso - array contendo os modulos associados sem os modulos passados para exclusão ou falso caso o array de resposta seja vazio
	 * 
	 * @author Carlos Feitosa / João Vasconcelos (carlos.feitosa@rochedoframework.com / joao.vasconcelos@rochedoframework.com)
	 * @since 21/06/2012
	 */
	private function limpaElementosArrayIdsModulosNomesModulosArrayIdsModulesExclude(array $arrayIdsModulesExclude, array $arrayIdsNomesModulosRemocao)
	{
		// inicializando variáveis
		$arrayRetorno = $arrayIdsNomesModulosRemocao;

		// removendo modulos que foram passados no array de exclusão de módulos
		foreach ($arrayIdsModulesExclude as $idModulo) {
			// limpando do array de módulos (se existente) o modulo que foi passado no array de exclusão
			if (array_key_exists($idModulo, $arrayRetorno)) {
				// limpando elemento
				unset($arrayRetorno[$idModulo]);
			}

			// limpando memória
			unset($idModulo);
		}

		// verificando a quantidade de elementos do array de resposta
		if (!count($arrayRetorno)) {
			// retornando falso
			return false;
		}

		// retornando array de elementos filtrados
		return $arrayRetorno;
	}

	/**
	 * Verifica se um formulário pode ser gerado (se possui as categorias e elementos corretos para geração 
	 * 
	 * @param Integer $idFormulario - id do formulário que se deseja verificar
	 * 
	 * @return Boolean - true se for possível gerar o formulário e false caso não
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 20/06/2012
	 */
	private function verificaPossibilidadeGeracaoFormulario($idFormulario)
	{
		// recuperando o id da categoria do formulário
		$idCategoriaFormulario = $this->_formularioOPController->retornaIdCategoriaFormularioPorIdFormulario($idFormulario);

		// retornando o resultado da verificação
		return (($this->_categoriaOPController->verificaCategoriaFormularioPorIdCategoria($idCategoriaFormulario)) and 
		         ($this->_formularioOPController->verificaCompatibilidadeElementosFomularioPorIdFormulario($idFormulario)) and 
		         ($this->_formularioOPController->verificaCompatibilidadeDecoratorsFomularioPorIdFormulario($idFormulario)));
	}

	/**
	 * Verifica se todas as relações com o formulário estão ativas
	 * 
	 * @param Integer $idFormulario - id do formulário que deseja descobrir informações sobre as relações desativadas
	 * 
	 * @return Array|Boolean - array contendo o nome das entidades e ids com registros desativados, false se não conseguir recuperar a infomração e true se todos os registros estiverem ativados
	 * 
	 * @author Carlos Feitosa / João Vasconcelos (carlos.fetiosa@rochedoframework.com / joao.vasconcelos@rochedoframework.com)
	 * @since 11/07/2012
	 */
	private function verificaRelacoesDesativadasPorIdFormulario($idFormulario)
	{
		// retornando resultado
		return $this->_formularioOPController->checaRegistrosAssociadosDesativadosPorArrayIdsRegistros(array($idFormulario));
	}
}