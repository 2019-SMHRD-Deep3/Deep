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
				String url_1=""; 
				String url_2="";
			    String url_3="";
			   
			    // ��õ �ڽ���
			    String head_1 = "";
			    String head_2 = "";
			    String head_3 = "";
			   
			    // ��õ �ڽ��� ���� ���� 
	  	    	String content_1 = "";
	     	    String content_2 = "";
			    String content_3 = "";
			   
			   if(act.equals("���,�����������湮")){
				   url_1 = "background-image: url('img/course/MD_a1.jpg');";
				   url_2 = "background-image: url('img/course/MD_a2.jpg');";
				   url_3 = "background-image: url('img/course/MD_a3.jpg');";
				   
				   head_1 = "�� ����";
				   head_2 = "���빮";
				   head_3 = "���� �ѿ�����";
				   
				   content_1 = "�������� �츮���� ������ �����̸� �ѱ� õ�ֱ�ȸ�� ��¡�̴�." +"<br>" + 
						      "������ ������ �ø� õ������ �Ǿ� �ְ�, �ܺδ� ��������" +"<br>" +" ���� �������� �巯���� �ִ�." + "<br>" + 
				    		  "������ ���� �鷯 ���� �� ���� ���� �Ʒ��ʿ� �ִ� ���ϼ�������" +"<br>" + "19���� õ�ֱ� ���ط� ������� ���� ���� 5���� �Ϲ� ������ ����" + "<br>" + "4���� �����ϰ� �ִ�." ;
				   content_2 = "�����ô� �Ǳ��� �Բ� ������ ����� õ���ϸ鼭 �Ǹ��� �������� ������ �ѱ��� ���๰." + "<br>" + 
						 	  "�Ѱ����κ��� ������ �ִܰŸ��� �̾��ִ� �빮���� ����� ������ ������ ���� ���� �����̾���."+ "<br>" + 
						 	  "1899�� ������ ������� ���̻� ������ ������ ���Ͽ��� ���� ���ʹ� �������� �Ϻ� ������ �����ִ�.";
				   content_3 = "������ �� ����."  + "<br>" +
						   		"�ѱ��� ���밡��(�ѿ�)�� �� �� �ִ� ������ �Ϻ� ������ ���ڰ��� ���� �ѿ� ������, ���� �������� Ȱ��ǰ� �ִ�." + "<br>" +
						   		"�ɾ �ѷ����� �� �� 3�ð� �ҿ�ȴ�." ;
					
				}else if (act.equals("����,�μ�,���,���� ����������")){
					
					url_1 = "background-image: url('img/course/MD_b1.jpg');";
					url_2 = "background-image: url('img/course/MD_b2.jpg');";
					//url_3 = "background-image: url('img/course/MD_h1.jpg');";
					
					head_1 = "����������";
					head_2 = "��Ÿ����";
					head_3 = "�� ����ŷ";
					   
					content_1 = "aaa";
					content_2 = "bbb" ;
					content_3 = "�� �и����� �տ��� �پ��� ������ �����⵵ �Ѵ�."+ "<br>" +
								"���� �α� ���̵��׷��̳� �����ε��� �ҵ�� �����ϴ� �����̴�."+ "<br>" +
								"�����̼� ��Ÿ�� �� �� �ִ� ��ȸ�� ���� �� �ִ�." ;
					
				}else if (act.equals("����,�μ�,���,���� ����������")){
					
					url_1 = "background-image: url('img/course/MD_b1.jpg');";
					url_2 = "background-image: url('img/course/MD_b2.jpg');";
					//url_3 = "background-image: url('img/course/MD_h1.jpg');";
					
					head_1 = "����������";
					head_2 = "��Ÿ����";
					head_3 = "�� ����ŷ";
					   
					content_1 = "aaa";
					content_2 = "bbb" ;
					content_3 = "cccc" ;
					
				}
				
				
				
				
				
				
				
				
				
				else{
					out.print("����");
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
										<img src="img/gallery/thumbs/MD_a1.jpg" height="450px" />
									</a>
									<div class="caption">
										<h3>Title</h3>
										<p>Lorem ipsum dolor amet, consectetur magna etiam elit. Etiam sed ultrices.</p>
										<ul class="actions fixed">
											<li><span class="button small">Details</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/aa.jpg" class="image">
										<img src="img/gallery/thumbs/aa.jpg" height="450px" />
									</a>
									<div class="caption">
										<h3>Title</h3>
										<p>Lorem ipsum dolor amet, consectetur magna etiam elit. Etiam sed ultrices.</p>
										<ul class="actions fixed">
											<li><span class="button small">Details</span></li>
										</ul>
									</div>
								</article>
								
								<article>
									<a href="img/gallery/fulls/MD_a3.jpg" class="image">
										<img src="img/gallery/thumbs/MD_a3.jpg" height="450px" />
									</a>
									<div class="caption">
										<h3>Title</h3>
										<p>Lorem ipsum dolor amet, consectetur magna etiam elit. Etiam sed ultrices.</p>
										<ul class="actions fixed">
											<li><span class="button small">Details</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/MD_b1.jpg" class="image">
										<img src="img/gallery/thumbs/MD_b1.jpg" height="450px" />
									</a>
									<div class="caption">
										<h3>Title</h3>
										<p>Lorem ipsum dolor amet, consectetur magna etiam elit. Etiam sed ultrices.</p>
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
										<h3>Title</h3>
										<p>Lorem ipsum dolor amet, consectetur magna etiam elit. Etiam sed ultrices.</p>
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
										<h3>Title</h3>
										<p>Lorem ipsum dolor amet, consectetur magna etiam elit. Etiam sed ultrices.</p>
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
										<h3>Title</h3>
										<p>Lorem ipsum dolor amet, consectetur magna etiam elit. Etiam sed ultrices.</p>
										<ul class="actions fixed">
											<li><span class="button small">Details</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/MD_c3.jpg" class="image">
										<img src="img/gallery/thumbs/MD_b2.jpg" height="450px" />
									</a>
									<div class="caption">
										<h3>Title</h3>
										<p>Lorem ipsum dolor amet, consectetur magna etiam elit. Etiam sed ultrices.</p>
										<ul class="actions fixed">
											<li><span class="button small">Details</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/MD_d1.jpg" class="image">
										<img src="images/gallery/thumbs/MD_d1.jpg" height="450px" />
									</a>
									<div class="caption">
										<h3>Title</h3>
										<p>Lorem ipsum dolor amet, consectetur magna etiam elit. Etiam sed ultrices.</p>
										<ul class="actions fixed">
											<li><span class="button small">Details</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/MD_d2.jpg" class="image">
										<img src="images/gallery/thumbs/MD_d2.jpg" height="450px" />
									</a>
									<div class="caption">
										<h3>Title</h3>
										<p>Lorem ipsum dolor amet, consectetur magna etiam elit. Etiam sed ultrices.</p>
										<ul class="actions fixed">
											<li><span class="button small">Details</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/MD_e1.jpg" class="image">
										<img src="images/gallery/thumbs/MD_e1.jpg" height="450px" />
									</a>
									<div class="caption">
										<h3>Title</h3>
										<p>Lorem ipsum dolor amet, consectetur magna etiam elit. Etiam sed ultrices.</p>
										<ul class="actions fixed">
											<li><span class="button small">Details</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/MD_e2.jpg" class="image">
										<img src="images/gallery/thumbs/MD_e2.jpg" height="450px" />
									</a>
									<div class="caption">
										<h3>Title</h3>
										<p>Lorem ipsum dolor amet, consectetur magna etiam elit. Etiam sed ultrices.</p>
										<ul class="actions fixed">
											<li><span class="button small">Details</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/MD_h1.jpg" class="image">
										<img src="images/gallery/thumbs/MD_h1.jpg" height="450px" />
									</a>
									<div class="caption">
										<h3>Title</h3>
										<p>Lorem ipsum dolor amet, consectetur magna etiam elit. Etiam sed ultrices.</p>
										<ul class="actions fixed">
											<li><span class="button small">Details</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/01.jpg" class="image">
										<img src="images/gallery/thumbs/12.jpg" height="450px" />
									</a>
									<div class="caption">
										<h3>Title</h3>
										<p>Lorem ipsum dolor amet, consectetur magna etiam elit. Etiam sed ultrices.</p>
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