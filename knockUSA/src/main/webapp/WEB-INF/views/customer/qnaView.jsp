<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../_header.jsp"%>
<%@include file="./_aside_customer.jsp"%>

    <!-- 콘텐츠 -->
    <main>
        <div>
            <h1>문의 보기</h1>
            <span>qnaView</span>
			<span>${qna.qna_no}</span>            
			<span>${qna.qna_name}</span>            
			<span>${qna.qna_id}</span>            
			<span>${qna.qna_pw}</span>            
			<span>${qna.qna_email}</span>            
            <a href="/knockusa/customer/qnaToInquire">문의 하기</a>
        </div>
    </main>
     <!-- 콘텐츠 끝 -->
<%@include file="../_footer.jsp"%>  