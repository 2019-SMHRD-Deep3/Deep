<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	
		<%
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
	%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<script type="text/javascript" src="assets/js/jquery-3.4.1.min.js"></script>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
 <link rel="stylesheet" href="assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />

</noscript>

<style type="text/css">
.tripBtn {
	padding: 0px !important;
	width: 30px !important;
	height: 30px !important;
	border-radius: 15px !important;
}

span {
	display: inline-block;
	width: 75px;
	font-size: 18px;
}

#QnA {
	border: 1px solid #ffffff;
	margin-top: 3%;
	margin-left: 20%;
	margin-right: 20%;
	margin-bottom: 3%;
	padding-top: 2.1%;
	padding-left: 3%;
	padding-right: 3%;
	padding-bottom: 2.1%;
}

#Q_type{
	display: grid;
	grid-template-rows: repeat(auto-fit, 100px);
	grid-template-columns: repeat(auto-fit, 100px);
	place-items: center center;
	text-align: center;
	margin-left: 33%;
	margin-right: 20%;
	gap: 0px 5%;
}

#A_val, .bught, .base, .activite, .A_consider, .A_member{
	margin-left: 25%;
	margin-right: 25%;
}
</style>

</head>
<!-- <body style="background-image: url(img/fabio-oyXis2kALVg-unsplash.jpg); max-width: 100%; height: 100%;">  -->

	<!-- 설문조사 -->

		<div id="QnA">
			<!-- 국가 -->
			<br><div><b>国别</b></div><br>
			<div id="Q_Nation">
				<div id="A_val">
					<select name=nation id = nation>
						<option>台湾
						<option>德国
						<option>俄罗斯
						<option>马来西亚
						<option>蒙古
						<option>美国
						<option>越南
						<option>新加坡
						<option>英国
						<option>印度
						<option>印度尼西亚
						<option>日本
						<option>中国
						<option>中东
						<option>加拿大
						<option>泰国
						<option>法国
						<option>菲律宾
						<option>澳大利亚
						<option>香港
						<option>其他
					</select>
				</div>
			</div><br>
			<hr>
			
			<!-- 여행형태 취향 -->
			<br><div><b>出行类型偏好</b></div><br>
			<div id="Q_type">
				<div class="T_type">
					<input type="button" class=tripBtn val="Air-tel"><br>
					<span> Air-tel </span>
				</div>
				<div class="T_type">	 
					<input type="button" class=tripBtn val="개별여행"><br>
					<span> 个人旅行 </span> 
				</div>
				<div class="T_type">
					<input type="button" class=tripBtn val="단체여행"><br>
					<span>团体旅行 </span>
				</div>
			</div><br>
			<hr>
			
			<!-- 좋아하는 활동 -->
			 <br>
			<div><b>最喜欢的活动</b></div><br>			
			<div id="Q_Active"> 
				<div class="activite">
					<select name=act id=act>
						<option>故宫，古迹 
						<option>表演，民俗，活动，节日观看和参与
						<option>游乐园，主题公园
						<option>戏剧和电影放映
						<option>报告活动
						<option>参观博物馆和展览馆
						<option>美容旅游
						<option>逛街
						<option>体育活动
						<option>检验
						<option>城市观光巴士
						<option>美食旅游
						<option>经营业绩
						<option>培训，教育，研究
						<option>夜生活，娱乐
						<option>医疗旅游
						<option>自然风光
						<option>传统文化体验
						<option>休闲，休息
						<option>其他
					</select>
				</div>
			</div><br>
			<hr>
			
			<!-- 고려요인 -->
			 <br>
			<div><b>考虑因素</b></div><br>			
			<div id="Q_Consider"> 
				<div class="A_consider">
					<select name=consider id=consider>
						<option>K-POP，与韩流明星相关的粉丝见面会，拍摄现场体验
						<option>经济旅行费用
						<option>气候，不同的四个季节 
						<option>康体活动
						<option>逛街 
						<option>游客的便利和安全，例如住宿和交通
						<option>参观历史文化景点
						<option>夜生活，娱乐设施
						<option>食物，美食探索
						<option>行驶距离
						<option>欣赏自然风光
						<option>美容服务
						<option>探亲访友
						<option>体验寺庙住宿和跆拳道等韩国传统文化
						<option>流行时尚的现代文化
						<option>休假时间
						<option>其他
					</select>
				</div>
			</div><br>
			<hr>

			<!-- 쇼핑 품목 -->
			<br><div><b>购买物品</b></div><br>
			<div id="Q_buy">
				<div class="bught">
					<select name=item id=item>
						<option>袋
						<option>香烟
						<option>珠宝，配饰
						<option>杂货
						<option>鞋
						<option>服装
						<option>人参，草药
						<option>传统民间工艺品，漆器，木雕产品
						<option>主流
						<option>韩流明星相关商品
						<option>香水，化妆品
						<option>其他
					</select>
				</div>
			</div><br>
			<hr>

			<!-- 인원 구성 -->
			<br><div><b>人组成</b></div><br>
			<div id="Q_Member">
				<div class="A_member">
					<select name=member id=member>
						<option>家庭，亲戚
						<option>同事
						<option>朋友，恋人单独
						<option>>其他
					</select>
				</div>
			</div><br>
			<hr>
			

			
			<div id = "submit" style="margin:auto; text-align: center">
				<input type="button" value="전송" onclick="mySub()">
			</div>
			 <div id = seoul style="display:none; ">
			 	<!-- <a id='result' href='#'></a> -->
			 	<div><h2>你想要的首尔 </h2> </div>
				<button id="result1" style ="display:none" ></button>
				<button id="result2" style ="display:none"></button>
				<button id="result3" style ="display:none"></button>
				<button id="result4" style ="display:none"></button>
				<button id="result5" style ="display:none"></button>
				<button id="result6" style ="display:none"></button>
				<button id="result7" style ="display:none"></button>
				<button id="result8" style ="display:none"></button>
				<button id="result9" style ="display:none"></button>
				<button id="result10" style ="display:none"></button>
				<button id="result11" style ="display:none"></button>
				<button id="result12" style ="display:none"></button>
				<button id="result13" style ="display:none"></button>
				<button id="result14" style ="display:none"></button>
			 
			 </div>
			 <br>
	</div>

		<!-- <input type="hidden" id='age_check' name='age'> 
		<input type="hidden" id='gender_check' name='gender'> 
		<input type="hidden" id='month_check' name='month'> 
		<input type="hidden" id='trip_check' name='trip'> 
		<input type="hidden" id='month_check' name='month'> 
		<input type="button" value="전송" onclick="mySub()"> -->


