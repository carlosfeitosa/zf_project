<?php

/**
 * Classe abstrata modelo de OPController
 * 
 * Todas as classes que implementam esta classe devem conter todos os metodos e atributos do pai
 * 
 * @author Carlos Feitosa (carlos.feitosa@rochedoproject.com)
 * @package Basico
 * @since 13/03/2011
 */

abstract class Basico_AbstractController_RochedoPersistentOPController
{
	/**
	 * Contrutor do controlador.
	 * 
	 * Neste metodo, deve-se instanciar o modelo $_model atraves do metodo retornaNovoObjetoModelo().
	 * Deve-se tambem chamar o metodo init(), que deve inicializar o controlador.
	 */
	protected function __construct()
	{
		// inicializando o controlador
		$this->init();
	}

	/**
	 * Inicializacao do controlador
	 * 
	 * Este metodo deve ser utilizado para inicializar o controlador.
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 25/04/2012
	 */
	protected function init()
	{
		// inicializando modelo do controlador
		$this->initModel();

		// inicializando controladores
		$this->initControllers();
	}

	/**
	 * Inicializacao do modelo do controlador
	 * 
	 * Este metodo deve ser utilizado para inicializar o modelo no controlador.
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 25/04/2012
	 */
	protected function initModel()
	{
		// instanciando o modelo do controlador
		$this->_model = $this->retornaNovoObjetoModelo();
	}

	/**
	 * Inicializacao dos controladores utilizados pelo controlador
	 * 
	 * Este metodo deve ser utilizado para inicializar os controladores utilizados pelo controlador
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 25/04/2012
	 */
	abstract protected function initControllers();

	/**
	 * Recupera a instancia do controlador
	 * 
	 * Este metodo eh o metodo responsavel pela implementacao do padrao SINGLETON.
	 * Deve verificar se o $_singleton foi inicializado, inicializa-o e retorna o $_singleton, nunca uma nova instancia do controlador.
	 * 
	 * @return Object OPController
	 */
	public static function getInstance()
	{
		return;
	}

	/**
	 * Retorna o nome do objeto atraves do objeto
	 * 
	 * @param Object $objeto
	 * 
	 * @return String
	 */
	protected function retornaNomeClassePorObjeto($objeto)
	{
		// verificando se o parametro eh um objeto
		Basico_OPController_UtilOPController::verificaVariavelRepresentaObjeto($objeto, true);

		// retornando o nome da classe
		return get_class($objeto);
	}

	/**
	 * Retorna um novo objeto modelo vazio
	 * 
	 * Este metodo deve retornar um modelo (relacionado ao controlador) vazio.
	 * 
	 * @return Object
	 */
	protected function retornaNovoObjetoModelo()
	{
		// recuperando o nome do modelo relacionado ao controlador
		$nomeObjetoModelo = Basico_OPController_UtilOPController::retornaNomeModeloOPControllerPorNomeOPController(get_class($this));

		// verificando se a classe existe
		if (class_exists($nomeObjetoModelo, true))
			// retornando um modelo vazio
			return new $nomeObjetoModelo();

		return null;
	}

	/**
	 * Retorna um array contendo os dados de um objeto
	 * 
	 * @param Integer $idObjeto - id do objeto que deseja recuperar
	 * @param Array $arrayAtributosRetorno - array com os atributos que deseja retornar no array de resultados
	 * 
	 * @return Array
	 * 
	 * @author Carlos Feitosa (carlos.feitosa)
	 * @since 25/04/2012
	 */
	protected function retornaArrayDadosObjetoPorId($idObjeto, array $arrayAtributosRetorno = array())
	{
		// recuperando o objeto
		$objeto = $this->retornaObjetoPorId($idObjeto);

		// recuperando array do objeto
		$arrayResultado = Basico_OPController_UtilOPController::objectToEncodedString($objeto, null, true);

		// limpando memoria
		unset($objeto);

		// filtrando chaves
		Basico_OPController_UtilOPController::retornaArrayFiltradoArrayChaves($arrayResultado, $arrayAtributosRetorno);

		// retornando objeto em array
		return $arrayResultado;
	}

