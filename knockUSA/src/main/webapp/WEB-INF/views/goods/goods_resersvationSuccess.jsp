<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../_header.jsp"%>
<link rel="stylesheet" href="/knockusa/css/goods/goods.css">
<link rel="stylesheet" href="/knockusa/css/goods/goodsPackage.css">
<script src="/knockusa/js/goods/goodsCalendar.js"></script>
<!-- 콘텐츠 -->
<main>
    <div>
        <h1>예약 성공</h1>
        <div class="">
        <span>${purchase.purchase_name_eng} 님 예약에 성공하셨습니다.</span>
        <span>예약번호는 ${purchase.purchase_no} 입니다. 예약번호는 예약조회시 꼭 필요하므로, 꼭 기억해주세요.</span>
        
        </div>
    </div>
</main>
<!-- 콘텐츠 끝 -->
<!-- 푸터 -->
<%@include file="../_footer.jsp"%>  