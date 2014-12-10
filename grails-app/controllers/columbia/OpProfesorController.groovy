package columbia

class OpProfesorController {
	static scope = 'session'
	def profesorService
	static def actual	
	static def grupoActual
	static def grupos
	static def nivel
	static def materia
	static def bimestres
	static def bimestreActual
	static def numeroAlumnos
	static def alumnos

    def index() { 
    	if(params.bimestre != null)
      		bimestreActual = Bimestre.get(params.bimestre)
    	alumnos = Alumno.findAllByGrupo(grupoActual)
    	numeroAlumnos = alumnos.size()
    	[actual:actual,grupos:grupos,grupoActual:grupoActual,materia:materia, bimestres:bimestres,bimestreActual:bimestreActual,alumnos:alumnos]   
    }

    def elegirGrupo() {
    	if (isLoggedIn()) {
        	actual = getAuthenticatedUser().nombre
        	actual = actual + " " + getAuthenticatedUser().apellidoPaterno
        	actual = actual + " " + getAuthenticatedUser().apellidoMaterno
      	}
      	grupos = (getAuthenticatedUser() as Profesor).grupos
    	[actual:actual,grupos:grupos]
    }

    def elegirBimestre() {
    	if(params.grupo != null){
      		grupoActual = Grupo.get(params.grupo)
      		nivel = grupoActual.nivel
      	}
      	materia = Materia.findByProfesorAndNivel(getAuthenticatedUser() as Profesor,nivel)
        bimestres = Bimestre.list([order:'asc'])
     	[actual:actual,grupos:grupos,grupoActual:grupoActual,materia:materia, bimestres:bimestres]   
    }

    def validar() {
    	def resultados = []
    	def aux
    	for(int i = 0; i < numeroAlumnos; i++){
    		aux = new Evaluacion(
    			  calificacion:params.calificacion[i],
    			  faltas:params.faltas[i],
    			  alumno:Alumno.get(params.alumno[i]),
    		  	  bimestre:Bimestre.get(params.bimestre[i]),
    		  	  materia:Materia.get(params.materia[i]))
    		aux.save(flush:true)
    		resultados.add(aux)
    	}
		[resultados:resultados]
    }
}
