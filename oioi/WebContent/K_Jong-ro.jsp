<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>����</title>
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
			   
			   if(act.equals("Ȱ������_���,�����������湮")|| act.equals("Ȱ������_���빮ȭü��")){
				   url_1 = "background-image: url('img/course/jr_a1.JPG');";
				   url_2 = "background-image: url('img/course/jr_a2.JPG');";
				   url_3 = "background-image: url('img/course/jr_a3.JPG');";
				   
				   head_1 = "â����";
				   head_2 = "�溹��";
				   head_3 = "�λ絿�Ÿ�";
				   
				   content_1 = "â������ ���ѹα� ����Ư���ÿ� �ִ� ���� �ô� �ñȷ� "+"<br>"+"�������� â��ð� �´�� �ִ�."+"<br>"+
							   "�溹���� ���ʿ� �־ ���� �ô뿡�� "+"<br>"+"â��ð� ���Ҿ� �����̶� �ҷ���." ;
				   content_2 = "������ ���ʿ� �ִٰ� �Ͽ� �ϱ�(����)�̶�� �Ҹ�����. " +"<br>" + 
							   "���������� �Ǹ��� ���� â�ǵǾ� �ʱ⿡ �������� ���Ǿ����� "+"<br>"+"�����ֶ� �� ���ҵ� �� �������� ����� ���� �ִٰ� "+"<br>"+
						   	   "���� ���� ���� �� �߰ǵǾ� ��� �ñȷ� �̿�Ǿ���.";
				   content_3 = "������ �޺��ϴ� ���߿��� �ѱ� ������ ���� �����ϰ� ����Ϸ��� �Ÿ��� �ִ�. " +"<br>" + 
							   "�ѱ��� ���� ����ǰ�� �� �� �ְ� �������� ���� ���� ���ı���, " +"<br>" + 
							   "'�ѱ�' �ϸ� �������� ���� �͵��� �λ絿 �Ÿ��� �ִ�. " +"<br>" + 
							   "�ѱ����� �������� ���� ���� ������ �� �� �ϳ��̴�. " ;
					
				}else if (act.equals("Ȱ������_����,�μ�,���,���� ����������")|| act.equals("Ȱ������_�ڹ���,���ð��湮")){
					
					url_1 = "background-image: url('img/course/jr_b1.JPG');";
					url_2 = "background-image: url('img/course/jr_b2.JPG');";
					url_3 = "background-image: url('img/course/jr_b3.JPG');";
					
					head_1 = "��ȭ�� ��ƮȦ";
					head_2 = "���� �湫���̾߱�";
					head_3 = "���򵵽� �������ð�";
					   
					content_1 = "��ȭ�� ��ƮȦ�� ���α� �ü��������� "+"<br>"+"���ι�ȭü������ ���ο� �ڸ���� �ִ�."+"<br>"+
								"�߿�����, �������, ��ȭ����, ������, �ｺ��, "+"<br>"+"������Ŭ���̹��� �� ���ι�ȭü������ ���� �ִ� "+"<br>"+
								"�پ��� �δ�ü��� �̿��� �� �־� ���� ���ϴ�.";
					content_2 = "���� �̾߱⡤�湫�� �̾߱�� ������ȭȸ�� ���� 2���� ��ġ��"+"<br>"+" ������հ� �̼��� �屺�� ����������ȸ�̴�. "+"<br>"+
								"���ø� ����� ��ġ�������� �ʵ��л����� ����� ���̺��� "+"<br>"+"���۵� �Ѻ��� �԰� ���빮ȭ�� ü���� �� �ִ� "+"<br>"+"���α׷��� �����ϰ� �ִ�. " ;
					content_3 = "���򵵽��������ð��� ����1��2��4���� ���� �簳�� �������� "+"<br>"+"����� �����ô� 16���� �ǹ����� ���� "+"<br>"+
								"�״�� �����Ͽ� ������ ���ùڹ����̴�.  "+"<br>"+
								"���򵵽��������ð����� �����ô� �Ѿ� ������� "+"<br>"+"��Ȱ�� ���� ����� ���캼 �� �ִ�. " ;
					
				}else if (act.equals("Ȱ������_���̰���,�׸���ũ")){
					
					url_1 = "background-image: url('img/course/jr_c1.JPG');";
					url_2 = "background-image: url('img/course/jr_c2.JPG');";
					url_3 = "background-image: url('img/course/jr_c3.jpg');";
					
					head_1 = "���׸� ü���";
					head_2 = "������ �׵𺣾� �׸���ũ";
					head_3 = "������ ü�����";
					   
					content_1 = "TV ���α׷� �� ���ΰ��� �Ǵ� �Ű��� ������!!"+"<br>"+
								"���� ���׸��� �Ǿ� ������ R ����Ʈ�� ã��, "+"<br>"+"ȹ���� ����Ʈ�� ���� �پ��� ���׸� ������ �������� ��������.";
					content_2 = "���� ���α��� ��ġ�� ������ ������ �׵𺣾� �׸���ũ�̴�. "+"<br>"+
								"�׵𺣾 ���� ������ �Ⱦƺ��� ������ �̻�ü������ �������� "+"<br>"+"�׵𺣾��� ����� ����, ���縦 �� �� �ִ�."+"<br>"+
								"���� �׸� �������� �� ���� ������� ���� ��������� �׵𺣾�� �Ұ��ϰ� �ִ�." ;
					content_3 = "������ ü����濡���� �⿬�������� ���� ������б���������ũ��"+"<br>"+"�۶󽺺� ���� ü�����α׷��� �����Ѵ�. "+"<br>"+
								"�⿬������ ���ʡ��񴩡�ȭ��ǰ ���� ���� �� �ִ�. "+"<br>"+
								"������ ���� ������б������� �ڴ븦, "+"<br>"+"������ũ������ �ڵ������� ���ڱ⸦, "+"<br>"+
								"�۶󽺺������� ������������ ü���� �� �ִ�." ;
					
					
				}else if (act.equals("Ȱ������_���,��ȭ�������湮")){
					
					url_1 = "background-image: url('img/course/jr_d1.JPG');";
					url_2 = "background-image: url('img/course/jr_d2.JPG');";
					url_3 = "background-image: url('img/course/jr_d3.JPG');";
					
					head_1 = "�����(������)";
					head_2 = "���� ����Ʈ�� (���찢�ú�)";
					head_3 = "���� ������(��ž�� �ռ���)";
					   
					content_1 = "��� ������ �Կ��� ��������� ǳ������ ���� ��񿡼� "+"<br>"+"����Ź(�����)�� ����Ͽ� ���������� ǳ������ ���� "+"<br>"+
								"������ ������� ���� �Կ��ϱ� ���� �������� ���̴�.";
								
					content_2 = " ���찢�ú��� ����� ���� �ǹ��� ���԰� ��ƶ�� �翬�� ���� "+"<br>"+"���ġ 1������ ��õ���� �� ������ �ε����鼭"+"<br>"+
								"������ ���̰� ��ó�� ����� �޸� ��� ����̴�."+"<br>"+
								"���α� �ͼ��� �ѿ��Ÿ��� ���� ����Ʈ���� �ٷ� �� ����� �Կ����̴�. " ;
					content_3 = "��ž�� �ռ��ڴ�300�� ������ �Ž��� ������ �������� Ÿ�� ���� ��󸶴�."+"<br>"+
								"�����ι����� �ȴ� ��, �پ������ ��ܱ�, �Ƹ��帮 ��ǳ���� "+"<br>"+"�Ʒ��� �������� ������ ǳ�� �� �ֺ����� "+"<br>"+
								"����� ������ ������ ���� �ִ�.";
						
					
				}else if (act.equals("Ȱ������_��Ƽ����")|| act.equals("Ȱ������_����")){
					
					url_1 = "background-image: url('img/course/jr_f1.JPG');";
					url_2 = "background-image: url('img/course/jr_f2.JPG');";
					url_3 = "background-image: url('img/course/jr_f3.JPG');";
					
					head_1 = "�λ絿�Ÿ�";
					head_2 = "��ȭ�鼼��";
					head_3 = "���� �ͱݼ� �Ÿ�";
					   
					content_1 = "������ �޺��ϴ� ���߿��� �ѱ� ������ ����"+"<br>"+" �����ϰ� ����Ϸ��� �Ÿ��� �ִ�. " +"<br>" + 
							   "�ѱ��� ���� ����ǰ�� �� �� �ְ� �������� ���� ���� ���ı���, " +"<br>" + 
							   "'�ѱ�' �ϸ� �������� ���� �͵��� �λ絿 �Ÿ��� �ִ�. " +"<br>" + 
							   "�ѱ����� �������� ���� ���� ������ �� �� �ϳ��̴�. " ;
					content_2 = "���� ��ȭ������ ���� 1���� ��ġ�� ��ȭ �鼼���� "+"<br>"+"1973�� ���� �� ���￡�� ���� ������ �鼼���̴�."+"<br>"+
								"�����޽�, ���̺���, ����, �Ұ��� �� 250�� ���� "+"<br>"+"���� �ְ� ���� �귣�尡 �����Ǿ� ������ 30�� ���� �Ѵ�  "+"<br>"+
								"�پ��� ���Ի�ǰ�� ����, �Ǹŵǰ� �ִ�. " ;
					content_3 = "���� �ͱݼ� �Ÿ��� 40�� ������ �ͱݼ� �󰡴�. "+"<br>"+
								"���ݵ� ���� �־� �������� 70%�� ������ ��ŭ"+"<br>"+" Ȱ���� �ŷ��� �̷������ �ִ�. "+"<br>"+
								"���񽺳� ���׸��� ���� ���׷��̵�Ǿ� ȥ��ǰ�� �ƴ϶� "+"<br>"+" �ܼ� ������ ���� �������� �߱浵 ���."+"<br>"+
								"���� �ܱ��ε��� ���� �ڽ��ε� �α⸦ ���� �ִ�." ;
					
					
				}else if (act.equals("Ȱ������_������Ȱ��")|| act.equals("Ȱ������_������Ȱ��")){
					
					url_1 = "background-image: url('img/course/jr_h1.JPG');";
					url_2 = "background-image: url('img/course/jr_h2.JPG');";
					url_3 = "background-image: url('img/course/jr_h3.JPG');";
					
					head_1 = "����ũ(LoL Park)";
					head_2 = "TCC ���ھ�Ŭ���̹�";
					head_3 = "���׸� ü���";
					   
					content_1 = "���� �߽ɺ� ����(������)�� ������ ���� ������(��)�� ������� �ִ�."+"<br>"+
								"���� ��ũ(LoL PARK)���� ���� �̹� e������ ���� ������� "+"<br>"+" ���̾� �������� ��ǥ ������ ������ ���� �����塯 ��⸦ "+"<br>"+
								"���� ������ ȯ�濡�� ������ �� �ִ� "+"<br>"+" Ư���� �������� ������ ���� Ư¡�̴�.";
					content_2 = "������ Ŭ���̹��� �ٷ¿�� ���� ���̾�Ʈ���� �ſ� ȿ�����̴�. "+"<br>"+
								"Ŭ���̹��� �������ٵ� ���� ���� �Ƿ��� ���� �߿��ϸ�,"+"<br>"+" �ϴ� ���� ������ ���� ������ ����ϰ� ���� �����ӿ�"+"<br>"+
								"�����ϱ� ������ �ٸ� ���� ���� ���翤 ������ �� �ִ� ��̴�. " ;
					content_3 = "TV ���α׷� �� ���ΰ��� �Ǵ� �Ű��� ������!!"+"<br>"+
								"���� ���׸��� �Ǿ� ������ R ����Ʈ�� ã��, "+"<br>"+" ȹ���� ����Ʈ�� ���� �پ��� ���׸� ������ �������� ��������." ;	
				
				
				}else if (act.equals("Ȱ������_�ĵ�������")){
					
					url_1 = "background-image: url('img/course/jr_i1.JPG');";
					url_2 = "background-image: url('img/course/jr_i2.JPG');";
					url_3 = "background-image: url('img/course/jr_i3.JPG');";
					
					head_1 = "ȿ�ڵ�����";
					head_2 = "�ҹ����";
					head_3 = "����� ��붱";
					   
					content_1 = "��ϱÿ� ��ó�� ���� ���긮���� �αⰡ ���� ���� �����"+"<br>"+
								"����� �����, ���긮���� ���ַ� �Ĵ� "+"<br>"+"���׶� Ź�ڿ� �ѷ��ɾ� �Ļ��ϱ⿡ ����.";
					content_2 = "����3��, ���� �ֺ��� �ҹ������ ������ ������ �Ĵ��̴�."+"<br>"+
								"�ҹ�������� ���� ��ǥ���� �޴��� �췷�����Դϴ�."+"<br>"+
								"�� �Ĵ��� �ܱ��� �������鿡�Ե� ������ ������ �Ĵ��̾, "+"<br>"+"�Ϻ���, ����� �Ĵ��̸��� �����ִ�." ;
					content_3 = "��붱�� �ѱ��� ��ħ�丮�̴�."+"<br>"+
								"�⺻������ ��θ� �� ���� ���̽���, �����̳� ��� ���� ��� "+"<br>"+"�⸧�� ���� ����� ������ ��������� ���Ѵ�." ;	
				
					
				}else if (act.equals("Ȱ������_�ڿ��������")|| act.equals("Ȱ������_�޾�,�޽�")){
					
					url_1 = "background-image: url('img/course/jr_j1.jpg');";
					url_2 = "background-image: url('img/course/jr_j2.JPG');";
					url_3 = "background-image: url('img/course/jr_j3.JPG');";
					
					head_1 = "û��õ";
					head_2 = "���� �ѿ�����";
					head_3 = "�����";
					   
					content_1 = "������ �Ѻ����� ���α��� �߱����� ��踦 �帣�� ��õ."+"<br>"+
								"���� ������ ��� ���� ���⿡ �� "+"<br>"+"�߶�õ(������)�� ������  �Ѱ����� ������."+"<br>"+
								"�м� �߰��� ���� ������, ��å�ϱ� ���� ���̴�.";
					content_2 = "������ �� ����."+"<br>"+
								"�ѱ��� ���밡��(�ѿ�)�� �� �� �ִ� ������ "+"<br>"+"�Ϻ� ������ ���ڰ��� ���� �ѿ� ������, ���� �������� Ȱ��ǰ� �ִ�."+"<br>"+
								"�ɾ �ѷ����� �� �� 3�ð� �ҿ��." ;
					content_3 = "������� ���α� �ξϵ��� ������ ���� �� ���빮ȭ �����̴�. "+"<br>"+
								"������� ǳ�� �ӿ��� �ѿ��� ü���ϸ�,"+"<br>"+"����� ��ȭ�� ���� �ѱ��� �Ƹ��ٿ��� ���� �� �ִ� Ư���� �����̴�. "+"<br>"+
								"������� ��ä�� ���ä, ���ä�� ���̳�, ����, ȸ�ǽ� ������ "+"<br>"+"��� �����ϸ�, ��ä ����, �ȸ���� �޸��� �� "+"<br>"+
								"�δ�ü������� �پ��� ���빮ȭ ��絵 �����Ѵ�." ;	
				}else {
					url_1 = "background-image: url('img/course/jr_a3.JPG');";
					url_2 = "background-image: url('img/course/jr_b2.JPG');";
					url_3 = "background-image: url('img/course/jr_h3.JPG');";
					
					head_1 = "�λ絿 �Ÿ�";
					head_2 = "���� �湫���̾߱�";
					head_3 = "���׸� ü���";
					   
					content_1 = "������ �޺��ϴ� ���߿��� �ѱ� ������ ����"+"<br>"+" �����ϰ� ����Ϸ��� �Ÿ��� �ִ�. " +"<br>" + 
							   "�ѱ��� ���� ����ǰ�� �� �� �ְ� �������� ���� ���� ���ı���, " +"<br>" + 
							   "'�ѱ�' �ϸ� �������� ���� �͵��� �λ絿 �Ÿ��� �ִ�. " +"<br>" + 
							   "�ѱ����� �������� ���� ���� ������ �� �� �ϳ��̴�. " ;
					content_2 = "���� �̾߱⡤�湫�� �̾߱�� ������ȭȸ�� ���� 2���� ��ġ��"+"<br>"+" ������հ� �̼��� �屺�� ����������ȸ�̴�. "+"<br>"+
								"���ø� ����� ��ġ�������� �ʵ��л����� ����� ���̺��� "+"<br>"+"���۵� �Ѻ��� �԰� ���빮ȭ�� ü���� �� �ִ� "+"<br>"+"���α׷��� �����ϰ� �ִ�. " ;
					content_3 = "TV ���α׷� �� ���ΰ��� �Ǵ� �Ű��� ������!!"+"<br>"+
								"���� ���׸��� �Ǿ� ������ R ����Ʈ�� ã��, "+"<br>"+" ȹ���� ����Ʈ�� ���� �پ��� ���׸� ������ �������� ��������." ;	
					
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
									<a href="img/gallery/fulls/jr_a1.JPG" class="image">
										<img src="img/gallery/thumbs/jr_a1.JPG" height="450px" /></a>
									<div class="caption">
										<h3>â����</h3>
										<p>���ѹα� ����Ư���ÿ� �ִ� <br>���� �ô� �ñ�</p>
										<ul class="actions fixed"><li><span class="button small">Details</span></li></ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/jr_a3.JPG" class="image">
										<img src="img/gallery/thumbs/jr_a3.JPG" height="450px" /></a>
									<div class="caption">
										<h3>�λ絿�Ÿ�</h3>
										<p>�ѱ� ������ ���� �����ϰ� <br>����Ϸ��� �Ÿ�</p>
										<ul class="actions fixed"><li><span class="button small">Details</span></li></ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/jr_b1.JPG" class="image">
										<img src="img/gallery/thumbs/jr_b1.JPG" height="450px" /></a>
									<div class="caption">
										<h3>��ȭ�� ��ƮȦ</h3>
										<p>�߿�����, �������, ��ȭ����, <br>������, �ｺ��, ������Ŭ���̹��� ��</p>
										<ul class="actions fixed">
											<li><span class="button small">Details</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/jr_b2.JPG" class="image">
										<img src="img/gallery/thumbs/jr_b2.JPG" height="450px" />
									</a>
									<div class="caption">
										<h3>���� �湫���̾߱�</h3>
										<p>������ȭȸ�� ���� 2���� ��ġ�� <br>������հ� �̼��� �屺�� ����������ȸ</p>
										<ul class="actions fixed">
											<li><span class="button small">Details</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/jr_b3.JPG" class="image">
										<img src="img/gallery/thumbs/jr_b3.JPG" height="450px" />
									</a>
									<div class="caption">
										<h3>���򵵽� �������ð�</h3>
										<p>�����ô� 16���� �ǹ����� ���� <br>�״�� �����Ͽ� ������ ���ùڹ���</p>
										<ul class="actions fixed">
											<li><span class="button small">Details</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/jr_c1.JPG" class="image">
										<img src="img/gallery/thumbs/jr_c1.JPG" height="450px" />
									</a>
									<div class="caption">
										<h3>���׸� ü���</h3>
										<p>TV ���α׷� �� ���ΰ��� �Ǵ� <br> �Ű��� ������!!</p>
										<ul class="actions fixed">
											<li><span class="button small">Details</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/jr_c2.JPG" class="image">
										<img src="img/gallery/thumbs/jr_c2.JPG" height="450px" />
									</a>
									<div class="caption">
										<h3>������ �׵𺣾� �׸���ũ</h3>
										<p>�׵𺣾��� ����� ����, ����</p>
										<ul class="actions fixed">
											<li><span class="button small">Details</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/jr_c3.JPG" class="image">
										<img src="img/gallery/thumbs/jr_c3.JPG" height="450px" />
									</a>
									<div class="caption">
										<h3>������ ü�����</h3>
										<p>�⿬�������� ���� ������б���<br>������ũ���۶󽺺� ���� ü�����α׷��� ����</p>
										<ul class="actions fixed">
											<li><span class="button small">Details</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/jr_d1.JPG" class="image">
										<img src="img/gallery/thumbs/jr_d1.JPG" height="450px" />
									</a>
									<div class="caption">
										<h3>�����(������)</h3>
										<p>��� ������ �Կ��� </p>
										<ul class="actions fixed">
											<li><span class="button small">Details</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/jr_d2.JPG" class="image">
										<img src="img/gallery/thumbs/jr_d2.JPG" height="450px" />
									</a>
									<div class="caption">
										<h3>���� ����Ʈ�� (���찢�ú�)</h3>
										<p>��� ���� ���ú� �Կ���</p>
										<ul class="actions fixed">
											<li><span class="button small">Details</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/jr_f2.JPG" class="image">
										<img src="img/gallery/thumbs/jr_f2.JPG" height="450px" />
									</a>
									<div class="caption">
										<h3>��ȭ�鼼��</h3>
										<p>250�� ���� ���� �ְ� ���� �귣�尡 ����</p>
										<ul class="actions fixed">
											<li><span class="button small">Details</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/jr_h1.JPG" class="image">
										<img src="img/gallery/thumbs/jr_h1.JPG" height="450px" />
									</a>
									<div class="caption">
										<h3>����ũ(LoL Park)</h3>
										<p>������ ���� ������(��)�� �����</p>
										<ul class="actions fixed">
											<li><span class="button small">Details</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/jr_h2.JPG" class="image">
										<img src="img/gallery/thumbs/jr_h2.JPG" height="450px" />
									</a>
									<div class="caption">
										<h3>TCC ���ھ�Ŭ���̹�</h3>
										<p>�ٷ¿�� ���� ���̾�Ʈ���� �ſ� ȿ����</p>
										<ul class="actions fixed">
											<li><span class="button small">Details</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/jr_j1.jpg" class="image">
										<img src="img/gallery/thumbs/jr_j1.jpg" height="450px" />
									</a>
									<div class="caption">
										<h3>û��õ</h3>
										<p>������ �Ѻ����� <br>���α��� �߱����� ��踦 �帣�� ��õ.</p>
										<ul class="actions fixed">
											<li><span class="button small">Details</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/jr_j2.JPG" class="image">
										<img src="img/gallery/thumbs/jr_j2.JPG" height="450px" />
									</a>
									<div class="caption">
										<h3>���� �ѿ�����</h3>
										<p>������ �� ����. <br>�ѱ��� ���밡��(�ѿ�)�� �� �� �ִ� ��</p>
										<ul class="actions fixed">
											<li><span class="button small">Details</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/jr_j3.JPG" class="image">
										<img src="img/gallery/thumbs/jr_j3.JPG" height="450px" />
									</a>
									<div class="caption">
										<h3>�����</h3>
										<p>������� ǳ�� �ӿ��� �ѿ��� ü���ϸ�, <br>����� ��ȭ�� ���� <br>�ѱ��� �Ƹ��ٿ��� ���� �� �ִ� Ư���� ����</p>
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