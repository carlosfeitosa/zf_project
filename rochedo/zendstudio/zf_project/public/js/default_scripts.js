dojo.require("dijit.Dialog");
dojo.require("dijit.form.Form");
dojo.require("dijit.form.Button");
dojo.require("dijit.form.TextBox");
dojo.require("dijit.DialogUnderlay");
dojo.require("dojox.form.PasswordValidator");
dojo.require("dijit.TitlePane");
dojo.require("dijit.form.TimeTextBox");
dojo.require("dijit.form.SimpleTextarea");
dojo.require("dijit.form.DateTextBox");
dojo.require("dijit.form.CurrencyTextBox");
dojo.require("dijit.form.CheckBox");

var underlay;

/*
 * Função para validar uma string
 * @var inputObject - O input a ser validado
 * @var filterType  - O tipo do filtro a ser aplicado
 */
function validaString(inputObject, filterType)
{   	
	var generic_pattners={'special':/[\W]/g, 
		                  'quotes':/['\''&'\"']/g, 
		                  'notnumbers':/[^\d]/g
		                 };

	var login_patterns = {'inicio' : /^[0-9\W_]+/g,
		                  'fim'    : /[^a-zA-Z0-9@._]*$/g
	                     };

	if (dijit.byId(inputObject.id).getValue() != "") {
		if (filterType == "login") {
			for (var i in login_patterns){
				dijit.byId(inputObject.id).attr('value', dijit.byId(inputObject.id).getValue().replace(login_patterns[i],''));
			}
		}else{
			
		    dijit.byId(inputObject.id).attr('value', dijit.byId(inputObject.id).getValue().replace(generic_pattners[filterType],''));
		}
    }
}

function loading() 
{
    underlay = new dijit.DialogUnderlay({'class': 'loading'});
    underlay.show();
}

function exibirDialogConteudo(dialogName, content, title, urlRedirect, urlRedirectHide, formAction, onLoadValues, errorMessage, errorTitle, errorElements)
{
	// procurando se o dialog ja existe na sessao do usuario
	dialog = dijit.byId(dialogName);

	if (!dialog) {
		// criando dialog
		var dialog = new dijit.Dialog({title: title, content: content, id: dialogName,
										onHide: dojo.hitch(this, function(){
										
											//verificando rascunho
											if (typeof verificaElementosModificadosRascunho == 'function')
												verificaElementosModificadosRascunho();

											// verificando se o dialog possui o hidden para redirect
											if (document.getElementsByName('BasicoAutenticacaoUsuarioUrlRedirect')[0] && urlRedirectHide)
							                			window.location = urlRedirectHide;
							            })});

		// setando tempo de fadein
		dialog.duration = 500;
	}

	// verificando se os elementos devem ser carregados com valores
	if (onLoadValues) {
		dojo.addOnLoad(function() {
			carregaValoresElementos(onLoadValues);
		});

		// verificando se eh necessario mostrar uma mensagem de erro
		if (errorMessage)
			adicionaElementoMensagemErro(dialogName, errorMessage, errorTitle);

		// verificando se eh necessario marcar elementos com erro
		if (errorElements)
			marcaElementosErro(errorElements);
	}

	// verificando se eh preciso setar o hidden urlRedirect
	if (urlRedirect) {
		hiddenUrlRedirect = document.getElementsByName('BasicoAutenticacaoUsuarioUrlRedirect')[0];

		// verificando se existe o elemento hidden urlRedirect
		if (hiddenUrlRedirect)
			// setando o valor do hidden
			hiddenUrlRedirect.value = urlRedirect;
	}

	// verificando se eh preciso mudar a acao do formulario
	if ((formAction) && (document.getElementsByTagName('form')[0] !== undefined)) {
		document.getElementsByTagName('form')[0].action = formAction;
	}

	// mostrando dialog
	dialog.show();
}

