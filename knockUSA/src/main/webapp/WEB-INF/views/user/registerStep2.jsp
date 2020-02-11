<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../_header.jsp"%>
<link rel="stylesheet" href="/knockusa/css/user/userRegister.css">
<script src="/knockusa/js/user/checklistRegister.js"></script>
<script src="/knockusa/js/user/validation.js"></script>
    <!-- 콘텐츠 -->
    <main>
        <div>
            <h1>회원가입</h1>
            <div class="steper">
                <div class="step">
                    <span>01. 약관입력</span>
                </div>
                <div class="step on">
                    <span>02. 정보입력</span>
                </div>
                <div class="step">
                    <span>03. 가입완료</span>
                </div>
            </div>
        </div>
        <form action="/knockusa/user/register3" method="POST" class="register2"> 
            <div>
                <span>성명</span>
                <input type="text" name="user_name" title="name" placeholder="2자 이상 입력해주세요.">
            </div>
            <div class="emailBox">
                <span>이메일</span>
                <input type="text" class="email1" name="email1" > @ <input type="text" class="email2" name="email2" >
                <select name="email">
                    <option value="direct">직접입력</option>
                    <option value="naver.com">naver.com</option>
                    <option value="hanmail.net">hanmail.net</option>
                    <option value="nate.com">nate.com</option>
                    <option value="google.com">google.com</option>
                    <option value="hotmail.com">hotmail.com</option>
                    <option value="dreamwiz.com">dreamwiz.com</option>
                    <option value="lycos.co.kr">lycos.co.kr</option>
                </select>
                <p class="resultEmail"></p>
            </div>
            <div>
                <span>생년월일</span>
                <input type="date" name="user_birth" title="birth">
            </div>
            <div>
                <span>성별</span>
                <input type="checkbox" id="male" name="gender" value="1" class="chk">
                <label for="male">남자</label>
                <input type="checkbox" id="female" name="gender" value="2" class="chk">
                <label for="female">여자</label>
            </div>
            <div>
                <span>아이디</span>
                <input type="text" name="user_id">
                <p class="resultId"></p>
            </div>
            <div>
                <span>비밀번호</span>
                <input type="password" name="user_pw">
            </div>
            <div>
                <span>비밀번호 확인</span>
                <input type="password" name="user_pw2">
                <p class="resultPw"></p>
            </div>
            <div class="addrBox">
                <span>주소</span>
                <input type="text" class="zip" name="user_zip" readonly>
                <button class="btn">우편번호찾기</button>
                <input type="checkbox" id="noAddr" name="noAddr" class="chk">
                <label for="noAddr">주소 없음</label>
                <input type="text" class="addr" name="user_addr_main" placeholder="주소를 입력해주세요.">
                <input type="text" class="addr" name="user_addr_detail" placeholder="상세주소를 입력해주세요.">
            </div>
            <div>
                <span>핸드폰</span>
                <input type="text" name="user_hp" title="hp" placeholder="'-'없이 입력해주세요.">
                <p class="resultHp"></p>
            </div>
            <div class="telBox">
                <span>자택번호</span>
                <input type="text" class="tel" name="tel1">
                <input type="text" class="tel" name="tel2">
                <input type="text" class="tel" name="tel3">
                <input type="checkbox" id="noTel" name="noTel" class="chk">
                <label for="noTel">전화번호 없음</label>
            </div>
            <div class="receiveBox">
                <span>정보수신</span>
                <input type="checkbox" id="smsReceive" name="user_agree_sms1" class="chk">
                <label for="smsReceive">SMS수신</label>
                <input type="hidden" name="agreeSms" value="1">
                <input type="checkbox" id="emailReceive" name="user_agree_email1" class="chk">
                <label for="emailReceive">Email수신</label>
                <input type="hidden" name="agreeEmail" value="1">
            </div>
            <section>
                <div class="btnBox">
                    <button type="submit" class="btn btn_next">회원가입완료</button>
                    <button type="button" class="btn btn_back"><a href="/home">가입취소</a></button>
                </div>
            </section>
        </form>
    </main>
    <!-- 콘텐츠 끝 -->
<%@include file="../_footer.jsp"%>    