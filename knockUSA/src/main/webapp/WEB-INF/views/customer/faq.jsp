<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../_header.jsp"%>
<%@include file="./_aside_customer.jsp"%>
<link rel="stylesheet" href="/knockusa/css/customer/faq.css">
<script src="/knockusa/js/customer/faq.js"></script>
            <div class="faq">
            	<c:forEach var="faqs" items="${faqs}">
                    <div class="faq_box">
            		    <a href="#" class="faq_tit">Q. ${faqs.article_title}</a> <br>
                        <span class="faq_answer"><strong>A.</strong> ${faqs.article_content}</span> <br>
                    </div>
            	</c:forEach>
            </div>
        </div>
    </main>
     <!-- 콘텐츠 끝 -->
<%@include file="../_footer.jsp"%>  