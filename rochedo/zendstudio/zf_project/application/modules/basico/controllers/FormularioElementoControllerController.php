<?php
/**
 * Controlador FormularioElemento.
 *
 */
class Basico_FormularioElementoControllerController
{
	/**
	 * Instância do Controlador FormularioElemento
	 * @var Basico_FormularioController
	 */
	static private $singleton;
	
	/**
	 * Instância do Modelo FormularioElemento.
	 * @var Basico_Model_FormularioElemento
	 */
	private $formularioElemento;
	
	/**
	 * Construtor do Controlador FormularioElemento.
	 * @return void
	 */
	private function __construct()
	{
		$this->formularioElemento = new Basico_Model_FormularioElemento();
	}
	
	/**
	 * Retorna instância do Controlador FormularioElemento.
	 * @return Basico_FormularioElementoController
	 */
	static public function init()
	{
		if(self::$singleton == NULL){
			self::$singleton = new Basico_FormularioElementoControllerController();
		}
		return self::$singleton;
	}
	
	/**
	 * Salva objeto no Banco de dados.
	 * @param Basico_Model_FormularioElemento $novoFormularioElemento
	 * @return void
	 */
	public function salvarFormularioElemento($novoFormularioElemento)
	{
		try {
			$this->formularioElemento = $novoFormularioElemento;
			$this->formularioElemento->save();
			
			// INICIALIZACAO DOS CONTROLLERS
			$controladorCategoria = Basico_CategoriaControllerController::init();
			$controladorLog       = Basico_LogControllerController::init();
			
            // CATEGORIA DO LOG VALIDACAO USUARIO
            $categoriaLog   = $controladorCategoria->retornaCategoriaLogNovoFormularioElemento();

            $novoLog = new Basico_Model_Log();
            $novoLog->pessoaperfil   = Basico_Model_Util::retornaIdPessoaPerfilSistema();
            $novoLog->categoria      = $categoriaLog->id;

            $novoLog->dataHoraEvento = Basico_Model_Util::retornaDateTimeAtual();
            $novoLog->descricao      = LOG_MSG_NOVO_FORMULARIO_ELEMENTO;
            $controladorLog->salvarLog($novoLog);
			
		} catch (Exception $e) {
			throw new Exception($e);
		}
	}
}