$(document).ready(function () {
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

    $('input[name="username"]').on('click', function () {
        $('.nf.nf-cod-eye_closed').trigger('click');
    });
});