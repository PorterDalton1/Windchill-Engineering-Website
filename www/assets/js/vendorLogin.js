$(document).ready(function () {

    const emailRegex = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
    
    $('.nf.nf-cod-eye').on('click', function () {
        $(this).addClass('hide-me');
        $('.nf.nf-cod-eye_closed').removeClass('hide-me');

        $('input[name="password"]').attr('type', 'text');
    });

    $('.nf.nf-cod-eye_closed').on('click', function () {
        $(this).addClass('hide-me');
        $('.nf.nf-cod-eye').removeClass('hide-me');

        $('input[name="password"]').attr('type', 'password');
    });

    /*
    $('input[name="username"]').on('click', function () {
        $('.nf.nf-cod-eye_closed').trigger('click');
    });
    */

    $('#login').on('click', function () {

        // const userEmail = $('input[name="username"]').val();
        const userPassword = $('#user_password').val();
        let invalid = false;

        /*
        if (userEmail === undefined || !userEmail.match(emailRegex)) {
            $('input[name="username"]').addClass('wrong-email');
            invalid = true;
        }
        */
       
        if (userPassword === undefined || userPassword.length < 8) {
            $('.user_input.password > span:last-child').addClass('wrong-password');
            invalid = true;
        }

        if (invalid) return;

        $('#main_form').submit();

    });

    $('input').on('click', function () {
        $('.wrong-email').removeClass('wrong-email');
        $('.wrong-password').removeClass('wrong-password');
    });

    $('#no_account').on('click', function () {
        $('#no_account_pop_up').addClass('show');
    });

    $('#no_account_pop_up').on('click', '.cancel_button', function () {
        $('#no_account_pop_up').removeClass('show');
    });
});