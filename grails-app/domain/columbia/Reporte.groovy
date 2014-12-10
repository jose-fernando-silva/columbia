package columbia

class Reporte {
	Date fecha = new Date()
	String motivo
	String observacion
	Integer puntos
	Alumno alumno

    static constraints = {
    	fecha nullable:false
    	motivo blank:false, maxSize:45
    	observacion blank:false, maxSize:45
    	puntos nullable:false, min:1
    	alumno nullable:false
    }

    String toString() {
    	"${alumno}: ${motivo}"
    }
}
