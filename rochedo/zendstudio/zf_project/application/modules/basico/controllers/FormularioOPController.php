<?php
/**
 * Controlador Formulario.
 *
 */
class Basico_OPController_FormularioOPController
{
	/**
	 * Instância do Controlador Formulario
	 * @var Basico_OPController_FormularioOPController
	 */
	private static $_singleton;
	
	/**
	 * Instância do Modelo Formulario.
	 * @var Basico_Model_Formulario
	 */
	private $_formulario;
	
	/**
	 * Construtor do Controlador Basico_OPController_FormularioOPController.
	 * 
	 * @return void
	 */
	private function __construct()
	{
		// instanciando modelo
		$this->_formulario = $this->retornaNovoObjetoFormulario();

		// inicializando controlador
		$this->init();
	}

	/**
	 * Inicializa o controlador Basico_OPController_FormularioOPController
	 * 
	 * @return void
	 */
	private function init()
	{
		return;
	}
	
	/**
	 * Retorna instância do Controlador Formulario.
	 * 
	 * @return Basico_OPController_FormularioOPController
	 */
	public static function getInstance()
	{
		// checando singleton
		if (self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_FormularioOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}

	/**
	 * Retorna um objeto formulario vazio
	 * 
	 * @return Basico_Model_Formulario
	 */
	public function retornaNovoObjetoFormulario()
	{
		// retornando um modelo vazio
		return new Basico_Model_Formulario();
	}
	
    /**
     * Retorna se existe formulario filho
     * 
     * @param Integer $idFormulario
     * 
     * @return Boolean
     */
    public function existeFormulariosFilhosPorIdFormulario($idFormulario)
    {
	   	// recuperando formularios filhos
    	$objsFormulariosFilho = $this->_formulario->fetchList("id_formulario_pai = {$idFormulario}");

    	// retornando se existe(m) formulario(s) filho(s)
    	return (count($objsFormulariosFilho) > 0);
    }
    
    /**
     * Retorna se existe elementos
     * 
     * @param Integer $idFormulario
     * 
     * @return Boolean
     */
   	public function existeElementosPorIdFormulario($idFormulario)
   	{
   		// recuperando elementos do formulario
   		$objsFormularioElemento = $this->_formulario->find($idFormulario)->getFormularioElementosObjects();

        // retornando se existe(m) elemento(s)
        return (count($objsFormularioElemento) > 0);
   	}

	/**
	 * Salva objeto no Banco de dados.
	 * 
	 * @param Basico_Model_Formulario $novoFormulario
	 * @param Integer|null $versaoUpdate
	 * @param Integer|null $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function salvarFormulario(Basico_Model_Formulario $objFormulario, $versaoUpdate = null, $idPessoaPerfilCriador = null)
	{
		try {
			// instanciando controladores
			$categoriaOPController = Basico_OPController_CategoriaOPController::getInstance();
			$pessoaPerfilOPController = Basico_OPController_PessoaPerfilOPController::getInstance();

			// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = $pessoaPerfilOPController->retornaIdPessoaPerfilSistema();

			// verificando se trata-se de uma nova tupla ou atualizacao
			if ($objFormulario->id != NULL) {
				// carregando informacoes de log de atualizacao de registro
				$idCategoriaLog = $categoriaOPController->retornaIdCategoriaLogUpdateFormulario();
				$mensagemLog    = LOG_MSG_UPDATE_FORMULARIO;
			} else {
				// carregando informacoes de log de novo registro
				$idCategoriaLog = $categoriaOPController->retornaIdCategoriaLogNovoFormulario();
				$mensagemLog    = LOG_MSG_NOVO_FORMULARIO;
			}

			// salvando o objeto através do controlador Save
		 	Basico_OPController_PersistenceOPController::bdSave($objFormulario, $versaoUpdate, $idPessoaPerfilCriador, $idCategoriaLog, $mensagemLog);

			// atualizando o objeto
			$this->_formulario = $objFormulario;

		} catch (Exception $e) {
			throw new Exception($e);
		}
	}
	
	/**
	 * Retorna um array contendo todos os objetos de formularios existentes no sistema
	 * 
	 * @return Array
	 */
	public function retornaTodosObjsFormularios()
	{
		// inicalizando variaveis
		$arrayReturn = array();

		// recuperando todos os formularios do sistema, ordenados pelo nome
		$objsFormulario = $this->_formulario->fetchList(null, 'form_name');

		// loop para recuperar apenas os formulario que nao sao sub formularios
		foreach ($objsFormulario as $formularioObject) {
			// verificando se o formulario nao eh do tipo sub formulario		
			if (($formularioObject->getCategoriaObject()->getTipoCategoriaRootCategoriaPaiObject()->nome == TIPO_CATEGORIA_FORMULARIO) and ($formularioObject->getCategoriaObject()->getRootCategoriaPaiObject()->nome != FORMULARIO_SUB_FORMULARIO))
				$arrayReturn[] = $formularioObject;
		}

		// retornando array de objetos formulario
		return $arrayReturn;
	}

	/**
	 * Retorna se o formulario possui persistencia
	 * 
	 * @param Integer $idFormulario
	 * 
	 * @return Boolean
	 */
	public function existePersistenciaPorIdFormulario($idFormulario)
	{
		// montando a query que verifica se o formulario eh persistente
		$queryVerificaPersistenciaFormulario = "SELECT DISTINCT fe.element_reloadable
												FROM formulario f
												LEFT JOIN formulario ff ON (ff.id_formulario_pai = f.id)
												LEFT JOIN formulario_formulario_elemento ffe ON (ffe.id_formulario = f.id OR ffe.id_formulario = ff.id)
												LEFT JOIN formulario_elemento fe ON (ffe.id_formulario_elemento = fe.id)
												WHERE f.id = {$idFormulario}
												AND fe.element_reloadable = " . Basico_OPController_PersistenceOPController::bdRetornaBoolean(true, true);

		// executando query e recuperando o resultados em um array
		$arrayResultados = Basico_OPController_PersistenceOPController::bdRetornaArraySQLQuery($queryVerificaPersistenciaFormulario);

		// retornando o resultado
		return (count($arrayResultados) > 0);
	}
}