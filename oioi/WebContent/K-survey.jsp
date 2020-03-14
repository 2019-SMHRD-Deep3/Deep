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

.ageBtn, .genderBtn, .myBtn, .tripBtn   {
	padding: 0px !important;
	width: 30px !important;
	height: 30px !important;
	border-radius: 15px !important;
}

span {
	display: inline-block;
	width: 60px;
	font-size: 18px;
}

#QnA{
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

#Q_Age{
	display: table;
	table-layout: fixed;
	border-spacing: 25px 0px;
	margin-left: 12.5%;
	margin-right: 12.5%;
}

.age{
	width: 69px;
	display: table-cell;
	vertical-align: middle;
	text-align: center;
	padding-left: 3%;
	padding-right: 3%;
}


</style>

</head>
<body>
	<!-- �������� -->
	<form action="K_subvey_result" method="post" id='myForm'>
		<div id="QnA">
			<!-- ���� -->
			<br>
			<br>
			<div><b>����</b></div><br>
			<div id="Q_Age">
				<div class="age">
					<div><input type="button" class=ageBtn name="age" val="15-20��"></div>
					<span> 15-20�� </span>
				</div>
				<div class="age">
					<div><input type="button" class=ageBtn name="age" val="21-30��"></div>
					<span class="a2"> 21-30�� </span>
				</div>
				<div class="age">
					<div><input type="button" class=ageBtn name="age" val="31-40��"></div>
					<span> 31-40�� </span>
				</div>
				<div class="age">
					<div><input type="button" class=ageBtn name="age" val="41-50��"></div>
					<span> 41-50�� </span>
				</div>
				<div class="age">
					<div><input type="button" class=ageBtn name="age" val="51-60��"></div>
					<span> 51-60�� </span>
				</div>
			</div>

			<!-- ���� -->
			<br>
			<br>
			<div><b>����</b></div><br>
			<div id="Q_Gender">
				<div id="meal" class="gender">
					<input class="genderBtn" type="button" val="����"><br> 
					<span> ���� </span>
				</div>
				<div id="femeal" class="gender">
					<input class="genderBtn" type="button" val="����"><br>
					<span> ���� </span>
				</div>
			</div>

			<!-- ���� -->
			<br>
			<br>
			<div><b>����</b></div><br>
			<div id="Q_Nation">
				<div id="A_val">
					<select name=nation>
						<option>�븸
						<option>����
						<option>���þ�
						<option>�����̽þ�
						<option>����
						<option>�̱�
						<option>��Ʈ��
						<option>�̰�����
						<option>����
						<option>�ε�
						<option>�ε��׽þ�
						<option>�Ϻ�
						<option>�߱�
						<option>�ߵ�
						<option>ĳ����
						<option>�±�
						<option>������
						<option>�ʸ���
						<option>ȣ��
						<option>ȫ��
						<option>��Ÿ
					</select>
				</div>
			</div>


			<!--�����ϴ� �� -->
			<br>
			<br>
			<div><b>�����ϴ� ��</b></div><br>
			<div id="Q_month">
				<!-- ��ݱ� -->
				<div id="Q_Month">
					<div class="month">
						<select name="moth" class="toMonth">
							<option> 1��
							<option> 2��
							<option> 3��
							<option> 4��
							<option> 5��
							<option> 6��
							<option> 7�� 
							<option> 8��
							<option> 9��
							<option> 10��
							<option> 11��
							<option> 12��
						</select>
					</div>	
				</div>
							<!-- �������� ���� -->
			<br>
			<br>
			<div><b>�������� ����</b></div><br>
			<div id="Q_type">
				<div class="T_type">
					<input type="button" class=tripBtn val="Air-tel"><br>
					<span> Air-tel </span>
				</div>
				<div class="T_type">	 
					<input type="button" class=tripBtn val="��������"><br>
					<span> �������� </span> 
				</div>
				<div class="T_type">
					<input type="button" class=tripBtn val="��ü����"><br>
					<span>��ü���� </span>
				</div>
			</div>

			<!-- ���� ǰ�� -->
			<br>
			<br>
			<div><b>������ �Ѵٸ� ���� 1���� ǰ��</b></div><br>
			<div id="Q_buy">
				<div class="bught">
					<select name=item id=item>
						<option>�����
						<option>��� 
						<option>����,�Ǽ��縮 
						<option>�ķ�ǰ
						<option>�Ź߷�
						<option>�Ƿ� 
						<option>�λ�,�Ѿ��� 
						<option>����ο�ǰ,ĥ��,����ǰ 
						<option>�ַ�
						<option>�ѷ���Ÿ���û�ǰ 
						<option>���,ȭ��ǰ 
						<option>��Ÿ
					</select>
				</div>
			</div>
			
		<!-- ���ڽü� ���� -->
		<br><br><br><br>
			<div><b>���ڽü� ����</b></div><br>			
			<div id="Q_base"> 
				<div class="base">
					<select name="stay" id="stay">
						<option>�Խ�Ʈ�Ͽ콺,ȣ���� 
						<option>����,���� 
						<option>�ι�,�������� 
						<option>ģô�Ǵ�ģ����
						<option>�ܵ�,���,���������� 
						<option>�б�,ȸ�� �����,������ 
						<option>ȣ�� 
						<option>��Ÿ 
					</select>
				</div>
			</div>

		<!-- �����ϴ� Ȱ�� -->
		<br><br><br><br>
			<div><b>�����ϴ� Ȱ��</b></div><br>			
			<div id="Q_Active"> 
				<div class="activite">
					<select name=act id=act>
						<option>���,�����������湮 
						<option>����,�μ�,���,���� ���������� 
						<option>���̰���,�׸���ũ
						<option>���,��ȭ�������湮 
						<option>������Ȱ�� 
						<option>�ڹ���,���ð��湮 
						<option>��Ƽ����
						<option>���� 
						<option>������Ȱ�� 
						<option>���� 
						<option>��Ƽ��������̿� 
						<option>�ĵ�������
						<option>�������� 
						<option>����,����,���� 
						<option>����,���� 
						<option>�Ƿ���� 
						<option>�ڿ�������� 
						<option>���빮ȭü�� 
						<option>�޾�,�޽� 
						<option>��Ÿ
					</select>
				</div>
			</div>
			<br><br>
			<div id="submit">
				<input type="button" value="����" onclick="mySub()">
			</div>
			 <div>����� �ٶ�� ���� : <a id='result' href='#'></a></div>
		</div>	 			 
	</div>

		<input type="hidden" id='age_check' name='age'> 
		<input type="hidden" id='gender_check' name='gender'> 
		<input type="hidden" id='month_check' name='month'> 
		<input type="hidden" id='trip_check' name='trip'> 
		<input type="hidden" id='month_check' name='month'> 
		<!-- <input type="button" value="����" onclick="mySub()"> -->

	</form>

