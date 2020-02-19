<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../_header.jsp"%>
<jsp:include page="./_aside_${board.board_group}.jsp" /> <%-- 표현언어는 태그요소에만 적용 됨 --%>
<link rel="stylesheet" href="/knockusa/css/board.css">
<link rel="stylesheet" href="/knockusa/css/community/communityEvent.css">
<script src="/knockusa/js/community/currentPg.js"></script>
<script>	
	$(function(){
		var page = $('.paging .num${pg}');
		page.css('color', '#ffa02f').css('font-weight', '600');
	});
	
	
</script>
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
	                    <a href="/knockusa/community/event?cate=eventNow&when=now"><h3>진행중인 이벤트</h3></a>
	                </div>
	                <div class="past">
	                    <a href="/knockusa/community/event?cate=eventNow&when=past"><h3>지난 이벤트</h3></a>
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
                <td>${count=count-1}</td>
                <td><a href="/knockusa/${board.board_group}/view?article_no=${vo.article_no}&cate=${board.board_cate}&pg=${pg}">${vo.article_title}&nbsp;[${vo.article_comment}]</a></td>
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
            <c:if test="${prevBtn != 1}">
           	<a href="/knockusa/community?cate=${board.board_cate}&pg=${startPg-10}" class="prev">이전</a>
           	</c:if>
         		<c:forEach var="n" begin="${startPg}" end="${endPage}">
			<a href="/knockusa/community?cate=${board.board_cate}&pg=${n}" class="num num${n}">${n}</a>
				</c:forEach>
			<c:choose>
				<c:when test="${nextBtn != 1}">
					<a href="/knockusa/community?cate=${board.board_cate}&pg=${startPg+10}" class="next">다음</a>
				</c:when>
				<c:when test="">
				</c:when>
				<c:otherwise>
				</c:otherwise>
			</c:choose>
            </span>
        </nav>
        <c:choose>
       		<c:when test="${board.board_cate=='notice' && user.user_grade == '0'}"><a href="/knockusa/${board.board_group}/write?cate=${board.board_cate}&pg=${pg}" class="btnWrite">글쓰기</a></c:when>
       		<c:when test="${board.board_cate=='review' && user eq null}"><a href="/knockusa/user/login" class="btnWrite">글쓰기</a></c:when>
       		<c:when test="${board.board_cate=='review' && user.user_grade == '0'}"><a href="/knockusa/${board.board_group}/write?cate=${board.board_cate}&pg=${pg}" class="btnWrite">글쓰기</a></c:when>
       		<c:when test="${board.board_cate=='review' && user.user_grade == '1'}"><a href="/knockusa/${board.board_group}/write?cate=${board.board_cate}&pg=${pg}" class="btnWrite">글쓰기</a></c:when>
       		<c:when test="${board.board_cate=='newsUSA' && user.user_grade == '0'}"><a href="/knockusa/${board.board_group}/write?cate=${board.board_cate}&pg=${pg}" class="btnWrite">글쓰기</a></c:when>
       		<c:when test="${board.board_cate=='newsCAN' && user.user_grade == '0'}"><a href="/knockusa/${board.board_group}/write?cate=${board.board_cate}&pg=${pg}" class="btnWrite">글쓰기</a></c:when>
       		<c:when test="${board.board_cate=='eventWin' && user.user_grade == '0'}"><a href="/knockusa/${board.board_group}/write?cate=${board.board_cate}&pg=${pg}" class="btnWrite">글쓰기</a></c:when>
        </c:choose>
    </div>
</div>
</main>
<!-- 콘텐츠 끝 -->
<%@include file="../_footer.jsp"%>