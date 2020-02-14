<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../../_header.jsp"%>
<%@include file="./_aside_myPage.jsp"%>

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