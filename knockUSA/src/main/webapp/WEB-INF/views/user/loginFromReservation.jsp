<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Index</title>
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/userLogin.css">

</head>
<body>
    <!-- 사이드배너 -->
    <div id="side_banner">
        <div class="monthlylist">
            <a href="../goods/monthlyStartingItems.html">
                <span>Knock The USA Tour</span>
                <h3>월별 출발 상품</h3>
            </a>
        </div>
        <div class="todayview">
            <div class="todaytitle">
                <span>TODAY VIEW</strong>
            </div>
            <div>
                <p>오늘 본 상품이 없습니다.</p>
            </div>
            <div></div>
        </div>
        <div class="topmove">
            <a href="#top_header">TOP</a>
        </div>
    </div>
    <!-- 사이드배너 끝 -->
    <!-- 헤더 -->
    <header>
        <div id="top_header">
            <div>
                <ul>
                    <li><a href="../index.html">first page</a></li>
                    <li><a href="./login.html">로그인</a></li>
                    <li><a href="./registerStep1.html">회원가입</a></li>
                    <li><a href="./myPage/reserList.html">예약확인</a></li>
                    <li><a href="../community/eventNow.html">이벤트</a></li>
                    <li><a href="">즐겨찾기 +</a></li>
                </ul>
            </div>
        </div>
        <div id="nav_header">
            <div class="gnb">
                <div class="logo">
                    <a href="../home.html"></a>
                </div>
                <div><a href="../introduce/introduce.html"><h3>회사소개</h3></a></div>
                <div><a href="../goods/travelPackagesUSA.html"><h3>미국&캐나다</h3></a></div>
                <div><a href="../community/notice.html"><h3>커뮤니티</h3></a></div>
                <div><a href="../customer/faq.html"><h3>고객센터</h3></a></div>
            </div>

        </div>
    </header>
    <!-- 헤더 끝 -->
    <!-- 콘텐츠 -->
    <main>
        <div>
            <h1>로그인</h1>
            <div class="login_from_resv">
                <form action="#" method="POST" class="member"> 
                    <input type="hidden" name="" value="">
                    <div class="loginbox_member">
                        <h3>회원 로그인</h3>
                        <span class="row">
                            <span>ID</span>
                            <input type="text" name="userID" title="아이디">
                        </span>
                        <span class="row">
                            <span>PassWord</span>
                            <input type="password" name="userPW" title="비밀번호">
                        </span>
                        <span class="id_save_row">
                            <input type="checkbox" id="id_save" name="memoryId" class="chk">
                            <label for="id_save">아이디저장</label>
                        </span>
                        <button type="submit" class="btn btn_login">로그인</button>
                        <div>
                            <button type="button" class="btn btn_login_other">회원가입</button>
                            <button type="button" class="btn btn_login_other">아이디/비밀번호 찾기</button>
                        </div>
                    </div>
                </form>
                <div class="non_member">
                    <h3>비회원 </h3>
                    <span>
                        웹사이트 회원가입을 하시면, <br>
                        회원님만의 다양한 서비스를 <br> 
                        이용하실 수 있습니다.
                    </span>
                    <div>
                        <button type="button" class="btn btn_login"><a href="#">비회원 예약하기</a></button>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <!-- 콘텐츠 끝 -->
    <!-- 푸터 -->
    <footer>
        <div id="top_footer">
            <div>
                <ul>
                    <li><a href="../introduce/introduce.html">Knock The USA Tour 소개 |</a></li>
                    <li><a href="../terms/chiefPrivacy.html"> 개인정보처리방침 |</a></li>
                    <li><a href="../terms/standardTerm.html"> 해외여행약관 |</a></li>
                    <li><a href="../introduce/direction.html"> 찾아오시는 길</a></li>
                </ul>
            </div>
        </div>
        <div id="bot_footer">
            <div>
                <div>
                    <p>
                        ㈜ 낙더유에스에이투어 부산광역 기 해운대구 해운대해변로 <br>
                        대표이사 : 더조은 | 개인정보관리책임자 : 이노크(knockknock@gmail.com) | 대표전화 : 051-111-2222 <br>
                        사업자등록번호 : 333-22-11111 | 통신판매업신고번호 : 제 2020-부산해운대-0000 호 | 관광 사업자 등록번호 : 제 2020-202020호 <br>
                        <br>
                        <br>
                        <span>Copyright ⓒ 2020 Knock The USA Tour. All Rights Reserved.</span>
                    </p>
                </div>
                <div class="sns">
                    <div></div>
                </div>
            </div>
        </div>
    </footer>
    <!-- 푸터 끝 -->
</body>
</html>