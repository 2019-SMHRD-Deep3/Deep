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

	<!-- ���ڵ� ���ִ� �ڵ� ===> Jsp ���Ϸ� �ٲ� �� �ڵ� �ѱ��  -->


	<form action="K_subvey_result" method="post" id='myForm'>
		<table>
			<tr>
				<td>�湮������</td>	
			</tr>
			<tr>
				<td>1�� <input type="button" class="monBtn" values="jan"></td>
				<td>2�� <input type="button" class="monBtn" values="2��"></td>
				<td>3�� <input type="button" class="monBtn" values="3��"></td>
				<td>4�� <input type="button" class="monBtn" values="4��"></td>
				<td>5�� <input type="button" class="monBtn" values="5��"></td>
				<td>6�� <input type="button" class="monBtn" values="6��"></td>
				<td>7�� <input type="button" class="monBtn" values="7��"></td>
				<td>8�� <input type="button" class="monBtn" values="8��"></td>
				<td>9�� <input type="button" class="monBtn" values="9��"></td>
				<td>10�� <input type="button" class="monBtn" values="10��"></td>
				<td>11�� <input type="button" class="monBtn" values="11��"></td>
				<td>12�� <input type="button" class="monBtn" values="12��"></td>
			</tr>
			<tr>
				<td>�湮������</td>
			</tr>
			<tr>
				<td>�� <input type="button" class=genderBtn name="gender"></td>
				<td>�� <input type="button" class="genderBtn" name="gender"></td>
			</tr>
			<tr>
				<td>�湮������</td>
			</tr>
			<tr>
				<td>�湮������</td>
			</tr>


			<!-- <label for="mon">�湮������</label> 
				�� <input type="button" class = "myBtn" >
				�� <input type="button" class = "myBtn">
			
				<label for="email">Email</label> <input type="text" name="email"
					id="email" />
			
				<label for="message">Message</label>
				<textarea name="message" id="message" rows="4"></textarea> -->

		</table>
		<input type="hidden" id='month_check' name='month'> <input
			type="hidden" id='gender_check' name='gender'> <input
			type="button" value="����" onclick="mySub()">

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