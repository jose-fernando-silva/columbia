<%@ page import="columbia.Modulo" %>



<div class="fieldcontain ${hasErrors(bean: moduloInstance, field: 'dia', 'error')} required">
	<label for="dia">
		<g:message code="modulo.dia.label" default="Dia" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="dia" maxlength="45" required="" value="${moduloInstance?.dia}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: moduloInstance, field: 'hora', 'error')} required">
	<label for="hora">
		<g:message code="modulo.hora.label" default="Hora" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="hora" maxlength="45" required="" value="${moduloInstance?.hora}"/>
</div>

