
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<title>Calificaciones</title>
	</head>
	<body>
		<a href="#list-avisos" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><g:link class="home" controller="opTutor" action="index">Principal</g:link></li>
			</ul>
		</div>
		<div id="show-conducta" class="content scaffold-show" role="main">
			<h1>Calificaciones por bimestre de ${hijoActual}</h1><br>
			<table width="10%">
				<tr>	
					<th>Materia/Bimestre</th>
					<th>Primer Bimestre</th>
					<th>Segundo Bimestre</th>
					<th>Tercer Bimestre</th>
					<th>Cuarto Bimestre</th>
					<th>Quinto Bimestre</th>
				</tr>

					<g:set var="i" value="${0}"/>		
					<g:each in="${calificaciones}" var="${calificacion}">
						<tr>
						<td>${materias[i++].nombre}</td>
						<g:each in="${calificacion}" var="${calf}">
							<td>${(calf?.calificacion)?:'ND'}</td>
						</g:each>
						</tr>
					</g:each>	
			</table>
		</div>
	</body>
</html>
