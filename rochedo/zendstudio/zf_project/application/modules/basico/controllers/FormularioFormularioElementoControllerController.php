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
	 * @param Integer $ordem
	 * 
	 * @return null|Basico_Model_Decorator
	 */
	static public function retornaDecoratorObject($idFormulario, $idFormularioElemento, $ordem)
	{
		// recuperando o modelo de formulario
		$modelFormularioFormularioElemento = new Basico_Model_FormularioFormularioElemento();
		
		// recuperando objeto
		$arrayObjsFormularioFormularioElemento = $modelFormularioFormularioElemento->fetchList("id_formulario = {$idFormulario} and id_formulario_elemento = {$idFormularioElemento} and ordem = {$ordem}", null, 1, 0);

		// verificando o resultado da recuperacao do objeto
		if (!isset($arrayObjsFormularioFormularioElemento[0]) or (!$arrayObjsFormularioFormularioElemento[0]->decorator))
			return null;

		// retornando decorator
		return $arrayObjsFormularioFormularioElemento[0]->getDecoratorObject();
	}

	/**
	 * Retorna um array contendo as ordens encontradas na relacao formualrio_formulario_elemento
	 * 
	 * @param Integer $idFormulario
	 * 
	 * @return Array
	 */
	static public function retornaArrayOrdem($idFormulario)
	{
		// inicializando variaveis
		$arrayReturn = array();

		// recuperando o modelo de formulario
		$modelFormularioFormularioElemento = new Basico_Model_FormularioFormularioElemento();

		// recuperando objeto
		$arrayObjsFormularioFormularioElemento = $modelFormularioFormularioElemento->fetchList("id_formulario = {$idFormulario}", "ordem");

		// verificando o resultado da recuperacao do objeto
		if (count($arrayObjsFormularioFormularioElemento) > 0) {
			foreach ($arrayObjsFormularioFormularioElemento as $objFormularioFormularioElemento) {
				$arrayReturn[] = $objFormularioFormularioElemento->ordem;
			}

			// verificando se o formulario eh persistente
			if ((GENERATE_PERSISTENT_FORM_WITH_HASH_ELEMENT) and (Basico_FormularioControllerController::existePersistencia($idFormulario)))
				$arrayReturn[] = $objFormularioFormularioElemento->ordem + 1;
		}

		// retornando array com os resultados
		return $arrayReturn;
	}

	/**
	 * Retorna um array de objetos Basico_Model_FormularioFormularioElemento, que possuem GrupoFormularioElemento, relacionados 
	 * ao formulario passado como parametro
	 * 
	 * @param Basico_Model_Formulario $objFormulario
	 * 
	 * @return Array
	 */
	static public function retornaObjsFormularioFormularioElementoGrupoFormularioElementoFormulario(Basico_Model_Formulario $objFormulario)
	{
		// instanciando modelo
		$modelFormularioFormularioElemento = new Basico_Model_FormularioFormularioElemento();

		// recuperando objetos
		$arrayObjsFormularioFormularioElemento = $modelFormularioFormularioElemento->fetchList("id_formulario = {$objFormulario->id} and id_grupo_formulario_elemento is not null", array('ordem', 'id_grupo_formulario_elemento'));

		return $arrayObjsFormularioFormularioElemento;
	}

	/**
	 * Salva objeto no Banco de dados.
	 * 
	 * @param Basico_Model_FormularioFormularioElemento $novoFormularioFormularioElemento
	 * @param Integer|null $versaoUpdate
	 * @param Integer|null $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function salvarFormularioFormularioElemento($novoFormularioFormularioElemento, $versaoUpdate = null, $idPessoaPerfilCriador = null)
	{
		try {
			// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_UtilControllerController::retornaIdPessoaPerfilSistema();

	    	// salvando o objeto através do controlador Save
			Basico_SaveControllerController::save($novoFormularioFormularioElemento, $versaoUpdate, $idPessoaPerfilCriador, Basico_CategoriaControllerController::retornaIdCategoriaLogNovoFormularioFormularioElemento(), LOG_MSG_NOVO_FORMULARIO_FORMULARIO_ELEMENTO);

			// atualizando o objeto
			$this->formularioFormularioElemento = $novoFormularioFormularioElemento;
			
		} catch (Exception $e) {
			throw new Exception($e);
		}
	}
}
