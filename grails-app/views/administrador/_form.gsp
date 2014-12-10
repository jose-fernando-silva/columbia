<%@ page import="columbia.Administrador" %>



<div class="fieldcontain ${hasErrors(bean: administradorInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="administrador.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${administradorInstance?.username}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: administradorInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="administrador.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${administradorInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: administradorInstance, field: 'apellidoPaterno', 'error')} required">
	<label for="apellidoPaterno">
		<g:message code="administrador.apellidoPaterno.label" default="Apellido Paterno" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellidoPaterno" maxlength="45" required="" value="${administradorInstance?.apellidoPaterno}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: administradorInstance, field: 'apellidoMaterno', 'error')} required">
	<label for="apellidoMaterno">
		<g:message code="administrador.apellidoMaterno.label" default="Apellido Materno" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellidoMaterno" maxlength="45" required="" value="${administradorInstance?.apellidoMaterno}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: administradorInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="administrador.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" maxlength="45" required="" value="${administradorInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: administradorInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="administrador.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" maxlength="45" required="" value="${administradorInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: administradorInstance, field: 'telefono', 'error')} required">
	<label for="telefono">
		<g:message code="administrador.telefono.label" default="Telefono" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="telefono" type="number" value="${administradorInstance.telefono}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: administradorInstance, field: 'accountExpired', 'error')} ">
	<label for="accountExpired">
		<g:message code="administrador.accountExpired.label" default="Account Expired" />
		
	</label>
	<g:checkBox name="accountExpired" value="${administradorInstance?.accountExpired}" />
</div>

<div class="fieldcontain ${hasErrors(bean: administradorInstance, field: 'accountLocked', 'error')} ">
	<label for="accountLocked">
		<g:message code="administrador.accountLocked.label" default="Account Locked" />
		
	</label>
	<g:checkBox name="accountLocked" value="${administradorInstance?.accountLocked}" />
</div>

<div class="fieldcontain ${hasErrors(bean: administradorInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="administrador.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${administradorInstance?.enabled}" />
</div>

<div class="fieldcontain ${hasErrors(bean: administradorInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired">
		<g:message code="administrador.passwordExpired.label" default="Password Expired" />
		
	</label>
	<g:checkBox name="passwordExpired" value="${administradorInstance?.passwordExpired}" />
</div>

