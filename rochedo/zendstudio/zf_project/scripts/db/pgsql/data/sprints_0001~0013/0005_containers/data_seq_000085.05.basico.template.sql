/**
* SCRIPT DE POPULACAO DA TABELA basico.template
* 
* Esta tabela funciona como um banco de dados de templates.
* 
* versao: 1.0 (POSTGRESQL 9.1.1)
* por: JOÃO VASCONCELOS (joao.vasconcelos@rochedoframework.com)
* criacao: 02/02/2012
* ultimas modificacoes:
* 								
*/

INSERT INTO basico.template (id_categoria, nome, template, ativo, rowinfo)
SELECT c.id AS id_categoria, 'TEMPLATE_PASSWORD_STRENGTH_CHECKER' AS nome,
	'<div id=''scorebarBorder''><div id=''score''>0%</div><div id=''scorebar''>&nbsp;</div></div><div id=''complexity''></div>' AS template,
	true AS ativo,
    'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_TEMPLATE';

INSERT INTO basico.template (id_categoria, nome, template, ativo, rowinfo)
SELECT c.id AS id_categoria, 'TEMPLATE_DOJO' AS nome, 
		'<?php 
	/**
	 * Layout padrão do sistema.
	 */
	?>
	<html>
	<head>    
		<?php
		// enviando ao cliente as informacoes sobre do cabecalho do documento html
		echo $this->headTitle();
		echo $this->headMeta();
		echo $this->headLink();
	
		// setando o dojo
		echo $this->dojo();
	    echo $this->headScript();
	    
	    // recuperando os scripts incluidos na view
	   	$scriptsContent = $this->scripts;
	
	   	// verificando se o scripts eh array
		if (is_array($scriptsContent)) {
			// loop para enviar os scripts
			foreach ($scriptsContent as $key => $value) {
				// enviando script
				echo $value;		
			}
		} else {
			// enviando scripts
			echo $scriptsContent;
		}
	    ?>
	</head>
	
	<body class="rochedo">
	
	<div class="loading"></div>
	<div id="header">
	<?php 
		// recupera o conteudo do placeholder headerMenu
		$headerMenu = $this->placeholder("headerMenu")->getValue();
		// verifica se algo foi escrito
		if(!empty($headerMenu)) {
			echo $this->placeholder("headerMenu");
		}
	
	
		$scriptsContent = $this->header;
		
		if (is_array($scriptsContent)) {
			foreach ($scriptsContent as $key => $value) {
				echo $value;		
			}
		} else {
			echo $scriptsContent;
		}
	
	?>   
	</div>
	<div id="content">
	<?php
		// recupera o conteudo do placeholder headerMenu
		$content = $this->placeholder("content")->getValue();
		// verifica se algo foi escrito
		if(!empty($content)) {
			echo $this->placeholder("content");
		}
	
	
		$scriptsContent = $this->content;
		
		if (is_array($scriptsContent)) {
			foreach ($scriptsContent as $key => $value) {
				//echo $value;		
			}
		} else {
			//echo $scriptsContent;
		}
	?>
	</div>
	
	<br>
	<div id="footer">
	<?php 
	
		$scriptsContent = $this->footer;
		
		if (is_array($scriptsContent)) {
			foreach ($scriptsContent as $key => $value) {
				echo $value;		
			}
		} else {
			echo $scriptsContent;
		}
		// recupera o conteudo do placeholder footer
		$footer = $this->placeholder("footer")->getValue();
		// verifica se algo foi escrito
		if(!empty($footer)) {
			echo $this->placeholder("footer");
		}
	?>   
	</div>
	
	</body>
	</html>
	' AS template,
	true AS ativo,
	'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_TEMPLATE';

