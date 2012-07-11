<?php
/**
 * Controlador FormularioFormularioElemento.
 * 
 * Responsável pelos FormularioFormularioElemento do sistema.
 *
 * @author João Vasconcelos (joao.vasconcelos@rochedoproject.com)
 * 
 * @uses Basico_Model_FormularioFormularioElemento
 * 
 * @since 21/03/2011
 * 
 */
class Basico_OPController_FormularioAssocclElementoOPController extends Basico_AbstractOPController_RochedoPersistentOPController
{
	/**
	 * Instância do Controlador Basico_OPController_FormularioAssocclElementoOPController
	 * @var Basico_OPController_FormularioAssocclElementoOPController
	 */
	protected static $_singleton;
	
	/**
	 * Instância do Modelo Basico_Model_FormularioAssocclElemento.
	 * @var Basico_Model_FormularioAssocclElemento
	 */
	protected $_model;
	
	/**
	 * Nome da tabela basico_formulario.assoccl_elemento
	 * 
	 * @var String
	 */
	const nomeTabelaModelo  = 'basico_formulario.assoccl_elemento';
	
	/**
	 * Nome do campo id da tabela basico_formulario.assoccl_elemento
	 * 
	 * @var Array
	 */
	const nomeCampoIdModelo = 'id';
	
