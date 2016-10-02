<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script
	src="//ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular-route.js"></script>
<script src="../js/common.js"></script>
<link href="../css/main.css" rel="stylesheet">
<style>
#link {
	margin-left: 10px;
	margin-bottom: 20px;
	text-align: left;
}

/* body {
	background-color: #cbe7f1;
}

#content {
	width: 1110px;
}

#header {
	background-color: #7aeab5;
	width: 1100px;
	padding: 10 10 10 10;
}

#menu {
	text-align: left;
	background-color: #4eadb3;
	width: 1100px;
	margin-top: 10px;
}

#menu li {
	display: inline;
} */
</style>
<title>Insert title here</title>
</head>
<body ng-app="myApp">
	<%
		if (session.getAttribute("user") == null) {
			response.sendRedirect("login.jsp");
		}
	%>
	<div id="main" align="center">
		<div id="content">
			<%-- <div id="header" class="img-rounded">
				<h1>Aministrator's page</h1>
				<h3>
					welcome
					<%
					out.println(session.getAttribute("user"));
				%>
				</h3>
				&nbsp;&nbsp;&nbsp;
			</div>
			<div id="menu" class="img-rounded">
				<ul>
					<li><a href="personroute.jsp">person</a></li>
					<li><a href="#hospital">hospital</a></li>
					<li>department</li>
				</ul>
			</div> --%>
			<div id="link">
				<a href="#/"><button class="btn btn-default">patient</button></a> <a
					href="#staff"><button class="btn btn-default">staff</button></a>
			</div>

			<div ng-view></div>
		</div>
	</div>
	<script>
		var app = angular.module("myApp", [ "ngRoute" ]);
		app.config(function($routeProvider) {
			$routeProvider.when("/", {
				templateUrl : "person.jsp"
			}).when("/staff", {
				templateUrl : "staff.jsp"
			});
		});
	</script>
</body>
</html>