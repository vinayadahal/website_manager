<!doctype html>
<html>
<head>
    <meta name="layout" content="admin_template"/>
    <title>Welcome to Grails</title>
</head>

<body>

<h3 class="h3_title">Super Administrative Dashboard</h3>

<div class="dashboard_container">

    <g:link controller="superAdmin" action="listWebsites" class="dashboard_icons">
        <i class="fa fa-file" style="font-size: 128px;"></i><br/><br/>
        Manage Website
    </g:link>
    <a href="#" class="dashboard_icons">
        <i class="fa fa-user-secret" style="font-size: 128px;"></i><br/><br/>
        Manage Client
    </a>
    <a href="#" class="dashboard_icons">
        <i class="fa fa-user" style="font-size: 128px;"></i><br/><br/>
        Manage Admin
    </a>
    <a href="#" class="dashboard_icons">
        <i class="fa fa-cogs" style="font-size: 128px;"></i><br/><br/>
        Settings
    </a>
</div>
</body>
</html>
