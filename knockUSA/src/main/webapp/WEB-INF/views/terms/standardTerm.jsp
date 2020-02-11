<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../_header.jsp"%>
<link rel="stylesheet" href="/knockusa/css/style.css">
<link rel="stylesheet" href="/knockusa/css/terms.css">
    <!-- 콘텐츠 -->
    <main>
        <div class="terms">
            <!-- 사이드메뉴 -->
            <div class="side_nav">
                <ul>
                    <li class="side_nav_title">
                        <h2>Terms</h2>
                    </li>
                    <li>
                        <a href="/knockusa/terms/chiefPrivacy"><h4>개인정보 처리방침</h4></a>
                    </li>
                    <li class="on">
                        <a href="/knockusa/terms/standardTerm"><h4>국외여행 표준약관</h4></a>
                    </li>
                    <li>
                        <a href="/knockusa/terms/emailRefuse"><h4>이메일 수집거부</h4></a>
                    </li>
                </ul>
            </div>
            <!-- 사이드메뉴 끝-->
            <h1>국외여행 표준약관</h1>
            <div class="">
            	<p>${terms.terms_abroad}</p>
            </div>
        </div>
    </main>
     <!-- 콘텐츠 끝 -->
<%@include file="../_footer.jsp"%>  