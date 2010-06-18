<?php

/**
 * @author Seva Lapsha
 * @copyright Zend Technologies Ltd.
 * @license Commercial
 * 
 *  Para que o PHPUnit funcione corretamente, é necessário que você substitua o arquivo encontrado na pasta
 *  ZEND STUDIO - 7.1.0/plugins/com.zend.php.phpunit_7.1.0.v20091120-0900/resources 
 *  por este arquivo.
 */

class ZendPHPUnitErrorHandler {

    private static $ZendPHPUnitErrorHandler;

	/**
	 * @return ZendPHPUnitErrorHandler
	 */
	public static function getInstance() {
		if(self::$ZendPHPUnitErrorHandler === null) {
			self::$ZendPHPUnitErrorHandler = new self();
		}
		return self::$ZendPHPUnitErrorHandler;
	}

	public function handle($errno, $errstr, $errfile, $errline) {
		if($errfile === __FILE__ || (stripos($errfile, dirname(dirname(__FILE__))) === 0 && $errno !== E_USER_NOTICE))
			return true;
		return false;
	}

	public function start() {
		set_error_handler(array (&$this, 'handle'));
	}

	public function stop() {
		restore_error_handler();
	}
}

ZendPHPUnitErrorHandler::getInstance()->start();

$GLOBALS['ZendPHPUnitTests'] = array (
/*
 * array (
 * 	'file' => '%file',
 * 	'type' => '%type',
 * 	'name' => '%name',
 * ),
 */
);

require_once $_SERVER['ZEND_PHPUNIT_TESTS_LOCATION'];

define('PHPUnit_MAIN_METHOD', '');

/**
 * Verifica��o de Preenchimento do Array $_SERVER[] no �ndice ZEND_PHPUNIT_LOCATION 
 */

if( null !== $_SERVER['ZEND_PHPUNIT_LOCATION'] )
    define( 'ZEND_PHPUNIT_LOCATION', PATH_SEPARATOR . $_SERVER['ZEND_PHPUNIT_LOCATION'] );
else
    define( 'ZEND_PHPUNIT_LOCATION', '' );

/**
 * Verifica��o de Preenchimento do Array $_SERVER[] no �ndice ZEND_PHPUNIT_PROJECT_LOCATION 
 */
    
if( null !== $_SERVER['ZEND_PHPUNIT_PROJECT_LOCATION'] )
    define( 'ZEND_PHPUNIT_PROJECT_LOCATION', PATH_SEPARATOR . $_SERVER['ZEND_PHPUNIT_PROJECT_LOCATION'] );
else
    define( 'ZEND_PHPUNIT_PROJECT_LOCATION', '' );
    
/**
 * Verifica��o de Preenchimento do Array $_SERVER[] no �ndice ZEND_PHPUNIT_PROJECT_LOCATION 
 */  
    
if( null !== $_SERVER['ZEND_PHPUNIT_CONTAINER_INCLUDE_PATH'] )
    define( 'ZEND_PHPUNIT_CONTAINER_INCLUDE_PATH', PATH_SEPARATOR . $_SERVER['ZEND_PHPUNIT_CONTAINER_INCLUDE_PATH'] );
else
    define( 'ZEND_PHPUNIT_CONTAINER_INCLUDE_PATH', '/tests/library' );
    
    
/**
 * Montagem do include_path da aplica��o(requerida pelo phpunit) 
 * � partir das constantes preenchidas pela verifica��o do array $_SERVER[]  
 */

set_include_path( 

      get_include_path()
    . ZEND_PHPUNIT_PROJECT_LOCATION
    . ZEND_PHPUNIT_CONTAINER_INCLUDE_PATH
    . ZEND_PHPUNIT_PROJECT_LOCATION         
    . ZEND_PHPUNIT_LOCATION
    
);
	
require_once 'PHPUnit/TextUI/TestRunner.php';

$cwd = getCwd();

foreach ($ZendPHPUnitTests as $test) {
	chDir(dirname($test['file']));
	require_once $test['file'];
	chDir(dirname($cwd));
}

class ZendPHPUnitSuite extends PHPUnit_Framework_TestSuite {

