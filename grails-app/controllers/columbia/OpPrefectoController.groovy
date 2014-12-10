package columbia

class OpPrefectoController {

    def index() { 
    	def actual
    	if (isLoggedIn()) {
        	actual = getAuthenticatedUser().nombre
        	actual = actual + " " + getAuthenticatedUser().apellidoPaterno
        	actual = actual + " " + getAuthenticatedUser().apellidoMaterno
      	}
    	[actual:actual]
    }
}
