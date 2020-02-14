<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="/knockusa/css/user/userReserList.css">
<link rel="stylesheet" href="/knockusa/css/sidemenu.css">
    <!-- 콘텐츠 -->
    <main>
        <div class="">
        	<c:if test="${userNonUser == 'user'}">
            <!-- 사이드메뉴 -->
            <div class="side_nav">
                <ul>
                    <li class="side_nav_title">
                        <h2>My Page</h2>
                    </li>
                    <c:choose>
	                    <c:when test="${sort == 'reservation'}">
		                    <li class="on">
		                        <a href="/knockusa/user/ByReservationList"><h4>Reservation List</h4></a>
		                    </li>
	                    </c:when>
	                    <c:otherwise>
	                    	<li>
		                        <a href="/knockusa/user/ByReservationList"><h4>Reservation List</h4></a>
		                    </li>
	                    </c:otherwise>
                    </c:choose>
                    <c:choose>
	                    <c:when test="${sort == 'myPage'}">
		                    <li class="on">
		                        <a href="/knockusa/user/myPage"><h4>Your Information</h4></a>
		                    </li>
	                    </c:when>
	                    <c:otherwise>
	                    	<li>
		                        <a href="/knockusa/user/myPage"><h4>Your Information</h4></a>
		                    </li>
	                    </c:otherwise>
                    </c:choose>
                    <c:choose>
	                    <c:when test="${sort == 'changePw'}">
		                    <li class="on">
		                        <a href="/knockusa/user/myPage/changePw"><h4>Change Your PW</h4></a>
		                    </li>
	                    </c:when>
	                    <c:otherwise>
	                    	<li>
		                        <a href="/knockusa/user/myPage/changePw"><h4>Change Your PW</h4></a>
		                    </li>
	                    </c:otherwise>
                    </c:choose>
                    <c:choose>
	                    <c:when test="${sort == 'wishList'}">
		                    <li class="on">
		                        <a href="/knockusa/user/myPage/wishList"><h4>Wish List</h4></a>
		                    </li>
	                    </c:when>
	                    <c:otherwise>
	                    	<li>
		                        <a href="/knockusa/user/myPage/wishList"><h4>Wish List</h4></a>
		                    </li>
	                    </c:otherwise>
                    </c:choose>
                </ul>
            </div>
            <!-- 사이드메뉴 끝-->
            </c:if>
            