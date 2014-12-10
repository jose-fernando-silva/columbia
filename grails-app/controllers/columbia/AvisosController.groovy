package columbia

import org.springframework.dao.DataIntegrityViolationException

class AvisosController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [avisosInstanceList: Avisos.list(params), avisosInstanceTotal: Avisos.count()]
    }

    def create() {
        [avisosInstance: new Avisos(params)]
    }

    def save() {
        def avisosInstance = new Avisos(params)
        if (!avisosInstance.save(flush: true)) {
            render(view: "create", model: [avisosInstance: avisosInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'avisos.label', default: 'Avisos'), avisosInstance.id])
        redirect(action: "show", id: avisosInstance.id)
    }

    def show(Long id) {
        def avisosInstance = Avisos.get(id)
        if (!avisosInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'avisos.label', default: 'Avisos'), id])
            redirect(action: "list")
            return
        }

        [avisosInstance: avisosInstance]
    }

    def edit(Long id) {
        def avisosInstance = Avisos.get(id)
        if (!avisosInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'avisos.label', default: 'Avisos'), id])
            redirect(action: "list")
            return
        }

        [avisosInstance: avisosInstance]
    }

    def update(Long id, Long version) {
        def avisosInstance = Avisos.get(id)
        if (!avisosInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'avisos.label', default: 'Avisos'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (avisosInstance.version > version) {
                avisosInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'avisos.label', default: 'Avisos')] as Object[],
                          "Another user has updated this Avisos while you were editing")
                render(view: "edit", model: [avisosInstance: avisosInstance])
                return
            }
        }

        avisosInstance.properties = params

        if (!avisosInstance.save(flush: true)) {
            render(view: "edit", model: [avisosInstance: avisosInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'avisos.label', default: 'Avisos'), avisosInstance.id])
        redirect(action: "show", id: avisosInstance.id)
    }

    def delete(Long id) {
        def avisosInstance = Avisos.get(id)
        if (!avisosInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'avisos.label', default: 'Avisos'), id])
            redirect(action: "list")
            return
        }

        try {
            avisosInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'avisos.label', default: 'Avisos'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'avisos.label', default: 'Avisos'), id])
            redirect(action: "show", id: id)
        }
    }
}
