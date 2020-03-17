<%@page import="com.model.MemberDAO"%>
<%@page import="com.model.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<!--
	Dimension by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<title>Dimension by HTML5 UP</title>
<script type="text/javascript" src="assets/js/jquery-3.4.1.min.js"></script>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />

</noscript>
<style>
img#img {
	width: 200px;
	height: 200px;
}

#popimg0 { /* 반응형 웹 -> 이미지 조절 법 */
	max-width: 100%;
	height: auto !important;
}

#popimg1 { /* 반응형 웹 -> 이미지 조절 법 */
	max-width: 100%;
	height: auto !important;
}

#mem {
	position: absolute !important;
	top: 30px !important;
	right: 35px !important;
	display: inline !important;
	float: right !important;
}

#mem li {
	float: right !important;
}

#wrapper {
	background-repeat: repeat;
	background-size: cover;
}

#videobcg {
	top: 0px;
	left: 0px;
	min-width: 100%;
	min-height: 100%;
	width: auto;
	height: auto;
	z-index: -1000;
	overflow: hidden;
}

#day {
	display: inline;
}

.a1:hover {
	color: red;
}

.a2:hover {
	color: blue;
}

#lan {
	top: 0px;
	width: 100%;
	height: 75px;
	background-color: rgba(1, 1, 1, 0.6);
	position: fixed;
}

#lan td {
	width: 50px;
}

#dropdownMenuButton {
	width: auto;
	height: 42px;
	font-size: 15px;
}

p#texttext, .intSE, article#Join, article#login, p#rate, .inTag a {
	color: white;
}

.linkcolor {
	color: white !important;
	font-weight: bold;
}

table tbody tr {
	border: solid 0px #ffffff;
	border-left: 0;
	border-right: 0;
}

.cont li a {
	box-sizing: content-box;
}

#headers {
	display: table;
	table-layout: fixed;
	border-spacing: 55px 20px;
}

.mainimg {
	width: 150px;
	height: 150px;
	border-radius: 70%;
	overflow: hidden;
	object-fit: cover;
	background-color: rgba(1, 1, 1, 0.6);
	display: table-cell;
	text-align: center;
	vertical-align: middle;
}

.linkcolor{
	font-size: 20px;
}

#OnTopMenu, #OffTopMenu{
	display: inline;
	width: 20%;
	height: 50px;
	position: absolute;
	left: 50%;
	top: 25px;
	font-size: 20px;
}
</style>


