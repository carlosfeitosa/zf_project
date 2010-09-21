<?php
/**
 * Controlador FormularioElementoValidador.
 *
 */
class Basico_FormularioElementoValidadorControllerController
{
	/**
	 * Instância do Controlador FormularioElementoValidador
	 * @var Basico_FormularioController
	 */
	static private $singleton;
	
	/**
	 * Instância do Modelo FormularioElementoValidador.
	 * @var Basico_Model_FormularioElementoValidador
	 */
	private $formularioElementoValidador;
	
	/**
	 * Construtor do Controlador FormularioElementoValidador.
	 * @return void
	 */
	private function __construct()
	{
		$this->formularioElementoValidador = new Basico_Model_FormularioElementoValidador();
	}
	
	/**
	 * Retorna instância do Controlador FormularioElementoValidador.
	 * @return Basico_FormularioElementoValidadorController
	 */
	static public function init()
	{
		if(self::$singleton == NULL){
			self::$singleton = new Basico_FormularioElementoValidadorControllerController();
		}
		return self::$singleton;
	}
	
	/**
	 * Salva objeto no Banco de dados.
	 * @param Basico_Model_FormularioElementoValidador $novoFormularioElementoValidador
	 * @return void
	 */
	public function salvarFormularioElementoValidador($novoFormularioElementoValidador, $idPessoaPerfilCriador = null)
	{
		try {
			// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_Model_Util::retornaIdPessoaPerfilSistema();

	    	// salvando o objeto através do controlador Save
			Basico_SaveControllerController::save($novoFormularioElementoValidador, $idPessoaPerfilCriador, Basico_CategoriaControllerController::retornaIdCategoriaLogNovoFormularioElementoValidador(), LOG_MSG_NOVO_FORMULARIO_ELEMENTO_VALIDADOR);

			// atualizando o objeto
			$this->formularioElementoValidador = $novoFormularioElementoValidador;
			
		} catch (Exception $e) {
			throw new Exception($e);
		}
	}
}