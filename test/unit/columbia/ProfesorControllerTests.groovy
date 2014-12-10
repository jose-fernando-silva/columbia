package columbia



import org.junit.*
import grails.test.mixin.*

@TestFor(ProfesorController)
@Mock(Profesor)
class ProfesorControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/profesor/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.profesorInstanceList.size() == 0
        assert model.profesorInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.profesorInstance != null
    }

    void testSave() {
        controller.save()

        assert model.profesorInstance != null
        assert view == '/profesor/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/profesor/show/1'
        assert controller.flash.message != null
        assert Profesor.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/profesor/list'

        populateValidParams(params)
        def profesor = new Profesor(params)

        assert profesor.save() != null

        params.id = profesor.id

        def model = controller.show()

        assert model.profesorInstance == profesor
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/profesor/list'

        populateValidParams(params)
        def profesor = new Profesor(params)

        assert profesor.save() != null

        params.id = profesor.id

        def model = controller.edit()

        assert model.profesorInstance == profesor
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/profesor/list'

        response.reset()

        populateValidParams(params)
        def profesor = new Profesor(params)

        assert profesor.save() != null

        // test invalid parameters in update
        params.id = profesor.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/profesor/edit"
        assert model.profesorInstance != null

        profesor.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/profesor/show/$profesor.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        profesor.clearErrors()

        populateValidParams(params)
        params.id = profesor.id
        params.version = -1
        controller.update()

        assert view == "/profesor/edit"
        assert model.profesorInstance != null
        assert model.profesorInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/profesor/list'

        response.reset()

        populateValidParams(params)
        def profesor = new Profesor(params)

        assert profesor.save() != null
        assert Profesor.count() == 1

        params.id = profesor.id

        controller.delete()

        assert Profesor.count() == 0
        assert Profesor.get(profesor.id) == null
        assert response.redirectedUrl == '/profesor/list'
    }
}
