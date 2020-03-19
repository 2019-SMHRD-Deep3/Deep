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
				href="LogoutService.do?num=6">Logout </a></td>
			<td class="inTag"><a
				href="Sp_update.jsp">ChangeInfo</a></td>
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
						<div class = "mainimg"><a style="font-size: 20px;" class="linkcolor" href="K-survey.jsp" style="position : absolute;">Make Course</a></div>
					<%}%>	
				<!--<li><a href="#elements">Elements</a></li>-->
					
				</div>
		</header>

		<!-- Main -->
		<div id="main">


			<!-- Login -->
			<article id="Login" style="width:100%;">
				<form action="LoginService.do?num=6" method="post">
					<table style = "margin: 0px auto; text-align: center;">
						<tr>
							<td><input placeholder="ID" type="text" name=id style="color:white;"></td>
						</tr>
						<tr>
							<td><input placeholder="USER PASSWORD" type="password" name=pw style="color:white;"></td>
						</tr>
						<tr>
							<td><input type=submit value="LOGIN"> </td>
						</tr>
					</table>
				</form>
			</article>


			<!-- Join -->
			<article id="Join" style="width:100%;">
				<form id="joinForm" action="JoinService.do?num=6" method="post" onsubmit="return false">
					<table style = "margin: 0px auto; text-align: center;">
						<tr>
							<td><input id='search' placeholder="USER ID" type="text"
								name=id></td>
							<td><button type="button" id="btn" onClick="Btn_click();">ID Check</button></td>
						</tr>
						<tr>
							<td colspan=2><input placeholder="USER PASSWORD" type="password"
								name=pw></td>
						</tr>
						<tr>
							<td colspan=2><input placeholder="Re-EntryPW" type="text"
								name=name></td>
						</tr>
						<tr>
							<td colspan=2><input placeholder="E-MAIL" type="text"
								name=email></td>
						</tr>
						<tr>
							<td colspan=2><input id="joinCheck" type=submit value="JOIN"> </td>
						</tr>
					</table> 
				</form>
			</article>


			<!-- Intro -->
			<article id="intro" class="intSE">
				<h2 class="major">introducción Seúl.</h2>
				<span><img src="img/sese.PNG"/></span>
				<br /> <br />
				<p align="center">Recibe tu valiosa información,</p>
				<p align="center">
					Basado en el último turismo ambulatorio <b> último ambulatorio
						datos de encuestas de turismo </b> por la Organización de Turismo de
					Corea
				</p>
				<p align="center">Para generar los resultados del análisis a
					través de nuestro modelo propio</p>
				<p align="center">

					Le ayudaremos a prepararse para su cómodo y emocionante viaje <b>
						a Seúl. </b>
				</p>

			</article>

			<!-- Work -->

			<article id="work">
				<h1>Top 10 LandMarks</h1>
				<h3 class="major1" href="#" style="display: inline;">
					<div id="day" class="a1">Semanal</div>
				</h3>
				<h3 class="major2" href="#" style="display: inline;">
					<div id="day" class="a2">Noche</div>
				</h3>
				<div class='display'>
					<span><img id="popimg0" src="img/k1.PNG" alt="" /></span>
					<button class="ten" id="ko1">#Palacio Gyeongbokgung</button>
					<button class="ten" id="ko2">#Myeong-dong</button>
					<button class="ten" id="ko3">#Insa-dong</button>
					<button class="ten" id="ko4">#COEX</button>
					<button class="ten" id="ko5">#Palacio Changdeokgung</button>
					<button class="ten" id="ko6">#Templo Bongeunsa</button>
					<button class="ten" id="ko7">#Edificio 63</button>
					<button class="ten" id="ko8">#Memorial de guerra</button>
					<button class="ten" id="ko9">#Bukchon Hanok Village</button>
					<button class="ten" id="ko10">#Museo Nacional de Corea</button>
				</div>

				<div id='g'>
					<span><img id="popimg1" src="img/k1.PNG" alt="" /></span>
					<button class="next" id="k1">#Palacio Gyeongbokgung</button>
					<button class="next" id="k2">#Hongdae</button>
					<button class="next" id="k3">#Parque Naksan</button>
					<button class="next" id="k4">#Torre N de Seúl</button>
					<button class="next" id="k5">#Estacion Gangnam</button>
					<button class="next" id="k6">#Cheonggyecheon</button>
					<button class="next" id="k7">#Garosu-gil</button>
					<button class="next" id="k8">#Parque Yeouido Hangang</button>
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
			<h2 class="major">Top5 lugar por país</h2>
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
					5.Itaewon
	</p>
	<p id = "rate9">1.Myeongdong / Namdaemun / Bukchang
					2.Dongdaemun Fashion Town
					3.Sinchon / Hongdae
					4.Jonglo / Cheonggye
					5.Gangnam Station
	</p>
	<p id = "rate10">1.Myeongdong / Namdaemun / Bukchang
					2.Dongdaemun Fashion Town
					3.Jonglo / Cheonggye
					4.Gangnam Station
					5.Itaewon
	</p>
	
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

			$('#popimg2').attr('src', 'img/pie/es1.PNG');
			$('#rate').html(rate1);
		});

		// 버튼2
		$('#c2:button').on('click', function() {
			$('#popimg2').attr('src', 'img/pie/es2.PNG');
			$('#rate').html(rate2);
		});
		// 버튼3
		$('#c3:button').on('click', function() {
			$('#popimg2').attr('src', 'img/pie/es3.PNG');
			$('#rate').html(rate3);
		});
		// 버튼4
		$('#c4:button').on('click', function() {
			$('#popimg2').attr('src', 'img/pie/es4.PNG');
			$('#rate').html(rate4);
		});
		// 버튼5
		$('#c5:button').on('click', function() {
			$('#popimg2').attr('src', 'img/pie/es5.PNG');
			$('#rate').html(rate5);
		});
		// 버튼6
		$('#c6:button').on('click', function() {
			$('#popimg2').attr('src', 'img/pie/es6.PNG');
			$('#rate').html(rate6);
		});
		// 버튼7
		$('#c7:button').on('click', function() {
			$('#popimg2').attr('src', 'img/pie/es7.PNG');
			$('#rate').html(rate7);
		});
		// 버튼8
		$('#c8:button').on('click', function() {
			$('#popimg2').attr('src', 'img/pie/es8.PNG');
			$('#rate').html(rate8);
		});
		// 버튼9
		$('#c9:button').on('click', function() {
			$('#popimg2').attr('src', 'img/pie/es9.PNG');
			$('#rate').html(rate9);
		});
		// 버튼10
		$('#c10:button').on('click', function() {
			$('#popimg2').attr('src', 'img/pie/es10.PNG');
			$('#rate').html(rate10);
		});
