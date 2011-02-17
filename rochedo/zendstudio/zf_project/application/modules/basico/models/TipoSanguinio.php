<?php
/**
 * TipoSanguinio model
 * 
 * @subpackage Model
 */
class Basico_Model_TipoSanguinio
{
	const O_POSITIVO  = "O+";
	const A_POSITIVO  = "A+";
    const B_POSITIVO  = "B+";
    const AB_POSITIVO = "AB+";
    const O_NEGATIVO  = "O-";
    const A_NEGATIVO  = "A-";
    const B_NEGATIVO  = "B-";
    const AB_NEGATIVO = "AB-";
    const ZERO        = "0";
    
    /**
     * Retorna um array contendo todos os tipos sanguinios relacionados pela classe
     * @return Array
     */
    public static function retornaTiposSanguinios()
    {
    	// carregando array com tipos sanguinios
    	$arrayTiposSanguinios = array(
    	                              self::O_POSITIVO  => self::O_POSITIVO,
    	                              self::A_POSITIVO  => self::A_POSITIVO,
    	                              self::B_POSITIVO  => self::B_POSITIVO,
    	                              self::AB_POSITIVO => self::AB_POSITIVO,
    	                              self::O_NEGATIVO  => self::O_NEGATIVO,
    	                              self::A_NEGATIVO  => self::A_NEGATIVO,
    	                              self::B_NEGATIVO  => self::B_NEGATIVO,
    	                              self::AB_NEGATIVO => self::AB_NEGATIVO,
    	                              self::ZERO        => self::ZERO
    	
    	                             );

    	// retornando o array                             
    	return $arrayTiposSanguinios;
    	
    }
    
}


