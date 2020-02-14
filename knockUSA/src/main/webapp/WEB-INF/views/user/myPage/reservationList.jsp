<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../../_header.jsp"%>
<link rel="stylesheet" href="/knockusa/css/user/userReserList.css">
<link rel="stylesheet" href="/knockusa/css/user/sidemenu.css">
    <!-- 콘텐츠 -->
    <main>
        <div class="">
            <!-- 사이드메뉴 -->
            <div class="side_nav">
                <ul>
                    <li class="side_nav_title">
                        <h2>My Page</h2>
                    </li>
                    <li class="on">
                        <a href="./reserList.html"><h4>Reservation List</h4></a>
                    </li>
                    <li>
                        <a href="#"><h4>Your Information</h4></a>
                    </li>
                    <li>
                        <a href="#"><h4>Change Your PW</h4></a>
                    </li>
                    <li>
                        <a href="#"><h4>Wish List</h4></a>
                    </li>
                </ul>
            </div>
            <!-- 사이드메뉴 끝-->
            <h1>예약 리스트</h1>
            <div class="">
            <c:forEach var="purchaseList" items="${purchaseList}">
                <span>${purchaseList.purchase_no}</span>
                <span><a href="/knockusa/goods/travelPackage?goods_no=${purchaseList.purchase_goods_no}">${purchaseList.goods_title}</span>
                <!-- alert로 상품페이지로 가시겠습니까? 예약 상세페이지는 예약상세보기를 클릭해주세요. -->
                <span>${purchaseList.purchase_id}</span>
                <span>${purchaseList.purchase_price}</span>
                <span>${purchaseList.purchase_how_many}</span>
                <span>${purchaseList.purchase_extra}</span>
                <span>${purchaseList.purchase_traveler_name_kor_1}</span>
                <span>${purchaseList.purchase_traveler_name_kor_2}</span>
                <span>${purchaseList.purchase_traveler_name_kor_3}</span>
                <span>${purchaseList.purchase_goods_status}</span>
                <span>${purchaseList.purchase_rdate}</span>
                <button><a href="/knockusa/user/myPage/reservationOne?purchase_no=${purchaseList.purchase_no}">상세보기</a></button>
                <br>
            </c:forEach>    
                
            </div>
            
        </div>
    </main>
    <!-- 콘텐츠 끝 -->
    <%@include file="../../_footer.jsp"%>  