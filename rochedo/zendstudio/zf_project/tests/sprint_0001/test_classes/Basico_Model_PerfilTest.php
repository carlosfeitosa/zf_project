<?php

/**
 * TestCase de Classe
 * 
 * @test        Basico_Model_Perfil_Test
 * @class       Basico_Model_Perfil
 * @filesource  /rochedo_project/application/modules/basico/models/Perfil.php
 * @author      Adriano Duprat Lemos
 * 
 */

require_once 'tests/application/fixtures/fixture_arrays.php';
require_once 'tests/application/includePathConfig.php';
require_once 'application/consts/error_consts.php';
require_once 'application/modules/basico/models/Perfil.php';
require_once 'application/modules/basico/models/PerfilMapper.php';
require_once 'application/modules/basico/models/Categoria.php';
require_once 'application/modules/basico/models/CategoriaMapper.php';
//require_once 'Zend/Db/Table/Abstract.php';
//require_once 'Zend/Db/Adapter/Pdo/Dblib.php';
//require_once 'application/modules/basico/models/DbTable/Perfil.php';


/**
 * Basico_Model_Perfil test case.
 */
class Basico_Model_Perfil_Test extends PHPUnit_Framework_TestCase {
	
	/**
	 * @var Basico_Model_Perfil
	 */
	private $Basico_Model_Perfil;
	
	/**
	 * @var Fixture_Arrays
	 */
	private $Fixtures_Arrays;	
	
	/**
	 * Prepares the environment before running a test.
	 */
	protected function setUp() {
		
		//$this->bootstrap = array($this, 'appBootstrap');
        parent::setUp();    	
      
		$this->Basico_Model_Perfil = new Basico_Model_Perfil();
		$this->Fixtures_Arrays = new Fixture_Arrays(22,'666');
 
		
	}
	
	/**
	 * Cleans up the environment after running a test.
	 */
	protected function tearDown() {
		// TODO Auto-generated Basico_Model_PerfilTest::tearDown()
		
		$this->Basico_Model_Perfil = null;
		$this->Fixtures_Arrays = null;		
		
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
	    //$this->isNull( $this->Basico_Model_Perfil->__construct() );	
	}
	
	/**
	 * Tests Basico_Model_Perfil->__set()
	 */
	public function test__set() {
		
		// TODO Auto-generated Basico_Model_PerfilTest->test__set()			    
	    $Strings = $this->Fixtures_Arrays->mockArrayString();
	    $Integers = $this->Fixtures_Arrays->mockArrayInt();
	    $Float = $this->Fixtures_Arrays->mockArrayFloat();
	    $Bool = $this->Fixtures_Arrays->mockArrayBool();
	    $DateTime = $this->Fixtures_Arrays->mockArrayDateTime();
	    
		for ($i=0; $i < $this->Fixtures_Arrays->_maxLoopSize; $i++ ){
			
			//teste com Strings		
			$this->assertNull($this->Basico_Model_Perfil->__set('nome',$Strings[$i]));	
			$this->assertNull($this->Basico_Model_Perfil->__set('descricao',$Strings[$i]));
			$this->assertNull($this->Basico_Model_Perfil->__set('ativo',$Strings[$i]));
			$this->assertNull($this->Basico_Model_Perfil->__set('categoria',$Strings[$i]));			
			$this->assertNull($this->Basico_Model_Perfil->__set('id',$Strings[$i]));
			//$this->assertNull($this->Basico_Model_Perfil->__set('mapper',$Strings[$i]));
			
			//teste com Integers
			$this->assertNull($this->Basico_Model_Perfil->__set('nome',$Integers[$i]));
			$this->assertNull($this->Basico_Model_Perfil->__set('descricao',$Integers[$i]));
			$this->assertNull($this->Basico_Model_Perfil->__set('ativo',$Integers[$i]));
			$this->assertNull($this->Basico_Model_Perfil->__set('categoria',$Integers[$i]));
			$this->assertNull($this->Basico_Model_Perfil->__set('id',$Integers[$i]));
			//$this->assertNull($this->Basico_Model_Perfil->__set('mapper',$Integers[$i]));
			
			//teste com Floats
			$this->assertNull($this->Basico_Model_Perfil->__set('nome',$Float[$i]));
			$this->assertNull($this->Basico_Model_Perfil->__set('descricao',$Float[$i]));
			$this->assertNull($this->Basico_Model_Perfil->__set('ativo',$Float[$i]));
			$this->assertNull($this->Basico_Model_Perfil->__set('categoria',$Float[$i]));
			$this->assertNull($this->Basico_Model_Perfil->__set('id',$Float[$i]));
			//$this->assertNull($this->Basico_Model_Perfil->__set('mapper',$Float[$i]));
			
			//teste com Bools
			$this->assertNull($this->Basico_Model_Perfil->__set('nome',$Bool[$i]));
			$this->assertNull($this->Basico_Model_Perfil->__set('descricao',$Bool[$i]));
			$this->assertNull($this->Basico_Model_Perfil->__set('ativo',$Bool[$i]));
			$this->assertNull($this->Basico_Model_Perfil->__set('categoria',$Bool[$i]));
			$this->assertNull($this->Basico_Model_Perfil->__set('id',$Bool[$i]));
			//$this->assertNull($this->Basico_Model_Perfil->__set('mapper',$Bool[$i]));
			
			//teste com DateTime
			$this->assertNull($this->Basico_Model_Perfil->__set('nome',$DateTime[$i]));
			$this->assertNull($this->Basico_Model_Perfil->__set('descricao',$DateTime[$i]));
			$this->assertNull($this->Basico_Model_Perfil->__set('ativo',$DateTime[$i]));
			$this->assertNull($this->Basico_Model_Perfil->__set('categoria',$DateTime[$i]));
			$this->assertNull($this->Basico_Model_Perfil->__set('id',$DateTime[$i]));
			//$this->assertNull($this->Basico_Model_Perfil->__set('mapper',$DateTime[$i]));
			
		}	
	}
	
