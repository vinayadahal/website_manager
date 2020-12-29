package websitemanager

class Pages {

    static constraints = {
        version false
        content (sqlType: "longblob")
    }

    Clients client
    Menu menu
    byte [] content

}