<script>
	var age;
	var gender;
	var month;
	var trip_type;

	$('.ageBtn').on('click', function() {
		$('.ageBtn').css('background-color', '');
		$(this).css('background-color', 'yellow');
		age = $(this).attr('val');
		$(this).css('value', age);
	});

	$('.genderBtn').on('click', function() {
		$('.genderBtn').css('background-color', '');
		$(this).css('background-color', 'yellow');
		gender = $(this).attr('val');
		$(this).css('value', gender);
	});

	$('.monBtn').on('click', function() {
		$('.monBtn').css('background-color', '');
		$(this).css('background-color', 'yellow');
		month = $(this).attr('val');
		$(this).css('value', month);
	});

	$('.tripBtn').on('click', function() {
		$('.tripBtn').css('background-color', '');
		$(this).css('background-color', 'yellow');
		trip_type = $(this).attr('val');
		$(this).css('value', trip_type);
	});

	function mySub() {
		console.log(age);
		console.log(gender);
		console.log(month);
		console.log(trip_type);

		var nation = $('#nation').val();
		var item = $('#item').val();
		var stay = $('#stay').val();
		var act = $('#act').val();

		console.log(nation);
		console.log(item);
		console.log(stay);
		console.log(act);
		//����~~    //$('#myForm').submit();

		$.ajax({
			url : "http://localhost:9000/re/" + age + "/" + gender + "/"
					+ nation + "/" + month + "/" + trip_type + "/" + item + "/"
					+ stay + "/" + act,
			method : "POST",
			success : function(rs) {
				if (rs.result == "DMC,�����Ű����") {
					$('#result').text('DMC, �����Ű����');
					$('#result').attr('href', 'K_DMC.jsp');

				} else if (rs.result == "���μ���") {
					$('#result').text('���μ���');
					$('#result').attr('href', 'Main.html');

				} else if (rs.result == "������") {
					$('#result').text('������');
					$('#result').attr('href', 'Main.html');

				} else if (rs.result == "��ȭ������") {
					$('#result').text('��ȭ�� ����');
					$('#result').attr('href', 'Main.html');

				} else if (rs.result == "���빮�м�Ÿ��") {
					$('#result').text('���빮 �м�Ÿ��');
					$('#result').attr('href', 'Main.html');

				} else if (rs.result == "��,���빮,��â") {
					$('#result').text('��,���빮,��â');
					$('#result').attr('href', 'K_MD.jsp');

				} else if (rs.result == "����,ȫ���ֺ�") {
					$('#result').text('����, ȫ���ֺ�');
					$('#result').attr('href', 'Main.html');

				} else if (rs.result == "���ǵ�(63����)") {
					$('#result').text('���ǵ� (63����)');
					$('#result').attr('href', 'Main.html');

				} else if (rs.result == "���¿�(���¿� ���� ���İŸ�,�ѳ���)") {
					$('#result').text('���¿� (���¿� ���� ���İŸ�, �ѳ���)');
					$('#result').attr('href', 'Main.html');

				} else if (rs.result == "���") {
					$('#result').text('���');
					$('#result').attr('href', 'Main.html');

				} else if (rs.result == "����,û��") {
					$('#result').text('����, û��');
					$('#result').attr('href', 'Main.html');

				} else if (rs.result == "û�㵿,�б�����") {
					$('#result').text('û�㵿, �б�����');
					$('#result').attr('href', 'Main.html');

				} else if (rs.result == "�ڿ���") {
					$('#result').text('�ڿ���');
					$('#result').attr('href', 'Main.html');

				} else if (rs.result == "�Ѱ�,������") {
					$('#result').text('�Ѱ�, ������');
					$('#result').attr('href', 'Main.html');

				} else {
					$('#result').text('���� �����߻�');

				}

			}
		});
	}
</script>
</body>

</html>