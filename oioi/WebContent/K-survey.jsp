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

	<!-- ���ڵ� ���ִ� �ڵ� ===> Jsp ���Ϸ� �ٲ� �� �ڵ� �ѱ��  -->


	<form action="K_subvey_result" method="post" id='myForm'>
		<div id = "all">
		<!-- ���� -->
		<br><br><br><br>
			<div id = "Q"> <b>����</b></div>
			<div id = "A_btn"> 
				<input type="button" class=ageBtn name="age" style="margin-left:11.5%;"> 
				<input type="button" class=ageBtn name="age" style="margin-left:11.5%;"> 
				<input type="button" class=ageBtn name="age" style="margin-left:11.5%;">
				<input type="button" class=ageBtn name="age" style="margin-left:11.5%;">
				<input type="button" class=ageBtn name="age" style="margin-left:11.5%;">  
			</div>
			
			<div id = "A_val">
				<span style="margin-left:10.5%;"> 15-20��  </span> 
				<span style="margin-left:10.5%;"> 21-30��  </span>  
				<span style="margin-left:10.5%;"> 31-40��  </span>
				<span style="margin-left:10%;"> 41-50��  </span>
				<span style="margin-left:10.5%;"> 51-60��  </span>
			</div>
			
			
				
		<!-- ���� -->
		<br><br>
			<div id = "Q"> <b>����</b></div>	
				<div id = "A_btn">
					<input type="button" class=genderBtn val="����" style="margin-left:35%;">
					<input type="button" class=genderBtn val="����" style="margin-left:17%;">
				</div> 
				
			<div id = "A_val">
				<span style="margin-left:35.5%;"> ���� </span> 
				<span style="margin-left:18.5%;"> ����  </span>  
				
			</div>
			
			
			
		<!-- ���� -->
		<br><br>
			<div id = "Q"> <b>����</b></div>			
			<div id = "A_val">
				<select name = nation id = nation>
						<option>��Ÿ <option>�븸 <option>���� <option>���þ� <option>�����̽þ� <option>����
						<option>�̱� <option>��Ʈ�� <option>�̰����� <option>���� <option>�ε� <option>�ε��׽þ�
						<option>�Ϻ� <option>�߱� <option>�ߵ� <option>ĳ���� <option>�±� <option>������
						<option>�ʸ��� <option>ȣ�� <option>ȫ��
				</select>
			
			</div>
			
			
			
		<!--�����ϴ� �� -->
		<br><br>
			<div id = "Q"> <b>�����ϴ� ��</b></div>			
				<div id = "A_btn">
					<input type="button" class="monBtn" val="1��" style="margin-left:9%;">
					<input type="button" class="monBtn" val="2��" style="margin-left:9%;">
					<input type="button" class="monBtn" val="3��" style="margin-left:9%;">
					<input type="button" class="monBtn" val="4��" style="margin-left:9%;">
					<input type="button" class="monBtn" val="5��" style="margin-left:9%;">
					<input type="button" class="monBtn" val="6��" style="margin-left:9%;">
				</div> 
				
				<div id = "A_val">
					<span style="margin-left:10%;"> 1�� </span> 
					<span style="margin-left:11%;"> 2�� </span>  
					<span style="margin-left:12%;"> 3�� </span>  
					<span style="margin-left:11%;"> 4�� </span>  
					<span style="margin-left:12%;"> 5�� </span>  
					<span style="margin-left:12%;"> 6�� </span>  
				</div>
				
				<br>
				<div id = "A_btn">
					<input type="button" class="monBtn" val="7��" style="margin-left:9%;">
					<input type="button" class="monBtn" val="8��" style="margin-left:9%;">
					<input type="button" class="monBtn" val="9��" style="margin-left:9%;">
					<input type="button" class="monBtn" val="10��" style="margin-left:9%;">
					<input type="button" class="monBtn" val="11��" style="margin-left:9%;">
					<input type="button" class="monBtn" val="12��" style="margin-left:9%;">
				</div> 
				
				<div id = "A_val">
					<span style="margin-left:10%;"> 7�� </span> 
					<span style="margin-left:11%;"> 8�� </span>  
					<span style="margin-left:12%;"> 9�� </span>  
					<span style="margin-left:11%;"> 10�� </span>  
					<span style="margin-left:11%;"> 11�� </span>  
					<span style="margin-left:10%;"> 12�� </span>  
					
				</div>
			
			
			
		<!-- �������� ���� -->
		<br><br>
			<div id = "Q"> <b>�������� ����</b></div>			
				<div id = "A_btn">
					<input type="button" class=traBtn val= "trip_type" style="margin-left:20%;">
					<input type="button" class=traBtn name= "trip_type" style="margin-left:20%;">
					<input type="button" class=traBtn name= "trip_type" style="margin-left:20%;">
				</div> 
				
			<div id = "A_val">
				<span style="margin-left:20%;"> Air-tel </span> 
				<span style="margin-left:19%;"> �������� </span>  
				<span style="margin-left:17%;"> ��ü���� </span>  
				
			</div>
			
			
			
		<!-- ���� ǰ�� -->
		<br><br>
			<div id = "Q"> <b>������ �Ѵٸ� ���� 1���� ǰ��</b></div>			
			<div id = "A_val">
				<select name = shopping id = shop>
						<option>�����  <option>��Ÿ <option>��� <option>����/�Ǽ��縮 <option>�ķ�ǰ 
						<option>�Ź߷� <option>�Ƿ� <option>�λ�/�Ѿ��� <option>����ο�ǰ/ĥ��/����ǰ <option>�ַ�
						<option>�ѷ���Ÿ ���û�ǰ <option>���, ȭ��ǰ
				</select>
			
			</div>
			
			
			
		<!-- ���ڽü� ���� -->
		<br><br>
			<div id = "Q"> <b>���ڽü� ����</b></div>			
			<div id = "A_val">
				<select name = stay  id = shop>
						<option>�Խ�Ʈ�Ͽ콺/ȣ���� <option>��Ÿ <option>����/���� <option>�ι�/�������� <option>ģô �Ǵ� ģ����
						<option>�ܵ�, ���, ����������
						
				</select>
			
			</div>
			
			
			
		<!-- ���� ǰ�� -->
		<br><br>
			<div id = "Q"> <b>������ �Ѵٸ� ���� 1���� ǰ��</b></div>			
			<div id = "A_val">
				<select name = shopping id = shop>
						<option>�����  <option>��Ÿ <option>��� <option>����/�Ǽ��縮 <option>�ķ�ǰ 
						<option>�Ź߷� <option>�Ƿ� <option>�λ�, �Ѿ��� <option>����ο�ǰ, ĥ��, ����ǰ <option>�ַ�
						<option>�ѷ���Ÿ ���û�ǰ <option>���, ȭ��ǰ
				</select>
			
			</div>

			
			
			
			
			
			
			
			

			
			
			
			
			
		</div>
		
		
		
		<table>
			<tr>
				<td colspan = 6>����</td>
			</tr>
				<td></td>
				<td><input type="button" class=ageBtn name="age"> 15-20��</td>
				<td><input type="button" class=ageBtn name="age"> 21-30��</td>
				<td><input type="button" class=ageBtn name="age"> 31-40��</td>
				<td><input type="button" class=ageBtn name="age"> 41-50��</td>
				<td><input type="button" class=ageBtn name="age"> 51-60�� </td>
		

			</tr>
		
		
		
			<tr>
				<td colspan = 6>����</td>
			</tr>
			<tr>
				<td colspan = 2></td>
				<td>����<input type="button" class=genderBtn name="gender"></td>
				<td>����<input type="button" class=genderBtn name="gender"></td>
				<td colspan = 2></td>
			</tr>
			
		

		
			<tr>
				<td colspan = 6>�湮������</td>	
			</tr>
			<tr>
				<td>1�� <input type="button" class="monBtn" values="1"></td>
				<td>2�� <input type="button" class="monBtn" values="2"></td>
				<td>3�� <input type="button" class="monBtn" values="3"></td>
				<td>4�� <input type="button" class="monBtn" values="4"></td>
				<td>5�� <input type="button" class="monBtn" values="5"></td>
				<td>6�� <input type="button" class="monBtn" values="6"></td></tr>
			<tr>
				<td>7�� <input type="button" class="monBtn" values="7"></td>
				<td>8�� <input type="button" class="monBtn" values="8"></td>
				<td>9�� <input type="button" class="monBtn" values="9"></td>
				<td>10�� <input type="button" class="monBtn" values="10"></td>
				<td>11�� <input type="button" class="monBtn" values="11"></td>
				<td>12�� <input type="button" class="monBtn" values="12"></td>
			</tr>
			
			
			
			

			

						
			
			<tr>
				<td colspan = 6>��������</td>
			</tr>
			<tr>
				<td colspan = 2></td>
				<td> 1 <input type="button" class=traBtn name="travel_type"></td>
				<td> 2 <input type="button" class=traBtn name="travel_type"></td>
				<td colspan = 2></td>
			</tr>
						
			
			
			<tr>
				<td colspan = 6>����ȸ��</td>
			</tr>
			<tr>
				<td colspan = 2></td>
				<td>�� <input type="button" class=genderBtn name="gender"></td>
				<td>�� <input type="button" class=genderBtn name="gender"></td>
				<td colspan = 2></td>
			</tr>
			


			<!-- <label for="mon">�湮������</label> 
				�� <input type="button" class = "myBtn" >
				�� <input type="button" class = "myBtn">
			
				<label for="email">Email</label> <input type="text" name="email"
					id="email" />
			
				<label for="message">Message</label>
				<textarea name="message" id="message" rows="4"></textarea> -->
			<tr>
				<td colspan = 4></td>
				<td colspan = 2><input type="button" value="����" onclick="mySub()"></td>
			</tr>
		</table>
		<input type="hidden" id='month_check' name='month'> 
		<input type="hidden" id='gender_check' name='gender'> 
		<!-- <input type="button" value="����" onclick="mySub()"> -->

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