	/**
	 * Tests Basico_Model_Perfil->__get()
	 */
	public function test__get() {
		
		// TODO Auto-generated Basico_Model_PerfilTest->test__get()		
	        
	    $Strings = $this->Fixtures_Arrays->mockArrayString();
	    $Integers = $this->Fixtures_Arrays->mockArrayInt();
	    $Float = $this->Fixtures_Arrays->mockArrayFloat();
	    $Bool = $this->Fixtures_Arrays->mockArrayBool();
	    $DateTime = $this->Fixtures_Arrays->mockArrayDateTime();  
	
	    
		for ($i=0; $i < $this->Fixtures_Arrays->_maxLoopSize; $i++ ){
			//teste com Strings			
			$this->assertNull($this->Basico_Model_Perfil->__get('nome',$Strings[$i]));
			$this->assertNull($this->Basico_Model_Perfil->__get('descricao',$Strings[$i]));
			$this->assertNull($this->Basico_Model_Perfil->__get('ativo',$Strings[$i]));
			$this->assertNull($this->Basico_Model_Perfil->__get('categoria',$Strings[$i]));
			//$this->assertNull($this->Basico_Model_Perfil->__get('categoriaobject',$Strings[$i]));
			$this->assertNull($this->Basico_Model_Perfil->__get('id',$Strings[$i]));
			//$this->assertNull($this->Basico_Model_Perfil->__get('mapper',$Strings[$i]));
			
			//teste com Integers
			$this->assertNull($this->Basico_Model_Perfil->__get('nome',$Integers[$i]));
			$this->assertNull($this->Basico_Model_Perfil->__get('descricao',$Integers[$i]));
			$this->assertNull($this->Basico_Model_Perfil->__get('ativo',$Integers[$i]));
			$this->assertNull($this->Basico_Model_Perfil->__get('categoria',$Integers[$i]));
			//$this->assertNull($this->Basico_Model_Perfil->__get('categoriaobject',$Integers[$i]));
			$this->assertNull($this->Basico_Model_Perfil->__get('id',$Integers[$i]));
			//$this->assertNull($this->Basico_Model_Perfil->__get('mapper',$Integers[$i]));
			
			//teste com Floats
			$this->assertNull($this->Basico_Model_Perfil->__get('nome',$Float[$i]));
			$this->assertNull($this->Basico_Model_Perfil->__get('descricao',$Float[$i]));
			$this->assertNull($this->Basico_Model_Perfil->__get('ativo',$Float[$i]));
			$this->assertNull($this->Basico_Model_Perfil->__get('categoria',$Float[$i]));
			//$this->assertNull($this->Basico_Model_Perfil->__get('categoriaobject',$Float[$i]));
			$this->assertNull($this->Basico_Model_Perfil->__get('id',$Float[$i]));
			//$this->assertNull($this->Basico_Model_Perfil->__get('mapper',$Float[$i]));
			
			//teste com Bools
			$this->assertNull($this->Basico_Model_Perfil->__get('nome',$Bool[$i]));
			$this->assertNull($this->Basico_Model_Perfil->__get('descricao',$Bool[$i]));
			$this->assertNull($this->Basico_Model_Perfil->__get('ativo',$Bool[$i]));
			$this->assertNull($this->Basico_Model_Perfil->__get('categoria',$Bool[$i]));
			//$this->assertNull($this->Basico_Model_Perfil->__get('categoriaobject',$Bool[$i]));
			$this->assertNull($this->Basico_Model_Perfil->__get('id',$Bool[$i]));
			//$this->assertNull($this->Basico_Model_Perfil->__get('mapper',$Bool[$i]));
			
			//teste com DateTime
			$this->assertNull($this->Basico_Model_Perfil->__get('nome',$DateTime[$i]));
			$this->assertNull($this->Basico_Model_Perfil->__get('descricao',$DateTime[$i]));
			$this->assertNull($this->Basico_Model_Perfil->__get('ativo',$DateTime[$i]));
			$this->assertNull($this->Basico_Model_Perfil->__get('categoria',$DateTime[$i]));
			//$this->assertNull($this->Basico_Model_Perfil->__get('categoriaobject',$DateTime[$i]));
			$this->assertNull($this->Basico_Model_Perfil->__get('id',$DateTime[$i]));
			//$this->assertNull($this->Basico_Model_Perfil->__get('mapper',$DateTime[$i]));
			
		}	
	}
	
