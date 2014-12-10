package columbia

import org.springframework.dao.DataIntegrityViolationException

class ModulosMateriasGruposController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [modulosMateriasGruposInstanceList: ModulosMateriasGrupos.list(params), modulosMateriasGruposInstanceTotal: ModulosMateriasGrupos.count()]
    }

    def create() {
        [modulosMateriasGruposInstance: new ModulosMateriasGrupos(params)]
    }

    def save() {
        def modulosMateriasGruposInstance = new ModulosMateriasGrupos(params)
        if (!modulosMateriasGruposInstance.save(flush: true)) {
            render(view: "create", model: [modulosMateriasGruposInstance: modulosMateriasGruposInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'modulosMateriasGrupos.label', default: 'ModulosMateriasGrupos'), modulosMateriasGruposInstance.id])
        redirect(action: "show", id: modulosMateriasGruposInstance.id)
    }

    def show(Long id) {
        def modulosMateriasGruposInstance = ModulosMateriasGrupos.get(id)
        if (!modulosMateriasGruposInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'modulosMateriasGrupos.label', default: 'ModulosMateriasGrupos'), id])
            redirect(action: "list")
            return
        }

        [modulosMateriasGruposInstance: modulosMateriasGruposInstance]
    }

    def edit(Long id) {
        def modulosMateriasGruposInstance = ModulosMateriasGrupos.get(id)
        if (!modulosMateriasGruposInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'modulosMateriasGrupos.label', default: 'ModulosMateriasGrupos'), id])
            redirect(action: "list")
            return
        }

        [modulosMateriasGruposInstance: modulosMateriasGruposInstance]
    }

    def update(Long id, Long version) {
        def modulosMateriasGruposInstance = ModulosMateriasGrupos.get(id)
        if (!modulosMateriasGruposInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'modulosMateriasGrupos.label', default: 'ModulosMateriasGrupos'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (modulosMateriasGruposInstance.version > version) {
                modulosMateriasGruposInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'modulosMateriasGrupos.label', default: 'ModulosMateriasGrupos')] as Object[],
                          "Another user has updated this ModulosMateriasGrupos while you were editing")
                render(view: "edit", model: [modulosMateriasGruposInstance: modulosMateriasGruposInstance])
                return
            }
        }

        modulosMateriasGruposInstance.properties = params

        if (!modulosMateriasGruposInstance.save(flush: true)) {
            render(view: "edit", model: [modulosMateriasGruposInstance: modulosMateriasGruposInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'modulosMateriasGrupos.label', default: 'ModulosMateriasGrupos'), modulosMateriasGruposInstance.id])
        redirect(action: "show", id: modulosMateriasGruposInstance.id)
    }

    def delete(Long id) {
        def modulosMateriasGruposInstance = ModulosMateriasGrupos.get(id)
        if (!modulosMateriasGruposInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'modulosMateriasGrupos.label', default: 'ModulosMateriasGrupos'), id])
            redirect(action: "list")
            return
        }

        try {
            modulosMateriasGruposInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'modulosMateriasGrupos.label', default: 'ModulosMateriasGrupos'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'modulosMateriasGrupos.label', default: 'ModulosMateriasGrupos'), id])
            redirect(action: "show", id: id)
        }
    }
}
