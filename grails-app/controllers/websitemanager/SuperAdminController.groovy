package websitemanager

class SuperAdminController {

    def index() {
        println("Testing super admin...")
        render(view: "index")
    }
}
