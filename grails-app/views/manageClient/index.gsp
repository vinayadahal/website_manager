<!doctype html>
<html>
<head>
    <meta name="layout" content="admin_template"/>
    <title>Client Manager - Website Manager</title>
</head>

<body>

<h3 class="h3_title_side">Client List</h3>

<div class="list_table_wrap">

    <table class="table table-striped table-dark">
        <thead>
        <tr>
            <th scope="col">S.No.</th>
            <th scope="col">Client Name</th>
            <th scope="col">Address</th>
            <th scope="col">Contact</th>
            <th scope="col">Email</th>
            <th scope="col">Owner Name</th>
            <th scope="col" colspan="2">Actions</th>
        </tr>
        </thead>
        <tbody>
        <g:if test="${clients.isEmpty()}">
            <tr>
                <td colspan="6">No data available</td>
            </tr>
        </g:if>
        <g:each in="${clients}" var="client">
            <tr>
                <th scope="row">${++record_count}</th>
                <td>${client.client_name}</td>
                <td>${client.address}</td>
                <td>${client.contact}</td>
                <td>${client.email}</td>
                <td>${client.owner_name}</td>
                <td>
                    <g:link controller="manageClient" action="editClient" params="[id: client.id]">
                        Edit
                    </g:link>
                </td>
                <td>
                    <g:link controller="manageClient" action="deleteClient" params="[id: client.id]">
                        Delete
                    </g:link>
                </td>
            </tr>
        </g:each>

        </tbody>
    </table>


    <nav aria-label="Page navigation example">
        <ul class="pagination">
            <li class="page-item">
                <g:link controller="manageClient" action="index" params="[id: 1]" class="page-link"
                        aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                    <span class="sr-only">Previous</span>
                </g:link>
            </li>
            <g:each var="i" in="${1..total_pages}">
                <li class="page-item"><g:link controller="manageClient" action="index" params="[id: i]"
                                              class="page-link">${i}</g:link></li>
            </g:each>
            <li class="page-item">
                <g:link controller="manageClient" action="index" params="[id: total_pages]" class="page-link"
                        aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                    <span class="sr-only">Next</span>
                </g:link>
            </li>
        </ul>
    </nav>
</div>
</body>
</html>
