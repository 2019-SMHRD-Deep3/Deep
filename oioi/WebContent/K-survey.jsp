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

	<!-- �������� -->

		<div id="QnA">
			<!-- ���� -->
			<br><div style ="font-size: 30px;"><b>����</b></div><br>
			<div id="Q_Nation">
				<div id="A_val">
					<select name=nation id = nation style ="font-weight: bold;">
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
			</div><br>
			<hr>
			
			<!-- �������� ���� -->
			<br><div style ="font-size: 30px;"><b>�������� ����</b></div><br>
			<div id="Q_type">
				<div class="T_type">
					<input type="button" class=tripBtn val="Air-tel"><br>
					<span><b style="font-size: 23px;"> Air-tel </b></span>
				</div>
				<div class="T_type">	 
					<input type="button" class=tripBtn val="��������"><br>
					<span><b style="font-size: 18px;"> ��������</b></span> 
				</div>
				<div class="T_type">
					<input type="button" class=tripBtn val="��ü����"><br>
					<span><b style="font-size: 18px;">��ü���� </b> </span>
				</div>
			</div><br>
			<hr>
			
			<!-- �����ϴ� Ȱ�� -->
			<br><div style ="font-size: 30px;"><b>�����ϴ� Ȱ��</b></div><br>			
			<div id="Q_Active"> 
				<div class="activite">
					<select name=act id=act style ="font-weight: bold;">
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
			</div><br>
			<hr>
			
			<!-- ������� -->
			 <br>
			<div style ="font-size: 30px;"><b>�������</b></div><br>			
			<div id="Q_Consider"> 
				<div class="A_consider">
					<select name=consider id=consider style ="font-weight: bold;">
						<option>K-POP, �ѷ���Ÿ ���� �� ����, �Կ��� �� ����
						<option>�������� ������
						<option>����, �ѷ��� ����� 
						<option>���� �� ������ Ȱ��
						<option>���� 
						<option>����, ���� �� ���� ���� �� ������
						<option>����, ��ȭ ���� Ž��
						<option>����, ���� �ü�
						<option>����, �̽� Ž��
						<option>�ڱ����� �̵� �Ÿ� 
						<option>�ڿ� ǳ�� ����
						<option>ġ�� �� �̿� ����
						<option>ģ��, ģ�� �湮  
						<option>���ý�����, �±ǵ� �� �ѱ� ���� ��ȭ ü��
						<option>�м�, ���� �� ���õ� ���� ��ȭ 
						<option>�ް� �ð�   
						<option>��Ÿ
					</select>
				</div>
			</div><br>
			<hr>

			<!-- ���� ǰ�� -->
			<br><div style ="font-size: 30px;"><b>������ �Ѵٸ� ���� 1���� ǰ��</b></div><br>
			<div id="Q_buy">
				<div class="bught">
					<select name=item id=item style ="font-weight: bold;">
						<option>�����
						<option>��� 
						<option>����,�Ǽ��縮 
						<option>�ķ�ǰ
						<option>�Ź߷�
						<option>�Ƿ� 
						<option>�λ�,�Ѿ��� 
						<option>����ο�ǰ,ĥ��,����ǰ 
						<option>�ַ�
						<option>�ѷ� ��Ÿ ���� ��ǰ 
						<option>���,ȭ��ǰ 
						<option>��Ÿ
					</select>
				</div>
			</div><br>
			<hr>

			<!-- �ο� ���� -->
			<br><div style ="font-size: 30px;"><b>�ο� ����</b></div><br>
			<div id="Q_Member">
				<div class="A_member">
					<select name=member id=member style ="font-weight: bold;">
						<option>����, ģ��
						<option>���嵿��
						<option>ģ��, ����
						<option>ȥ�� �湮
						<option>��Ÿ
					</select>
				</div>
			</div><br>
			<hr>
			

			
			<div id = "submit" style="margin:auto; text-align: center">
				<input type="button" value="����" onclick="mySub()">
			</div>
			 <div id = seoul style="display:none; ">
			 	<!-- <a id='result' href='#'></a> -->
			 	<div><h2>����� �ٶ�� ���� </h2> </div>
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
		<input type="button" value="����" onclick="mySub()"> -->


