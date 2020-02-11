<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="/knockusa/css/community/community.css">

<!-- 콘텐츠 -->
<main>
    <div class="community">
        <!-- 사이드메뉴 -->
        <div class="side_nav">
            <ul>
                <li class="side_nav_title">
                    <h2>Community</h2>
                </li>
                <c:choose>
	                <c:when test="${board.board_cate=='notice'}">
		                <li class="on">
		                    <a href="/knockusa/community?cate=notice"><h4>Notice</h4></a>
		                </li>
	                </c:when>
	                <c:otherwise>
	                	<li>
		                    <a href="/knockusa/community?cate=notice"><h4>Notice</h4></a>
		                </li>
	                </c:otherwise>
                </c:choose>
                <c:choose>
                	<c:when test="${board.board_cate=='review'}">
		                <li class="on">
		                    <a href="/knockusa/community?cate=review"><h4>Review</h4></a>
		                </li>
                	</c:when>
                	<c:otherwise> 
                		<li>
		                    <a href="/knockusa/community?cate=review"><h4>Review</h4></a>
		                </li>
	                </c:otherwise>
                </c:choose>
                <c:choose>
	                <c:when test="${board.board_cate=='newsUSA'}">
		                <li class="on">
		                    <a href="/knockusa/community?cate=newsUSA"><h4>News USA</h4></a>
		                </li>
                	</c:when>
                	<c:otherwise> 
	               		<li>
	                    	<a href="/knockusa/community?cate=newsUSA"><h4>News USA</h4></a>
	                	</li>
                	</c:otherwise>
               	</c:choose>
               	<c:choose>
	                <c:when test="${board.board_cate=='newsCAN'}">
		                <li class="on">
		                    <a href="/knockusa/community?cate=newsCAN"><h4>News CANADA</h4></a>
		                </li>
	                </c:when>
	               	<c:otherwise>
		               	<li>
	                    	<a href="/knockusa/community?cate=newsCAN"><h4>News CANADA</h4></a>
	                	</li>
                	</c:otherwise>
               	</c:choose>
               	<c:choose>
	                <c:when test="${board.board_cate == null || board.board_cate == 'eventWin'}">
		                <li class="on">
		                    <a href="/knockusa/community/event"><h4>Event</h4></a>
		                </li>
	                </c:when>
	                <c:otherwise>
	                    <li>
		                    <a href="/knockusa/community/event"><h4>Event</h4></a>
		                </li>
	                </c:otherwise>
                </c:choose>
            </ul>
        </div>
        <!-- 사이드메뉴 끝-->