dojo.require("dijit.Dialog");
dojo.require("dijit.form.Button");
dojo.require("dijit.form.TextBox");
dojo.require("dijit.DialogUnderlay");
dojo.require("dojox.form.PasswordValidator");
dojo.require("dijit.TitlePane");
dojo.require("dijit.form.TimeTextBox");


var underlay;
function loading() 
{
    underlay = new dijit.DialogUnderlay({'class': 'loading'});
    underlay.show();
}

function exibirForm(formName, content, title)
{
    
	form = dijit.byId(formName);
    
	if (!form) {
		var thisdialog = new dijit.Dialog({
                            title: title, 
                            content: content,
                            id: formName
                            
                            });
			thisdialog.startup();
			thisdialog.show();
	}else{
	    form.show();	
	}
}

function validateForm(formId, message) 
{
    var form = dijit.byId(formId);
    
    if (!form.validate()) 
    {
	    showDialogAlert(formId, message, 1);
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
    dlg.hide();
}
