<?php
/**
 * Controlador FormularioElementoFormularioElementoValidador.
 *
 */
class Basico_FormularioElementoFormularioElementoValidadorControllerController
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
	 * 
	 * @return void
	 */
	private function __construct()
	{
		$this->formulario = new Basico_Model_Formulario();
	}
	
	/**
	 * Retorna instância do Controlador Formulario.
	 * 
	 * @return Basico_FormularioController
	 */
	static public function init()
	{
		// checando singleton
		if(self::$singleton == NULL){
			
			self::$singleton = new Basico_FormularioElementoFormularioElementoValidadorControllerController();
		}
		return self::$singleton;
	}
	
	/**
	 * Salva objeto no Banco de dados.
	 * 
	 * @param Basico_Model_Formulario $novoFormularioElementoFormularioElementoValidador
	 * @param Integer|null $versaoUpdate
	 * @param Integer|null $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function salvarFormularioElementoFormularioElementoValidador($novoFormularioElementoFormularioElementoValidador, $versaoUpdate = null, $idPessoaPerfilCriador = null)
	{
		try {
			// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_UtilControllerController::retornaIdPessoaPerfilSistema();

	    	// salvando o objeto através do controlador Save
			Basico_SaveControllerController::save($novoFormularioElementoFilter, $versaoUpdate, $idPessoaPerfilCriador, Basico_CategoriaControllerController::retornaIdCategoriaLogNovoFormularioElementoFormularioElementoValidador(), LOG_MSG_NOVO_FORMULARIO_ELEMENTO_FORMULARIO_ELEMENTO_VALIDADOR);

			// atualizando o objeto	
			$this->formulario = $novoFormularioElementoFormularioElementoValidador;
			
		} catch (Exception $e) {
			throw new Exception($e);
		}
	}
}