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
				href="LogoutService.do?num=2">Logout </a></td>
			<td class="inTag"><a
				href="Ja_update.jsp">ChangeInfo</a></td>
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
					<div class = "mainimg" style="font-size: 20px;"  ><a class="linkcolor" href="#intro">サービス</a></div>
					<div class = "mainimg" style="font-size: 20px;"  ><a class="linkcolor" href="#work">アトラクション</a></div>
					<div class = "mainimg" style="font-size: 20px;"  ><a class="linkcolor" href="#about">ランキング</a></div>
					<%if(info==null){%>
						<div class = "mainimg"><a style="font-size: 20px;" class="linkcolor" style="position : absolute;">メイクコース</a></div>
						<%}
					else{%>
						<div class = "mainimg"><a style="font-size: 20px;" class="linkcolor" href="K-survey.jsp" style="position : absolute;">メイクコース</a></div>
					<%}%>	
				<!--<li><a href="#elements">Elements</a></li>-->
					
				</div>
		</header>

		<!-- Main -->
		<div id="main">


			<!-- Login -->
			<article id="Login" style="width:100%;">
				<form action="LoginService.do?num=2" method="post">
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
				<form id="joinForm" action="JoinService.do?num=2" method="post" onsubmit="return false">
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
							<td colspan=2><input placeholder="Re-EntryPW" type="password"
								name=pw></td>
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
				<h2 class="major">ソウルは、新たに導入します。</h2>
				<span><img src="img/sese.PNG"/></span>
				<br /> <br />
				<p align="center">お客様の大切な情報を受けて、</p>
				<p align="center">
					韓国観光公社が提供する<b>最新の年度別外来観光客実態調査データ</b>をもとに
				</p>
				<p align="center">独自のモデルを使用した分析結果を算出して</p>
				<p align="center">
					あなたの快適さと魅力的な<b>ソウル旅行</b>を準備するようにお手伝いいたします。
				</p>

			</article>

			<!-- Work -->

			<article id="work">


				<h1>ソウル10代のスポット</h1>
				<h3 class="major1" href="#" style="display: inline;">
					<div id="day" class="a1">週間</div>
				</h3>
				<h3 class="major2" href="#" style="display: inline;">
					<div id="day" class="a2">夜間</div>
				</h3>
				<div class='display'>
					<span><img id="popimg0" src="img/k1.PNG" alt="" /></span>
					<button class="ten" id="ko1">#景福宮</button>
					<button class="ten" id="ko2">#明洞</button>
					<button class="ten" id="ko3">#仁寺洞</button>
					<button class="ten" id="ko4">#COEX</button>
					<button class="ten" id="ko5">#昌徳宮</button>
					<button class="ten" id="ko6">#奉恩寺</button>
					<button class="ten" id="ko7">#63ビル</button>
					<button class="ten" id="ko8">#戦争記念館</button>
					<button class="ten" id="ko9">#北村韓屋村</button>
					<button class="ten" id="ko10">#国立中央博物館</button>
				</div>

				<div id='g'>
					<span><img id="popimg1" src="img/k1.PNG" alt="" /></span>
					<button class="next" id="k1">#景福宮</button>
					<button class="next" id="k2">#弘大</button>
					<button class="next" id="k3">#酪酸公園</button>
					<button class="next" id="k4">#ソウルNタワー</button>
					<button class="next" id="k5">#江南駅</button>
					<button class="next" id="k6">#清渓川</button>
					<button class="next" id="k7">#並木道</button>
					<button class="next" id="k8">#汝矣島漢江公園</button>
					<button class="next" id="k9">#ロッテワールド</button>

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
								<img src="SEOULIMAGE/J1.PNG" alt="Boompx Hero Slider 01" />
							</div>
							<div class="bp-hs_inner__item" data-transform="rotate">
								<img src="SEOULIMAGE/J3.PNG" alt="Boompx Hero Slider 02" />
							</div>
							<div class="bp-hs_inner__item" data-transform="rotate">
								<img src="SEOULIMAGE/J4.PNG" alt="Boompx Hero Slider 03" />
							</div>
							<div class="bp-hs_inner__item">
								<img src="SEOULIMAGE/J5.PNG" alt="Boompx Hero Slider 04" />
							</div>
							<div class="bp-hs_inner__item">
								<img src="SEOULIMAGE/J6.PNG" alt="Boompx Hero Slider 04" />
							</div>
							<div class="bp-hs_inner__item">
								<img src="SEOULIMAGE/J7.PNG" alt="Boompx Hero Slider 04" />
							</div>
							<div class="bp-hs_inner__item">
								<img src="SEOULIMAGE/J8.PNG" alt="Boompx Hero Slider 04" />
							</div>
							<div class="bp-hs_inner__item">
								<img src="SEOULIMAGE/J9.PNG" alt="Boompx Hero Slider 04" />
							</div>
							<div class="bp-hs_inner__item">
								<img src="SEOULIMAGE/J10.PNG" alt="Boompx Hero Slider 04" />
							</div>
							<div class="bp-hs_inner__item">
								<img src="SEOULIMAGE/J11.PNG" alt="Boompx Hero Slider 04" />
							</div>
							<div class="bp-hs_inner__item">
								<img src="SEOULIMAGE/J12.PNG" alt="Boompx Hero Slider 04" />
							</div>
							<div class="bp-hs_inner__item">
								<img src="SEOULIMAGE/J13.PNG" alt="Boompx Hero Slider 04" />
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
	
	<p id = "rate1">1.明洞/南大門/北倉
						2.鍾路/清渓
						3.江南駅
						4.イテウォン
						5.東大門ファッションタウン
	</p>
	<p id = "rate2">1.明洞/南大門/北倉
					2.東大門ファッションタウン
					3.新村/弘大
					4.蚕室（ロッテワールド）
					5.鍾路/清渓
	</p>
	<p id = "rate3">1.明洞/南大門/北倉
					2.東大門ファッションタウン
					3.新村/弘大
					4.鍾路/清渓
					5.江南駅
	</p>
	<p id = "rate4">1.明洞/南大門/北倉
					2.鍾路/量
					3.江南駅
					4.イテウォン
					5.新村/弘大
	</p>
	<p id = "rate5">1.明洞/南大門/北倉
					2.鍾路/量
					3.江南駅
					4.新村/弘大
					5.東大門ファッションタウン
	</p>
	<p id = "rate6">1.明洞/南大門/北倉
					2.鍾路/量
					3.江南駅
					4.東大門ファッションタウン
					5.新村/弘大
	</p>
	<p id = "rate7">1.明洞/南大門/北倉
					2.東大門ファッションタウン
					3.鍾路/清渓
					4.江南駅
					5.イテウォン
	</p>
	<p id = "rate8">1.明洞/南大門/北倉
					2.東大門ファッションタウン
					3.鍾路/清渓
					4.江南駅
					5.イテウォン
	</p>
	<p id = "rate9">1.明洞/南大門/北倉
					2.東大門ファッションタウン
					3.新村/弘大
					4.鍾路/清渓
					5.江南駅
	</p>
	<p id = "rate10">1.明洞/南大門/北倉
					2.東大門ファッションタウン
					3.鍾路/清渓
					4.江南駅
					5.イテウォン
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

			$('#popimg2').attr('src', 'img/pie/ja1.PNG');
			$('#rate').html(rate1);
		});

		// 버튼2
		$('#c2:button').on('click', function() {
			$('#popimg2').attr('src', 'img/pie/ja2.PNG');
			$('#rate').html(rate2);
		});
		// 버튼3
		$('#c3:button').on('click', function() {
			$('#popimg2').attr('src', 'img/pie/ja3.PNG');
			$('#rate').html(rate3);
		});
		// 버튼4
		$('#c4:button').on('click', function() {
			$('#popimg2').attr('src', 'img/pie/ja4.PNG');
			$('#rate').html(rate4);
		});
		// 버튼5
		$('#c5:button').on('click', function() {
			$('#popimg2').attr('src', 'img/pie/ja5.PNG');
			$('#rate').html(rate5);
		});
		// 버튼6
		$('#c6:button').on('click', function() {
			$('#popimg2').attr('src', 'img/pie/ja6.PNG');
			$('#rate').html(rate6);
		});
		// 버튼7
		$('#c7:button').on('click', function() {
			$('#popimg2').attr('src', 'img/pie/ja7.PNG');
			$('#rate').html(rate7);
		});
		// 버튼8
		$('#c8:button').on('click', function() {
			$('#popimg2').attr('src', 'img/pie/ja8.PNG');
			$('#rate').html(rate8);
		});
		// 버튼9
		$('#c9:button').on('click', function() {
			$('#popimg2').attr('src', 'img/pie/ja9.PNG');
			$('#rate').html(rate9);
		});
		// 버튼10
		$('#c10:button').on('click', function() {
			$('#popimg2').attr('src', 'img/pie/ja10.PNG');
			$('#rate').html(rate10);
		});
