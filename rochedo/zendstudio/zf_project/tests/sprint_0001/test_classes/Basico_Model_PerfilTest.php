<?php

/**
 * TestCase de Classe
 * 
 * @testCase: Basico_Model_Perfil_Test
 * @class: Basico_Model_Perfil
 * @filesource: /rochedo_project/application/modules/basico/models/Perfil.php
 * @tester: Adriano Duprat Lemos
 * 
 */

require_once 'tests/application/includePathConfig.php';
require_once 'application/modules/basico/models/Perfil.php';
require_once 'application/consts/error_consts.php';

/**
 * Basico_Model_Perfil test case.
 */
class Basico_Model_Perfil_Test extends PHPUnit_Framework_TestCase {
	
	/**
	 * @var Basico_Model_Perfil
	 */
	private $Basico_Model_Perfil;
	
	/**
	 * Prepares the environment before running a test.
	 */
	protected function setUp() {
		parent::setUp ();
		// TODO Auto-generated Basico_Model_PerfilTest::setUp()
		$this->Basico_Model_Perfil = new Basico_Model_Perfil();	
	}
	
	/**
	 * Cleans up the environment after running a test.
	 */
	protected function tearDown() {
		// TODO Auto-generated Basico_Model_PerfilTest::tearDown()
		$this->Basico_Model_Perfil = null;
		parent::tearDown ();
	}
	
	/**
	 * Constructs the test case.
	 */
	public function __construct() {
		// TODO Auto-generated constructor
	}
	
	/**
	 * Tests Basico_Model_Perfil->__construct()
	 */
	public function test__construct() {
		// TODO Auto-generated Basico_Model_PerfilTest->test__construct()
		//$this->markTestIncomplete ( "__construct test not implemented" );

	    $this->isNull( $this->Basico_Model_Perfil->__construct() );
		
	}
	
	/**
	 * Tests Basico_Model_Perfil->__set()
	 */
	public function test__set() {
		// TODO Auto-generated Basico_Model_PerfilTest->test__set()
		
		//Array de Teste
		$arrayTest[0] = 'Foo Bar Baz';
		$arrayTest[1] = 10;
		$arrayTest[2] = 100.00;
		$arrayTest[3] = 400000000000000000000000;
		$arrayTest[4] = '15/12/2009';
		$arrayTest[5] = '12/15/2009';
		$arrayTest[6] = true;
		$arrayTest[7] = false;
		$arrayTest[8] = array('teste');		
		
		//Contar tamanho do array
	    $arrayCounter = count($arrayTest);   
		
	    			    
		for ($i=0;$i<$arrayCounter;$i++){
			
			$this->isNull($this->Basico_Model_Perfil->__set('options',$arrayTest[8]));		
		    $this->isNull($this->Basico_Model_Perfil->__set('nome',$arrayTest[$i]));
		    $this->isNull($this->Basico_Model_Perfil->__set('descricao',$arrayTest[$i]));
		    $this->isNull($this->Basico_Model_Perfil->__set('ativo',$arrayTest[$i]));
		    $this->isNull($this->Basico_Model_Perfil->__set('id',$arrayTest[$i]));
		    $this->isNull($this->Basico_Model_Perfil->__set('categoria',$arrayTest[$i]));		    
		
		}
	}
	
	/**
	 * Tests Basico_Model_Perfil->__get()
	 */
	public function test__get() {
		// TODO Auto-generated Basico_Model_PerfilTest->test__get()
		$this->markTestIncomplete ( "__get test not implemented" );		
		$this->Basico_Model_Perfil->__get(/* parameters */);
	
	}
	
	/**
	 * Tests Basico_Model_Perfil->setOptions()
	 */
	public function testSetOptions() {
		// TODO Auto-generated Basico_Model_PerfilTest->testSetOptions()
		$this->markTestIncomplete ( "setOptions test not implemented" );		
		$this->Basico_Model_Perfil->setOptions(/* parameters */);
	
	}
	
	/**
	 * Tests Basico_Model_Perfil->setNome()
	 */
	public function testSetNome() {
		// TODO Auto-generated Basico_Model_PerfilTest->testSetNome()
		$this->markTestIncomplete ( "setNome test not implemented" );		
		$this->Basico_Model_Perfil->setNome(/* parameters */);
	
	}
	
	/**
	 * Tests Basico_Model_Perfil->getNome()
	 */
	public function testGetNome() {
		// TODO Auto-generated Basico_Model_PerfilTest->testGetNome()
		$this->markTestIncomplete ( "getNome test not implemented" );		
		$this->Basico_Model_Perfil->getNome(/* parameters */);
	
	}
	
	/**
	 * Tests Basico_Model_Perfil->setDescricao()
	 */
	public function testSetDescricao() {
		// TODO Auto-generated Basico_Model_PerfilTest->testSetDescricao()
		$this->markTestIncomplete ( "setDescricao test not implemented" );
		$this->Basico_Model_Perfil->setDescricao(/* parameters */);
	
	}
	
