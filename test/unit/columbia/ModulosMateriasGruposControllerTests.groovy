package columbia



import org.junit.*
import grails.test.mixin.*

@TestFor(ModulosMateriasGruposController)
@Mock(ModulosMateriasGrupos)
class ModulosMateriasGruposControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/modulosMateriasGrupos/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.modulosMateriasGruposInstanceList.size() == 0
        assert model.modulosMateriasGruposInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.modulosMateriasGruposInstance != null
    }

    void testSave() {
        controller.save()

        assert model.modulosMateriasGruposInstance != null
        assert view == '/modulosMateriasGrupos/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/modulosMateriasGrupos/show/1'
        assert controller.flash.message != null
        assert ModulosMateriasGrupos.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/modulosMateriasGrupos/list'

        populateValidParams(params)
        def modulosMateriasGrupos = new ModulosMateriasGrupos(params)

        assert modulosMateriasGrupos.save() != null

        params.id = modulosMateriasGrupos.id

        def model = controller.show()

        assert model.modulosMateriasGruposInstance == modulosMateriasGrupos
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/modulosMateriasGrupos/list'

        populateValidParams(params)
        def modulosMateriasGrupos = new ModulosMateriasGrupos(params)

        assert modulosMateriasGrupos.save() != null

        params.id = modulosMateriasGrupos.id

        def model = controller.edit()

        assert model.modulosMateriasGruposInstance == modulosMateriasGrupos
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/modulosMateriasGrupos/list'

        response.reset()

        populateValidParams(params)
        def modulosMateriasGrupos = new ModulosMateriasGrupos(params)

        assert modulosMateriasGrupos.save() != null

        // test invalid parameters in update
        params.id = modulosMateriasGrupos.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/modulosMateriasGrupos/edit"
        assert model.modulosMateriasGruposInstance != null

        modulosMateriasGrupos.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/modulosMateriasGrupos/show/$modulosMateriasGrupos.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        modulosMateriasGrupos.clearErrors()

        populateValidParams(params)
        params.id = modulosMateriasGrupos.id
        params.version = -1
        controller.update()

        assert view == "/modulosMateriasGrupos/edit"
        assert model.modulosMateriasGruposInstance != null
        assert model.modulosMateriasGruposInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/modulosMateriasGrupos/list'

        response.reset()

        populateValidParams(params)
        def modulosMateriasGrupos = new ModulosMateriasGrupos(params)

        assert modulosMateriasGrupos.save() != null
        assert ModulosMateriasGrupos.count() == 1

        params.id = modulosMateriasGrupos.id

        controller.delete()

        assert ModulosMateriasGrupos.count() == 0
        assert ModulosMateriasGrupos.get(modulosMateriasGrupos.id) == null
        assert response.redirectedUrl == '/modulosMateriasGrupos/list'
    }
}
