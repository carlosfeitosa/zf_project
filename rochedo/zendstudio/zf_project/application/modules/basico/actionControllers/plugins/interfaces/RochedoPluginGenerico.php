<?php
/**
 * Interface RochedoPluginGenerico
 * 
 * Interface para definicao dos metodos obrigatorios nos plugins genericos do sistema.
 * 
 * @author Joao Vasconcelos (joao.vasconcelos@rochedoframework.com)
 * @since 21/11/2012
 */
interface Basico_Controller_Plugin_Interface_RochedoPluginGenerico 
{
	/**
	 * Assinatura do metodo obrigatorio preDispatch()
	 * 
	 * @param Zend_Controller_Request_Abstract $request
	 * 
	 * @return void
	 * 
	 * @author Joao Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 21/11/2012
	 */
	public function preDispatch(Zend_Controller_Request_Abstract $request);
	
	/**
	 * Assinatura do metodo obrigatorio posDispatch()
	 * 
	 * @param Zend_Controller_Request_Abstract $request
	 * 
	 * @return void
	 * 
	 * @author Joao Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 21/11/2012
	 */
	public function postDispatch(Zend_Controller_Request_Abstract $request);
	
	/**
	 * Assinatura do metodo obrigatorio checaProcessamento()
	 * 
	 * @param Zend_Controller_Request_Abstract $request
	 * 
	 * @return void
	 * 
	 * @author Joao Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 21/11/2012
	 */
	public static function checaProcessamento(Zend_Controller_Request_Abstract $request);
	
	/**
	 * Assinatura do metodo obrigatorio processa()
	 * 
	 * @param Zend_Controller_Request_Abstract $request
	 * 
	 * @return void
	 * 
	 * @author Joao Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 21/11/2012
	 */
	public static function processa(Zend_Controller_Request_Abstract $request);
	
	
}