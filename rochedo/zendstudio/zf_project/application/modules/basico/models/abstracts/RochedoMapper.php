<?php
/**
 * 
 * Classe abstrata para os métodos genéricos setDbTable e getDbTable
 * 
 * @author Igor Pinho Costa Souza (igor.pinho.souza@rochedoframework.com)
 *
 */
abstract class Basico_AbstractMapper_RochedoMapper implements Basico_InterfaceMapper_RochedoMapperGenerico
{
    /**
     * @var Zend_Db_Table_Abstract
     */
    protected $_dbTable;

    /**
     * Specify Zend_Db_Table instance to use for data operations
     * 
     * @param  Zend_Db_Table_Abstract $dbTable
     * 
     * @return ModelMapper
     */
    public function setDbTable($dbTable)
    {
    	// verificando se o dbTable já foi instanciando
    	if ((null === $this->_dbTable) and ($this->_dbTable instanceof Zend_Db_Table_Abstract)) {
    		// retornando instancia
    		return $this;
    	}

    	// verificando se o parametro é d tipo string
        if (is_string($dbTable)) {
        	// instanciando o dbTable
            $dbTable = new $dbTable();
        }
        // verificando se o dbTable instanciado é do tipo Zend_Db_Table_Abstract
        if (!$dbTable instanceof Zend_Db_Table_Abstract) {
            throw new Exception(MSG_ERRO_TABLE_DATA_GATEWAY_INVALIDO);
        }
        // setando o dbTable
        $this->_dbTable = $dbTable;

        return $this;
    }

    /**
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads Basico_Model_DbTable
     * 
     * @param String $nomeModelo
     * 
     * @return Zend_Db_Table_Abstract
     */
    public function getDbTable($dbTable)
    {
    	// verificando se o dbTable já foi instanciando
        if (null === $this->_dbTable) {
        	// instanciando o dbTable
            $this->setDbTable($dbTable);
        }

        // retornando o dbTable
        return $this->_dbTable;
    }
}