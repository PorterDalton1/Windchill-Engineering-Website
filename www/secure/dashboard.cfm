<cfscript>
    if ((!structKeyExists(session, "isAuthenticated") OR session.isAuthenticated EQ false)) {
        location
            url = "/secure/vendorLogin.cfm";
    }

    pdfFiles = directoryList(expandPath('../assets/pdfs/'), false, "name", "", "", "file");
    thumbnailFiles = duplicate(pdfFiles);

    for (i = 1; i <= arrayLen(thumbnailFiles); i++) {
        file = thumbnailFiles[i];
        file = listToArray(file, '.');
        file.pop();
        file = arrayToList(file, '.');
        thumbnailFiles[i] = file & '.jpg';
    }
</cfscript>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="robots" content="noindex">
    <title>Vendor Dashboard</title>
    <link rel="icon" href="/assets/img/user-tie_icon.png">
    <link rel="stylesheet" type="text/css" href="../assets/css/dashboard-min.css">
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
        <h2>Install Manuals</h2>
        <div id="file_cards">
            <cfloop index="i" from="1" to="#arrayLen(pdfFiles)#">
                <cfoutput>
                    <a href="#'/assets/pdfs/' & pdfFiles[i]#" download>
                        <div class="box--image">
                            <img src="#'/assets/pdfs/thumbnails/' & thumbnailFiles[i]#">
                        </div>
                        <span>
                            #pdfFiles[i]#
                        </span>
                    </a>
                </cfoutput>
            </cfloop>
        </div>
    </section>

</body>
</html>