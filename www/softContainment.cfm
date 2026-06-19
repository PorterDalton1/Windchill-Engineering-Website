<!DOCTYPE html>
<html lang="en">
<head>
    <title>Soft Containment</title>
    <link rel="stylesheet" type="text/css" href="/assets/css/softContainment-min.css">
</head>
<body>
    <cfset websiteTitle="Soft Containment">
    <cfinclude template="./partials/header.cfm">

    <div id="soft_first" class="heading">
        <div>
            <div class="text_heading WC_fade-in WC_slide-right">
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
                    <script>
                        $(document).ready(function () {
                            $('#contact_button').on('click', function () {
                                $('html,body').animate({
                                    scrollTop: $("#soft_second").offset().top
                                }, 'slow');
                            });
                        });
                    </script>
                </div>
            </div>
        </div>
        <div class="content_heading WC_fade-in WC_slide-left">
            <img src="./assets/img/Thermal_heading(cropped).webp">
        </div>
    </div>

    <section id="soft_second">
        <div class="double_span ">
            <span class="WC_fade-in WC_slide-right">
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
            <span class="has_img WC_fade-in WC_slide-right">
                <img class="foo" src="/assets/img/CurtainDrawing.webp">
                <img class="bar" src="/assets/img/Track_connecting.webp">
                <img class="biz" src="/assets/img/fusible_link.webp">
            </span>
        </div>
    </section>

    <cfinclude template="./partials/contactUs.cfm">
    <cfinclude template="./partials/footer.cfm">
    <cfoutput>
        #eof_html#
    </cfoutput>
</body>
</html>