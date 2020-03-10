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

.ageBtn, .genderBtn, .monBtn, .myBtn, .traBtn   {
	width: 10px !important;
	height: 52px !important;
	border-radius: 25px !important;
}

table {
	text-align: center;
	size: 1000px;
	width: 100px;
	height: 50px;
	font-size: 10px;
	margin: 0px auto;
	margin-top : 50px;
	background-color: rgba(0,0,0,0.2);
}
#Q{
	width: 50%;
	margin: 0px auto;
	margin-bottom : 20px;
	text-align: center;
}
#A_btn, #A_val{
	width: 50%;
	margin: 0px auto;
}

#nation{
	width: 30%;
	margin: 0px auto;
}
#shop{
	width: 40%;
	margin: 0px auto;
}

</style>

</head>
<body>

	<!-- 인코딩 해주는 코드 ===> Jsp 파일로 바꾼 후 코드 넘기기  -->


	<form action="K_subvey_result" method="post" id='myForm'>
		<div id = "all">
		<!-- 나이 -->
		<br><br><br><br>
			<div id = "Q"> <b>나이</b></div>
			<div id = "A_btn"> 
				<input type="button" class=ageBtn name="age" style="margin-left:11.5%;"> 
				<input type="button" class=ageBtn name="age" style="margin-left:11.5%;"> 
				<input type="button" class=ageBtn name="age" style="margin-left:11.5%;">
				<input type="button" class=ageBtn name="age" style="margin-left:11.5%;">
				<input type="button" class=ageBtn name="age" style="margin-left:11.5%;">  
			</div>
			
			<div id = "A_val">
				<span style="margin-left:10.5%;"> 15-20세  </span> 
				<span style="margin-left:10.5%;"> 21-30세  </span>  
				<span style="margin-left:10.5%;"> 31-40세  </span>
				<span style="margin-left:10%;"> 41-50세  </span>
				<span style="margin-left:10.5%;"> 51-60세  </span>
			</div>
			
			
				
		<!-- 성별 -->
		<br><br>
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
		<br><br>
			<div id = "Q"> <b>국가</b></div>			
			<div id = "A_val">
				<select name = nation id = nation>
						<option>기타 <option>대만 <option>독일 <option>러시아 <option>말레이시아 <option>몽골
						<option>미국 <option>베트남 <option>싱가포르 <option>영국 <option>인도 <option>인도네시아
						<option>일본 <option>중국 <option>중동 <option>캐나다 <option>태국 <option>프랑스
						<option>필리핀 <option>호주 <option>홍콩
				</select>
			
			</div>
			
			
			
		<!--여행하는 달 -->
		<br><br>
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
		<br><br>
			<div id = "Q"> <b>여행형태 취향</b></div>			
				<div id = "A_btn">
					<input type="button" class=traBtn val= "trip_type" style="margin-left:20%;">
					<input type="button" class=traBtn name= "trip_type" style="margin-left:20%;">
					<input type="button" class=traBtn name= "trip_type" style="margin-left:20%;">
				</div> 
				
			<div id = "A_val">
				<span style="margin-left:20%;"> Air-tel </span> 
				<span style="margin-left:19%;"> 개별여행 </span>  
				<span style="margin-left:17%;"> 단체여행 </span>  
				
			</div>
			
			
			
		<!-- 쇼핑 품목 -->
		<br><br>
			<div id = "Q"> <b>쇼핑을 한다면 구매 1순위 품목</b></div>			
			<div id = "A_val">
				<select name = shopping id = shop>
						<option>가방류  <option>기타 <option>담배 <option>보석/악세사리 <option>식료품 
						<option>신발류 <option>의류 <option>인삼/한약재 <option>전통민예품/칠기/목각제품 <option>주류
						<option>한류스타 관련상품 <option>향수, 화장품
				</select>
			
			</div>
			
			
			
		<!-- 숙박시설 취향 -->
		<br><br>
			<div id = "Q"> <b>숙박시설 취향</b></div>			
			<div id = "A_val">
				<select name = stay  id = shop>
						<option>게스트하우스/호스텔 <option>기타 <option>모텔/여관 <option>민박/공유숙박 <option>친척 또는 친구집
						<option>콘도, 펜션, 레지던스인
						
				</select>
			
			</div>
			
			
			
		<!-- 쇼핑 품목 -->
		<br><br>
			<div id = "Q"> <b>쇼핑을 한다면 구매 1순위 품목</b></div>			
			<div id = "A_val">
				<select name = shopping id = shop>
						<option>가방류  <option>기타 <option>담배 <option>보석/악세사리 <option>식료품 
						<option>신발류 <option>의류 <option>인삼, 한약재 <option>전통민예품, 칠기, 목각제품 <option>주류
						<option>한류스타 관련상품 <option>향수, 화장품
				</select>
			
			</div>

			
			
			
			
			
			
			
			

			
			
			
			
			
		</div>
		
		
		
		<table>
			<tr>
				<td colspan = 6>나이</td>
			</tr>
				<td></td>
				<td><input type="button" class=ageBtn name="age"> 15-20세</td>
				<td><input type="button" class=ageBtn name="age"> 21-30세</td>
				<td><input type="button" class=ageBtn name="age"> 31-40세</td>
				<td><input type="button" class=ageBtn name="age"> 41-50세</td>
				<td><input type="button" class=ageBtn name="age"> 51-60세 </td>
		

			</tr>
		
		
		
			<tr>
				<td colspan = 6>성별</td>
			</tr>
			<tr>
				<td colspan = 2></td>
				<td>남성<input type="button" class=genderBtn name="gender"></td>
				<td>여성<input type="button" class=genderBtn name="gender"></td>
				<td colspan = 2></td>
			</tr>
			
		

		
			<tr>
				<td colspan = 6>방문예정월</td>	
			</tr>
			<tr>
				<td>1월 <input type="button" class="monBtn" values="1"></td>
				<td>2월 <input type="button" class="monBtn" values="2"></td>
				<td>3월 <input type="button" class="monBtn" values="3"></td>
				<td>4월 <input type="button" class="monBtn" values="4"></td>
				<td>5월 <input type="button" class="monBtn" values="5"></td>
				<td>6월 <input type="button" class="monBtn" values="6"></td></tr>
			<tr>
				<td>7월 <input type="button" class="monBtn" values="7"></td>
				<td>8월 <input type="button" class="monBtn" values="8"></td>
				<td>9월 <input type="button" class="monBtn" values="9"></td>
				<td>10월 <input type="button" class="monBtn" values="10"></td>
				<td>11월 <input type="button" class="monBtn" values="11"></td>
				<td>12월 <input type="button" class="monBtn" values="12"></td>
			</tr>
			
			
			
			

			

						
			
			<tr>
				<td colspan = 6>여행형태</td>
			</tr>
			<tr>
				<td colspan = 2></td>
				<td> 1 <input type="button" class=traBtn name="travel_type"></td>
				<td> 2 <input type="button" class=traBtn name="travel_type"></td>
				<td colspan = 2></td>
			</tr>
						
			
			
			<tr>
				<td colspan = 6>방한회차</td>
			</tr>
			<tr>
				<td colspan = 2></td>
				<td>남 <input type="button" class=genderBtn name="gender"></td>
				<td>여 <input type="button" class=genderBtn name="gender"></td>
				<td colspan = 2></td>
			</tr>
			


			<!-- <label for="mon">방문예정월</label> 
				남 <input type="button" class = "myBtn" >
				여 <input type="button" class = "myBtn">
			
				<label for="email">Email</label> <input type="text" name="email"
					id="email" />
			
				<label for="message">Message</label>
				<textarea name="message" id="message" rows="4"></textarea> -->
			<tr>
				<td colspan = 4></td>
				<td colspan = 2><input type="button" value="전송" onclick="mySub()"></td>
			</tr>
		</table>
		<input type="hidden" id='month_check' name='month'> 
		<input type="hidden" id='gender_check' name='gender'> 
		<!-- <input type="button" value="전송" onclick="mySub()"> -->

	</form>

	<script type="text/javascript">
		//var arr = new Array(); 
		var mon;
		$('.monBtn').on('click', function() {
			$('.monBtn').css('background-color', '');
			$(this).css('background-color', 'yellow');
			vvv = $(this).attr('val');
			//arr.push(value);
			// alert(arr);
			$(this).css('value', mon);
		});
		$('.genderBtn').on('click', function() {
			$('.genderBtn').css('background-color', '');
			$(this).css('background-color', 'yellow');

		});

		function mySub() {
			//$('#month_check').attr('value',arr);
			$('#month_check').attr('value', mon);
			$('#gender_check').attr('value', vvv);
			$('#myForm').submit();
		}
		console.log(vvv);
	</script>


</body>
</html>