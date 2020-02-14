$(document).ready(function(){
    var sideBanner = $('#side_banner');
    sideBanner.css({
        position: "absolute",
        top: "610px",
    });
    $(window).scroll(function(){
        if($(this).scrollTop() < 560){
            sideBanner.css({
                position: "absolute",
                top: "610px",
            });
        }
        if($(this).scrollTop() > 560){
            sideBanner.css({
                position: "fixed",
                top: "50px",
            });
        }
    });
});