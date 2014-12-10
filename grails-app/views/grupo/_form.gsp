<%@ page import="columbia.Grupo" %>



<div class="fieldcontain ${hasErrors(bean: grupoInstance, field: 'grupo', 'error')} required">
	<label for="grupo">
		<g:message code="grupo.grupo.label" default="Grupo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="grupo" maxlength="45" required="" value="${grupoInstance?.grupo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: grupoInstance, field: 'aula', 'error')} required">
	<label for="aula">
		<g:message code="grupo.aula.label" default="Aula" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="aula" maxlength="45" required="" value="${grupoInstance?.aula}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: grupoInstance, field: 'nivel', 'error')} required">
	<label for="nivel">
		<g:message code="grupo.nivel.label" default="Nivel" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="nivel" name="nivel.id" from="${columbia.Nivel.list()}" optionKey="id" required="" value="${grupoInstance?.nivel?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: grupoInstance, field: 'profesores', 'error')} ">
	<label for="profesores">
		<g:message code="grupo.profesores.label" default="Profesores" />
		
	</label>
	
</div>

