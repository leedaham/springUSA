<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="/knockusa/css/sidemenu.css">
<link rel="stylesheet" href="/knockusa/css/customer/customer.css">
    <!-- 콘텐츠 -->
    <main>
        <div class="FAQ">
            <!-- 사이드메뉴 -->
            <div class="side_nav">
                <ul>
                    <li class="side_nav_title">
                        <h2>Customer</h2>
                    </li>
                    <c:choose>
                    	<c:when test="${sort=='faq'}">
		                    <li class="on">
		                        <a href="/knockusa/customer/faq"><h4>FaQ</h4></a>
		                    </li>
		                    <li>
		                        <a href="/knockusa/customer/qna"><h4>QnA</h4></a>
		                    </li>
	                   	</c:when>
                    	<c:otherwise>
                    		<li>
		                        <a href="/knockusa/customer/faq"><h4>FaQ</h4></a>
		                    </li>
		                    <li class="on">
		                        <a href="/knockusa/customer/qna"><h4>QnA</h4></a>
		                    </li>
	                    </c:otherwise>
                    </c:choose>
                </ul>
            </div>
            <!-- 사이드메뉴 끝-->