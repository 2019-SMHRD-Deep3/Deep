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
				href="LogoutService.do?num=5">Logout </a></td>
			<td class="inTag"><a
				href="Fr_update.jsp">ChangeInfo</a></td>
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
						<div class = "mainimg"><a style="font-size: 20px;" class="linkcolor" href="Fr-survey.jsp" style="position : absolute;">Make Course</a></div>
					<%}%>	
				<!--<li><a href="#elements">Elements</a></li>-->
					
				</div>
		</header>

		<!-- Main -->
		<div id="main">


			<!-- Login -->
			<article id="Login">
				<form action="LoginService.do?num=5" method="post">
					<table>
						<tr>
							<td>ID</td>
							<td><input placeholder="enter ID" type="text" name=id></td>
						</tr>
						<tr>
							<td>PW</td>
							<td><input placeholder="enter PW" type="password" name=pw></td>
						</tr>
						<tr>
							<td></td>
							<td><input type=submit value="LOGIN"> <input
								type=reset value="RESET"></td>
						</tr>
					</table>
				</form>
			</article>


			<!-- Join -->
			<article id="Join">
				<form action="JoinService.do?num=5" method="post">
					<table>
						<tr>
							<td>ID</td>
							<td><input placeholder="enter ID" type="text" name=id>
							</td>
							<td><input type="button" value="Confirm Overlap" id = "btn"></td>
						</tr>
						<tr>
							<td>Password</td>
							<td colspan=2><input placeholder="at least 6 characters"
								type="password" name=pw></td>
						</tr>
						<tr>
							<td>Confirm Password</td>
							<td colspan=2><input placeholder="re-enter pw"
								type="password" name=pw></td>
						</tr>
						<tr>
							<td>NAME</td>
							<td colspan=2><input placeholder="enter name" type="text"
								name=name></td>
						</tr>

						<tr>
							<td>E-MAIL</td>
							<td colspan=2><input placeholder="enter email" type="text"
								name=email></td>
						</tr>
						<tr>
							<td></td>
							<td colspan=2><input type=submit value="JOIN"> <input
								type=reset value="RESET"></td>
						</tr>
					</table>
				</form>
			</article>



			<!-- Intro -->
			<article id="intro" class="intSE">
				<h2 class="major">Séoul, introduction.</h2>
				<span><img src="img/sese.PNG"/></span>
				<br /> <br />
				<p align="center">Recevez vos précieuses informations,</p>
				<p align="center">

					Sur la base des <b> données de l'enquête sur le tourisme
						étranger de l'année dernière </b> fournies par l'Organisation coréenne
					du tourisme.
				</p>
				<p align="center">Générez des résultats d'analyse via votre
					propre modèle</p>
				<p align="center">

					Nous vous aiderons à préparer votre <b> voyage à Séoul </b>
					confortable et passionnant.
				</p>

			</article>

			<!-- Work -->

			<article id="work">

				<h1>Séoul Top 10 Repère</h1>
				<h3 class="major1" href="#" style="display: inline;">
					<div id="day" class="a1">semaine</div>
				</h3>
				<h3 class="major2" href="#" style="display: inline;">
					<div id="day" class="a2">La nuit</div>
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
					<button class="ten" id="ko8">#Mémorial de guerre</button>
					<button class="ten" id="ko9">#hanchon du nord</button>
					<button class="ten" id="ko10">#Musée national de Corée</button>
				</div>

				<div id='g'>
					<span><img id="popimg1" src="img/k1.PNG" alt="" /></span>
					<button class="next" id="k1">#Gyeongbokgung</button>
					<button class="next" id="k2">#Hongik-Uv</button>
					<button class="next" id="k3">#Parc Naksan</button>
					<button class="next" id="k4">#SeoulNTower</button>
					<button class="next" id="k5">#GangnamStation</button>
					<button class="next" id="k6">#Cheonggyecheon</button>
					<button class="next" id="k7">#Garosu-gil</button>
					<button class="next" id="k8"># Parc Yeouido</button>
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
			<article id="about">
			<h2 class="major">Top5 place par pays</h2>
				<div class = "">
				<span><img id="popimg2" src="images/pic03.jpg" alt=""></span>
				<button class = "country" id = "c1">U.S.A</button>
					<button class = "country" id = "c2">CHINA</button>
					<button class = "country" id = "c3">JAPAN</button>
					<button class = "country" id = "c4">FRENCE</button>
					<button class = "country" id = "c5">GERMANY</button>
					<button class = "country" id = "c6">U.K</button>
					<button class = "country" id = "c7">RUSSIA</button>
					<button class = "country" id = "c8">VIETNAM</button>
					<button class = "country" id = "c9">HONGKONG</button>
					<button class = "country" id = "c10">U.A.E</button>
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

			$('#popimg2').attr('src', 'img/pie/fr1.PNG');
			$('#rate').html(rate1);
		});

		// 버튼2
		$('#c2:button').on('click', function() {
			$('#popimg2').attr('src', 'img/pie/fr2.PNG');
			$('#rate').html(rate2);
		});
		// 버튼3
		$('#c3:button').on('click', function() {
			$('#popimg2').attr('src', 'img/pie/fr3.PNG');
			$('#rate').html(rate3);
		});
		// 버튼4
		$('#c4:button').on('click', function() {
			$('#popimg2').attr('src', 'img/pie/fr4.PNG');
			$('#rate').html(rate4);
		});
		// 버튼5
		$('#c5:button').on('click', function() {
			$('#popimg2').attr('src', 'img/pie/fr5.PNG');
			$('#rate').html(rate5);
		});
		// 버튼6
		$('#c6:button').on('click', function() {
			$('#popimg2').attr('src', 'img/pie/fr6.PNG');
			$('#rate').html(rate6);
		});
		// 버튼7
		$('#c7:button').on('click', function() {
			$('#popimg2').attr('src', 'img/pie/fr7.PNG');
			$('#rate').html(rate7);
		});
		// 버튼8
		$('#c8:button').on('click', function() {
			$('#popimg2').attr('src', 'img/pie/fr8.PNG');
			$('#rate').html(rate8);
		});
		// 버튼9
		$('#c9:button').on('click', function() {
			$('#popimg2').attr('src', 'img/pie/fr9.PNG');
			$('#rate').html(rate9);
		});
		// 버튼10
		$('#c10:button').on('click', function() {
			$('#popimg2').attr('src', 'img/pie/fr10.PNG');
			$('#rate').html(rate10);
		});
