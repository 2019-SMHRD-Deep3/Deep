<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Dongdaemun</title>
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
			   
			   if(act.equals("활동성향_고궁,역사유적지방문")||act.equals("활동성향_전통문화체험")){
				   url_1 = "background-image: url('img/course/DDP_a1.jpg');";
				   url_2 = "background-image: url('img/course/DDP_a2.JPG');";
				   url_3 = "background-image: url('img/course/DDP_a3.JPG');";
				   
				   head_1 = "Parc historique et culturel de Dongdaemun";
				   head_2 = "Heunginjimun";
				   head_3 = "";
				   
				   content_1 = "Ce parc est construit pour montrer l'histoire ancienne de Séoul, construit sur le site de l'ancien stade Dongdaemun à Jung-gu, Séoul. Hanyangdoseong Sunseong-gil Il est situé dans la section Heunginjimun, il est donc préférable de marcher et de visiter Sunseong-gil. Le Dongdaemun Design Plaza a été construit, mais des patrimoines culturels découverts lors de la démolition du terrain de jeux ont été découverts.";
				   content_2 = "Heunginjimun est l'une des quatre portes principales de Hanyang, la capitale de la dynastie Joseon, et est la plus grande porte à l'est des huit portes du château de Séoul créées pour protéger le Hanseongbu. C'est un atout culturel avec une beauté délicate et magnifique à la fin de la dynastie Joseon qui semble mince et fragile et met l'accent sur la décoration. Parmi les portes de Séoul, seuls les Sungnyemun et Heunginjimun étaient faits du deuxième étage." ;
				   content_3 = "Munru est l'endroit où les gardes de la longévité restent, et en cas d'urgence," + "<br>" + "il servait également de poste"+ "<br>" + "de commandement pour commander les militaires. À l'extérieur des portes, des murs de briques et des fenêtres en bois ont été installés pour aider à prévenir les ennemis.";
					
				}else if (act.equals("활동성향_공연,민속,행사,축제 관람및참가")||act.equals("활동성향_박물관,전시관방문")){
					
					url_1 = "background-image: url('img/course/DDP_b1.jpg');";
					url_2 = "background-image: url('img/course/DDP_b2.JPG');";
					url_3 = "background-image: url('img/course/DDP_b3.JPG');";
					
					head_1 = "Dongdaemun Milliore";
					head_2 = "Musée d'histoire de Séoul";
					head_3 = "Musée provincial de Hanyang";
					   
					content_1 = "Les grands centres commerciaux tels que Migliore et Duta sont des espaces commerciaux populaires pour les jeunes, tels que les adolescents et les 20 ans. Ils ont des salles de concert en plein air dans chaque centre commercial pour organiser divers événements tels que des invitations de chanteurs, des spectacles de B-boy, des concours de danse et même un cours de visite nocturne pour les étrangers.";
					content_2 = "Il offre une chance de découvrir et d'expérimenter la culture de Séoul et d'approfondir la compréhension et la perception de Séoul tout en montrant l'histoire et la culture traditionnelle de Séoul de manière historique. " ;
					content_3 = "Comme la visite du château de Hanyangdoseong, voici plusieurs thèmes divisés par section, et les vieilles histoires entendues le long de la ville sont intéressantes, et il y a aussi la beauté de voir des modèles de château miniatures. Vous pouvez sentir l'ancien Séoul tout en regardant lentement autour avec les anciens documents liés au château, des images d'outils et d'écrans.";
					
				}else if (act.equals("활동성향_놀이공원,테마파크")){
					
					url_1 = "background-image: url('img/course/DDP_c1.jpg');";
					url_2 = "background-image: url('img/course/DDP_c2.JPG');";
					url_3 = "background-image: url('img/course/DDP_c3.jpg');";
					
					head_1 = "Parc à thème Fanta VR";
					head_2 = "Parc d'attraction" + "<br>" + "‘Lattlier’";
					head_3 = "Illusion World";
					   
					content_1 = "Bateau VR, balai de sorcière, etc. Il y a des endroits où plusieurs personnes peuvent vivre ensemble, et vous pouvez profiter de la réalité virtuelle en tant qu'expérience d'une personne. En particulier, ramasser des gâteaux et couper des fruits dans un cube carré est une expérience populaire pour de nombreuses personnes." ;
					content_2 = "'Lattelier' est un parc à thème expérientiel qui vous permet de faire un voyage dans l'espace de cette époque, en plus d'apprécier les œuvres impressionnistes. L'entrée du Ratellier, qui représente neuf muses de la mythologie grecque romaine, est impressionnante. ";
					content_3 = "Il s'agit d'une zone d'expérience de 37 VR centrée sur le marché de Dongdaemun. Vous pouvez avoir différentes expériences, choisir la VR que vous voulez et vous amuser, et il existe plusieurs jeux d'arcade pour en profiter.";
					
					
				}else if (act.equals("활동성향_드라마,영화찰영지방문")){
					
					url_1 = "background-image: url('img/course/DDP_d1.jpg');";
					url_2 = "background-image: url('img/course/DDP_d2.jpg');";
					url_3 = "background-image: url('img/course/DDP_d3.jpg');";
					
					head_1 = "Seochon Alley" + "<br>" +"(Elle était jolie)";
					head_2 = "Appartement Dongdaemun" + "<br>" +" (Hide and Hide)";
					head_3 = "";
					   
					content_1 = "Les drames coréens ont un sentiment unique créé par un mélange d'humour, de romance et d'excitation. Trouvez la scène où le drame a été réalisé et rappelez-vous la scène que vous aimez le plus. Vous pouvez sentir la forme de Gyeongseong telle quelle. Des charmantes ruelles de Seochon à Inwangsan et Dongdaemun Design Plaza avec de superbes vues, il y a de nombreux endroits où aller pour les amateurs de théâtre.";
					content_2 = "Appartement désigné comme un futur patrimoine à Séoul. La désignation du futur patrimoine a été préparée par le gouvernement métropolitain de Séoul comme contre-mesure pour préserver la civilisation moderne. ";
					content_3 = "Le premier appartement construit par la Korea Housing Corporation, achevé en 1965. Même dans les années 1970, de nombreuses célébrités vivaient et étaient appelées appartements de célébrités." ;
					
					
				}else if (act.equals("활동성향_뷰티관광")||act.equals("활동성향_쇼핑")){
					
					url_1 = "background-image: url('img/course/DDP_f1.JPG');";
					url_2 = "background-image: url('img/course/DDP_f2.JPG');";
					url_3 = "background-image: url('img/course/DDP_f3.jpg');";
					
					head_1 = "Hyundai City Outlet (centre commercial Lifestyle)";
					head_2 = "Marché de Séoul Yangnyeong";
					head_3 = "Centre de promotion de la médecine orientale";
					   
					content_1 = "Bread Garden, situé au 2ème étage, gère à la fois des produits de boulangerie et Pinapore Baking Studio, afin que vous puissiez vivre tous vos achats ou expériences. Chaque étage se compose d'un centre commercial expérientiel aux 1er et 2e étages du sous-sol et d'un magasin de mode aux 3e et 8e étages. Les salles spécialisées F & B sont situées respectivement au 2ème et au 9ème étages. ";
					content_2 = "Il s'agit du plus grand complexe complet de phytothérapie du pays et compte plus de 800 magasins de phytothérapie. Vous pouvez également acheter des médicaments rares tels que des grenouilles, du zara et des crevettes d'eau douce qui apparaissent dans divers remèdes populaires, et il y a un tangjewon, qui facilite le conditionnement et le conditionnement du médicament pour une somme de 10000 won. En outre, le marché du ginseng vend du ginseng, du ginseng rouge, du ginseng blanc, divers types de miel et des champignons Youngji produits au pays. ";
					content_3 = "À l'intérieur du Centre de promotion de la médecine orientale, construit dans un hanok traditionnel (superficie totale de 9 604 ㎡), se trouvent le Musée de médecine orientale , le Centre d'expérience de médecine orientale, le Centre de promotion de médecine orientale et le Café de médecine orientale." ;
					
					
				}else if (act.equals("활동성향_스포츠활동")|| act.equals("활동성향_레포츠활동")){
					
					url_1 = "background-image: url('img/course/DDP_h1.jpg');";
					url_2 = "background-image: url('img/course/DDP_h2.JPG');";
					url_3 = "background-image: url('img/course/DDP_h3.JPG');";
					
					head_1 = "Rock Bowling Alley (Auberge Lotte Fit)";
					head_2 = "Ambassadeur Novotel";
					head_3 = "DS Daesung Sports";
					   
					content_1 = "C'est un espace de loisirs complexe au 5ème étage et mesure environ 490 mètres carrés (150 pyeong), avec 7 voies. En plus du bowling, vous pouvez profiter des fléchettes et des matchs de basket. ";
					content_2 = "L'hôtel a un intérieur moderne et confortable avec les avant-toits de Heunginjimun. C'est un hôtel 5 étoiles avec 331 hôtels et 192 résidences avec des installations de cuisine pratiques, un restaurant buffet, un bar-salon dans le hall, une épicerie, un bar sur le toit, une piscine extérieure, une salle de remise en forme Il dispose d'un sauna, d'une grande salle de bal pouvant accueillir jusqu'à 280 personnes et d'un petite salle de réunion polyvalente." ;
					content_3 = "L'ensemble du bâtiment de cinq étages est réservé aux amateurs de baseball et uniquement aux marques de baseball. En mettant l'accent sur la marque Mizuno, c'est la même chose que le `` Temple Yajijiji '' où vous pouvez contacter directement environ 20 marques mondiales et nationales dans un seul espace." ;
					
					
				}else if (act.equals("활동성향_식도락관광")){
					
					url_1 = "background-image: url('img/course/DDP_i1.JPG');";
					url_2 = "background-image: url('img/course/DDP_i2.JPG');";
					url_3 = "background-image: url('img/course/DDP_i3.JPG');";
					
					head_1 = "Donghaehaemultang";
					head_2 = "Dongdaemun keunjib bossam";
					head_3 = "Dokkaebi bulgogi";
					   
					content_1 = "Situé sur le chemin du parc du château de Dong leem Dongdaemun. Haemultang est un aliment croustillant et frais au bouillon avec de la pâte de poivron rouge assaisonnée dans divers fruits de mer tels que le poulpe, le crabe bleu, le poulpe, les crevettes et les crustacés. Vous pouvez profiter d'une variété de saveurs de fruits de mer uniformément." ;
					content_2 = "Bossam est `` Faire bouillir les têtes d'os de certains bovins ou porcs, quelque chose enveloppé dans une presse à poutre aussi lourde, mais qu'après avoir fait à peine des tranches de nourriture pour manger '' de bossam moderne est Trancher le porc bouilli sans odeur de charcuterie avec la clause crue assaisonnée de baechusok Il est un aliment enveloppé dans des feuilles de chou.";
					content_3 = "Le Dokkaebi Bulgogi est situé dans un restaurant derrière le centre commercial APM. Vous pouvez déguster du bouillon ssam et bulgogi hotpot comme des aliments cuits en plaçant le bulgogi aromatisé avec du bouillon d'os de boeuf sur une plaque chauffante. En plus du bulgogi, vous pouvez déguster d'autres plats coréens." ;
		
					
				}else if (act.equals("활동성향_자연경관감상")|| act.equals("활동성향_휴양,휴식")){
					
					url_1 = "background-image: url('img/course/DDP_j1.JPG');";
					url_2 = "background-image: url('img/course/DDP_j2.JPG');";
					url_3 = "background-image: url('img/course/DDP_j3.JPG');";
					
					head_1 = "Parc Naksan";
					head_2 = "Parc du château de Dongdaemun";
					head_3 = "Village de peinture murale d'Ehwa-dong";
					   
					content_1 = "Si vous avez le vertige dans une rue animée avec des rues compliquées et des immeubles de grande hauteur, c'est un endroit où vous pouvez rencontrer une atmosphère calme de sentiers de randonnée avec des paysages magnifiques. Prenons un verre relaxant romantique de Séoul le long des murs." ;
					content_2 = "Il est à environ 2 stations de métro de la gare de Dongdaemun à Hyehwamun via le parc Naksan.";
					content_3 = "Si vous descendez du parc Naksan le long de la route de la forteresse, il y a un village mural sur le côté droit d'Ihwa-dong. Si vous continuez Vers le bas le mur, vous pouvez faire une visite de Seonggak-gil car il est relié au parc Heunginjimun et au musée Hanyangdoseong. Il y a beaucoup de cafés avec de bonnes vues pour marcher et se reposer.";
					
					
				}else {
					url_1 = "background-image: url('img/course/DDP_a1.jpg');";
					url_2 = "background-image: url('img/course/DDP_c1.jpg');";
					url_3 = "background-image: url('img/course/DDP_j1.JPG');";
					
					head_1 = "Parc historique et culturel de Dongdaemun";
					head_2 = "Parc d'attraction " + "<br>" + "‘Lattlier’";
					head_3 = "Parc Naksan";
					
					content_1 = "C'est la première paroisse de Corée et le symbole de l'Église catholique coréenne. Il a un plafond en forme d'arc-en-ciel, et l'extérieur montre sa grandeur à travers des décorations gothiques. Une visite incontournable est la cathédrale souterraine, située sous l'autel, qui abrite le cinquième plus grand vestige d'adultes et le quatrième plus grand vestige de martyrs ordinaires qui ont été victimes de persécutions de la part des catholiques au XIXe siècle.";
     				content_2 = "Vous pouvez profiter d'une variété d'achats, des marques de luxe aux marques SPA et aux magasins sous douane. Le magasinage le plus populaire est définitivement un magasin de beauté. Myeongdong Shopping Street compte de nombreux magasins de marques de beauté. ";
					content_3 = "Un endroit pour vendre des vêtements, divers accessoires, des sacs de cosmétiques, etc. Il existe de nombreux types d'endroits à visiter, de nouveaux vêtements jusqu'au deuxième étage et un espace de shopping avec une touche vintage aux troisième et quatrième étages." ;
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
								<li><a href="#two" class="button big wide smooth-scroll-middle">Vers le bas</a></li>
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
								<li><a href="#three" class="button big wide smooth-scroll-middle">Vers le bas</a></li>
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
								<li><a href="#gallery" class="button big wide smooth-scroll-middle">Vers le bas</a></li>
							</ul>

						</div>
						<div class="image">
							<img class = "iii"  id= "img3" style = "<%= url_3 %>"/>
						</div>
					</section>
					


				<!-- Gallery -->
					<section class="wrapper style1 align-center">
						<div class="inner">
							<h2>Galerie</h2>
							<p>This is a <strong>Gallery</strong> element. It can behave as a lightbox (when given the <code>lightbox</code> class), and you can customize its <span class="demo-controls">appearance with a number of modifiers</span>, as well as assign it an optional <code>onload</code> or <code>onscroll</code> transition modifier (<a href="#reference-gallery">details</a>).</p>
						</div>
						<ul class="actions stacked">
								<li><a href="#one" class="button">Haut</a></li>
							</ul>

						<!-- Gallery -->
							<div class="gallery style2 medium lightbox onscroll-fade-in" id = "gallery">
							<article>
									<a href="img/gallery/fulls/DDP_a1.jpg" class="image">
										<img src="img/gallery/thumbs/DDP_a1.jpg" height="450px" /></a>
									<div class="caption">
										<h3>Parc historique et culturel de Dongdaemun</h3>
										<p>Site de l'ancien stade Dongdaemun<br> Parc qui protège l'histoire de Séoul</p>
										<ul class="actions fixed"><li><span class="button small">Détails</span></li></ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/DDP_a2.JPG" class="image">
										<img src="img/gallery/thumbs/DDP_a2.JPG" height="450px" /></a>
									<div class="caption">
										<h3>Heunginjimun</h3>
										<p>L'une des quatre portes de Hanyang, la capitale de Joseon</p>
										<ul class="actions fixed"><li><span class="button small">Détails</span></li></ul>
									</div>
								</article>
								
								<article>
									<a href="img/gallery/fulls/DDP_b1.jpg" class="image">
										<img src="img/gallery/thumbs/DDP_b1.jpg" height="450px" /></a>
									<div class="caption">
										<h3>Dongdaemun Milliore</h3>
										<p>L'espace DongShopping adoré par les jeunes peopledaemun Milliore</p>
										<ul class="actions fixed"><li><span class="button small">Détails</span></li></ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/DDP_b2.JPG" class="image">
										<img src="img/gallery/thumbs/DDP_b2.JPG" height="450px" /></a>
									<div class="caption">
										<h3>Musée d'histoire de Séoul</h3>
										<p>Fournit l'occasion de découvrir et de découvrir la culture de Séoul<br>
										<ul class="actions fixed">
											<li><span class="button small">Détails</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/DDP_b3.JPG" class="image">
										<img src="img/gallery/thumbs/DDP_b3.JPG" height="450px" />
									</a>
									<div class="caption">
										<h3>Musée provincial de Hanyang</h3>
										<p>C'est amusant d'écouter les vieilles histoires qui suivent Doseong, <br> Diagramme de modèle de château miniature <br> Il y a une vue intéressante.</p>
										<ul class="actions fixed">
											<li><span class="button small">Détails</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/DDP_c1.jpg" class="image">
										<img src="img/gallery/thumbs/DDP_c1.jpg" height="450px" />
									</a>
									<div class="caption">
										<h3>Parc à thème Dongdaemun Fanta VR</h3>
										<p>Expérience VR passionnante et passionnante <br>
										<ul class="actions fixed">
											<li><span class="button small">Détails</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/DDP_c2.JPG" class="image">
										<img src="img/gallery/thumbs/DDP_c2.JPG" height="450px" />
									</a>
									<div class="caption">
										<h3>Parc d'attractions d'attraction 'Lattlier'</h3>
										<p>Dans l'espace des œuvres impressionnistes  <br> Parc à thème de type expérience où vous pouvez voyager</p>
										<ul class="actions fixed">
											<li><span class="button small">Détails</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/DDP_c3.jpg" class="image">
										<img src="img/gallery/thumbs/DDP_c3.jpg" height="450px" />
									</a>
									<div class="caption">
										<h3>Illusion World</h3>
										<p>Dongdaemun market center 37 Zone d'expérience VR <br> 
										<ul class="actions fixed">
											<li><span class="button small">Détails</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/DDP_d1.JPG" class="image">
										<img src="img/gallery/thumbs/DDP_d1.JPG" height="450px" />
									</a>
									<div class="caption">
										<h3>Ehwa-dong Mural Village</h3>
										<p>'Elle était belle'Lieu du drame</p>
										<ul class="actions fixed">
											<li><span class="button small">Détails</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/DDP_f1.JPG" class="image">
										<img src="img/gallery/thumbs/DDP_f1.JPG" height="450px" />
									</a>
									<div class="caption">
										<h3>Hyundai City Outlet</h3>
										<p>Produits de boulangerie à vendre <br> Exécutez le Pinapore Baking Studio ensemble<br> </p>
										<ul class="actions fixed">
											<li><span class="button small">Détails</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/DDP_f2.JPG" class="image">
										<img src="img/gallery/thumbs/DDP_f2.JPG" height="450px" />
									</a>
									<div class="caption">
										<h3>Marché de Séoul Yangnyeong</h3>
										<p>Le plus grand complexe de phytothérapie de Corée</p>
										<ul class="actions fixed">
											<li><span class="button small">Détails</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/DDP_f3.jpg" class="image">
										<img src="img/gallery/thumbs/DDP_f3.jpg" height="450px" />
									</a>
									<div class="caption">
										<h3>Centre de promotion de la médecine orientale</h3>
										<p>Un endroit où il y a un musée de médecine orientale, un centre d'expériences à base de plantes, <br> une salle de promotion de produits à base de plantes et un café oriental.</p>
										<ul class="actions fixed">
											<li><span class="button small">Détails</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/DDP_h2.JPG" class="image">
										<img src="img/gallery/thumbs/DDP_h2.JPG" height="450px" />
									</a>
									<div class="caption">
										<h3>Ambassadeur Novotel</h3>
										<p>Motif d'avant-toit Heunginjimun <br>C'est un hôtel 5 étoiles.</p>
										<ul class="actions fixed">
											<li><span class="button small">Détails</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/DDP_i1.JPG" class="image">
										<img src="img/gallery/thumbs/DDP_i1.JPG" height="450px" />
									</a>
									<div class="caption">
										<h3>Donghaehaemultang</h3>
										<p> Un endroit où vous pourrez déguster une variété de fruits de mer.</p>
										<ul class="actions fixed">
											<li><span class="button small">Détails</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/DDP_j1.JPG" class="image">
										<img src="img/gallery/thumbs/DDP_j1.JPG" height="450px" />
									</a>
									<div class="caption">
										<h3>Parc Naksan</h3>
										<p>Promenade avec une atmosphère calme </p>
										<ul class="actions fixed">
											<li><span class="button small">Détails</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/DDP_i3.JPG" class="image">
										<img src="img/gallery/thumbs/DDP_i3.JPG" height="450px" />
									</a>
									<div class="caption">
										<h3>dongdaemun keunjibbossam</h3>
										<p>Bulgogi assaisonné de bouillon d'os de boeuf</p>
										<ul class="actions fixed">
											<li><span class="button small">Détails</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/DDP_j2.JPG" class="image">
										<img src="img/gallery/thumbs/DDP_j2.JPG" height="450px" />
									</a>
									<div class="caption">
										<h3>Parc du château de Dongdaemun</h3>
										<p>Seonggwak-gil en face de Heunginjimun</p>
										<ul class="actions fixed">
											<li><span class="button small">Détails</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/DDP_j3.JPG" class="image">
										<img src="img/gallery/thumbs/DDP_j3.JPG" height="450px" />
									</a>
									<div class="caption">
										<h3>Village de peinture murale d'Ehwa-dong</h3>
										<p>Belle route de village avec des peintures murales de thèmes divers </p>
										<ul class="actions fixed">
											<li><span class="button small">Détails</span></li>
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