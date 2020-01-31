<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../_header.jsp"%>
<jsp:include page="./_aside_${board.board_group}.jsp" /> <%-- 표현언어는 태그요소에만 적용 됨 --%>
<link rel="stylesheet" href="/knockusa/css/board.css">
<c:choose>
	<c:when test="${board.board_cate=='notice'}"><h1>공지사항</h1></c:when>
	<c:when test="${board.board_cate=='review'}"><h1>고객후기</h1></c:when>
	<c:when test="${board.board_cate=='newsUSA'}"><h1>NEWS USA</h1></c:when>
	<c:when test="${board.board_cate=='newsCAN'}"><h1>NEWS CAN</h1></c:when>
	<c:when test="${board.board_cate=='eventWin'}"><h1>이벤트 당첨자</h1></c:when>
</c:choose>
<div id="board">
    <!-- 리스트 -->
    <div class="list">
        <p class="logout">홍길동님! 반갑습니다. <a href="#">[로그아웃]</a><p>
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
                <td><a href="/knockusa/${board.board_group}/view?article_no=${vo.article_no}&cate=${board.board_cate}">${vo.article_title}</a>&nbsp;[${vo.article_comment}]</td>
                <td>${vo.article_id}</td>
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
            <a href="/knockusa/${board.board_group}/write?cate=${board.board_cate}" class="btnWrite">글쓰기</a>
        </div>
    </div>
</main>
<!-- 콘텐츠 끝 -->
<%@include file="../_footer.jsp"%>