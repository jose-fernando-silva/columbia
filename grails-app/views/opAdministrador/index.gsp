<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Administrador</title>
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
					<li><g:link controller="usuario">Usuarios</g:link></li>
					<li><g:link controller="administrador">Administradores</g:link></li>
					<li><g:link controller="tutor">Tutores</g:link></li>
					<li><g:link controller="profesor">Profesores</g:link></li>
					<li><g:link controller="prefecto">Prefectos</g:link></li>
					<li><g:link controller="rol">Roles</g:link></li>
					<li><g:link controller="usuarioRol">Roles de Usuarios</g:link></li>
					<li><g:link controller="nivel">Niveles Escolares</g:link></li>
					<li><g:link controller="grupo">Grupos</g:link></li>
					<li><g:link controller="alumno">Alumnos</g:link></li>
					<li><g:link controller="materia">Materias</g:link></li>
					<li><g:link controller="modulo">Modulos</g:link></li>
					<li><g:link controller="modulosMateriasGrupos">Asignar Modulos</g:link></li>
					<li><g:link controller='logout'>Cerrar Sesión</g:link></li>
				</ul>
			</div>

		</div>

		<div id="page-body" role="main">
			<h2 style="font-size:22px;">Bienvenido ${actual}</h2>
     

			<div id="controller-list" role="navigation">
				<center><img src="${resource(dir: 'images', file: 'administrador.jpg')}" width="60%" height="60%"></center>
			</div>
		</div>

	</body>
</html>
