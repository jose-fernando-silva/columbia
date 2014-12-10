<%@ page import="columbia.Materia" %>



<div class="fieldcontain ${hasErrors(bean: materiaInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="materia.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" maxlength="45" required="" value="${materiaInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: materiaInstance, field: 'creditos', 'error')} required">
	<label for="creditos">
		<g:message code="materia.creditos.label" default="Creditos" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="creditos" type="number" min="1" value="${materiaInstance.creditos}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: materiaInstance, field: 'nivel', 'error')} required">
	<label for="nivel">
		<g:message code="materia.nivel.label" default="Nivel" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="nivel" name="nivel.id" from="${columbia.Nivel.list()}" optionKey="id" required="" value="${materiaInstance?.nivel?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: materiaInstance, field: 'profesor', 'error')} required">
	<label for="profesor">
		<g:message code="materia.profesor.label" default="Profesor" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="profesor" name="profesor.id" from="${columbia.Profesor.list()}" optionKey="id" required="" value="${materiaInstance?.profesor?.id}" class="many-to-one"/>
</div>

