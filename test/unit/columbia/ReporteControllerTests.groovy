package columbia



import org.junit.*
import grails.test.mixin.*

@TestFor(ReporteController)
@Mock(Reporte)
class ReporteControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/reporte/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.reporteInstanceList.size() == 0
        assert model.reporteInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.reporteInstance != null
    }

    void testSave() {
        controller.save()

        assert model.reporteInstance != null
        assert view == '/reporte/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/reporte/show/1'
        assert controller.flash.message != null
        assert Reporte.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/reporte/list'

        populateValidParams(params)
        def reporte = new Reporte(params)

        assert reporte.save() != null

        params.id = reporte.id

        def model = controller.show()

        assert model.reporteInstance == reporte
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/reporte/list'

        populateValidParams(params)
        def reporte = new Reporte(params)

        assert reporte.save() != null

        params.id = reporte.id

        def model = controller.edit()

        assert model.reporteInstance == reporte
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/reporte/list'

        response.reset()

        populateValidParams(params)
        def reporte = new Reporte(params)

        assert reporte.save() != null

        // test invalid parameters in update
        params.id = reporte.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/reporte/edit"
        assert model.reporteInstance != null

        reporte.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/reporte/show/$reporte.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        reporte.clearErrors()

        populateValidParams(params)
        params.id = reporte.id
        params.version = -1
        controller.update()

        assert view == "/reporte/edit"
        assert model.reporteInstance != null
        assert model.reporteInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/reporte/list'

        response.reset()

        populateValidParams(params)
        def reporte = new Reporte(params)

        assert reporte.save() != null
        assert Reporte.count() == 1

        params.id = reporte.id

        controller.delete()

        assert Reporte.count() == 0
        assert Reporte.get(reporte.id) == null
        assert response.redirectedUrl == '/reporte/list'
    }
}