function exibirDialogUrl(dialogName, url, title, urlRedirect, urlRedirectHide, formAction, onLoadValues, errorMessage, errorTitle, errorElements,formPai)
{    
	// verificando se o formulario tem form pai 
	if(formPai != null){

		// recuperando os elementos do tipo hashs 	
		var hashElements = $(":input[id$='Csrf']");

		// verificando elementos hash no form pai 
		for (hash in hashElements) {
			if (hashElements[hash].id != null) {
				elementHash = $("#" + hashElements[hash].id);
				if (elementHash.closest("form").attr("id") == formPai) {
				    hash = true;	
				}
			}
		}

       // verificando se o form pai permite rascunho e possui hash
       if(($("#" + formPai).attr('rascunho') == "true") && (hash == true)){
          // chamando ajax para salvar rascunho
          salvarRascunho('http://localhost/rochedo_project/public/basico/rascunho/salvar', true, formPai);	
       }
    }

    // setando os parametros do xhrGet: url, como manipular e os callbacks
    var xhrArgs = {
        url: url,
        handleAs: "text",
        load: function(data) {
        	// chamando metodo de abertura de caixa de dialogo com o conteudo da url
        	exibirDialogConteudo(dialogName, data, title, urlRedirect, urlRedirectHide, formAction, onLoadValues, errorMessage, errorTitle, errorElements);
        },
        error: function(error) {
        	// mostrando erro
            console.debug("Um erro aconteceu: " + error);
        }
    };

    // carregando o conteudo da url no dialog
    dojo.xhrGet(xhrArgs);

    if (typeof initRascunho == 'function') {	
        initRascunho();
    }
}

function showDialogAlert(txtDialogId, txtTitle, txtContent, botaoFechar)
{
	if (botaoFechar == 1)
	{
	    var botaoFechar = "<br><br><center><button dojoType='dijit.form.Button' type='submit' onclick='hideDialog('"+ txtDialogId +"')'>OK</button></center>";
	}else{
		var botaoFechar = "";	
	}
	var thisdialog = new dijit.Dialog({ title: txtTitle, content: txtContent+botaoFechar});
	dojo.body().appendChild(thisdialog.domNode);
	thisdialog.closeButtonNode.style.display='none';
    thisdialog.startup();
	thisdialog.show();
}

function hideDialog(dialogId, urlRedirectHide)
{
	// localizando o dialog
	var dlg = dijit.byId(dialogId);

	// verificando se o dialog existe
	if (dlg != null) {
		// verificando se o dialog possui o hidden urlRedirect
		hiddenUrlRedirect = document.getElementsByName('BasicoAutenticacaoUsuarioUrlRedirect')[0];
		if (hiddenUrlRedirect && urlRedirectHide)
			window.location = urlRedirectHide;
		dlg.hide();
	}
}

function carregaValoresElementos(stringParametrosJson) {
	// loop para atribuir os valores dos elementos
	for (chave in stringParametrosJson) {
		// localizando o elemento (DOJO)
		elemento = dijit.byId(chave);
		
		// verificando se o elemento esta carregado no cliente
		if (elemento) {
			// setando o valor
			elemento.setValue(stringParametrosJson[chave]);
		}
		else if (!elemento) {
			// localizando o elemento
			elemento = document.getElementsByName(chave)[0];
			// verificando se o elemento esta carregado no cliente
			if (elemento)
				// setando o valor
				elemento.value = stringParametrosJson[chave];
		}
	}
}

