<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../_header.jsp"%>
<link rel="stylesheet" href="/knockusa/css/goods/goods.css">
<link rel="stylesheet" href="/knockusa/css/goods/goodsPackage.css">
<script src="/knockusa/js/goods/goodsCalendar.js"></script>
<script src="/knockusa/js/goods/goodsDetailTab.js"></script>
<script>
$(function(){
    var reservation = $('.btn_wrap .reservation');
    if((${goods.goods_max_personnel - goods.goods_current_personnel}) == 0){
        alert('죄송합니다. 예약인원이 찼습니다. 다른 상품을 이용해주세요 !');
    }
    reservation.click(function(e){
        if((${goods.goods_max_personnel - goods.goods_current_personnel}) == 0){
        e.preventDefault();
        alert('죄송합니다. 예약인원이 찼습니다. 다른 상품을 이용해주세요 !');
        }   
    });
    // url 파라미터 가져오는 소스
    $.urlParam = function(name){
        var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(window.location.href);
        if (results==null){
        return null;
        }
        else{
        return results[1] || 0;
        }
    }
    var already = $.urlParam('already');
    if(already != null){
        alert('\n                              이미 예약하신 상품입니다. \n      여행인원 변경을 원하시면 예약확인 페이지에서 부탁드립니다.');
    }
});
</script>
<script>
$(function(){
    var Detach;
    var DetachSmall;
    var DetachBig;
    var smallImg = $('.info_pic_list > li');

    Detach = $('.info_pic_list > li:nth-child(1)').detach();
    $('.info_pic_big > ul').append(Detach);
    
    smallImg.on("click", function(e){
        e.preventDefault();
        DetachSmall = $(this).detach();
        $('.info_pic_big > ul').append(DetachSmall);
        DetachBig = $('.info_pic_big > ul > li:nth-child(1)').detach();
        $('.info_pic_list').append(DetachBig);
    });

});

</script>

