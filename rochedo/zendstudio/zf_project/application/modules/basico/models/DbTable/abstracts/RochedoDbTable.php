<?php
/**
 * 
 * Classe abstrata para uso nas classes dbTables
 * 
 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
 * @since 09/04/2012
 * 
 */
abstract class Basico_AbstractDbTable_RochedoDbTable extends Zend_Db_Table_Abstract
{
	/**
	 * Habilita o profiler do dbTable
	 * 
	 * @return Boolean
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
 	 * @since 09/04/2012
	 */
	protected function habilitaProfiler()
	{
		
	}

	/**
	 * Desabilita o profiler do dbTable
	 * 
	 * @return Boolean
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
 	 * @since 09/04/2012
	 */
	protected function desabilitaProfiler()
	{
		
	}

	/**
	 * Recupera a última query executada
	 * 
	 * @param Boolean $desabilitaProfiler
	 * 
	 * @return String
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
 	 * @since 09/04/2012
	 */
	protected function recuperaUltimaQueryExecutada($desabilitaProfiler = true)
	{
		// verificando se é preciso desabilitar o profiler
		if ($desabilitaProfiler) {
			// desabilitando o profiler
			$this->desabilitaProfiler();
		}
	}
}