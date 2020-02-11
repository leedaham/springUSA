<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../_header.jsp"%>
<link rel="stylesheet" href="/knockusa/css/goods/goods.css">
<link rel="stylesheet" href="/knockusa/css/goods/goodsPackage.css">
<script src="/knockusa/js/goods/goodsCalendar.js"></script>
<!-- 콘텐츠 -->
<main>
    <div>
        <h1>월별 출발 상품</h1>
        <div class="monthlyStartingItems">
            <input type="month" name="travelMonth" class="travelMonth"/>
            <input type="text" name="travelMonthBig" class="travelMonthBig" readonly onfocus='this.blur();'/>
        </div>
        <div class="monthlyStarting">
            <table>
                <tr>
                    <th>출발날짜</th>
                    <th>도착날짜</th>
                    <th>상품명</th>
                    <th>여행지</th>
                    <th>요금</th>
                    <th>잔여석</th>
                    <th></th>
                </tr>
                
            </table>
        </div>
    </div>
</main>
<!-- 콘텐츠 끝 -->
<!-- 푸터 -->
<%@include file="../_footer.jsp"%>  