<cfscript>
    partnersListImgs = directoryList(expandPath("/assets/img/partners"), false, "name", "", "", "file");

    boolean function onlyFiles(path, type, extension)  {
        if(type is "dir") return false;
            return 
        }
</cfscript>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>WindChill Engineering | Data Center Containment</title>
    <link rel="icon" href="/assets/img/WindChill_Icon.png">
    <link rel="stylesheet" type="text/css" href="/assets/css/min/index-min.css">
    <link rel="stylesheet" type="text/css" href="/assets/css/lib/WC-animate-min.css">
    <script src="/assets/js/lib/jquery-3.7.1.min.js"></script>
    <script src="/assets/js/index.js"></script>
    <script src="/assets/js/header.js"></script>
    <script src="/assets/js/lib/WC-animate.js"></script>
</head>
<body>
    <cfset websiteTitle="Home">
    <cfinclude template="./partials/header.cfm">
    <div id="first_content" class="heading">
        <div>
            <div class="text_heading WC_fade-in WC_slide-right">
                <h2>Understand the <br><span>WindChill Advantage</span></h2>
                <p>We are committed to working with our clients to create and maintain the best solutions in the industry.</p>
                <div class="button_flex">
                    <a href="/getAQuote.cfm">
                        <button id="contact_button" class="sansation-light">
                            <div>    
                                Contact Us to Get Started
                            </div>
                            <div class="arrow">
                                <i class="nf nf-cod-arrow_right"></i>
                            </div>
                        </button>
                    </a>
    
                    <a href="">
                        <button id="learn_button" class="sansation-light">
                            <div>    
                                How We Make a Difference
                            </div>
                            <div class="arrow">
                                <i class="nf nf-cod-arrow_right"></i>
                            </div>
                        </button>
                    </a>
                </div>
            </div>
        </div>
        <div class="content_heading animated WC_fade-in WC_slide-left">
            <video autoplay loop muted id="data_center_video">
                <source src="/assets/video/data_center_video.mp4">
            </video>
        </div>
    </div>

    <div id="second_content" class="WC_fade-in">
        <h2 class="WC_slide-right WC_fade-in">Trusted Across The Industry</h2>
        <h3>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quibusdam, optio!</h3>
        <div id="spacing_client_list">
            <div id="client_list">

                <!--- 
                    This could be cleaned up a bit. Svgs can't be opened in cfimage, so I created pngs
                    of all the svg images just to get the ratio of the images. I could read all the svgs as
                    xml objects directly, but at this point it works anyways so why change it.
                --->
                <cfset folderpath = "/assets/img/partners/">
                <cfloop array="#partnersListImgs#" index="src">
                    <cfset imagepath="#folderpath##src#">

                    <cfimage source="#imagepath#" name="tmpImage">

                    <cfscript>
                        area = 180^2;
                        imageWidth = imageGetWidth(tmpImage);
                        imageHeight = imageGetHeight(tmpImage);

                        ratio = imageHeight / imageWidth;

                        newWidth = sqr(area/ratio);

                        filename = listToArray(src, '.');
                        filename.pop();
                        filename = arrayToList(filename, '.');

                        if (fileExists(expandPath(folderpath) & '.svgs/' & filename & '.svg')) {
                            srcimg =  folderpath & '.svgs/' & filename & '.svg';
                        } else {
                            srcimg = imagePath;
                        }
                    </cfscript>

                    <cfoutput>
                        <img src="#srcimg#" style="width: #newWidth#px">
                    </cfoutput>
                </cfloop>
            </div>
        </div>
    </div>

    <section id="text_content">
        <div class="single_span WC_slide-right WC_fade-in">
            <span>
                <h3>Data Center Containment Specialists</h3>
                <h2>custom designed solutions exceeding needs</h2>
                <p>
                    At WindChill, we specialize in containment solutions. We collaborate closely with each client - regardless of project 
                    scale - to design and fabricate custom systems that meet their specific requirements. Once the design is finalized, 
                    we commence manufacturing. Our rigid containment units are constructed from robust aluminum frames and clear, 
                    fire-rated polycarbonate that offers the industry's highest optical clarity. A variety of door configurations 
                    are available to address distinct operational needs. In addition to our standard product line, we engineer and build 
                    bespoke solutions to overcome unique obstacles or constraints present in any data-center environment. Whether implementing hot-aisle 
                    or cold-aisle containment, we are dedicated to delivering reliable, precisely fitted products.
                </p>
            </span>
        </div>

        <div class="double_span">
            <span class="WC_slide-right WC_fade-in">
                <h3>Origins</h3>
                <h2>40 years combined experience</h2>
                <p>
                    WindChill Engineering launched in 2012, building on more than four decades of combined manufacturing expertise. Recognizing 
                    a gap in the market for a containment partner that collaborates closely with data-center stakeholders, our founders set out 
                    to deliver fully customized containment solutions. Since our inception, we have teamed with industry experts to serve a 
                    diverse clientele—including small businesses, colocation facilities, large private institutions, and Fortune 500 enterprises.
                </p>
            </span>
            <span class="WC_slide-right WC_fade-in">
                <h3>Meaningful Customer Connections</h3>
                <h2>Direct support and stress-free </h2>
                <p>
                    Above all, we take pride in every facet of our customer support. From the initial design phase through installation, warranty, 
                    and ongoing assistance, our team is always ready to answer questions and ensure the end-user is satisfied with the solution. 
                    We back our commitment with responsive, knowledgeable service that anticipates needs at each step. Experience our support once, 
                    and you'll never look elsewhere.
                </p>
            </span>
        </div>

        <div id="stats_card" class="WC_fade-in">
            <h3 class="advantage">Data Center Containment</h3>
            <h2 class="advantage">Advantages</h2>
            <div id="icon_content_flex">
                <div class="WC_fade-in WC_slide-right">
                    <div class="svg_icon">
                        <img src="./assets/img/propeller_blue.svg">
                    </div>
                    <h1>25%</h1>
                    <h3>Less Energy</h3>
                    <p>
                        Targeted airflow creates less effort leading 
                        to significant reductions in power usage and 
                        operational costs.
                        <sup>
                            <a href="https://www.energy.gov/sites/default/files/2024-07/best-practice-guide-data-center-design.pdf" target="_blank">
                                1
                            </a>
                        </sup>
                    </p>
                </div>
                <div class="WC_fade-in WC_slide-right">
                    <div class="svg_icon">
                        <img src="./assets/img/ROI_blue.svg">
                    </div>
                    <h1>12 mo</h1>
                    <h3>For Full ROI</h3>
                    <p>
                        On average, the amount of costs saved
                        through containment usually pays for
                        itself in a year or less.
                        <sup>
                            <a href="https://www.energystar.gov/sites/default/files/asset/document/Google_Server_Room_Case_Study.pdf" target="_blank">
                                2
                            </a>
                        </sup>
                    </p>
                </div>
                <div class="WC_fade-in WC_slide-right">
                    <div class="svg_icon">
                        <img src="./assets/img/Longevity_blue.svg">
                    </div>
                    <h1>300%</h1>
                    <h3>Longevity</h3>
                    <p>
                        The failure rate of disk drives could be 3x lower
                        compared to less controlled environment.
                        <sup>
                            <a href="https://www.microsoft.com/en-us/research/wp-content/uploads/2014/11/Reliability-FAST16.pdf" target="_blank">
                                4
                            </a>
                        </sup>
                        
                    </p>
                </div>
                <div class="WC_fade-in WC_slide-right">
                    <div class="svg_icon">
                        <img src="./assets/img/leaf_blue.svg">
                    </div>
                    <h1>240 twh</h1>
                    <h3>Sustainability</h3>
                    <p>
                        Data centers use significant amounts of 
                        energy per year. Cooling is the main consumer 
                        of energy.
                        <sup>
                            <a href="https://www.science.org/doi/abs/10.1126/science.aba3758?mc_cid=a7138e6359" target="_blank">
                                3
                            </a>
                        </sup>
                    </p>
                </div>
            </div>
        </div>
    </section>
    <section id="third_content">
        <div class="single_span WC_fade-in WC_slide-right">
            <span class="">
                <h3 id="third_content_h3">LEARN</h3>
                <h2 id="third_content_h2">Delivering Custom Solutions</h2>
                <p>
                    Custom-fitted data center equipment delivers superior efficiency, reliability, and total cost of ownership 
                    by matching hardware precisely to facility layout, cooling capacity, and workload profiles. Custom solutions 
                    simplify maintenance, speed deployment, and improve fault isolation, resulting in higher uptime and predictable 
                    service levels. For organizations with unique capacity needs or strict compliance and scalability goals, 
                    custom-fitted equipment provides the best balance of performance, efficiency, and long-term value.
                </p>
            </span>
        </div>
        <div id="third_cards_flex">
            <a class="card WC_fade-in WC_slide-right" href="/coldAisleContainment.cfm">
                <div class="image_crop_box">
                    <img src="./assets/img/ColdAisleMain.jpg">
                </div>
                <h3>Cold Aisle Containment</h3>
                <p>
                    Cold Aisle Containment in data centers isolates the cold air as it is fed into the racks.
                </p>
                <div class="learn_more">Learn More <i class="nf nf-fa-arrow_right"></i></div>
            </a>
            <a class="card WC_fade-in WC_slide-right" href="hotAisleContainment.cfm">
                <div class="image_crop_box">
                    <img src="./assets/img/HotAisleMain2.jpg">
                </div>
                <h3>Hot Aisle Containment</h3>
                <p>
                    Hot Aisle Containment is isolating the hot air in the return aisle and directing it back to the cooling unit.
                </p>
                <div class="learn_more">Learn More <i class="nf nf-fa-arrow_right"></i></div>
            </a>
            <a class="card WC_fade-in WC_slide-right" href="rigidContainment.cfm">
                <div class="image_crop_box">
                    <img src="./assets/img/Double_Sliding_Door.png">
                </div>
                <h3>Rigid Containment</h3>
                <p>
                    WindChill rigid doors, rigid walls, cieling panels, and GapHOG products combine to create the best value in data center airflow containment.
                </p>
                <div class="learn_more">Learn More <i class="nf nf-fa-arrow_right"></i></div>
            </a>
    
            <a class="card WC_fade-in WC_slide-right" href="softContainment.cfm">
                <div class="image_crop_box">
                    <img src="./assets/img/Soft_Containment.jpg">
                </div>
                <h3>Soft Containment</h3>
                <p>
                    WindChill data center curtains, or soft containment, are a low cost alternative to rigid containment.
                </p>
                <div class="learn_more">Learn More <i class="nf nf-fa-arrow_right"></i></div>
            </a>
        </div>
    </section>
    <cfinclude template="./partials/contactUs.cfm">
    <cfinclude template="./partials/footer.cfm">
</body>
</html> 