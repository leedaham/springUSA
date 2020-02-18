$(function(){
    var box = $('.faq_box');
    var tit = $('.faq_box > .faq_tit');
    var answer = $('.faq_box > .faq_answer');
    tit.click(function(e){
        e.preventDefault();
        if($(this).parent().children('.faq_answer').css('display') == 'none'){
            $(this).parent().children('.faq_answer').css('display', 'block');    
        }else {
           $(this).parent().children('.faq_answer').css('display', 'none');
        }
    });
});