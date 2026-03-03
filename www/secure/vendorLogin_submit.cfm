<head>
    <meta name="robots" content="noindex">
</head>
<cfscript>
    // Note: Change password before pushing to production
    // password: highwayContainment4756
    pepperString = fileRead('/secure/.global.pepper', 'utf-8');
    userHash = hash(form.password & pepperString, "SHA-512", "UTF-8");
    passwordHash = fileRead('/secure/.global.password', 'utf-8');

    if (userHash == passwordHash) {
        session.isAuthenticated = true;
        location 
            url = "/secure/dashboard.cfm"
        ;
    } else {
        location 
            url = "/secure/vendorLogin.cfm?wrongpassword=true"
        ;
    }
        
</cfscript>