INSERT INTO basico.template (id_categoria, nome, template, ativo, rowinfo)
SELECT c.id AS id_categoria, 'TEMPLATE_HTML' AS nome,
			'<?php 
	/**
	 * Layout padrão do sistema.
	 */
	?>
	<html>
	<head>    
		<?php
		// enviando ao cliente as informacoes sobre do cabecalho do documento html
		echo $this->headTitle();
		echo $this->headMeta();
		echo $this->headLink();
	
		// setando o dojo
		echo $this->dojo();
	    echo $this->headScript();
	    
	    // recuperando os scripts incluidos na view
	   	$scriptsContent = $this->scripts;
	
	   	// verificando se o scripts eh array
		if (is_array($scriptsContent)) {
			// loop para enviar os scripts
			foreach ($scriptsContent as $key => $value) {
				// enviando script
				echo $value;		
			}
		} else {
			// enviando scripts
			echo $scriptsContent;
		}
	    ?>
	</head>
	
	<body class="rochedo">
	
	<div class="loading"></div>
	<div id="header">
	<?php 
		// recupera o conteudo do placeholder headerMenu
		$headerMenu = $this->placeholder("headerMenu")->getValue();
		// verifica se algo foi escrito
		if(!empty($headerMenu)) {
			echo $this->placeholder("headerMenu");
		}
	
	
		$scriptsContent = $this->header;
		
		if (is_array($scriptsContent)) {
			foreach ($scriptsContent as $key => $value) {
				echo $value;		
			}
		} else {
			echo $scriptsContent;
		}
	
	?>   
	</div>
	<div id="content">
	<?php
		// recupera o conteudo do placeholder headerMenu
		$content = $this->placeholder("content")->getValue();
		// verifica se algo foi escrito
		if(!empty($content)) {
			echo $this->placeholder("content");
		}
	
	
		$scriptsContent = $this->content;
		
		if (is_array($scriptsContent)) {
			foreach ($scriptsContent as $key => $value) {
				//echo $value;		
			}
		} else {
			//echo $scriptsContent;
		}
	?>
	</div>
	
	<br>
	<div id="footer">
	<?php 
	
		$scriptsContent = $this->footer;
		
		if (is_array($scriptsContent)) {
			foreach ($scriptsContent as $key => $value) {
				echo $value;		
			}
		} else {
			echo $scriptsContent;
		}
		// recupera o conteudo do placeholder footer
		$footer = $this->placeholder("footer")->getValue();
		// verifica se algo foi escrito
		if(!empty($footer)) {
			echo $this->placeholder("footer");
		}
	?>   
	</div>
	
	</body>
	</html>
	' AS template,
	true AS ativo,
	'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_TEMPLATE';

INSERT INTO basico.template (id_categoria, nome, template, ativo, rowinfo)
SELECT c.id AS id_categoria, 'TEMPLATE_AJAX' AS nome,
			'<?php 
	/**
	 * Layout padrão do sistema.
	 */
	?>
	<html>
	<head>    
		<?php
		// enviando ao cliente as informacoes sobre do cabecalho do documento html
		echo $this->headTitle();
		echo $this->headMeta();
		echo $this->headLink();
	
		// setando o dojo
		echo $this->dojo();
	    echo $this->headScript();
	    
	    // recuperando os scripts incluidos na view
	   	$scriptsContent = $this->scripts;
	
	   	// verificando se o scripts eh array
		if (is_array($scriptsContent)) {
			// loop para enviar os scripts
			foreach ($scriptsContent as $key => $value) {
				// enviando script
				echo $value;		
			}
		} else {
			// enviando scripts
			echo $scriptsContent;
		}
	    ?>
	</head>
	
	<body class="rochedo">
	
	<div class="loading"></div>
	<div id="header">
	<?php 
		// recupera o conteudo do placeholder headerMenu
		$headerMenu = $this->placeholder("headerMenu")->getValue();
		// verifica se algo foi escrito
		if(!empty($headerMenu)) {
			echo $this->placeholder("headerMenu");
		}
	
	
		$scriptsContent = $this->header;
		
		if (is_array($scriptsContent)) {
			foreach ($scriptsContent as $key => $value) {
				echo $value;		
			}
		} else {
			echo $scriptsContent;
		}
	
	?>   
	</div>
	<div id="content">
	<?php
		// recupera o conteudo do placeholder headerMenu
		$content = $this->placeholder("content")->getValue();
		// verifica se algo foi escrito
		if(!empty($content)) {
			echo $this->placeholder("content");
		}
	
	
		$scriptsContent = $this->content;
		
		if (is_array($scriptsContent)) {
			foreach ($scriptsContent as $key => $value) {
				//echo $value;		
			}
		} else {
			//echo $scriptsContent;
		}
	?>
	</div>
	
	<br>
	<div id="footer">
	<?php 
	
		$scriptsContent = $this->footer;
		
		if (is_array($scriptsContent)) {
			foreach ($scriptsContent as $key => $value) {
				echo $value;		
			}
		} else {
			echo $scriptsContent;
		}
		// recupera o conteudo do placeholder footer
		$footer = $this->placeholder("footer")->getValue();
		// verifica se algo foi escrito
		if(!empty($footer)) {
			echo $this->placeholder("footer");
		}
	?>   
	</div>
	
	</body>
	</html>
	' AS template,
	true AS ativo,
	'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
LEFT JOIN basico.categoria c ON (t.id = c.id_tipo_categoria)
WHERE t.nome = 'FORMULARIO'
AND c.nome = 'FORMULARIO_TEMPLATE';