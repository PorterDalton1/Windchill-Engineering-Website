<cfscript>
    documentFiles = directoryList(expandPath('./WebDocs/'), false, "name", "", "", "file");
</cfscript>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Documents and Links</title>
    <link rel="stylesheet" type="text/css" href="/assets/css/webLinks-min.css?rev=2025-03-24">
    <meta name="robots" content="noindex">
    <style>
        #contact_us_section {
            background-color: white;
        }
    </style>
</head>
<body>
    <cfset websiteTitle="Documents and Links">
    <cfinclude template="./partials/header.cfm">

    <section id="standards_one">
        <span class="center_h1_flex">
            <h1><b>Documents</b> and <b>Links</b></h1>
        </span>
        <div class="image_crop">
            <img src="/assets/img/graphs.webp">
        </div>
    </section>

    <h1 class="sub_title">Documents</h1>
    <section class="links_main docs">
        <cfoutput>
            <cfloop index="i" from="1" to="#arrayLen(documentFiles)#">
                <div>
                    <h2>
                        #documentFiles[i]#
                    </h2>
                    <a class="website_link" href="/WebDocs/#documentFiles[i]#" target="_blank">
                        Open
                        <i class="nf nf-oct-link_external"></i>
                    </a>
                </div>
            </cfloop>
        </cfoutput>

    </section>

    <h1 class="sub_title">Useful Links</h1>
    <section class="links_main">
        <div>
            <h2>
                Move to a Hot Aisle/Cold Aisle Layout
            </h2>
            <a class="website_link" href="https://www.energystar.gov/products/data_center_equipment/16-more-ways-cut-energy-waste-data-center/move-hot-aislecold-aisle-layout">
                energystar.com
                <i class="nf nf-oct-link_external"></i>
            </a>
        </div>

        <div>
            <h2>
                Utilize Containment/Enclosures
            </h2>
            <a class="website_link" href="https://www.energystar.gov/products/data_center_equipment/16-more-ways-cut-energy-waste-data-center/containmentenclosures">
                energystar.com
                <i class="nf nf-oct-link_external"></i>
            </a>
        </div>

        <div>
            <h2>
                Manage Airflow for Cooling Efficiency
            </h2>
            <a class="website_link" href="https://www.energystar.gov/products/data_center_equipment/16-more-ways-cut-energy-waste-data-center/manage-airflow-cooling-efficiency">
                energystar.com
                <i class="nf nf-oct-link_external"></i>
            </a>
        </div>
    </section>

    <cfinclude template="./partials/contactUs.cfm">
    <cfinclude template="./partials/footer.cfm">
    <cfoutput>
        #eof_html#
    </cfoutput>
</body>
</html>