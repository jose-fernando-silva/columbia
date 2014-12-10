package columbia

class Conducta {
	Integer puntosRestantes = 100
	String estado = "Conducta Excelente"
	Alumno alumno

    static constraints = {
    	puntosRestantes nullable:false
    	estado blank:false,maxSize:45
    	alumno nullable:false
    }

    String toString() {
    	"${alumno}: ${puntosRestantes}"
    }
}