	/**
	 * Tests Basico_Model_Perfil->setOptions()
	 */
	public function testSetOptions() {
		// TODO Auto-generated Basico_Model_PerfilTest->testSetOptions()

		
	    $Strings = $this->Fixtures_Arrays->mockArrayString();
	    $Integers = $this->Fixtures_Arrays->mockArrayInt();
	    $Float = $this->Fixtures_Arrays->mockArrayFloat();
	    $Bool = $this->Fixtures_Arrays->mockArrayBool();
	    $DateTime = $this->Fixtures_Arrays->mockArrayDateTime();  
		
		
		//Checando STRINGS
		for($i=0; $i< $this->Fixtures_Arrays->_maxLoopSize; $i++)
		{		
			$mockArray['nome'] = $Strings[$i];
			$mockArray['mapper'] = $Strings[$i];
	        $mockArray['id'] = $Strings[$i];
	        $mockArray['descricao'] = $Strings[$i];
	        $mockArray['ativo'] = $Strings[$i];
	        $mockArray['categoria'] = $Strings[$i];
			
	        $mockObject = new Basico_Model_Perfil($mockArray);

	        $this->assertType('string', $mockObject->getNome());
		    $this->assertType('string', $mockObject->getDescricao());
	        $this->assertType('integer', $mockObject->getId());
	        $this->assertType('boolean', $mockObject->getAtivo());
	        //$this->assertType('resource',$mockObject->getMapper());
	        
		} 
		//Checando INTEGER
		for($i=0; $i< $this->Fixtures_Arrays->_maxLoopSize; $i++)
		{		
			$mockArray['nome'] = $Integers[$i];
			$mockArray['mapper'] = $Integers[$i];
	        $mockArray['id'] = $Integers[$i];
	        $mockArray['descricao'] = $Integers[$i];
	        $mockArray['ativo'] = $Integers[$i];
	        $mockArray['categoria'] = $Integers[$i];
			
	        $mockObject = new Basico_Model_Perfil($mockArray);

	        $this->assertType('string', $mockObject->getNome());
		    $this->assertType('string', $mockObject->getDescricao());
	        $this->assertType('integer', $mockObject->getId());
	        $this->assertType('boolean', $mockObject->getAtivo());
	        //$this->assertType('resource',$mockObject->getMapper());
	        
		} 
		
		//Checando FLOAT
		for($i=0; $i< $this->Fixtures_Arrays->_maxLoopSize; $i++)
		{		
			$mockArray['nome'] = $Float[$i];
			$mockArray['mapper'] = $Float[$i];
	        $mockArray['id'] = $Float[$i];
	        $mockArray['descricao'] = $Float[$i];
	        $mockArray['ativo'] = $Float[$i];
	        $mockArray['categoria'] = $Float[$i];
			
	        $mockObject = new Basico_Model_Perfil($mockArray);

	        $this->assertType('string', $mockObject->getNome());
		    $this->assertType('string', $mockObject->getDescricao());
	        $this->assertType('integer', $mockObject->getId());
	        $this->assertType('boolean', $mockObject->getAtivo());
	        //$this->assertType('resource',$mockObject->getMapper());
	        
		} 
		//Checando BOOLEAN
		for($i=0; $i< $this->Fixtures_Arrays->_maxLoopSize; $i++)
		{		
			$mockArray['nome'] = $Bool[$i];
			$mockArray['mapper'] = $Bool[$i];
	        $mockArray['id'] = $Bool[$i];
	        $mockArray['descricao'] = $Bool[$i];
	        $mockArray['ativo'] = $Bool[$i];
	        $mockArray['categoria'] = $Bool[$i];
			
	        $mockObject = new Basico_Model_Perfil($mockArray);

	        $this->assertType('string', $mockObject->getNome());
		    $this->assertType('string', $mockObject->getDescricao());
	        $this->assertType('integer', $mockObject->getId());
	        $this->assertType('boolean', $mockObject->getAtivo());
	        //$this->assertType('resource',$mockObject->getMapper());
	        
		}

		//Checando DateTime
		for($i=0; $i< $this->Fixtures_Arrays->_maxLoopSize; $i++)
		{		
			$mockArray['nome'] = $DateTime[$i];
			$mockArray['mapper'] = $DateTime[$i];
	        $mockArray['id'] = $DateTime[$i];
	        $mockArray['descricao'] = $DateTime[$i];
	        $mockArray['ativo'] = $DateTime[$i];
	        $mockArray['categoria'] = $DateTime[$i];
			
	        $mockObject = new Basico_Model_Perfil($mockArray);

	        $this->assertType('string', $mockObject->getNome());
		    $this->assertType('string', $mockObject->getDescricao());
	        $this->assertType('integer', $mockObject->getId());
	        $this->assertType('boolean', $mockObject->getAtivo());
	        //$this->assertType('resource',$mockObject->getMapper());
	        
		}
	}
	