</script>


	<p id="texttext1">Teléfono: 02-3700-3900

		Dirección: 161, Sajik-ro, Jongno-gu, Seoul Gyeongbokgung District Dirección: 1-91 Sejong-ro

		Horario de apertura: todos los días 09: 00-18: 00 (última admisión 17:00) Cerrado los martes

		Adulto (25 a 64 años): 3.000 wones

		Adolescentes menores de 24 años: gratis discapacitados, mérito: gratis

		Mayores de 65 años: los que usan hanbok gratis: gratis
	
		Gyeongbokgung fue el palacio más grande que
		representa a la República de Corea y ayudó a la prosperidad de la
		dinastía Joseon. El tamaño del Palacio Gyeongbokgung es de
		aproximadamente 750 habitaciones, lo que simboliza el tamaño del país
		y la familia real más allá del significado del espacio donde el rey
		mira la oficina. Era un lugar El Palacio Gyeongbokgung, donde el rey
		ve sus asuntos desde la fundación de Corea hasta el final, todavía
		está bien conservado. Se convirtió en uno de los hitos que representa
		el país de Joseon, que ha sido amado por los coreanos. El Palacio
		Gyeongbokgung es Heungryemun a lo largo de la Puerta Gwanghwamun Si
		pasa el Geunjeongmun, puede ver que es un edificio que representa a la
		dinastía Joseon.</p>
	<p id="texttext2">Dirección: Myeong-dong, Jung-gu, Seúl
	
		Myeong-dong, la tierra más cara de Corea, es un
		símbolo de Seúl. En la dinastía Joseon Aunque era un área residencial,
		Chungmuro ​​se convirtió en un área comercial durante el período
		colonial japonés, y se convirtió en un distrito comercial de
		Myeong-dong, un área adyacente, convirtiéndose en el mejor centro de
		Corea. Fue hecho. Myeongdong tiene una gran cultura de compras que se
		dice que es el líder de la moda. Hay varias tiendas, no solo tiendas,
		sino también tiendas vinculadas. También en Myeongdong, con tiendas Se
		dice que es el mejor lugar para disfrutar no solo de los coreanos sino
		también de los extranjeros en Corea.</p>
	<p id="texttext3">Dirección: Insa-dong, Jongno-gu, Seúl
		
		Insa-dong Ssamji-gil es un edificio en Insa-dong,
		Jongno-gu, Seúl. Ssamji es un bolsillo Significa puro coreano.
		Ssamji-gil significa agregar varios elementos culturales divertidos al
		callejón Insa-dong agregando 'gil' después de 'ssam-ji'. Gaa Institute
		of Architecture Este edificio fue realizado por Choi Moon-gyu, un
		arquitecto de Ssamji. Ssamji-gil es un centro comercial especializado
		en artesanías. Hay Un edificio en espiral con una superficie total de
		4.066,01 m² (1.200 pyeong), una variedad de diseños con artesanía
		tradicional coreana o moda coreana Hay más de 70 tiendas de artesanía,
		bienes culturales y tiendas de recuerdos, galerías y restaurantes que
		ofrecen a los turistas una gran variedad de diversión. La carretera
		está unida al edificio porque todo el cuarto piso está conectado a un
		callejón. Es una forma de "ㅁ" que rodea el patio de la pastilla. Cada
		piso Conduce a una suave pendiente y camina a través de las tiendas
		para llegar al jardín del cielo en la azotea.</p>
	<p id="texttext4">Teléfono: 02-6000-0114

		Dirección: 513 Yeongdong-daero, Gangnam-gu, Seúl Dirección: 159 Samseong-dong

		Horario de apertura: todos los días 10: 00-18: 00 Observaciones (diferentes horarios para el final del evento)
	
		La meca de los negocios globales de Asia con
		transporte, comunicaciones e infraestructura empresarial avanzada Es
		la sala de exposiciones generales más grande de Corea, inaugurada en
		marzo de 1979 con el objetivo de proporcionar un lugar para el
		comercio internacional y el intercambio cultural. Es un total de
		11,000 pyeong (área bruta 130,000 pyeong) y consta de 4 pisos sobre el
		suelo y 4 pisos bajo tierra, con 12 salas de exhibición especializadas
		y 7000 personas. El hotel cuenta con 61 salas de reuniones, incluido
		un salón de convenciones que puede acomodarse al mismo tiempo. También
		cuenta con un sistema de soporte integral para negocios
		internacionales. Alberga más de 150 exposiciones profesionales y
		varias conferencias y eventos internacionales anualmente, y atrae
		directamente a compradores extranjeros y empresas nacionales de
		importación y exportación. Además, tiene el papel de aumentar el
		comercio, y hay un acuario en COEX, por lo que no solo los turistas
		coreanos sino también los turistas extranjeros Puedes ver el acuario a
		gran escala.</p>
	<p id="texttext5">Teléfono: 02-3668-2300

		Dirección: 99 Yulgok-ro, Jongno-gu, Seúl Dirección: 2-71 Waryong-dong

		Horario de apertura: todos los días 09: 00-18: 00 (febrero-mayo, septiembre-octubre), todos los días 09: 00-18: 30 (junio-agosto), todos los días 09: 00-16: 30 ( Noviembre a enero)
		Cerrado los lunes
	
		El Palacio Changdeokgung es un palacio de la
		dinastía Joseon ubicado en Jongno-gu, Seúl. Mezcla integral de
		arquitectura y paisaje. Es un ejemplo de diseño ambiental y un
		importante patrimonio cultural para leer la atmósfera espacial
		coreana. En la historia de la arquitectura, El paisajismo del
		mecenazgo es valioso como jardín real representativo de Corea.
		Changdeokgung es un palacio de Joseon que nació en una historia
		desafortunada. El quinto hijo, que se convirtió en rey durante la
		disputa del trono entre los hijos y los sirvientes de Lee Seong-gye
		que fundó Corea, Taejong, quien se convirtió en rey pero se negó a
		ingresar al Palacio Gyeongbokgung, donde mató a sus hermanos,
		construyó un nuevo palacio y vio su oficina. Palacio Changdeokgung.
		Como tiene una historia dolorosa, es un palacio que representa a
		Corea, que representa a Corea con muchas cosas especiales para ver.</p>
	<p id="texttext6">Teléfono: 02-3218-4800

		Dirección: Bongeunsa-ro 531, Bongeunsa-ro, Gangnam-gu, Seúl
	
		Bongeunsa está repleta de personas que siempre
		rezan y adoran sin días laborables ni feriados. Un poco extraño Es un
		lugar donde la religión se encuentra con la vida cotidiana, pero no es
		tan bueno para aquellos que desean visitar el templo con calma. Es
		cierto que Bongeunsa es un templo construido durante el rey del rey
		Silla Uner, donde se creó una tumba del emperador Jung Hyeon, rey de
		la dinastía Joseon, y se convirtió en un templo de interés y
		desarrollo para la familia real de Joseon. Comenzado Los templos que
		conocemos a menudo están fuera de las montañas, donde la gente no vive
		o el radio de vida de la gente común. En el medio, también se
		encuentra en el centro de la población más flotante en Seúl, Gangnam,
		donde hay muchas personas religiosas entrando y saliendo.
		Convenientemente, muchas personas religiosas extranjeras también
		visitaron Corea una vez.</p>
	<p id="texttext7">Teléfono: 1833-7001

		Dirección: Hanwha Financial Center 50, 63-ro, Yeongdeungpo-gu, Seúl_63 Dirección: Hanwha Financial Center 60, Yeouido-dong_63

		Horario de apertura: todos los días 10: 00-22: 00

		Tarifa: 63 arte _ adulto (más de 20 años): 20,000 wones 63 arte _ niño (menor de 13 años): 16,000 wones

		63 Art_Youth (14-19 años): 18,000 won 63 Boleto Art Couple (63 art 2 personas / Americano 2 gafas): 43,000 won

		Aqua Planet 63 (más de 20 años): 25,000 wones
	
		Edificio 63, el edificio más alto de Corea que
		representa a Seúl hasta que se completó la Torre Lotte, La compañía
		coreana Hanwha se ha convertido en un hito de Seúl, completada en
		1985. En ese momento, no había rascacielos en Corea. La compañía
		construyó con el propósito de construir una compañía, sin fines de
		lucro, pero atrapó dos conejos al mismo tiempo con el título de
		Landmark of Korea. Fue un caso. A diferencia de Lotte Tower, hay
		oficinas de Hanwha y otras compañías, y varias instalaciones,
		observatorios y acuarios subterráneos. Se caracteriza por el hecho de
		que ha proporcionado un espacio turístico utilizando las ventajas de
		los rascacielos. Edificio 63 en Yeouido, Seúl Se dice que es uno de
		los puntos de referencia en Seúl que todavía atrae a muchos turistas
		porque se puede ver todo Seúl desde la plataforma de observación más
		alta del centro.</p>
	<p id="texttext8">Teléfono: 02-709-3139

		Dirección: War Memorial, 29 Itaewon-ro, Yongsan-gu, Seoul Dirección: War Memorial, Yongsan-dong 1-ga

		Horario de apertura: 09: 30-18: 00 todos los días
	
		Cerrado los lunes (cerrado el día siguiente de las vacaciones durante los días festivos que incluyen los lunes)
	
		25 de junio de 1950, amanecer antes de que todos
		estuvieran dormidos al amanecer. Disparos en una pacífica península
		coreana Resuena La guerra de Corea comenzó cuando los norcoreanos
		invadieron el paralelo 38, la línea de demarcación militar
		intercoreana. La guerra entre coreanos dividida por sangre Con los
		Estados Unidos, la Unión Soviética y China, tuvo la posibilidad de un
		alto el fuego en julio de 1953. Incluso si se disfruta. Presentamos el
		Yongsan War Memorial, que registra la historia de la tierra hace medio
		siglo. War Memorial 1st Ground War History Room Siempre muestre lo que
		sucede con el comentarista cultural de Nivel 2 por día. Explique un
		poco más conveniente y vívidamente. Además, la historia de la guerra
		de la península de Corea Sin embargo, el memorial de guerra puede ser.</p>
	<p id="texttext9">Teléfono: 02-2133-1372

		Dirección: 37 Gyedong-gil, Jongno-gu, Seúl Dirección: 105 Bukchon Cultural Center, Gye-dong

		El Área de Preservación de Hanok se encuentra al
		pie de Bukaksan, entre el Palacio Gyeongbokgung, el Palacio
		Changdeokgung y Geumwon (Biwon). También se llama Bukchon, que
		significa Upper Town. Bukchon es una casa de alta calidad donde se
		reunieron obras maestras de alto rango, familias reales y cuatro
		generaciones. Es una casa de azulejos en la dinastía Joseon.
		Originalmente, solo había unas pocas casas con enormes puertas y cerca
		de 30 hanoks en esta área. Fue construido mucho, y en 1992, fue
		levantado del Distrito de Preservación Hanok de Gahoe-dong. Pistola
		Hay 2.297 edificios, de los cuales 1.408 son Hanoks y el resto son
		edificios generales. Centro de exposiciones Bukchon Yangban Life
		Culture Se instala la escultura simbólica de la aldea de Bukchon
		Hanok, y se celebra el Festival de la aldea tradicional de Gahoe-dong,
		donde se puede ver la vida de los antepasados. Alrededor Hay
		atracciones turísticas como el Palacio Gyeongbokgung, el Palacio
		Changdeokgung, el Palacio Deoksugung, Geumwon y el Parque
		Samcheong.Bukchon 1-gyeong con una vista panorámica del Palacio
		Changdeokgung. 11, Gahoe-dong, vista de Bukchon 3, Gahoe-dong 31, 4
		colinas, callejón cuesta abajo de Gahoe-dong, 5 Bukchon-dong, A través
		de los callejones cuesta arriba de Gahoe-dong, 6 Bukchon, 31
		Gahoe-dong 31, Bukchon 7, y Samcheong-dong Stone Steps, 8 Bukchon Como
		te sientes</p>
	<p id="texttext10">Teléfono: 02-2077-9000

		Dirección: 137 Seobinggo-ro, Yongsan-gu, Seúl Dirección: 168-6, Yongsan-dong 6-ga

		Horario de apertura: lunes, martes, jueves, viernes 10: 00-18: 00, miércoles, sábado 10: 00-21: 00, (domingo, feriados nacionales) 10: 00-19: 00

		Cerrado: 1 de enero, Año Nuevo, Día de Chuseok / Sala de exposiciones permanentes Cerrado: 1er lunes de abril y noviembre

		Tarifa de admisión: gratis
	
		Los artefactos preciosos de nuestra historia han
		encontrado un nuevo hogar maravilloso. Inaugurado en octubre de 2005
		El Museo Nacional de Corea es un museo de escala mundial que alberga y
		exhibe 300,000 artefactos (a partir de enero de 2012) en un vasto
		espacio de 300,000㎡. Es un museo. Ubicado en la antigua posición de
		USFK en Yongsan, hereda la sabiduría de nuestros antepasados ​​que
		valoraron la armonía entre la naturaleza y el hombre. El jardín está
		diseñado para armonizar y está ubicado en el lugar de Baesan Imsu, que
		está rodeado por Namsan y el río Han. 1 nivel del sótano y 6 niveles
		del suelo El edificio del museo tiene un exterior que parece dos
		edificios conectados entre sí. Reunidos Al entrar al edificio, podrás
		encontrar la pagoda de 10 pisos del Templo Gyeongcheonsa y el Templo
		Gotha-sa. Seis salas de exposiciones permanentes están en
		funcionamiento. Tres pisos a izquierda y derecha: edificios
		prehistóricos y antiguos, museos medianos y modernos, salas de
		donantes, salas de caligrafía, pabellones asiáticos, salas de
		esculturas y artesanías. Más de 15,000 artefactos están en exhibición.
		Aproximadamente una semana de trabajo Es una gran escala que Es
		necesario seleccionar cursos como las "100 Reliquias Importantes"
		seleccionadas por el museo, o compartirlas con el tiempo. En el piso
		de la exposición Es una buena idea usar un tiempo de guía del operador
		guiado o usar una guía automática. La visualización de artefactos del
		método tradicional enumerado Es más interesante porque utiliza
		iluminación de vanguardia y efectos especiales para resaltar el valor
		de cada artefacto. Además, mucho difícil de ver El museo es una
		exposición permanente de reliquias extranjeras, elevando su estatus
		como un importante museo asiático. Además de la sala de exposiciones
		permanentes, sala de exposiciones de planificación, sala de
		exposiciones para niños, Es un espacio cultural integral donde las
		salas de exposiciones al aire libre agregan atracciones e incluso una
		sala de espectáculos y una biblioteca profesionales. También hay
		espacios de restaurantes en todo el museo. Estamos preparando comida
		con características especiales. Si prepara la información con
		anticipación a través de la página de inicio, etc., puede dejar más
		viajes en el tiempo.</p>

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
	<p id="texttext11">Palacio Gyeongbokgung abierto por la noche

		Período: finales de abril a principios de noviembre de cada año

		Lugar: Gyeongbokgung

		Organizador: Administración del Patrimonio Cultural

		Tarifa: Público: 3.000 wones
        Mayores de 65 años, extranjeros: 3.000 wones
        Usuario de Hanbok: Gratis</p>
	<p id="texttext22">2번</p>
	<p id="texttext33">Dirección: 2-10, Sanseong-dong, 41 Naksan-gil, Jongno-gu, Seúl

