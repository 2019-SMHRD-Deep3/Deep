<%@page import="com.model.MemberDAO"%>
<%@page import="com.model.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
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

.incom {
	background-color: rgba(91, 100, 113, 0.0175);
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
</style>

</head>
<body class="is-preload">
	<%
		MemberDTO info = (MemberDTO) session.getAttribute("info");
	 	// System.out.print(info.getId() + info.getName());
	%>
	<!-- Wrapper -->
	
			<div id="wrapper" position=relative;>
				<video id="videobcg" autoplay="autoplay" loop="loop" muted="muted"
					style="position: fixed;">
					<source src="video/seoul.mp4" type="video/mp4">
				</video>


				<!-- Header -->

				<ul id="mem">
					<table class="incom" bgcolor="#5b6471">
						<tr>
						<% if (info == null) { %>
							<td class="inTag" style="color: rgba(255, 255, 255, 1.0);">
							<a href="#Login">로그인 </a></td>
							<td class="inTag" style="color: rgba(255, 255, 255, 1.0);">
							<a href="#Join">회원가입 </a></td>
						<%} else { %>
							<td class="inTag" style="color: rgba(255, 255, 255, 1.0);">
							<a href="#Login"><%= info.getId()%> </a></td>
							<td class="inTag" style="color: rgba(255, 255, 255, 1.0);">
							<a href="LogoutService.do">로그아웃 </a></td>
							<td class="inTag" style="color: rgba(255, 255, 255, 1.0);">
							<a href="update.jsp"> 회원정보수정 </a></td>
						<% } %>
						</tr>
					</table>

				</ul>

				<header id="header">
					<nav>
						<ul>
							<li><a href="#intro">어서와</a></li>
							<li><a href="#work">서울은</a></li>
							<li><a href="#about">처음이지?</a></li>
							<li><a href="#contact">코스 추천</a></li>
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
						<form action="JoinService.do" method="post">
							<table>
								<tr>
									<td>아이디</td>
									<td><input placeholder="아이디 입력 " type="text" name=id>
									</td>
									<td><input type="button" value="중복 확인"></td>
								</tr>
								<tr>
									<td>비밀번호</td>
									<td colspan=2><input placeholder="비밀번호 입력 "
										type="password" name=pw></td>
								</tr>
								<tr>
									<td>비밀번호 확인</td>
									<td colspan=2><input placeholder="비밀번호 재입력 "
										type="password" name=pw></td>
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
					<article id="intro">
						<h2 class="major">서울</h2>
						<span class="image main"><img src="images/pic01.jpg" alt="" /></span>
						<p>서울특별시는 대한민국의 수도이자 최대 도시입니다. 한반도 중앙에 있으며, 한강을 사이에 두고 남북으로
							펼쳐져 있다. 북쪽 끝은 도봉구 도봉동, 동쪽 끝은 강동구 상일동, 남쪽 끝은 서초구 원지동, 서쪽 끝은 강서구
							오곡동이다. 시청은 중구 을지로1가(태평로1가 31)에 있다. 한반도의 0.28%(남한 면적의 0.61%)에 해당하는
							넓이로, 남북간 연장거리 30.30km, 동서간 연장거리 36.78km이다. 1394년(태조 3)부터 한국의 수도가
							되어 정치·경제·산업·사회·문화·교통의 중심지가 되어 왔다. 1960년대 이후 경제발전과 함께 도시화가 진행되면서
							통근 및 거주지역이 반경 30km 내의 주변 수도권에 광역적으로 확장되고 있어, 거대도시(Megalopolis)가
							되고 있다. 서울 정도(定都) 600년인 1994년에 10월 28일이 서울시민의 날로 제정되어 이후 각종 행사가
							열리고 있다. 1988년 국제올림픽이 열렸고, 2010년 G20, 2012년 핵안보정상회의가 열렸다.</p>
						<a href="#work">awesome work</a>.
						<p>ㅇㅇㅇ</p>
					</article>

					<!-- Work -->

					<article id="work">
						<h1>서울 10대 명소</h1>
						<h2 class="major1" href="#" style="display: inline;">주간</h2>
						<h2 class="major2" href="#" style="display: inline;">야간</h2>



						<div class='display'>
							<span><img id="popimg0" src="img/k1.PNG" alt="" /></span>
							<button class="ten" id="ko1">경복궁</button>
							<button class="ten" id="ko2">명동</button>
							<button class="ten" id="ko3">인사동</button>
							<button class="ten" id="ko4">코엑스</button>
							<button class="ten" id="ko5">창덕궁</button>
							<button class="ten" id="ko6">봉은사</button>
							<button class="ten" id="ko7">63빌딩</button>
							<button class="ten" id="ko8">전쟁기념관</button>
							<button class="ten" id="ko9">북촌한옥마을</button>
							<button class="ten" id="ko10">국립중앙박물관</button>
						</div>

						<div id='g'>
							<span><img id="popimg1" src="img/k1.PNG" alt="" /></span>
							<button class="next" id="k1">경복궁</button>
							<button class="next" id="k2">홍대</button>
							<button class="next" id="k3">낙산공원</button>
							<button class="next" id="k4">서울 N 타워</button>
							<button class="next" id="k5">강남역</button>
							<button class="next" id="k6">청계천</button>
							<button class="next" id="k7">가로수길</button>
							<button class="next" id="k8">여의도 한강 공원</button>
							<button class="next" id="k9">롯데월드</button>

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
						<p id="texttext">골라골라</p>

					</article>



					<!-- About -->
					<article id="about">
						<h2 class="major">베스트 테마</h2>
						<span class="image main"><img src="images/pic03.jpg" alt="" /></span>
						<p>Lorem ipsum dolor sit amet, consectetur et adipiscing elit.
							Praesent eleifend dignissim arcu, at eleifend sapien imperdiet
							ac. Aliquam erat volutpat. Praesent urna nisi, fringila lorem et
							vehicula lacinia quam. Integer sollicitudin mauris nec lorem
							luctus ultrices. Aliquam libero et malesuada fames ac ante ipsum
							primis in faucibus. Cras viverra ligula sit amet ex mollis mattis
							lorem ipsum dolor sit amet.</p>
					</article>

					<!-- Contact -->
					<article id="contact">
						<h2 class="major">Contact</h2>
						<form method="post" action="#">
							<div class="fields">
								<div class="field half">
									<label for="name">Name</label> <input type="text" name="name"
										id="name" />
								</div>
								<div class="field half">
									<label for="email">Email</label> <input type="text"
										name="email" id="email" />
								</div>
								<div class="field">
									<label for="message">Message</label>
									<textarea name="message" id="message" rows="4"></textarea>
								</div>
							</div>
							<ul class="actions">
								<li><input type="submit" value="Send Message"
									class="primary" /></li>
								<li><input type="reset" value="Reset" /></li>
							</ul>
						</form>
						<ul class="icons">
							<li><a href="#" class="icon brands fa-twitter"><span
									class="label">Twitter</span></a></li>
							<li><a href="#" class="icon brands fa-facebook-f"><span
									class="label">Facebook</span></a></li>
							<li><a href="#" class="icon brands fa-instagram"><span
									class="label">Instagram</span></a></li>
							<li><a href="#" class="icon brands fa-github"><span
									class="label">GitHub</span></a></li>
						</ul>
					</article>

					<!-- Elements -->
					<article id="elements">
						<h2 class="major">Elements</h2>

						<section>
							<h3 class="major">Text</h3>
							<p>
								This is <b>bold</b> and this is <strong>strong</strong>. This is
								<i>italic</i> and this is <em>emphasized</em>. This is <sup>superscript</sup>
								text and this is <sub>subscript</sub> text. This is <u>underlined</u>
								and this is code:
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
								<li><a href="#"
									class="button primary icon solid fa-download">Icon</a></li>
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
											name="demo-name" id="demo-name" value=""
											placeholder="Jane Doe" />
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
										<input type="radio" id="demo-priority-low"
											name="demo-priority" checked> <label
											for="demo-priority-low">Low</label>
									</div>
									<div class="field half">
										<input type="radio" id="demo-priority-high"
											name="demo-priority"> <label for="demo-priority-high">High</label>
									</div>
									<div class="field half">
										<input type="checkbox" id="demo-copy" name="demo-copy">
										<label for="demo-copy">Email me a copy</label>
									</div>
									<div class="field half">
										<input type="checkbox" id="demo-human" name="demo-human"
											checked> <label for="demo-human">Not a robot</label>
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
						&copy; Untitled. Design: <a href="https://html5up.net">HTML5
							UP</a>.
					</p>
				</footer>

			</div>

			<p id="texttext1">경복궁</p>
			<p id="texttext2">대한민국에서 가장 비싼 땅인 명동은 서울특별시를 상징하는 번화가이다. 조선 시대에는
				주택가였으나 일제강점기 충무로가 상업지역으로 발전하며 인접지역인 명동도 상가형태로 변하게 되어 대한민국 최고의 번화가로
				발돋움 하게 되었다. 명동은 유행의 선도자라고 불릴 정도로 거대한 쇼핑 문화가 형성되어 잇는데, 국내 유명 백화점은 물론
				명품,브랜드 매장뿐 만아니라 보세가게까지 다양한 상점이 있어 쇼핑에 최적화 되있다고 말할 수 있다. 또한 명동에는 쇼핑과
				함게 먹을거리,즐길거리 등이 있어 내국인 뿐만아니라 외국인들도 한국에서 즐길 수 있는 최적의 공간이라 불릴수 있다.~</p>
			<p id="texttext3">하위~</p>
			<p id="texttext4">하위~</p>
			<p id="texttext5">하위~</p>
			<p id="texttext6">하위~</p>
			<p id="texttext7">하위~</p>
			<p id="texttext8">하위~</p>
			<p id="texttext9">하위~</p>
			<p id="texttext10">하위~</p>

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

					$('#popimg1').attr('src', 'img/1.png');

					$('#texttext').html(test11);
				});
				// 버튼2
				$('#k2:button').on('click', function() {
					$('#popimg1').attr('src', 'img/k3.PNG');
					$('#texttext').html(test22);
				});
				// 버튼3
				$('#k3:button').on('click', function() {
					$('#popimg1').attr('src', 'img/k4.PNG');
					$('#texttext').html(test33);
				});
				// 버튼4
				$('#k4:button').on('click', function() {
					$('#popimg1').attr('src', 'img/k6.PNG');
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