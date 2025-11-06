<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vendor Login</title>
    <link rel="icon" href="/assets/img/user-tie_icon.png">
    <link rel="stylesheet" type="text/css" href="../assets/css/min/createUser-min.css">
    <script src="/assets/js/lib/jquery-3.7.1.min.js"></script>
    <script src="/assets/js/createUser.js"></script>
</head>
<body>
    <!---
        <cfoutput>
            #generateSecretKey("AES", 256)#
        </cfoutput>
    --->
    <div id="login_flex">
        <a id="go_back" href="/index.cfm">
            <i class="nf nf-fa-arrow_left"></i>
            Go Back
        </a>
        <div id="login_card">
            <div id="login_form">
                <img src="/assets/img/logo.png">
                <h2>Create User</h2>
                <p>Please enter the information below to create your profile</p>
                <form id="create_user" action="/secure/createUser_submit.cfm" method="post">
                    <div class="user_input">
                        <span>Email</span>
                        <input 
                            name="username"
                            type="text"
                            autocomplete="email"    
                        >
                    </div>

                    <div class="user_input password">
                        <span>password</span>
                        <span>
                            <input 
                                name="password" 
                                type="password"
                                autocomplete="new-password"
                                id="new_user_password"
                            >
                            <i class="nf nf-cod-eye"></i>
                            <i class="nf nf-cod-eye_closed hide-me"></i>
                        </span>
                    </div>

                    <div class="user_input password">
                        <span>Re-Enter Password</span>
                        <span>
                            <input 
                                name="password" 
                                type="password"
                                autocomplete="new-password"
                                id="new_user_password_re-enter"
                            >
                            <i class="nf nf-cod-eye"></i>
                            <i class="nf nf-cod-eye_closed hide-me"></i>
                        </span>
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
</body>
</html>