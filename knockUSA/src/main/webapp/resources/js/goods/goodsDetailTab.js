$(document).ready(function(){
    var detail_tab = $('.travel .detail_tab > div');
    var detail_tab1 = $('.travel .detail_tab > .product_description');
    var detail_tab2 = $('.travel .detail_tab > .detail_schedule');
    var detail_tab3 = $('.travel .detail_tab > .include_or_not');
    var detail_tab4 = $('.travel .detail_tab > .before_departure');
    var detail_content = $('.travel .detail_info > .detail_content');
    var detail_content1 = $('.travel .detail_info > #product_description');
    var detail_content2 = $('.travel .detail_info > #detail_schedule');
    var detail_content3 = $('.travel .detail_info > #include_or_not');
    var detail_content4 = $('.travel .detail_info > #before_departure');

    detail_tab1.click(function(e){
        e.preventDefault();
        detail_tab.removeClass('on');
        detail_tab1.addClass('on');
        detail_content.removeClass('on');
        detail_content1.addClass('on');
    });
    detail_tab2.click(function(e){
        e.preventDefault();
        detail_tab.removeClass('on');
        detail_tab2.addClass('on');
        detail_content.removeClass('on');
        detail_content2.addClass('on');
    });
    detail_tab3.click(function(e){
        e.preventDefault();
        detail_tab.removeClass('on');
        detail_tab3.addClass('on');
        detail_content.removeClass('on');
        detail_content3.addClass('on');
    });
    detail_tab4.click(function(e){
        e.preventDefault();
        detail_tab.removeClass('on');
        detail_tab4.addClass('on');
        detail_content.removeClass('on');
        detail_content4.addClass('on');
    });
});