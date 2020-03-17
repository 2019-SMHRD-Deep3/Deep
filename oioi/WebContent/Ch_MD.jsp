<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>明洞</title>
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
			<% String act = "활d관감상"; %>
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
				   
				   head_1 = "明洞大教堂";
				   head_2 = "南大门（Sungryemun）";
				   head_3 = "北村韩屋村";
				   
				   content_1 = "它是韩国的第一个教区，也是韩国天主教会的象征。 "+ "<br>" +"  它有一个彩虹形的天花板，外部通过哥特式装饰展现出其宏伟。 "+ "<br>" +"  必须参观的是位于祭坛下方的地下大教堂，里面有 成年人的第五  大遗骸和19世纪遭受天主教徒迫害的普通烈士的 第四大遗骸。" ;
				   content_2 = "它 是南门建造的韩国古老建筑， "+ "<br>" +" 在朝鲜王朝成立之初将首都迁至首尔时建造   "+ "<br>" +" 它是连接城市与汉江距离最短的大门， "+ "<br>" +"  拥有最多的 人和货物通道。 "+ "<br>" +"   当坦克于1899年开放时，它不再可以用作大门， "+ "<br>" +" 而 在Sungnyemun部分仅保留了一些墙壁。";
				   content_3 = "首尔的旧痕迹。 "+ "<br>" +" 在这里可以看到韩国传统民居（韩屋）， "+ "<br>" +" 有些房屋还用作韩屋  住宿和传统茶馆供客人使用。 "+ "<br>" +"   大约需要3个小时才能走动。" ;
					
				}else if (act.equals("활동성향_공연,민속,행사,축제 관람및참가")){
					
					url_1 = "background-image: url('img/course/MD_b1.jpg');";
					url_2 = "background-image: url('img/course/MD_b2.jpg');";
					url_3 = "background-image: url('img/course/MD_b3.jpg');";
					
					head_1 = "明洞艺术剧院";
					head_2 = "性能表现";
					head_3 = "明洞街头";
					   
					content_1 = "位于乙支路站和明洞站之间的明洞艺术剧院是一个"+ "<br>" +
							"中等大小的剧院， 地下一层，地上五层。"+ "<br>" +
							"除了地道的戏剧之外 还举办实验性戏剧，哑剧表演，"+ "<br>" +"音乐剧， 特殊活动，例如戏剧和表演艺术。"+ "<br>" +
							"观众和舞台都近在咫尺，所以您可以欣赏到更生动的表演。";
					content_2 = "南塔（Nanta）是一部非言语"+ "<br>" +
							"戏剧，根据韩国传统的武士节奏，"+ "<br>" +"滑稽地将 厨房中发生的事情戏剧化。"+ "<br>" +
							"每年有38万外国游客参观南塔体育场。"+ "<br>" +
							"在厨房里使用打击乐器演奏的所有东西之间，"+ "<br>" +"结合了韩国传统舞蹈和"+ "<br>" +
							"观众参与，创造了一个令人兴奋的节日。" ;
					content_3 = "明洞千鸟广场前举行各种表演。"+ "<br>" +
							"在这里，许多受欢迎的偶像团体和演艺人员都与歌迷交流。"+ "<br>" +
							"您将有机会看到近距离的星星。" ;
					
				}else if (act.equals("활동성향_놀이공원,테마파크")){
					
					url_1 = "background-image: url('img/course/MD_c1.jpg');";
					url_2 = "background-image: url('img/course/MD_c2.jpg');";
					url_3 = "background-image: url('img/course/MD_c3.jpg');";
					
					head_1 = "线友商店";
					head_2 = "凯蒂猫咖啡馆";
					head_3 = "蜂蜜黄油杏仁";
					   
					content_1 = "Line Friends旗舰店位于明洞的萨沃伊饭店前。"+ "<br>" +
							"门口有一个大的棕色洋娃娃，可以从远处轻易找到。在这里，您可以浏览并购买"+ "<br>" +
							"各种角色娃娃，学校用品，办公用品和配件。";
					content_2 = "凯蒂猫（Hello Kitty）恋人与朋友一起探访时，背景和灯光都很漂亮,"+ "<br>" +
							"因此您可以在照片区中留下回忆。"+ "<br>" +
							"如果您订购饮料，则可以看到美丽的Hello Kitty Art Latte，"+ "<br>" +
							"还可以购买各种精美的礼物作为礼物。"+ "<br>" +
							"如果您在购物时需要休息的地方，值得停下来。" ;
					content_3 = "这是蜂蜜黄油杏仁和各种杏仁的热门热门课程！"+ "<br>" +
							"位于明洞站6-7号出口的高Heriot地下室，"+ "<br>" +
							"您可以按类型取样各种杏仁。"+ "<br>" +
							"甚至照片区已准备就绪，因此您可以拍摄生活照。" ;
					
					
				}else if (act.equals("활동성향_드라마,영화찰영지방문")){
					
					url_1 = "background-image: url('img/course/MD_d1.jpg');";
					url_2 = "background-image: url('img/course/MD_d2.jpg');";
					url_3 = "background-image: url('img/course/MD_d3.jpg');";
					
					head_1 = "益顺洞"+ "<br>" +"（芝加哥打字机）";
					head_2 = "明洞巷（黑祭司）";
					head_3 = "北村韩屋村（爱的温度）";
					   
					content_1 = "在 一部描述1930年代激烈生活的年轻文学家的故事的戏剧背景中，"+ "<br>" +" 您可以感受到1930年代首尔景城的出现。"+ "<br>" +"当您想感受现代首尔时，这里是个不错的去处。";
					content_2 = "黑色牧师以高角度拍摄明洞市中心的位置是"+ "<br>" +
							"一条明洞中央小橄榄对面的小巷"+ "<br>" + 
							"距离明洞大教堂有6分钟的步行路程。"+ "<br>" + 
							"这部电影是驱魔，是韩国电影中很少见的话题，其主要背景是明洞。"+ "<br>" + 
							"将电影场景的感觉与实际访问进行比较会很有趣。" ;
					content_3 = "以北村韩屋村为背景的韩剧。"+ "<br>" + 
							"您可以在后台看到Gyedong-gil，"+ "<br>" + 
							"然后在美丽的韩国房屋之间 行走。" ;
					
					
				}else if (act.equals("활동성향_박물관,전시관방문")){
					
					url_1 = "background-image: url('img/course/MD_e1.jpg');";
					url_2 = "background-image: url('img/course/MD_e2.jpg');";
					url_3 = "background-image: url('img/course/MD_e3.jpg');";
					
					head_1 = "3D黑色艺术博物馆";
					head_2 = "首尔历史博物馆";
					head_3 = "街头娱乐";
					   
					content_1 = "这是一个错觉体验主题公园，"+ "<br>" +"儿童可以从成人到3D 图片欣赏3D错觉。"+ "<br>" +
							"每5分钟更改一次的3D艺术是观众欢呼雀跃的地方。"+ "<br>" +
							"世界上唯一具有神秘幻觉技术的3D BLACKART博物馆。";
					content_2 = "一个城市历史博物馆，展示了史前至现代首尔的历史和文化。"+ "<br>" +
							"它由朝鲜中期至20世纪末的材料和展览组成。"+ "<br>" +
							"它出售各种独特的文化产品，包括博物馆出版物。" ;
					content_3 = "一条 山上的卡通艺术街，"+ "<br>" +"朝日女子女子大学和里拉小学朝南山公园方向。"+ "<br>" +
							"爬山时，会显示一个动画角色，"+ "<br>" +
							"因此 您可以在下雪时攀爬。"+ "<br>" +
							"首尔动画中心是最终的目的地。" ;
					
					
				}else if (act.equals("활동성향_뷰티관광")){
					
					url_1 = "background-image: url('img/course/MD_f1.jpg');";
					url_2 = "background-image: url('img/course/MD_f2.jpg');";
					url_3 = "background-image: url('img/course/MD_f3.jpg');";
					
					head_1 = "Stylenanda Pink酒店";
					head_2 = "";
					head_3 = "西科";
					   
					content_1 = "以酒店为主题的旗舰店。"+ "<br>" +
							"整个建筑均以粉红色装饰，"+ "<br>" +
							"其主题让人联想到酒店，例如客房和水疗中心。 ";
					content_2 = "1楼和2楼充满了Stylanda的化妆品品牌3N Cosmetics，"+ "<br>" +
							"3楼是Stylanda 的自制产品，而"+ "<br>" +
							"4楼和5楼则充满了在线购物中心的服装产品。"+ "<br>" +
							"5楼还有一个咖啡馆，出售Stylenanda开发的饮料。" ;
					content_3 = "化妆自我吧台“ BEAUTY SPACE”，"+ "<br>" +"让人联想起梦中的梳妆台 在这里，"+ "<br>" +
							"您 无需员工的帮助即可自由体验和测试您选择的化妆品牌，"+ "<br>" +"美容设备和美容工具。" ;
					
					
				}else if (act.equals("활동성향_쇼핑")){
					
					url_1 = "background-image: url('img/course/MD_g1.jpg');";
					url_2 = "background-image: url('img/course/MD_g2.jpg');";
					url_3 = "background-image: url('img/course/MD_g3.jpg');";
					
					head_1 = "明洞购物街";
					head_2 = "";
					head_3 = "奥兰";
					   
					content_1 = "您 可以享受从奢侈品牌到SPA"+ "<br>" +"品牌和保税店的各种购物。"+ "<br>" +
							"最受欢迎的购物商店肯定是美容店。"+ "<br>" +
							"明洞购物街有许多美容品牌商店。";
					content_2 = "商店的价格从鞋子，衣服到配饰，"+ "<br>" +"价格范围很广，所以没有购物负担。"+ "<br>" +
							"路上的摊位也是 "+ "<br>" +"使明洞购物更有趣的因素。" ;
					content_3 = "出售衣服，各种配件，手提袋化妆品等的地方。"+ "<br>" +
							"有许多不同类型的景点可供参观,"+ "<br>" +
							"直到二楼都有新衣服，而在三楼和四楼则有复古的购物空间。" ;
					
					
				}else if (act.equals("활동성향_스포츠활동")|| act.equals("활동성향_레포츠활동")){
					
					url_1 = "background-image: url('img/course/MD_h1.jpg');";
					url_2 = "background-image: url('img/course/MD_h2.jpg');";
					url_3 = "background-image: url('img/course/MD_h3.jpg');";
					
					head_1 = "大象保龄球馆";
					head_2 = "微笑多人间";
					head_3 = "传奇英雄";
					   
					content_1 = "有一个庇护所和小吃店，"+ "<br>" +"它是防弹少年团跑步的防弹射击场。";
					content_2 = "在这里，您可以与房间中各种主题的朋友一起舒适地玩耍。"+ "<br>" +
							"提供小吃店，您可以花时间看电影，服装配件和各种棋盘游戏。"+ "<br>" +
							"还包括各种活动项目，是留下回忆的好地方。" ;
					content_3 = "复杂的游戏文化空间"+ "<br>" +
							"（大约有10个游戏）这是一个"+ "<br>" +
							"您可以在屏幕前玩和享受各种游戏的地方。" ;
					
					
				}else if (act.equals("활동성향_식도락관광")){
					
					url_1 = "background-image: url('img/course/MD_i1.JPG');";
					url_2 = "background-image: url('img/course/MD_i2.JPG');";
					url_3 = "background-image: url('img/course/MD_i3.JPG');";
					
					head_1 = "古宮";
					head_2 = "烤五花肉";
					head_3 = "Yugane鸡排";
					   
					content_1 = "拥有30年传统石锅拌饭传统的"+ "<br>" +"石锅拌饭餐厅吸引了世界各地的美食"+ "<br>" +
							"在传统的韩国碗中，将一碗有色的香草，坚果和冰粥"+ "<br>" +
							"放在彼此的顶部，以 品尝和品尝美味。"+ "<br>" +
							"您还可以享用纯肉，烤肉和鸡尾酒米酒。下来";
					content_2 = "这是一家位于首尔中区明洞的五花肉餐厅。"+ "<br>" +
							"猪肚是指猪肉或食物的腹部的特定部分。"+ "<br>" +
							"在这家餐厅里，您可以品尝到多汁的五花肉和泡菜，它们都浸在自己的手中。"+ "<br>" +
							"这是明洞著名的餐厅，是外国人最喜欢的餐厅。" ;
					content_3 = "韩国排名第一的鸡排汤根！"+ "<br>" +
							"鸡肋骨是韩国典型的炒菜，指的是切碎的鸡，"+ "<br>" +
							"用红辣椒酱和酱油调味，"+ "<br>" +
							"然后在煎锅中与各种蔬菜一起炒。"+ "<br>" +
							"自1981年以来，Yugane鸡排一直以其一贯的口味而广受喜爱，并"+ "<br>" +
							"已捕获了世界的风味。";
		
					
				}else if (act.equals("활동성향_자연경관감상")|| act.equals("활동성향_휴양,휴식")){
					
					url_1 = "background-image: url('img/course/MD_j1.jpg');";
					url_2 = "background-image: url('img/course/MD_j2.jpg');";
					url_3 = "background-image: url('img/course/MD_j3.jpg');";
					
					head_1 = "德寿宫";
					head_2 = "南山";
					head_3 = "清溪川";
					   
					content_1 = "这座宫殿曾被用作朝鲜朝高宗的住所。"+ "<br>" +
							"德寿宫是朝鲜语的古迹 ，"+ "<br>" +"尽管它是朝鲜王朝末期建造的宫殿，还是"+ "<br>" +
							"传统的木制建筑和西方 建筑的地方。";
					content_2 = "这座山高265.2m，环绕首尔市中心。"+ "<br>" +
							"目前，在山顶上有一个广播塔，称为首尔塔和八打井，"+ "<br>" +
							"您可以在其中乘坐 缆车上下。"+ "<br>" +
							"南山公园是自然公园，位于南山东，西和北的山坡上，"+ "<br>" +
							"为首尔市民提供了一个休息的地方。" ;
					content_3 = "流经首尔市中心钟路区与中区之间的边界。"+ "<br>" +
							"首尔流域的所有水都聚集在这里，与江南川汇合，落入汉江。"+ "<br>" +
							"喷泉的夜景很棒，是散步的好地方。" ;
					
					
				}
				
				
				
				
				
				
				
				else {
					url_1 = "background-image: url('img/course/MD_a1.jpg');";
					url_2 = "background-image: url('img/course/MD_g1.jpg');";
					url_3 = "background-image: url('img/course/MD_g3.jpg');";
					
					head_1 = "明洞大教堂";
					head_2 = "明洞购物街";
					head_3 = "奥兰";
					
					content_1 = "它是韩国的第一个教区，也是韩国天主教会的象征。 "+ "<br>" +"  它有一个彩虹形的天花板，外部通过哥特式装饰展现出其宏伟。 "+ "<br>" +"  必须参观的是位于祭坛下方的地下大教堂，里面有 成年人的第五  大遗骸和19世纪遭受天主教徒迫害的普通烈士的 第四大遗骸。" ;
					content_2 = "您 可以享受从奢侈品牌到SPA"+ "<br>" +"品牌和保税店的各种购物。"+ "<br>" +
							"最受欢迎的购物商店肯定是美容店。"+ "<br>" +
							"明洞购物街有许多美容品牌商店。";
					content_3 = "出售衣服，各种配件，手提袋化妆品等的地方。"+ "<br>" +
							"有许多不同类型的景点可供参观,"+ "<br>" +
							"直到二楼都有新衣服，而在三楼和四楼则有复古的购物空间。" ;
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
								<li><a href="#two" class="button big wide smooth-scroll-middle">下来</a></li>
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
								<li><a href="#three" class="button big wide smooth-scroll-middle">下来</a></li>
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
								<li><a href="#gallery" class="button big wide smooth-scroll-middle">下来</a></li>
							</ul>

						</div>
						<div class="image">
							<img class = "iii"  id= "img3" style = "<%= url_3 %>"/>
						</div>
					</section>
					


				<!-- Gallery -->
					<section class="wrapper style1 align-center">
						<div class="inner">
							<h2>画廊</h2>
							<!-- <p>This is a <strong>Gallery</strong> element. It can behave as a lightbox (when given the <code>lightbox</code> class), and you can customize its <span class="demo-controls">appearance with a number of modifiers</span>, as well as assign it an optional <code>onload</code> or <code>onscroll</code> transition modifier (<a href="#reference-gallery">详细资料</a>).</p> -->
						</div>
						<ul class="actions stacked">
								<li><a href="#one" class="button">上</a></li>
							</ul>

						<!-- Gallery -->
							<div class="gallery style2 medium lightbox onscroll-fade-in" id = "gallery">
							<article>
									<a href="img/gallery/fulls/MD_a1.jpg" class="image">
										<img src="img/gallery/thumbs/MD_a1.jpg" height="450px" /></a>
									<div class="caption">
										<h3>明洞大教堂</h3>
										<p>韩国第一个教堂中殿，韩国天主教堂的象征</p>
										<ul class="actions fixed"><li><span class="button small">详细资料</span></li></ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/MD_a2.jpg" class="image">
										<img src="img/gallery/thumbs/MD_a2.jpg" height="450px" /></a>
									<div class="caption">
										<h3>南大门（Sungryemun）</h3>
										<p>它是由南门（Nammun）建造的韩国古老建筑，在朝鲜王朝成立之初将首都迁至首尔时建造</p>
										<ul class="actions fixed"><li><span class="button small">详细资料</span></li></ul>
									</div>
								</article>
								
								<article>
									<a href="img/gallery/fulls/MD_a3.jpg" class="image">
										<img src="img/gallery/thumbs/MD_a3.jpg" height="450px" /></a>
									<div class="caption">
										<h3>北村韩屋村</h3>
										<p>在这里可以看到韩国传统民居（韩屋）</p>
										<ul class="actions fixed"><li><span class="button small">详细资料</span></li></ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/MD_b1.jpg" class="image">
										<img src="img/gallery/thumbs/MD_b1.jpg" height="450px" /></a>
									<div class="caption">
										<h3>明洞艺术剧院</h3>
										<p>还举办诸如正统戏剧，实验戏剧，哑剧表演，音乐剧等特殊活动，以及戏剧节和表演艺术节。</p>
										<ul class="actions fixed">
											<li><span class="button small">详细资料</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/MD_b2.jpg" class="image">
										<img src="img/gallery/thumbs/MD_b2.jpg" height="450px" />
									</a>
									<div class="caption">
										<h3>性能表现</h3>
										<p>在厨房使用一切东西进行打击乐表演Saisai韩国的传统舞蹈和观众参与是一个有趣的节日</p>
										<ul class="actions fixed">
											<li><span class="button small">详细资料</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/MD_c1.jpg" class="image">
										<img src="img/gallery/thumbs/MD_c1.jpg" height="450px" />
									</a>
									<div class="caption">
										<h3>线友商店</h3>
										<p>明洞萨沃伊饭店Line Friends旗舰店</p>
										<ul class="actions fixed">
											<li><span class="button small">详细资料</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/MD_c2.jpg" class="image">
										<img src="img/gallery/thumbs/MD_c2.jpg" height="450px" />
									</a>
									<div class="caption">
										<h3>凯蒂猫咖啡馆</h3>
										<p>您可以在这里看到漂亮的Hello Kitty艺术拿铁咖啡并购买各种精美礼品作为礼物</p>
										<ul class="actions fixed">
											<li><span class="button small">详细资料</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/MD_c3.jpg" class="image">
										<img src="img/gallery/thumbs/MD_c3.jpg" height="450px" />
									</a>
									<div class="caption">
										<h3>蜂蜜黄油杏仁</h3>
										<p>这是蜂蜜黄油杏仁和各种杏仁的热门课程。</p>
										<ul class="actions fixed">
											<li><span class="button small">详细资料</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/MD_d2.jpg" class="image">
										<img src="img/gallery/thumbs/MD_d2.jpg" height="450px" />
									</a>
									<div class="caption">
										<h3>明洞巷</h3>
										<p>黑人牧师正在拍摄电影驱魔，主要背景是明洞。</p>
										<ul class="actions fixed">
											<li><span class="button small">详细资料</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/MD_d3.jpg" class="image">
										<img src="img/gallery/thumbs/MD_d3.jpg" height="450px" />
									</a>
									<div class="caption">
										<h3>北村韩屋村</h3>
										<p>这是一部以爱情温度戏剧拍摄网站北村韩屋村为背景的韩国戏剧。</p>
										<ul class="actions fixed">
											<li><span class="button small">详细资料</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/MD_e1.jpg" class="image">
										<img src="img/gallery/thumbs/MD_e1.jpg" height="450px" />
									</a>
									<div class="caption">
										<h3>3D黑色艺术博物馆</h3>
										<p>全球唯一的3D BLACKART博物馆，具有神秘的光学幻觉技术。</p>
										<ul class="actions fixed">
											<li><span class="button small">详细资料</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/MD_e2.jpg" class="image">
										<img src="img/gallery/thumbs/MD_e2.jpg" height="450px" />
									</a>
									<div class="caption">
										<h3>首尔历史博物馆</h3>
										<p>一个城市历史博物馆，展示史前至近代首尔的历史和文化.</p>
										<ul class="actions fixed">
											<li><span class="button small">详细资料</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/MD_e3.jpg" class="image">
										<img src="img/gallery/thumbs/MD_e3.jpg" height="450px" />
									</a>
									<div class="caption">
										<h3>明洞娱乐街</h3>
										<p>Gobawi Hill Road漫画艺术街.</p>
										<ul class="actions fixed">
											<li><span class="button small">详细资料</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/MD_f1.jpg" class="image">
										<img src="img/gallery/thumbs/MD_f1.jpg" height="450px" />
									</a>
									<div class="caption">
										<h3>Stylenanda Pink酒店</h3>
										<p>以酒店为主题的旗舰店。</p>
										<ul class="actions fixed">
											<li><span class="button small">详细资料</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/MD_f3.jpg" class="image">
										<img src="img/gallery/thumbs/MD_f3.jpg" height="450px" />
									</a>
									<div class="caption">
										<h3>西科</h3>
										<p>化妆自我吧台“ BEAUTY SPACE”，让人联想到梦妆桌</p>
										<ul class="actions fixed">
											<li><span class="button small">详细资料</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/MD_g1.jpg" class="image">
										<img src="img/gallery/thumbs/MD_g1.jpg" height="450px" />
									</a>
									<div class="caption">
										<h3>明洞购物街</h3>
										<p>您可以享受从奢侈品牌到SPA品牌和保税店的各种购物。</p>
										<ul class="actions fixed">
											<li><span class="button small">详细资料</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/MD_g3.jpg" class="image">
										<img src="img/gallery/thumbs/MD_g3.jpg" height="450px" />
									</a>
									<div class="caption">
										<h3>奥兰</h3>
										<p>卖衣服，各种配饰，手提袋化妆品等</p>
										<ul class="actions fixed">
											<li><span class="button small">详细资料</span></li>
										</ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/MD_h2.jpg" class="image">
										<img src="img/gallery/thumbs/MD_h2.jpg" height="450px" />
									</a>
									<div class="caption">
										<h3>微笑多人间</h3>
										<p>在这里，您可以与房间中各种主题的朋友一起舒适地玩耍。</p>
										<ul class="actions fixed">
											<li><span class="button small">详细资料</span></li>
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