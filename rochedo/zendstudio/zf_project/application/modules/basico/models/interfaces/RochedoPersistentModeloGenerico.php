<?php

/**
 * Interface que deve ser implementada por modelos ou por outras interfaces
 * 
 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
 * 
 * @package Basico
 *
 * @since 21/03/2012
 * 
 */
Interface Basico_InterfaceModel_RochedoPersistentModeloGenerico
{
	/**
	* Get data mapper
	*
	* Declaração do metodo que deve ser implementado nos modelos genericos
	* 
	* @return void
	*/
	public function getMapper();
}