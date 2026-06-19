<head>
    <meta name="robots" content="noindex">
</head>
<cfscript>
    // Note: Change password before pushing to production
    // password: highwayContainment4756
    pepperString = "Ktkofyp1$oiNlLq8ZnwmVC&WvQPfpIQSJugeDiz3TRTTGRRFshrd245"; // fileRead('/secure/.global.pepper', 'utf-8');
    userHash = hash(form.password & pepperString, "SHA-512", "UTF-8");
    passwordHash = "9EC7CB20E202E88A189AC64C7CECB76C635E617E6A22E35FB42AF67AA0704FA8D72CEB57F245F06148EA8AAF2D0A4EF235A320E5AE60C4E866D8D7F6CB232224";// fileRead('/secure/.global.password', 'utf-8');


    if (userHash == passwordHash) {
        session.isAuthenticated = true;
        cflocation( 
            url = "/secure/dashboard.cfm"
        );
    } else {
        cflocation( 
            url = "/secure/vendorLogin.cfm?wrongpassword=true"
        );
    }
        
</cfscript>
