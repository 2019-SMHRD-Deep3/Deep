<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Myeongdong, Namdaemun, Bukchang</title>
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
			   
			   if(act.equals("활동성향_고궁,역사유적지방문")||act.equals("활동성향_업무수행")||act.equals("활동성향_전통문화체험")){
				   url_1 = "background-image: url('img/course/MD_a1.jpg');";
				   url_2 = "background-image: url('img/course/MD_a2.jpg');";
				   url_3 = "background-image: url('img/course/MD_a3.jpg');";
				   
				   head_1 = "Cathédrale de Myeongdong";
				   head_2 = "Namdaemun (Sungryemun)";
				   head_3 = "Bukchon Hanok Village";
				   
				   content_1 = "C'est la première paroisse de Corée et le symbole de l'Église catholique coréenne. Il a un plafond en forme d'arc-en-ciel, et l' extérieur montre sa grandeur à travers des décorations gothiques. Une visite incontournable est la cathédrale souterraine, située sous l'autel, qui abrite le cinquième plus grand vestige d' adultes et le quatrième plus grand vestige de martyrs ordinaires qui ont été victimes de persécutions de la part des catholiques au XIXe siècle ." ;
				   content_2 = "Ils'agit d'une ancienne architecture coréenne construite par Nammun, construite pendant le transfert de la capitale à Séoul avec la fondation de la dynastie Joseon . C'est la porte qui relie la ville à la distance la plus courte de la rivière Han et qui a le plus de passage de personnes et de marchandises. Lorsque le char a été ouvert en 1899, il ne pouvait plus servir de porte et il ne reste que quelques murs dans la section Sungnyemun.";
				   content_3 = "Vieilles traces de Séoul. C'est un endroit où vous pouvez voir des maisons traditionnelles coréennes (Hanok), et certaines maisons sont utilisées comme séjours hanok et maisons de thé traditionnelles pour les invités. Il faut environ 3 heures pour se promener." ;
					
				}else if (act.equals("활동성향_공연,민속,행사,축제 관람및참가")){
					
					url_1 = "background-image: url('img/course/MD_b1.jpg');";
					url_2 = "background-image: url('img/course/MD_b2.jpg');";
					url_3 = "background-image: url('img/course/MD_b3.jpg');";
					
					head_1 = "Théâtre des arts de Myeongdong";
					head_2 = "Performances";
					head_3 = "Myeongdong Busking";
					   
					content_1 = "Le Myeongdong Arts Theatre, situé entre la station Eulji-ro et la station Myeongdong, est un théâtre de taille moyenne avec 1 étage souterrain et 5 étages au-dessus du sol. En plus des pièces authentiques, des pièces expérimentales, des spectacles muets, des comédies musicales, des événements spéciaux tels que des festivals de théâtre et des festivals d'arts d'interprétation sont également organisés. Le public et la scène sont proches, vous pouvez donc profiter d'un spectacle plus vivant.";
					content_2 = "Nanta est un drame non verbal qui dramatise de façon comique les choses qui se passent dans la cuisine sur la base du rythme coréen traditionnel du samulnori . " +"<br>" +"Chaque année, 380 000 touristes étrangers visitent le stade Nanta. " +"<br>" +"Entre la performance de percussion utilisant tout dans la cuisine, la danse traditionnelle coréenne et la participation du public sont combinées pour créer un festival passionnant." ;
					content_3 = "Divers spectacles ont lieu devant Myeongdong Milliore. " +"<br>" +"C'est un espace où de nombreux groupes d'idols " +"<br>" +"et artistes populaires communiquent avec leurs fans. " +"<br>" +"Vous pouvez avoir une chance de voir les étoiles de près." ;
					
				}else if (act.equals("활동성향_놀이공원,테마파크")){
					
					url_1 = "background-image: url('img/course/MD_c1.jpg');";
					url_2 = "background-image: url('img/course/MD_c2.jpg');";
					url_3 = "background-image: url('img/course/MD_c3.jpg');";
					
					head_1 = "Boutique Line Friends";
					head_2 = "Hello Kitty Cafe";
					head_3 = "Amande au beurre de miel";
					   
					content_1 = "Situé en face de Savoy Hotel à Myeong-dong, Line Friends Flagship Store. Une grande poupée brune est à la porte pour la retrouver facilement à distance. C'est un endroit où vous pouvez parcourir tout en achetant diverses poupées de personnage, fournitures scolaires, fournitures de bureau et accessoires.";
					content_2 = "Lorsque les amoureux de Hello Kitty rendent visite à des amis, l'arrière-plan et l'éclairage sont magnifiques, vous pouvez donc créer des souvenirs dans la zone photo. Si vous commandez un verre, vous pouvez voir le magnifique Hello Kitty Art Latte et vous pouvez acheter divers articles de fantaisie pour les cadeaux. Si vous avez besoin d'un endroit pour vous reposer lors de vos achats, cela vaut la peine de vous arrêter." ;
					content_3 = "C'est un cours chaud et populaire pour les amandes au beurre de miel et diverses amandes !! itué dans le sous-sol de High Heriot aux sorties 6-7 de la station Myeong-dong, vous pouvez déguster différentes amandes par type. Même la zone photo est prête, vous pouvez donc prendre une photo de la vie." ;
					
					
				}else if (act.equals("활동성향_드라마,영화찰영지방문")){
					
					url_1 = "background-image: url('img/course/MD_d1.jpg');";
					url_2 = "background-image: url('img/course/MD_d2.jpg');";
					url_3 = "background-image: url('img/course/MD_d3.jpg');";
					
					head_1 = "Iksun-dong (machine à écrire de Chicago)";
					head_2 = "Myeongdong Alley (Black Priests)";
					head_3 = "Bukchon Hanok Village (température de l'amour)";
					   
					content_1 = "Dans le contexte d'un drame qui raconte les histoires de jeunes littéraires qui vivaient férocement dans les années 1930, vous pouvez sentir l'apparition de Gyeongseong , une Séoul dans les années 1930 . C'est un bon endroit à visiter quand vous voulez sentir la Séoul moderne.";
					content_2 = "Black Priests filmé sous un angle élevé L'emplacement du centre-ville de Myeongdong est une ruelle en face de Myeongdong Jungang Olive Young, à 6 minutes à pied de la cathédrale de Myeongdong. Le film est un exorcisme, un sujet rare dans les films coréens, et son arrière-plan principal est Myeong-dong. Ce sera amusant de comparer le sentiment de la scène du film avec la visite réelle." ;
					content_3 = "Un drame coréen se déroulant dans le contexte du village de Bukchon Hanok. Vous pouvez voir Gyedong-gil en arrière-plan et marcher tout en marchant parmi les belles maisons traditionnelles coréennes ." ;
					
					
				}else if (act.equals("활동성향_박물관,전시관방문")){
					
					url_1 = "background-image: url('img/course/MD_e1.jpg');";
					url_2 = "background-image: url('img/course/MD_e2.jpg');";
					url_3 = "background-image: url('img/course/MD_e3.jpg');";
					
					head_1 = "Musée d'art noir 3D";
					head_2 = "Musée d'histoire de Séoul";
					head_3 = "Rue pour le plaisir";
					   
					content_1 = "Il s'agit d'un parc à thème d'expérience d'illusion d'optique où les enfants peuvent profiter de l'illusion d'optique 3D des adultes aux images 3D . " +"<br>" + "L'art 3D, qui change toutes les 5 minutes," +"<br>" + "est l'endroit où les applaudissements des spectateurs viennent au temple. " +"<br>" + "Le seul musée BLACKART 3D au monde avec une mystérieuse technique d'illusion d'optique.";
					content_2 = "Un musée d'histoire urbaine qui montre l'histoire " +"<br>" + "et la culture de Séoul de la préhistoire aux temps modernes . " +"<br>" + "Il se compose de matériaux et d'expositions du milieu de Chosun à la fin du 20e siècle. " +"<br>" + "Il vend une variété de produits culturels uniques, " +"<br>" + "notamment des publications de musée." ;
					content_3 = "Une rue de l'art de la bande dessinée sur la route perchée menant à l'Université des femmes de Soongui et à l'école élémentaire Lira en direction de Namsan Park ." +"<br>" + " Lors de l'ascension de la colline, un personnage animé est affiché, " +"<br>" + "vous pouvez donc grimper en neige. " +"<br>" + "Le Seoul Animation Center est la destination finale." ;
					
					
				}else if (act.equals("활동성향_뷰티관광")){
					
					url_1 = "background-image: url('img/course/MD_f1.jpg');";
					url_2 = "background-image: url('img/course/MD_f2.jpg');";
					url_3 = "background-image: url('img/course/MD_f3.jpg');";
					
					head_1 = "Stylenanda Pink Hotel";
					head_2 = "";
					head_3 = "Chicor";
					   
					content_1 = "Magasin phare avec motif d'hôtel. "+ "<br>" +
							"L'ensemble du bâtiment est décoré en rose, "+ "<br>" +
							"et il est composé de thèmes rappelant les hôtels tels que les chambres et les spas. ";
					content_2 = "Les 1er et 2ème étages étaient remplis de 3N Cosmetics, "+ "<br>" +"une marque de cosmétiques de Stylanda, "+ "<br>" +
							"au 3ème étage avec des produits faits maison de Stylanda, "+ "<br>" +
							"et les 4ème et 5ème étages étaient remplis de vêtements de shopping en ligne."+ "<br>" +
							"Il y a aussi un café au 5ème étage qui vend des boissons développées par Stylenanda." ;
					content_3 = "Self-bar de maquillage «BEAUTY SPACE» rappelant une coiffeuse de rêve Ici,"+ "<br>" +
							"vous pouvez librement découvrir et tester les marques de maquillage, les appareils de beauté et les outils de beauté que vous avez choisis sans l'aide du personnel." ;
					
					
				}else if (act.equals("활동성향_쇼핑")){
					
					url_1 = "background-image: url('img/course/MD_g1.jpg');";
					url_2 = "background-image: url('img/course/MD_g2.jpg');";
					url_3 = "background-image: url('img/course/MD_g3.jpg');";
					
					head_1 = "Rue commerçante de Myeongdong";
					head_2 = "";
					head_3 = "Aland";
					   
					content_1 = "Vous pouvez profiter d'une variété d'achats, des marques de luxe aux marques SPA et aux magasins sous douane .Le magasinage le plus populaire est définitivement un magasin de beauté. Myeongdong Shopping Street compte de nombreux magasins de marques de beauté. ";
					content_2 = "Les magasins à des prix populaires vont des chaussures et des vêtements aux accessoires,  "+ "<br>" +"il n'y a donc pas de fardeau pour faire du shopping. Les étals le long de la route sont également des facteurs qui rendent les achats à Myeongdong plus intéressants." ;
					content_3 = "Un endroit pour vendre des vêtements, divers accessoires, des sacs de cosmétiques, etc.  "+ "<br>" +"Il existe de nombreux types d'endroits à visiter , de nouveaux vêtements jusqu'au deuxième étage et un espace de shopping avec une touche vintage aux troisième et quatrième étages." ;
					
					
				}else if (act.equals("활동성향_스포츠활동")|| act.equals("활동성향_레포츠활동")){
					
					url_1 = "background-image: url('img/course/MD_h1.jpg');";
					url_2 = "background-image: url('img/course/MD_h2.jpg');";
					url_3 = "background-image: url('img/course/MD_h3.jpg');";
					
					head_1 = "Salle de bowling éléphant";
					head_2 = "Chambre Multi Smile";
					head_3 = "Legend Heroes";
					   
					content_1 = "Il y a un abri et un snack-bar, et il est célèbre comme lieu de tir à l'épreuve des balles pour la course BTS." ;
					content_2 = "Un endroit où vous pouvez jouer confortablement avec des amis dans votre chambre avec différents thèmes. Des collations sont disponibles et vous pouvez passer du temps à regarder des films, des accessoires vestimentaires et divers jeux de société. Divers éléments d'événement sont également inclus, ce qui en fait un bon endroit pour laisser des souvenirs.";
					content_3 = "Espace culturel de jeu complexe (où il y a environ 10 jeux) C'est un endroit où vous pouvez jouer et profiter de divers jeux devant l'écran." ;
					
					
				}else if (act.equals("활동성향_식도락관광")){
					
					url_1 = "background-image: url('img/course/MD_i1.JPG');";
					url_2 = "background-image: url('img/course/MD_i2.JPG');";
					url_3 = "background-image: url('img/course/MD_i3.JPG');";
					
					head_1 = "Go Gung";
					head_2 = "Samgyeobcheonha";
					head_3 = "Côtes de poulet Yugane";
					   
					content_1 = "Un restaurant bibimbap avec une tradition de 30 ans de bibimbap "+ "<br>" +"qui a pris le goût du monde . "+ "<br>" +"Dans un bol coréen traditionnel, un bol d'herbes colorées, "+ "<br>" +"de noix et de yukhoe sont placés les uns sur les"+ "<br>" +" autres au goût et au goût délicieux."+ "<br>" +" Vous pouvez également déguster du jeon, "+ "<br>" +"du bulgogi et du vin de riz cocktail.";
					content_2 = "Ceci est un restaurant de poitrine de porc situé à Myeong-dong, Jung-gu, Séoul. "+ "<br>" +"La poitrine de porc fait référence à une portion spécifique "+ "<br>" +"de la poitrine de porc ou des aliments grillés."+ "<br>" +" Dans ce restaurant, vous pourrez déguster la poitrine de porc juteuse "+ "<br>" +"et le kimchi qui sont trempés directement."+ "<br>" +" C'est un restaurant célèbre à Myeong-dong comme restaurant"+ "<br>" +" préféré des étrangers." ;
					content_3 = "N ° 1 coréen des côtes de poulet représentatives de Yugane! "+ "<br>" +"Les côtes de poulet sont un plat typique sauté en Corée. "+ "<br>" +"Il s'agit d'un plat de poulet haché, assaisonné de pâte de poivron rouge"+ "<br>" +" et de sauce de soja, puis frit sur une plaque chauffante avec divers légumes . "+ "<br>" +"Les côtes de poulet Yugane sont appréciées pour leur"+ "<br>" +" goût constant depuis 1981 et ont capturé le goût du monde.";
		
					
				}else if (act.equals("활동성향_자연경관감상")|| act.equals("활동성향_휴양,휴식")){
					
					url_1 = "background-image: url('img/course/MD_j1.jpg');";
					url_2 = "background-image: url('img/course/MD_j2.jpg');";
					url_3 = "background-image: url('img/course/MD_j3.jpg');";
					
					head_1 = "Deoksugung";
					head_2 = "Namsan";
					head_3 = "Cheonggyecheon";
					   
					content_1 = "Ce palais a été utilisé comme résidence pour le "+ "<br>" +"Gojong de la dynastie Joseon."+ "<br>" +" Deoksugung est un site historique de l'"+ "<br>" +
							"ancienne langue coréenne, bien qu'il ait été construit comme un palais "+ "<br>" +"à la fin de la dynastie Joseon, et c'est un lieu d' architecture "+ "<br>" +"en bois traditionnelle et d'architecture occidentale .";
					content_2 = "Cette montagne mesure 265,2 m de haut et entoure le centre de Séoul."+ "<br>" +
							"Actuellement, au sommet de la montagne, "+ "<br>" +"il y a une tour de diffusion appelée Seoul Tower et Palgakjeong,"+ "<br>" +
							"où vous pouvez monter et descendre avec un téléphérique."+ "<br>" +
							"Le parc Namsan, un parc naturel, est installé sur les pentes de l'est,"+ "<br>" +" de l'ouest et du nord de Namsan"+ "<br>" +
							"pour fournir un lieu de repos aux citoyens de Séoul." ;
					content_3 = "Un ruisseau qui traverse la frontière entre Jongno-gu et Jung-gu, au milieu de Séoul."+ "<br>" +
							"Toute l'eau du bassin de Séoul se rassemble ici, "+ "<br>" +"fusionne avec Jungnangcheon et tombe dans la rivière Han."+ "<br>" +
							"La vue nocturne de la fontaine est super"+ "<br>" + "et c'est un endroit idéal pour se promener." ;

				}
				
				

				
				else {
					url_1 = "background-image: url('img/course/MD_a1.jpg');";
					url_2 = "background-image: url('img/course/MD_g1.jpg');";
					url_3 = "background-image: url('img/course/MD_g3.jpg');";
					
					head_1 = "Cathédrale de Myeongdong";
					head_2 = "Rue commerçante de Myeongdong";
					head_3 = "Aland";
					
					content_1 = "C'est la première paroisse de Corée et le symbole de l'Église catholique coréenne. Il a un plafond en forme d'arc-en-ciel, et l' extérieur montre sa grandeur à travers des décorations gothiques. Une visite incontournable est la cathédrale souterraine, située sous l'autel, qui abrite le cinquième plus grand vestige d' adultes et le quatrième plus grand vestige de martyrs ordinaires qui ont été victimes de persécutions de la part des catholiques au XIXe siècle ." ;

     				content_2 = "Vous pouvez profiter d'une variété d'achats, des marques de luxe aux marques SPA et aux magasins sous douane .Le magasinage le plus populaire est définitivement un magasin de beauté. Myeongdong Shopping Street compte de nombreux magasins de marques de beauté. ";
     				content_3 = "Un endroit pour vendre des vêtements, divers accessoires, des sacs de cosmétiques, etc.  "+ "<br>" +"Il existe de nombreux types d'endroits à visiter , de nouveaux vêtements jusqu'au deuxième étage et un espace de shopping avec une touche vintage aux troisième et quatrième étages." ;

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
						<br>	<h2>Galerie</h2>
						<ul class="actions stacked">
								<li><a href="#one" class="button">go up</a></li>
							</ul>

						<!-- Gallery -->
							<div class="gallery style2 medium lightbox onscroll-fade-in" id = "gallery">
							<article>
									<a href="img/gallery/fulls/MD_a1.jpg" class="image">
										<img src="img/gallery/thumbs/MD_a1.jpg" height="450px" /></a>
									<div class="caption">
										<h3>Cathédrale de Myeongdong</h3>
										<p>La première nef de Corée, symbole de l'Église catholique coréenne</p>
										<ul class="actions fixed"><li><span class="button small">Détails</span></li></ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/MD_a2.jpg" class="image">
										<img src="img/gallery/thumbs/MD_a2.jpg" height="450px" /></a>
									<div class="caption">
										<h3>Namdaemun (Sungryemun)</h3>
										<p>Il s'agit d'une ancienne architecture coréenne construite par Nammun, construite pendant le transfert de la capitale à Séoul avec la fondation de la dynastie Joseon.</p>
										<ul class="actions fixed"><li><span class="button small">Détails</span></li></ul>
									</div>
								</article>
								
								<article>
									<a href="img/gallery/fulls/MD_a3.jpg" class="image">
										<img src="img/gallery/thumbs/MD_a3.jpg" height="450px" /></a>
									<div class="caption">
										<h3>Bukchon Hanok Village</h3>
										<p>Où vous pouvez voir les maisons traditionnelles coréennes (Hanok)</p>
										<ul class="actions fixed"><li><span class="button small">Détails</span></li></ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/MD_b1.jpg" class="image">
										<img src="img/gallery/thumbs/MD_b1.jpg" height="450px" /></a>
									<div class="caption">
										<h3>Théâtre des arts de Myeongdong</h3>
										<p>Des événements spéciaux tels que des drames orthodoxes, des pièces expérimentales, des spectacles muets, des comédies musicales, ainsi que des festivals de théâtre et des festivals d'arts d'interprétation sont également organisés.</p>
										<ul class="actions fixed"><li><span class="button small">Détails</span></li></ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/MD_b2.jpg" class="image">
										<img src="img/gallery/thumbs/MD_b2.jpg" height="450px" />
									</a>
									<div class="caption">
										<h3>Performances</h3>
										<p>La performance de percussion utilisant tout dans la cuisine La danse traditionnelle de Corée de Saisai et la participation du public est un festival passionnant</p>
										<ul class="actions fixed"><li><span class="button small">Détails</span></li></ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/MD_c1.jpg" class="image">
										<img src="img/gallery/thumbs/MD_c1.jpg" height="450px" />
									</a>
									<div class="caption">
										<h3>Boutique Line Friends</h3>
										<p>Magasin phare Myeongdong Savoy Hotel Line Friends</p>
										<ul class="actions fixed"><li><span class="button small">Détails</span></li></ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/MD_c2.jpg" class="image">
										<img src="img/gallery/thumbs/MD_c2.jpg" height="450px" />
									</a>
									<div class="caption">
										<h3>Hello Kitty Cafe</h3>
										<p>Un endroit où vous pouvez voir de jolis lattes d'art Hello Kitty et acheter divers articles de fantaisie pour des cadeaux</p>
										<ul class="actions fixed"><li><span class="button small">Détails</span></li></ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/MD_c3.jpg" class="image">
										<img src="img/gallery/thumbs/MD_c3.jpg" height="450px" />
									</a>
									<div class="caption">
										<h3>Amande au beurre de miel</h3>
										<p>Il s'agit d'un cours chaud et populaire pour les amandes au beurre de miel et diverses amandes.</p>
										<ul class="actions fixed"><li><span class="button small">Détails</span></li></ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/MD_d2.jpg" class="image">
										<img src="img/gallery/thumbs/MD_d2.jpg" height="450px" />
									</a>
									<div class="caption">
										<h3>Myeongdong Alley</h3>
										<p>Les prêtres noirs tournent l'exorcisme cinématographique et le contexte principal est Myeong-dong.</p>
										<ul class="actions fixed"><li><span class="button small">Détails</span></li></ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/MD_d3.jpg" class="image">
										<img src="img/gallery/thumbs/MD_d3.jpg" height="450px" />
									</a>
									<div class="caption">
										<h3>Bukchon Hanok Village</h3>
										<p>Amour Température Drame Lieu de tournage Bukchon</p>
										<ul class="actions fixed"><li><span class="button small">Détails</span></li></ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/MD_e1.jpg" class="image">
										<img src="img/gallery/thumbs/MD_e1.jpg" height="450px" />
									</a>
									<div class="caption">
										<h3>Musée d'art noir 3D</h3>
										<p>Le seul musée BLACKART 3D au monde avec une mystérieuse technique d'illusion d'optique.</p>
										<ul class="actions fixed"><li><span class="button small">Détails</span></li></ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/MD_e2.jpg" class="image">
										<img src="img/gallery/thumbs/MD_e2.jpg" height="450px" />
									</a>
									<div class="caption">
										<h3>Musée d'histoire de Séoul</h3>
										<p>Un musée d'histoire urbaine qui montre l'histoire et la culture de Séoul de la préhistoire aux temps modernes.</p>
										<ul class="actions fixed"><li><span class="button small">Détails</span></li></ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/MD_e3.jpg" class="image">
										<img src="img/gallery/thumbs/MD_e3.jpg" height="450px" />
									</a>
									<div class="caption">
										<h3>Myeongdong Street for Fun</h3>
										<p>Gobawi Hill Road Manga Art Street.</p>
										<ul class="actions fixed"><li><span class="button small">Détails</span></li></ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/MD_f1.jpg" class="image">
										<img src="img/gallery/thumbs/MD_f1.jpg" height="450px" />
									</a>
									<div class="caption">
										<h3>Stylenanda Pink Hotel</h3>
										<p>Magasin phare avec motif d'hôtel.</p>
										<ul class="actions fixed"><li><span class="button small">Détails</span></li></ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/MD_f3.jpg" class="image">
										<img src="img/gallery/thumbs/MD_f3.jpg" height="450px" />
									</a>
									<div class="caption">
										<h3>Chicor</h3>
										<p>'BEAUTY SPACE', un self bar de maquillage rappelant une coiffeuse de rêve</p>
										<ul class="actions fixed"><li><span class="button small">Détails</span></li></ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/MD_g1.jpg" class="image">
										<img src="img/gallery/thumbs/MD_g1.jpg" height="450px" />
									</a>
									<div class="caption">
										<h3>Rue commerçante de Myeongdong</h3>
										<p>Vous pouvez profiter d'une variété d'achats, des marques de luxe aux marques SPA et aux magasins sous douane.</p>
										<ul class="actions fixed"><li><span class="button small">Détails</span></li></ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/MD_g3.jpg" class="image">
										<img src="img/gallery/thumbs/MD_g3.jpg" height="450px" />
									</a>
									<div class="caption">
										<h3>Aland</h3>
										<p>Vendre des vêtements, divers accessoires, des sacs de cosmétiques, etc.</p>
										<ul class="actions fixed"><li><span class="button small">Détails</span></li></ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/MD_h2.jpg" class="image">
										<img src="img/gallery/thumbs/MD_h2.jpg" height="450px" />
									</a>
									<div class="caption">
										<h3>Chambre Multi Smile</h3>
										<p>Un endroit où vous pouvez jouer confortablement avec des amis dans votre chambre avec différents thèmes.</p>
										<ul class="actions fixed"><li><span class="button small">Détails</span></li></ul>
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