function adicionaElementoMensagemErro(dialogName, errorMessage, errorTitle, renderizarPrimeiroElemento)
{
	// inicializando variaveis
	var arrayErrorMessages = new Array();

	// recuperando dialog
	dialog = dijit.byId(dialogName);

	// verificando se o dialog foi recuperado
	if (dialog) {

		// verificando se a mensagem de erro eh um array
		if ((errorMessage instanceof Array) === false)
			arrayErrorMessages[0] = errorMessage;
		else
			arrayErrorMessages = errorMessage;

		// criando elemento container div
		var containerDivErrorMessage = document.createElement('div');
		// setando atributos do div
		containerDivErrorMessage.id = 'divContainerError';

		// verificando se existe titulo para a mensagem de erro
		if (errorTitle) {
			// criando elemento label
			var labelContainerDivErrorMessage = document.createElement('label');
			// setando o conteudo do titulo
			labelContainerDivErrorMessage.innerHTML = '<center><b>' + errorTitle + '</b></center>';
			// adicionando elemeneto ul no container div
			containerDivErrorMessage.appendChild(labelContainerDivErrorMessage);
		}

		// criando elemento container ul
		var containerUlErrorMessage = document.createElement('ul');
		// setando o id da ul
		containerUlErrorMessage.id = 'errorUl';

		// adicionando elemeneto ul no container div
		containerDivErrorMessage.appendChild(containerUlErrorMessage);

		// loop para recuperar as mensagens de erro
		for (chave in arrayErrorMessages) {
			// criando elemento li item
			var itemErrorMessage = document.createElement('li');
			// setando o conteudo do elemento li item
			itemErrorMessage.innerHTML = arrayErrorMessages[chave];
			// adicionado o elemento ao containter ul
			containerUlErrorMessage.appendChild(itemErrorMessage);
		}

		if (renderizarPrimeiroElemento) {
			dojo.place(containerDivErrorMessage, dialog.id,  "first");
		} else {
			// adicionando o elemento container ul no dialog
			dojo.place(containerDivErrorMessage, dialog.domNode.childNodes[3].childNodes[0].childNodes[0],  "before");
		}
	}
}

function marcaElementosErro(errorElements)
{
	// loop nos elementos com erro
	for (chave in errorElements) {
		// recuperando elemento
		elemento = dijit.byId(errorElements[chave]);
		// setando estado de erro
		elemento.state = 'Error';
		elemento._setStateClass();
		dijit.setWaiState(elemento, 'invalid', 'true');
		elemento._maskValidSubsetError = true;
	}
}

function setaFocoElemento(nomeElemento)
{
	// recupernado o elemento via dojo
	elemento = recuperaElemento(nomeElemento);

	// verificando se o elemento esta carregado no cliente
	if (elemento) {
		// setando o foco no elemento
		elemento.focus();
	}
}

function setaFocoPrimeiroElementoFormulario(nomeFormulario)
{
	// recupernado o elemento via dojo
	elemento = recuperaElemento(nomeFormulario);

	// verificando se o elemento foi recuperado
	if (elemento) {
		// recuperando elementos filhos
		elementosFilhos = elemento.getChildren();

		// loop para localizar o primeiro elemento "focavel"
		for (chaveElementoFilho in elementosFilhos) {
			// verificando se o elemento eh "focavel"
			if ((elementosFilhos[chaveElementoFilho].isFocusable()) && (elementosFilhos[chaveElementoFilho].tabIndex != -1)) {
				// setando foco no elemento
				elementosFilhos[chaveElementoFilho].focus();
				// saindo do loop
				break;
			}
		}
	}
}

function recuperaElemento(nomeElemento)
{
	// recupernado o elemento via dojo
	elemento = dijit.byId(nomeElemento);

	// verificando se o elemento esta carregado no cliente
	if (!elemento) {
		// recuperando o elemento via DOM 
		elemento = document.getElementsByName(nomeElemento)[0];
	}

	return elemento;
}

function validateForm(formId, titulo, message, baseUrl) 
{
	// recuperando o formulario
    var form = dijit.byId(formId);
    
    // validando o formulario
    if (!(form == undefined) && !form.validate()) 
    {
    	// mostando mensagem de erro ao tentar submeter o formulario
	    showDialogAlert(formId, titulo, message, 1);
	    
	    // verificando se o underlay esta setado
	    if (underlay !== undefined) {
		    // desabilitando underlay
		    underlay.hide();
	    }
        return false;
    }

    return true;
}
	
