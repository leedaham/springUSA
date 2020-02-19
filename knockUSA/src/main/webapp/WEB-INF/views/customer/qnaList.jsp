<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../_header.jsp"%>
<%@include file="./_aside_customer.jsp"%>
<link rel="stylesheet" href="/knockusa/css/customer/qna.css">
    <!-- 콘텐츠 -->
        <div class="qnaList">
            <h3>내가 문의한 목록</h3>
            <c:forEach var="qnaList" items="${qnaList}">
            	<form action="/knockusa/customer/qnaView" method="get">
            	<input type="hidden" name="qna_no" value="${qnaList.qna_no}">
                <table>
                    <tr>
                        <td><button type="submit" class="qnaDateBtn"><strong>${qnaList.qna_rdate}</strong>에 하신 문의입니다.   <span>클릭하시면 상세 페이지로 이동합니다.</span></button></td>
                        <td>
                        	<c:choose>
		                        <c:when test="${qnaList.qna_parent == 0}">
		                            <span class="stillQna">문의중</span>
		                        </c:when>
		                        <c:otherwise>
		                            <span class="qnaDone">답변 완료!</span>
		                        </c:otherwise>
		                    </c:choose>
                        </td>
                    </tr>
                </table>
            	</form>
            </c:forEach>
            <br>
            <a href="/knockusa/customer/qnaToInquire" class="ask">문의 하기</a>
        </div>
    </main>
     <!-- 콘텐츠 끝 -->
<%@include file="../_footer.jsp"%>  