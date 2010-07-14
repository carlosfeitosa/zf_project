<?php
/**
 * Controlador FormularioElementoFormularioElementoValidador.
 *
 */
class Basico_FormularioElementoFormularioElementoValidadorControllerController
{
	/**
	 * Instância do Controlador Formulario
	 * @var Basico_FormularioController
	 */
	static private $singleton;
	
	/**
	 * Instância do Modelo Formulario.
	 * @var Basico_Model_Formulario
	 */
	private $formulario;
	
	/**
	 * Construtor do Controlador Formulario.
	 * @return void
	 */
	private function __construct()
	{
		$this->formulario = new Basico_Model_Formulario();
	}
	
	/**
	 * Retorna instância do Controlador Formulario.
	 * @return Basico_FormularioController
	 */
	static public function init()
	{
		if(self::$singleton == NULL){
			self::$singleton = new Basico_FormularioElementoFormularioElementoValidadorControllerController();
		}
		return self::$singleton;
	}
	
	/**
	 * Salva objeto no Banco de dados.
	 * @param Basico_Model_Formulario $novoFormularioElementoFormularioElementoValidador
	 * @return void
	 */
	public function salvarFormulario($novoFormularioElementoFormularioElementoValidador)
	{
		try {
			$this->formulario = $novoFormularioElementoFormularioElementoValidador;
			$this->formulario->save();
			
			// INICIALIZACAO DOS CONTROLLERS
			$controladorCategoria = Basico_CategoriaControllerController::init();
			$controladorLog       = Basico_LogControllerController::init();
			
            // CATEGORIA DO LOG VALIDACAO USUARIO
            $categoriaLog   = $controladorCategoria->retornaCategoriaLogNovoFormularioElementoFormularioElementoValidador();

            $novoLog = new Basico_Model_Log();
            $novoLog->pessoaperfil   = Basico_Model_Util::retornaIdPessoaPerfilSistema();
            $novoLog->categoria      = $categoriaLog->id;

            $novoLog->dataHoraEvento = Basico_Model_Util::retornaDateTimeAtual();
            $novoLog->descricao      = LOG_MSG_NOVO_FORMULARIO_ELEMENTO_FORMULARIO_ELEMENTO_VALIDADOR;
            $controladorLog->salvarLog($novoLog);
			
		} catch (Exception $e) {
			throw new Exception($e);
		}
	}
}