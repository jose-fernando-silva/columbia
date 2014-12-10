<%@ page import="columbia.Profesor" %>



<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="profesor.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${profesorInstance?.username}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="profesor.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${profesorInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'apellidoPaterno', 'error')} required">
	<label for="apellidoPaterno">
		<g:message code="profesor.apellidoPaterno.label" default="Apellido Paterno" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellidoPaterno" maxlength="45" required="" value="${profesorInstance?.apellidoPaterno}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'apellidoMaterno', 'error')} required">
	<label for="apellidoMaterno">
		<g:message code="profesor.apellidoMaterno.label" default="Apellido Materno" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellidoMaterno" maxlength="45" required="" value="${profesorInstance?.apellidoMaterno}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="profesor.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" maxlength="45" required="" value="${profesorInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="profesor.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" maxlength="45" required="" value="${profesorInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'telefono', 'error')} required">
	<label for="telefono">
		<g:message code="profesor.telefono.label" default="Telefono" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="telefono" type="number" value="${profesorInstance.telefono}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'grupos', 'error')} required">
	<label for="grupos">
		<g:message code="profesor.grupos.label" default="Grupos" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="grupos" from="${columbia.Grupo.list()}" multiple="multiple" optionKey="id" size="5" required="" value="${profesorInstance?.grupos*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'accountExpired', 'error')} ">
	<label for="accountExpired">
		<g:message code="profesor.accountExpired.label" default="Account Expired" />
		
	</label>
	<g:checkBox name="accountExpired" value="${profesorInstance?.accountExpired}" />
</div>

<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'accountLocked', 'error')} ">
	<label for="accountLocked">
		<g:message code="profesor.accountLocked.label" default="Account Locked" />
		
	</label>
	<g:checkBox name="accountLocked" value="${profesorInstance?.accountLocked}" />
</div>

<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="profesor.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${profesorInstance?.enabled}" />
</div>

<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired">
		<g:message code="profesor.passwordExpired.label" default="Password Expired" />
		
	</label>
	<g:checkBox name="passwordExpired" value="${profesorInstance?.passwordExpired}" />
</div>

