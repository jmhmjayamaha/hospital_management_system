<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style rel="stylesheet">
#content {
	
}
#my-form {
	width : 400px;
	height : 200px;
	background-color: white;
	margin-top : 200px;
	box-shadow: 10px 10px 5px #888888;
	padding-top : 20px;
	padding-left : 50px;
}
body {
	background-color : #a0bdbd;
}
</style>
<title>Insert title here</title>
</head>
<body>
	<div id="main" align="center">
		<div id="content">

			<div class="container img-rounded" id="my-form" >
				<form class="form-horizontal" action="login-user.jsp" method="post">
					<div class="form-group ">
						<label class="control-label col-sm-4" for="email">UserName :</label>
						<div class="col-xs-6">
							<input class="form-control col-sm-2" id="username" name="username"
								placeholder="UserName" required >
						</div>
					</div>
					<div class="form-group ">
						<label class="control-label col-sm-4" for="pwd">Password:</label>
						<div class="col-xs-6">
							<input type="password" class="form-control col-sm-2" id="pwd"
								placeholder="password" name="pwd" required>
						</div>
					</div>
					
					<div class="form-group">
						<div class="col-sm-offset-2 col-xs-2">
							<button type="submit" class="btn btn-default">Submit</button>
						</div>
					</div>
				</form>
			</div>
		</div>

	</div>
</body>
</html>