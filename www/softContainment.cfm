<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rigid Containment</title>
    <link rel="icon" href="/assets/img/WindChill_Icon.png">
    <link rel="stylesheet" type="text/css" href="/assets/css/min/softContainment-min.css">
    <script src="/assets/js/lib/jquery-3.7.1.min.js"></script>
    <script src="/assets/js/header.js"></script>
</head>
<body>
    <cfset websiteTitle="Soft Containment">
    <cfinclude template="./partials/header.cfm">

    <div id="soft_first" class="heading">
        <div>
            <div class="text_heading">
                <h2>Our Products <br><span>Soft Containment</span></h2>
                <p>
                    Some of the first data center containment was made with vinyl curtains.
                    This is an affordable option with extreme versatility. 
                </p>
                <div class="button_flex">
                    <button id="contact_button" class="sansation-light"> 
                        View Products
                        <i class="nf nf-cod-chevron_down"></i>
                    </button>
                </div>
            </div>
        </div>
        <div class="content_heading">
            <img src="./assets/img/Thermal_heading(cropped).png">
        </div>
    </div>

    <section id="soft_second">
        <div class="double_span">
            <span>
                <h3>Simple</h3>
                <h2>Traditional</h2>
                <!---
                <p>Vinyl (soft) containment has been used since the very beginning. </p>
                --->
                <p>
                    Data center containment during early applications were mainly applied by vinyl curtains. The same
                    kind you'd find in refrigeration units in food warehouses. The main advantages of soft containment
                    is the easy installation, wide versatility, customizability, and "swiss army knife" variations of 
                    solutions it can solve. For hot aisle solutions it comes with fire complience when installed with
                    fusable links that will break away at abnormal high temperatures. 
                </p>
                <p>
                    Do to the versatility of vinyl, most our applications of curtains are installed to accomodate
                    pre-existing infristructure with complicated layouts, those that made it hard to fit regular 
                    rigid containment neatly. 
                </p>
            </span>
            <span class="has_img">
                <img class="foo" src="/assets/img/CurtainDrawing.png">
                <img class="bar" src="/assets/img/Track_connecting.png">
                <img class="biz" src="/assets/img/fusible_link.png">
            </span>
        </div>
    </section>

    <cfinclude template="./partials/contactUs.cfm">
    <cfinclude template="./partials/footer.cfm">
</body>
</html>