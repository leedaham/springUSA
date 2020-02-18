<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="./_header.jsp"%>
<script src="/knockusa/js/home_bxslider.js"></script>
<script src="/knockusa/js/sidebar.js"></script>
    <!-- 콘텐츠 -->
    <main>
        <div class="adbanner1">
            <ul class="slider">
                <li>
                    <img src="/knockusa/img/home_banner_lv.png" alt="banner_lasvegas">                    
                </li>
                <li>
                    <img src="/knockusa/img/home_banner_la.png" alt="banner_losangeles">                    
                </li>
                <li>
                    <img src="/knockusa/img/home_banner_se.png" alt="banner_seattle">                    
                </li>
            </ul>
        </div>
        <div class="shortcuts">
            <h2><strong>지역별</strong> 여행보기</h2>
            <p>Knock The USA Tour와 함께하는 지역들을 살펴보세요!</p>
            <div>
                <ul>
                    <li><a href="/knockusa/goods/packagesByRegion?goods_region=losangeles"><img src="/knockusa/img/sc_la.png" alt="LA">Los Angeles</a></li>
                    <li><a href="/knockusa/goods/packagesByRegion?goods_region=lasvegas"><img src="/knockusa/img/sc_lv.png" alt="LV">Las Vegas</a></li>
                    <li><a href="/knockusa/goods/packagesByRegion?goods_region=sanfrancisco"><img src="/knockusa/img/sc_sf.png" alt="SF">San Francisco</a></li>
                    <li><a href="/knockusa/goods/packagesByRegion?goods_region=portland"><img src="/knockusa/img/sc_pt.png" alt="PT">PortLand</a></li>
                    <li><a href="/knockusa/goods/packagesByRegion?goods_region=seattle"><img src="/knockusa/img/sc_st.png" alt="ST">Seattle</a></li>
                    <li><a href="/knockusa/goods/packagesByRegion?goods_region=newyork"><img src="/knockusa/img/sc_ny.png" alt="NY">New York</a></li>
                </ul>
            </div>
        </div>
        <div class="bestgoods">
            <h2><strong>인기</strong> 여행</h2>
            <p>가게된다면 절대 잊을 수 없을거에요!</p>
            <div class="list1">
                <ul>
                    <c:forEach var="hotItems" items="${hotItems}">
                    <li>
                        <a href="/knockusa/goods/travelPackage?goods_no=${hotItems.goods_no}">
                            <div class="imgbox">
                                <img src="/knockusa/img/${hotItems.goods_thumbnail}" alt="${hotItems.goods_title}">
                            </div>
                            <div class="txtbox">
                                <span class="area">[${hotItems.goods_side}] ${hotItems.goods_title}</span>
                                <span class="depature1">여행지역:</span>
                                <span class="subtxt1">${hotItems.goods_region}</span>
                                <span class="depature2">여행기간:</span>
                                <span class="subtxt2">${hotItems.goods_night}박 ${hotItems.goods_night+1}일</span>
                                <span class="txtprice">${hotItems.goods_price}원~</span>
                            </div>
                        </a>
                    </li>
                    </c:forEach>
                    
                </ul>
            </div>
        </div>
        <div class="adbanner2">
            <div>
                <ul>
                	<c:forEach var="events" items="${events}">
                    <li><a href="/knockusa/community/eventItem?cate=${events.article_cate}&event_no=${events.article_no}"><img src="/knockusa/img/${events.article_thumbnail}" alt="${events.article_title.substring(23)}"></a></li>
                    </c:forEach>
                </ul>
            </div>
        </div>
        <div class="TVarea">
            <h2><strong>Knock The USA Tour</strong> TV</h2>
            <p>동영상으로 간만 보는 여행! 실제여행은 비교도 안되죠!</p>
            <ul>
                <li class="movie">
                    <iframe width="" height="" src="https://www.youtube.com/embed/tvDH4JM_gME" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                </li>
                <li class="txt">
                    <div>
                        <p>
                            <strong>Knock The USA Tour</strong>는 <br>
                            <span>안전여행</span>을 책임집니다. <br>
                            <br><br>
                            미국, 캐나다를 <span>안전하게 여행</span>하시려면 <br>
                            미국에 본사를 두고 전 미대륙의 모든 테마여행을 <br>
                            합법적으로  라이센스와 보험을 가지고 진행 하는 <br>
                            <strong>Knock The USA Tour</strong>를 선택하십시요! <br>
                            <br><br>
                        </p>
                    </div>
                </li>
            </ul>
        </div>
        <div class="recentlist">
            <div>
                <div class="notice">
                    <h3>공지사항</h3>
                    <span><a href="/knockusa/community?cate=notice">더보기</a></span>
                    <ul>
                   		<c:forEach var="notice" items="${notice}">
	                        <li>${notice.article_title}</li>
                    	</c:forEach>
                    </ul>
                </div>
                <div class="review">
                    <h3>고객리뷰</h3>
                    <span><a href="/knockusa/community?cate=review">더보기</a></span>
                    <ul>
                        <li class="img">
                            <img src="/knockusa/img/${bestReview.article_img}" alt="리뷰 사진">
                        </li>
                        <li class="txt">
                            <span class="title">${bestReview.article_rdate}</span>
                            <span class="content">${bestReview.article_title}</span>
                        </li>
                    </ul>
                </div>
                <div class="customer">
                    <h3>고객센터</h3>
                    <span><a href="/knockusa/customer/faq">더보기</a></span>
                    <ul>
                        <li class="tel">
                            <h2>051.123.1234</h2>
                            <span>운영시간 평일(월~금) 09:30 ~ 16:30</span>
                        </li>
                        <li class="account">
                            <img src="/knockusa/img/bank_img.jpg" alt="하나은행">
                            <span>(주)녹더유에스에이투어</span>
                            <h2>123.123456.12345</h2>
                        </li>
                    </ul>
                </div>
                <div class="sponsor">
                    <h3>제휴업체</h3>
                    <ul>
                        <li>
                            <a href=""><img src="/knockusa/img/banner_sponsor.png" alt="캠핑카USA"></a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </main>
    <!-- 콘텐츠 끝 -->
<%@include file="./_footer.jsp"%>