package websitemanager

import grails.gorm.transactions.Transactional

class ManageClientController {

    CommonMethods commonMethods = new CommonMethods()

    def index() {
        int total_count = Clients.getAll().size()
        def dataPerPage = 10
        int total_pages = Math.ceil(total_count / dataPerPage)
        def currentPageNumber = Integer.parseInt(params.id)
        def offset = commonMethods.PageDataLimiter(currentPageNumber, dataPerPage)
        def client_list_criteria = Clients.createCriteria()
        def client_list = client_list_criteria.list(max: dataPerPage, offset: offset) {}
        render(view: "index", model: [clients: client_list, total_pages: total_pages, record_count: offset])
    }

    def addClient() {
        render(view: "create")
    }

    @Transactional
    def createClient() {
        Clients client = new Clients()
        client.address = params.address
        client.contact = params.contact
        client.email = params.email
        client.owner_name = params.owner_name
        client.client_name = params.client_name
        if (client.save(flush: true, failOnError: true)) {
            flash.message = "Client data added for " + params.client_name
            redirect action: "index", id: "1"
        } else {
            println("Unable to save the record")
        }
    }

    def editClient() {
        def record_id = params.id
        def client_details = Clients.findById(record_id)
        render(view: "edit", model: [client_detail: client_details])
    }

    @Transactional
    def updateClient() {
        Clients client = Clients.get(params.client_id)
        client.address = params.address
        client.contact = params.contact
        client.email = params.email
        client.owner_name = params.owner_name
        client.client_name = params.client_name
        if (client.save(flush: true, failOnError: true)) {
            flash.message = "Client data updated for " + params.client_name
            redirect action: "index", id: "1"
        } else {
            println("Unable to save the record")
        }
    }

    @Transactional
    def deleteClient() {
        Clients client = Clients.get(params.long("id"))
        if (!client.delete(flush: true, failOnError: true)) {
            flash.message = "Client data deleted for " + client.client_name
            redirect action: "index", id: "1"
        } else {
            println "Unable to delete client " + client.client_name
        }
    }
}
