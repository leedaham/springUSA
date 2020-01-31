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
			<div class="write">
				<form action="/knockusa/${board.board_group}/write?cate=${board.board_cate}" method="post">
					<input type="hidden" name="cate" value="${board.board_cate}"/>
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
						<tr>
							<td>첨부</td>
							<td>
								<input type="file" name="file" />
							</td>
						</tr>
					</table>
					<div class="btns">
						<a href="/knockusa/${board.board_group}/list?cate=${board.board_cate}" class="cancel">취소</a>
						<input type="submit" class="submit" value="작성완료" />
					</div>
				</form>
			</div>
		</div>
	</div>
</main>
<%@include file="../_footer.jsp"%>


