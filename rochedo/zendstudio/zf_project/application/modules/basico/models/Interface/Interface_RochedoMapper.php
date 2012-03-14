<?php
/**
 * 
 * Interface para os métodos genéricos setDbTable e getDbTable
 * @author Igor Pinho Costa Souza (igor.pinho.souza@rochedoframework.com)
 *
 */
interface Interface_RochedoMapper {
	
	public function setDbTable($dbTable);
	
	public function getDbTable($nomeModelo);
}