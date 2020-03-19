<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	
		<%
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
	%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<script type="text/javascript" src="assets/js/jquery-3.4.1.min.js"></script>
<meta charset="utf-8" />
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
}

#Q_type{
	display: grid;
	grid-template-rows: repeat(auto-fit, 100px);
	grid-template-columns: repeat(auto-fit, 100px);
	place-items: center center;
	text-align: center;
	margin-left: 33%;
	margin-right: 20%;
	gap: 0px 5%;
}

#A_val, .bught, .base, .activite, .A_consider, .A_member{
	margin-left: 25%;
	margin-right: 25%;
}
</style>

</head>
<body style="background-image: url(img/survey_bg.jpg); max-width: 100%; height: 100%;"> 
	<!-- 설문조사 -->

		<div id="QnA">
			<!-- 국가 -->
			<br><div style ="font-size: 30px;"><b>Pays</b></div><br>
			<div id="Q_Nation">
				<div id="A_val">
					<select name=nation id = nation style ="font-weight: bold;">
						<option> Taiwan
						<option> Allemagne
						<option> Russie
						<option> malaisie
						<option> Mongolie
						<option> États-Unis
						<option> Vietnam
						<option> Singapour
						<option> Royaume-Uni
						<option> Inde
						<option> Indonésie
						<option> Japon
						<option> Chine
						<option> Moyen-Orient
						<option> Canada
						<option> Thaïlande
						<option> France
						<option> Philippines
						<option> Australie
						<option> Hong Kong
						<option> Autre
					</select>
				</div>
			</div><br>
			<hr>
			
			<!-- 여행형태 취향 -->
			<br><div  style ="font-size: 30px;"><b>Préférence de type de voyage</b></div><br>
			<div id="Q_type">
				<div class="T_type">
					<input type="button" class=tripBtn val="Air-tel"><br>
					<span><b style="font-size: 20px;"> Air-tel &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp  </b></span>
				</div>
				<div class="T_type">	 
					<input type="button" class=tripBtn val="개별여행"><br>
					<span><b style="font-size: 20px;"> Voyage individuel &nbsp&nbsp&nbsp</b></span> 
				</div>
				<div class="T_type">
					<input type="button" class=tripBtn val="단체여행"><br>
					<span><b style="font-size: 20px;">Voyage en groupe </b></span>
				</div>
			</div><br>
			<hr>
			
			<!-- 좋아하는 활동 -->
			 <br>
			<div style ="font-size: 30px;"><b>Activité préférée</b></div><br>			
			<div id="Q_Active"> 
				<div class="activite">
					<select name=act id=act style ="font-weight: bold;">
						<option> Cité interdite, site historique
						<option> Performance, folklore, événements, visionnement et participation à des festivals
						<option> Parc d'attractions, parc à thème</option><option> Projection dramatique et cinématographique
						<option> Rapport d'activités
						<option> Visitez un musée ou une salle d'exposition
						<option> Beauty Tour
						<option> shopping
						<option> Activités sportives
						<option> inspection
						<option> Bus touristique
						<option> visite gastronomique
						<option> performance commerciale
						<option> Formation, éducation, recherche
						<option> vie nocturne, divertissement
						<option> tourisme médical
						<option> Appréciation du paysage naturel
						<option> Expérience de la culture traditionnelle
						<option> Loisirs, détente
						<option> Autre
					</select>
				</div>
			</div><br>
			<hr>
			
			<!-- 고려요인 -->
			 <br>
			<div style ="font-size: 30px;"><b>Facteurs de considération</b></div><br>			
			<div id="Q_Consider"> 
				<div class="A_consider">
					<select name=consider id=consider style ="font-weight: bold;">
						<option> K-POP, réunion des fans liés à l'étoile Hallyu, emplacement, etc.
						<option> Coût de voyage économique
						<option> climat, quatre saisons distinctes
						<option> Loisirs et activités sportives
						<option> shopping
						<option> Commodité et sécurité du tourisme comme l'hébergement et le transport
						<option> Explorer les sites historiques et culturels
						<option> vie nocturne, installations d'amusement
						<option> Cuisine, exploration gourmande
						<option> Distance à parcourir
						<option> Apprécier le paysage naturel
						<option> traitement et service de beauté
						<option> Visitez des amis et des parents
						<option> Découvrez la culture traditionnelle coréenne comme le séjour au temple et le taekwondo
						<option> Culture moderne à la mode et à la mode
						<option> vacances
						<option> Autre
					</select>
				</div>
			</div><br>
			<hr>

			<!-- 쇼핑 품목 -->
			<br><div style ="font-size: 30px;"><b>Si vous faites des achats, l'article numéro un à acheter</b></div><br>
			<div id="Q_buy">
				<div class="bught">
					<select name=item id=item style ="font-weight: bold;">
						<option> sac
						<option> cigarette
						<option> Bijoux, accessoires
						<option> épicerie
						<option> chaussures
						<option> vêtements
						<option> Ginseng, phytothérapie
						<option> Artisanat traditionnel, laque, produits de sculpture sur bois
						<option> grand public
						<option> Produits liés à Hallyu star
						<option> parfum, cosmétique
						<option> Autre
					</select>
				</div>
			</div><br>
			<hr>

			<!-- 인원 구성 -->
			<br><div style ="font-size: 30px;"><b>Composition des personnes</b></div><br>
			<div id="Q_Member">
				<div class="A_member">
					<select name=member id=member style ="font-weight: bold;">
						<option> Famille, parents
						<option> Collègues
						<option> Amis, amants
						<option> seul
						<option> Autre
					</select>
				</div>
			</div><br>
			<hr>
			

			
			<div id = "submit" style="margin:auto; text-align: center">
				<input type="button" value="Send" onclick="mySub()">
			</div>
			 <div id = seoul style="display:none; ">
			 	<!-- <a id='result' href='#'></a> -->
			 	<div><h2>Séoul tu voulais </h2> </div>
				<button id="result1" style ="display:none" ></button>
				<button id="result2" style ="display:none"></button>
				<button id="result3" style ="display:none"></button>
				<button id="result4" style ="display:none"></button>
				<button id="result5" style ="display:none"></button>
				<button id="result6" style ="display:none"></button>
				<button id="result7" style ="display:none"></button>
				<button id="result8" style ="display:none"></button>
				<button id="result9" style ="display:none"></button>
				<button id="result10" style ="display:none"></button>
				<button id="result11" style ="display:none"></button>
				<button id="result12" style ="display:none"></button>
				<button id="result13" style ="display:none"></button>
				<button id="result14" style ="display:none"></button>
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

