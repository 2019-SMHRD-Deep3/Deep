<%@page import="com.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
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
					<h5>会员信息修改</h5>
					<form action="updateService.do?num=3" method="post">
						<%
							MemberDTO info = (MemberDTO) session.getAttribute("info");
						%>
						Id :<%=info.getId()%>
						<input name="pw" type="password" placeholder="输入您的密码"
							style="width: 500px; margin: 0 auto;">
						<input name="name" type="text" placeholder="请输入你的名字"
							style="width: 500px; margin: 0 auto;">
						<input name="email" type="text" placeholder="请输入您的电子邮件"
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