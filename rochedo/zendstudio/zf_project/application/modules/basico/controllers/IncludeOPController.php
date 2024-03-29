<?php
/**
 * Controlador Formulario
 * 
 * Controlador responsavel pelos formularios o sistema
 * 
 * @package Basico_Model_Include
 * 
 * @author Carlos Feitosa (carlos.feitosa@rochedoproject.om)
 * 
 * @since 02/04/2012
 */
class Basico_OPController_IncludeOPController extends Basico_AbstractOPController_RochedoPersistentOPController
{
	/**
	 * Instância do Controlador Formulario
	 * 
	 * @var Basico_OPController_IncludeOPController
	 */
	protected static $_singleton;

	/**
	 * Instância do Modelo Include.
	 * 
	 * @var Basico_Model_Include
	 */
	protected $_model;
	
	/**
	 * Nome da tabela basico.include
	 * 
	 * @var String
	 */
	const nomeTabelaModelo  = 'basico.include';
	/**
	 * Nome do campo id da tabela basico.include
	 * 
	 * @var Array
	 */
	const nomeCampoIdModelo = 'id';

	/**
	 * Construtor do Controlador Basico_OPController_IncludeOPController.
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// chamando construtor da classe pai
		parent::__construct();
	}

	/**
	 * Inicializa o controlador Basico_OPController_IncludeOPController
	 * 
	 * @return void
	 */
	protected function _init()
	{
		// chamando inicializacao da classe pai
		parent::_init();
		
		return;
	}
	
	/**
	 * Inicializa os controladores utilizados pelo controlador
	 * 
	 * (non-PHPdoc)
	 * @see Basico_AbstractController_RochedoPersistentOPController::_initControllers()
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * 
	 * @since 04/05/2012
	 */
	protected function _initControllers()
	{
		return;
	}

	/**
	 * Retorna instância do Controlador Formulario.
	 * 
	 * @return Basico_OPController_IncludeOPController
	 */
	public static function getInstance()
	{
		// checando singleton
		if (self::$_singleton == null){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_IncludeOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}

	/**
	 * Retorna um array contendo o nome da categoria de include e a uri para o include
	 * 
	 * @param String $nomeFormulario
	 * 
	 * @return Array
	 *
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 03/04/2012
	 */
	public static function retornaArrayIncludesFormulario($nomeFormulario)
	{
		// verificando se foi passado o nome do form
		if (!$nomeFormulario) {
			// retornando nulo
			return null;
		}

		// inicializando variaveis
		$isnull       = Basico_OPController_DBUtilOPController::retornaIsNullDB();
		$concatenador = Basico_OPController_DBUtilOPController::retornaConcatenadorDB(); 

		// montando query com as categorias e includes de um formulario/output
		$queryIncludesFormulario = "SELECT COUNT(i.id) AS quantidade,
									       c.nome AS nome_categoria, i.uri,
									       {$isnull}(fi.ordem, '0') {$concatenador} '-' {$concatenador} {$isnull}(faeai.ordem, '0') {$concatenador} '-' {$concatenador} {$isnull}(cai.ordem, '0') AS ordem
									
									FROM basico.formulario f
									LEFT JOIN basico.formulario ff ON (f.id = ff.id_formulario_pai)
									LEFT JOIN basico_formulario.assoccl_elemento fae ON (f.id = fae.id_formulario)
									LEFT JOIN basico_formulario.elemento e ON (fae.id_elemento = e.id)
									LEFT JOIN basico.componente co ON (e.id_componente = co.id)
									LEFT JOIN basico_formulario.assoccl_include fi ON (f.id = fi.id_formulario)
									LEFT JOIN basico_form_assoccl_elemento.assoccl_include faeai ON (fae.id = faeai.id_assoccl_elemento)
									LEFT JOIN basico_componente.assoccl_include cai ON (co.id = cai.id_componente)
									LEFT JOIN basico.include i ON (fi.id_include    = i.id OR
									                               faeai.id_include = i.id OR
									                               cai.id_include   = i.id)
									LEFT JOIN basico.categoria c ON (i.id_categoria = c.id)
									
									WHERE f.form_name = '{$nomeFormulario}'
									AND i.ativo = true
									AND i.id IS NOT NULL
									
									GROUP BY c.nome, i.uri, fi.ordem, faeai.ordem, cai.ordem
									
									ORDER BY ordem";

		// executando query e recuperando o resultados em um array
		$arrayResultado = Basico_OPController_PersistenceOPController::bdRetornaArraySQLQuery($queryIncludesFormulario);

		// verificando se houve resultado na recuperacao
		if (count($arrayResultado)) {
			// inicializando variaveis
			$arrayRetorno = array();

			// loop para montar o resultado em formato de array
			foreach ($arrayResultado as $chave => $valor) {
				// guardando as informacoes no array de resultados
				$arrayRetorno[$chave] = self::substituiTagsInclude($valor);
			}

			// retornando resultado
			return $arrayRetorno;
		}

		// retornando nulo
		return null;
	}

	/**
	 * Substitui as tags dos includes pelos valores em uso pela aplicação
	 * 
	 * @param String $valor
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 03/04/2012
	 */
	private static function substituiTagsInclude($valor)
	{
		// substituindo tags
		$retorno = str_replace(INCLUDE_ENDERECO_APLICACAO_HTTP, Basico_OPController_UtilOPController::retornaServerHost(true) . Basico_OPController_UtilOPController::retornaBaseUrl(), $valor);

		return $retorno;
	}

	/**
	 * Processa os includes de uma view
	 * 
	 * @param Zend_View $view
	 * @param Aray $arrayIncludes
	 * 
	 * @return Boolean
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 03/04/2012
	 */
	public static function processaIncludes(Zend_View $view, array $arrayIncludes)
	{
		// loop para processar os includes
		foreach ($arrayIncludes as $include) {
			// recuperando valores
			$nomeCategoria = $include["nome_categoria"];
			$uri           = $include["uri"];

			// verificando o tipo de include
			switch ($nomeCategoria) {
				case INCLUDE_JS_LINKHTML:
					self::incluiLinkArquivoJavaScriptView($view, $uri);
				break;
				case INCLUDE_CSS_LINKHTML:
					self::incluiLinkArquivoStyleSheetView($view, $uri);
				break;
			}
		}
	} 

	/**
	 * Faz o include de um arquivo JavaScript, via <script src>, em uma view
	 * 
	 * @param Zend_View $view
	 * @param String $uri
	 * 
	 * @return void
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 03/04/2012
	 */
	public static function incluiLinkArquivoJavaScriptView(Zend_View $view, $uri)
	{
		// incluindo arquivo javascript na view
		$view->headScript()->appendFile($uri);
	}

	/**
	 * Faz o include de um arquivo JavaScript, via <script src>, em uma view
	 * 
	 * @param Zend_View $view
	 * @param String $uri
	 * 
	 * @return void
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 03/04/2012
	 */
	public static function incluiLinkArquivoStyleSheetView(Zend_View $view, $uri)
	{
		// inclui o arquivo css na view
		$view->headLink()->appendStylesheet($uri);
	}
}