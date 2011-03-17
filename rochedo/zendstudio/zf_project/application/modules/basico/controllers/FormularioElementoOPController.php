<?php
/**
 * Controlador FormularioElemento.
 *
 */
class Basico_OPController_FormularioElementoOPController
{
	/**
	 * Instância do Controlador FormularioElemento
	 * @var Basico_OPController_FormularioElementoOPController
	 */
	private static $_singleton;

	/**
	 * Instância do Modelo FormularioElemento.
	 * @var Basico_Model_FormularioElemento
	 */
	private $_formularioElemento;

	/**
	 * Construtor do Controlador Basico_OPController_FormularioElementoOPController.
	 * 
	 * @return void
	 */
	private function __construct()
	{
		// instanciando o modelo
		$this->_formularioElemento = $this->retornaNovoObjetoFormularioElemento();

		// inicializando o controlador
		$this->init();
	}

	/**
	 * Inicializa o controlador Basico_OPController_FormularioElementoOPController
	 * 
	 * @return void
	 */
	private function init()
	{
		return;
	}

	/**
	 * Retorna instância do Controlador FormularioElemento.
	 * 
	 * @return Basico_OPController_FormularioElementoOPController
	 */
	public static function getInstance()
	{
		// checando singleton
		if(self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_FormularioElementoOPController();
		}
		// retornando singleton
		return self::$_singleton;
	}

	/**
	 * Retorna um objeto formulario elemento vazio
	 * 
	 * @return Basico_Model_FormularioElemento
	 */
	public function retornaNovoObjetoFormularioElemento()
	{
		// retornando um modelo vazio
		return new Basico_Model_FormularioElemento();
	}

	/**
	 * Salva objeto no Banco de dados.
	 * 
	 * @param Basico_Model_FormularioElemento $novoFormularioElemento
	 * @param Integer|null $versaoUpdate
	 * @param Integer|null $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function salvarFormularioElemento(Basico_Model_FormularioElemento $objFormularioElemento, $versaoUpdate = null, $idPessoaPerfilCriador = null)
	{
		try {
			// insstanciando controladores
			$categoriaControllerController = Basico_OPController_CategoriaOPController::getInstance();
			$pessoaPerfilControllerController = Basico_OPController_PessoaPerfilOPController::getInstance();

			// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = $pessoaPerfilControllerController->retornaIdPessoaPerfilSistema();

			// verificando se trata-se uma nova tupla ou atualizacao
			if ($objFormularioElemento->id != NULL) {
				// carregando as informacoes de log de atualizacao de registro
				$idCategoriaLog = $categoriaControllerController->retornaIdCategoriaLogUpdateFormularioElemento();
				$mensagemLog    = LOG_MSG_UPDATE_FORMULARIO_ELEMENTO;
			} else {
				// carregando as informacoes de log de novo registro
				$idCategoriaLog = $categoriaControllerController->retornaIdCategoriaLogNovoFormularioElemento();
				$mensagemLog    = LOG_MSG_NOVO_FORMULARIO_ELEMENTO;
			}

	    	// salvando o objeto através do controlador Save
			Basico_OPController_PersistenceOPController::bdSave($objFormularioElemento, $versaoUpdate, $idPessoaPerfilCriador, $idCategoriaLog, $mensagemLog);

			// atualizando o objeto
			$this->_formularioElemento = $objFormularioElemento;

		} catch (Exception $e) {
			throw new Exception($e);
		}
	}

	/**
	 * Retorna o elemento hash
	 * 
	 * @return Basico_Model_FormularioElemento|null
	 */
	public function retornaElementoHash()
	{
		// inicializando variaveis
		$nomeElemento = FORM_ELEMENT_HASH;

		// recuperando array de resultados
		$objsFormularioElemento = $this->_formularioElemento->fetchList("nome = '{$nomeElemento}'");

		// verificando se o elemento foi recuperado
		if (count($objsFormularioElemento) > 0)
			// retornando elemento
			return $objsFormularioElemento[0];

		return null;
	}
}