
<%@ page import="columbia.Tutor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tutor.label', default: 'Tutor')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-tutor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><g:link class="home" controller="opAdministrador" action="index">Principal</g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-tutor" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="username" title="${message(code: 'tutor.username.label', default: 'Username')}" />
					
						
					
						<g:sortableColumn property="apellidoPaterno" title="${message(code: 'tutor.apellidoPaterno.label', default: 'Apellido Paterno')}" />
					
						<g:sortableColumn property="apellidoMaterno" title="${message(code: 'tutor.apellidoMaterno.label', default: 'Apellido Materno')}" />
					
						<g:sortableColumn property="nombre" title="${message(code: 'tutor.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'tutor.email.label', default: 'Email')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${tutorInstanceList}" status="i" var="tutorInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${tutorInstance.id}">${fieldValue(bean: tutorInstance, field: "username")}</g:link></td>
					
						
					
						<td>${fieldValue(bean: tutorInstance, field: "apellidoPaterno")}</td>
					
						<td>${fieldValue(bean: tutorInstance, field: "apellidoMaterno")}</td>
					
						<td>${fieldValue(bean: tutorInstance, field: "nombre")}</td>
					
						<td>${fieldValue(bean: tutorInstance, field: "email")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${tutorInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
