<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���빮</title>
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
			<%-- <% String act = (String)request.getParameter("act"); %> --%>
			<% String act = "Ȱ������_�ڿ��������"; %>
			<%= act %> <br>

			<% 
				// �̹��� ��θ�
				String url_1=""; String url_2=""; String url_3="";
			   
			    // ��õ �ڽ���
			    String head_1 = ""; String head_2 = ""; String head_3 = "";
			   
			    // ��õ �ڽ��� ���� ���� 
	  	    	String content_1 = "";  String content_2 = "";  String content_3 = "";
			   
			   if(act.equals("Ȱ������_���,�����������湮")||act.equals("Ȱ������_���빮ȭü��")){
				   url_1 = "background-image: url('img/course/DDP_a1.jpg');";
				   url_2 = "background-image: url('img/course/DDP_a2.JPG');";
				   url_3 = "background-image: url('img/course/DDP_a3.JPG');";
				   
				   head_1 = "���빮 ���繮ȭ����";
				   head_2 = "��������";
				   head_3 = "";
				   
				   content_1 = "����Ư���� �߱��� �� ���빮��� ������ ����� " + "<br>" + 
				   				"������ �� ���縦 �����ַ��� ������ ������� �����̴�. "+ "<br>" + 
						 	 	"�Ѿ絵�� ������ �������� ������ ������ " + "<br>" + 
				   				"�������� �ȴٰ� �湮�ϴ� ���� ����."+ "<br>" + 
						   		"���빮�������ö��ڸ� �Ǽ��ߴµ� ����� ö���ϴ� �������� "+ "<br>" + 
						   		"�߱��� �����ô��� ��ȭ������� �߰ߵǾ���.";
				   content_2 = "��������(������ڦ)�� ������ ������ �Ѿ��� 4�빮(��ڦ) ���� �ϳ���, �Ѽ��θ� ��ȣ�ϱ� ���� ���� ���� ������ ���� ���� ��� ������ ū �빮�� �ش��Ѵ�.  "+ "<br>" +
						   		"������ ���ð� ������ ���̸� ����� ������ ���� ���� �ı��� �����ϰ� ȭ���� �Ƹ��ٿ��� ���� ��ȭ��� ����� �¿��� ������ ��� ����� ������ ���Ҵ�." + "<br>" + 
						 	  "������ ���� ��� ���縦 2������ ���� ���� ���ʹ��� ���������ۿ� ����.";
				   content_3 = "����� ���� ��Ű�� ����� �ӹ��� ������ "+ "<br>" +"����ÿ��� ���縦 �����ϴ� ���ּ��� ���ҵ� �ߴ�."  + "<br>" +
						   		"���� �ٱ����δ� ������ �� ����� ���������� �� â���� ��ġ�ؼ� " + "<br>" + "���� ���� �� �����ϰ� �Ͽ���.";
					
				}else if (act.equals("Ȱ������_����,�μ�,���,���� ����������")||act.equals("Ȱ������_�ڹ���,���ð��湮")){
					
					url_1 = "background-image: url('img/course/DDP_b1.jpg');";
					url_2 = "background-image: url('img/course/DDP_b2.JPG');";
					url_3 = "background-image: url('img/course/DDP_b3.JPG');";
					
					head_1 = "���빮 �и�����";
					head_2 = "���� ���� �ڹ���";
					head_3 = "�Ѿ絵���ڹ���";
					   
					content_1 = "�и�����, ��Ÿ ���� ���� ���θ��� 10��� 20�� �� ����������  "+ "<br>" +"����޴� ���� ��������  ���θ����� �߿ܰ������� �����Ͽ�  " +"<br>" + 
								"������û����, ���̼�, ���濬 �� �پ��� �̺�Ʈ�� ���� ������ �ܱ��ε��� �߰� ���� �ڽ��ε� �̸��� ���̴�."+"<br>" + 
								"���α� ������� ũ�� ���� �̺�Ʈ ������ Ȱ��ȭ �Ǿ� �ְ�  "+ "<br>" +" ���� ���߸� �յΰ� �ִ� ���̵� �׷��� ������ �����⵵ �Ѵ�.";
					content_2 = "�������� ������ ����� ���빮ȭ�� �����Ͽ� ���������ν�  "+ "<br>" +" ���￡ ���� ���ؿ� �ν��� ��ȭ�ϴ� ���� ����ù� �� ������ ã��" +"<br>" + 
								"���ܱ��ε鿡�� ������ ��ȭ�� ������ ü���� ��ȸ�� �����Ѵ�. " ;
					content_3 = "�Ѿ絵�� �ѷ������ ���� �������� ��� ������ ������"+ "<br>" +
								" ���� ���� ��� �����̾߱⵵ ����ְ�, "+ "<br>" +
								"�̴Ͼ�ó�� ������� ���� ������ �����ϴ� ���̰� �ִ�."+ "<br>" +
								"���� ���� �� ����� ���� �� ��ũ���� �ִ� ������ �Բ�"+ "<br>" +
								"õõ�� �ѷ����鼭 �� ������ ���� �� �ִ�. ";
					
				}else if (act.equals("Ȱ������_���̰���,�׸���ũ")){
					
					url_1 = "background-image: url('img/course/DDP_c1.jpg');";
					url_2 = "background-image: url('img/course/DDP_c2.JPG');";
					url_3 = "background-image: url('img/course/DDP_c3.jpg');";
					
					head_1 = "��Ÿ VR �׸���ũ";
					head_2 = "��Ʈ��Ƽ�� �׸���ũ " + "<br>" + "����㸮����";
					head_3 = "�Ϸ�� ����";
					   
					content_1 = "VR��Ʈ, ������ ���ڷ� ���� Ÿ�� �̸����� �����̸鼭" +"<br>" + 
								"�����ϰ� ü���ϸ� ��� �� �ִ� ��." +"<br>" + 
								"�������� ���� ü���� �� �ִ� ���� �ְ�, "+ "<br>" +"1�� ü������ ���������� ��� ���� �ִ�."+ "<br>" +
								"Ư�� �簢ť�� �ȿ��� ����ũ �ݱ�� �����ڸ����" + "<br>" +
								" ���� ����鿡�� �α��ִ� ü���̴�.";
					content_2 = "��㸮��'�� �λ����� ��ǰ�� ������ �����ϴ� �Ϳ� ���ư� "+ "<br>" +"�� �ô��� ���� ������ ������ ���� �� �ִ� ü���� �׸���ũ��." +"<br>" + 
								"�׸��� �θ� ��ȭ�� ������ 9���� ��� ����ȭ�� ��㸮�� �Ա��� �λ����̴�. ";
					content_3 = "���빮 ���� �߽� 37���� VRü�� ���̴�." +"<br>" + 
								" ���� �ٸ� ü���� �� �� �ְ�, ���ϴ� VR�� �����Ͽ� ����ְ� �� �� �ְ�, "+ "<br>" +"�����̵� ���ӵ� ��� �־ �پ��ϰ� ��� �� �ִ�. " ;
					
					
				}else if (act.equals("Ȱ������_���,��ȭ�������湮")){
					
					url_1 = "background-image: url('img/course/DDP_d1.jpg');";
					url_2 = "background-image: url('img/course/DDP_d2.jpg');";
					url_3 = "background-image: url('img/course/DDP_d3.jpg');";
					
					head_1 = "���̰��" + "<br>" +"(�׳�� ������)";
					head_2 = "���빮 ����Ʈ(���ٲ���)";
					head_3 = "";
					   
					content_1 = "�ѱ� ��󸶿��� ����, �θǽ��� ����� �ڼ��� ������� Ư���� ������ �ִ�. "+ "<br>" +"��󸶰� ���۵Ǿ��� ������ ã�� ����� ���� �����ϴ� �� ����� �ǻ��� ����. "+ "<br>" +" �漺�� ����� �״�� ���� �� �ִ�." +"<br>" + 
								"�Ʊ��ڱ��� ���� ������ ���� ��ġ�� �οջ��̳�"+ "<br>" +
								"���빮�������ö��ڱ���, ��� ���� ���� ���� ����.";
					content_2 = "����� �̷��������� ������ ����Ʈ. "+ "<br>" +"�̷� ���� ������ ����ð� ������ ���� ���� ��å���� ������ ���̴�.";
					content_3 = "�������ð��簡 ������ ù ����Ʈ�� 1965�� �ϰ��ƴ�." +"<br>" + 
								"1970��븸 �ϴ��� �����ε��� ���� ��� �����ξ���Ʈ�ε� �ҷȴ�." ;
					
					
				}else if (act.equals("Ȱ������_��Ƽ����")||act.equals("Ȱ������_����")){
					
					url_1 = "background-image: url('img/course/DDP_f1.JPG');";
					url_2 = "background-image: url('img/course/DDP_f2.JPG');";
					url_3 = "background-image: url('img/course/DDP_f3.jpg');";
					
					head_1 = "�����Ƽ�ƿ﷿(������ ��Ÿ�ϸ�)";
					head_2 = "�����ɽ���";
					head_3 = "�ѹ����＾��";
					   
					content_1 = "2���� ��ġ�� �극�尡���� ����ŷ ��ǰ �Ǹſ� "+ "<br>" +"�ǳ����� ����ŷ ��Ʃ����� ���� ��ϰ� �ֱ� ������" +"<br>" + 
								"���� or ü�� ���� ������ �� �ִ�."+ "<br>" +
								"���� ������ ����1~2�� ü���� ��������Ÿ�ϸ�,"+ "<br>" +
								"3~8�� �мǾƿ﷿ ������ �ְ�,"+ "<br>" + "���� 2���� 9������ F&B �������� ���� ����.";
					content_2 = "���� �ִ��� ���Ǿ� ���� ������, 800�� ���� �Ѵ� �Ѿ� ���� ������ Ȯ���ϰ� �ִ�. "+ "<br>" +"���� �ΰ� ����� �����ϴ� ������, �ڶ�, �ι����� �� ����� ���絵 ������ �� ������," +"<br>" + 
								"�������� �־� ������ 1�� �� ������ �����ϸ� ���� �Ա� ���ϰ� �к� ���� ���ش�." +"<br>" + 
								" ���� �λ� ���忡���� �λ�, ȫ��, �̻�� ���� ��," +"<br>" +
								"������ �������� ���� �Ǹ��Ѵ�.";
					content_3 = "���� �ѿ� ����(������ 9õ604��)�� ������ �ѹ����＾�� �ȿ��� "+ "<br>" +"���Ǿ�ڹ���, �ѹ�ü��ü�, �ѹ��ǰȫ����, �ѹ�ī�䰡 �ִ�." +"<br>" + 
								"���ʹ� �ѹ� õ�� ���� ���� ����� ���̰� �¿� ��Ʈ�� �������� �� "+ "<br>" +"�پ��� ü�� �������� ������ �������� �����ɽ÷� ������δٴ� ��ȹ�̴�." ;
					
					
				}else if (act.equals("Ȱ������_������Ȱ��")|| act.equals("Ȱ������_������Ȱ��")){
					
					url_1 = "background-image: url('img/course/DDP_h1.jpg');";
					url_2 = "background-image: url('img/course/DDP_h2.JPG');";
					url_3 = "background-image: url('img/course/DDP_h3.JPG');";
					
					head_1 = "�� ������(�Ե���Ʈ��)";
					head_2 = "�뺸�� �ڹ輭��";
					head_3 = "DS�뼺������";
					   
					content_1 = "5���� ���շ����������� "+ "<br>" +"490����(150����) �Ը��̸�, 7�� ������ ����."+ "<br>" +
								"���� �ܿ��� ��Ʈ, �󱸰��� ���� ��� �� �ִ�.";
					content_2 = "���������� ó���� ��Ƽ��� ����ϰ� �ȶ��� ���׸�� �����̴� ȣ�ڷ�" +"<br>" +
								"5�� �Ը�� 331���� ȣ�ڰ� ���� �ֹ�ü��� ���� 192���� ��������, ���� �������, "+ "<br>" +"�κ����� ��, ����, ������ ��, �߿� ������, ��Ʈ�Ͻ��� ��쳪 ���� ���߰� ������" +"<br>" +
								"�ִ� 280����� ���� ������ �׷��� ����, �ұԸ� �ٸ��� ���� �� ���� ����� �ִ�." ;
					content_3 = " 5�� �ǹ� ��ü�� ���� �߱� ���ϾƸ��� ����, �߱� �귣�常 ����ϴ� ���̴�." + "<br>" +
								"����� �귣�带 �������� 20�� ���� �۷ι� �귣�� �� ���� �귣�带 �� �������� " + "<br>" + "���� ���� �� �ִ� ���߱��������� ���� ������"+ "<br>" + 
								"5������ Ÿ�ݰ� ���� ���� �������� ���õ� �־� �׽�Ʈ�� �����ϴ�." ;
					
					
				}else if (act.equals("Ȱ������_�ĵ�������")){
					
					url_1 = "background-image: url('img/course/DDP_i1.JPG');";
					url_2 = "background-image: url('img/course/DDP_i2.JPG');";
					url_3 = "background-image: url('img/course/DDP_i3.JPG');";
					
					head_1 = "�����ع���";
					head_2 = "���빮 ū������";
					head_3 = "������ �Ұ��";
					   
					content_1 = "���빮�������� �������� �濡 ��ġ��. "+ "<br>" +
								"�ع����� ����, �ɰ�, ����, ����, ������� ���� ���� �ػ깰�� "+ "<br>" +
								"������ ����� �־� ĮĮ�ϰ� �ÿ��� ���� ���� �� ��������  "+ "<br>" +"�̽��ϰ� �پ��� �ػ깰�� ���� ���� ��� �� �ִ�.";
					content_2 = "������ '��Ƽ� ���� �߷��� �� �Ǵ� ���� ������ �Ӹ��� ���� �μ� ���ſ� ������ ����  "+ "<br>" +
								"�ܴ��ϰ� ���� �� �� �Դ� ����'�̶�� �Ͽ�����,"+ "<br>" +
								"������ ������ �������� ���� ������⸦ �������� ���"+ "<br>" +
								"���߼� �������̿� �Բ� �����ٿ� �μ� �Դ� �����̴�. " ;
					content_3 = "������Ұ��� APM���θ� ������ �Ĵ簡�� ��ġ��."+ "<br>" +
								"��������� ���� �� �Ұ�⸦ ���� ���� �÷�   "+ "<br>" +"������ �������� �Ӱ� �Ұ�� ���� ������ ���� ��� �� �ִ�. "+ "<br>" +
								"�Ұ�� �ܿ��� �ٸ� �ѱ������� ���� �� �ִ�. ";
		
					
				}else if (act.equals("Ȱ������_�ڿ��������")|| act.equals("Ȱ������_�޾�,�޽�")){
					
					url_1 = "background-image: url('img/course/MD_j1.jpg');";
					url_2 = "background-image: url('img/course/MD_j2.jpg');";
					url_3 = "background-image: url('img/course/MD_j3.jpg');";
					
					head_1 = "�������";
					head_2 = "���빮 ��������";
					head_3 = "��ȭ����ȭ����";
					   
					content_1 = "������ �Ÿ��� ���������� ����� �Ÿ��� �������ٸ�,  "+ "<br>" +
								"���� ǳ���� ���� ������� �������� ��å���� ���� �� �ִ� ���̴�. "+ "<br>" +"������ ���� �����ο� �������� ���︶���� ��������. ";
					content_2 = "���빮 ������ ���� �������� �ǳ��� ������ �������� "+ "<br>" +
								"��������� ���� ��ȭ������ ����ö 2������ �����Ǵ� �Ÿ��̴�. ";
					content_3 = "����������� �������� ���� �������� �������� ��ȭ�� ��ȭ������ �ְ�, "+ "<br>" +
								"�� �������� ���� ��� �������� �������������� "+ "<br>" +
								"�Ѿ絵���ڹ������� ����Ǿ� �־� ������ ��� �� �� �ִ�."+ "<br>" + 
								"�ȴٰ� ������ ������ �������� ī�䰡 ����.";
					
					
				}else {
					url_1 = "background-image: url('img/course/DDP_a1.jpg');";
					url_2 = "background-image: url('img/course/DDP_g1.jpg');";
					url_3 = "background-image: url('img/course/DDP_g3.jpg');";
					
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