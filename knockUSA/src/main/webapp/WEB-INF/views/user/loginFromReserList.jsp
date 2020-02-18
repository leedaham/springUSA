<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../_header.jsp"%>
<link rel="stylesheet" href="/knockusa/css/user/userLogin.css">
<script src="/knockusa/js/user/wrongIdPw.js"></script>
    <!-- 콘텐츠 -->
    <main>
        <div>
            <h1>로그인</h1>
            <div class="login_from_resvLi">
                <form action="/knockusa/user/LoginByReservationList" method="POST" class="member user"> 
                    <input type="hidden" name="" value="">
                    <div class="loginbox_member">
                        <h3>회원 로그인</h3>
                        <span class="row">
                            <span>ID</span>
                            <input type="text" name="user_id" title="아이디">
                        </span>
                        <span class="row">
                            <span>PassWord</span>
                            <input type="password" name="user_pw" title="비밀번호">
                        </span>
                        <span class="id_save_row">
                            <input type="checkbox" id="id_save" name="memoryId" class="chk">
                            <label for="id_save">아이디저장</label>
                        </span>
                        <button type="submit" class="btn btn_login">로그인</button>
                        <div>
                            <button type="button" class="btn btn_login_other"><a href="/knockusa/user/register">회원가입</a></button>
                            <button type="button" class="btn btn_login_other" onclick="window.open('/knockusa/user/idpw','window_name','width=430,height=500,location=no,status=no,scrollbars=yes');">
                                    	아이디/비밀번호 찾기
                            </button>
                        </div>
                    </div>
                </form>
                <form action="/knockusa/user/LoginByReservationList" method="POST" class="member"> 
                    <div class="non_member">
                        <h3>비회원 </h3>
                        <span class="row">
                            <span>Name</span>
                            <input type="text" name="purchase_name_kor" title="이름">
                        </span>
                        <span class="row">
                            <span>Reservation Number</span>
                            <input type="text" name="purchase_no" title="비회원예약번호">
                        </span>
                        <div>
                            <button type="submit"" class="btn btn_login">조회하기</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </main>
        <!-- 콘텐츠 끝 -->
<%@include file="../_footer.jsp"%>  