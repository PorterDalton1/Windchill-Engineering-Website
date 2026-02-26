<!DOCTYPE html>
<html lang="en">
<head>
    <title>Rigid Containment</title>
    <link rel="stylesheet" type="text/css" href="/assets/css/rigidContainment-min.css">
</head>
<body>
    <cfset websiteTitle="Rigid Containment">
    <cfinclude template="./partials/header.cfm">
    <div id="rigid_first" class="heading">
        <div>
            <div class="text_heading WC_fade-in WC_slide-right">
                <h2>Our Products <br><span>Rigid Containment</span></h2>
                <p>
                    Our products are all custom made. Our rigid containment is made with high quality 
                    materials that meet or exceed ASTM standards.
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
                                    scrollTop: $("#rigid_second").offset().top
                                }, 'slow');
                            });
                        });
                    </script>
                </div>
            </div>
        </div>
        <div class="content_heading WC_fade-in WC_slide-left">
            <img src="/assets/img/free_standing_cropped.webp">
        </div>
    </div>
    
    <div id="rigid_second">
        <div class="double_span">
            <span class="WC_fade-in WC_slide-right">
                <h3>versatile</h3>
                <h2>Rigid Wall</h2>
                <p>
                    Rigid Walls are designed to fill the gaps between aisle cabinets, as above cabinet containment, 
                    or to create full containment walls. Made with sturdy aluminum framing, you can choose from 
                    transparent plexi glass and/or translucent corrugated glass paneling, and a customized anodized 
                    finish. All our data center containment is custom made to meet specific needs.
                </p>
            </span>
            <span class="WC_fade-in WC_slide-right">
                <h3>multiple</h3>
                <h2>Applications</h2>
                <ul>
                    <li class="WC_fade-in WC_slide-right">
                        <i class="nf nf-fa-arrow_right"></i>
                        <span>Cabinet Fillers</span>
                    </li>
                    <li class="WC_fade-in WC_slide-right">
                        <i class="nf nf-fa-arrow_right"></i>
                        <span>Extend Height of Cabinets</span>
                    </li>
                    <li class="WC_fade-in WC_slide-right">
                        <i class="nf nf-fa-arrow_right"></i>
                        <span>Around Chimneys</span>
                    </li>
                    <li class="WC_fade-in WC_slide-right">
                        <i class="nf nf-fa-arrow_right"></i>
                        <span>Cap Off Aisles</span>
                    </li>
                </ul>
            </span>
        </div>

        <div class="flex_rigid">
            <a class="card WC_fade-in WC_slide-right">
                <div class="image_crop_box">
                    <img src="/assets/img/RW_filler_panel.webp">
                </div>
                <h3>Filler Panel</h3>
                <p>
                    Premium containment product and versitile in application. Used to fill in empty cabinet space, go above cabinets,
                    go around rackets, etc...
                </p>
                <div class="learn_more">Hot & Cold Aisle Application</div>
            </a>

            <a class="card WC_fade-in WC_slide-right">
                <div class="image_crop_box">
                    <img src="/assets/img/RW_sliding_access.webp">
                </div>
                <h3>Sliding Access Panel</h3>
                <p>
                    Rigid containment option for easy accessibility is needed while maintaining
                    a high standard of air isolation and build quality.
                </p>
                <div class="learn_more">Hot & Cold Aisle Application</div>
            </a>

            <a class="card WC_fade-in WC_slide-right">
                <div class="image_crop_box">
                    <img src="/assets/img/Economy_Rigid_Wall.webp">
                </div>
                <h3>Economy Rigid Wall</h3>
                <p>
                    Affordable option that maintains the high effectiveness of air flow seperation.
                </p>
                <div class="learn_more">Hot & Cold Aisle Application</div>
            </a>
            <a style="height: 1px; visibility: none"></a>
        </div>
    </div>
    <div id="rigid_third">
        <div class="double_span">
            <span class="WC_fade-in WC_slide-right">
                <h3>Premium</h3>
                <h2>Rigid Doors</h2>
                <p>
                    All our doors feature sturdy aluminum frame, no threshold design, and ASTM rated 
                    polycarbonate paneling. We also offer custom finish, corrugated panel, and free 
                    standing design options. Our rigid doors represent the ultimate value in rigid 
                    containment for data centers; price per performance, they are the best in the 
                    market.
                </p>
            </span>
        </div>
        <div class="flex_rigid">
            <a class="card WC_fade-in WC_slide-right">
                <div class="image_crop_box">
                    <img src="/assets/img/DoubleSlidingDoor.webp">
                </div>
                <h3>Double Sliding Door</h3>
                <p>
                    Our most popular option. Made with premium materials, feels very smooth to operate,
                    and allows easy accessibility to the aisle.
                </p>
                <div class="learn_more">Hot & Cold Aisle Application</div>
            </a>
            <a class="card WC_fade-in WC_slide-right">
                <div class="image_crop_box">
                    <img src="/assets/img/single_sliding_door_cropped.webp">
                </div>
                <h3>Single Sliding Door</h3>
                <p>
                    Most Used when an aisle is up against a wall. Has a variable door width, making it 
                    versitile to fit in many applications.
                </p>
                <div class="learn_more">Hot & Cold Aisle Application</div>
            </a>
            <a class="card WC_fade-in WC_slide-right">
                <div class="image_crop_box">
                    <img src="/assets/img/single_hinged_door_cropped.webp">
                </div>
                <h3>Single Hinged Door</h3>
                <p>
                    More traditional swinging door, can fit inside an aisle and has lots of applications
                    where working in tight areas.
                </p>
                <div class="learn_more">Hot & Cold Aisle Application</div>
            </a>
            <a style="height: 1px; visibility: none"></a>
        </div>
    </div>
    <div id="rigid_fourth">
        <div class="single_span WC_fade-in WC_slide-right">
            <span>
                <h3>Effective</h3>
                <h2>Ceiling Panels</h2>
                <p>
                    Used to cap off top of aisle. Made with strict fire compliance. Mainly used in cold aisle
                    applications, ceiling panels tend to be quick to install and are extremely effective.
                </p>
            </span>
        </div>

        <div class="flex_rigid">
            <a class="card WC_fade-in WC_slide-right">
                <div class="image_crop_box">
                    <img src="/assets/img/Ceiling_panel.webp">
                </div>
                <h3>Shrink Away Ceiling</h3>
                <p>
                    Caps off top of aisle. Made with melt away heat shrink plastic for fire compliance. 
                </p>
                <div class="learn_more">Hot & Cold Aisle Application</div>
            </a>
            <a class="card WC_fade-in WC_slide-right">
                <div class="image_crop_box">
                    <img src="/assets/img/MHAC.webp">
                </div>
                <h3>Mechanical Heat Activated Ceiling</h3>
                <p>
                    More sophisticated setup common for more strict compliance where on top of the normal
                    shrink away plastic, there is also a mechanical switch, which opens the panel through
                    an electrical system. 
                </p>
                <div class="learn_more">Hot & Cold Aisle Application</div>
            </a>
            <a style="height: 1px; visibility: none"></a>
            <a style="height: 1px; visibility: none"></a>
        </div>
    </div>
    <cfinclude template="./partials/contactUs.cfm">
    <cfinclude template="./partials/footer.cfm">
</body>
</html>