<%@page import="com.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body style="text-align: center;">
	<!-- Wrapper -->
	<div id="wrapper">
		<!-- Menu -->
		<nav id="Update">
			<ul class="actions vertical">
				<li><h5>회원정보수정</h5></li>
				<form action="updateService.do" method="post">
					<%
						MemberDTO info = (MemberDTO) session.getAttribute("info");
					%>
					<li>접속한 Id :<%=info.getId()%></li>
					<li><input name="pw" type="password" placeholder="PW를 입력하세요"
						style="width: 500px; margin: 0 auto;"></li>
					<li><input name="name" type="text" placeholder="이름을 입력하세요"
						style="width: 500px; margin: 0 auto;"></li>
					<li><input name="email" type="text" placeholder="이메일을 입력하세요"
						style="width: 500px; margin: 0 auto;"></li>
					<li><input type="submit" value="JoinUs" class="button fit"
						style="width: 500px; margin: 0 auto;"></li>
				</form>
			</ul>
		</nav>
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