<?php
/**
 * Controlador Formulario
 * 
 * Controlador responsavel pelos formularios o sistema
 * 
 * @package Basico_Model_Formulario
 * 
 * @author Carlos Feitosa (carlos.feitosa@rochedoproject.om)
 * 
 * @since 17/03/2011
 */
class Basico_OPController_FormularioOPController extends Basico_AbstractController_RochedoPersistentOPController
{
	/**
	 * Nome da tabela categoria
	 * 
	 * @var String
	 */
	const nomeTabelaModelo  = 'basico.formulario';

	/**
	 * Instância do Controlador Formulario
	 * @var Basico_OPController_FormularioOPController
	 */
	private static $_singleton;
	
	/**
	 * Instância do Modelo Formulario.
	 * @var Basico_Model_Formulario
	 */
	private $_model;
	
	/**
	 * Construtor do Controlador Basico_OPController_FormularioOPController.
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// instanciando o modelo
		$this->_model = $this->retornaNovoObjetoModeloPorNomeOPController($this->retornaNomeClassePorObjeto($this));

		// inicializando controlador
		$this->init();
	}

	/**
	 * Inicializa o controlador Basico_OPController_FormularioOPController
	 * 
	 * @return void
	 */
	protected function init()
	{
		return;
	}
	
	/**
	 * Retorna instância do Controlador Formulario.
	 * 
	 * @return Basico_OPController_FormularioOPController
	 */
	public static function getInstance()
	{
		// checando singleton
		if (self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_FormularioOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}
	
    /**
     * Retorna se existe formulario filho
     * 
     * @param Integer $idFormulario
     * 
     * @return Boolean
     * 
     * @deprecated
     */
    public function existeFormulariosFilhosPorIdFormulario($idFormulario)
    {
	   	// recuperando formularios filhos
    	$objsFormulariosFilho = $this->retornaObjetosPorParametros($this->_model, "id_formulario_pai = {$idFormulario}");

    	// retornando se existe(m) formulario(s) filho(s)
    	return (count($objsFormulariosFilho) > 0);
    }

    /**
     * Retorna se existem formularios filhos, via SQL
     *
     * @param Integer $idFormulario
     * 
     * @return Boolean
     */
    public static function existeFormulariosFilhosPorIdFormularioViaSQL($idFormulario)
    {
    	// recuperando array de formularios filhos
    	$arrayResultado = Basico_OPController_PersistenceOPController::bdRetornaArrayDadosViaSQL(self::nomeTabelaModelo, array('id'), "id_formulario_pai = {$idFormulario}");

    	// retornando se foi recuperado elementos
    	return (count($arrayResultado) > 0);
    }

    /**
     * Retorna se existe elementos
     * 
     * @param Integer $idFormulario
     * 
     * @return Boolean
     * 
     * @deprecated
     */
   	public function existeElementosPorIdFormulario($idFormulario)
   	{
   		// recuperando elementos do formulario
   		$objsFormularioElemento = Basico_OPController_PersistenceOPController::bdObjectFind($this->_model, $idFormulario)->getFormularioElementosObjects();

        // retornando se existe(m) elemento(s)
        return (count($objsFormularioElemento) > 0);
   	}

   	/**
   	 * Retorna se existe elementos, via SQL
   	 * 
   	 * @param Integer $idFormulario
   	 * 
   	 * @return Boolean
   	 */
   	public static function existeElementosPorIdFormularioViaSQL($idFormulario)
   	{
   		// recuperando elementos de um formulario
   		$arrayResultado = Basico_OPController_PersistenceOPController::bdRetornaArrayDadosViaSQL('basico_formulario.assoccl_elemento', array('id'), "id_formulario = {$idFormulario}");

   		// retornando se foi recuperado elementos
   		return (count($arrayResultado) > 0);
   	}

   	/**
	 * Salva o objeto formulario no banco de dados
	 * 
	 * (non-PHPdoc)
	 * @see Basico_Abstract_RochedoPersistentOPController::salvarObjeto()
	 * 
	 * @param Basico_Model_Formulario $objeto
	 * @param Integer $versaoUpdate
	 * @param Integer $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function salvarObjeto($objeto, $versaoUpdate = null, $idPessoaPerfilCriador = null)
	{
		// verificando se o objeto passado eh da instancia esperada
		Basico_OPController_UtilOPController::verificaVariavelRepresentaInstancia($objeto, 'Basico_Model_Formulario', true);

	    try {
    		// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_OPController_PessoaAssocclPerfilOPController::retornaIdPessoaPerfilSistemaViaSQL();

	    	// verificando se trata-se de uma nova tupla ou atualizacao
	    	if ($objeto->id != NULL) {
	    		// carregando informacoes de log de atualizacao de registro
	    		$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_UPDATE_FORMULARIO, true);
	    		$mensagemLog    = LOG_MSG_UPDATE_FORMULARIO;
	    	} else {
	    		// carregando informacoes de log de novo registro
	    		$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_NOVO_FORMULARIO, true);
	    		$mensagemLog    = LOG_MSG_NOVO_FORMULARIO;
	    	}

			// salvando o objeto através do controlador Save
	    	Basico_OPController_PersistenceOPController::bdSave($objeto, $versaoUpdate, $idPessoaPerfilCriador, $idCategoriaLog, $mensagemLog);

	    	// atualizando o objeto
    		$this->_model = $objeto;

    	} catch (Exception $e) {

    		throw new Exception($e);
    	}
	}
		

	/**
	 * Apaga o objeto dados pessoas perfis do banco de dados
	 * 
	 * (non-PHPdoc)
	 * @see Basico_Abstract_RochedoPersistentOPController::apagarObjeto()
	 * 
	 * @param Basico_Model_DadosPessoasPerfis $objeto
	 * @param Boolean $forceCascade
	 * @param Integer $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function apagarObjeto($objeto, $forceCascade = false, $idPessoaPerfilCriador = null)
	{
		// verificando se o objeto passado eh da instancia esperada
		Basico_OPController_UtilOPController::verificaVariavelRepresentaInstancia($objeto, 'Basico_Model_Formulario', true);

		try {
			// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_OPController_PessoaAssocclPerfilOPController::retornaIdPessoaPerfilSistemaViaSQL();

	    	// recuperando informacoes de log
	    	$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_DELETE_FORMULARIO, true);
	    	$mensagemLog    = LOG_MSG_DELETE_FORMULARIO;

	    	// apagando o objeto do bando de dados
	    	Basico_OPController_PersistenceOPController::bdDelete($objeto, $forceCascade, $idPessoaPerfilCriador, $idCategoriaLog, $mensagemLog);

		} catch (Exception $e) {
			throw new Exception($e);
		}
	}

	/**
	 * Retorna um array contendo todos os objetos de formularios existentes no sistema
	 * 
	 * @return Array
	 */
	public function retornaTodosObjsFormularios()
	{
		// inicalizando variaveis
		$arrayReturn = array();

		// recuperando todos os formularios do sistema, ordenados pelo nome
		$objsFormulario = $this->retornaObjetosPorParametros($this->_model, null, 'form_name');

		// loop para recuperar apenas os formulario que nao sao sub formularios
		foreach ($objsFormulario as $formularioObject) {
			// verificando se o formulario nao eh do tipo sub formulario		
			if (($formularioObject->getCategoriaObject()->getTipoCategoriaRootCategoriaPaiObject()->nome == TIPO_CATEGORIA_FORMULARIO) and ($formularioObject->getCategoriaObject()->getRootCategoriaPaiObject()->nome != FORMULARIO_SUB_FORMULARIO))
				$arrayReturn[] = $formularioObject;
		}

		// retornando array de objetos formulario
		return $arrayReturn;
	}

	/**
	 * Retorna se o formulario possui persistencia
	 * 
	 * @param Integer $idFormulario
	 * 
	 * @return Boolean
	 */
	public static function existePersistenciaPorIdFormularioViaSQL($idFormulario)
	{
		// montando a query que verifica se o formulario eh persistente
		$queryVerificaPersistenciaFormulario = "SELECT DISTINCT fe.element_reloadable
												FROM basico.formulario f
												LEFT JOIN formulario_formulario_elemento ffe ON (ffe.id_formulario = f.id)
												LEFT JOIN basico_formulario.elemento fe ON (ffe.id_formulario_elemento = fe.id)
												WHERE f.id = {$idFormulario}
												AND fe.element_reloadable = " . Basico_OPController_PersistenceOPController::bdRetornaBoolean(true, true);

		// executando query e recuperando o resultados em um array
		$arrayResultados = Basico_OPController_PersistenceOPController::bdRetornaArraySQLQuery($queryVerificaPersistenciaFormulario);

		// retornando o resultado
		return (count($arrayResultados) > 0);
	}

	/**
	 * Retorna o action de um formulario cujo nome e categoria foram passados por parametro
	 * 
	 * @param String $nomeFormulario
	 * @param Integer $idCategoria
	 * 
	 * @return String|null
	 */
	public function retornaActionFormularioPorNomeFormularioIdCategoria($nomeFormulario, $idCategoria)
	{
		// verificando se foi passado o nome do formulario e sua categoria
		if ((!$nomeFormulario) and (!$idCategoria))
			return null;

		// recuperando o formulario
		$objsFormulario = $this->retornaObjetosPorParametros($this->_model, "nome = '{$nomeFormulario}' and id_categoria = {$idCategoria}", null, 1, 0);

		// verificando se o formulario foi recuperado
		if (isset($objsFormulario[0])) {
			// retornando o action do formulario
			return $objsFormulario[0]->formAction;
		}

		return null;
	}

	/**
	 * Retorna um array contendo o nome da categoria de include e a uri para o include
	 * 
	 * @param String $nomeFormulario
	 * 
	 * @return Array
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 03/04/2012
	 */
	public static function retornaArrayIncludesFormulario($nomeFormulario, $nomeOutput)
	{
		// chamando metodo de recuperação de includes de formulários
		return Basico_OPController_IncludeOPController::retornaArrayIncludesFormulario($nomeFormulario, $nomeOutput);
	}

	/**
	 * Retorna um array contendo os caminhos para os arquivos css e js de um formulario
	 * 
	 * @param String $nomeForm
	 * 
	 * @return Array|null
	 * 
	 * @todo
	 */
	public static function retornaArraysTemplateStylesheetFullFilenameJavascriptFullFilenamePorNomeFormularioViaSQL($nomeForm)
	{
		// verificando se foi passado o nome do form
		if (!$nomeForm) {
			// retornando nulo
			return null;
		}
		/*
		// montando query que recupera informacoes sobre o template do formulario
		$queryRecuperaStylesheetFullFilenameEJavascriptFullFilename = "SELECT t.stylesheet_full_filename AS stylesheetfullfilename, t.javascript_full_filename AS javascriptfullfilename, o.nome AS output
																	   FROM basico.template t
																	   LEFT JOIN basico.output o ON (t.id_output = o.id)
																	   LEFT JOIN basico_formulario.assoccl_template tf ON (t.id = tf.id_template)
																	   LEFT JOIN basico.formulario f ON (tf.id_formulario = f.id)
																	   WHERE (t.stylesheet_full_filename IS NOT NULL OR t.javascript_full_filename IS NOT NULL)
																	   OR (t.id = tf.id_template)
																	   AND f.form_name = '{$nomeForm}'";

		// executando query e recuperando o resultados em um array
		$arrayResultadoQuery = Basico_OPController_PersistenceOPController::bdRetornaArraySQLQuery($queryRecuperaStylesheetFullFilenameEJavascriptFullFilename);

		// verificando se houve resultado na recuperacao
		if (count($arrayResultadoQuery)) {
			// inicializando variaveis
			$arrayRetorno = array();

			// loop para montar o resultado em formato de array
			foreach ($arrayResultadoQuery as $chave => $valor) {
				// guardando as informacoes no array de resultados
				$arrayRetorno[$chave] = $valor;
			}

			// retornando resultado
			return $arrayRetorno;
		}
		*/
		// retornando nulo
		return null;
	}
	
	/**
	 * Retorna se o formulario permite salvar rascunho 
	 * 
	 * @param String $formName
	 * 
	 * @return boolean 
	 */
	public function retornaPermiteRascunhoPorFormName($formName)
	{
		// checando o nome do formulario e condicionando query
		if ((isset($formName)))
			$condicaoSQL = "form_name = '{$formName}'";
	  
		// recuperando objeto formulario
		$objFormulario = $this->retornaObjetosPorParametros($this->_model, $condicaoSQL, null, 1, 0);
 		
	
		// verificando se o objeto foi recuperado
		if ($objFormulario[0]->permiteRascunho)
			// retornando o objeto
    	    return $objFormulario[0]->permiteRascunho;
    	    
    	return false;
	}
	
	/**
	 * Retorna o id da categoria do formulario pelo formName passado
	 * 
	 * @param String $formName
	 * @return String|false
	 */
	public function retornaIdCategoriaFormularioPorFormName($formName)
	{
		// recuperando o obj formulario pelo formName passado
		$objFormulario = $this->retornaObjetosPorParametros($this->_model, "form_name = '{$formName}'");
		
		// se retornou um objeto retorna o id da categoria
		if (count($objFormulario) > 0)
			return $objFormulario[0]->categoria;
			
		return false;
	}
}