</script>

	<p id="texttext1">Tél: 02-3700-3900

		Adresse: 161, Sajik-ro, Jongno-gu, Seoul Gyeongbokgung District Adresse: 1-91 Sejong-ro

		Heures d'ouverture: tous les jours de 9h00 à 18h00 (dernière entrée à 17h00) fermé le mardi

		Adulte (25 à 64 ans): 3000 won

		Adolescents de moins de 24 ans: gratuit handicapé, mérite: gratuit

		Plus de 65 ans: ceux qui portent un hanbok gratuit: gratuit
	
		Gyeongbokgung était le plus grand palais
		représentant la République de Corée et a contribué à la prospérité de
		la dynastie Joseon. La taille du palais de Gyeongbokgung est d'environ
		750 chambres, ce qui symbolise la taille du pays et de la famille
		royale au-delà de la signification de l'espace où le roi regarde le
		bureau. C'était un endroit. Le palais de Gyeongbokgung, où le roi voit
		ses affaires depuis la fondation de la Corée jusqu'à la fin, est
		toujours bien conservé. Il est devenu l'un des monuments représentant
		le pays de Joseon, qui a été aimé par les Coréens. Le palais de
		Gyeongbokgung est Heungryemun le long de la porte Gwanghwamun Si vous
		passez devant le Geunjeongmun, on peut dire que c'est le bâtiment qui
		représente la dynastie Joseon.</p>
	<p id="texttext2">Adresse: Myeong-dong, Jung-gu, Séoul
	
		Myeong-dong, la terre la plus chère de Corée, est
		un symbole de Séoul. Sous la dynastie Joseon Bien que ce soit un
		quartier résidentiel, Chungmuro ​​est devenu une zone commerciale
		pendant la période coloniale japonaise et est devenu un quartier
		commerçant de Myeong-dong, une zone adjacente, devenant le meilleur
		centre-ville de Corée. C'était fait. Myeongdong possède une énorme
		culture de shopping qui serait le leader de la mode. Il y a plusieurs
		magasins, pas seulement des magasins, mais aussi des magasins sous
		douane. Aussi à Myeongdong, avec des magasins On dit que c'est le
		meilleur endroit pour apprécier non seulement les Coréens mais aussi
		les étrangers en Corée.</p>
	<p id="texttext3">Adresse: Insa-dong, Jongno-gu, Séoul
	
		Insa-dong Ssamji-gil est un bâtiment à Insa-dong,
		Jongno-gu, Séoul. Ssamji est une poche Cela signifie pur coréen.
		Ssamji-gil signifie ajouter divers éléments culturels amusants à la
		ruelle Insa-dong en ajoutant «gil» après «ssam-ji». Institut
		d'architecture Gaa Ce bâtiment a été réalisé par Choi Moon-gyu, un
		architecte de Ssamji. Ssamji-gil est un centre commercial spécialisé
		dans l'artisanat Il y en a. Un bâtiment en spirale avec une superficie
		totale de 4 066,01 m² (1 200 pyeong), une variété de modèles avec
		l'artisanat coréen traditionnel ou la mode coréenne Il y a plus de 70
		boutiques d'artisanat, des biens culturels et des boutiques de
		souvenirs, des galeries et des restaurants qui offrent aux touristes
		une variété de divertissements. La route est attachée au bâtiment car
		tout le quatrième étage est relié à une ruelle. C'est une forme "ㅁ"
		entourant la cour du losange. Chaque étage Il mène à une pente douce
		et se promène dans les magasins pour atteindre le jardin du ciel sur
		le toit.</p>
	<p id="texttext4">Tél: 02-6000-0114

		Adresse: 513 Yeongdong-daero, Gangnam-gu, Séoul Adresse: 159 Samseong-dong

		Heures d'ouverture: tous les jours 10: 00-18: 00 Remarques (heures différentes pour la fin de l'événement)
		
		La Mecque du commerce mondial en Asie avec les
		transports, les communications et l'infrastructure commerciale avancée
		C'est la plus grande salle d'exposition générale de Corée, ouverte en
		mars 1979 dans le but de fournir un lieu de commerce international et
		d'échange culturel. Il s'agit d'un total de 11 000 pyeong (superficie
		brute de 130 000 pyeong) et se compose de 4 étages au-dessus du sol et
		de 4 étages au-dessous du sol. L'hôtel dispose de 61 salles de
		réunion, dont une salle de congrès pouvant être accueillie en même
		temps. Il dispose également d'un système de support complet pour le
		commerce international. Il accueille plus de 150 expositions
		professionnelles et diverses conférences et événements internationaux
		chaque année, et attire directement les acheteurs étrangers et les
		entreprises nationales d'importation et d'exportation. De plus, il a
		pour rôle d'augmenter le commerce, et il y a un aquarium au COEX, donc
		non seulement les touristes coréens mais aussi les touristes étrangers
		Profitez de l'aquarium à grande échelle.</p>
	<p id="texttext5">Tél: 02-3668-2300

		Adresse: 99 Yulgok-ro, Jongno-gu, Séoul Adresse: 2-71 Waryong-dong

		Heures d'ouverture: tous les jours de 9h00 à 18h00 (février-mai, septembre-octobre), tous les jours de 9h00 à 18h30 (juin-août), tous les jours de 9h00 à 16h30 ( Novembre à janvier)
		Fermé le lundi
	
		Le palais de Changdeokgung est un palais de la
		dynastie Joseon situé à Jongno-gu, à Séoul. Mélange complet
		d'architecture et de paysage C'est un exemple de conception
		environnementale et un patrimoine culturel important pour lire
		l'atmosphère spatiale coréenne. Dans l'histoire de l'architecture,
		L'aménagement paysager du patronage est précieux en tant que jardin
		royal représentatif de la Corée.Changdeokgung est un palais de Joseon
		né dans une histoire malheureuse. Le cinquième fils, qui est devenu
		roi pendant la querelle du trône entre les fils et les serviteurs de
		Lee Seong-gye qui a fondé la Corée, Taejong, qui est devenu roi mais a
		refusé d'entrer dans le palais de Gyeongbokgung, où il a tué ses
		frères, a construit un nouveau palais et a vu son bureau. Palais de
		Changdeokgung. Comme il a une histoire douloureuse, c'est un palais
		qui représente la Corée, qui représente la Corée avec beaucoup de
		choses spéciales à voir.</p>
	<p id="texttext6">Tél: 02-3218-4800

		Adresse: Bongeunsa-ro 531, Bongeunsa-ro, Gangnam-gu, Séoul
	
		Bongeunsa regorge de gens qui prient et adorent
		toujours sans les jours de semaine et les jours fériés. Un peu étrange
		C'est un endroit où la religion rencontre la vie quotidienne, mais ce
		n'est pas si bon pour ceux qui veulent visiter calmement le temple.
		C'est aussi vrai. Le temple Bongeunsa a été construit pendant le
		château du roi Shilla Uner, et le tombeau de l'empereur Jung Hyeon,
		roi de la dynastie Joseon, est devenu un tombeau. Commencé. Les
		temples que nous connaissons sont souvent à l'extérieur des montagnes
		où les gens ne vivent pas ou le rayon de vie des gens ordinaires. Au
		milieu, il est également situé au centre de la population la plus
		flottante de Séoul appelée Gangnam. Idéalement, de nombreux religieux
		étrangers ont également visité la Corée une fois.</p>
	<p id="texttext7">Tél: 1833-7001

		Adresse: Hanwha Financial Center 50, 63-ro, Yeongdeungpo-gu, Seoul_63 Adresse: Hanwha Financial Center 60, Yeouido-dong_63
	
		Heures d'ouverture: tous les jours de 10h00 à 22h00

		arif: 63 art _ adulte (plus de 20 ans): 20 000 won 63 art _ enfant (moins de 13 ans): 16 000 won

		63 Art_ Youth (14-19 ans): 18 000 won 63 Billet Art Couple (63 art 2 personnes / verres Americano 2): 43 000 won

		Aqua Planet 63 (plus de 20 ans): 25 000 won
	
		63 Building, le plus haut bâtiment de Corée qui
		représente Séoul jusqu'à l'achèvement de la tour Lotte, La société
		coréenne Hanwha est devenue un point de repère de Séoul, achevée en
		1985. À l'époque, il n'y avait pas de gratte-ciel en Corée.
		L'entreprise a construit dans le but de construire l'entreprise, sans
		but lucratif, mais a attrapé deux lapins en même temps au titre de
		Landmark of Korea. C'était un cas. Contrairement à la tour Lotte, il y
		a des bureaux de Hanwha et d'autres sociétés, et diverses
		installations, terrasses d'observation et aquariums au sous-sol. Il se
		caractérise par le fait qu'il a fourni un espace touristique en
		utilisant les avantages des gratte-ciel. 63 bâtiment à Yeouido, Séoul
		On dit qu'il est l'un des monuments de Séoul, qui attire toujours de
		nombreux touristes car il peut être vu partout dans Séoul depuis la
		terrasse d'observation la plus élevée du centre.</p>
	<p id="texttext8">Tél: 02-709-3139

		Adresse: War Memorial, 29 Itaewon-ro, Yongsan-gu, Séoul Adresse: War Memorial, Yongsan-dong 1-ga

		Heures d'ouverture: 09: 30-18: 00 tous les jours

		Fermé le lundi (Fermé le jour suivant des vacances pendant les jours fériés qui incluent le lundi)
	
		Le 25 juin 1950, tout le monde s'est endormi
		avant l'aube. Tirs sur une paisible péninsule coréenne Résonné. La
		guerre de Corée a commencé lorsque les Nord-Coréens ont envahi le 38e
		parallèle, qui était la ligne de démarcation militaire intercoréenne.
		La guerre entre les Coréens divisée par le sang L'implication des
		États-Unis, de l'Union soviétique et de la Chine a continué de faire
		de nombreuses victimes jusqu'à l'accord d'armistice en juillet 1953.
		Avec joie libérée de l'occupation japonaise C'était avant de
		l'apprécier. Présentez le mémorial de guerre de Yongsan, qui retrace
		l'histoire de la Terre il y a un demi-siècle. Le monument aux morts
		est au premier étage Vous verrez la salle de guerre 6.25 au 2ème
		étage. Il a l'avantage de pouvoir entendre l'explication plus en
		détail et de façon vivante. L'histoire de la guerre dans la péninsule
		coréenne dans l'histoire de la guerre Vous pouvez le vérifier. Le
		monument aux morts serait populaire auprès des Allemands qui
		connaissent la situation dans la péninsule coréenne, divisée en nord
		et sud. Monument aux morts Je pense que c'est une bonne façon de
		ressentir l'histoire de la guerre que nous avons oubliée.</p>
	<p id="texttext9">Tél: 02-2133-1372

		Adresse: 37 Gyedong-gil, Jongno-gu, Séoul Adresse: 105 Bukchon Cultural Center, Gye-dong
	
		La zone de préservation de Hanok est située au
		pied de Bukaksan entre le palais de Gyeongbokgung, le palais de
		Changdeokgung et Geumwon (Biwon). Il est également appelé Bukchon, ce
		qui signifie la haute ville. Bukchon est une maison d'habitation de
		haut niveau, où se sont réunis des chefs-d'œuvre de haut rang, la
		royauté et quatre générations. C'est une maison de tuiles de la
		dynastie Joseon. À l'origine, il n'y avait que quelques maisons avec
		des portes imposantes et environ 30 hanoks dans ce domaine. Il a été
		beaucoup construit et en 1992, il a été retiré du district de
		préservation de Gahoe-dong Hanok. Pistolet Il y a 2 297 bâtiments,
		dont 1 408 sont des Hanoks et les autres sont des bâtiments généraux.
		Centre d'exposition Bukchon Yangban Life Culture La sculpture
		symbolique du village de Bukchon Hanok est installée et le festival du
		village traditionnel de Gahoe-dong a lieu où vous pouvez voir la vie
		des ancêtres. Autour Il y a des attractions touristiques telles que le
		palais de Gyeongbokgung, le palais de Changdeokgung, le palais de
		Deoksugung, Geumwon et le parc de Samcheong. Bukchon 1-gyeong avec vue
		panoramique sur le palais de Changdeokgung. 11, Gahoe-dong, Bukchon 3
		view, Gahoe-dong 31, 4 hills, Gahoe-dong downhill venley 5
		Bukchon-dong, À travers les ruelles montantes de Gahoe-dong, 6
		Bukchon, 31 Gahoe-dong 31, Bukchon 7 et Samcheong-dong Stone Steps, 8
		Bukchon Comment vous sentez-vous?</p>
	<p id="texttext10">Tél: 02-2077-9000

		Adresse: 137 Seobinggo-ro, Yongsan-gu, Séoul Adresse: 168-6, Yongsan-dong 6-ga

		Heures d'ouverture: lun, mar, jeu, ven 10: 00-18: 00, mer, sam 10: 00-21: 00, (dimanche, jours fériés) 10: 00-19: 00

		Fermé: 1er janvier, jour de l'an, jour Chuseok / salle d'exposition permanente Fermé: 1er lundi d'avril et novembre

		Frais d'entrée: gratuit
	
		De précieux objets de notre histoire ont trouvé
		une merveilleuse nouvelle maison. Ouvert en octobre 2005 Le Musée
		national de Corée est un musée d'envergure mondiale qui abrite et
		expose 300 000 artefacts (en janvier 2012) dans un vaste espace de 300
		000 ㎡. C'est un musée. Situé dans l'ancienne position de l'USFK à
		Yongsan, il hérite de la sagesse des ancêtres qui valorisaient
		l'harmonie entre la nature et l'homme. Le jardin est conçu pour
		s'harmoniser et il est situé à la place de Baesan Imsu, qui est
		entourée de Namsan et de la rivière Han. 1 sous-sol et 6 niveaux au
		sol Le bâtiment du musée a un extérieur qui ressemble à deux bâtiments
		reliés entre eux. Réunis. En entrant dans le bâtiment, vous pourrez
		trouver la pagode à 10 étages du temple Gyeongcheonsa et du temple
		Gotha-sa. Six salles d'expositions permanentes fonctionnent. Trois
		étages à gauche et à droite: bâtiments préhistoriques et anciens,
		musées moyens et modernes, salles des donateurs, salles de
		calligraphie, pavillons et sculptures asiatiques Plus de 15 000
		artefacts sont exposés. Si vous regardez attentivement tous les
		artefacts, cela prendra environ une semaine Il faut choisir des cours
		comme les «100 reliques importantes» sélectionnées par le musée, ou
		les partager avec le temps.</p>

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
	<p id="texttext11">Le palais de Gyeongbokgung ouvert la nuit

		Période: de fin avril à début novembre de chaque année

		Lieu: Gyeongbokgung

		Organisateur: Administration du patrimoine culturel

		Tarif: Public: 3000 wons
        Aînés de 65 ans, étrangers: 3000 won
        Porteur de Hanbok: gratuit</p>
	<p id="texttext22">2번</p>
	<p id="texttext33">Adresse: 2-10, Sanseong-dong, 41 Naksan-gil, Jongno-gu, Séoul

