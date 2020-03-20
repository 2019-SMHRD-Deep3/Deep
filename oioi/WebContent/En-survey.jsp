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
	border: 7px solid #8080A3;
	margin-top: 3%;
	margin-left: 20%;
	margin-right: 20%;
	margin-bottom: 3%;
	padding-top: 2.1%;
	padding-left: 3%;
	padding-right: 3%;
	padding-bottom: 2.1%;
	background-color: rgba(23,27,35, 0.8);
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
<body style="background-image: url(img/survey_bg.jpg); max-width: 100%; height: 100%;"> 

<!-- �������� -->

	<div id="QnA">
		<!-- ���� -->
		<br><div style ="font-size: 30px;"><b>Country</b></div><br>
		<div id="Q_Nation">
			<div id="A_val">
				<select name=nation id=nation style ="font-weight: bold;">
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
		</div><br>
		<hr>

	<!-- �������� ���� -->
	<br><div style ="font-size: 30px;"><b>Travel type Preference</b></div><br>
	<div id="Q_type">
		<div class="T_type">
			<input type="button" class=tripBtn val="Air-tel"><br> 
			<span><b style="font-size: 23px;">Air-tel &nbsp&nbsp&nbsp&nbsp&nbsp  </b> </span>
		</div>
		<div class="T_type">
			<input type="button" class=tripBtn val="��������"><br> 
			<span><b style="font-size: 23px;">Individual travel</b> </span>
		</div>
		<div class="T_type">
			<input type="button" class=tripBtn val="��ü����"><br> 
			<span><b style="font-size: 23px;">Group travel</b> </span>
		</div>
	</div>
	<br>
	<hr>

	<!-- �����ϴ� Ȱ�� -->
	<br><div style ="font-size: 30px;"><b>Favorite activity</b></div><br>
	<div id="Q_Active">
		<div class="activite">
			<select name=act id=act  style ="font-weight: bold;">
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

	<!-- ������� -->
	<br>
	<div style ="font-size: 30px;"><b>Consideration factors</b></div><br>
	<div id="Q_Consider">
		<div class="A_consider">
			<select name=consider id=consider  style ="font-weight: bold;">
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

	<!-- ���� ǰ�� -->
	<br><div style ="font-size: 30px;"><b>Shopping items</b></div><br>
	<div id="Q_buy">
		<div class="bught">
			<select name=item id=item style ="font-weight: bold;">
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

	<!-- �ο� ���� -->
	<br><div style ="font-size: 30px;"><b>People composition</b></div><br>
	<div id="Q_Member">
		<div class="A_member">
			<select name=member id=member style ="font-weight: bold;">
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
		<input type="button" value="Send" onclick="mySub()">
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
		<input type="button" value="����" onclick="mySub()"> -->


