<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../_header.jsp"%>
<%@include file="./_aside_customer.jsp"%>
<link rel="stylesheet" href="/knockusa/css/customer/qna.css">
    <!-- 콘텐츠 -->
        <div class="toInquire">
            <section class="guide">
                <h1>문의하기</h1>
                <span class="">맞춤견적의뢰 서비스<br>풍부한 경험과 노하우를 바탕으로 빠르고 정확한 견적을 제공하겠습니다. </span> <br>
                <span class="">전화상담 : 000-0000-0000 </span>
            </section>
            <section class="form">
                <form action="/knockusa/customer/qnaToInquire" method="POST">
                	<input type="hidden" name="qna_id" value="${user.user_id}"/><br> <!-- 회원만 자동입력 -->
	                <label for="qna_name">이름</label><input type="text" name="qna_name" value="${user.user_name}"/><br> <!-- 회원만 자동입력, 비회원 직접입력 -->
	                <label for="qna_pw">비밀번호</label><input type="text" name="qna_pw" value="0"/><br> <!-- 회원 입력 X, 비회원 직접입력 -->
	                <label for="qna_region">문의 여행지</label><input type="text" name="qna_region" value=""/> <br>
	                <label for="qna_email">이메일</label><input type="text" name="qna_email" value="${user.user_email}"/><br> <!-- 회원만 자동입력, 비회원 직접입력 -->
	                <label for="qna_hp">핸드폰번호</label><input type="text" name="qna_hp" value="${user.user_hp}"/><br> <!-- 회원만 자동입력, 비회원 직접입력 -->
	                <label for="qna_how_many">인원</label><input type="text" name="qna_how_many" value=""/><br>
	                <label for="qna_start_date">출발날짜</label><input type="date" name="qna_start_date" value=""/><br>
	                <label for="qna_end_date">도착날짜</label><input type="date" name="qna_end_date" value=""/><br>
	                <label for="qna_cost_per_head">1인당 경비</label><input type="text" name="qna_cost_per_head" value=""/><br>
					<label for="qna_extra">추가 문의사항<br><br><br><br><br><br><br><br></label>
					<textarea name="qna_extra"></textarea><br>
	                <div class="btn_multi">
	                   <a href="/knockusa/customer/qnaList"><button type="button" class="back">취소하기</button></a>
	                   <button type="submit">문의하기</button>
               		</div>
	           </form>
	           
            </section>
        </div>
    </main>
     <!-- 콘텐츠 끝 -->
<%@include file="../_footer.jsp"%>  