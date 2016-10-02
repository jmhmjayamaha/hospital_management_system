<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="css/index.css">
<style type="text/css">
#content {
	width : 1000px;
}
#form-content {
	margin-right : 50px;
}
</style>
<title>contact form</title>
</head>
<body>
	<div id="main" align="center">
	<div id="content">
		<div id="form-content">
			<h2>Contact form</h2>
			<form class="form-horizontal" method="post" action="pages/add-comment.jsp">
				<div class="form-group">
					<label class="control-label col-sm-2" for="name">Name</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="name"
							placeholder="Enter your name" name="name" required>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="pwd">Email:</label>
					<div class="col-sm-10">
						<input type="email" class="form-control" id="email"
							placeholder="Enter your email" name="email" required>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="telno">Tel NO :</label>
					<div class="col-sm-10">
						<input class="form-control" id="telno"
							placeholder="Enter your tel no " name="telNo" required>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="comment">Comment:</label>
					<div class="col-sm-10">
					<textarea class="form-control" rows="5" id="comm" name="comm" required></textarea>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<button type="submit" class="btn btn-default">Submit</button>
					</div>
				</div>
			</form>
		</div>
		</div>
	</div>
</body>
</html>