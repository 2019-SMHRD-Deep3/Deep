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
	position: absolute;
}

#lan td {
	width: 50px;
}

#dropdownMenuButton {
	width: auto;
	height: 42px;
	font-size: 15px;
}

p#texttext {
	color: white;
}

.intSE {
	color: white;
}

article#Join {
	color: white;
}

article#login {
	color: white !important;
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

.inTag a {
	color: white !important;
}
p#rate{
	color: white;
}

#headers{
	display:table;
	table-layout: fixed;
	border-spacing: 55px 20px;

}
.mainimg {
    width: 150px;
    height: 150px; 
    border-radius: 70%;
    overflow: hidden;
    object-fit: cover;
    background-color: rgba(1,1,1,0.6);
	display: table-cell;
	text-align: center;
	vertical-align: middle;
}

</style>


</head>
<body class="is-preload">
	<%
		MemberDTO info = (MemberDTO) session.getAttribute("info"); 
	%>
	<!-- Wrapper -->

	<div id="wrapper" position=relative;>
		<video id="videobcg" autoplay="autoplay" loop="loop" muted="muted"
			style="position: fixed;">
			<source src="video/seoul.mp4" type="video/mp4">
		</video>

		<!--         <script>
				document.getElementById("videobcg").play();
			</script> -->

		<!-- Header -->
	<div  id="lan" style="position: absolute; right: 0px;">
	<table style="width:20% ;position: absolute; right: 0px;" >
	
			<%
				if (info == null) {
			%>
			<td class="inTag"><a
				href="#Login">Login</a></td>
			<td class="inTag"><a
				href="#Join">Join </a></td>
			<%
				} else {
			%>
			<td class="inTag"><a
				href="#Login"><%=info.getId()%> </a></td>
			<td class="inTag"><a
				href="LogoutService.do?num=4">Logout </a></td>
			<td class="inTag"><a
				href="En_update.jsp">ChangeInfo</a></td>
			<%
				}
			%>

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

		</table>
	</div>
		<header>
			
				<div id="headers">
					<div class = "mainimg" style="font-size: 20px;"  ><a class="linkcolor" href="#intro">Service</a></div>
					<div class = "mainimg" style="font-size: 20px;"  ><a class="linkcolor" href="#work">Attractions</a></div>
					<div class = "mainimg" style="font-size: 20px;"  ><a class="linkcolor" href="#about">Top5</a></div>
					<%if(info==null){%>
						<div class = "mainimg"><a style="font-size: 20px;" class="linkcolor" style="position : absolute;">Make Course</a></div>
						<%}
					else{%>
						<div class = "mainimg"><a style="font-size: 20px;" class="linkcolor" href="En-survey.jsp" style="position : absolute;">Make Course</a></div>
					<%}%>	
				<!--<li><a href="#elements">Elements</a></li>-->
					
				</div>
		</header>

		<!-- Main -->
		<div id="main">


			<!-- Login -->
			<article id="Login" style="width:100%;">
				<form action="LoginService.do?num=1" method="post">
					<table style = "margin: 0px auto; text-align: center;">
						<tr>
							<td><input placeholder="ID" type="text" name=id style="color:white;"></td>
						</tr>
						<tr>
							<td><input placeholder="PASSWORD" type="password" name=pw style="color:white;"></td>
						</tr>
						<tr>
							<td><input type=submit value="LOGIN"> </td>
						</tr>
					</table>
				</form>
			</article>


			<!-- Join -->
			<article id="Join" style="width:100%;">
				<form action="JoinService.do?num=1" method="post">
					<table style = "margin: 0px auto; text-align: center;">
						<tr>
							<td><input id='search' placeholder="USER ID" type="text"
								name=id></td>
							<td><button type="button" id="btn" onClick="Btn_click();">입력</button></td>
						</tr>
						<tr>
							<td colspan=2><input placeholder="USER PASSWORD" type="password"
								name=pw></td>
						</tr>
						<tr>
							<td colspan=2><input placeholder="Re-EntryPW" type="password"
								name=pw></td>
						</tr>
						
						<tr>
							<td colspan=2><input placeholder="E-MAIL" type="text"
								name=email></td>
						</tr>
						<tr>
							<td colspan=2><input type=submit value="JOIN"> </td>
						</tr>
					</table> 
				</form>
			</article>



			<!-- Intro -->
			<article id="intro" class="intSE">
				<h2 class="major">introduce new Seoul.</h2>
				<span><img src="img/sese.PNG"/></span>
				<br /> <br />
				<p align="center">Receive your valuable information,</p>
				<p align="center">
					Based on the latest outpatient tourism <b> latest outpatient
						tourism survey data</b> by the Korea Tourism Organization
				</p>
				<p align="center">To generate the analysis results through our
					own model</p>
				<p align="center">
					We will help you to prepare for your comfortable and exciting <b>trip
						to Seoul.</b>
				</p>

			</article>

			<!-- Work -->

			<article id="work">
				<h1>Top 10 LandMarks</h1>

				<h3 class="major1" href="#" style="display: inline;">
					<div id="day" class="a1">Daytime</div>
				</h3>
				<h3 class="major2" href="#" style="display: inline;">
					<div id="day" class="a2">Nighttime</div>
				</h3>

				<div class='display'>
					<span><img id="popimg0" src="img/k1.PNG" alt="" /></span>
					<button class="ten" id="ko1">#Gyeongbokgung</button>
					<button class="ten" id="ko2">#Myeong-dong</button>
					<button class="ten" id="ko3">#Insa-dong</button>
					<button class="ten" id="ko4">#COEX</button>
					<button class="ten" id="ko5">#Changdeokgung</button>
					<button class="ten" id="ko6">#Bongeunsa Temple</button>
					<button class="ten" id="ko7">#63Building</button>
					<button class="ten" id="ko8">#War memorialhall</button>
					<button class="ten" id="ko9">#Bukchon Hanok Village</button>
					<button class="ten" id="ko10">#National MuseumofKorea</button>
				</div>

				<div id='g'>
					<span><img id="popimg1" src="img/k1.PNG" alt="" /></span>
					<button class="next" id="k1">#Gyeongbokgung</button>
					<button class="next" id="k2">#Hongik-Uv</button>
					<button class="next" id="k3">#Naksan-Park</button>
					<button class="next" id="k4">#SeoulTower</button>
					<button class="next" id="k5">#GangnamStation</button>
					<button class="next" id="k6">#Cheonggyecheon</button>
					<button class="next" id="k7">#Garosu-gil</button>
					<button class="next" id="k8">#Yeouido Hangang Park</button>
					<button class="next" id="k9">#Lotte World</button>

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
			<link rel="stylesheet" href="dist/css/custom.css">

