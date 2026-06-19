const observer = new IntersectionObserver( function (entries) {
    entries.forEach((entry)=>{
        if(entry.isIntersecting){
            $target = $(entry.target);

            if (!$target.hasClass('WC_animate_block')) return;
            
            $target.one('animationend webkitAnimationEnd oAnimationEnd MSAnimationEnd', function () {
                $(this).removeClass((index, className) => {
                  return (className.match(/\bWC_[^\s]*/g) || []).join(' '); // Starts with 'WC_'
                });
            });
            
            $target.addClass('WC_load-in');
            //console.log($(entry.target));
        }
    });
}, {});

$(document).ready(function () {
    $('.WC_fade-in, .WC_slide-left, .WC_slide-right, .WC_slide-down, .WC_slide-up, .WC_blow-up').each(function () {
        if ($(this).hasClass('WC_animate_block')) return;
        $(this).addClass('WC_animate_block');
    });
    const todoElements = document.querySelectorAll(".WC_animate_block");
    todoElements.forEach(el => observer.observe(el));
});