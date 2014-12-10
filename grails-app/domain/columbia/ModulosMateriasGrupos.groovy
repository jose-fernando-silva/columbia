package columbia

class ModulosMateriasGrupos {
	Grupo grupo
	Modulo modulo
	Materia materia

    static constraints = {
    	grupo nullable:false
    	modulo nullable:false
    	materia nullable:false
    }

    String toString() {
    	"${grupo} ${materia} ${modulo}"
    }
}
