<?php
/**
 * Controlador FormularioElementoFilter.
 *
 */
class Basico_FormularioElementoFilterControllerController
{
	/**
	 * Instância do Controlador FormularioElementoFilter
	 * @var Basico_FormularioController
	 */
	static private $singleton;
	
	/**
	 * Instância do Modelo FormularioElementoFilter.
	 * @var Basico_Model_FormularioElementoFilter
	 */
	private $formularioElementoFilter;
	
	/**
	 * Construtor do Controlador FormularioElementoFilter.
	 * 
	 * @return void
	 */
	private function __construct()
	{
		$this->formularioElementoFilter = new Basico_Model_FormularioElementoFilter();
	}
	
	/**
	 * Retorna instância do Controlador FormularioElementoFilter.
	 * 
	 * @return Basico_FormularioElementoFilterController
	 */
	static public function init()
	{
		// checando singleton
		if(self::$singleton == NULL){
			
			self::$singleton = new Basico_FormularioElementoFilterControllerController();
		}
		return self::$singleton;
	}
	
	/**
	 * Salva objeto no Banco de dados.
	 * 
	 * @param Basico_Model_FormularioElementoFilter $novoFormularioElementoFilter
	 * @param Integer|null $versaoUpdate
	 * @param Integer|null $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function salvarFormularioElementoFilter($novoFormularioElementoFilter, $versaoUpdate = null, $idPessoaPerfilCriador = null)
	{
		try {
			// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_UtilControllerController::retornaIdPessoaPerfilSistema();

	    	// salvando o objeto através do controlador Save
			Basico_SaveControllerController::save($novoFormularioElementoFilter, $versaoUpdate, $idPessoaPerfilCriador, Basico_CategoriaControllerController::retornaIdCategoriaLogNovoFormularioElementoFilter(), LOG_MSG_NOVO_FORMULARIO_ELEMENTO_FILTER);

			// atualizando o objeto
			$this->formularioElementoFilter = $novoFormularioElementoFilter;
			
		} catch (Exception $e) {
			throw new Exception($e);
		}
	}
}