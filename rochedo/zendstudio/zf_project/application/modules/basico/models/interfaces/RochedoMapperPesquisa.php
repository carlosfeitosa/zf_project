<?php
/**
 * 
 * Interface para os métodos genéricos de pesquisa.
 * 
 * @author Igor Pinho Costa Souza (igor.pinho.souza@rochedoframework.com)
 *
 */
interface Interface_RochedoMapperPesquisa extends Interface_RochedoMapperGenerico
{
    /**
     * Find a Model entry by id
     * 
     * @param  int $id 
     * @param  Model $object 
     * 
     * @return void
     */
	public function find($id, $object);
	
	/**
	 * Fetch all Model entries
	 * 
	 * @return array
	 */
	public function fetchAll();
	
	/**
	 * Fetch all Model entries
	 * 
	 * @return array
	 */
	public function fetchList($where=null, $order=null, $count=null, $offset=null);
}