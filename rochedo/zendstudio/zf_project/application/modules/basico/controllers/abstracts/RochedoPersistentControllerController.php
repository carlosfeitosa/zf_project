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

abstract class Basico_Abstract_RochedoPersistentControllerController
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
	 * @return ObjectControllerController
	 */
	abstract public static function getInstance();

	/**
	 * Retorna um novo objeto modelo vazio
	 * 
	 * Este metodo deve retornar um modelo (relacionado ao controlador) vazio.
	 * 
	 * @return Object
	 */
	abstract public function retornaNovoObjetoModelo();

	/**
	 * Retorna o objeto atravez de seu id
	 * 
	 * Este metodo deve recuperar o objeto modelo relacionado ao controlador atravez do seu id e retornar o objeto populado.
	 * 
	 * @param Integer $idObjeto
	 * 
	 * @return Object
	 */
	abstract public function retornaObjetoPorId(Integer $idObjeto);

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
}