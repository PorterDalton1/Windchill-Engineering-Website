function removeMobileNav() {
    $('body, html').removeClass('no_overflow');
    $('.mobile_nav').one('transitionend webkitTransitionEnd oTransitionEnd MSTransitionEnd', function () {
        $('.mobile_nav').remove();
    });
    
    $('.mobile_nav').removeClass('is_visible');
}

$('document').ready(function () {
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

        $('body, html').addClass('no_overflow');

        $mobileNav.addClass('slide_in');
        $('nav').after($mobileNav);
        $mobileNav[0].offsetWidth;
        $mobileNav.addClass('is_visible');

        //const fromTop = $mobileNav[0].getBoundingClientRect().top; 
        const fromTop = $('#main_header').height(); 

        const screenHeight = document.documentElement.clientHeight;

        const elemHeight = screenHeight - fromTop;

        // $mobileNav.css('margin-top', fromTop);
        $mobileNav.css('height', elemHeight);

        $('.mobile_nav > div:not(.mobile_buttons)').on('click', function () {
            $content = $(this).find('.dropdown_content');
            
            if ($(this).hasClass('open_mobile_nav')) {
                $('.open_mobile_nav').removeClass('open_mobile_nav');
                return;
            }

            $('.open_mobile_nav').removeClass('open_mobile_nav');

            $(this).addClass('open_mobile_nav');
        });

        $('.mobile_nav i.nf, .mobile_nav span').on('mouseenter', function () {
            $(this).parent().addClass('hover_mobile_category');
        })
        .on('mouseleave', function () {
            $(this).parent().removeClass('hover_mobile_category')
        });
        


        const mediaQuery = window.matchMedia("(min-width: 750px)");
        function handleScreenChange(e) {
            if (e.matches) {
                removeMobileNav();
                $('.tab_clicked').removeClass('tab_clicked');
            }
        }
        handleScreenChange(mediaQuery);
        mediaQuery.addEventListener("change", handleScreenChange);

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




    // --- Steps for header hide/show; --- //

    //distance from top of page
    let lastScrollTop = $(window).scrollTop();
    let headerStyle = 0;

    $(window).on('scroll', function () {
        $siteHeader = $('#main_header');
        
        if ($(window).scrollTop() <= 0) {
            $siteHeader.css('transform', 'translateY(0)');
            return;
        }
        
        const tabsHeight = $('#nav_tabs').height();
        const headerHeight = $siteHeader.height();
        const currentScrollTop = $(window).scrollTop();
        const delta = currentScrollTop - lastScrollTop; //amount changed by
        
        headerStyle = headerStyle + delta;

        if (headerStyle >= (headerHeight - tabsHeight)) {
            headerStyle = headerHeight - tabsHeight;
        }
        if (headerStyle <= 0) {
            headerStyle = 0;
        }

        $siteHeader.css('transform', 'translateY(-' + (headerStyle) + 'px)');

        lastScrollTop = currentScrollTop;
    });
});