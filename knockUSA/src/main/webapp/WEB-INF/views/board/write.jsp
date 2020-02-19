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
			<div class="write">
				<form action="/knockusa/${board.board_group}/write?cate=${board.board_cate}&pg=${pg}" method="post">
					<table>
						<tr>
							<td>제목</td>
							<td><input type="text" name="title" placeholder="제목을 입력하세요." required /></td>
						</tr>				
						<tr>
							<td>내용</td>
							<td>
								<textarea name="content" rows="20" required></textarea>
							</td>
						</tr>
						<c:choose>
						<c:when test="${user.user_grade eq 1} && ${board.board_cate eq 'review'}">
						<tr>
							<td>첨부</td>
							<td>
								<input type="file" name="file" />
							</td>
						</tr>
						</c:when>
						<c:when test="${user.user_grade eq 0}">
						<tr>
							<td>첨부</td>
							<td>
								<input type="file" name="file" />
							</td>
						</tr>
						</c:when>
						</c:choose>
					</table>
					<div class="btns">
						<a href="/knockusa/${board.board_group}?cate=${board.board_cate}&pg=${pg}" class="cancel">취소</a>
						<input type="submit" class="submit" value="작성완료" />
					</div>
				</form>
			</div>
		</div>
	</div>
</main>
<%@include file="../_footer.jsp"%>


