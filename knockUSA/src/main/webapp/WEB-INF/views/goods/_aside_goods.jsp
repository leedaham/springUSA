<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="/knockusa/css/sidemenu.css">
<link rel="stylesheet" href="/knockusa/css/goods/goods.css">
<link rel="stylesheet" href="/knockusa/css/goods/goodsPackage.css">

<!-- 헤더 끝 -->
    <!-- 콘텐츠 -->
    <main>
        <div class="USA_CAN">
            <!-- 사이드메뉴 -->
            <div class="side_nav">
                <ul>
                    <li class="side_nav_title">
                        <h2>USA & CAN</h2>
                    </li>
                    <c:choose>
	                    <c:when test="${page.goods_country == 'USA'}">
		                    <li class="on">
		                        <a href="/knockusa/goods/travelPackages?where=USA&side=west"><h4>USA</h4></a>
		                    </li>
	                    </c:when>
	                    <c:otherwise>
	                    	<li>
		                        <a href="/knockusa/goods/travelPackages?where=USA&side=west"><h4>USA</h4></a>
		                    </li>
	                    </c:otherwise>
                    </c:choose>
                    <c:choose>
                   		<c:when test="${page.goods_country == 'CAN'}">
		                    <li class="on">
		                        <a href="/knockusa/goods/travelPackages?where=CAN&side=west"><h4>CANADA</h4></a>
		                    </li>
                    	</c:when>
                    	<c:otherwise>
                    		<li>
		                        <a href="/knockusa/goods/travelPackages?where=CAN&side=west"><h4>CANADA</h4></a>
		                    </li>
                    	</c:otherwise>
                    </c:choose>
                </ul>
            </div>
            <!-- 사이드메뉴 끝-->