    public static function suite() {
		$suite = new self();
		$suite->setName(__CLASS__);
		foreach ($GLOBALS['ZendPHPUnitTests'] as $test)
			if ($test['type'] === 'suite') {
				$suite->addTest(call_user_func(array ($test['name'], 'suite')));
			} else $suite->addTestSuite($test['name']);
		return $suite;
	}
}

class ZendPHPUnitUserErrorException extends Exception {}

class ZendPHPUnitErrorHandlerTracer extends ZendPHPUnitErrorHandler {

    private static $ZendPHPUnitErrorHandlerTracer;
	/**
	 * @return ZendPHPUnitErrorHandlerTracer
	 */
	public static function getInstance() {
		if(self::$ZendPHPUnitErrorHandlerTracer === null) {
			self::$ZendPHPUnitErrorHandlerTracer = new self();
		}
		return self::$ZendPHPUnitErrorHandlerTracer;
	}

	public static $errorCodes = array (
		E_ERROR           => 'Error',
		E_WARNING         => 'Warning',
		E_PARSE           => 'Parsing Error',
		E_NOTICE          => 'Notice',
		E_CORE_ERROR      => 'Core Error',
		E_CORE_WARNING    => 'Core Warning',
		E_COMPILE_ERROR   => 'Compile Error',
		E_COMPILE_WARNING => 'Compile Warning',
		E_USER_ERROR      => 'User Error',
		E_USER_WARNING    => 'User Warning',
		E_USER_NOTICE     => 'User Notice',
		E_STRICT          => 'Runtime Notice',
	);

	protected $warnings;
	
	public function handle($errno, $errstr, $errfile, $errline) {
		parent::handle($errno, $errstr, $errfile, $errline);
		$warning = array (
			'code'    => isset (self::$errorCodes[$errno]) ?
				self::$errorCodes[$errno] :
				$errno,
			'message' => $errstr,
			'file'    => $errfile,
			'line'    => $errline,
			'trace'   => ZendPHPUnitFilter::filterTrace(debug_backtrace()),
			'time'    => PHPUnit_Util_Timer::current(),
		);
		$return = false;
		if (ZendPHPUnitFilter::justIsFiltered($errfile)) {
			$return = $warning['filtered'] = true;
		}
		if($errno === E_USER_ERROR) { // ignoring user abort
			throw new ZendPHPUnitUserErrorException($warning['message'], $errno);
		}
		$this->warnings[] = $warning;
		return $return;
	}

	public function start() {
		$this->warnings = array ();
		parent::start();
	}

	public function stop() {
		parent::stop();
		$return = $this->warnings;
		$this->warnings = array ();
		return $return;
	}
}

class ZendPHPUnitXmlLogger {
    
    private $out;
    /** @var DOMDocument */
    private $document;
    /** @var DOMElement */
    private $root;
    
    private $suitesStack = array();
    
    public function __construct($out) {
        $this->out = fopen($out, 'wt');
        $this->document = new DOMDocument('1.0', 'UTF-8');
        $this->document->formatOutput = true;
        $this->suitesStack[] = $this->document->createElement('testsuites');
        $this->document->appendChild($this->suitesStack[0]);
    }
    