<script>

	var trip_type;

	$('.tripBtn').on('click', function() {
		$('.tripBtn').css('background-color', '');
		$(this).css('background-color', 'yellow');
		trip_type = "��������_" + $(this).attr('val');
		$(this).css('value', trip_type);
	});

	

	// var name = "";
	var play = true;
	var myWindow;
	function mySub() {
		console.log(trip_type);

		var member = "�ο�����_" + $('#member').val();
		var consider = "�������_" + $('#consider').val();
		var nation = "����_" + $('#nation').val();
		var item = "����ǰ��_" + $('#item').val();
		var act = "Ȱ������_" + $('#act').val();

		console.log(member);
		console.log(consider);
		console.log(nation);
		console.log(item);
		console.log(act);
		//����~~    //$('#myForm').submit();
	
		
		 $.ajax({
             url : "http://localhost:9000/re/" +member + "/" + trip_type + "/" + consider + "/" + nation + "/" + item + "/" + act,     
             method : "POST",
             success : function(rs) {
            	 //alert('success'+JSON.strify(rs))
            	 
            	 $('#submit').attr('style', "display:none");
            	 $('#seoul').attr('style', "display:inline");
            	
            
            	 if (rs.result1 == 1){
	  					$('#result1').text('#��, ���빮, ��â');
	  					$('#result1').attr('style', "display:inline");
	  					url1 = 'K_MD.jsp?act='+act;
	  					$('#result1').on('click',popupPage1);	
            	 	}
	  				if (rs.result2 == 1){
	  					$('#result2').text('#���¿�(���¿��������İŸ�, �ѳ���)');
	  					$('#result2').attr('style', "display:inline");
	  					url2 = 'Main.html?act='+act;
	  					$('#result2').on('click',popupPage2);
	  				}
	  				if (rs.result3 == 1){
	  					$('#result3').text('#���빮 �м�Ÿ��');
	  					$('#result3').attr('style', "display:inline");
	  					url3 = 'K_Dongdaemun.jsp?act='+act;
	  					$('#result3').on('click',popupPage3);
	  				}
	  				if (rs.result4 == 1){
	  					$('#result4').text('#����, û��');
	  					$('#result4').attr('style', "display:inline");
	  					url4 = 'K_Jong-ro.jsp?act='+act;	  					
	  					$('#result4').on('click',popupPage4);
	  				}
	  				if (rs.result5 == 1){
	  					$('#result5').text('#���');
	  					$('#result5').attr('style', "display:inline");
	  					url5 = 'Main.html?act='+act;
	  					$('#result5').on('click',popupPage5);
	  				}
	  				if (rs.result6 == 1){
	  					$('#result6').text('#�ڿ���');
	  					$('#result6').attr('style', "display:inline");
	  					url6 = 'Main.html?act='+act
	  					$('#result6').on('click',popupPage6);
	  				}
	  				if (rs.result7 == 1){
	  					$('#result7').text('#���ǵ�(63����)');
	  					$('#result7').attr('style', "display:inline");
	  					url7 = 'Main.html?act='+act
	  					$('#result7').on('click',popupPage7);
	  				}
	  				if (rs.result8 == 1){
	  					$('#result8').text('#�Ѱ�, ������');
	  					$('#result8').attr('style', "display:inline");
	  					url8 = 'Main.html?act='+act
	  					$('#result8').on('click',popupPage8);
	  				}
	  				if (rs.result9 == 1){
	  					$('#result9').text('#��ȭ�� ����');
	  					$('#result9').attr('style', "display:inline");
	  					url9 = 'Main.html?act='+act
	  					$('#result9').on('click',popupPage9);
	  				}
	  				if (rs.result10 == 1){
	  					$('#result10').text('#����, ȫ���ֺ�');
	  					$('#result10').attr('style', "display:inline");
	  					url10 = 'Main.html?act='+act
	  					$('#result10').on('click',popupPage10);
	  				}
	  				if (rs.result11 == 1){
	  					$('#result11').text('#DMC, �����Ű����');
	  					$('#result11').attr('style', "display:inline");
	  					url11 = 'Main.html?act='+act
	  					$('#result11').on('click',popupPage11);
	  				}
	  				if (rs.result12 == 1){
	  					$('#result12').text('#û�㵿, �б�����');
	  					$('#result12').attr('style', "display:inline");
	  					url12 = 'Main.html?act='+act
	  					$('#result12').on('click',popupPage12);
	  				}
	  				if (rs.result13 == 1){
	  					$('#result13').text('#���μ���');
	  					$('#result13').attr('style', "display:inline");
	  					url13 = 'Main.html?act='+act
	  					$('#result13').on('click',popupPage13);
	  				}
	  				if (rs.result14 == 1){
	  					$('#result14').text('#������');
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