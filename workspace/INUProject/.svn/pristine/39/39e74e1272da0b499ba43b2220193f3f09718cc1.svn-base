(function ($) {
    "use strict";

    // Initiate the wowjs
    new WOW().init();


    // Sticky Navbar
    $(window).scroll(function () {
        if ($(this).scrollTop() > 45) {
            $('.nav-bar').addClass('sticky-top bg-white ks-header-extended').removeClass('ks-header bg-transparentt radius');
            $('.ks-blank').css("width", "100px");

        } else {
            $('.nav-bar').removeClass('sticky-top bg-white ks-header-extended').addClass('ks-header bg-transparentt radius');
            $('.ks-blank').css("width", "0px");

        }
    });

    
})(jQuery);

