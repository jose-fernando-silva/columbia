package columbia



import org.junit.*
import grails.test.mixin.*

@TestFor(AvisosController)
@Mock(Avisos)
class AvisosControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/avisos/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.avisosInstanceList.size() == 0
        assert model.avisosInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.avisosInstance != null
    }

    void testSave() {
        controller.save()

        assert model.avisosInstance != null
        assert view == '/avisos/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/avisos/show/1'
        assert controller.flash.message != null
        assert Avisos.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/avisos/list'

        populateValidParams(params)
        def avisos = new Avisos(params)

        assert avisos.save() != null

        params.id = avisos.id

        def model = controller.show()

        assert model.avisosInstance == avisos
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/avisos/list'

        populateValidParams(params)
        def avisos = new Avisos(params)

        assert avisos.save() != null

        params.id = avisos.id

        def model = controller.edit()

        assert model.avisosInstance == avisos
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/avisos/list'

        response.reset()

        populateValidParams(params)
        def avisos = new Avisos(params)

        assert avisos.save() != null

        // test invalid parameters in update
        params.id = avisos.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/avisos/edit"
        assert model.avisosInstance != null

        avisos.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/avisos/show/$avisos.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        avisos.clearErrors()

        populateValidParams(params)
        params.id = avisos.id
        params.version = -1
        controller.update()

        assert view == "/avisos/edit"
        assert model.avisosInstance != null
        assert model.avisosInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/avisos/list'

        response.reset()

        populateValidParams(params)
        def avisos = new Avisos(params)

        assert avisos.save() != null
        assert Avisos.count() == 1

        params.id = avisos.id

        controller.delete()

        assert Avisos.count() == 0
        assert Avisos.get(avisos.id) == null
        assert response.redirectedUrl == '/avisos/list'
    }
}
