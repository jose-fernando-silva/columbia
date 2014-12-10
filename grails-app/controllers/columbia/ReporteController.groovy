package columbia

import org.springframework.dao.DataIntegrityViolationException

class ReporteController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [reporteInstanceList: Reporte.list(params), reporteInstanceTotal: Reporte.count()]
    }

    def create() {
        [reporteInstance: new Reporte(params)]
    }

    def save() {
        def reporteInstance = new Reporte(params)
        if (!reporteInstance.save(flush: true)) {
            render(view: "create", model: [reporteInstance: reporteInstance])
            return
        }

        def x = params.alumno.id
        def alu = Alumno.get(x)
        def cond = Conducta.findByAlumno(alu)
        cond.puntosRestantes = cond.puntosRestantes - Integer.parseInt(params.puntos)
        if(cond.puntosRestantes>85)
            cond.estado = "Conducta Excelente"
        else if(cond.puntosRestantes>65)
            cond.estado = "Conducta Buena"
        else if(cond.puntosRestantes>45)
            cond.estado = "Conducta Regular"
        else 
            cond.estado = "Conducta Mala"


        flash.message = message(code: 'default.created.message', args: [message(code: 'reporte.label', default: 'Reporte'), reporteInstance.id])
        redirect(action: "show", id: reporteInstance.id)
    }

    def show(Long id) {
        def reporteInstance = Reporte.get(id)
        if (!reporteInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'reporte.label', default: 'Reporte'), id])
            redirect(action: "list")
            return
        }

        [reporteInstance: reporteInstance]
    }

    def edit(Long id) {
        def reporteInstance = Reporte.get(id)
        if (!reporteInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'reporte.label', default: 'Reporte'), id])
            redirect(action: "list")
            return
        }

        [reporteInstance: reporteInstance]
    }

    def update(Long id, Long version) {
        def reporteInstance = Reporte.get(id)
        if (!reporteInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'reporte.label', default: 'Reporte'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (reporteInstance.version > version) {
                reporteInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'reporte.label', default: 'Reporte')] as Object[],
                          "Another user has updated this Reporte while you were editing")
                render(view: "edit", model: [reporteInstance: reporteInstance])
                return
            }
        }

        reporteInstance.properties = params

        if (!reporteInstance.save(flush: true)) {
            render(view: "edit", model: [reporteInstance: reporteInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'reporte.label', default: 'Reporte'), reporteInstance.id])
        redirect(action: "show", id: reporteInstance.id)
    }

    def delete(Long id) {
        def reporteInstance = Reporte.get(id)
        if (!reporteInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'reporte.label', default: 'Reporte'), id])
            redirect(action: "list")
            return
        }

        try {
            reporteInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'reporte.label', default: 'Reporte'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'reporte.label', default: 'Reporte'), id])
            redirect(action: "show", id: id)
        }
    }
}
