<?php
class Basico_OPController_TipoSanguineoOPController
{
	/**
	 * Retorna um novo objeto tipo sanguinio
	 */
	public function retornaNovoObjTipoSanguineo()
	{
		// retornando novo obj tipo sanguinio
		return new Basico_Model_TipoSanguineo();
	}
	
	/**
	 * Retorna um array com os tipos sanguinios pronto para adicionar a um elemento
	 * do tipo Select
	 */
	public static function retornaTipoSanguineoOptions()
	{
		// recuperando obj tipoSanguinio
		$objTipoSanguineo = self::retornaNovoObjTipoSanguineo();
		// recuperando todos os tipos sanguineos
		$objTipoSanguineo = $objTipoSanguineo->fetchAll();
		
		$arrayResult = array('' => '');
		
		if (count($objTipoSanguineo) > 0) {
			foreach ($objTipoSanguineo as $tipoSanguineo) {
				$arrayResult[$tipoSanguineo->id] = $tipoSanguineo->tipoSanguineo;
			}
			
			return $arrayResult;
		}
		   
	}
}