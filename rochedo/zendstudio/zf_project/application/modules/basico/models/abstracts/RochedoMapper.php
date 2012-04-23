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

	/**
     * Localiza uma tupla por id
     *
     * @param Array $arrayMapper
     * @param int $id 
     * @param Basico_AbstractModel_RochedoPersistentModeloGenerico $object
     * 
     * @return void
     * 
     * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
     * @since 19/04/2012
     */
    public function findAbstrato(array $arrayMapper, $id, Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
    {
    	// recuperando objetos
        $result = $this->getDbTable(str_replace('_Model_', '_Model_DbTable_', get_class($object)))->find($id);

        // verificando o resultado da recuperação
        if (0 == count($result)) {
            return;
        }
        // recuperando linha
        $row = $result->current();

        // limpando a memória
        unset($result);

        // loop para carregar os atributos do objeto
        foreach ($arrayMapper as $atributo => $campo) {
        	// recuperando método set do atributo
        	$metodoAtributo = 'set' . ucfirst($atributo);

        	// setando o valor no atributo
        	$object->$metodoAtributo($row->$campo);			
        }
        
        // limpando memória
        unset($atributo);
        unset($campo);
        unset($row);
    }

	/**
	 * Recupera todas as ocorrencias de um objeto
	 *
	 * @param array $arrayMapper
	 * @param String $nomeModelo
	 * @param String $where
	 * @param String $order
	 * @param Integer $count
	 * @param Integer $offset
	 * 
	 * @return array
	 * 
     * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
     * @since 19/04/2012
	 */
	public function fetchListAbstrato(array $arrayMapper, $nomeModelo, $where=null, $order=null, $count=null, $offset=null)
	{
		// recuperando todas as ocorrencias do objeto
		$resultSet = $this->getDbTable(str_replace('_Model_', '_Model_DbTable_', $nomeModelo))->fetchAll($where, $order, $count, $offset);

		// inicializando variáveis
		$entries = array();

		// loop para 
		foreach ($resultSet as $row) {
			// recuperando o modelo
			$entry = new $nomeModelo();

			// loop para carregar os atributos do objeto
			foreach ($arrayMapper as $atributo => $campo) {
				// carregando método de carga do atributo
				$metodoAtributo = 'set' . ucfirst($atributo);

				// carregando atributo
				$entry->$metodoAtributo($row->$campo);

				// limpando memória
				unset($metodoAtributo);
			}

			// carregando aray de resultados
			$entries[] = $entry;

			// limpando memória
			unset($atributo);
			unset($campo);
			unset($entry);
		}

		//limpando memória
		unset($resultSet);
		unset($row);

		// retornando array de objetos
		return $entries;
	}

    /**
     * Salva um objeto
     * 
     * @param array $arrayMapper
     * @param Basico_AbstractModel_RochedoPersistentModeloGenerico $object
     * 
     * @return void
     * 
     * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
     * @since 19/04/2012
     */
    public function saveAbstrato(array $arrayMapper, Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
    {
    	// inicializando variáveis
    	$data = array();

    	// loop para montar array de dados
    	foreach ($arrayMapper as $atributo => $campo) {
    		// recuperando metodo de recuperação do atributo
    		$metodoAtributo = 'get' . ucfirst($atributo);

    		// motando array de dados
    		$data[$campo] = $object->$metodoAtributo();

    		// limpando memória
    		unset($metodoAtributo);
    	}

    	// limpando memória
    	unset($atributo);
    	unset($campo);

    	// verificando se o objeto possui id setado
        if (null === ($id = $object->getId())) {
        	// tirando o id do array
            unset($data['id']);
            // inserindo os dados e recuperando o id do objeto
            $object->setId($this->getDbTable(str_replace('_Model_', '_Model_DbTable_', get_class($object)))->insert($data));
        } else {
        	// atualizando registro
            $this->getDbTable(str_replace('_Model_', '_Model_DbTable_', get_class($object)))->update($data, array('id = ?' => $id));
        }
    }

	/**
	* Apaga um objeto
	* 
	* @param array $arrayMapper
	* @param Basico_AbstractModel_RochedoPersistentModeloGenerico $object
	* 
	* @return void
	*/
	public function deleteAbstrato(array $arrayMapper, Basico_AbstractModel_RochedoPersistentModeloGenerico $object)
	{
		// apagando registro
    	$this->getDbTable(str_replace('_Model_', '_Model_DbTable_', get_class($object)))->delete(array('id = ?' => $object->id));
	}
}