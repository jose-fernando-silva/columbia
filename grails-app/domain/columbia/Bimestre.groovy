package columbia

class Bimestre {
	String descripcion
    static constraints = {
    	descripcion blank:false, maxSize:45
    }
    String toString() {
    	descripcion
    }
}
