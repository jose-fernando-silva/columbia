package columbia

import org.springframework.dao.DataIntegrityViolationException

class TutorController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [tutorInstanceList: Tutor.list(params), tutorInstanceTotal: Tutor.count()]
    }

    def create() {
        [tutorInstance: new Tutor(params)]
    }

    def save() {
        def tutorInstance = new Tutor(params)
        if (!tutorInstance.save(flush: true)) {
            render(view: "create", model: [tutorInstance: tutorInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'tutor.label', default: 'Tutor'), tutorInstance.id])
        redirect(action: "show", id: tutorInstance.id)
    }

    def show(Long id) {
        def tutorInstance = Tutor.get(id)
        if (!tutorInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'tutor.label', default: 'Tutor'), id])
            redirect(action: "list")
            return
        }

        [tutorInstance: tutorInstance]
    }

    def edit(Long id) {
        def tutorInstance = Tutor.get(id)
        if (!tutorInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'tutor.label', default: 'Tutor'), id])
            redirect(action: "list")
            return
        }

        [tutorInstance: tutorInstance]
    }

    def update(Long id, Long version) {
        def tutorInstance = Tutor.get(id)
        if (!tutorInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'tutor.label', default: 'Tutor'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (tutorInstance.version > version) {
                tutorInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'tutor.label', default: 'Tutor')] as Object[],
                          "Another user has updated this Tutor while you were editing")
                render(view: "edit", model: [tutorInstance: tutorInstance])
                return
            }
        }

        tutorInstance.properties = params

        if (!tutorInstance.save(flush: true)) {
            render(view: "edit", model: [tutorInstance: tutorInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'tutor.label', default: 'Tutor'), tutorInstance.id])
        redirect(action: "show", id: tutorInstance.id)
    }

    def delete(Long id) {
        def tutorInstance = Tutor.get(id)
        if (!tutorInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'tutor.label', default: 'Tutor'), id])
            redirect(action: "list")
            return
        }

        try {
            tutorInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'tutor.label', default: 'Tutor'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'tutor.label', default: 'Tutor'), id])
            redirect(action: "show", id: id)
        }
    }
}
