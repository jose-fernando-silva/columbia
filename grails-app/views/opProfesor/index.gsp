<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Profesor</title>
		<style type="text/css" media="screen">
			#status {
				background-color: #eee;
				border: .2em solid #fff;
				margin: 2em 2em 1em;
				padding: 1em;
				width: 15em;
				float: left;
				-moz-box-shadow: 0px 0px 1.25em #ccc;
				-webkit-box-shadow: 0px 0px 1.25em #ccc;
				box-shadow: 0px 0px 1.25em #ccc;
				-moz-border-radius: 0.6em;
				-webkit-border-radius: 0.6em;
				border-radius: 0.6em;
			}

			.ie6 #status {
				display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
			}

			#status ul {
				font-size: 0.9em;
				list-style-type: none;
				margin-bottom: 0.6em;
				padding: 0;
			}

			#status li {
				line-height: 1.3;
			}

			#status h1 {
				text-transform: uppercase;
				font-size: 1.1em;
				margin: 0 0 0.3em;
			}

			#page-body {
				margin: 2em 1em 1.25em 23em;
			}

			h2 {
				margin-top: 1em;
				margin-bottom: 0.3em;
				font-size: 1em;
			}

			p {
				line-height: 1.5;
				margin: 0.25em 0;
			}

			#controller-list ul {
				list-style-position: inside;
			}

			#controller-list li {
				line-height: 1.3;
				list-style-position: inside;
				margin: 0.25em 0;
			}

			@media screen and (max-width: 480px) {
				#status {
					display: none;
				}

				#page-body {
					margin: 0 1em 1em;
				}

				#page-body h1 {
					margin-top: 0;
				}
			}

			#menu ul {
				list-style-type: none;
    			margin: 0px;
    			padding: 0px;
    			width: 245px;
    			font-family: sans-serif;
    			font-size: 12pt;
    			font-weight: bold;
			}

			#menu ul li {
    			background-color: #084B8A;
			}

			#menu ul li a {
				height: 10px;
    			color: #ccc;
    			text-decoration: none;
    			text-transform: uppercase;
    			display: block;
    			padding: 10px 10px 10px 20px;
			}

			#menu ul li a:hover {
    			background: #000;
    			border-left: 10px solid #333;
    			color: #fff;
    			border-color: red;
			}
		</style>
	</head>
	<body>
		<a href="#page-body" class="skip"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div id="status" role="complementary">
			<h1 style="font-size: 20px;font-weight: bold;">Operaciones disponibles</h1>

			<div id="menu">
				<ul>
					<li><g:link controller='opProfesor' action="elegirBimestre">Elegir Bimestre</g:link></li>
					<li><g:link controller='opProfesor' action="elegirGrupo">Elegir Grupo</g:link></li>
					<li><g:link controller='logout'>Cerrar Sesión</g:link></li>
				</ul>
			</div>

		</div>

		<div id="page-body" role="main">
			<h2 style="font-size:18px;">Evaluación a:</h2>
			<h4 style="margin-left:1em; font-size:16px; color:#848484;">${grupoActual}</h4>
			<h2 style="font-size:18px;">Matería:</h2>
			<h4 style="margin-left:1em; font-size:16px; color:#848484;">${materia.nombre}</h4>
			<h2 style="font-size:18px;">Bimestre:</h2>
			<h4 style="margin-left:1em; font-size:16px; color:#848484;">${bimestreActual}</h4>				

			<div id="controller-list" role="navigation">
				<g:form action="validar" >
					<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'tutor', 'error')} required">
						<table width="10%">
							<tr>	
								<th>Alumno</th>
								<th>Calificacion</th>
								<th>No. faltas</th>
							</tr>
							<g:each in="${alumnos}" var="${alumno}">
								<tr>
									<td>${alumno}</td>
									<td>
										<input type="number" name="calificacion" id="calificacion" min="0" max="10" step="1" value="5">
									</td>
									<td>
										<input type="number" name="faltas" id="faltas" min="0"max="100"  step="1" value="0">
									</td>
									<g:hiddenField name="alumno" value="${alumno.getId()}"/>
									<g:hiddenField name="bimestre" value="${bimestreActual.getId()}"/>
									<g:hiddenField name="materia" value="${materia.getId()}"/>
								</tr>
							</g:each>
						</table>
					</div>
					
					<br>
					<fieldset class="buttons">
						<g:submitButton name="Validar" class="save" value="Validar" />
					</fieldset>
			</g:form>
			</div>
		</div>

	</body>
</html>
