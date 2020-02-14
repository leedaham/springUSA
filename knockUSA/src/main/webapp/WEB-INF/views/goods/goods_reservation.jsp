<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../_header.jsp"%>
<link rel="stylesheet" href="/knockusa/css/goods/goods.css">
<link rel="stylesheet" href="/knockusa/css/goods/goodsPackage.css">
<!-- 콘텐츠 -->
<main>
    <div>
        <h1>예약하기</h1>
        <div class="">
            <form action="/knockusa/goods/reservation" method="post">
                <label for="purchase_goods_no">여행번호</label><input type="text" name="purchase_goods_no" value="${goods.goods_no}" readonly> <br>
                <label for="goods_night">여행기간</label><input type="text" name="goods_night" value="${goods.goods_night}" readonly> <br>
                <label for="goods_start">여행출발</label><input type="text" name="goods_start" value="${goods.goods_start}" readonly> <br>
                <label for="goods_end">여행도착</label><input type="text" name="goods_end" value="${goods.goods_end}" readonly> <br>
                <label for="goods_price">여행가격</label><input type="text" name="goods_price" value="${goods.goods_price}" readonly> <br>
				<c:choose>
				<c:when test="${user.user_id == null}">
                	<label for="purchase_id">예약자 아이디</label><input type="text" name="purchase_id" value=""> <br>
                </c:when>
                <c:otherwise>
                	<label for="purchase_id">예약자 아이디</label><input type="text" name="purchase_id" value="${user.user_id}"> <br>
                </c:otherwise>
                </c:choose>
                <label for="purchase_name_kor">예약자 성명</label><input type="text" name="purchase_name_kor" value="${user.user_name}"> <br>
                <label for="purchase_name_eng">예약자 영문성명</label><input type="text" name="purchase_name_eng" value=""><br>
                <label for="purchase_gender">예약자 성별</label><input type="text" name="purchase_gender" value="${user.user_gender}"><br>
                <label for="purchase_hp">예약자 전화번호</label><input type="text" name="purchase_hp" value="${user.user_hp}"><br>
                <label for="purchase_email">예약자 이메일</label><input type="text" name="purchase_email" value="${user.user_email}"><br>
                <label for="purchase_extra">기타사항</label><textarea name="purchase_extra" placeholder="기타사항"></textarea><br>
                <label for="purchase_how_many">여행인원</label><select name="purchase_how_many"><br>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                </select>
                <label for="purchase_accompany">예약자 동행여부</label><<input type="text" name="purchase_accompany" value=""><br>
                <label for="purchase_traveler_name_kor_1">동행 여행자 성명</label><<input type="text" name="purchase_traveler_name_kor_1" value=""><br>
                <label for="purchase_traveler_name_eng_1">동행 여행자 영문 성명</label><<input type="text" name="purchase_traveler_name_eng_1" value=""><br>
                <label for="purchase_traveler_name_gender_1">동행 여행자 성별</label><<input type="text" name="purchase_traveler_name_gender_1" value=""><br>
                <label for="purchase_traveler_name_hp_1">동행 여행자 전화번호</label><<input type="text" name="purchase_traveler_name_hp_1" value=""><br>
                <label for="purchase_traveler_name_kor_2">동행 여행자 성명</label><input type="text" name="purchase_traveler_name_kor_2" value=""><br>
                <label for="purchase_traveler_name_eng_2">동행 여행자 영문 성명</label><input type="text" name="purchase_traveler_name_eng_2" value=""><br>
                <label for="purchase_traveler_name_gender_2">동행 여행자 성별</label><input type="text" name="purchase_traveler_name_gender_2" value=""><br>
                <label for="purchase_traveler_name_hp_2">동행 여행자 전화번호</label><input type="text" name="purchase_traveler_name_hp_2" value=""><br>
                <label for="purchase_traveler_name_kor_3">동행 여행자 성명</label><input type="text" name="purchase_traveler_name_kor_3" value=""><br>
                <label for="purchase_traveler_name_eng_3">동행 여행자 영문 성명</label><input type="text" name="purchase_traveler_name_eng_3" value=""><br>
                <label for="purchase_traveler_name_gender_3">동행 여행자 성별</label><input type="text" name="purchase_traveler_name_gender_3" value=""><br>
                <label for="purchase_traveler_name_hp_3">동행 여행자 전화번호</label><input type="text" name="purchase_traveler_name_hp_3" value=""><br>
                
                <button type="submit">예약하기</button>
                <button type="button"><a href="/knockusa/goods/travelPackage?goods_no=${goods.goods_no}">취소하기</a></button>
            </form>
        </div>
    </div>
</main>
<!-- 콘텐츠 끝 -->
<!-- 푸터 -->
<%@include file="../_footer.jsp"%>  