	/**
	 * Tests Basico_Model_Perfil->getDescricao()
	 */
	public function testGetDescricao() {
		// TODO Auto-generated Basico_Model_PerfilTest->testGetDescricao()
		$this->markTestIncomplete ( "getDescricao test not implemented" );
		$this->Basico_Model_Perfil->getDescricao(/* parameters */);
	
	}
	
	/**
	 * Tests Basico_Model_Perfil->setAtivo()
	 */
	public function testSetAtivo() {
		// TODO Auto-generated Basico_Model_PerfilTest->testSetAtivo()
		$this->markTestIncomplete ( "setAtivo test not implemented" );
		$this->Basico_Model_Perfil->setAtivo(/* parameters */);
	
	}
	
	/**
	 * Tests Basico_Model_Perfil->getAtivo()
	 */
	public function testGetAtivo() {
		// TODO Auto-generated Basico_Model_PerfilTest->testGetAtivo()
		$this->markTestIncomplete ( "getAtivo test not implemented" );
		$this->Basico_Model_Perfil->getAtivo(/* parameters */);
	
	}
	
	/**
	 * Tests Basico_Model_Perfil->setCategoria()
	 */
	public function testSetCategoria() {
		// TODO Auto-generated Basico_Model_PerfilTest->testSetCategoria()
		$this->markTestIncomplete ( "setCategoria test not implemented" );
		$this->Basico_Model_Perfil->setCategoria(/* parameters */);
	
	}
	
	/**
	 * Tests Basico_Model_Perfil->getCategoria()
	 */
	public function testGetCategoria() {
		// TODO Auto-generated Basico_Model_PerfilTest->testGetCategoria()
		$this->markTestIncomplete ( "getCategoria test not implemented" );
		$this->Basico_Model_Perfil->getCategoria(/* parameters */);
	
	}
	
	/**
	 * Tests Basico_Model_Perfil->getCategoriaObject()
	 */
	public function testGetCategoriaObject() {
		// TODO Auto-generated Basico_Model_PerfilTest->testGetCategoriaObject()
		$this->markTestIncomplete ( "getCategoriaObject test not implemented" );
		$this->Basico_Model_Perfil->getCategoriaObject(/* parameters */);
	
	}
	
	/**
	 * Tests Basico_Model_Perfil->setId()
	 */
	public function testSetId() {
		// TODO Auto-generated Basico_Model_PerfilTest->testSetId()
		$this->markTestIncomplete ( "setId test not implemented" );
		$this->Basico_Model_Perfil->setId(/* parameters */);
	
	}
	
	/**
	 * Tests Basico_Model_Perfil->getId()
	 */
	public function testGetId() {
		// TODO Auto-generated Basico_Model_PerfilTest->testGetId()
		$this->markTestIncomplete ( "getId test not implemented" );
		
		$this->Basico_Model_Perfil->getId(/* parameters */);
	
	}
	
	/**
	 * Tests Basico_Model_Perfil->setMapper()
	 */
	public function testSetMapper() {
		// TODO Auto-generated Basico_Model_PerfilTest->testSetMapper()
		$this->markTestIncomplete ( "setMapper test not implemented" );
		$this->Basico_Model_Perfil->setMapper(/* parameters */);
	
	}
	
	/**
	 * Tests Basico_Model_Perfil->getMapper()
	 */
	public function testGetMapper() {
		// TODO Auto-generated Basico_Model_PerfilTest->testGetMapper()
		$this->markTestIncomplete ( "getMapper test not implemented" );
		$this->Basico_Model_Perfil->getMapper(/* parameters */);
	
	}
	
	/**
	 * Tests Basico_Model_Perfil->save()
	 */
	public function testSave() {
		// TODO Auto-generated Basico_Model_PerfilTest->testSave()
		$this->markTestIncomplete ( "save test not implemented" );
		$this->Basico_Model_Perfil->save(/* parameters */);
	
	}
	
	/**
	 * Tests Basico_Model_Perfil->delete()
	 */
	public function testDelete() {
		// TODO Auto-generated Basico_Model_PerfilTest->testDelete()
		$this->markTestIncomplete ( "delete test not implemented" );
		$this->Basico_Model_Perfil->delete(/* parameters */);
	
	}
	
	/**
	 * Tests Basico_Model_Perfil->find()
	 */
	public function testFind() {
		// TODO Auto-generated Basico_Model_PerfilTest->testFind()
		$this->markTestIncomplete ( "find test not implemented" );
		$this->Basico_Model_Perfil->find(/* parameters */);
	
	}
	
	/**
	 * Tests Basico_Model_Perfil->fetchAll()
	 */
	public function testFetchAll() {
		// TODO Auto-generated Basico_Model_PerfilTest->testFetchAll()
		$this->markTestIncomplete ( "fetchAll test not implemented" );
		$this->Basico_Model_Perfil->fetchAll(/* parameters */);
	
	}
	
	/**
	 * Tests Basico_Model_Perfil->fetchList()
	 */
	public function testFetchList() {
		// TODO Auto-generated Basico_Model_PerfilTest->testFetchList()
		$this->markTestIncomplete ( "fetchList test not implemented" );
		$this->Basico_Model_Perfil->fetchList(/* parameters */);
	
	}

}

