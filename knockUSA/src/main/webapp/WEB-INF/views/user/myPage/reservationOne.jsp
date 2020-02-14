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
            <h1>예약 확인</h1>
            <div class="">
                <span>${purchase.purchase_no}</span>
                <span><a href="/knockusa/goods/travelPackage?goods_no=${purchase.purchase_goods_no}">${purchase.goods_title}</a></span>
                <span>${purchase.purchase_id}</span>
                <span>${purchase.purchase_price}</span>
                <span>${purchase.purchase_how_many}</span>
                <span>${purchase.purchase_extra}</span>
                <span>${purchase.purchase_traveler_name_kor_1}</span>
                <span>${purchase.purchase_traveler_name_kor_2}</span>
                <span>${purchase.purchase_traveler_name_kor_3}</span>
                <span>${purchase.purchase_goods_status}</span>
                <span>${purchase.purchase_rdate}</span>
                
            </div>
        </div>
    </main>
    <!-- 콘텐츠 끝 -->
    <%@include file="../../_footer.jsp"%>  