<?php
/**
 * Controlador FormularioTemplate.
 *
 */
class Basico_FormularioTemplateControllerController
{
	/**
	 * Instância do Controlador FormularioTemplate
	 * @var Basico_FormularioTemplateController
	 */
	static private $singleton;
	
	/**
	 * Instância do Modelo FormularioTemplate.
	 * @var Basico_Model_FormularioTemplate
	 */
	private $formularioTemplate;
	
	/**
	 * Construtor do Controlador FormularioTemplate.
	 * @return void
	 */
	private function __construct()
	{
		$this->formulario = new Basico_Model_FormularioTemplate();
	}
	
	/**
	 * Retorna instância do Controlador FormularioTemplate.
	 * @return Basico_FormularioTemplateController
	 */
	static public function init()
	{
		if(self::$singleton == NULL){
			self::$singleton = new Basico_FormularioTemplateControllerController();
		}
		return self::$singleton;
	}
	
	/**
	 * Salva objeto no Banco de dados.
	 * @param Basico_Model_FormularioTemplate $novoFormularioTemplate
	 * @return void
	 */
	public function salvarFormularioTemplate($novoFormularioTemplate, $idPessoaPerfilCriador = null)
	{
		try {
			// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_UtilControllerController::retornaIdPessoaPerfilSistema();

	    	// salvando o objeto através do controlador Save
			Basico_SaveControllerController::save($novoFormularioTemplate, null, $idPessoaPerfilCriador, Basico_CategoriaControllerController::retornaIdCategoriaLogNovoFormularioTemplate(), LOG_MSG_NOVO_FORMULARIO_TEMPLATE);

			// atualizando o objeto
			$this->formularioTemplate = $novoFormularioTemplate;
			
		} catch (Exception $e) {
			throw new Exception($e);
		}
	}
}