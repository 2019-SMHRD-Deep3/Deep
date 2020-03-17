<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>종로</title>
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
			<% String act = "활동성향_자연경관감상"; %>
			<%= act %> <br>

			<% 
				// 이미지 경로명
				String url_1=""; String url_2=""; String url_3="";
			   
			    // 추천 코스명
			    String head_1 = ""; String head_2 = ""; String head_3 = "";
			   
			    // 추천 코스에 대한 설명문 
	  	    	String content_1 = "";  String content_2 = "";  String content_3 = "";
			   
			   if(act.equals("활동성향_고궁,역사유적지방문")|| act.equals("활동성향_전통문화체험")){
				   url_1 = "background-image: url('img/course/jr_a1.JPG');";
				   url_2 = "background-image: url('img/course/jr_a2.JPG');";
				   url_3 = "background-image: url('img/course/jr_a3.JPG');";
				   
				   head_1 = "Changdeokgung Palace";
				   head_2 = "Gyeongbokgung";
				   head_3 = "Insadong Street";
				   
				   content_1 = "Changdeokgung Palace is a Joseon Dynasty palace located in Seoul, South Korea,"+"<br>"+
						   "facing Changgyeonggung in the east." + "<br>"+
						   "In the east of Gyeongbokgung"+"<br>"+
						   "Palace, it was called Donggung along with Changgyeonggung in the Joseon Dynasty." ;
				   content_2 = "It was also called Bukgyeol because it was located in the north of Doseong."+"<br>"+
						   "It was founded in accordance with the establishment of the Joseon Dynasty and was initially used as a palace,"+"<br>"+
						   "but after being burned down during the Imjin War, it remained in ruins for a long time";
				   content_3 = "In the midst of the rapidly changing world, there is a street to preserve and inherit the unique style of Korea."+"<br>"+
						   "You can see a lot of Korean art, and traditional cars as well as temple food, and"+"<br>"+
						   "many things that come to mind when you say 'Korea' are in Insadong."+"<br>"+
						   "It is one of the most popular tourist destinations in Korea." ;
					
				}else if (act.equals("활동성향_공연,민속,행사,축제 관람및참가")|| act.equals("활동성향_박물관,전시관방문")){
					
					url_1 = "background-image: url('img/course/jr_b1.JPG');";
					url_2 = "background-image: url('img/course/jr_b2.JPG');";
					url_3 = "background-image: url('img/course/jr_b3.JPG');";
					
					head_1 = "Gwanghwamun Art Hall";
					head_2 = "Sejong Chungmugong Story";
					head_3 = "Gongpyeong City Ruins Exhibition Hall";
					   
					content_1 = "Gwanghwamun Art Hall is"+"<br>"+
							"located inside Jongno Culture and Sports Center in Jongno- gu Facility Management Corporation ."+"<br>"+
							"The outdoor garden, restaurant, cultural classroom, swimming pool, fitness center,"+"<br>"+
							"sports climbing field, etc."+"<br>"+
							"are available in a variety of facilities within Jongno Cultural Sports Center, making it more convenient.";
					content_2 = "The story of Sejong and Chungmugong"+"<br>"+
							"is an exhibition related to King Sejong the Great and Admiral Yi Sun-Sin located on the second floor of the Sejong Center for the Performing Arts ."+"<br>"+
							"In addition to exhibitions,"+"<br>"+
							"we also offer programs that allow you to experience traditional culture by wearing hanbok made by children's ages, from kindergarten students to elementary school students ." ;
					content_3 = "Gongpyeong Urban Heritage Exhibition is a city museum that preserves and displays the"+"<br>"+
							"16th century buildings and roads of the Joseon Dynasty excavated during the redevelopment process of downtown Gongpyeong 1, 2, and 4 districts."+"<br>"+
							"In the Gongpyeong City Heritage Exhibition Hall,"+"<br>"+
							"you can see the life and life of the Hanyang people during the Joseon Dynasty";
					
				}else if (act.equals("활동성향_놀이공원,테마파크")){
					
					url_1 = "background-image: url('img/course/jr_c1.JPG');";
					url_2 = "background-image: url('img/course/jr_c2.JPG');";
					url_3 = "background-image: url('img/course/jr_c3.JPG');";
					
					head_1 = "Running Man Experience Hall";
					head_2 = "Tezium Teddy Bear Theme Park";
					head_3 = "Ssamji-gil Experience Workshop";
					   
					content_1 = "New concept content to be the main character in TV programs !!"+"<br>"+
							"Become a running man yourself, find hidden R points, and"+"<br>"+
							"earn various running man badges and certificates depending on the points you earn.";
					content_2 = "Tezium Seoul, located in Jongno-gu, Seoul, is a teddy bear theme park."+"<br>"+
							"This is an open space type exhibition space where you can touch and hug the teddy bear. You can see"+"<br>"+
							"the origin, origin and history of the teddy bear."+"<br>"+
							"The Seoul Theme Zone introduces Seoul as a teddy bear from the old days to Seoul.";
					content_3 = "In the Ssamji-gil Experience Workshop,"+"<br>"+
							"experience programs such as Hyangyeon, Kim Yu-guk Hakhak Woodcraft School, Serra Week, and Glassborn are held."+"<br>"+
							"At the feast, you can make incense, soap, and cosmetics."+"<br>"+
							"You can experience Kim Soo-guk Hakhak Woodwork School,Hand Painted Ceramics at Serra Week,"+"<br>"+
							"and Glass Bottle Crafts at Glassborn." ;
					
					
				}else if (act.equals("활동성향_드라마,영화찰영지방문")){
					
					url_1 = "background-image: url('img/course/jr_d1.JPG');";
					url_2 = "background-image: url('img/course/jr_d2.JPG');";
					url_3 = "background-image: url('img/course/jr_d3.JPG');";
					
					head_1 = "Stone Wall Road (Goblin)";
					head_2 = "My Poetry (by fox hour)";
					head_3 = "Seonggwak-gil, Seoul";
					   
					content_1 = "Dukseong Girls 'High School and Pungmun Girls' High School in the alley between"+"<br>"+
							"Jieun Tak (Kim Go-eun) departed from Dukseong Girls 'High School to go to Pungmun Girls' High School";
								
					content_2 = "The Fox Star is a human melodramatic drama in which the"+"<br>"+
							"first year of an accident bundle with a mysterious new story and a mysterious story"+"<br>"+
							"collides with people in Incheon Airport to remedy each other's deficiencies and scars."+"<br>"+
							"My Poetry is the location of this drama in Hanok Street, Iksun-dong, Jongno-gu." ;
					content_3 = "The Prince of Rooftop Room is a time slip drama that goes back 300 years. There are traces of the drama around the"+"<br>"+
							"streets where the characters walked, the stairs that jumped, and"+"<br>"+
							"the scenery of Seoul spreading under the beautiful maple trees";
						
					
				}else if (act.equals("활동성향_뷰티관광")|| act.equals("활동성향_쇼핑")){
					
					url_1 = "background-image: url('img/course/jr_f1.JPG');";
					url_2 = "background-image: url('img/course/jr_f2.JPG');";
					url_3 = "background-image: url('img/course/jr_f3.JPG');";
					
					head_1 = "Insadong Street";
					head_2 = "Dongwha Duty Free";
					head_3 = "Jongno Precious Metal Street";
					   
					content_1 = "In the midst of the rapidly changing world, there"+"<br>"+
							"is a street to preserve and inherit the unique Korean style ."+"<br>"+
							"You can see a lot of Korean art, and traditional cars as well as temple food,and "+"<br>"+ 
							"many things that come to mind when you say 'Korea' are in Insadong."+"<br>"+
							"It is one of the most popular tourist destinations in Korea." ;
					content_2 = "Donghwa Duty Free is located in the basement of Gwanghwamun Building in Jongno,"+"<br>"+
							"and is the oldest duty free shop in Seoul that opened in 1973."+"<br>"+
							"More than 250"+"<br>"+
							"world-famous brands including Hermes, Louis Vuitton, Gucci and Bulgari are in store, and more than 300,000 "+"<br>"+
							"imported products are displayed and sold." ;
					content_3 = "ongno Precious Metal Street is a 40-year-old precious metal shopping street."+"<br>"+
							"Even now, there are active trades that account for 70% of the nation's jewelry trade ."+"<br>"+
							"Services and interiors have also been upgraded, and"+"<br>"+
							"young people who enjoy simple shopping as well as coma are frequent."+"<br>"+
							"It is also popular as a shopping course for foreigners." ;
					
					
				}else if (act.equals("활동성향_스포츠활동")|| act.equals("활동성향_레포츠활동")){
					
					url_1 = "background-image: url('img/course/jr_h1.JPG');";
					url_2 = "background-image: url('img/course/jr_h2.JPG');";
					url_3 = "background-image: url('img/course/jr_h3.JPG');";
					
					head_1 = "LoL Park";
					head_2 = "TCC The Core Climbing";
					head_3 = "Running Man Experience Hall";
					   
					content_1 = "There is a 'League of Legends (Roll)' stadium in Jongno (Jonggak Station) in central Seoul."+"<br>"+
							"Named 'LoL PARK', this e-sports-only stadium is characterized by a special space where you can watch the"+"<br>"+
							"League of Legends, the representative game of Riot Games, in a"+"<br>"+
							"more comfortable environment";
					content_2 = "Sports climbing is very effective for strength training and diet."+"<br>"+
							"Climbing is the most important of all, the strength and grip of the arm, and"+"<br>"+
							"once attached to the wall,"+"<br>"+
							"it is an exercise that allows you to immerse yourself in the present elbow without any other thoughts, since you are contemplating the next step and focusing on your body movements" ;
					content_3 = "New concept content to be the main character in TV programs !!"+"<br>"+
							"Become a running man yourself, find hidden R points, and"+"<br>"+
							"earn various running man badges and certificates depending on the points you earn.";	
				
				
				}else if (act.equals("활동성향_식도락관광")){
					
					url_1 = "background-image: url('img/course/jr_i1.JPG');";
					url_2 = "background-image: url('img/course/jr_i2.JPG');";
					url_3 = "background-image: url('img/course/jr_i3.JPG');";
					
					head_1 = "Hyoja Auto Meat";
					head_2 = "Earthenware house";
					head_3 = "Soonhee's Bindae Tteok";
					   
					content_1 = "It is a good place to sit and eat on a round table"+"<br>"+
							"selling pork meat, pork belly , and meat, which are popular pork meat and meat, near the Gyeongbukgung Station";
					content_2 = "Jongno 3-ga and Dukbaegi restaurants around Jonggak are very famous restaurants."+"<br>"+
							"The most representative menu in Ttukbaegi restaurant is Wooryong miso."+"<br>"+
							"This restaurant is also very popular among foreign tourists, so the"+"<br>"+
							"name of the restaurant is written in Japanese and English." ;
					content_3 = "Bindaetteok is a Korean side dish."+"<br>"+
							"Basically, it is a kind of mung bean stalk made by mixing green beans"+"<br>"+
							"with a base and mixing them with herbs or meat ." ;	
				
					
				}else if (act.equals("활동성향_자연경관감상")|| act.equals("활동성향_휴양,휴식")){
					
					url_1 = "background-image: url('img/course/jr_j1.jpg');";
					url_2 = "background-image: url('img/course/jr_j2.JPG');";
					url_3 = "background-image: url('img/course/jr_j3.JPG');";
					
					head_1 = "Cheonggyecheon";
					head_2 = "Bukchon Hanok Village";
					head_3 = "Mugyewon";
					   
					content_1 = "A stream flowing through the boundary between Jongno-gu and Jung-gu, in the middle of Seoul."+"<br>"+
							"All the water in the Seoul Basin gathers here,"+"<br>"+
							"merges with Jungnangcheon and falls into the Han River."+"<br>"+
							"The fountain's night view is great and it's a great place for a walk.";
					content_2 = "Old traces of Seoul."+"<br>"+
							"It is a place where you can see Korean traditional houses (Hanok), and"+"<br>"+
							"some houses are used as hanok stays and traditional tea houses for guests."+"<br>"+
							"It takes about 3 hours to walk around." ;
					content_3 = "Mugyewon is a traditional cultural space in the city that opened in Buam-dong, Jongno-gu."+"<br>"+
							"It is a special space where you can experience Hanok in a quiet scenery and feel the beauty of Korea through tradition and culture."+"<br>"+
							"Muchaewon's Anchae, Sarangchae, and Haengrangchae"+"<br>"+
							"can be used for seminars, lectures, conference rooms, etc., and"+"<br>"+
							"various traditional cultural events are also held at additional facilities such as Anchae floor, courtyard and backyard ." ;	
				}else {
					url_1 = "background-image: url('img/course/jr_a3.JPG');";
					url_2 = "background-image: url('img/course/jr_b2.JPG');";
					url_3 = "background-image: url('img/course/jr_h3.JPG');";
					
					head_1 = "Insadong Street";
					head_2 = "Sejong Chungmugong Story";
					head_3 = "Running Man Experience Hall";
					   
					content_1 = "In the midst of the rapidly changing world, there is a street to preserve and inherit the unique style of Korea."+"<br>"+
							   "You can see a lot of Korean art, and traditional cars as well as temple food, and"+"<br>"+
							   "many things that come to mind when you say 'Korea' are in Insadong."+"<br>"+
							   "It is one of the most popular tourist destinations in Korea." ;
					content_2 = "The story of Sejong and Chungmugong"+"<br>"+
							"is an exhibition related to King Sejong the Great and Admiral Yi Sun-Sin located on the second floor of the Sejong Center for the Performing Arts ."+"<br>"+
							"In addition to exhibitions,"+"<br>"+
							"we also offer programs that allow you to experience traditional culture by wearing hanbok made by children's ages, from kindergarten students to elementary school students ." ;
					content_3 = "New concept content to be the main character in TV programs !!"+"<br>"+
							"Become a running man yourself, find hidden R points, and"+"<br>"+
							"earn various running man badges and certificates depending on the points you earn.";
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
										<h3>Changdeokgung Palace</h3>
								<p>The Joseon Dynasty place<br>in Seoul, South Korea</p>
										<ul class="actions fixed"><li><span class="button small">Details</span></li></ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/jr_a3.JPG" class="image">
										<img src="img/gallery/thumbs/jr_a3.JPG" height="450px" /></a>
									<div class="caption">
										<h3>Insadong Street</h3>
										<p>A street that preserves Korean style<br> and is intended to be inherited.</p>
										<ul class="actions fixed"><li><span class="button small">Details</span></li></ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/jr_b1.JPG" class="image">
										<img src="img/gallery/thumbs/jr_b1.JPG" height="450px" /></a>
									<div class="caption">
										<h3>Gwanghwamun ArtHall</h3>
										<p>Outdoor garden, restaurant, cultural classroom,<br>swimming pool, gym, sports climbing field, etc.</p>
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
										<h3>Sejong Chungmugong Story</h3>
										<p>Located on the 2nd basement level of Sejong Center <br>Exhibitions related to King Sejong and General Yi Sun-sin</p>
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
										<h3>Gongpyeong City Ruins Exhibition Hall</h3>
										<p>Buildings and roads in the 16th century during the Joseon Dynasty <br>Urban museum preserved and displayed as it is</p>
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
										<h3>Running Man Experience Hall</h3>
										<p>To be the main character in a TV show <br> New concept content !!</p>
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
										<h3>Tezium Teddy Bear Theme Park</h3>
										<p>The origin and origin of teddy bears, history</p>
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
										<h3>Ssamji-gil Experience Workshop</h3>
										<p>Hyangyeon · Kim Yoo-guk Hakmok Woodwork School<br>Experience programs such as Serra Week and Glassborn</p>
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
										<h3>Stone Wall Road (Goblin)</h3>
										<p>Drama Goblin location</p>
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
										<h3>My Poetry (by fox hour)</h3>
										<p>Drama Fox Filming Location</p>
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
										<h3>Dongwha Duty Free</h3>
										<p>Over 250 world-famous brands launched</p>
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
										<h3>LoL Park</h3>
										<p>'League of Legends (LOL)' Stadium</p>
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
										<h3>TCC The Core Climbing</h3>
										<p>Very effective for diet as well as strength training</p>
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
										<h3>Cheonggyecheon</h3>
										<p>The heart of Seoul<br>A river flowing through the boundary between Jongno-gu and Jung-gu.</p>
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
										<h3>Bukchon Hanok Village</h3>
										<p>Old traces of Seoul. <br> A place to see Korean traditional houses (Hanok)</p>
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
										<h3>Mugyewon</h3>
										<p>Experience Hanok in a quiet scenery,<br>Through tradition and culture <br>
A special space where you can feel the beauty of Korea</p>
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