	/**
	 * Retorna o objeto atravez de seu id
	 * 
	 * Este metodo deve recuperar o objeto modelo relacionado ao controlador atravez do seu id e retornar o objeto populado.
	 * 
	 * @param Integer $idObjeto
	 * 
	 * @return Object
	 */
	private function retornaObjetoPorId($idObjeto)
	{
		// retornando o objeto por id
		return Basico_OPController_PersistenceOPController::bdObjectFind($this->_model, $idObjeto);
	}

	/**
	 * Retorna um array contendo os dados de todos os objetos
	 * 
	 * @param Array $arrayAtributosRetorno - array com os atributos que deseja retornar no array de resultados
	 * 
	 * @return array
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 25/04/2012
	 */
	protected function retornaArrayDadosTodosObjetos(array $arrayAtributosRetorno = array())
	{
		// recuperando todos os objetos
		$arrayObjetos = $this->retornaTodosObjetos();

		// loop para transformar os objetos em array
		foreach ($arrayObjetos as $objeto) {
			// transformando o objeto em array
			$arrayResultado[] = Basico_OPController_UtilOPController::objectToEncodedString($objeto, null, true);

			// limpando memoria
			unset($objeto);
		}

		// limpando memoria
		unset($arrayObjetos);

		// verificando se foi passado um array de atributos para recuperação
		if (count($arrayAtributosRetorno)) {
			// loop para filtrar os dados dos objetos
			foreach ($arrayResultado as $chaveArrayResultados => $arrayValores) {
				// filtrando chaves
				Basico_OPController_UtilOPController::retornaArrayFiltradoArrayChaves($arrayValores, $arrayAtributosRetorno);

				// setando o array no array de resultados
				$arrayResultado[$chaveArrayResultados] = $arrayValores;

				// limpando memoria
				unset($chaveArrayResultados);
				unset($arrayValores);
			}
		}

		// retornando array de resultados
		return $arrayResultado;
	}

	/**
	 * Retorna todos os objetos do modelo passado por parametro
	 * 
	 * @param Object $model
	 * 
	 * @return Array|null
	 */
	private function retornaTodosObjetos()
	{
		// retorna todos os objetos do modelo especificado
		return Basico_OPController_PersistenceOPController::bdObjectFetchAll($this->_model);
	}

	/**
	 * Retorna um array contendo os dados de todos os objetos encontrados nas condições passadas
	 * 
	 * @param String $where - condição SQL ex: "id in (10,11)"
	 * @param String $order - campo ordenador
	 * @param Integer $count - limitador
	 * @param Integer $offset - retornar dados a partir da linha
	 * @param array $arrayAtributosRetorno - array com os atributos que deseja retornar no array de resultados
	 * 
	 * @return Array
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 25/04/2012
	 */
	protected function retornaArrayDadosObjetosPorParametros($where=null, $order=null, $count=null, $offset=null, array $arrayAtributosRetorno = array())
	{
		// recuperando todos os objetos
		$resultado = $this->retornaObjetosPorParametros($where, $order, $count, $offset);

		// verificando se o resultado eh um array
		if (is_array($resultado)) {
			// loop para transformar os objetos em array
			foreach ($resultado as $objeto) {
				// transformando o objeto em array
				$arrayResultado[] = Basico_OPController_UtilOPController::objectToEncodedString($objeto, null, true);
	
				// limpando memoria
				unset($objeto);
			}
		} else {
			// transformando o resultado em array
			$arrayResultado[] = Basico_OPController_UtilOPController::objectToEncodedString($resultado, null, true);
		}

		// limpando memoria
		unset($resultado);

		// verificando se foi passado um array de atributos para recuperação
		if (count($arrayAtributosRetorno)) {
			// loop para filtrar os dados dos objetos
			foreach ($arrayResultado as $chaveArrayResultados => $arrayValores) {
				// limpando chaves
				Basico_OPController_UtilOPController::retornaArrayFiltradoArrayChaves($arrayValores, $arrayAtributosRetorno);

				// setando o array no array de resultados
				$arrayResultado[$chaveArrayResultados] = $arrayValores;

				// limpando memoria
				unset ($chaveArrayResultados);
				unset($arrayValores);
			}
		}

		// retornando array de resultados
		return $arrayResultado;
	}

