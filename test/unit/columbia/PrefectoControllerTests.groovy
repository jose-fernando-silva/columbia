package columbia



import org.junit.*
import grails.test.mixin.*

@TestFor(PrefectoController)
@Mock(Prefecto)
class PrefectoControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/prefecto/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.prefectoInstanceList.size() == 0
        assert model.prefectoInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.prefectoInstance != null
    }

    void testSave() {
        controller.save()

        assert model.prefectoInstance != null
        assert view == '/prefecto/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/prefecto/show/1'
        assert controller.flash.message != null
        assert Prefecto.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/prefecto/list'

        populateValidParams(params)
        def prefecto = new Prefecto(params)

        assert prefecto.save() != null

        params.id = prefecto.id

        def model = controller.show()

        assert model.prefectoInstance == prefecto
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/prefecto/list'

        populateValidParams(params)
        def prefecto = new Prefecto(params)

        assert prefecto.save() != null

        params.id = prefecto.id

        def model = controller.edit()

        assert model.prefectoInstance == prefecto
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/prefecto/list'

        response.reset()

        populateValidParams(params)
        def prefecto = new Prefecto(params)

        assert prefecto.save() != null

        // test invalid parameters in update
        params.id = prefecto.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/prefecto/edit"
        assert model.prefectoInstance != null

        prefecto.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/prefecto/show/$prefecto.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        prefecto.clearErrors()

        populateValidParams(params)
        params.id = prefecto.id
        params.version = -1
        controller.update()

        assert view == "/prefecto/edit"
        assert model.prefectoInstance != null
        assert model.prefectoInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/prefecto/list'

        response.reset()

        populateValidParams(params)
        def prefecto = new Prefecto(params)

        assert prefecto.save() != null
        assert Prefecto.count() == 1

        params.id = prefecto.id

        controller.delete()

        assert Prefecto.count() == 0
        assert Prefecto.get(prefecto.id) == null
        assert response.redirectedUrl == '/prefecto/list'
    }
}
