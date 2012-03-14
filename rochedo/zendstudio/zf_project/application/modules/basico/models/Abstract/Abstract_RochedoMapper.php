<?php
/**
 * 
 * Classe abstrata para os métodos genéricos setDbTable e getDbTable
 * 
 * @author Igor Pinho Costa Souza (igor.pinho.souza@rochedoframework.com)
 *
 */
abstract class Abstract_RochedoMapper {

    /**
     * @var Zend_Db_Table_Abstract
     */
    protected $_dbTable;

    /**
     * Specify Zend_Db_Table instance to use for data operations
     * 
     * @param  Zend_Db_Table_Abstract $dbTable
     * @return ModelMapper
     */
    public function setDbTable($dbTable)
    {
        if (is_string($dbTable)) {
            $dbTable = new $dbTable();
        }
        if (!$dbTable instanceof Zend_Db_Table_Abstract) {
            throw new Exception(MSG_ERRO_TABLE_DATA_GATEWAY_INVALIDO);
        }
        $this->_dbTable = $dbTable;
        return $this;
    }

    /**
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads Basico_Model_DbTable
     * 
     * @return Zend_Db_Table_Abstract
     */
    public function getDbTable($nomeModelo)
    {
        if (null === $this->_dbTable) {
            $this->setDbTable($nomeModelo);
        }
        return $this->_dbTable;
    }
}