<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../_header.jsp"%>
<link rel="stylesheet" href="/knockusa/css/goods/goodsPackage.css">
<script src="/knockusa/js/goods/goodsReservation.js"></script>
<script src="/knockusa/js/korEngVali.js"></script>
<script>
$(function(){
    var userMan = $('.requireInfo > .genderbox > input#male');
    var userWoman = $('.requireInfo > .genderbox > input#female');
    
    if(${user.user_gender}==1){
        userMan.prop("checked", true);
    }else if(${user.user_gender}==2){
        userWoman.prop("checked", true);
    }
});

</script>
<!-- 콘텐츠 -->
<main>
    <div class="reservation">
        <h1>예약하기</h1>
        <a href="/knockusa/goods/travelPackages?where=${goods.goods_country}&side=${goods.goods_side}">BACK→</a>
        <div class="reservation_detail">
            <form action="/knockusa/goods/reservation" method="post">
                <input type="hidden" name="purchase_goods_no" value="${goods.goods_no}" readonly onfocus='this.blur();'> <br>
                <div class="basicInfo">
                    <label for="goods_night">여행기간</label><input type="text" name="goods_night" value="${goods.goods_night}박  ${goods.goods_night+1}일 " readonly onfocus='this.blur();'> <br>
                    <label for="goods_start">여행출발</label><input type="text" name="goods_start" value="${goods.goods_start}" readonly onfocus='this.blur();'> <br>
                    <label for="goods_end">여행도착</label><input type="text" name="goods_end" value="${goods.goods_end}" readonly onfocus='this.blur();'> <br>
                    <label for="goods_price">1인당 여행가격(won)</label><input type="text" name="goods_price" value="${goods.goods_price}" readonly onfocus='this.blur();'> <br>
                </div>
                <div class="requireInfo">
                    <c:choose>
                    <c:when test="${user.user_id == null}">
                        <input type="hidden" name="purchase_id" value=""> <br>
                    </c:when>
                    <c:otherwise>
                        <label for="purchase_id">예약자 아이디</label><input type="text" name="purchase_id" value="${user.user_id}" readonly onfocus='this.blur();'> <br>
                    </c:otherwise>
                    </c:choose>
                    <label for="purchase_name_kor">예약자 성명</label><input type="text" class="nameKor" name="purchase_name_kor" value="${user.user_name}" minlength="2" required>
                    <p class="guideLine">여권 성명 기입바랍니다.</p>
                    <p class="requireLine"><strong>한글</strong>만 입력 가능합니다.</p><br>
                    <label for="purchase_name_eng">예약자 영문성명</label><input type="text" class="onlyEng" name="purchase_name_eng" value="" minlength="2" required>
                    <p class="guideLine">여권 영문성명 기입바랍니다.</p>
                    <p class="requireLine"><strong>영어</strong>만 입력 가능합니다.</p><br>
                    <div class="genderbox">
                        <span> 예약자 성별</span>
                        <input type="checkbox" id="male" name="purchase_gender" value="1" class="chk">
                        <label for="male" name="purchase_gender">남자</label>
                        <input type="checkbox" id="female" name="purchase_gender" value="2" class="chk">
                        <label for="female" name="purchase_gender">여자</label>
                    </div>  
                    <label for="purchase_hp">예약자 전화번호</label><input type="text" name="purchase_hp" value="${user.user_hp}" pattern="[0-9]{10,11}" maxlength="11" required>
                    <p class="guideLine">휴대폰 번호를 입력해주세요.</p>
                    <p class="requireLine">'-' 를 제외한 <strong>숫자</strong> 10-11자리를 입력해주세요.</p><br>
                    
                    <label for="purchase_email">예약자 이메일</label><input type="email" name="purchase_email" value="${user.user_email}" required><br>
                    <label for="purchase_extra">기타사항<br><br><br></label><textarea name="purchase_extra" placeholder="기타 참고사항을 적어주세요!"></textarea><br>
                    <input name="purchase_how_many_add" value="0" type="hidden" readonly onfocus='this.blur();' /><br>
                    <label for="purchase_accompany">예약자 동행여부</label>
                    <select type="text" name="purchase_accompany">
                        <option value="0">네</option>
                        <option value="1">아니요</option>
                    </select>    
                    <br>
                    <label for="purchase_how_many">총 여행인원</label><input name="purchase_how_many" value="1" readonly onfocus='this.blur();' /><br>
                    
                    <button type="button" class="addBtn resBtn">여행자 추가하기</button>
                    <div class="add addTravler1">
                        <label for="purchase_traveler_name_kor_1">여행자 성명</label><input type="text" class="nameKor" name="purchase_traveler_name_kor_1" value="" minlength="2"  />
                        <p class="guideLine">여권 성명 기입바랍니다.</p>
                        <p class="requireLine"><strong>한글</strong>만 입력 가능합니다.</p><br>
                        <label for="purchase_traveler_name_eng_1">여행자 영문 성명</label><input type="text" class="onlyEng" name="purchase_traveler_name_eng_1" value="" minlength="2"  />
                        <p class="guideLine">여권 영문성명 기입바랍니다.</p>
                        <p class="requireLine"><strong>영어</strong>만 입력 가능합니다.</p><br>
                        <div class="genderbox">
                            <span>여행자 성별</span>
                            <input type="checkbox" id="male1" name="purchase_traveler_gender_1" value="1" class="chk">
                            <label for="male1">남자</label>
                            <input type="checkbox" id="female1" name="purchase_traveler_gender_1" value="2" class="chk">
                            <label for="female1">여자</label>
                        </div>  
                        <label for="purchase_traveler_hp_1">여행자 전화번호</label><input type="text" name="purchase_traveler_hp_1" value="" pattern="[0-9]{10,11}" maxlength="11" required/>
                        <p class="guideLine">휴대폰 번호를 입력해주세요.</p>
                        <p class="requireLine">'-' 를 제외한 <strong>숫자</strong> 10-11자리를 입력해주세요.</p><br>
                        <button type="button" class="resBtn delBtn1">여행자 삭제하기</button>
                    </div>
                    <div class="add addTravler2">
                        <label for="purchase_traveler_name_kor_2">여행자 성명</label><input type="text" class="nameKor" name="purchase_traveler_name_kor_2" value="" minlength="2"  />
                        <p class="guideLine">여권 성명 기입바랍니다.</p>
                        <p class="requireLine"><strong>한글</strong>만 입력 가능합니다.</p><br>
                        <label for="purchase_traveler_name_eng_2">여행자 영문 성명</label><input type="text" class="onlyEng" name="purchase_traveler_name_eng_2" value="" minlength="2"  />
                        <p class="guideLine">여권 영문성명 기입바랍니다.</p>
                        <p class="requireLine"><strong>영어</strong>만 입력 가능합니다.</p><br>
                        <div class="genderbox">
                            <span>여행자 성별</span>
                            <input type="checkbox" id="male2" name="purchase_traveler_gender_2" value="1" class="chk">
                            <label for="male2">남자</label>
                            <input type="checkbox" id="female2" name="purchase_traveler_gender_2" value="2" class="chk">
                            <label for="female2">여자</label>
                        </div>  
                        <label for="purchase_traveler_hp_2">여행자 전화번호</label><input type="text" name="purchase_traveler_hp_2" value="" pattern="[0-9]{10,11}" maxlength="11"  />
                        <p class="guideLine">휴대폰 번호를 입력해주세요.</p>
                        <p class="requireLine">'-' 를 제외한 <strong>숫자</strong> 10-11자리를 입력해주세요.</p><br>
                        <button type="button" class="resBtn delBtn2">여행자 삭제하기</button>
                    </div>
                    <div class="add addTravler3">
                        <label for="purchase_traveler_name_kor_3">여행자 성명</label><input type="text" class="nameKor" name="purchase_traveler_name_kor_3" value="" minlength="2"  />
                        <p class="guideLine">여권 성명 기입바랍니다.</p>
                        <p class="requireLine"><strong>한글</strong>만 입력 가능합니다.</p><br>
                        <label for="purchase_traveler_name_eng_3">여행자 영문 성명</label><input type="text" class="onlyEng" name="purchase_traveler_name_eng_3" value="" minlength="2"  />
                        <p class="guideLine">여권 영문성명 기입바랍니다.</p>    
                        <div class="genderbox">
                            <span>여행자 성별</span>
                            <input type="checkbox" id="male3" name="purchase_traveler_gender_3" value="1" class="chk">
                            <label for="male3">남자</label>
                            <input type="checkbox" id="female3" name="purchase_traveler_gender_3" value="2" class="chk">
                            <label for="female3">여자</label>
                        </div>  
                        <label for="purchase_traveler_hp_3">여행자 전화번호</label><input type="text" name="purchase_traveler_hp_3" value="" pattern="[0-9]{10,11}" maxlength="11"  />
                        <p class="guideLine">휴대폰 번호를 입력해주세요.</p>
                        <p class="requireLine">'-' 를 제외한 <strong>숫자</strong> 10-11자리를 입력해주세요.</p><br>
                        <button type="button" class="resBtn delBtn3">여행자 삭제하기</button>
                    </div>
                    <div class="add addTravler4">
                        <label for="purchase_traveler_name_kor_4">여행자 성명</label><input type="text" class="nameKor" name="purchase_traveler_name_kor_4" value="" minlength="2"  />
                        <p class="guideLine">여권 성명 기입바랍니다.</p>
                        <p class="requireLine"><strong>한글</strong>만 입력 가능합니다.</p><br>
                        <label for="purchase_traveler_name_eng_4">여행자 영문 성명</label><input type="text" class="onlyEng" name="purchase_traveler_name_eng_4" value="" minlength="2"  />
                        <p class="requireLine"><strong>영어</strong>만 입력 가능합니다.</p><br> 
                        <div class="genderbox">
                            <span>여행자 성별</span>
                            <input type="checkbox" id="male4" name="purchase_traveler_gender_4" value="1" class="chk">
                            <label for="male4">남자</label>
                            <input type="checkbox" id="female4" name="purchase_traveler_gender_4" value="2" class="chk">
                            <label for="female4">여자</label>
                        </div>  
                        <label for="purchase_traveler_hp_4">여행자 전화번호</label><input type="text" name="purchase_traveler_hp_4" value="" pattern="[0-9]{10,11}" maxlength="11"  />
                        <p class="guideLine">휴대폰 번호를 입력해주세요.</p>
                        <p class="requireLine">'-' 를 제외한 <strong>숫자</strong> 10-11자리를 입력해주세요.</p><br>
                        <button type="button" class="resBtn delBtn4">여행자 삭제하기</button>
                    </div>
                </div>  
                <div class="btnbox">
                    <button type="submit" class="resBtn finalBtn">예약하기</button>
                    <button type="button" class="resBtn"><a href="/knockusa/goods/travelPackage?goods_no=${goods.goods_no}">취소하기</a></button>
                </div>
            </form>
        </div>
    </div>
</main>
<!-- 콘텐츠 끝 -->
<!-- 푸터 -->
<%@include file="../_footer.jsp"%>  