<?php
/**
 * Controlador FormularioElementoValidador.
 *
 */
class Basico_FormularioElementoValidadorControllerController
{
	/**
	 * Instância do Controlador FormularioElementoValidador
	 * @var Basico_FormularioController
	 */
	static private $singleton;
	
	/**
	 * Instância do Modelo FormularioElementoValidador.
	 * @var Basico_Model_FormularioElementoValidador
	 */
	private $formularioElementoValidador;
	
	/**
	 * Construtor do Controlador FormularioElementoValidador.
	 * @return void
	 */
	private function __construct()
	{
		$this->formularioElementoValidador = new Basico_Model_FormularioElementoValidador();
	}
	
	/**
	 * Retorna instância do Controlador FormularioElementoValidador.
	 * @return Basico_FormularioElementoValidadorController
	 */
	static public function init()
	{
		if(self::$singleton == NULL){
			self::$singleton = new Basico_FormularioElementoValidadorControllerController();
		}
		return self::$singleton;
	}
	
	/**
	 * Salva objeto no Banco de dados.
	 * @param Basico_Model_FormularioElementoValidador $novoFormularioElementoValidador
	 * @return void
	 */
	public function salvarFormularioElementoValidador($novoFormularioElementoValidador)
	{
		try {
			$this->formularioElementoValidador = $novoFormularioElementoValidador;
			$this->formularioElementoValidador->save();
			
			// INICIALIZACAO DOS CONTROLLERS
			$controladorCategoria = Basico_CategoriaControllerController::init();
			$controladorLog       = Basico_LogControllerController::init();
			
            // CATEGORIA DO LOG VALIDACAO USUARIO
            $categoriaLog   = $controladorCategoria->retornaCategoriaLogNovaPessoa();

            $novoLog = new Basico_Model_Log();
            $novoLog->pessoaperfil   = Basico_Model_Util::retornaIdPessoaPerfilSistema();
            $novoLog->categoria      = $categoriaLog->id;

            $novoLog->dataHoraEvento = Basico_Model_Util::retornaDateTimeAtual();
            $novoLog->descricao      = LOG_MSG_NOVO_FORMULARIO_ELEMENTO_VALIDADOR;
            $controladorLog->salvarLog($novoLog);
			
		} catch (Exception $e) {
			throw new Exception($e);
		}
	}
}