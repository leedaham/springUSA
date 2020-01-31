<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../_header.jsp"%>
<link rel="stylesheet" href="/knockusa/css/userLogin.css">
    <!-- 콘텐츠 -->
    <main>
        <div>
            <h1>로그인</h1>
            <div class="login">
                <form action="#" method="POST"> 
                    <input type="hidden" name="" value="">
                    <div class="loginbox">
                        <h3>회원 로그인</h3>
                        <span class="row">
                            <span>ID</span>
                            <input type="text" name="userID" title="아이디">
                        </span>
                        <span class="row">
                            <span>PassWord</span>
                            <input type="password" name="userPW" title="비밀번호">
                        </span>
                        <span class="id_save_row">
                            <input type="checkbox" id="id_save" name="memoryId" class="chk">
                            <label for="id_save">아이디저장</label>
                        </span>
                        <button type="submit" class="btn btn_login">로그인</button>
                        <div>
                            <button type="button" class="btn btn_login_other">회원가입</button>
                            <button type="button" class="btn btn_login_other">아이디/비밀번호 찾기</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </main>
    <!-- 콘텐츠 끝 -->
<%@include file="../_footer.jsp"%>  