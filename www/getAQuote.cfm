<!DOCTYPE html>
<html lang="en">
<head>
    <title>Get a Quote</title>
    <link rel="stylesheet" type="text/css" href="/assets/css/getAQuote-min.css">
</head>
<body>
    <cfset websiteTitle="Get A Quote">
    <cfinclude template="./partials/header.cfm">

    <section id="quote_one">
        <span class="center_h1_flex">
            <h1>Get a <b>Quote</b></h1>
        </span>
        <div class="image_crop">
            <img src="/assets/img/planning-out-on-table1.webp">
        </div>
    </section>

    <section id="quote_two">
        <div class="single_span">
            <span>
                <h3>Ready to start a project</h3>
                <h2>We can get you the resources to get started</h2>
                <p>
                    Every data center is different, and we understand that each facility brings its own set of technical 
                    requirements, operational constraints, and budget considerations. If you’re getting started on a 
                    project, contact us: our team will assess your environment, recommend the right combination of tools 
                    and solutions, and provide clear pricing options tailored to your needs. From scalable hardware and 
                    energy-efficient cooling to monitoring software and managed services, we can create a customized 
                    proposal that aligns with your performance goals, compliance standards, and timelines. Let us simplify 
                    the procurement process, help you avoid costly missteps, and ensure your data center achieves reliable, 
                    cost-effective operation from day one.
                </p>
            </span>
            <div id="contact_us_foo">
                <a href="mailto:info@theWindChill.com">Email Us</a>
                <a href="tel:+1 (801) 494-2098">Call Us</a>
            </div>
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


<!---         
<div id="flex_section">
    <div id="filter_card">
        <h2>Call us and get direct solutions</h2>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores soluta maxime iure enim. Doloribus, atque ullam. Nam eaque possimus voluptates.</p>
    </div>
    <div id="flex_cards_foo">
        <div id="phone_card">
            <!---
            <img src="/assets/img/telephone_contact-us.svg">
            --->
            <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"  viewBox="0 0 511.999 511.999" xml:space="preserve"><g>	<circle style="fill:#88888F;" cx="293.516" cy="218.483" r="43.717"/>	<path style="fill:#88888F;" d="M355.343,280.307c34.089-34.092,34.089-89.562-0.001-123.651		c-34.092-34.092-89.56-34.092-123.651,0.001l-30.914-30.914c51.137-51.136,134.341-51.139,185.477-0.001		c51.134,51.137,51.136,134.339-0.001,185.477L355.343,280.307z"/>	<path style="fill:#88888F;" d="M448.078,373.046l-30.911-30.912c68.181-68.181,68.182-179.12,0-247.301		c-68.181-68.181-179.12-68.18-247.301,0.001L138.956,63.92c85.226-85.225,223.899-85.226,309.124,0		C533.306,149.148,533.306,287.819,448.078,373.046z"/></g><path style="fill:#98C8ED;" d="M314.127,362.738l-41.219,41.218L108.041,239.092l41.219-41.219l-92.738-92.735l-30.912,30.911	c-34.147,34.146-34.144,89.506,0,123.652l226.691,226.69c34.144,34.144,89.505,34.144,123.65-0.001l30.912-30.911L314.127,362.738z"	/><path style="fill:#7AB9E8;" d="M314.127,362.738l-41.219,41.218l-82.433-82.431l-51.52,51.519L252.301,486.39	c34.144,34.144,89.505,34.144,123.651-0.001l30.912-30.911L314.127,362.738z"/><g>	<path style="fill:#56545A;" d="M262.605,249.395c17.073,17.071,44.753,17.071,61.825,0c17.073-17.071,17.071-44.753,0-61.825		h-0.001L262.605,249.395L262.605,249.395z"/>	<path style="fill:#56545A;" d="M355.342,156.657c34.089,34.089,34.089,89.559,0.001,123.65l30.911,30.914		c51.137-51.137,51.134-134.339,0.001-185.477L355.342,156.657L355.342,156.657z"/>	<path style="fill:#56545A;" d="M417.168,342.133l30.911,30.912c85.228-85.225,85.228-223.898,0.001-309.126l0,0l-30.912,30.912l0,0		C485.35,163.013,485.347,273.952,417.168,342.133z"/></g></svg>
            <span>Call</span>
        </div>
        <div id="email_card">
            <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"     viewBox="0 0 512 512" xml:space="preserve"><rect y="68.267" style="fill:#FFEA8A;" width="512" height="375.467"/><g>    <rect x="256" y="68.267" style="fill:#FFDB2D;" width="256" height="375.467"/>    <polygon style="fill:#FFDB2D;" points="256,324.267 0,68.267 0,443.733 512,443.733 512,68.267 	"/></g><polygon style="fill:#FFAF33;" points="256,324.267 256,443.733 512,443.733 512,68.267 "/></svg>
            <span>Email</span>
        </div>
    </div>
</div> 
--->

