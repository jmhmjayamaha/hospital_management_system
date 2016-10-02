<%@page import="org.kawsoft.department.Department1"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.Iterator"%>
<%@page import="org.kawsoft.hospital.HospitalFun"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String name = request.getParameter("details");
	out.println(name);
	
	List list = HospitalFun.hospitalDetails(name);
	
	/* Iterator itr = list.iterator();
	
	while(itr.hasNext()) {
		Department1 dept = (Department1) itr.next();
		out.println(dept.getId());
	} */
	
	for(Object obj : list) {
		Map map = (Map) obj;
		out.println(map.get("D_ID"));
	}
	
%>

</body>
</html>