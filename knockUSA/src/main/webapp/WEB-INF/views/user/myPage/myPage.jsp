<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../../_header.jsp"%>
<%@include file="./_aside_myPage.jsp"%>
            <h1>my page</h1>
            <div class="">
            	<span>${user.user_id}</span><br>
            	<span>${user.user_name}</span><br>
            	<span>${user.user_gender}</span><br>
            	<span>${user.user_birth}</span><br>
            	<span>${user.user_hp}</span><br>
            	<span>${user.user_tel}</span><br>
            	<span>${user.user_email}</span><br>
            	<span>${user.user_zip}</span><br>
            	<span>${user.user_addr_main}</span><br>
            	<span>${user.user_addr_detail}</span><br>
            	<span>${user.user_rdate}</span><br>
            </div>
            
        </div>
    </main>
    <!-- 콘텐츠 끝 -->
    <%@include file="../../_footer.jsp"%>  