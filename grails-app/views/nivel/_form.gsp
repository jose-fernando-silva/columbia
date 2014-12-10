<%@ page import="columbia.Nivel" %>



<div class="fieldcontain ${hasErrors(bean: nivelInstance, field: 'grado', 'error')} required">
	<label for="grado">
		<g:message code="nivel.grado.label" default="Grado" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="grado" maxlength="45" required="" value="${nivelInstance?.grado}"/>
</div>