En restaurant l'environnement naturel et l'environnement culturel historique de Naksan, l'un des Naesasan (Bukaksan, Namsan, Inwangsan et Naksan), qui constitue la capitale de Séoul, et le dragon bleu gauche de Bukaksan, la principale montagne Il a été créé dans le but de fournir une vue agréable sur le parc aux citoyens de Séoul et de fournir un lieu d'éducation à l'histoire et à la culture à travers l'exploration naturelle.
La superficie totale était de 6 145 pyeong, et la construction a commencé le 30 décembre 1999 et s'est terminée en juillet 2002. Les principales installations sont: ① Salle d'exposition et de gestion, kiosque et toilettes, bidang, pavillon hexagonal, pavillon des aînés, 5 installations de bâtiment building Installations sportives comprenant 12 terrains de badminton et 1 terrain de basket-ball ③ 10 aires de repos et 117 chaises Installations de commodité comprenant ④ Central Plaza, Event Plaza et Plaza Facility composé de trois places d'observation ⑤ Autres panneaux d'information et 28 autres installations. De plus, pour le verdissement du parc, 8 670 arbres de 40 espèces, dont des pins, ont été plantés.</p>
	<p id="texttext44">Adresse: Seoul Tower, 103 Namsan Park-gil, Yongsan-gu, Séoul

		Heures d'ouverture: 11: 00-20: 00 tous les jours

		Frais: Pont d'observation (adulte) 11 000 won Pont d'observation (enfant) 9 000 won

		Namsan Seoul Tower, la première attraction touristique de Séoul, où 12 millions de personnes visitent des touristes nationaux et étrangers par an
		Récemment, à mesure que le nom de la vague coréenne a augmenté et que le nom de divers divertissements et drames a augmenté, le nombre de touristes a augmenté.
		Puisqu'il est situé dans le centre de Séoul et bénéficie d'un emplacement idéal pour surplomber le centre-ville de Séoul dans toutes les directions, il a été sélectionné comme l'une des 500 meilleures destinations touristiques au monde par Lonely Planet, le plus grand éditeur de voyages au monde.
		La Seoul Tower Plaza, récemment rénovée et ouverte, offre diverses installations touristiques, attractions et magasins d'alimentation et de boissons pour fournir des services aux touristes.</p>
	<p id="texttext55">5번</p>
	<p id="texttext66">6번</p>
	<p id="texttext77">7번</p>
	<p id="texttext88">8번</p>
	<p id="texttext99">Tél: 02-1661-2000

		Adresse: 240 Olympic-ro, Songpa-gu, Séoul Adresse: 40-1 Jamsil-dong

		Tarif :laissez-passer gratuit (adulte: 56 000 won jeune: 50 000 won enfant: 46 000 won)
         
        	   After4 (Adultes: 45 000 won Adolescents 40 000 won, Enfants: 35 000 won)
         Il s'agit d'un parc à thème créé et exploité par Lotte Group pour aider les gens à profiter des loisirs et à attirer les touristes étrangers. Lotte World est un parc à thème couvert avec le thème de l'aventure et du mystère, Lotte World Adventure, Lake Park Magic Island, centre commercial, musée folklorique, patinoire, hôtel, grand magasin, etc. pour résoudre le tourisme, les loisirs, le shopping et la culture en un seul endroit. Il s'agit d'un espace de vie complexe à grande échelle. À Lotte World Adventure, vous pouvez profiter des installations d'embarquement de pointe, des défilés fantastiques, de divers systèmes vidéo, des spectacles laser, des performances et de la nourriture du monde entier 24/7. Lotte World Adventure est le plus grand parc à thème couvert au monde. Au Folk Museum, l'histoire et la culture populaire de la Corée depuis 5000 ans sont divisées en salles d'exposition historiques, villages modèles, parcs d'attractions et rues d'auteurs, ce qui rend la reproduction facile et amusante. Lotte World Garden Stage est la scène centrale des spectacles de Lotte World, et divers événements tels que des spectacles musicaux et des émissions publiques ont lieu à différentes saisons. Lotte World Star Avenue est une rue productrice d'étoiles Hallyu et est un lieu de divertissement expérientiel.
         </p>



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
