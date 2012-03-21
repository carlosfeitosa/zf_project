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
	abstract protected function __construct();

	/**
	 * Inicializacao do controlador
	 * 
	 * Este metodo deve ser utilizado para inicializar o controlador.
	 */
	abstract protected function init();

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
	public function retornaNomeClassePorObjeto($objeto)
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
	 * @param String $nomeOPController
	 * 
	 * @return Object
	 */
	public function retornaNovoObjetoModeloPorNomeOPController($nomeOPController)
	{
		// recuperando o nome do modelo relacionado ao controlador
		$nomeObjetoModelo = Basico_OPController_UtilOPController::retornaNomeModeloOPControllerPorNomeOPController($nomeOPController);

		// verificando se a classe existe
		if (class_exists($nomeObjetoModelo, true))
			// retornando um modelo vazio
			return new $nomeObjetoModelo();

		return null;
	}

	/**
	 * Retorna o objeto atravez de seu id
	 * 
	 * Este metodo deve recuperar o objeto modelo relacionado ao controlador atravez do seu id e retornar o objeto populado.
	 * 
	 * @param Object $model
	 * @param Integer $idObjeto
	 * 
	 * @return Object
	 */
	public function retornaObjetoPorId($model, $idObjeto)
	{
		// retornando o objeto por id
		return Basico_OPController_PersistenceOPController::bdObjectFind($model, $idObjeto);
	}

	/**
	 * Retorna todos os objetos do modelo passado por parametro
	 * 
	 * @param Object $model
	 * 
	 * @return Array|null
	 */
	public function retornaTodosObjetos($model)
	{
		// retorna todos os objetos do modelo especificado
		return Basico_OPController_PersistenceOPController::bdObjectFetchAll($model);
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
	public function retornaObjetosPorParametros($model, $where=null, $order=null, $count=null, $offset=null)
	{
		// retorna todos os objetos do modelo especificado atraves dos parametros passados
		return Basico_OPController_PersistenceOPController::bdObjectFetchList($model, $where, $order, $count, $offset);
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
	abstract public function salvarObjeto($objeto, $versaoUpdate = null, $idPessoaPerfilCriador = null);

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
	abstract public function apagarObjeto($objeto, $forceCascade = false, $idPessoaPerfil = null);
}