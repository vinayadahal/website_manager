package websitemanager

class BootStrap {

    def init = { servletContext ->

        println("\n" +
                " _    _      _         _ _        ___  ___                                   \n" +
                "| |  | |    | |       (_) |       |  \\/  |                                   \n" +
                "| |  | | ___| |__  ___ _| |_ ___  | .  . | __ _ _ __   __ _  __ _  ___ _ __  \n" +
                "| |/\\| |/ _ \\ '_ \\/ __| | __/ _ \\ | |\\/| |/ _` | '_ \\ / _` |/ _` |/ _ \\ '__| \n" +
                "\\  /\\  /  __/ |_) \\__ \\ | ||  __/ | |  | | (_| | | | | (_| | (_| |  __/ |    \n" +
                " \\/  \\/ \\___|_.__/|___/_|\\__\\___| \\_|  |_/\\__,_|_| |_|\\__,_|\\__, |\\___|_|    \n" +
                "                                                             __/ |           \n" +
                "                                                            |___/            \n" +
                "")
        println("<<<<<<<<<<<<<<<<<<<< Deployment Complete >>>>>>>>>>>>>>>>>>>>")

// request map details
//        new Requestmap(url: '/', configAttribute: 'permitAll').save()
//        new Requestmap(url: '/error', configAttribute: 'permitAll').save()
//        new Requestmap(url: '/index', configAttribute: 'permitAll').save()
//        new Requestmap(url: '/index.gsp', configAttribute: 'permitAll').save()
//        new Requestmap(url: '/shutdown', configAttribute: 'permitAll').save()
//        new Requestmap(url: '/assets/**', configAttribute: 'permitAll').save()
//        new Requestmap(url: '/**/css/**', configAttribute: 'permitAll').save()
//        new Requestmap(url: '/**/js/**', configAttribute: 'permitAll').save()
//        new Requestmap(url: '/**/images/**', configAttribute: 'permitAll').save()
//        new Requestmap(url: '/**/favicon.ico', configAttribute: 'permitAll').save()
//        new Requestmap(url: '/superAdmin/**', configAttribute: 'permitAll').save()
//        new Requestmap(url: '/login', configAttribute: 'permitAll').save()
//        new Requestmap(url: '/login.**', configAttribute: 'permitAll').save()
//        new Requestmap(url: '/login/**', configAttribute: 'permitAll').save()
//        new Requestmap(url: '/logout', configAttribute: 'permitAll').save()
//        new Requestmap(url: '/logout.**', configAttribute: 'permitAll').save()
//        new Requestmap(url: '/logout/**', configAttribute: 'permitAll').save()
//        new Requestmap(url: '/**', configAttribute: 'permitAll').save()


// user details
//        User admin = new User(username:'admin', password:'admin', enabled:true).save()
//        User john = new User(username:'john', password:'secret', enabled:true).save()
//        User jane = new User(username:'jane', password:'secret', enabled:true).save()
//        Role royalty = new Role(authority: 'ROLE_ADMIN').save()
//        Role common = new Role(authority: 'ROLE_USER').save()
//        UserRole.create(admin, royalty)
//        UserRole.create(admin, common)
//        UserRole.create(john, common)
    }
    def destroy = {
    }
}
