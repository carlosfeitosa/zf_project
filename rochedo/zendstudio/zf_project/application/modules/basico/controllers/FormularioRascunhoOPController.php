<?php
/**
 * Controlador Rascunho
 * 
 * Controlador responsavel pelos rascunhos
 * 
 * @package Basico
 * 
 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
 * 
 * @since 05/09/2011
 */
class Basico_OPController_FormularioRascunhoOPController extends Basico_AbstractController_RochedoPersistentOPController
{
	/**
	 * 
	 * @var Basico_OPController_FormularioRascunhoOPController
	 */
	private static $_singleton;
	
	/**
	 * Nome da tabela basico_formulario.rascunho
	 * 
	 * @var String
	 */
	const nomeTabelaModelo  = 'basico_formulario.rascunho';
	
	/**
	 * Nome do campo id da tabela basico_formulario.rascunho
	 * 
	 * @var Array
	 */
	const nomeCampoIdModelo = 'id';
	
	/**
	 * 
	 * @var Basico_Model_Formulario_Rascunho
	 */
	protected $_model;
	
	/**
	 * 
	 * @var Basico_OPController_SessionOPController
	 */
	protected $_sessionOPController;
	/**
	 * 
	 * @var Basico_OPController_FormularioOPController
	 */
	protected $_formularioOPController;
	/**
	 * 
	 * @var Basico_OPController_PessoaAssocclPerfilOPController
	 */
	protected $_pessoaAssocclPerfilOPController;
	/**
	 * 
	 * @var Basico_OPController_AcaoAplicacaoOPController
	 */
	protected $_acaoAplicacaoOPController;
	/**
	 * 
	 * @var Basico_OPController_AcaoAplicacaoAssocVisaoOPController
	 */
	protected $_acaoAplicacaoAssocVisaoOPController;
	
	
	/**
	 * Carrega a variavel model com um novo objeto Basico_Model_Rascunho
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// chamando construtor da classe pai
		parent::__construct();
	}

	/**
	 * Inicializa o controlador Basico_OPController_FormularioRascunhoOPController 
	 * 
	 * @return void
	 */
	protected function init()
	{
		// chamando inicializacao da classe pai
		parent::init();
		
		return;
	}
	
	/**
	 * Inicializa os controladores utilizados pelo controlador
	 * 
	 * (non-PHPdoc)
	 * @see Basico_AbstractController_RochedoPersistentOPController::initControllers()
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 03/05/2012
	 */
	protected function initControllers()
	{
		// recuperando instancia do session opcontroller
		$this->_sessionOPController = Basico_OPController_SessionOPController::getInstance();
		// recuperando instancia do session opcontroller
		$this->_formularioOPController = Basico_OPController_FormularioOPController::getInstance();
		// recuperando instancia do pessoa assoccl perfil opcontroller
		$this->_pessoaAssocclPerfilOPController = Basico_OPController_PessoaAssocclPerfilOPController::getInstance();
		// recuperando instancia do pessoa assoccl perfil opcontroller
		$this->_acaoAplicacaoOPController = Basico_OPController_AcaoAplicacaoOPController::getInstance();
		// recuperando instancia do pessoa assoccl perfil opcontroller
		$this->_acaoAplicacaoAssocVisaoOPController = Basico_OPController_AcaoAplicacaoAssocVisaoOPController::getInstance();
		
		return;
	}

