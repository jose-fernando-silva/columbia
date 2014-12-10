
<%@ page import="columbia.Reporte" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'reporte.label', default: 'Reporte')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-reporte" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><g:link class="home" controller="opPrefecto" action="index">Principal</g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-reporte" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="fecha" title="${message(code: 'reporte.fecha.label', default: 'Fecha')}" />
					
						<g:sortableColumn property="motivo" title="${message(code: 'reporte.motivo.label', default: 'Motivo')}" />
					
						<g:sortableColumn property="observacion" title="${message(code: 'reporte.observacion.label', default: 'Observacion')}" />
					
						<g:sortableColumn property="puntos" title="${message(code: 'reporte.puntos.label', default: 'Puntos')}" />
					
						<th><g:message code="reporte.alumno.label" default="Alumno" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${reporteInstanceList}" status="i" var="reporteInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${reporteInstance.id}">${fieldValue(bean: reporteInstance, field: "fecha")}</g:link></td>
					
						<td>${fieldValue(bean: reporteInstance, field: "motivo")}</td>
					
						<td>${fieldValue(bean: reporteInstance, field: "observacion")}</td>
					
						<td>${fieldValue(bean: reporteInstance, field: "puntos")}</td>
					
						<td>${fieldValue(bean: reporteInstance, field: "alumno")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${reporteInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
