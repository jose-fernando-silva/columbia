package columbia

class Nivel {
	String grado
    static constraints = {
    	grado blank:false, maxSize:45
    }

    String toString() {
    	grado
    }
}