<!-- [ REQUIRED ] -->
<link rel="stylesheet" href="dist/css/bpHS.min.css">

			<!-- About -->
			<article id="about" class="conPage">

				<h2 class="major">국가별 선호 여행지</h2>
			
			<div class="container">
					<div class="bp-hs" id="demo-default">
						<div class="bp-hs_inner">
							
							<div class="bp-hs_inner__item" data-transform="scale">
								<img src="SEOULIMAGE/E1.PNG" alt="Boompx Hero Slider 01" />
							</div>
							<div class="bp-hs_inner__item" data-transform="rotate">
								<img src="SEOULIMAGE/E3.PNG" alt="Boompx Hero Slider 02" />
							</div>
							<div class="bp-hs_inner__item" data-transform="rotate">
								<img src="SEOULIMAGE/E4.PNG" alt="Boompx Hero Slider 03" />
							</div>
							<div class="bp-hs_inner__item">
								<img src="SEOULIMAGE/E5.PNG" alt="Boompx Hero Slider 04" />
							</div>
							<div class="bp-hs_inner__item">
								<img src="SEOULIMAGE/E6.PNG" alt="Boompx Hero Slider 04" />
							</div>
							<div class="bp-hs_inner__item">
								<img src="SEOULIMAGE/E7.PNG" alt="Boompx Hero Slider 04" />
							</div>
							<div class="bp-hs_inner__item">
								<img src="SEOULIMAGE/E8.PNG" alt="Boompx Hero Slider 04" />
							</div>
							<div class="bp-hs_inner__item">
								<img src="SEOULIMAGE/E9.PNG" alt="Boompx Hero Slider 04" />
							</div>
							<div class="bp-hs_inner__item">
								<img src="SEOULIMAGE/E10.PNG" alt="Boompx Hero Slider 04" />
							</div>
							<div class="bp-hs_inner__item">
								<img src="SEOULIMAGE/E11.PNG" alt="Boompx Hero Slider 04" />
							</div>
						</div>
					</div>
				</div>

			</article>

	<!-- [ REQUIRED ] -->
	<script src="http://code.jquery.com/jquery.min.js"></script>
	<script src="dist/js/vendors/jquery.touchSwipe.min.js"></script>
	<!-- optional (required for touchSwipe option) -->
	<script src="dist/js/bpHS.min.js"></script>
	<!-- [ Demo Script ] -->
	<script src="dist/js/custom.js"></script>

			<!-- Contact -->
			<article id="contact"></article>

			<!-- Elements -->
			

		</div>

		<!-- Footer -->
		<footer id="footer">
			<h2 class="copyright">
				&copy; Untitled. Design: <a href="#">Welcome to Seoul</a>
			</h2>
		</footer>

	</div>

	<p id = "rate1">1.Myeongdong / Namdaemun / Bukchang
					2.Jonglo / Cheonggye
					3.Gangnam Station
					4.Itaewon
					5.Dongdaemun Fashion Town
	</p>
	<p id = "rate2">1.Myeongdong / Namdaemun / Bukchang
					2.Dongdaemun Fashion Town
					3.Sinchon / Hongdae
					4.Jamsil (Lotte World)
					5.Jonglo / Cheonggye
	</p>
	<p id = "rate3">1.Myeongdong / Namdaemun / Bukchang
					2.Dongdaemun Fashion Town
					3.Sinchon / Hongdae
					4.Jonglo / Cheonggye
					5.Gangnam Station
	</p>
	<p id = "rate4">1.Myeongdong / Namdaemun / Bukchang
					2.Jonglo / Cheonggye
					3.Gangnam Station
					4.Itaewon
					5.Sinchon / Hongdae
	</p>
	<p id = "rate5">1.Myeongdong / Namdaemun / Bukchang
					2.Jonglo / Cheonggye
					3.Gangnam Station
					4.Sinchon / Hongdae
					5.Dongdaemun Fashion Town
	</p>
	<p id = "rate6">1.Myeongdong / Namdaemun / Bukchang
					2.Jonglo / Cheonggye
					3.Gangnam Station
					4.Dongdaemun Fashion Town
					5.Sinchon / Hongdae
	</p>
	<p id = "rate7">1.Myeongdong / Namdaemun / Bukchang
					2.Dongdaemun Fashion Town
					3.Jonglo / Cheonggye
					4.Gangnam Station
					5.Itaewon
	</p>
	<p id = "rate8">1.Myeongdong / Namdaemun / Bukchang
					2.Dongdaemun Fashion Town
					3.Jonglo / Cheonggye
					4.Gangnam Station
					5.Itaewon</p>
	<p id = "rate9">1.Myeongdong / Namdaemun / Bukchang
					2.Dongdaemun Fashion Town
					3.Sinchon / Hongdae
					4.Jonglo / Cheonggye
					5.Gangnam Station</p>
	<p id = "rate10">1.Myeongdong / Namdaemun / Bukchang
					2.Dongdaemun Fashion Town
					3.Jonglo / Cheonggye
					4.Gangnam Station
					5.Itaewon</p>
	
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
		// 버튼 1
		$('#c1:button').on('click', function() {

			$('#popimg2').attr('src', 'img/pie/usa1.PNG');
			$('#rate').html(rate1);
		});

		// 버튼2
		$('#c2:button').on('click', function() {
			$('#popimg2').attr('src', 'img/pie/usa2.PNG');
			$('#rate').html(rate2);
		});
		// 버튼3
		$('#c3:button').on('click', function() {
			$('#popimg2').attr('src', 'img/pie/usa3.PNG');
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


	<p id="texttext1">Tel : 02-3700-3900

		Address: 161, Sajik-ro, Jongno-gu, Seoul Gyeongbokgung District Address: 1-91 Sejong-ro

		Opening Hours: Every day 09:00-18:00 (last admission 17:00) Closed on Tuesdays

		Adult (25 to 64 years old): 3,000 won

		Teens under 24 years old: free disabled, merit: free

		Older than 65 years old: Those wearing free hanbok: Free

		Gyeongbokgung was the largest palace representing
		the Republic of Korea and helped the prosperity of the Joseon Dynasty.
		The size of Gyeongbokgung Palace is about 750 rooms, which symbolizes
		the size of the country and the royal family beyond the meaning of the
		space where the king looks at the office. It was a place.
		Gyeongbokgung Palace, where the king sees his affairs from the
		founding of Korea until the end, is still well preserved. It became
		one of the landmarks representing the country of Joseon, which has
		been loved by Koreans. Gyeongbokgung Palace is Heungryemun along
		Gwanghwamun Gate.If you go past the Geunjeongmun, it can be said that
		it is the building that represents the Joseon Dynasty.</p>
	<p id="texttext2">Address: Myeong-dong, Jung-gu, Seoul

		Myeong-dong, the most expensive land in Korea, is
		a symbol of Seoul. In the Joseon Dynasty Although it was a residential
		area, Chungmuro ​​developed into a commercial area during the Japanese
		colonial period, and it became a commercial district in Myeong-dong,
		an adjacent area. Was done. Myeongdong has a huge shopping culture
		that is said to be the leader of fashion. There are various shops, not
		just stores, but also bonded shops. Also in Myeongdong, with shopping
		It is said to be the best place to enjoy not only Koreans but also
		foreigners in Korea.</p>
	<p id="texttext3">Address: Insa-dong, Jongno-gu, Seoul
	
		Insa-dong Ssamji-gil is a building in Insa-dong,
		Jongno-gu, Seoul. Ssamji is a pure Korean meaning 'pocket'. Ssamji-gil
		means to add various cultural fun elements to Insa-dong alley by
		attaching 'gil' after 'ssam-ji'. Ssamji-gil is a shopping mall
		specializing in crafts and has become a tourist attraction in
		Insadong. A spiral building with a total area of ​​4,066.01m² (about
		1,200 pyeong) is a collection of more than 70 craft shops, cultural
		goods, souvenir shops, galleries and restaurants with various designs
		of traditional Korean crafts or Korean fashion. The road is attached
		to the building because the entire fourth floor is connected to an
		alley. It is a "ㅁ" shape surrounding the lozenge's yard. Each floor
		leads to a gentle slope, walking through the shops to the rooftop sky
		garden.</p>
	<p id="texttext4">Tel : 02-6000-0114

		Address: 513 Yeongdong-daero, Gangnam-gu, Seoul Address: 159 Samseong-dong

		Opening Hours: Daily 10:00-18:00 Remarks (different times for event end)
	
		Asia's Mecca of Global Business with
		Transportation, Communications and Advanced Business Infrastructure It
		is the largest general exhibition hall in Korea, opened in March 1979
		with the aim of providing a place for international trade and cultural
		exchange. It is a total of 11,000 pyeong (gross area 130,000 pyeong)
		and consists of 4 floors above ground and 4 floors below ground, with
		12 specialized exhibition rooms and 7000 people. The hotel has 61
		meeting rooms, including a convention hall that can be accommodated at
		the same time. It also has a comprehensive support system for
		international business. It hosts over 150 professional exhibitions and
		various international conferences and events annually, and directly
		attracts overseas buyers and domestic import and export companies. In
		addition, it has a role to increase trade, and there is an aquarium in
		COEX, so not only Korean tourists but also foreign tourists Enjoy the
		aquarium on a large scale.</p>
	<p id="texttext5">Tel : 02-3668-2300

		Address: 99 Yulgok-ro, Jongno-gu, Seoul Address: 2-71 Waryong-dong

		Opening Hours: Daily 09:00-18:00 (February-May, September-October), daily 09:00-18:30 (June-August), daily 09:00-16:30 ( November to January)
		Closed on Monday
	
		Changdeokgung Palace is a palace of Joseon
		Dynasty located in Jongno-gu, Seoul. Comprehensive blend of
		architecture and landscape It is an example of environmental design
		and an important cultural heritage to read Korean spatial atmosphere.
		In the history of architecture, The landscaping of patronage is
		valuable as a representative royal garden of Korea. Changdeokgung is a
		palace of Joseon that was born in unfortunate history. The fifth son,
		who became king during the throne quarrel between the sons and
		servants of Lee Seong-gye who founded Korea, Taejong, who became king
		but refused to enter Gyeongbokgung Palace, where he killed his
		brothers, built a new palace and saw his office. Changdeokgung Palace.
		It is a palace that represents Korea, which represents Chosun with a
		special history as it has a painful history.</p>
	<p id="texttext6">Tel : 02-3218-4800

		Address: Bongeunsa-ro 531, Bongeunsa-ro, Gangnam-gu, Seoul
		
		Bongeunsa is full of people who always pray and	worship without weekdays and holidays. A little strange It is a place
		where religion meets daily life, but it is not so good for those who
		want to calmly visit the temple. It is also true. It is a place where
		many people always pray, so facilities and space need to be increased.
		Bongeunsa Temple was built during King Shilla Uner's castle, and the
		tomb of Emperor Jung Hyeon, King of Joseon Dynasty, became a tomb.
		Started. The temples that we know are often outside the mountains
		where people do not live or the ordinary people's life. In the middle,
		it is also located in the center of the most floating population in
		Seoul called Gangnam. Conveniently, many foreign religious people also
		visited Korea once, making it a representative temple.</p>
	<p id="texttext7">Tel: 1833-7001

		Address: Hanwha Financial Center 50, 63-ro, Yeongdeungpo-gu, Seoul_63 Address: Hanwha Financial Center 60, Yeouido-dong_63

		Opening Hours: Daily 10:00-22:00

		Fee: 63 art _ adult (over 20 years old): 20,000 won 63 art _ child (under 13 years old): 16,000 won

		63 Art_Youth (14-19 years old): 18,000 won 63 Art Couple ticket (63 art 2 persons / Americano 2 glasses): 43,000 won

		Aqua Planet 63 (over 20 years old): 25,000 won
	
		The 63 building, the tallest building in Korea
		that represents Seoul until the Lotte Tower was completed, Korean
		company Hanwha has become a landmark of Seoul, completed in 1985. At
		the time, there was no skyscraper in Korea. The company built for the
		purpose of building a company, not for profit, but caught two rabbits
		at the same time to the title of Landmark of Korea. It was a case.
		Unlike Lotte Tower, there are offices of Hanwha and other companies,
		and various facilities, observatory, and underground aquarium It is
		characterized by the fact that it has provided a tourist space using
		the advantages of skyscrapers. 63 building in Yeouido, Seoul It is
		said to be one of the landmarks in Seoul that still attracts many
		tourists because you can see all of Seoul from the highest observation
		deck in the center.</p>
	<p id="texttext8">Tel: 02-709-3139

		Address: War Memorial, 29 Itaewon-ro, Yongsan-gu, Seoul

		Opening Hours: 09:30-18:00 daily

		Closed on Mondays (Closed on the following day of the holiday during holidays that include Mondays)
	
		On June 25, 1950, everyone fell asleep before
		dawn. Gunfire on a peaceful Korean peninsula Resonated. The Korean War
		began when the North Koreans invaded the 38th parallel, which was the
		inter-Korean military demarcation line. The war between Koreans
		divided by blood The involvement of the US, Soviet Union, and China
		continued to inflict numerous casualties until the armistice agreement
		in July 1953. With joy freed from Japanese occupation It was before I
		enjoyed it. Introduce the Yongsan War Memorial, which records the
		history of the earth half a century ago. The war memorial is on the
		first floor You will see the 6.25 war room on the 2nd floor. It has
		the advantage of being able to hear the explanation in more detail and
		vividly. In addition, the history of war in the Korean Peninsula You
		can check it. The war memorial is said to be popular with Germans who
		are familiar with the situation on the Korean peninsula, which is
		divided into North and South. War memorial I think it's a good way to
		feel the history of war that we have forgotten through.</p>
	<p id="texttext9">Tel: 02-2133-1372

		Address: 37 Gyedong-gil, Jongno-gu, Seoul Address: 105 Bukchon Cultural Center, Gye-dong
		
		Hanok Preservation Area is located at the foot of
		Bukaksan between Gyeongbokgung Palace, Changdeokgung Palace and
		Geumwon (Biwon). It is also called Bukchon, meaning Upper Town.
		Bukchon is a high-quality househouse where high-ranking masterpieces,
		royal families, and four generations gathered. It is a tile house in
		the Joseon Dynasty. Originally, there were only a few houses with
		towering gates and about 30 hanoks in this area. It was built a lot,
		and in 1992, it was lifted from Gahoe-dong Hanok Preservation
		District. gun There are 2,297 buildings, of which 1,408 are Hanoks and
		the rest are general buildings. Bukchon Yangban Life Culture
		Exhibition Center The symbolic sculpture of Bukchon Hanok Village is
		installed, and the Gahoe-dong Traditional Village Festival is held
		where you can see the life of the ancestors. Around How do you feel
		tourist attractions such as Gyeongbokgung Palace, Changdeokgung
		Palace, Deoksugung Palace, Geumwon, and Samcheong Park. Bukchon
		1-gyeong with a panoramic view of Changdeokgung Palace. 11,
		Gahoe-dong, Bukchon 3 view, Gahoe-dong 31, 4 hills, Gahoe-dong
		downhill alleys 5 Bukchon-dong, Through the uphill alleys of
		Gahoe-dong, 6 Bukchon, 31 Gahoe-dong 31, Bukchon 7, and Samcheong-dong
		Stone Steps, 8 Bukchon?</p>
	<p id="texttext10">Tel: 02-2077-9000

		Address: 137 Seobinggo-ro, Yongsan-gu, Seoul Address: 168-6, Yongsan-dong 6-ga

		Opening Hours: Mon, Tue, Thu, Fri 10:00-18:00, Wed, Sat 10:00-21:00, (Sunday, National Holidays) 10:00-19:00

		Closed: January 1, New Year's Day, Chuseok Day / Permanent Exhibition Hall Closed: 1st Monday of April and November

		Admission Fee: Free
	
		Precious artifacts of our history have found a
		wonderful new home. Opened in October 2005 The National Museum of
		Korea is a world-scale museum that houses and exhibits 300,000
		artifacts (as of January 2012) in a vast space of 300,000㎡. It is a
		museum. Located in the former USFK position in Yongsan, it inherits
		the wisdom of our ancestors who valued the harmony between nature and
		man-made. The garden is designed to harmonize and it is located in the
		place of Baesan Imsu, which is surrounded by Namsan and the Han River.
		1 basement level and 6 ground levels The museum building has an
		exterior that looks like two buildings connected together. Gathered.
		As you enter the building, you will be able to find the 10-story
		pagoda of Gyeongcheonsa Temple and the Gotha-sa Temple. Six permanent
		exhibition halls are in operation. Three floors left and right:
		prehistoric and ancient buildings, middle and modern museums, donor
		halls, calligraphy halls, Asian pavilions, sculptures and crafts halls
		More than 15,000 artifacts are on display.If you carefully examine the
		entire artifact, it will take about a week. It is necessary to select
		courses such as the “100 Important Relics” selected by the museum, or
		to share them with time. On exhibition floor It is a good idea to use
		a guided operator's guide time or use an automatic guide. The display
		of artifacts from the traditional enumerated method It is more
		interesting because it uses cutting-edge lighting and special effects
		to highlight the value of each artifact. Also, a lot of hard to see
		The museum is a permanent exhibition of foreign relics, raising its
		status as a major Asian museum. In addition to the permanent
		exhibition hall, planning exhibition hall, children exhibition hall,
		It is a comprehensive cultural space where outdoor exhibition halls
		add attractions and even a professional performance hall and library.
		There's also restaurant spaces all over the museum. We are preparing
		food with special features. If you prepare the information in advance
		through the homepage, etc., you can leave more time travel.</p>

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>
	<script src="assets/js/jquery-3.4.1.min.js"></script>

	<!-- BG -->
	<div id="bg"></div>
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
	<p id="texttext11">Gyeongbokgung Palace opened at night

		Period: End of April to early November of each year

		Place: Gyeongbokgung

		Organizer: Cultural Heritage Administration

		Fare: Public: 3,000 won
        Seniors aged 65, foreigners: 3,000 won
        Hanbok wearer: Free</p>
	<p id="texttext22">2번</p>
	<p id="texttext33">Address: 2-10, Sanseong-dong, 41 Naksan-gil, Jongno-gu, Seoul

		By restoring the natural environment and historical cultural environment of Naksan, which is one of the Naesan Mountains (Bakaksan, Namsan, Inwangsan, and Naksan) that make up the capital city of Seoul, and the main mountain, the left blue dragon of Bukaksan, the main mountain It was created with the aim of providing pleasant park views to Seoul citizens and providing a place for history and culture education through natural exploration.

		The total area was 6,145 pyeong, and the construction began on December 30, 1999, and was completed in July 2002. The main facilities are: ① Exhibition and management room, kiosk and restroom, bidang, hexagonal pavilion, elderly pavilion, 5 buildings ② Sports facilities consisting of 12 badminton courts and 1 basketball court ③ 10 rest areas and 117 chairs Convenience facilities consisting of ④ Central Plaza, Event Plaza, and Plaza Facility consisting of three observatory squares ⑤ Other information boards and 28 other facilities. In addition, a total of 8,670 trees of 40 species were planted, including pine trees, for greening the park.
</p>
	<p id="texttext44">Address: Seoul Tower, 103 Namsan Park-gil, Yongsan-gu, Seoul

		Opening Hours: 11:00-20:00 daily

		Fee: Observation deck (adult) 11,000 won Observation deck (child) 9000 won

		Namsan Seoul Tower, the first tourist attraction in Seoul, where 12 million people visit domestic and foreign tourists a year
		Recently, as the name of the Korean Wave has increased and the name of various entertainments and dramas has increased, the number of tourists has increased.
		Since it is located in the center of Seoul and has a great location to overlook downtown Seoul in all directions, it has been selected as one of the top 500 tourist destinations in the world by Lonely Planet, the world's largest travel publisher.
		The Seoul Tower Plaza, which was recently remodeled and opened, provides various tourist facilities, attractions, and food and beverage stores to provide services to tourists.</p>
	<p id="texttext55">5번</p>
	<p id="texttext66">6번</p>
	<p id="texttext77">7번</p>
	<p id="texttext88">8번</p>
	<p id="texttext99">Tel: 02-1661-2000

		Address: 240 Olympic-ro, Songpa-gu, Seoul Address: 40-1 Jamsil-dong

		Fee: Free pass (Adult: 56,000 won Youth: 50,000 won Child: 46.000 won)
         
         After4 (Adults: 45,000 won Teenagers 40.000 won, Children: 35,000 won)
         
        This is a theme park established and operated by Lotte Group to help people enjoy leisure and attract foreign tourists. Lotte World is an indoor theme park with the theme of adventure and mystery, Lotte World Adventure, Lake Park Magic Island, shopping mall, folk museum, ice rink, hotel, department store, etc. to solve tourism, leisure, shopping and culture in one place. It is a large-scale complex living space. At Lotte World Adventure, you can enjoy state-of-the-art boarding facilities, fantastic parades, various video systems, laser shows, performances, and food from around the world 24/7. Lotte World Adventure is the world's largest indoor theme park. In the Folk Museum, Korea's 5000-year history and folk culture are divided into historical exhibition halls, model villages, amusement yards, and author streets, making it easy and fun to reproduce. Lotte World Garden Stage is the central stage of Lotte World performances, and various events such as musical shows and public broadcasts are held in various seasons. Lotte World Star Avenue is a Hallyu star-producing street and is an experiential entertainment facility.</p>



	<div id="bg"></div>
	<script type="text/javascript">
	var text = document.querySelector('#texttext');
	var popimgs = document.getElementById('popimg0');
	var test11 = document.querySelector('#texttext11')
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
