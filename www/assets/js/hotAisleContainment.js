$(document).ready(function () {
    $('#find_out').on('click', function () {
        $('html,body').animate({
            scrollTop: $("#second_hot").offset().top
        }, 'slow');
    });
});