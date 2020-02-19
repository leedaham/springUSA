<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>ID / PW 찾기</title>
    <link rel="stylesheet" href="/knockusa/css/user/idpw.css">
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <script src="/knockusa/js/user/idpwBackBtn.js"></script>
</head>
<body>
    <main>
        <div>
            <h3>아이디 찾기</h3>
            <div class="idpw">
            	<div class="rsId">
            		<c:choose>
            			<c:when test="${findId eq null}">
            				<div class="noId">
            					<strong>찾으시는 아이디가 없습니다.</strong>
            					<button type="button" class="back">돌아가기</button>
            				</div>
            			</c:when>
            			<c:otherwise>
            				<span>
		                    	회원님의 아이디는 <br>
		                    	<strong>${findId.user_id}</strong> <br>
		                    	입니다. <br>
		                   	</span>
		                   	<div class="rsIdfindPw">
		                    <form action="/knockusa/user/findPw" method="POST">
		                        <label for="user_id">아이디</label><input type="text" name="user_id" value="${findId.user_id}" readonly="readonly" onfocus='this.blur();'> <br>
		                        <label for="user_email">이메일</label><input type="text" name="user_email" > <br>
		                        <label for="user_hp">휴대폰번호</label><input type="text" name="user_hp" > <br>
		                        <button type="submit">비밀번호 찾기</button>
		                        <button type="button" class="back">돌아가기</button>
		                    </form>
		                    </div>
            			</c:otherwise>
            		</c:choose>
                    
            	</div>
            </div>
        </div>
    </main>
</body>
</html>  