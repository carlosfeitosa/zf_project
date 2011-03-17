<?php
/**
 * Controlador CVC
 * 
 */

class Basico_OPController_CVCOPController
{
	/**
	 * @var Basico_OPController_CVCOPController
	 */
	private static $_singleton;

	/**
	 * @var Basico_Model_CVC
	 */
	private $_cvc;

	/**
	 * Construtor do controller
	 * 
	 * @return void
	 */
	private function __construct()
	{
		// instanciando o modelo
		$this->_cvc = $this->retornaNovoObjetoCVC();

		// inicializando o controlador
		$this->init();
	}

	/**
	 * Inicializa o controlador Basico_OPController_CVCOPController
	 * 
	 * @return void;
	 */
	private function init()
	{
		return;
	}

	/**
	 * Inicializa o controlador Basico_OPController_CVCOPController
	 * 
	 * @return Basico_OPController_CVCOPController
	 */
	public static function getInstance()
	{
		// verificando singleton
		if (self::$_singleton == NULL) {
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_CVCOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}

	/**
	 * Retorna um objeto CVC vazio
	 * 
	 * @return Basico_Model_CVC
	 */
	private function retornaNovoObjetoCVC()
	{
		// retornando um modelo vazio
		return new Basico_Model_CVC();
	}

    /**
     * Fecha a versao de uma tupla
     * 
     * @param Basico_Model_CVC $objCVC
     * 
     * @return void
     */
    private function fechaValidadeVersao($objCVC)
    {
    	// setando a o termino da validade
    	$objCVC->validadeTermino = Basico_OPController_UtilOPController::retornaDateTimeAtual();
    	
    	// salvando o objeto
    	$objCVC->getMapper()->save($objCVC);
    }
    
    /**
     * Retorna o objeto CVC da ultima versao
     * 
     * @param Integer $idCategoriaChaveEstrangeira
     * @param Integer $idGenerico
     * 
     * @return null|Basico_Model_CVC
     */
    private function retornaObjUltimaVersao($idCategoriaChaveEstrangeira, $idGenerico)
    {
    	// recuperando a tupla
    	$arrayObjsCVC = $this->_cvc->fetchList("id_categoria_chave_estrangeira = {$idCategoriaChaveEstrangeira} and id_generico = {$idGenerico} and validade_termino is null", null, 1, 0);
    	
    	// verificando se a tupla existe
    	if (isset($arrayObjsCVC[0]))
    		// retornando objeto CVC
    		return $arrayObjsCVC[0];
    	else
    		return null; 
    }
    
    /**
     * Compara o objeto com o objeto da ultima versao
     * Retorna true se o objeto for igual a ultima versao contida no CVC.
     *         false se for diferente.
     *         
     * @param Object $objeto
     * 
     * @return Boolean
     */
    private function comparaObjetoObjetoUltimaVersao($objeto)
    {
    	// codificando objeto para comparacao
    	$objetoCodificado = Basico_OPController_UtilOPController::codificar($objeto);
    	// recuperando id da relacao de categoria chave estrangeira
    	$categoriaChaveEstrangeira = Basico_OPController_CategoriaChaveEstrangeiraOPController::getInstance()->retornaObjetoCategoriaChaveEstrangeiraCVC($objeto);
    	// recuperando id generico do objeto
    	$idGenerico = Basico_OPController_PersistenceOPController::bdRetornaValorIdGenericoObjeto($objeto);
    	
    	// recuperando objeto CVC contendo a ultima versao do objeto
    	$objUltimaVersao = self::retornaObjUltimaVersao($categoriaChaveEstrangeira->id, $idGenerico);

    	// retornando resultado da comparacao entre objetos
    	return (strcmp($objetoCodificado, $objUltimaVersao->objeto) === 0);
    } 

  	/**
     * Retorna a versao de uma tupla
     * 
     * @param Object $objeto
     * @param Boolean $forceVersioning
     * 
     * @return null|Integer
     */
    public function retornaUltimaVersao($objeto, $forceVersioning = false)
    {
    	// instanciando controladores
    	$categoriaChaveEstrangeiraOPController = Basico_OPController_CategoriaChaveEstrangeiraOPController::getInstance();

    	// recuperando o valor do id generico vindo do objeto
		$idGenerico = Basico_OPController_PersistenceOPController::bdRetornaValorIdGenericoObjeto($objeto);

		// verificando se o valor de id generico existe
		if (!$idGenerico)
			return null;

		// recuperando a relacao categoria chave estrangeira
		$objCategoriaChaveEstrangeira = $categoriaChaveEstrangeiraOPController->retornaObjetoCategoriaChaveEstrangeiraCVC($objeto, true);

		// verificando se existe a relacao com categoria chave estrangeira
		if (isset($objCategoriaChaveEstrangeira)) {
			// recuperando objeto CVC
			$objCVC = $this->retornaObjUltimaVersao($objCategoriaChaveEstrangeira->id, $idGenerico);

			// verificando a tupla existe
			if (isset($objCVC)) {
				// retorna versao da tupla
				return $objCVC->versao;
			} else if ($forceVersioning) {
				// retorna a versao da tupla
				return $this->versionar($objeto);
			} else {
				return null;
			}
		} else {
			return null;
		}
    }
    
    /**
     * Versiona um objeto e retorna o numero da versão
     * 
     * @param Object $objeto
     * 
     * @return Integer
     */
    public function versionar($objeto)
    {
    	// instanciando controladores
    	$categoriaChaveEstrangeiraOPController = Basico_OPController_CategoriaChaveEstrangeiraOPController::getInstance();
    	// instanciando o modelo de CVC
    	$modelCVC = $this->retornaNovoObjetoCVC();

    	// recuperando relacao categoria chave estrangeira
    	$objCategoriaChaveEstrangeira = $categoriaChaveEstrangeiraOPController->retornaObjetoCategoriaChaveEstrangeiraCVC($objeto, true);

    	// preenchendo informacoes sobre o versionamento
    	$modelCVC->categoriaChaveEstrangeira = $objCategoriaChaveEstrangeira->id;
    	$modelCVC->idGenerico = Basico_OPController_PersistenceOPController::bdRetornaValorIdGenericoObjeto($objeto);
    	$modelCVC->objeto = $objeto;

    	// recuperando versao
    	$versao = $this->retornaUltimaVersao($objeto);

    	// verificar se existe versao
    	if ($versao > 0) {
    		if (true != $this->comparaObjetoObjetoUltimaVersao($objeto)) {
	    		// incrementando a versao
	    		$versao++;
	    		// retornando objeto CVC da ultima versao
	    		$objCVC = self::retornaObjUltimaVersao($modelCVC->categoriaChaveEstrangeira, $modelCVC->idGenerico);
	    		// fechando a ultima versao
	    		self::fechaValidadeVersao($objCVC);
    		} else 
				return $versao;
    	} else {
    		// tupla ainda nao versionada
    		$versao = 1;
    	}

    	// setando a versao no modelo
    	$modelCVC->versao = $versao;

		// instanciando controlador de rowinfo
		$rowInfoOPController = Basico_OPController_RowinfoOPController::getInstance();

    	// preparando XML rowinfo
		$rowInfoOPController->prepareXml($modelCVC, true);
		$modelCVC->rowinfo = $rowInfoOPController->getXml();

    	// salvando informacoes do versionamento
    	$modelCVC->getMapper()->save($modelCVC);

    	return $modelCVC->versao;
    }

    /**
     * Atualiza a versão de um objeto ja versionado e retorna o numero da versão
     * 
     * @param Object $objeto
     * 
     * @return Integer
     */
    public function atualizaVersao($objeto)
    {
    	// instanciando controladores
		$categoriaChaveEstrangeiraOPController = Basico_OPController_CategoriaChaveEstrangeiraOPController::getInstance();

    	// recuperando id da relacao de categoria chave estrangeira
    	$categoriaChaveEstrangeira = $categoriaChaveEstrangeiraOPController->retornaCategoriaChaveEstrangeira($objeto);
    	// recuperando id generico do objeto
    	$idGenerico = Basico_OPController_UtilOPController::retornaIdGenericoObjeto($objeto);
    	// recuperando objeto CVC contendo a ultima versao do objeto
    	$objUltimaVersao = self::retornaObjUltimaVersao($categoriaChaveEstrangeira->id, $idGenerico);

    	// atualizando a versao
    	$objUltimaVersao->versao++;
    	$objUltimaVersao->ultimaAtualizacao = Basico_OPController_UtilOPController::retornaDateTimeAtual();
    	$objUltimaVersao->objeto = $objeto;

    	// salvando o objeto
    	$objUltimaVersao->getMapper()->save($objUltimaVersao);

    	// retornando a versao
    	return $objUltimaVersao->versao;
    }

}