function verificaDisponibilidade(nomeTabela, nomeCampo, stringPesquisa, idPessoa, nome, dataNascimento, urlMetodo)
{	
	if (stringPesquisa != "") {

		var urlRequest = urlMetodo + '/stringPesquisa/' +stringPesquisa + "/idPessoa/" + idPessoa + "/nome/" + nome + "/dataNascimento/" + dataNascimento; 

		// processando requisicao
		var deferred = dojoRequestAjaxAbstract('get', {url: urlRequest, handleAs: 'text', idLoadingLocation: 'BasicoCadastrarUsuarioValidadoLoginDisponivel-element'});

		// Adicionando callback adicional 
		deferred.addCallback(function(data) {
            //Replace newlines with nice HTML tags.
            data = data.replace(/\n/g, "<br>");

            //Replace tabs with spacess.
            data = data.replace(/\t/g, "&nbsp;&nbsp;&nbsp;");

            dojo.byId("BasicoCadastrarUsuarioValidadoLoginDisponivel-element").innerHTML = data;
        });		
	}else{
		dojo.byId("BasicoCadastrarUsuarioValidadoLoginDisponivel-element").innerHTML = "";
	}
}

function exibirMensagem(mensagem)
{
	humanMsg.displayMsg('<span class="indent">' + mensagem + '</span>');
}

/**
 * Função responsável por encontra a posição da primeira ocorrência de uma string.
 * 
 * @param String haystack
 * @param String needle
 * @param String offset
 */
function strpos (haystack, needle, offset) {
	var i = (haystack + '').indexOf(needle, (offset || 0));
	return i === -1 ? false : i;
}

/**
 * função que transporta o login escolhido, para o campo login do formulario de cadastro de usuario validado
 * @param String urlMetodo 
 */
function carregaSugestaoLogin(urlMetodo) {
	// recuperando o valor da opção de login escolhida pelo usuario
	for (var i=0; i < document.forms['BasicoSugestaoLogin'].BasicoSugestaoLoginSugestaoLogin.length; i++)
	{
	   if (document.forms['BasicoSugestaoLogin'].BasicoSugestaoLoginSugestaoLogin[i].checked)
       {
	      var radioValue = document.forms['BasicoSugestaoLogin'].BasicoSugestaoLoginSugestaoLogin[i].value;
	   }
	}
	
	if (radioValue != null) {
		// setando valor do campo login
		dijit.byId('BasicoCadastrarUsuarioValidadoLogin').setValue(radioValue);
		// escondendo o dialog de sugestao
		hideDialog('Basico_Form_SugestaoLogin');
		// executando funcao para verificar a disponibilidade do login escolhido
		verificaDisponibilidade('login', 'login', radioValue, dojo.byId('idPessoa').value, dojo.byId('BasicoCadastrarUsuarioValidadoNome').value, dojo.byId('BasicoCadastrarUsuarioValidadoDataNascimento').value, urlMetodo);
	}
}

/**
 * Timer para executar funcoes
 *
 * @param interval Int
 * @param callBack String
 * 
 */
function timer(interval,callBack){
	if(!isNaN(interval)){
	   window.setInterval(callBack, interval);
	}else{
	
	}
}

/**
 * Adiciona um texto a um elemento html
 * 
 * @param String idElemento
 * @param String texto
 * @param String separador
 * 
 * @return void
 * 
 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
 * @since 27/05/2012
 */
function adicionaTextoElementoHtml(idElemento, texto, separador) {
	// recuperando o valor atual do elemento
	var valorAtual = $('#' + idElemento).val();

	// tratando quebras de linha do texto
	texto = substituiTodasOcorrenciasString('<br>', '\n', texto);
	
	// verificando se o valor atual é vazio
	if (valorAtual == '') {
		// setando o valor do elemento com o conteúdo do valor atual
		$('#' + idElemento).val(texto);
	} else {
		// setando o valor do elemento com o conteúdo do valor atual adicionado do novo valor
		$('#' + idElemento).val(valorAtual + separador + texto);
	}
}

/**
 * Substitui todas as ocorrencias da string de busca pela string de replace
 * 
 * @param search
 * @param replace
 * 
 * @return String
 * 
 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
 * @since 31/05/2012
 */
function substituiTodasOcorrenciasString(search, replace, string) {
	// retornando string com substituicoes
	return string.replace(new RegExp(search, 'g'), replace);
}
