
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<title>Lista de avisos</title>
	</head>
	<body>
		<a href="#list-avisos" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><g:link class="home" controller="opTutor" action="index">Principal</g:link></li>
			</ul>
		</div>
		<div id="show-conducta" class="content scaffold-show" role="main">
			<h1>Conducta de ${hijoActual}</h1><br>
			<h2 style="margin-left:2em; font-size:19px;">Puntos Restantes: </h2>
			<h4 style="margin-left:3em; font-size:17px;">${conducta.puntosRestantes}</h4>
			<h2 style="margin-left:2em; font-size:19px;">Estado: </h2>
			<h4 style="margin-left:3em; font-size:17px;">${conducta.estado}</h4>
		</div>
	</body>
</html>
