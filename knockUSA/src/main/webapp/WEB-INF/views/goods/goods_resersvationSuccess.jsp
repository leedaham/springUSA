<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../_header.jsp"%>
<link rel="stylesheet" href="/knockusa/css/goods/goodsPackage.css">
<script src="/knockusa/js/goods/goodsCalendar.js"></script>
<!-- 콘텐츠 -->
<main>
    <div>
        <h1>예약 성공</h1>
        <div class="resSuccess">
            <div>
            	<img src="/knockusa/img/greenCredit.png">
                <span> <strong>${purchase.purchase_name_kor}</strong> 님 예약에 성공하셨습니다.</span> <br>
                <span>예약번호는 <strong class="orange">${purchase.purchase_no}</strong> 입니다.</span><br>
                <span> 예약번호는 예약조회시 꼭 필요하므로, 꼭 기억해주세요.</span>
            </div>
            <c:choose>
               	<c:when test="${user eq null}">
               		<a href="/knockusa/user/myPage/reserList_needLogin"><button class="hrefBtn">예약확인하러 가기</button></a>
               	</c:when>
               	<c:otherwise>
               		<a href="/knockusa/user/ByReservationList"><button class="hrefBtn">예약확인하러 가기</button></a>
               	</c:otherwise>
            </c:choose>
            <a href="/knockusa/goods/travelPackage?goods_no=${purchase.purchase_goods_no}"><button class="hrefBtn">상품페이지 가기</button></a>
            <a href="/knockusa/home"><button class="hrefBtn">홈페이지 가기</button></a>
        </div>
    </div>
</main>
<!-- 콘텐츠 끝 -->
<!-- 푸터 -->
<%@include file="../_footer.jsp"%>  