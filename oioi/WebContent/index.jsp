<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<style>
div table {
	margin: 0px auto;
	text-align: center;
}
</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>
	<div>
		<table border=1px solid black>
			<tr>
				<td>나이</td>
				<td>
				<ol>
					<li> <input type="radio" value="15-20세" name="age" id="age">15-20세</li>
					<li> <input type="radio" value="21-30세" name="age" id="age">21-30세</li>
					<li><input type="radio" value="31-40세" name="age" id="age">31-40세 </li>
					<li> <input type="radio" value="41-50세" name="age" id="age">41-50세</li>
					<li> <input type="radio" value="51-60세" name="age" id="age">51-60세</li>
				</ol>
				</td>
			</tr>
			<tr>
				<td>성별</td>
				<td>
				<ol>
					<li><input type="radio" value="남성" name="gender" id="gender">남성 </li>
					<li><input type="radio" value="여성" name="gender" id="gender">여성 </li>
				</ol>
				</td>
			</tr>
			<tr>
				<td>국가</td>
				<td>
				<ol>
					<li><input type="radio" value="기타" name="nation" id="nation">기타 </li>
					<li><input type="radio" value="대만" name="nation" id="nation">대만</li>
					<li> <input type="radio" value="독일" name="nation" id="nation">독일</li>
					<li> <input type="radio" value="러시아" name="nation" id="nation">러시아</li>
					<li> <input type="radio" value="말레이시아" name="nation" id="nation">말레이시아</li>
					<li> <input type="radio" value="몽골" name="nation" id="nation">몽골</li>
					<li> <input type="radio" value="미국" name="nation" id="nation">미국</li>
					<li> <input type="radio" value="베트남" name="nation" id="nation">베트남</li>
					<li> <input type="radio" value="싱가포르" name="nation" id="nation">싱가포르</li>
					<li> <input type="radio" value="영국" name="nation" id="nation">영국</li>
					<li> <input type="radio" value="인도" name="nation" id="nation">인도</li>
					<li> <input type="radio" value="인도네시아" name="nation" id="nation">인도네시아</li>
					<li> <input type="radio" value="일본" name="nation" id="nation">일본</li>
					<li> <input type="radio" value="중국" name="nation" id="nation">중국</li>
					<li> <input type="radio" value="중동" name="nation" id="nation">중동</li>
					<li> <input type="radio" value="캐나다" name="nation" id="nation">캐나다</li>
					<li> <input type="radio" value="태국" name="nation" id="nation">태국</li>
					<li> <input type="radio" value="프랑스" name="nation" id="nation">프랑스</li>
					<li> <input type="radio" value="필리핀" name="nation" id="nation">필리핀</li>
					<li> <input type="radio" value="호주" name="nation" id="nation">호주</li>
					<li> <input type="radio" value="홍콩" name="nation" id="nation">홍콩</li>
				</ol>
				</td>
			</tr>
			<tr>
				<td>여행하는 달</td>
				<td>
				<ol>
				<li> <input type="radio" value="1월" name="month" id="month">1월</li>
				<li> <input type="radio" value="2월" name="month" id="month">2월 </li>
				<li> <input type="radio" value="3월" name="month" id="month">3월 </li>
				<li> <input type="radio" value="4월" name="month" id="month">4월 </li>
				<li> <input type="radio" value="5월" name="month" id="month">5월</li>
				<li> <input type="radio" value="6월" name="month" id="month">6월</li>
				<li> <input type="radio" value="7월" name="month" id="month">7월</li>
				<li> <input type="radio" value="8월" name="month" id="month">8월</li>
				<li> <input type="radio" value="9월" name="month" id="month">9월</li>
				<li> <input type="radio" value="10월" name="month" id="month">10월</li>
				<li><input type="radio" value="11월" name="month" id="month">11월</li>
				<li><input type="radio" value="12월" name="month" id="month">12월 </li>
				</ol>
				</td>
			</tr>
			<tr>
				<td>여행형태 취향</td>
				<td>
				<ol>
					<li> <input type="radio" value="Air-tel" name="trip_type" id="trip_type">Air-tel</li>
					<li> <input type="radio" value="개별여행" name="trip_type" id="trip_type">개별여행</li>
					<li> <input type="radio" value="단체여행" name="trip_type" id="trip_type">단체여행</li>
				</ol>
				</td>
			</tr>
			<tr>
				<td>쇼핑을 한다면 구매 1순위 품목</td>
				<td>
				<ol>
					<li> <input type="radio" value="가방류" name="item" id="item">가방류</li>
					<li> <input type="radio" value="기타" name="item" id="item">기타</li>
					<li> <input type="radio" value="담배" name=item id="item">담배</li>
					<li> <input type="radio" value="보석/악세사리" name="item" id="item">보석/악세사리</li>
					<li> <input type="radio" value="식료품" name="item" id="item">식료품</li>
					<li> <input type="radio" value="신발류" name="item" id="item">신발류</li>
					<li> <input type="radio" value="의류" name="item" id="item">의류</li>
					<li> <input type="radio" value="인삼,한약재" name="item" id="item">인삼,한약재 </li>
					<li> <input type="radio" value="전통민예품,칠기,목각제품" name="item" id="item">전통민예품,칠기,목각제품</li>
					<li> <input type="radio" value="주류" name="item" id="item">주류</li>
					<li> <input type="radio" value="한류스타관련상품" name="item" id="item">한류스타관련상품</li>
					<li> <input type="radio" value="향수,화장품" name="item" id="item">향수,화장품</li>
				</ol>
				</td>
			</tr>
			<tr>
				<td>숙박시설 취향</td>
				<td>
				<ol>
					<li> <input type="radio" value="게스트하우스/호스텔" name="stay" id="stay">게스트하우스/호스텔</li>
					<li> <input type="radio" value="기타" name="stay" id="stay">기타</li>
					<li> <input type="radio" value="모텔/여관" name="stay" id="stay">모텔/여관</li>
					<li> <input type="radio" value="민박·공유숙박" name="stay" id="stay">민박·공유숙박</li>
					<li><input type="radio" value="친척또는친구집" name="stay" id="stay">친척또는친구집</li>
					<li> <input type="radio" value="콘도,펜션,레지던스인" name="stay" id="stay">콘도,펜션,레지던스인</li>
					<li> <input type="radio" value="학교/회사기숙사,연수원" name="stay" id="stay">학교/회사기숙사,연수원</li>
					<li> <input type="radio" value="호텔" name="stay" id="stay">호텔</li>
				</ol>
				</td>
			</tr>
			<tr>
				<td>좋아하는 활동</td>
				<td>
				<ol>				
					<li> <input type="radio" value="고궁/역사유적지방문" name="act" id="act">고궁/역사유적지방문</li>
					<li> <input type="radio" value="공연,민속,행사,축제관람및참가" name="act" id="act">공연,민속,행사,축제관람및참가</li>
					<li> <input type="radio" value="기타" name="act" id="act">기타</li>
					<li> <input type="radio" value="놀이공원/테마파크" name="act" id="act">놀이공원/테마파크</li>
					<li> <input type="radio" value="드라마/영화촬영지방문" name="act" id="act">드라마/영화촬영지방문</li>
					<li> <input type="radio" value="레포츠활동" name="act" id="act">레포츠활동</li>
					<li> <input type="radio" value="박물관,전시관방문" name="act" id="act">박물관,전시관방문</li>
					<li> <input type="radio" value="뷰티관광" name="act" id="act">뷰티관광</li>
					<li> <input type="radio" value="쇼핑" name="act" id="act">쇼핑</li>
					<li> <input type="radio" value="스포츠활동" name="act" id="act">스포츠활동</li>
					<li> <input type="radio" value="시찰" name="act" id="act">시찰</li>
					<li> <input type="radio" value="시티투어버스이용" name="act" id="act">시티투어버스이용</li>
					<li> <input type="radio" value="식도락관광" name="act" id="act">식도락관광</li>
					<li> <input type="radio" value="업무수행" name="act" id="act">업무수행</li>
					<li> <input type="radio" value="연수·교육·연구" name="act" id="act">연수·교육·연구</li>
					<li> <input type="radio" value="유흥/오락" name="act" id="act">유흥/오락</li>
					<li> <input type="radio" value="의료관광" name="act" id="act">의료관광</li>
					<li> <input type="radio" value="자연경관감상" name="act" id="act">자연경관감상</li>
					<li> <input type="radio" value="전통문화체험" name="act" id="act">전통문화체험</li>
					<li> <input type="radio" value="휴양,휴식" name="act" id="act">휴양,휴식</li>
				</ol>
				</td>
			</tr>
			<tr>
				<td colspan=2>
					<button type="button" name="button" id="radioButton">Let's Go Seoul</button>
				</td>
			</tr>
			<tr>
				<td colspan=2><br> 당신이 바라던 서울 : <span id='result'></span></td>
			</tr>
		</table>
	</div>




	<script type="text/javascript">
	        $('#radioButton').click(function () {
	            // getter
	            var age = $('input[name="age"]:checked').val();
	  			var gender = $('input[name="gender"]:checked').val()
	  			var nation = $('input[name="nation"]:checked').val()
	  			var month = $('input[name="month"]:checked').val()
	  			var trip_type = $('input[name="trip_type"]:checked').val()
	  			var item = $('input[name="item"]:checked').val()
	  			var stay = $('input[name="stay"]:checked').val()
	  			var act = $('input[name="act"]:checked').val()
	            
	            
	            
	            
		  		$.ajax({
		  			url : "http://localhost:9000/re/" + age + "/" + gender + "/" + nation + "/" + month + "/" + trip_type + "/" + item
		  					+ "/" + stay + "/" + act,
		  			method : "POST",
		  			success : function(rs) {
		  				if (rs.result == "DMC,월드컵경기장") {
		  					$('#result').text('DMC, 월드컵경기장')
		  				} else if (rs.result == "가로수길") {
		  					$('#result').text('가로수길')
		  				} else if (rs.result == "강남역") {
		  					$('#result').text('강남역')
		  				} else if (rs.result == "광화문광장") {
		  					$('#result').text('광화문 광장')
		  				} else if (rs.result == "동대문패션타운") {
		  					$('#result').text('동대문 패션타운')
		  				} else if (rs.result == "명동,남대문,북창") {
		  					$('#result').text('명동, 남대문, 북창')
		  				} else if (rs.result == "신촌,홍대주변") {
		  					$('#result').text('신촌, 홍대주변')
		  				} else if (rs.result == "여의도(63빌딩)") {
		  					$('#result').text('여의도 (63빌딩)')
		  				} else if (rs.result == "이태원(이태원 세계 음식거리,한남동)") {
		  					$('#result').text('이태원 (이태원 세계 음식거리, 한남동)')
		  				} else if (rs.result == "잠실") {
		  					$('#result').text('잠실')
		  				} else if (rs.result == "종로,청계") {
		  					$('#result').text('종로, 청계')
		  				} else if (rs.result == "청담동,압구정동") {
		  					$('#result').text('청담동, 압구정동')
		  				} else if (rs.result == "코엑스") {
		  					$('#result').text('코엑스')
		  				} else if (rs.result == "한강,유람선") {
		  					$('#result').text('한강, 유람선')
		  				} else{
		  					$('#result').text('연결 오류발생')
		  				}
		  			}
	        });
	});
	</script>
</body>
</html>