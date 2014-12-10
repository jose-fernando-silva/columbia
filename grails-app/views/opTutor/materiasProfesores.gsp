
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<title>Materias</title>
	</head>
	<body>
		<a href="#list-avisos" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><g:link class="home" controller="opTutor" action="index">Principal</g:link></li>
			</ul>
		</div>
		<div id="show-conducta" class="content scaffold-show" role="main">
			<h1>Informacion de  ${hijoActual}</h1><br>
			<h2 style="margin-left:2em; font-size:21px;">Grado y Grupo: </h2>
			<h4 style="margin-left:3em; font-size:19px; color:#848484;">${grupo}</h4><br>

			<h2 style="margin-left:2em; font-size:21px;">Materias actuales</h2>
			<g:each in="${materias}" var="${ac}">
				<h4 style="margin-left:3em; font-size:19px; color:#848484;">${ac}</h4>
			</g:each>

			<h2 style="margin-left:2em; font-size:21px;"></h2>
			<h4 style="margin-left:3em; font-size:19px; color:#848484;"></h4>

			
		</div>
	</body>
</html>
