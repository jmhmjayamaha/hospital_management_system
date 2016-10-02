<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/index.css">
<link rel="stylesheet" href="css/style.css">
<script src="js/prefixfree.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular-route.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script src="js/gallery.js"></script>
<link href="css/gallery.css" rel="stylesheet" type="text/css"/>
<title></title>
</head>
<body ng-app = "myApp">
	<div align="center" id="main">
		<div id="content">
			<div id="header">
				
				<div id="menu-bar">
					<ul class="menu cf">
						<li><a href="#/">Home</a></li>
						<li><a href="">Medical Services</a>
							<ul class="submenu">
								<li><a href="">Pain management</a></li>
								<li><a href="">Nuerology and neurosurgery</a></li>
							</ul></li>
						<li><a href="gallery.html" target="_blank">Gallery</a></li>
						<li><a href="#contact">Contact</a></li>
					</ul>
				</div>
				<img src="images/slider1.jpg" class="img-rounded"/>
			</div>
			<div ng-view id="sub-content"></div>
			
		</div>
	</div>
	<div id="footer" class="panel panel-info">
	   <div class="panel-heading">footer note</div>
       <div class="panel-body" align="center">
       		<table class="" >
       			<tr>
       				<td rowspan="2" width="400"><h1>Quick Contact</h1></td>
       				<td width="300"><a>www.hopitalnetwork.com</a></td>
       				<td width="300">facebook</td>
       			</tr>
       			<tr>
       				<td>example@gmail.com</td>
       				<td>twitter</td>
       			</tr>
       		</table>
       </div>
	</div>
	<script>
		var app = angular.module("myApp",["ngRoute"]);
		app.config(function($routeProvider) {
			$routeProvider
			.when("/", {
				templateUrl : "home.jsp"
			})
			/* .when("/gallery" , {
				templateUrl : "gallery.html"
			}) */
			.when("/contact" , {
				templateUrl : "contact.jsp"
			});
		});
	</script>
</body>
</html>