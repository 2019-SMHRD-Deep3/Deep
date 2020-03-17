<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>명동</title>
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
				// 이미지 경로명
				String url_1=""; String url_2=""; String url_3="";
			   
			    // 추천 코스명
			    String head_1 = ""; String head_2 = ""; String head_3 = "";
			   
			    // 추천 코스에 대한 설명문 
	  	    	String content_1 = "";  String content_2 = "";  String content_3 = "";
			   
			   if(act.equals("활동성향_고궁,역사유적지방문")||act.equals("활동성향_업무수행")||act.equals("활동성향_전통문화체험")){
				   url_1 = "background-image: url('img/course/MD_a1.jpg');";
				   url_2 = "background-image: url('img/course/MD_a2.jpg');";
				   url_3 = "background-image: url('img/course/MD_a3.jpg');";
				   
				   head_1 = "Myeongdong Cathedral";
				   head_2 = "Namdaemun (Sungryemun)";
				   head_3 = "Bukchon Hanok Village";
				   
				   content_1 = "It is the first parish of Korea and the symbol of the Korean Catholic Church. " + "<br>" + 
						   		"It has a rainbow-shaped ceiling, and the exterior shows " + "<br>" + 
				   				"its grandeur through Gothic decorations. " + "<br>" + 
						   		"A must-visit is the Underground Cathedral, located beneath the altar, " + "<br>" + 
				   				"which holds the fifthlargest remains of adults " + "<br>" + 
						   		"and the fourth largest remains of ordinary martyrs " + "<br>" + 
				   				"who were victims of persecution by Catholics in the 19th century ." ;
				   content_2 = "It is an old Korean architecture built by Nammun, " + "<br>" + "built while the capital was transferred to Seoul " + "<br>" + 
				   				"along with the founding of the Joseon Dynasty ." + "<br>" + 
						   		"It is the gate that connects the city to the shortest distance from the Han River" + "<br>" + 
						   		"and has the most passage of people and goods." + "<br>" + 
						  		"When the tank was opened in 1899, it could no longer serve as a gate," + "<br>" + 
						   		"and only some walls remain in the Sungnyemun section.";
				   content_3 = "Old traces of Seoul." + "<br>" + 
						   		"It is a place where you can see Korean traditional houses (Hanok), " + "<br>" + 
				   				"and some houses are used as hanok stays " + "<br>" + "and traditional tea houses for guests." + "<br>" + 
						   		"It takes about 3 hours to walk around." ;
					
				}else if (act.equals("활동성향_공연,민속,행사,축제 관람및참가")){
					
					url_1 = "background-image: url('img/course/MD_b1.jpg');";
					url_2 = "background-image: url('img/course/MD_b2.jpg');";
					url_3 = "background-image: url('img/course/MD_b3.jpg');";
					
					head_1 = "Myeongdong Arts Theater";
					head_2 = "Performance";
					head_3 = "Myeongdong Busking";
					   
					content_1 = "The Myeongdong Arts Theater, located between Eulji-ro Station " + "<br>" + 
							"and Myeongdong Station, is a medium-sized theater with 1 floor " + "<br>" + "underground and 5 floors above ground." + "<br>" + 
							"In addition to authentic plays, experimental plays, " + "<br>" + 
							"mute performances, musicals, special events such as " + "<br>" + "theatrical and performing arts are also held." + "<br>" + 
							"The audience and the stage are close, " + "<br>" + "so you can enjoy a more lively performance.";
					content_2 = "Nanta is a non-verbal drama that comically dramatizes " + "<br>" + 
							"things that happen in the kitchen based " + "<br>" + "on the traditional Korean rhythm of samulnori." + "<br>" + 
							"Annually 380,000 foreign tourists visit Nanta Stadium." + "<br>" + 
							"Between the percussion performance using everything in the kitchen, " + "<br>" + 
							"Korean traditional dance and audience participation are combined to create an exciting festival." ;
					content_3 = "Various performances are held in front of Myeongdong Milliore." + "<br>" + 
							"It is a space where many popular idol groups and entertainers communicate with their fans." + "<br>" + 
							"You can get a chance to see the stars up close." ;
					
				}else if (act.equals("활동성향_놀이공원,테마파크")){
					
					url_1 = "background-image: url('img/course/MD_c1.jpg');";
					url_2 = "background-image: url('img/course/MD_c2.jpg');";
					url_3 = "background-image: url('img/course/MD_c3.jpg');";
					
					head_1 = "Line Friends Shop";
					head_2 = "Hello Kitty Cafe";
					head_3 = "Honey Butter Almond";
					   
					content_1 = "Located in front of Savoy Hotel in Myeong-dong, " + "<br>" + "Line Friends Flagship Store." + "<br>" + 
							"A large brown doll is at the door so it can be easily found from a distance. " + "<br>" + "It is a place where you can browse while purchasing" + "<br>" + 
							"various character dolls, school supplies, " + "<br>" + "office supplies, and accessories";
					content_2 = "When people who like Hello Kitty visit with friends, " + "<br>" + "the background and lighting are beautiful," + "<br>" + 
							"so you can make memories in the photo zone." + "<br>" + 
							"If you order a drink, you can see pretty Hello Kitty art latte, " + "<br>" + 
							"and it is a place where you can purchase various fancy goods for gifts." + "<br>" + 
							"If you need a place to rest while shopping, it is worth stopping by." ;
					content_3 = "This is a hot and popular course for honey butter almonds and various almonds !!" + "<br>" + 
							"Located in the basement of High Heriot at Exits 6-7 of Myeong-dong Station," + "<br>" + 
							"you can sample various almonds by type." + "<br>" + 
							"Even the photo zone is ready, so you can take a life shot." ;
					
					
				}else if (act.equals("활동성향_드라마,영화찰영지방문")){
					
					url_1 = "background-image: url('img/course/MD_d1.jpg');";
					url_2 = "background-image: url('img/course/MD_d2.jpg');";
					url_3 = "background-image: url('img/course/MD_d3.jpg');";
					
					head_1 = "Iksun-dong  "+ "<br>" +" (Chicago typewriter)";
					head_2 = "Myeongdong Alley (Black Priests)";
					head_3 = "Bukchon Hanok Village (Temperature of Love)";
					   
					content_1 = "In the background of a drama that depicts " + "<br>" + "the stories of young literary people who lived fiercely in the 1930s," + "<br>" + 
							"you can feel the appearance of Gyeongseong , a Seoul in the 1930s ." + "<br>" + 
							"This is a good place to visit when you want to feel the modern Seoul.";
					content_2 = "Black Priests filmed in high angle The location of " + "<br>" + 
							"Myeongdong's downtown area is an alley opposite Myeongdong Jungang Olive Young, " + "<br>" + 
							"a 6-minute walk from Myeongdong Cathedral." + "<br>" + 
							"The film is an exorcism, a rare topic in Korean films, and its main background is Myeong-dong." + "<br>" + 
							"It will be fun to compare the feeling of the movie scene with the actual visit." ;
					content_3 = "A Korean drama set in the backdrop of Bukchon Hanok Village." + "<br>" + 
							"You can see Gyedong-gil in the background, " + "<br>" + 
							"and walk while walking between beautiful Korean houses ." ;
					
					
				}else if (act.equals("활동성향_박물관,전시관방문")){
					
					url_1 = "background-image: url('img/course/MD_e1.jpg');";
					url_2 = "background-image: url('img/course/MD_e2.jpg');";
					url_3 = "background-image: url('img/course/MD_e3.jpg');";
					
					head_1 = "3D Black Art Museum";
					head_2 = "Seoul Museum of History";
					head_3 = "Street for fun";
					   
					content_1 = "This is an optical illusion experience theme park " + "<br>" + "where children can enjoy 3D optical illusion from adults to 3D pictures." + "<br>" + 
							"3D art, which changes every 5 minutes, is where the cheers of viewers come to the temple." + "<br>" + 
							"The world's only 3D BLACKART MUSEUM " + "<br>" + "with a mysterious optical illusion technique.";
					content_2 = "An urban history museum that shows the history " + "<br>" + "and culture of Seoul from prehistoric times to modern times ." + "<br>" + 
							"It consists of materials and exhibits from the middle of Chosun " + "<br>" + "to the end of the 20th century." + "<br>" + 
							"It sells a variety of unique cultural products including museum publications." ;
					content_3 = "A cartoon art street on the hilltop road leading to Soongui Women's University " + "<br>" + "and Lira Elementary School toward Namsan Park ." + "<br>" + 
							"When climbing the hill, an animated character is on display, " + "<br>" + 
							"so you can climb while snowing." + "<br>" + 
							"The Seoul Animation Center is the final destination." ;
					
					
				}else if (act.equals("활동성향_뷰티관광")){
					
					url_1 = "background-image: url('img/course/MD_f1.jpg');";
					url_2 = "background-image: url('img/course/MD_f2.jpg');";
					url_3 = "background-image: url('img/course/MD_f3.jpg');";
					
					head_1 = "Stylenanda Pink Hotel";
					head_2 = "";
					head_3 = "Chicor";
					   
					content_1 = "Flagship store with hotel motif." + "<br>" + 
							"The entire building is decorated in pink color, " + "<br>" + 
							"and it is composed of themes reminiscent of hotels " + "<br>" + "such as room rooms and spas.";
					content_2 = "The 1st and 2nd floors are filled with 3N Cosmetics, " + "<br>" + "a cosmetic brand of Stylanda, " + "<br>" + 
							"the 3rd floor is self-made products of Stylanda, " + "<br>" + 
							"and the 4th and 5th floors are filled with online shopping mall clothing products." + "<br>" + 
							"There is also a cafe on the 5th floor that sells drinks developed by Stylenanda." ;
					content_3 = "Makeup self-bar 'BEAUTY SPACE', reminiscent of a dream dressing table" + "<br>" + 
							"Here you can freely experience and test makeup brands, " + "<br>" + "beauty devices, and beauty tools that you have chosen without the help of staff." ;
					
					
				}else if (act.equals("활동성향_쇼핑")){
					
					url_1 = "background-image: url('img/course/MD_g1.jpg');";
					url_2 = "background-image: url('img/course/MD_g2.jpg');";
					url_3 = "background-image: url('img/course/MD_g3.jpg');";
					
					head_1 = "Myeongdong " + "<br>" + "shopping street";
					head_2 = "";
					head_3 = "Aland";
					   
					content_1 = "You can enjoy a variety of shopping " + "<br>" +"from luxury brands to SPA brands and bonded stores ." + "<br>" +
							"The most popular shopping store is definitely a beauty store." + "<br>" +
							"Myeongdong Shopping Street has many beauty brand stores.";
					content_2 = "Shops at popular price ranges, from shoes and clothes to accessories," + "<br>" +
							"are packed, so there is no burden to enjoy shopping." + "<br>" +
							"Stalls along the road are also factors " + "<br>" +
							"that make Myeongdong shopping more interesting." ;
					content_3 = "A place to sell clothes, various accessories, bag cosmetics and so on." + "<br>" +
							"There are many different types of places to visit," + "<br>" +
							"new clothes up to the second floor, and a shopping" + "<br>" +"space with a vintage feel on the third and fourth floors." ;
					
					
				}else if (act.equals("활동성향_스포츠활동")|| act.equals("활동성향_레포츠활동")){
					
					url_1 = "background-image: url('img/course/MD_h1.jpg');";
					url_2 = "background-image: url('img/course/MD_h2.jpg');";
					url_3 = "background-image: url('img/course/MD_h3.jpg');";
					
					head_1 = "Elephant bowling alley";
					head_2 = "Smile Multi Room";
					head_3 = "Legend Heroes";
					   
					content_1 = "There is a shelter and snack bar, " + "<br>" +
							"and it is famous as a bulletproof shooting place for the BTS run.";
					content_2 = "A place where you can comfortably play with friends in your room with various themes." + "<br>" +
							"Snack bars are available, and you can spend time watching movies, " + "<br>" +"clothing accessories, and various board games." + "<br>" +
							"Various event items are also included, " + "<br>" +"making it a good place to leave memories." ;
					content_3 = "Complex play culture space" + "<br>" +
							"(where about 10 games exist) This is a place where" + "<br>" +
							"you can play and enjoy various games in front of the screen." ;
					
					
				}else if (act.equals("활동성향_식도락관광")){
					
					url_1 = "background-image: url('img/course/MD_i1.JPG');";
					url_2 = "background-image: url('img/course/MD_i2.JPG');";
					url_3 = "background-image: url('img/course/MD_i3.JPG');";
					
					head_1 = "Go Gung";
					head_2 = "Samgyeobcheonha";
					head_3 = "Yugane Chicken Ribs";
					   
					content_1 = "A bibimbap restaurant with a 30-year tradition " + "<br>" +"of bibimbap that has caught the taste of the world." + "<br>" +
							"In a traditional Korean bowl, a bowl of colored herbs, nuts, " + "<br>" +
							"and yukhoe are placed on top of each other to taste and taste great." + "<br>" +
							"You can also enjoy jeon, bulgogi and cocktail rice wine.";
					content_2 = "This is a pork belly restaurant located in Myeong-dong, Jung-gu, Seoul." + "<br>" +
							"Pork belly refers to a specific portion of the belly of pork or food that is grilled." + "<br>" +
							"In this restaurant, you can taste the juicy pork belly and kimchi that is dipped directly." + "<br>" +
							"It is a famous restaurant in Myeong-dong as a favorite restaurant for foreigners." ;
					content_3 = "Korea's NO.1 representative chicken ribs Yugane!" + "<br>" +
							"Chicken ribs are a typical stir-fried dish in Korea. " + "<br>" +
							"It refers to a dish of chopped chicken," + "<br>" +
							"seasoned with red pepper paste and soy sauce, and then fried with" + "<br>" +
							"various vegetables on an iron plate." + "<br>" +
							"Yugane chicken ribs have been loved for their consistent taste since 1981, " + "<br>" +
							"and have captured the taste of the world.";
		
					
				}else if (act.equals("활동성향_자연경관감상")|| act.equals("활동성향_휴양,휴식")){
					
					url_1 = "background-image: url('img/course/MD_j1.jpg');";
					url_2 = "background-image: url('img/course/MD_j2.jpg');";
					url_3 = "background-image: url('img/course/MD_j3.jpg');";
					
					head_1 = "Deoksugung";
					head_2 = "Namsan";
					head_3 = "Cheonggyecheon";
					   
					content_1 = "A palace used as a residence for the Gojong of the Joseon Dynasty."+ "<br>" +
							"Deoksugung is a historical site of the"+ "<br>" +
							"old Korean language, although it was built as a palace "+ "<br>" +"at the end of Joseon Dynasty, and it is a place of traditional wooden "+ "<br>" +
							"architecture and Western architecture.";
					content_2 = "This mountain is 265.2m high and surrounds central Seoul."+ "<br>" +
							"Currently, on the mountaintop, there is a broadcasting tower called Seoul Tower "+ "<br>" +
							"and Palgakjeong, where you can go up and down with a cable car."+ "<br>" +
							"Namsan Park, a natural park, is installed on the slopes of the east, "+ "<br>" +
							"west, and north of Namsan to provide a resting place for Seoul citizens." ;
					content_3 = "A stream flowing through the boundary between Jongno-gu and Jung-gu, "+ "<br>" +"in the middle of Seoul."+ "<br>" +
							"All the water in the Seoul Basin gathers here,"+ "<br>" +" merges with Jungnangcheon and falls into the Han River."+ "<br>" +
							"The fountain's night view is great and it's a great place for a walk." ;
					
					
				}
				
				
				
				
				
				
				
				else {
					url_1 = "background-image: url('img/course/MD_a1.jpg');";
					url_2 = "background-image: url('img/course/MD_g1.jpg');";
					url_3 = "background-image: url('img/course/MD_g3.jpg');";
					
					head_1 = "명동 성당";
					head_2 = "명동 쇼핑 거리";
					head_3 = "에이랜드";
					
					content_1 = "우리나라 최초의 본당이며 한국 천주교회의 상징이다." +"<br>" + 
						      "무지개 형상의 궁륭 천장으로 되어 있고, "+ "<br>" +" 외부는 고딕장식을 통해 웅장함을 드러내고 있다." + "<br>" + 
				    		  "빼놓지 말고 들러 봐야 할 곳은 제단 아래쪽에 있는 지하성당으로" +"<br>" + "19세기 천주교 박해로 희생당한 성인 유해 5위와  "+ "<br>" +"일반 순교자 유해 4위를 봉안하고 있다." ;
     				content_2 = "고급브랜드부터 SPA브랜드, 보세매장까지 "+ "<br>" +"다양하게 쇼핑을 즐길 수 있다." +"<br>" + 
								"가장 인기 있는 쇼핑 매장은 단연 뷰티 매장. "+ "<br>" +"명동 쇼핑거리에는 많은 뷰티브랜드 매장들이 있다. ";
					content_3 = "옷과 다양한 소품들하고 가방 화장품 등등 판매하는 곳." +"<br>" + 
								"종류가 다양해서 구경하기 좋고, "+ "<br>" +"2층까지는 새 옷, 3,4층은 빈티지한 느낌의 쇼핑공간이다." ;
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
									<a href="img/gallery/fulls/MD_a1.jpg" class="image">
										<img src="img/gallery/thumbs/MD_a1.jpg" height="450px" /></a>
									<div class="caption">
										<h3>Myeongdong Cathedral</h3>
										<p>Korea's first nave<br> Symbol of the Korean Catholic Church</p>
										<ul class="actions fixed"><li><span class="button small">Details</span></li></ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/MD_a2.jpg" class="image">
										<img src="img/gallery/thumbs/MD_a2.jpg" height="450px" /></a>
									<div class="caption">
										<h3>Namdaemun (Sungryemun)</h3>
										<p>It is an old Korean architecture built by Nammun, <br>built while transitioning the capital to Seoul along with<r> the founding of the Joseon Dynasty.</p>
										<ul class="actions fixed"><li><span class="button small">Details</span></li></ul>
									</div>
								</article>
								
								<article>
									<a href="img/gallery/fulls/MD_a3.jpg" class="image">
										<img src="img/gallery/thumbs/MD_a3.jpg" height="450px" /></a>
									<div class="caption">
										<h3>Bukchon Hanok Village</h3>
										<p>Where you can see Korean traditional houses (Hanok)</p>
										<ul class="actions fixed"><li><span class="button small">Details</span></li></ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/MD_b1.jpg" class="image">
										<img src="img/gallery/thumbs/MD_b1.jpg" height="450px" /></a>
									<div class="caption">
										<h3>Myeongdong Arts Theater</h3>
										<p>Special events such as orthodox dramas, experimental plays, mute performances, musicals, as well as theater festivals and performing arts festivals are also held.</p>
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
										<h3>Performance</h3>
										<p>Percussion performance using everything in the kitchen Saisai Korea's traditional dance and audience participation is a fun festival</p>
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
										<h3>Line Friends Shop</h3>
										<p>In front of Savoy Hotel Myeongdong <br> Line Friends Flagship Store</p>
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
										<h3>Hello Kitty Cafe</h3>
										<p>You can see pretty Hello Kitty art latte, Where to buy various fancy goods for gifts</p>
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
										<h3>Honey Butter Almond</h3>
										<p>This is a hot and popular course for honey butter almonds and almonds of various flavors.</p>
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
										<h3>Myeongdong Alley</h3>
										<p>Black Priest Movie Locations <br> The main background is Myeong-dong with exorcism</p>
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
										<h3>Bukchon Hanok Village</h3>
										<p>Location of love temperature drama<br> A Korean drama set in the backdrop of Bukchon Hanok Village.</p>
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
										<h3>3D Black Art Museum</h3>
										<p>The world's only 3D BLACKART MUSEUM with mysterious optical illusion technique.</p>
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
										<h3>Seoul Museum of History</h3>
										<p>An urban history museum that shows the history and culture of Seoul from prehistoric times to modern times.</p>
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
										<h3>Myeongdong Street for Fun</h3>
										<p>Gobawi Hill Road Manga Art Street.</p>
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
										<h3>Stylenanda Pink Hotel</h3>
										<p>Flagship store with hotel motif.</p>
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
										<h3>Chicor</h3>
										<p>'BEAUTY SPACE', a makeup self bar reminiscent of a dream dressing table</p>
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
										<h3>Myeongdong shopping street</h3>
										<p>You can enjoy a variety of shopping from luxury brands to SPA brands and bonded stores.</p>
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
										<h3>Aland</h3>
										<p>Sell ​​clothes, various accessories, bag cosmetics, etc.</p>
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
										<h3>Smile Multi Room</h3>
										<p>A place where you can comfortably play with friends in your room with various themes.</p>
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