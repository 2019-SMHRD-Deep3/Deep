<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
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
			<% String act = "활동성향_휴양,휴식"; %>
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
				   
				   head_1 = "Palais de Changdeokgung";
				   head_2 = "Palais de Gyeongbokgung";
				   head_3 = "Insadong Street";
				   
				   content_1 = "Le palais de Changdeokgung est un palais de la dynastie Joseon situé à Séoul, en Corée du Sud." +"<br>" + 
						   "À l'est du palais de Gyeongbokgung"+"<br>" + 
						   " on l'appelait Donggung avec Changgyeonggung dans la dynastie Joseon ." ;
				   content_2 = "Il s'appelait également Bukgyeol car il était situé au nord de Doseong." +"<br>" + 
						   "Il a été fondé conformément à la création de la dynastie Joseon et a d'abord été utilisé comme palais, mais" +"<br>" + 
						   "après avoir été incendié pendant la guerre d'Imjin, il est resté longtemps en ruines";
				   content_3 = "Au milieu d'un monde en évolution rapide, il y a une rue pour préserver et hériter du style unique de la Corée."+"<br>" +
						   "Vous pouvez voir beaucoup d'art coréen, et des voitures traditionnelles ainsi que la nourriture du temple, et"+"<br>" +
						   "beaucoup de choses qui vous viennent à l'esprit lorsque vous dites que la Corée est à Insadong."+"<br>" +
						   "C'est l'une des destinations touristiques les plus populaires de Corée." ;
					
				}else if (act.equals("활동성향_공연,민속,행사,축제 관람및참가")|| act.equals("활동성향_박물관,전시관방문")){
					
					url_1 = "background-image: url('img/course/jr_b1.JPG');";
					url_2 = "background-image: url('img/course/jr_b2.JPG');";
					url_3 = "background-image: url('img/course/jr_b3.JPG');";
					
					head_1 = "Salle d'art de Gwanghwamun";
					head_2 = "L'histoire de Sejong Chungmugong";
					head_3 = "Salle d'exposition des ruines de la ville de Gongpyeong";
					   
					content_1 = "Le Gwanghwamun Art Hall est"+"<br>"+
							"situé à l'intérieur du Centre culturel et sportif de Jongno, Jongno- gu Facility Management Corporation ."+"<br>"+
							"Le jardin extérieur, le restaurant, la salle de classe culturelle, la piscine, le centre de remise en forme,"+"<br>"+
							"le terrain d'escalade sportive, etc."+"<br>"+
							"sont disponibles dans une variété d'installations au sein du centre culturel sportif de Jongno, ce qui le rend plus pratique.";
					content_2 = "L'histoire de Sejong et Chungmugong"+"<br>"+
							"est une exposition liée au roi Sejong le Grand et à l'amiral Yi Sun-Sin située au deuxième étage du Centre Sejong pour les arts du spectacle ."+"<br>"+
							"En plus des expositions,nous proposons également des programmes"+"<br>"+
							"qui vous permettent de découvrir la culture traditionnelle en portant un hanbok fabriqué par l'âge des enfants, des élèves de la" ;
					content_3 = "L'exposition du patrimoine urbain de Gongpyeong est un musée de la ville qui préserve et expose les"+"<br>"+
							"bâtiments et les routes du XVIe siècle de la dynastie Joseon excavés pendant le processus de réaménagement des quartiers 1, 2 et 4 du centre-ville de Gongpyeong."+"<br>"+
							"À l'exposition du patrimoine urbain de Gongpyeong,"+"<br>"+
							"vous pouvez voir la vie et la vie du peuple Hanyang pendant la dynastie Joseon ." ;
					
				}else if (act.equals("활동성향_놀이공원,테마파크")){
					
					url_1 = "background-image: url('img/course/jr_c1.JPG');";
					url_2 = "background-image: url('img/course/jr_c2.JPG');";
					url_3 = "background-image: url('img/course/jr_c3.jpg');";
					
					head_1 = "Running Man Experience Hall";
					head_2 = "Parc à thème Tezium Teddy Bear";
					head_3 = " Ssamji-gil expérience";
					   
					content_1 = "Nouveau contenu conceptuel pour être le personnage principal des programmes TV !! "+"<br>"+
							"Devenez vous-même un coureur, trouvez des points R cachés et "+"<br>"+
							"gagnez divers badges et certificats de coureur en fonction des points que vous gagnez.";
					content_2 = "Tezium Seoul, situé à Jongno-gu, Séoul, est un parc à thème ours en peluche."+"<br>"+
							"Il s'agit d'un espace d'exposition de type open space où vous pouvez toucher et serrer l'ours en peluche.Vous pouvez voir"+"<br>"+
							"l'origine, l'origine et l'histoire de l' ours en peluche."+"<br>"+
							"La zone thématique de Séoul présente Séoul comme un ours en peluche de l'ancien temps à Séoul." ;
					content_3 = "À l'atelier d'expérience Ssamji-gil,"+"<br>"+
							"des programmes d'expérience tels que Hyangyeon, l'école de menuiserie Kim Yoo-guk Hakmok, la semaine Serra et Glassborn sont organisés."+"<br>"+
							"Lors de la fête, vous pouvez faire de l'encens, du savon et des cosmétiques. Vous pouvez découvrir"+"<br>"+
							"lécole Kim Soo-guk Hakhak Woodcraft, la céramique peinte à la main à la Serra Week"+"<br>"+
							"et l'artisanat des bouteilles en verre à Glassborn ." ;
					
					
				}else if (act.equals("활동성향_드라마,영화찰영지방문")){
					
					url_1 = "background-image: url('img/course/jr_d1.JPG');";
					url_2 = "background-image: url('img/course/jr_d2.JPG');";
					url_3 = "background-image: url('img/course/jr_d3.JPG');";
					
					head_1 = "Stone Wall Road (Goblin)";
					head_2 = "Ma poésie (à l'heure du renard)";
					head_3 = "Seonggwak-gil, Séoul";
					   
					content_1 = "Dukseong Girls 'High School et Pungmun Girls' High School, où"+"<br>"+
							"Eun-tak (Kim Go-eun) s'écarte de Dukseong Girls 'High School et Pungmun Girls' High School,"+"<br>"+
							"est un bon endroit pour prendre des photos.";
					content_2 = "The Fox Star est un drame mélodramatique humain dans lequel la"+"<br>"+
							"première année d'un paquet d'accidents avec une nouvelle histoire mystérieuse et une histoire mystérieuse"+"<br>"+
							"entre en collision avec des gens de l'aéroport d'Incheon pour remédier aux déficiences et aux cicatrices de l'autre."+"<br>"+
							"Ma poésie est le lieu de ce drame dans la rue Hanok, Iksun-dong, Jongno-gu." ;
					content_3 = "La salle Prince of Rooftop est un drame à retardement qui remonte à 300 ans. Il y a des traces du drame dans les"+"<br>"+
							"rues où les personnages ont marché, les escaliers qui ont sauté et"+"<br>"+
							"le paysage de Séoul se répandant sous les beaux érables";
						
					
				}else if (act.equals("활동성향_뷰티관광")|| act.equals("활동성향_쇼핑")){
					
					url_1 = "background-image: url('img/course/jr_f1.JPG');";
					url_2 = "background-image: url('img/course/jr_f2.JPG');";
					url_3 = "background-image: url('img/course/jr_f3.JPG');";
					
					head_1 = "Insadong Street";
					head_2 = "Dongwha Duty Free";
					head_3 = "Jongno Precious Metal Street";
					   
					content_1 = "Au milieu d'un monde en évolution rapide, il y a une rue pour préserver et hériter du style unique de la Corée."+"<br>" +
							   "Vous pouvez voir beaucoup d'art coréen, et des voitures traditionnelles ainsi que la nourriture du temple, et"+"<br>" +
							   "beaucoup de choses qui vous viennent à l'esprit lorsque vous dites que la Corée est à Insadong."+"<br>" +
							   "C'est l'une des destinations touristiques les plus populaires de Corée." ;
					content_2 = "Donghwa Duty Free est situé au sous-sol du bâtiment Gwanghwamun à Jongno"+"<br>"+
							"et est la plus ancienne boutique hors taxes de Séoul qui a ouvert ses portes en 1973."+"<br>"+
							"Plus de 250	marques de renommée mondiale, dont Hermes, Louis Vuitton, Gucci et Bulgari sont en magasin, et plus de 300 000"+"<br>"+
							"produits importés sont exposés et vendus." ;
					content_3 = "Jongno Precious Metal Street est une rue commerçante de métaux précieux vieille de 40 ans."+"<br>"+
							"Même maintenant, il existe des métiers actifs qui représentent 70% du commerce de bijoux du pays ."+"<br>"+
							"Les services et les intérieurs ont également été améliorés, et non seulement le coma, mais aussi les"+"<br>"+
							"jeunes qui aiment les achats simples sont souvent debout."+"<br>"+
							"Il est également populaire comme cours de shopping pour les étrangers." ;
					
					
				}else if (act.equals("활동성향_스포츠활동")|| act.equals("활동성향_레포츠활동")){
					
					url_1 = "background-image: url('img/course/jr_h1.JPG');";
					url_2 = "background-image: url('img/course/jr_h2.JPG');";
					url_3 = "background-image: url('img/course/jr_h3.JPG');";
					
					head_1 = "LoL Park";
					head_2 = "TCC The Core Climbing";
					head_3 = "Running Man Experience Hall";
					   
					content_1 = "Il y a un stade «League of Legends (Roll)» à Jongno (gare Jonggak) dans le centre de Séoul."+"<br>"+
							"Nommé «LoL PARK», ce stade réservé aux sports électroniques se caractérise par un espace spécial où vous pouvez regarder"+"<br>"+
							"le match de «League of Legends» des matchs de la ligue dans un	environnement plus confortable";
					content_2 = "L'escalade sportive est très efficace pour l'entraînement en force et l'alimentation."+"<br>"+
							"L'escalade est la plus importante de toutes, la force et l'adhérence du bras, et"+"<br>"+
							"une fois attaché au mur, c'est un exercice qui vous permet de vous immerger dans"+"<br>"+
							"le coude actuel sans aucune autre pensée, car vous envisagez la prochaine étape et vous concentrez sur les mouvements de votre corps ." ;
					content_3 = "Nouveau contenu conceptuel pour être le personnage principal des programmes TV !! "+"<br>"+
							"Devenez vous-même un coureur, trouvez des points R cachés et "+"<br>"+
							"gagnez divers badges et certificats de coureur en fonction des points que vous gagnez.";
				
				}else if (act.equals("활동성향_식도락관광")){
					
					url_1 = "background-image: url('img/course/jr_i1.JPG');";
					url_2 = "background-image: url('img/course/jr_i2.JPG');";
					url_3 = "background-image: url('img/course/jr_i3.JPG');";
					
					head_1 = "Hyojadong Meat";
					head_2 = "Maison en faïence";
					head_3 = "Bindae Tteok de Soonhee";
					   
					content_1 = "C'est un bon endroit pour s'asseoir sur une table ronde vendant de la viande de porc , du ventre de porc et de la viande"+"<br>"+
							"de côtes , qui sont de la viande et de la viande de porc populaires , près de la gare de Gyeongbukgung";
					content_2 = "ongno 3-ga et Dtukbaejip autour de Jonggak sont des restaurants très célèbres."+"<br>"+
							"Le menu le plus représentatif du restaurant Ttukbaegi est le miso Wooryong."+"<br>"+
							"Ce restaurant est également très populaire parmi les touristes étrangers, donc le"+"<br>"+
							"nom du restaurant est écrit en japonais et en anglais." ;
					content_3 = "Le bindaetteok est un plat d'accompagnement coréen."+"<br>"+
							"Fondamentalement, c'est une sorte de tige de haricot mungo faite en"+"<br>"+
							"mélangeant des haricots verts avec des herbes et de la viande et en les mélangeant avec de l' huile.";
					
				}else if (act.equals("활동성향_자연경관감상")|| act.equals("활동성향_휴양,휴식")){
					
					url_1 = "background-image: url('img/course/jr_j1.jpg');";
					url_2 = "background-image: url('img/course/jr_j2.JPG');";
					url_3 = "background-image: url('img/course/jr_j3.JPG');";
					
					head_1 = "Cheonggyecheon";
					head_2 = "Bukchon Hanok Village";
					head_3 = "Mugyewon";
					   
					content_1 = "Un ruisseau qui traverse la frontière entre Jongno-gu et Jung-gu, au milieu de Séoul."+"<br>"+
							"Toute l'eau du bassin de Séoul se rassemble ici,"+"<br>"+
							"fusionne avec Jungnangcheon et tombe dans la rivière Han."+"<br>"+
							"La vue nocturne de la fontaine est super et c'est un endroit idéal pour se promener.";
					content_2 = "Vieilles traces de Séoul."+"<br>"+
							"C'est un endroit où vous pouvez voir des maisons traditionnelles coréennes (Hanok), et"+"<br>"+
							"certaines maisons sont utilisées comme séjours hanok et maisons de thé traditionnelles pour les invités."+"<br>"+
							"Il faut environ 3 heures pour se promener." ;
					content_3 = "Mugyewon est un espace culturel traditionnel de la ville qui a ouvert ses portes à Buam-dong, Jongno-gu.."+"<br>"+
							"C'est un espace spécial où vous pourrez découvrir Hanok dans un paysage calme et ressentir la beauté de la Corée à travers la tradition et la culture.."+"<br>"+
							"L'Anchae, le Sarangchae et le Haengrangchae de Muchaewon."+"<br>"+
							"peuvent être utilisés pour des séminaires, des conférences, des salles de conférence, etc., et."+"<br>"+
							"divers événements culturels traditionnels sont également organisés dans des installations supplémentaires telles que l'Anchae Maru, la cour et l'arrière-cour ." ;	
				}else {
					url_1 = "background-image: url('img/course/jr_a3.JPG');";
					url_2 = "background-image: url('img/course/jr_b2.JPG');";
					url_3 = "background-image: url('img/course/jr_h3.JPG');";
					
					head_1 = "Insadong Street";
					head_2 = "L'histoire de Sejong Chungmugong";
					head_3 = "Running Man Experience Hall";
					   
					content_1 ="Au milieu d'un monde en évolution rapide, il y a une rue pour préserver et hériter du style unique de la Corée."+"<br>" +
							   "Vous pouvez voir beaucoup d'art coréen, et des voitures traditionnelles ainsi que la nourriture du temple, et"+"<br>" +
							   "beaucoup de choses qui vous viennent à l'esprit lorsque vous dites que la Corée est à Insadong."+"<br>" +
							   "C'est l'une des destinations touristiques les plus populaires de Corée." ;
					content_2 = "Il s'appelait également Bukgyeol car il était situé au nord de Doseong." +"<br>" + 
							   "Il a été fondé conformément à la création de la dynastie Joseon et a d'abord été utilisé comme palais, mais" +"<br>" + 
							   "après avoir été incendié pendant la guerre d'Imjin, il est resté longtemps en ruines";
					content_3 = "Nouveau contenu conceptuel pour être le personnage principal des programmes TV !! "+"<br>"+
							"Devenez vous-même un coureur, trouvez des points R cachés et "+"<br>"+
							"gagnez divers badges et certificats de coureur en fonction des points que vous gagnez.";		
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
										<h3>Palais de Changdeokgung</h3>
										<p>Situé à Séoul, Corée <br>Palais de la dynastie Joseon</p>
										<ul class="actions fixed"><li><span class="button small">Details</span></li></ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/jr_a3.JPG" class="image">
										<img src="img/gallery/thumbs/jr_a3.JPG" height="450px" /></a>
									<div class="caption">
										<h3>Insadong Street</h3>
										<p>Préserver le style unique coréen <br>Distance à hériter</p>
										<ul class="actions fixed"><li><span class="button small">Details</span></li></ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/jr_b1.JPG" class="image">
										<img src="img/gallery/thumbs/jr_b1.JPG" height="450px" /></a>
									<div class="caption">
										<h3>Salle d'art de Gwanghwamun</h3>
										<p>Jardin extérieur, restaurant, cours de culture,<br>Piscine, gymnase, terrain d'escalade sportive, etc.</p>
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
										<h3>L'histoire de Sejong Chungmugong</h3>
										<p>Situé au 2ème sous-sol du Centre Sejong<br>Expositions sur le roi Sejong et le général Yi Sun-sin</p>
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
										<h3>Salle d'exposition des ruines de la ville de Gongpyeong</h3>
										<p>Bâtiments et routes au XVIe siècle sous la dynastie Joseon <br>Musée urbain conservé et exposé tel quel</p>
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
										<p>Être le personnage principal d'une émission de télévision <br> Nouveau contenu conceptuel !!</p>
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
										<h3>Parc à thème Tezium Teddy Bear</h3>
										<p>L'origine et l'origine des ours en peluche, l'histoire</p>
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
										<h3>Atelier d'expérience Ssamji-gil</h3>
										<p>École de menuiserie Hyangyeon Kim Yuguk Hakhae·<br>Découvrez des programmes tels que Serra Week et Glassborn</p>
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
										<p>Emplacement du drame gobelin</p>
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
										<h3>Ma poésie (à l'heure du renard)</h3>
										<p>Lieu de tournage de Drama Fox</p>
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
										<p>Lancement de plus de 250 marques de renommée mondiale</p>
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
										<p>Stade de League of Legends (lol)</p>
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
										<p>Très efficace pour l'alimentation et pour la musculation</p>
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
										<p>Une rivière qui traverse la frontière entre Jongno-gu et Jung-gu, au cœur de Séoul.</p>
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
										<p>Vieilles traces de Séoul.<br>Où vous pouvez voir les maisons traditionnelles coréennes (Hanok)</p>
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
										<p>Découvrez Hanok dans un paysage calme, <br>Un espace spécial où vous pourrez sentir la beauté de la Corée à travers la tradition et la culture</p>
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