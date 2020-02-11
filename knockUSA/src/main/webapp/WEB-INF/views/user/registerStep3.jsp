<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../_header.jsp"%>
<link rel="stylesheet" href="/knockusa/css/user/userRegister.css">
    <!-- 콘텐츠 -->
    <main>
        <div>
            <h1>회원가입</h1>
            <div class="steper">
                <div class="step">
                    <span>01. 약관입력</span>
                </div>
                <div class="step">
                    <span>02. 정보입력</span>
                </div>
                <div class="step on">
                    <span>03. 가입완료</span>
                </div>
            </div>
        </div>
        <div class="register3">
            <img src="/knockusa/img/register_complete.png" alt="가입완료 이미지">
            <h1>회원가입이 완료되었습니다.</h1>
            <p>
                저희 투어는 여행의 시작에서부터 끝까지 최선을 다해 <br>
                고객 여러분들을 모실 것을 약속 드립니다.
            </p>
            <button><a href="/knockusa/user/login">로그인 페이지</a></button>
        </div>
    </main>
    <!-- 콘텐츠 끝 -->
<%@include file="../_footer.jsp"%>    