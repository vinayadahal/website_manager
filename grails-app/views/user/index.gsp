<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="admin_template"/>
    <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>

<g:link class="btn btn-dark add_button_position" action="create">
    <g:message code="default.new.label" args="[entityName]"/>
</g:link>

<div id="list-user" class="content scaffold-list" role="main">
    <h3 class="h3_title_side"><g:message code="default.list.label" args="[entityName]"/></h3>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <f:table collection="${userList}"/>
    <div class="pagination">
        <g:paginate total="${userCount ?: 0}"/>
    </div>
</div>
</body>
</html>