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
			self::$singleton = new Basico_FormularioControllerController();
		}
		return self::$singleton;
	}

    /**
     * Retorna se existe formulario filho
     * 
     * @param Integer $idFormulario
     * 
     * @return Boolean
     */
    public static function existeFormulariosFilhos($idFormulario)
    {
    	// instanciando o modelo de formulario
    	$modelFormulario = new Basico_Model_Formulario();
    	// recuperando array de formularios filhos
    	$arrayFormulariosObjects = $modelFormulario->fetchList("id_formulario_pai = {$idFormulario}");
    	
    	// retornando se existe(m) formulario(s) filho(s)
    	return (count($arrayFormulariosObjects) > 0);
    }
    
    /**
     * Retorna se existe elementos
     * 
     * @param Integer $idFormulario
     * 
     * @return Boolean
     */
   	public static function existeElementos($idFormulario)
   	{
   		// instanciando o modelo de formulario
   		$modelFormularioFormularioElemento = new Basico_Model_FormularioFormularioElemento();
   		// recuperando array de formularios filhos
        $arrayFormularioFormularioElementosObjects = $modelFormularioFormularioElemento->fetchList("id_formulario = {$idFormulario}");

        // retornando se existe(m) elemento(s)
        return (count($arrayFormularioFormularioElementosObjects) > 0);
   	}

	/**
	 * Salva objeto no Banco de dados.
	 * 
	 * @param Basico_Model_Formulario $novoFormulario
	 * @param Integer|null $versaoUpdate
	 * @param Integer|null $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function salvarFormulario($novoFormulario, $versaoUpdate = null, $idPessoaPerfilCriador = null)
	{
		try {
			// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_UtilControllerController::retornaIdPessoaPerfilSistema();

			// salvando o objeto através do controlador Save
			Basico_SaveControllerController::save($novoFormulario, $versaoUpdate, $idPessoaPerfilCriador, Basico_CategoriaControllerController::retornaIdCategoriaLogNovoFormulario(), LOG_MSG_NOVO_FORMULARIO);

			// atualizando o objeto
			$this->formulario = $novoFormulario;

		} catch (Exception $e) {
			throw new Exception($e);
		}
	}
	
	/**
	 * Retorna um array contendo todos os objetos de formularios existentes no sistema
	 * 
	 * @return Array
	 */
	public static function retornaTodosObjsFormularios()
	{
		// inicalizando variaveis
		$arrayReturn = array();
		// instanciando modelo de formulario
		$modelFormulario = new Basico_Model_Formulario();
		
		// recuperando todos os formularios do sistema, ordenados pelo nome
		$objsFormulario = $modelFormulario->fetchList(null, 'form_name');

		// loop para recuperar apenas os formulario que nao sao sub formularios
		foreach ($objsFormulario as $formularioObject) {
			// verificando se o formulario nao eh do tipo sub formulario		
			if (($formularioObject->getCategoriaObject()->getTipoCategoriaRootCategoriaPaiObject()->nome == TIPO_CATEGORIA_FORMULARIO) and ($formularioObject->getCategoriaObject()->getRootCategoriaPaiObject()->nome != FORMULARIO_SUB_FORMULARIO))
				$arrayReturn[] = $formularioObject;
		}

		// retornando array de objetos formulario
		return $arrayReturn;
	}
}