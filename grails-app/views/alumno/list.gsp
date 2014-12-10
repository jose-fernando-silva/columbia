
<%@ page import="columbia.Alumno" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'alumno.label', default: 'Alumno')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-alumno" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><g:link class="home" controller="opAdministrador" action="index">Principal</g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-alumno" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="apellidoPaterno" title="${message(code: 'alumno.apellidoPaterno.label', default: 'Apellido Paterno')}" />
					
						<g:sortableColumn property="apellidoMaterno" title="${message(code: 'alumno.apellidoMaterno.label', default: 'Apellido Materno')}" />
					
						<g:sortableColumn property="nombre" title="${message(code: 'alumno.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="fechaNacimiento" title="${message(code: 'alumno.fechaNacimiento.label', default: 'Fecha Nacimiento')}" />
					
						<g:sortableColumn property="curp" title="${message(code: 'alumno.curp.label', default: 'Curp')}" />
					
						<g:sortableColumn property="cicloEscolar" title="${message(code: 'alumno.cicloEscolar.label', default: 'Ciclo Escolar')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${alumnoInstanceList}" status="i" var="alumnoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${alumnoInstance.id}">${fieldValue(bean: alumnoInstance, field: "apellidoPaterno")}</g:link></td>
					
						<td>${fieldValue(bean: alumnoInstance, field: "apellidoMaterno")}</td>
					
						<td>${fieldValue(bean: alumnoInstance, field: "nombre")}</td>
					
						<td><g:formatDate date="${alumnoInstance.fechaNacimiento}" /></td>
					
						<td>${fieldValue(bean: alumnoInstance, field: "curp")}</td>
					
						<td>${fieldValue(bean: alumnoInstance, field: "cicloEscolar")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${alumnoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