Al restaurar el entorno natural y el entorno cultural histórico de Naksan, uno de Naesasan (Bukaksan, Namsan, Inwangsan y Naksan), que constituye la ciudad capital de Seúl, y el dragón azul izquierdo de Bukaksan, la montaña principal Fue creado con el objetivo de proporcionar vistas agradables del parque a los ciudadanos de Seúl y proporcionar un lugar para la educación histórica y cultural a través de la exploración natural.
El área total era de 6.145 pyeong, y la construcción comenzó el 30 de diciembre de 1999, y se completó en julio de 2002. Las instalaciones principales son: ① Sala de exhibición y administración, quiosco y baño, bidang, pabellón hexagonal, pabellón de ancianos, 5 instalaciones de construcción ② Instalaciones deportivas que consisten en 12 canchas de bádminton y 1 cancha de baloncesto ③ 10 áreas de descanso y 117 sillas Instalaciones de conveniencia que consisten en ④ Plaza central, Plaza de eventos y Instalación de la plaza que consta de tres plazas de observatorio ⑤ Otros paneles informativos y otras 28 instalaciones. Además, para la reverdecimiento del parque, se plantaron 8.670 árboles de 40 especies, incluidos los pinos.</p>
	<p id="texttext44">Dirección: Torre de Seúl, 103 Namsan Park-gil, Yongsan-gu, Seúl