    public function write($array) {
        if ($array['target'] == 'testsuite') {
            if($array['test']['filtered']) {
                return;
            }
            if($array['event'] == 'start') {
                $suite = $this->document->createElement('testsuite');
                $parentElement = $this->suitesStack[count($this->suitesStack)-1];
                foreach($array['test'] as $key => $value) {
                    if(is_scalar($value)) {
                        $suite->setAttribute($key, $value);
                    }
                }
                $suite->setAttribute('failures', 0);
                $suite->setAttribute('errors', 0);

                $packageInformation = PHPUnit_Util_Class::getPackageInformation(strtok( $array['test']['name'], '::' ));
                foreach ($packageInformation as $key=>$value) {
                    if($value && $key != 'fullPackage') {
                        $suite->setAttribute($key, $value);
                    }
                }
                $parentElement->appendChild($suite);
                $this->suitesStack[] = $suite;
            } else {
                array_pop($this->suitesStack);
            }
        } else {
            if($array['event'] != 'start') {
                $case = $this->document->createElement('testcase');
                $parentElement = $this->suitesStack[count($this->suitesStack)-1];
                $case->setAttribute('class', $parentElement->getAttribute('name'));
                foreach($array['test'] as $key => $value) {
                    if(is_scalar($value)) {
                        $case->setAttribute($key, $value);
                    }
                }
                $case->setAttribute('time', $array['time']);
                $parentElement->appendChild($case);
                foreach($this->suitesStack as $parentElement) {
                    if($parentElement->tagName == 'testsuite') {
                        $parentElement->setAttribute('time', $parentElement->getAttribute('time') + $array['time']);
                        switch ($array['event']) {
                            case 'fail': $parentElement->setAttribute('failures', $parentElement->getAttribute('failures') + 1); break;
                            case 'error': $parentElement->setAttribute('errors', $parentElement->getAttribute('errors') + 1); break;
                        }
                    }
                }
                if($array['exception']) {
                    unset($exceptionType); 
                    if($array['event'] == 'fail') {
                        $exceptionEvent = 'failure';
                    } else {
                        $exceptionEvent = 'error';
                        if($array['event'] != 'error') {
                            $exceptionType = $array['event'];
                        }
                    }
                    $exception = $this->document->createElement($exceptionEvent);
                    if($exceptionType) {
                        $exception->setAttribute('type', $exceptionType);
                    }
                    $exception->setAttribute('type', $array['exception']['class']);
                    $exception->setAttribute('file', $array['exception']['file']);
                    $exception->setAttribute('line', $array['exception']['line']);
                    $exceptionMessage = $this->document->createElement('message');
                    $exceptionMessage->appendChild($this->document->createCDATASection(utf8_encode($array['exception']['message'])));
                    $exception->appendChild($exceptionMessage);
                    if($array['exception']['trace']) {
                        $this->appendTrace($exception, $array['exception']['trace']);
                    }
                    $case->appendChild($exception);
                }
                if($array['warnings']) {
                    $warnings = $this->document->createElement('warnings');
                    foreach($array['warnings'] as $warningArray) {
                        $warning = $this->document->createElement('warning');
                        $warning->setAttribute('type', $warningArray['code']);
                        $warning->setAttribute('file', $warningArray['file']);
                        $warning->setAttribute('line', $warningArray['line']);
                        $warningMessage = $this->document->createElement('message');
                        $warningMessage->appendChild($this->document->createCDATASection(utf8_encode($warningArray['message'])));
                        $warning->appendChild($warningMessage);
                        $warnings->appendChild($warning);
                        if($warningArray['trace']) {
                            $this->appendTrace($warning, $warningArray['trace']);
                        }
                    }
                    $case->appendChild($warnings);
                }
            }
        }
    }
    
    private function appendTrace(DOMElement $node, $array) {
        $frames = $this->document->createElement('traceframes');
        foreach($array as $traceFrame) {
            if($traceFrame['filtered']) {
                continue;
            }
            $frame = $this->document->createElement('traceframe');
            $frame->setAttribute('file', $traceFrame['file']);
            $frame->setAttribute('line', $traceFrame['line']);
            $frame->setAttribute('call', @$traceFrame['class'] . @$traceFrame['type'] . @$traceFrame['function'] . '()');
            $frames->appendChild($frame);
        }
        $node->appendChild($frames);
    }

    public function flush() {
        if($this->out) {
            fwrite($this->out, $this->document->saveXml());
            fclose($this->out);
        }
    }
}

class ZendPHPUnitLogger extends PHPUnit_Util_Printer implements PHPUnit_Framework_TestListener {

	private $status;
	private $exception;
	private $time;
	private $warnings;
	/** @var ZendPHPUnitXmlLogger */
	private $xmlLogger;

	/**
	 * data provider support - enumerates the test cases  
	 */
	private $dataProviderNumerator = -1; 

	public function __construct($port, $ip = null, $timeout = null, $xmlOut = null) {
		$this->cleanTest();
		if ($ip === null)
			$ip = '127.0.0.1';
		$this->out = fsockopen($ip, $port, $errno, $errstr);
		if($xmlOut && class_exists('DOMDocument')) {
		    $this->xmlLogger = new ZendPHPUnitXmlLogger($xmlOut);
		}
	}
	
	public function startTestSuite(PHPUnit_Framework_TestSuite $suite) {
		$this->writeTest($suite, 'start');
	}

