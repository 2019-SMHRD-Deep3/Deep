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
		<!-- ���� -->
		<br><br><br><br>
		
			<div id = "Q"> <b>����</b></div>
			<div id = "A_btn"> 
				<input type="button" class=ageBtn name="age" style="margin-left:11.5%;" val = "15-20��"> 
				<input type="button" class=ageBtn name="age" style="margin-left:11.5%;" val = "21-30��"> 
				<input type="button" class=ageBtn name="age" style="margin-left:11.5%;" val = "31-40��">
				<input type="button" class=ageBtn name="age" style="margin-left:11.5%;" val = "41-50��">
				<input type="button" class=ageBtn name="age" style="margin-left:11.5%;" val = "51-60��">  
			</div>
			
			<div id = "A_val">
				<span style="margin-left:10.5%;"> 15-20��  </span> 
				<span style="margin-left:10.5%;"> 21-30��  </span>  
				<span style="margin-left:10.5%;"> 31-40��  </span>
				<span style="margin-left:10%;"> 41-50��  </span>
				<span style="margin-left:10.5%;"> 51-60��  </span>
			</div>
			
			
				
		<!-- ���� -->
		<br><br><br><br>
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
		<br><br><br><br>
			<div id = "Q"> <b>����</b></div>			
			<div id = "A_val">
				<select name = nation id = nation>
						<option>�븸 <option>���� <option>���þ� <option>�����̽þ� <option>����
						<option>�̱� <option>��Ʈ�� <option>�̰����� <option>���� <option>�ε� <option>�ε��׽þ�
						<option>�Ϻ� <option>�߱� <option>�ߵ� <option>ĳ���� <option>�±� <option>������
						<option>�ʸ��� <option>ȣ�� <option>ȫ�� <option>��Ÿ
				</select>
			
			</div>
			
			
			
		<!--�����ϴ� �� -->
		<br><br><br><br>
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
		<br><br><br><br>
			<div id = "Q"> <b>�������� ����</b></div>			
				<div id = "A_btn">
					<input type="button" class=tripBtn val= "Air-tel" style="margin-left:20%;">
					<input type="button" class=tripBtn val= "��������" style="margin-left:20%;">
					<input type="button" class=tripBtn val= "��ü����" style="margin-left:20%;">
				</div> 
				
			<div id = "A_val">
				<span style="margin-left:20%;"> Air-tel </span> 
				<span style="margin-left:19%;"> �������� </span>  
				<span style="margin-left:17%;"> ��ü���� </span>  
				
			</div>   
				
			
			
			
		<!-- ���� ǰ�� -->
		<br><br><br><br>
			<div id = "Q"> <b>������ �Ѵٸ� ���� 1���� ǰ��</b></div>			
			<div id = "A_val">
				<select name = item id = item>
						<option>����� <option>��� <option>����,�Ǽ��縮 <option>�ķ�ǰ 
						<option>�Ź߷�<option>�Ƿ� <option>�λ�,�Ѿ��� <option>����ο�ǰ,ĥ��,����ǰ <option>�ַ�
						<option>�ѷ���Ÿ���û�ǰ <option>���,ȭ��ǰ <option>��Ÿ 
				</select>
			
			</div>
			
			
			
		<!-- ���ڽü� ���� -->
		<br><br><br><br>
			<div id = "Q"> <b>���ڽü� ����</b></div>			
			<div id = "A_val">
				<select name = stay  id = stay>
						<option>�Խ�Ʈ�Ͽ콺,ȣ���� <option>����,���� <option>�ι�,�������� <option>ģô�Ǵ�ģ����
						<option>�ܵ�,���,���������� <option>�б�,ȸ�� �����,������ <option>ȣ�� <option>��Ÿ 
						
				</select>
			
			</div>
			
			
			
		<!-- �����ϴ� Ȱ�� -->
		<br><br><br><br>
			<div id = "Q"> <b>�����ϴ� Ȱ��</b></div>			
			<div id = "A_val">
				<select name = act id = act>
						<option>���,�����������湮 <option>����,�μ�,���,���� ���������� <option>���̰���,�׸���ũ 
						<option>���,��ȭ�������湮 <option>������Ȱ�� <option>�ڹ���,���ð��湮 <option>��Ƽ����
						<option>���� <option>������Ȱ�� <option>���� <option>��Ƽ��������̿� <option>�ĵ�������
						<option>�������� <option>����,����,���� <option>����,���� <option>�Ƿ���� 
						<option>�ڿ�������� <option>���빮ȭü�� <option>�޾�,�޽� <option>��Ÿ
				</select>
			
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

                                                                                     
	<!-- </form> -->

	<script type="text/javascript">

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