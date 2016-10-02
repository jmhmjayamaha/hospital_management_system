<%@page import="org.kawsoft.hospital.HospitalFun"%>
<%@page import="java.util.List"%>
<%@page import="org.kawsoft.hospital.Hospital1"%>
<%@page import="java.util.Iterator"%>
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
<script src="../js/common.js"></script>
<link href="../css/main.css" rel="stylesheet">
<style type="text/css">
#add_hospital label {
	float: left;
	margin-left: 10px;
}

#dept {
	float: right;
	margin-right: 10px;
}


</style>

<title>Insert title here</title>
</head>
<body>
	<div id="main" align="center">
		<div id="content">

			<div id="add_hospital">
				<form action="add-hospital.jsp" method="post">
					<div class="form-group">
						<label for="id">id number of the hospital :</label> <input
							type="text" class="form-control" id="id" name="id" required>
					</div>
					<div class="form-group">
						<label for="name">Name of the hospital:</label> <input
							class="form-control" id="name" name="name" required>
					</div>
					<div class="form-group">
						<label for="id">Address :</label> <input class="form-control"
							id="address" name="address" required>
					</div>
					<div class="form-group">
						<label for="phone">Phone number :</label> <input
							class="form-control" id="phone" name="phone" required>
					</div>
					<button type="submit" class="btn btn-default">Submit</button>
					<button type="reset" class="btn btn-default">Reset</button>

				</form>
			</div>
			<a href="department.jsp"><button class="btn btn-default"
					id="dept">go to department</button></a>


			<div id="show-table"><button id="show" class="btn btn-default">show details</button></div>
			
			<div id="display-table">
				<%
					 List list = HospitalFun.listHospital();
					out.println(
							"<table class='table table-striped'><tr><th>ID</th><th>Name</th><th>Address</th><th>Phone</th></tr>");
					Iterator itr = list.iterator();
					while (itr.hasNext()) {
						Hospital1 h = (Hospital1) itr.next();
					
						out.println("<td>" + h.getId() + "</td>");
						out.println(
								"<td><a href='hospital-details.jsp?details=" + h.getId() + "'>" + h.getName() + "</a></td>");
						out.println("<td>" + h.getAddress() + "</td>");
						out.println("<td>" + h.getPhone() + "</td></tr>");
					}
					out.println("</table>"); 
				%>
			</div>
		</div>
	</div>
</body>
</html>