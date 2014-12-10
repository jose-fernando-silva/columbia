package columbia

class Profesor extends Usuario{
	static hasMany = [grupos:Grupo]
    static constraints = {
    	grupos nullable:false
    }

    String toString() {
		"${nombre} ${apellidoPaterno} ${apellidoMaterno}"
	}
}
