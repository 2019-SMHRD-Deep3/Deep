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
			<br><div style ="font-size: 30px;"><b>국가</b></div><br>
			<div id="Q_Nation">
				<div id="A_val">
					<select name=nation id = nation style ="font-weight: bold;">
						<option>대만
						<option>독일
						<option>러시아
						<option>말레이시아
						<option>몽골
						<option>미국
						<option>베트남
						<option>싱가포르
						<option>영국
						<option>인도
						<option>인도네시아
						<option>일본
						<option>중국
						<option>중동
						<option>캐나다
						<option>태국
						<option>프랑스
						<option>필리핀
						<option>호주
						<option>홍콩
						<option>기타
					</select>
				</div>
			</div><br>
			<hr>
			
			<!-- 여행형태 취향 -->
			<br><div style ="font-size: 30px;"><b>여행형태 취향</b></div><br>
			<div id="Q_type">
				<div class="T_type">
					<input type="button" class=tripBtn val="Air-tel"><br>
					<span><b style="font-size: 23px;"> Air-tel </b></span>
				</div>
				<div class="T_type">	 
					<input type="button" class=tripBtn val="개별여행"><br>
					<span><b style="font-size: 18px;"> 개별여행</b></span> 
				</div>
				<div class="T_type">
					<input type="button" class=tripBtn val="단체여행"><br>
					<span><b style="font-size: 18px;">단체여행 </b> </span>
				</div>
			</div><br>
			<hr>
			
			<!-- 좋아하는 활동 -->
			<br><div style ="font-size: 30px;"><b>좋아하는 활동</b></div><br>			
			<div id="Q_Active"> 
				<div class="activite">
					<select name=act id=act style ="font-weight: bold;">
						<option>고궁,역사유적지방문 
						<option>공연,민속,행사,축제 관람및참가 
						<option>놀이공원,테마파크
						<option>드라마,영화찰영지방문 
						<option>레포츠활동 
						<option>박물관,전시관방문 
						<option>뷰티관광
						<option>쇼핑 
						<option>스포츠활동 
						<option>시찰 
						<option>시티투어버스이용 
						<option>식도락관광
						<option>업무수행 
						<option>연수,교육,연구 
						<option>유흥,오락 
						<option>의료관광 
						<option>자연경관감상 
						<option>전통문화체험 
						<option>휴양,휴식 
						<option>기타
					</select>
				</div>
			</div><br>
			<hr>
			
			<!-- 고려요인 -->
			 <br>
			<div style ="font-size: 30px;"><b>고려요인</b></div><br>			
			<div id="Q_Consider"> 
				<div class="A_consider">
					<select name=consider id=consider style ="font-weight: bold;">
						<option>K-POP, 한류스타 관련 팬 미팅, 촬영지 등 경험
						<option>경제적인 여행비용
						<option>기후, 뚜렷한 사계절 
						<option>레저 및 스포츠 활동
						<option>쇼핑 
						<option>숙박, 교통 등 관광 편리성 및 안전성
						<option>역사, 문화 유적 탐방
						<option>유흥, 놀이 시설
						<option>음식, 미식 탐방
						<option>자국과의 이동 거리 
						<option>자연 풍경 감상
						<option>치료 및 미용 서비스
						<option>친구, 친지 방문  
						<option>템플스테이, 태권도 등 한국 전통 문화 체험
						<option>패션, 유행 등 세련된 현대 문화 
						<option>휴가 시간   
						<option>기타
					</select>
				</div>
			</div><br>
			<hr>

			<!-- 쇼핑 품목 -->
			<br><div style ="font-size: 30px;"><b>쇼핑을 한다면 구매 1순위 품목</b></div><br>
			<div id="Q_buy">
				<div class="bught">
					<select name=item id=item style ="font-weight: bold;">
						<option>가방류
						<option>담배 
						<option>보석,악세사리 
						<option>식료품
						<option>신발류
						<option>의류 
						<option>인삼,한약재 
						<option>전통민예품,칠기,목각제품 
						<option>주류
						<option>한류 스타 관련 상품 
						<option>향수,화장품 
						<option>기타
					</select>
				</div>
			</div><br>
			<hr>

			<!-- 인원 구성 -->
			<br><div style ="font-size: 30px;"><b>인원 구성</b></div><br>
			<div id="Q_Member">
				<div class="A_member">
					<select name=member id=member style ="font-weight: bold;">
						<option>가족, 친지
						<option>직장동료
						<option>친구, 연인
						<option>혼자 방문
						<option>기타
					</select>
				</div>
			</div><br>
			<hr>
			

			
			<div id = "submit" style="margin:auto; text-align: center">
				<input type="button" value="전송" onclick="mySub()">
			</div>
			 <div id = seoul style="display:none; ">
			 	<!-- <a id='result' href='#'></a> -->
			 	<div><h2>당신이 바라던 서울 </h2> </div>
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
             url : "http://localhost:9000/re/" +member + "/" + trip_type + "/" + consider + "/" + nation + "/" + item + "/" + act,     
             method : "POST",
             success : function(rs) {
            	 //alert('success'+JSON.strify(rs))
            	 
            	 $('#submit').attr('style', "display:none");
            	 $('#seoul').attr('style', "display:inline");
            	
            
            	 if (rs.result1 == 1){
	  					$('#result1').text('#명동, 남대문, 북창');
	  					$('#result1').attr('style', "display:inline");
	  					url1 = 'K_MD.jsp?act='+act;
	  					$('#result1').on('click',popupPage1);	
            	 	}
	  				if (rs.result2 == 1){
	  					$('#result2').text('#이태원(이태원세계음식거리, 한남동)');
	  					$('#result2').attr('style', "display:inline");
	  					url2 = 'Main.html?act='+act;
	  					$('#result2').on('click',popupPage2);
	  				}
	  				if (rs.result3 == 1){
	  					$('#result3').text('#동대문 패션타운');
	  					$('#result3').attr('style', "display:inline");
	  					url3 = 'K_Dongdaemun.jsp?act='+act;
	  					$('#result3').on('click',popupPage3);
	  				}
	  				if (rs.result4 == 1){
	  					$('#result4').text('#종로, 청계');
	  					$('#result4').attr('style', "display:inline");
	  					url4 = 'K_Jong-ro.jsp?act='+act;	  					
	  					$('#result4').on('click',popupPage4);
	  				}
	  				if (rs.result5 == 1){
	  					$('#result5').text('#잠실');
	  					$('#result5').attr('style', "display:inline");
	  					url5 = 'Main.html?act='+act;
	  					$('#result5').on('click',popupPage5);
	  				}
	  				if (rs.result6 == 1){
	  					$('#result6').text('#코엑스');
	  					$('#result6').attr('style', "display:inline");
	  					url6 = 'Main.html?act='+act
	  					$('#result6').on('click',popupPage6);
	  				}
	  				if (rs.result7 == 1){
	  					$('#result7').text('#여의도(63빌딩)');
	  					$('#result7').attr('style', "display:inline");
	  					url7 = 'Main.html?act='+act
	  					$('#result7').on('click',popupPage7);
	  				}
	  				if (rs.result8 == 1){
	  					$('#result8').text('#한강, 유람선');
	  					$('#result8').attr('style', "display:inline");
	  					url8 = 'Main.html?act='+act
	  					$('#result8').on('click',popupPage8);
	  				}
	  				if (rs.result9 == 1){
	  					$('#result9').text('#광화문 광장');
	  					$('#result9').attr('style', "display:inline");
	  					url9 = 'Main.html?act='+act
	  					$('#result9').on('click',popupPage9);
	  				}
	  				if (rs.result10 == 1){
	  					$('#result10').text('#신촌, 홍대주변');
	  					$('#result10').attr('style', "display:inline");
	  					url10 = 'Main.html?act='+act
	  					$('#result10').on('click',popupPage10);
	  				}
	  				if (rs.result11 == 1){
	  					$('#result11').text('#DMC, 월드컵경기장');
	  					$('#result11').attr('style', "display:inline");
	  					url11 = 'Main.html?act='+act
	  					$('#result11').on('click',popupPage11);
	  				}
	  				if (rs.result12 == 1){
	  					$('#result12').text('#청담동, 압구정동');
	  					$('#result12').attr('style', "display:inline");
	  					url12 = 'Main.html?act='+act
	  					$('#result12').on('click',popupPage12);
	  				}
	  				if (rs.result13 == 1){
	  					$('#result13').text('#가로수길');
	  					$('#result13').attr('style', "display:inline");
	  					url13 = 'Main.html?act='+act
	  					$('#result13').on('click',popupPage13);
	  				}
	  				if (rs.result14 == 1){
	  					$('#result14').text('#강남역');
	  					$('#result14').attr('style', "display:inline");
	  					url14 = 'Main.html?act='+act
	  					$('#result13').on('click',popupPage14);		
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
			 myWindow = window.open(url1, "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,top=0,left=0,width=1900px,height=800px");
		}
		function popupPage2(){
			if(play != true)
				myWindow.close();
			play = false;
			 myWindow = window.open(url2, "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,top=0,left=0,width=1900px,height=800px");
		}
		function popupPage3(){
			if(play != true)
				myWindow.close();
			play = false;
			 myWindow = window.open(url3, "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,top=0,left=0,width=1900px,height=800px");	
		}
		function popupPage4(){
			if(play != true)
				myWindow.close();
			play = false;
			 myWindow = window.open(url4, "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,top=0,left=0,width=1900px,height=800px");	
		}
		function popupPage5(){
			if(play != true)
				myWindow.close();
			play = false;
			 myWindow = window.open(url5, "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,top=0,left=0,width=1900px,height=800px");
		}
		function popupPage6(){
			if(play != true)
				myWindow.close();
			play = false;
			 myWindow = window.open(url6, "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,top=0,left=0,width=1900px,height=800px");
		}
		function popupPage7(){
			if(play != true)
				myWindow.close();
			play = false;
			 myWindow = window.open(url7, "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,top=0,left=0,width=1900px,height=800px");
		}
		function popupPage8(){
			if(play != true)
				myWindow.close();
			play = false;
			 myWindow = window.open(url8, "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,top=0,left=0,width=1900px,height=800px");
		}
		function popupPage9(){
			if(play != true)
				myWindow.close();
			play = false;
			 myWindow = window.open(url9, "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,top=0,left=0,width=1900px,height=800px");
		}
		function popupPage10(){
			if(play != true)
				myWindow.close();
			play = false;
			 myWindow = window.open(url10, "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,top=0,left=0,width=1900px,height=800px");
		}
		function popupPag11(){
			if(play != true)
				myWindow.close();
			play = false;
			 myWindow = window.open(url11, "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,top=0,left=0,width=1900px,height=800px");
		}
		function popupPage12(){
			if(play != true)
				myWindow.close();
			play = false;
			 myWindow = window.open(url12, "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,top=0,left=0,width=1900px,height=800px");
		}
		function popupPage13(){
			if(play != true)
				myWindow.close();
			play = false;
			 myWindow = window.open(url13, "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,top=0,left=0,width=1900px,height=800px");
		}
		function popupPage14(){
			if(play != true)
				myWindow.close();
			play = false;
			 myWindow = window.open(url14, "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,top=0,left=0,width=1900px,height=800px");
		}
	
	

</script>
</body>

</html>