<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../../_header.jsp"%>
<%@include file="./_aside_myPage.jsp"%>
<link rel="stylesheet" href="/knockusa/css/user/userReserList.css">
<script>
$(function(){
    var toGoods = $('.toGoods');
    toGoods.click(function(e){
        var result = confirm('상품 페이지로 가시겠습니까?\n예약 상세페이지는 예약 상세보기를 클릭해주세요.');
        if(result){
            return true;
        }else{
            e.preventDefault();
        }
    });
});
</script>
            <h1>예약 목록</h1>
            <div class="reserList">
                
                <span class="label reserTit">예약 상품명</span>
                <span class="label reserPrice">상품 가격</span>
                <span class="label reserPeople">예약 인원</span>
                <span class="label reserStatus">상품 상태</span>
                <span class="label reserRdate">예약 일자</span><br>
            
            <c:forEach var="purchaseList" items="${purchaseList}">
                <br>
                <span class="reserTit"><a class="toGoods" href="/knockusa/goods/travelPackage?goods_no=${purchaseList.purchase_goods_no}">${purchaseList.goods_title}</a></span>
                <span class="reserPrice">${purchaseList.purchase_price}원</span>
                <span class="reserPeople">${purchaseList.purchase_how_many}명</span>
                <span class="reserStatus">${purchaseList.purchase_goods_status}</span>
                <span class="reserRdate">${purchaseList.purchase_rdate}</span>
                <button><a href="/knockusa/user/myPage/reservationOne?purchase_no=${purchaseList.purchase_no}">상세보기</a></button>
                <br>
            </c:forEach>    
                
            </div>
            
        </div>
    </main>
    <!-- 콘텐츠 끝 -->
    <%@include file="../../_footer.jsp"%>  