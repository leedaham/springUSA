<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="/knockusa/css/introduce/introduce.css">
<link rel="stylesheet" href="/knockusa/css/sidemenu.css">
    <!-- 콘텐츠 -->
    <main>
        <div class="introduce introduce1">
            <!-- 사이드메뉴 -->
            <div class="side_nav">
                <ul>
                    <li class="side_nav_title">
                        <h2>Introduce</h2>
                    </li>
                    <c:if test="${sort=='introduce'}">
	                    <li class="on">
	                        <a href="/knockusa/introduce/introduce"><h4>About Us</h4></a>
	                    </li>
	                    <li>
	                        <a href="/knockusa/introduce/why"><h4>Why u will be with us</h4></a>
	                    </li>
	                    <li>
	                        <a href="/knockusa/introduce/direction"><h4>Direction</h4></a>
	                    </li>
                    </c:if>
                    <c:if test="${sort=='why'}">
	                    <li>
	                        <a href="/knockusa/introduce/introduce"><h4>About Us</h4></a>
	                    </li>
	                    <li class="on">
	                        <a href="/knockusa/introduce/why"><h4>Why u will be with us</h4></a>
	                    </li>
	                    <li>
	                        <a href="/knockusa/introduce/direction"><h4>Direction</h4></a>
	                    </li>
                    </c:if>
                    <c:if test="${sort=='direction'}">
	                    <li>
	                        <a href="/knockusa/introduce/introduce"><h4>About Us</h4></a>
	                    </li>
	                    <li>
	                        <a href="/knockusa/introduce/why"><h4>Why u will be with us</h4></a>
	                    </li>
	                    <li class="on">
	                        <a href="/knockusa/introduce/direction"><h4>Direction</h4></a>
	                    </li>
                    </c:if>
                </ul>
            </div>
            <!-- 사이드메뉴 끝-->