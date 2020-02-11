$(document).ready(function(){
    var tab1 = $('.content > .tab > .why1 > a');
    var tab2 = $('.content > .tab > .why2 > a');

    tab1.click(function(e){
        e.preventDefault();
        $('.content > .tab > .why1').addClass('on');
        $('.content > .tab > .why2').removeClass('on');
        $('.content > #why1').addClass('on');
        $('.content > #why2').removeClass('on');
    });
    tab2.click(function(e){
        e.preventDefault();
        $('.content > .tab > .why2').addClass('on');
        $('.content > .tab > .why1').removeClass('on');
        $('.content > #why2').addClass('on');
        $('.content > #why1').removeClass('on');
    });
});