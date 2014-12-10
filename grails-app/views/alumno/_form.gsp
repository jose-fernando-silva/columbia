<%@ page import="columbia.Alumno" %>



<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'apellidoPaterno', 'error')} required">
	<label for="apellidoPaterno">
		<g:message code="alumno.apellidoPaterno.label" default="Apellido Paterno" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellidoPaterno" maxlength="45" required="" value="${alumnoInstance?.apellidoPaterno}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'apellidoMaterno', 'error')} required">
	<label for="apellidoMaterno">
		<g:message code="alumno.apellidoMaterno.label" default="Apellido Materno" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellidoMaterno" maxlength="45" required="" value="${alumnoInstance?.apellidoMaterno}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="alumno.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" maxlength="45" required="" value="${alumnoInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'fechaNacimiento', 'error')} required">
	<label for="fechaNacimiento">
		<g:message code="alumno.fechaNacimiento.label" default="Fecha Nacimiento" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaNacimiento" precision="day"  value="${alumnoInstance?.fechaNacimiento}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'curp', 'error')} required">
	<label for="curp">
		<g:message code="alumno.curp.label" default="Curp" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="curp" maxlength="18" required="" value="${alumnoInstance?.curp}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'cicloEscolar', 'error')} required">
	<label for="cicloEscolar">
		<g:message code="alumno.cicloEscolar.label" default="Ciclo Escolar" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cicloEscolar" required="" value="${alumnoInstance?.cicloEscolar}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'tutor', 'error')} required">
	<label for="tutor">
		<g:message code="alumno.tutor.label" default="Tutor" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="tutor" name="tutor.id" from="${columbia.Tutor.list()}" optionKey="id" required="" value="${alumnoInstance?.tutor?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'nivel', 'error')} required">
	<label for="nivel">
		<g:message code="alumno.nivel.label" default="Nivel" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="nivel" name="nivel.id" from="${columbia.Nivel.list()}" optionKey="id" required="" value="${alumnoInstance?.nivel?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'grupo', 'error')} required">
	<label for="grupo">
		<g:message code="alumno.grupo.label" default="Grupo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="grupo" name="grupo.id" from="${columbia.Grupo.list()}" optionKey="id" required="" value="${alumnoInstance?.grupo?.id}" class="many-to-one"/>
</div>

