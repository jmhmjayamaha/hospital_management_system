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
</style>
<title>Insert title here</title>
</head>
<body ng-app = "myApp">
	<div id="main" align="center">
		<div id="content">
			<div id="link">
				<a href="#/"><button class="btn btn-default">Hospital</button></a> <a
					href="#department"><button class="btn btn-default">Department</button></a>
					<a href="#view-hospital"><button class="btn btn-default">view-Hospital</button></a>
					<a href="#view-department"><button class="btn btn-default">view-department</button></a>
			</div>
			
			<div ng-view></div>
		</div>
	</div>
	<script>
		var app = angular.module("myApp", ["ngRoute"]);
		app.config(function($routeProvider) {
			$routeProvider
			.when("/", {
				templateUrl : "hospital.jsp"
			})
			.when("/department", {
				templateUrl : "department.jsp"
			})
			.when("/view-hospital" , {
				templateUrl : "view-hopital.jsp"
			})
			.when("/view-department" , {
				templateUrl : "view-department.jsp"
			});
			
		});
	</script>
</body>
</html>