	/**
	 * Construtor do Controlador Basico_OPController_FormularioAssocclElementoOPController.
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// chamando construtor da classe pai
		parent::__construct();
	}

	/**
	 * Inicializa o controlador Basico_OPController_FormularioAssocclElementoOPController
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
	 * Retorna instância do Controlador Basico_OPController_FormularioAssocclElementoOPController.
	 * 
	 * @return Basico_OPController_FormularioAssocclElementoOPController
	 */
	public static function getInstance()
	{
		// checando singleton
		if (self::$_singleton == null){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_FormularioAssocclElementoOPController();
		}
		// retornando instancia
		return self::$_singleton;
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
	public function retornaDecoratorObjectPorIdFormularioIdFormularioElementoOrdem($idFormulario, $idFormularioElemento, $ordem)
	{		
		// recuperando objeto
		$objsFormularioFormularioElemento = $this->_retornaObjetosPorParametros("id_formulario = {$idFormulario} and id_formulario_elemento = {$idFormularioElemento} and ordem = {$ordem}", null, 1, 0);

		// verificando o resultado da recuperacao do objeto
		if (!isset($objsFormularioFormularioElemento[0]) or (!$objsFormularioFormularioElemento[0]->decorator))
			return null;

		// retornando decorator
		return $objsFormularioFormularioElemento[0]->getDecoratorObject();
	}

	/**
	 * Retorna um array contendo as ordens encontradas na relacao formualrio_formulario_elemento
	 * 
	 * 
	 * @param Integer $idFormulario
	 * 
	 * @return Array
	 * 
	 * @deprecated
	 */
	public function retornaArrayOrdemPorIdFormulario($idFormulario)
	{
		// inicializando variaveis
		$arrayReturn = array();

		// recuperando objeto
		$objsFormularioFormularioElemento = $this->_retornaObjetosPorParametros("id_formulario = {$idFormulario}", "ordem");

		// verificando o resultado da recuperacao do objeto
		if (count($objsFormularioFormularioElemento) > 0) {
			foreach ($objsFormularioFormularioElemento as $objFormularioFormularioElemento) {
				$arrayReturn[] = $objFormularioFormularioElemento->ordem;
			}

			// verificando se o formulario eh persistente
			if ((GENERATE_PERSISTENT_FORM_WITH_HASH_ELEMENT) and (Basico_OPController_FormularioOPController::existePersistenciaPorIdFormularioViaSQL($idFormulario)))
				$arrayReturn[] = $objFormularioFormularioElemento->ordem + 1;
		}

		// retornando array com os resultados
		return $arrayReturn;
	}

	/**
	 * Retorna um array contendo as ordens encontradas na relacao formualrio_formulario_elemento, via SQL
	 * 
	 * @param Integer $idFormulario
	 * 
	 * @return Array
	 */
	public static function retornaArrayOrdemPorIdFormularioViaSQL($idFormulario)
	{
		// recuperando array com a ordem dos elementos de um formulario
		$arrayRetorno = Basico_OPController_PersistenceOPController::bdRetornaArrayDadosViaSQL(self::nomeTabelaModelo, array('ordem'), "id_formulario = {$idFormulario}", array('ordem'));

		// verificando se houve recuperacao de dados
		if (count($arrayRetorno)) {
			// inicializando variaveis
			$contador = 0;

			// loop para formatar o array resposta
			foreach ($arrayRetorno as $arrayOrdem) {
				// recuperando o valor e setado no array de respostas
				$arrayRetorno[$contador] = $arrayOrdem['ordem'];

				// incrementando contador
				$contador ++;
			}

			// verificando se o formulario eh persistente
			if ((GENERATE_PERSISTENT_FORM_WITH_HASH_ELEMENT) and (Basico_OPController_FormularioOPController::existePersistenciaPorIdFormularioViaSQL($idFormulario))) {
				// adicionando mais um elemento ao array
				$arrayRetorno[] = count($arrayRetorno) + 1;
			}
		}

		// retornando o array de resultados
		return $arrayRetorno;
	}

	/**
	 * Retorna se o elemento de um formulario, dentro de sua relacao com o proprio, eh requerido, via SQL
	 * 
	 * @param Integer $idFormulario
	 * @param Integer $idFormularioElemento
	 * 
	 * @return Boolean|null
	 */
	public static function retornaElementRequiredPorIdFormularioIdFormularioElementoViaSQL($idFormulario, $idFormularioElemento)
	{
		// verificando se foi passado o parametro do id do formulario elemento e o id do formulario
		if ((!$idFormulario) or (!$idFormularioElemento)) {
			return null;
		}

		// carregando o tipo boolean atraves do tipo de banco de dados
		$requiredTrue = Basico_OPController_DBUtilOPController::retornaBooleanDB(true, true);

		// recuperando array de resultado
		$arrayResultado = Basico_OPController_PersistenceOPController::bdRetornaArrayDadosViaSQL(self::nomeTabelaModelo, array('element_required'), "id_formulario = {$idFormulario} and id_formulario_elemento = {$idFormularioElemento} and element_required = {$requiredTrue}");

		// retornando se encontrou o elemento como requerido
		return (count($arrayResultado) > 0);
	}

	/**
	 * Retorna o elementName de um objeto FormularioFormularioElemento, via SQL
	 * 
	 * @param Integer $idFormulario
	 * @param Integer $idFormularioElemento
	 * @param Integer $ordem
	 * 
	 * @return String|null
	 */
	public static function retornaElementNamePorIdFormularioIdFormularioElementoOrdemViaSQL($idFormulario, $idFormularioElemento, $ordem)
	{
		// verificando se foi passado o parametro do id do formulario elemento e o id do formulario
		if ((!$idFormulario) or (!$idFormularioElemento) or (!$ordem)) {
			return null;
		}

		// recuperando array de resultado
		$arrayResultado = Basico_OPController_PersistenceOPController::bdRetornaArrayDadosViaSQL(self::nomeTabelaModelo, array('element_name'), "id_formulario = {$idFormulario} and id_formulario_elemento = {$idFormularioElemento} and ordem = {$ordem}");

		// verificando se houve retorno
		if (count($arrayResultado) > 0) {
			// retornando o elementName
			return $arrayResultado[0]['element_name'];
		} else {
			// retornando nulo
			return null;
		}
	}

	/**
	 * Retorna um array de objetos Basico_Model_FormularioFormularioElemento, que possuem GrupoFormularioElemento, relacionados 
	 * ao formulario passado como parametro
	 * 
	 * @param Basico_Model_Formulario $objFormulario
	 * 
	 * @return Array
	 */
	public function retornaObjetosFormularioFormularioElementoGrupoFormularioElemento(Basico_Model_Formulario $objFormulario)
	{
		// recuperando objetos
		$objsFormularioFormularioElemento = $this->_retornaObjetosPorParametros("id_formulario = {$objFormulario->id} and id_grupo_formulario_elemento is not null", array('ordem', 'id_grupo_formulario_elemento'));

		// retornando array de objetos
		return $objsFormularioFormularioElemento;
	}

	/**
	 * Retorna todos um array contendo todos os ids dos elementos associados a um conjunto de formulários, ordenado pelo atributo "ordem"
	 * 
	 * @param Array $ArrayIdsFormularios
	 * 
	 * @return Array|false - array contendo os ids dos elementos associados ou false caso não haja elementos
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 20/06/2012
	 */
	public function retornaArrayIdsElementosFormularioOrdenadoPorIdFormularioOrdemPorArrayIdsFormularios(array $arrayIdsFormularios)
	{
		// inicializando variáveis
		$arrayRetorno = array();

		// verificando se foi passado o parametro do id do formulario
		if (!count($arrayIdsFormularios)) {
			// limpando memória
			unset($arrayRetorno);

			// retornando falso
			return false;
		}

		// transformando o array em string
		$stringIdsFormularios = implode(',', $arrayIdsFormularios);

		// recuperando array de dados
		$arrayIdsElemenetos = $this->_retornaArrayDadosObjetosPorParametros("id_formulario in ({$stringIdsFormularios})", array('id_formulario','ordem'), null, null, array('idElemento'));

		// verificando o resultado da recuperação
		if (!count($arrayIdsElemenetos)) {
			// retornando falso
			return false;
		}

		// loop para montar array de resposta
		foreach ($arrayIdsElemenetos as $valor) {
			// adicionado elemento no array de resposta
			$arrayRetorno[] = $valor['idElemento'];

			// limpando memória
			unset($valor);
		}

		// limpando memória
		unset($arrayIdsElemenetos);

		// retornando array
		return $arrayRetorno;
	}

	/**
	 * Retorna todos um array contendo todos os ids dos elementos associados a um formulário, ordenado pelo atributo "ordem"
	 * 
	 * @param Integer $idFormulario
	 * 
	 * @return Array|false - array contendo os ids dos elementos associados ou false caso não haja elementos
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 20/06/2012
	 */
	public function retornaArrayIdsElementosFormularioOrdenadoPorOrdemPorIdFormulario($idFormulario)
	{
		// verificando se foi passado o parametro do id do formulario
		if ((!$idFormulario) or (!is_int($idFormulario))) {
			// retornando falso
			return false;
		}

		// retornando array
		return $this->retornaArrayIdsElementosFormularioOrdenadoPorIdFormularioOrdemPorArrayIdsFormularios(array($idFormulario));
	}
	
	/**
	 * Retorna um array contendo os dados dos elementos associados a um formulário, ordenado pelo atributo "ordem"
	 * 
	 * @param Int $idFormulario
	 * 
	 * @return Array|false - array contendo os dados dos elementos associados ou um array vazio caso nao existam elementos
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 10/07/2012
	 */
	public function retornaArrayDadosElementosFormularioOrdenadoPorIdFormularioOrdemPorIdFormulario($idFormulario)
	{
		// inicializando variáveis
		$arrayRetorno = array();

		// verificando se foi passado o parametro do id do formulario
		if (!is_int($idFormulario)) {
			// limpando memória
			unset($arrayRetorno);

			// retornando falso
			return false;
		}

		// recuperando array de dados
		$arrayDadosElementos = $this->_retornaArrayDadosObjetosPorParametros("id_formulario = {$idFormulario}", array('id_formulario','ordem'), null, null, array('idElemento', 'idAjuda', 'idGrupo', 'constanteTextualLabel', 'elementName', 'elementAttribs', 'elementValueDefault', 'elementReloadable', 'elementRequired', 'ordem'));

		// verificando o resultado da recuperação
		if (!count($arrayDadosElementos)) {
			// retornando falso
			return false;
		}

		// loop para montar array de resposta
		foreach ($arrayDadosElementos as $assocclElemento) {
			// adicionado elemento no array de resposta
			$arrayRetorno[$assocclElemento['idElemento']] = $assocclElemento;

			// limpando memória
			unset($assocclElemento);
		}

		// limpando memória
		unset($arrayDadosElementos);

		// retornando array
		return $arrayRetorno;
	}
}