<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../_header.jsp"%>
<%@include file="../board/_aside_community.jsp"%>
<script src="/knockusa/js/community/eventItemBackBtn.js"></script>
<link rel="stylesheet" href="/knockusa/css/community/eventItem.css">
        <div class="eventItem">
            <div>
                <div class="txt_box">
            	    <span class="title">${article.article_title.substring(23)}</span><br>
                    <span class="period">기간 : ${article.article_title.substring(0, 23)}</span><br>
                    <button type="button" id="back_btn">BACK→</button>
                </div>
                <img src="/knockusa/img/${article.article_content}" alt="${artilce.article_content}">
            </div>
            
        </div>
    </div>
</main>
    <!-- 콘텐츠 끝 -->
<%@include file="../_footer.jsp"%>  