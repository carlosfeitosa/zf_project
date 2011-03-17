<?php
/**
 * Controlador Acao Aplicacao
 * 
 * Controlador responsavel pelas acoes da aplicacao
 * 
 * @package Basico
 * 
 * @author Carlos Feitosa (carlos.feitosa@rochedoproject.om)
 * 
 * @since 17/03/2011
 */

class Basico_OPController_AcaoAplicacaoOPController extends Basico_Abstract_RochedoPersistentOPController
{
	/**
	 * @var Basico_OPController_AcaoAplicacaoOPController
	 */
	private static $_singleton;

	/**
	 * @var Basico_Model_AcaoAplicacao object
	 */
	private $_model;

	/**
	 * Construtor do Controlador Acao Aplicacao
	 * 
	 * @return void
	 */
	private function __construct()
	{
		// instanciando o modelo
		$this->_model = $this->retornaNovoObjetoModeloPorNomeOPController($this->retornaNomeClassePorObjeto($this));
	}
}