/* 		var member = "인원구성_" + $('#member').val();
		var consider = "고려요인_" + $('#consider').val();
		var nation = "국가_" + $('#nation').val();
		var item = "쇼핑품목_" + $('#item').val();
		var act = "활동성향_" + $('#act').val(); */
		
		
		var member = $('#member').val();
		var consider = $('#consider').val();
		var nation = $('#nation').val();
		var item = $('#item').val();
		var act = $('#act').val();

		// 인원 구성
 		if(member == 'Family, relatives'){
			member = '인원구성_' + '가족, 친지';
		}else if(member == 'Coworkers'){
			member = '인원구성_' + '직장동료';
		}else if(member == 'Friends, lovers'){
			member = '인원구성_' + '친구, 연인';
		}else if(member == 'alone'){
			member = '인원구성_' + '혼자 방문';
		}else if(member == 'Other'){
			member = '인원구성_' + '기타';
		}
 		
 		// 고려 요인
 		if(consider == 'K-POP, Hallyu star related fan meeting, location,etc.'){
 			consider = '고려요인_' + 'K-POP, 한류스타 관련 팬 미팅, 촬영지 등 경험';
		}else if(consider == 'Economical travel cost'){
			consider ='고려요인_' + '경제적인 여행비용';
		}else if(consider == 'climate, distinct four seasons'){
			consider = '고려요인_' + '기후, 뚜렷한 사계절 ';
		}else if(consider == 'Leisure and sports activities'){
			consider = '고려요인_' + '레저 및 스포츠 활동';
		}else if(consider == 'shopping'){
			consider = '고려요인_' + '쇼핑 ';
		}else if(consider == 'Convenience and safety of tourism such as accommodation and transportation'){
			consider ='고려요인_' +  '숙박, 교통 등 관광 편리성 및 안전성';
		}else if(consider == 'Exploring historical and cultural sites'){
			consider = '고려요인_' + '역사, 문화 유적 탐방';
		}else if(consider == 'nightlife, amusement facilities'){
			consider = '고려요인_' + '유흥, 놀이 시설';
		}else if(consider == 'Food, gourmet exploration'){
			consider = '고려요인_' + '음식, 미식 탐방';
		}else if(consider == 'Distance to travel'){
			consider = '고려요인_' + '자국과의 이동 거리';
		}else if(consider == 'Appreciating the natural scenery'){
			consider = '고려요인_' + '자연 풍경 감상';
		}else if(consider == 'treatment and beauty service'){
			consider = '고려요인_' + '치료 및 미용 서비스';
		}else if(consider == 'Visit friends and relatives'){
			consider = '고려요인_' + '친구, 친지 방문';
		}else if(consider == 'Experience Korean traditional culture such as temple stay and Taekwondo'){
			consider = '고려요인_' + '템플스테이, 태권도 등 한국 전통 문화 체험';
		}else if(consider == 'Fashionable and fashionable modern culture'){
			consider = '고려요인_' + '패션, 유행 등 세련된 현대 문화 ';
		}else if(consider == 'vacation time'){
			consider = '고려요인_' + '휴가 시간 ';
		}else if(consider == 'Other'){
			consider = '기타';
		}
 		
 		
 		// 국가
 		if(nation == 'Taiwan'){
 			nation = '국가_' + '대만';
		}else if(nation == 'Germany'){
			nation ='국가_' + '독일';
		}else if(nation == 'Russia'){
			nation ='국가_' + '러시아';
		}else if(nation == 'Malaysia'){
			nation ='국가_' + '말레이시아';
		}else if(nation == 'Mongolia'){
			nation ='국가_' + '몽골';
		}else if(nation == 'U.S.A'){
			nation ='국가_' + '미국';
		}else if(nation == 'Vietnam'){
			nation ='국가_' + '베트남';
		}else if(nation == 'Singapore'){
			nation ='국가_' + '싱가포르';
		}else if(nation == 'U.K'){
			nation ='국가_' + '영국';
		}else if(nation == 'India'){
			nation ='국가_' + '인도';
		}else if(nation == 'Indonesia'){
			nation ='국가_' + '인도네시아';
		}else if(nation == 'Japan'){
			nation ='국가_' + '일본';
		}else if(nation == 'China'){
			nation ='국가_' + '중국';
		}else if(nation == 'U.A.E'){
			nation ='국가_' + '중동';
		}else if(nation == 'Canada'){
			nation ='국가_' + '캐나다';
		}else if(nation == 'Frence'){
			nation ='국가_' + '프랑스';
		}else if(nation == 'Philippines'){
			nation ='국가_' + '필리핀';
		}else if(nation == 'Australia'){
			nation ='국가_' + '호주';
		}else if(nation == 'HongKong'){
			nation ='국가_' + '홍콩';
		}else if(nation == 'Other'){
			nation ='국가_' + '기타';		
		}

 		
 		// 쇼핑품목
 		if(item == 'bag'){
 			item = "쇼핑품목_"+ '가방류';
		}else if(item == 'cigarette'){
			item = "쇼핑품목_" + '담배';
		}else if(item == 'Jewelry, accessories'){
			item = "쇼핑품목_" + '보석,악세사리';
		}else if(item == 'grocery'){
			item = "쇼핑품목_" + '식료품';
		}else if(item == 'shoes'){
			item = "쇼핑품목_" + '신발류';
		}else if(item == 'clothing'){
			item = "쇼핑품목_" + '의류';
		}else if(item == 'Ginseng, herbal medicine'){
			item = "쇼핑품목_" + '인삼,한약재';
		}else if(item == 'Traditional folk crafts, lacquerware, woodcarving products'){
			item = "쇼핑품목_" + '전통민예품,칠기,목각제품';
		}else if(item == 'mainstream'){
			item = "쇼핑품목_" + '주류';
		}else if(item == 'Hallyu star related products'){
			item = "쇼핑품목_" + '한류 스타 관련 상품';
		}else if(item == 'perfume, cosmetics'){
			item = "쇼핑품목_" + '향수,화장품';
		}else if(item == 'Other'){
			item = "쇼핑품목_" + '기타';
		}
 		
 		// 활동성향
 		if(act == 'Forbidden City, Historic Site'){
 			act = "활동성향_"+ '고궁,역사유적지방문';
		}else if(act == 'Performance, Folklore, Events, Festival viewing participation'){
			act = "활동성향_" + '공연,민속,행사,축제 관람및참가';
		}else if(act == 'Amusement park, theme park'){
			act = "활동성향_" + '놀이공원,테마파크';
		}else if(act == 'Drama, movie location visit'){
			act = "활동성향_" + '드라마,영화찰영지방문';
		}else if(act == 'Report activities'){
			act = "활동성향_" + '레포츠활동 ';
		}else if(act == 'museums and exhibition halls'){
			act = "활동성향_" + '박물관,전시관방문';
		}else if(act == 'Beauty Tourism'){
			act = "활동성향_" + '뷰티관광';
		}else if(act == 'Shopping'){
			act = "활동성향_" + '쇼핑';
		}else if(act == 'Sports'){
			act = "활동성향_" + '스포츠활동';
		}else if(act == 'inspection'){
			act = "활동성향_" + '시찰';
		}else if(act == 'City tour bus'){
			act = "활동성향_" + '시티투어버스이용';
		}else if(act == 'Gastronomic tourism'){
			act = "활동성향_" + '식도락관광';
		}else if(act == 'Business'){
			act = "활동성향_" + '업무수행';
		}else if(act == 'Training, education, research'){
			act = "활동성향_" + '연수,교육,연구';
		}else if(act == 'Nightlife, entertainment'){
			act = "활동성향_" + '유흥,오락';
		}else if(act == 'Medical tourism'){
			act = "활동성향_" + '의료관광';
		}else if(act == 'Natural scenery'){
			act = "활동성향_" + '자연경관감상 ';
		}else if(act == 'Traditional culture experience'){
			act = "활동성향_" + '전통문화체험';
		}else if(act == 'Recreation'){
			act = "활동성향_" + '휴양,휴식';
		}else if(act == 'other'){
			act = "활동성향_" + '기타';
		}
 		

		console.log(member);
		console.log(consider);
		console.log(nation);
		console.log(item);
		console.log(act);
		//전송~~    //$('#myForm').submit();
	
		
		 $.ajax({
             url : "http://localhost:9000/re/" +member + "/" + trip_type + "/" + consider + "/" + nation + "/" + item + "/" + act,     
             method : "POST",
             success : function(rs) {
            	 //alert('success'+JSON.strify(rs))
            	 
            	 $('#submit').attr('style', "display:none");
            	 $('#seoul').attr('style', "display:inline");
            	
            
            	 if (rs.result1 == 1) {
 					$('#result1').text('#Myeongdong, Namdaemun, Bukchang');
 					$('#result1').attr('style', "display:inline");
 					url1 = 'Fr_MD.jsp?act=' + act;
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
 					url3 = 'Fr_Dongdaemun.jsp?act=' + act;
 					$('#result3').on('click', popupPage3);
 				}
 				if (rs.result4 == 1) {
 					$('#result4').text('#Jongro, Cheonggyu');
 					$('#result4').attr('style', "display:inline");
 					url4 = 'Fr_Jong-ro.jsp?act=' + act;
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
	
		function popupPage1(){
			if(play != true)
				myWindow.close();
			play = false;
			 myWindow = window.open(url1, "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,top=0,left=0,width=1900px,height=790px");
		}
		function popupPage2(){
			if(play != true)
				myWindow.close();
			play = false;
			 myWindow = window.open(url2, "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,top=0,left=0,width=1900px,height=790px");
		}
		function popupPage3(){
			if(play != true)
				myWindow.close();
			play = false;
			 myWindow = window.open(url3, "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,top=0,left=0,width=1900px,height=790px");	
		}
		function popupPage4(){
			if(play != true)
				myWindow.close();
			play = false;
			 myWindow = window.open(url4, "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,top=0,left=0,width=1900px,height=790px");	
		}
		function popupPage5(){
			if(play != true)
				myWindow.close();
			play = false;
			 myWindow = window.open(url5, "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,top=0,left=0,width=1900px,height=790px");
		}
		function popupPage6(){
			if(play != true)
				myWindow.close();
			play = false;
			 myWindow = window.open(url6, "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,top=0,left=0,width=1900px,height=790px");
		}
		function popupPage7(){
			if(play != true)
				myWindow.close();
			play = false;
			 myWindow = window.open(url7, "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,top=0,left=0,width=1900px,height=790px");
		}
		function popupPage8(){
			if(play != true)
				myWindow.close();
			play = false;
			 myWindow = window.open(url8, "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,top=0,left=0,width=1900px,height=790px");
		}
		function popupPage9(){
			if(play != true)
				myWindow.close();
			play = false;
			 myWindow = window.open(url9, "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,top=0,left=0,width=1900px,height=790px");
		}
		function popupPage10(){
			if(play != true)
				myWindow.close();
			play = false;
			 myWindow = window.open(url10, "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,top=0,left=0,width=1900px,height=790px");
		}
		function popupPag11(){
			if(play != true)
				myWindow.close();
			play = false;
			 myWindow = window.open(url11, "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,top=0,left=0,width=1900px,height=790px");
		}
		function popupPage12(){
			if(play != true)
				myWindow.close();
			play = false;
			 myWindow = window.open(url12, "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,top=0,left=0,width=1900px,height=790px");
		}
		function popupPage13(){
			if(play != true)
				myWindow.close();
			play = false;
			 myWindow = window.open(url13, "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,top=0,left=0,width=1900px,height=790px");
		}
		function popupPage14(){
			if(play != true)
				myWindow.close();
			play = false;
			 myWindow = window.open(url14, "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,top=0,left=0,width=1900px,height=790px");
		}
	
	

</script>
</body>

</html>