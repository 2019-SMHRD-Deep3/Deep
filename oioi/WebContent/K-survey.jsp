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
.ageBtn, .genderBtn, .myBtn, .tripBtn {
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

#Q_Age, #Q_Gender, #Q_type {
	display: grid;
	grid-template-rows: repeat(auto-fit, 100px);
	grid-template-columns: repeat(auto-fit, 100px);
	place-items: center center;
	text-align: center;
	/* margin-left: 10.5%;
	margin-right: 10.5%; */
}

#Q_Age {
	margin-left: 10.5%;
	margin-right: 10.5%;
	gap: 0px 3%;
}
#Q_Gender{
	margin-left: 30%;
	margin-right: 30%;
	gap: 0px 15%;
}

#Q_type{
	margin-left: 20%;
	margin-right: 20%;
	gap: 0px 5%;
}

#A_val, .month, .bught, .base, .activite{
	margin-left: 15%;
	margin-right: 15%;
}
</style>

</head>
<body>
	<!-- 설문조사 -->

		<div id="QnA">
			<!-- 나이 -->
			<br>
			<br>
			<div><b>나이</b></div><br>
			<div id="Q_Age">
				<div class="age">
					<div><input type="button" class=ageBtn name="age" val="15-20세"></div>
					<span> 15-20세 </span>
				</div>
				<div class="age">
					<div><input type="button" class=ageBtn name="age" val="21-30세"></div>
					<span class="a2"> 21-30세 </span>
				</div>
				<div class="age">
					<div><input type="button" class=ageBtn name="age" val="31-40세"></div>
					<span> 31-40세 </span>
				</div>
				<div class="age">
					<div><input type="button" class=ageBtn name="age" val="41-50세"></div>
					<span> 41-50세 </span>
				</div>
				<div class="age">
					<div><input type="button" class=ageBtn name="age" val="51-60세"></div>
					<span> 51-60세 </span>
				</div>
			</div>

			<!-- 성별 -->
			<br>
			<br>
			<div><b>성별</b></div><br>
			<div id="Q_Gender">
				<div id="meal" class="gender">
					<input class="genderBtn" type="button" val="남성"><br> 
					<span> 남성 </span>
				</div>
				<div id="femeal" class="gender">
					<input class="genderBtn" type="button" val="여성"><br>
					<span> 여성 </span>
				</div>
			</div>

			<!-- 국가 -->
			<br>
			<br>
			<div><b>국가</b></div><br>
			<div id="Q_Nation">
				<div id="A_val">
					<select name=nation>
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
			</div>


			<!--여행하는 달 -->
			<br>
			<br>
			<div><b>여행하는 달</b></div><br>
			<div id="Q_month">
				<!-- 상반기 -->
				<div id="Q_Month">
					<div class="month">
						<select name="moth" class="toMonth">
							<option> 1월
							<option> 2월
							<option> 3월
							<option> 4월
							<option> 5월
							<option> 6월
							<option> 7월 
							<option> 8월
							<option> 9월
							<option> 10월
							<option> 11월
							<option> 12월
						</select>
					</div>	
				</div>
							<!-- 여행형태 취향 -->
			<br>
			<br>
			<div><b>여행형태 취향</b></div><br>
			<div id="Q_type">
				<div class="T_type">
					<input type="button" class=tripBtn val="Air-tel"><br>
					<span> Air-tel </span>
				</div>
				<div class="T_type">	 
					<input type="button" class=tripBtn val="개별여행"><br>
					<span> 개별여행 </span> 
				</div>
				<div class="T_type">
					<input type="button" class=tripBtn val="단체여행"><br>
					<span>단체여행 </span>
				</div>
			</div>

			<!-- 쇼핑 품목 -->
			<br>
			<br>
			<div><b>쇼핑을 한다면 구매 1순위 품목</b></div><br>
			<div id="Q_buy">
				<div class="bught">
					<select name=item id=item>
						<option>가방류
						<option>담배 
						<option>보석,악세사리 
						<option>식료품
						<option>신발류
						<option>의류 
						<option>인삼,한약재 
						<option>전통민예품,칠기,목각제품 
						<option>주류
						<option>한류스타관련상품 
						<option>향수,화장품 
						<option>기타
					</select>
				</div>
			</div>
			
		<!-- 숙박시설 취향 -->
		<br><br><br><br>
			<div><b>숙박시설 취향</b></div><br>			
			<div id="Q_base"> 
				<div class="base">
					<select name="stay" id="stay">
						<option>게스트하우스,호스텔 
						<option>모텔,여관 
						<option>민박,공유숙박 
						<option>친척또는친구집
						<option>콘도,펜션,레지던스인 
						<option>학교,회사 기숙사,연수원 
						<option>호텔 
						<option>기타 
					</select>
				</div>
			</div>

		<!-- 좋아하는 활동 -->
		<br><br><br><br>
			<div><b>좋아하는 활동</b></div><br>			
			<div id="Q_Active"> 
				<div class="activite">
					<select name=act id=act>
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
			</div>
			<br><br>
			<div id = "submit">
				<input type="button" value="전송" onclick="mySub()">
			</div>
			 <div id = seoul style="display:none; ">당신이 바라던 서울 : 
			 	<!-- <a id='result' href='#'></a> -->
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
			 <br><br>
	</div>

		<!-- <input type="hidden" id='age_check' name='age'> 
		<input type="hidden" id='gender_check' name='gender'> 
		<input type="hidden" id='month_check' name='month'> 
		<input type="hidden" id='trip_check' name='trip'> 
		<input type="hidden" id='month_check' name='month'> 
		<input type="button" value="전송" onclick="mySub()"> -->


