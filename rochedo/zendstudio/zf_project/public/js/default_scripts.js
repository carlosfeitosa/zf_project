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
function loading() 
{
    underlay = new dijit.DialogUnderlay({'class': 'loading'});
    underlay.show();
}

function exibirDialogConteudo(dialogName, content, title)
{
    
	dialog = dijit.byId(dialogName);
    
	if (!dialog) {
		var thisdialog = new dijit.Dialog({
                            title: title, 
                            content: content,
                            id: dialogName
                            });

			thisdialog.duration = 500;
			thisdialog.show();
	}else{
		dialog.show();	
	}
}

function exibirDialogUrl(dialogName, url, title)
{
    
	dialog = dijit.byId(dialogName);
    
	if (!dialog) {
		var thisdialog = new dijit.Dialog({
                            title: title, 
                            href: url,
                            id: dialogName
                            });

			thisdialog.duration = 500;
			thisdialog.show();
	}else{
		dialog.show();
	}
}

function validateForm(formId, titulo, message) 
{
    var form = dijit.byId(formId);
    
    if (!form.validate()) 
    {
	    showDialogAlert(formId, titulo, message, 1);
	    underlay.hide();
        return false;
    }
    return true;
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

function hideDialog(dialogId)
{
	var dlg = dijit.byId(dialogId);
	
	if (dlg != null)
		dlg.hide();
}
