<?php

/**
 * Classe abstrata modelo de ControllerController
 * 
 * Todas as classes que implementam esta classe devem conter todos os metodos e atributos do pai
 * 
 * @author Carlos Feitosa (carlos.feitosa@rochedoproject.com)
 * @package Basico
 * @since 13/03/2011
 */

abstract class Basico_RochedoAbstractPersistentControllerController
{
	/**
	 * Singleton do ControllerController
	 * 
	 * Implementa o padrao singleton para o ControllerController.
	 * Deve ser implementado no metodo getInstance() do ControllerController, verificando se a variavel $_singleton foi inicializada.
	 * 
	 * @var Object
	 */
	private static $_singleton;

	/**
	 * Modelo relacionado a classe controladora.
	 * 
	 * Implementa o modelo relacionado ao controlador, como atributo da classe.
	 * Deve ser inicializado no __construct(), utilizando o metodo retornaNovoObjetoModelo().
	 * 
	 * @var Object
	 */
	private $_model;

	/**
	 * Contrutor do controlador.
	 * 
	 * Neste metodo, deve-se instanciar o modelo $_model atraves do metodo retornaNovoObjetoModelo().
	 * Deve-se tambem chamar o metodo init(), que deve inicializar o controlador.
	 */
	private function __construct()
	{
		// inicializando o modelo
		$this->_model = $this->retornaNovoObjetoModelo();

		// inicializando o controlador
		$this->init();
	}

	/**
	 * Inicializacao do controlador
	 * 
	 * Este metodo deve ser utilizado para inicializar o controlador.
	 */
	abstract private function init();

	/**
	 * Recupera a instancia do controlador
	 * 
	 * Este metodo eh o metodo responsavel pela implementacao do padrao SINGLETON.
	 * Deve verificar se o $_singleton foi inicializado, inicializa-o e retorna o $_singleton, nunca uma nova instancia do controlador.
	 * 
	 * @return ObjectControllerController
	 */
	public static function getInstance()
	{
		// checando singleton
		if(self::$_singleton == NULL){
			// recuperando o nome do controlador
			$nomeControllerController = get_class($this);
			// instanciando pela primeira vez
			self::$_singleton = new $nomeControllerController();
		}
		// retornando a instancia
		return self::$_singleton;
	}

	/**
	 * Retorna um novo objeto modelo vazio
	 * 
	 * Este metodo deve retornar um modelo (relacionado ao controlador) vazio.
	 * 
	 * @return Object
	 */
	public function retornaNovoObjetoModelo()
	{
		// recuperando o nome do modelo relacionado ao controlador
		$nomeModelo = Basico_UtilControllerController::retornaNomeModeloControllerControllerPorObjetoControllerController($this);

		// verificando se o modelo existe
		if (class_exists($nomeModelo))
			// retornando um modelo vazio
			return new $nomeModelo();

		return null;
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
	public function retornaObjetoPorId(Integer $idObjeto)
	{
		// verificando se o modelo foi instanciado
		if (Basico_UtilControllerController::verificaVariavelRepresentaObjeto($this->_model)) {
			// recuperando o objeto por id
			$this->_model->find($idObjeto);
	
			// retornando o objeto
			return $this->_model;
		}

		return null;
	}

	/**
	 * Prepara e seta o XML Rowinfo para o objeto
	 * 
	 * @param Object $objeto
	 * @param Boolean $utilizarUsuarioSistema
	 */
	final private function prepareSetRowinfoXML($objeto, $utilizarUsuarioSistema = false)
	{
		// verificando se existe o atributo de rowinfo no modelo da classe
		if (property_exists($objeto, ROWINFO_ATRIBUTE_NAME)) {
			// instanciando o controlador de rowinfo
			$rowinfoControllerController = Basico_RowInfoControllerController::getInstance();

			// preparando o XML
			$rowinfoControllerController->prepareXml($objeto, $utilizarUsuarioSistema);
			
			// setando o atributo rowinfo no objeto
			$objeto->ROWINFO_ATRIBUTE_NAME = $rowinfoControllerController->getXML();
		} else {
			// rowinfo nao encontrado para o objeto
			throw new Exception(MSG_ERRO_ROWINFO_NAO_ENCONTRADO);
		}
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
	 * @param Integer $idPessoaPerfilCriador
	 * 
	 * @return Boolean
	 */
	abstract public function apagarObjeto($objeto, $idPessoaPerfilCriador = null);
}