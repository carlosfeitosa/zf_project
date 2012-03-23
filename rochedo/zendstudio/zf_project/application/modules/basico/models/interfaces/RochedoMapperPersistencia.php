<?php
/**
 * 
 * Interface para os métodos genéricos de persistencia
 * 
 * @author Igor Pinho Costa Souza (igor.pinho.souza@rochedoframework.com)
 *
 */
interface Basico_InterfaceMapper_RochedoMapperPersistencia
{
    /**
     * Save a Model entry
     * 
     * @param Model $object
     */
    public function save(Object $object);

	/**
	* Delete a Model entry
	* 
	* @param Model $object
	*/
    public function delete(Object $object);
}