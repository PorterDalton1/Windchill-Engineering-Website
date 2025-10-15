$(document).ready(function () {
    $('.faq_card').on('click', function () {

        if ($(this).children('.answer').hasClass('show_answer')) {
            $('.answer').removeClass('show_answer');
            return;
        }

        $('.answer').removeClass('show_answer');
        $(this).children('.answer').addClass('show_answer');
        $(this).children('.answer').addClass('show');
    });
});