<cfscript>
    if (!isDefined("session")) {
        session.isAuthenticated=false;
    }
    if ((!structKeyExists(session, "isAuthenticated") OR session.isAuthenticated EQ false)) {
        cflocation(url = "/secure/vendorLogin.cfm");
    }

    installManualFiles = directoryList(expandPath('../WebDocs/PWD/Install'), false, "name", "", "", "file");
    dataSheetFiles = directoryList(expandPath('../WebDocs/PWD/DataSheets'), false, "name", "", "", "file");

    /*
    thumbnailFiles = duplicate(installManualFiles);
    for (i = 1; i <= arrayLen(thumbnailFiles); i++) {
        file = thumbnailFiles[i];
        file = listToArray(file, '.');
        file.pop();
        file = arrayToList(file, '.');
        thumbnailFiles[i] = file & '.jpg';
    }
    */
</cfscript>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="robots" content="noindex">
    <title>Vendor Dashboard</title>
    <link rel="icon" href="/assets/img/user-tie_icon.png">
    <link rel="stylesheet" type="text/css" href="/assets/css/dashboard-min.css">
    <style>
        h1 {
            margin-top: 3rem;
            font-size: 2.5rem;
        }

        body {
            margin-bottom: 10rem;
        }

        a {
            color: #ffffff;
        }

        a:hover {
            color: #ffffffcc !important;
        }
    </style>
    <script src="/assets/js/lib/jquery-3.7.1.min.js"></script>
</head>
<body>
    <header id="dashboard_nav">
        <img id="windchill_logo" src="/assets/img/logo.png">
        <span>Vendor Dashboard</span>
        <a href="/index.cfm">
            <i class="nf nf-md-home"></i>
            Go Home
        </a>
    </header>

    <section>
        <h1>Install Manuals</h1>
        <div id="file_cards">
            <cfloop index="i" from="1" to="#arrayLen(installManualFiles)#">
                <cfoutput>
                    <a href="#'/WebDocs/PWD/Install/' & installManualFiles[i]#" target="_blank">
                        <span>#installManualFiles[i]#</span>
                    </a>
                </cfoutput>
            </cfloop>
        </div>
    </section>
    <section>
        <h1 style="">Data Sheets</h1>
        <div id="file_cards">
            <cfloop index="i" from="1" to="#arrayLen(dataSheetFiles)#">
                <cfoutput>
                    <a href="#'/WebDocs/PWD/DataSheets/' & dataSheetFiles[i]#" target="_blank">
                        <span>#dataSheetFiles[i]#</span>
                    </a>
                </cfoutput>
            </cfloop>
        </div>
    </section>

</body>
</html>