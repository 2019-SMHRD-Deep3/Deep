<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>东大门</title>
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
				   
				   head_1 = "东大门历史文化公园";
				   head_2 = "兴仁之门";
				   head_3 = "";
				   
				   content_1 = "该公园是为了展示首尔的古老历史而 建，位于首尔中区旧东大门体育馆的场地上。首尔城墙-巡城路位于香宫门区， 因此步行和参观巡城路更好。建造了东大门设计广场，但发现了在操场拆除期间发现的文化遗产。";
				   content_2 = "兴仁门是 朝鲜王朝汉阳市的四个主要大门之一，也是 为保护汉城府而修建的首尔城堡八个大门以东的最大大门 。 它是朝鲜晚期的一种文化资产，具有精致而华丽的美感，它看上去稀薄脆弱，着重装饰。在首尔的城门中，只有崇礼门(南大门和兴仁之门是二楼的。" ;
				   content_3 = "门楼 是长寿卫士的住所，在紧急情况下，它还可以作为指挥军队的指挥所。在大门外， 安装了砖墙和木窗 ，以防止敌人进入。  ";
					
				}else if (act.equals("활동성향_공연,민속,행사,축제 관람및참가")||act.equals("활동성향_박물관,전시관방문")){
					
					url_1 = "background-image: url('img/course/DDP_b1.jpg');";
					url_2 = "background-image: url('img/course/DDP_b2.JPG');";
					url_3 = "background-image: url('img/course/DDP_b3.JPG');";
					
					head_1 = "东大门Migliore(美利来)";
					head_2 = "首尔历史博物馆";
					head_3 = "汉阳省博物馆";
					   
					content_1 = "大型购物中心，例如Migliore(美利来)和Duta，是青少年（如20岁以下）年轻人的热门购物空间。他们在每个商场都有室外音乐厅，可以举办各种活动，例如歌手邀请表演，B-boy表演，舞蹈比赛，甚至是外国人的夜间巡回演出。  ";
					content_2 = "它以历史的方式展示了 首尔 的历史和传统文化，提供了一个体验和体验首尔文化的机会，加深了对首尔的理解和认识。 ";
					content_3 = "就像游览汉阳都城的过程一样，这里有几个主题按部分划分，沿城而来的古老故事很有趣，而且观看微型城堡模型也很美。您可以一边慢慢浏览四处与 城堡相关的旧文件，工具图片和屏幕，一边感受旧的首尔。 ";
					
				}else if (act.equals("활동성향_놀이공원,테마파크")){
					
					url_1 = "background-image: url('img/course/DDP_c1.jpg');";
					url_2 = "background-image: url('img/course/DDP_c2.JPG');";
					url_3 = "background-image: url('img/course/DDP_c3.jpg');";
					
					head_1 = "芬达VR主题公园";
					head_2 = "景点主题公园 " + "<br>" + "‘Lattlier’";
					head_3 = "幻象世界";
					   
					content_1 = "VR船，女巫的扫帚等。在多个人可以一起体验的地方，您可以将虚拟现实作为一个人的体验来享受。尤其是，在很多人中，将蛋糕切成正方形并切成水果是一种很受欢迎的体验。" ;
					content_2 = "“ Lattelier”是一个体验式主题公园，除了欣赏印象派作品外，还可以带您进入那个时代的空间。拉特利尔（Ratellier）的入口令人印象深刻，描绘了希腊罗马神话中的九种缪斯女神。 ";
					content_3 = "这是一个以东大门市场为中心的37 VR体验区。您可以有不同的体验，选择想要的VR并玩得开心，这里有几种街机游戏供您欣赏。" ;
					
					
				}else if (act.equals("활동성향_드라마,영화찰영지방문")){
					
					url_1 = "background-image: url('img/course/DDP_d1.jpg');";
					url_2 = "background-image: url('img/course/DDP_d2.jpg');";
					url_3 = "background-image: url('img/course/DDP_d3.jpg');";
					
					head_1 = "Seochon Alley" + "<br>" +"(她很漂亮)";
					head_2 = "东大门公寓 " + "<br>" +" (隐藏和隐藏)";
					head_3 = "";
					   
					content_1 = "融合幽默，浪漫和激动的气氛，韩国戏剧具有独特的感觉。找到制作戏剧的场景，并调出最喜欢的场景。可以感觉到景城的形状。从迷人的西奥小巷到仁王山和东大门设计广场（Dongdaemun Design Plaza），美景尽收眼底，这里有很多话剧迷可以去的地方。 ";
					content_2 = "被指定为汉城未来遗产的公寓。首尔市政府制定了未来遗产的名称，作为保护现代文明的对策。 ";
					content_3 = "韩国住房公社建造的第一套公寓于1965年完工。即使在1970年代，许多名人居住并被称为名人公寓。";
					
					
				}else if (act.equals("활동성향_뷰티관광")||act.equals("활동성향_쇼핑")){
					
					url_1 = "background-image: url('img/course/DDP_f1.JPG');";
					url_2 = "background-image: url('img/course/DDP_f2.JPG');";
					url_3 = "background-image: url('img/course/DDP_f3.jpg');";
					
					head_1 = "现代城市奥特莱斯"+ "<br>" + "(生活品味购物中心)";
					head_2 = "首尔仰宁市场";
					head_3 = "东方医学促进中心";
					   
					content_1 = "位于2楼的面包花园同时经营烘焙产品和Pinapore烘焙工作室，因此您可以体验所有购买或体验。每层都包括位于地下一层和第二层的体验式生活购物中心，以及位于第三层和第八层的时尚直销店。餐饮专业大厅分别位于2楼和9楼。 ";
					content_2 = "它是美国最大的综合性草药综合体，拥有800多家与草药相关的商店。您还可以购买 出现在各种民间疗法中的稀有药物，例如青蛙，zara 和淡水虾，还有tangjewon，可以很容易地以 10,000韩元的价格包装这些药物。此外，人参市场还销售人参，红参，白参，各种蜂蜜以及国产的永济蘑菇。 ";
					content_3 = "在建于传统韩屋（总面积9604平方米）的东方医学促进中心内 ，有东方医学博物馆，东方医学体验中心，东方医学促进中心和东方医学咖啡馆。 ";
					
					
				}else if (act.equals("활동성향_스포츠활동")|| act.equals("활동성향_레포츠활동")){
					
					url_1 = "background-image: url('img/course/DDP_h1.jpg');";
					url_2 = "background-image: url('img/course/DDP_h2.JPG');";
					url_3 = "background-image: url('img/course/DDP_h3.JPG');";
					
					head_1 = "摇滚保龄球馆 "+ "<br>" + "(乐天飞旅馆)";
					head_2 = "诺富特大使";
					head_3 = "DS大成体育";
					   
					content_1 = "它是位于5楼的复杂休闲空间，面积约490平方米（150平米），有7条车道。除了打保龄球，您还可以玩飞镖和篮球比赛。 ";
					content_2 = "这家酒店拥有现代舒适的室内装饰，并带有兴仁之门的屋檐。这是一家五星级酒店，拥有331家酒店和192个住所，并提供便利的厨房设施，自助餐厅，大堂酒廊酒吧，熟食店，屋顶酒吧，室外游泳池，健身设施，桑拿浴室，可容纳280人的豪华宴会厅以及小型多功能会议室。" ;
					content_3 = " 整个五层楼的建筑仅适合棒球爱好者，也仅适合棒球品牌。专注于美津浓品牌，它与“ Yajijiji Temple”相同，您可以在一个空间中直接联系约20个全球和国内品牌。" ;
					
					
				}else if (act.equals("활동성향_식도락관광")){
					
					url_1 = "background-image: url('img/course/DDP_i1.JPG');";
					url_2 = "background-image: url('img/course/DDP_i2.JPG');";
					url_3 = "background-image: url('img/course/DDP_i3.JPG');";
					
					head_1 = "东海海鲜汤";
					head_2 = "东大门keunjib bossam(菜包肉)";
					head_3 = "Dokkaebi烤肉";
					   
					content_1 = "位于东大门城公园下。海姆汤（Haemultang）是一种清凉爽口的肉汤食品，带有红辣椒酱，可在章鱼，青蟹，章鱼，虾和贝类等各种海鲜中调味。您可以平均享受各种海鲜口味。 " ;
					content_2 = "Bossam(菜包肉)是“将精选的牛的骨头或猪的骨头煮沸，然后用束压机包裹的东西重，但是在几乎没有切成薄片的食物之后，”现代的bossam(菜包肉)是将煮好的猪肉切成无臭的冷肉，并用白菜调味的生条切成条。用白菜叶包裹的食物。 ";
					content_3 = "Dokkaebi Bulgogi(烤肉)位于APM购物中心后面的餐厅区。您可以将sam(包)和bulgogi(烤肉)火锅汤当做食物，方法是将带有牛肉骨汤的bulgogi(烤肉)汤放在热板上煮熟。除了烤肉之外，您还可以品尝其他韩国美食。" ;
		
					
				}else if (act.equals("활동성향_자연경관감상")|| act.equals("활동성향_휴양,휴식")){
					
					url_1 = "background-image: url('img/course/DDP_j1.JPG');";
					url_2 = "background-image: url('img/course/DDP_j2.JPG');";
					url_3 = "background-image: url('img/course/DDP_j3.JPG');";
					
					head_1 = "骆山公园";
					head_2 = "东大门城堡公园";
					head_3 = "梨花洞壁画村";
					   
					content_1 = "如果您在繁华的街道上，复杂的街道和高层建筑上头晕目眩，那么这里是您可以与幽静的步行小径相遇的地方，那里风景秀丽。让我们在墙壁上放松身心的首尔浪漫饮品。" ;
					content_2 = "从东大门站经骆山公园到惠化门大约需要2个地铁站。";
					content_3 = "如果您沿着要塞路从骆山公园（Naksan Park）下来，在岩化洞（Ihwa-dong）的右侧就有一个壁画村。如果继续往前走，您可以游览城关街，因为它与香根门公园和汉阳都城博物馆相连。许多咖啡馆享有散步和休息的美景。";
					
					
				}else {
					url_1 = "background-image: url('img/course/DDP_a1.jpg');";
					url_2 = "background-image: url('img/course/DDP_c1.jpg');";
					url_3 = "background-image: url('img/course/DDP_j1.JPG');";
					
					head_1 = "东大门历史文化公园";
					head_2 = "景点主题公园 " + "<br>" + "‘Lattlier’";
					head_3 = "骆山公园";
					
					content_1 = "它是韩国的第一个教区，也是韩国天主教会的象征。它有一个彩虹形的天花板，外部通过哥特式装饰展现出其宏伟。必须参观的是位于祭坛下方的地下大教堂，该大教堂拥有成年人的第五大遗骸和19世纪遭受天主教徒迫害的普通烈士的第四大遗骸。";
     				content_2 = "您可以享受从奢侈品牌到SPA品牌和保税店的各种购物。最受欢迎的购物商店肯定是美容店。明洞购物街有许多美容品牌商店。";
					content_3 = "出售衣服，各种配件，手提袋化妆品等的地方。有许多不同类型的地方可供参观，新衣服到二楼，三楼和四楼有复古的购物空间。";
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
								<li><a href="#two" class="button big wide smooth-scroll-middle">Go Down</a></li>
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
								<li><a href="#three" class="button big wide smooth-scroll-middle"> Go Down</a></li>
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
								<li><a href="#gallery" class="button big wide smooth-scroll-middle">Go Down</a></li>
							</ul>

						</div>
						<div class="image">
							<img class = "iii"  id= "img3" style = "<%= url_3 %>"/>
						</div>
					</section>
					


				<!-- Gallery -->
					<section class="wrapper style1 align-center">
							<br>
							<h2>Gallery</h2>
						
						<ul class="actions stacked">
								<li><a href="#one" class="button">GO Up</a></li>
							</ul>

						<!-- Gallery -->
							<div class="gallery style2 medium lightbox onscroll-fade-in" id = "gallery">
							<article>
									<a href="img/gallery/fulls/DDP_a1.jpg" class="image">
										<img src="img/gallery/thumbs/DDP_a1.jpg" height="450px" /></a>
									<div class="caption">
										<h3>东大门历史文化公园</h3>
										<p>东大门体育馆旧址<br> 保护首尔历史的公园</p>
										<ul class="actions fixed"><li><span class="button small">Details</span></li></ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/DDP_a2.JPG" class="image">
										<img src="img/gallery/thumbs/DDP_a2.JPG" height="450px" /></a>
									<div class="caption">
										<h3>兴仁之门</h3>
										<p>朝鲜首都汉阳的四关之一</p>
										<ul class="actions fixed"><li><span class="button small">Details</span></li></ul>
									</div>
								</article>
								
								<article>
									<a href="img/gallery/fulls/DDP_b1.jpg" class="image">
										<img src="img/gallery/thumbs/DDP_b1.jpg" height="450px" /></a>
									<div class="caption">
										<h3>东大门 Milliore</h3>
										<p>年轻人喜欢的购物空间</p>
										<ul class="actions fixed"><li><span class="button small">Details</span></li></ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/DDP_b2.JPG" class="image">
										<img src="img/gallery/thumbs/DDP_b2.JPG" height="450px" /></a>
									<div class="caption">
										<h3>首尔历史博物馆</h3>
										<p>提供一个体验和体验首尔文化的机会<br>
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
										<h3>汉阳省博物馆</h3>
										<p>聆听都城之后的古老故事很有趣， <br> 微型城堡模型图 <br> 有一个有趣的观点。</p>
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
										<h3>东大门方塔VR主题公园</h3>
										<p>激动人心的VR体验  <br>
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
										<h3>景点主题公园 'Lattlier'</h3>
										<p>在印象派作品的空间  <br> 可以旅行的体验型主题公园</p>
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
										<h3>Illusion World(幻象世界)</h3>
										<p>东大门市场中心37 VR体验区 <br> 
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
										<h3>梨花洞壁画村</h3>
										<p>'她很漂亮'电视剧拍摄地</p>
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
										<h3>Hyundai City 打折商店</h3>
										<p>烘焙产品出售 <br> 一起经营Pinapore烘焙工作室 <br> </p>
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
										<h3>首尔药令市场</h3>
										<p>韩国最大的草药综合体</p>
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
										<h3>东方医学促进中心</h3>
										<p>一个有东方医学博物馆，草药体验设施的地方， <br>草药产品推广厅和东方咖啡馆。</p>
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
										<h3>诺富特大使</h3>
										<p>兴仁之门屋檐图案 <br>这是一家五星级酒店。</p>
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
										<h3>东海海鲜汤</h3>
										<p> 一个可以品尝各种海鲜的地方。</p>
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
										<h3>骆山公园</h3>
										<p>安静的散步 </p>
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
										<h3>东大门keunjib bossam(菜包肉)</h3>
										<p>用牛肉骨汤调味的烤肉</p>
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
										<h3>东大门城堡公园</h3>
										<p>从东大门站经骆山公园到惠化门</p>
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
										<h3>梨花洞壁画村</h3>
										<p>美丽的乡村道路与各种主题的壁画 </p>
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