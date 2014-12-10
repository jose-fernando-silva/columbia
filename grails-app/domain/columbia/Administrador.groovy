package columbia

class Administrador extends Usuario{

    static constraints = {
    }

    String toString() {
		"${nombre} ${apellidoPaterno} ${apellidoMaterno}"
	}
}
