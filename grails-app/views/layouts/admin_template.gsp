<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>Website Manager</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico"/>
    <asset:stylesheet src="font-awesome.min.css"/>
    <asset:stylesheet src="application.css"/>
    <g:layoutHead/>
</head>

<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <g:link controller="superAdmin" class="navbar-brand">Website Manager</g:link>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <g:link controller="superAdmin" class="nav-link">Home <span class="sr-only">(current)</span></g:link>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                   aria-haspopup="true" aria-expanded="false">
                    Manage
                </a>

                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="#">Client</a>
                    <a class="dropdown-item" href="#">Website</a>
                    <a class="dropdown-item" href="#">Admin</a>
                </div>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="umNavBar" role="button" data-toggle="dropdown"
                   aria-haspopup="true" aria-expanded="false">
                    Settings
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <g:link controller="user" class="dropdown-item">User</g:link>
                    <g:link controller="role" class="dropdown-item">Role</g:link>
                    <g:link controller="userRole" class="dropdown-item">User Role</g:link>
                </div>
            </li>
        </ul>
    </div>
</nav>
<g:layoutBody/>

<nav class="navbar fixed-bottom navbar-dark bg-dark">
    <span style="width: 100%;text-align: center; color: #fff3cd">Copyright 2020, Vinayadahal
    </span>
</nav>

<asset:javascript src="application.js"/>

</body>
</html>
