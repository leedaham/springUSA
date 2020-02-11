$(function(){
    $('.tab > .now').click(function(e){
        e.preventDefault();
        $('.tab > div').removeClass('on');
        $(this).addClass('on');
        
        if($('.tab > .now').hasClass('on')){
            $('.content > div').removeClass('on');
            $('.event_now').addClass('on');
        }else if($('.tab > .past').hasClass('on')) {
            $('.content > div').removeClass('on');
            $('.event_past').addClass('on');
        }
    });
    $('.tab > .past').click(function(e){
        e.preventDefault();
        $('.tab > div').removeClass('on');
        $(this).addClass('on');
        
        if($('.tab > .now').hasClass('on')){
            $('.content > div').removeClass('on');
            $('.event_now').addClass('on');
        }else if($('.tab > .past').hasClass('on')) {
            $('.content > div').removeClass('on');
            $('.event_past').addClass('on');
        }
    });
    
    if($('input[name=when]').val() == 'now'){
        $('.tab > div').removeClass('on');
        $('.tab > .now').addClass('on');
        $('.content > div').removeClass('on');
        $('.event_now').addClass('on');
        $('input[name=when]').val('');
    }else if($('input[name=when]').val() == 'past'){
        $('.tab > div').removeClass('on');
        $('.tab > .past').addClass('on');
        $('.content > div').removeClass('on');
        $('.event_past').addClass('on');
        $('input[name=when]').val('');
    }
});