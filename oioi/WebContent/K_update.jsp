<%@page import="com.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
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

#wrapper{
display: table; width: 100%; height: 100%;
}


#outer{
display:table-cell; vertical-align: middle; text-align: center;
}
#repair{
	position: relative; display: inline-block; width: 50%;
	 height: 30%; 
	
 }

</style>
</head>
<body style="text-align: center;">
	<!-- Wrapper -->
	<div id="wrapper">
		<!-- Menu -->
		<div id= "outer">
				<div id = "repair"> 
					<h5>회원정보수정</h5>
					<form action="updateService.do?num=1" method="post">
						<%
							MemberDTO info = (MemberDTO) session.getAttribute("info");
						%>
						접속한 Id :<%=info.getId()%>
						<input name="pw" type="password" placeholder="PW를 입력하세요"
							style="width: 500px; margin: 0 auto;">
						<input name="name" type="text" placeholder="이름을 입력하세요"
							style="width: 500px; margin: 0 auto;">
						<input name="email" type="text" placeholder="이메일을 입력하세요"
							style="width: 500px; margin: 0 auto;">
						<input type="submit" value="JoinUs" class="button fit"	
							style="width: 500px; margin: 0 auto;">
					</form>
				</div>
			</div>
	</div>
	<!-- Scripts -->
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/jquery-3.4.1.min.js"></script>
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/util.js"></script>
	<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
	<script src="assets/js/main.js"></script>
</body>
</html>