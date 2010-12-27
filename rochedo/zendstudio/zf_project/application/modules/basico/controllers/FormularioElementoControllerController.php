<?php
/**
 * Controlador FormularioElemento.
 *
 */
class Basico_FormularioElementoControllerController
{
	/**
	 * Instância do Controlador FormularioElemento
	 * @var Basico_FormularioController
	 */
	static private $singleton;
	
	/**
	 * Instância do Modelo FormularioElemento.
	 * @var Basico_Model_FormularioElemento
	 */
	private $formularioElemento;
	
	/**
	 * Construtor do Controlador FormularioElemento.
	 * 
	 * @return void
	 */
	private function __construct()
	{
		$this->formularioElemento = new Basico_Model_FormularioElemento();
	}
	
	/**
	 * Retorna instância do Controlador FormularioElemento.
	 * 
	 * @return Basico_FormularioElementoController
	 */
	static public function init()
	{
		// checando singleton
		if(self::$singleton == NULL){
			
			self::$singleton = new Basico_FormularioElementoControllerController();
		}
		return self::$singleton;
	}
	
	/**
	 * Salva objeto no Banco de dados.
	 * 
	 * @param Basico_Model_FormularioElemento $novoFormularioElemento
	 * @param Integer|null $versaoUpdate
	 * @param Integer|null $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function salvarFormularioElemento($novoFormularioElemento, $versaoUpdate = null, $idPessoaPerfilCriador = null)
	{
		try {
			// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_UtilControllerController::retornaIdPessoaPerfilSistema();
	    	
	    	// salvando o objeto através do controlador Save
			Basico_SaveControllerController::save($novoFormularioElemento, $versaoUpdate, $idPessoaPerfilCriador, Basico_CategoriaControllerController::retornaIdCategoriaLogNovoFormularioElemento(), LOG_MSG_NOVO_FORMULARIO_ELEMENTO);

			// atualizando o objeto
			$this->formularioElemento = $novoFormularioElemento;

		} catch (Exception $e) {
			throw new Exception($e);
		}
	}

	/**
	 * Retorna o elemento hash
	 * 
	 * @return Basico_Model_FormularioElemento|null
	 */
	public static function retornaElementoHash()
	{
		// inicializando variaveis
		$nomeElemento = FORM_ELEMENT_HASH;
		// instanciando o modelo de formulario elemento
		$modelFormularioElemento = new Basico_Model_FormularioElemento();

		// recuperando array de resultados
		$arrayResultado = $modelFormularioElemento->fetchList("nome = '{$nomeElemento}'");

		// verificando se o elemento foi recuperado
		if (count($arrayResultado) > 0)
			// retornando elemento
			return $arrayResultado[0];

		return null;
	}
}