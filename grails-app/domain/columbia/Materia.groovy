package columbia

class Materia {
	String nombre
	Integer creditos = 3
	Nivel nivel
	Profesor profesor

    static constraints = {
    	nombre blank:false, maxSize:45
    	creditos nullable:false, min:1
    	nivel nullable:false
    	profesor nullable:false
    }

    String toString() {
    	"Materia: ${nombre}, Profesor: ${profesor}"
    }
}
