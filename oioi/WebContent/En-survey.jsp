<%@ page language="java" contentType="text/html; charset=euc-kr"
	pageEncoding="euc-kr"%>

<%
	request.setCharacterEncoding("euc-kr");
	response.setCharacterEncoding("euc-kr");
%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<script type="text/javascript" src="assets/js/jquery-3.4.1.min.js"></script>
<meta charset="euc-kr" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />

</noscript>

<style type="text/css">
.tripBtn {
	padding: 0px !important;
	width: 30px !important;
	height: 30px !important;
	border-radius: 15px !important;
}

span {
	display: inline-block;
	width: 75px;
	font-size: 18px;
}

#QnA {
	border: 1px solid #ffffff;
	margin-top: 3%;
	margin-left: 20%;
	margin-right: 20%;
	margin-bottom: 3%;
	padding-top: 2.1%;
	padding-left: 3%;
	padding-right: 3%;
	padding-bottom: 2.1%;
}

#Q_type {
	display: grid;
	grid-template-rows: repeat(auto-fit, 100px);
	grid-template-columns: repeat(auto-fit, 100px);
	place-items: center center;
	text-align: center;
	margin-left: 33%;
	margin-right: 20%;
	gap: 0px 5%;
}

#A_val, .bught, .base, .activite, .A_consider, .A_member {
	margin-left: 25%;
	margin-right: 25%;
}
</style>

</head>
<!-- <body style="background-image: url(img/fabio-oyXis2kALVg-unsplash.jpg); max-width: 100%; height: 100%;">  -->

<!-- 설문조사 -->

