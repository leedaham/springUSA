<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../_header.jsp"%>
<link rel="stylesheet" href="/knockusa/css/community/communityEvent.css">
<jsp:include page="../board/_aside_community.jsp" /> <%-- 표현언어는 태그요소에만 적용 됨 --%>
<script src="/knockusa/js/community/eventPage.js"></script>
        <h1>이벤트</h1>
        <div class="event_tit">
        <input type="hidden" name="when" value="${when}"/>
            <div class="tab">
                <div class="now on">
                    <a href="#"><h3>진행중인 이벤트</h3></a>
                </div>
                <div class="past">
                    <a href="#"><h3>지난 이벤트</h3></a>
                </div>
                <div class="win">
                    <a href="/knockusa/community?cate=eventWin"><h3>당첨자 발표</h3></a>
                </div>
            </div>
        </div>
        <div class="content">
            <div class="event_now on">
                <ul>
                    <li>
                        <a href="#">
                            <div class="imgbox">
                                <img src="../img/event1.jpg" alt="event1">
                            </div>
                            <div class="txtbox">
                                <span class="txt_tit">더하면, 더할수록! 더 커지는 할인!!!</span>
                                <span class="txt_date">2020-01-02 ~ 2020-12-31</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div class="imgbox">
                                <img src="../img/event2.png" alt="event2">
                            </div>
                            <div class="txtbox">
                                <span class="txt_tit">여행후기 쓰고 스타벅스 가즈아!</span>
                                <span class="txt_date">2020-01-02 ~ 2020-6-02</span>
                            </div>
                        </a>
                    </li>
                </ul>
            </div>
            <div class="event_past">
                <ul>
                    <li>
                        <a href="#">
                            <div class="imgbox">
                                <img src="../img/event1.jpg" alt="event1">
                            </div>
                            <div class="txtbox">
                                <span class="txt_tit">더하면, 더할수록! 더 커지는 할인!!!</span>
                                <span class="txt_date">2020-01-02 ~ 2020-12-31</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div class="imgbox">
                                <img src="../img/event2.png" alt="event2">
                            </div>
                            <div class="txtbox">
                                <span class="txt_tit">여행후기 쓰고 스타벅스 가즈아!</span>
                                <span class="txt_date">2020-01-02 ~ 2020-6-02</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div class="imgbox">
                                <img src="../img/event1.jpg" alt="event1">
                            </div>
                            <div class="txtbox">
                                <span class="txt_tit">더하면, 더할수록! 더 커지는 할인!!!</span>
                                <span class="txt_date">2020-01-02 ~ 2020-12-31</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div class="imgbox">
                                <img src="../img/event2.png" alt="event2">
                            </div>
                            <div class="txtbox">
                                <span class="txt_tit">여행후기 쓰고 스타벅스 가즈아!</span>
                                <span class="txt_date">2020-01-02 ~ 2020-6-02</span>
                            </div>
                        </a>
                    </li>
                </ul>
            </div>
            <div class="event_win">
                
            </div>
        </div>
    </div>
</main>
<!-- 콘텐츠 끝 -->
<%@include file="../_footer.jsp"%>  