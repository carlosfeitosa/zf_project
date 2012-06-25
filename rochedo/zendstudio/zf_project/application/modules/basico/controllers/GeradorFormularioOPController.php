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
		$this->_formularioAssocclElementoOPController = Basico_OPController_FormularioAssocclElementoOPController::getInstance();
		$this->_formularioElementoOPController 		  = Basico_OPController_FormularioElementoOPController::getInstance();
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
		// recuperando dados sobre o formulário
		$arrayDadosFormulario = $this->_formularioOPController->retornaArrayDadosFormularioPorIdFormulario($idFormulario);

		// verificando se o formulário é um sub-formulário
		if ((int) $arrayDadosFormulario['idFormularioPai'] > 0) {
			// recuperando o nome do formulário pai
			$arrayDadosFormularioPai = $this->_formularioOPController->retornaArrayDadosFormularioPorIdFormulario($arrayDadosFormulario['idFormularioPai']);

			// retornando mensagem de erro
			return array('Foi informado um sub-formulário como formulário. Para gerar este formulário, tente gerar seu formulário pai (' . $arrayDadosFormularioPai['formName'] . ')');
		}

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
			if (!$this->escreveCabecalhoArquivoFormulario($resourceArquivoTemporario, $arrayDadosFormulario['formName'], $arrayDadosVersao['versao'], $arrayDadosVersao['dataVersao'])) {
				// retornando mensagens de erro
				return array('Não foi possível escrever o cabeçalho do arquivo.');
			}

			// escrevendo a assinatura da classe e verificando o resultado da operação
			if (!$this->escreveCabecalhoAssinaturaEAssinaturaClasseFormulario($resourceArquivoTemporario, $arrayDadosFormulario['formName'], $this->_componenteOPController->retornaComponentePorIdComponente($arrayDadosFormulario['idComponente']), Basico_OPController_DicionarioExpressaoOPController::retornaTraducaoViaSQL($arrayDadosFormulario['constanteTextual']), Basico_OPController_DicionarioExpressaoOPController::retornaTraducaoViaSQL($arrayDadosFormulario['constanteTextualDescricao']))) {
				// retornando mensagens de erro
				return array('Não foi possível escrever o cabeçalho e assinatura do formulário.');
			}
			
			// escrevendo a tag de abertura do bloco de codigo principal da classe
			if (!$this->escreveTagInicioOuFimBlocoCodigo($resourceArquivoTemporario)) {
				// retornando mensagens de erro
				return array('Não foi possível escrever a tag de abertura do bloco de codigo principal da classe.');
			}
			
			// escrevendo os comentários do método construtor da classe formulario, verificando o resultado da operação
			if (!$this->escreveComentarioConstrutorClasseFormulario($resourceArquivoTemporario, $arrayDadosFormulario['formName'])) {
				// retornando mensagens de erro
				return array('Não foi possível escrever o comentario do construtor da classe do formulário.');
			}
			
			// escrevendo a assinatura do método construtor da classe formulario, verificando o resultado da operação
			if (!$this->escreveAssinaturaConstrutorClasseFormulario($resourceArquivoTemporario)) {
				// retornando mensagens de erro
				return array('Não foi possível escrever a assinatura do método construtor da classe do formulário.');
			}
			
			// escrevendo a tag de abertura do bloco de codigo principal da classe
			if (!$this->escreveTagInicioOuFimBlocoCodigo($resourceArquivoTemporario, null, 1)) {
				// retornando mensagens de erro
				return array('Não foi possível escrever a tag de abertura do bloco de codigo do construtor da classe.');
			}
			
			// escrevendo a tag de abertura do bloco de codigo principal da classe
			if (!$this->escreveComentarioEChamadaConstrutorParent($resourceArquivoTemporario)) {
				// retornando mensagens de erro
				return array('Não foi possível escrever o construtor parent.');
			}
			
			// escrevendo a tag de abertura do bloco de codigo principal da classe
			if (!$this->escreveComentarioEChamadaInitFormulario($resourceArquivoTemporario)) {
				// retornando mensagens de erro
				return array('Não foi possível escrever o construtor parent.');
			}
			
			// escrevendo a tag de abertura do bloco de codigo principal da classe
			if (!$this->escreveTagInicioOuFimBlocoCodigo($resourceArquivoTemporario, true, 1)) {
				// retornando mensagens de erro
				return array('Não foi possível escrever a tag de fechamento do bloco de codigo do construtor da classe.');
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
		return Basico_OPController_UtilOPController::escreveLinhaFileResource($resourceArquivo, self::ASSINATURA_CONSTRUTOR_CLASSE_FORMULARIO, true);
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
		return ($this->escreveComentarioConstrutorParent($resourceArquivo) && $this->escreveChamadaConstrutorParent($resourceArquivo));		
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
		return Basico_OPController_UtilOPController::escreveLinhaFileResource($resourceArquivo, self::COMENTARIO_CHAMADA_PARENT_CONSTRUCT, true);
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
		return Basico_OPController_UtilOPController::escreveLinhaFileResource($resourceArquivo, self::CHAMADA_PARENT_CONSTRUCT . QUEBRA_DE_LINHA, true);
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
		return ($this->escreveComentarioChamadaInitFormulario($resourceArquivo) && $this->escreveChamadaInitFormulario($resourceArquivo));		
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
		return Basico_OPController_UtilOPController::escreveLinhaFileResource($resourceArquivo, self::COMENTARIO_CHAMADA_FORMULARIO_INIT, true);
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
		return Basico_OPController_UtilOPController::escreveLinhaFileResource($resourceArquivo, self::CHAMADA_FORMULARIO_INIT, true);
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
		$chamadaSetName = self::COMENTARIO_CHAMADA_FORMULARIO_SET_NAME;

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
		$chamadaSetName = self::CHAMADA_FORMULARIO_SET_NAME;

		// manipulando o cabeçalho
		$chamadaSetName = str_replace(self::TAG_SUBSTITUICAO_NOME_FORMULARIO, $nomeFormulario, $chamadaSetName);

		// escrevendo o comentario do construtor da classe no arquivo
		return Basico_OPController_UtilOPController::escreveLinhaFileResource($resourceArquivo, $chamadaSetName, true);
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
		return (($this->_categoriaOPController->verificaCategoriaFormularioPorIdCategoria($idCategoriaFormulario)) and ($this->_formularioOPController->verificaCompatibilidadeElementosFomularioPorIdFormulario($idFormulario)));
	}

	private function verificaElementosFormulario($idFormulario)
	{
		
	}

	private function retornaElementosFormulario($idFormulario)
	{
		
	}
}