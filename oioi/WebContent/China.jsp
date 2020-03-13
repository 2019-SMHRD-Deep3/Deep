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
						href="#intro">服务专区</a></li>
					<li><a style="font-size: 20px;" class="linkcolor" href="#work">地标</a></li>
					<li><a style="font-size: 20px;" class="linkcolor"
						href="#about">课程清单</a></li>
					<li><a style="font-size: 20px;" class="linkcolor"
						href="K-survey.jsp">课程推荐</a></li>

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
				<h2 class="major">首尔，新的介绍。</h2>
				<span class="image main"><img src="images/back.PNG" alt="서울" /></span>
				<br /> <br />
				<p align="center">收到您的宝贵信息，</p>
				<p align="center">

					韩国旅游组织提供<b> 最近一年出境游客调查数据</b> 基于
				</p>
				<p align="center">通过我们自己的模型生成分析结果</p>
				<p align="center">

					您舒适有趣 <b> 汉城</b> 我会帮你准备的
				</p>

			</article>

			<!-- Work -->




			<article id="work">
				<h1>首尔十大景点</h1>
				<h2 class="major1" href="#" style="display: inline;">
					<div id="day" class="a1">每周一次</div>
				</h2>
				<h2 class="major2" href="#" style="display: inline;">
					<div id="day" class="a2">晚上</div>
				</h2>

				<div class='display'>
					<span><img id="popimg0" src="img/k1.PNG" alt="" /></span>
					<button class="ten" id="ko1">景福宫</button>
					<button class="ten" id="ko2">明洞</button>
					<button class="ten" id="ko3">仁寺洞</button>
					<button class="ten" id="ko4">COEX</button>
					<button class="ten" id="ko5">昌德宫</button>
					<button class="ten" id="ko6">奉恩寺</button>
					<button class="ten" id="ko7">63大楼</button>
					<button class="ten" id="ko8">战争纪念馆</button>
					<button class="ten" id="ko9">北村韩屋村</button>
					<button class="ten" id="ko10">韩国国家博物馆</button>
				</div>

				<div id='g'>
					<span><img id="popimg1" src="img/k1.PNG" alt="" /></span>
					<button class="next" id="k1">景福宫</button>
					<button class="next" id="k2">弘大</button>
					<button class="next" id="k3">中山公园</button>
					<button class="next" id="k4">首尔N塔</button>
					<button class="next" id="k5">江南站</button>
					<button class="next" id="k6">清溪川</button>
					<button class="next" id="k7">加罗苏吉尔</button>
					<button class="next" id="k8">汝ou岛汉江公园</button>
					<button class="next" id="k9">乐天世界</button>

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
			<article id="contact">


				<form action="K_subvey_result" method="post" id='myForm'>
					<table>
						<tr>
							<td>방문예정월</td>
						</tr>
						<tr>
							<td>1월 <input type="button" class="monBtn" values="jan"></td>
							<td>2월 <input type="button" class="monBtn" values="2월"></td>
							<td>3월 <input type="button" class="monBtn" values="3월"></td>
							<td>4월 <input type="button" class="monBtn" values="4월"></td>
							<td>5월 <input type="button" class="monBtn" values="5월"></td>
							<td>6월 <input type="button" class="monBtn" values="6월"></td>
							<td>7월 <input type="button" class="monBtn" values="7월"></td>
							<td>8월 <input type="button" class="monBtn" values="8월"></td>
							<td>9월 <input type="button" class="monBtn" values="9월"></td>
							<td>10월 <input type="button" class="monBtn" values="10월"></td>
							<td>11월 <input type="button" class="monBtn" values="11월"></td>
							<td>12월 <input type="button" class="monBtn" values="12월"></td>
						</tr>
						<tr>
							<td>방문예정월</td>
						</tr>
						<tr>
							<td>남 <input type="button" class=genderBtn name="gender"></td>
							<td>여 <input type="button" class="genderBtn" name="gender"></td>
						</tr>
						<tr>
							<td>방문예정월</td>
						</tr>
						<tr>
							<td>방문예정월</td>
						</tr>


						<!-- <label for="mon">방문예정월</label> 
				남 <input type="button" class = "myBtn" >
				여 <input type="button" class = "myBtn">
			
				<label for="email">Email</label> <input type="text" name="email"
					id="email" />
			
				<label for="message">Message</label>
				<textarea name="message" id="message" rows="4"></textarea> -->

					</table>
					<input type="hidden" id='month_check' name='month'> <input
						type="hidden" id='gender_check' name='gender'> <input
						type="button" value="전송" onclick="mySub()">

				</form>






			</article>

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

	<p id="texttext1">电话：02-3700-3900

		地址：首尔景福宫市钟路区gu路161地址：世宗路1-91

		营业时间：每天09：00-18：00（最后入场17:00）逢星期二休息

		成人（25至64岁）：3,000韩元

		24岁以下的青少年：免费残疾人士，优点：免费

		65岁以上：免费穿着韩服的人：免费
		
		景福宫是代表大韩民国的最大宫殿，并有助于朝鲜王朝的繁荣。
		景福宫的大小约为750个房间，这象征着国家和皇室的规模，超出了国王看望办公室的空间。
		那是一个地方。景福宫一直保存完好，国王从建国到最后一直在此看望他的事务。
		它成为韩国人喜爱的代表朝鲜国家的地标之一。景福宫是光化门门口的兴陵门 如果走过庚正门，您会发现它是代表朝鲜王朝的建筑物。</p>
	<p id="texttext2">地址：首尔市中区明洞
	
		明洞是韩国最昂贵的土地，是首尔的象征。忠武路虽然是朝鲜时期的居住区，但在日本殖民时期已发展成为商业区，并成为明洞周边地区的商业区。明洞有着悠久的购物文化，据说是时尚的领导者，可以说它是针对购物而优化的，因为这里不仅有各种商店，而且还有国内著名的百货商店，还有奢侈品和品牌商店以及保税店。此外，由于购物，美食和娱乐，明洞不仅是韩国人的好去处，也是外国人在韩国享受的好地方。</p>
	<p id="texttext3">地址：首尔市钟路区仁寺洞
		
		仁寺洞Ssamji-gil是首尔钟路区仁寺洞的一栋建筑物。
		Ssamji是纯朝鲜语单词，意思是“口袋”。 Ssamji-gil的意思是通过在“ ssam-ji”之后附加“
		gil”来为Insa-dong胡同添加各种文化娱乐元素。
		Ssamji-gil是一家专门从事手工艺品的购物中心，现已成为仁寺洞的旅游胜地。螺旋形建筑总建筑面积为4,066.01平方米（约1,200坪），汇集了70多家手工艺品商店，文化产品，纪念品商店，画廊和带有韩国传统手工艺品的餐厅。做吧因为整个第四层都连接到一条小巷，所以“吉尔”贴附在建筑物上。它是菱形的院子周围的“ㅁ”形。每层楼都通往一个缓坡，穿过商店走到屋顶空中花园。</p>
	<p id="texttext4">电话：02-6000-0114

		地址：首尔特别市江南区永东大路513地址：三成洞159

		营业时间：每天10：00-18：00备注（活动结束时间不同）
		作为交通，通讯，先进的商业基础设施，全球最佳的展览，文化和旅游胜地的全球商业圣地，它是韩国最大的展览厅，于1979年3月开幕，旨在为国际贸易和文化交流提供场所。它的总建筑面积为11,000坪（130,000坪），包括地上4层和地下4层，包括12个专业展览馆和一个可同时容纳7000人的会议厅。此外，它拥有完善的国际业务支持系统，每年举办150多个专业展览，各种国际会议和活动，并通过将海外买家与国内进出口公司直接联系来增加贸易。这里有一个水族馆，不仅韩国游客而且外国游客也可以看到市中心的大型水族馆。</p>
	<p id="texttext5">电话：02-3668-2300

		地址：首尔市钟路区由谷路99号地址：沃龙洞2-71

		营业时间：每天09：00-18：00（2月-5月，9月-10月），每天09：00-18：30（6月-8月），每天09：00-16：30（ 11月至1月）
		周一休息
		昌德宫是位于首尔钟路区的朝鲜王朝的宫殿。它是综合环境设计的一个示例，该设计协调了建筑和景观的美化，同时，它也是重要的文化遗产，使人们能够阅读韩国的空间氛围。它在建筑史上展现了朝鲜王朝的原型，光顾的美化作为我国代表性的皇家园林具有重要意义，昌德宫被誉为朝鲜历史悠久的故宫。冲突中，成为国王的第五个儿子成为国王，但是拒绝进入景福宫的太宗杀死了他的兄弟，他建立了新的宫殿并看了办公室。
		昌德宫由于历史悠久，故宫是代表韩国的宫殿，代表韩国的是很多特色景点。</p>
	<p id="texttext6">电话：02-3218-4800

		地址：首尔特别市江南区奉恩寺路531

		奉恩寺有些不熟悉，没有寺庙，到处都是在平日和节假日不停祈祷和崇拜的人。宗教与日常生活息息相关，但对于那些想要静静地游览寺庙的人来说，宗教也不太好。这是一个很多人经常祈祷的地方，因此需要增加设施和空间，因此奉恩寺一直在建设中。奉恩寺是在新罗安那尔国王的王墓中建造的，后来成为已故朝鲜国王忠贤的寺庙。通常，我们所知道的寺庙都在人们不居住的山区或普通百姓生活的半径范围之外，奉恩寺位于首尔的中部。方便地，许多外国宗教人士也曾经访问过韩国。</p>
	<p id="texttext7">电话：1833-7001

		地址：首尔特别市永登浦区63-ro韩华金融中心50号地址：63汝ou岛洞韩华金融中心60号地址

		营业时间：每天10：00-22：00

		费用：63名艺术_成人（20岁以上）：20,000韩元63名艺术_儿童（13岁以下）：16,000韩元

		63 Art_Youth（14-19岁）：18,000韩元63 Art Couple票（63 art 2人/ Americano 2眼镜）：43,000韩元

		Aqua Planet 63（超过20岁）：25,000韩元
	
	63大厦是韩国最高的建筑，代表着首尔，直到乐天塔竣工为止，现已成为首尔的地标建筑，由韩国公司Hanwha于1985年竣工。当时，韩国没有摩天大楼。
		该公司的建立目的不是为了牟利，而是为了同时拥有两只兔子而获得了“韩国地标”的头衔。
		就是这样与乐天塔不同，韩华等公司设有办公室，各种旅游设施，天文台和地下基地拥有利用摩天大楼优势的旅游空间。首尔汝ou岛的63楼
		据说是首尔的地标性建筑之一，仍然吸引着许多游客，因为您可以从市中心最高的观景台欣赏到首尔的全部景观。</p>
	<p id="texttext8">电话：02-709-3139

		地址：首尔市龙山区梨泰院路29号战争纪念馆地址：龙山洞1-ga战争纪念馆

		营业时间：每天09：30-18：00

		星期一休息（节假日（包括星期一）在节假日的第二天休息）
	
		1950年6月25日，每个人都在黎明前入睡。在和平的朝鲜半岛上开枪
		共鸣。朝鲜战争是在朝鲜入侵第38平行线（朝鲜之间的军事分界线）时开始的。朝鲜人之间的战争血腥分开
		美国，苏联和中国的介入继续造成许多人员伤亡，直到1953年7月的停战协定为止。从日本占领中解放出来的喜悦
		那是在我享受之前。介绍龙山战争纪念馆，它记录了半个世纪前的地球历史。战争纪念馆在二楼 您将在2楼看到6.25作战室。
		它具有能够更详细，生动地听取说明的优点。此外，朝鲜半岛的战争史
		您可以检查一下。据说，战争纪念馆在熟悉朝鲜半岛局势的德国人中很受欢迎。朝鲜半岛分为两部分。战争纪念馆
		我认为这是感受我们遗忘的战争历史的好方法。</p>
	<p id="texttext9">电话：02-2133-1372

		地址：首尔市钟路区桂洞街37号：桂洞北村文化中心105
		
		韩屋保护区位于景福宫，昌德宫和锦原之间的北国山脚下，也被称为北村，意为清溪川和钟路的上层村庄。北村是高级住宅，王室贵族和四代人聚集的高级住宅，韩屋是朝鲜王朝的瓷砖房。最初，该地区只有几座带有高耸的大门的房屋和大约30个韩屋，但是自日本殖民时期结束以来，便建造了许多韩屋，并于1992年将它们从Gahoe-dong
		Hanok保护区撤出。已输入。总共有2297栋建筑，其中1408栋是韩屋，其余为普通建筑。在北村街上设置了北村洋板生活文化展示馆和北村韩屋村的象征性雕塑，并举办了盖头洞传统村落节，在那里您可以看到老祖先的生活。附近的景点包括景福宫，昌德宫，德寿宫，金原和三清公园。从昌德宫（Wongeo-dong
		Gongbang-gil）望出去的北村1景是北村2景，加荷洞11 gae，北村3景，加荷洞31 gae 4山
		如何通过保存完好的韩屋的第5北村下坡胡同，第5街Gaoch-dong的北村6，第33街Gahoe-dong的北村7和Bukchon感受韩国祖先的居住形式，</p>
	<p id="texttext10">电话：02-2077-9000

		地址：首尔市龙山区西冰谷路137地址：龙山区6街168-6

		营业时间：周一，周二，周四，周五10：00-18：00，周三，周六10：00-21：00（周日，国定假日）10：00-19：00

		休馆：元旦，中秋节1月1日/常设展览馆休馆：4月和11月的第一个星期一

		入场费：免费
	
		我们历史上的珍贵文物找到了一个美好的新家。 2005年10月开业
		韩国国家博物馆是世界级的博物馆，在300,000平方米的广阔空间中收藏并陈列着300,000件文物（截至2012年1月）。
		这是一个博物馆。它位于龙山市以前的USFK位置，继承了我们祖先重视自然与人为和谐的智慧。
		庭园设计为协调统一，坐落在被南山和汉江环绕的Baesan Imsu地方。 1个地下层和6个地面层
		博物馆大楼的外观看起来像是两栋建筑物连接在一起。 聚集。进入建筑物时，您会发现10层景天寺和Gotha-sa寺。
		六个常设展览馆正在运营。左右三层：史前和古代建筑，中现代博物馆，捐助馆，书法馆，亚洲馆，雕塑和手工艺馆
		展出了超过15,000件文物。如果仔细查看所有工件，大约需要一周的时间 有必要选择博物馆选出的“
		100件重要文物”之类的课程，或者与时间分享。在展厅 最好使用指导操作员的指导时间或使用自动指导。显示传统枚举方法中的文物
		它更有趣，因为它使用最先进的照明和特殊效果来突出每个工件的价值。另外，很多很难看
		该博物馆是外国文物的永久展览，提高了其作为亚洲主要博物馆的地位。除了常设展厅，企划展厅，儿童展厅之外，
		这是一个综合性的文化空间，室外展览厅可增添景点，甚至还有专业表演厅和图书馆。博物馆各处还设有餐厅。
		我们正在准备特色食品。如果您通过主页等预先准备了信息，则可以留出更多时间旅行。</p>

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
	<p id="texttext11">景福宫晚上开放

		时间：每年的4月底至11月初

		地点：景福宫

		主办单位：文化遗产管理局

		票价：公共：3,000韩元
        65岁老年人，外国人3,000韩元
                            韩服佩戴者：免费</p>
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
