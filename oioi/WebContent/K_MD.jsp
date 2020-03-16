<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
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
				   
				   head_1 = "명동 성당";
				   head_2 = "남대문(숭례문)";
				   head_3 = "북촌 한옥마을";
				   
				   content_1 = "우리나라 최초의 본당이며 한국 천주교회의 상징이다." +"<br>" + 
						      "무지개 형상의 궁륭 천장으로 되어 있고, "+ "<br>" +" 외부는 고딕장식을 통해 웅장함을 드러내고 있다." + "<br>" + 
				    		  "빼놓지 말고 들러 봐야 할 곳은 제단 아래쪽에 있는 지하성당으로" +"<br>" + "19세기 천주교 박해로 희생당한 성인 유해 5위와  "+ "<br>" +"일반 순교자 유해 4위를 봉안하고 있다." ;
				   content_2 = "조선시대 건국과 함께 수도를 서울로 천도하면서 "+ "<br>" +"건립된 남문으로 오래된 한국의 건축물." + "<br>" + 
						 	  "한강으로부터 도성을 최단거리로 이어주는 대문으로  "+ "<br>" +"사람과 물자의 통행이 가장 많은 성문이었다."+ "<br>" + 
						 	  "1899년 전차가 개통되자 더이상 성문의 구실을 못하였고  "+ "<br>" +"현재 숭례문 구간에는 일부 성벽만 남아있다.";
				   content_3 = "서울의 옛 흔적."  + "<br>" +
						   		"한국의 전통가옥(한옥)을 볼 수 있는 곳으로 일부 주택은 "+ "<br>" +" 숙박객을 위한 한옥 스테이, 전통 찻집으로 활용되고 있다." + "<br>" +
						   		"걸어서 둘러보는 데 약 3시간 소요된다." ;
					
				}else if (act.equals("활동성향_공연,민속,행사,축제 관람및참가")){
					
					url_1 = "background-image: url('img/course/MD_b1.jpg');";
					url_2 = "background-image: url('img/course/MD_b2.jpg');";
					url_3 = "background-image: url('img/course/MD_b3.jpg');";
					
					head_1 = "명동예술극장";
					head_2 = "난타공연";
					head_3 = "명동 버스킹";
					   
					content_1 = "을지로입구역과 명동역 사이에 있는 명동예술극장은  "+ "<br>" +" 지하 1층, 지상 5층 규모의 중극장이다." +"<br>" + 
								"정통연극, 실험극, 무언 퍼포먼스, 뮤지컬 등을 비롯해  "+ "<br>" +" 연극제, 공연예술제 등의 특별한 행사도 진행하고 있다." +"<br>" + 
								"객석과 무대가 가까워 보다 생동감 넘치는 공연을 감상할 수 있다.";
					content_2 = "난타는 한국의 전통 가락인 사물놀이 리듬을 바탕으로 하여  "+ "<br>" +" 주방에서 일어나는 일들을 코믹하게 드라마화한 비언어극이다." +"<br>" + 
								"연간 38만명의 외국 관광객이 난타공연장을 찾는다. " +"<br>" + 
								"주방의 모든 것을 활용한 타악 연주 사이사이 한국의 전통 춤과  "+ "<br>" +"관객 참여가 어우러져 흥겨운 축제 한 마당이 벌어진다." ;
					content_3 = "명동 밀리오레 앞에서 다양한 공연이 열리기도 한다."+ "<br>" +
								"많은 인기 아이돌그룹이나 연예인들이 팬들과 소통하는 공간이다."+ "<br>" +
								"가까이서 스타를 볼 수 있는 기회를 잡을 수 있다." ;
					
				}else if (act.equals("활동성향_놀이공원,테마파크")){
					
					url_1 = "background-image: url('img/course/MD_c1.jpg');";
					url_2 = "background-image: url('img/course/MD_c2.jpg');";
					url_3 = "background-image: url('img/course/MD_c3.jpg');";
					
					head_1 = "라인프렌즈샵";
					head_2 = "헬로키티 카페";
					head_3 = "허니버터 아몬드";
					   
					content_1 = "명동 사보이호텔 바로 앞에 있으며, 라인프렌즈 플레그십 스토어." +"<br>" + 
								"커다란 브라운 인형이 문앞에 있어서 멀리서도 쉽게 찾을 수 있다." +"<br>" + 
								"다양한 캐릭터인형, 학용품과 사무용품, 액세서리 등을  "+ "<br>" +"구매하면서 둘러볼 수 있는 곳이다.";
					content_2 = "헬로키티를 좋아하는 사람들이 친구와 방문하면 배경과 조명이 예뻐서 "+ "<br>" +"포토존에서 추억을 쌓을 수 있다." +"<br>" + 
								"음료를 주문하면 예쁜 헬로키티 아트라떼를 구경할 수 있고, "+ "<br>" +"선물용 각종 팬시용품을 구매할 수 있는 곳이다." +"<br>" + 
								"쇼핑하다 쉴 곳이 필요할 때 들러볼만 하다." ;
					content_3 = "허니버터아몬드와 다양한 맛의 아몬드를 사는 곳으로 요즘 핫한 인기코스!!" +"<br>" + 
								"명동역 6-7번 출구 하이헤리엇 지하에 위치하고 있으며, "+ "<br>" +"다양한 아몬드를 직접 종류별로 시식도 가능하다." +"<br>" + 
								"포토존까지 준비되어 있어 인생샷을 건질 수 있다." ;
					
					
				}else if (act.equals("활동성향_드라마,영화찰영지방문")){
					
					url_1 = "background-image: url('img/course/MD_d1.jpg');";
					url_2 = "background-image: url('img/course/MD_d2.jpg');";
					url_3 = "background-image: url('img/course/MD_d3.jpg');";
					
					head_1 = "익선동(시카고 타자기)";
					head_2 = "명동골목 (검은사제들)";
					head_3 = "북촌 한옥마을 (사랑의 온도)";
					   
					content_1 = "1930년대를 치열하게 살았던 청춘 문인들의 이야기를 그린 "+ "<br>" +"드라마의 배경으로 1930년대의 서울인 "+ "<br>" +" 경성의 모습을 그대로 느낄 수 있다." +"<br>" + 
								"근현대적인 서울을 느껴보고 싶을 때 방문하면 좋다.";
					content_2 = "하이 앵글로 촬영된 검은 사제들 명동 번화가 촬영지는 "+ "<br>" +"올리브영 명동중앙점 맞은편 골목으로" +"<br>" + 
								"명동성당에서 도보 6분거리의 여행코스이다." +"<br>" + 
								"영화는 한국영화에서 보기드문 주제인 엑소시즘물로 주 배경이 명동이다. " +"<br>" + 
								"영화 장면과 실제 방문지의 느낌을 비교해 보는 재미가 있을 것이다." ;
					content_3 = "북촌 한옥마을을 배경으로 한 한국 드라마." +"<br>" + 
								"계동길을 배경으로 등장하고, 한국의 아름다운 전통가옥 사이를 "+ "<br>" +"걸으면서 구경할 수 있다." ;
					
					
				}else if (act.equals("활동성향_박물관,전시관방문")){
					
					url_1 = "background-image: url('img/course/MD_e1.jpg');";
					url_2 = "background-image: url('img/course/MD_e2.jpg');";
					url_3 = "background-image: url('img/course/MD_e3.jpg');";
					
					head_1 = "3D 블랙아트 박물관";
					head_2 = "서울 역사 박물관";
					head_3 = "재미로 거리";
					   
					content_1 = "아이들부터 성인까지 재미난 3D 착시를 체험하며 "+ "<br>" +"입체그림 속에 들어가 사진촬영을 할 수 있는 착시체험 테마파크." +"<br>" + 
								"5분 마다 변하는 3D 아트는 관람자의 환호성이 절로 나오는 곳이다." +"<br>" +  
								"신비한 빛의 착시 기법으로 전세계에 하나뿐인 3D BLACKART MUSEUM.";
					content_2 = "선사시대부터 현대까지 서울특별시의 역사와 문화를 정리하여 "+ "<br>" +"보여주는 도시역사 박물관." +"<br>" + 
								"조선 중기 이후부터 20세기말까지의 자료와 전시물로 구성되어 있다." +"<br>" + 
								"박물관 간행물을 비롯하여 다양하고 특색있는 문화상품 판매하고 있다." ;
					content_3 = "남산공원 방향으로 숭의여대와 리라초등학교로 향하는 "+ "<br>" +"고바위 언덕길 만화예술거리." +"<br>" + 
								"언덕길을 오를 때 애니메이션 캐릭터가 전시되어 있어서 "+ "<br>" +"눈요기를 하면서 오를 수 있다." +"<br>" + 
								"서울 애니메이션 센터가 최종목적지이다." ;
					
					
				}else if (act.equals("활동성향_뷰티관광")){
					
					url_1 = "background-image: url('img/course/MD_f1.jpg');";
					url_2 = "background-image: url('img/course/MD_f2.jpg');";
					url_3 = "background-image: url('img/course/MD_f3.jpg');";
					
					head_1 = "스타일난다 핑크호텔";
					head_2 = "";
					head_3 = "시코르";
					   
					content_1 = "호텔을 모티브로 한 플래그십 스토어. " +"<br>" + 
								"빌딩전체가 핑크색으로 꾸며져 있으며, "+ "<br>" +"객실 룸, 스파 등 호텔을 연상케하는 테마로 구성 ";
					content_2 = "1, 2층은 스타일난다의 화장품 브랜드인 3CE 코스메틱, " +"<br>" + 
								"3층은 스타일난다의 자체 제작 상품, " +"<br>" + 
								"4층과 5층에는 온라인 쇼핑몰 의류 상품으로 채웠다. " +"<br>" + 
								"5층에는 스타일난다가 직접 개발한 음료를 판매하는 카페도 마련돼 있다." ;
					content_3 = "꿈의 화장대를 연상시키는 메이크업 셀프 바 ‘BEAUTY SPACE’" +"<br>" + 
								"여기에서는 직접 고른 메이크업 브랜드들과 뷰티 디바이스, 뷰티 툴 등을" +"<br>" + 
								"스텝들의 도움 없이도 자유롭게 경험하고 테스팅 할 수 있다." ;
					
					
				}else if (act.equals("활동성향_쇼핑")){
					
					url_1 = "background-image: url('img/course/MD_g1.jpg');";
					url_2 = "background-image: url('img/course/MD_g2.jpg');";
					url_3 = "background-image: url('img/course/MD_g3.jpg');";
					
					head_1 = "명동 쇼핑 거리";
					head_2 = "";
					head_3 = "에이랜드";
					   
					content_1 = "고급브랜드부터 SPA브랜드, 보세매장까지 "+ "<br>" +"다양하게 쇼핑을 즐길 수 있다." +"<br>" + 
								"가장 인기 있는 쇼핑 매장은 단연 뷰티 매장. "+ "<br>" +"명동 쇼핑거리에는 많은 뷰티브랜드 매장들이 있다. ";
					content_2 = "신발, 옷에서 액세서리까지 대중적인 가격대의 매장들이 "+ "<br>" +"밀집되어 있어 쇼핑을 즐기기에 부담이 없다. " +"<br>" + 
								"길을 따라 들어선 노점들도 명동의 쇼핑을"+ "<br>" +" 한층 더 재미나게 만드는 요소다." ;
					content_3 = "옷과 다양한 소품들하고 가방 화장품 등등 판매하는 곳." +"<br>" + 
								"종류가 다양해서 구경하기 좋고, "+ "<br>" +"2층까지는 새 옷, 3,4층은 빈티지한 느낌의 쇼핑공간이다." ;
					
					
				}else if (act.equals("활동성향_스포츠활동")|| act.equals("활동성향_레포츠활동")){
					
					url_1 = "background-image: url('img/course/MD_h1.jpg');";
					url_2 = "background-image: url('img/course/MD_h2.jpg');";
					url_3 = "background-image: url('img/course/MD_h3.jpg');";
					
					head_1 = "코끼리 볼링장";
					head_2 = "스마일 멀티방";
					head_3 = "레전드 히어로즈";
					   
					content_1 = "쉼터와 스낵바가 있으며, "+ "<br>" +"방탄소년단 달려라 방탄 촬영장소로 유명하다.";
					content_2 = "다양한 테마로 편하게 룸에서 지인과 함께 놀 수 있는 곳." +"<br>" +
								"스낵바 이용가능하고, 영화감상이나 의상 소품과 "+ "<br>" +"각종 보드게임으로 시간을 보낼 수 있다." +"<br>" +
								"각종 이벤트 아이템도 같이 있어서 추억을 남기기에 좋다." ;
					content_3 = "복합 놀이 문화공간" + "<br>" +
								"(10가지 정도의 게임이 존재하는 곳)"+ "<br>" + 
								"스크린 앞에서 다양한 게임을 즐기며 놀 수 있는 곳이다." ;
					
					
				}else if (act.equals("활동성향_식도락관광")){
					
					url_1 = "background-image: url('img/course/MD_i1.JPG');";
					url_2 = "background-image: url('img/course/MD_i2.JPG');";
					url_3 = "background-image: url('img/course/MD_i3.JPG');";
					
					head_1 = "고궁";
					head_2 = "삼겹천하";
					head_3 = "유가네 닭갈비";
					   
					content_1 = "세계인의 입맛을 사로잡은 비빔밥 "+ "<br>" +
								"30년 전통의 비빔밥 전문점. "+ "<br>" +
								"한국 전통 그릇인 놋그릇 안에 색색의 나물, 견과류, 육회 등을  "+ "<br>" +"올려 보기에도 좋고 맛도 훌륭하다. "+ "<br>" +
								"전과 불고기, 칵테일 막걸리도 즐길 수 있다.";
					content_2 = "서울 중구 명동에 위치한 삼겹살 맛집이다. "+ "<br>" +
								"삼겹살은 돼지고기의 배쪽 부분의 특정 부위 혹은 구워서 먹는 음식을 뜻한다."+ "<br>" +
								"이 식당에서는 육즙이 풍부한 삼겹살과 직접 담근 김치를 맛볼 수 있다."+ "<br>" +
								"외국인들도 좋아하는 맛집으로 명동에서는 유명한 곳이다." ;
					content_3 = "대한민국 NO.1 대표 닭갈비 유가네!"+ "<br>" +
								"닭갈비는 한국의 대표적인 볶음 요리로, 토막낸 닭고기를  "+ "<br>" +"고추장, 간장 등 양념에 재웠다가 각종 야채와 함께 "+ "<br>" +
								"철판에 볶아 먹는 요리를 뜻한다. "+ "<br>" +
								"유가네 닭갈비는 1981년부터 한결 같은 맛으로 사랑받고 있으며,"+ "<br>" +"세계인의 입맛을 사로잡았다.";
		
					
				}else if (act.equals("활동성향_자연경관감상")|| act.equals("활동성향_휴양,휴식")){
					
					url_1 = "background-image: url('img/course/MD_j1.jpg');";
					url_2 = "background-image: url('img/course/MD_j2.jpg');";
					url_3 = "background-image: url('img/course/MD_j3.jpg');";
					
					head_1 = "덕수궁";
					head_2 = "남산";
					head_3 = "청계천";
					   
					content_1 = "조선시대 고종의 거처로 이용된 궁궐. "+ "<br>" +
								"덕수궁은 조선 말기에 궁궐로 갖추어진 곳이기는 하지만, "+ "<br>" +"구한말의 역사적 현장이었으며  "+ "<br>" +
								"전통목조건축과 서양식의 건축이 함께 남아 있는 곳으로 "+ "<br>" +"조선왕조의 궁궐 가운데 특이한 양식의 건축물이다.";
					content_2 = "높이 265.2m의 산으로 서울 중앙부를 둘러싸고 있는 산이다. "+ "<br>" +
								"현재 산정에는 서울타워라 불리는 방송탑과 팔각정이 있으며,  "+ "<br>" +"이곳은 케이블카로 오르내릴 수 있다.  "+ "<br>" +
								"남산의 동·서·북쪽의 사면 일대에는 자연공원인 남산공원이 설치되어 "+ "<br>" +"서울 시민의 휴식처로 제공되고 있다." ;
					content_3 = "서울의 한복판인 종로구와 중구와의 경계를 흐르는 하천. "+ "<br>" +
								"서울 분지의 모든 물이 여기에 모여 중랑천(中浪川)과 합쳐져  한강으로 빠진다. "+ "<br>" +
								"분수 야경이 멋진 곳으로, 산책하기 좋은 곳이다." ;
					
					
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