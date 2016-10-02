<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script
	src="//ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular-route.js"></script>
<style rel="stylesheet">
body {
	background-color : #cbe7f1;
}
#content {
	width : 1110px;
}
#header {
	background-color : #7aeab5;
	width : 1100px;
	padding : 10 10 10 10;
}
#menu {
	text-align:left;
	background-color : #4eadb3;
	width : 1100px;
	margin-top : 10px;
	font-size: 1.5em;
}
#menu li{
	display : inline;
	
}
#menu a:hover {
	color : white;
}
iframe {
	width : 1100px;
	height : 900px;
}

</style>
<title>Administrator page</title>
</head>
<body>
	<%
		if(session.getAttribute("user") == null) {
			response.sendRedirect("login.jsp");
		}
	%>
	<div align="center" id="main">
		<div id="content">
			<div id="header" class="img-rounded">
				<h1>Aministrator's page</h1>
				<h3>welcome <% out.println(session.getAttribute("user")); %></h3>
				<a href="logout.jsp"><button class="btn">logout</button></a>
				&nbsp;&nbsp;&nbsp;
			</div>
			<div id="menu" class="img-rounded">
				<ul>
					<li><a href="personroute.jsp" target="contentFrame">person</a></li>
					<li><a href="hospitalroute.jsp" target="contentFrame">hospital</a></li>
					<li><a href="read-comment.jsp" target="contentFrame">View Comment</a></li>
					
				</ul>
			</div>
			<div  >
				<iframe src="personroute.jsp" name="contentFrame" frameborder="0" class="img-rounded"></iframe>
			</div>
		</div>
	</div>
	<script>
	     
	</script>
</body>
</html>