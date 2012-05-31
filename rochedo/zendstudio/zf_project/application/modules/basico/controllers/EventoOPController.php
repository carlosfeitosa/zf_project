<?php
/**
 * Controlador Evento
 * 
 * Responsável pelas mascaras do sistema
 * 
 * @author João Vasconcelos (joao.vasconcelos@rochedoproject.com)
 * 
 * @uses Basico_Model_Evento
 * 
 * @since 21/03/2011
 */
class Basico_OPController_EventoOPController extends Basico_AbstractController_RochedoPersistentOPController
{
	/**
	 * 
	 * @var Basico_OPController_EventoOPController
	 */
	private static $_singleton;

	/**
	 * 
	 * @var Basico_Model_Evento
	 */
	protected $_model;
	
	/**
	 * Nome da tabela basico.evento
	 * 
	 * @var String
	 */
	const nomeTabelaModelo  = 'basico.evento';

	/**
	 * Nome do campo id da tabela basico.evento
	 * 
	 * @var Array
	 */
	const nomeCampoIdModelo = 'id';

	/**
	 * Construtor do Controlador Basico_OPController_EventoOPController
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// chamando construtor da classe pai
		parent::__construct();
	}

	/**
	 * Inicializacao do controlador Basico_OPController_EventoOPController
	 * 
	 * @return void
	 */
	protected function _init()
	{
		// chamando inicializacao da classe pai
		parent::_init();
		
		return;
	}
	
	/**
	 * Inicializa os controladores utilizados pelo controlador
	 * 
	 * (non-PHPdoc)
	 * @see Basico_AbstractController_RochedoPersistentOPController::_initControllers()
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 09/05/2012
	 */
	protected function _initControllers()
	{
		return;
	}

	/**
	 * Retorna a instancia do controlador Mascara.
	 * 
	 * @return Basico_OPController_EventoOPController
	 */
	public static function getInstance()
	{
		// verificando singleton
		if (self::$_singleton == null){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_EventoOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}
		
	/**
	 * Retorna um array onde a chave é o id do elemento e o valor é a mascara a ser aplicada
	 * 
	 * @param String $nomeModulo
	 * @param String $nomeForm
	 * 
	 * @return Array|false
	 */
	public static function retornaArrayEventosElementosPorNomeFormularioViaSQL($nomeModulo, $nomeForm)
	{
		// montando query para recuperacao de elementos com mascara por nomeForm
		$sql = "SELECT f.form_name,  fe.element_name, m.mascara
				FROM basico.formulario f
				LEFT JOIN basico_formulario.assoccl_modulo mf ON (f.id = mf.id_formulario)
				LEFT JOIN basico.modulo mod ON (mf.id_modulo = mod.id)
				LEFT JOIN basico_formulario.assoccl_elemento ffe ON (f.id = ffe.id_formulario)
				LEFT JOIN basico_formulario.elemento fe ON (ffe.id_formulario_elemento = fe.id)
				LEFT JOIN basico_form_assoccl_elemento.assoccl_evento fem ON (fem.id_formulario_elemento = fe.id)
				LEFT JOIN basico.evento m ON (m.id = fem.id_mascara)
				WHERE f.nome = '{$nomeForm}'
				AND mod.nome = '{$nomeModulo}'
				AND evento IS NOT NULL";
		
		// executando a query
		$result = Basico_OPController_DBUtilOPController::retornaArraySQLQuery($sql);
		
		// inicializando array do resultado
		$arrayResultado = array();
		
		// montando array de resultado
		foreach ($result as $row) {
			$arrayResultado[$row['form_name'] . "-" . ucfirst(strtolower($nomeModulo)) . $row['form_name'] . ucfirst($row['element_name'])] = $row['evento']; 
		}
		
		if (count($arrayResultado) > 0)
			return $arrayResultado;
		else
			return false;
	}

}