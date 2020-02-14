<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../../_header.jsp"%>
<%@include file="./_aside_myPage.jsp"%>
            <h1>changePw</h1>
            <div class="">
            	<form action="/knockusa/user/myPage/changePw" method="post">
	            	<input type="text" name="user_pw" placeholder="현재 비밀번호를 입력하세요.">
	            	<input type="text" name="user_pw_new" placeholder="새로운 비밀번호를 입력하세요.">
	            	<input type="text" name="user_pw_new2" placeholder="새로운 비밀번호를 다시 입력하세요.">
	            	<button type="submit"> 변경하기 </button>
            	</form>
            </div>
            
        </div>
    </main>
    <!-- 콘텐츠 끝 -->
    <%@include file="../../_footer.jsp"%>  