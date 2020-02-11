<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../_header.jsp"%>
<link rel="stylesheet" href="/knockusa/css/introduce/introduce.css">
<link rel="stylesheet" href="/knockusa/css/sidemenu.css">
<script src="/knockusa/js/introduce/why.js"></script>
    <!-- 콘텐츠 -->
    <main>
        <div class="introduce introduce2">
            <!-- 사이드메뉴 -->
            <div class="side_nav">
                <ul>
                    <li class="side_nav_title">
                        <h2>Introduce</h2>
                    </li>
                    <li>
                        <a href="./introduce.html"><h4>About Us</h4></a>
                    </li>
                    <li class="on">
                        <a href="./why.html"><h4>Why u will be with us</h4></a>
                    </li>
                    <li>
                        <a href="./direction.html"><h4>Direction</h4></a>
                    </li>
                </ul>
            </div>
            <!-- 사이드메뉴 끝-->
            <h1>우리와 함께해야 하는 이유</h1>
            <div class="content">
                <div class="tab">
                    <div class="why1 on">
                        <a href="#"><h3>우리와 함께해야 하는 이유</h3></a>
                    </div>
                    <div class="why2">
                        <a href="#"><h3>우리와 함께 여행하는 사람들</h3></a>
                    </div>
                </div>
                <div id="why1" class="why on">
                    <img src="../img/together_1.jpg" alt="우리와 함께해야 하는 이유">
                </div>
                <div id="why2" class="why">
                    <img src="../img/together_2.jpg" alt="우리와 함께 여행하는 사람들">
                </div>
            </div>
        </div>
    </main>
    <!-- 콘텐츠 끝 -->
<%@include file="../_footer.jsp"%>  