/*
function setFalseBorder(borderWidth) {
    let $falseBorder = $('#false_border');
    let $falseFill = $('#false_border div');
    let $contactImg = $('.image_crop_background img');

    // False Border:   polygon(0 0, 100% 0, 65% 100%, 0% 100%);
    // img: clip-path: polygon(35% 0, 100% 0, 100% 100%, 0% 100%);

    // Get the percentage of clip path of image and turn it to decimal. 35% -> .35
    let clipPathDecimal = $contactImg.css('clip-path').match(/(\d+)%/)[1] / 100;
    let falseFill_margin = $falseFill.css('margin-left').replace('px', '');

    // Get needed widths of objects
    const screenWidth = document.documentElement.clientWidth;
    const imageCropWidth = $('.image_crop_background').width();
    const imageWidth = $contactImg.width();

    // Get width of top part of polygon
    const imageSlant = imageWidth * clipPathDecimal;

    const falseBorder_width = screenWidth - imageCropWidth + imageSlant;
    const falseBorder_height = $falseBorder.height();

    const falseBorder_clipPath = 100 - ((imageSlant / falseBorder_width) * 100);

    console.log(falseFill_margin);

    $falseBorder.css('width', `${falseBorder_width}px`);
    $falseBorder.css('clip-path', `polygon(0 0, 100% 0, ${falseBorder_clipPath}% 100%, 0% 100%)`);

    //$falseFill.css('margin-left', '0px');
    $falseFill.css('height', `${falseBorder_height - (borderWidth*2)}px`);
    $falseFill.css('width', `${falseBorder_width - (borderWidth*2)}px`);
    //$falseFill.css('margin-top', `${falseFill_margin}px`);
    $falseFill.css('clip-path', `polygon(0 0, 100% 0, ${falseBorder_clipPath}% 100%, 0% 100%)`);
}


$(document).ready(function () {
    $(window).resize(function () {
        setFalseBorder(4);
    });
    //setFalseBorder(2);
});
*/