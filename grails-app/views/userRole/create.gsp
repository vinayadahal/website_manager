<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="admin_template"/>
    <g:set var="entityName" value="${message(code: 'userRole.label', default: 'UserRole')}"/>
    <title><g:message code="default.create.label" args="[entityName]"/></title>
</head>

<body>
<div id="create-userRole" class="content scaffold-create" role="main">
    <h3 class="h3_title_side"><g:message code="default.list.label" args="[entityName]"/></h3>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:hasErrors bean="${this.userRole}">
        <ul class="errors" role="alert">
            <g:eachError bean="${this.userRole}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                        error="${error}"/></li>
            </g:eachError>
        </ul>
    </g:hasErrors>
%{--    <g:form resource="${this.userRole}" method="POST">--}%
    <g:form url="[resource: userRoleInstance, action: 'save']">
        <fieldset class="form">
            %{--                    <f:all bean="userRole"/>--}%
            <g:render template="form"/>
        </fieldset>
        <fieldset class="buttons" style="margin: 0 5px;">
            <g:submitButton name="create" class="btn btn-info"
                            value="${message(code: 'default.button.create.label', default: 'Create')}"/>
            <g:link controller="userRole" class="btn btn-danger" style="margin-left: 5px; ">Cancel</g:link>
        </fieldset>

    </g:form>
</div>
</body>
</html>
