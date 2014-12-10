
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
		<div id="list-avisos" class="content scaffold-list" role="main">
			<h1>Lista de avisos</h1><br>
			<table width="10%">
				<tr>	
					<th>MOTIVO</th>
					<th>DESCRIPCIÓN</th>
					<th>FECHA</th>
				</tr>
				<g:each in="${lista}" var="${actual}">
					<tr>
						<td>${actual.motivo}</td>
						<td>${actual.descripcion}</td>
						<td>${actual.fecha.format('dd/MM/yy')}</td>
					</tr>
				</g:each>
			</table>
		</div>
	</body>
</html>
