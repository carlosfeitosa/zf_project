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
class Basico_OPController_RascunhoOPController extends Basico_Abstract_RochedoPersistentOPController
{
	/**
	 * 
	 * @var Basico_OPController_RascunhoOPController
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
	 * Inicializa o controlador Basico_OPController_RascunhoOPController 
	 * 
	 * @return void
	 */
	protected function init()
	{
		return;
	}

	/**
	 * Recupera a instancia do controlador Basico_OPController_RascunhoOPController
	 * 
	 * @return Basico_OPController_RascunhoOPController
	 */
	static public function getInstance()
	{
		// checando singleton
		if(self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_RascunhoOPController();
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
		Basico_OPController_UtilOPController::verificaVariavelRepresentaInstancia($objeto, 'Basico_Model_Rascunho', true);

	    try {
    		// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_OPController_PessoasPerfisOPController::retornaIdPessoaPerfilSistemaViaSQL();

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
		Basico_OPController_UtilOPController::verificaVariavelRepresentaInstancia($objeto, 'Basico_Model_Rascunho', true);

		try {
			// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_OPController_PessoasPerfisOPController::retornaIdPessoaPerfilSistemaViaSQL();

	    	// recuperando informacoes de log
	    	$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_DELETE_RASCUNHO, true);
	    	$mensagemLog    = LOG_MSG_DELETE_RASCUNHO;

	    	// apagando o objeto do bando de dados
	    	Basico_OPController_PersistenceOPController::bdDelete($objeto, $forceCascade, $idPessoaPerfilCriador, $idCategoriaLog, $mensagemLog);

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
	
	public function salvarRascunho($arrayPost, $request)
	{
		// recuperando o formName
		$nomeForm = $arrayPost["formName"];
		
		// recuperando o hash do formulario
    	foreach ($arrayPost as $key => $value) {
    		if (strpos($key, "Csrf") !== false)
    			$formHash = $value;
    	}
    	// iniciando array pool
    	$arrayPool = "";
    	
    	// verificando se o hash do form veio no post
    	if (isset($formHash)) {
    	
	    	if (isset($arrayPost['idRascunho']) and $arrayPost['idRascunho'] != "") {
	    		$idRascunho = $arrayPost['idRascunho'];
	    	}elseif(isset($arrayPool[$formHash]['idRascunho']) and ($arrayPool[$formHash]['idRascunho'] > 0)){
	    		$idRascunho = $arrayPool[$formHash]['idRascunho'];
	    	}
			
    	}
    	
		// recuperando o objeto pessoas perfis do perfil padrao da pessoa logada
    	$objPessoaPerfil = Basico_OPController_PessoasPerfisOPController::getInstance()->retornaObjetoPessoaPerfilPerfilPadraoUsuarioSessao();
    	 				
    	// setando idPessoaPerfilCriador
    	$idPessoaPerfilCriador = $objPessoaPerfil->id;
    	
    	// recuperando a categoria do rascunho
    	$idCategoriaRascunho = Basico_OPController_FormularioOPController::getInstance()->retornaIdCategoriaFormularioPorFormName($nomeForm);
    	
    	// verificando se existe rascunho 
    	if(isset($idRascunho)){ 
    		// recuperando o objeto rascunho 
    	   	$objRascunho = Basico_OPController_RascunhoOPController::getInstance()->retornaObjetoRascunhoPorId($idRascunho);
    	   		
    	   	// recuperando a ultima versão do rascunho 
    	   	$ultimaVersaoRasunho = Basico_OPController_RascunhoOPController::getInstance()->retornaVersaoObjetoRascunhoPorObjetoRascunho($objRascunho); 
    	   
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
    	 	$objRascunho->categoria = $idCategoriaRascunho;
    	 		    	 	
    	 	// executando update
    	 	$sucesso = $this->salvarObjeto($objRascunho, $versaoAtualRasunho, $idPessoaPerfilCriador);	
    	   
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
    	 	$objRascunho->pessoa = $objPessoaPerfil->idPessoa;
    	 	
    	 	// setando o id do perfil padrao da pessoa logada
    	 	$objRascunho->perfil = $objPessoaPerfil->idPerfil;
    	 	
    	 	// setando a categoria do rascunho
    	 	$objRascunho->categoria = $idCategoriaRascunho;
    		
    	    // executando insert
    	   	$sucesso = $this->salvarObjeto($objRascunho, null, $idPessoaPerfilCriador);
    	 	
    	   
    	}

    	// recuperando a ultima versão do rascunho 
    	$versaoAtualRascunho = Basico_OPController_RascunhoOPController::getInstance()->retornaVersaoObjetoRascunhoPorObjetoRascunho($objRascunho);
    	
    	// atualizando versao do rascunho na sessao
    	$arrayPool[$formHash]["versaoRascunho"] = $versaoAtualRascunho;
    	
    	return $sucesso;
    	
	}
	
}