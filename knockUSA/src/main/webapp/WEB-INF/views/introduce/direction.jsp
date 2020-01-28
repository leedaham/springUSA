<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../_header.jsp"%>
<main class="direction">
    <div class="intro introduce3">
    <%@include file="./_aside_introduce.jsp"%>
        <h1>찾아오시는 길</h1>
        <div class="content">
            <h3>
                주소 : ㈜ 낙더유에스에이투어 부산광역 기 해운대구 해운대해변로 <br>
                전화 : 051-111-2222
            </h3>
            <div class="map">
                <!-- * 카카오맵 - 지도퍼가기 -->
                <!-- 1. 지도 노드 -->
                <div id="daumRoughmapContainer1577757861494" class="root_daum_roughmap root_daum_roughmap_landing"></div>

                <!--
                    2. 설치 스크립트
                    * 지도 퍼가기 서비스를 2개 이상 넣을 경우, 설치 스크립트는 하나만 삽입합니다.
                -->
                <script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>

                <!-- 3. 실행 스크립트 -->
                <script charset="UTF-8">
                    new daum.roughmap.Lander({
                        "timestamp" : "1577757861494",
                        "key" : "wfp9",
                        "mapWidth" : "800",
                        "mapHeight" : "500"
                    }).render();
                </script>
            </div>
        </div>
    </div>
</main>
<!-- 콘텐츠 끝 -->
<%@include file="../_footer.jsp"%>