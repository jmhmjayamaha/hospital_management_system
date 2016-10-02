<%@page import="org.kawsoft.hospital.Hospital1"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import = "org.kawsoft.hospital.HospitalFun" errorPage="error.jsp"%>
    
<jsp:useBean id="hospital" class="org.kawsoft.hospital.Hospital1"></jsp:useBean>
<jsp:setProperty property="*" name="hospital"/>
<html>
<head>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Hospital table</title>
</head>
<body>
<%
	HospitalFun.addHospital(hospital);

	response.sendRedirect("department.jsp");
	
/*	List list = HospitalFun.listHospital();
	
	out.println("<table class='table table-striped'><tr><th>ID</th><th>Name</th><th>Address</th><th>Phone</th></tr>");
	Iterator itr = list.iterator();
	while(itr.hasNext()) {
		Hospital1 h = (Hospital1) itr.next();
		
		out.println("<td>"+ h.getId()+"</td>");
		out.println("<td>"+ h.getName()+"</td>");
		out.println("<td>"+ h.getAddress()+"</td>");
		out.println("<td>"+ h.getPhone()+"</td></tr>");
	}
	out.println("</table>");
	*/
%>
</body>
</html>