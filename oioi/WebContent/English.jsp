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

article#login {
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

.inTag a {
	color: white !important;
}
</style>


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

		<table id="lan" style="position: absolute; right: 0px;">
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
					<li><a style="font-size: 20px;" class="linkcolor"
						href="#intro">Service</a></li>
					<li><a style="font-size: 20px;" class="linkcolor" href="#work">LandMarks</a></li>
					<li><a style="font-size: 20px;" class="linkcolor"
						href="#about">Example</a></li>
					<li><a style="font-size: 20px;" class="linkcolor"
						href="K-survey.jsp">MakeCourse</a></li>
					<!--<li><a href="#elements">Elements</a></li>-->
				</ul>
			</nav>
		</header>



		<!-- Main -->
		<div id="main">


			<!-- Login -->
			<article id="Login">
				<form action="LoginService.do" method="post">
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
				<form action="JoinService.do" method="post">
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
				<h2 class="major">introduce new Seoul.</h2>
				<span class="image main"><img src="images/back.PNG" alt="서울" /></span>
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

				<h2 class="major1" href="#" style="display: inline;">
					<div id="day" class="a1">Daytime</div>
				</h2>
				<h2 class="major2" href="#" style="display: inline;">
					<div id="day" class="a2">Nighttime</div>
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
