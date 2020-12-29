package websitemanager

class Markup {

    static constraints = {
        version false
        html(sqlType: "longblob")
    }

    byte[] html
    Clients client
}
