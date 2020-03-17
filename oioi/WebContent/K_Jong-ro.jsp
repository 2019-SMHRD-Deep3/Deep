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
			<% String act = (String)request.getParameter("act"); %> 
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
				   
				   head_1 = "창덕궁";
				   head_2 = "경복궁";
				   head_3 = "인사동거리";
				   
				   content_1 = "창덕궁은 대한민국 서울특별시에 있는 조선 시대 궁궐로 "+"<br>"+"동쪽으로 창경궁과 맞닿아 있다."+"<br>"+
							   "경복궁의 동쪽에 있어서 조선 시대에는 "+"<br>"+"창경궁과 더불어 동궐이라 불렀다." ;
				   content_2 = "도성의 북쪽에 있다고 하여 북궐(北闕)이라고도 불리었다. " +"<br>" + 
							   "조선왕조의 건립에 따라 창건되어 초기에 정궁으로 사용되었으나 "+"<br>"+"임진왜란 때 전소된 후 오랫동안 폐허로 남아 있다가 "+"<br>"+
						   	   "조선 말기 고종 때 중건되어 잠시 궁궐로 이용되었다.";
				   content_3 = "세상이 급변하는 와중에도 한국 고유의 멋을 간직하고 계승하려는 거리가 있다. " +"<br>" + 
							   "한국의 많은 예술품을 볼 수 있고 전통차는 물론 사찰 음식까지, " +"<br>" + 
							   "'한국' 하면 떠오르는 많은 것들이 인사동 거리에 있다. " +"<br>" + 
							   "한국에서 관광객이 가장 많이 몰리는 곳 중 하나이다. " ;
					
				}else if (act.equals("활동성향_공연,민속,행사,축제 관람및참가")|| act.equals("활동성향_박물관,전시관방문")){
					
					url_1 = "background-image: url('img/course/jr_b1.JPG');";
					url_2 = "background-image: url('img/course/jr_b2.JPG');";
					url_3 = "background-image: url('img/course/jr_b3.JPG');";
					
					head_1 = "광화문 아트홀";
					head_2 = "세종 충무공이야기";
					head_3 = "공평도시 유적전시관";
					   
					content_1 = "광화문 아트홀은 종로구 시설관리공단 "+"<br>"+"종로문화체육센터 내부에 자리잡고 있다."+"<br>"+
								"야외정원, 레스토랑, 문화교실, 수영장, 헬스장, "+"<br>"+"스포츠클라이밍장 등 종로문화체육센터 내에 있는 "+"<br>"+
								"다양한 부대시설을 이용할 수 있어 더욱 편리하다.";
					content_2 = "세종 이야기·충무공 이야기는 세종문화회관 지하 2층에 위치한"+"<br>"+" 세종대왕과 이순신 장군에 관련한전시회이다. "+"<br>"+
								"전시를 비롯해 유치원생부터 초등학생까지 어린이의 나이별로 "+"<br>"+"제작된 한복을 입고 전통문화를 체험할 수 있는 "+"<br>"+"프로그램도 제공하고 있다. " ;
					content_3 = "공평도시유적전시관은 공평1·2·4지구 도심 재개발 과정에서 "+"<br>"+"출토된 조선시대 16세기 건물지와 길을 "+"<br>"+
								"그대로 보존하여 전시한 도시박물관이다.  "+"<br>"+
								"공평도시유적전시관에서 조선시대 한양 사람들의 "+"<br>"+"생활과 삶의 모습을 살펴볼 수 있다. " ;
					
				}else if (act.equals("활동성향_놀이공원,테마파크")){
					
					url_1 = "background-image: url('img/course/jr_c1.JPG');";
					url_2 = "background-image: url('img/course/jr_c2.JPG');";
					url_3 = "background-image: url('img/course/jr_c3.jpg');";
					
					head_1 = "런닝맨 체험관";
					head_2 = "테지움 테디베어 테마파크";
					head_3 = "쌈지길 체험공방";
					   
					content_1 = "TV 프로그램 속 주인공이 되는 신개념 콘텐츠!!"+"<br>"+
								"직접 런닝맨이 되어 숨겨진 R 포인트를 찾고, "+"<br>"+"획득한 포인트에 따라 다양한 런닝맨 배지와 인증서를 받으세요.";
					content_2 = "서울 종로구에 위치한 테지움 서울은 테디베어 테마파크이다. "+"<br>"+
								"테디베어를 직접 만지고 안아보는 오픈형 이색체험전시 공간으로 "+"<br>"+"테디베어의 어원과 유래, 역사를 알 수 있다."+"<br>"+
								"서울 테마 존에서는 옛 시절 서울부터 현재 서울까지를 테디베어로 소개하고 있다." ;
					content_3 = "쌈지길 체험공방에서는 향연·김유국 해학 목공예학교·세라위크·"+"<br>"+"글라스본 등의 체험프로그램을 진행한다. "+"<br>"+
								"향연에서는 향초·비누·화장품 등을 만들 수 있다. "+"<br>"+
								"김유국 해학 목공예학교에서는 솟대를, "+"<br>"+"세라위크에서는 핸드페인팅 도자기를, "+"<br>"+
								"글라스본에서는 유리병공예를 체험할 수 있다." ;
					
					
				}else if (act.equals("활동성향_드라마,영화찰영지방문")){
					
					url_1 = "background-image: url('img/course/jr_d1.JPG');";
					url_2 = "background-image: url('img/course/jr_d2.JPG');";
					url_3 = "background-image: url('img/course/jr_d3.JPG');";
					
					head_1 = "돌담길(도깨비)";
					head_2 = "마이 포에트리 (여우각시별)";
					head_3 = "서울 성곽길(옥탑방 왕세자)";
					   
					content_1 = "드라마 도깨비 촬영지 덕성여고와 풍문여고 사이 골목에서 "+"<br>"+"지은탁(김고은)이 출발하여 덕성여고에서 풍문여고 가는 "+"<br>"+
								"방향의 돌담길은 사진 촬영하기 좋은 가볼만한 곳이다.";
								
					content_2 = " 여우각시별은 비밀을 가진 의문의 신입과 애틋한 사연을 가진 "+"<br>"+"사고뭉치 1년차가 인천공항 내 사람들과 부딪히면서"+"<br>"+
								"서로의 결핍과 상처를 보듬는 휴먼 멜로 드라마이다."+"<br>"+
								"종로구 익선동 한옥거리에 마이 포에트리가 바로 이 드라마의 촬영지이다. " ;
					content_3 = "옥탑방 왕세자는300년 세월을 거슬러 오르며 펼쳐지는 타임 슬립 드라마다."+"<br>"+
								"등장인물들이 걷던 길, 뛰어오르던 계단길, 아름드리 단풍나무 "+"<br>"+"아래로 펼쳐지는 서울의 풍광 등 주변에는 "+"<br>"+
								"드라마의 흔적이 곳곳에 남아 있다.";
						
					
				}else if (act.equals("활동성향_뷰티관광")|| act.equals("활동성향_쇼핑")){
					
					url_1 = "background-image: url('img/course/jr_f1.JPG');";
					url_2 = "background-image: url('img/course/jr_f2.JPG');";
					url_3 = "background-image: url('img/course/jr_f3.JPG');";
					
					head_1 = "인사동거리";
					head_2 = "동화면세점";
					head_3 = "종로 귀금속 거리";
					   
					content_1 = "세상이 급변하는 와중에도 한국 고유의 멋을"+"<br>"+" 간직하고 계승하려는 거리가 있다. " +"<br>" + 
							   "한국의 많은 예술품을 볼 수 있고 전통차는 물론 사찰 음식까지, " +"<br>" + 
							   "'한국' 하면 떠오르는 많은 것들이 인사동 거리에 있다. " +"<br>" + 
							   "한국에서 관광객이 가장 많이 몰리는 곳 중 하나이다. " ;
					content_2 = "종로 광화문빌딩 지하 1층에 위치한 동화 면세점은 "+"<br>"+"1973년 문을 연 서울에서 가장 오래된 면세점이다."+"<br>"+
								"에르메스, 루이뷔통, 구찌, 불가리 등 250여 개의 "+"<br>"+"세계 최고 유명 브랜드가 입점되어 있으며 30만 개가 넘는  "+"<br>"+
								"다양한 수입상품이 전시, 판매되고 있다. " ;
					content_3 = "종로 귀금속 거리는 40년 전통의 귀금속 상가다. "+"<br>"+
								"지금도 전국 주얼리 물동량의 70%를 차지할 만큼"+"<br>"+" 활발한 거래가 이루어지고 있다. "+"<br>"+
								"서비스나 인테리어 또한 업그레이드되어 혼수품만 아니라 "+"<br>"+" 단순 쇼핑을 즐기는 젊은층의 발길도 잦다."+"<br>"+
								"또한 외국인들의 쇼핑 코스로도 인기를 끌고 있다." ;
					
					
				}else if (act.equals("활동성향_스포츠활동")|| act.equals("활동성향_레포츠활동")){
					
					url_1 = "background-image: url('img/course/jr_h1.JPG');";
					url_2 = "background-image: url('img/course/jr_h2.JPG');";
					url_3 = "background-image: url('img/course/jr_h3.JPG');";
					
					head_1 = "롤파크(LoL Park)";
					head_2 = "TCC 더코아클라이밍";
					head_3 = "런닝맨 체험관";
					   
					content_1 = "서울 중심부 종로(종각역)에 ‘리그 오브 레전드(롤)’ 경기장이 있다."+"<br>"+
								"‘롤 파크(LoL PARK)’로 명명된 이번 e스포츠 전용 경기장은 "+"<br>"+" 라이엇 게임즈의 대표 게임인 ‘리그 오브 레전드’ 경기를 "+"<br>"+
								"더욱 쾌적한 환경에서 관람할 수 있는 "+"<br>"+" 특별한 공간으로 구성된 것이 특징이다.";
					content_2 = "스포츠 클라이밍은 근력운동은 물론 다이어트에도 매우 효과적이다. "+"<br>"+
								"클라이밍은 무엇보다도 팔의 힘과 악력이 가장 중요하며,"+"<br>"+" 일단 벽에 붙으면 다음 스텝을 고민하고 몸의 움직임에"+"<br>"+
								"집중하기 때문에 다른 생각 없이 현재엘 몰입할 수 있는 운동이다. " ;
					content_3 = "TV 프로그램 속 주인공이 되는 신개념 콘텐츠!!"+"<br>"+
								"직접 런닝맨이 되어 숨겨진 R 포인트를 찾고, "+"<br>"+" 획득한 포인트에 따라 다양한 런닝맨 배지와 인증서를 받으세요." ;	
				
				
				}else if (act.equals("활동성향_식도락관광")){
					
					url_1 = "background-image: url('img/course/jr_i1.JPG');";
					url_2 = "background-image: url('img/course/jr_i2.JPG');";
					url_3 = "background-image: url('img/course/jr_i3.JPG');";
					
					head_1 = "효자동목고기";
					head_2 = "뚝배기집";
					head_3 = "순희네 빈대떡";
					   
					content_1 = "경북궁역 근처에 목살과 가브리살이 인기가 많은 돼지 고깃집"+"<br>"+
								"목고기와 오겹살, 가브리살을 위주로 파는 "+"<br>"+"동그란 탁자에 둘러앉아 식사하기에 좋다.";
					content_2 = "종로3가, 종각 주변의 뚝배기집은 굉장히 유명한 식당이다."+"<br>"+
								"뚝배기집에서 가장 대표적인 메뉴는 우렁된장입니다."+"<br>"+
								"이 식당은 외국인 관광객들에게도 굉장히 유명한 식당이어서, "+"<br>"+"일본어, 영어로 식당이름이 적혀있다." ;
					content_3 = "빈대떡은 한국의 부침요리이다."+"<br>"+
								"기본적으로 녹두를 간 것을 베이스로, 나물이나 고기 등을 섞어서 "+"<br>"+"기름에 지져 만드는 일종의 녹두전병에 속한다." ;	
				
					
				}else if (act.equals("활동성향_자연경관감상")|| act.equals("활동성향_휴양,휴식")){
					
					url_1 = "background-image: url('img/course/jr_j1.jpg');";
					url_2 = "background-image: url('img/course/jr_j2.JPG');";
					url_3 = "background-image: url('img/course/jr_j3.JPG');";
					
					head_1 = "청계천";
					head_2 = "북촌 한옥마을";
					head_3 = "무계원";
					   
					content_1 = "서울의 한복판인 종로구와 중구와의 경계를 흐르는 하천."+"<br>"+
								"서울 분지의 모든 물이 여기에 모여 "+"<br>"+"중랑천(中浪川)과 합쳐져  한강으로 빠진다."+"<br>"+
								"분수 야경이 멋진 곳으로, 산책하기 좋은 곳이다.";
					content_2 = "서울의 옛 흔적."+"<br>"+
								"한국의 전통가옥(한옥)을 볼 수 있는 곳으로 "+"<br>"+"일부 주택은 숙박객을 위한 한옥 스테이, 전통 찻집으로 활용되고 있다."+"<br>"+
								"걸어서 둘러보는 데 약 3시간 소요됨." ;
					content_3 = "무계원은 종로구 부암동에 개원한 도심 속 전통문화 공간이다. "+"<br>"+
								"고즈넉한 풍광 속에서 한옥을 체험하며,"+"<br>"+"전통과 문화를 통해 한국의 아름다움을 느낄 수 있는 특별한 공간이다. "+"<br>"+
								"무계원의 안채와 사랑채, 행랑채는 세미나, 강연, 회의실 등으로 "+"<br>"+"사용 가능하며, 안채 마루, 안마당과 뒷마당 등 "+"<br>"+
								"부대시설에서는 다양한 전통문화 행사도 진행한다." ;	
				}else {
					url_1 = "background-image: url('img/course/jr_a3.JPG');";
					url_2 = "background-image: url('img/course/jr_b2.JPG');";
					url_3 = "background-image: url('img/course/jr_h3.JPG');";
					
					head_1 = "인사동 거리";
					head_2 = "세종 충무공이야기";
					head_3 = "런닝맨 체험관";
					   
					content_1 = "세상이 급변하는 와중에도 한국 고유의 멋을"+"<br>"+" 간직하고 계승하려는 거리가 있다. " +"<br>" + 
							   "한국의 많은 예술품을 볼 수 있고 전통차는 물론 사찰 음식까지, " +"<br>" + 
							   "'한국' 하면 떠오르는 많은 것들이 인사동 거리에 있다. " +"<br>" + 
							   "한국에서 관광객이 가장 많이 몰리는 곳 중 하나이다. " ;
					content_2 = "세종 이야기·충무공 이야기는 세종문화회관 지하 2층에 위치한"+"<br>"+" 세종대왕과 이순신 장군에 관련한전시회이다. "+"<br>"+
								"전시를 비롯해 유치원생부터 초등학생까지 어린이의 나이별로 "+"<br>"+"제작된 한복을 입고 전통문화를 체험할 수 있는 "+"<br>"+"프로그램도 제공하고 있다. " ;
					content_3 = "TV 프로그램 속 주인공이 되는 신개념 콘텐츠!!"+"<br>"+
								"직접 런닝맨이 되어 숨겨진 R 포인트를 찾고, "+"<br>"+" 획득한 포인트에 따라 다양한 런닝맨 배지와 인증서를 받으세요." ;	
					
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
										<h3>창덕궁</h3>
										<p>대한민국 서울특별시에 있는 <br>조선 시대 궁궐</p>
										<ul class="actions fixed"><li><span class="button small">Details</span></li></ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/jr_a3.JPG" class="image">
										<img src="img/gallery/thumbs/jr_a3.JPG" height="450px" /></a>
									<div class="caption">
										<h3>인사동거리</h3>
										<p>한국 고유의 멋을 간직하고 <br>계승하려는 거리</p>
										<ul class="actions fixed"><li><span class="button small">Details</span></li></ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/jr_b1.JPG" class="image">
										<img src="img/gallery/thumbs/jr_b1.JPG" height="450px" /></a>
									<div class="caption">
										<h3>광화문 아트홀</h3>
										<p>야외정원, 레스토랑, 문화교실, <br>수영장, 헬스장, 스포츠클라이밍장 등</p>
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
										<h3>세종 충무공이야기</h3>
										<p>세종문화회관 지하 2층에 위치한 <br>세종대왕과 이순신 장군에 관련한전시회</p>
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
										<h3>공평도시 유적전시관</h3>
										<p>조선시대 16세기 건물지와 길을 <br>그대로 보존하여 전시한 도시박물관</p>
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
										<h3>런닝맨 체험관</h3>
										<p>TV 프로그램 속 주인공이 되는 <br> 신개념 콘텐츠!!</p>
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
										<h3>테지움 테디베어 테마파크</h3>
										<p>테디베어의 어원과 유래, 역사</p>
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
										<h3>쌈지길 체험공방</h3>
										<p>향연·김유국 해학 목공예학교·<br>세라위크·글라스본 등의 체험프로그램을 진행</p>
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
										<h3>돌담길(도깨비)</h3>
										<p>드라마 도깨비 촬영지 </p>
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
										<h3>마이 포에트리 (여우각시별)</h3>
										<p>드라마 여우 각시별 촬영지</p>
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
										<h3>동화면세점</h3>
										<p>250여 개의 세계 최고 유명 브랜드가 입점</p>
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
										<h3>롤파크(LoL Park)</h3>
										<p>‘리그 오브 레전드(롤)’ 경기장</p>
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
										<h3>TCC 더코아클라이밍</h3>
										<p>근력운동은 물론 다이어트에도 매우 효과적</p>
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
										<h3>청계천</h3>
										<p>서울의 한복판인 <br>종로구와 중구와의 경계를 흐르는 하천.</p>
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
										<h3>북촌 한옥마을</h3>
										<p>서울의 옛 흔적. <br>한국의 전통가옥(한옥)을 볼 수 있는 곳</p>
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
										<h3>무계원</h3>
										<p>고즈넉한 풍광 속에서 한옥을 체험하며, <br>전통과 문화를 통해 <br>한국의 아름다움을 느낄 수 있는 특별한 공간</p>
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