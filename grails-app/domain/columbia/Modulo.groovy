package columbia

class Modulo {
	String dia
	String hora

    static constraints = {
    	dia blank:false,maxSize:45
    	hora blank:false,maxSize:45
    }

    String toString() {
    	"Dia: ${dia}, Hora: ${hora}"
    }
}