<div id="QnA">
	<!-- 국가 -->
	<br>
	<div>
		<b>Country</b>
	</div>
	<br>
	<div id="Q_Nation">
		<div id="A_val">
			<select name=nation id=nation>
				<option>Taiwan
				<option>Germany
				<option>Russia
				<option>Malaysia
				<option>Mongolia
				<option>U.S.A
				<option>Vietnam
				<option>Singapore
				<option>U.K
				<option>India
				<option>Indonesia
				<option>Japan
				<option>China
				<option>U.A.E
				<option>Canada
				<option>Thailand
				<option>Frence
				<option>Philippines
				<option>Australia
				<option>HongKong
				<option>Other
			</select>
		</div>
	</div>
	<br>
	<hr>

	<!-- 여행형태 취향 -->
	<br>
	<div>
		<b>Travel type Preference</b>
	</div>
	<br>
	<div id="Q_type">
		<div class="T_type">
			<input type="button" class=tripBtn val="Air-tel"><br> <span>
				Air-tel </span>
		</div>
		<div class="T_type">
			<input type="button" class=tripBtn val="개별여행"><br> <span>
				Individual travel </span>
		</div>
		<div class="T_type">
			<input type="button" class=tripBtn val="단체여행"><br> <span>Group
				travel </span>
		</div>
	</div>
	<br>
	<hr>

	<!-- 좋아하는 활동 -->
	<br>
	<div>
		<b>Favorite activity</b>
	</div>
	<br>
	<div id="Q_Active">
		<div class="activite">
			<select name=act id=act>
				<option>Forbidden City, Historic Site
				<option>Performance, Folklore, Events, Festival viewing participation
				<option>Amusement park, theme park
				<option>Drama, movie location visit
				<option>Report activities
				<option>museums and exhibition halls
				<option>Beauty Tourism
				<option>Shopping
				<option>Sports
				<option>inspection
				<option>City tour bus
				<option>Gastronomic tourism
				<option>Business
				<option>Training, education, research
				<option>Nightlife, entertainment
				<option>Medical tourism
				<option>Natural scenery
				<option>Traditional culture experience
				<option>Recreation
				<option>other
			</select>
		</div>
	</div>
	<br>
	<hr>

	<!-- 고려요인 -->
	<br>
	<div>
		<b>Consideration factors</b>
	</div>
	<br>
	<div id="Q_Consider">
		<div class="A_consider">
			<select name=consider id=consider>
				<option>K-POP, Hallyu star related fan meeting, location,etc.
				<option>Economical travel cost
				<option>climate, distinct four seasons
				<option>Leisure and sports activities
				<option>shopping
				<option>Convenience and safety of tourism such as accommodation and transportation
				<option>Exploring historical and cultural sites
				<option>nightlife, amusement facilities
				<option>Food, gourmet exploration
				<option>Distance to travel
				<option>Appreciating the natural scenery
				<option>treatment and beauty service
				<option>Visit friends and relatives
				<option>Experience Korean traditional culture such as temple stay and Taekwondo
				<option>Fashionable and fashionable modern culture
				<option>vacation time
				<option>Other
			</select>
		</div>
	</div>
	<br>
	<hr>

	<!-- 쇼핑 품목 -->
	<br>
	<div>
		<b>Shopping items</b>
	</div>
	<br>
	<div id="Q_buy">
		<div class="bught">
			<select name=item id=item>
				<option> bag
				<option> cigarette
				<option> Jewelry, accessories
				<option> grocery
				<option> shoes
				<option> clothing
				<option> Ginseng, herbal medicine
				<option> Traditional folk crafts, lacquerware, woodcarving products
				<option> mainstream
				<option> Hallyu star related products
				<option> perfume, cosmetics
				<option> Other
			</select>
		</div>
	</div>
	<br>
	<hr>

	<!-- 인원 구성 -->
	<br>
	<div>
		<b>People composition</b>
	</div>
	<br>
	<div id="Q_Member">
		<div class="A_member">
			<select name=member id=member>
				<option> Family, relatives
				<option> Coworkers
				<option> Friends, lovers
				<option> alone
				<option> Other
			</select>
		</div>
	</div>
	<br>
	<hr>



	<div id="submit" style="margin: auto; text-align: center">
		<input type="button" value="전송" onclick="mySub()">
	</div>
	<div id=seoul style="display: none;">
		<!-- <a id='result' href='#'></a> -->
		<div>
			<h2>Seoul What you want<h2>
		</div>
		<button id="result1" style="display: none"></button>
		<button id="result2" style="display: none"></button>
		<button id="result3" style="display: none"></button>
		<button id="result4" style="display: none"></button>
		<button id="result5" style="display: none"></button>
		<button id="result6" style="display: none"></button>
		<button id="result7" style="display: none"></button>
		<button id="result8" style="display: none"></button>
		<button id="result9" style="display: none"></button>
		<button id="result10" style="display: none"></button>
		<button id="result11" style="display: none"></button>
		<button id="result12" style="display: none"></button>
		<button id="result13" style="display: none"></button>
		<button id="result14" style="display: none"></button>

	</div>
	<br>
</div>

<!-- <input type="hidden" id='age_check' name='age'> 
		<input type="hidden" id='gender_check' name='gender'> 
		<input type="hidden" id='month_check' name='month'> 
		<input type="hidden" id='trip_check' name='trip'> 
		<input type="hidden" id='month_check' name='month'> 
		<input type="button" value="전송" onclick="mySub()"> -->


