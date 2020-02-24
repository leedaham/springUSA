<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../_header.jsp"%>
<%@include file="./_aside_customer.jsp"%>
<link rel="stylesheet" href="/knockusa/css/customer/qna.css">
    <!-- 콘텐츠 -->
        <div class="qnaView">
            <div class="viewQ">
                <h3>문의 내역</h3>
                <section>
	                <span class="qnaLabel">성명</span><span>${qna.qna_name}</span>
	                <span class="qnaLabel">문의상태</span>
	                <c:choose>
	                	<c:when test="${qna.qna_status == '1'}">
		                	<span>답변 완료</span><br>
	                	</c:when>
	                	<c:otherwise>
	                		<span>문의중</span><br>
	                	</c:otherwise>
                	</c:choose>
	                <span class="qnaLabel">여행지</span><span>${qna.qna_region}</span>
	                <span class="qnaLabel">이메일</span><span>${qna.qna_email}</span><br>
	                <span class="qnaLabel">1인당 경비</span><span>${qna.qna_cost_per_head}</span>
	                <span class="qnaLabel">인원수</span><span>${qna.qna_how_many}</span><br>
	                <span class="qnaLabel">출발날짜</span><span>${qna.qna_start_date}</span>
	                <span class="qnaLabel">도착날짜</span><span>${qna.qna_end_date}</span><br>
	                
                    <span class="qnaLabel extra">추가 문의사항</span><br>
                    <textarea readonly onfocus='this.blur();'>${qna.qna_extra}</textarea>
                </section>
            </div>
            <c:if test="${qna.qna_status == '1'}">
	            <div class="viewA">
	                <h3>문의 답변</h3>
	                <span class="qnaLabel">답변자</span><span>${answer.qna_name}</span>
	                <span class="qnaLabel">답변날짜</span><span>${answer.qna_rdate}</span><br>
                    <textarea readonly onfocus='this.blur();'>${answer.qna_extra}</textarea>
	            </div>
            </c:if>
            <div class="btnBox">
               <a href="/knockusa/customer/qnaList"><button type="button">돌아가기</button></a>
               <a href="/knockusa/customer/qnaToInquire"><button type="button">문의하기</button></a>
            </div>
        </div>
    </main>
     <!-- 콘텐츠 끝 -->
<%@include file="../_footer.jsp"%>  