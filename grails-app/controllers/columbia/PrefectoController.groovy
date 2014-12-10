package columbia

import org.springframework.dao.DataIntegrityViolationException

class PrefectoController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [prefectoInstanceList: Prefecto.list(params), prefectoInstanceTotal: Prefecto.count()]
    }

    def create() {
        [prefectoInstance: new Prefecto(params)]
    }

    def save() {
        def prefectoInstance = new Prefecto(params)
        if (!prefectoInstance.save(flush: true)) {
            render(view: "create", model: [prefectoInstance: prefectoInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'prefecto.label', default: 'Prefecto'), prefectoInstance.id])
        redirect(action: "show", id: prefectoInstance.id)
    }

    def show(Long id) {
        def prefectoInstance = Prefecto.get(id)
        if (!prefectoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'prefecto.label', default: 'Prefecto'), id])
            redirect(action: "list")
            return
        }

        [prefectoInstance: prefectoInstance]
    }

    def edit(Long id) {
        def prefectoInstance = Prefecto.get(id)
        if (!prefectoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'prefecto.label', default: 'Prefecto'), id])
            redirect(action: "list")
            return
        }

        [prefectoInstance: prefectoInstance]
    }

    def update(Long id, Long version) {
        def prefectoInstance = Prefecto.get(id)
        if (!prefectoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'prefecto.label', default: 'Prefecto'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (prefectoInstance.version > version) {
                prefectoInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'prefecto.label', default: 'Prefecto')] as Object[],
                          "Another user has updated this Prefecto while you were editing")
                render(view: "edit", model: [prefectoInstance: prefectoInstance])
                return
            }
        }

        prefectoInstance.properties = params

        if (!prefectoInstance.save(flush: true)) {
            render(view: "edit", model: [prefectoInstance: prefectoInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'prefecto.label', default: 'Prefecto'), prefectoInstance.id])
        redirect(action: "show", id: prefectoInstance.id)
    }

    def delete(Long id) {
        def prefectoInstance = Prefecto.get(id)
        if (!prefectoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'prefecto.label', default: 'Prefecto'), id])
            redirect(action: "list")
            return
        }

        try {
            prefectoInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'prefecto.label', default: 'Prefecto'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'prefecto.label', default: 'Prefecto'), id])
            redirect(action: "show", id: id)
        }
    }
}
