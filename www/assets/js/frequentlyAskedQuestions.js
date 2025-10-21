$(document).ready(function () {
    $('.question').on('click', function () {


        $faqCard = $(this).closest('.faq_card');

        $('.rotate').removeClass('rotate');

        if ($faqCard.children('.answer').hasClass('show')) {
            $('.show').removeClass('show');
            return;
        }

        $('.show').removeClass('show');

        $('.answer').one('transitionend webkitTransitionEnd oTransitionEnd MSTransitionEnd', function () {



            $('html, body').animate({
                scrollTop: $faqCard.offset().top - 100
            }, 10);
        });

        $faqCard.find('.nf-md-plus').addClass('rotate');
        $faqCard.children('.answer').addClass('show');
    });
});