</script>
	

	<p id="texttext1">電話番号：02-3700-3900

		住所：ソウル市鍾路区サジクロ161景福宮地番：世宗路1-91

		開場時間：毎日09:00  -  18:00（最終入場17:00）火曜日定休

		対人（満25歳〜満64歳）：3,000ウォン

		24歳以下の青少年：無料障害者、有功者：無料

		65歳以上のお年寄り：無料韓服を着用した者：無料
	
		景福宮は大韓民国を代表する最大の宮殿で、朝鮮王朝の繁​​栄に大きな助けを与えた。
		景福宮の大きさは部屋約750個程度の王が執務を見る空間の意味を越えて国と王室のサイズを象徴的に示す
		場所だったという。朝鮮の建国から最後まで王が執務を見る景福宮は今でも保存がよくなっており、外国人だけでなく、
		韓国人に今まで愛される朝鮮という国を代表する建築物の一つとなった。景福宮は正門光化門に沿って興礼門
		、勤政門を過ぎてくると、朝鮮王朝を代表する建築物であることを一度に知ることができる朝鮮の色を入れた建物とすることができる。</p>
	<p id="texttext2">住所：ソウル市中区明洞
		
		大韓民国で最も高価な地である明洞はソウル特別市を象徴する繁華街である。朝鮮時代には
		住宅街だったが、日本植民地時代忠武路（チュンムロ）が商業地域として発展し、隣接地域である明洞にも商店街の形で変わるれ、大韓民国最高の繁華街で背伸び
		になった。明洞は流行の先導者と呼ばれるほどの巨大なショッピング文化が形成されてイトヌンデ、国内有名デパートはもちろん、高級、ブランド
		店頭だけでなく、結合店まで、様々な店があり、ショッピングに最適化されていると言うことができる。また、明洞にはショッピングと一緒に
		食べ物、楽しむ街などがあり、韓国人だけでなく、外国人も韓国で楽しむことができる最適の空間と呼ばれることができる。</p>
	<p id="texttext3">住所：ソウル鍾路区仁寺洞
	
		仁寺洞サムジギルは、ソウル市鍾路区仁寺洞にある建物をいう。サムジと「ポケット」を
		意味する純私たちだ。サムジギルは「サムジ「後ろ」の道」を付けて仁寺洞の路地に複数の文化的楽しみの要素を加えるという意味を持っている。サムジギルは
		ガアデ建築研究所チェムンギュ建築家が（株）サムジの勧めで作られた建物である。サムジギルは工芸品の専門店として仁寺洞観光名所となって
		ている。延べ面積4,066.01m²（1,200坪）のスパイラルビルに韓国の伝統工芸品や韓国の趣が漂う様々なデザインの
		70以上の工芸品店、文化商品とお土産店、ギャラリー、レストランが集まっており、観光客に様々な楽しみ方を提供する。
		建物に「道」がついたのは、4階全体が一つの路地に接続されたからである。菱形の庭をめぐる「チコ」字型である。各フロアは
		緩やかな傾斜につながってあちこちの店を見て歩いていると屋上の空の庭に至る</p>
	<p id="texttext4">電話番号：02-6000-0114

		住所：ソウル市江南区永東大路に513地番：三成洞159

		開場時間：毎日10:00  -  18:00備考（イベント終了時間像）
	
		交通通信、先端ビジネスインフラを備えたグローバルビジネスのメッカであり、アジア最高の
		展示・文化・観光の名所としては、国際貿易と文化交流の場を設けることを目的として、1979年3月にオープンした韓国最大の総合展示館である。
		1万1000坪（延べ床面積13万坪）規模で、地上4階、地下4階で構成されており、12個の専門展示室と7000人を
		同時に収容できるコンベンションホールをはじめ、61室の会議室を備えている。また、国際的なビジネスのための総合的な支援体制を整えて
		年間150回以上の専門展示会、各種国際会議やイベントを開催する一方、海外有数のバイヤーと国内の輸出入業者を直接
		接続させるなど、交易の増大役割もする。また、コエックス私水族館があり韓国人観光客だけでなく、外国人観光客も都心の中で
		大規模に水族館を見物することができる。</p>
	<p id="texttext5">電話番号：02-3668-2300

		住所：ソウル市鍾路区ユルゴクロ99地番：臥龍洞2-71

		開場時間：毎日09:00  -  18:00（2月〜5月、9月〜10月）、毎日09:00  -  18:30（6月〜8月）、毎日09:00  -  16:30（ 11月〜1月）の
		月曜日休館
	
		昌徳宮はソウル市鍾路区に位置する朝鮮時代の宮殿である。建築と造園がよく調和した総合
		環境デザイン事例であると同時に、韓国的な空間の雰囲気を読ませる重要な文化遺産である。建築士において朝鮮時代の宮廷の典型を
		示し、後援の景色は韓国の代表的な王室の庭園としての価値が高い昌徳宮は不幸な歴史の中で誕生した朝鮮の宮殿と
		呼ばれること、朝鮮を建国した李成桂の息子たちと臣下たちの間でグォンリョ争いが起って王位争いをしていたの王になった第五の息子が
		王になったが、兄弟たちを殺した景福宮に入ることを嫌うした太宗は、新しい宮殿を建て執務を見て、その宮殿は
		昌徳宮ある。病気の歴史を持つだけ特別なボールが多く、朝鮮を代表する大韓民国を代表する宮殿である。</p>
	<p id="texttext6">電話番号：02-3218-4800

		住所：ソウル市江南区奉恩寺で531奉恩寺地番：三成洞73
	
		奉恩寺は平日と休日がなく、常に祈り、参拝する人々で溢れ、いつも節同じように
		少し見慣れない。宗教が日常と密接に会うシーンとすることができるがじっくり節を戻ってみようとする人にはあまり良くない
		のも事実である。常に多くの人々が祈りの場所だから施設やスペースが増えなければして、常に奉恩寺は工事中だという。
		奉恩寺は、新羅オノ聖王時創建した節中宗の王妃正弦皇后の墓が生じ朝鮮王室の関心を受けて発電する寺院になる
		開始した。よく私たちが知っている節は、人々が住んでいない山や一般市民の生活の半径の外にあることが多い奉恩寺は、ソウル
		真ん中、それも江南というソウルで一番流動人口が多いの中央に位置し、宗教人たちの往来が多いのはもちろんのこと、交通のアクセスが
		便利多くの外国人の宗教にも一度は立ち寄って行く大韓民国を代表する寺院となった。</p>
	<p id="texttext7">電話番号：1833-7001

		住所：ソウル永登浦区63 50ハンファ金融センター_63地番：永田町60ハンファ金融センター_63

		開場時間：毎日10:00  -  22:00

		料金：63アート_成人（20歳以上）：20,000ウォン63アート_子供（13歳以下）：16,000ウォン

		63アート_青少年（14  -  19歳）：18,000ウォン63アートカップル巻（63アート2人/アメリカーノ2杯）：43,000ウォン

		アクアプラネット63（20歳以上）：25,000ウォン
	
		ロッテタワーが完成するまで、ソウルを代表する韓国で最も高い建物だった63ビルは
		大韓民国企業」ハンファ」が1985年に完成したソウルを代表するランドマーク位置した。当時、高層ビルがなかった韓国にハンファという
		企業収益の目的ではなく、会社の建物を目的とし、建築したが、大韓民国のランドマークというタイトルまで二匹のウサギを一度にキャッチ
		ケースにもなった。ロッテタワーとは異なるハンファと他の企業のオフィスなどがあり、様々な付帯施設と展望台、地下には水族館
		まで超高層建物の利点を上述に用いた観光のスペースを設けた点が特徴である。汝矣島の63ビルは、展望台を介してソウル
		真ん中の一番高い展望台からソウルを完全に探索することができ、まだ多くの観光客が訪れるソウルのランドマークの一箇所とする。</p>
	<p id="texttext8">電話番号：02-709-3139

		住所：ソウル龍山区梨泰院で29戦争記念館地番：ヨンサンドン1が8戦争記念館

		開場時間：毎日09:30  -  18:00

		月曜日定休（月曜が含まれて連休時は連休翌日休館）
	
		1950年6月25日、まだ夜明け前のすべてが眠っ夜明け。平和な朝鮮半島に銃声が
		鳴り響いた。北朝鮮軍が南北軍事境界線だった38度線を越えて南侵し始まった6・25戦争。血を分けた韓民族同士の戦争は
		米国・ソ連・中国の介入で1953年7月休戦協定まで数多くの死傷者を出し続けた。日本植民地時代から外れ喜びをまま
		享受も前だった。半世紀前、この地で起きた歴史を記録した龍山の戦争記念館を紹介する。戦争記念館は1階戦争歴史室
		2階6.25戦争室を観覧することになる。常に一日に2回文化解説の同行観覧を通して、私たちがよく知らなかった歴史について
		もう少し詳しく、鮮やかに説明を聞くことができる長所がある。また、戦争歴史室でこれまでの韓半島の戦争の歴史を一度に
		確認することができる。戦争記念館は南北に分かれている韓半島の状況をよく知っているドイツ人に人気だという。戦争記念館を
		を通して私たちが忘れていた戦争の歴史をもう一度感じてみるのも良い方法だと思う。</p>
	<p id="texttext9">電話番号：02-2133-1372

		住所：ソウル鍾路区桂洞道37地番：桂洞105北村文化センター
	
		景福宮と昌徳宮、金源（悲願）の間北岳山の麓にある韓屋保存地区に清渓川と鍾路の
		ウィトドンネという意味で北村とも呼ばれている。北村は高官と王族、士大夫たちが集まって居住してきた高度な暮らし家の跡地に韓屋はすべて
		朝鮮時代の瓦の家である。元この地域には湧く大門がある家数軒と30号の韓屋だけがあったが、日帝強占期末から韓屋が
		多く建てられ、1992年に嘉会洞の韓屋保存地区から解放され、1994年に高度制限が解けて、一般の建物がたくさん入った。総
		2,297棟の建物があり、このうち1,408棟の韓屋であり、残りは一般的な建物である。北村通りに北村両班の生活文化展示館と
		北村ハンオクチョン象徴造形物が設置されており、昔の先祖の生活の様子を見ることができる嘉会洞伝統的な村祭りが開かれる。周辺に
		景福宮・昌徳宮・徳寿宮・金源・三清公園などの観光地があります。昌徳宮の景色がよく見える北村1ごろ、ウォンソドン工房道北村2ごろ
		嘉会洞11番地一帯は北村3頃、嘉会洞31番地丘が4ごろ、韓屋がよく保存されている嘉会洞下り坂路地が北村5頃、
		嘉会洞上り坂路地が北村6ごろ、嘉会洞31番地が北村7ごろ、三清洞石段長北村8景を介して大韓民国の先祖たちの住居形態を
		感じてみてはどうだろうか？</p>
	<p id="texttext10">電話番号：02-2077-9000

		住所：ソウル龍山区ソビンゴで137地番：ヨンサンドン6が168-6

		開場時間：月、火、木、金の10：00  -  18:00、水、土10：00  -  21:00、（日曜日、祝日）10：00  -  19:00

		休業：1月1日、旧正月、お盆の日/常設展示室ヒュシル：4,11月の第1月曜日

		観覧料：無料
	
		私たちの歴史の貴重な遺物が素晴らしい新しい巣を訪れた。 2005年10月に開館した
		国立中央博物館は30万㎡の広大なスペースに30万点（2012年1月時点）の遺物を保管、展示する世界的規模の
		博物館である。龍山の旧在韓米軍部隊桁の場所は、自然と人工の調和を大切にした先祖の知恵を受け継いで、湖と
		庭園が調和れるように設計をし南山と漢江が囲む「ベサンイムス（背山臨水）」の場所に位置した。地下1階、地上6階の
		博物館の建物は二つの建物が一つ接続されたように続く外観に展示スペースと遺物の保管スペース、研究スペースと各種付帯施設が
		集まっている。建物の内部に入ると、敬天寺シプチュン石塔とゴダルサペア獅子石灯が位置中央通路である「歴史の道」を中心に
		6つの常設展示館が運営されている。三階左右にプレゼント・ゴデグァン、中・近税関、寄贈館、西花冠、アジア観、彫刻・工芸館で
		分かれ15,000余点の遺物が展示されている。全体の遺物を入念に探ると、約一週間の時間がかかる膨大な規模だ 博物館が選定した
		'重要遺物100選」などのコースを選択したり、時間をかけて分けて観覧するコツが必要である。展示館の単位で
		運営されている解説者の案内時間を利用したり、自動案内器を使用するのも良い方法である。遺物の展示は、既存の一覧式方法で
		抜け出し、各遺物の価値を引き立てる先端の照明や特殊効果などが使用され、さらに興味深い。また、これまで見られなかった多くの
		外国遺物を常設展示し、アジアの中心博物館としての地位を高めている。常設展示に加えて企画展示館、子供展示館、
		屋外展示館が見所をよりし専門公演会場と図書館まで桁総合文化空間である。博物館のあちこちに位置するダイニングエリアも
		特色を持った食べ物を準備している。ホームページなどを通じて、事前に情報を準備すれば、より充実した時間旅行を残すことができる。</p>


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
	<p id="texttext11">景福宮夜間開場

		期間：毎年4月末〜11月初め

		場所：景福宮

		主催：文化財庁

		料金：一般：3000ウォン
        65歳のお年寄り、外国人：3000ウォン
                            韓服着用者：無料</p>
	<p id="texttext22">2번</p>
	<p id="texttext33">住所：ソウル市鍾路区酪酸道41東崇洞酸2-10

