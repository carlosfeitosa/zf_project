<?php
/**
* Rochedo Framework
*
* Formulário gerado automáticamente pelo Gerador rochedo
* em: 31/08/2011 23:09:00
*
* LICENÇA DE USO
*
* (implementar licença)
*
*
* @category   RochedoProject
* @package    BASICO
* @copyright  Copyright (c) 2010 Rochedo Project. (http://www.rochedoproject.com)
* @license    (implementar)
* @version    1: 31/08/2011 22:53:34
*/
class Basico_Form_ResolvedorConflitoVersaoObjeto extends Zend_Dojo_Form
{
    /**
    * Constructor do Form
    * @param array $options
    * @return Basico_Form_ResolvedorConflitoVersaoObjeto
    */
    public function __construct($options = null)
    {
        // Inicializando o formulário.
        parent::__construct($options);

        $this->setName('BasicoResolvedorConflitoVersaoObjeto');
        $this->setMethod('post');
        $this->setAction(Basico_OPController_TokenOPController::getInstance()->gerarTokenPorUrl('/rochedo_project/public/basico/cvc/resolveConflitoVersaoObjeto'));
        $this->addAttribs(array('onSubmit'=>"loading();return(validateForm('ResolvedorConflitoVersaoObjeto', '{$this->getView()->tradutor('FORM_VALIDATION_TITLE')}', '{$this->getView()->tradutor('FORM_VALIDATION_MESSAGE')}'))"));
        $this->setDecorators(array('FormElements', array('HtmlTag', array('tag' => 'dl')), array('DijitForm')));

        // Adicionando paths para localizacao de componentes nao ZF.
        $this->addPrefixPath('Rochedo_Form', 'Rochedo/Form');

        // Criando array de elementos.
        $elements = array();

        $elements[1] = $this->createElement('html', 'BasicoResolvedorConflitoVersaoObjetoHtmlTextDescricaoFormResolvedorConflitoVersaoObjeto',  array('value' => $this->getView()->tradutor('FORM_ELEMENT_HTML_TEXT_DESCRICAO_FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO')));
        $elements[1]->setOrder(1);
        $elements[1]->setRequired(false);
        $elements[1]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
        $elements[1]->removeDecorator('DtDdWrapper');

        $elements[2] = $this->createElement('button', 'BasicoResolvedorConflitoVersaoObjetoHtmlButtonVisualizarDadosAtuaisFormResolvedorConflitoVersaoObjeto');
        $elements[2]->setOrder(2);
        $elements[2]->setRequired(false);
        $elements[2]->removeDecorator('DtDdWrapper');
        $elements[2]->setLabel('' . $this->getView()->tradutor('FORM_BUTTON_VISUALIZAR_DADOS_ATUAIS_FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO') . '');

        $elements[3] = $this->createElement('html', 'BasicoResolvedorConflitoVersaoObjetoHtmlTextDescricaoButtonVisualizarDadosAtuaisFormResolvedorConflitoVersaoObjeto',  array('value' => $this->getView()->tradutor('FORM_ELEMENT_HTML_TEXT_DESCRICAO_BUTTON_VISUALIZAR_DADOS_ATUAIS_FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO')));
        $elements[3]->setOrder(3);
        $elements[3]->setRequired(false);
        $elements[3]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
        $elements[3]->removeDecorator('DtDdWrapper');

        $elements[4] = $this->createElement('button', 'BasicoResolvedorConflitoVersaoObjetoHtmlButtonRevisarDadosAtuaisFormResolvedorConflitoVersaoObjeto');
        $elements[4]->setOrder(4);
        $elements[4]->setRequired(false);
        $elements[4]->removeDecorator('DtDdWrapper');
        $elements[4]->setLabel('' . $this->getView()->tradutor('FORM_BUTTON_REVISAR_DADOS_ATUAIS_FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO') . '');

        $elements[5] = $this->createElement('html', 'BasicoResolvedorConflitoVersaoObjetoHtmlTextDescricaoButtonRevisarDadosAtuaisFormResolvedorConflitoVersaoObjeto',  array('value' => $this->getView()->tradutor('FORM_ELEMENT_HTML_TEXT_DESCRICAO_BUTTON_REVISAR_DADOS_ATUAIS_FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO')));
        $elements[5]->setOrder(5);
        $elements[5]->setRequired(false);
        $elements[5]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
        $elements[5]->removeDecorator('DtDdWrapper');

        $elements[6] = $this->createElement('button', 'BasicoResolvedorConflitoVersaoObjetoHtmlButtonSobrescreverAtualizacaoFormResolvedorConflitoVersaoObjeto');
        $elements[6]->setOrder(6);
        $elements[6]->setRequired(false);
        $elements[6]->removeDecorator('DtDdWrapper');
        $elements[6]->setLabel('' . $this->getView()->tradutor('FORM_BUTTON_SOBRESCREVER_ATUALIZACAO_FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO') . '');

        $elements[7] = $this->createElement('html', 'BasicoResolvedorConflitoVersaoObjetoHtmlTextDescricaoButtonSobrescreverAtualizacaoFormResolvedorConflitoVersaoObjeto',  array('value' => $this->getView()->tradutor('FORM_ELEMENT_HTML_TEXT_DESCRICAO_BUTTON_SOBRESCREVER_ATUALIZACAO_FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO')));
        $elements[7]->setOrder(7);
        $elements[7]->setRequired(false);
        $elements[7]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
        $elements[7]->removeDecorator('DtDdWrapper');

        $elements[8] = $this->createElement('button', 'BasicoResolvedorConflitoVersaoObjetoHtmlButtonCancelarFormResolvedorConflitoVersaoObjeto');
        $elements[8]->setOrder(8);
        $elements[8]->setRequired(false);
        $elements[8]->removeDecorator('DtDdWrapper');
        $elements[8]->setLabel('' . $this->getView()->tradutor('FORM_BUTTON_CANCELAR_FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO') . '');

        $elements[9] = $this->createElement('html', 'BasicoResolvedorConflitoVersaoObjetoHtmlTextDescricaoButtonCancelarFormResolvedorConflitoVersaoObjeto',  array('value' => $this->getView()->tradutor('FORM_ELEMENT_HTML_TEXT_DESCRICAO_BUTTON_CANCELAR_FORM_RESOLVEDOR_CONFLITO_VERSAO_OBJETO')));
        $elements[9]->setOrder(9);
        $elements[9]->setRequired(false);
        $elements[9]->addDecorator('Label', array('escape' => false, 'disableFor' => true));
        $elements[9]->removeDecorator('DtDdWrapper');

        // Adicionando elementos ao formulario.
        $this->addElements($elements);
    }
}
?>