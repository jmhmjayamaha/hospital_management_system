<%@page import="java.util.Iterator"%>
<%@page import="org.kawsoft.department.Department1"%>
<%@page import="java.util.List"%>
<%@page import="org.kawsoft.department.DepartmentFun"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<div id="main" align="center">
	<div id="content" >
		<div>
			<table class="table table-hover">
			<h1>Department Details</h1>
				<tr>
					<th>Department id</th>
					<th>Department Name</th>
					<th>number of employee</th>
					<th>Hospital Id</th>
				</tr>
				<%
					List<Department1> list = DepartmentFun.listDepartment();
					Iterator itr = list.iterator();
					while(itr.hasNext()) {
						Department1 dept = (Department1)itr.next();
						out.println("<tr><td>"+ dept.getId() +"</td>");
						out.println("<td>"+ dept.getName() +"</td>");
						out.println("<td>"+ dept.getNoOfEmployee() +"</td>");
						out.println("<td>"+ dept.getHospitalId() +"</td>");
						out.println("</tr>");
					}
				%>
			</table>			
		</div>
	</div>
</div>
</body>
</html>