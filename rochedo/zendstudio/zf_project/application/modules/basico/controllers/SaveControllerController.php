<?php
/**
 * Controlador Save
 * 
 */
class Basico_SaveControllerController
{
	/**
	 * salva e versiona um objeto atraves do controlador/modelo
	 * @param controller|object $mixed
	 */
	static public function save($mixed)
	{
		// recuperando o numero da ultima versao
		$ultimaVersao = Basico_Model_CVC::retornaUltimaVersao($mixed, true);
		
		// versionando objeto
		$versaoVersionamento = Basico_Model_CVC::versionar($mixed);
		
		// verificando se a versao eh a mesma
		if ($ultimaVersao !== $versaoVersionamento) {
			$mixed->save();
			return true;
		}
		else {
			return false;
		}
	}
}