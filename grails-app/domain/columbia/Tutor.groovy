package columbia

class Tutor extends Usuario{

    static constraints = {
    }

    String toString() {
		"${nombre} ${apellidoPaterno} ${apellidoMaterno}"
	}
}