<script>
	var trip_type;

	$('.tripBtn').on('click', function() {
		$('.tripBtn').css('background-color', '');
		$(this).css('background-color', 'yellow');
		trip_type = "여행형태_" + $(this).attr('val');
		$(this).css('value', trip_type);
	});

	// var name = "";
	var play = true;
	var myWindow;
	function mySub() {
		console.log(trip_type);

		var member = "인원구성_" + $('#member').val();
		var consider = "고려요인_" + $('#consider').val();
		var nation = "국가_" + $('#nation').val();
		var item = "쇼핑품목_" + $('#item').val();
		var act = "활동성향_" + $('#act').val();

		console.log(member);
		console.log(consider);
		console.log(nation);
		console.log(item);
		console.log(act);
		//전송~~    //$('#myForm').submit();

		$.ajax({
			url : "http://localhost:9000/re/" + member + "/" + trip_type + "/"
					+ consider + "/" + nation + "/" + item + "/" + act,
			method : "POST",
			success : function(rs) {
				//alert('success'+JSON.strify(rs))

				$('#submit').attr('style', "display:none");
				$('#seoul').attr('style', "display:inline");

				if (rs.result1 == 1) {
					$('#result1').text('#Myeongdong, Namdaemun, Bukchang');
					$('#result1').attr('style', "display:inline");
					url1 = 'En_MD.jsp?act=' + act;
					$('#result1').on('click', popupPage1);
				}
				if (rs.result2 == 1) {
					$('#result2').text('#Itawon(FoodStreet,Hannam)');
					$('#result2').attr('style', "display:inline");
					url2 = 'Main.html?act=' + act;
					$('#result2').on('click', popupPage2);
				}
				if (rs.result3 == 1) {
					$('#result3').text('#Dongdaemun Fassion Town');
					$('#result3').attr('style', "display:inline");
					url3 = 'En_Dongdaemun.jsp?act=' + act;
					$('#result3').on('click', popupPage3);
				}
				if (rs.result4 == 1) {
					$('#result4').text('#Jongro, Cheonggyu');
					$('#result4').attr('style', "display:inline");
					url4 = 'En_Jong-ro.jsp?act=' + act;
					$('#result4').on('click', popupPage4);
				}
				if (rs.result5 == 1) {
					$('#result5').text('#Jamsil');
					$('#result5').attr('style', "display:inline");
					url5 = 'Main.html?act=' + act;
					$('#result5').on('click', popupPage5);
				}
				if (rs.result6 == 1) {
					$('#result6').text('#COEX');
					$('#result6').attr('style', "display:inline");
					url6 = 'Main.html?act=' + act
					$('#result6').on('click', popupPage6);
				}
				if (rs.result7 == 1) {
					$('#result7').text('#63building');
					$('#result7').attr('style', "display:inline");
					url7 = 'Main.html?act=' + act
					$('#result7').on('click', popupPage7);
				}
				if (rs.result8 == 1) {
					$('#result8').text('#Han river,cruise ship');
					$('#result8').attr('style', "display:inline");
					url8 = 'Main.html?act=' + act
					$('#result8').on('click', popupPage8);
				}
				if (rs.result9 == 1) {
					$('#result9').text('#Gwanghwamun square');
					$('#result9').attr('style', "display:inline");
					url9 = 'Main.html?act=' + act
					$('#result9').on('click', popupPage9);
				}
				if (rs.result10 == 1) {
					$('#result10').text('#Sinchon, Around hongdae');
					$('#result10').attr('style', "display:inline");
					url10 = 'Main.html?act=' + act
					$('#result10').on('click', popupPage10);
				}
				if (rs.result11 == 1) {
					$('#result11').text('#DMC, Worldcup stadium');
					$('#result11').attr('style', "display:inline");
					url11 = 'Main.html?act=' + act
					$('#result11').on('click', popupPage11);
				}
				if (rs.result12 == 1) {
					$('#result12').text('#chongdam,Apgujeong');
					$('#result12').attr('style', "display:inline");
					url12 = 'Main.html?act=' + act
					$('#result12').on('click', popupPage12);
				}
				if (rs.result13 == 1) {
					$('#result13').text('#Garosu-gil');
					$('#result13').attr('style', "display:inline");
					url13 = 'Main.html?act=' + act
					$('#result13').on('click', popupPage13);
				}
				if (rs.result14 == 1) {
					$('#result14').text('#Gangnam station');
					$('#result14').attr('style', "display:inline");
					url14 = 'Main.html?act=' + act
					$('#result13').on('click', popupPage14);
					//$('#result14').attr('onclick', "location='"+url14+ "'" );
				}

				$('#seoul').attr('style', "margin: auto; text-align: center;");
			}
		});

	}

	function popupPage1() {
		if (play != true)
			myWindow.close();
		play = false;
		myWindow = window
				.open(
						url1,
						"_blank",
						"toolbar=yes,scrollbars=yes,resizable=yes,top=0,left=0,width=1900px,height=780px");
	}
	function popupPage2() {
		if (play != true)
			myWindow.close();
		play = false;
		myWindow = window
				.open(
						url2,
						"_blank",
						"toolbar=yes,scrollbars=yes,resizable=yes,top=0,left=0,width=1900px,height=780px");
	}
	function popupPage3() {
		if (play != true)
			myWindow.close();
		play = false;
		myWindow = window
				.open(
						url3,
						"_blank",
						"toolbar=yes,scrollbars=yes,resizable=yes,top=0,left=0,width=1900px,height=780px");
	}
	function popupPage4() {
		if (play != true)
			myWindow.close();
		play = false;
		myWindow = window
				.open(
						url4,
						"_blank",
						"toolbar=yes,scrollbars=yes,resizable=yes,top=0,left=0,width=1900px,height=780px");
	}
	function popupPage5() {
		if (play != true)
			myWindow.close();
		play = false;
		myWindow = window
				.open(
						url5,
						"_blank",
						"toolbar=yes,scrollbars=yes,resizable=yes,top=0,left=0,width=1900px,height=780px");
	}
	function popupPage6() {
		if (play != true)
			myWindow.close();
		play = false;
		myWindow = window
				.open(
						url6,
						"_blank",
						"toolbar=yes,scrollbars=yes,resizable=yes,top=0,left=0,width=1900px,height=780px");
	}
	function popupPage7() {
		if (play != true)
			myWindow.close();
		play = false;
		myWindow = window
				.open(
						url7,
						"_blank",
						"toolbar=yes,scrollbars=yes,resizable=yes,top=0,left=0,width=1900px,height=780px");
	}
	function popupPage8() {
		if (play != true)
			myWindow.close();
		play = false;
		myWindow = window
				.open(
						url8,
						"_blank",
						"toolbar=yes,scrollbars=yes,resizable=yes,top=0,left=0,width=1900px,height=780px");
	}
	function popupPage9() {
		if (play != true)
			myWindow.close();
		play = false;
		myWindow = window
				.open(
						url9,
						"_blank",
						"toolbar=yes,scrollbars=yes,resizable=yes,top=0,left=0,width=1900px,height=780px");
	}
	function popupPage10() {
		if (play != true)
			myWindow.close();
		play = false;
		myWindow = window
				.open(
						url10,
						"_blank",
						"toolbar=yes,scrollbars=yes,resizable=yes,top=0,left=0,width=1900px,height=780px");
	}
	function popupPag11() {
		if (play != true)
			myWindow.close();
		play = false;
		myWindow = window
				.open(
						url11,
						"_blank",
						"toolbar=yes,scrollbars=yes,resizable=yes,top=0,left=0,width=1900px,height=780px");
	}
	function popupPage12() {
		if (play != true)
			myWindow.close();
		play = false;
		myWindow = window
				.open(
						url12,
						"_blank",
						"toolbar=yes,scrollbars=yes,resizable=yes,top=0,left=0,width=1900px,height=780px");
	}
	function popupPage13() {
		if (play != true)
			myWindow.close();
		play = false;
		myWindow = window
				.open(
						url13,
						"_blank",
						"toolbar=yes,scrollbars=yes,resizable=yes,top=0,left=0,width=1900px,height=780px");
	}
	function popupPage14() {
		if (play != true)
			myWindow.close();
		play = false;
		myWindow = window
				.open(
						url14,
						"_blank",
						"toolbar=yes,scrollbars=yes,resizable=yes,top=0,left=0,width=1900px,height=780px");
	}
</script>
</body>

</html>