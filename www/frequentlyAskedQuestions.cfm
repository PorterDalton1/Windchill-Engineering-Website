<cffunction name="questionCard">
    <cfparam name="question">
    <cfparam name="answer">
    <cfoutput>
        <div class="faq_card">
            <span class="question">
                <!--- <i class="nf nf-md-minus"></i> --->
                <span>
                    #question#
                </span>
                <i class="nf nf-md-plus"></i>
            </span>
            <div class="answer fade-in">
                #answer#
            </div>
        </div>
    </cfoutput>
</cffunction>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FAQ</title>
    <link rel="icon" href="/assets/img/WindChill_Icon.png">
    <link rel="stylesheet" type="text/css" href="/assets/css/min/frequentlyAskedQuestions-min.css">
    <script src="/assets/js/lib/jquery-3.7.1.min.js"></script>
    <script src="/assets/js/header.js"></script>
    <script src="/assets/js/frequentlyAskedQuestions.js"></script>
</head>
<body>
    <cfset websiteTitle="FAQ">
    <cfinclude template="./partials/header.cfm">

    <section>
        <div>
            <h1>FAQ</h1>
            <cfoutput>
    
                #questionCard(
                    question='
                        What is WindChill Engineering?
                    ',
    
                    answer='
                        <p>
                            WindChill Engineering is a leader in Data Center Air Flow containment solutions. Utilizing the best 
                            in cutting edge industry standard airflow containment technology we provide the solutions you need.
                            As demands within the Data Center industry have evolved, the need to effectively manage costs and 
                            efficiencies have increased drastically. An inefficient Data Center wastes money. WindChill Engineering 
                            provides the cost effective and efficient Data Center airflow solutions you need. Our products will save 
                            you money, provide a short return on investment, and help extend the life of your IT equipment.
                        </p>
                        <p>
                            In short, WindChill Engineering will increase your Data Center cooling efficiency and profitability.
                        </p>
                    '
                )#
    
    
                #questionCard(
                    question='
                        What is Data Center Containment?
                    ',
    
                    answer='
                        <p> 
                            Containment involves isolating and directing airflow within hot and cold aisles using doors, 
                            panels, and ceiling panels at row ends, between cabinets, and above cabinet rows. This approach 
                            is the most effective means of controlling and optimizing airflow pathways. 
                        </p> 
                        <p> 
                            Many data centers are provisioned with up to 60% more cooling capacity than required to maintain 
                            server temperatures and prevent hot spots, which increases energy consumption and operating 
                            expense. Airflow containment prevents mixing of hot and cold streams, delivers conditioned air 
                            directly to equipment inlets, and returns hot exhaust air to the CRAC units. The benefits of 
                            containment vary by customer priorities and design objectives. </p> <p>Key purposes of containment:
    
                            </p> 
                            <ol> 
                                <li>Eliminate hot spots and improve temperature uniformity</li> 
                                <li>Right-size cooling and electrical infrastructure</li> 
                                <li>Optimize capacity planning and future growth flexibility</li>
                                <li>Reduce operating costs through improved system efficiency</li> 
                                <li>Enable higher supply-air temperatures for energy savings</li> 
                                <li>Reduce dehumidification load and moisture control requirements</li> 
                                <li>Improve CRAC unit performance and part‑load efficiency</li> 
                                <li>Enhance physical security with lockable doors and rigid enclosures</li> 
                                <li>Improve overall facility appearance and organization</li> 
                            </ol> 
                            <p> 
                                Both hot-aisle and cold-aisle containment use doors at row ends; they differ in airflow routing. 
                                Hot-aisle containment typically employs overhead walls or ceilings to channel exhaust air back 
                                to the return system, while cold-aisle containment caps the aisle to form a dedicated supply-air 
                                plenum.
                            </p>
                    '
                )#
    
    
                #questionCard(
                    question='
                        What are your products made of and how does this meet or exceed fire code requirements in data centers?
                    ',
    
                    answer='
                        <p>
                            WindChill provides three product categories, often used together, to help maximize the efficiency 
                            of a data center: rigid containment, soft containment, and gap fillers.
                        </p>
    
                        <p>
                            WindChill rigid containment is made of sturdy aluminum and NFPA rated clear polycarbonate paneling. 
                            WindChill rigid containment meets all ASHRAE and NFPA requirements for fire safety. Rigid containment 
                            provides the best seal around an aisle and enhances the look of a data center.
                        </p>
    
                        <p>
                            Soft containment is made of a clear vinyl material that is hung like curtains from the ceilings. 
                            It is an economical alternative to rigid containment. While not as effective as rigid containment, 
                            soft containment still provides the benefits of eliminating hot spots and increasing efficiency in 
                            data centers. WindChill soft containment meets NFPA standards for drop to allow the fire suppression 
                            system to operate.
                        </p>
                    '
                )#
    
    
                #questionCard(
                    question='
                        How much is a standard installation?
                    ',
    
                    answer='
                        <p>
                            Each installation is custom. Contact us for details here:
                        </p>
                        <p>
                            <i>Office:</i> +1 (801) 494-2098
                        </p>
                        <p>
                            <i>Email:</i>  info@thewindchill.com
                        </p>
                    '
                )#
    
    
                #questionCard(
                    question='
                        What is GapHOG and what will it do for me?
                    ',
    
                    answer='
                        <p>
                            GapHOG’s products keep chilled air from escaping into odd spots where it is not used 
                            (such as above, below and in-between data center hardware or into hot aisles through 
                            data center flooring). You may be losing a few thousand dollars each year in electrical 
                            charges due to these “leaks” in your system. A few thousand dollars of savings each year 
                            may well be worth the investment in GapHOG’s products.
                        </p>
                        <p>
                            The money you spend on GapHOG products comes back to you year after year through improved 
                            airflow circulation, which means lower energy bills.
                        </p>
                    '
                )#
    
    
                #questionCard(
                    question='
                        Which is better, Hot Aisle or Cold Aisle Containment?
                    ',
    
                    answer='
                        <p>
                            Cold aisle containment encloses the cold intake side of racks so chilled air is delivered 
                            directly to server fronts, reducing mixing with return air and making it straightforward 
                            to integrate with existing CRAC/CRAH layouts; it typically yields predictable intake 
                            temperatures, simpler aisle pressure control, and easier incremental implementation in 
                            legacy rooms, but can raise return-air temperatures to cooling units and may require more 
                            floor-level ducting and careful management of perforated tiles and underfloor plenum dynamics. 
                        </p>
                        
                        <p>
                            Hot aisle containment encloses the hot exhaust side so warm air is captured and routed directly 
                            to cooling units, improving cooling-unit efficiency by delivering higher return-air temperatures 
                            and enabling free-cooling opportunities, while often reducing the footprint of conditioned airflow 
                            and yielding lower overall fan energy in many 
                            <a href="https://datacenterss.com/hot-aisle-vs-cold-aisle-containment-finding-the-right-solution-for-your-data-center/">
                                designs.
                            </a>
                        </p>
                        
                        <p>
                            Choosing between them depends on priorities: cold aisle favors easier operational visibility 
                            at rack intakes and simpler phased rollouts in heterogeneous environments, while hot aisle 
                            favors long-term energy savings, higher economizer benefit, and cleaner separation when ducting 
                            to heat rejection is feasible. The best choice aligns with existing room architecture, cooling 
                            infrastructure, maintenance practices, and a clear plan for airflow measurement and controls.
                        </p>
                    '
                )#
    
    
                #questionCard(
                    question='
                        How does the Melt Away roofing work in case of a fire?
                    ',
    
                    answer='
                        <p>
                            These panels are designed to work with either water or chemical based suppression systems. 
                            Should a fire suppression system engage due to a fire, the Melt Away roofing system will 
                            shrink and fall to the floor allowing the suppression system to extinguish the fire.
                        </p>
                    '
                )#
                
            </cfoutput>
        </div>
    </section>

    <cfinclude template="./partials/contactUs.cfm">
    <cfinclude template="./partials/footer.cfm">
</body>
</html>