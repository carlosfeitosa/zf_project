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
	 * @param ObjectControllerController $objetoControllerControllerFilho
	 * 
	 * @return ObjectControllerController
	 */
	public static function getInstance($objetoControllerControllerFilho)
	{
		// inicializando variaveis
		$objetoRetorno = null;

		// recuperando o nome do controlador
		$nomeControllerController = get_class($objetoControllerControllerFilho);
			
		// verificando se o controlador filho possui o atributo SINGLETON para utilizar este padrao
		if (property_exists($nomeControllerController, '_singleton')) {
			// checando singleton
			if($objetoControllerControllerFilho->_singleton == NULL){
				// instanciando pela primeira vez
				$objetoControllerControllerFilho->_singleton = new $nomeControllerController();

				// verificando se o controlador filho possui o atributo MODEL para instanciar um modelo relacionado ao controlador
				if (property_exists($nomeControllerController, '_model')) {
					// instanciando o modelo relacionado ao controlador
					$nomeControllerController->_model = $this->retornaNovoObjetoModelo($objetoControllerControllerFilho);
				}
			}
			// recuperando a instancia
			$objetoRetorno = $objetoControllerControllerFilho->_singleton; 
		} else
			// instanciando o controlador
			$objetoRetorno = new $nomeControllerController();

		// inicializando o controlador
		$nomeControllerController->init();

		// retornando o objeto
		return $objetoRetorno;
	}

	/**
	 * Retorna um novo objeto modelo vazio
	 * 
	 * Este metodo deve retornar um modelo (relacionado ao controlador) vazio.
	 * 
	 * @param ObjectControllerController $objetoControllerControllerFilho
	 * 
	 * @return Object
	 */
	public function retornaNovoObjetoModelo($objetoControllerControllerFilho)
	{
		// recuperando o nome do modelo relacionado ao controlador
		$nomeModelo = Basico_UtilControllerController::retornaNomeModeloControllerControllerPorObjetoControllerController($objetoControllerControllerFilho);

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
	 * @param ObjectControllerController $objetoControllerControllerFilho
	 * @param Integer $idObjeto
	 * 
	 * @return Object
	 */
	public function retornaObjetoPorId($objetoControllerControllerFilho, Integer $idObjeto)
	{
		// recuperando o nome do controlador
		$nomeControllerController = get_class($objetoControllerControllerFilho);

		// verificando se o controlador filho possui o atributo MODEL, que permite a busca do objeto por id e verifica se o modelo foi instanciado
		if ((property_exists($nomeControllerController, '_model')) and (Basico_UtilControllerController::verificaVariavelRepresentaObjeto($nomeControllerController->_model))) {
			// recuperando o objeto por id
			$nomeControllerController->_model->find($idObjeto);

			// retornando o objeto
			return $nomeControllerController->_model;
		}

		return null;
	}

	/**
	 * Prepara e seta o XML Rowinfo para o objeto
	 * 
	 * @param Object $objeto
	 * @param Boolean $utilizarUsuarioSistema
	 */
	final protected function prepareSetRowinfoXML($objeto, $utilizarUsuarioSistema = false)
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