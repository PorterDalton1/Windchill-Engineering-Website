<!DOCTYPE html>
<html lang="en">
<head>
    <title>About Us</title>
    <link rel="stylesheet" type="text/css" href="/assets/css/aboutUs-min.css">
</head>
<body>
    <cfset websiteTitle="About Us">
    <cfinclude template="./partials/header.cfm">

    <section id="about_us_title">
        <span class="center_h1_flex">
            <h1>About <b>Us</b></h1>
        </span>
        <div class="image_crop">
            <img src="/assets/img/stand_up_talk.webp">
        </div>
    </section>

    <section id="about_us_one">
        <div>
            <h2>History</h2>
            <p>
                We began operations in 2012, but our history goes back beyond that. With over 
                40 years combined manufacturing experience, our founders recognized a need for 
                a containment company that would work closely with partners in the containment 
                industry to provide complete custom containment solutions. Since 2012, we have 
                partnered with experts in the industry to provide containment for small businesses, 
                COLO's, large private institutions, and fortune 500 companies.
            </p>
        </div>
        <div>
            <h2>Our Containment</h2>
            <p>
                We manufacture all of our containment solutions in-house. Before production begins, 
                we collaborate closely with each client to design a customized system tailored to 
                the specific needs of their data center. Our goal is complete client satisfaction, 
                achieved through durable, high-quality solutions engineered for a perfect fit.
            </p>
        </div>
        <div>
            <h2>Certified Partners</h2>
            <p>
                Our primary skill is designing and manufacturing high quality containment. There are 
                a lot of great companies that understand airflow dynamics, energy efficiency, 
                manufacture high quality cabinets, or just have better expertise to build a complete 
                solution. We try to work with these partners because we believe that is how we can 
                offer the best value for our customers. Contact us and we will put you in touch with 
                a partner that is best suited to meet your containment needs.
            </p>
        </div>
    </section>

    <cfinclude template="./partials/contactUs.cfm">
    <cfinclude template="./partials/footer.cfm">
</body>
</html>