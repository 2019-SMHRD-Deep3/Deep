<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="assets/css/main_course.css" />
<style type="text/css">
.iii{
	width: 125% !important;
}
.content{
	margin-left: 10% !important;
	max-width: 39rem !important; 
	padding-left: 50px !important;
	padding-right: 130px !important;
}

#content1{
	margin-left: 9% !important;
	max-width: 39rem !important; 
	text-align: right;
}
#content2{
	margin-left: 13% !important;
}
#content3{
	margin-left: 10% !important;
	max-width: 39rem !important; 
	text-align: right;
}
.major{  
	font-size: 21px !important;
	width: 103% !important;
}

h1{
	font-size: 60px;
	font-weight: bold;
}

#img1{
	background-size: 100% 100%;
}
#img2{
	background-size: 100% 100%;
}
#img3{
	/* background-image: url("img/course/MD_h1.jpg"); */
	background-size: 100% 100%;
	margin-left: -25% !important;
}

</style>

</head>
<body>

<!-- Wrapper -->
			<div id="wrapper" class="divided">
			<% String act = (String)request.getParameter("act"); %>
			<%= act %> <br>

			<% 
				// �̹��� ��θ�
				String url_1=""; String url_2=""; String url_3="";
			   
			    // ��õ �ڽ���
			    String head_1 = ""; String head_2 = ""; String head_3 = "";
			   
			    // ��õ �ڽ��� ���� ���� 
	  	    	String content_1 = "";  String content_2 = "";  String content_3 = "";
			   
			   if(act.equals("Ȱ������_���,�����������湮")||act.equals("Ȱ������_��������")||act.equals("Ȱ������_���빮ȭü��")){
				   url_1 = "background-image: url('img/course/MD_a1.jpg');";
				   url_2 = "background-image: url('img/course/MD_a2.jpg');";
				   url_3 = "background-image: url('img/course/MD_a3.jpg');";
				   
				   head_1 = "�� ����";
				   head_2 = "���빮(���ʹ�)";
				   head_3 = "���� �ѿ�����";
				   
				   content_1 = "�츮���� ������ �����̸� �ѱ� õ�ֱ�ȸ�� ��¡�̴�." +"<br>" + 
						      "������ ������ �ø� õ������ �Ǿ� �ְ�, "+ "<br>" +" �ܺδ� �������� ���� �������� �巯���� �ִ�." + "<br>" + 
				    		  "������ ���� �鷯 ���� �� ���� ���� �Ʒ��ʿ� �ִ� ���ϼ�������" +"<br>" + "19���� õ�ֱ� ���ط� ������� ���� ���� 5����  "+ "<br>" +"�Ϲ� ������ ���� 4���� �����ϰ� �ִ�." ;
				   content_2 = "�����ô� �Ǳ��� �Բ� ������ ����� õ���ϸ鼭 "+ "<br>" +"�Ǹ��� �������� ������ �ѱ��� ���๰." + "<br>" + 
						 	  "�Ѱ����κ��� ������ �ִܰŸ��� �̾��ִ� �빮����  "+ "<br>" +"����� ������ ������ ���� ���� �����̾���."+ "<br>" + 
						 	  "1899�� ������ ������� ���̻� ������ ������ ���Ͽ���  "+ "<br>" +"���� ���ʹ� �������� �Ϻ� ������ �����ִ�.";
				   content_3 = "������ �� ����."  + "<br>" +
						   		"�ѱ��� ���밡��(�ѿ�)�� �� �� �ִ� ������ �Ϻ� ������ "+ "<br>" +" ���ڰ��� ���� �ѿ� ������, ���� �������� Ȱ��ǰ� �ִ�." + "<br>" +
						   		"�ɾ �ѷ����� �� �� 3�ð� �ҿ�ȴ�." ;
					
				}else if (act.equals("Ȱ������_����,�μ�,���,���� ����������")){
					
					url_1 = "background-image: url('img/course/MD_b1.jpg');";
					url_2 = "background-image: url('img/course/MD_b2.jpg');";
					url_3 = "background-image: url('img/course/MD_b3.jpg');";
					
					head_1 = "����������";
					head_2 = "��Ÿ����";
					head_3 = "�� ����ŷ";
					   
					content_1 = "�������Ա����� ���� ���̿� �ִ� ������������  "+ "<br>" +" ���� 1��, ���� 5�� �Ը��� �߱����̴�." +"<br>" + 
								"���뿬��, �����, ���� �����ս�, ������ ���� �����  "+ "<br>" +" ������, ���������� ���� Ư���� ��絵 �����ϰ� �ִ�." +"<br>" + 
								"������ ���밡 ����� ���� ������ ��ġ�� ������ ������ �� �ִ�.";
					content_2 = "��Ÿ�� �ѱ��� ���� ������ �繰���� ������ �������� �Ͽ�  "+ "<br>" +" �ֹ濡�� �Ͼ�� �ϵ��� �ڹ��ϰ� ���ȭ�� ������̴�." +"<br>" + 
								"���� 38������ �ܱ� �������� ��Ÿ�������� ã�´�. " +"<br>" + 
								"�ֹ��� ��� ���� Ȱ���� Ÿ�� ���� ���̻��� �ѱ��� ���� ���  "+ "<br>" +"���� ������ ��췯�� ��ܿ� ���� �� ������ ��������." ;
					content_3 = "�� �и����� �տ��� �پ��� ������ �����⵵ �Ѵ�."+ "<br>" +
								"���� �α� ���̵��׷��̳� �����ε��� �ҵ�� �����ϴ� �����̴�."+ "<br>" +
								"�����̼� ��Ÿ�� �� �� �ִ� ��ȸ�� ���� �� �ִ�." ;
					
				}else if (act.equals("Ȱ������_���̰���,�׸���ũ")){
					
					url_1 = "background-image: url('img/course/MD_c1.jpg');";
					url_2 = "background-image: url('img/course/MD_c2.jpg');";
					url_3 = "background-image: url('img/course/MD_c3.jpg');";
					
					head_1 = "���������";
					head_2 = "���ŰƼ ī��";
					head_3 = "��Ϲ��� �Ƹ��";
					   
					content_1 = "�� �纸��ȣ�� �ٷ� �տ� ������, ���������� �÷��׽� �����." +"<br>" + 
								"Ŀ�ٶ� ���� ������ ���տ� �־ �ָ����� ���� ã�� �� �ִ�." +"<br>" + 
								"�پ��� ĳ��������, �п�ǰ�� �繫��ǰ, �׼����� ����  "+ "<br>" +"�����ϸ鼭 �ѷ��� �� �ִ� ���̴�.";
					content_2 = "���ŰƼ�� �����ϴ� ������� ģ���� �湮�ϸ� ���� ������ ������ "+ "<br>" +"���������� �߾��� ���� �� �ִ�." +"<br>" + 
								"���Ḧ �ֹ��ϸ� ���� ���ŰƼ ��Ʈ�󶼸� ������ �� �ְ�, "+ "<br>" +"������ ���� �ҽÿ�ǰ�� ������ �� �ִ� ���̴�." +"<br>" + 
								"�����ϴ� �� ���� �ʿ��� �� �鷯���� �ϴ�." ;
					content_3 = "��Ϲ��;Ƹ��� �پ��� ���� �Ƹ�带 ��� ������ ���� ���� �α��ڽ�!!" +"<br>" + 
								"���� 6-7�� �ⱸ �����츮�� ���Ͽ� ��ġ�ϰ� ������, "+ "<br>" +"�پ��� �Ƹ�带 ���� �������� �ýĵ� �����ϴ�." +"<br>" + 
								"���������� �غ�Ǿ� �־� �λ����� ���� �� �ִ�." ;
					
					
				}else if (act.equals("Ȱ������_���,��ȭ�������湮")){
					
					url_1 = "background-image: url('img/course/MD_d1.jpg');";
					url_2 = "background-image: url('img/course/MD_d2.jpg');";
					url_3 = "background-image: url('img/course/MD_d3.jpg');";
					
					head_1 = "�ͼ���(��ī�� Ÿ�ڱ�)";
					head_2 = "����� (����������)";
					head_3 = "���� �ѿ����� (����� �µ�)";
					   
					content_1 = "1930��븦 ġ���ϰ� ��Ҵ� û�� ���ε��� �̾߱⸦ �׸� "+ "<br>" +"����� ������� 1930����� ������ "+ "<br>" +" �漺�� ����� �״�� ���� �� �ִ�." +"<br>" + 
								"���������� ������ �������� ���� �� �湮�ϸ� ����.";
					content_2 = "���� �ޱ۷� �Կ��� ���� ������ �� ��ȭ�� �Կ����� "+ "<br>" +"�ø��꿵 ���߾��� ������ �������" +"<br>" + 
								"�����翡�� ���� 6�аŸ��� �����ڽ��̴�." +"<br>" + 
								"��ȭ�� �ѱ���ȭ���� ����幮 ������ ���ҽ��򹰷� �� ����� ���̴�. " +"<br>" + 
								"��ȭ ���� ���� �湮���� ������ ���� ���� ��̰� ���� ���̴�." ;
					content_3 = "���� �ѿ������� ������� �� �ѱ� ���." +"<br>" + 
								"�赿���� ������� �����ϰ�, �ѱ��� �Ƹ��ٿ� ���밡�� ���̸� "+ "<br>" +"�����鼭 ������ �� �ִ�." ;
					
					
				}else if (act.equals("Ȱ������_�ڹ���,���ð��湮")){
					
					url_1 = "background-image: url('img/course/MD_e1.jpg');";
					url_2 = "background-image: url('img/course/MD_e2.jpg');";
					url_3 = "background-image: url('img/course/MD_e3.jpg');";
					
					head_1 = "3D ����Ʈ �ڹ���";
					head_2 = "���� ���� �ڹ���";
					head_3 = "��̷� �Ÿ�";
					   
					content_1 = "���̵���� ���α��� ��̳� 3D ���ø� ü���ϸ� "+ "<br>" +"��ü�׸� �ӿ� �� �����Կ��� �� �� �ִ� ����ü�� �׸���ũ." +"<br>" + 
								"5�� ���� ���ϴ� 3D ��Ʈ�� �������� ȯȣ���� ���� ������ ���̴�." +"<br>" +  
								"�ź��� ���� ���� ������� �����迡 �ϳ����� 3D BLACKART MUSEUM.";
					content_2 = "����ô���� ������� ����Ư������ ����� ��ȭ�� �����Ͽ� "+ "<br>" +"�����ִ� ���ÿ��� �ڹ���." +"<br>" + 
								"���� �߱� ���ĺ��� 20���⸻������ �ڷ�� ���ù��� �����Ǿ� �ִ�." +"<br>" + 
								"�ڹ��� ���๰�� ����Ͽ� �پ��ϰ� Ư���ִ� ��ȭ��ǰ �Ǹ��ϰ� �ִ�." ;
					content_3 = "������� �������� ���ǿ���� �����ʵ��б��� ���ϴ� "+ "<br>" +"����� ����� ��ȭ�����Ÿ�." +"<br>" + 
								"������� ���� �� �ִϸ��̼� ĳ���Ͱ� ���õǾ� �־ "+ "<br>" +"����⸦ �ϸ鼭 ���� �� �ִ�." +"<br>" + 
								"���� �ִϸ��̼� ���Ͱ� �����������̴�." ;
					
					
				}else if (act.equals("Ȱ������_��Ƽ����")){
					
					url_1 = "background-image: url('img/course/MD_f1.jpg');";
					url_2 = "background-image: url('img/course/MD_f2.jpg');";
					url_3 = "background-image: url('img/course/MD_f3.jpg');";
					
					head_1 = "��Ÿ�ϳ��� ��ũȣ��";
					head_2 = "";
					head_3 = "���ڸ�";
					   
					content_1 = "ȣ���� ��Ƽ��� �� �÷��׽� �����. " +"<br>" + 
								"������ü�� ��ũ������ �ٸ��� ������, "+ "<br>" +"���� ��, ���� �� ȣ���� �������ϴ� �׸��� ���� ";
					content_2 = "1, 2���� ��Ÿ�ϳ����� ȭ��ǰ �귣���� 3CE �ڽ���ƽ, " +"<br>" + 
								"3���� ��Ÿ�ϳ����� ��ü ���� ��ǰ, " +"<br>" + 
								"4���� 5������ �¶��� ���θ� �Ƿ� ��ǰ���� ä����. " +"<br>" + 
								"5������ ��Ÿ�ϳ��ٰ� ���� ������ ���Ḧ �Ǹ��ϴ� ī�䵵 ���õ� �ִ�." ;
					content_3 = "���� ȭ��븦 �����Ű�� ����ũ�� ���� �� ��BEAUTY SPACE��" +"<br>" + 
								"���⿡���� ���� �� ����ũ�� �귣���� ��Ƽ ����̽�, ��Ƽ �� ����" +"<br>" + 
								"���ܵ��� ���� ���̵� �����Ӱ� �����ϰ� �׽��� �� �� �ִ�." ;
					
					
				}else if (act.equals("Ȱ������_����")){
					
					url_1 = "background-image: url('img/course/MD_g1.jpg');";
					url_2 = "background-image: url('img/course/MD_g2.jpg');";
					url_3 = "background-image: url('img/course/MD_g3.jpg');";
					
					head_1 = "�� ���� �Ÿ�";
					head_2 = "";
					head_3 = "���̷���";
					   
					content_1 = "��޺귣����� SPA�귣��, ����������� "+ "<br>" +"�پ��ϰ� ������ ��� �� �ִ�." +"<br>" + 
								"���� �α� �ִ� ���� ������ �ܿ� ��Ƽ ����. "+ "<br>" +"�� ���ΰŸ����� ���� ��Ƽ�귣�� ������� �ִ�. ";
					content_2 = "�Ź�, �ʿ��� �׼��������� �������� ���ݴ��� ������� "+ "<br>" +"�����Ǿ� �־� ������ ���⿡ �δ��� ����. " +"<br>" + 
								"���� ���� �� �����鵵 ���� ������"+ "<br>" +" ���� �� ��̳��� ����� ��Ҵ�." ;
					content_3 = "�ʰ� �پ��� ��ǰ���ϰ� ���� ȭ��ǰ ��� �Ǹ��ϴ� ��." +"<br>" + 
								"������ �پ��ؼ� �����ϱ� ����, "+ "<br>" +"2�������� �� ��, 3,4���� ��Ƽ���� ������ ���ΰ����̴�." ;
					
					
				}else if (act.equals("Ȱ������_������Ȱ��")|| act.equals("Ȱ������_������Ȱ��")){
					
					url_1 = "background-image: url('img/course/MD_h1.jpg');";
					url_2 = "background-image: url('img/course/MD_h2.jpg');";
					url_3 = "background-image: url('img/course/MD_h3.jpg');";
					
					head_1 = "�ڳ��� ������";
					head_2 = "������ ��Ƽ��";
					head_3 = "������ �������";
					   
					content_1 = "���Ϳ� �����ٰ� ������, "+ "<br>" +"��ź�ҳ�� �޷��� ��ź �Կ���ҷ� �����ϴ�.";
					content_2 = "�پ��� �׸��� ���ϰ� �뿡�� ���ΰ� �Բ� �� �� �ִ� ��." +"<br>" +
								"������ �̿밡���ϰ�, ��ȭ�����̳� �ǻ� ��ǰ�� "+ "<br>" +"���� ����������� �ð��� ���� �� �ִ�." +"<br>" +
								"���� �̺�Ʈ �����۵� ���� �־ �߾��� ����⿡ ����." ;
					content_3 = "���� ���� ��ȭ����" + "<br>" +
								"(10���� ������ ������ �����ϴ� ��)"+ "<br>" + 
								"��ũ�� �տ��� �پ��� ������ ���� �� �� �ִ� ���̴�." ;
					
					
				}else if (act.equals("Ȱ������_�ĵ�������")){
					
					url_1 = "background-image: url('img/course/MD_i1.JPG');";
					url_2 = "background-image: url('img/course/MD_i2.JPG');";
					url_3 = "background-image: url('img/course/MD_i3.JPG');";
					
					head_1 = "���";
					head_2 = "���õ��";
					head_3 = "������ �߰���";
					   
					content_1 = "�������� �Ը��� ������� ����� "+ "<br>" +
								"30�� ������ ����� ������. "+ "<br>" +
								"�ѱ� ���� �׸��� ��׸� �ȿ� ������ ����, �߰���, ��ȸ ����  "+ "<br>" +"�÷� ���⿡�� ���� ���� �Ǹ��ϴ�. "+ "<br>" +
								"���� �Ұ��, Ĭ���� ���ɸ��� ��� �� �ִ�.";
					content_2 = "���� �߱� ���� ��ġ�� ���� �����̴�. "+ "<br>" +
								"������ ��������� ���� �κ��� Ư�� ���� Ȥ�� ������ �Դ� ������ ���Ѵ�."+ "<br>" +
								"�� �Ĵ翡���� ������ ǳ���� ����� ���� ��� ��ġ�� ���� �� �ִ�."+ "<br>" +
								"�ܱ��ε鵵 �����ϴ� �������� �������� ������ ���̴�." ;
					content_3 = "���ѹα� NO.1 ��ǥ �߰��� ������!"+ "<br>" +
								"�߰���� �ѱ��� ��ǥ���� ���� �丮��, �丷�� �߰�⸦  "+ "<br>" +"������, ���� �� ��信 ����ٰ� ���� ��ä�� �Բ� "+ "<br>" +
								"ö�ǿ� ���� �Դ� �丮�� ���Ѵ�. "+ "<br>" +
								"������ �߰���� 1981����� �Ѱ� ���� ������ ����ް� ������,"+ "<br>" +"�������� �Ը��� �����Ҵ�.";
		
					
				}else if (act.equals("Ȱ������_�ڿ��������")|| act.equals("Ȱ������_�޾�,�޽�")){
					
					url_1 = "background-image: url('img/course/MD_j1.jpg');";
					url_2 = "background-image: url('img/course/MD_j2.jpg');";
					url_3 = "background-image: url('img/course/MD_j3.jpg');";
					
					head_1 = "������";
					head_2 = "����";
					head_3 = "û��õ";
					   
					content_1 = "�����ô� ������ ��ó�� �̿�� �ñ�. "+ "<br>" +
								"�������� ���� ���⿡ �ñȷ� ���߾��� ���̱�� ������, "+ "<br>" +"���Ѹ��� ������ �����̾�����  "+ "<br>" +
								"������������ ������� ������ �Բ� ���� �ִ� ������ "+ "<br>" +"���������� �ñ� ��� Ư���� ����� ���๰�̴�.";
					content_2 = "���� 265.2m�� ������ ���� �߾Ӻθ� �ѷ��ΰ� �ִ� ���̴�. "+ "<br>" +
								"���� �������� ����Ÿ���� �Ҹ��� ���ž�� �Ȱ����� ������,  "+ "<br>" +"�̰��� ���̺�ī�� �������� �� �ִ�.  "+ "<br>" +
								"������ �������������� ��� �ϴ뿡�� �ڿ������� ��������� ��ġ�Ǿ� "+ "<br>" +"���� �ù��� �޽�ó�� �����ǰ� �ִ�." ;
					content_3 = "������ �Ѻ����� ���α��� �߱����� ��踦 �帣�� ��õ. "+ "<br>" +
								"���� ������ ��� ���� ���⿡ �� �߶�õ(������)�� ������  �Ѱ����� ������. "+ "<br>" +
								"�м� �߰��� ���� ������, ��å�ϱ� ���� ���̴�." ;
					
					
				}
				
				
				
				
				
				
				
				else {
					url_1 = "background-image: url('img/course/MD_a1.jpg');";
					url_2 = "background-image: url('img/course/MD_g1.jpg');";
					url_3 = "background-image: url('img/course/MD_g3.jpg');";
					
					head_1 = "�� ����";
					head_2 = "�� ���� �Ÿ�";
					head_3 = "���̷���";
					
					content_1 = "�츮���� ������ �����̸� �ѱ� õ�ֱ�ȸ�� ��¡�̴�." +"<br>" + 
						      "������ ������ �ø� õ������ �Ǿ� �ְ�, "+ "<br>" +" �ܺδ� �������� ���� �������� �巯���� �ִ�." + "<br>" + 
				    		  "������ ���� �鷯 ���� �� ���� ���� �Ʒ��ʿ� �ִ� ���ϼ�������" +"<br>" + "19���� õ�ֱ� ���ط� ������� ���� ���� 5����  "+ "<br>" +"�Ϲ� ������ ���� 4���� �����ϰ� �ִ�." ;
     				content_2 = "��޺귣����� SPA�귣��, ����������� "+ "<br>" +"�پ��ϰ� ������ ��� �� �ִ�." +"<br>" + 
								"���� �α� �ִ� ���� ������ �ܿ� ��Ƽ ����. "+ "<br>" +"�� ���ΰŸ����� ���� ��Ƽ�귣�� ������� �ִ�. ";
					content_3 = "�ʰ� �پ��� ��ǰ���ϰ� ���� ȭ��ǰ ��� �Ǹ��ϴ� ��." +"<br>" + 
								"������ �پ��ؼ� �����ϱ� ����, "+ "<br>" +"2�������� �� ��, 3,4���� ��Ƽ���� ������ ���ΰ����̴�." ;
				}
				
				
				
	
			%>
				

			
				<!-- One -->
					<!-- <section class="banner style1 orient-left content-align-left image-position-right fullscreen onload-image-fade-in onload-content-fade-right"> -->
					<section class="spotlight style1 orient-left content-align-left image-position-center onscroll-image-fade-in"  id="one" >
						<div class="content"  id="content1">
							<h1><%= head_1 %></h1>
							<p class="major"><%= content_1 %></p>
							<!-- â�� �Ʒ��� �����ִ� ��ư  -->
							<ul class="actions stacked">
								<li><a href="#two" class="button big wide smooth-scroll-middle">Down</a></li>
							</ul>
						</div>
						<div class="image"  style="height:763px; width:925px;">
							<!-- <img id= "img1" alt="" style = "background-image: url('img/course/MD_b1.PNG');" /> -->
							<img id= "img1" alt="" style = "<%= url_1 %>"/>
						</div>
					</section>

				<!-- Two -->
					<section class="spotlight style1 orient-right content-align-left image-position-center onscroll-image-fade-in" id="two">
						<div class="content"  id="content2">
							<h1><%= head_2 %></h1>
							<p class="major"><%= content_2 %></p>
							<ul class="actions stacked">
								<li><a href="#three" class="button big wide smooth-scroll-middle">Down</a></li>
							</ul>
							<!-- <ul class="actions stacked">
								<li><a href="#" class="button">Learn More</a></li>
							</ul> -->
						</div>
						<div class="image">
							<img  class = "iii" id= "img2" style = "<%= url_2 %>" /> 
						</div>
					</section>

				<!-- Three -->
					<section class="spotlight style1 orient-left content-align-left image-position-center onscroll-image-fade-in"  id="three" >
						<div class="content" id="content3">
							<h1><%= head_3 %></h1>
							<p class="major"><%= content_3 %></p>
							<ul class="actions stacked">
								<li><a href="#gallery" class="button big wide smooth-scroll-middle">Down</a></li>
							</ul>

						</div>
						<div class="image">
							<img class = "iii"  id= "img3" style = "<%= url_3 %>"/>
						</div>
					</section>
					


				<!-- Gallery -->
					<section class="wrapper style1 align-center">
						<div class="inner">
							<h2>Gallery</h2>
							<p>This is a <strong>Gallery</strong> element. It can behave as a lightbox (when given the <code>lightbox</code> class), and you can customize its <span class="demo-controls">appearance with a number of modifiers</span>, as well as assign it an optional <code>onload</code> or <code>onscroll</code> transition modifier (<a href="#reference-gallery">details</a>).</p>
						</div>
						<ul class="actions stacked">
								<li><a href="#one" class="button">Up</a></li>
							</ul>

						<!-- Gallery -->
							<div class="gallery style2 medium lightbox onscroll-fade-in" id = "gallery">
							<article>
									<a href="img/gallery/fulls/MD_a1.jpg" class="image">
										<img src="img/gallery/thumbs/MD_a1.jpg" height="450px" /></a>
									<div class="caption">
										<h3>������</h3>
										<p>�츮���� ������ ���� <br> �ѱ� õ�ֱ�ȸ�� ��¡</p>
										<ul class="actions fixed"><li><span class="button small">Details</span></li></ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/MD_a2.jpg" class="image">
										<img src="img/gallery/thumbs/MD_a2.jpg" height="450px" /></a>
									<div class="caption">
										<h3>���빮(���ʹ�)</h3>
										<p>�����ô� �Ǳ��� �Բ� ������ ����� õ���ϸ鼭 �Ǹ��� �������� ������ �ѱ��� ���๰.</p>
										<ul class="actions fixed"><li><span class="button small">Details</span></li></ul>
									</div>
								</article>
								
								<article>
									<a href="img/gallery/fulls/MD_a3.jpg" class="image">
										<img src="img/gallery/thumbs/MD_a3.jpg" height="450px" /></a>
									<div class="caption">
										<h3>���� �ѿ�����</h3>
										<p>�ѱ��� ���밡��(�ѿ�)�� �� �� �ִ� ��</p>
										<ul class="actions fixed"><li><span class="button small">Details</span></li></ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/MD_b1.jpg" class="image">
										<img src="img/gallery/thumbs/MD_b1.jpg" height="450px" /></a>
									<div class="caption">
										<h3>����������</h3>
										<p>���뿬��, �����, ���� �����ս�, ������ ���� ����� ������, ���������� ����  <br> Ư���� ��絵 ����</p>
										<ul class="actions fixed">
											<li><span class="button small">Details</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/MD_b2.jpg" class="image">
										<img src="img/gallery/thumbs/MD_b2.jpg" height="450px" />
									</a>
									<div class="caption">
										<h3>��Ÿ����</h3>
										<p>�ֹ��� ��� ���� Ȱ���� Ÿ�� ���� ���̻��� <br> �ѱ��� ���� ��� ���� ������ ��췯��  <br> ��ܿ� ���� �� ����</p>
										<ul class="actions fixed">
											<li><span class="button small">Details</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/MD_c1.jpg" class="image">
										<img src="img/gallery/thumbs/MD_c1.jpg" height="450px" />
									</a>
									<div class="caption">
										<h3>���������</h3>
										<p>�� �纸��ȣ�� �ٷ� ��  <br> ���������� �÷��׽� �����</p>
										<ul class="actions fixed">
											<li><span class="button small">Details</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/MD_c2.jpg" class="image">
										<img src="img/gallery/thumbs/MD_c2.jpg" height="450px" />
									</a>
									<div class="caption">
										<h3>���ŰƼ ī��</h3>
										<p>���� ���ŰƼ ��Ʈ�󶼸� ������ �� �ְ�, <br> ������ ���� �ҽÿ�ǰ�� ������ �� �ִ� ��</p>
										<ul class="actions fixed">
											<li><span class="button small">Details</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/MD_c3.jpg" class="image">
										<img src="img/gallery/thumbs/MD_c3.jpg" height="450px" />
									</a>
									<div class="caption">
										<h3>��Ϲ��� �Ƹ��</h3>
										<p>��Ϲ��;Ƹ��� �پ��� ���� �Ƹ�带 <br> ��� ������ ���� ���� �α��ڽ�</p>
										<ul class="actions fixed">
											<li><span class="button small">Details</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/MD_d2.jpg" class="image">
										<img src="img/gallery/thumbs/MD_d2.jpg" height="450px" />
									</a>
									<div class="caption">
										<h3>�����</h3>
										<p>���������� ��ȭ �Կ��� <br> ���ҽ��򹰷� �� ����� ��</p>
										<ul class="actions fixed">
											<li><span class="button small">Details</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/MD_d3.jpg" class="image">
										<img src="img/gallery/thumbs/MD_d3.jpg" height="450px" />
									</a>
									<div class="caption">
										<h3>���� �ѿ�����</h3>
										<p>����� �µ� ��� �Կ��� <br> ���� �ѿ������� ������� �� �ѱ� ���. <br> �ѱ��� �Ƹ��ٿ� ���밡�� ���̸�  <br> �����鼭 ����</p>
										<ul class="actions fixed">
											<li><span class="button small">Details</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/MD_e1.jpg" class="image">
										<img src="img/gallery/thumbs/MD_e1.jpg" height="450px" />
									</a>
									<div class="caption">
										<h3>3D ����Ʈ �ڹ���</h3>
										<p>�ź��� ���� ���� ������� �����迡 �ϳ����� 3D BLACKART MUSEUM.</p>
										<ul class="actions fixed">
											<li><span class="button small">Details</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/MD_e2.jpg" class="image">
										<img src="img/gallery/thumbs/MD_e2.jpg" height="450px" />
									</a>
									<div class="caption">
										<h3>���� ���� �ڹ���</h3>
										<p>����ô���� ������� <br>����Ư������ ����� ��ȭ�� <br> �����Ͽ� �����ִ� ���ÿ��� �ڹ���.</p>
										<ul class="actions fixed">
											<li><span class="button small">Details</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/MD_e3.jpg" class="image">
										<img src="img/gallery/thumbs/MD_e3.jpg" height="450px" />
									</a>
									<div class="caption">
										<h3>�� ��̷� �Ÿ�</h3>
										<p>����� ����� ��ȭ�����Ÿ�.</p>
										<ul class="actions fixed">
											<li><span class="button small">Details</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/MD_f1.jpg" class="image">
										<img src="img/gallery/thumbs/MD_f1.jpg" height="450px" />
									</a>
									<div class="caption">
										<h3>��Ÿ�ϳ��� ��ũȣ��</h3>
										<p>ȣ���� ��Ƽ��� �� �÷��׽� �����.</p>
										<ul class="actions fixed">
											<li><span class="button small">Details</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/MD_f3.jpg" class="image">
										<img src="img/gallery/thumbs/MD_f3.jpg" height="450px" />
									</a>
									<div class="caption">
										<h3>���ڸ�</h3>
										<p>���� ȭ��븦 �����Ű�� ����ũ�� ���� �� <br> ��BEAUTY SPACE��</p>
										<ul class="actions fixed">
											<li><span class="button small">Details</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/MD_g1.jpg" class="image">
										<img src="img/gallery/thumbs/MD_g1.jpg" height="450px" />
									</a>
									<div class="caption">
										<h3>�� ���� �Ÿ�</h3>
										<p>��޺귣����� SPA�귣��, �����������  <br> �پ��ϰ� ������ ��� �� �ִ�.</p>
										<ul class="actions fixed">
											<li><span class="button small">Details</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/MD_g3.jpg" class="image">
										<img src="img/gallery/thumbs/MD_g3.jpg" height="450px" />
									</a>
									<div class="caption">
										<h3>���̷���</h3>
										<p>�ʰ� �پ��� ��ǰ���ϰ� ���� ȭ��ǰ �� �Ǹ�</p>
										<ul class="actions fixed">
											<li><span class="button small">Details</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/MD_h2.jpg" class="image">
										<img src="img/gallery/thumbs/MD_h2.jpg" height="450px" />
									</a>
									<div class="caption">
										<h3>������ ��Ƽ��</h3>
										<p>�پ��� �׸��� ���ϰ� �뿡�� <br>���ΰ� �Բ� �� �� �ִ� ��.</p>
										<ul class="actions fixed">
											<li><span class="button small">Details</span></li>
										</ul>
									</div>
								</article>
							

							</div>

					</section>

				
		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min_course.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main_course.js"></script> 


</body>
</html>