<script>
	var age;
	var gender;
	var month;
	var trip_type;

	$('.ageBtn').on('click', function() {
		$('.ageBtn').css('background-color', '');
		$(this).css('background-color', 'yellow');
		age = "연령대_" + $(this).attr('val');
		$(this).css('value', age);
	});

	$('.genderBtn').on('click', function() {
		$('.genderBtn').css('background-color', '');
		$(this).css('background-color', 'yellow');
		gender = "성별_" + $(this).attr('val');
		$(this).css('value', gender);
	});

	$('.monBtn').on('click', function() {
		$('.monBtn').css('background-color', '');
		$(this).css('background-color', 'yellow');
		month = "달_" + $(this).attr('val');
		$(this).css('value', month);
	});

	$('.tripBtn').on('click', function() {
		$('.tripBtn').css('background-color', '');
		$(this).css('background-color', 'yellow');
		trip_type = "여행형태_" + $(this).attr('val');
		$(this).css('value', trip_type);
	});

	function mySub() {
		console.log(age);
		console.log(gender);
		console.log(month);
		console.log(trip_type);

		var nation = "국가_" + $('#nation').val();
		var item = "쇼핑품목_" + $('#item').val();
		var stay = "숙박시설_" + $('#stay').val();
		var act = "활동성향_" + $('#act').val();

		console.log(nation);
		console.log(item);
		console.log(stay);
		console.log(act);
		//전송~~    //$('#myForm').submit();
	
		
		 $.ajax({
             url : "http://localhost:9000/re/" + age + "/" + gender + "/" + nation + "/" + month + "/" + trip_type + "/" + item
                   + "/" + stay + "/" + act,
             method : "POST",
             success : function(rs) {
            	 //alert('success'+JSON.strify(rs))
            	 
            	 $('#submit').attr('style', "display:none");
            	 $('#seoul').attr('style', "display:inline");
            	
            
            	 if (rs.result1 == 1){
	  					$('#result1').text('#명동, 남대문, 북창');
	  					$('#result1').attr('style', "display:inline");
	  					var url1 = 'K_MD.jsp?act='+act;
	  					$('#result1').attr('onclick', "location='"+url1+ "'" );
	  				}
	  				if (rs.result2 == 1){
	  					$('#result2').text('#이태원(이태원세계음식거리, 한남동)');
	  					$('#result2').attr('style', "display:inline");
	  					var url2 = 'Main.html?act='+act;
	  					$('#result2').attr('onclick', "location='"+url2+ "'" );
	  				}
	  				if (rs.result3 == 1){
	  					$('#result3').text('#동대문 패션타운');
	  					$('#result3').attr('style', "display:inline");
	  					var url3 = 'Main.html?act='+act;
	  					$('#result3').attr('onclick', "location='"+url3+ "'" );
	  				}
	  				if (rs.result4 == 1){
	  					$('#result4').text('#종로, 청계');
	  					$('#result4').attr('style', "display:inline");
	  					var url4 = 'K_Jong-ro.jsp?act='+act;
	  					$('#result4').attr('onclick', "location='"+url4+ "'" );
	  				}
	  				if (rs.result5 == 1){
	  					$('#result5').text('#잠실');
	  					$('#result5').attr('style', "display:inline");
	  					var url5 = 'Main.html?act='+act;
	  					$('#result5').attr('onclick', "location='"+url5+ "'" );
	  				}
	  				if (rs.result6 == 1){
	  					$('#result6').text('#코엑스');
	  					$('#result6').attr('style', "display:inline");
	  					var url6 = 'Main.html?act='+act
	  					$('#result6').attr('onclick', "location='"+url6+ "'" );
	  				}
	  				if (rs.result7 == 1){
	  					$('#result7').text('#여의도(63빌딩)');
	  					$('#result7').attr('style', "display:inline");
	  					var url7 = 'Main.html?act='+act
	  					$('#result7').attr('onclick', "location='"+url7+ "'" );
	  				}
	  				if (rs.result8 == 1){
	  					$('#result8').text('#한강, 유람선');
	  					$('#result8').attr('style', "display:inline");
	  					var url8 = 'Main.html?act='+act
	  					$('#result8').attr('onclick', "location='"+url8+ "'" );
	  				}
	  				if (rs.result9 == 1){
	  					$('#result9').text('#광화문 광장');
	  					$('#result9').attr('style', "display:inline");
	  					var url9 = 'Main.html?act='+act
	  					$('#result9').attr('onclick', "location='"+url9+ "'" );
	  				}
	  				if (rs.result10 == 1){
	  					$('#result10').text('#신촌, 홍대주변');
	  					$('#result10').attr('style', "display:inline");
	  					var url10 = 'Main.html?act='+act
	  					$('#result10').attr('onclick', "location='"+url10+ "'" );
	  				}
	  				if (rs.result11 == 1){
	  					$('#result11').text('#DMC, 월드컵경기장');
	  					$('#result11').attr('style', "display:inline");
	  					var url11 = 'Main.html?act='+act
	  					$('#result11').attr('onclick', "location='"+url11+ "'" );
	  				}
	  				if (rs.result12 == 1){
	  					$('#result12').text('#청담동, 압구정동');
	  					$('#result12').attr('style', "display:inline");
	  					var url12 = 'Main.html?act='+act
	  					$('#result12').attr('onclick', "location='"+url12+ "'" );
	  				}
	  				if (rs.result13 == 1){
	  					$('#result13').text('#가로수길');
	  					$('#result13').attr('style', "display:inline");
	  					var url13 = 'Main.html?act='+act
	  					$('#result13').attr('onclick', "location='"+url13+ "'" );
	  				}
	  				if (rs.result14 == 1){
	  					$('#result14').text('#강남역');
	  					$('#result14').attr('style', "display:inline");
	  					var url14 = 'Main.html?act='+act
	  					$('#result14').attr('onclick', "location='"+url14+ "'" );
	  				}

	  				 $('#seoul').attr('style', "margin: auto; text-align: center;");
             }
       }); 
		
		}

</script>
</body>

</html>