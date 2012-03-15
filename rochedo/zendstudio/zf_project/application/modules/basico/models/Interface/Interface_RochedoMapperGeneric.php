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