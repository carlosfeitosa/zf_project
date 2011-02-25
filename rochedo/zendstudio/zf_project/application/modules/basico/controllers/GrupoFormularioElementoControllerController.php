<?php
/**
 * Controlador GrupoFormularioElemento.
 *
 */
class Basico_GrupoFormularioElementoControllerController
{
	/**
	 * Instância do Controlador GrupoFormularioElemento
	 * @var Basico_GrupoFormularioElementoControllerController
	 */
	private static $_singleton;
	
	/**
	 * Instância do Modelo GrupoFormularioElemento.
	 * @var Basico_Model_GrupoFormularioElemento
	 */
	private $_grupoFormularioElemento;
	
	/**
	 * Construtor do Controlador Basico_GrupoFormularioElementoControllerController.
	 * 
	 * @return void
	 */
	private function __construct()
	{
		// instanciando modelo
		$this->_grupoFormularioElemento = $this->retornaNovoObjetoGrupoFormularioElemento();

		// inicializando controlador
		$this->init();
	}

	/**
	 * Inicializa o controlador Basico_GrupoFormularioElementoControllerController
	 * 
	 * @return void
	 */
	private function init()
	{
		return;
	}
	
	/**
	 * Retorna instância do Controlador GrupoFormularioElemento.
	 * 
	 * @return Basico_GrupoFormularioElementoControllerController
	 */
	public static function getInstance()
	{
		// checando singleton
		if (self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_GrupoFormularioElementoControllerController();
		}
		// retornando instancia
		return self::$_singleton;
	}

	/**
	 * Retorna um objeto GrupoFormularioElemento vazio
	 * 
	 * @return Basico_Model_GrupoFormularioElemento
	 */
	public function retornaNovoObjetoGrupoFormularioElemento()
	{
		// retornando um modelo vazio
		return new Basico_Model_GrupoFormularioElemento();
	}
	
	/**
	 * Salva objeto no Banco de dados.
	 * 
	 * @param Basico_Model_GrupoFormularioElemento $novoGrupoFormularioElemento
	 * @param Integer|null $versaoUpdate
	 * @param Integer|null $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function salvarGrupoFormularioElemento(Basico_Model_GrupoFormularioElemento $objGrupoFormularioElemento, $versaoUpdate = null, $idPessoaPerfilCriador = null)
	{
		try {
			// instanciando controladores
			$categoriaControllerController = Basico_CategoriaControllerController::getInstance();
			$pessoaPerfilControllerController = Basico_PessoaPerfilControllerController::getInstance();

			// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = $pessoaPerfilControllerController->retornaIdPessoaPerfilSistema();

			// verificando se trata-se de uma nova tupla ou atualizacao
			if ($objGrupoFormularioElemento->id != NULL) {
				// carregando informacoes de log de atualizacao de registro
				$idCategoriaLog = $categoriaControllerController->retornaIdCategoriaLogUpdateFormulario();
				$mensagemLog    = LOG_MSG_UPDATE_GRUPO_FORMULARIO_ELEMENTO;
			} else {
				// carregando informacoes de log de novo registro
				$idCategoriaLog = $categoriaControllerController->retornaIdCategoriaLogNovoFormulario();
				$mensagemLog    = LOG_MSG_NOVO_GRUPO_FORMULARIO_ELEMENTO;
			}

			// salvando o objeto através do controlador Save
		 	Basico_PersistenceControllerController::bdSave($objGrupoFormularioElemento, $versaoUpdate, $idPessoaPerfilCriador, $idCategoriaLog, $mensagemLog);

			// atualizando o objeto
			$this->_grupoFormularioElemento = $objGrupoFormularioElemento;

		} catch (Exception $e) {
			throw new Exception($e);
		}
	}
}