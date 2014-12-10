
<%@ page import="columbia.ModulosMateriasGrupos" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'modulosMateriasGrupos.label', default: 'ModulosMateriasGrupos')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-modulosMateriasGrupos" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><g:link class="home" controller="opAdministrador" action="index">Principal</g:link></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-modulosMateriasGrupos" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list modulosMateriasGrupos">
			
				<g:if test="${modulosMateriasGruposInstance?.grupo}">
				<li class="fieldcontain">
					<span id="grupo-label" class="property-label"><g:message code="modulosMateriasGrupos.grupo.label" default="Grupo" /></span>
					
						<span class="property-value" aria-labelledby="grupo-label"><g:link controller="grupo" action="show" id="${modulosMateriasGruposInstance?.grupo?.id}">${modulosMateriasGruposInstance?.grupo?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${modulosMateriasGruposInstance?.modulo}">
				<li class="fieldcontain">
					<span id="modulo-label" class="property-label"><g:message code="modulosMateriasGrupos.modulo.label" default="Modulo" /></span>
					
						<span class="property-value" aria-labelledby="modulo-label"><g:link controller="modulo" action="show" id="${modulosMateriasGruposInstance?.modulo?.id}">${modulosMateriasGruposInstance?.modulo?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${modulosMateriasGruposInstance?.materia}">
				<li class="fieldcontain">
					<span id="materia-label" class="property-label"><g:message code="modulosMateriasGrupos.materia.label" default="Materia" /></span>
					
						<span class="property-value" aria-labelledby="materia-label"><g:link controller="materia" action="show" id="${modulosMateriasGruposInstance?.materia?.id}">${modulosMateriasGruposInstance?.materia?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${modulosMateriasGruposInstance?.id}" />
					<g:link class="edit" action="edit" id="${modulosMateriasGruposInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