Horario de apertura: 11: 00-20: 00 todos los días

Tarifa: plataforma de observación (adulto) 11,000 wones Plataforma de observación (niño) 9000 wones

Namsan Seoul Tower, la primera atracción turística
Namsan Seoul Tower, la primera atracción turística en Seúl, donde 12 millones de personas visitan turistas nacionales y extranjeros al año
Recientemente, a medida que el nombre de la Ola Coreana ha aumentado y el nombre de varios entretenimientos y dramas ha aumentado, el número de turistas ha aumentado.
Dado que se encuentra en el centro de Seúl y tiene una excelente ubicación para pasar por alto el centro de Seúl en todas las direcciones, ha sido seleccionado como uno de los 500 principales destinos turísticos del mundo por Lonely Planet, la editorial de viajes más grande del mundo.
La Plaza de la Torre de Seúl, recientemente remodelada y abierta, ofrece varias instalaciones turísticas, atracciones y tiendas de alimentos y bebidas para brindar servicios a los turistas.</p>
	<p id="texttext55">5번</p>
	<p id="texttext66">6번</p>
	<p id="texttext77">7번</p>
	<p id="texttext88">8번</p>
	<p id="texttext99">Teléfono: 02-1661-2000

		Dirección: 240 Olympic-ro, Songpa-gu, Seúl Dirección: 40-1 Jamsil-dong

		Tarifa: Pase gratis (Adulto: 56,000 wones Juventud: 50,000 wones Niño: 46,000 wones)
        
		After4 (Adultos: 45,000 wones Adolescentes 40,000 wones, Niños: 35,000 wones)

		Este es un parque temático establecido y operado por Lotte Group para ayudar a las personas a disfrutar del ocio y atraer turistas extranjeros. Lotte World es un parque temático cubierto con el tema de la aventura y el misterio, Lotte World Adventure, Lake Park Magic Island, centro comercial, museo popular, pista de hielo, hotel, grandes almacenes, etc. para resolver el turismo, el ocio, las compras y la cultura en un solo lugar. Es un espacio habitable complejo a gran escala. En Lotte World Adventure, puede disfrutar de instalaciones de embarque de última generación, fantásticos desfiles, varios sistemas de video, espectáculos de láser, actuaciones y comida de todo el mundo 24/7. Lotte World Adventure es el parque temático cubierto más grande del mundo. En el Museo Folklórico, la historia y la cultura popular de 5000 años de Corea se dividen en salas de exposiciones históricas, pueblos modelo, patios de diversiones y calles de autor, lo que hace que la reproducción sea fácil y divertida. Lotte World Garden Stage es el escenario central de las actuaciones de Lotte World, y varios eventos como espectáculos musicales y transmisiones públicas se llevan a cabo en varias temporadas. Lotte World Star Avenue es una calle de composición de estrellas Hallyu y es una instalación de entretenimiento experimental.</p>



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
	var joinCheck = true;
	$("#joinCheck").on('click',jojoinchch);
	
	function jojoinchch(){
		if(joinCheck){
			alert("Verifique si la ID está duplicada.");
			$("#joinForm").attr("onsubmit","return false");
		}else{
			$("#joinForm").attr("onsubmit","");
		}
	}					
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
            		alert("La identificación está duplicada.");
            	else
            		alert("Esta es una identificación disponible.");
            },
            error : function(){
            	console.log(2);
            }
         });
      }
   
            
   </script>
</body>
</html>
