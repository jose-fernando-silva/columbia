package columbia

class Prefecto extends Usuario{

    static constraints = {
    }

    String toString() {
		"${nombre} ${apellidoPaterno} ${apellidoMaterno}"
	}
    
}
