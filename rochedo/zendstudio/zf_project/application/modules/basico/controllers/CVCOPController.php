<?php
/**
 * Controlador Categoria Chave Estrangeira
 * 
 * Controlador responsavel pelas categorias das chaves estrangeiras
 * 
 * @package Basico
 * 
 * @author Carlos Feitosa (carlos.feitosa@rochedoproject.om)
 * 
 * @since 17/03/2011
 */
class Basico_OPController_CVCOPController
{
	/**
	 * @var Basico_OPController_CVCOPController
	 */
	protected static $_singleton;
	/**
	 * @var Basico_OPController_CategoriaAssocChaveEstrangeiraOPController
	 */
	protected $_categoriaAssocChaveEstrangeiraOPController;
	/**
	 * @var Basico_OPController_RowinfoOPController
	 */
	protected $_rowinfoOPController;
	/**
	 * @var Basico_Model_CVC
	 */
	protected $_cvc;

	/**
	 * @var Array
	 */
	protected $_arrayObjetosManipulados;

	/**
	 * Construtor do controller
	 * 
	 * @return void
	 */
	private function __construct()
	{
		// instanciando o controlador Basico_OPController_CategoriaAssocChaveEstrangeiraOPController
		$this->_categoriaAssocChaveEstrangeiraOPController = Basico_OPController_CategoriaAssocChaveEstrangeiraOPController::getInstance();
		// instanciando o controlador Basico_OPController_RowinfoOPController
		$this->_rowinfoOPController = Basico_OPController_RowinfoOPController::getInstance();

		// instanciando o modelo
		$this->_cvc = $this->retornaNovoObjetoCVC();

		// inicializando o atributo arrayObjetosManipulados
		$this->limpaArrayIdsObjetosManipulados();

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
		if (self::$_singleton == null) {
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
		return new Basico_Model_CvcCvc();
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
     * @return Basico_Model_CvcCvc|null
     */
    private function retornaObjUltimaVersao($idCategoriaChaveEstrangeira, $idGenerico)
    {
    	// recuperando a tupla
    	$arrayObjsCVC = $this->_cvc->getMapper()->fetchList("id_assoc_chave_estrangeira = {$idCategoriaChaveEstrangeira} and id_generico = {$idGenerico} and validade_termino is null", null, 1, 0);
    	
    	// verificando se a tupla existe
    	if (isset($arrayObjsCVC[0])) {
    		// recuperando o objeto CVC
    		$objCVC = $arrayObjsCVC[0];

    		// limpando variáveis
    		unset($arrayObjsCVC);

    		// retornando objeto CVC
    		return $objCVC;
    	} else {
    		return null;
    	} 
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
    	$categoriaChaveEstrangeira = $this->_categoriaAssocChaveEstrangeiraOPController->retornaObjetoCategoriaChaveEstrangeiraCVC($objeto);
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
    	// recuperando o valor do id generico vindo do objeto
		$idGenerico = Basico_OPController_PersistenceOPController::bdRetornaValorIdGenericoObjeto($objeto);

		// verificando se o valor de id generico existe
		if (!$idGenerico)
			return null;

		// recuperando a relacao categoria chave estrangeira
		$objCategoriaChaveEstrangeira = $this->_categoriaAssocChaveEstrangeiraOPController->retornaObjetoCategoriaChaveEstrangeiraCVC($objeto, true);

		// verificando se existe a relacao com categoria chave estrangeira
		if (isset($objCategoriaChaveEstrangeira)) {
			// recuperando objeto CVC
			$objCVC = $this->retornaObjUltimaVersao($objCategoriaChaveEstrangeira->id, $idGenerico);

			// limpando variáveis
			unset($objCategoriaChaveEstrangeira);

			// verificando a tupla existe
			if (isset($objCVC)) {
				// recuperando a versao
				$versao = $objCVC->versao;

				// limpando variáveis
				unset($objCVC);

				// retorna versao da tupla
				return $versao;
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
     * Retorna o checksum de um objeto, atraves de sua ultima versao
     * 
     * @param Object $objeto
     * 
     * @return String|null
     */
    public function retornaChecksumObjeto($objeto)
    {
    	// recuperando o valor do id generico vindo do objeto
		$idGenerico = Basico_OPController_PersistenceOPController::bdRetornaValorIdGenericoObjeto($objeto);

		// verificando se o valor de id generico existe
		if (!$idGenerico)
			return null;

		// recuperando a relacao categoria chave estrangeira
		$objCategoriaChaveEstrangeira = $this->_categoriaAssocChaveEstrangeiraOPController->retornaObjetoCategoriaChaveEstrangeiraCVC($objeto);

		// verificando se existe a relacao com categoria chave estrangeira
		if (isset($objCategoriaChaveEstrangeira)) {
			// recuperando objeto CVC
			$objCVC = $this->retornaObjUltimaVersao($objCategoriaChaveEstrangeira->id, $idGenerico);

			// verificando a tupla existe
			if (isset($objCVC)) {
				// retorna o checksum da tupla
				return $objCVC->checksum;
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
    	// instanciando o modelo de CVC
    	$modelCVC = $this->retornaNovoObjetoCVC();

    	// recuperando relacao categoria chave estrangeira
    	$objCategoriaChaveEstrangeira = $this->_categoriaAssocChaveEstrangeiraOPController->retornaObjetoCategoriaChaveEstrangeiraCVC($objeto, true);

    	// recuperando o id do objeto categoria chave estrangeira
    	$idObjetoCategoriaChaveEstrangeira = $objCategoriaChaveEstrangeira->id;

    	// limpando variáveis
    	unset($objCategoriaChaveEstrangeira);

    	// preenchendo informacoes sobre o versionamento
    	$modelCVC->idAssocChaveEstrangeira   = $idObjetoCategoriaChaveEstrangeira;
    	$modelCVC->idGenerico 			     = Basico_OPController_PersistenceOPController::bdRetornaValorIdGenericoObjeto($objeto);
    	$modelCVC->objeto 				     = $objeto;
    	$modelCVC->checksum 			     = Basico_OPController_UtilOPController::retornaChecksumObjeto($objeto);
    	$modelCVC->validadeInicio		     = Basico_OPController_UtilOPController::retornaDateTimeAtual();
		$modelCVC->datahoraCriacao		     = Basico_OPController_UtilOPController::retornaDateTimeAtual();
		$modelCVC->datahoraUltimaAtualizacao = Basico_OPController_UtilOPController::retornaDateTimeAtual();
		
    	// recuperando versao
    	$versao = $this->retornaUltimaVersao($objeto);

    	// verificar se existe versao
    	if ($versao > 0) {
    		if (true != $this->comparaObjetoObjetoUltimaVersao($objeto)) {
	    		// incrementando a versao
	    		$versao++;
	    		// retornando objeto CVC da ultima versao
	    		$objCVC = self::retornaObjUltimaVersao($modelCVC->idAssocChaveEstrangeira, $modelCVC->idGenerico);
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

    	// preparando XML rowinfo
		$this->_rowinfoOPController->prepareXml($modelCVC, true);
		$modelCVC->rowinfo = $this->_rowinfoOPController->getXml();

    	// salvando informacoes do versionamento
    	$modelCVC->getMapper()->save($modelCVC);

    	// adicionando o id do objeto manipulado no array de ids de objetos manipulados
    	$this->adicionaIdObjetoManipuladoArrayObjetosManipulados($modelCVC->id);

    	// limpando variáveis
    	unset($modelCVC);

    	return $versao;
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
    	// recuperando id da relacao de categoria chave estrangeira
    	$categoriaChaveEstrangeira = $this->_categoriaAssocChaveEstrangeiraOPController->retornaObjetoCategoriaChaveEstrangeiraCVC($objeto, true);
    	// recuperando id generico do objeto
    	$idGenerico = Basico_OPController_PersistenceOPController::bdRetornaValorIdGenericoObjeto($objeto);
    	// recuperando objeto CVC contendo a ultima versao do objeto
    	$objUltimaVersao = self::retornaObjUltimaVersao($categoriaChaveEstrangeira->id, $idGenerico);

    	// atualizando a versao
    	$objUltimaVersao->versao++;
    	$objUltimaVersao->datahoraUltimaAtualizacao = Basico_OPController_UtilOPController::retornaDateTimeAtual();
    	$objUltimaVersao->objeto = $objeto;
    	$objUltimaVersao->checksum = Basico_OPController_UtilOPController::retornaChecksumObjeto($objeto);

    	// salvando o objeto
    	$objUltimaVersao->getMapper()->save($objUltimaVersao);

    	// retornando a versao
    	return $objUltimaVersao->versao;
    }

    /**
     * Adiciona o id de um objeto manipulado no array de ids de objetos manipulados
     * 
     * @param Integer $idObjeto
     * 
     * @return void
     */
    private function adicionaIdObjetoManipuladoArrayObjetosManipulados($idObjeto)
    {
    	// verificando se o atributo _arrayObjetosManipulados foi inicializado
    	if (is_array($this->_arrayObjetosManipulados)) {
	    	// adicionando o id objeto no atributo-array
	    	$this->_arrayObjetosManipulados[] = $idObjeto;
    	}
    }

    /**
     * Limpa o array de ids de objetos manipulados
     * 
     * @return void
     */
    public function limpaArrayIdsObjetosManipulados()
    {
    	// limpando o array de ids de objetos manipulados
    	$this->_arrayObjetosManipulados = array();
    }

    /**
     * Desabilita o pool de ids de objetos cvc manipulados
     * 
     * @return void
     */
    private function desabilitaPoolIdsObjetosManipulados()
    {
    	// setando para null o atributo _arrayObjetosManipulados
    	$this->_arrayObjetosManipulados = null;
    }

    /**
     * Retorna um array com os ids dos objetos manipulados
     * Permite a limpeza deste array utilizando true no parametro $forceClean
     * 
     * @param Boolean $forceClean
     * 
     * @return Array|null
     */
    public function retornaArrayIdsObjetosManipulados($forceClean = false)
    {
    	// recuperando o array de ids de objetos manipulados
    	$return = $this->_arrayObjetosManipulados;

    	// verificando se existem ids no array
    	if (count($return) === 0)
    		return null;

    	// verificando se eh preciso limpar o array de ids de objetos manipulados
    	if ($forceClean)
    		// limpando o array de ids de objetos manipulados
    		$this->limpaArrayIdsObjetosManipulados();

    	// retornando array de ids de objetos manipulados
    	return $return;
    }

	/**
	 * Retorna um html contendo uma chamada javascript para a funcao exibirDialogUrl, chamando o dialog de resolucao de conflitos de versao
	 * 
	 * @param String $linguaUsuario
	 * @param String $tituloDialog
	 * @param String $urlRedirect
	 * @param String $formAction
	 * 
	 * @return String
	 */
	public static function retornaHTMLJavaScriptExibirDialogUrlResolvedorConflitoVersaoObjeto($linguaUsuario, $urlRedirect, $formAction = null)
	{
		// traduzindo o titulo do dialog
		$tituloDialog = Basico_OPController_DicionarioExpressaoOPController::retornaTraducaoViaSQL('FORM_TITLE_RESOLVEDOR_CONFLITO_VERSAO_OBJETO', $linguaUsuario);

		// inicializando variaveis
		$baseUrl = Basico_OPController_UtilOPController::retornaBaseUrl();

		// retornando o javascript que abre o dialog de login
		return "<script language='javascript'>exibirDialogUrl('Basico_Form_ResolvedorConflitoVersaoObjeto', '{$baseUrl}/public_forms/basico/forms/ResolvedorConflitoVersaoObjeto.{$linguaUsuario}.html', '{$tituloDialog}', null, '{$urlRedirect}', '{$formAction}')</script>";
	}

	/**
	 * Retorna um array contendo os atributos visualizaveis (fora da blacklist de atributos) de um objeto
	 * 
	 * @param String $nomeObjeto
	 * @param Integer $idObjeto
	 * @param Integer $versao
	 * 
	 * @return Array|null
	 */
	public function retornaArrayAtributosObjeto($nomeObjeto, $idObjeto, $versao = null)
	{
		// verificando se o objeto existe
		if ((!class_exists($nomeObjeto, true)) or (!$idObjeto))
			return null;

		// verificando se foi solicitado uma versao especifica do objeto
		if (!$versao) {
			// instanciando o modelo do objeto
			$objeto = new $nomeObjeto();

			// recuperando a versao atual
			$objeto = Basico_OPController_PersistenceOPController::bdObjectFind($objeto, $idObjeto);

			// retornando array com os atributos do objeto
			return Basico_OPController_UtilOPController::codificar($objeto, CODIFICAR_OBJETO_RECURSIVO_TO_ARRAY_USANDO_BLACKLIST_ATRIBUTOS_SISTEMA);
		}

		return null;
	}

	/**
	 * Varre os modelos do sistema procurando por objetos nao versionados e versiona-os
	 * 
	 * @return Boolean
	 */
	public function versionarObjetosNaoVersionados()
	{
		//salvando log de inicio da operação
	    Basico_OPController_LogOPController::getInstance()->salvaLogFS(LOG_MSG_CREATE_CVC_INICIO);

	    // setando as diretrizes administraticas para execucao de metodos administrativos e recuperando as configuracoes atuais do servidor
	    $arrayConfigAtualPHP = Basico_OPController_UtilOPController::setaDiretivasAdministrativasPHP();
	    
		// desabilitado o pool de ids de objetos manipulados (p/log)
		self::desabilitaPoolIdsObjetosManipulados();

		// recuperando todos os modelos dos sistema
		$arrayNomesModelosSistema = Basico_OPController_UtilOPController::retornaArrayNomeTodosModelosSistema(true);

		// recuperando array de objetos que nao devem ser versionados
		$arrayNomesObjetosNaoVersionais = self::retornaArrayNomesObjetosNaoVerionaveis();

		// loop para remover os objetos nao verionaveis do array de modelos do sistema
		foreach ($arrayNomesObjetosNaoVersionais as $nomeObjetoNaoVersionavel) {
			// localizando o objeto nao versionavel no array de modelos do sistema
			if (($chaveObjetoNaoVersionavel = array_search($nomeObjetoNaoVersionavel, $arrayNomesModelosSistema)) !== false) {
				// removendo elemento
				unset($arrayNomesModelosSistema[$chaveObjetoNaoVersionavel]);
			}

			// limpando memória
			unset($nomeObjetoNaoVersionavel);
		}

		// limpando variáveis
		unset($arrayNomesObjetosNaoVersionais);

		// iniciando transacao
		Basico_OPController_PersistenceOPController::bdControlaTransacao();

		// loop para recuperar todos os objetos dos modelos
		foreach ($arrayNomesModelosSistema as $nomeModelo) {
			try {			
				// instanciando o modelo
				$modelo = new $nomeModelo();

				// verificando se o modelo possui mapper
				if ((property_exists($modelo, '_mapper')) and (method_exists($modelo, 'getMapper'))) {
					// recuperando os objetos
					$objetos = $modelo->getMapper()->fetchAll();

					// verificando se houve recuperacao de objetos
					if (count($objetos)) {
						// loop para verificar se o objeto foi versionado
						foreach ($objetos as $objeto) {
							// versionando objetos nao versionados
							$versaoObjeto = self::retornaUltimaVersao($objeto, true);
						}

						// limpando memória
						unset($objeto);
					}
				}

				// limpando modelo e objetos
				unset($modelo);
				unset($objetos);
				unset($versaoObjeto);
			} catch (Exception $e) {
				// voltando a transacao
				Basico_OPController_PersistenceOPController::bdControlaTransacao(DB_ROLLBACK_TRANSACTION);

				// estourando excessao
				throw new Exception(MSG_ERRO_CVC_FALHOU . $nomeModelo . " " . $e->getMessage());
			}
		}

		// salvando a transacao
		Basico_OPController_PersistenceOPController::bdControlaTransacao(DB_COMMIT_TRANSACTION);

		// voltando as diretrizes administrativas
		Basico_OPController_UtilOPController::setaDiretivasAdministrativasPHP($arrayConfigAtualPHP);

		// inicializando atributo $this->_arrayObjetosManipulados
		$this->limpaArrayIdsObjetosManipulados();

		// salvando log de sucesso na operação
	    Basico_OPController_LogOPController::getInstance()->salvaLogFS(LOG_MSG_CREATE_CVC_SUCESSO);

		// retornando sucesso
		return true;
	}

	/**
	 * Retorna um array contendo os objetos que o CVC nao deve versionar
	 * 
	 * @return Array|null
	 */
	public static function retornaArrayNomesObjetosNaoVerionaveis()
	{
		// instanciando veriaveis
		$arrayResultado = array();

		// adicionando objetos
		$arrayResultado[] = 'Basico_Model_CvcCvc';
		$arrayResultado[] = 'Basico_Model_Log';
		$arrayResultado[] = 'Basico_Model_CpgToken';

		// retornando resultado
		return $arrayResultado;
	}

	/**
	 * Regera o checksum de um objeto
	 * 
	 * @param Object $nomeModelo
	 * @param Integer $id
	 * 
	 * @return Boolean
	 */
	public function regerarChecksumModelo($nomeModelo, $id = null)
	{
		// recuperando elementos para log
		$idPessoaPerfilUsuario = Basico_OPController_PessoaAssocclPerfilOPController::retornaIdPessoaPerfilMaiorPerfilPorIdPessoaRequest(Basico_OPController_PessoaLoginOPController::getInstance()->retornaIdPessoaPorLogin(Basico_OPController_PessoaLoginOPController::retornaLoginUsuarioSessao()), Basico_OPController_UtilOPController::retornaUserRequest());
		$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_TENTATIVA_REGERAR_CHECKSUM, true);

		// salvando log de tentativa de regerar checksum
		Basico_OPController_LogOPController::getInstance()->salvaLogFS(LOG_MSG_TENTATIVA_REGERAR_CHECKSUM . $nomeModelo);
		Basico_OPController_LogOPController::salvarLogViaSQL($idPessoaPerfilUsuario, $idCategoriaLog, LOG_MSG_TENTATIVA_REGERAR_CHECKSUM . $nomeModelo);

		// verificando se o modelo existe
		if (!class_exists($nomeModelo, true)) {
			// retornando fracasso
			return false;
		}

		// recuperando array de objetos nao versionaveis
		$arrayObjetosNaoVersionais = self::retornaArrayNomesObjetosNaoVerionaveis();

		// verificando se o modelo nao se encontra no array de objetos nao versionaveis
		if (array_search($nomeModelo, $arrayObjetosNaoVersionais)) {
			// retornando fracasso
			return false;
		}

		// instanciando o modelo
		$modelo = new $nomeModelo();

		// verificando se o id foi passado para localizar o objeto
		if ($id) {
			// localizando o objeto
			$modelo->getMapper()->find($id, $modelo);
			// instanciando o objeto
			$arrayObjetos = array($modelo);
		} else {
			// instanciando todos os objetos
			$arrayObjetos = $modelo->getMapper()->fetchAll();
		}

		// loop para gerar os checksum
		foreach ($arrayObjetos as $objeto) {
			// verificando se o objeto possui versionamento
			$versaoObjeto = $this->retornaUltimaVersao($objeto);

			// verificando se o resultado da recuperacao da versao do objeto
			if ($versaoObjeto) {
				// atualizando versao
				$this->atualizaVersao($objeto);
			} else {
				// versionando objeto
				$this->versionar($objeto);
			}
		}

		// recuperando login do usuario que esta realizando a operacao
		$loginUsuarioLogado = Basico_OPController_PessoaLoginOPController::retornaLoginUsuarioSessao();

		// recuperando id da categoria de log de sucesso ao regerar checksum
		$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_SUCESSO_REGERAR_CHECKSUM, true);

		// salvando log de sucesso ao regerar checksum
		Basico_OPController_LogOPController::getInstance()->salvaLogFS(LOG_MSG_SUCESSO_REGERAR_CHECKSUM . $nomeModelo);
		Basico_OPController_LogOPController::salvarLogViaSQL($idPessoaPerfilUsuario, $idCategoriaLog, LOG_MSG_SUCESSO_REGERAR_CHECKSUM . $nomeModelo . " ({$loginUsuarioLogado})");

		// retornando sucesso
		return true;
	}

	/**
	 * Regera o checksum de todos os objetos do sistema
	 * 
	 * @return Boolean
	 */
	public function regerarCheckSumTodosModelos()
	{
		// recuperando todos os modelos do sistema
		$arrayNomesModelosSistema = Basico_OPController_UtilOPController::retornaArrayNomeTodosModelosSistema(true);

		// recuperando array de objetos nao versionaveis
		$arrayNomesObjetosNaoVersionais = self::retornaArrayNomesObjetosNaoVerionaveis();

		// loop para verificar se o array de modelos dos sitema possui algum modelo nao versionavel
		foreach ($arrayNomesObjetosNaoVersionais as $nomeObjetoNaoVersionavel) {
			// verificando se o modelo nao versionavel existe no array de modelos dos sitema
			if (($chaveObjetoNaoVersionavel = array_search($nomeObjetoNaoVersionavel, $arrayNomesModelosSistema)) !== false) {
				// removendo elemento
				unset($arrayNomesModelosSistema[$chaveObjetoNaoVersionavel]);
			}
		}

		// loop para regerar o checksum de todos os modelos do sistema
		foreach ($arrayNomesModelosSistema as $nomeModeloSistema) {
			// regerando checksum
			$this->regerarChecksumModelo($nomeModeloSistema);
		}

		// retornando sucesso
		return true;
	}

	/**
	 * Retorna um array com os dados sobre a versão de um objeto
	 * 
	 * @param Object $objeto - objeto que deseja recuperar informações sobre a versão
	 * 
	 * @return Array|false - array contendo as informações sobre a versão ou false caso não consiga recuperar a versão
	 * 
	 * @author Carlos Feitosa / João Vasconcelos (carlos.feitosa@rochedoframework.com / joao.vasconcelos@rochedoframework.com)
	 * @since 21/06/2012
	 */
	public function retornaArrayDadosUltimaVersaoObjeto($objeto)
	{
		// verificando se foi passado um objeto como parametro
		if (!is_object($objeto)) {
			// retoranndo falso
			return false;
		}

	    // recuperando o valor do id generico vindo do objeto
		$idGenerico = Basico_OPController_PersistenceOPController::bdRetornaValorIdGenericoObjeto($objeto);

		// verificando se o valor de id generico existe
		if (!$idGenerico) {
			// retornando falso
			return false;
		}

		// recuperando a relacao categoria chave estrangeira
		$objCategoriaChaveEstrangeira = $this->_categoriaAssocChaveEstrangeiraOPController->retornaObjetoCategoriaChaveEstrangeiraCVC($objeto, true);

		// verificando se existe a relacao com categoria chave estrangeira
		if (isset($objCategoriaChaveEstrangeira)) {
			// recuperando objeto CVC
			$objCVC = $this->retornaObjUltimaVersao($objCategoriaChaveEstrangeira->id, $idGenerico);

			// limpando variáveis
			unset($objCategoriaChaveEstrangeira);

			// verificando a tupla existe
			if (isset($objCVC)) {
				// retornando informações sobre a versão
				return array('versao' => (int) $objCVC->versao, 'dataVersao' => $objCVC->datahoraUltimaAtualizacao);
			}
		} else {
			// retornando falso
			return false;
		}
	}
}