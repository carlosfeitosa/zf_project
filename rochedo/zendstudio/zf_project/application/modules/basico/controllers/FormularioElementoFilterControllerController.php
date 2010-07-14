<?php
/**
 * Controlador FormularioElementoFilter.
 *
 */
class Basico_FormularioElementoFilterControllerController
{
	/**
	 * Instância do Controlador FormularioElementoFilter
	 * @var Basico_FormularioController
	 */
	static private $singleton;
	
	/**
	 * Instância do Modelo FormularioElementoFilter.
	 * @var Basico_Model_FormularioElementoFilter
	 */
	private $formularioElementoFilter;
	
	/**
	 * Construtor do Controlador FormularioElementoFilter.
	 * @return void
	 */
	private function __construct()
	{
		$this->formularioElementoFilter = new Basico_Model_FormularioElementoFilter();
	}
	
	/**
	 * Retorna instância do Controlador FormularioElementoFilter.
	 * @return Basico_FormularioElementoFilterController
	 */
	static public function init()
	{
		if(self::$singleton == NULL){
			self::$singleton = new Basico_FormularioElementoFilterControllerController();
		}
		return self::$singleton;
	}
	
	/**
	 * Salva objeto no Banco de dados.
	 * @param Basico_Model_FormularioElementoFilter $novoFormularioElementoFilter
	 * @return void
	 */
	public function salvarFormularioElementoFilter($novoFormularioElementoFilter)
	{
		try {
			$this->formularioElementoFilter = $novoFormularioElementoFilter;
			$this->formularioElementoFilter->save();
			
			// INICIALIZACAO DOS CONTROLLERS
			$controladorCategoria = Basico_CategoriaControllerController::init();
			$controladorLog       = Basico_LogControllerController::init();
			
            // CATEGORIA DO LOG VALIDACAO USUARIO
            $categoriaLog   = $controladorCategoria->retornaCategoriaLogNovoFormularioElementoFilter();

            $novoLog = new Basico_Model_Log();
            $novoLog->pessoaperfil   = Basico_Model_Util::retornaIdPessoaPerfilSistema();
            $novoLog->categoria      = $categoriaLog->id;

            $novoLog->dataHoraEvento = Basico_Model_Util::retornaDateTimeAtual();
            $novoLog->descricao      = LOG_MSG_NOVO_FORMULARIO_ELEMENTO_FILTER;
            $controladorLog->salvarLog($novoLog);
			
		} catch (Exception $e) {
			throw new Exception($e);
		}
	}
}