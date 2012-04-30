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
	 * 
	 * @var Basico_Model_Rascunho
	 */
	private $_model;
	
	/**
	 * Carrega a variavel model com um novo objeto Basico_Model_Rascunho
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// instanciando o modelo
		$this->_model = $this->retornaNovoObjetoModeloPorNomeOPController($this->retornaNomeClassePorObjeto($this));
		
		// inicializando o controlador
		$this->init();
	}

	/**
	 * Inicializa o controlador Basico_OPController_FormularioRascunhoOPController 
	 * 
	 * @return void
	 */
	protected function init()
	{
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
	 * Salva o objeto rascunho no banco de dados
	 * 
	 * (non-PHPdoc)
	 * @see Basico_Abstract_RochedoPersistentOPController::salvarObjeto()
	 * 
	 * @param Basico_Model_Rascunho $objeto
	 * @param Integer $versaoUpdate
	 * @param Integer $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function salvarObjeto($objeto, $versaoUpdate = null, $idPessoaPerfilCriador = null)
	{
		// verificando se o objeto passado eh da instancia esperada
		Basico_OPController_UtilOPController::verificaVariavelRepresentaInstancia($objeto, 'Basico_Model_FormularioRascunho', true);

	    try {
    		// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_OPController_PessoaAssocclPerfilOPController::retornaIdPessoaPerfilSistemaViaSQL();

	    	// verificando se trata-se de uma nova tupla ou atualizacao
	    	if ($objeto->id != NULL) {
	    		// carregando informacoes de log de atualizacao de registro
	    		$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_UPDATE_RASCUNHO, true);
	    		$mensagemLog    = LOG_MSG_UPDATE_RASCUNHO;
	    	} else {
	    		// carregando informacoes de log de novo registro
	    		$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_NOVO_RASCUNHO, true);
	    		$mensagemLog    = LOG_MSG_NOVO_RASCUNHO;
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
	 * Apaga o objeto rascunho do banco de dados
	 * 
	 * (non-PHPdoc)
	 * @see Basico_Abstract_RochedoPersistentOPController::apagarObjeto()
	 * 
	 * @param Basico_Model_Rascunho $objeto
	 * @param Boolean $forceCascade
	 * @param Integer $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function apagarObjeto($objeto, $forceCascade = false, $idPessoaPerfilCriador = null)
	{
		// verificando se o objeto passado eh da instancia esperada
		Basico_OPController_UtilOPController::verificaVariavelRepresentaInstancia($objeto, 'Basico_Model_FormularioRascunho', true);

		try {
			// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_OPController_PessoaAssocclPerfilOPController::retornaIdPessoaPerfilSistemaViaSQL();

	    	// recuperando informacoes de log
	    	$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_DELETE_RASCUNHO, true);
	    	$mensagemLog    = LOG_MSG_DELETE_RASCUNHO;

	    	// apagando o objeto do bando de dados
	    	return Basico_OPController_PersistenceOPController::bdDelete($objeto, $forceCascade, $idPessoaPerfilCriador, $idCategoriaLog, $mensagemLog);

		} catch (Exception $e) {
			throw new Exception($e);
		}
	}
	
	/**
	 * Retorna o obj rascunho pelo id
	 * 
	 * @param Int $idRascunho
	 * @return Basico_Model_Rascunho|false
	 */
	public function retornaObjetoRascunhoPorId($idRascunho) 
	{
		if ($idRascunho > 0)
			// recuperando objeto formulario
			$objRascunho = $this->retornaObjetoPorId($this->_model, $idRascunho);
			
		if (is_object($objRascunho) and $objRascunho->id) {
			return $objRascunho;
		}else{
			return false;
		}
	}
	
	/**
	 * Retorna os objetos rascunho filhos do rascunho passado
	 * 
	 * @param Int $idRascunhoPai
	 * @return Array|false
	 */
	public function retornaObjetosRascunhosFilhos($idRascunhoPai)
	{
		// verificando id passado
		if ((Int) $idRascunhoPai > 0) {
			// recuperando objetos rascunhos filhos
			$objetosRascunhosFilhos = $this->retornaObjetosPorParametros("id_rascunho_pai = {$idRascunhoPai}");

			// verificando se existem rascunhos filhos
			if (count($objetosRascunhosFilhos) > 0)
				return $objetosRascunhosFilhos;
			
		}	
		
		return false;
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
				
		    	
		    	
				// recuperando o objeto pessoas perfis do perfil padrao da pessoa logada
		    	$objPessoaPerfil = Basico_OPController_PessoaAssocclPerfilOPController::getInstance()->retornaObjetoPessoaPerfilMaiorPerfilUsuarioSessaoPorRequest($request);
		    	 				
		    	// setando idPessoaPerfilCriador
		    	$idPessoaPerfilCriador = $objPessoaPerfil->id;
		    	
		    	// recuperando a categoria do rascunho
		    	$idCategoriaRascunho = Basico_OPController_FormularioOPController::getInstance()->retornaIdCategoriaFormularioPorFormName($nomeForm);
	
		    	// recuperando ultimo rascunho pai da fila da sessao
		    	$rascunhoPai = Basico_OPController_SessionOPController::getInstance()->retornaUltimoRascunhoPaiSessao();
		    			    	   	
		    	// verificando se existe rascunho 
		    	if(isset($idRascunho)){ 
		    		
		    		// recuperando o objeto rascunho 
		    	   	$objRascunho = Basico_OPController_FormularioRascunhoOPController::getInstance()->retornaObjetoRascunhoPorId($idRascunho);

		    	   	// recuperando a ultima versão do rascunho 
		    	   	$ultimaVersaoRasunho = Basico_OPController_FormularioRascunhoOPController::getInstance()->retornaVersaoObjetoRascunhoPorObjetoRascunho($objRascunho); 
		    	
		    	   	// decodificando JSON do post
		    	   	$postRascunho = Zend_Json_Decoder::decode($objRascunho->post);
		    	   
		    	   	// atualizando o array post do rascunho
		    	   	foreach ($arrayPost as $chavePost => $valorPost) {
						$postRascunho[$chavePost] = $valorPost;
					}
					
					// setando o nome do form no objeto rascunho
					$objRascunho->formName = $arrayPost["formName"];
		
					// setando a acao do form no objeto rascunho
					$objRascunho->formAction = $arrayPost["formAction"];
					
					// codificando e setando o array post do rascunho no objeto
		    	 	$objRascunho->post = Zend_Json_Encoder::encode($postRascunho);
		    	 	
		    	 	// setando o request no rascunho
		    	 	$objRascunho->request = $request;
		    	 	
		    	 	// setando a categoria do rascunho
		    	 	$objRascunho->idCategoria = $idCategoriaRascunho;
					
		    	 	// setando datahora da ultima atualizacao
		    	 	$objRascunho->datahoraUltimaAtualizacao = Basico_OPController_UtilOPController::retornaDateTimeAtual();
		    	 	
		    	 	// recuperando a ultima versão do rascunho 
		    		$versaoAtualRascunho = Basico_OPController_FormularioRascunhoOPController::getInstance()->retornaVersaoObjetoRascunhoPorObjetoRascunho($objRascunho);
		    		
		    	 	// executando update
		    	 	$this->salvarObjeto($objRascunho, $versaoAtualRascunho, $idPessoaPerfilCriador);
		
		    	 	$sucesso = true;
		    	   
		    	} else{
		    		// carregando novo objeto rascunho inserido
		    	  	$objRascunho = $this->_model;
					
					// setando o nome do form no objeto rascunho
					$objRascunho->formName = $arrayPost["formName"];
		
					// setando a acao do form no objeto rascunho
					$objRascunho->formAction = $arrayPost["formAction"];
					
					// codificando e setando o array post do rascunho no objeto
		    	 	$objRascunho->post = Zend_Json_Encoder::encode($arrayPost);
		    	 	
		    	 	// setando o request no rascunho
		    	 	$objRascunho->request = $request;
		    	 	
		    	 	// setando o id da pessoa logada
		    	 	$objRascunho->idAssocclPerfil = $objPessoaPerfil->id;
		    	 	
		    	 	// setando a categoria do rascunho
		    	 	$objRascunho->idCategoria = $idCategoriaRascunho;
		    	 	
		    	 	// setando o actionOrigem com a url responsavel pela exibicao do formulario
		    	 	$objRascunho->actionOrigem = Basico_OPController_SessionOPController::retornaUrlAtualPoolRequests();
		    	 	
		    	 	$objRascunho->ativo = true;
		    	 	
		    	 	// recuperando array de parametros da ultima url
		    	 	$arrayParametrosUltimoRequest = Basico_OPController_SessionOPController::retornaArrayParametrosUrlAtualPoolRequests();
		    	 	
		    	 	// recuperando id da acao_aplicacao responsavel por exibir o formulario
		    	 	$idAcaoAplicacaoOrigem = Basico_OPController_AcaoAplicacaoOPController::getInstance()->retornaObjetoAcaoAplicacaoPorNomeModuloNomeControladorNomeAcao($arrayParametrosUltimoRequest['modulo'], $arrayParametrosUltimoRequest['controlador'], $arrayParametrosUltimoRequest['acao'])->id;

		    	 	// recuperando o id da visao de origem do rascunho
		    	 	$idVisaoOrigem = Basico_OPController_AcaoAplicacaoAssocVisaoOPController::getInstance()->retornaObjetoAcaoAplicacaoAssocVisaoPorIdAcaoAplicacao($idAcaoAplicacaoOrigem)->id;
		    	 			    	 	
		    	 	// se a visao nao foi encontrado lança uma exceção
		    	 	if (!$idVisaoOrigem)
		    	 		throw new Exception("Id assoc visao origem não encontrado.");
		    	 		
		    	 	$objRascunho->idAssocVisaoOrigem = $idVisaoOrigem;
		    	 	
		    	 	// verificando se há rascunho pai na sessao 
		    	 	if($rascunhoPai)
			    	   // setando o rascunho pai
					   $objRascunho->idRascunhoPai = $rascunhoPai;
		    	 	
		    	 	// setando datahora da ultima atualizacao    	 	
		    	 	$objRascunho->datahoraUltimaAtualizacao = Basico_OPController_UtilOPController::retornaDateTimeAtual();

		    	    // executando insert
		    	   	$this->salvarObjeto($objRascunho, null, $idPessoaPerfilCriador);
					
		    	   	// verificando se forceSave foi setado
		    	   	if($forceSave !== "false"){
		    	   	   // registrando id do rascunho na sessao
		    	   	   Basico_OPController_SessionOPController::getInstance()->registraRascunhoPaiSessao($objRascunho->id);
		    		}
		    	   	// inserindo id do rascunho no pool de elementos ocultos
		    	   	Basico_OPController_SessionOPController::getInstance()->registraPostPoolElementosOcultos($formHash, array('idRascunho' => $objRascunho->id));

		    	    $sucesso = true;
		    	}
		
		    	// recuperando a ultima versão do rascunho 
		    	$versaoAtualRascunho = Basico_OPController_FormularioRascunhoOPController::getInstance()->retornaVersaoObjetoRascunhoPorObjetoRascunho($objRascunho);
		    	
		    	// inserindo a versao atual do rascunho no pool de elementos ocultos
		    	Basico_OPController_SessionOPController::getInstance()->registraPostPoolElementosOcultos($formHash, array('versaoObjetoRascunho' => $versaoAtualRascunho));
		    	
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
	
}
