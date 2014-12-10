package columbia

import org.springframework.dao.DataIntegrityViolationException

class AdministradorController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [administradorInstanceList: Administrador.list(params), administradorInstanceTotal: Administrador.count()]
    }

    def create() {
        [administradorInstance: new Administrador(params)]
    }

    def save() {
        def administradorInstance = new Administrador(params)
        if (!administradorInstance.save(flush: true)) {
            render(view: "create", model: [administradorInstance: administradorInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'administrador.label', default: 'Administrador'), administradorInstance.id])
        redirect(action: "show", id: administradorInstance.id)
    }

    def show(Long id) {
        def administradorInstance = Administrador.get(id)
        if (!administradorInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'administrador.label', default: 'Administrador'), id])
            redirect(action: "list")
            return
        }

        [administradorInstance: administradorInstance]
    }

    def edit(Long id) {
        def administradorInstance = Administrador.get(id)
        if (!administradorInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'administrador.label', default: 'Administrador'), id])
            redirect(action: "list")
            return
        }

        [administradorInstance: administradorInstance]
    }

    def update(Long id, Long version) {
        def administradorInstance = Administrador.get(id)
        if (!administradorInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'administrador.label', default: 'Administrador'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (administradorInstance.version > version) {
                administradorInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'administrador.label', default: 'Administrador')] as Object[],
                          "Another user has updated this Administrador while you were editing")
                render(view: "edit", model: [administradorInstance: administradorInstance])
                return
            }
        }

        administradorInstance.properties = params

        if (!administradorInstance.save(flush: true)) {
            render(view: "edit", model: [administradorInstance: administradorInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'administrador.label', default: 'Administrador'), administradorInstance.id])
        redirect(action: "show", id: administradorInstance.id)
    }

    def delete(Long id) {
        def administradorInstance = Administrador.get(id)
        if (!administradorInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'administrador.label', default: 'Administrador'), id])
            redirect(action: "list")
            return
        }

        try {
            administradorInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'administrador.label', default: 'Administrador'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'administrador.label', default: 'Administrador'), id])
            redirect(action: "show", id: id)
        }
    }
}
