<%@ page import="columbia.Reporte" %>



<div class="fieldcontain ${hasErrors(bean: reporteInstance, field: 'fecha', 'error')} required">
	<label for="fecha">
		<g:message code="reporte.fecha.label" default="Fecha" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fecha" precision="day"  value="${reporteInstance?.fecha}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: reporteInstance, field: 'motivo', 'error')} required">
	<label for="motivo">
		<g:message code="reporte.motivo.label" default="Motivo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="motivo" maxlength="45" required="" value="${reporteInstance?.motivo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: reporteInstance, field: 'observacion', 'error')} required">
	<label for="observacion">
		<g:message code="reporte.observacion.label" default="Observacion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="observacion" maxlength="45" required="" value="${reporteInstance?.observacion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: reporteInstance, field: 'puntos', 'error')} required">
	<label for="puntos">
		<g:message code="reporte.puntos.label" default="Puntos" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="puntos" type="number" min="1" value="${reporteInstance.puntos}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: reporteInstance, field: 'alumno', 'error')} required">
	<label for="alumno">
		<g:message code="reporte.alumno.label" default="Alumno" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="alumno" name="alumno.id" from="${columbia.Alumno.list()}" optionKey="id" required="" value="${reporteInstance?.alumno?.id}" class="many-to-one"/>
</div>

