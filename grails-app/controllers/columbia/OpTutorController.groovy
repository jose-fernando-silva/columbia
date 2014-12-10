package columbia

class OpTutorController {
	static scope = 'session'
	static def actual
	static def hijos 
	static def hijoActual

    def index() { 
      	if(params.hijo != null)
      		hijoActual = Alumno.get(params.hijo)     	
    	[actual:actual, hijos:hijos, hijoActual:hijoActual]
    }

    def elegirHijo() {
    	if (isLoggedIn()) {
        	actual = getAuthenticatedUser().nombre
        	actual = actual + " " + getAuthenticatedUser().apellidoPaterno
        	actual = actual + " " + getAuthenticatedUser().apellidoMaterno

        	hijos = Alumno.findAllByTutor(getAuthenticatedUser() as Tutor)
      	}
    	[actual:actual, hijos:hijos]
    }

    def list() {
    	def lista = Avisos.findAllByAlumno(hijoActual)
    	[lista:lista,actual:actual, hijos:hijos, hijoActual:hijoActual]
    }

    def estadoConducta() {
    	def conducta = Conducta.findByAlumno(hijoActual)
    	[actual:actual, hijos:hijos, hijoActual:hijoActual,conducta:conducta]	
    }

    def listReportes() {
		def lista = Reporte.findAllByAlumno(hijoActual)
    	[lista:lista,actual:actual, hijos:hijos, hijoActual:hijoActual]    	
    }

    def materiasProfesores() {
    	def grupo = Alumno.get(hijoActual.id).grupo
        def nivel = Alumno.get(hijoActual.id).nivel
        def materias = Materia.findAllByNivel(nivel)


    	[actual:actual, hijos:hijos, hijoActual:hijoActual,grupo:grupo,nivel:nivel,materias:materias]    	

    }

    def horario() {
        def grupo = Alumno.get(hijoActual.id).grupo
        def nivel = Alumno.get(hijoActual.id).nivel
        def materias = Materia.findAllByNivel(nivel)
        def horarios = []
        materias.each{
            horarios.add(ModulosMateriasGrupos.findAllByMateriaAndGrupo(it,grupo))
        }

        [actual:actual, hijos:hijos, hijoActual:hijoActual,grupo:grupo,nivel:nivel,
         materias:materias,horarios:horarios]              
    }

    def calificaciones() {
        def grupo = Alumno.get(hijoActual.id).grupo
        def nivel = Alumno.get(hijoActual.id).nivel
        def materias = Materia.findAllByNivel(nivel)
        def calificacion = []
        def aux = []
        materias.each() {
            aux.add(Evaluacion.find("from Evaluacion as p where p.alumno = ? and p.bimestre = ? and p.materia = ?",[hijoActual,Bimestre.findByDescripcion("Primer Bimestre"),it]))
            aux.add(Evaluacion.find("from Evaluacion as p where p.alumno = ? and p.bimestre = ? and p.materia = ?",[hijoActual,Bimestre.findByDescripcion("Segundo Bimestre"),it]))
            aux.add(Evaluacion.find("from Evaluacion as p where p.alumno = ? and p.bimestre = ? and p.materia = ?",[hijoActual,Bimestre.findByDescripcion("Tercer Bimestre"),it]))
            aux.add(Evaluacion.find("from Evaluacion as p where p.alumno = ? and p.bimestre = ? and p.materia = ?",[hijoActual,Bimestre.findByDescripcion("Cuarto Bimestre"),it]))
            aux.add(Evaluacion.find("from Evaluacion as p where p.alumno = ? and p.bimestre = ? and p.materia = ?",[hijoActual,Bimestre.findByDescripcion("Quinto Bimestre"),it]))
            calificacion.add(aux)
            aux =[]
        }

        [actual:actual, hijos:hijos, hijoActual:hijoActual,grupo:grupo,nivel:nivel,
         materias:materias,calificaciones:calificacion]                 
    }

    def faltas() {
        def grupo = Alumno.get(hijoActual.id).grupo
        def nivel = Alumno.get(hijoActual.id).nivel
        def materias = Materia.findAllByNivel(nivel)
        def faltas = []
        def aux = []
        materias.each() {
            aux.add(Evaluacion.find("from Evaluacion as p where p.alumno = ? and p.bimestre = ? and p.materia = ?",[hijoActual,Bimestre.findByDescripcion("Primer Bimestre"),it]))
            aux.add(Evaluacion.find("from Evaluacion as p where p.alumno = ? and p.bimestre = ? and p.materia = ?",[hijoActual,Bimestre.findByDescripcion("Segundo Bimestre"),it]))
            aux.add(Evaluacion.find("from Evaluacion as p where p.alumno = ? and p.bimestre = ? and p.materia = ?",[hijoActual,Bimestre.findByDescripcion("Tercer Bimestre"),it]))
            aux.add(Evaluacion.find("from Evaluacion as p where p.alumno = ? and p.bimestre = ? and p.materia = ?",[hijoActual,Bimestre.findByDescripcion("Cuarto Bimestre"),it]))
            aux.add(Evaluacion.find("from Evaluacion as p where p.alumno = ? and p.bimestre = ? and p.materia = ?",[hijoActual,Bimestre.findByDescripcion("Quinto Bimestre"),it]))
            faltas.add(aux)
            aux =[]
        }

        [actual:actual, hijos:hijos, hijoActual:hijoActual,grupo:grupo,nivel:nivel,
         materias:materias,faltas:faltas]                 
    }
}
