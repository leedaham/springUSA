<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../_header.jsp"%>
<link rel="stylesheet" href="/knockusa/css/user/userLoginFromRes.css">
<script src="/knockusa/js/user/wrongIdPw.js"></script>
    <!-- 콘텐츠 -->
    <main>
        <div>
            <h1>로그인</h1>
            <div class="login_from_resvLi">
                <form action="/knockusa/user/loginFromReservation" method="POST" class="member user">
                    <div class="loginbox_member">
                        <h3>회원 로그인</h3>
                        <input type="hidden" name="goods_number" value="${goods_number}">
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
                            <a href="/knockusa/user/register"><button type="button" class="btn btn_login_other">회원가입</button></a>
                            <button type="button" class="btn btn_login_other" onclick="window.open('/knockusa/user/idpw','window_name','width=430,height=500,location=no,status=no,scrollbars=yes');">
                                    	아이디/비밀번호 찾기
                            </button>
                        </div>
                    </div>
                </form>
                <div class="non_member">
                    <h3>비회원 </h3>
                    <span>
                        웹사이트 회원가입을 하시면, <br>
                        회원님만의 다양한 서비스를 <br> 
                        이용하실 수 있습니다.
                    </span>
                    <div>
                        <a href="/knockusa/goods/reservation?goods_no=${goods_number}"><button type="button" class="btn btn_login">비회원 예약하기</button></a>
                    </div>
                </div>
            </div>
        </div>
    </main>
     <!-- 콘텐츠 끝 -->
<%@include file="../_footer.jsp"%>  