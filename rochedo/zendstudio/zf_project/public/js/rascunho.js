/**
* Inicializa array com os dados iniciais do form
*
*/
function initRascunho() 
{
	$(':input').each(function() {
		if($(this).attr("type") != 'submit' && $(this).attr("type") != 'button' && $(this).attr("id") != null && strpos($(this).attr("id"), "Csrf") === false){
			if ($(this).attr("type") == 'radio') {
				if ($(this).attr("checked") != '')
					$(this).data('initialValue', $(this).attr("checked"));
				else
					$(this).data('initialValue', null);
			}
			else {
				if ($(this).val() != '')
					$(this).data('initialValue', $(this).val());
				else
					$(this).data('initialValue', null);
			}
		}
    });
}

/**
 * Checa mudanças nos campos dos formularios
 * @returns Array
 */
function formChangesCheck() 
{
	
	var msg = 'There are unsaved changes:';
	var changed = false;
	var arrayChangedElements = new Array();
	var arrayElement         = new Array();
	var current = '';

	$(':input').each(function () {

		if ($(this).attr("type") != 'submit' && $(this).attr("type") != 'button' && $(this).attr("id") != null && strpos($(this).attr("id"), "Csrf") === false) {
		
			if ($(this).attr("type") == 'radio') {
				if ($(this).attr("checked") != '')
					current = $(this).attr("checked");
				else
					current = null;
			}
			else {
				if ($(this).val() != '')
					current = $(this).val();
				else
					current = null;
			}
			
			if (($(this).data('initialValue') != current)){
				changed = true;
				arrayElement[$(this).attr("id")] = $(this).val();
				arrayChangedElements[$(this).closest("form").attr("id")] = arrayElement;

			}
		
		}
	});

	return arrayChangedElements;
}



/**
 * Funcao que dispara um requisicao ajax para salvar o rascunho de um formulario
 * @param arrayElementosValores
 */
function salvarRascunho() 
{
	console.debug('salvar rascunho chamado.');

	var arrayChangedElements = formChangesCheck();

	/*
	$.ajax({
		  type: 'POST',
		  url: '/rochedo_project/public/basico/rascunho/salvar',
		  data: arrayElementosValores,
		  success: success,
		  dataType: dataType
		});
	*/
}

/**
 * Chamando funcoes do rascunho quando o documento estiver carregado
 */
$(document).ready(function() {
	// Handler for .ready() called.

	initRascunho();
	timer(10000,'salvarRascunho()');
	

});
