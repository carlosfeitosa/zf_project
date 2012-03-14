<?php
/**
 * 
 * Interface para os métodos genéricos setDbTable e getDbTable
 * 
 * @author Igor Pinho Costa Souza (igor.pinho.souza@rochedoframework.com)
 *
 */
interface Interface_RochedoMapperGeneric {
	
	/**
     * Specify Zend_Db_Table instance to use for data operations
     * 
     * @param  Zend_Db_Table_Abstract $dbTable
     *  
     * @return ModelMapper
     */
	public function setDbTable($dbTable);
	
    /**
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads Basico_Model_DbTable if no instance registered
     * 
     * @param String $nomeModelo
     * 
     * @return Zend_Db_Table_Abstract
     */
	public function getDbTable($nomeModelo);
}