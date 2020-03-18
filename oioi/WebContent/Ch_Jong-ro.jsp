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
		<%-- 	<% String act = (String)request.getParameter("act"); %> 
 --%>			<% String act = "활동성향_고궁,역사유적지방문"; %> 

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
				   
				   head_1 = "昌德宫";
				   head_2 = "景福宫";
				   head_3 = "仁寺洞街";
				   
				   content_1 = "昌德宫是朝鲜王朝的宫殿，位于韩国首尔" +"<br>" +
						"东邻昌庆宫。" +"<br>" +
						"在景福" +"<br>" +
						"宫的东面，朝鲜时代与昌庆一起被称为东宫。" ;
				   content_2 = "它也被称为Bukgyeol，因为它位于Doseong的北部。" +"<br>" +
						   "它是根据朝鲜王朝的建立而建立的，最初被用作宫殿，但" +"<br>" +
						   "在临津战争期间被烧毁后，在废墟中保留了很长时间";
				   content_3 = "在瞬息万变的世界中，有一条街道可以保存和继承韩国的独特风格。" +"<br>" +
						" 您会看到很多韩国艺术，传统汽车以及寺庙美食，以及" +"<br>" +
						" 说“韩国”在仁寺洞时会想到的许多事情。" +"<br>" +
						" 它是韩国最受欢迎的旅游目的地之一。" ;
					
				}else if (act.equals("활동성향_공연,민속,행사,축제 관람및참가")|| act.equals("활동성향_박물관,전시관방문")){
					
					url_1 = "background-image: url('img/course/jr_b1.JPG');";
					url_2 = "background-image: url('img/course/jr_b2.JPG');";
					url_3 = "background-image: url('img/course/jr_b3.JPG');";
					
					head_1 = "光化门美术馆";
					head_2 = "世宗忠武公的故事";
					head_3 = "龚平市遗址展示馆";
					   
					content_1 = "光化门艺术馆"+"<br>"+
							"位于钟路区设施管理公司钟路文化体育馆内。钟路文化体育中心内的各种设施均设有"+"<br>"+
							"室外花园，餐厅，文化教室，游泳池，健身中心"+"<br>"+
							"运动场等，"+"<br>"+
							"因此更加便利。";
					content_2 = "世宗和忠武公的故事是与世宗大王和李舜臣"+"<br>"+
							"海军上将有关的展览，位于世宗表演艺术中心二楼。除展览外，"+"<br>"+
							"我们 还提供各种节目，使您可以穿上从幼儿园到小学生的各年龄段儿童制作的韩服，体验传统文化。" ;
					content_3 = "龚平市城市遗产展览馆是一个城市博物馆，保存并展示贡平1、2和4区市区重建过程中"+"<br>"+
							"挖掘出的朝鲜时代16世纪建筑物和道路。"+"<br>"+
							"在龚平市文物展览馆，"+"<br>"+
							"您可以看到朝鲜时期汉阳人的生活。";


				}else if (act.equals("활동성향_놀이공원,테마파크")){
					
					url_1 = "background-image: url('img/course/jr_c1.JPG');";
					url_2 = "background-image: url('img/course/jr_c2.JPG');";
					url_3 = "background-image: url('img/course/jr_c3.jpg');";
					
					head_1 = "奔跑者体验馆";
					head_2 = "特兹姆泰迪熊主题公园";
					head_3 = "Ssamji-gil体验工作坊";
					   
					content_1 ="新概念内容将成为电视节目的主角！"+"<br>"+
							"自己成为一名跑步者，找到隐藏的R积分，并"+"<br>"+
							"根据您获得的积分获得各种跑步者徽章和证书。";
					content_2 = "Tezium Seoul，位于首尔钟路区，是一个泰迪熊主题公园。"+"<br>"+
							"这是一个开放式的展览空间，您可以触摸和拥抱泰迪熊，还可以看到泰迪熊"+"<br>"+
							"的起源，起源和历史。"+"<br>"+
							"首尔主题区将首尔作为泰迪熊从旧时代引入首尔。" ;
					content_3 = "在Ssamji-gil体验讲习班上，举办了"+"<br>"+
							"诸如历史节目Hyangyeon，Kim Yoo-guk Hakmok木工学校，Serra Week和Glassborn 等活动。"+"<br>"+
							"宴会上，您可以制香，肥皂和化妆品。您可以在"+"<br>"+
							"Kim Soo-guk Hakhak Woodcraft School，"+"<br>"+
							"Serra Week上的手绘陶瓷"+"<br>"+
							"和Glassborn上的玻璃瓶工艺品中体验。" ;
					
					
				}else if (act.equals("활동성향_드라마,영화찰영지방문")){
					
					url_1 = "background-image: url('img/course/jr_d1.JPG');";
					url_2 = "background-image: url('img/course/jr_d2.JPG');";
					url_3 = "background-image: url('img/course/jr_d3.JPG');";
					
					head_1 = "石墙路（地精）";
					head_2 = "我的诗（按狐狸小时）";
					head_3 = "首尔特别市";
					   
					content_1 = "尹恩德(金高恩）离开德成女子高中和门女子高中"+"<br>"+
							"的德城女子高中和ung门女子高中，是拍照的好地方。";
					content_2 = " 《福克斯之星》是一部人类戏剧剧，在"+"<br>"+
							"事故发生 的第一年，一个神秘的新故事和一个神秘的故事与仁川机场的人们发生碰撞，以弥补彼此的不足和伤痕。"+"<br>"+
							"我的诗集是这部戏在钟路区益顺洞韩屋街的地点。" ;
					content_3 = "屋顶室的王子是一部时光倒流的戏剧，可以追溯到300年前。"+"<br>"+
							"人物走过 的街道上有  戏剧性的痕迹，楼梯跳了起来，汉城的风景在美丽的枫树下蔓延。";
						
					
				}else if (act.equals("활동성향_뷰티관광")|| act.equals("활동성향_쇼핑")){
					
					url_1 = "background-image: url('img/course/jr_f1.JPG');";
					url_2 = "background-image: url('img/course/jr_f2.JPG');";
					url_3 = "background-image: url('img/course/jr_f3.JPG');";
					
					head_1 = "仁寺洞街";
					head_2 = "东和免税店";
					head_3 = "钟路贵金属街";
					   
					content_1 = "在瞬息万变的世界中，有一条街道可以保存和继承韩国的独特风格。" +"<br>" +
							" 您会看到很多韩国艺术，传统汽车以及寺庙美食，以及" +"<br>" +
							" 说“韩国”在仁寺洞时会想到的许多事情。" +"<br>" +
							" 它是韩国最受欢迎的旅游目的地之一。" ;
					content_2 = "东华免税店位于钟路市光化门大厦地下室" +"<br>" +
							"是首尔最早的免税店，于1973年开业。" +"<br>" +
							"包括爱马仕（Hermes），路易威登（Louis Vuitton），古驰（Gucci）和宝格丽（Bulgari）在内的250多个" +"<br>" +
							"世界著名品牌都在店内，" +"<br>" +
							"展示和出售了30万多种 进口产品。" ;
					content_3 = "钟路贵金属街是拥有40年历史的贵金属购物街。即使到现在" +"<br>" +
							"仍然有活跃的交易占全国珠宝贸易的70％。" +"<br>" +
							"服务和内饰也得到了升级，" +"<br>" +
							"年轻人喜欢购物和昏迷。" +"<br>" +
							"它也很受欢迎，作为外国人的购物课程。" ;
					
				}else if (act.equals("활동성향_스포츠활동")|| act.equals("활동성향_레포츠활동")){
					
					url_1 = "background-image: url('img/course/jr_h1.JPG');";
					url_2 = "background-image: url('img/course/jr_h2.JPG');";
					url_3 = "background-image: url('img/course/jr_h3.JPG');";
					
					head_1 = "罗尔公园(LoL Park)";
					head_2 = "TCC核心攀登";
					head_3 = "奔跑者体验馆";
					   
					content_1 = "首尔市中心钟路（钟阁站）有一个“英雄联盟（滚动）”体育场。"+"<br>"+
							"这座名为“ LoL PARK”的纯电竞运动场馆拥有特殊的空间，您可以在"+"<br>"+
							"更舒适的环境中观看《英雄联盟》（Riot Games的代表作《英雄联盟》）";
					content_2 = "运动攀爬对于力量训练和饮食非常有效。"+"<br>"+
							"攀爬是最重要的，是手臂的力量和抓地力，"+"<br>"+
							"一旦连接到墙壁，"+"<br>"+
							"它就是一种锻炼方法，使您无需任何其他思考即可将自己沉浸在当前的肘部中，因为您正在考虑下一步并专注于身体运动。" ;
					content_3 = "新概念内容将成为电视节目的主角！"+"<br>"+
							"自己成为一名跑步者，找到隐藏的R积分，并"+"<br>"+
							"根据您获得的积分获得各种跑步者徽章和证书。";
				
				}else if (act.equals("활동성향_식도락관광")){
					
					url_1 = "background-image: url('img/course/jr_i1.JPG');";
					url_2 = "background-image: url('img/course/jr_i2.JPG');";
					url_3 = "background-image: url('img/course/jr_i3.JPG');";
					
					head_1 = "兵库汽车肉";
					head_2 = "陶器屋";
					head_3 = "顺熙的Bindae Tteok";
					   
					content_1 = "在景福宫站附近，"+"<br>"+
							"是 坐在出售猪肉，五花肉和肋骨的圆桌旁的好地方，这些猪肉是流行的猪肉和肉。";
					content_2 = "Jonggak附近的Jongno 3-ga餐厅和Dukbaegi餐厅是非常著名的餐厅。"+"<br>"+
							"Ttukbaegi餐厅最具代表性的菜单是Woongong味o。"+"<br>"+
							"这家餐厅在外国游客中也很受欢迎，因此"+"<br>"+
							"餐厅的名称用日语和英语书写。" ;
					content_3 = "Bindaetteok是韩国的配菜。"+"<br>"+
							"基本上，它是"+"<br>"+
							"种将绿豆与药草，肉等混合制成的绿豆茎。" ;	
				
					
				}else if (act.equals("활동성향_자연경관감상")|| act.equals("활동성향_휴양,휴식")){
					
					url_1 = "background-image: url('img/course/jr_j1.jpg');";
					url_2 = "background-image: url('img/course/jr_j2.JPG');";
					url_3 = "background-image: url('img/course/jr_j3.JPG');";
					
					head_1 = "清溪川";
					head_2 = "北村韩屋村";
					head_3 = "Mugyewon";
					   
					content_1 = "流经首尔市中心钟路区与中区之间的边界。"+"<br>"+
							"首尔盆地的所有水都聚集在这里，"+"<br>"+
							"与江南川汇合在一起，落入汉江。"+"<br>"+
							"喷泉的夜景很棒，是散步的好地方。";
					content_2 = "首尔的旧痕迹。"+"<br>"+
							"在这里可以看到韩国传统民居（韩屋），"+"<br>"+
							"有些房屋还用作韩屋住宿和传统茶馆供客人使用。"+"<br>"+
							"大约需要3个小时才能走动。" ;
					content_3 = "Mugyewon是在钟路区Buam-dong开放的城市传统文化空间。这"+"<br>"+
							"是一个特殊的空间，您可以在幽静的风景中体验韩屋，并通过传统和文化感受到韩国的美丽。"+"<br>"+
							"Muchaewon的Anchae，Sarangchae和Haengrangchae"+"<br>"+
							"可以用于研讨会，讲座，会议室等，并且"+"<br>"+
							"在Anchae Maru，庭院和后院等附加设施中还可以举办各种传统文化活动。" ;	
				}else {
					url_1 = "background-image: url('img/course/jr_a3.JPG');";
					url_2 = "background-image: url('img/course/jr_b2.JPG');";
					url_3 = "background-image: url('img/course/jr_h3.JPG');";
					
					head_1 = "仁寺洞街";
					head_2 = "世宗忠武公的故事";
					head_3 = "奔跑者体验馆";
					   
					content_1 = "在瞬息万变的世界中，有一条街道可以保存和继承韩国的独特风格。" +"<br>" +
							" 您会看到很多韩国艺术，传统汽车以及寺庙美食，以及" +"<br>" +
							" 说“韩国”在仁寺洞时会想到的许多事情。" +"<br>" +
							" 它是韩国最受欢迎的旅游目的地之一。" ;
					content_2 = "世宗和忠武公的故事是与世宗大王和李舜臣"+"<br>"+
					"海军上将有关的展览，位于世宗表演艺术中心二楼。除展览外，"+"<br>"+
					"我们 还提供各种节目，使您可以穿上从幼儿园到小学生的各年龄段儿童制作的韩服，体验传统文化。" ;
					content_3 = "新概念内容将成为电视节目的主角！"+"<br>"+
							"自己成为一名跑步者，找到隐藏的R积分，并"+"<br>"+
							"根据您获得的积分获得各种跑步者徽章和证书。";
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
								<li><a href="#two" class="button big wide smooth-scroll-middle">Go down</a></li>
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
								<li><a href="#three" class="button big wide smooth-scroll-middle">Go down</a></li>
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
								<li><a href="#gallery" class="button big wide smooth-scroll-middle">Go down</a></li>
							</ul>

						</div>
						<div class="image">
							<img class = "iii"  id= "img3" style = "<%= url_3 %>"/>
						</div>
					</section>
					


				<!-- Gallery -->
					<section class="wrapper style1 align-center">
							<br>
							<h2>画廊</h2>
						<ul class="actions stacked">
								<li><a href="#one" class="button">Go Up</a></li>
							</ul>

						<!-- Gallery -->
							<div class="gallery style2 medium lightbox onscroll-fade-in" id = "gallery">
							<article>
									<a href="img/gallery/fulls/jr_a1.JPG" class="image">
										<img src="img/gallery/thumbs/jr_a1.JPG" height="450px" /></a>
									<div class="caption">
										<h3>昌德宫</h3>
										<p>位于韩国首尔 <br>朝鲜王宫</p>
										<ul class="actions fixed"><li><span class="button small">Details</span></li></ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/jr_a3.JPG" class="image">
										<img src="img/gallery/thumbs/jr_a3.JPG" height="450px" /></a>
									<div class="caption">
										<h3>仁寺洞街</h3>										
										<p>保留韩国特色<br>继承距离</p>
										<ul class="actions fixed"><li><span class="button small">Details</span></li></ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/jr_b1.JPG" class="image">
										<img src="img/gallery/thumbs/jr_b1.JPG" height="450px" /></a>
									<div class="caption">
										<h3>光化门美术馆</h3>
										<p>室外花园，餐厅，文化课，<br>游泳池，健身房，运动场等</p>
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
										<h3>世宗忠武公的故事</h3>
										<p>位于世宗中心二楼 <br>世宗大王与李舜臣将军相关的展览</p>
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
										<h3>龚平市遗址展示馆</h3>
										<p>朝鲜时期16世纪的建筑物和道路<br>城市博物馆原样保存并展示</p>
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
										<h3>奔跑者体验馆</h3>
										<p>成为电视节目的主角<br>新概念内容！</p>
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
										<h3>特兹姆泰迪熊主题公园</h3>
										<p>泰迪熊的起源和起源，历史</p>
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
										<h3>Ssamji-gil体验工作坊</h3>
										<p>襄阳市·金Yo国旧木工学校·<br>体验节目，例如Serra Week和Glassborn</p>
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
										<h3>石墙路（地精）</h3>
										<p>戏剧地精的位置</p>
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
										<h3>我的诗（按狐狸小时）</h3>
										<p>戏剧狐狸拍摄地点</p>
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
										<h3>东和免税店</h3>
										<p>推出250多个世界知名品牌</p>
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
										<h3>罗尔公园(LoL Park)</h3>
										<p>英雄联盟（lol）体育场</p>
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
										<h3>TCC核心攀登</h3>
										<p>对饮食和力量训练非常有效</p>
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
										<h3>清溪川</h3>
										<p>首尔的心脏 <br>一条流经钟路区和中区之间边界的河。</p>
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
										<h3>北村韩屋村</h3>
										<p>首尔的旧痕迹。 <br>在这里可以看到韩国传统民居（韩屋）</p>
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
										<p>在安静的风景中体验韩屋，<br>通过传统和文化 <br>感受韩国美景的特殊空间</p>
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