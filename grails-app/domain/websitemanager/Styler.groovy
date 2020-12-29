package websitemanager

class Styler {

    static constraints = {
        version false
        css(sqlType: "longblob")
    }

    byte[] css
    Clients client


}
