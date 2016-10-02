<%@page import="java.util.Iterator"%>
<%@page import="org.kawsoft.hospital.HospitalFun"%>
<%@page import="org.kawsoft.hospital.Hospital1"%>
<%@page import="java.util.List"%>
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
<div id="content">
	<div>
		<h1>Hopital Details</h1>
		<table class="table table-hover">
			<tr>
				<th>ID </th>
				<th>Name </th>
				<th>Address </th>
				<th>Phone </th>
			</tr>
			<%
				List<Hospital1> list = HospitalFun.listHospital();
				Iterator itr = list.iterator();
				while(itr.hasNext()) {
					Hospital1 hospital = (Hospital1)itr.next();
					out.println("<tr><td>"+ hospital.getId()+"</td>");
					out.println("<td>"+ hospital.getName()+"</td>");
					out.println("<td>"+ hospital.getPhone()+"</td>");
					out.println("<td>"+ hospital.getAddress()+"</td></tr>");					
				}
			%>
		</table>
	</div>
</div>
</div>
</body>
</html>