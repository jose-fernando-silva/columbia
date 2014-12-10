package columbia

class Grupo {
	String grupo
	String aula
	Nivel nivel
    static belongsTo = Profesor
    static hasMany = [profesores:Profesor]
    static constraints = {
    	grupo blank:false,maxSize:45
    	aula blank:false,maxSize:45
    	nivel nullable:false
        profesores nullable:true
    }

    String toString() {
    	"${nivel.grado} Grupo: ${grupo}"
    }
}