<!-- 콘텐츠 -->
<main>
    <div class="USA_CAN">
        <h1>${goods.goods_title}</h1>
        <a href="/knockusa/goods/travelPackages?where=${goods.goods_country}&side=${goods.goods_side}">BACK→</a>
        <div class="package_tit_img">
            <img src="/knockusa/img/goods_${goods.goods_region}.png" alt="${goods.goods_region}">
        </div>
        <div class="travel">
            <div class="travel_info">
                <div class="info_pic">
                    <div class="info_pic_big">
                        <ul>
                            
                        </ul>
                    </div>
                    <ul class="info_pic_list">
                        <li><a href="#"><img src="/knockusa/img/info_1.jpg" alt="info_1"></a></li>
                        <li><a href="#"><img src="/knockusa/img/info_2.jpg" alt="info_2"></a></li>
                        <li><a href="#"><img src="/knockusa/img/info_3.jpg" alt="info_3"></a></li>
                        <li><a href="#"><img src="/knockusa/img/info_4.jpg" alt="info_4"></a></li>
                        <li><a href="#"><img src="/knockusa/img/info_5.jpg" alt="info_5"></a></li>
                    </ul>
                </div>
                <div class="info_txt">
                    <h3>여행정보</h3>
                    <table>
                        <tbody>
                            <tr>
                                <th>상품코드</th>
                                <td>${goods.goods_no}</td>
                            </tr>
                            <tr class="region">
                                <th>여행지역</th>
                                <td>${goods.goods_region}</td>
                            </tr>
                            <tr>
                                <th>여행기간</th>
                                <td>${goods.goods_night}박 ${goods.goods_night+1}일</td>
                            </tr>
                            <tr>
                                <th>출발날짜</th>
                                <td>${goods.goods_start}</td>
                            </tr>
                            <tr>
                                <th>도착날짜</th>
                                <td>${goods.goods_end}</td>
                            </tr>
                            <tr>
                                <th>여행가능인원</th>
                                <td>${goods.goods_max_personnel - goods.goods_current_personnel}</td>
                            </tr>
                            <tr class="price">
                                <th>상품가격</th>
                                <td>${goods.goods_price} 원</td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="btn_wrap">
                    	<c:choose>
                    		<c:when test="${user eq null}">
		                        <a href="/knockusa/user/loginFromReservation?goods_no=${goods.goods_no}">찜하기</a>
		                        <a href="/knockusa/user/loginFromReservation?goods_no=${goods.goods_no}">문의하기</a>
		                        <a href="/knockusa/user/loginFromReservation?goods_no=${goods.goods_no}" class="reservation">예약하기</a>
	                        </c:when>
	                        <c:otherwise>
                        	    <a href="/knockusa/user/myPage/wishList/addWish?goods_no=${goods.goods_no}">찜하기</a>
		                        <a href="/knockusa/customer/qna?goods_no=${goods.goods_no}">문의하기</a>
		                        <a href="/knockusa/goods/reservation?goods_no=${goods.goods_no}" class="reservation">예약하기</a>
	                        </c:otherwise>
                       	</c:choose>
                    </div>
                </div>
            </div>
            <h2 class="monthly_start">월별 출발일 보기</h2>
            <div class="travel_detail">
                <div class="product_schedule">
                    <div class="calendar">
                        <input type="month" name="travelMonth" class="travelMonth"/>
                        <input type="text" name="travelMonthBig" class="travelMonthBig" readonly onfocus='this.blur();'/>
                    </div>
                    <div class="departure">
                        <table>
                            <tr>
                                <th>출발날짜</th>
                                <th>도착날짜</th>
                                <th>상품명</th>
                                <th>여행지</th>
                                <th>요금</th>
                                <th>잔여석</th>
                                <th></th>
                            </tr>
                            
                        </table>
                        
                    </div>
                </div>
                <div class="detail_info">
                    <div class="detail_tab">
                        <div class="product_description on"><a href="#"><h3>상품설명</h3></a></div>
                        <div class="detail_schedule"><a href="#"><h3>상세일정</h3></a></div>
                        <div class="include_or_not"><a href="#"><h3>포함/불포함</h3></a></div>
                        <div class="before_departure"><a href="#"><h3>출발전 정보</h3></a></div>
                    </div>
                    <div class="detail_content on" id="product_description">
                    	<p>${goods.goods_detail}</p>
                    	<img src="/knockusa/img/${goods.goods_detail_img}" alt="${goods.goods_detail_img_alt}">
                    </div>
                    <div class="detail_content" id="detail_schedule">
                        <table>
                        
                        	<c:forEach var="detail" items="${detail}">
                            <tr class="schedule_tit">
                                <th>${detail.detail_day}일차</th>
                                <td>
                                    <p>${detail.detail_date}</p>
                                    <p>${detail.detail_main_area}</p>
                                </td>
                            </tr>
                            <tr class="schedule_content">
                                <th></th>
                                <td>
                                    <p>${detail.detail_require_text}</p>
                                    <p>${detail.detail_goods_text}</p>
                                    <p>
                                        <img src="/knockusa/img/${detail.detail_goods_img1}" alt="${detail.detail_goods_img1_alt}">
                                    </p>
                                    <p>
                                        <img src="/knockusa/img/${detail.detail_goods_img2}" alt="${detail.detail_goods_img2_alt}">
                                    </p>
                                    <p>
                                        <img src="/knockusa/img/${detail.detail_goods_img3}" alt="${detail.detail_goods_img3_alt}">
                                    </p>
                                </td>
                            </tr>
                            <tr class="additional_info" id="accomodation">
                                <th>숙박</th>
                                <td>${detail.detail_stay}</td>
                            </tr>
                            <tr class="additional_info" id="meal">
                                <th>식사</th>
                                <td>조식 : ${detail.detail_meal1} / 중식 : ${detail.detail_meal2} / 석식 : ${detail.detail_meal3}</td>
                            </tr>
                            </c:forEach>
                           
                        </table>
                    </div>
                    <div class="detail_content" id="include_or_not">
						<p>${goods.goods_include}</p>
						<p>${goods.goods_not_include}</p>
                    </div>
                    <div class="detail_content" id="before_departure">

                    </div>
                </div>
            </div>
        </div>
    </div>
</main>
<!-- 콘텐츠 끝 -->
<!-- 푸터 -->
<%@include file="../_footer.jsp"%>  