	/**
	 * Tests Basico_Model_Perfil->setNome()
	 */
	public function testSetNome() {
		// TODO Auto-generated Basico_Model_PerfilTest->testSetNome()
				
	    $Strings = $this->Fixtures_Arrays->mockArrayString();
	    $Integers = $this->Fixtures_Arrays->mockArrayInt();
	    $Float = $this->Fixtures_Arrays->mockArrayFloat();
	    $Bool = $this->Fixtures_Arrays->mockArrayBool();
	    $DateTime = $this->Fixtures_Arrays->mockArrayDateTime();  
		

		for($i=0; $i< $this->Fixtures_Arrays->_maxLoopSize; $i++)
		{		
			var_dump($this->Basico_Model_Perfil->setNome($Strings[$i]));
			exit;
			
			$this->assertNull($this->Basico_Model_Perfil->setNome($Strings[$i]),"Erro ao setar String:$Strings[$i]");
			$this->assertNull($this->Basico_Model_Perfil->setNome($Integers[$i]),"Erro ao setar Integer:$Integers[$i]");
			$this->assertNull($this->Basico_Model_Perfil->setNome($Float[$i]),"Erro ao setar Float:$Float[$i]");
			$this->assertNull($this->Basico_Model_Perfil->setNome($Bool[$i]),"Erro ao setar Boolean:$Bool[$i]");
			$this->assertNull($this->Basico_Model_Perfil->setNome($DateTime[$i]),"Erro ao setar DateTime:$DateTime[$i]");
		}
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

