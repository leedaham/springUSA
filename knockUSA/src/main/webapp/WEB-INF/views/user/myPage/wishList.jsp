<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../../_header.jsp"%>
<%@include file="./_aside_myPage.jsp"%>
            <h1>my page</h1>
            <div class="">
            	<c:forEach var="wishList" items="${wishList}">
            		<span><a href="/knockusa/goods/travelPackage?goods_no=${wishList.wish_goods_no}">${wishList.goods_title}</a></span>
            		<span>${wishList.goods_price}</span>
            		<button type="button"><a href="/knockusa/user/myPage/wishList/delete?wish_no=${wishList.wish_no}">삭제하기</a></button><br>
            	</c:forEach>
            </div>
            
        </div>
    </main>
    <!-- 콘텐츠 끝 -->
    <%@include file="../../_footer.jsp"%>  