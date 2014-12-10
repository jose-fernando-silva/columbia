import columbia.*
class BootStrap {

    def init = { servletContext ->
    	/*def rol1 = new Rol(authority: 'ROLE_ADMINISTRADOR')
      rol1.save(flush: true)
      def rol2 = new Rol(authority: 'ROLE_TUTOR')
      rol2.save(flush: true)
      def rol3 = new Rol(authority: 'ROLE_PROFESOR')
      rol3.save(flush: true)
      def rol4 = new Rol(authority: 'ROLE_PREFECTO')
      rol4.save(flush: true)
      def usuario1 = new Administrador(username:'admin1',password:'1234',apellidoPaterno:'Silva',apellidoMaterno:'Hernández',nombre:'José Fernando',email:'parientefernandox@hotmail.com',telefono:'7711235',enabled:true)
      usuario1.save(flush: true)
      UsuarioRol.create usuario1, rol1, true

      def usuario2 = new Tutor(username:'tutor1',password:'1234',apellidoPaterno:'Lopez',apellidoMaterno:'Garcia',nombre:'José',email:'parientefernandox@hotmail.com',telefono:'7711235',enabled:true)
      usuario2.save(flush: true)
      UsuarioRol.create usuario2, rol2, true

      def usuario3 = new Profesor(username:'profesor1',password:'1234',apellidoPaterno:'Garcia',apellidoMaterno:'Hernández',nombre:'Tania',email:'parientefernandox@hotmail.com',telefono:'7711235',enabled:true)
      usuario3.save(flush: true)
      UsuarioRol.create usuario3, rol3, true

      def usuario4 = new Prefecto(username:'prefecto1',password:'1234',apellidoPaterno:'Gomez',apellidoMaterno:'Ramos',nombre:'Erika',email:'parientefernandox@hotmail.com',telefono:'7711235',enabled:true)
      usuario4.save(flush: true)
      UsuarioRol.create usuario4, rol4, true

      assert Usuario.count() == 4
      assert Rol.count() == 4
      assert UsuarioRol.count() == 4*/
    }
    def destroy = {
    }
}
