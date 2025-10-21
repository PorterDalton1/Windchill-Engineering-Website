<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rigid Containment</title>
    <link rel="icon" href="./img/WindChill_Icon.png">
    <link rel="stylesheet" type="text/css" href="/assets/css/min/getAQuote-min.css">
    <script src="/assets/js/lib/jquery-3.7.1.min.js"></script>
    <script src="/assets/js/header.js"></script>
</head>
<body>
    <cfset websiteTitle="Get A Quote">
    <cfinclude template="./partials/header.cfm">

    <section class="contact">
        <div id="filter_card">
            <span class="single_span">
                <h3>Get a Quote</h3>
                <h2>Call us and get direct solutions</h2>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores soluta maxime iure enim. Doloribus, atque ullam. Nam eaque possimus voluptates.</p>
            </span>
            <div id="buttons">
                <button>Get Started Here</button>
            </div>
        </div>

        <div class="image_crop">
            <img src="/assets/img/planning-out-on-table1.jpg">
        </div>
    </section>

    <cfinclude template="./partials/contactUs.cfm">
    <cfinclude template="./partials/footer.cfm">

    <script>
        $(document).ready(function () {
            
        });
    </script>
</body>
</html>