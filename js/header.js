function headerEvents() {
    console.log('loaded');
    $('#nav_tabs > div').on('click', function (e) {

        if ($(e.target).closest('.dropdown_content').length) {
            return;
        }

        if ($(this).hasClass('tab_clicked')) {
            $(this).removeClass('tab_clicked');
            $(this).children('.dropdown_content').css('display', 'none');

        } else {
            $('#nav_tabs > div').removeClass('tab_clicked');
            $('#nav_tabs > div').children('.dropdown_content').css('display', 'none');
            $(this).addClass('tab_clicked');
            $(this).children('.dropdown_content').css('display', 'flex');
        }
    });

}