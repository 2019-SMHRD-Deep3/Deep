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
	/* left: 10; */
	min-height: 100%;
	width: auto;
	height: auto;
}

#lan td {
	width: 50px;
}

#dropdownMenuButton {
	width: auto;
	height: 40px;
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

article#Login {
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
.inTag a{
	color: white !important;
}
</style>


</head>
<body class="is-preload">
<%
		MemberDTO info = (MemberDTO) session.getAttribute("info"); //
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

		<table id="lan" style="position: absolute; right: 0px;" border="0px;">
			<%
						if (info == null) {
					%>
					<td class="inTag" style="color: rgba(255, 255, 255, 1.0);"><a
						href="#Login">Login</a></td>
					<td class="inTag" style="color: rgba(255, 255, 255, 1.0);"><a
						href="#Join">Join </a></td>
					<%
						} else {
					%>
					<td class="inTag" style="color: rgba(255, 255, 255, 1.0);"><a
						href="#Login"><%=info.getId()%> </a></td>
					<td class="inTag" style="color: rgba(255, 255, 255, 1.0);"><a
						href="LogoutService.do">로그아웃 </a></td>
					<td class="inTag" style="color: rgba(255, 255, 255, 1.0);"><a
						href="update.jsp"> 회원정보수정 </a></td>
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
		<header id="header">
			<nav>
				<ul class="cont">
					<li><a style="font-size: 20px;" class="linkcolor" href="#intro">Service</a></li>
					<li><a style="font-size: 20px;" class="linkcolor" href="#work">Repère</a></li>
					<li><a style="font-size: 20px;" class="linkcolor" href="#about"> Exemple</a></li>
					<li><a style="font-size: 20px;" class="linkcolor" href="K-survey.jsp">MakeCourse</a></li>
					<!--<li><a href="#elements">Elements</a></li>-->
				</ul>
			</nav>
		</header>



		<!-- Main -->
		<div id="main">


		<!-- Login -->
			<article id="Login">
				<form action="LoginService" method="post">
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
				<form action="JoinService" method="post">
					<table>
						<tr>
							<td>ID</td>
							<td><input placeholder="enter ID" type="text" name=id>
							</td>
							<td><input type="button" value="Confirm Overlap"></td>
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
				<span class="image main"><img src="images/back.PNG" alt="서울" /></span>
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
				<h2 class="major1" href="#" style="display: inline;">
					<div id="day" class="a1">semaine</div>
				</h2>
				<h2 class="major2" href="#" style="display: inline;">
					<div id="day" class="a2">La nuit</div>
				</h2>
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
					<button class="ten" id="ko9">hanchon du nord</button>
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
				<h2 class="major">베스트 테마</h2>
				<span class="image main"><img src="images/pic03.jpg" alt="" /></span>
				<p>하위~</p>
			</article>

			<!-- Contact -->
			<article id="contact"></article>

			<!-- Elements -->
			<article id="elements">
				<h2 class="major">Elements</h2>

				<section>
					<h3 class="major">Text</h3>
					<p>
						This is <b>bold</b> and this is <strong>strong</strong>. This is <i>italic</i>
						and this is <em>emphasized</em>. This is <sup>superscript</sup>
						text and this is <sub>subscript</sub> and this is code:
						<code>for (;;) { ... }</code>
						. Finally, <a href="#">this is a link</a>.
					</p>
					<hr />
					<h2>Heading Level 2</h2>
					<h3>Heading Level 3</h3>
					<h4>Heading Level 4</h4>
					<h5>Heading Level 5</h5>
					<h6>Heading Level 6</h6>
					<hr />
					<h4>Blockquote</h4>
					<blockquote>Fringilla nisl. Donec accumsan interdum
						nisi, quis tincidunt felis sagittis eget tempus euismod.
						Vestibulum ante ipsum primis in faucibus vestibulum. Blandit
						adipiscing eu felis iaculis volutpat ac adipiscing accumsan
						faucibus. Vestibulum ante ipsum primis in faucibus lorem ipsum
						dolor sit amet nullam adipiscing eu felis.</blockquote>
					<h4>Preformatted</h4>
					<pre>
						<code>i = 0;

while (!deck.isInOrder()) {
    print 'Iteration ' + i;
    deck.shuffle();
    i++;
}

print 'It took ' + i + ' iterations to sort the deck.';</code>
					</pre>
				</section>

				<section>
					<h3 class="major">Lists</h3>

					<h4>Unordered</h4>
					<ul>
						<li>Dolor pulvinar etiam.</li>
						<li>Sagittis adipiscing.</li>
						<li>Felis enim feugiat.</li>
					</ul>

					<h4>Alternate</h4>
					<ul class="alt">
						<li>Dolor pulvinar etiam.</li>
						<li>Sagittis adipiscing.</li>
						<li>Felis enim feugiat.</li>
					</ul>

					<h4>Ordered</h4>
					<ol>
						<li>Dolor pulvinar etiam.</li>
						<li>Etiam vel felis viverra.</li>
						<li>Felis enim feugiat.</li>
						<li>Dolor pulvinar etiam.</li>
						<li>Etiam vel felis lorem.</li>
						<li>Felis enim et feugiat.</li>
					</ol>
					<h4>Icons</h4>
					<ul class="icons">
						<li><a href="#" class="icon brands fa-twitter"><span
								class="label">Twitter</span></a></li>
						<li><a href="#" class="icon brands fa-facebook-f"><span
								class="label">Facebook</span></a></li>
						<li><a href="#" class="icon brands fa-instagram"><span
								class="label">Instagram</span></a></li>
						<li><a href="#" class="icon brands fa-github"><span
								class="label">Github</span></a></li>
					</ul>

					<h4>Actions</h4>
					<ul class="actions">
						<li><a href="#" class="button primary">Default</a></li>
						<li><a href="#" class="button">Default</a></li>
					</ul>
					<ul class="actions stacked">
						<li><a href="#" class="button primary">Default</a></li>
						<li><a href="#" class="button">Default</a></li>
					</ul>
				</section>

				<section>
					<h3 class="major">Table</h3>
					<h4>Default</h4>
					<div class="table-wrapper">
						<table>
							<thead>
								<tr>
									<th>Name</th>
									<th>Description</th>
									<th>Price</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>Item One</td>
									<td>Ante turpis integer aliquet porttitor.</td>
									<td>29.99</td>
								</tr>
								<tr>
									<td>Item Two</td>
									<td>Vis ac commodo adipiscing arcu aliquet.</td>
									<td>19.99</td>
								</tr>
								<tr>
									<td>Item Three</td>
									<td>Morbi faucibus arcu accumsan lorem.</td>
									<td>29.99</td>
								</tr>
								<tr>
									<td>Item Four</td>
									<td>Vitae integer tempus condimentum.</td>
									<td>19.99</td>
								</tr>
								<tr>
									<td>Item Five</td>
									<td>Ante turpis integer aliquet porttitor.</td>
									<td>29.99</td>
								</tr>
							</tbody>
							<tfoot>
								<tr>
									<td colspan="2"></td>
									<td>100.00</td>
								</tr>
							</tfoot>
						</table>
					</div>

					<h4>Alternate</h4>
					<div class="table-wrapper">
						<table class="alt">
							<thead>
								<tr>
									<th>Name</th>
									<th>Description</th>
									<th>Price</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>Item One</td>
									<td>Ante turpis integer aliquet porttitor.</td>
									<td>29.99</td>
								</tr>
								<tr>
									<td>Item Two</td>
									<td>Vis ac commodo adipiscing arcu aliquet.</td>
									<td>19.99</td>
								</tr>
								<tr>
									<td>Item Three</td>
									<td>Morbi faucibus arcu accumsan lorem.</td>
									<td>29.99</td>
								</tr>
								<tr>
									<td>Item Four</td>
									<td>Vitae integer tempus condimentum.</td>
									<td>19.99</td>
								</tr>
								<tr>
									<td>Item Five</td>
									<td>Ante turpis integer aliquet porttitor.</td>
									<td>29.99</td>
								</tr>
							</tbody>
							<tfoot>
								<tr>
									<td colspan="2"></td>
									<td>100.00</td>
								</tr>
							</tfoot>
						</table>
					</div>
				</section>

				<section>
					<h3 class="major">Buttons</h3>
					<ul class="actions">
						<li><a href="#" class="button primary">Primary</a></li>
						<li><a href="#" class="button">Default</a></li>
					</ul>
					<ul class="actions">
						<li><a href="#" class="button">Default</a></li>
						<li><a href="#" class="button small">Small</a></li>
					</ul>
					<ul class="actions">
						<li><a href="#" class="button primary icon solid fa-download">Icon</a></li>
						<li><a href="#" class="button icon solid fa-download">Icon</a></li>
					</ul>
					<ul class="actions">
						<li><span class="button primary disabled">Disabled</span></li>
						<li><span class="button disabled">Disabled</span></li>
					</ul>
				</section>

				<section>
					<h3 class="major">Form</h3>
					<form method="post" action="#">
						<div class="fields">
							<div class="field half">
								<label for="demo-name">Name</label> <input type="text"
									name="demo-name" id="demo-name" value="" placeholder="Jane Doe" />
							</div>
							<div class="field half">
								<label for="demo-email">Email</label> <input type="email"
									name="demo-email" id="demo-email" value=""
									placeholder="jane@untitled.tld" />
							</div>
							<div class="field">
								<label for="demo-category">Category</label> <select
									name="demo-category" id="demo-category">
									<option value="">-</option>
									<option value="1">Manufacturing</option>
									<option value="1">Shipping</option>
									<option value="1">Administration</option>
									<option value="1">Human Resources</option>
								</select>
							</div>
							<div class="field half">
								<input type="radio" id="demo-priority-low" name="demo-priority"
									checked> <label for="demo-priority-low">Low</label>
							</div>
							<div class="field half">
								<input type="radio" id="demo-priority-high" name="demo-priority">
								<label for="demo-priority-high">High</label>
							</div>
							<div class="field half">
								<input type="checkbox" id="demo-copy" name="demo-copy">
								<label for="demo-copy">Email me a copy</label>
							</div>
							<div class="field half">
								<input type="checkbox" id="demo-human" name="demo-human" checked>
								<label for="demo-human">Not a robot</label>
							</div>
							<div class="field">
								<label for="demo-message">Message</label>
								<textarea name="demo-message" id="demo-message"
									placeholder="Enter your message" rows="6"></textarea>
							</div>
						</div>
						<ul class="actions">
							<li><input type="submit" value="Send Message"
								class="primary" /></li>
							<li><input type="reset" value="Reset" /></li>
						</ul>
					</form>
				</section>

			</article>

		</div>

		<!-- Footer -->
		<footer id="footer">
			<p class="copyright">
				&copy; Untitled. Design: <a href="https://html5up.net">HTML5 UP</a>.
			</p>
		</footer>

	</div>

	<p id="texttext1">Gyeongbokgung était le plus grand palais
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
	<p id="texttext2">Myeong-dong, la terre la plus chère de Corée, est
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
	<p id="texttext3">Insa-dong Ssamji-gil est un bâtiment à Insa-dong,
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
	<p id="texttext4">La Mecque du commerce mondial en Asie avec les
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
	<p id="texttext5">Le palais de Changdeokgung est un palais de la
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
	<p id="texttext6">Bongeunsa regorge de gens qui prient et adorent
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
	<p id="texttext7">63 Building, le plus haut bâtiment de Corée qui
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
	<p id="texttext8">Le 25 juin 1950, tout le monde s'est endormi
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
	<p id="texttext9">La zone de préservation de Hanok est située au
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
	<p id="texttext10">De précieux objets de notre histoire ont trouvé
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
		var test1 = document.querySelector('#texttext1').textContent;
		var test2 = document.querySelector('#texttext2').textContent;
		var test3 = document.querySelector('#texttext3').textContent;
		var test4 = document.querySelector('#texttext4').textContent;
		var test5 = document.querySelector('#texttext5').textContent;
		var test6 = document.querySelector('#texttext6').textContent;
		var test7 = document.querySelector('#texttext7').textContent;
		var test8 = document.querySelector('#texttext8').textContent;
		var test9 = document.querySelector('#texttext9').textContent;
		var test10 = document.querySelector('#texttext10').textContent;
		// 버튼 1
		$('#ko1:button').on('click', function() {

			$('#popimg0').attr('src', 'img/k2.PNG');
			$('#texttext').html(test1);
		});
		// 버튼2
		$('#ko2:button').on('click', function() {
			$('#popimg0').attr('src', 'img/k3.PNG');
			$('#texttext').html(test2);
		});
		// 버튼3
		$('#ko3:button').on('click', function() {
			$('#popimg0').attr('src', 'img/k4.PNG');
			$('#texttext').html(test3);
		});
		// 버튼4
		$('#ko4:button').on('click', function() {
			$('#popimg0').attr('src', 'img/k6.PNG');
			$('#texttext').html(test4);
		});
		// 버튼5
		$('#ko5:button').on('click', function() {
			$('#popimg0').attr('src', 'img/k6.PNG');
			$('#texttext').html(test5);
		});
		// 버튼6
		$('#ko6:button').on('click', function() {
			$('#popimg0').attr('src', 'img/k7.PNG');
			$('#texttext').html(test6);
		});
		// 버튼7
		$('#ko7:button').on('click', function() {
			$('#popimg0').attr('src', 'img/k8.jpg');
			$('#texttext').html(test7);
		});
		// 버튼8
		$('#ko8:button').on('click', function() {
			$('#popimg0').attr('src', 'img/k9.PNG');
			$('#texttext').html(test8);
		});
		// 버튼9
		$('#ko9:button').on('click', function() {
			$('#popimg0').attr('src', 'img/k10.PNG');
			$('#texttext').html(test9);
		});
		// 버튼10
		$('#ko10:button').on('click', function() {
			$('#popimg0').attr('src', 'img/k11.PNG');
			$('#texttext').html(test10);
		});
	</script>


	<p id="texttext11">1번</p>
	<p id="texttext22">2번</p>
	<p id="texttext33">3번</p>
	<p id="texttext44">4번</p>
	<p id="texttext55">5번</p>
	<p id="texttext66">6번</p>
	<p id="texttext77">7번</p>
	<p id="texttext88">8번</p>
	<p id="texttext99">9번</p>



	<div id="bg"></div>
	<script type="text/javascript">
		var text = document.querySelector('#texttext');
		var popimgs = document.getElementById('popimg0');
		var test11 = document.querySelector('#texttext11').textContent;
		var test22 = document.querySelector('#texttext22').textContent;
		var test33 = document.querySelector('#texttext33').textContent;
		var test44 = document.querySelector('#texttext44').textContent;
		var test55 = document.querySelector('#texttext55').textContent;
		var test66 = document.querySelector('#texttext66').textContent;
		var test77 = document.querySelector('#texttext77').textContent;
		var test88 = document.querySelector('#texttext88').textContent;
		var test99 = document.querySelector('#texttext99').textContent;
		// 버튼 1
		$('#k1:button').on('click', function() {
			$('#popimg1').attr('src', 'img/kn1.PNG');
			$('#texttext').html(test11);
		});
		// 버튼2
		$('#k2:button').on('click', function() {
			$('#popimg1').attr('src', 'img/kn2.PNG');
			$('#texttext').html(test22);
		});
		// 버튼3
		$('#k3:button').on('click', function() {
			$('#popimg1').attr('src', 'img/kn3.PNG');
			$('#texttext').html(test33);
		});
		// 버튼4
		$('#k4:button').on('click', function() {
			$('#popimg1').attr('src', 'img/kn3.PNG');
			$('#texttext').html(test44);
		});
		// 버튼5
		$('#k5:button').on('click', function() {
			$('#popimg1').attr('src', 'img/k6.PNG');
			$('#texttext').html(test55);
		});
		// 버튼6
		$('#k6:button').on('click', function() {
			$('#popimg1').attr('src', 'img/k7.PNG');
			$('#texttext').html(test66);
		});
		// 버튼7
		$('#k7:button').on('click', function() {
			$('#popimg1').attr('src', 'img/k8.jpg');
			$('#texttext').html(test77);
		});
		// 버튼8
		$('#k8:button').on('click', function() {
			$('#popimg1').attr('src', 'img/k9.PNG');
			$('#texttext').html(test88);
		});
		// 버튼9
		$('#k9:button').on('click', function() {
			$('#popimg1').attr('src', 'img/k10.PNG');
			$('#texttext').html(test99);
		});
	</script>

</body>
</html>
