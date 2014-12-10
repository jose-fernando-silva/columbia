
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<title>Horario</title>
	</head>
	<body>
		<a href="#list-avisos" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><g:link class="home" controller="opTutor" action="index">Principal</g:link></li>
			</ul>
		</div>
		<div id="show-conducta" class="content scaffold-show" role="main">
			<h1>Horario de  ${hijoActual}</h1><br>
			<h2 style="margin-left:2em; font-size:21px;">Grado y Grupo: </h2>
			<h4 style="margin-left:3em; font-size:19px; color:#848484;">${grupo}</h4><br>

			<g:set var="i" value="${0}"/>		
			<g:each in="${horarios}" var="${horario}">
				<h2 style="margin-left:2em; font-size:20px;">${materias[i++].nombre}</h2>
				<g:each in="${horario}" var="${hora}">
					<h4 style="margin-left:3em; font-size:18px; color:#848484;">${hora.modulo}</h4>
				</g:each>
				<br>
			</g:each>
		</div>
	</body>
</html>