</head>
<body class="is-preload">
	<%
		MemberDTO info = (MemberDTO) session.getAttribute("info"); 
	%>
	<!-- Wrapper -->

	<div id="wrapper" style="position: relative;">

		<video id="videobcg" autoplay="autoplay" loop="loop" muted="muted"
			style="position: fixed;">
			<source src="video/seoul.mp4" type="video/mp4">
		</video>

		<!-- Header -->

		<div id="lan" style="z-index: 9999;">
			<%if(info!=null){%>
				<div id="OnTopMenu" class="topMenu" style="display:none;">
					<a class="" href="#intro">서비스</a>
					<a class="" href="#work">관광명소</a>
					<a class="" href="#about">랭킹</a>
					<a class="" href="K-survey.jsp">코스추천</a>
				</div>
			<%} else{ %>
				<div id="OffTopMenu" class="topMenu" style="display:none;">
					<a class="" href="#intro">서비스</a>
					<a class="" href="#work">관광명소</a>
					<a class="" href="#about">랭킹</a>
				</div>
			<% } %>
			<table style="width: 20%; position: absolute; right: 0px;display:inline-block;">
				<tr>
					<%
				if (info == null) {
			%>
					<td class="inTag"><a href="#Login">Login</a></td>

					<td class="inTag"><a href="#Join">Join </a></td>
					<%
				} else {
			%>
			
			<td class="inTag"><a
				href="#Login"><%=info.getId()%> </a></td>
			<td class="inTag"><a
				href="LogoutService.do?num=1">Logout </a></td>
			<td class="inTag"><a
				href="update.jsp">ChangeInfo</a></td>
			<% } %>

					<td>
						<link rel="stylesheet"
							href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
							integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
							crossorigin="anonymous"> <script
							src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
							integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
							crossorigin="anonymous"></script> <script
							src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
							integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
							crossorigin="anonymous"></script> <script
							src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
							integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
							crossorigin="anonymous"></script>
						<div class="dropdown">
							<button class="btn btn-secondary dropdown-toggle" type="button"
								id="dropdownMenuButton" data-toggle="dropdown"
								aria-haspopup="true" aria-expanded="false">LANGAUGE</button>
							<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
								<a class="dropdown-item" href="Korea.jsp">한국어</a> <a
									class="dropdown-item" href="English.jsp">English</a> <a
									class="dropdown-item" href="China.jsp">简体中文</a> <a
									class="dropdown-item" href="Japan.jsp">日本語</a> <a
									class="dropdown-item" href="Spain.jsp">Español</a> <a
									class="dropdown-item" href="French.jsp">Français</a>
							</div>
						</div>
					</td>
				</tr>
			</table>
		</div>

		<div id="headers">
			<div class="mainimg" style="font-size: 20px;">
				<a class="linkcolor" href="#intro">서비스</a>
			</div>
			<div class="mainimg" style="font-size: 20px;">
				<a class="linkcolor" href="#work">관광명소</a>
			</div>
			<div class="mainimg" style="font-size: 20px;">
				<a class="linkcolor" href="#about">랭킹</a>
			</div>
			<%if(info==null){%>
			<div class="mainimg">
				<a style="font-size: 20px;" class="linkcolor">코스추천</a>
			</div>
			<%}
					else{%>
			<div class="mainimg">
				<a style="font-size: 20px;" class="linkcolor" href="K-survey.jsp">넷</a>
			</div>
			<% } %>
			<!--<li><a href="#elements">Elements</a></li>-->

		</div>
		<script>
			$('.mainimg').on('click', function() {
				$('#headers').css({display : 'none'}), 
				$('.topMenu').css({display : 'block'});
			});
		</script>
		</header>

		<!-- Main -->
		<div id="main">


			<!-- Login -->
			<article id="Login">
				<form action="LoginService.do?num=1" method="post">
					<table>
						<tr>
							<td>아이디</td>
							<td><input placeholder="아이디 입력" type="text" name=id></td>
						</tr>
						<tr>
							<td>비밀번호</td>
							<td><input placeholder="비밀번호 입력" type="password" name=pw></td>
						</tr>
						<tr>
							<td></td>
							<td><input type=submit value="로그인"> <input
								type=reset value="초기화"></td>
						</tr>
					</table>
				</form>
			</article>


			<!-- Join -->
			<article id="Join">
				<form action="JoinService.do?num=1" method="post">
					<table>
						<tr>
							<td>아이디</td>
							<td><input id='search' placeholder="아이디 입력 " type="text"
								name=id></td>
							<td><button type="button" id="btn">입력</button></td>
						</tr>
						<tr>
							<td>비밀번호</td>
							<td colspan=2><input placeholder="비밀번호 입력 " type="password"
								name=pw></td>
						</tr>
						<tr>
							<td>비밀번호 확인</td>
							<td colspan=2><input placeholder="비밀번호 재입력 " type="password"
								name=pw></td>
						</tr>
						<tr>
							<td>이름</td>
							<td colspan=2><input placeholder="전화번호 입력 " type="text"
								name=name></td>
						</tr>
						<tr>
							<td>이메일</td>
							<td colspan=2><input placeholder="이메일 입력 " type="text"
								name=email></td>
						</tr>
						<tr>
							<td></td>
							<td colspan=2><input type=submit value="회원가입"> <input
								type=reset value="초기화"></td>
						</tr>
					</table>
				</form>
			</article>



			<!-- Intro -->
			<article id="intro" class="intSE conPage">

				<h2 class="major">서울, 새롭게 소개합니다.</h2>

				<span><img src="img/sese.PNG"/></span>
				<br /> <br />
				<p align="center">고객님의 소중한 정보를 받아,</p>
				<p align="center">
					한국관광공사에서 제공하는 <b>최신 년도별 외래관광객실태조사 데이터</b>를 토대로
				</p>
				<p align="center">자체 모델을 통한 분석 결과를 산출하고</p>
				<p align="center">
					당신의 편안하고 흥미로운 <b>서울 여행</b>을 준비하도록 도와드리겠습니다.
				</p>

			</article>

			<!-- Work -->

			<article id="work" class="conPage">
				<h1>서울 10대 랜드마크</h1>
				<h3 class="major1" href="#" style="display: inline;">
					<div id="day" class="a1">주간</div>
				</h3>
				<h3 class="major2" href="#" style="display: inline;">
					<div id="day" class="a2">야간</div>
				</h3>
				<div class='display'>
					<span><img id="popimg0" src="img/k1.PNG" alt="" /></span>
					<button class="ten" id="ko1">#경복궁</button>
					<button class="ten" id="ko2">#명동</button>
					<button class="ten" id="ko3">#인사동</button>
					<button class="ten" id="ko4">#코엑스</button>
					<button class="ten" id="ko5">#창덕궁</button>
					<button class="ten" id="ko6">#봉은사</button>
					<button class="ten" id="ko7">#63빌딩</button>
					<button class="ten" id="ko8">#전쟁기념관</button>
					<button class="ten" id="ko9">#북촌한옥마을</button>
					<button class="ten" id="ko10">#국립중앙박물관</button>
				</div>

				<div id='g'>
					<span><img id="popimg1" src="img/k1.PNG" alt="" /></span>
					<button class="next" id="k1">#경복궁</button>
					<button class="next" id="k2">#홍대</button>
					<button class="next" id="k3">#낙산공원</button>
					<button class="next" id="k4">#서울 N 타워</button>
					<button class="next" id="k5">#강남역</button>
					<button class="next" id="k6">#청계천</button>
					<button class="next" id="k7">#가로수길</button>
					<button class="next" id="k8">#여의도 한강 공원</button>
					<button class="next" id="k9">#롯데월드</button>
				</div>


				<script type="text/javascript">
					$(document).ready(function() {
						$('.display').show(); //페이지를 로드할 때 표시할 요소
						$('#g').hide(); //페이지를 로드할 때 숨길 요소
					});
					var btn1 = document.querySelector('.major1');

					btn1.addEventListener('click', function() {
						$('#g').hide();
						$('.display').show();
					});

					var btn2 = document.querySelector('.major2');
					btn2.addEventListener('click', function() {
						$('.display').hide(); //클릭 시 첫 번째 요소 숨김
						$('#g').show(); //클릭 시 두 번째 요소 표시
					});
				</script>
				<p id="texttext"></p>

			</article>



			<!-- About -->
			<article id="about" class="conPage">

				<h2 class="major">국가별 선호 여행지</h2>
				<div class="">
					<span class="image main"><img src="images/pic03.jpg" alt="" /></span>
					<button class="country" id="c1">미국</button>
					<button class="country" id="c2">중국</button>
					<button class="country" id="c3">일본</button>
					<button class="country" id="c4">독일</button>
					<button class="country" id="c5">프랑스</button>
					<button class="country" id="c6">영국</button>
					<button class="country" id="c7">러시아</button>
					<button class="country" id="c8">베트남</button>
					<button class="country" id="c9">홍콩</button>
					<button class="country" id="c10">중동</button>

				</div>

				<script type="text/javascript">
					$(document).ready(function() {
						$('.display').show(); //페이지를 로드할 때 표시할 요소
						$('#g').hide(); //페이지를 로드할 때 숨길 요소
					});
					var btn1 = document.querySelector('.major1');

					btn1.addEventListener('click', function() {
						$('#g').hide();
						$('.display').show();
					});

					var btn2 = document.querySelector('.major2');
					btn2.addEventListener('click', function() {
						$('.display').hide(); //클릭 시 첫 번째 요소 숨김
						$('#g').show(); //클릭 시 두 번째 요소 표시
					});
				</script>
				<p id="rate"></p>
			</article>

			<!-- Contact -->



			<!-- Elements -->


		</div>

		<!-- Footer -->
		<footer id="footer">
			<p class="copyright" style="color:#ffffff;">
				&copy; Team.Deep
			</p>
		</footer>

	</div>


