<?php
/**
 * 
 * Interface para os métodos genéricos de persistencia
 * 
 * @author Igor Pinho Costa Souza (igor.pinho.souza@rochedoframework.com)
 *
 */
interface Basico_InterfaceMapper_RochedoMapperPersistencia extends Basico_InterfaceMapper_RochedoMapperGenerico
{
    /**
     * Save a Model entry
     * 
     * @param Model $object
     */
    public function save($object);

	/**
	* Delete a Model entry
	* 
	* @param Model $object
	*/
    public function delete($object);
}