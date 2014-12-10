package columbia

class Avisos {
	String motivo
	String descripcion
	Date fecha = new Date()
	Alumno alumno

    static constraints = {
    	motivo blank:false, maxSize:45
    	descripcion blank:false, maxSize:100
    	fecha nullable:false
    	alumno nullable:false
    }

    String toString() {
    	motivo
    }
}
