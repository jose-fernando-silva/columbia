<%@ page import="columbia.Conducta" %>



<div class="fieldcontain ${hasErrors(bean: conductaInstance, field: 'puntosRestantes', 'error')} required">
	<label for="puntosRestantes">
		<g:message code="conducta.puntosRestantes.label" default="Puntos Restantes" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="puntosRestantes" type="number" value="${conductaInstance.puntosRestantes}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: conductaInstance, field: 'estado', 'error')} required">
	<label for="estado">
		<g:message code="conducta.estado.label" default="Estado" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="estado" maxlength="45" required="" value="${conductaInstance?.estado}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: conductaInstance, field: 'alumno', 'error')} required">
	<label for="alumno">
		<g:message code="conducta.alumno.label" default="Alumno" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="alumno" name="alumno.id" from="${columbia.Alumno.list()}" optionKey="id" required="" value="${conductaInstance?.alumno?.id}" class="many-to-one"/>
</div>

