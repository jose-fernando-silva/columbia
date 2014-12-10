<%@ page import="columbia.Prefecto" %>



<div class="fieldcontain ${hasErrors(bean: prefectoInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="prefecto.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${prefectoInstance?.username}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: prefectoInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="prefecto.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${prefectoInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: prefectoInstance, field: 'apellidoPaterno', 'error')} required">
	<label for="apellidoPaterno">
		<g:message code="prefecto.apellidoPaterno.label" default="Apellido Paterno" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellidoPaterno" maxlength="45" required="" value="${prefectoInstance?.apellidoPaterno}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: prefectoInstance, field: 'apellidoMaterno', 'error')} required">
	<label for="apellidoMaterno">
		<g:message code="prefecto.apellidoMaterno.label" default="Apellido Materno" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellidoMaterno" maxlength="45" required="" value="${prefectoInstance?.apellidoMaterno}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: prefectoInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="prefecto.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" maxlength="45" required="" value="${prefectoInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: prefectoInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="prefecto.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" maxlength="45" required="" value="${prefectoInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: prefectoInstance, field: 'telefono', 'error')} required">
	<label for="telefono">
		<g:message code="prefecto.telefono.label" default="Telefono" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="telefono" type="number" value="${prefectoInstance.telefono}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: prefectoInstance, field: 'accountExpired', 'error')} ">
	<label for="accountExpired">
		<g:message code="prefecto.accountExpired.label" default="Account Expired" />
		
	</label>
	<g:checkBox name="accountExpired" value="${prefectoInstance?.accountExpired}" />
</div>

<div class="fieldcontain ${hasErrors(bean: prefectoInstance, field: 'accountLocked', 'error')} ">
	<label for="accountLocked">
		<g:message code="prefecto.accountLocked.label" default="Account Locked" />
		
	</label>
	<g:checkBox name="accountLocked" value="${prefectoInstance?.accountLocked}" />
</div>

<div class="fieldcontain ${hasErrors(bean: prefectoInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="prefecto.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${prefectoInstance?.enabled}" />
</div>

<div class="fieldcontain ${hasErrors(bean: prefectoInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired">
		<g:message code="prefecto.passwordExpired.label" default="Password Expired" />
		
	</label>
	<g:checkBox name="passwordExpired" value="${prefectoInstance?.passwordExpired}" />
</div>

