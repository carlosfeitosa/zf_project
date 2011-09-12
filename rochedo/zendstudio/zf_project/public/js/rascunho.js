$(':input').each(function() {
	if($(this).attr("type") != 'submit' && $(this).attr("type") != 'button' && $(this).attr("id") != null){
		if ($(this).attr("type") == 'radio') {
			$(this).data('initialValue', $(this).attr("checked"));
		}
		else {
			$(this).data('initialValue', $(this).val());
		}
	}
});

window.onbeforeunload = function(){
	
	var msg = 'There are unsaved changes:';
	var changed = false;
	var arrayChangedElements = new Array();
	var current = '';
	
	$(':input').each(function () {
		
		if ($(this).attr("type") != 'submit' && $(this).attr("type") != 'button' && $(this).attr("id") != null){
			
			if ($(this).attr("type") == 'radio') {
				current = $(this).attr("checked");
			}
			else {
				current = $(this).val();
			}
			
			if ($(this).data('initialValue') == null && current != "") {
				if ($(this).data('initialValue') != current){
					changed = true;
					alert($(this).data('initialValue') + ' - ' + current);
					arrayChangedElements[$(this).attr("id")] = $(this).val();
					msg = msg+'\n - '+$('label[for="'+$(this).attr("id")+'"]').html();
				}
			}
		}
	});
	
	if(changed == true) {
		console.debug('Array: ', arrayChangedElements);
	}else{
		return false;
	}

};