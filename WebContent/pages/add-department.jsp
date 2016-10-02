<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="org.kawsoft.department.DepartmentFun"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="dept" class="org.kawsoft.department.Department1"></jsp:useBean>
<jsp:setProperty property="*" name="dept"/>

<%
	DepartmentFun.addDepartment(dept);

	response.sendRedirect("department.jsp");
%>
</body>
</html>