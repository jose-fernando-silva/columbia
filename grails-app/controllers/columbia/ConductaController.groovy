package columbia

import org.springframework.dao.DataIntegrityViolationException

class ConductaController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [conductaInstanceList: Conducta.list(params), conductaInstanceTotal: Conducta.count()]
    }

    def create() {
        [conductaInstance: new Conducta(params)]
    }

    def save() {
        def conductaInstance = new Conducta(params)
        if (!conductaInstance.save(flush: true)) {
            render(view: "create", model: [conductaInstance: conductaInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'conducta.label', default: 'Conducta'), conductaInstance.id])
        redirect(action: "show", id: conductaInstance.id)
    }

    def show(Long id) {
        def conductaInstance = Conducta.get(id)
        if (!conductaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'conducta.label', default: 'Conducta'), id])
            redirect(action: "list")
            return
        }

        [conductaInstance: conductaInstance]
    }

    def edit(Long id) {
        def conductaInstance = Conducta.get(id)
        if (!conductaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'conducta.label', default: 'Conducta'), id])
            redirect(action: "list")
            return
        }

        [conductaInstance: conductaInstance]
    }

    def update(Long id, Long version) {
        def conductaInstance = Conducta.get(id)
        if (!conductaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'conducta.label', default: 'Conducta'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (conductaInstance.version > version) {
                conductaInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'conducta.label', default: 'Conducta')] as Object[],
                          "Another user has updated this Conducta while you were editing")
                render(view: "edit", model: [conductaInstance: conductaInstance])
                return
            }
        }

        conductaInstance.properties = params

        if (!conductaInstance.save(flush: true)) {
            render(view: "edit", model: [conductaInstance: conductaInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'conducta.label', default: 'Conducta'), conductaInstance.id])
        redirect(action: "show", id: conductaInstance.id)
    }

    def delete(Long id) {
        def conductaInstance = Conducta.get(id)
        if (!conductaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'conducta.label', default: 'Conducta'), id])
            redirect(action: "list")
            return
        }

        try {
            conductaInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'conducta.label', default: 'Conducta'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'conducta.label', default: 'Conducta'), id])
            redirect(action: "show", id: id)
        }
    }
}
