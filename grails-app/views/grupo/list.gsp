
<%@ page import="columbia.Grupo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'grupo.label', default: 'Grupo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-grupo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><g:link class="home" controller="opAdministrador" action="index">Principal</g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-grupo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="grupo" title="${message(code: 'grupo.grupo.label', default: 'Grupo')}" />
					
						<g:sortableColumn property="aula" title="${message(code: 'grupo.aula.label', default: 'Aula')}" />
					
						<th><g:message code="grupo.nivel.label" default="Nivel" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${grupoInstanceList}" status="i" var="grupoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${grupoInstance.id}">${fieldValue(bean: grupoInstance, field: "grupo")}</g:link></td>
					
						<td>${fieldValue(bean: grupoInstance, field: "aula")}</td>
					
						<td>${fieldValue(bean: grupoInstance, field: "nivel")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${grupoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
