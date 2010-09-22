<?php
/**
 * Controlador Formulario.
 *
 */
class Basico_FormularioControllerController
{
	/**
	 * Instância do Controlador Formulario
	 * @var Basico_FormularioController
	 */
	static private $singleton;
	
	/**
	 * Instância do Modelo Formulario.
	 * @var Basico_Model_Formulario
	 */
	private $formulario;
	
	/**
	 * Construtor do Controlador Formulario.
	 * @return void
	 */
	private function __construct()
	{
		$this->formulario = new Basico_Model_Formulario();
	}
	
	/**
	 * Retorna instância do Controlador Formulario.
	 * @return Basico_FormularioController
	 */
	static public function init()
	{
		if(self::$singleton == NULL){
			self::$singleton = new Basico_FormularioControllerController();
		}
		return self::$singleton;
	}
	
	/**
	 * Salva objeto no Banco de dados.
	 * @param Basico_Model_Formulario $novoFormulario
	 * @return void
	 */
	public function salvarFormulario($novoFormulario, $idPessoaPerfilCriador = null)
	{
		try {
			// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_Model_Util::retornaIdPessoaPerfilSistema();

			// salvando o objeto através do controlador Save
			Basico_SaveControllerController::save($novoFormulario, null, $idPessoaPerfilCriador, Basico_CategoriaControllerController::retornaIdCategoriaLogNovoFormulario(), LOG_MSG_NOVO_FORMULARIO);

			// atualizando o objeto
			$this->formulario = $novoFormulario;

		} catch (Exception $e) {
			throw new Exception($e);
		}
	}

}