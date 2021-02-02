<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="admin_template"/>
    <g:set var="entityName" value="${message(code: 'userRole.label', default: 'UserRole')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<g:link class="btn btn-dark add_button_position" action="create">
    <g:message code="default.new.label" args="[entityName]"/>
</g:link>
<div id="list-userRole" class="content scaffold-list" role="main">
    <h3 class="h3_title_side"><g:message code="default.list.label" args="[entityName]"/></h3>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
%{--    <f:table collection="${userRoleList}" template="table_userRole" myProperty="Template: view/templates/_fields/"/>--}%

    <table class="table table-striped table-dark" style="margin-top: 25px;" id="index_table">
        <thead>
        <tr>
            <th><g:message code="userRole.role.label" default="Role"/></th>
            <th><g:message code="userRole.user.label" default="User"/></th>
        </tr>
        </thead>
        <tbody>
        <g:each in="${userRoleList}" status="i" var="userRoleInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                <td>
                    ${fieldValue(bean: userRoleInstance, field: "role")}
                </td>
                <td>${fieldValue(bean: userRoleInstance, field: "user")}</td>
            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${userRoleCount ?: 0}"/>
    </div>
</div>
</body>
</html>