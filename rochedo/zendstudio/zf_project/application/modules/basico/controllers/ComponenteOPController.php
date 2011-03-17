<?php
/**
 * Controlador Componente
 * 
 * 
 * @uses Basico_Model_Componente
 */

class Basico_OPController_ComponenteOPController
{
	/**
	 * @var Basico_OPController_ComponenteOPController
	 */
	private static $_singleton;

	/**
	 * @var Basico_Model_Componente
	 */
	private $_componente;

    /**
     * Construtor do Controller
     * 
     * @return void
     */
	private function __construct()
	{
		// instanciando o modelo
		$this->$_componente = $this->retornaNovoObjetoComponente();

		// inicializando o controlador
		$this->init();
	}

	/**
	 * Inicializa o controlador Basico_OPController_ComponenteOPController
	 * 
	 * @return void
	 */
	private function init()
	{
		return;
	}

	/**
	 * Recupera a instancia do controlador Basico_OPController_ComponenteOPController
	 * 
	 * @return Basico_OPController_ComponenteOPController
	 */
	public static function getInstance()
	{
		// verificando singleton
		if(self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_ComponenteOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}

	/**
	 * Retorna um objeto componente vazio
	 * 
	 * @return Basico_Model_Componente
	 */
	public function retornaNovoObjetoComponente()
	{
		// retornando um modelo vazio
		return new Basico_Model_Componente();
	}

	/**
	 * Retorna array contendo os prefixos e paths dos componentes nao ZF que devem ser adicionados em forms (addPrefixpath)
	 * 
	 * @param Array $arrayNomesCategoriasComponentesNaoZF
	 * 
	 * @return Array|null
	 */
	public static function retornaArrayPrefixPathComponentesNaoZF(array $arrayNomesCategoriasComponentesNaoZF)
	{
		// inicializando variveis
		$arrayRetorno = array();

		// verificando se o array possui elementos
		if (count($arrayNomesCategoriasComponentesNaoZF) <= 0)
			return null;

		// loop para preencher array de resultados
		foreach ($arrayNomesCategoriasComponentesNaoZF as $nomeCategoriaComponenteNaoZF) {
			
			// manipulando string para recuperar o nome da biblioteca
			$nomeCategoriaComponenteNaoZF = ucfirst(strtolower(str_replace('COMPONENTE_', '', $nomeCategoriaComponenteNaoZF)));
			
			// preenchendo array de resultados
			$arrayRetorno[] = array(COMPONENTE_NAO_ZF_PREFIX => "{$nomeCategoriaComponenteNaoZF}_Form", COMPONENTE_NAO_ZF_PATH => "{$nomeCategoriaComponenteNaoZF}/Form");
		}

		// retornando array de resultados
		return $arrayRetorno;
	}
}