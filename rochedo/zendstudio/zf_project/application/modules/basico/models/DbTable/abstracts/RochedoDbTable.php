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
	public function habilitaProfiler()
	{
		// habilitando profiler
		$this->_db->getProfiler()->setEnabled(true);
	}

	/**
	 * Desabilita o profiler do dbTable
	 * 
	 * @return Boolean
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
 	 * @since 09/04/2012
	 */
	public function desabilitaProfiler()
	{
		// desabilitando profiler
		$this->_db->getProfiler()->setEnabled(false);
	}

	/**
	 * Recupera a última query executada
	 * 
	 * @param Boolean $desabilitaProfiler
	 * 
	 * @return Array
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
 	 * @since 09/04/2012
	 */
	public function recuperaUltimaQueryExecutada($desabilitaProfiler = true)
	{
		// recuperando ultima query executada
		$ultimaQuery = $this->_db->getProfiler()->getLastQueryProfile()->getQuery();
		$arrayParams = $this->_db->getProfiler()->getLastQueryProfile()->getQueryParams();

		// loop para setar os valores na query
		foreach ($arrayParams as $param) {
			// verificando se deve encapsular o parametro entre aspas
			if ((is_numeric($param)) or (is_bool($param))) {
				// setando o valor do parametro sem aspas
				$valorParametro = $param;
			} else if (is_null($param)) {
				// setando o valor do parametro para null
				$valorParametro = 'null';
			} else {
				// setando o valor do parametro entre aspas
				$valorParametro = "'" . $param . "'";
			}

			// setando o valor do parametro na query
			$ultimaQuery = substr_replace($ultimaQuery, $valorParametro, strpos($ultimaQuery, "?"), 1);
		}

		// verificando se é preciso desabilitar o profiler
		if ($desabilitaProfiler) {
			// desabilitando o profiler
			$this->desabilitaProfiler();
		}

		// retornando ultima query executada
		return $ultimaQuery;
	}
}