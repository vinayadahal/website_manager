package websitemanager

class Javascripts {

    static constraints = {
        version false
        js(sqlType: "longblob")
    }

    byte[] js
    Clients client
}
