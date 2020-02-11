$(function(){
    var travelMonth = $('input[name=travelMonth]');

    // 날짜선택
    travelMonth.change(function(){
        $('input[name=travelMonthBig]').val(travelMonth.val().substring(0,4)+'년 '+travelMonth.val().substring(5,9)+'월 ');
            
        // 상품페이지 JSON
        var startMonth = travelMonth.val();
        var goods_region = $('.info_txt .region > td').text();

        var url = "/knockusa/goods/api/month?startMonth="+startMonth+"&goods_region="+goods_region;
        var goodsList = $('.product_schedule > .departure > table');
        var findList = $('.product_schedule > .departure  .find');
        
        findList.remove();

        $.get(url, function(data){
            var data = JSON.parse(data);
            
            $.each(data, function(i, value){
                var possible_person = eval(value.goods_max_personnel - value.goods_current_personnel);
                goodsList.append(
                    "<tr class='find'>"+
                        "<td>"+value.goods_start+"</td>"+
                        "<td>"+value.goods_end+"</td>"+
                        "<td>"+value.goods_title+"</td>"+
                        "<td>"+value.goods_region+"</td>"+
                        "<td>"+value.goods_price+"</td>"+
                        "<td>"+possible_person+"</td>"+
                        "<th><a href='/knockusa/goods/travelPackage?goods_no="+value.goods_no+"'>예약하기</a></th>"+
                    "</tr>"
                );
            });
        });
        
        // 월별 상품페이지 JSON
        var monthUrl = "/knockusa/goods/api/monthly?startMonth="+startMonth;
        var monthlyGoodsList = $('.monthlyStarting > table');
        var monthlyFindList = $('.monthlyStarting .find');

        monthlyFindList.remove();
        $.get(monthUrl, function(data){
            var data = JSON.parse(data);
            
            $.each(data, function(i, value){
                var possible_person = eval(value.goods_max_personnel - value.goods_current_personnel);
                monthlyGoodsList.append(
                    "<tr class='find'>"+
                        "<td>"+value.goods_start+"</td>"+
                        "<td>"+value.goods_end+"</td>"+
                        "<td>"+value.goods_title+"</td>"+
                        "<td>"+value.goods_region+"</td>"+
                        "<td>"+value.goods_price+"</td>"+
                        "<td>"+possible_person+"</td>"+
                        "<th><a href='/knockusa/goods/travelPackage?goods_no="+value.goods_no+"'>예약하기</a></th>"+
                    "</tr>"
                );
            });
        });

    });
});
