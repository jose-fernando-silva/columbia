<%@ page import="columbia.Tutor" %>



<div class="fieldcontain ${hasErrors(bean: tutorInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="tutor.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${tutorInstance?.username}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tutorInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="tutor.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${tutorInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tutorInstance, field: 'apellidoPaterno', 'error')} required">
	<label for="apellidoPaterno">
		<g:message code="tutor.apellidoPaterno.label" default="Apellido Paterno" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellidoPaterno" maxlength="45" required="" value="${tutorInstance?.apellidoPaterno}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tutorInstance, field: 'apellidoMaterno', 'error')} required">
	<label for="apellidoMaterno">
		<g:message code="tutor.apellidoMaterno.label" default="Apellido Materno" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellidoMaterno" maxlength="45" required="" value="${tutorInstance?.apellidoMaterno}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tutorInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="tutor.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" maxlength="45" required="" value="${tutorInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tutorInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="tutor.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" maxlength="45" required="" value="${tutorInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tutorInstance, field: 'telefono', 'error')} required">
	<label for="telefono">
		<g:message code="tutor.telefono.label" default="Telefono" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="telefono" type="number" value="${tutorInstance.telefono}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: tutorInstance, field: 'accountExpired', 'error')} ">
	<label for="accountExpired">
		<g:message code="tutor.accountExpired.label" default="Account Expired" />
		
	</label>
	<g:checkBox name="accountExpired" value="${tutorInstance?.accountExpired}" />
</div>

<div class="fieldcontain ${hasErrors(bean: tutorInstance, field: 'accountLocked', 'error')} ">
	<label for="accountLocked">
		<g:message code="tutor.accountLocked.label" default="Account Locked" />
		
	</label>
	<g:checkBox name="accountLocked" value="${tutorInstance?.accountLocked}" />
</div>

<div class="fieldcontain ${hasErrors(bean: tutorInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="tutor.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${tutorInstance?.enabled}" />
</div>

<div class="fieldcontain ${hasErrors(bean: tutorInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired">
		<g:message code="tutor.passwordExpired.label" default="Password Expired" />
		
	</label>
	<g:checkBox name="passwordExpired" value="${tutorInstance?.passwordExpired}" />
</div>