<!-- 이 아래로는 모두 컨텐츠 내용 및 스크립트에 해당하는 내용 -->

	<p id="rate1">1.명동/남대문/북창 2.종로/청계 3.강남역 4.이태원 5.동대문 패션타운</p>
	<p id="rate2">1.명동/남대문/북창 2.동대문 패션타운 3.신촌/홍대 4.잠실(롯데월드) 5.종로/청계</p>
	<p id="rate3">1.명동/남대문/북창 2.동대문 패션타운 3.신촌/홍대 4.종로/청계 5.강남역</p>
	<p id="rate4">1.명동/남대문/북창 2.종로/총계 3.강남역 4.이태원 5.신촌/홍대</p>
	<p id="rate5">1.명동/남대문/북창 2.종로/총계 3.강남역 4.신촌/홍대 5.동대문 패션타운</p>
	<p id="rate6">1.명동/남대문/북창 2.종로/총계 3.강남역 4.동대문 패션타운 5.신촌/홍대</p>
	<p id="rate7">1.명동/남대문/북창 2.동대문 패션타운 3.종로/청계 4.강남역 5.이태원</p>
	<p id="rate8">1.명동/남대문/북창 2.동대문 패션타운 3.종로/청계 4.강남역 5.이태원</p>
	<p id="rate9">1.명동/남대문/북창 2.동대문 패션타운 3.신촌/홍대 4.종로/청계 5.강남역</p>
	<p id="rate10">1.명동/남대문/북창 2.동대문 패션타운 3.종로/청계 4.강남역 5.이태원</p>

	<script type="text/javascript">
		
		var text = document.querySelector('#rate');
		var popimgs = document.getElementById('popimg2');
		var rate1 = document.querySelector('#rate1')
		rate1.setAttribute('style', 'white-space: pre-line;');
		rate1.textContent;
		var rate2 = document.querySelector('#rate2');
		rate2.setAttribute('style', 'white-space: pre-line;');
		rate2.textContent;
		var rate3 = document.querySelector('#rate3');
		rate3.setAttribute('style', 'white-space: pre-line;');
		rate3.textContent;
		var rate4 = document.querySelector('#rate4');
		rate4.setAttribute('style', 'white-space: pre-line;');
		rate4.textContent;
		var rate5 = document.querySelector('#rate5');
		rate5.setAttribute('style', 'white-space: pre-line;');
		rate5.textContent;
		var rate6 = document.querySelector('#rate6');
		rate6.setAttribute('style', 'white-space: pre-line;');
		rate6.textContent;
		var rate7 = document.querySelector('#rate7');
		rate7.setAttribute('style', 'white-space: pre-line;');
		rate7.textContent;
		var rate8 = document.querySelector('#rate8');
		rate8.setAttribute('style', 'white-space: pre-line;');
		rate8.textContent;
		var rate9 = document.querySelector('#rate9');
		rate9.setAttribute('style', 'white-space: pre-line;');
		rate9.textContent;
		var rate10 = document.querySelector('#rate10');
		rate10.setAttribute('style', 'white-space: pre-line;');
		rate10.textContent;
		
		// 버튼 선택시 해당 버튼의 이미지 출력
		// 버튼 1
		$('#c1:button').on('click', function() {
			$('#popimg2').attr('src', 'img/pie/kp1.PNG');
			$('#rate').html(rate1);
		});

		// 버튼2
		$('#c2:button').on('click', function() {
			$('#popimg2').attr('src', 'img/pie/kp2.PNG');
			$('#rate').html(rate2);
		});
		// 버튼3
		$('#c3:button').on('click', function() {
			$('#popimg2').attr('src', 'img/pie/kp3.PNG');
			$('#rate').html(rate3);
		});
		// 버튼4
		$('#c4:button').on('click', function() {
			$('#popimg2').attr('src', 'img/pie/kp4.PNG');
			$('#rate').html(rate4);
		});
		// 버튼5
		$('#c5:button').on('click', function() {
			$('#popimg2').attr('src', 'img/pie/kp5.PNG');
			$('#rate').html(rate5);
		});
		// 버튼6
		$('#c6:button').on('click', function() {
			$('#popimg2').attr('src', 'img/pie/kp6.PNG');
			$('#rate').html(rate6);
		});
		// 버튼7
		$('#c7:button').on('click', function() {
			$('#popimg2').attr('src', 'img/pie/kp7.PNG');
			$('#rate').html(rate7);
		});
		// 버튼8
		$('#c8:button').on('click', function() {
			$('#popimg2').attr('src', 'img/pie/kp8.PNG');
			$('#rate').html(rate8);
		});
		// 버튼9
		$('#c9:button').on('click', function() {
			$('#popimg2').attr('src', 'img/pie/kp9.PNG');
			$('#rate').html(rate9);
		});
		// 버튼10
		$('#c10:button').on('click', function() {
			$('#popimg2').attr('src', 'img/pie/kp10.PNG');
			$('#rate').html(rate10);
		});
	</script>


	<p id="texttext1">전화번호 : 02-3700-3900 
	
		주소 : 서울 종로구 사직로 161 경복궁 지번 :
		
		세종로 1-91 개장 시간 : 매일 09:00 - 18:00(입장마감 17:00) 화요일 휴
		
		 대인(만25세~만64세) : 3,000원 만24세 이하 청소년 : 무료 장애인, 유공자 : 무료
		 
		 만65세 이상 어르신 : 무료 한복을 착용한 자 :무료

		경복궁은 대한민국을 대표하는 가장 큰 궁궐로 조선왕조의 번영에 큰 도움을 주었다. 경복궁의 크기는 방이 약 750개정도로 왕이
		집무를 보는 공간의 의미를 넘어 국가와 왕실의 크기를 상징적으로 보여주는 곳이었다고 한다. 조선의 건국부터 마지막까지 왕이
		집무를 보는 경복궁은 지금도 보존이 잘 되어 있어, 외국인 뿐만 아니라 한국인에게 지금까지 사랑받는 조선이라는 나라를 대표하는
		건축물 중 하나가 되었다. 경복궁은 정문 광화문을 따라 흥례문 ,근정문을 지나 오면 조선왕조를 대표하는 건축물이라는 것을
		한번에 알 수 있는 조선의 색을 담은 건물이라고 할수 있다.</p>
	<p id="texttext2">주소 : 서울 중구 명동
		
		대한민국에서 가장 비싼 땅인 명동은 서울특별시를 상징하는 번화가이다. 조선 시대에는 주택가였으나 일제강점기 충무로가 상업지역으로
		발전하며 인접지역인 명동도 상가형태로 변하게 되어 대한민국 최고의 번화가로 발돋움 하게 되었다. 명동은 유행의 선도자라고 불릴 정도로 거대한 쇼핑 문화가 형성되어 잇는데,
		국내 유명 백화점은 물론 명품,브랜드 매장뿐 만아니라 보세가게까지 다양한 상점이 있어 쇼핑에 최적화 되있다고 말할 수 있다. 또한
		명동에는 쇼핑과 함께 먹을거리,즐길거리 등이 있어 내국인 뿐만아니라 외국인들도 한국에서 즐길 수 있는 최적의 공간이라 불릴수
		있다.~</p>
	<p id="texttext3">주소 : 서울 종로구 인사동 인사동
	
		쌈지길은 서울시 종로구 인사동 내에 있는 건물을 말한다. 쌈지란 '주머니'를 뜻하는 순우리말이다.
		쌈지길은 '쌈지' 뒤에 '길'을 붙여 인사동 골목에 여러 문화적 재미요소를 더한다는 뜻을 지녔다.쌈지길은 가아 건축 연구소 최문규 건축가가 (주)쌈지의 권유로 만든 건물이다.
		쌈지길은 공예품전문 쇼핑몰로서 인사동에 관광명소가 되고 있다. 연면적 4,066.01m²(1,200여평)의 나선형 건물에 한국의 전통공예품 혹은
		한국의 멋이 풍기는 다양한 디자인의 70여개의 공예품점, 문화상품과 기념품가게, 갤러리, 음식점들이 모여있어 관광객들에게
		다양한 즐길거리를 제공한다. 건물에‘길’이 붙은 것은 4층 전체가 하나의 골목으로 연결됐기 때문이다. 마름모꼴의 마당을
		둘러싼‘ㅁ’자 형태다. 각 층은 완만한 경사로로 이어져 이곳저곳 가게를 구경하며 걷다보면 옥상의 하늘정원에 다다른다.또한
		쌈지길은 인사동길에 면해 있던'열두 가게' 를 그대로 유지함으로써 인사동길의 성격을 살리는 동시에, 건물 내부에 마당과
		오름길을 통해 인사동의 성격을 살림으로써, 창의적 재해석과 전통의 진화를 성공적으로 해석해냈다</p>
	<p id="texttext4">전화번호 : 02-6000-0114
	
		주소 : 서울 강남구 영동대로 513 지번 : 삼성동 159
		
		개장 시간 : 매일 10:00 - 18:00비고(행사 종료시간 상이)
		
		교통과 통신, 첨단 비즈니스 인프라를 두루 갖춘 글로벌 비즈니스의 메카이자 아시아 최고의 전시·문화·관광의 명소로서,국제 무역과 문화 교류의 장을 마련할 목적으로 1979년
		3월 개관한 한국 최대의 종합전시관이다. 총 1만 1000평(연면적 13만여 평)규모로,지상 4층,지하 4층으로 이루어져
		있으며, 12개의 전문 전시실과 7000명을 동시에 수용할 수 있는 컨벤션홀을 비롯해 61개의 회의실을 갖추고 있다. 또 국제
		비즈니스를 위한 종합적인 지원체제를 갖추고 연간 150여 회의 전문 전시회,각종 국제회의와 이벤트를 개최하는 한편, 해외
		유수의 바이어와 국내 수출입업체를 직접 연결시키는 등 교역 증대 역할도 한다.또한 코엑스내 아쿠아리움이 있어 한국인관광객 뿐만
		아니라 외국인 관광객들도 도심 속에서 큰 규모에 아쿠아리움을 구경할 수 있다.</p>
	<p id="texttext5">전화번호 : 02-3668-2300
	
		주소 : 서울 종로구 율곡로 99 지번 : 와룡동 2-71
		
		개장시간 : 매일 09:00 - 18:00(2월~5월, 9월~10월) , 매일 09:00 - 18:30(6월~8월), 매일 09:00 - 16:30(11월~1월) 월요일 휴무
		
		창덕궁은 서울시 종로구에 위치한 조선 시대의 궁궐이다. 건축과 조경이 잘 조화된 종합 환경디자인 사례이면서 동시에 한국적인 공간 분위기를 읽게 하는 중요한 문화유산이다.
		건축사에 있어 조선 시대 궁궐의 한 전형을 보여 주며, 후원의 조경은 우리나라의 대표적인 왕실 정원으로서 가치가 높다창덕궁은 불행한 역사 속에서
		탄생한 조선의 궁궐이라고 불리우는데,조선을 건국한 이성계의 아들들과 신하들 사이에서 권려 다툼이 벌어져 왕위 다툼을 하던중
		왕이 되었던 다섯째 아들이 왕이되었으나 형제들을 죽였던 경복궁으로 들어가는것을 싫어했던 태종은 새로운 궁궐을 지어 집무를
		보았는데, 그 궁궐이 창덕궁이다. 아픈 역사를 지닌 만큼 특별하고 볼 것이 많은 조선을 대표하는 대한민국을 대표하는 궁궐이다.</p>
	<p id="texttext6">전화번호 : 02-3218-4800
	
		주소 : 서울 강남구 봉은사로 531 봉은사 지번 : 삼성동 73
		
		봉은사는 평일과 휴일이 없이 언제나 기도하고 참배하는 사람들로 넘쳐 여느 절같지 않게 조금 낯설다. 종교가 일상과
		밀접하게 만나는 현장이라 할 수 있으나 차분하게 절을 돌아보고자 하는 사람들에게는 그리 좋지 않는 것도 사실이다. 항상 많은
		사람들이 기도하는 곳이다 보니 시설이나 공간이 늘어나야 해서 항상 봉은사는 공사중이라고 한다. 봉은사는 신라 우너성왕 때
		창건한 절로 조선 중종의 왕비 정현황후의 묘가 생겨 조선 왕실의 관심을 받고 발전하는 사찰이 되기 시작하였다. 흔히 우리가
		아는 절은 사람들이 살지 않는 산이나 일반 시민들의 생활반경 밖에 있는것이 많은데 봉은사는 서울 한가운데, 그것도 강남이라는
		서울에서 제일 유동인구가 많은 정중앙에 위치해 종교인들의 왕래가 많은것은 물론, 교통과 접근이 편리해 많은 외국인 종교인들도
		한번씩은 들러가는 대한민국을 대표하는 사찰이 되었다.</p>
	<p id="texttext7">전화번호 : 1833-7001
	
		주소 : 서울 영등포구 63로 50 한화금융센터_63 지번:여의도동 60 한화금융센터_63
		
		개장 시간 : 매일 10:00 - 22:00
		
		요금 : 63아트_성인(20세 이상) : 20,000원 63아트_어린이(13세 이하) : 16,000원 63아트_청소년(14 - 19세) : 18,000원 63아트
		
		커플권(63아트 2인/아메리카노2잔) : 43,000원 아쿠아플라넷63(20세이상) : 25,000원
		
		롯데 타워가 완공 되기전까지 서울을 대표하는 한국에서 가장 높은 건물 이었던 63빌딩은 대한민국 기업 '한화'가 1985년에 완공한 서울을
		대표하는 랜드마크로 자리잡았다. 당시, 고층 빌딩이 없던 한국에 한화라는 기업이 수익의 목적이 아닌 회사건물을 목적으로 건축
		했으나 대한민국의 랜드마크라는 타이틀까지 두마리 토끼를 한번에 잡은 케이스가 되기도 하였다. 롯데 타워와 다르게 한화와 다른
		기업들의 사무실등이 있고 각종 부대시설과 전망대, 지하에는 수족관 까지 초고층건물의 이점을 상술에 이용한 관광공간을 마련한
		점이 특징이다. 여의도에 있는 63빌딩은 전망대를 통해 서울 정중앙에서 제일 높은 전망대에서 서울을 전부 둘러 볼 수 있어
		아직도 많은 관광객들이 찾는 서울에 랜드마크중 한곳이라고 한다.</p>
	<p id="texttext8">전화번호 : 02-709-3139
	
		주소 : 서울 용산구 이태원로 29 전쟁기념관 지번 : 용산동1가 8 전쟁기념관
		
		개장시간 : 매일 09:30 - 18:00 월요일 휴무(월요일이 포함된 연휴때는 연휴 다음날 휴관)

		1950년 6월25일, 아직 동이 트기 전 모두가 잠든 새벽. 평화로운 한반도에 총성이 울려퍼졌다. 북한군이 남북
		군사분계선이던 38선을 넘어 남침하면서 시작된 6·25전쟁. 피를 나눈 한민족끼리의 전쟁은 미국·소련·중국의 개입으로
		1953년 7월 휴전협정 때까지 수많은 사상자를 내며 계속됐다. 일제강점기에서 벗어난 기쁨을 채 누리기도 전이었다. 반세기
		전, 이 땅에서 벌어졌던 역사를 기록한 용산의 전쟁기념관을 소개한다. 전쟁 기념관은 1층 전쟁역사실 2층 6.25전쟁실을 관람
		하게 된다.항상 하루에 2차례 문화해설사의 동행 관람을 통해 우리가 잘 알지 못했던 역사에 대해 조금 더 자세하게, 생생하게
		설명을 들을 수 있는 장점이 있다. 또한 전쟁역사실에서 지금까지의 한반도의 전쟁 역사를 한번에 확인할 수 있다. 전쟁 기념관은
		남.북으로 나눠져 있는 한반도 상황을 잘 알고 있는 독일인들에게 인기라고 한다. 전쟁기념관을 통해서 우리가 잊고 있던
		전쟁역사를 다시한번 느껴보는 것도 좋은 방법이라고 생각한다.</p>
	<p id="texttext9">전화번호 : 02-2133-1372
		
		주소 : 서울 종로구 계동길 37 지번 : 계동 105
		
		북촌문화센터 경복궁과 창덕궁, 금원(비원) 사이 북악산 기슭에 있는 한옥 보존지구로 청계천과 종로의 윗동네라는 뜻으로
		북촌이라고도 한다. 북촌은 고관대작들과 왕족, 사대부들이 모여서 거주해온 고급 살림집터로 한옥은 모두 조선시대의 기와집이다.
		원래 이 지역에는 솟을대문이 있는 집 몇 채와 30여 호의 한옥만이 있었으나 일제강점기 말부터 한옥이 많이 지어졌고,
		1992년 가회동한옥보존지구에서 해제되고, 1994년 고도제한이 풀리면서 일반 건물들이 많이 들어섰다. 총 2,297동의
		건물이 있는데, 이 가운데 1,408동이 한옥이고 나머지는 일반 건물이다. 북촌 거리에는 북촌양반생활문화전시관과 북촌 한옥촌
		상징조형물이 설치되어 있으며, 옛 선조의 생활모습을 구경할 수 있는 가회동 전통 마을축제가 열린다. 주변에
		경복궁·창덕궁·덕수궁·금원·삼청공원 등의 관광지가 있다. 창덕궁 전경이 잘 보이는 북촌 1경, 원서동 공방길은 북촌2경,
		가회동 11번지 일대는 북촌3경, 가회동 31번지 언덕이 4경, 한옥이 잘 보존되어 있는 가회동 내리막 골목길이 북촌5경,
		가회동 오르막 골목길이 북촌6경, 가회동 31번지가 북촌7경, 삼청동 돌계단길이 북촌8경을 통해 대한민국 선조들의 주거 형태를
		느껴 보는건 어떠한가?</p>
	<p id="texttext10">전화번호 : 02-2077-9000
	
		주소 : 서울 용산구 서빙고로 137 지번 : 용산동6가 168-6
		
		개장시간 : 월,화,목,금 10:00 - 18:00 , 수,토 10:00 - 21:00 , (일요일, 공휴일) 10:00 - 19:00
		
		휴무 : 1월1일,설날,추석날 / 상설전시실 휴실 : 4,11월 첫째 월요일 관람료 : 무료

		우리 역사의 소중한 유물들이 멋진 새 보금자리를 찾았다. 2005년 10월 개관한 국립중앙박물관은 30만㎡의 방대한 공간에
		30만여 점(2012년 1월 기준)의 유물을 보관, 전시하는 세계적 규모의 박물관이다. 용산의 옛 주한미군부대 자리에 위치한
		이곳은 자연과 인공의 조화를 소중히 여긴 선조들의 지혜를 이어받아 호수와 정원이 어우러지게 설계를 하였으며 남산과 한강이
		둘러싸는 ‘배산임수(背山臨水)’의 장소에 자리 잡았다. 지하 1층 지상 6층의 박물관 건물은 두 개의 건물이 하나로 연결된 듯
		이어지는 외관에 전시 공간과 유물의 보관 공간, 연구 공간과 각종 부대시설이 모여 있다. 건물 내부로 들어서면 경천사
		십층석탑과 고달사 쌍사자 석등이 자리 잡은 중앙 통로인 ‘역사의 길’을 중심으로 6개의 상설 전시관이 운영되고 있다. 세 개
		층 좌우로 선사·고대관, 중·근세관, 기증관, 서화관, 아시아관, 조각·공예관으로 나뉘어 15,000여 점의 유물이 전시되고
		있다. 전체 유물을 꼼꼼히 살핀다면 약 일주일의 시간이 걸린다는 방대한 규모이니 박물관이 선정한 ‘중요 유물 100선’ 등의
		코스 선택을 하거나 시간을 가지고 나누어 관람하는 요령이 필요하다. 전시관 단위로 운영되는 해설사의 안내 시간을 이용하거나
		자동 안내기를 사용하는 것도 좋은 방법이다. 유물의 전시는 기존의 나열식 방법에서 벗어나 각 유물의 가치를 돋보이게 하는
		첨단의 조명과 특수효과 등이 사용되어 더욱 흥미롭다. 또한 그동안 보기 힘들었던 수많은 외국 유물들을 상설전시해 아시아의 중심
		박물관으로서 위상을 높여가고 있다. 상설전시관과 더불어 기획전시관, 어린이전시관, 야외전시관들이 볼거리를 더하며 전문 공연장과
		도서관까지 자리하는 종합 문화 공간이다. 박물관 곳곳에 자리하는 식당 공간도 특색을 지닌 먹거리를 준비하고 있다. 홈페이지
		등을 통하여 사전에 정보를 준비한다면 더욱 알찬 시간여행을 떠날 수 있다.</p>

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>
	<script src="assets/js/jquery-3.4.1.min.js"></script>

	<!-- BG -->
	<script type="text/javascript">
		
		var text = document.querySelector('#texttext');
		var popimgs = document.getElementById('popimg0');
		var test1 = document.querySelector('#texttext1')
		test1.setAttribute('style', 'white-space: pre-line;');
		test1.textContent;
		var test2 = document.querySelector('#texttext2');
		test2.setAttribute('style', 'white-space: pre-line;');
		test2.textContent;
		var test3 = document.querySelector('#texttext3');
		test3.setAttribute('style', 'white-space: pre-line;');
		test3.textContent;
		var test4 = document.querySelector('#texttext4');
		test4.setAttribute('style', 'white-space: pre-line;');
		test4.textContent;
		var test5 = document.querySelector('#texttext5');
		test5.setAttribute('style', 'white-space: pre-line;');
		test5.textContent;
		var test6 = document.querySelector('#texttext6');
		test6.setAttribute('style', 'white-space: pre-line;');
		test6.textContent;
		var test7 = document.querySelector('#texttext7');
		test7.setAttribute('style', 'white-space: pre-line;');
		test7.textContent;
		var test8 = document.querySelector('#texttext8');
		test8.setAttribute('style', 'white-space: pre-line;');
		test8.textContent;
		var test9 = document.querySelector('#texttext9');
		test9.setAttribute('style', 'white-space: pre-line;');
		test9.textContent;
		var test10 = document.querySelector('#texttext10');
		test10.setAttribute('style', 'white-space: pre-line;');
		test10.textContent;
		// 버튼 1
		$('#ko1:button').on('click', function() {

			$('#popimg0').attr('src', 'img/place1.PNG');
			$('#texttext').html(test1);
		});

		// 버튼2
		$('#ko2:button').on('click', function() {
			$('#popimg0').attr('src', 'img/place2.PNG');
			$('#texttext').html(test2);
		});
		// 버튼3
		$('#ko3:button').on('click', function() {
			$('#popimg0').attr('src', 'img/place3.PNG');
			$('#texttext').html(test3);
		});
		// 버튼4
		$('#ko4:button').on('click', function() {
			$('#popimg0').attr('src', 'img/place4.PNG');
			$('#texttext').html(test4);
		});
		// 버튼5
		$('#ko5:button').on('click', function() {
			$('#popimg0').attr('src', 'img/place5.PNG');
			$('#texttext').html(test5);
		});
		// 버튼6
		$('#ko6:button').on('click', function() {
			$('#popimg0').attr('src', 'img/place6.PNG');
			$('#texttext').html(test6);
		});
		// 버튼7
		$('#ko7:button').on('click', function() {
			$('#popimg0').attr('src', 'img/place7.PNG');
			$('#texttext').html(test7);
		});
		// 버튼8
		$('#ko8:button').on('click', function() {
			$('#popimg0').attr('src', 'img/place8.PNG');
			$('#texttext').html(test8);
		});
		// 버튼9
		$('#ko9:button').on('click', function() {
			$('#popimg0').attr('src', 'img/place9.PNG');
			$('#texttext').html(test9);
		});
		// 버튼10
		$('#ko10:button').on('click', function() {
			$('#popimg0').attr('src', 'img/place10.PNG');
			$('#texttext').html(test10);
		});
	</script>
	<p id="texttext11">경복궁 야간개장 기간 : 매년 4월말 ~ 11월 초 장소 : 경복궁 주최 : 문화재청

		요금 : 일반인 : 3000원 만 65세 어르신, 외국인 : 3000원 한복착용자 : 무료</p>
	<p id="texttext22">홍대거리에는 이색카페들, 소규모 갤러리와 화랑, 소품점과 패션숍, 라이브카페와 클럽,
		예술시장, 각종 맛집 등은 홍대거리를 더욱 자유스럽게 만든다. 다양한 행사와 거리공연, 축제 등의 문화요소를 간직하고 있어
		홍대주변은 항상 많은 사람들로 북적거린다. 또한, 홍대주변을 구성하는 미술학원거리, 피카소거리, 클럽거리, 걷고 싶은거리 등
		이색거리가 홍대거리로의 발걸음을 즐겁게 한다. 홍대 걷고싶은거리 : 홍대 걷고싶은거리는 홍대를 대표하는 곳으로 야외 무대
		공연장을 설치해 인디밴드의 거리공연과 젊은이들의 역동적인 모습을 느낄 수 있는 곳이다. 홍대 벽화거리 : 홍대 벽화거리는
		홍익대학교 후문에 위치한 카네마야 제면소부터 포시즌하우스까지 이어지는 와우산로 22길에 펼쳐져 있다.낙서 같은 그림도 많으나
		디자인 예술에 가까운 벽화도 많아 피카소 거리라고 불리며, 연인들의 데이트 코스로 널리 알려져있다. 홍대앞 예술시장 프리마켓
		/ 홍대앞 희망시장 : 홍익대 정문 앞 홍익어린이 공원에서는 매년 3월부터 11월까지 매주 토요일은 홍대앞 예술시장
		프리마켓이, 매주 일요일은 홍대앞 희망시장이 열린다.각각의 예술시장에서는 일반 시민작가들의 참여와 손으로 직접 만든 수공예품
		판매,생활창작 아티스트들의 작품전시 및 판매가 이루어진다.</p>
	<p id="texttext33">주소 : 서울 종로구 낙산길 41 동숭동 산2-10 수도 서울을 구성하는
		내사산(內四山:북악산·남산·인왕산·낙산)의 하나이자 주산(主山)인 북악산의 좌청룡(左靑龍)에 해당하는 낙산의 자연환경과 역사적
		문화환경을 복원함으로써 서울시민들에게 쾌적한 공원 경관을 제공하고, 자연 탐방을 통해 역사와 문화 교육의 장을 제공할 목적으로
		조성되었다. 총면적은 6만 1145평으로, 1999년 12월 30일 착공해 2002년 7월 완공하였다. 주요 시설은 ① 전시
		및 관리실, 매점 및 화장실, 비우당(庇雨堂), 육각 정자, 노인정 등 건축시설 5동 ② 12개의 배드민턴장과 1개의
		농구장으로 이루어진 운동시설 ③ 10개의 휴게소와 117개의 의자로 구성된 편의시설 ④ 중앙광장·이벤트광장 및 3개의
		전망광장으로 이루어진 광장시설 ⑤ 기타 안내판 외 28개 시설 등이다. 그 외에 공원 녹지화를 위해 소나무를 포함해 총 40종
		8만 9670그루의 나무를 심었다. 주변 유적으로는 서울 동대문(東大門:보물 1), 서울성곽(사적 10),
		이화장(梨花莊:서울기념물 6) 등이 있다. 그 밖에 마을 전체가 온통 붉은 열매를 맺는 나무로만 둘러싸여 있다 해서 이름
		붙여진 홍수동(紅樹洞:홍숫골), 단종이 영월(寧越) 청령포(淸泠浦)에서 귀양살이할 때 왕비가 저고리깃·댕기 등에 자줏빛 물을
		들이기 위해 사용했다는 자지동천(紫芝洞泉:자주동천·자주우물), 《지봉유설(芝峰類說)》의 저자 이수광(李晬光)이 외조부의 집을
		손질하며 겨우 비만 가릴 수 있는 집이라는 뜻으로 당호를 붙인 비우당, 우물이 나란히 5개가 있어 이름 붙여진 오형제 우물터,
		오부학당 가운데 하나인 동부학당 터 등이 있다.</p>
	<p id="texttext44">주소 : 서울 용산구 남산공원길 103 서울타워 개장 시간 : 매일 11:00 -
		20:00 요금 : 전망대 (대인) 11,000원 전망대(소인) 9000원 제1의 관광명소 남산서울타워 국내외 관광객들이 년
		1,200만 명 방문하는 서울 제1의 관광명소인 남산서울타워 최근 한류 바람을 몰고 각종 예능, 드라마의 촬영지로 이름이
		높아지면서 관광객 방문이 더욱 늘어나는 추세입니다. 서울 중심부에 위치해 360도 전방향으로 서울 시내를 훤히 내려다볼 수
		있는 천혜의 입지 조건을 갖추고 있어, 세계 최대의 여행 출판사인 론리 플래닛이 선정한 세계 500대 관광지에 뽑히기도
		했습니다. 최근 사무동을 리모델링해 오픈한 서울타워플라자엔 다양한 편의시설과 볼거리, 식음료 매장을 갖춰 관광객에게 서비스를
		제공합니다.</p>
	<p id="texttext55">전화번호 : 02-2290-6114 주소 : 서울 종로구 창신동 우리 역사의 소중한
		유물들이 멋진 새 보금자리를 찾았다. 2005년 10월 개관한 국립중앙박물관은 30만㎡의 방대한 공간에 30만여 점(2012년
		1월 기준)의 유물을 보관, 전시하는 세계적 규모의 박물관이다. 용산의 옛 주한미군부대 자리에 위치한 이곳은 자연과 인공의
		조화를 소중히 여긴 선조들의 지혜를 이어받아 호수와 정원이 어우러지게 설계를 하였으며 남산과 한강이 둘러싸는
		‘배산임수(背山臨水)’의 장소에 자리 잡았다. 지하 1층 지상 6층의 박물관 건물은 두 개의 건물이 하나로 연결된 듯 이어지는
		외관에 전시 공간과 유물의 보관 공간, 연구 공간과 각종 부대시설이 모여 있다. 건물 내부로 들어서면 경천사 십층석탑과 고달사
		쌍사자 석등이 자리 잡은 중앙 통로인 ‘역사의 길’을 중심으로 6개의 상설 전시관이 운영되고 있다. 세 개 층 좌우로
		선사·고대관, 중·근세관, 기증관, 서화관, 아시아관, 조각·공예관으로 나뉘어 15,000여 점의 유물이 전시되고 있다. 전체
		유물을 꼼꼼히 살핀다면 약 일주일의 시간이 걸린다는 방대한 규모이니 박물관이 선정한 ‘중요 유물 100선’ 등의 코스 선택을
		하거나 시간을 가지고 나누어 관람하는 요령이 필요하다. 전시관 단위로 운영되는 해설사의 안내 시간을 이용하거나 자동 안내기를
		사용하는 것도 좋은 방법이다. 유물의 전시는 기존의 나열식 방법에서 벗어나 각 유물의 가치를 돋보이게 하는 첨단의 조명과
		특수효과 등이 사용되어 더욱 흥미롭다. 또한 그동안 보기 힘들었던 수많은 외국 유물들을 상설전시해 아시아의 중심 박물관으로서
		위상을 높여가고 있다. 상설전시관과 더불어 기획전시관, 어린이전시관, 야외전시관들이 볼거리를 더하며 전문 공연장과 도서관까지
		자리하는 종합 문화 공간이다. 박물관 곳곳에 자리하는 식당 공간도 특색을 지닌 먹거리를 준비하고 있다. 홈페이지 등을 통하여
		사전에 정보를 준비한다면 더욱 알찬 시간여행을 떠날 수 있다.</p>
	<p id="texttext66">6번</p>
	<p id="texttext77">7번</p>
	<p id="texttext88">8번</p>
	<p id="texttext99">전화번호 : 02-1661-2000 주소 : 서울 송파구 올림픽로 240 지번 :
		잠실동 40-1 요금 : 자유이용권(성인 : 56,000원 청소년 : 50,000원 어린이 : 46.000원)

		After4(성인 : 45,000원 청소년 40.000원, 어린이 : 35,000원) 롯데그룹이 국민들의 여가 선용과 외국인
		관광객 유치를 위해 설립하고 운영하고 있는 테마파크이다. 롯데월드는 모험과 신비를 주제로 한 실내 주제공원인 롯데월드
		어드벤처, 호수공원인 매직아일랜드, 쇼핑몰, 민속박물관, 아이스링크, 호텔, 백화점 등으로 구성되어 관광, 레저, 쇼핑,
		문화를 한곳에서 해결할 수 있는 대단위 복합생활공간이다. 롯데월드 어드벤처에서는 최첨단 탑승시설을 비롯하여, 환상적인
		퍼레이드, 각종 영상 시스템, 레이져쇼, 공연, 각국의 음식을 연중무휴로 즐길 수 있다. 롯데월드 어드벤처는 세계에서 가장 큰
		실내 테마파크이다. 민속박물관에는 한국의 오천년 역사와 민속 문화가 역사전시관, 모형촌, 놀이마당, 저자거리로 나누어져 쉽고
		재미있게 재현되어 있다. 롯데월드 가든스테이지는 롯데월드 공연의 중심무대로 각종 시즌 뮤지컬 쇼, 공개방송 등의 다양한
		이벤트가 진행된다. 롯데월드 스타에비뉴는 한류스타 조성거리로 체험형 엔터테인먼트 시설이다.</p>



	<div id="bg"></div>
	<script type="text/javascript">
		var text = document.querySelector('#texttext');
		var popimgs = document.getElementById('popimg0');
		var test11 = document.querySelector('#texttext11');
		test11.setAttribute('style', 'white-space: pre-line;');
		test11.textContent;
		var test22 = document.querySelector('#texttext22');
		test22.setAttribute('style', 'white-space: pre-line;');
		test22.textContent;
		var test33 = document.querySelector('#texttext33');
		test33.setAttribute('style', 'white-space: pre-line;');
		test33.textContent;
		var test44 = document.querySelector('#texttext44');
		test44.setAttribute('style', 'white-space: pre-line;');
		test44.textContent;
		var test55 = document.querySelector('#texttext55');
		test55.setAttribute('style', 'white-space: pre-line;');
		test55.textContent;
		var test66 = document.querySelector('#texttext66');
		test66.setAttribute('style', 'white-space: pre-line;');
		test66.textContent;
		var test77 = document.querySelector('#texttext77');
		test77.setAttribute('style', 'white-space: pre-line;');
		test77.textContent;
		var test88 = document.querySelector('#texttext88');
		test88.setAttribute('style', 'white-space: pre-line;');
		test88.textContent;
		var test99 = document.querySelector('#texttext99');
		test99.setAttribute('style', 'white-space: pre-line;');
		test99.textContent;
		// 버튼 1
		$('#k1:button').on('click', function() {
			$('#popimg1').attr('src', 'img/night1.PNG');
			$('#texttext').html(test11);
		});
		// 버튼2
		$('#k2:button').on('click', function() {
			$('#popimg1').attr('src', 'img/night2.PNG');
			$('#texttext').html(test22);
		});
		// 버튼3
		$('#k3:button').on('click', function() {
			$('#popimg1').attr('src', 'img/night3.PNG');
			$('#texttext').html(test33);
		});
		// 버튼4
		$('#k4:button').on('click', function() {
			$('#popimg1').attr('src', 'img/night4.PNG');
			$('#texttext').html(test44);
		});
		// 버튼5
		$('#k5:button').on('click', function() {
			$('#popimg1').attr('src', 'img/night5.PNG');
			$('#texttext').html(test55);
		});
		// 버튼6
		$('#k6:button').on('click', function() {
			$('#popimg1').attr('src', 'img/night6.PNG');
			$('#texttext').html(test66);
		});
		// 버튼7
		$('#k7:button').on('click', function() {
			$('#popimg1').attr('src', 'img/night7.PNG');
			$('#texttext').html(test77);
		});
		// 버튼8
		$('#k8:button').on('click', function() {
			$('#popimg1').attr('src', 'img/night8.PNG');
			$('#texttext').html(test88);
		});
		// 버튼9
		$('#k9:button').on('click', function() {
			$('#popimg1').attr('src', 'img/night9.jpg');
			$('#texttext').html(test99);
		});
	</script>

	<script type="text/javascript">
			
			$('#btn').on('click',play);
			
      function play(){
         var id = $('#search').val();
         console.log(id);
         
         $.ajax({
            url : "IdCheckService.do",
            type : "POST",
            dataType : "json",
            data : 'id='+id,
            success : function(result){
            	if(result == true)
            		alert("아이디가 중복되었습니다.");
            	else
            		alert("사용가능한 아이디입니다.");
            },
            error : function(){
            	console.log(2);
            }
         });
      }  
   </script>
   
</body>
</html>
