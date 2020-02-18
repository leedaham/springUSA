<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>ID / PW 찾기</title>
    <link rel="stylesheet" href="/knockusa/css/user.idpw.css">
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
</head>
<body>
    <main>
        <div>
            <h1>아이디 / 비밀번호 찾기</h1>
            <div class="idpw">
            	<div class="findId">
                    <form action="/knockusa/user/findId" method="POST">
                        <label for="user_name">이름</label><input type="text" name="user_name" > <br>
                        <label for="user_email">이메일</label><input type="text" name="user_email" > <br>
                        <button type="submit">아이디 찾기</button> <br>
                    </form>
            	</div>
            	<div class="findPw">
                    <form action="/knockusa/user/findPw" method="POST">
                        <label for="user_id">아이디</label><input type="text" name="user_id" > <br>
                        <label for="user_email">이메일</label><input type="text" name="user_email" > <br>
                        <label for="user_hp">휴대폰번호</label><input type="text" name="user_hp" > <br>
                        <button type="submit">비밀번호 찾기</button> <br>
                    </form>
            	</div>
            </div>
        </div>
    </main>
</body>
</html>  