<table class="table table-striped table-dark">
    <thead>
    <tr>
        <g:each in="${domainProperties}" var="p" status="i">
            <g:sortableColumn property="${p.property}" title="${p.label}"/>
        </g:each>
        <td colspan="2" style="text-align: center"><strong>Actions</strong></td>
    </tr>
    </thead>
    <tbody>
    <g:each in="${collection}" var="bean" status="i">
        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
            <g:each in="${domainProperties}" var="p" status="j">
                <g:if test="${j == 0}">
                    <td><f:display bean="${bean}" property="${p.property}"
                                   displayStyle="${displayStyle ?: 'table'}"
                                   theme="${theme}"/>
                    </td>
                </g:if>
                <g:else>
                    <td>
                        <f:display bean="${bean}" property="${p.property}"
                                   displayStyle="${displayStyle ?: 'table'}"
                                   theme="${theme}"/>
                    </td>
                </g:else>
            </g:each>
            <td style="text-align: center">
                <g:link class="btn btn-info btn_override" action="edit" resource="${bean}">
                    Edit
                </g:link>
            </td>
            <td style="text-align: center">
                <a class="btn btn-danger btn_override" href="#">Delete</a>

                %{--<input class="delete" type="submit"--}%
                %{--value="${message(code: 'default.button.delete.label', default: 'Delete')}"--}%
                %{--onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>--}%
            </td>
        </tr>
    </g:each>
    </tbody>
</table>

<style>
th a {
    color: #fff;
}

th a:hover {
    text-decoration: none;
    color: #aaa;
}
</style>