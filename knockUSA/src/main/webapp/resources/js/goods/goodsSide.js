$(function(){
    if($('input[name=side]').val() == 'west'){
        $('.travel_tit > .tab > div').removeClass('on');
        $('.travel_tit > .tab > .west').addClass('on');
    }else if($('input[name=side]').val() == 'east'){
        $('.travel_tit > .tab > div').removeClass('on');
        $('.travel_tit > .tab > .east').addClass('on');
    }else if($('input[name=side]').val() == 'other'){
        $('.travel_tit > .tab > div').removeClass('on');
        $('.travel_tit > .tab > .other').addClass('on');
    }
});