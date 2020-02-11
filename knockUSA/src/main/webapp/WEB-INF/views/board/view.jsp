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
		<div class="view">
			<form action="#" method="post">
				<table>
					<tr>
						<td>제목</td>
						<td><input type="text" name="subject" value="${article.article_title}" readonly />
						</td>
					</tr>
					
					<tr>
						<td>첨부파일</td>
						<td>
							<a href="#">테스트.hwp</a>
							<span>3회 다운로드</span>
						</td>
					</tr>
					
					<tr>
						<td>내용</td>
						<td>
							<textarea name="content" rows="20" readonly>${article.article_content}</textarea>
						</td>
					</tr>
				</table>
				<div class="btns">
				<c:choose>
	            	<c:when test="${user.user_id == article.article_id}">
						<a href="/knockusa/${board.board_group}/delete?cate=${board.board_cate}&article_no=${article.article_no}" class="cancel del">삭제</a>
						<a href="/knockusa/${board.board_group}/modify?cate=${board.board_cate}&article_no=${article.article_no}" class="cancel mod">수정</a>
					</c:when>
				</c:choose>
					<a href="/knockusa/${board.board_group}?cate=${board.board_cate}" class="cancel">목록</a>
				</div>
			</form>
		</div><!-- view 끝 -->
		
		<!-- 댓글리스트 -->
		<section class="comments">
			<h3>댓글목록</h3>
			
			<div class="comment">
				<span>
					<span>홍길동</span>
					<span>18-03-01</span>
				</span>
				<textarea>테스트 댓글입니다.</textarea>
				<div>
					<a href="#" class="del">삭제</a>
					<a href="#" class="mod">수정</a>
				</div>
			</div>
		
			<p class="empty">
				등록된 댓글이 없습니다.
			</p>
			
		</section>
		
		<!-- 댓글쓰기 -->
		<section class="comment_write">
			<h3>댓글쓰기</h3>
			<div>
				<form action="#" method="post">
					<textarea name="comment" rows="5"></textarea>
					<div class="btns">
						<a href="#" class="cancel">취소</a>
						<input type="submit" class="submit" value="작성완료" />
					</div>
				</form>
			</div>
		</section>
	</div><!-- board 끝 -->
</main>
<jsp:include page="../_footer.jsp" />