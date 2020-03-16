<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>동대문</title>
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
			   
			   if(act.equals("활동성향_고궁,역사유적지방문")||act.equals("활동성향_전통문화체험")){
				   url_1 = "background-image: url('img/course/DDP_a1.jpg');";
				   url_2 = "background-image: url('img/course/DDP_a2.JPG');";
				   url_3 = "background-image: url('img/course/DDP_a3.JPG');";
				   
				   head_1 = "동대문 역사문화공원";
				   head_2 = "흥인지문";
				   head_3 = "";
				   
				   content_1 = "서울특별시 중구의 옛 동대문운동장 부지에 구축된 " + "<br>" + 
				   				"서울의 옛 역사를 보여주려는 취지로 만들어진 공원이다. "+ "<br>" + 
						 	 	"한양도성 순성길 흥인지문 구간에 있으니 " + "<br>" + 
				   				"순성길을 걷다가 방문하는 것이 좋다."+ "<br>" + 
						   		"동대문디자인플라자를 건설했는데 운동장을 철거하는 과정에서 "+ "<br>" + 
						   		"발굴된 조선시대의 문화유산들이 발견되었다.";
				   content_2 = "흥인지문(興仁之門)은 조선의 수도인 한양의 4대문(大門) 중의 하나로, 한성부를 보호하기 위해 만든 서울 성곽의 여덟 성문 가운데 동쪽의 큰 대문에 해당한다.  "+ "<br>" +
						   		"모양새가 가늘고 연약해 보이며 장식이 강조된 것이 조선 후기의 섬세하고 화려한 아름다움을 지닌 문화재로 현재는 좌우의 성벽이 모두 헐어져 성문만 남았다." + "<br>" + 
						 	  "서울의 성문 가운데 문루를 2층으로 만든 것은 숭례문과 흥인지문밖에 없다.";
				   content_3 = "문루는 문을 지키는 장수가 머무는 곳으로 "+ "<br>" +"유사시에는 군사를 지휘하는 지휘소의 역할도 했다."  + "<br>" +
						   		"문루 바깥으로는 벽돌로 된 담장과 나무판으로 된 창문을 설치해서 " + "<br>" + "적을 막는 데 유리하게 하였다.";
					
				}else if (act.equals("활동성향_공연,민속,행사,축제 관람및참가")||act.equals("활동성향_박물관,전시관방문")){
					
					url_1 = "background-image: url('img/course/DDP_b1.jpg');";
					url_2 = "background-image: url('img/course/DDP_b2.JPG');";
					url_3 = "background-image: url('img/course/DDP_b3.JPG');";
					
					head_1 = "동대문 밀리오레";
					head_2 = "서울 역사 박물관";
					head_3 = "한양도성박물관";
					   
					content_1 = "밀리오레, 두타 등의 대형 쇼핑몰은 10대와 20대 등 젊은층에게  "+ "<br>" +"사랑받는 쇼핑 공간으로  쇼핑몰마다 야외공연장을 마련하여  " +"<br>" + 
								"가수초청공연, 비보이쇼, 댄스경연 등 다양한 이벤트를 열고 있으며 외국인들의 야간 투어 코스로도 이름난 곳이다."+"<br>" + 
								"메인급 댄스팀들과 크고 작은 이벤트 공연이 활성화 되어 있고  "+ "<br>" +" 정식 데뷔를 앞두고 있는 아이돌 그룹의 공연이 열리기도 한다.";
					content_2 = "유서깊은 서울의 역사와 전통문화를 정리하여 보여줌으로써  "+ "<br>" +" 서울에 대한 이해와 인식을 심화하는 한편 서울시민 및 서울을 찾는" +"<br>" + 
								"내외국인들에게 서울의 문화를 느끼고 체험할 기회를 제공한다. " ;
					content_3 = "한양도성 둘러보기와 같이 구간별로 몇가지 주제를 나눠서"+ "<br>" +
								" 도성 따라 듣는 옛날이야기도 재미있고, "+ "<br>" +
								"미니어처로 만들어진 성곽 모형도 관람하는 묘미가 있다."+ "<br>" +
								"성곽 관련 옛 문헌과 연장 및 스크린에 있는 사진과 함께"+ "<br>" +
								"천천히 둘러보면서 옛 서울을 느낄 수 있다. ";
					
				}else if (act.equals("활동성향_놀이공원,테마파크")){
					
					url_1 = "background-image: url('img/course/DDP_c1.jpg');";
					url_2 = "background-image: url('img/course/DDP_c2.JPG');";
					url_3 = "background-image: url('img/course/DDP_c3.jpg');";
					
					head_1 = "판타 VR 테마파크";
					head_2 = "아트랙티브 테마파크 " + "<br>" + "‘라뜰리에’";
					head_3 = "일루션 월드";
					   
					content_1 = "VR보트, 마녀의 빗자루 등을 타고 이리저리 움직이면서" +"<br>" + 
								"생생하게 체험하며 즐길 수 있는 곳." +"<br>" + 
								"여러명이 같이 체험할 수 있는 곳도 있고, "+ "<br>" +"1인 체험으로 가상현실을 즐길 수도 있다."+ "<br>" +
								"특히 사각큐브 안에서 케이크 줍기와 과일자르기는" + "<br>" +
								" 많은 사람들에게 인기있는 체험이다.";
					content_2 = "라뜰리에'는 인상주의 작품을 눈으로 감상하는 것에 나아가 "+ "<br>" +"그 시대의 공간 속으로 여행을 떠날 수 있는 체험형 테마파크다." +"<br>" + 
								"그리스 로마 신화에 나오는 9명의 뮤즈를 형상화한 라뜰리에 입구가 인상적이다. ";
					content_3 = "동대문 시장 중심 37가지 VR체험 존이다." +"<br>" + 
								" 각자 다른 체험을 할 수 있고, 원하는 VR을 선택하여 재미있게 놀 수 있고, "+ "<br>" +"아케이드 게임도 몇가지 있어서 다양하게 즐길 수 있다. " ;
					
					
				}else if (act.equals("활동성향_드라마,영화찰영지방문")){
					
					url_1 = "background-image: url('img/course/DDP_d1.jpg');";
					url_2 = "background-image: url('img/course/DDP_d2.jpg');";
					url_3 = "background-image: url('img/course/DDP_d3.jpg');";
					
					head_1 = "서촌골목" + "<br>" +"(그녀는 예뻤다)";
					head_2 = "동대문 아파트(숨바꼭질)";
					head_3 = "";
					   
					content_1 = "한국 드라마에는 유머, 로맨스와 흥분이 뒤섞여 만들어진 특유의 느낌이 있다. "+ "<br>" +"드라마가 제작되었던 현장을 찾아 당신이 가장 좋아하는 그 장면을 되새겨 보자. "+ "<br>" +" 경성의 모습을 그대로 느낄 수 있다." +"<br>" + 
								"아기자기한 서촌 골목부터 멋진 경치의 인왕산이나"+ "<br>" +
								"동대문디자인플라자까지, 드라마 팬이 가볼 곳은 많다.";
					content_2 = "서울시 미래유산으로 지정된 아파트. "+ "<br>" +"미래 유산 지정은 서울시가 근현대 문물 보전 대책으로 마련한 것이다.";
					content_3 = "대한주택공사가 건축한 첫 아파트로 1965년 완공됐다." +"<br>" + 
								"1970년대만 하더라도 연예인들이 많이 살아 연예인아파트로도 불렸다." ;
					
					
				}else if (act.equals("활동성향_뷰티관광")||act.equals("활동성향_쇼핑")){
					
					url_1 = "background-image: url('img/course/DDP_f1.JPG');";
					url_2 = "background-image: url('img/course/DDP_f2.JPG');";
					url_3 = "background-image: url('img/course/DDP_f3.jpg');";
					
					head_1 = "현대시티아울렛(라이프 스타일몰)";
					head_2 = "서울약령시장";
					head_3 = "한방진흥센터";
					   
					content_1 = "2층에 위치한 브레드가든은 베이킹 제품 판매와 "+ "<br>" +"피나포레 베이킹 스튜디오를 같이 운영하고 있기 때문에" +"<br>" + 
								"구입 or 체험 전부 경험할 수 있다."+ "<br>" +
								"층별 구성은 지하1~2층 체험형 라이프스타일몰,"+ "<br>" +
								"3~8층 패션아울렛 매장이 있고,"+ "<br>" + "지하 2층과 9층에는 F&B 전문관이 각각 들어섰다.";
					content_2 = "국내 최대의 한의약 종합 단지로, 800여 개가 넘는 한약 관련 점포를 확보하고 있다. "+ "<br>" +"각종 민간 요법에 등장하는 개구리, 자라, 민물새우 등 희귀한 약재도 구입할 수 있으며," +"<br>" + 
								"탕제원이 있어 수수료 1만 원 정도만 지불하면 약을 먹기 편하게 밀봉 포장 해준다." +"<br>" + 
								" 또한 인삼 시장에서는 인삼, 홍삼, 미삼과 각종 꿀," +"<br>" +
								"국내산 영지버섯 등을 판매한다.";
					content_3 = "전통 한옥 형태(연면적 9천604㎡)로 지어진 한방진흥센터 안에는 "+ "<br>" +"한의약박물관, 한방체험시설, 한방상품홍보관, 한방카페가 있다." +"<br>" + 
								"센터는 한방 천연 팩을 직접 만들어 붙이고 온열 매트에 누워보는 등 "+ "<br>" +"다양한 체험 콘텐츠를 마련해 관광객을 서울약령시로 끌어들인다는 계획이다." ;
					
					
				}else if (act.equals("활동성향_스포츠활동")|| act.equals("활동성향_레포츠활동")){
					
					url_1 = "background-image: url('img/course/DDP_h1.jpg');";
					url_2 = "background-image: url('img/course/DDP_h2.JPG');";
					url_3 = "background-image: url('img/course/DDP_h3.JPG');";
					
					head_1 = "락 볼링장(롯데피트인)";
					head_2 = "노보텔 앰배서더";
					head_3 = "DS대성스포츠";
					   
					content_1 = "5층에 복합레저공간으로 "+ "<br>" +"490여㎡(150여평) 규모이며, 7개 레인이 들어섰다."+ "<br>" +
								"볼링 외에도 다트, 농구게임 등을 즐길 수 있다.";
					content_2 = "흥인지문의 처마를 모티브로 모던하고 안락한 인테리어가 돋보이는 호텔로" +"<br>" +
								"5성 규모로 331실의 호텔과 편의 주방시설을 갖춘 192실의 레지던스, 뷔페 레스토랑, "+ "<br>" +"로비라운지 바, 델리, 루프톱 바, 야외 수영장, 피트니스와 사우나 등을 갖추고 있으며" +"<br>" +
								"최대 280명까지 수용 가능한 그랜드 볼룸, 소규모 다목적 미팅 룸 등이 구비돼 있다." ;
					content_3 = " 5층 건물 전체가 오직 야구 마니아만을 위한, 야구 브랜드만 취급하는 곳이다." + "<br>" +
								"미즈노 브랜드를 중점으로 20여 가지 글로벌 브랜드 및 국내 브랜드를 한 공간에서 " + "<br>" + "직접 접할 수 있는 ‘야구성지’와 같은 곳으로"+ "<br>" + 
								"5층에는 타격과 투구 전용 연습장이 마련돼 있어 테스트도 가능하다." ;
					
					
				}else if (act.equals("활동성향_식도락관광")){
					
					url_1 = "background-image: url('img/course/DDP_i1.JPG');";
					url_2 = "background-image: url('img/course/DDP_i2.JPG');";
					url_3 = "background-image: url('img/course/DDP_i3.JPG');";
					
					head_1 = "동해해물탕";
					head_2 = "동대문 큰집보쌈";
					head_3 = "도깨비 불고기";
					   
					content_1 = "동대문성곽공원 내려오는 길에 위치함. "+ "<br>" +
								"해물탕은 문어, 꽃게, 낙지, 새우, 모시조개 등의 각종 해산물에 "+ "<br>" +
								"고추장 양념을 넣어 칼칼하고 시원한 국물 맛을 낸 음식으로  "+ "<br>" +"싱싱하고 다양한 해산물의 맛을 골고루 즐길 수 있다.";
					content_2 = "보쌈은 '삶아서 뼈를 추려낸 소 또는 돼지 따위의 머리를 보에 싸서 무거운 것으로 눌러  "+ "<br>" +
								"단단하게 만든 뒤 썰어서 먹는 음식'이라고 하였으나,"+ "<br>" +
								"현대의 보쌈은 냄새없이 삶은 돼지고기를 편육으로 썰고"+ "<br>" +
								"배추속 양념생절이와 함께 배춧잎에 싸서 먹는 음식이다. " ;
					content_3 = "도깨비불고기는 APM쇼핑몰 뒤쪽의 식당가에 위치함."+ "<br>" +
								"사골육수로 맛을 낸 불고기를 불판 위에 올려   "+ "<br>" +"조리한 음식으로 쌈과 불고기 전골 국물을 같이 즐길 수 있다. "+ "<br>" +
								"불고기 외에도 다른 한국음식을 맛볼 수 있다. ";
		
					
				}else if (act.equals("활동성향_자연경관감상")|| act.equals("활동성향_휴양,휴식")){
					
					url_1 = "background-image: url('img/course/MD_j1.jpg');";
					url_2 = "background-image: url('img/course/MD_j2.jpg');";
					url_3 = "background-image: url('img/course/MD_j3.jpg');";
					
					head_1 = "낙산공원";
					head_2 = "동대문 성곽공원";
					head_3 = "이화동벽화마을";
					   
					content_1 = "복잡한 거리와 고층빌딩이 즐비한 거리에 어지럽다면,  "+ "<br>" +
								"멋진 풍광을 담은 고즈넉한 분위기의 산책길을 만날 수 있는 곳이다. "+ "<br>" +"성벽을 따라 여유로운 낭만적인 서울마실을 떠나보자. ";
					content_2 = "동대문 역에서 내려 흥인지문 건너편 성곽길 시작으로 "+ "<br>" +
								"낙산공원을 거쳐 혜화문까지 지하철 2정거장 정도되는 거리이다. ";
					content_3 = "낙산공원에서 성곽길을 따라 내려오면 우측으로 이화동 벽화마을이 있고, "+ "<br>" +
								"이 성곽길을 따라 계속 내려가면 흥인지문공원과 "+ "<br>" +
								"한양도성박물관으로 연결되어 있어 성각길 투어를 할 수 있다."+ "<br>" + 
								"걷다가 쉬었다 갈만한 전망좋은 카페가 많다.";
					
					
				}else {
					url_1 = "background-image: url('img/course/DDP_a1.jpg');";
					url_2 = "background-image: url('img/course/DDP_g1.jpg');";
					url_3 = "background-image: url('img/course/DDP_g3.jpg');";
					
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
										<h3>명동성당</h3>
										<p>우리나라 최초의 본당 <br> 한국 천주교회의 상징</p>
										<ul class="actions fixed"><li><span class="button small">Details</span></li></ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/MD_a2.jpg" class="image">
										<img src="img/gallery/thumbs/MD_a2.jpg" height="450px" /></a>
									<div class="caption">
										<h3>남대문(숭례문)</h3>
										<p>조선시대 건국과 함께 수도를 서울로 천도하면서 건립된 남문으로 오래된 한국의 건축물.</p>
										<ul class="actions fixed"><li><span class="button small">Details</span></li></ul>
									</div>
								</article>
								
								<article>
									<a href="img/gallery/fulls/MD_a3.jpg" class="image">
										<img src="img/gallery/thumbs/MD_a3.jpg" height="450px" /></a>
									<div class="caption">
										<h3>북촌 한옥마을</h3>
										<p>한국의 전통가옥(한옥)을 볼 수 있는 곳</p>
										<ul class="actions fixed"><li><span class="button small">Details</span></li></ul>
									</div>
								</article>
								<article>
									<a href="img/gallery/fulls/MD_b1.jpg" class="image">
										<img src="img/gallery/thumbs/MD_b1.jpg" height="450px" /></a>
									<div class="caption">
										<h3>명동예술극장</h3>
										<p>정통연극, 실험극, 무언 퍼포먼스, 뮤지컬 등을 비롯해 연극제, 공연예술제 등의  <br> 특별한 행사도 진행</p>
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
										<h3>난타공연</h3>
										<p>주방의 모든 것을 활용한 타악 연주 사이사이 <br> 한국의 전통 춤과 관객 참여가 어우러져  <br> 흥겨운 축제 한 마당</p>
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
										<h3>라인프렌즈샵</h3>
										<p>명동 사보이호텔 바로 앞  <br> 라인프렌즈 플레그십 스토어</p>
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
										<h3>헬로키티 카페</h3>
										<p>예쁜 헬로키티 아트라떼를 구경할 수 있고, <br> 선물용 각종 팬시용품을 구매할 수 있는 곳</p>
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
										<h3>허니버터 아몬드</h3>
										<p>허니버터아몬드와 다양한 맛의 아몬드를 <br> 사는 곳으로 요즘 핫한 인기코스</p>
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
										<h3>명동골목</h3>
										<p>검은사제들 영화 촬영지 <br> 엑소시즘물로 주 배경이 명동</p>
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
										<h3>북촌 한옥마을</h3>
										<p>사랑의 온도 드라마 촬영지 <br> 북촌 한옥마을을 배경으로 한 한국 드라마. <br> 한국의 아름다운 전통가옥 사이를  <br> 걸으면서 구경</p>
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
										<h3>3D 블랙아트 박물관</h3>
										<p>신비한 빛의 착시 기법으로 전세계에 하나뿐인 3D BLACKART MUSEUM.</p>
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
										<h3>서울 역사 박물관</h3>
										<p>선사시대부터 현대까지 <br>서울특별시의 역사와 문화를 <br> 정리하여 보여주는 도시역사 박물관.</p>
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
										<h3>명동 재미로 거리</h3>
										<p>고바위 언덕길 만화예술거리.</p>
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
										<h3>스타일난다 핑크호텔</h3>
										<p>호텔을 모티브로 한 플래그십 스토어.</p>
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
										<h3>시코르</h3>
										<p>꿈의 화장대를 연상시키는 메이크업 셀프 바 <br> ‘BEAUTY SPACE’</p>
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
										<h3>명동 쇼핑 거리</h3>
										<p>고급브랜드부터 SPA브랜드, 보세매장까지  <br> 다양하게 쇼핑을 즐길 수 있다.</p>
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
										<h3>에이랜드</h3>
										<p>옷과 다양한 소품들하고 가방 화장품 등 판매</p>
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
										<h3>스마일 멀티방</h3>
										<p>다양한 테마로 편하게 룸에서 <br>지인과 함께 놀 수 있는 곳.</p>
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