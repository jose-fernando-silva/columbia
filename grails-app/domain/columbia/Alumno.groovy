package columbia

class Alumno {
	String apellidoPaterno
	String apellidoMaterno
	String nombre
	Date fechaNacimiento
	String curp
	String cicloEscolar = '2013-2014'
	Tutor tutor
	Nivel nivel
	Grupo grupo
    
    static constraints = {
		apellidoPaterno blank:false, maxSize:45
		apellidoMaterno blank:false, maxSize:45
		nombre blank:false, maxSize:45
		fechaNacimiento nullable:false
		curp blank:false, minSize:18, maxSize:18
		cicloEscolar blank:false
		tutor nullable:false
		nivel nullable:false
		grupo nullable:false
	}

	String toString() {
		"${nombre} ${apellidoPaterno} ${apellidoMaterno}"
	}
}
