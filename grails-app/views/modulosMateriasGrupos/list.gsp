
<%@ page import="columbia.ModulosMateriasGrupos" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'modulosMateriasGrupos.label', default: 'ModulosMateriasGrupos')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-modulosMateriasGrupos" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><g:link class="home" controller="opAdministrador" action="index">Principal</g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-modulosMateriasGrupos" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="modulosMateriasGrupos.grupo.label" default="Grupo" /></th>
					
						<th><g:message code="modulosMateriasGrupos.modulo.label" default="Modulo" /></th>
					
						<th><g:message code="modulosMateriasGrupos.materia.label" default="Materia" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${modulosMateriasGruposInstanceList}" status="i" var="modulosMateriasGruposInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${modulosMateriasGruposInstance.id}">${fieldValue(bean: modulosMateriasGruposInstance, field: "grupo")}</g:link></td>
					
						<td>${fieldValue(bean: modulosMateriasGruposInstance, field: "modulo")}</td>
					
						<td>${fieldValue(bean: modulosMateriasGruposInstance, field: "materia")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${modulosMateriasGruposInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
