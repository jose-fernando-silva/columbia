
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<title>Lista de reportes</title>
	</head>
	<body>
		<a href="#list-avisos" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><g:link class="home" controller="opTutor" action="index">Principal</g:link></li>
			</ul>
		</div>
		<div id="list-avisos" class="content scaffold-list" role="main">
			<h1>Lista de reportes</h1><br>
			<table width="10%">
				<tr>	
					<th>FECHA</th>
					<th>MOTIVO</th>
					<th>OBSERVACIÓN</th>
					<th>PUNTOS</th>
				</tr>
				<g:each in="${lista}" var="${actual}">
					<tr>
						<td>${actual.fecha.format('dd/MM/yy')}</td>
						<td>${actual.motivo}</td>
						<td>${actual.observacion}</td>
						<td>${actual.puntos}</td>
					</tr>
				</g:each>
			</table>
		</div>
	</body>
</html>
