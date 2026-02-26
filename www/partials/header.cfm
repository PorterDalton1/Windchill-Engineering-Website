<cfif !isDefined("websiteTitle")>
    <cfthrow message="You need to define a websiteTitle variable before using this cfinclude header.cfm">
</cfif>

<cfhtmlhead>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="/assets/img/WindChill_Icon.png">
    <link rel="stylesheet" type="text/css" href="/assets/css/WC-animate-min.css">
    <script src="/assets/js/lib/jquery-3.7.1.min.js"></script>
</cfhtmlhead>

<cfhtmlbody>
    <script src="/assets/js/lib/WC-animate.js"></script>
    <script src="/assets/js/header.js"></script>
</cfhtmlbody>


<header id="main_header" class="WC_fade-in">
    <div id="top_header">
        <i class="nf nf-fa-phone"></i>
        <a href="tel:+1 (801) 494-2098">+1 (801) 494-2098</a>
        <span id="splitter">/</span>
        <i class="nf nf-md-email"></i>
        <a href="mailto:info@theWindChill.com">info@thewindchill.com</a>
    </div>
    <nav id="site_header">
        <div id="main_block">
            <span id="logo_and_name">
                <i class="nf nf-fa-navicon" id="nav_icon"></i>
                <a href="/index.cfm" id="img_home_link">
                    <img id="windchill_logo" src="/assets/img/logo.png">
                </a>
                <span id="webpage_title">
                    <cfoutput>
                        #websiteTitle#
                    </cfoutput>
                </span>
            </span>
            <div id="nav_icons">
                <a href="/secure/vendorLogin.cfm" class="header__btn--primary vendor--primary">
                    <i class="nf nf-md-account_tie_outline"></i>
                    Vendor Log In
                </a>
                <a class="header__btn--primary search--primary">
                    <i class="nf nf-oct-search"></i>
                    Search
                </a>
            </div>
        </div>
    
        <div id="nav_tabs">
            <div>
                <span>Solutions</span> 
                <i class="nf nf-fa-angle_down"></i>
                <div class="dropdown_content">
                    <a class="option"  href="/hotAisleContainment.cfm">
                        Hot Aisle Containment
                    </a>
                    <a class="option" href="/coldAisleContainment.cfm">
                        Cold Aisle Containment
                    </a>
                    <a class="option" href="/rigidContainment.cfm">
                        Rigid Containment
                    </a>
                    <a class="option" href="/softContainment.cfm">
                        Soft Containment
                    </a>
                </div>
            </div>
            <div>
                <span>Contact</span>
                <i class="nf nf-fa-angle_down"></i>
                <div class="dropdown_content">
                    <a class="option" href="getAQuote.cfm">
                        Get a Quote
                    </a>
                </div>
            </div>
            <div>
                <span>Resources</span> 
                <i class="nf nf-fa-angle_down"></i>
                <div class="dropdown_content">
                    <a class="option" href="/secure/vendorLogin.cfm">
                        Vendor Resources
                    </a>
                    <a class="option" href="careers.cfm">
                        Careers
                    </a>
                    <a class="option" href="webLinks.cfm">
                        Useful Resources
                    </a>
                </div>
            </div>
            <div>
                <span>FAQ</span> 
                <i class="nf nf-fa-angle_down"></i>
                <div class="dropdown_content">
                    <a class="option" href="/references.cfm">
                        References
                    </a>
                    <a class="option" href="frequentlyAskedQuestions.cfm">
                        Frequently Asked Questions
                    </a>
                    <a class="option" href="aboutUs.cfm">
                        About Us
                    </a>
                </div>
            </div>
        </div>
    </nav>
</header>

<div id="search--overlay">
    <div>
        <div id="search--input_bar" class="WC_fade-in WC_slide-right">
            <label for="search" style="display: none"></label>
            <input
                id="search_input--overlay"
                type="text" 
                name="search"
                autocomplete="no" 
                placeholder="Search Website" 
            >
            <i class="nf nf-oct-search" id="search_button--overlay"></i>
        </div>
    </div>
</div>