<script>
	var trip_type;

	$('.tripBtn').on('click', function() {
		$('.tripBtn').css('background-color', '');
		$(this).css('background-color', 'yellow');
		trip_type = "��������_" + $(this).attr('val');
		$(this).css('value', trip_type);
	});

	// var name = "";
	
	var play = true;
	var myWindow;
	function mySub() {
		console.log(trip_type);

/* 		var member = "�ο�����_" + $('#member').val();
		var consider = "�������_" + $('#consider').val();
		var nation = "����_" + $('#nation').val();
		var item = "����ǰ��_" + $('#item').val();
		var act = "Ȱ������_" + $('#act').val(); */
		
		var member = $('#member').val();
		var consider = $('#consider').val();
		var nation = $('#nation').val();
		var item = $('#item').val();
		var act = $('#act').val();

		// �ο� ����
 		if(member == 'Family, relatives'){
			member = '�ο�����_' + '����, ģ��';
		}else if(member == 'Coworkers'){
			member = '�ο�����_' + '���嵿��';
		}else if(member == 'Friends, lovers'){
			member = '�ο�����_' + 'ģ��, ����';
		}else if(member == 'alone'){
			member = '�ο�����_' + 'ȥ�� �湮';
		}else if(member == 'Other'){
			member = '�ο�����_' + '��Ÿ';
		}
 		
 		// ��� ����
 		if(consider == 'K-POP, Hallyu star related fan meeting, location,etc.'){
 			consider = '�������_' + 'K-POP, �ѷ���Ÿ ���� �� ����, �Կ��� �� ����';
		}else if(consider == 'Economical travel cost'){
			consider ='�������_' + '�������� ������';
		}else if(consider == 'climate, distinct four seasons'){
			consider = '�������_' + '����, �ѷ��� ����� ';
		}else if(consider == 'Leisure and sports activities'){
			consider = '�������_' + '���� �� ������ Ȱ��';
		}else if(consider == 'shopping'){
			consider = '�������_' + '���� ';
		}else if(consider == 'Convenience and safety of tourism such as accommodation and transportation'){
			consider ='�������_' +  '����, ���� �� ���� ���� �� ������';
		}else if(consider == 'Exploring historical and cultural sites'){
			consider = '�������_' + '����, ��ȭ ���� Ž��';
		}else if(consider == 'nightlife, amusement facilities'){
			consider = '�������_' + '����, ���� �ü�';
		}else if(consider == 'Food, gourmet exploration'){
			consider = '�������_' + '����, �̽� Ž��';
		}else if(consider == 'Distance to travel'){
			consider = '�������_' + '�ڱ����� �̵� �Ÿ�';
		}else if(consider == 'Appreciating the natural scenery'){
			consider = '�������_' + '�ڿ� ǳ�� ����';
		}else if(consider == 'treatment and beauty service'){
			consider = '�������_' + 'ġ�� �� �̿� ����';
		}else if(consider == 'Visit friends and relatives'){
			consider = '�������_' + 'ģ��, ģ�� �湮';
		}else if(consider == 'Experience Korean traditional culture such as temple stay and Taekwondo'){
			consider = '�������_' + '���ý�����, �±ǵ� �� �ѱ� ���� ��ȭ ü��';
		}else if(consider == 'Fashionable and fashionable modern culture'){
			consider = '�������_' + '�м�, ���� �� ���õ� ���� ��ȭ ';
		}else if(consider == 'vacation time'){
			consider = '�������_' + '�ް� �ð� ';
		}else if(consider == 'Other'){
			consider = '��Ÿ';
		}
 		
 		
 		// ����
 		if(nation == 'Taiwan'){
 			nation = '����_' + '�븸';
		}else if(nation == 'Germany'){
			nation ='����_' + '����';
		}else if(nation == 'Russia'){
			nation ='����_' + '���þ�';
		}else if(nation == 'Malaysia'){
			nation ='����_' + '�����̽þ�';
		}else if(nation == 'Mongolia'){
			nation ='����_' + '����';
		}else if(nation == 'U.S.A'){
			nation ='����_' + '�̱�';
		}else if(nation == 'Vietnam'){
			nation ='����_' + '��Ʈ��';
		}else if(nation == 'Singapore'){
			nation ='����_' + '�̰�����';
		}else if(nation == 'U.K'){
			nation ='����_' + '����';
		}else if(nation == 'India'){
			nation ='����_' + '�ε�';
		}else if(nation == 'Indonesia'){
			nation ='����_' + '�ε��׽þ�';
		}else if(nation == 'Japan'){
			nation ='����_' + '�Ϻ�';
		}else if(nation == 'China'){
			nation ='����_' + '�߱�';
		}else if(nation == 'U.A.E'){
			nation ='����_' + '�ߵ�';
		}else if(nation == 'Canada'){
			nation ='����_' + 'ĳ����';
		}else if(nation == 'Thailand'){
			nation ='����_' + '�±�';
		}else if(nation == 'Frence'){
			nation ='����_' + '������';
		}else if(nation == 'Philippines'){
			nation ='����_' + '�ʸ���';
		}else if(nation == 'Australia'){
			nation ='����_' + 'ȣ��';
		}else if(nation == 'HongKong'){
			nation ='����_' + 'ȫ��';
		}else if(nation == 'Other'){
			nation ='����_' + '��Ÿ';		
		}

 		
 		// ����ǰ��
 		if(item == 'bag'){
 			item = "����ǰ��_"+ '�����';
		}else if(item == 'cigarette'){
			item = "����ǰ��_" + '���';
		}else if(item == 'Jewelry, accessories'){
			item = "����ǰ��_" + '����,�Ǽ��縮';
		}else if(item == 'grocery'){
			item = "����ǰ��_" + '�ķ�ǰ';
		}else if(item == 'shoes'){
			item = "����ǰ��_" + '�Ź߷�';
		}else if(item == 'clothing'){
			item = "����ǰ��_" + '�Ƿ�';
		}else if(item == 'Ginseng, herbal medicine'){
			item = "����ǰ��_" + '�λ�,�Ѿ���';
		}else if(item == 'Traditional folk crafts, lacquerware, woodcarving products'){
			item = "����ǰ��_" + '����ο�ǰ,ĥ��,����ǰ';
		}else if(item == 'mainstream'){
			item = "����ǰ��_" + '�ַ�';
		}else if(item == 'Hallyu star related products'){
			item = "����ǰ��_" + '�ѷ� ��Ÿ ���� ��ǰ';
		}else if(item == 'perfume, cosmetics'){
			item = "����ǰ��_" + '���,ȭ��ǰ';
		}else if(item == 'Other'){
			item = "����ǰ��_" + '��Ÿ';
		}
 		
 		// Ȱ������
 		if(act == 'Forbidden City, Historic Site'){
 			act = "Ȱ������_"+ '���,�����������湮';
		}else if(act == 'Performance, Folklore, Events, Festival viewing participation'){
			act = "Ȱ������_" + '����,�μ�,���,���� ����������';
		}else if(act == 'Amusement park, theme park'){
			act = "Ȱ������_" + '���̰���,�׸���ũ';
		}else if(act == 'Drama, movie location visit'){
			act = "Ȱ������_" + '���,��ȭ�������湮';
		}else if(act == 'Report activities'){
			act = "Ȱ������_" + '������Ȱ�� ';
		}else if(act == 'museums and exhibition halls'){
			act = "Ȱ������_" + '�ڹ���,���ð��湮';
		}else if(act == 'Beauty Tourism'){
			act = "Ȱ������_" + '��Ƽ����';
		}else if(act == 'Shopping'){
			act = "Ȱ������_" + '����';
		}else if(act == 'Sports'){
			act = "Ȱ������_" + '������Ȱ��';
		}else if(act == 'inspection'){
			act = "Ȱ������_" + '����';
		}else if(act == 'City tour bus'){
			act = "Ȱ������_" + '��Ƽ��������̿�';
		}else if(act == 'Gastronomic tourism'){
			act = "Ȱ������_" + '�ĵ�������';
		}else if(act == 'Business'){
			act = "Ȱ������_" + '��������';
		}else if(act == 'Training, education, research'){
			act = "Ȱ������_" + '����,����,����';
		}else if(act == 'Nightlife, entertainment'){
			act = "Ȱ������_" + '����,����';
		}else if(act == 'Medical tourism'){
			act = "Ȱ������_" + '�Ƿ����';
		}else if(act == 'Natural scenery'){
			act = "Ȱ������_" + '�ڿ�������� ';
		}else if(act == 'Traditional culture experience'){
			act = "Ȱ������_" + '���빮ȭü��';
		}else if(act == 'Recreation'){
			act = "Ȱ������_" + '�޾�,�޽�';
		}else if(act == 'other'){
			act = "Ȱ������_" + '��Ÿ';
		}
 		
 		
		
		console.log(member);
		console.log(consider);
		console.log(nation);
		console.log(item);
		console.log(act);
		//����~~    //$('#myForm').submit();

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