<?php
/**
 * Controlador FormularioElemento.
 *
 */
class Basico_FormularioElementoControllerController
{
	/**
	 * Instância do Controlador FormularioElemento
	 * @var Basico_FormularioController
	 */
	static private $singleton;
	
	/**
	 * Instância do Modelo FormularioElemento.
	 * @var Basico_Model_FormularioElemento
	 */
	private $formularioElemento;
	
	/**
	 * Construtor do Controlador FormularioElemento.
	 * @return void
	 */
	private function __construct()
	{
		$this->formularioElemento = new Basico_Model_FormularioElemento();
	}
	
	/**
	 * Retorna instância do Controlador FormularioElemento.
	 * @return Basico_FormularioElementoController
	 */
	static public function init()
	{
		if(self::$singleton == NULL){
			self::$singleton = new Basico_FormularioElementoControllerController();
		}
		return self::$singleton;
	}
	
	/**
	 * Salva objeto no Banco de dados.
	 * @param Basico_Model_FormularioElemento $novoFormularioElemento
	 * @return void
	 */
	public function salvarFormularioElemento($novoFormularioElemento, $idPessoaPerfilCriador = null)
	{
		try {
			// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_UtilControllerController::retornaIdPessoaPerfilSistema();
	    	
	    	// salvando o objeto através do controlador Save
			Basico_SaveControllerController::save($novoFormularioElemento, null, $idPessoaPerfilCriador, Basico_CategoriaControllerController::retornaIdCategoriaLogNovoFormularioElemento(), LOG_MSG_NOVO_FORMULARIO_ELEMENTO);

			// atualizando o objeto
			$this->formularioElemento = $novoFormularioElemento;

		} catch (Exception $e) {
			throw new Exception($e);
		}
	}
}