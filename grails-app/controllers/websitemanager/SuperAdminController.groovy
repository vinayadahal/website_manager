package websitemanager

class SuperAdminController {

    def index() {
        render(view: "index")
    }

    def listWebsites() {
        render("listing websites....")
    }
}
