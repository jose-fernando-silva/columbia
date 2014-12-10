package columbia

import org.springframework.dao.DataIntegrityViolationException

class ModuloController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [moduloInstanceList: Modulo.list(params), moduloInstanceTotal: Modulo.count()]
    }

    def create() {
        [moduloInstance: new Modulo(params)]
    }

    def save() {
        def moduloInstance = new Modulo(params)
        if (!moduloInstance.save(flush: true)) {
            render(view: "create", model: [moduloInstance: moduloInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'modulo.label', default: 'Modulo'), moduloInstance.id])
        redirect(action: "show", id: moduloInstance.id)
    }

    def show(Long id) {
        def moduloInstance = Modulo.get(id)
        if (!moduloInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'modulo.label', default: 'Modulo'), id])
            redirect(action: "list")
            return
        }

        [moduloInstance: moduloInstance]
    }

    def edit(Long id) {
        def moduloInstance = Modulo.get(id)
        if (!moduloInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'modulo.label', default: 'Modulo'), id])
            redirect(action: "list")
            return
        }

        [moduloInstance: moduloInstance]
    }

    def update(Long id, Long version) {
        def moduloInstance = Modulo.get(id)
        if (!moduloInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'modulo.label', default: 'Modulo'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (moduloInstance.version > version) {
                moduloInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'modulo.label', default: 'Modulo')] as Object[],
                          "Another user has updated this Modulo while you were editing")
                render(view: "edit", model: [moduloInstance: moduloInstance])
                return
            }
        }

        moduloInstance.properties = params

        if (!moduloInstance.save(flush: true)) {
            render(view: "edit", model: [moduloInstance: moduloInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'modulo.label', default: 'Modulo'), moduloInstance.id])
        redirect(action: "show", id: moduloInstance.id)
    }

    def delete(Long id) {
        def moduloInstance = Modulo.get(id)
        if (!moduloInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'modulo.label', default: 'Modulo'), id])
            redirect(action: "list")
            return
        }

        try {
            moduloInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'modulo.label', default: 'Modulo'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'modulo.label', default: 'Modulo'), id])
            redirect(action: "show", id: id)
        }
    }
}
