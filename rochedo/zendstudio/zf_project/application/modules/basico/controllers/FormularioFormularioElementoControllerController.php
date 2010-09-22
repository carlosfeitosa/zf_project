<?php
/**
 * Controlador FormularioFormularioElemento.
 *
 */
class Basico_FormularioFormularioElementoControllerController
{
	/**
	 * Instância do Controlador FormularioFormularioElemento
	 * @var Basico_FormularioController
	 */
	static private $singleton;
	
	/**
	 * Instância do Modelo FormularioFormularioElemento.
	 * @var Basico_Model_FormularioFormularioElemento
	 */
	private $formularioFormularioElemento;
	
	/**
	 * Construtor do Controlador FormularioFormularioElemento.
	 * @return void
	 */
	private function __construct()
	{
		$this->formularioFormularioElemento = new Basico_Model_FormularioFormularioElemento();
	}
	
	/**
	 * Retorna instância do Controlador FormularioFormularioElemento.
	 * @return Basico_FormularioFormularioElementoController
	 */
	static public function init()
	{
		if(self::$singleton == NULL){
			self::$singleton = new Basico_FormularioFormularioElementoControllerController();
		}
		return self::$singleton;
	}
	
	/**
	 * Salva objeto no Banco de dados.
	 * @param Basico_Model_FormularioFormularioElemento $novoFormularioFormularioElemento
	 * @return void
	 */
	public function salvarFormularioFormularioElemento($novoFormularioFormularioElemento, $idPessoaPerfilCriador = null)
	{
		try {
			// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_UtilControllerController::retornaIdPessoaPerfilSistema();

	    	// salvando o objeto através do controlador Save
			Basico_SaveControllerController::save($novoFormularioFormularioElemento, null, $idPessoaPerfilCriador, Basico_CategoriaControllerController::retornaIdCategoriaLogNovoFormularioFormularioElemento(), LOG_MSG_NOVO_FORMULARIO_FORMULARIO_ELEMENTO);

			// atualizando o objeto
			$this->formularioFormularioElemento = $novoFormularioFormularioElemento;
			
		} catch (Exception $e) {
			throw new Exception($e);
		}
	}
}
