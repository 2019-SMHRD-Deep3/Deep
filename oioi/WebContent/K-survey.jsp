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
	<!-- �������� -->

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
			<div id = "submit">
				<input type="button" value="����" onclick="mySub()">
			</div>
			 <div id = seoul style="display:none; ">����� �ٶ�� ���� : 
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
		<input type="button" value="����" onclick="mySub()"> -->


<script>
	var age;
	var gender;
	var month;
	var trip_type;

	$('.ageBtn').on('click', function() {
		$('.ageBtn').css('background-color', '');
		$(this).css('background-color', 'yellow');
		age = "���ɴ�_" + $(this).attr('val');
		$(this).css('value', age);
	});

	$('.genderBtn').on('click', function() {
		$('.genderBtn').css('background-color', '');
		$(this).css('background-color', 'yellow');
		gender = "����_" + $(this).attr('val');
		$(this).css('value', gender);
	});

	$('.monBtn').on('click', function() {
		$('.monBtn').css('background-color', '');
		$(this).css('background-color', 'yellow');
		month = "��_" + $(this).attr('val');
		$(this).css('value', month);
	});

	$('.tripBtn').on('click', function() {
		$('.tripBtn').css('background-color', '');
		$(this).css('background-color', 'yellow');
		trip_type = "��������_" + $(this).attr('val');
		$(this).css('value', trip_type);
	});

	function mySub() {
		console.log(age);
		console.log(gender);
		console.log(month);
		console.log(trip_type);

		var nation = "����_" + $('#nation').val();
		var item = "����ǰ��_" + $('#item').val();
		var stay = "���ڽü�_" + $('#stay').val();
		var act = "Ȱ������_" + $('#act').val();

		console.log(nation);
		console.log(item);
		console.log(stay);
		console.log(act);
		//����~~    //$('#myForm').submit();
	
		
		 $.ajax({
             url : "http://localhost:9000/re/" + age + "/" + gender + "/" + nation + "/" + month + "/" + trip_type + "/" + item
                   + "/" + stay + "/" + act,
             method : "POST",
             success : function(rs) {
            	 //alert('success'+JSON.strify(rs))
            	 
            	 $('#submit').attr('style', "display:none");
            	 $('#seoul').attr('style', "display:inline");
            	
            
            	 if (rs.result1 == 1){
	  					$('#result1').text('#��, ���빮, ��â');
	  					$('#result1').attr('style', "display:inline");
	  					var url1 = 'K_MD.jsp?act='+act;
	  					$('#result1').attr('onclick', "location='"+url1+ "'" );
	  				}
	  				if (rs.result2 == 1){
	  					$('#result2').text('#���¿�(���¿��������İŸ�, �ѳ���)');
	  					$('#result2').attr('style', "display:inline");
	  					var url2 = 'Main.html?act='+act;
	  					$('#result2').attr('onclick', "location='"+url2+ "'" );
	  				}
	  				if (rs.result3 == 1){
	  					$('#result3').text('#���빮 �м�Ÿ��');
	  					$('#result3').attr('style', "display:inline");
	  					var url3 = 'Main.html?act='+act;
	  					$('#result3').attr('onclick', "location='"+url3+ "'" );
	  				}
	  				if (rs.result4 == 1){
	  					$('#result4').text('#����, û��');
	  					$('#result4').attr('style', "display:inline");
	  					var url4 = 'K_Jong-ro.jsp?act='+act;
	  					$('#result4').attr('onclick', "location='"+url4+ "'" );
	  				}
	  				if (rs.result5 == 1){
	  					$('#result5').text('#���');
	  					$('#result5').attr('style', "display:inline");
	  					var url5 = 'Main.html?act='+act;
	  					$('#result5').attr('onclick', "location='"+url5+ "'" );
	  				}
	  				if (rs.result6 == 1){
	  					$('#result6').text('#�ڿ���');
	  					$('#result6').attr('style', "display:inline");
	  					var url6 = 'Main.html?act='+act
	  					$('#result6').attr('onclick', "location='"+url6+ "'" );
	  				}
	  				if (rs.result7 == 1){
	  					$('#result7').text('#���ǵ�(63����)');
	  					$('#result7').attr('style', "display:inline");
	  					var url7 = 'Main.html?act='+act
	  					$('#result7').attr('onclick', "location='"+url7+ "'" );
	  				}
	  				if (rs.result8 == 1){
	  					$('#result8').text('#�Ѱ�, ������');
	  					$('#result8').attr('style', "display:inline");
	  					var url8 = 'Main.html?act='+act
	  					$('#result8').attr('onclick', "location='"+url8+ "'" );
	  				}
	  				if (rs.result9 == 1){
	  					$('#result9').text('#��ȭ�� ����');
	  					$('#result9').attr('style', "display:inline");
	  					var url9 = 'Main.html?act='+act
	  					$('#result9').attr('onclick', "location='"+url9+ "'" );
	  				}
	  				if (rs.result10 == 1){
	  					$('#result10').text('#����, ȫ���ֺ�');
	  					$('#result10').attr('style', "display:inline");
	  					var url10 = 'Main.html?act='+act
	  					$('#result10').attr('onclick', "location='"+url10+ "'" );
	  				}
	  				if (rs.result11 == 1){
	  					$('#result11').text('#DMC, �����Ű����');
	  					$('#result11').attr('style', "display:inline");
	  					var url11 = 'Main.html?act='+act
	  					$('#result11').attr('onclick', "location='"+url11+ "'" );
	  				}
	  				if (rs.result12 == 1){
	  					$('#result12').text('#û�㵿, �б�����');
	  					$('#result12').attr('style', "display:inline");
	  					var url12 = 'Main.html?act='+act
	  					$('#result12').attr('onclick', "location='"+url12+ "'" );
	  				}
	  				if (rs.result13 == 1){
	  					$('#result13').text('#���μ���');
	  					$('#result13').attr('style', "display:inline");
	  					var url13 = 'Main.html?act='+act
	  					$('#result13').attr('onclick', "location='"+url13+ "'" );
	  				}
	  				if (rs.result14 == 1){
	  					$('#result14').text('#������');
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