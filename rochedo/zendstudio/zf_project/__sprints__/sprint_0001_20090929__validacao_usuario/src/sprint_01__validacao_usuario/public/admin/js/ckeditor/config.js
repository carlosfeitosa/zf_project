/*
Copyright (c) 2003-2009, CKSource - Frederico Knabben. All rights reserved.
For licensing, see LICENSE.html or http://ckeditor.com/license
*/

CKEDITOR.editorConfig = function( config )
{
	// Define changes to default configuration here. For example:
	config.language = 'en';
	config.uiColor = '#6ebdf5';
	config.plugins='about,basicstyles,blockquote,button,clipboard,colorbutton,contextmenu,elementspath,enterkey,entities,filebrowser,find,flash,font,format,forms,horizontalrule,htmldataprocessor,image,indent,justify,keystrokes,link,list,maximize,newpage,pagebreak,pastefromword,pastetext,preview,print,removeformat,save,smiley,showblocks,sourcearea,stylescombo,table,tabletools,specialchar,tab,templates,toolbar,undo,wysiwygarea,wsc';
	//config.image_browse_server=true;
	/*
	config.filebrowser_browse_url = '../ckfinder/ckfinder.html';
	config.filebrowser_image_browse_url = '../ckfinder/ckfinder.html?Type=Images';
	config.filebrowser_flash_browse_url = '../ckfinder/ckfinder.html?Type=Flash';
	config.filebrowser_upload_url = '../ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files';
	config.filebrowser_image_upload_url = '../ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images'*/
	config.filebrowserBrowseUrl = '/public/admin/js/ckfinder/ckfinder.html';
	/*config.filebrowserUploadUrl : '/public/admin/js/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files';
	config.filebrowserFlashBrowseUrl : '/public/admin/js/ckfinder/ckfinder.html?Type=Flash',
	config.filebrowserUploadUrl : '/public/admin/js/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files',
	config.filebrowserImageUploadUrl : '/public/admin/js/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images',
	config.filebrowserFlashUploadUrl : '/public/admin/js/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash'
	
	/*
    config.toolbar = 'MyToolbar';

    config.toolbar_MyToolbar =
    [
        ['NewPage','Preview'],
        ['Cut','Copy','Paste','PasteText','PasteFromWord','-','Scayt'],
        ['Undo','Redo','-','Find','Replace','-','SelectAll','RemoveFormat'],
        ['Image','Flash','Table','HorizontalRule','Smiley','SpecialChar','PageBreak'],
        '/',
        ['Styles','Format'],
        ['Bold','Italic','Strike'],
        ['NumberedList','BulletedList','-','Outdent','Indent','Blockquote'],
        ['Link','Unlink','Anchor'],
        ['Maximize','-','About']
    ];*/
};



