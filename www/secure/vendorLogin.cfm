<cfscript>
    if (!structKeyExists(url, "wrongpassword")) {
        url.wrongpassword = false;
    }

    if ((structKeyExists(session, "isAuthenticated") AND session.isAuthenticated EQ true)) {
        location 
            url = "/secure/dashboard.cfm"
        ;
    }
    session.isAuthenticated = false;
</cfscript>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="robots" content="noindex">
    <title>Vendor Login</title>
    <link rel="icon" href="/assets/img/user-tie_icon.png">
    <link rel="stylesheet" type="text/css" href="/assets/css/vendorLogin-min.css">
</head>
<body>
    <div id="login_flex">
        <a id="go_back" href="/index.cfm">
            <i class="nf nf-fa-arrow_left"></i>
            Go Back
        </a>
        <div id="login_card">
            <div id="login_form">
                <img src="/assets/img/logo.png">
                <h2>Vendor Log In</h2>
                <p>Please enter your given password</p>
                <form id="main_form" action="/secure/vendorLogin_submit.cfm" method="post">

                    <div class="user_input password">
                        <span>password</span>
                        <span>
                            <input 
                                name="password" 
                                type="password"
                                autocomplete="current-password"
                                id="user_password"
                            >
                            <i class="nf nf-cod-eye"></i>
                            <i class="nf nf-cod-eye_closed hide-me"></i>
                        </span>
                    </div>
                    <div class="other_links">
                        <a id="no_account">I don't have a password</a>
                    </div>
                    <div id="flex_button">
                        <button type="button" id="login">Log In</button>
                    </div>
                </form>
            </div>
            <div id="graphic">
                <img src="/assets/img/vendor-login-graphic.svg">
            </div>
        </div>

        <div id="bottom_card"></div>
    </div>
    <div id="no_account_pop_up">
        <div id="no_account_card">
            <h2>No Password?</h2>
            <span class="contact_text">
                We provide a password to our vendors directly. If you believe you should have a password,
                please contact us.
            </span>
            <a href="/getAQuote.cfm" class="contact_button">Contact Us</a>
            <span class="cancel_button">Cancel</span>
        </div>
    </div>
    <script src="/assets/js/lib/jquery-3.7.1.min.js"></script>
    <script src="/assets/js/vendorLogin.js"></script>
    <cfif "#url.wrongpassword#" EQ "true">
        <script>
            $(document).ready(function () {
                $('#user_password').addClass('wrong-password');
            });
        </script>
    </cfif>
</body>
</html>