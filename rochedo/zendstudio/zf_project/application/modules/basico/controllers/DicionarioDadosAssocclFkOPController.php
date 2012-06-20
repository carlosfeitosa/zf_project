<?php
/**
 * Controlador DicionarioDadosAssocclFk
 * 
 * Responsável pelas DicionarioDadosAssocclFks do sistema.
 * 
 * @author João Vasconcelos (joao.vasconcelos@rochedoproject.com)
 * 
 * @uses Basico_Model_DicionarioDadosAssocclFkdafo
 * 
 * @since 23/04/2012
 */

class Basico_OPController_DicionarioDadosAssocclFkOPController extends Basico_AbstractOPController_RochedoPersistentOPController
{
	/**
	 * Nome da tabela DicionarioDadosAssocclFk
	 * 
	 * @var String
	 */
	const nomeTabelaModelo  = 'basico_dicionario_dados.assoccl_fk';

	/**
	 * Nome do campo id da tabela DicionarioDadosAssocclFk
	 * 
	 * @var Array
	 */
	const nomeCampoIdModelo = 'id';

	/**
	 *  
	 * @var Basico_OPController_DicionarioDadosAssocclFkOPController object
	 */
	protected static $_singleton;
	
	/**
	 * 
	 * @var Basico_Model_DicionarioDadosAssocclFk object
	 */
	protected $_model;
		
	/**
	 * Construtor do Controlador DicionarioDadosAssocclFk
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// chamando construtor da classe pai
		parent::__construct();
	}

	/**
	 * Inicializa o controlador Basico_OPController_DicionarioDadosAssocclFkOPController
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
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 25/04/2012
	 */
	protected function _initControllers()
	{
		return;
	}
	
	/**
	 * Recupera a instancia do controlador Basico_OPController_DicionarioDadosAssocclFkOPController
	 * 
	 * @return Basico_OPController_DicionarioDadosAssocclFkOPController
	 */
	public static function getInstance()
	{
		// verificando singleton
		if(self::$_singleton == null){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_DicionarioDadosAssocclFkOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}
	
	/**
	 * Retorna o id_assoc_field_fk
	 * 
	 * @param String $nomeSchema
	 * @param String $nomeTabela
	 * @param String $nomeCampo
	 * 
	 * @return array|null
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * 
	 * @since 25/05/2012
	 */
	public function retornaOptionsCampoFkPorNomeSchemaNomeTabelaNomeCampo($nomeSchema, $nomeTabela, $nomeCampo)
	{
		// verificando se os parametros foram passados
		if ($nomeSchema == null || $nomeTabela == null || $nomeCampo == null)
			throw new Exception("Parametros insuficientes para consulta de campo chave estrangeira.");
		
		// recuperando o id do schema
		$idSchema = Basico_OPController_DicionarioDadosSchemaOPController::getInstance()->retornaIdSchemaPorSchemaname($nomeSchema);
		// recuperando o id da tabela
		$idTabela = Basico_OPController_DicionarioDadosAssocTableOPController::getInstance()->retornaIdTablePorIdSchemaTablename($idSchema, $nomeTabela);
		// recuperando o id do campo
		$idCampo  = Basico_OPController_DicionarioDadosAssocFieldOPController::getInstance()->retornaIdFieldPorIdSchemaTablename($idTabela, $nomeCampo);
		
		// recuperando o campo fk default da tabela
		$idFkDefault = Basico_OPController_DicionarioDadosAssocTableOPController::getInstance()->retornaIdFkDefaultPorIdTable($idTabela);
		
		// verificando se utiliza o campo fk default da tabela
		if (null != $idFkDefault)
			// recuperando dados do campo fk default da tabela 
			$arrayDadosCampoFk = $this->_retornaArrayDadosObjetosPorParametros("id = {$idFkDefault}", null, null, null, array('idAssocFieldFk', 'metodoRecuperacao'));
		else
			// recuperando dados do campo fk
			$arrayDadosCampoFk = $this->_retornaArrayDadosObjetosPorParametros("id_assoc_table = {$idTabela} AND id_assoc_field = {$idCampo}", null, null, null, array('idAssocFieldFk', 'metodoRecuperacao'));
		
		// verificando se dados foram recuperados
		if (null != $arrayDadosCampoFk) {
			// recuperando o nome do campo fk
			$nomeCampoFk = Basico_OPController_DicionarioDadosAssocFieldOPController::getInstance()->retornaFieldnamePorIdField($arrayDadosCampoFk[0]['idAssocFieldFk']);
						
			// recuperando dados para carregamento dos options do campo fk
			$dadosOptionsCampoFk = Basico_OPController_PersistenceOPController::bdRetornaArrayDadosViaSQL($nomeSchema . "." . $nomeTabela, array($nomeCampo, $nomeCampoFk), null, array('id'));
		
			// inserindo opção vazia
			$arrayResultado = array('null' => '');
			
			// percorrendo os options para aplicar o metodo de recuperacao
			foreach ($dadosOptionsCampoFk as $option) {
				
				// verificando se o metodo de recuperacao existe para este campo fk
				if ($arrayDadosCampoFk[0]['metodoRecuperacao'] != "") {
					// tratando metodo de recuperacao
					$metodoRecuperacao = str_replace('@constanteTextual', $option[$nomeCampoFk], $arrayDadosCampoFk[0]['metodoRecuperacao']);
					// atribuindo retorno do metodo de recuperacao ao arrayResultado
					$arrayResultado[$option[$nomeCampo]] = Basico_OPController_UtilOPController::secureEval("return " . $metodoRecuperacao) . " (id = $option[$nomeCampo])";
				}else{
					// setando valor do campo fk no array resultado
					$arrayResultado[$option[$nomeCampo]] = $option[$nomeCampoFk];
				}
			}
			
			// retornando array
			return $arrayResultado;
		}
		
		return null;
	}
}