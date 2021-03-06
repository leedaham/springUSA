<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../_header.jsp"%>
<link rel="stylesheet" href="/knockusa/css/user/userRegister.css">
<script src="/knockusa/js/user/termsCheck.js"></script>
    <!-- 콘텐츠 -->
    <main>
        <div>
            <h1>회원가입</h1>
            <div class="steper">
                <div class="step on">
                    <span>01. 약관입력</span>
                </div>
                <div class="step">
                    <span>02. 정보입력</span>
                </div>
                <div class="step">
                    <span>03. 가입완료</span>
                </div>
            </div>
        </div>
        <form action="/knockusa/user/register2" method="POST" class="register1">
            <div class="showTerms">
                <div class="terms">
                    <h3>인터넷 회원 약관(필수)</h3>
                    <div class="termsBox">
                        ${terms.terms_user}
                    </div>
                    <span class="agreeArea">
                        <label for="agree1" style="cursor: pointer"><input type="checkbox" id="agree1" name="agree1" class="chk" style="cursor: pointer"/>동의합니다.</label>
                    </span>
                </div>
                <div class="terms">
                    <h3>개인정보 수집 및 이용에 대한 안내(필수)</h3>
                    <div class="termsBox">
                        ${terms.terms_privacy_agree}
                    </div>
                    <span class="agreeArea">
                        <label for="agree2" style="cursor: pointer"><input type="checkbox" id="agree2" name="agree2" class="chk" style="cursor: pointer"/>동의합니다.</label>
                    </span>
                </div>
                <div class="terms">
                    <h3>개인정보 수집 및 이용에 대한 안내(필수)</h3>
                    <div class="termsBox">
                        ${terms.terms_own}
                    </div>
                    <span class="agreeArea">
                        <label for="agree3" style="cursor: pointer"><input type="checkbox" id="agree3" name="agree3" class="chk" style="cursor: pointer"/>동의합니다.</label>
                    </span>
                </div>
                <span class="AllagreeArea">
                    <label for="allAgree" style="cursor: pointer"><input type="checkbox" id="allAgree"name="allAgree" class="chk" style="cursor: pointer">위의 인터넷 회원 약관(필수), 개인정보 수집 및 이용에 대한 안내(필수), 개인정보 수집 및 이용에 대한 안내(필수) 내용을 자세히 읽었으며 모두 동의합니다.</label>
                </span>
            </div>
            <button type="submit" class="btn btn_register">회원가입 다음단계</button>
        </form>
    </main>
    <!-- 콘텐츠 끝 -->
<%@include file="../_footer.jsp"%>    