<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Dongdaemun Fassion Town</title>
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
			<% 
				// 이미지 경로명
				String url_1=""; String url_2=""; String url_3="";
			   
			    // 추천 코스명
			    String head_1 = ""; String head_2 = ""; String head_3 = "";
			   
			    // 추천 코스에 대한 설명문 
	  	    	String content_1 = "";  String content_2 = "";  String content_3 = "";
			   
			   if(act.equals("활동성향_고궁,역사유적지방문")||act.equals("활동성향_전통문화체험")){
				   url_1 = "background-image: url('img/course/DDP_a1.jpg');";
				   url_2 = "background-image: url('img/course/DDP_a2.JPG');";
				   url_3 = "background-image: url('img/course/DDP_a3.JPG');";
				   
				   head_1 = "Dongdaemun History & Culture Park";
				   head_2 = "Heunginjimun";
				   head_3 = "";
				   
				   content_1 = "This park is built to show the old history of Seoul ," + "<br>" + 
				   				"built on the site of the old Dongdaemun Stadium in Jung-gu, Seoul. "+ "<br>" + 
						 	 	"Hanyangdoseong Sunseong-gil It is located in Heunginjimun section, " + "<br>" + 
				   				"so it is better to walk and visit Sunseong-gil."+ "<br>" + 
						   		"The Dongdaemun Design Plaza was constructed,  "+ "<br>" + 
						   		"but cultural heritages discovered during the demolition of the playground were discovered.";
				   content_2 = "Heunginjimun is one of the four main gates of Hanyang," + "<br>" +  "the capital of the Joseon Dynasty, and is the largest gate   "+ "<br>" +
						   		"in the east of the eight gates of the Seoul Castle created to protect the Hanseongbu." + "<br>" + 
						 	  "It is a cultural asset with a delicate and gorgeous beauty in the late Joseon Dynasty "+ "<br>" +
						   		"that looks thin and fragile and emphasizes the decoration."+ "<br>" +
						   		"Among the gates of Seoul, only the Sungnyemun and Heunginjimun "+ "<br>" +
						   		"were made of the second floor.";
				   content_3 = "Munru is the place where the longevity guards stay,  "+ "<br>" +
						   		"and in case of emergency it also served as a command post for commanding the military."  + "<br>" +
						   		"Outside the gates, brick walls and wooden windows  " + "<br>" + 
						   		"were installed to help prevent enemies.";
					
				}else if (act.equals("활동성향_공연,민속,행사,축제 관람및참가")||act.equals("활동성향_박물관,전시관방문")){
					
					url_1 = "background-image: url('img/course/DDP_b1.jpg');";
					url_2 = "background-image: url('img/course/DDP_b2.JPG');";
					url_3 = "background-image: url('img/course/DDP_b3.JPG');";
					
					head_1 = "Dongdaemun Milliore";
					head_2 = "Seoul Museum of History";
					head_3 = "Hanyang Provincial Museum";
					   
					content_1 = "Large shopping malls such as Migliore and Duta  "+ "<br>" +
								"are popular shopping spaces for young people," + "<br>" + 
								"such as teenagers and 20s.  " +"<br>" + 
								"They have outdoor concert halls in each mall to hold various events" + "<br>" + 
								"such as singer invitation performances, "+"<br>" + 
								"B-boy shows, dance competitions," +"<br>" +  "and even as a night tour course for foreigners." ;
					content_2 = "It provides a chance to experience and experience Seoul's culture "+ "<br>" +
								"and deepen the understanding and perception of Seoul" +"<br>" + 
								"while showing the history and traditional culture of Seoul in a historical way. " ;
					content_3 = "Like the tour of Hanyangdoseong Castle, "+ "<br>" +
								" here are several themes divided by section, "+ "<br>" +
								"and the old stories heard along the city are interesting,"+ "<br>" +
								"and there is also the beauty of viewing miniature castle models."+ "<br>" +
								" You can feel the old Seoul while slowly looking around with "+ "<br>" +
								"the old documents related to the castle, pictures of tools and screens.";
					
				}else if (act.equals("활동성향_놀이공원,테마파크")){
					
					url_1 = "background-image: url('img/course/DDP_c1.jpg');";
					url_2 = "background-image: url('img/course/DDP_c2.JPG');";
					url_3 = "background-image: url('img/course/DDP_c3.jpg');";
					
					head_1 = "Fanta VR Theme Park";
					head_2 = "Attraction Theme Park " + "<br>" + "‘Lattlier’";
					head_3 = "Illusion World";
					   
					content_1 = "VR boat, witch's broom, and so on." +"<br>" + 
								"There are places where multiple people can experience together," +"<br>" + 
								"and you can enjoy virtual reality as a one-person experience. "+ "<br>" +
								"In particular, picking up cakes and cutting fruit in a square cube is"+ "<br>" +
								"a popular experience for many people." ;
					content_2 = "'Lattelier' is an experiential theme park that allows  "+ "<br>" +
								" you to go on a journey into the space of that era," +"<br>" + 
								"in addition to appreciating the impressionist works . " +"<br>" + 
								"The entrance to the Ratellier, " +"<br>" + 
								"which depicts nine muses from Greek Roman mythology, is impressive.";
					content_3 = "It is a 37 VR experience zone centered on the Dongdaemun market." +"<br>" + 
								" You can have different experiences,  "+ "<br>" +
								"choose the VR you want and have fun, " + "<br>" +
								"and there are several arcade games to enjoy.";
					
					
				}else if (act.equals("활동성향_드라마,영화찰영지방문")){
					
					url_1 = "background-image: url('img/course/DDP_d1.jpg');";
					url_2 = "background-image: url('img/course/DDP_d2.jpg');";
					url_3 = "background-image: url('img/course/DDP_d3.jpg');";
					
					head_1 = "Seochon Alley" + "<br>" +"(She was pretty)";
					head_2 = "Dongdaemun Apartment " + "<br>" +" (Hide and Hide)";
					head_3 = "";
					   
					content_1 = "Korean dramas have a unique feeling created by a mixture of humor, "+ "<br>" +
								"romance and excitement."+ "<br>" +
								" Find the scene where the drama was made " +"<br>" + 
								"and recall the scene you like the most."+ "<br>" +
								"You can feel the shape of Gyeongseong as it is."+ "<br>" +
								"From charming Seochon alleys to Inwangsan "+ "<br>" +
								"and Dongdaemun Design Plaza with great views, "+ "<br>" +
								"there are many places for drama fans to go.";
					content_2 = "Apartment designated as a future heritage in Seoul. "+ "<br>" +
								"The designation of the future heritage was prepared by the Seoul Metropolitan Government"+ "<br>" +
								"as a countermeasure to preserve modern civilization.";
					content_3 = "The first apartment built by the Korea Housing Corporation," +"<br>" + 
								"completed in 1965. Even in the 1970s," +"<br>" + 
								" many celebrities lived and were called celebrity apartments." ;
					
					
				}else if (act.equals("활동성향_뷰티관광")||act.equals("활동성향_쇼핑")){
					
					url_1 = "background-image: url('img/course/DDP_f1.JPG');";
					url_2 = "background-image: url('img/course/DDP_f2.JPG');";
					url_3 = "background-image: url('img/course/DDP_f3.jpg');";
					
					head_1 = "Hyundai City Outlet (Lifestyle Mall)";
					head_2 = "Seoul Yangnyeong Market";
					head_3 = "Oriental Medicine Promotion Center";
					   
					content_1 = "Bread Garden, located on the 2nd floor, runs both baking products "+ "<br>" +
								"and Pinapore Baking Studio, " +"<br>" + 
								"so you can experience all of your purchases or experiences."+ "<br>" +
								"Each floor consists of an experiential lifestyle mall on the 1st "+ "<br>" +
								"and 2nd floors of the basement,"+ "<br>" + 
								"and a fashion outlet store on the 3rd and 8th floors."+ "<br>" +
								"F & B specialty halls are located on the 2nd and 9th floors, respectively.";
					content_2 = "It is the nation's largest comprehensive herbal medicine complex, "+ "<br>" +"and has over 800 herbal medicine-related stores." +"<br>" + 
								"You can also purchase rare medicines such as frogs, zara, " +"<br>" + 
								" and freshwater prawns that appear in various folk remedies," +"<br>" +
								"and there is a tangjewon, which makes it easy to pack "+"<br>" +
								" and pack the medicine for a fee of 10,000 won."+"<br>" +
								"In addition, the ginseng market sells ginseng,"+"<br>" +
								"red ginseng, white ginseng, various kinds of honey, "+"<br>" +
								"and domestically produced Youngji mushrooms.";
					content_3 = "Inside the Oriental Medicine Promotion Center,  "+ "<br>" +
								"built in a traditional hanok (total area of ​​9,604 ㎡)," +"<br>" + 
								"there are Oriental Medicine Museum, Oriental Medicine Experience Center, "+ "<br>" +
								"Oriental Medicine Promotion Center , and Oriental Medicine Cafe.";
					
					
				}else if (act.equals("활동성향_스포츠활동")|| act.equals("활동성향_레포츠활동")){
					
					url_1 = "background-image: url('img/course/DDP_h1.jpg');";
					url_2 = "background-image: url('img/course/DDP_h2.JPG');";
					url_3 = "background-image: url('img/course/DDP_h3.JPG');";
					
					head_1 = "Rock Bowling Alley (Lotte Fit Inn)";
					head_2 = "Novotel Ambassador";
					head_3 = "DS Daesung Sports";
					   
					content_1 = "It is a complex leisure space on the 5th floor and is about 490 square meters (150 pyeong) in size, with 7 lanes. In addition to bowling, you can enjoy darts and basketball games. ";
					content_2 = "The hotel has a modern and comfortable interior with the eaves of Heunginjimun. It is a 5-star hotel with 331 hotels and 192 residences with convenient kitchen facilities, buffet restaurant, lobby lounge bar, deli, rooftop bar, outdoor pool, fitness It has a sauna, a grand ballroom for up to 280 people, and a small multipurpose meeting room." ;
					content_3 = " The entire five-story building is only for baseball enthusiasts, and only for baseball brands. With a focus on the Mizuno brand, it is the same as the 'Yajijiji Temple' where you can directly contact about 20 global and domestic brands in one space." ;
					
					
				}else if (act.equals("활동성향_식도락관광")){
					
					url_1 = "background-image: url('img/course/DDP_i1.JPG');";
					url_2 = "background-image: url('img/course/DDP_i2.JPG');";
					url_3 = "background-image: url('img/course/DDP_i3.JPG');";
					
					head_1 = "Donghaehaemultang";
					head_2 = "Dongdaemun keunjib bossam";
					head_3 = "Dokkaebi bulgogi";
					   
					content_1 = "Located on the way go down Dongdaemun Castle Park. Haemultang is a crispy and cool broth-flavored food with red pepper paste seasoned in various seafood such as octopus, blue crab, octopus, shrimp, and shellfish. You can enjoy a variety of seafood flavors evenly. " ;
					content_2 = "Bossam is 'Boil the bone heads of select cattle or swine something wrapped in a beam press as heavy, but that after hardly made sliced eating food' of modern bossam is Slice the boiled pork with no odor cold cuts with baechusok seasoned raw clause It is a food wrapped in cabbage leaves. ";
					content_3 = "Dokkaebi Bulgogi is located in a restaurant area behind the APM shopping mall. You can enjoy ssam and bulgogi hotpot broth as food cooked by placing the bulgogi flavored with beef bone broth on a hot plate. In addition to bulgogi, you can taste other Korean food." ;
		
					
				}else if (act.equals("활동성향_자연경관감상")|| act.equals("활동성향_휴양,휴식")){
					
					url_1 = "background-image: url('img/course/DDP_j1.JPG');";
					url_2 = "background-image: url('img/course/DDP_j2.JPG');";
					url_3 = "background-image: url('img/course/DDP_j3.JPG');";
					
					head_1 = "Naksan Park";
					head_2 = "Dongdaemun Castle Park";
					head_3 = "Ehwa-dong Mural Painting Village";
					   
					content_1 = "If you are dizzy on a busy street with complicated streets and high-rise buildings, it is a place where you can meet a quiet atmosphere of walking trails with wonderful scenery. Let's take a relaxing romantic Seoul drink along the walls." ;
					content_2 = "It is about 2 subway stops from Dongdaemun Station to Hyehwamun through Naksan Park. ";
					content_3 = "If you descend from Naksan Park along the fortress road, there is a mural village on the right side of Ihwa-dong. If you continue go down the wall, you can take a tour of Seonggak-gil because it is connected to Heunginjimun Park and Hanyangdoseong Museum. There are many cafés with good views to walk and rest. ";
					
					
				}else {
					url_1 = "background-image: url('img/course/DDP_a1.jpg');";
					url_2 = "background-image: url('img/course/DDP_c1.jpg');";
					url_3 = "background-image: url('img/course/DDP_j1.JPG');";
					
					head_1 = "Dongdaemun History & Culture Park";
					head_2 = "Attraction Theme Park " + "<br>" + "‘Lattlier’";
					head_3 = "Naksan Park";
					
					content_1 = "It is the first parish of Korea and the symbol of the Korean Catholic Church. It has a rainbow-shaped ceiling, and the exterior shows its grandeur through Gothic decorations. A must-visit is the Underground Cathedral, located beneath the altar, which holds the fifth largest remains of adults and the fourth largest remains of ordinary martyrs who were victims of persecution by Catholics in the 19th century.";
     				content_2 = "You can enjoy a variety of shopping from luxury brands to SPA brands and bonded stores." + "<br>" + " The most popular shopping store is definitely a beauty store. " + "<br>" + "Myeongdong Shopping Street has many beauty brand stores. ";
					content_3 = "A place to sell clothes, various accessories, bag cosmetics and so on. There are many different types of places to visit, new clothes up to the second floor, and a shopping space with a vintage feel on the third and fourth floors." ;
				}
				
				
				
	
			%>
				

			
				<!-- One -->
					<!-- <section class="banner style1 orient-left content-align-left image-position-right fullscreen onload-image-fade-in onload-content-fade-right"> -->
					<section class="spotlight style1 orient-left content-align-left image-position-center onscroll-image-fade-in"  id="one" >
						<div class="content"  id="content1">
							<h1><%= head_1 %></h1>
							<p class="major"><%= content_1 %></p>
							<!-- 창을 아래로 내려주는 버튼  -->
							<ul class="actions stacked">
								<li><a href="#two" class="button big wide smooth-scroll-middle">go down</a></li>
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
								<li><a href="#three" class="button big wide smooth-scroll-middle">go down</a></li>
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
								<li><a href="#gallery" class="button big wide smooth-scroll-middle">go down</a></li>
							</ul>

						</div>
						<div class="image">
							<img class = "iii"  id= "img3" style = "<%= url_3 %>"/>
						</div>
					</section>
					


				<!-- Gallery -->
					<section class="wrapper style1 align-center">
						<br>	<h2>Gallery</h2>
						<ul class="actions stacked">
								<li><a href="#one" class="button">Go Up</a></li>
							</ul>

						<!-- Gallery -->
							<div class="gallery style2 medium lightbox onscroll-fade-in" id = "gallery">
							<article>
									<a href="img/gallery/fulls/DDP_a1.jpg" class="image">
										<img src="img/gallery/thumbs/DDP_a1.jpg" height="450px" /></a>
									<div class="caption">
										<h3>Dongdaemun History & Culture Park</h3>
										<p>Site of the old Dongdaemun Stadium<br> Park that protects the history of Seoul</p>
										<ul class="actions fixed"><li><span class="button small">Details</span></li></ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/DDP_a2.JPG" class="image">
										<img src="img/gallery/thumbs/DDP_a2.JPG" height="450px" /></a>
									<div class="caption">
										<h3>Heunginjimun</h3>
										<p>One of the four gates of Hanyang, the capital of Joseon</p>
										<ul class="actions fixed"><li><span class="button small">Details</span></li></ul>
									</div>
								</article>
								
								<article>
									<a href="img/gallery/fulls/DDP_b1.jpg" class="image">
										<img src="img/gallery/thumbs/DDP_b1.jpg" height="450px" /></a>
									<div class="caption">
										<h3>Dongdaemun Milliore</h3>
										<p>Shopping space loved by young people</p>
										<ul class="actions fixed"><li><span class="button small">Details</span></li></ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/DDP_b2.JPG" class="image">
										<img src="img/gallery/thumbs/DDP_b2.JPG" height="450px" /></a>
									<div class="caption">
										<h3>Seoul Museum of History</h3>
										<p>Provides an opportunity to experience and experience the culture of Seoul<br>
										<ul class="actions fixed">
											<li><span class="button small">Details</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/DDP_b3.JPG" class="image">
										<img src="img/gallery/thumbs/DDP_b3.JPG" height="450px" />
									</a>
									<div class="caption">
										<h3>Hanyang Provincial Museum</h3>
										<p>It's fun to listen to the old stories that follow Doseong, <br> Miniature castle model diagram <br> There is an interesting view.</p>
										<ul class="actions fixed">
											<li><span class="button small">Details</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/DDP_c1.jpg" class="image">
										<img src="img/gallery/thumbs/DDP_c1.jpg" height="450px" />
									</a>
									<div class="caption">
										<h3>Dongdaemun Fanta VR Theme Park</h3>
										<p>Exciting and thrilling VR experience  <br>
										<ul class="actions fixed">
											<li><span class="button small">Details</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/DDP_c2.JPG" class="image">
										<img src="img/gallery/thumbs/DDP_c2.JPG" height="450px" />
									</a>
									<div class="caption">
										<h3>Attraction Theme Park 'Lattlier'</h3>
										<p>In the space of the impressionist works  <br> Experience-type theme park where you can travel</p>
										<ul class="actions fixed">
											<li><span class="button small">Details</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/DDP_c3.jpg" class="image">
										<img src="img/gallery/thumbs/DDP_c3.jpg" height="450px" />
									</a>
									<div class="caption">
										<h3>Illusion World</h3>
										<p>Dongdaemun market center 37 VR experience zone <br> 
										<ul class="actions fixed">
											<li><span class="button small">Details</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/DDP_d1.JPG" class="image">
										<img src="img/gallery/thumbs/DDP_d1.JPG" height="450px" />
									</a>
									<div class="caption">
										<h3>Ehwa-dong Mural Village</h3>
										<p>'She was pretty'Drama Location</p>
										<ul class="actions fixed">
											<li><span class="button small">Details</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/DDP_f1.JPG" class="image">
										<img src="img/gallery/thumbs/DDP_f1.JPG" height="450px" />
									</a>
									<div class="caption">
										<h3>Hyundai City Outlet</h3>
										<p>Baking products for sale <br> Run the Pinapore Baking Studio together <br> </p>
										<ul class="actions fixed">
											<li><span class="button small">Details</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/DDP_f2.JPG" class="image">
										<img src="img/gallery/thumbs/DDP_f2.JPG" height="450px" />
									</a>
									<div class="caption">
										<h3>Seoul Yangnyeong Market</h3>
										<p>Korea's largest herbal medicine complex</p>
										<ul class="actions fixed">
											<li><span class="button small">Details</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/DDP_f3.jpg" class="image">
										<img src="img/gallery/thumbs/DDP_f3.jpg" height="450px" />
									</a>
									<div class="caption">
										<h3>Oriental Medicine Promotion Center</h3>
										<p>A place where there is an Oriental Medicine Museum, an herbal experience facility, <br>an herbal product promotion hall, and an oriental cafe.</p>
										<ul class="actions fixed">
											<li><span class="button small">Details</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/DDP_h2.JPG" class="image">
										<img src="img/gallery/thumbs/DDP_h2.JPG" height="450px" />
									</a>
									<div class="caption">
										<h3>Novotel Ambassador</h3>
										<p>Heunginjimun eaves motif <br>This is a 5 star hotel.</p>
										<ul class="actions fixed">
											<li><span class="button small">Details</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/DDP_i1.JPG" class="image">
										<img src="img/gallery/thumbs/DDP_i1.JPG" height="450px" />
									</a>
									<div class="caption">
										<h3>Donghaehaemultang</h3>
										<p> A place where you can taste a variety of seafood.</p>
										<ul class="actions fixed">
											<li><span class="button small">Details</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/DDP_j1.JPG" class="image">
										<img src="img/gallery/thumbs/DDP_j1.JPG" height="450px" />
									</a>
									<div class="caption">
										<h3>Naksan Park</h3>
										<p>Promenade with a quiet atmosphere </p>
										<ul class="actions fixed">
											<li><span class="button small">Details</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/DDP_i3.JPG" class="image">
										<img src="img/gallery/thumbs/DDP_i3.JPG" height="450px" />
									</a>
									<div class="caption">
										<h3>dongdaemun keunjibbossam</h3>
										<p>Bulgogi seasoned with beef bone broth</p>
										<ul class="actions fixed">
											<li><span class="button small">Details</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/DDP_j2.JPG" class="image">
										<img src="img/gallery/thumbs/DDP_j2.JPG" height="450px" />
									</a>
									<div class="caption">
										<h3>Dongdaemun Castle Park</h3>
										<p>Seonggwak-gil across from Heunginjimun</p>
										<ul class="actions fixed">
											<li><span class="button small">Details</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/DDP_j3.JPG" class="image">
										<img src="img/gallery/thumbs/DDP_j3.JPG" height="450px" />
									</a>
									<div class="caption">
										<h3>Ehwa-dong Mural Painting Village</h3>
										<p>Beautiful village road with murals of various themes </p>
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