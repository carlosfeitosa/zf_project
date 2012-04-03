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
class Basico_OPController_IncludeOPController extends Basico_AbstractController_RochedoPersistentOPController
{
	/**
	 * Nome da tabela categoria
	 * 
	 * @var String
	 */
	const nomeTabelaModelo  = 'basico.include';

	/**
	 * Instância do Controlador Formulario
	 * 
	 * @var Basico_OPController_IncludeOPController
	 */
	private static $_singleton;

	/**
	 * Instância do Modelo Formulario.
	 * 
	 * @var Basico_Model_Formulario
	 */
	private $_model;

	/**
	 * Construtor do Controlador Basico_OPController_IncludeOPController.
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// instanciando o modelo
		$this->_model = $this->retornaNovoObjetoModeloPorNomeOPController($this->retornaNomeClassePorObjeto($this));

		// inicializando controlador
		$this->init();
	}

	/**
	 * Inicializa o controlador Basico_OPController_IncludeOPController
	 * 
	 * @return void
	 */
	protected function init()
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
		if (self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_IncludeOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}

   	/**
	 * Salva o objeto formulario no banco de dados
	 * 
	 * (non-PHPdoc)
	 * @see Basico_Abstract_RochedoPersistentOPController::salvarObjeto()
	 * 
	 * @param Basico_Model_Include $objeto
	 * @param Integer $versaoUpdate
	 * @param Integer $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function salvarObjeto($objeto, $versaoUpdate = null, $idPessoaPerfilCriador = null)
	{
		// verificando se o objeto passado eh da instancia esperada
		Basico_OPController_UtilOPController::verificaVariavelRepresentaInstancia($objeto, 'Basico_Model_Include', true);

	    try {
    		// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_OPController_PessoaAssocclPerfilOPController::retornaIdPessoaPerfilSistemaViaSQL();

	    	// verificando se trata-se de uma nova tupla ou atualizacao
	    	if ($objeto->id != NULL) {
	    		// carregando informacoes de log de atualizacao de registro
	    		$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_UPDATE_INCLUDE, true);
	    		$mensagemLog    = LOG_MSG_UPDATE_INCLUDE;
	    	} else {
	    		// carregando informacoes de log de novo registro
	    		$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_NOVO_INCLUDE, true);
	    		$mensagemLog    = LOG_MSG_NOVO_INCLUDE;
	    	}

			// salvando o objeto através do controlador Save
	    	Basico_OPController_PersistenceOPController::bdSave($objeto, $versaoUpdate, $idPessoaPerfilCriador, $idCategoriaLog, $mensagemLog);

	    	// atualizando o objeto
    		$this->_model = $objeto;

    	} catch (Exception $e) {

    		throw new Exception($e);
    	}
	}

	/**
	 * Apaga o objeto dados pessoas perfis do banco de dados
	 * 
	 * (non-PHPdoc)
	 * @see Basico_Abstract_RochedoPersistentOPController::apagarObjeto()
	 * 
	 * @param Basico_Model_Include $objeto
	 * @param Boolean $forceCascade
	 * @param Integer $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function apagarObjeto($objeto, $forceCascade = false, $idPessoaPerfilCriador = null)
	{
		// verificando se o objeto passado eh da instancia esperada
		Basico_OPController_UtilOPController::verificaVariavelRepresentaInstancia($objeto, 'Basico_Model_Include', true);

		try {
			// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_OPController_PessoaAssocclPerfilOPController::retornaIdPessoaPerfilSistemaViaSQL();

	    	// recuperando informacoes de log
	    	$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_DELETE_INCLUDE, true);
	    	$mensagemLog    = LOG_MSG_DELETE_INCLUDE;

	    	// apagando o objeto do bando de dados
	    	Basico_OPController_PersistenceOPController::bdDelete($objeto, $forceCascade, $idPessoaPerfilCriador, $idCategoriaLog, $mensagemLog);

		} catch (Exception $e) {
			throw new Exception($e);
		}
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
	public static function retornaArrayIncludesFormulario($nomeFormulario, $nomeOutput)
	{
		// verificando se foi passado o nome do form
		if ((!$nomeFormulario) or (!$nomeOutput)) {
			// retornando nulo
			return null;
		}

		// inicializando variaveis
		$isnull       = Basico_OPController_DBUtilOPController::retornaIsNullDB();
		$concatenador = Basico_OPController_DBUtilOPController::retornaConcatenadorDB(); 

		// montando query com as categorias e includes de um formulario/output
		$queryIncludesFormulario = "SELECT COUNT(i.id) AS quantidade,
									       c.nome AS nome_categoria, i.uri,
									       {$isnull}(fi.ordem, '0') {$concatenador} '-' {$concatenador} {$isnull}(faeai.ordem, '0') {$concatenador} '-' {$concatenador} {$isnull}(cai.ordem, '0') {$concatenador} '-' {$concatenador} {$isnull}(tai.ordem, '0') {$concatenador} '-' {$concatenador} {$isnull}(oai.ordem, '0') AS ordem
									
									FROM basico.formulario f
									LEFT JOIN basico.formulario ff ON (f.id = ff.id_formulario_pai)
									LEFT JOIN basico_formulario.assoccl_elemento fae ON (f.id = fae.id_formulario)
									LEFT JOIN basico_formulario.elemento e ON (fae.id_elemento = e.id)
									LEFT JOIN basico.componente co ON (e.id_componente = co.id)
									LEFT JOIN basico_formulario.assoccl_template fat ON (f.id = fat.id_formulario)
									LEFT JOIN basico.template tp ON (fat.id_template = tp.id)
									LEFT JOIN basico_template.assoccl_output tao ON (tp.id = tao.id_template)
									LEFT JOIN basico.output o ON (tao.id_output = o.id)
									LEFT JOIN basico_formulario.assoccl_include fi ON (f.id = fi.id_formulario)
									LEFT JOIN basico_form_assoccl_elemento.assoccl_include faeai ON (fae.id = faeai.id_assoccl_elemento)
									LEFT JOIN basico_componente.assoccl_include cai ON (co.id = cai.id_componente)
									LEFT JOIN basico_template.assoccl_include tai ON (tp.id = tai.id_template)
									LEFT JOIN basico_output.assoccl_include oai ON (o.id = oai.id_output)
									LEFT JOIN basico.include i ON (fi.id_include    = i.id OR
									                               faeai.id_include = i.id OR
									                               cai.id_include   = i.id OR
									                               tai.id_include   = i.id OR
									                               oai.id_include   = i.id)
									LEFT JOIN basico.categoria c ON (i.id_categoria = c.id)
									
									WHERE f.form_name = '{$nomeFormulario}'
									AND o.nome = '{$nomeOutput}'
									AND i.ativo = TRUE
									AND i.id IS NOT NULL
									
									GROUP BY c.nome, i.uri, fi.ordem, faeai.ordem, cai.ordem, tai.ordem, oai.ordem
									
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