<%@page import="org.kawsoft.department.Department1"%>
<%@page import="org.kawsoft.department.DepartmentFun"%>
<%@page import="org.kawsoft.hospital.Hospital1"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.kawsoft.hospital.HospitalFun"%>
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
#staff {
	float : right;
	margin-right : 10px;
}
#dept_form {
	clear : both;
}
</style>
<title>department</title>
</head>
<body>
	<div align="center">
		<div id="content">
			<!--  <div><a href="hospital.jsp"><button id="go_back" class="btn btn-default">go back</button></a></div>-->
			<div id="dept_form">
				<form action="add-department.jsp" method="post"
					class="form-horizontal">
					<div class="form-group">
						<label for="id" class="control-label col-sm-2">id number
							of the department :</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="id" name="id"
								required placeholder="Enter the department number ">
						</div>
					</div>
					<div class="form-group">
						<label for="name" class="control-label col-sm-2">Name of
							the Department :</label>
						<div class="col-sm-10">
							<input class="form-control" id="name" name="name" required
								placeholder="Enter the name of the department">
						</div>
					</div>
					<div class="form-group">
						<label for="no of employee" class="control-label col-sm-2">number
							of employees :</label>
						<div class="col-sm-10">
							<input class="form-control" id="noOfEmployee" name="noOfEmployee"
								required placeholder="Enter number of employee">
						</div>
					</div>
					<div class="form-group">
						<label for="hospital_id" class="control-label col-sm-2">Hospital
							id :</label>
						<div class="col-sm-10">
							<select class="form-control" name="hospitalId" required>
								<%
									List list = HospitalFun.listHospital();
									Iterator itr = list.iterator();
									while (itr.hasNext()) {
										Hospital1 h = (Hospital1) itr.next();
										out.println("<option>" + h.getId() + "</option>");
									}
								%>
							</select>
						</div>
					</div>					
					<button type="submit" class="btn btn-default">Submit</button>
					<button type="reset" class="btn btn-default">Reset</button>
				</form>
				<button class="btn btn-default" id="staff">go to staff</button>
			</div>
			
			<div id="show-table"><button id="show" class="btn btn-default">show details</button></div>
			
			<div id="display-table">
				<%
				   out.println(
							"<table class='table table-hover'><tr><th>Department id</th><th>Department Name </th><th>Number of employee</th><th>Hospital Id</th></tr>");

					List departList = DepartmentFun.listDepartment();
					Iterator itr1 = departList.iterator();
					while (itr1.hasNext()) {
						Department1 dept = (Department1) itr1.next();

						out.println("<td>" + dept.getId() + "</td>");
						out.println("<td>" + dept.getName() + "</td>");
						out.println("<td>" + dept.getNoOfEmployee() + "</td>");
						out.println("<td>" + dept.getHospitalId() + "</td></tr>");
					}
					out.println("</table>"); 
				%>
			</div>
		</div>
	</div>
</body>
</html>