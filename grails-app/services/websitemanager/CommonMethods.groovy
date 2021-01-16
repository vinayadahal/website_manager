package websitemanager

import grails.gorm.transactions.Transactional

@Transactional
class CommonMethods {

    def PageDataLimiter(def page_number, def dataPerPage) {
        if (page_number > 1) {
            page_number = page_number - 1
            return (dataPerPage * page_number)
        } else {
            return 0
        }
    }
}