	public function startTest(PHPUnit_Framework_Test $test) {
		$this->cleanTest();
		$this->writeTest($test, 'start');
		ZendPHPUnitErrorHandlerTracer::getInstance()->start();
	}
	
	public function addError(PHPUnit_Framework_Test $test, Exception $e, $time) {
		$this->status    = 'error';
		$this->exception = $e;
	}
	
	public function addFailure(PHPUnit_Framework_Test $test, PHPUnit_Framework_AssertionFailedError $e, $time) {
		$this->status    = 'fail';
		$this->exception = $e;
	}
	
	public function addIncompleteTest(PHPUnit_Framework_Test $test, Exception $e, $time) {
		$this->status    = 'incomplete';
		$this->exception = $e;
	}
	
	public function addSkippedTest(PHPUnit_Framework_Test $test, Exception $e, $time) {
		$this->status    = 'skip';
		$this->exception = $e;
	}
	
	public function endTest(PHPUnit_Framework_Test $test, $time) {
		$this->warnings = ZendPHPUnitErrorHandlerTracer::getInstance()->stop();
		$this->time     = $time;
		$this->writeTest($test, $this->status);
	}
	
	public function endTestSuite(PHPUnit_Framework_TestSuite $suite) {
		$this->writeTest($suite, 'end');
	}
	
	public function flush() {
	    parent::flush();
	    if($this->xmlLogger) {
	        $this->xmlLogger->flush();
	    }
	}
	
	private function cleanTest() {
		$this->status    = 'pass';
		$this->exception = null;
		$this->warnings  = array();
		$this->time = 0;
	}
	
	private function writeArray($array) {
		$result = $this->writeJson($this->encodeJson($array));
		if ($result && $this->xmlLogger) {
		   $this->xmlLogger->write($array);
		}
		return $result;
	}
	
	private function writeTest(PHPUnit_Framework_Test $test, $event) {
		$result = array ('event' => $event);
		if ($test instanceof PHPUnit_Framework_TestSuite) {
			if (preg_match("*::*" ,$test->getName()) != 0){ // if it is a dataprovider test suite
				//$result['target'] = 'testsuite-dataprovider';
				$result['target'] = 'testsuite';
				if($event == 'start' ) $this->dataProviderNumerator = 0 ;
				elseif ($event == 'end')  $this->dataProviderNumerator = -1 ;
			}else{
				$result['target'] = 'testsuite';
				$this->dataProviderNumerator = -1 ;
			}
			try {
				$class = new ReflectionClass($test->getName());
				$name  = $class->getName() ;
				$file  = $class->getFileName();
				$line  = $class->getStartLine();
				$result['test'] = array (
					'name'  => $name,
					'tests' => $test->count(),
					'file'  => $file,
					'line'  => $line,
				);
			} catch (ReflectionException $re) {
				$name = $test->getName();
				$result['test'] = array (
					'name'  => $name,
					'tests' => $test->count(),
				);
			}
		} else { // If we're dealing with TestCase
			$result['target'] = 'testcase';
			$result['time'] = $this->time;
			$class = new ReflectionClass($test);
			try {
				$method = $class->getMethod($test->getName());
				if ($this->dataProviderNumerator < 0 ) {
					$method_name =  $method->getName() ;
				}else{
					$method_name = $method->getName(). "[".$this->dataProviderNumerator ."]";
					if($event == 'start' ) {
					 	$this->dataProviderNumerator++ ;
					}
				}
				$result['test'] = array (
					'name' => $method_name,
					'file' => $method->getFileName(),
					'line' => $method->getStartLine(),
				);
			} catch (ReflectionException $re) {
				$result['test'] = array ('name' => $test->getName());
			}
		}
		if ($this->exception !== null) {
			$message = $this->exception->getMessage();
			if ($this->exception instanceof PHPUnit_Framework_ExpectationFailedException) {
				$message = $this->exception->getDescription();
			}
			$message = trim(preg_replace('/\s+/m', ' ', $message));
			$result += array (
				'exception' => array (
					'message' => $message,
					'class'   => get_class($this->exception),
					'file'    => $this->exception->getFile(),
					'line'    => $this->exception->getLine(),
					'trace'   => ZendPHPUnitFilter::filterTrace($this->exception->getTrace()),
				)
			);
			if (!isset ($result['exception']['file'])) {
				$result['exception']['filtered'] = true;
			}
		}
		if (!empty($this->warnings)) {
			$result += array ('warnings' => $this->warnings);
		}

		if (isset ($result['test']['file']) && ZendPHPUnitFilter::justIsFiltered($result['test']['file'])) {
			$result['test']['filtered'] = true;
		}
		if(!$this->writeArray($result)) {
			die;
		}
	}
	