	/**
	 * Retorna todos os objetos de um modelo atraves dos parametros passados
	 * 
	 * @param Object $model
	 * @param String $where
	 * @param String $order
	 * @param Integer $count
	 * @param Integer $offset
	 * 
	 * @return Array|null
	 */
	protected function retornaObjetosPorParametros($where=null, $order=null, $count=null, $offset=null)
	{
		// recuperando todos os objetos do modelo especificado atraves dos parametros passados
		$arrayObjetos = Basico_OPController_PersistenceOPController::bdObjectFetchList($this->_model, $where, $order, $count, $offset);

		// verificando se so foi retornado um objeto
		if (1 === count($arrayObjetos)) {
			// retornando o objeto
			return $arrayObjetos[0];
		}

		// retornando array de objetos
		return $arrayObjetos;
	}

	/**
	 * Atualiza os dados de um objeto, atraves do id do objeto e um array de relacao entre atributos do objeto e valores
	 * 
	 * @param Integer $idObjeto - id do objeto que se deseja atualizar os dados
	 * @param Integer $versaoUpdate - versao atual do objeto
	 * @param Array $arrayAtributosValores - array de relacao entre atributos e valores que deseja atualizar
	 * @param Integer $idPessoaPerfilCriador - id da pessoa perfil responsavel pela atualizacao
	 * 
	 * @return Boolean
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 25/04/2012
	 */
	protected function atualizaObjeto($idObjeto, $versaoUpdate, array $arrayAtributosValores, $idPessoaAssocclPerfilUpdate)
	{
		// verificando se nao foi passado o id do objeto ou o array de atributos e valores carregados
		if ((!$idObjeto) or (count($arrayAtributosValores))) {
			// retornando falso
			return false;
		}

		// recuperando objeto
		$objeto = $this->_model->find($id);

		// verificando se o resultado nao foi carregado
		if (!is_object($objeto)) {
			// retornando falso
			return false;
		}

		// loop para atribuir os valores do objeto
		foreach ($arrayAtributosValores as $atributo => $valor) {
			// carregando os atributos do objeto
			$objeto->$chave = $valor;

			// limpando memoria
			unset($atributo);
			unset($valor);
		}

		// retornando o resultado de salvar o objeto
		$this->salvarObjeto($objeto, $versaoUpdate, $idPessoaAssocclPerfilUpdate);
	}

	/**
	 * Salva o objeto no banco de dados.
	 * 
	 * Este metodo deve verificar se trata-se de uma nova tupla ou atualizacao de registro para verificar a versao de update,
	 * carregar as categorias de log de insert ou update e verificar se existe o id da pessoa perfil que esta realizando a operacao para
	 * carregar o id da pessoa perfil sistema, se omisso.
	 * 
	 * Deve retornar um boolean indicando o sucesso na operacao.
	 * 
	 * @param Object $objeto
	 * @param Integer $versaoUpdate
	 * @param Integer $idPessoaPerfilCriador
	 * 
	 * @return Boolean
	 */
	abstract protected function salvarObjeto($objeto, $versaoUpdate = null, $idPessoaAssocclPerfilSave = null);

	/**
	 * Apaga o objeto do banco de dados
	 * 
	 * Este metodo deve apagar o objeto do banco de dados.
	 * Deve verificar o id da pessoa perfil que esta realizando a operacao para carregar o id da pessoa perfil se omisso.
	 * 
	 * Deve retornar um boolean indicando o sucesso na operacao.
	 * 
	 * @param Object $objeto
	 * @param Boolean $forceCascade
	 * @param Integer $idPessoaPerfilCriador
	 * 
	 * @return Boolean
	 */
	abstract protected function apagarObjeto($objeto, $forceCascade = false, $idPessoaAssocclPerfilDelete = null);
}