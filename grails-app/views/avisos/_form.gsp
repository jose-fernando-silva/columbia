<%@ page import="columbia.Avisos" %>



<div class="fieldcontain ${hasErrors(bean: avisosInstance, field: 'motivo', 'error')} required">
	<label for="motivo">
		<g:message code="avisos.motivo.label" default="Motivo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="motivo" maxlength="45" required="" value="${avisosInstance?.motivo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: avisosInstance, field: 'descripcion', 'error')} required">
	<label for="descripcion">
		<g:message code="avisos.descripcion.label" default="Descripcion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descripcion" maxlength="100" required="" value="${avisosInstance?.descripcion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: avisosInstance, field: 'fecha', 'error')} required">
	<label for="fecha">
		<g:message code="avisos.fecha.label" default="Fecha" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fecha" precision="day"  value="${avisosInstance?.fecha}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: avisosInstance, field: 'alumno', 'error')} required">
	<label for="alumno">
		<g:message code="avisos.alumno.label" default="Alumno" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="alumno" name="alumno.id" from="${columbia.Alumno.list()}" optionKey="id" required="" value="${avisosInstance?.alumno?.id}" class="many-to-one"/>
</div>