首都ソウルを構成する内四山（內四山：北岳山・南山・仁王・酪酸）の一つであり、舟山（主山）である北岳山の左青龍（左靑龍）に対応する酪酸の自然環境や歴史的文化環境を復元することにより、ソウル市民に快適な公園の景観を提供し、自然探訪を通じて歴史と文化教育の場を提供することを目的に造成された。
総面積は6万1145坪で、1999年12月30日に着工し、2002年7月に完成した。主な施設は、①展示と管理室、売店、トイレ、非武（庇雨堂）、六角精子、老人ホームなどの建築設備5棟②12個のバドミントン枚と1つのバスケットボールコートで行われた運動施設③10個の休憩所と117個の椅子で構成された設備④中央広場・イベント広場および3つの意見広場からなる広場施設⑤その他の案内板のほか、28個の施設などである。そのほかの公園緑化のために松を含め、計40種の8万9670本の木を植えた。</p>
	<p id="texttext44">住所：ソウル龍山区南山公園道103ソウルタワー

開場時間：毎日11:00  -  20:00

料金：展望台（大人）11,000ウォン展望台（小人）9000ウォン

第1の観光名所南山ソウルタワー
国内外の観光客が年1,200万人訪れるソウル第1の観光名所である南山ソウルタワー
最近、韓流の風を運転し、各種芸能、ドラマの撮影地として名前が高まり、観光客の訪問がさらに増える傾向にある。
ソウルの中心部に位置し、360度全方向にソウル市内の広々見下ろすことができる天恵の立地条件を備えており、世界最大の旅行出版社ロンリープラネットが選定した世界500大観光地に選ばれました。
最近事務棟を改装してオープンしたソウルタワープラザ円、様々な設備と観光スポット、飲食店を備え、観光客にサービスを提供しています。</p>
	<p id="texttext55">5번</p>
	<p id="texttext66">6번</p>
	<p id="texttext77">7번</p>
	<p id="texttext88">8번</p>
	<p id="texttext99">9번</p>



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
			alert('重複チェックを再度確認してください。');
			$("#joinForm").attr("onsubmit","return false");
		}else{
			alert('登録が完了しました。');
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
            	if(result == true){
            		alert("ユーザ名が重複しています。");
            		joinCheck = true;
            	}else{
            		alert("使用可能なIDです。");
            		joinCheck = false;
            	}
            },
            error : function(){
            	console.log(2);
            }
         });
      }
   
            
   </script>

</body>
</html>
