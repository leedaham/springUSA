<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../_header.jsp"%>
<jsp:include page="./_aside_${board.board_group}.jsp" /> <%-- 표현언어는 태그요소에만 적용 됨 --%>
<link rel="stylesheet" href="/knockusa/css/board.css">
<link rel="stylesheet" href="/knockusa/css/community/communityEvent.css">
	<c:choose>
		<c:when test="${board.board_cate=='notice'}"><h1>공지사항</h1></c:when>
		<c:when test="${board.board_cate=='review'}"><h1>고객후기</h1></c:when>
		<c:when test="${board.board_cate=='newsUSA'}"><h1>news USA</h1></c:when>
		<c:when test="${board.board_cate=='newsCAN'}"><h1>news CAN</h1></c:when>
		<c:when test="${board.board_cate=='eventWin'}">
			<h1>이벤트</h1>
	        <div class="event_tit">
	            <div class="tab">
	                <div class="now">
	                    <a href="/knockusa/community/event?when=now"><h3>진행중인 이벤트</h3></a>
	                </div>
	                <div class="past">
	                    <a href="/knockusa/community/event?when=past"><h3>지난 이벤트</h3></a>
	                </div>
	                <div class="win on">
	                    <a href="#"><h3>당첨자 발표</h3></a>
	                </div>
	            </div>
	        </div>
        </c:when>
    </c:choose>
<div id="board">
    <!-- 리스트 -->
    <div class="list">
        <table>
            <tr>
                <td>번호</td>
                <td>제목</td>
                <td>글쓴이</td>
                <td>날짜</td>
                <td>조회</td>
            </tr>
        	
        	<c:forEach var="vo" items="${articles}">
            <tr>
                <td>${vo.article_no}</td>
                <td><a href="/knockusa/${board.board_group}/view?article_no=${vo.article_no}&cate=${board.board_cate}">${vo.article_title}&nbsp;[${vo.article_comment}]</a></td>
                <td>${vo.user_name}</td>
                <td>${vo.article_rdate}</td>
                <td>${vo.article_hit}</td>
            </tr>
            </c:forEach>
        </table>
    </div>
    <!-- 페이징 -->
        <nav class="paging">
            <span> 
            <a href="#" class="prev">이전</a>
            <a href="#" class="num">1</a>
            <a href="#" class="next">다음</a>
            </span>
        </nav>
        <c:choose>
        	<c:when test="${user eq null}">
         	<a href="/knockusa/user/login" class="btnWrite">글쓰기</a>
         </c:when>
         <c:otherwise>
         	<a href="/knockusa/${board.board_group}/write?cate=${board.board_cate}" class="btnWrite">글쓰기</a>
         </c:otherwise>
        </c:choose>
    </div>
</div>
</main>
<!-- 콘텐츠 끝 -->
<%@include file="../_footer.jsp"%>