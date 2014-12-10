<%@ page import="columbia.ModulosMateriasGrupos" %>



<div class="fieldcontain ${hasErrors(bean: modulosMateriasGruposInstance, field: 'grupo', 'error')} required">
	<label for="grupo">
		<g:message code="modulosMateriasGrupos.grupo.label" default="Grupo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="grupo" name="grupo.id" from="${columbia.Grupo.list()}" optionKey="id" required="" value="${modulosMateriasGruposInstance?.grupo?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: modulosMateriasGruposInstance, field: 'modulo', 'error')} required">
	<label for="modulo">
		<g:message code="modulosMateriasGrupos.modulo.label" default="Modulo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="modulo" name="modulo.id" from="${columbia.Modulo.list()}" optionKey="id" required="" value="${modulosMateriasGruposInstance?.modulo?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: modulosMateriasGruposInstance, field: 'materia', 'error')} required">
	<label for="materia">
		<g:message code="modulosMateriasGrupos.materia.label" default="Materia" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="materia" name="materia.id" from="${columbia.Materia.list()}" optionKey="id" required="" value="${modulosMateriasGruposInstance?.materia?.id}" class="many-to-one"/>
</div>

