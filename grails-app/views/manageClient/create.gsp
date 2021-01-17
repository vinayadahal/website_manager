<!doctype html>
<html>
<head>
    <meta name="layout" content="admin_template"/>
    <title>Client Manager - Website Manager</title>
</head>

<body>

<h3 class="h3_title_side">Add Client</h3>

<div class="list_table_wrap">

    <g:form method="post" url="[action: 'createClient', controller: 'manageClient']">
        <div class="form-group">
            <label for="client_name">Client Name</label>
            <g:textField name="client_name" class="form-control" id="client_name" placeholder="Enter Client Name"/>
        </div>

        <div class="form-group">
            <label for="address">Address</label>
            <g:textField name="address" class="form-control" id="address" placeholder="Enter Address"/>
        </div>

        <div class="form-group">
            <label for="email">Email Address</label>
            <g:textField name="email" class="form-control" id="email" aria-describedby="emailHelp"
                         placeholder="Enter email"/>
            %{--<small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>--}%
        </div>

        <div class="form-group">
            <label for="contact">Phone Number</label>
            <g:textField name="contact" class="form-control" id="contact" placeholder="Enter Phone Number"/>
        </div>

        <div class="form-group">
            <label for="owner_name">Owner Name</label>
            <g:textField name="owner_name" class="form-control" id="owner_name" placeholder="Enter Owner Name"/>
        </div>

        <button type="submit" class="btn btn-primary">Create</button>
        <g:link controller="manageClient" action="index" params="[id: 1]" class="btn btn-danger">Cancel</g:link>
    </g:form>
</div>
</body>
</html>
