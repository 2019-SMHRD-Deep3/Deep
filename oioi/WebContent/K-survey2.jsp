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

.ageBtn, .genderBtn, .monBtn, .myBtn, .tripBtn   {
	padding: 0px !important;
	width: 30px !important;
	height: 30px !important;
	border-radius: 15px !important;
}


#Q{
	width: 50%;
	margin: 0px auto;
	margin-bottom : 20px;
	text-align: center;
	font-size: 32px;
}
#submit{
	width: 50%;
	margin: 0px auto;
	margin-bottom : 20px;
	text-align: center;
}
#A_btn, #A_val{
	width: 50%;
	margin: 0px auto;
	padding: 0px auto;
}

#nation{
	width: 30%;
	margin: 0px auto;
}
#shop, #item, #stay, #act{
	width: 50%;
	margin: 0px auto;
}

/* body{
	background-image: url('./img/aa.png');
} */
</style>

</head>
<body>

	<!-- <form action="#" method="post" id='myForm'> -->
		<div id = "all">
		<!-- 나이 -->
		<br><br><br><br>
		
			<div id = "Q"> <b>나이</b></div>
			<div id = "A_btn"> 
				<input type="button" class=ageBtn name="age" style="margin-left:11.5%;" val = "15-20세"> 
				<input type="button" class=ageBtn name="age" style="margin-left:11.5%;" val = "21-30세"> 
				<input type="button" class=ageBtn name="age" style="margin-left:11.5%;" val = "31-40세">
				<input type="button" class=ageBtn name="age" style="margin-left:11.5%;" val = "41-50세">
				<input type="button" class=ageBtn name="age" style="margin-left:11.5%;" val = "51-60세">  
			</div>
			
			<div id = "A_val">
				<span style="margin-left:10.5%;"> 15-20세  </span> 
				<span style="margin-left:10.5%;"> 21-30세  </span>  
				<span style="margin-left:10.5%;"> 31-40세  </span>
				<span style="margin-left:10%;"> 41-50세  </span>
				<span style="margin-left:10.5%;"> 51-60세  </span>
			</div>
			
			
				
		<!-- 성별 -->
		<br><br><br><br>
			<div id = "Q"> <b>성별</b></div>	
				<div id = "A_btn">
					<input type="button" class=genderBtn val="남성" style="margin-left:35%;">
					<input type="button" class=genderBtn val="여성" style="margin-left:17%;">
				</div> 
				
			<div id = "A_val">
				<span style="margin-left:35.5%;"> 남성 </span> 
				<span style="margin-left:18.5%;"> 여성  </span>  
				
			</div>
			
			
			
		<!-- 국가 -->
		<br><br><br><br>
			<div id = "Q"> <b>국가</b></div>			
			<div id = "A_val">
				<select name = nation id = nation>
						<option>대만 <option>독일 <option>러시아 <option>말레이시아 <option>몽골
						<option>미국 <option>베트남 <option>싱가포르 <option>영국 <option>인도 <option>인도네시아
						<option>일본 <option>중국 <option>중동 <option>캐나다 <option>태국 <option>프랑스
						<option>필리핀 <option>호주 <option>홍콩 <option>기타
				</select>
			
			</div>
			
			
			
		<!--여행하는 달 -->
		<br><br><br><br>
			<div id = "Q"> <b>여행하는 달</b></div>			
				<div id = "A_btn">
					<input type="button" class="monBtn" val="1월" style="margin-left:9%;">
					<input type="button" class="monBtn" val="2월" style="margin-left:9%;">
					<input type="button" class="monBtn" val="3월" style="margin-left:9%;">
					<input type="button" class="monBtn" val="4월" style="margin-left:9%;">
					<input type="button" class="monBtn" val="5월" style="margin-left:9%;">
					<input type="button" class="monBtn" val="6월" style="margin-left:9%;">
				</div> 
				
				<div id = "A_val">
					<span style="margin-left:10%;"> 1월 </span> 
					<span style="margin-left:11%;"> 2월 </span>  
					<span style="margin-left:12%;"> 3월 </span>  
					<span style="margin-left:11%;"> 4월 </span>  
					<span style="margin-left:12%;"> 5월 </span>  
					<span style="margin-left:12%;"> 6월 </span>  
				</div>
				
				<br>
				<div id = "A_btn">
					<input type="button" class="monBtn" val="7월" style="margin-left:9%;">
					<input type="button" class="monBtn" val="8월" style="margin-left:9%;">
					<input type="button" class="monBtn" val="9월" style="margin-left:9%;">
					<input type="button" class="monBtn" val="10월" style="margin-left:9%;">
					<input type="button" class="monBtn" val="11월" style="margin-left:9%;">
					<input type="button" class="monBtn" val="12월" style="margin-left:9%;">
				</div> 
				
				<div id = "A_val">
					<span style="margin-left:10%;"> 7월 </span> 
					<span style="margin-left:11%;"> 8월 </span>  
					<span style="margin-left:12%;"> 9월 </span>  
					<span style="margin-left:11%;"> 10월 </span>  
					<span style="margin-left:11%;"> 11월 </span>  
					<span style="margin-left:10%;"> 12월 </span>  
					
				</div>
			
			
			
		<!-- 여행형태 취향 -->
		<br><br><br><br>
			<div id = "Q"> <b>여행형태 취향</b></div>			
				<div id = "A_btn">
					<input type="button" class=tripBtn val= "Air-tel" style="margin-left:20%;">
					<input type="button" class=tripBtn val= "개별여행" style="margin-left:20%;">
					<input type="button" class=tripBtn val= "단체여행" style="margin-left:20%;">
				</div> 
				
			<div id = "A_val">
				<span style="margin-left:20%;"> Air-tel </span> 
				<span style="margin-left:19%;"> 개별여행 </span>  
				<span style="margin-left:17%;"> 단체여행 </span>  
				
			</div>   
				
			
			
			
		<!-- 쇼핑 품목 -->
		<br><br><br><br>
			<div id = "Q"> <b>쇼핑을 한다면 구매 1순위 품목</b></div>			
			<div id = "A_val">
				<select name = item id = item>
						<option>가방류 <option>담배 <option>보석,악세사리 <option>식료품 
						<option>신발류<option>의류 <option>인삼,한약재 <option>전통민예품,칠기,목각제품 <option>주류
						<option>한류스타관련상품 <option>향수,화장품 <option>기타 
				</select>
			
			</div>
			
			
			
		<!-- 숙박시설 취향 -->
		<br><br><br><br>
			<div id = "Q"> <b>숙박시설 취향</b></div>			
			<div id = "A_val">
				<select name = stay  id = stay>
						<option>게스트하우스,호스텔 <option>모텔,여관 <option>민박,공유숙박 <option>친척또는친구집
						<option>콘도,펜션,레지던스인 <option>학교,회사 기숙사,연수원 <option>호텔 <option>기타 
						
				</select>
			
			</div>
			
			
			
		<!-- 좋아하는 활동 -->
		<br><br><br><br>
			<div id = "Q"> <b>좋아하는 활동</b></div>			
			<div id = "A_val">
				<select name = act id = act>
						<option>고궁,역사유적지방문 <option>공연,민속,행사,축제 관람및참가 <option>놀이공원,테마파크 
						<option>드라마,영화찰영지방문 <option>레포츠활동 <option>박물관,전시관방문 <option>뷰티관광
						<option>쇼핑 <option>스포츠활동 <option>시찰 <option>시티투어버스이용 <option>식도락관광
						<option>업무수행 <option>연수,교육,연구 <option>유흥,오락 <option>의료관광 
						<option>자연경관감상 <option>전통문화체험 <option>휴양,휴식 <option>기타
				</select>
			
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

                                                                                     
	<!-- </form> -->

	<script type="text/javascript">

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