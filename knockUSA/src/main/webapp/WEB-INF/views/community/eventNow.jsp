<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../_header.jsp"%>
<link rel="stylesheet" href="/knockusa/css/community/communityEvent.css">
<jsp:include page="../board/_aside_community.jsp" /> <%-- 표현언어는 태그요소에만 적용 됨 --%>
<script src="/knockusa/js/community/eventPage.js"></script>
        <h1>이벤트</h1>
        <div class="event_tit">
        <input type="hidden" name="when" value="${when}"/>
            <div class="tab">
                <div class="now on">
                    <a href="#"><h3>진행중인 이벤트</h3></a>
                </div>
                <div class="past">
                    <a href="#"><h3>지난 이벤트</h3></a>
                </div>
                <div class="win">
                    <a href="/knockusa/community?cate=eventWin&pg=1"><h3>당첨자 발표</h3></a>
                </div>
            </div>
        </div>
        <div class="content">
            <div class="event_now on">
                <ul>
               	<c:forEach var="now" items="${articlesNow}">
                    <li>
                        <a href="/knockusa/community/eventItem?cate=${now.article_cate}&event_no=${now.article_no}">
                            <div class="imgbox">
                                <img src="/knockusa/img/${now.article_img}" alt="${now.article_img}">
                            </div>
                            <div class="txtbox">
                                <span class="txt_tit">${now.article_title.substring(23)}</span>
                                <span class="txt_date">${now.article_title.substring(0,23)}</span>
                            </div>
                        </a>
                    </li>
                   </c:forEach>
                </ul>
            </div>
            <div class="event_past">
                <ul>
                <c:forEach var="past" items="${articlesPast}">
	                <li>
	                    <a href="/knockusa/community/eventItem?cate=${past.article_cate}&event_no=${past.article_no}">
	                        <div class="imgbox">
	                            <img src="/knockusa/img/${past.article_img}" alt="${past.article_img}">
	                        </div>
	                        <div class="txtbox">
	                            <span class="txt_tit">${past.article_title.substring(23)}</span>
	                            <span class="txt_date">${past.article_title.substring(0,23)}</span>
	                        </div>
	                    </a>
	                </li>
              	</c:forEach>
                    
                </ul>
            </div>
            <div class="event_win">
                
            </div>
        </div>
    </div>
</main>
<!-- 콘텐츠 끝 -->
<%@include file="../_footer.jsp"%>  