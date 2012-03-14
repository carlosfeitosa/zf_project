<?php
/**
 * 
 * Interface para os métodos genéricos de pesquisa.
 * @author Igor Pinho Costa Souza (igor.pinho.souza@rochedoframework.com)
 *
 */
interface Interface_RochedoMapperPesquisa extends Interface_RochedoMapper 
{

	public function find($id, Basico_Model_Pessoa $object);
	
	public function fetchAll();
	
	public function fetchList($where=null, $order=null, $count=null, $offset=null);
}