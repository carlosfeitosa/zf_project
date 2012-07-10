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
	const CHAMADA_FORMULARIO_ADD_DECORATOR = FORM_GERADOR_FORM_ADDDECORATOR;
	
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
	const CHAMADA_FORMULARIO_REMOVE_DECORATOR = FORM_GERADOR_FORM_REMOVEDECORATOR;
	
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
			return array('Existem sub-formulários ou elementos associados a este formulário que possuem problemas de compatibilidade.');
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
		$chamadaAddDecorator = str_replace(self::TAG_SUBSTITUICAO_IDENTACAO, Basico_OPController_UtilOPController::retornaIdentacao(2), self::CHAMADA_FORMULARIO_ADD_DECORATOR);

		// manipulando o cabeçalho
		$chamadaAddDecorator = str_replace(self::TAG_SUBSTITUICAO_DECORATOR, $atributosFormulario, $chamadaAddDecorator);

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
		$chamadaRemoveDecorator = str_replace(self::TAG_SUBSTITUICAO_IDENTACAO, Basico_OPController_UtilOPController::retornaIdentacao(2), self::CHAMADA_FORMULARIO_REMOVE_DECORATOR);

		// manipulando o cabeçalho
		$chamadaRemoveDecorator = str_replace(self::TAG_SUBSTITUICAO_DECORATOR, $atributosFormulario, $chamadaRemoveDecorator);

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
	 * @authorCarlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 05/07/2012
	 */
	private function escreveAdicionaDecoratorsFormulario($resourceArquivo, $idFormulario, $autor = self::AUTOR_PADRAO)
	{
		// escrevendo comentário, assinatura e métodos e retornando o resultado
		return ($this->escreveComentarioDeclaracaoAdicionaDecoratorsFormulario($resourceArquivo, $autor) and
				 $this->escreveAssinaturaAdicionaDecoratorsFormulario($resourceArquivo) and
				 $this->escreveTagInicioOuFimBlocoCodigo($resourceArquivo, false, 1) and
				 $this->escreveDecoratorsFormulario($resourceArquivo, $idFormulario) and
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
	private function escreveDecoratorsFormulario($resourceArquivo, $idFormulario)
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
	    		$decorator = str_replace(self::TAG_SUBSTITUICAO_DECORATOR, $decorator, self::CHAMADA_FORMULARIO_ADD_DECORATOR);
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
				and $this->escreveElemetosFormulario($resourceArquivo, $idFormulario)
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
	private function escreveElemetosFormulario($resourceArquivo, $idFormulario)
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
	    $arrayDadosMontagemElementos = $this->_formularioElementoOPController->retornaArrayDadosMontagemElementosPorArrayIdsElementos($arrayIdsElementosFormulario);
	    
	    // loop para escrever os elementos
	    foreach ($arrayDadosMontagemElementos as $idElemento => $arrayDadoElemento) {
	    	// recuperando o componente do elemento
	    	$componente = $this->_componenteOPController->retornaComponentePorIdComponente($arrayDadoElemento['idComponente']);
	    	
	    	// inicializando elementName com tag de substituicao do nome do modulo e o nome do formulario
	    	$elementName = self::TAG_SUBSTITUICAO_NOME_MODULO_FORMULARIO . ucfirst($nomeFormulario);
	    	
	    	// recuperando o elementName
	    	if (null !== $arrayDadosElementosFormulario[$idElemento]['elementName']) {
	    		// elementName da especialização com a primeira letra Maiuscula
	    		$elementName .= ucfirst($arrayDadosElementosFormulario[$idElemento]['elementName']);
	    	}else{
	    		// elementName default com a primeira letra Maiuscula
	    		$elementName .= ucfirst($arrayDadoElemento['elementName']);
	    	}
	    	
	    	// montando string de adicao do elemento
	    	$addElement = "'{$componente}', '{$elementName}'";
	    	$addElement = str_replace(self::TAG_SUBSTITUICAO_ELEMENTO_FORMULARIO, $addElement, self::CHAMADA_ADD_ELEMENT);
	    	$addElement = str_replace(self::TAG_SUBSTITUICAO_IDENTACAO, Basico_OPController_UtilOPController::retornaIdentacao(2), $addElement);
			$addElement = str_replace(self::TAG_SUBSTITUICAO_INSTANCIA, self::INSTANCIA_FORMULARIO, $addElement);
	    	
	    	// escrevendo linha que adiciona o elemento no formulario
	    	Basico_OPController_UtilOPController::escreveLinhaFileResource($resourceArquivo, $addElement, true);
	    	
	    	// limpando memoria
			unset($componente, $addElement);
			
	    	// recuperando o label do elemento
	    	if (null !== $arrayDadosElementosFormulario[$idElemento]['constanteTextualLabel']) {
	    		// label da especialização
	    		$constanteTextualLabel = $arrayDadosElementosFormulario[$idElemento]['constanteTextualLabel'];
	    	}else{
	    		// label default
	    		$constanteTextualLabel = $arrayDadoElemento['constanteTextualLabel'];
	    	}
	    	
	    	// verificando se conseguiu recuperar um label
	    	if (null !== $constanteTextualLabel) {
		    	// montando string do setLabel do elemento
		    	$setLabel = str_replace(self::TAG_SUBSTITUICAO_LABEL, "'{$constanteTextualLabel}'", self::CHAMADA_SET_LABEL);
		    	$setLabel = str_replace(self::TAG_SUBSTITUICAO_IDENTACAO, Basico_OPController_UtilOPController::retornaIdentacao(2), $setLabel);
				$setLabel = str_replace(self::TAG_SUBSTITUICAO_INSTANCIA, self::INSTANCIA_FORMULARIO . "->" . $elementName, $setLabel);
		    	
		    	// escrevendo linha que adiciona o setLabel do elemento
		    	Basico_OPController_UtilOPController::escreveLinhaFileResource($resourceArquivo, $setLabel, true);
	    	}
	    	
	    	unset($constanteTextualLabel, $setLabel);
	    	
	    	// recuperando os attribs do elemento
	    	if (null !== $arrayDadosElementosFormulario[$idElemento]['elementAttribs']) {
	    		// attribs da especialização
	    		$elementAttribs = $arrayDadosElementosFormulario[$idElemento]['elementAttribs'];
	    	}else{
	    		// attribs default
	    		$elementAttribs = $arrayDadoElemento['elementAttribs'];
	    	}
	    	
	    	// verificando se conseguiu recuperar attribs
	    	if (null !== $elementAttribs) {
		    	// montando string do setAttribs do elemento
		    	$setAttribs = str_replace(self::TAG_SUBSTITUICAO_ATTRIBS, $elementAttribs, self::CHAMADA_SET_ATTRIBS);
		    	$setAttribs = str_replace(self::TAG_SUBSTITUICAO_IDENTACAO, Basico_OPController_UtilOPController::retornaIdentacao(2), $setAttribs);
				$setAttribs = str_replace(self::TAG_SUBSTITUICAO_INSTANCIA, self::INSTANCIA_FORMULARIO . "->" . $elementName, $setAttribs);
		    	
		    	// escrevendo linha que adiciona o setAttribs do elemento
		    	Basico_OPController_UtilOPController::escreveLinhaFileResource($resourceArquivo, $setAttribs, true);
	    	}
	    	
	    	// limpando memoria
	    	unset($setAttribs, $elementAttribs);
	    	
	    	// escrevendo linha em branco entre os elementos
		    Basico_OPController_UtilOPController::escreveLinhaFileResource($resourceArquivo, '', true);
	    }
	    
		
		return true;
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

	private function verificaElementosFormulario($idFormulario)
	{
		
	}

	private function retornaElementosFormulario($idFormulario)
	{
		
	}
}