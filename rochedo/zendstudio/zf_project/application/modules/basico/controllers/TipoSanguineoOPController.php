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
		// recuperando obj tipoSanguineo
		$objTipoSanguineo = self::retornaNovoObjTipoSanguineo();
		// recuperando todos os tipos sanguineos
		$objTipoSanguineo = $objTipoSanguineo->fetchAll();
		
		// adicionando opção em branco
		$arrayResult = array('' => '');
		
		if (count($objTipoSanguineo) > 0) {
			foreach ($objTipoSanguineo as $tipoSanguineo) {
				$arrayResult[$tipoSanguineo->id] = str_replace(TAG_SELECT_OPTION_NAO_DESEJO_INFORMAR, Basico_OPController_TradutorOPController::retornaTraducaoViaSQL("SELECT_OPTION_NAO_DESEJO_INFORMAR") ,$tipoSanguineo->tipoSanguineo);
			}
			
			return $arrayResult;
		}
		   
	}
}