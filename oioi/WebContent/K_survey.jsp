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

<style type="text/css">
.monBtn {
	width: 10px;
	height: 15px;
	border-radius: 10px;
}

.myBtn {
	width: 10px;
	height: 15px;
	border-radius: 10px;
}
</style>

</head>
<body>

	<!-- 인코딩 해주는 코드 ===> Jsp 파일로 바꾼 후 코드 넘기기  -->


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

	<script type="text/javascript">
		//var arr = new Array(); 
		var vvv;
		$('.monBtn').on('click', function() {
			$('.monBtn').css('background-color', '');
			$(this).css('background-color', 'yellow');
			vvv = $(this).attr('values');
			//arr.push(value);
			// alert(arr);
			$(this).css('value', vvv);
		});
		$('.genderBtn').on('click', function() {
			$('.genderBtn').css('background-color', '');
			$(this).css('background-color', 'yellow');

		});

		function mySub() {
			//$('#month_check').attr('value',arr);
			$('#month_check').attr('value', vvv);
			/* $('#gender_check').attr('value', vvv); */
			$('#myForm').submit();
		}
		console.log(vvv);
	</script>


</body>
</html>