<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../_header.jsp"%>
<%@include file="./_aside_customer.jsp"%>
            <h1>자주 묻는 질문</h1>
            <div class="">
            	<c:forEach var="faqs" items="${faqs}">
            	<span>${faqs.article_title}</span>
            	</c:forEach>
            </div>
        </div>
    </main>
     <!-- 콘텐츠 끝 -->
<%@include file="../_footer.jsp"%>  