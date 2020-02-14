<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Knock The USA Tour</title>
    <link rel="stylesheet" href="/knockusa/css/style.css">
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
    <script src="/knockusa/js/favorite.js"></script>
</head>
<body>
    <!-- 사이드배너 -->
    <div id="side_banner">
        <div class="monthlylist">
            <a href="/knockusa/goods/monthlyStart">
                <span>Knock The USA Tour</span>
                <h3>월별 출발 상품</h3>
            </a>
        </div>
        <div class="todayview">
            <div class="todaytitle">
                <span>TODAY VIEW</span>
            </div>
            <div>
                <p>오늘 본 상품이 없습니다.</p>
            </div>
            <div></div>
        </div>
        <div class="topmove">
            <a href="#top_header">TOP</a>
        </div>
    </div>
    <!-- 사이드배너 끝 -->
    <!-- 헤더 -->
    <header>
        <div id="top_header">
            <div>
                <ul>
                    <li><a href="/knockusa/index">first page</a></li>
                    <c:choose>
                    	<c:when test="${user eq null}">
                    <li class="logInOut"><a href="/knockusa/user/login">로그인</a></li>
                    <li><a href="/knockusa/user/register">회원가입</a></li>
                    <li><a href="/knockusa/user/myPage/reserList_needLogin">예약확인</a></li>
                    <li><a href="/knockusa/community/eventNow">이벤트</a></li>
                    <li><a href="" id="favorite">즐겨찾기 +</a></li>
                    	</c:when>
                    	<c:otherwise>
                   	<li><a href="/knockusa/user/myPage/">${user.user_name}님 반갑습니다!</a></li>
                   	<li><a href="/knockusa/user/ByReservationList">예약확인</a></li>
                    <li><a href="/knockusa/community/eventNow">이벤트</a></li>
                    <li><a href="" id="favorite">즐겨찾기 +</a></li>
                    <li class="logInOut"><a href="/knockusa/user/logout">로그아웃</a></li>
                    	</c:otherwise>
                    </c:choose>
                </ul>
            </div>
        </div>
        <div id="nav_header">
            <div class="gnb">
                <div class="logo">
                    <a href="/knockusa/home"></a>
                </div>
                <div><a href="/knockusa/introduce/introduce"><h3>회사소개</h3></a></div>
                <div><a href="/knockusa/goods/travelPackages?where=USA&side=west"><h3>미국&캐나다</h3></a></div>
                <div><a href="/knockusa/community?cate=notice"><h3>커뮤니티</h3></a></div>
                <div><a href="/knockusa/customer/faq"><h3>고객센터</h3></a></div>
            </div>

        </div>
    </header>
    <!-- 헤더 끝 -->
    