# Knock The USA Tour

### Knock The USA Tour - 여행사 사이트 포트폴리오

👉 [http://daham.cf/knockusa](http://daham.cf/knockusa)

작업인원 : 1명 

작업기간 : 약 2개월 (2020.01~ , 학원수입이 마친 저녁시간에 따로 시간을 내어 한 작업입니다.)

🖥 기본적인 기능 

- 회원가입
- 로그인
- 게시판

🖥 여행사사이트를 위한 기능 

- 여행 예약하기
- 여행 문의하기

🎈 AWS EC2 를 이용한 서버 구축 및 배포

🎈 GCP SQL 을 이용한 DB 구축

---

### Index Page

![Knock%20The%20USA%20Tour/index.png](Knock%20The%20USA%20Tour/index.png)

- 메인 / 여행상품 / 커뮤니티로 이동할 수 있는 Index 페이지.

### Main Page

![Knock%20The%20USA%20Tour/home1.png](Knock%20The%20USA%20Tour/home1.png)

- header에 로그인/회원가입/예약확인/이벤트 페이지 바로가기 설정, 즐겨찾기 추가 기능 설정
- 회사소개/여행상품/커뮤니티/고객센터 페이지 바로가기 설정
- '지역별 여행보기'에서 클릭 시 현재 날짜 이후의 해당 도시 여행상품 나열
- 월별 출발 상품 과 TODAY VIEW는 사이드메뉴로서 스크롤과 함께 따라다님

![Knock%20The%20USA%20Tour/home2.png](Knock%20The%20USA%20Tour/home2.png)

- '인기여행'에서는 현재 날짜 이후의 가장 조회수가 높은 여행상품 3가지 나열, 클릭 시 해당 상품페이지로 이동
- 아래 이벤트탭은 가장 최근의 이벤트 두가지 나열, 클릭 시 해당 페이지로 이동

![Knock%20The%20USA%20Tour/home3.png](Knock%20The%20USA%20Tour/home3.png)

- 관련있는 동영상 링크
- 공지사항 - 가장 최근의 공지사항 4개 글 나열
- 고객리뷰 - 가장 조회수가 높은 고객리뷰 노출
- footer 에 각종 기본적인 정보와 소개, 약관 페이지 링크

### Register 기능 구현

![Knock%20The%20USA%20Tour/register1.png](Knock%20The%20USA%20Tour/register1.png)

![Knock%20The%20USA%20Tour/register2.png](Knock%20The%20USA%20Tour/register2.png)

- 약관동의 및 필수 요구사항은 HTML required 기능과 JavaScript를 이용하여 진행.

### Login 기능 구현

![Knock%20The%20USA%20Tour/login1.png](Knock%20The%20USA%20Tour/login1.png)

![Knock%20The%20USA%20Tour/login2.png](Knock%20The%20USA%20Tour/login2.png)

- 로그인시 세션에 로그인정보가 저장됩니다.

### Main 1 - 여행 예약 기능

![Knock%20The%20USA%20Tour/main1.png](Knock%20The%20USA%20Tour/main1.png)

- '미국 & 캐나다' 메뉴를 클릭시 이동되는 여행상품 페이지
- 상품은 USA / CANADA 로 나뉘고 각각 서부/동부/그 외 로 총 6가지로 분류되어 나열

![Knock%20The%20USA%20Tour/main1-1.png](Knock%20The%20USA%20Tour/main1-1.png)

- 여행상품 클릭시 기본적인 여행정보와 사진들이 나열

( 정보나 사진이 실제 도시와의 차이가 있음은 오류가 아닙니다.)

![Knock%20The%20USA%20Tour/main1-2.png](Knock%20The%20USA%20Tour/main1-2.png)

- 월별 출발일 보기로 현재날짜 이후 같은 도시의 여행상품들을 나열
- 상품설명 / 상세일정 / 포함불포함/ 출발전 정보 는 각 DB에서 불러옴

( 각 여행상품의 설명과 일정이 차이있음은 오류가 아닙니다. )

![Knock%20The%20USA%20Tour/main1-3.png](Knock%20The%20USA%20Tour/main1-3.png)

- 여행상품 페이지에서 찜하기 클릭시 wishlist에 등록 (회원)
- 예약하기 클릭시 회원일 시 성명 등 기본 기입정보 자동기입된 채로 예약 시작
- 비회원일시 처음부터 모두 입력한 후 예약 시작

![Knock%20The%20USA%20Tour/main1-4.png](Knock%20The%20USA%20Tour/main1-4.png)

- 예약 성공 후 예약번호 지급, 예약번호로 비회원의 예약 확인 가능
- 회원은 로그인 후 예약확인 페이지에서 가능

![Knock%20The%20USA%20Tour/main1-5.png](Knock%20The%20USA%20Tour/main1-5.png)

![Knock%20The%20USA%20Tour/main1-6.png](Knock%20The%20USA%20Tour/main1-6.png)

- 예약확인 기능 (DB에서 불러온 단편적인 정보들, 아직 CSS작업이 필요한 공간입니다.)

### Main 2 - 문의기능

![Knock%20The%20USA%20Tour/main3.png](Knock%20The%20USA%20Tour/main3.png)

- 고객센터 - qna 클릭시 문의 가능, 여행 상품 페이지에서 문의하기 클릭 시 해당 상품에 대해 문의 가능

![Knock%20The%20USA%20Tour/main3-1.png](Knock%20The%20USA%20Tour/main3-1.png)

- 각 항목 입력 후 문의

![Knock%20The%20USA%20Tour/main3-2.png](Knock%20The%20USA%20Tour/main3-2.png)

- 비회원의 문의 확인하기
- 회원은 로그인 후 문의 확인 가능

![Knock%20The%20USA%20Tour/main3-3.png](Knock%20The%20USA%20Tour/main3-3.png)

![Knock%20The%20USA%20Tour/main3-4.png](Knock%20The%20USA%20Tour/main3-4.png)

- 문의리스트와 답변 내용 보기

### 아직 부족하지만 혼자서 꾸준히 해온 프로젝트 입니다.

### 여기까지 봐주셔서 감사합니다. 🙇‍♀️