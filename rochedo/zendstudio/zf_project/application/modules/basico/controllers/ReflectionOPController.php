<?php
/**
 * Controlador Reflection
 * 
 * Este controlador é responsável pelas respostas de reflection do sistema
 * 
 * @package basico
 * 
 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
 * @since 08/06/2012
  */

class Basico_OPController_ReflectionOPController
{
	/**
	 * Retorna o reflection de um método de uma classe
	 * 
	 * @param String $nomeClasse - nome da classe
	 * @param String $nomeMetodo - nome do método
	 * 
	 * @return String|null
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 08/06/2012
	 */
	public static function retornaReflectionClassMethod($nomeClasse, $nomeMetodo)
	{
		// verificando se a classe existe
		if ((!class_exists($nomeClasse, true)) or (!method_exists($nomeClasse, $nomeMetodo))) {
			// retornando nulo
			return null;
		}

		// retornando reflection do método
		return Basico_OPController_UtilOPController::print_debug(ReflectionMethod::export($nomeClasse, $nomeMetodo, true), true, true);
	}

	/**
	 * Retorna o reflection de uma classe
	 * 
	 * @param String $nomeClasse - nome da classe
	 * 
	 * @return String|null
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 08/06/2012
	 */
	public static function retornaReflectionClass($nomeClasse)
	{
		// verificando se a classe existe
		if (!class_exists($nomeClasse, true)) {
			// retornando nulo
			return null;
		}

		// retornando reflection da classe
		return Basico_OPController_UtilOPController::print_debug(ReflectionClass::export($nomeClasse, true), true, true);
	}
}