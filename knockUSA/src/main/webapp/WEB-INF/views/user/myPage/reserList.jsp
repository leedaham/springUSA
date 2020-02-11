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
                <span>${rsList.purchase_no}</span>
                <span>${rsList.purchase_goods}</span>
                <span>${rsList.purchase_id}</span>
                <span>${rsList.purchase_amount}</span>
                <span>${rsList.purchase_price}</span>
                <span>${rsList.purchase_amount}</span>
                <span>${rsList.purchase_goods_status}</span>
                <span>${rsList.purchase_rdate}</span>
                
            </div>
        </div>
    </main>
    <!-- 콘텐츠 끝 -->
    <%@include file="../../_footer.jsp"%>  