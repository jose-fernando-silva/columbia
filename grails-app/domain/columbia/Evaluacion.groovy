package columbia

class Evaluacion {
	Integer calificacion
	Integer faltas
	Alumno alumno
	Bimestre bimestre
	Materia materia
    static constraints = {
    	calificacion nullable:false, range:0..10
    	faltas nullable:false, min:0
    	alumno nullable:false
    	bimestre nullable:false
    	materia nullable:false
    }
}
