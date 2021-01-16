<!doctype html>
<html>
<head>
    <meta name="layout" content="admin_template"/>
    <title>Client Manager - Website Manager</title>
</head>

<body>

<h3 class="h3_title_side">Edit Client</h3>

<div class="list_table_wrap">

%{--String client_name--}%
%{--String address--}%
%{--String contact--}%
%{--String email--}%
%{--String owner_name--}%

    <g:form method="post" url="[action: 'updateClient', controller: 'manageClient']">
        <g:hiddenField name="client_id" value="${client_detail.id}"/>
        <div class="form-group">
            <label for="client_name">Client Name</label>
            <g:textField name="client_name" class="form-control" id="client_name" placeholder="Enter Client Name"
                         value="${client_detail.client_name}"/>
        </div>

        <div class="form-group">
            <label for="address">Address</label>
            <g:textField name="address" class="form-control" id="address" placeholder="Enter Address"
                         value="${client_detail.address}"/>
        </div>

        <div class="form-group">
            <label for="email">Email Address</label>
            <g:textField name="email" class="form-control" id="email" aria-describedby="emailHelp"
                         placeholder="Enter email"
                         value="${client_detail.email}"/>
            %{--<small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>--}%
        </div>

        <div class="form-group">
            <label for="contact">Phone Number</label>
            <g:textField name="contact" class="form-control" id="contact" placeholder="Enter Phone Number"
                         value="${client_detail.contact}"/>
        </div>

        <div class="form-group">
            <label for="owner_name">Owner Name</label>
            <g:textField name="owner_name" class="form-control" id="owner_name" placeholder="Enter Owner Name"
                         value="${client_detail.owner_name}"/>
        </div>

        <button type="submit" class="btn btn-primary">Update</button>
        <g:link controller="manageClient" action="index" params="[id: 1]" class="btn btn-danger">Cancel</g:link>
    </g:form>
</div>
</body>
</html>
