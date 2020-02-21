<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../../_header.jsp"%>
<%@include file="./_aside_myPage.jsp"%>
<script>
    $(function(){
        var delBtn = $('.resConfirm > .del');
        delBtn.click(function(e){
            var delOk = confirm('정말 예약을 취소 하시겠습니까?');
            if(delOk){
                return true;
            }else{
                e.preventDefault();
            }
        });
    });
</script>
            <h1>예약 확인</h1>
            <div class="resConfirm">
                <span>${purchase.purchase_no}</span>
                <span><a href="/knockusa/goods/travelPackage?goods_no=${purchase.purchase_goods_no}">${purchase.goods_title}</a></span>
                <span>${purchase.purchase_id}</span>
                <span>${purchase.purchase_price}</span>
                <span>${purchase.purchase_how_many}</span>
                <span>${purchase.purchase_extra}</span>
                <span>${purchase.purchase_traveler_name_kor_1}</span>
                <span>${purchase.purchase_traveler_name_kor_2}</span>
                <span>${purchase.purchase_traveler_name_kor_3}</span>
                <span>${purchase.purchase_traveler_name_kor_4}</span>
                <span>${purchase.purchase_goods_status}</span>
                <span>${purchase.purchase_rdate}</span>
                <a class="del" href="/knockusa/goods/reservation/cancle?purchase_no=${purchase.purchase_no}&purchase_how_many=${purchase.purchase_how_many}&purchase_goods_no=${purchase.purchase_goods_no}"><button>예약 취소하기</button></a>
            </div>
        </div>
    </main>
    <!-- 콘텐츠 끝 -->
    <%@include file="../../_footer.jsp"%>  