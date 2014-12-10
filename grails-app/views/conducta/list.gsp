
<%@ page import="columbia.Conducta" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'conducta.label', default: 'Conducta')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-conducta" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><g:link class="home" controller="opPrefecto" action="index">Principal</g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-conducta" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="puntosRestantes" title="${message(code: 'conducta.puntosRestantes.label', default: 'Puntos Restantes')}" />
					
						<g:sortableColumn property="estado" title="${message(code: 'conducta.estado.label', default: 'Estado')}" />
					
						<th><g:message code="conducta.alumno.label" default="Alumno" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${conductaInstanceList}" status="i" var="conductaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${conductaInstance.id}">${fieldValue(bean: conductaInstance, field: "puntosRestantes")}</g:link></td>
					
						<td>${fieldValue(bean: conductaInstance, field: "estado")}</td>
					
						<td>${fieldValue(bean: conductaInstance, field: "alumno")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${conductaInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