<script>

	var trip_type;

	$('.tripBtn').on('click', function() {
		$('.tripBtn').css('background-color', '');
		$(this).css('background-color', 'yellow');
		trip_type = "여행형태_" + $(this).attr('val');
		$(this).css('value', trip_type);
	});

	

	// var name = "";
	var play = true;
	var myWindow;
	function mySub() {
		console.log(trip_type);

		var member = "인원구성_" + $('#member').val();
		var consider = "고려요인_" + $('#consider').val();
		var nation = "국가_" + $('#nation').val();
		var item = "쇼핑품목_" + $('#item').val();
		var act = "활동성향_" + $('#act').val();

		console.log(member);
		console.log(consider);
		console.log(nation);
		console.log(item);
		console.log(act);
		//전송~~    //$('#myForm').submit();
	
		
		 $.ajax({
             url : "http://localhost:9000/re/" +member + "/" + trip_type + "/" + consider + "/" + nation + "/" + item + "/" + act,     
             method : "POST",
             success : function(rs) {
            	 //alert('success'+JSON.strify(rs))
            	 
            	 $('#submit').attr('style', "display:none");
            	 $('#seoul').attr('style', "display:inline");
            	
            
            	 if (rs.result1 == 1){
	  					$('#result1').text('#明洞，南大门，北昌');
	  					$('#result1').attr('style', "display:inline");
	  					url1 = 'K_MD.jsp?act='+act;
	  					$('#result1').on('click',popupPage1);	
            	 	}
	  				if (rs.result2 == 1){
	  					$('#result2').text('#梨泰院（汉南洞梨泰院世界美食街）');
	  					$('#result2').attr('style', "display:inline");
	  					url2 = 'Main.html?act='+act;
	  					$('#result2').on('click',popupPage2);
	  				}
	  				if (rs.result3 == 1){
	  					$('#result3').text('#东大门时尚小镇');
	  					$('#result3').attr('style', "display:inline");
	  					url3 = 'K_Dongdaemun.jsp?act='+act;
	  					$('#result3').on('click',popupPage3);
	  				}
	  				if (rs.result4 == 1){
	  					$('#result4').text('#清溪,钟路');
	  					$('#result4').attr('style', "display:inline");
	  					url4 = 'Ch_Jong-ro.jsp?act='+act;	  					
	  					$('#result4').on('click',popupPage4);
	  				}
	  				if (rs.result5 == 1){
	  					$('#result5').text('#蚕室');
	  					$('#result5').attr('style', "display:inline");
	  					url5 = 'Main.html?act='+act;
	  					$('#result5').on('click',popupPage5);
	  				}
	  				if (rs.result6 == 1){
	  					$('#result6').text('#COEX');
	  					$('#result6').attr('style', "display:inline");
	  					url6 = 'Main.html?act='+act
	  					$('#result6').on('click',popupPage6);
	  				}
	  				if (rs.result7 == 1){
	  					$('#result7').text('#汝ou岛（63建筑物）');
	  					$('#result7').attr('style', "display:inline");
	  					url7 = 'Main.html?act='+act
	  					$('#result7').on('click',popupPage7);
	  				}
	  				if (rs.result8 == 1){
	  					$('#result8').text('#汉江,游轮');
	  					$('#result8').attr('style', "display:inline");
	  					url8 = 'Main.html?act='+act
	  					$('#result8').on('click',popupPage8);
	  				}
	  				if (rs.result9 == 1){
	  					$('#result9').text('#光化门广场');
	  					$('#result9').attr('style', "display:inline");
	  					url9 = 'Main.html?act='+act
	  					$('#result9').on('click',popupPage9);
	  				}
	  				if (rs.result10 == 1){
	  					$('#result10').text('#新村和,弘大周围');
	  					$('#result10').attr('style', "display:inline");
	  					url10 = 'Main.html?act='+act
	  					$('#result10').on('click',popupPage10);
	  				}
	  				if (rs.result11 == 1){
	  					$('#result11').text('#DMC,世界杯体育场');
	  					$('#result11').attr('style', "display:inline");
	  					url11 = 'Main.html?act='+act
	  					$('#result11').on('click',popupPage11);
	  				}
	  				if (rs.result12 == 1){
	  					$('#result12').text('#鸥亭洞,清潭洞');
	  					$('#result12').attr('style', "display:inline");
	  					url12 = 'Main.html?act='+act
	  					$('#result12').on('click',popupPage12);
	  				}
	  				if (rs.result13 == 1){
	  					$('#result13').text('#加罗苏吉尔');
	  					$('#result13').attr('style', "display:inline");
	  					url13 = 'Main.html?act='+act
	  					$('#result13').on('click',popupPage13);
	  				}
	  				if (rs.result14 == 1){
	  					$('#result14').text('#江南站');
	  					$('#result14').attr('style', "display:inline");
	  					url14 = 'Main.html?act='+act
	  					$('#result13').on('click',popupPage14);		
	  					//$('#result14').attr('onclick', "location='"+url14+ "'" );
	  				}

	  				 $('#seoul').attr('style', "margin: auto; text-align: center;");
             }
    	   }); 
		
		}
	
		function popupPage1(){
			if(play != true)
				myWindow.close();
			play = false;
			 myWindow = window.open(url1, "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,top=0,left=0,width=1900px,height=800px");
		}
		function popupPage2(){
			if(play != true)
				myWindow.close();
			play = false;
			 myWindow = window.open(url2, "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,top=0,left=0,width=1900px,height=800px");
		}
		function popupPage3(){
			if(play != true)
				myWindow.close();
			play = false;
			 myWindow = window.open(url3, "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,top=0,left=0,width=1900px,height=800px");	
		}
		function popupPage4(){
			if(play != true)
				myWindow.close();
			play = false;
			 myWindow = window.open(url4, "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,top=0,left=0,width=1900px,height=800px");	
		}
		function popupPage5(){
			if(play != true)
				myWindow.close();
			play = false;
			 myWindow = window.open(url5, "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,top=0,left=0,width=1900px,height=800px");
		}
		function popupPage6(){
			if(play != true)
				myWindow.close();
			play = false;
			 myWindow = window.open(url6, "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,top=0,left=0,width=1900px,height=800px");
		}
		function popupPage7(){
			if(play != true)
				myWindow.close();
			play = false;
			 myWindow = window.open(url7, "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,top=0,left=0,width=1900px,height=800px");
		}
		function popupPage8(){
			if(play != true)
				myWindow.close();
			play = false;
			 myWindow = window.open(url8, "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,top=0,left=0,width=1900px,height=800px");
		}
		function popupPage9(){
			if(play != true)
				myWindow.close();
			play = false;
			 myWindow = window.open(url9, "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,top=0,left=0,width=1900px,height=800px");
		}
		function popupPage10(){
			if(play != true)
				myWindow.close();
			play = false;
			 myWindow = window.open(url10, "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,top=0,left=0,width=1900px,height=800px");
		}
		function popupPag11(){
			if(play != true)
				myWindow.close();
			play = false;
			 myWindow = window.open(url11, "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,top=0,left=0,width=1900px,height=800px");
		}
		function popupPage12(){
			if(play != true)
				myWindow.close();
			play = false;
			 myWindow = window.open(url12, "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,top=0,left=0,width=1900px,height=800px");
		}
		function popupPage13(){
			if(play != true)
				myWindow.close();
			play = false;
			 myWindow = window.open(url13, "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,top=0,left=0,width=1900px,height=800px");
		}
		function popupPage14(){
			if(play != true)
				myWindow.close();
			play = false;
			 myWindow = window.open(url14, "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,top=0,left=0,width=1900px,height=800px");
		}
	
	

</script>
</body>

</html>