	/**
	 * Recupera a instancia do controlador Basico_OPController_FormularioRascunhoOPController
	 * 
	 * @return Basico_OPController_FormularioRascunhoOPController
	 */
	static public function getInstance()
	{
		// checando singleton
		if(self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_FormularioRascunhoOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}
	
	/**
	 * Retorna o obj rascunho pelo id
	 * 
	 * @param Int $idRascunho
	 * @return Basico_Model_Rascunho|false
	 */
	public function retornaDadosRascunhoPorId($idRascunho) 
	{
		return parent::retornaArrayDadosObjetoPorId($idRascunho);
	}
	
	/**
	 * Retorna os objetos rascunho filhos do rascunho passado
	 * 
	 * @param Int $idRascunhoPai
	 * @return Array|false
	 */
	public function retornaObjetosRascunhosFilhos($idRascunhoPai)
	{
		return parent::retornaArrayDadosObjetosPorParametros("id_rascunho_pai = {$idRascunhoPai}");
	}
	
	/**
	 * Retorna a versao do objeto rascunho, a partir do id de um rascunho
	 * 
	 * @param Basico_Model_Rascunho $objRascunho
	 * @param Boolean $forceVersioning
	 * 
	 * @return Integer
	 */
	public function retornaVersaoObjetoRascunhoPorObjetoRascunho($objRascunho, $forceVersioning = false)
	{
		// retornando a versao do objeto
		return Basico_OPController_PersistenceOPController::bdRetornaUltimaVersaoCVC($objRascunho, $forceVersioning);
	}
	
	/**
	 * Salva o rascunho
	 * 
	 * @param Array $arrayPost
	 * @param Object $request
	 * @param boolean $forceSave
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * 
	 * @since 04/05/2012
	 */
	public function salvarRascunho($request, $forceSave = false)
	{
		try {
			
			$sucesso = false;
			
			// recuperando o array de post
			$arrayPost = $request->getPost();
			
			// recuperando o formName
			$nomeForm = $arrayPost["formName"];
			
			// recuperando o nome do modulo
			$nomeModuloForm = ucfirst(strtolower($request->getModuleName()));
			
			// recuperando o nome do form sem o modulo
			$nomeForm = str_replace($nomeModuloForm, "", $nomeForm);

			// recuperando o hash do formulario
	    	foreach ($arrayPost as $key => $value) {
	    		
	    		if (is_array($value)) {
	    			
	    			foreach ($value as $postKey => $postValue) {
		    			if (strpos($postKey, "Csrf") !== false) {
		    				$formHash = $postValue;
		    				break 2;	    		
						}	
	    			}
	    			
	    		}else{
					if (strpos($key, "Csrf") !== false) {
	    				$formHash = $value;
	    				break;	    		
					}	
	    		}
	    		
	    	}
	    	
	    	// iniciando array pool
	    	$arrayPool = Basico_OPController_SessionOPController::getInstance()->recuperaTodosElementosPoolElementosOcultos();
	    	
	    	// verificando se o hash do form veio no post
	    	if (isset($formHash) && ($arrayPost['formAction'] != "" && $arrayPost['formName'] != "")) {
	    	
		    	if (isset($arrayPost['idRascunho']) and $arrayPost['idRascunho'] != "") {
		    		$idRascunho = $arrayPost['idRascunho'];
		    	}elseif(isset($arrayPool[$formHash]['idRascunho']) and ($arrayPool[$formHash]['idRascunho'] > 0)){
		    		$idRascunho = $arrayPool[$formHash]['idRascunho'];
		    	}
				
		    	// recuperando a categoria do rascunho
		    	$idCategoriaRascunho = $this->_formularioOPController->retornaIdCategoriaFormularioPorFormName($nomeForm);
			    	   	
		    	// recuperando o id do maior pessoa perfil do usuario logado
		    	$idAssocclPerfilCriador = $this->_pessoaAssocclPerfilOPController->retornaIdPessoaPerfilMaiorPerfilUsuarioSessaoPorRequest($request);
		    	
		    	// verificando se existe rascunho 
		    	if(isset($idRascunho)){
		    		
					$sucesso = self::atualizaRascunho($idRascunho, $idCategoriaRascunho, $idAssocclPerfilCriador, $arrayPost, $request);
		
		    	} else{
		    		
		    		// recuperando ultimo rascunho pai da fila da sessao
		    		$idRascunhoPai = $this->_sessionOPController->retornaUltimoRascunhoPaiSessao();

		    		// recuperando array de parametros da ultima url
		    	 	$arrayParametrosUltimoRequest = Basico_OPController_SessionOPController::retornaArrayParametrosUrlAtualPoolRequests();
		    	 	
		    	 	// recuperando id da acao_aplicacao responsavel por exibir o formulario
		    	 	$idAcaoAplicacaoOrigem = $this->_acaoAplicacaoOPController->retornaObjetoAcaoAplicacaoPorNomeModuloNomeControladorNomeAcao($arrayParametrosUltimoRequest['modulo'], $arrayParametrosUltimoRequest['controlador'], $arrayParametrosUltimoRequest['acao'])->id;

		    	 	// recuperando o id da visao de origem do rascunho
		    	 	$idVisaoOrigem = $this->_acaoAplicacaoAssocVisaoOPController->retornaObjetoAcaoAplicacaoAssocVisaoPorIdAcaoAplicacao($idAcaoAplicacaoOrigem)->id;
		    	 			    	 	
		    	 	// se a visao nao foi encontrado lança uma exceção
		    	 	if (!$idVisaoOrigem)
		    	 		throw new Exception("Id assoc visao origem não encontrado.");
		    		
		    		// inserindo novo rascunho
		    		self::insereRascunhoAtivo($arrayPost["formName"], $arrayPost["formAction"], $arrayPost, $request, $objPessoaPerfil->id, $idCategoriaRascunho, Basico_OPController_SessionOPController::retornaUrlAtualPoolRequests(), $idAcaoAplicacaoOrigem, $idVisaoOrigem, $idAssocclPerfilCriador, $idRascunhoPai);
		    		
		    	   	// verificando se forceSave foi setado
		    	   	if($forceSave !== "false"){
		    	   	   // registrando id do rascunho na sessao
		    	   	   $this->_sessionOPController->registraRascunhoPaiSessao($dadosRascunho->id);
		    		}

		    	    $sucesso = true;
		    	}
		
		    	return $sucesso;
	    	}
	    	
	    	return false;
	    	
		}catch (Exception $e) {
			throw new Exception(MSG_ERRO_SALVAR_RASCUNHO . $e->getMessage());
		}
    	
	}
	
	/**
	 * Funçao para exclusao de rascunho
	 * 
	 */
	public function excluirRascunho($request)
	{
		// recuperando o array do post
		$arrayPost = $request->getPost();
		
		// verificando o id passado
		if (count($arrayPost) > 0) {

			// recuperando o hash do formulario
	    	foreach ($arrayPost as $key => $value) {
	    		
	    		// verificando se o valor do primeiro elemento e um array
	    		if (is_array($value)) {
	    			
	    			// recuperando o nome do subform
	    			$nomeSubForm = $key;
	    			
	    			// percorrendo o array do post para recuperar o hash do form
	    			foreach ($value as $postKey => $postValue) {
		    			if (strpos($postKey, "Csrf") !== false) {
		    				$formHash = $postValue;
		    				break 2;	    		
						}	
	    			}
	    				
	    		}else{
					if (strpos($key, "Csrf") !== false) {
	    				$formHash = $value;
	    				break;	    		
					}	
	    		}
	    		
	    	}
	    	
	    	// iniciando array pool
	    	$arrayPool = Basico_OPController_SessionOPController::getInstance()->recuperaTodosElementosPoolElementosOcultos();
	    	
	    	// recuperando o id do rascunho
	    	if (isset($arrayPool[$formHash]['idRascunho'])) {
	    		$idRascunho = $arrayPool[$formHash]['idRascunho'];
	    	}elseif (isset($arrayPost['idRascunho'])){
	    		$idRascunho = $arrayPost['idRascunho'];
	    	}elseif(isset($nomeSubForm) && isset($arrayPost[$nomeSubForm]['idRascunho'])) {
	    		$idRascunho = $arrayPost[$nomeSubForm]['idRascunho'];
	    	}

	    	// verificando se o id do rascunho esta setado no arrayPool na sessao
	    	if (isset($idRascunho)) {
	
				// recuperando objeto do modelo rascunho
				$objModeloRascunho = $this->retornaNovoObjetoModeloPorNomeOPController(get_class($this));
				
				// recuperando objeto rascunho
				$objetoRascunho = $this->retornaObjetoPorId($objModeloRascunho, $idRascunho);
	
				// recuperando o objeto pessoas perfis do perfil padrao da pessoa logada
			    $objPessoaPerfil = Basico_OPController_PessoaAssocclPerfilOPController::getInstance()->retornaObjetoPessoaPerfilMaiorPerfilUsuarioSessaoPorRequest($request);
				
			    // excluindo rascunho em cascata
				if ($this->apagarObjeto($objetoRascunho, true, $objPessoaPerfil->id)) {
					
					// removendo rascunho da lista de rascunhos pais da sessao
					Basico_OPController_SessionOPController::getInstance()->removeRascunhoPaiSessao($idRascunho);
					// removendo id do rascunho no pool de elementos ocultos
			    	Basico_OPController_SessionOPController::getInstance()->registraPostPoolElementosOcultos($formHash, array('idRascunho' => null));
					
					return true;
				}
	    	}
		}
		
		return false;
	}
	
	/**
	 * Insere um novo rascunho ativo
	 * 
	 * @param String $formName
	 * @param String $formAction
	 * @param Array $arrayPost
	 * @param String $request
	 * @param Int $idAssocclPerfil
	 * @param Int $idCategoria
	 * @param String $actionOrigem
	 * @param Int $idAcaoAplicacaoOrigem
	 * @param Int $idAssocVisaoOrigem
	 * @param Int $idAssocclPerfilCriador
	 * @param Int $idRascunhoPai
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * 
	 * @since 08/05/2012
	 */
	private function insereRascunhoAtivo($formName, $formAction, $arrayPost, $request, $idAssocclPerfil, $idCategoria, $actionOrigem, $idAcaoAplicacaoOrigem, $idAssocVisaoOrigem, $idAssocclPerfilCriador, $idRascunhoPai = null)
	{
		// recuperando um novo modelo rascunho
		$novoObjetoRascunho = $this->retornaNovoObjetoModelo();
		
		// setando valores no objeto rascunho
		$novoObjetoRascunho->formName   			   = $formName;
		$novoObjetoRascunho->formAction 			   = $formAction;
		$novoObjetoRascunho->post       			   = Zend_Json_Encoder::encode($arrayPost);
		$novoObjetoRascunho->request    			   = $request;
		$novoObjetoRascunho->idAssocclPerfil 		   = $idAssocclPerfil;
		$novoObjetoRascunho->idCategoria     		   = $idCategoria;
		$novoObjetoRascunho->actionOrigem    		   = $actionOrigem;
		$novoObjetoRascunho->ativo           		   = true;
		$novoObjetoRascunho->idAssocVisaoOrigem 	   = $idVisaoOrigem;
		$novoObjetoRascunho->datahoraUltimaAtualizacao = Basico_OPController_UtilOPController::retornaDateTimeAtual();

		// verificando se há rascunho pai na sessao 
    	if(null !== $idRascunhoPai)
	    	// setando o rascunho pai
			$novoObjetoRascunho->idRascunhoPai = $rascunhoPai;
			
		// executando insert
    	parent::salvarObjeto($novoObjetoRascunho, Basico_OPController_CategoriaOPController::retornaIdCategoriaAtivaPorNomeCategoriaIdTipoCategoriaIdCategoriaPaiViaSQL(LOG_NOVO_RASCUNHO), LOG_MSG_NOVO_RASCUNHO, null, $idAssocclPerfilCriador);

    	// inserindo id do rascunho no pool de elementos ocultos
		$this->_sessionOPController->registraPostPoolElementosOcultos($formHash, array('idRascunho' => $dadosRascunho->id));
    	
    	// recuperando a ultima versão do rascunho 
	    $versaoAtualRascunho = Basico_OPController_FormularioRascunhoOPController::getInstance()->retornaVersaoObjetoRascunhoPorObjetoRascunho($novoObjetoRascunho);
	    	
    	// inserindo a versao atual do rascunho no pool de elementos ocultos
    	$this->_sessionOPController->registraPostPoolElementosOcultos($formHash, array('versaoObjetoRascunho' => $versaoAtualRascunho));
    	
    	// liberando memoria
    	unset($novoObjetoRascunho);
	}
	
	/**
	 * Atualiza um objeto rascunho
	 * 
	 * @param int $idRascunho  - id do rascunho a ser atualizado
	 * @param Int $idCategoria - categoria do rascunho
	 * @param Int $idAssocclPerfilUpdate - id do assoccl_perfil do usuario responsavel pelo update
	 * @param Array $arrayPost - array do post
	 * @param String $request  - request feito pra salvar o rascunho
	 * 
	 * @return Boolean
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * 
	 * @since 09/05/2012
	 */
	private function atualizaRascunho($idRascunho, $idCategoria, $idAssocclPerfilUpdate, $arrayPost, $request)
	{
		try {
			// recuperando o objeto rascunho 
	    	$objetoRascunho = $this->retornaObjetosPorParametros("id = {$idRascunho}");
		    	
	    	// decodificando JSON do atributo post do rascunho
	    	$postRascunho = Zend_Json_Decoder::decode($objetoRascunho->post);
	    	   
	    	// atualizando o array post do rascunho
	    	foreach ($arrayPost as $chavePost => $valorPost) {
	    		// setando valor
				$postRascunho[$chavePost] = $valorPost;
				
				// liberando a memoria
				unset($chavePost);
				unset($valorPost);
			}
			
			// codificando e setando o array post do rascunho no objeto
	    	$objetoRascunho->post = Zend_Json_Encoder::encode($postRascunho);
	    	 	
	    	// setando o request no rascunho
	    	$objetoRascunho->request = $request;
	    	 	
	    	// setando a categoria do rascunho
	    	$objetoRascunho->idCategoria = $idCategoria;
			 	
	    	// recuperando a ultima versão do rascunho 
	    	$versaoAtualRascunho = Basico_OPController_FormularioRascunhoOPController::getInstance()->retornaVersaoObjetoRascunhoPorObjetoRascunho($objetoRascunho);
	    	
	    	// executando update
	    	parent::salvarObjeto($objetoRascunho, Basico_OPController_CategoriaOPController::retornaIdCategoriaAtivaPorNomeCategoriaIdTipoCategoriaIdCategoriaPaiViaSQL(LOG_UPDATE_RASCUNHO), LOG_MSG_UPDATE_RASCUNHO, $versaoAtualRascunho, $idAssocclPerfilCriador);
	    	
	    	// recuperando a ultima versão do rascunho 
		    $versaoAtualRascunho = Basico_OPController_FormularioRascunhoOPController::getInstance()->retornaVersaoObjetoRascunhoPorObjetoRascunho($objetoRascunho);
		    	
	    	// inserindo a versao atual do rascunho no pool de elementos ocultos
	    	$this->_sessionOPController->registraPostPoolElementosOcultos($formHash, array('versaoObjetoRascunho' => $versaoAtualRascunho));
	    	
	    	// limpando memoria
	    	unset($objetoRascunho);
	    	unset($versaoAtualRascunho);
	    	
	    	return true;
	    	
		}catch (Exception $e) {
			return false;
		}
	}
}
