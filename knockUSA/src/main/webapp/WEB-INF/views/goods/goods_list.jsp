<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../_header.jsp"%>
<script src="/knockusa/js/goods/goodsSide.js"></script>
<jsp:include page="./_aside_goods.jsp" />
<input type="hidden" name="where" value="${page.goods_country}">
<input type="hidden" name="side" value="${page.goods_side}">
            <div class="travel">
                <div class="travel_tit">
                    <div class="tab_tit_img">
                        <img src="/knockusa/img/${page.goods_country}${page.goods_side}.png" alt="${page.goods_country}${page.goods_side} banner">
                    </div>
                    <c:choose>
                    	<c:when test="${page.goods_country == null}">
                    	</c:when>
						<c:otherwise>                    
	                    <div class="tab">
	                    	<c:choose>
	                    		<c:when test="${page.goods_country == 'USA'}">
		                        	<div class="west on">
			                            <a href="/knockusa/goods/travelPackages?where=USA&side=west"><h3>미국 서부</h3></a>
			                        </div>
			                        <div class="east">
			                            <a href="/knockusa/goods/travelPackages?where=USA&side=east"><h3>미국 동부</h3></a>
			                        </div>
			                        <div class="other">
			                            <a href="/knockusa/goods/travelPackages?where=USA&side=other"><h3>또 다른 미국</h3></a>
			                        </div>
		                        </c:when>
		                        <c:otherwise>
			                        <div class="west on">
			                            <a href="/knockusa/goods/travelPackages?where=CAN&side=west"><h3>캐나다 서부</h3></a>
			                        </div>
			                        <div class="east">
			                            <a href="/knockusa/goods/travelPackages?where=CAN&side=east"><h3>캐나다 동부</h3></a>
			                        </div>
			                        <div class="other">
			                            <a href="/knockusa/goods/travelPackages?where=CAN&side=other"><h3>또 다른 캐나다</h3></a>
			                        </div>
		                        </c:otherwise>
	                        </c:choose>
	                    </div>
	                    </c:otherwise>
                    </c:choose>
                </div>
                <div class="travel_content">
                    <div class="travels" id="west">
                        <div class="goods_list">
                            <div class="list_tit_img"></div>
                            <ul>
                            	<c:forEach var="goods" items="${packages}">
                                <li>
                                    <a href="/knockusa/goods/travelPackage?goods_no=${goods.goods_no}">
                                        <div class="imgbox">
                                            <img src="/knockusa/img/${goods.goods_thumbnail}" alt="${goods.goods_title}">
                                        </div>
                                        <div class="txtbox">
                                            <span class="area">[${goods.goods_side}] ${goods.goods_title}</span>
                                            <span class="depature1">여행지역:</span>
                                            <span class="subtxt1">${goods.goods_region}</span>
                                            <span class="depature2">여행기간:</span>
                                            <span class="subtxt2">${goods.goods_night}박 ${goods.goods_night+1}일</span>
                                            <span class="txtprice">${goods.goods_price}원~</span>
                                            <a href="" class="depbtn">출발일보기</a>
                                        </div>
                                    </a>
                                </li>
                                </c:forEach>
                                
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <!-- 콘텐츠 끝 -->
<%@include file="../_footer.jsp"%>  