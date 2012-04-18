/**
 * Arquivo de funções customizadas para manipulação do plugin JQuery jgGrid
 * 
 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
 * @since 18/04/2012
 */


/**
 * Funcao que carrega os dados do form de edicao do jqGrid no momento da abertura do form
 * 
 * @param formObject - Objeto formulario 
 * @param urlDadosForm - Url para recuperação dos dados
 * 
 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
 * @since 18/04/2012
 */
function carregaDadosFormEdicaoJqGrid(formObject, urlDadosForm) {

	if (formObject[0]['id_g'].value != "undefined") {
		// realizando requisicao ajax para recuperacao dos dados
		$.getJSON(urlDadosForm + formObject[0]['id_g'].value, function(data) {
		  		
			// percorrendo o array json resultado da requisicao
			$.each(data[0], function(key, val) {
				if (formObject[0][key]) {
					// recuperando o tipo do elemento
					var tipoElemento = formObject[0][key].type;

					// setando elemento de acordo com o seu tipo
					if (tipoElemento == "checkbox") {
						// verificando valor para marcar ou desmarcar o checkbox
						if (val == "true")
							formObject[0][key].checked = "checked";
						else
							formObject[0][key].checked = "";
					}else{
						// setando valor do elemento do tipo text
						formObject[0][key].value = val;
					}
				}
			});
	
		});
	}
}

/**
 * Funcao que carrega os dados do form de edição do jqGrid no momento do click nos botoes de navegação entre registros
 * 
 * @param wichbutton
 * @param formObject
 * @param rowid
 * @param urlDadosForm
 * 
 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
 * @since 18/04/2012
 */
function carregaDadosFormEdicaoJqGridPaginator(wichbutton, formObject, rowid, urlDadosForm) {

	if (formObject[0]['id_g'].value != "undefined") {
		// realizando requisicao ajax para recuperacao dos dados
		$.getJSON(urlDadosForm + formObject[0]['id_g'].value, function(data) {
		  	
			  // percorrendo o array json resultado da requisicao	
			  $.each(data[0], function(key, val) {
				if (formObject[0][key]) {				
					// recuperando o tipo do elemento
					var tipoElemento = formObject[0][key].type;

					// setando elemento de acordo com o seu tipo
					if (tipoElemento == "checkbox") {
						if (val == "true")
							formObject[0][key].checked = "checked";
						else
							formObject[0][key].checked = "";
					}else{
						formObject[0][key].value = val;
					}
				}
			  });

		});
	}
}
