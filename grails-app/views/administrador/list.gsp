
<%@ page import="columbia.Administrador" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'administrador.label', default: 'Administrador')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-administrador" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><g:link class="home" controller="opAdministrador" action="index">Principal</g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-administrador" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="username" title="${message(code: 'administrador.username.label', default: 'Username')}" />
					
						
					
						<g:sortableColumn property="apellidoPaterno" title="${message(code: 'administrador.apellidoPaterno.label', default: 'Apellido Paterno')}" />
					
						<g:sortableColumn property="apellidoMaterno" title="${message(code: 'administrador.apellidoMaterno.label', default: 'Apellido Materno')}" />
					
						<g:sortableColumn property="nombre" title="${message(code: 'administrador.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'administrador.email.label', default: 'Email')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${administradorInstanceList}" status="i" var="administradorInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${administradorInstance.id}">${fieldValue(bean: administradorInstance, field: "username")}</g:link></td>
					
						
					
						<td>${fieldValue(bean: administradorInstance, field: "apellidoPaterno")}</td>
					
						<td>${fieldValue(bean: administradorInstance, field: "apellidoMaterno")}</td>
					
						<td>${fieldValue(bean: administradorInstance, field: "nombre")}</td>
					
						<td>${fieldValue(bean: administradorInstance, field: "email")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${administradorInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
