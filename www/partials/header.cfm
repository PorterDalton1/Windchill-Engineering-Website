<cfif !isDefined("websiteTitle")>
    <cfthrow message="You need to define a websiteTitle variable before using this cfinclude header.cfm">
</cfif>

<header id="main_header">
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
                <a href="/secure/vendorLogin.cfm">
                    <i class="nf nf-fa-user_tie"></i>
                    Vendor Log In
                </a>
                <a>
                    <i class="nf nf-fa-search"></i>
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
                    <div class="option">
                        Support
                    </div>
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
                    <div class="option">
                        Industry Standards
                    </div>
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
                </div>
            </div>
        </div>
    </nav>
    <div id="header_margin"></div>
</header>

