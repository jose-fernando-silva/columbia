package columbia

class Usuario {

	transient springSecurityService

	String username
	String password
	String apellidoPaterno
	String apellidoMaterno
	String nombre
	String email
	Integer telefono
	boolean enabled
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired

	static constraints = {
		username blank: false, unique: true
		password blank: false
		apellidoPaterno blank:false, maxSize:45
		apellidoMaterno blank:false, maxSize:45
		nombre blank:false, maxSize:45
		email blank:false, maxSize:45, email:true
		telefono nullable:false
	}

	static mapping = {
		password column: '`password`'
		tablePerHierarchy false
	}

	Set<Rol> getAuthorities() {
		UsuarioRol.findAllByUsuario(this).collect { it.rol } as Set
	}

	def beforeInsert() {
		encodePassword()
	}

	def beforeUpdate() {
		if (isDirty('password')) {
			encodePassword()
		}
	}

	protected void encodePassword() {
		password = springSecurityService.encodePassword(password)
	}
}
