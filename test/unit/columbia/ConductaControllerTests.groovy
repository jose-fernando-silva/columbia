package columbia



import org.junit.*
import grails.test.mixin.*

@TestFor(ConductaController)
@Mock(Conducta)
class ConductaControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/conducta/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.conductaInstanceList.size() == 0
        assert model.conductaInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.conductaInstance != null
    }

    void testSave() {
        controller.save()

        assert model.conductaInstance != null
        assert view == '/conducta/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/conducta/show/1'
        assert controller.flash.message != null
        assert Conducta.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/conducta/list'

        populateValidParams(params)
        def conducta = new Conducta(params)

        assert conducta.save() != null

        params.id = conducta.id

        def model = controller.show()

        assert model.conductaInstance == conducta
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/conducta/list'

        populateValidParams(params)
        def conducta = new Conducta(params)

        assert conducta.save() != null

        params.id = conducta.id

        def model = controller.edit()

        assert model.conductaInstance == conducta
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/conducta/list'

        response.reset()

        populateValidParams(params)
        def conducta = new Conducta(params)

        assert conducta.save() != null

        // test invalid parameters in update
        params.id = conducta.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/conducta/edit"
        assert model.conductaInstance != null

        conducta.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/conducta/show/$conducta.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        conducta.clearErrors()

        populateValidParams(params)
        params.id = conducta.id
        params.version = -1
        controller.update()

        assert view == "/conducta/edit"
        assert model.conductaInstance != null
        assert model.conductaInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/conducta/list'

        response.reset()

        populateValidParams(params)
        def conducta = new Conducta(params)

        assert conducta.save() != null
        assert Conducta.count() == 1

        params.id = conducta.id

        controller.delete()

        assert Conducta.count() == 0
        assert Conducta.get(conducta.id) == null
        assert response.redirectedUrl == '/conducta/list'
    }
}
