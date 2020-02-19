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
    <script src="/knockusa/js/user/pwRs.js"></script>
    <script src="/knockusa/js/user/idpwBackBtn.js"></script>
</head>
<body>
    <main>
        <div>
            <h3>비밀번호 찾기</h3>
            <div class="idpw">
            	<div class="rsPw">
            	<c:choose>
            			<c:when test="${findPw eq null}">
            				<div class="noId">
            					<strong>찾으시는 아이디의 정보가 없거나 틀렸습니다.</strong>
            					<button type="button" class="back">돌아가기</button>
            				</div>
            			</c:when>
            			<c:otherwise>
            				<form action="/knockusa/user/newPwRs" method="POST">
		                        <input type="hidden" name="user_no" value="${findPw.user_no}">
		                        <span>회원님의 아이디<br><strong>${findPw.user_id}</strong>의</span>
			                    <input name="user_pw" type="password" placeholder="변경하실 비밀번호를 입력하세요."> <br>
			                    <input name="confirm" type="password" placeholder="변경하실 비밀번호를 다시 한번 입력해주세요."> <br>
			                    <button type="submit" class="btn_submit">설정하기</button>
		                    </form>
            			</c:otherwise>
      			</c:choose>
            		
            	</div>
            </div>
        </div>
    </main>
</body>
</html>  