	private function writeJson($buffer) {
		if($this->out && !@feof($this->out)) {
		    return @fwrite($this->out, "$buffer\n");
		}
	}
	
	private function escapeString($string) {
		return str_replace(
			array ("\\"  , "\"", '/' , "\b", "\f", "\n", "\r", "\t"),
			array ('\\\\', '\"', '\/', '\b', '\f', '\n', '\r', '\t'),
			$string
		);
	}
	
	private function encodeJson($array) {
		$result = '';
		if (is_scalar($array))
			$array = array ($array);
		$first = true;
		foreach($array as $key => $value) {
			if (!$first)
				$result.=',';
			else $first = false;
			$result .= sprintf('"%s":', $this->escapeString($key));
			if (is_array($value) || is_object($value))
				$result .= sprintf('%s', $this->encodeJson($value));
			else
				$result .= sprintf('"%s"', $this->escapeString($value));
		}
		return '{' . $result . '}';
	}
}

Class ZendPHPUnitRunner extends PHPUnit_TextUI_TestRunner {

    function justRun(PHPUnit_Framework_Test $suite) {
		$ip = null;
		if (isset ($_SERVER['ZEND_PHPUNIT_IP'])) {
			$ip = $_SERVER['ZEND_PHPUNIT_IP'];
		}
		$timeout = null;
		if (isset ($_SERVER['ZEND_PHPUNIT_TIMEOUT'])) {
			$timeout = $_SERVER['ZEND_PHPUNIT_TIMEOUT'];
		}
		$logger = new ZendPHPUnitLogger($_SERVER['ZEND_PHPUNIT_PORT'], $ip, $timeout, $_SERVER['ZEND_PHPUNIT_LOG_XML']);
		$result = $this->createTestResult();
		$result -> addListener($logger);

		$suite -> run($result);
		$result -> flushListeners();
		return $result;
	}
	/**
	 * @return ZendPHPUnitResult
	 */
	protected function createTestResult() {
		return new ZendPHPUnitResult;
	}
}

class ZendPHPUnitFilter extends PHPUnit_Util_Filter {

    public static function justIsFiltered($file) {
		return parent::isFiltered($file, false);
	}

	public static function filterTrace($trace) {
		$filteredTrace = array ();
		foreach($trace as $frame) {
			if (!isset ($frame['file']))
				continue;
			$filteredFrame = array (
				'file'     => $frame['file'],
				'line'     => $frame['line'],
				'function' => $frame['function'],
			);
			if (isset ($frame['class']))
				$filteredFrame += array (
					'class' => $frame['class'],
					'type'  => $frame['type'],
				);
			if (self::justIsFiltered($frame['file'])) {
				$filteredFrame['filtered'] = true;
			}
			$filteredTrace[] = $filteredFrame;
		}
		return $filteredTrace;
	}

	public static function getFiltered() {
		return self::$filteredFiles;
	}
}

class ZendPHPUnitResult extends PHPUnit_Framework_TestResult {

    public function run(PHPUnit_Framework_Test $test) {
		PHPUnit_Util_Timer::start();
		$this->startTest($test);
		$globalsBackup = $GLOBALS;
		try {
			$test->runBare();
		} catch(PHPUnit_Framework_AssertionFailedError $e) {
			$this->addFailure($test, $e, PHPUnit_Util_Timer::current());
		} catch(Exception $e) {
			$this->addError($test, $e, PHPUnit_Util_Timer::current());
		}
		$this->endTest($test, PHPUnit_Util_Timer::stop());
		$GLOBALS = $globalsBackup;
	}
}

ZendPHPUnitFilter::addFileToFilter(__FILE__);
$runner = new ZendPHPUnitRunner;

$runner->justRun(ZendPHPUnitSuite::suite());

ZendPHPUnitErrorHandler::getInstance()->stop();
