<?php

interface Interface_RochedoPersistentModeloDados
{
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_PessoaMapper instance if no mapper registered.
	* 
	* @return Basico_Model_PessoaMapper
	*/
	public function getMapper();
}