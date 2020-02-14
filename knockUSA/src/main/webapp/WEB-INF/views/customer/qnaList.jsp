<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../_header.jsp"%>
<%@include file="./_aside_customer.jsp"%>
<link rel="stylesheet" href="/knockusa/css/user/userLogin.css">
    <!-- 콘텐츠 -->
    <main>
        <div>
            <h1>문의하기</h1>
            <span>qnaList</span>
            <c:forEach var="qnaList" items="${qnaList}">
            	<form action="/knockusa/customer/qnaView" method="get">
                    <input type="hidden" name="qna_no" value="${qnaList.qna_no}">
                    <button type="submit">${qnaList.qna_rdate}</button>
                    <c:choose>
                        <c:when test="${qnaList.qna_parent == 0}">
                            <span>문의중</span>
                        </c:when>
                        <c:otherwise>
                            <span>답변 완료!</span>
                        </c:otherwise>
                    </c:choose>
            	</form>
            </c:forEach>
            
            <a href="/knockusa/customer/qnaToInquire">문의 하기</a>
        </div>
    </main>
     <!-- 콘텐츠 끝 -->
<%@include file="../_footer.jsp"%>  