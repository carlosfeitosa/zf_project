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
	 * 
	 * @return void
	 */
	private function __construct()
	{
		$this->formularioFormularioElemento = new Basico_Model_FormularioFormularioElemento();
	}
	
	/**
	 * Retorna instância do Controlador FormularioFormularioElemento.
	 * 
	 * @return Basico_FormularioFormularioElementoController
	 */
	static public function init()
	{
		// checando singleton
		if(self::$singleton == NULL){
			
			self::$singleton = new Basico_FormularioFormularioElementoControllerController();
		}
		return self::$singleton;
	}

	/**
	 * Retorna o objeto decorator de um formularioFormularioElemento
	 * 
	 * @param Integer $idFormulario
	 * @param Integer $idFormularioElemento
	 * 
	 * @return null|Basico_Model_Decorator
	 */
	static public function retornaDecoratorObject($idFormulario, $idFormularioElemento)
	{
		// recuperando o modelo de formulario
		$modelFormularioFormularioElemento = new Basico_Model_FormularioFormularioElemento();
		
		// recuperando objeto
		$arrayObjsFormularioFormularioElemento = $modelFormularioFormularioElemento->fetchList("id_formulario = {$idFormulario} and id_formulario_elemento = {$idFormularioElemento}", null, 1, 0);

		// verificando o resultado da recuperacao do objeto
		if (!isset($arrayObjsFormularioFormularioElemento[0]) or (!$arrayObjsFormularioFormularioElemento[0]->decorator))
			return null;

		// retornando decorator
		return $arrayObjsFormularioFormularioElemento[0]->getDecoratorObject();
	}
	
	/**
	 * Salva objeto no Banco de dados.
	 * 
	 * @param Basico_Model_FormularioFormularioElemento $novoFormularioFormularioElemento
	 * @param Integer $idPessoaPerfilCriador
	 * 
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
