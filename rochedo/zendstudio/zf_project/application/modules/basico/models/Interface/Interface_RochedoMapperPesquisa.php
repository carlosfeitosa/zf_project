<?php

interface Interface_RochedoMapperPesquisa extends Interface_DbTable 
{

	public function find($id, Basico_Model_Pessoa $object);
	
	public function fetchAll();
	
	public function fetchList($where=null, $order=null, $count=null, $offset=null);
}