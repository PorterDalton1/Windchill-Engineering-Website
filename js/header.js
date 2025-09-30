function removeMobileNav() {
    $('body').removeClass('no_overflow');
    $('.mobile_nav').one('transitionend webkitTransitionEnd oTransitionEnd MSTransitionEnd', function () {
        $('.mobile_nav').remove();
    });
    $('.mobile_nav').removeClass('is_visible');
}

function headerEvents() {

    $('#nav_icon').on('click', function () {

        if ($('.mobile_nav').length) {
            removeMobileNav();
            return;
        }

        $mobileNav = $('#nav_tabs').clone();
        $mobileButtons = $('#nav_icons').clone();

        $mobileButtons.removeAttr('id');
        $mobileButtons.addClass('mobile_buttons');

        $mobileNav.removeAttr('id');
        $mobileNav.addClass('mobile_nav');

        $mobileNav.prepend($mobileButtons);
        

        /*
        $('.mobile_nav > div').on('click', function (e) {
            if ($(e.target).closest('.dropdown_content').length) {
                return;
            }

            if ($(this).hasClass('tab_clicked')) {
                $(this).removeClass('tab_clicked');
                $(this).children('.dropdown_content').removeClass('show_dropdown');
                e.stopPropagation();
            } else {
                $('#nav_tabs > div').removeClass('tab_clicked');
                $('#nav_tabs > div').children('.dropdown_content').removeClass('show_dropdown');
                $(this).addClass('tab_clicked');
                $(this).children('.dropdown_content').addClass('show_dropdown');
                e.stopPropagation();
            }

            $(document).on('click', function () {
                $('#nav_tabs > div').removeClass('tab_clicked');
                $('#nav_tabs > div').children('.dropdown_content').removeClass('show_dropdown');
            });
        });
        */

        $('body').addClass('no_overflow');

        $mobileNav.addClass('slide_in');
        $('nav').after($mobileNav);
        $mobileNav[0].offsetWidth;
        $mobileNav.addClass('is_visible');

        const fromTop = $mobileNav[0].getBoundingClientRect().top; 

        const screenHeight = document.documentElement.clientHeight;

        //const vhToPxMargin= (4 * screenHeight) / 100 / 2;
        const elemHeight = screenHeight - fromTop -1;

        console.log(fromTop);
        console.log(screenHeight);

        $mobileNav.css('height', elemHeight);

        $('#x_button_mobile').on('click', function () {
            removeMobileNav();
        });
    }); 

    $('#nav_tabs > div').on('click', function (e) {
        if ($(e.target).closest('.dropdown_content').length) {
            return;
        }

        if ($(this).hasClass('tab_clicked')) {
            $(this).removeClass('tab_clicked');
            $(this).children('.dropdown_content').removeClass('show_dropdown');
            e.stopPropagation();
        } else {
            $('#nav_tabs > div').removeClass('tab_clicked');
            $('#nav_tabs > div').children('.dropdown_content').removeClass('show_dropdown');
            $(this).addClass('tab_clicked');
            $(this).children('.dropdown_content').addClass('show_dropdown');
            e.stopPropagation();
        }

        $(document).on('click', function () {
            $('#nav_tabs > div').removeClass('tab_clicked');
            $('#nav_tabs > div').children('.dropdown_content').removeClass('show_dropdown');
        });

    });
    setWebPageName();
}