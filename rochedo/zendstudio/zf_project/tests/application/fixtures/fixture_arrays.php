<?php

/** 
 * @author Adriano Duprat Lemos 
 * @desc Classe de Criação de Arrays para Teste
 */

class Fixture_Arrays {

	/**
	 * @var MaxLoopSize
	 */
	public $_maxLoopSize;
	
	/**
	 * @var FirstDayOfTimes
	 */
	protected $_firstDayOfTimes;
		
	/**
	 * @var ABigString
	 */
	protected $_aBigString;
	
	/**
	 * @var ABigInt
	 */
	protected $_aBigInt;
	
	/**
	 * @var ABigFloat
	 */
	protected $_aBigFloat;
	
	/**
	 * @var ABoolValue
	 */
	protected $_aBoolValue;
				
	
	function __construct($maxLoopSize, $iniString = '', $iniInt = 0, $iniFloat = 0.0, $iniBool = false) 
	{
		/**
		 * definição de valores iniciais para 
		 * preenchimento dos arrays
		 */
		$this->_maxLoopSize = (Int) $maxLoopSize;
        $this->_aBigString = (String) $iniString;
		$this->_aBigInt = (Int) $iniInt;
		$this->_aBigFloat = (Float) $iniFloat;
		$this->_aBoolValue = (Boolean) $iniBool;	
        $this->_firstDayOfTimes = new DateTime('01-01-0000');
        
	}		
		

	/**
	 * Retorna um Array com valores do tipo String
	 */
	public function mockArrayString()
	{
		for( $i = 0; $i < $this->_maxLoopSize; $i++ )
		{
			//adicionando strings
			$this->_aBigString .= $this->_aBigString; 
			$mockArrayString[$i] = $this->_aBigString;;
		}
		return $mockArrayString;
	}
	

	/**
	 * Retorna um Array com valores do tipo Inteiro
	 */
	public function mockArrayInt()
	{
		for( $i = 0; $i < $this->_maxLoopSize; $i++ )
		{
			//adicionando integer
			$this->_aBigInt += $this->_aBigInt; 
			$mockArrayInt[$i] = $this->_aBigInt;
		}
		return $mockArrayInt;
	}
	
	/**
	 * Retorna um Array com valores do tipo Float
	 */
	public function mockArrayFloat()
	{
		for( $i = 0; $i < $this->_maxLoopSize; $i++ )
		{
			//adicionando float
			$this->_aBigFloat += $this->_aBigFloat; 
			$mockArrayFloat[$i] = $this->_aBigFloat;
		}
		return $mockArrayFloat;
	}
	
	/**
	 * Retorna um Array com valores do tipo DateTime
	 */
	public function mockArrayDateTime()
	{
		for( $i = 0; $i < $this->_maxLoopSize; $i++ )
		{
			//adicionando datetime
			$this->_firstDayOfTimes->format('d/m/Y');
		    $this->_firstDayOfTimes->modify('+1 day');			
			$a_sum_of_date = $this->_firstDayOfTimes->format('d/m/Y');
			$mockArrayDateTime[$i] = $a_sum_of_date ;
		}
		return $mockArrayDateTime;
	}
	
	/**
	 * Retorna um Array com valores do tipo Boolean
	 */
	public function mockArrayBool()
	{
		for( $i = 0; $i < $this->_maxLoopSize; $i++ )
		{
			if( false === $this->_aBoolValue )
			{
				$this->_aBoolValue = (Boolean) true;
				$mockArrayBool[$i] =  $this->_aBoolValue;
			}
			else
			{
			    $this->_aBoolValue = (Boolean) false;
				$mockArrayBool[$i] = (Boolean) $this->_aBoolValue;
			}	
		}
		return $mockArrayBool;
	}

}		
	
?>